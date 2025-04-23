/*
  Warnings:

  - You are about to drop the column `Date` on the `CandelsHistory` table. All the data in the column will be lost.
  - You are about to drop the column `currentClose` on the `CandelsHistory` table. All the data in the column will be lost.
  - You are about to drop the column `currentTime` on the `CandelsHistory` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "CandelsHistory" DROP COLUMN "Date",
DROP COLUMN "currentClose",
DROP COLUMN "currentTime";
