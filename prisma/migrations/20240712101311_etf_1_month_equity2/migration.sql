/*
  Warnings:

  - Added the required column `script` to the `ETF1MonthEquity` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "ETF1MonthEquity" ADD COLUMN     "script" DOUBLE PRECISION NOT NULL;
