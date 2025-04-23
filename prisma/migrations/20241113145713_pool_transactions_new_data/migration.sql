/*
  Warnings:

  - You are about to drop the column `date` on the `PoolTransactions` table. All the data in the column will be lost.
  - You are about to drop the column `email` on the `PoolTransactions` table. All the data in the column will be lost.
  - You are about to drop the column `maticRate` on the `PoolTransactions` table. All the data in the column will be lost.
  - You are about to drop the column `priceFtmc` on the `PoolTransactions` table. All the data in the column will be lost.
  - You are about to drop the column `priceUsdt` on the `PoolTransactions` table. All the data in the column will be lost.
  - You are about to drop the column `time` on the `PoolTransactions` table. All the data in the column will be lost.
  - You are about to drop the column `usdtRateToMatic` on the `PoolTransactions` table. All the data in the column will be lost.
  - You are about to drop the column `userStatus` on the `PoolTransactions` table. All the data in the column will be lost.
  - Added the required column `Change` to the `PoolTransactions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Entrydate` to the `PoolTransactions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Entryprice` to the `PoolTransactions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Entrytime` to the `PoolTransactions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Exitdate` to the `PoolTransactions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Exitprice` to the `PoolTransactions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Exittime` to the `PoolTransactions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Status` to the `PoolTransactions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Symbol` to the `PoolTransactions` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "PoolTransactions" DROP COLUMN "date",
DROP COLUMN "email",
DROP COLUMN "maticRate",
DROP COLUMN "priceFtmc",
DROP COLUMN "priceUsdt",
DROP COLUMN "time",
DROP COLUMN "usdtRateToMatic",
DROP COLUMN "userStatus",
ADD COLUMN     "Change" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "Entrydate" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "Entryprice" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "Entrytime" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "Exitdate" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "Exitprice" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "Exittime" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "Status" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "Symbol" DOUBLE PRECISION NOT NULL;
