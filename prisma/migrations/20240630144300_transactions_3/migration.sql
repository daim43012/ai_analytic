/*
  Warnings:

  - The `investDate` column on the `Transactions` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "Transactions" DROP COLUMN "investDate",
ADD COLUMN     "investDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN "CurrencyFromChain" SET DEFAULT '',
ALTER COLUMN "CurrencyFromChain" SET DATA TYPE TEXT,
ALTER COLUMN "CurrencyFromCode" SET DEFAULT '',
ALTER COLUMN "CurrencyFromCode" SET DATA TYPE TEXT,
ALTER COLUMN "CurrencyToChain" SET DEFAULT '',
ALTER COLUMN "CurrencyToChain" SET DATA TYPE TEXT,
ALTER COLUMN "CurrencyToCode" SET DEFAULT '',
ALTER COLUMN "CurrencyToCode" SET DATA TYPE TEXT;
