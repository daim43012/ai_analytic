/*
  Warnings:

  - You are about to drop the column `Attention` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `MaxProfit` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `NearLevelDown` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `NearLevelDown1` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `NearLevelUp` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `NearLevelUp1` on the `StatsFTM` table. All the data in the column will be lost.
  - You are about to drop the column `ProfitTradesPct` on the `StatsFTM` table. All the data in the column will be lost.
  - Added the required column `LastWeekTradesCount` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `LastWeeklyProfit` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `TradesCountWeek` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `WeeklyProfit` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.
  - Added the required column `msgNmb1` to the `StatsFTM` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "StatsFTM" DROP COLUMN "Attention",
DROP COLUMN "MaxProfit",
DROP COLUMN "NearLevelDown",
DROP COLUMN "NearLevelDown1",
DROP COLUMN "NearLevelUp",
DROP COLUMN "NearLevelUp1",
DROP COLUMN "ProfitTradesPct",
ADD COLUMN     "LastWeekTradesCount" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "LastWeeklyProfit" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "TradesCountWeek" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "WeeklyProfit" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "msgNmb1" DOUBLE PRECISION NOT NULL;
