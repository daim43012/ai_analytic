/*
  Warnings:

  - You are about to drop the column `ClosePrice` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `DtLong` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `DtShort` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `Efficiency` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `ExpectedProfit` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `ExpectedProfitBH` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `KW_CalmarReatio` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `KW_DropDown` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `KW_Profit` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `KW_RecoveryFactor` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `KW_StDev` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `LastWeekTradesCount` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `LastWeeklyProfit` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `PnlPos` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `PriceLong` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `PriceShort` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `ProfL` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `ProfS` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `ProfTradesPrecent` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `ProfitPrecent` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `ROI` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `StopLevel` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `TradesCnt` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `maxProfit` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `maxProfitBH` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `msgNmbReview` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `pctBH` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `pctef` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `tmLong` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `tmShort` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `weeklyProfit` on the `StatsFTM` table. All the data in the column will be lost.
  - Added the required column `Attention` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `CalmarRatioKW` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `DownWave` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `DrowDownKW` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `DtLn` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Dtsh` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `EfficiencyKW` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ExpectedProfitBHmax` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ExpectedProfitBHmix` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ExpectedProfitMax` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ExpectedProfitMin` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `KW_Sharp` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `LastPrice` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MaxProfit` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MaxProfitBH` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `NearLevelDown` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `NearLevelDown1` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `NearLevelUp` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `NearLevelUp1` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `PnLPos` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ProfitKW` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ProfitPct` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ProfitPctBH` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ProfitTradesPct` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `RecoveryFactorKW` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Sharp` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `SharpBH` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `StDevKW` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Tend` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `UpWave` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tmLn` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tmSh` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "StatsFTM" DROP COLUMN "ClosePrice",
DROP COLUMN "DtLong",
DROP COLUMN "DtShort",
DROP COLUMN "Efficiency",
DROP COLUMN "ExpectedProfit",
DROP COLUMN "ExpectedProfitBH",
DROP COLUMN "KW_CalmarReatio",
DROP COLUMN "KW_DropDown",
DROP COLUMN "KW_Profit",
DROP COLUMN "KW_RecoveryFactor",
DROP COLUMN "KW_StDev",
DROP COLUMN "LastWeekTradesCount",
DROP COLUMN "LastWeeklyProfit",
DROP COLUMN "PnlPos",
DROP COLUMN "PriceLong",
DROP COLUMN "PriceShort",
DROP COLUMN "ProfL",
DROP COLUMN "ProfS",
DROP COLUMN "ProfTradesPrecent",
DROP COLUMN "ProfitPrecent",
DROP COLUMN "ROI",
DROP COLUMN "StopLevel",
DROP COLUMN "TradesCnt",
DROP COLUMN "maxProfit",
DROP COLUMN "maxProfitBH",
DROP COLUMN "msgNmbReview",
DROP COLUMN "pctBH",
DROP COLUMN "pctef",
DROP COLUMN "tmLong",
DROP COLUMN "tmShort",
DROP COLUMN "weeklyProfit",
ADD COLUMN     "Attention" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "CalmarRatioKW" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "DownWave" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "DrowDownKW" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "DtLn" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "Dtsh" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "EfficiencyKW" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "ExpectedProfitBHmax" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "ExpectedProfitBHmix" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "ExpectedProfitMax" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "ExpectedProfitMin" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "KW_Sharp" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "LastPrice" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "MaxProfit" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "MaxProfitBH" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "NearLevelDown" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "NearLevelDown1" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "NearLevelUp" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "NearLevelUp1" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "PnLPos" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "ProfitKW" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "ProfitPct" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "ProfitPctBH" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "ProfitTradesPct" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "RecoveryFactorKW" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "Sharp" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "SharpBH" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "StDevKW" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "Tend" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "UpWave" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "tmLn" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "tmSh" DOUBLE PRECISION NOT NULL;
