/*
  Warnings:

  - You are about to drop the column `script` on the `ETF2portfolio` table. All the data in the column will be lost.
  - You are about to drop the column `script` on the `ETF3portfolio` table. All the data in the column will be lost.
  - Added the required column `portfolioLoad` to the `ETF2portfolio` table without a default value. This is not possible if the table is not empty.
  - Added the required column `portfolioLoad` to the `ETF3portfolio` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "ETF2portfolio" DROP COLUMN "script",
ADD COLUMN     "portfolioLoad" DOUBLE PRECISION NOT NULL;

-- AlterTable
ALTER TABLE "ETF3portfolio" DROP COLUMN "script",
ADD COLUMN     "portfolioLoad" DOUBLE PRECISION NOT NULL;
