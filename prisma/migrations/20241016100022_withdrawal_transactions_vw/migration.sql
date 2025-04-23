/*
  Warnings:

  - You are about to drop the `WithdrawalTransactions` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "WithdrawalTransactions";

-- CreateTable
CREATE TABLE "WithdrawalTransactionsVW" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL DEFAULT 'test@gmail.com',
    "orderId" DOUBLE PRECISION NOT NULL,
    "CurrencyFromChain" TEXT NOT NULL DEFAULT '',
    "status" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "tokenAmount" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "CurrencyRecieved" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "WithdrawalCurrency" TEXT NOT NULL DEFAULT '',
    "investDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "WithdrawalTransactionsVW_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "WithdrawalTransactionsVW_orderId_key" ON "WithdrawalTransactionsVW"("orderId");
