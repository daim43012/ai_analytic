/*
  Warnings:

  - You are about to drop the `Wallet` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "Wallet";

-- CreateTable
CREATE TABLE "Transactions" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL DEFAULT 'test@gmail.com',
    "transaction" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "investDate" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "typeOfETF" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "amountETF" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "buyPrice" DOUBLE PRECISION NOT NULL DEFAULT 0,

    CONSTRAINT "Transactions_pkey" PRIMARY KEY ("id")
);
