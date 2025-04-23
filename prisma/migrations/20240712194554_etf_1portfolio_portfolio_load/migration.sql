/*
  Warnings:

  - You are about to drop the column `script` on the `ETF1portfolio` table. All the data in the column will be lost.
  - Added the required column `portfolioLoad` to the `ETF1portfolio` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "ETF1portfolio" DROP COLUMN "script",
ADD COLUMN     "portfolioLoad" DOUBLE PRECISION NOT NULL;
