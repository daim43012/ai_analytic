// outOfRangeChannel.ts

export interface Candle {
  time: number;
  open: number;
  high: number;
  low: number;
  close: number;
}

export interface ChannelInfo {
  ema: number;
  topDev: number;
  botDev: number;
  isBreakout: boolean; // full breakout (bigBar)
  highBreakout: boolean;
  lowBreakout: boolean;
  bigBar: boolean;
  highPoint: { time: number; value: number };
  lowPoint: { time: number; value: number };
}

/**
 * Вычисляет EMA
 */
function calculateEMA(candles: Candle[], period: number): number[] {
  const k = 2 / (period + 1);
  const ema: number[] = [];

  candles.forEach((candle, index) => {
    if (index === 0) {
      ema.push(candle.close);
    } else {
      ema.push(candle.close * k + ema[index - 1] * (1 - k));
    }
  });

  return ema;
}

/**
 * Вычисляет границы канала, факт прорывов и точки экстремумов
 */
export function analyzeOutOfRangeChannel(
  candles: Candle[],
  period = 25,
  devCoef = 4.5
): ChannelInfo[] {
  const emaList = calculateEMA(candles, period);
  const result: ChannelInfo[] = [];

  for (let i = 0; i < candles.length; i++) {
    const candle = candles[i];
    const ema = emaList[i];
    const topDev = ema + (candle.close * devCoef) / 100;
    const botDev = ema - (candle.close * devCoef) / 100;

    const highBreakout = candle.high >= topDev;
    const lowBreakout = candle.low <= botDev;
    const bigBar = highBreakout && lowBreakout;

    const highPoint = { time: candle.time, value: candle.high };
    const lowPoint = { time: candle.time, value: candle.low };

    result.push({
      ema,
      topDev,
      botDev,
      isBreakout: bigBar,
      highBreakout,
      lowBreakout,
      bigBar,
      highPoint,
      lowPoint
    });
  }

  return result;
}
