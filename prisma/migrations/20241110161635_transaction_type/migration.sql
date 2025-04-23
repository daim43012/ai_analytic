/*
  Warnings:

  - You are about to drop the column `type` on the `WithdrawalTransactionsVW` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "WithdrawalTransactionsVW" DROP COLUMN "type",
ADD COLUMN     "transactionType" DOUBLE PRECISION NOT NULL DEFAULT 0;
