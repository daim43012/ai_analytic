-- AlterTable
ALTER TABLE "Wallet" ADD COLUMN     "amountETF" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "buyPrice" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "investDate" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "typeOfETF" DOUBLE PRECISION NOT NULL DEFAULT 0;
