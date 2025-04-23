/*
  Warnings:

  - Added the required column `day` to the `ETF1portfolio` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month` to the `ETF1portfolio` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week` to the `ETF1portfolio` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "ETF1portfolio" ADD COLUMN     "day" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week" DOUBLE PRECISION NOT NULL;
