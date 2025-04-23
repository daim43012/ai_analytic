/*
  Warnings:

  - You are about to drop the column `script` on the `ETF1MonthEquity` table. All the data in the column will be lost.
  - Added the required column `scrypt` to the `ETF1MonthEquity` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "ETF1MonthEquity" DROP COLUMN "script",
ADD COLUMN     "scrypt" DOUBLE PRECISION NOT NULL;
