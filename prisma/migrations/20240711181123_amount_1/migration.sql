/*
  Warnings:

  - A unique constraint covering the columns `[orderId]` on the table `Transactions` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "Transactions" ALTER COLUMN "orderId" DROP DEFAULT;

-- CreateIndex
CREATE UNIQUE INDEX "Transactions_orderId_key" ON "Transactions"("orderId");
