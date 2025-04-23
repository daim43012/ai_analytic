// ✅ bot.js
import TelegramBot from 'node-telegram-bot-api';
import fetch from 'node-fetch';
import { TELEGRAM_TOKEN, CHANNEL_ID, SUBSCRIPTION_DAYS } from './config.js';
import { addOrUpdateUser, getSubscription, isAccessKeyValid, useAccessKey } from './db.js';

const bot = new TelegramBot(TELEGRAM_TOKEN, { polling: true });
const awaitingCode = new Set();

console.log('🤖 Бот запущен...');

// /start — приветствие с кнопкой оплаты и активации
bot.onText(/\/start/, (msg) => {
	const userId = msg.chat.id;
	getSubscription(userId, (sub) => {
		const now = new Date();
		const active = sub && new Date(sub.end_date) > now;

		const text = `
👋 Добро пожаловать!

Здесь вы можете оформить подписку на наш закрытый Telegram-канал с алертами по ETF-портфелям, основанными на AI-ребалансировке.

💡 Выберите действие ниже:
		`;

		const buttons = [
			[{ text: '💸 Оплатить подписку', callback_data: 'pay_now' }]
		];

		if (!active) {
			buttons[0].push({ text: '🎟️ Активировать промокод', callback_data: 'enter_code' });
		}

		bot.sendMessage(userId, text, {
			reply_markup: { inline_keyboard: buttons }
		});
	});
});

// обработка кнопок оплаты и промокода
bot.on('callback_query', async (query) => {
	const userId = query.from.id;
	const username = query.from.username || '';

	if (query.data === 'pay_now') {
		getSubscription(userId, async (sub) => {
			const now = new Date();

			if (sub && new Date(sub.end_date) > now) {
				const end = new Date(sub.end_date).toLocaleString('ru-RU');
				await bot.sendMessage(userId, `✅ Ваша подписка активна до: ${end}`);
				return;
			}

			try {
				const res = await fetch('https://ai-analytic.com/stripe/create-checkout-session', {
					method: 'POST',
					headers: { 'Content-Type': 'application/json' },
					body: JSON.stringify({ userId, username })
				});

				const data = await res.json();

				await bot.sendMessage(userId, '💳 Нажмите кнопку ниже для перехода к оплате:', {
					reply_markup: {
						inline_keyboard: [[{ text: 'Перейти к оплате 💳', url: data.url }]]
					}
				});
			} catch (err) {
				console.error('❌ Stripe ошибка:', err.message);
				bot.sendMessage(userId, '❌ Не удалось создать сессию оплаты. Попробуйте позже.');
			}
		});
	} else if (query.data === 'enter_code') {
		getSubscription(userId, (sub) => {
			const now = new Date();
			if (sub && new Date(sub.end_date) > now) {
				bot.sendMessage(userId, '✅ У вас уже есть активная подписка, ввод промокода недоступен.');
			} else {
				awaitingCode.add(userId);
				bot.sendMessage(userId, '🔑 Введите ваш промокод:');
			}
		});
	}
});

// Обработка входящего текста как промокод
bot.on('message', (msg) => {
	const userId = msg.from.id;
	const username = msg.from.username || '';
	const code = msg.text?.trim();

	if (awaitingCode.has(userId) && code) {
		awaitingCode.delete(userId);

		getSubscription(userId, (sub) => {
			const now = new Date();
			if (sub && new Date(sub.end_date) > now) {
				bot.sendMessage(userId, '✅ У вас уже есть активная подписка. Промокод не требуется.');
				return;
			}

			isAccessKeyValid(code, (valid) => {
				if (!valid) {
					bot.sendMessage(userId, '❌ Неверный или использованный ключ.');
					return;
				}

				now.setDate(now.getDate() + SUBSCRIPTION_DAYS);
				const endDate = now.toISOString();

				addOrUpdateUser(userId, username, endDate);
				useAccessKey(code, userId, async (success) => {
          if (success) {
            await bot.sendMessage(userId, `✅ Подписка активирована до ${now.toLocaleString('ru-RU')}`);
        
            try {
              const link = await bot.createChatInviteLink(CHANNEL_ID, {
                creates_join_request: true,
                name: `promo_${userId}_${Date.now()}`
              });
        
              await bot.sendMessage(userId, `🎉 Добро пожаловать!\n\n🔗 Вот ваша ссылка для входа в канал:\n${link.invite_link}`);
            } catch (err) {
              console.error('❌ Ошибка при создании ссылки:', err.message);
              await bot.sendMessage(userId, '⚠️ Подписка активирована, но не удалось создать ссылку для входа. Свяжитесь с админом.');
            }
          } else {
            bot.sendMessage(userId, '❌ Ошибка при активации ключа.');
          }
        });
        
			});
		});
	}
});

// /status — проверка подписки
bot.onText(/\/status/, (msg) => {
	const userId = msg.from.id;
	getSubscription(userId, (sub) => {
		const now = new Date();

		if (!sub) {
			bot.sendMessage(userId, '❌ Подписка не найдена. Нажмите /start для оформления.');
		} else {
			const endDate = new Date(sub.end_date);
			if (endDate > now) {
				bot.sendMessage(userId, `✅ Подписка активна до: ${endDate.toLocaleString('ru-RU')}`);
			} else {
				bot.sendMessage(userId, `⌛ Подписка истекла: ${endDate.toLocaleString('ru-RU')}`);
			}
		}
	});
});

// заявка в канал
bot.on('chat_join_request', async (request) => {
	const userId = request.from.id;
	getSubscription(userId, async (sub) => {
		const now = new Date();

		if (sub && new Date(sub.end_date) > now) {
			try {
				await bot.approveChatJoinRequest(CHANNEL_ID, userId);
				await bot.sendMessage(userId, '🎉 Добро пожаловать! Подписка активна.');
			} catch (err) {
				console.error(`❌ Ошибка при одобрении: ${userId}`, err.message);
			}
		} else {
			try {
				await bot.declineChatJoinRequest(CHANNEL_ID, userId);
				await bot.sendMessage(userId, '⛔ У вас нет активной подписки. Оформите её через /start');
			} catch (err) {
				console.error(`❌ Ошибка при отклонении: ${userId}`, err.message);
			}
		}
	});
});
