import type { RequestHandler } from '@sveltejs/kit';
import { json } from '@sveltejs/kit';
import { getAllAccessKeys } from '../../../../db.js';

export const GET: RequestHandler = async () => {
  return new Promise((resolve) => {
    getAllAccessKeys((rows:any) => {
      resolve(json(rows));
    });
  });
};
