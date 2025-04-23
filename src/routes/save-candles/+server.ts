import type { RequestHandler } from "@sveltejs/kit";
import sqlite3 from "sqlite3";
import fetch from "node-fetch";
import path from "path";

// Интерфейс для свечи
interface Candle {
    time: number;
    open: number;
    high: number;
    low: number;
    close: number;
}

// Файл базы данных
const dbPath = (symbol: string) => path.join(process.cwd(), "candles", `${symbol}.db`);

// Функция для открытия базы SQLite
function openDb(symbol: string) {
    return new sqlite3.Database(dbPath(symbol), (err) => {
        if (err) console.error(`Ошибка открытия БД ${symbol}:`, err);
    });
}

// Функция создания таблицы (если её нет)
function setupDatabase(symbol: string) {
    const db = openDb(symbol);
    db.run(`
        CREATE TABLE IF NOT EXISTS candles (
            time INTEGER PRIMARY KEY,
            open REAL,
            high REAL,
            low REAL,
            close REAL
        )
    `);
    return db;
}

// Функции для работы с SQLite3 (асинхронные)
const getAsync = <T>(db: sqlite3.Database, sql: string, params: any[] = []): Promise<T | undefined> =>
    new Promise((resolve, reject) => {
        db.get(sql, params, (err, row) => (err ? reject(err) : resolve(row as T | undefined)));
    });

const allAsync = <T>(db: sqlite3.Database, sql: string, params: any[] = []): Promise<T[]> =>
    new Promise((resolve, reject) => {
        db.all(sql, params, (err, rows) => (err ? reject(err) : resolve(rows as T[])));
    });

const runAsync = (db: sqlite3.Database, sql: string, params: any[] = []): Promise<void> =>
    new Promise((resolve, reject) => {
        db.run(sql, params, (err) => (err ? reject(err) : resolve()));
    });

// **Главный обработчик запроса**
export const GET: RequestHandler = async (event) => {
    const url = event.url;
    const symbol = url.searchParams.get("symbol")?.toUpperCase() || "BTCUSDT";
    const db = setupDatabase(symbol);

    try {
        // Проверяем, есть ли свежие данные в базе
        const lastCandle = await getAsync<Candle>(db, `SELECT * FROM candles ORDER BY time DESC LIMIT 1`);
        const now = Math.floor(Date.now() / 1000);

        if (lastCandle?.time && now - lastCandle.time < 3600) {
            console.log(`📦 Отдаём свечи из SQLite для ${symbol}`);
            const candles = await allAsync<Candle>(db, `SELECT * FROM candles ORDER BY time ASC`);
            return new Response(JSON.stringify(candles), { headers: { "Content-Type": "application/json" } });
        }

        // Если данных нет, запрашиваем с Binance
        console.log(`🌍 Запрашиваем свечи из Binance для ${symbol}`);
        const response = await fetch(`https://api.binance.com/api/v3/klines?symbol=${symbol}&interval=1h&limit=500`);

        // Проверяем, успешен ли ответ
        if (!response.ok) {
            console.error(`❌ Ошибка Binance API: ${response.status} ${response.statusText}`);
            return new Response(JSON.stringify({ error: "Ошибка загрузки данных с Binance" }), { status: 500 });
        }

        // Пробуем разобрать JSON
        let data;
        try {
            data = await response.json();
        } catch (error) {
            console.error("❌ Ошибка парсинга JSON от Binance:", error);
            return new Response(JSON.stringify({ error: "Ошибка парсинга данных Binance" }), { status: 500 });
        }

        // Проверяем, является ли data массивом
        if (!Array.isArray(data)) {
            console.error("❌ Binance API вернул не массив:", data);
            return new Response(JSON.stringify({ error: "Неверный формат данных Binance" }), { status: 500 });
        }

        // Преобразуем данные в массив свечей
        const candles: Candle[] = data.map((c: any) => ({
            time: c[0] / 1000,
            open: parseFloat(c[1]),
            high: parseFloat(c[2]),
            low: parseFloat(c[3]),
            close: parseFloat(c[4]),
        }));

        // Записываем свечи в базу
        const insertStmt = `INSERT OR IGNORE INTO candles (time, open, high, low, close) VALUES (?, ?, ?, ?, ?)`;

        for (const candle of candles) {
            await runAsync(db, insertStmt, [candle.time, candle.open, candle.high, candle.low, candle.close]);
        }

        console.log(`✅ Данные для ${symbol} сохранены в SQLite.`);
        return new Response(JSON.stringify(candles), { headers: { "Content-Type": "application/json" } });

    } catch (error) {
        console.error("❌ Ошибка при обработке запроса:", error);
        return new Response(JSON.stringify({ error: "Ошибка сервера" }), { status: 500 });
    } finally {
        db.close();
    }
};
