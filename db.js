// ✅ db.js (с явными типами через JSDoc для устранения TS ошибок)
import sqlite3 from 'sqlite3';
const db = new sqlite3.Database('database.sqlite');

db.run(`
  CREATE TABLE IF NOT EXISTS subscriptions (
    user_id INTEGER PRIMARY KEY,
    username TEXT,
    end_date TEXT
  )
`);

db.run(`
  CREATE TABLE IF NOT EXISTS payments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    username TEXT,
    paid_at TEXT,
    source TEXT
  )
`);

db.run(`
  CREATE TABLE IF NOT EXISTS access_keys (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    code TEXT UNIQUE,
    created_at TEXT,
    used_by INTEGER,
    used_at TEXT
  )
`);

/**
 * @param {number} user_id
 * @param {string} username
 * @param {string} endDate
 */
export function addOrUpdateUser(user_id, username, endDate) {
  db.run(`
    INSERT INTO subscriptions (user_id, username, end_date)
    VALUES (?, ?, ?)
    ON CONFLICT(user_id) DO UPDATE SET end_date = excluded.end_date
  `, [user_id, username, endDate]);
}

/**
 * @param {number} user_id
 * @param {(row: any) => void} callback
 */
export function getSubscription(user_id, callback) {
  db.get(`SELECT * FROM subscriptions WHERE user_id = ?`, [user_id], (err, row) => {
    if (err) {
      console.error('DB error:', err.message);
      callback(null);
    } else {
      callback(row);
    }
  });
}

/**
 * @param {number} user_id
 * @param {string} username
 * @param {string} [source]
 */
export function logPayment(user_id, username, source = 'bot') {
  const now = new Date().toISOString();
  db.run(`
    INSERT INTO payments (user_id, username, paid_at, source)
    VALUES (?, ?, ?, ?)
  `, [user_id, username, now, source]);
}

/**
 * @param {string} code
 * @param {(valid: boolean) => void} callback
 */
export function isAccessKeyValid(code, callback) {
  db.get(`SELECT * FROM access_keys WHERE code = ? AND used_by IS NULL`, [code], (err, row) => {
    callback(!!row);
  });
}

/**
 * @param {string} code
 * @param {number} user_id
 * @param {(success: boolean) => void} callback
 */
export function useAccessKey(code, user_id, callback) {
  const now = new Date().toISOString();
  db.run(`
    UPDATE access_keys
    SET used_by = ?, used_at = ?
    WHERE code = ? AND used_by IS NULL
  `, [user_id, now, code], function (err) {
    callback(!err && this.changes > 0);
  });
}

/**
 * @param {string} code
 */
export function createAccessKey(code) {
  const now = new Date().toISOString();
  db.run(`INSERT INTO access_keys (code, created_at) VALUES (?, ?)`, [code, now]);
}

/**
 * @param {(rows: any[]) => void} callback
 */
export function getAllAccessKeys(callback) {
  db.all(`SELECT * FROM access_keys ORDER BY created_at DESC`, [], (err, rows) => {
    if (err) {
      console.error('DB error:', err.message);
      callback([]);
    } else {
      callback(rows);
    }
  });
}

export { db };
