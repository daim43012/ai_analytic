-- DropIndex
DROP INDEX "WithdrawalTransactionsVW_orderId_key";

-- AlterTable
ALTER TABLE "WithdrawalTransactionsVW" ALTER COLUMN "orderId" SET DEFAULT 0;
