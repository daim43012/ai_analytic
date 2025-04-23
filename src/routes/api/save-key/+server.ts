import type { RequestHandler } from '@sveltejs/kit';
import { json } from '@sveltejs/kit';
import { createAccessKey } from '../../../../db';

export const POST: RequestHandler = async ({ request }) => {
  const { code, password } = await request.json();

  // ⚠️ Укажи здесь свой пароль
  const ADMIN_PASSWORD = 'SwapFTM777@';

  if (password !== ADMIN_PASSWORD) {
    return new Response('Unauthorized', { status: 401 });
  }

  try {
    createAccessKey(code);
    return json({ success: true });
  } catch (err) {
    console.error('❌ Ошибка создания ключа:', err);
    return new Response('Error saving key', { status: 500 });
  }
};
