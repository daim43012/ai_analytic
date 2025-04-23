/*
  Warnings:

  - Added the required column `priceUsdt` to the `PoolTransactions` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "PoolTransactions" ADD COLUMN     "priceUsdt" DOUBLE PRECISION NOT NULL;
