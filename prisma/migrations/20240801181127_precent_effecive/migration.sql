/*
  Warnings:

  - Added the required column `PrecentEffecive` to the `RoboAdvisorAnalytics` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "RoboAdvisorAnalytics" ADD COLUMN     "PrecentEffecive" DOUBLE PRECISION NOT NULL;
