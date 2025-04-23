/*
  Warnings:

  - You are about to drop the column `amountOfETF` on the `ActiveOrders` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "ActiveOrders" DROP COLUMN "amountOfETF",
ADD COLUMN     "askAmount" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "bidAmount" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "date" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP;
