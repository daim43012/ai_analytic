/*
  Warnings:

  - You are about to drop the column `CurrencyFromChain` on the `WithdrawalTransactionsVW` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "WithdrawalTransactionsVW" DROP COLUMN "CurrencyFromChain";
