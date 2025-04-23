-- CreateEnum
CREATE TYPE "WalletType" AS ENUM ('REFERRAL', 'BONUS');

-- CreateTable
CREATE TABLE "Wallet" (
    "id" SERIAL NOT NULL,
    "address" TEXT NOT NULL,
    "currency" TEXT NOT NULL,
    "chain" TEXT NOT NULL,
    "type" "WalletType" NOT NULL DEFAULT 'REFERRAL',

    CONSTRAINT "Wallet_pkey" PRIMARY KEY ("id")
);
