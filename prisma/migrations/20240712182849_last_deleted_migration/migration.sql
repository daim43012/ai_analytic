/*
  Warnings:

  - You are about to drop the column `annualProfit` on the `etfCrypto1` table. All the data in the column will be lost.
  - You are about to drop the column `portfolioLoad` on the `etfCrypto1` table. All the data in the column will be lost.
  - You are about to drop the column `ratecom` on the `etfCrypto1` table. All the data in the column will be lost.
  - You are about to drop the column `startdate` on the `etfCrypto1` table. All the data in the column will be lost.
  - Added the required column `entryPrice1` to the `etfCrypto1` table without a default value. This is not possible if the table is not empty.
  - Added the required column `entryPrice10` to the `etfCrypto1` table without a default value. This is not possible if the table is not empty.
  - Added the required column `entryPrice2` to the `etfCrypto1` table without a default value. This is not possible if the table is not empty.
  - Added the required column `entryPrice3` to the `etfCrypto1` table without a default value. This is not possible if the table is not empty.
  - Added the required column `entryPrice4` to the `etfCrypto1` table without a default value. This is not possible if the table is not empty.
  - Added the required column `entryPrice5` to the `etfCrypto1` table without a default value. This is not possible if the table is not empty.
  - Added the required column `entryPrice6` to the `etfCrypto1` table without a default value. This is not possible if the table is not empty.
  - Added the required column `entryPrice7` to the `etfCrypto1` table without a default value. This is not possible if the table is not empty.
  - Added the required column `entryPrice8` to the `etfCrypto1` table without a default value. This is not possible if the table is not empty.
  - Added the required column `entryPrice9` to the `etfCrypto1` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "etfCrypto1" DROP COLUMN "annualProfit",
DROP COLUMN "portfolioLoad",
DROP COLUMN "ratecom",
DROP COLUMN "startdate",
ADD COLUMN     "entryPrice1" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "entryPrice10" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "entryPrice2" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "entryPrice3" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "entryPrice4" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "entryPrice5" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "entryPrice6" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "entryPrice7" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "entryPrice8" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "entryPrice9" DOUBLE PRECISION NOT NULL;
