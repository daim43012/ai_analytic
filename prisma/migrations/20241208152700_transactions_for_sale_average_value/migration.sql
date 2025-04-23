/*
  Warnings:

  - You are about to drop the column `ClaimedIncomingAmount` on the `TransactionsForSale` table. All the data in the column will be lost.
  - You are about to drop the column `amountETF` on the `TransactionsForSale` table. All the data in the column will be lost.
  - You are about to drop the column `buyPrice` on the `TransactionsForSale` table. All the data in the column will be lost.
  - You are about to drop the column `investDate` on the `TransactionsForSale` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "TransactionsForSale" DROP COLUMN "ClaimedIncomingAmount",
DROP COLUMN "amountETF",
DROP COLUMN "buyPrice",
DROP COLUMN "investDate",
ADD COLUMN     "averageValue" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "currentValue" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "days" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "totalAmount" DOUBLE PRECISION NOT NULL DEFAULT 0;
