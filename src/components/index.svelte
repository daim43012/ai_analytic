<script lang="ts">
	import { onMount, onDestroy } from 'svelte';
	import { page } from '$app/stores';
	import { get } from 'svelte/store';

	let chartContainer: HTMLDivElement | null = null;
	let chart: any,
		candleSeries: any,
		socket: WebSocket | null = null;
	let loading = true;
	let isConnectedToWS = false;

	let symbol: string = get(page).url.searchParams.get('symbol')?.toUpperCase() || 'BTCUSDT';
	const lv = get(page).url.searchParams.get('lv') === 'true';

	interface Candle {
		time: number;
		open: number;
		high: number;
		low: number;
		close: number;
	}
	interface LevelData {
		code: string;
		bot: string;
		topActual?: number;
		bottomActual?: number;
		turnUpLvl?: number;
		turnDownLvl?: number;
		topPrev?: number;
		bottomPrev?: number;
		delta2?: number;
		date2?: number;
	}

	let candlesData: Candle[] = [];
	let resizeObserver: ResizeObserver | null = null;

	function applyChartSize() {
		if (chart && chartContainer) {
			const { clientWidth, clientHeight } = chartContainer;
			chart.applyOptions({ width: clientWidth, height: clientHeight });
			chart.timeScale().fitContent();
		}
	}

	async function sleep(ms: number): Promise<void> {
		return new Promise((resolve) => setTimeout(resolve, ms));
	}

	async function fetchCandles(): Promise<void> {

		const interval = '1h';
		const limit = 1000;
		const now = Date.now();
		const fourMonthsAgo = now - 120 * 24 * 60 * 60 * 1000;
		let startTime = fourMonthsAgo;
		let allCandles: Candle[] = [];

		while (true) {
			const url = `https://api.binance.com/api/v3/klines?symbol=${symbol}&interval=${interval}&startTime=${startTime}&limit=${limit}`;
			const res = await fetch(url);
			const data = await res.json();

			if (!Array.isArray(data) || data.length === 0) break;

			const candles = data.map((d: any) => ({
				time: d[0] / 1000,
				open: parseFloat(d[1]),
				high: parseFloat(d[2]),
				low: parseFloat(d[3]),
				close: parseFloat(d[4])
			}));

			allCandles.push(...candles);

			if (data.length < limit) break;

			startTime = data[data.length - 1][0] + 1;
			await sleep(300); // 💤 Задержка между запросами (в мс)
		}

		candlesData = allCandles;
		candleSeries.setData(candlesData);

		if (lv) {
			await drawLevels();
		}
	}
	function setupAlorWebSocket(accessToken: string): void {
		const guid = crypto.randomUUID();
		const symbolClean = symbol.replace(/USDT|USD|USDC|BUSD|DAI$/, '');
		const ws = new WebSocket(`wss://api.alor.ru/ws`);

		let currentCandle: Candle | null = null;

		ws.onopen = () => {

			const msg = {
				opcode: 'QuotesSubscribe',
				code: symbolClean,
				exchange: 'MOEX',
				instrumentGroup: 'TQBR',
				format: 'Simple',
				frequency: 100,
				guid,
				token: accessToken
			};

			setTimeout(() => {
				ws.send(JSON.stringify(msg));
			}, 300);
		};

		ws.onmessage = (event) => {
			try {
				const parsed = JSON.parse(event.data);
				const price = parsed?.data?.last_price;

				if (!price) return;

				const timestamp = Math.floor(Date.now() / 1000);
				const startOfHour = Math.floor(timestamp / 3600) * 3600;

				if (!currentCandle || currentCandle.time !== startOfHour) {
					// новая свеча
					currentCandle = {
						time: startOfHour,
						open: price,
						high: price,
						low: price,
						close: price
					};
				} else {
					// обновляем текущую
					currentCandle.high = Math.max(currentCandle.high, price);
					currentCandle.low = Math.min(currentCandle.low, price);
					currentCandle.close = price;
				}

				candleSeries.update(currentCandle);
			} catch (err) {
				console.error('❌ Ошибка парсинга сообщения Alor WS:', err);
			}
		};

		ws.onclose = (event) => {
			console.warn('❌ Alor WebSocket Closed', {
				code: event.code,
				reason: event.reason,
				wasClean: event.wasClean
			});
			setTimeout(() => setupAlorWebSocket(accessToken), 3000);
		};

		ws.onerror = (err) => {
			console.error('❌ Alor WebSocket Error:', err);
			ws.close();
		};
	}

	async function fetchAlorCandles(): Promise<void> {
		const refreshToken = '96702dfa-25bf-4c79-8a5d-709cfa30c5a6';
		const exchange = 'MOEX';
		const tf = 3600;

		const tokenRes = await fetch('https://oauth.alor.ru/refresh', {
			method: 'POST',
			headers: { 'Content-Type': 'application/json' },
			body: JSON.stringify({ token: refreshToken })
		});
		const tokenData = await tokenRes.json();

		const accessToken = tokenData.AccessToken;

		if (!accessToken) {
			console.error('❌ Не удалось получить токен Alor');
			return;
		}

		// Считаем дни строго по 00:00:00 UTC
		const now = Math.floor(Date.now() / 1000); // ✅ текущее время в секундах
		const threeMonthsAgo = now - 60 * 60 * 24 * 90;

		// Запрос свечей
		const url = `https://api.alor.ru/md/v2/history?symbol=${symbol}&exchange=${exchange}&tf=${tf}&from=${threeMonthsAgo}&to=${now}`;
		const res = await fetch(url, {
			headers: {
				Accept: 'application/json',
				Authorization: `Bearer ${accessToken}`
			}
		});

		const data = await res.json();

		if (!data?.history || !Array.isArray(data.history) || data.history.length === 0) {
			console.warn('⚠️ Свечи не найдены или пустой ответ');
			return;
		}

		const candles: Candle[] = data.history.map((d: any) => ({
			time: Math.floor(d.time / 1000),
			open: d.open,
			high: d.high,
			low: d.low,
			close: d.close
		}));

		candlesData = candles;
		candleSeries.setData(candles);

		if (lv) {
			await drawLevels();
		}
		setupAlorWebSocket(accessToken);
	}

	async function drawLevels(): Promise<void> {

		const assetCode = symbol.replace(/USDT|USD|USDC|BUSD|DAI$/, '');
		const botType = symbol.includes('USDT') ? 'AI_Analytic' : 'AI_Moex';


		const response = await fetch(`https://bot-advisor.com/api/robo-advisor/analytics`);
		const data: LevelData[] = await response.json();


		const levels = data.find((item) => item.bot === botType && item.code === assetCode);

		if (!levels) {
			console.warn('⚠️ Уровни не найдены для выбранного инструмента.');
			return;
		}

		const firstTime = candlesData[0]?.time || Date.now() / 1000 - 86400 * 30;
		const lastTime = candlesData.at(-1)?.time || Date.now() / 1000;

		const levelLines = [
			{ price: levels.topActual, color: 'orange', label: 'TopActual' },
			{ price: levels.bottomActual, color: 'orange', label: 'BottomActual' },
			{ price: levels.turnUpLvl, color: 'green', label: 'TurnUpLevel' },
			{ price: levels.turnDownLvl, color: 'red', label: 'TurnDownLevel' },
			{ price: levels.topPrev, color: 'yellow', label: 'TopPrevious' },
			{ price: levels.bottomPrev, color: 'yellow', label: 'BottomPrevious' }
		];

		levelLines.forEach(({ price, color, label }) => {
			if (price !== undefined) {
				const lineSeries = chart.addLineSeries({ color, lineWidth: 1 });
				lineSeries.setData([
					{ time: firstTime, value: price },
					{ time: lastTime, value: price }
				]);
			}
		});
	}

	function setupWebSocket(): void {
		if (socket) socket.close();
		socket = new WebSocket(`wss://stream.binance.com:9443/ws/${symbol.toLowerCase()}@kline_1h`);

		socket.onopen = () => {
			isConnectedToWS = true;
			loading = false;
			applyChartSize();
		};

		socket.onmessage = (event: MessageEvent) => {
			const message = JSON.parse(event.data);
			const kline = message.k;
			const candle: Candle = {
				time: kline.t / 1000,
				open: parseFloat(kline.o),
				high: parseFloat(kline.h),
				low: parseFloat(kline.l),
				close: parseFloat(kline.c)
			};
			candleSeries.update(candle);
		};

		socket.onclose = () => {
			isConnectedToWS = false;
			loading = true;
			setTimeout(setupWebSocket, 2000);
		};

		socket.onerror = (err) => {
			console.error('❌ WebSocket Error:', err);
			socket?.close();
		};
	}

	onMount(() => {
		if (!chartContainer) return;

		const script = document.createElement('script');
		script.src =
			'https://cdn.jsdelivr.net/npm/lightweight-charts@3.8.0/dist/lightweight-charts.standalone.production.js';

		script.onload = () => {
			if (!chartContainer) return;

			chart = (window as any).LightweightCharts.createChart(chartContainer, {
				width: chartContainer.clientWidth,
				height: chartContainer.clientHeight,
				layout: { backgroundColor: '#131722', textColor: '#d1d4dc' },
				grid: {
					vertLines: { color: '#2B2B43' },
					horzLines: { color: '#363C4E' }
				}
			});

			candleSeries = chart.addCandlestickSeries({
				priceFormat: { type: 'price', precision: 4, minMove: 0.000001 }
			});

			if (symbol.endsWith('USDT')) {
				fetchCandles().then(setupWebSocket);
			} else {
				fetchAlorCandles();
			}

			resizeObserver = new ResizeObserver(applyChartSize);
			resizeObserver.observe(chartContainer);
		};

		document.body.appendChild(script);
	});

	onDestroy(() => {
		if (socket) socket.close();
		if (resizeObserver && chartContainer) resizeObserver.unobserve(chartContainer);
	});
</script>

{#if loading}
	<div class="spinner-container">
		<div class="spinner"></div>
	</div>
{/if}

<div bind:this={chartContainer} id="chart" style:visibility={'visible'}></div>

<style>
	:global(body) {
		margin: 0;
		padding: 0;
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
		background-color: #131722;
		overflow: hidden;
	}
	#chart {
		width: 100vw;
		height: 100vh;
		visibility: hidden;
	}
	.spinner-container {
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		width: 80px;
		height: 80px;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	.spinner {
		width: 64px;
		height: 64px;
		border: 6px solid rgba(255, 255, 255, 0.2);
		border-top-color: #ffffff;
		border-radius: 50%;
		animation: spin 1s linear infinite;
	}
	@keyframes spin {
		0% {
			transform: rotate(0deg);
		}
		100% {
			transform: rotate(360deg);
		}
	}
</style>
