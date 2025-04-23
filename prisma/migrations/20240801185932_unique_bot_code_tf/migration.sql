/*
  Warnings:

  - You are about to drop the column `PrecentEffecive` on the `RoboAdvisorAnalytics` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX "RoboAdvisorAnalytics_bot_code_tf_key";

-- DropIndex
DROP INDEX "RoboAdvisorEquety_bot_code_tf_key";

-- DropIndex
DROP INDEX "RoboAdvisorMonthEquety_bot_code_tf_key";

-- AlterTable
ALTER TABLE "RoboAdvisorAnalytics" DROP COLUMN "PrecentEffecive";
