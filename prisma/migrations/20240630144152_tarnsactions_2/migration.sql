-- AlterTable
ALTER TABLE "Transactions" ADD COLUMN     "ClaimedIncomingAmount" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "ClaimedPublicRate" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "CurrencyFromChain" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "CurrencyFromCode" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "CurrencyToChain" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "CurrencyToCode" DOUBLE PRECISION NOT NULL DEFAULT 0;
