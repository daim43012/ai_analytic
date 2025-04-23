/*
  Warnings:

  - You are about to drop the column `BottomActualReview` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `ButtomPreviousReview` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `ChanelLine` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `ChanelLinePrevious` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `CloseDate` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `DayChangePrecent` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `Delta` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `DeltaPrevious` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `DownWavePrecent` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `LineTrend` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `MaxDrovDown` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `MaxDrovDownBH` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `MaxProfitPrecent` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `MaxProfitPrecentBH` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `PrecentBH` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `PrecentEffecive` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `PreviousChanelPrecent` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `ProfitDealsPrecent` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `ProfitPrecent` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `RangeExtremum` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `RecoveryFactor` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `RecoveryFactorBH` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `Resistance_1` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `Resistance_2` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `Review` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `StandardDeviationPrecent` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `StandardDeviationPrecentBH` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `StartDate` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `StartDatePrevious` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `Support_1` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `Support_2` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `TopActualReview` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `TopPreviousReview` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `TrendLinePrevious` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `TurnDownLevelReview` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `TurnUpLevelReview` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - You are about to drop the column `UpWavePrecent` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "RoboAdvisorAnalytics" DROP COLUMN "BottomActualReview",
DROP COLUMN "ButtomPreviousReview",
DROP COLUMN "ChanelLine",
DROP COLUMN "ChanelLinePrevious",
DROP COLUMN "CloseDate",
DROP COLUMN "DayChangePrecent",
DROP COLUMN "Delta",
DROP COLUMN "DeltaPrevious",
DROP COLUMN "DownWavePrecent",
DROP COLUMN "LineTrend",
DROP COLUMN "MaxDrovDown",
DROP COLUMN "MaxDrovDownBH",
DROP COLUMN "MaxProfitPrecent",
DROP COLUMN "MaxProfitPrecentBH",
DROP COLUMN "PrecentBH",
DROP COLUMN "PrecentEffecive",
DROP COLUMN "PreviousChanelPrecent",
DROP COLUMN "ProfitDealsPrecent",
DROP COLUMN "ProfitPrecent",
DROP COLUMN "RangeExtremum",
DROP COLUMN "RecoveryFactor",
DROP COLUMN "RecoveryFactorBH",
DROP COLUMN "Resistance_1",
DROP COLUMN "Resistance_2",
DROP COLUMN "Review",
DROP COLUMN "StandardDeviationPrecent",
DROP COLUMN "StandardDeviationPrecentBH",
DROP COLUMN "StartDate",
DROP COLUMN "StartDatePrevious",
DROP COLUMN "Support_1",
DROP COLUMN "Support_2",
DROP COLUMN "TopActualReview",
DROP COLUMN "TopPreviousReview",
DROP COLUMN "TrendLinePrevious",
DROP COLUMN "TurnDownLevelReview",
DROP COLUMN "TurnUpLevelReview",
DROP COLUMN "UpWavePrecent",
ADD COLUMN     "Closesession1" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "Closesession2" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "FclosePct" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "FclosePrevPct" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "L11" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "L12" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "L21" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "L22" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "L3" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "L4" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "Maxsession1" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "Maxsession2" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "Minsession1" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "Minsession2" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "ProfitIdealsPct" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "ProfitPct" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "RangeExt" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "date1" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "date2" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "dateClose" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "dateClosePrev" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "delta1" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "delta2" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "resistans1" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "resistans2" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "support1" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "support2" DOUBLE PRECISION NOT NULL DEFAULT 0;
