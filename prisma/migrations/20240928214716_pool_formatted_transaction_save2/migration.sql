/*
  Warnings:

  - You are about to drop the `PoolFormattedTransactionSave` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "PoolFormattedTransactionSave";

-- CreateTable
CREATE TABLE "PoolFormattedTransactionSave2" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL DEFAULT 'test@test.com',
    "totalBuyUsdt" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "amountOfETF" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "initialPrice" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "date" TEXT NOT NULL DEFAULT '2024-01-01',

    CONSTRAINT "PoolFormattedTransactionSave2_pkey" PRIMARY KEY ("id")
);
