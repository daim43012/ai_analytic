/*
  Warnings:

  - You are about to drop the column `maxProfit` on the `EtfCrypto1` table. All the data in the column will be lost.
  - Added the required column `profitMax` to the `EtfCrypto1` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "EtfCrypto1" DROP COLUMN "maxProfit",
ADD COLUMN     "profitMax" DOUBLE PRECISION NOT NULL;
