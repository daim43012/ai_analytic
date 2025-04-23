/*
  Warnings:

  - You are about to drop the column `transaction` on the `Transactions` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Transactions" DROP COLUMN "transaction",
ADD COLUMN     "orderId" DOUBLE PRECISION NOT NULL DEFAULT 0;
