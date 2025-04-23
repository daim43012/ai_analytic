/*
  Warnings:

  - Added the required column `MaxProfit` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ProfitTradesPct` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "StatsFTM" ADD COLUMN     "MaxProfit" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "ProfitTradesPct" DOUBLE PRECISION NOT NULL;
