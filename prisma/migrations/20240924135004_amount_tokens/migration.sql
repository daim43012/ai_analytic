-- AlterTable
ALTER TABLE "Transactions" ADD COLUMN     "amountTokens" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "isTokens" DOUBLE PRECISION NOT NULL DEFAULT 0;
