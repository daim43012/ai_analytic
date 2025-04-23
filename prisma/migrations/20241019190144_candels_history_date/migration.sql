/*
  Warnings:

  - Added the required column `Date` to the `CandelsHistory` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "CandelsHistory" ADD COLUMN     "Date" DOUBLE PRECISION NOT NULL;
