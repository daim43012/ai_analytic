import TelegramBot from 'node-telegram-bot-api';
import { TELEGRAM_TOKEN, CHANNEL_ID } from './config.js';
import { getExpiredUsers, getExpiringUsers } from './db.js';

const bot = new TelegramBot(TELEGRAM_TOKEN, { polling: false });

async function checkSubscriptions() {
  console.log('🔄 Проверка подписок...');

  // Уведомление за 24 часа до окончания подписки
  await new Promise(resolve => {
    getExpiringUsers(async (users) => {
      for (const user of users) {
        try {
          await bot.sendMessage(
            user.user_id,
            '⏳ Ваша подписка истекает через 24 часа. Чтобы остаться в канале, продлите её через /pay.'
          );
          console.log(`📨 Напоминание отправлено: ${user.user_id}`);
        } catch (err) {
          console.error(`❌ Ошибка при уведомлении ${user.user_id}:`, err.message);
        }
      }
      resolve();
    });
  });

  // Удаление пользователей с истёкшими подписками
  await new Promise(resolve => {
    getExpiredUsers(async (users) => {
      for (const user of users) {
        try {
          await bot.sendMessage(
            user.user_id,
            '❌ Ваша подписка истекла. Вы будете удалены из канала.'
          );
          await bot.banChatMember(CHANNEL_ID, user.user_id);
          await bot.unbanChatMember(CHANNEL_ID, user.user_id);
          console.log(`🚫 Удалён из канала: ${user.user_id}`);
        } catch (err) {
          console.error(`❌ Ошибка при удалении ${user.user_id}:`, err.message);
        }
      }
      resolve();
    });
  });

  console.log('✅ Проверка подписок завершена.');
}

checkSubscriptions();
