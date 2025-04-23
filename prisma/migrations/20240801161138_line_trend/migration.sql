/*
  Warnings:

  - You are about to drop the column `TrendLine` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.
  - Added the required column `LineTrend` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "RoboAdvisorAnalytics" DROP COLUMN "TrendLine",
ADD COLUMN     "LineTrend" DOUBLE PRECISION NOT NULL;
