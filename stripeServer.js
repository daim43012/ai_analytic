import express from 'express';
import Stripe from 'stripe';
import cors from 'cors';
import bodyParser from 'body-parser';
import TelegramBot from 'node-telegram-bot-api';

import {
  STRIPE_SECRET_KEY,
  STRIPE_WEBHOOK_SECRET,
  STRIPE_PRICE_ID,
  SUBSCRIPTION_DAYS,
  TELEGRAM_TOKEN,
  CHANNEL_ID
} from './config.js';

import { addOrUpdateUser, logPayment } from './db.js';

const stripe = new Stripe(STRIPE_SECRET_KEY);
const bot = new TelegramBot(TELEGRAM_TOKEN, { polling: false });
const app = express();

// Webhook — raw body
app.post(
  '/stripe/webhook',
  bodyParser.raw({ type: 'application/json' }),
  async (req, res) => {
    let event;

    try {
      event = stripe.webhooks.constructEvent(
        req.body,
        req.headers['stripe-signature'],
        STRIPE_WEBHOOK_SECRET
      );
    } catch (err) {
      console.error('❌ Webhook error:', err.message);
      return res.status(400).send(`Webhook Error: ${err.message}`);
    }

    if (event.type === 'checkout.session.completed') {
      const session = event.data.object;
      const userId = session.metadata.userId;
      const username = session.metadata.username;

      const now = new Date();
      now.setDate(now.getDate() + SUBSCRIPTION_DAYS);
      const endDate = now.toISOString();

      console.log(`✅ Оплата: ${username} (${userId}) до ${endDate}`);
      addOrUpdateUser(userId, username, endDate);
      logPayment(userId, username, 'stripe');

      try {
        const link = await bot.createChatInviteLink(CHANNEL_ID, {
          creates_join_request: true,
          name: `auto_${userId}_${Date.now()}`
        });

        await bot.sendMessage(userId, `🎉 Оплата прошла, добро пожаловать!\n\n🔗 Вот ссылка для входа в канал:\n${link.invite_link}`);
        console.log(`📨 Ссылка отправлена: ${userId}`);
      } catch (err) {
        console.error('❌ Ошибка Telegram:', err.message);
      }
    }

    res.json({ received: true });
  }
);

// Остальные middleware
app.use(cors());
app.use(bodyParser.json());

// Stripe Checkout
app.post('/stripe/create-checkout-session', async (req, res) => {
  const { userId, username } = req.body;

  try {
    const session = await stripe.checkout.sessions.create({
      payment_method_types: ['card'],
      line_items: [{ price: STRIPE_PRICE_ID, quantity: 1 }],
      mode: 'payment',
      success_url: 'https://ai-analytic.com/success',
      cancel_url: 'https://ai-analytic.com/cancel',
      metadata: { userId, username }
    });

    res.json({ url: session.url });
  } catch (err) {
    console.error('❌ Ошибка Stripe:', err.message);
    res.status(500).json({ error: 'Ошибка создания платежа' });
  }
});

app.listen(4242, () => {
  console.log('✅ Stripe-сервер на порту 4242');
});
