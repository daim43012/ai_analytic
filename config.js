import dotenv from 'dotenv';
dotenv.config();

export const TELEGRAM_TOKEN = process.env.TELEGRAM_TOKEN;
export const CHANNEL_ID = process.env.CHANNEL_ID;
export const SUBSCRIPTION_DAYS = parseInt(process.env.SUBSCRIPTION_DAYS, 10);

export const STRIPE_SECRET_KEY = process.env.STRIPE_SECRET_KEY;
export const STRIPE_WEBHOOK_SECRET = process.env.STRIPE_WEBHOOK_SECRET;
export const STRIPE_PRICE_ID = process.env.STRIPE_PRICE_ID;
