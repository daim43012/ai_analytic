/*
  Warnings:

  - Added the required column `BottomActualReview` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ButtomPreviousReview` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ChanelLine` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ChanelLinePrevious` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `CloseDate` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Delta` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `DeltaPrevious` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MaxDrovDown` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MaxDrovDownBH` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MaxProfitPrecent` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MaxProfitPrecentBH` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `PrecentBH` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `PreviousChanelPrecent` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `RangeExtremum` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `RecoveryFactor` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `RecoveryFactorBH` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Review` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `StandardDeviationPrecent` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `StandardDeviationPrecentBH` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `StartDate` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `StartDatePrevious` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `TopActualReview` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `TopPreviousReview` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `TrendLine` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `TrendLinePrevious` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `TurnDownLevelReview` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `TurnUpLevelReview` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_25` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_26` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_27` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_28` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_29` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_30` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_31` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_32` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_33` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_34` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_35` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_36` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_37` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_38` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_39` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_40` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_41` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_42` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_43` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_44` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_45` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_46` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_47` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_48` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_49` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_50` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_51` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `week_52` to the `RoboAdvisorEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_25` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_26` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_27` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_28` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_29` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_30` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_31` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_32` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_33` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_34` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_35` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_36` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_37` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_38` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_39` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_40` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_41` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_42` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_43` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_44` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_45` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_46` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_47` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_48` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_49` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_50` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_51` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.
  - Added the required column `month_52` to the `RoboAdvisorMonthEquety` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "RoboAdvisorAnalytics" ADD COLUMN     "BottomActualReview" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "ButtomPreviousReview" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "ChanelLine" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "ChanelLinePrevious" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "CloseDate" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "Delta" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "DeltaPrevious" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "MaxDrovDown" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "MaxDrovDownBH" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "MaxProfitPrecent" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "MaxProfitPrecentBH" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "PrecentBH" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "PreviousChanelPrecent" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "RangeExtremum" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "RecoveryFactor" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "RecoveryFactorBH" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "Review" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "StandardDeviationPrecent" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "StandardDeviationPrecentBH" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "StartDate" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "StartDatePrevious" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "TopActualReview" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "TopPreviousReview" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "TrendLine" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "TrendLinePrevious" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "TurnDownLevelReview" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "TurnUpLevelReview" DOUBLE PRECISION NOT NULL;

-- AlterTable
ALTER TABLE "RoboAdvisorEquety" ADD COLUMN     "week_25" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_26" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_27" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_28" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_29" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_30" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_31" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_32" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_33" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_34" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_35" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_36" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_37" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_38" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_39" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_40" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_41" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_42" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_43" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_44" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_45" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_46" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_47" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_48" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_49" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_50" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_51" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "week_52" DOUBLE PRECISION NOT NULL;

-- AlterTable
ALTER TABLE "RoboAdvisorMonthEquety" ADD COLUMN     "month_25" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_26" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_27" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_28" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_29" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_30" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_31" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_32" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_33" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_34" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_35" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_36" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_37" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_38" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_39" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_40" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_41" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_42" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_43" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_44" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_45" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_46" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_47" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_48" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_49" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_50" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_51" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "month_52" DOUBLE PRECISION NOT NULL;
