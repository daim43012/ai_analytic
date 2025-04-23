/*
  Warnings:

  - You are about to drop the column `ask` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `bid` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `currentClose` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `currentMax` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `currentMim` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `currentOpen` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `currentTime` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `ask` on the `InstrumentChartsDataToSave` table. All the data in the column will be lost.
  - You are about to drop the column `bid` on the `InstrumentChartsDataToSave` table. All the data in the column will be lost.
  - You are about to drop the column `currentClose` on the `InstrumentChartsDataToSave` table. All the data in the column will be lost.
  - You are about to drop the column `currentMax` on the `InstrumentChartsDataToSave` table. All the data in the column will be lost.
  - You are about to drop the column `currentMim` on the `InstrumentChartsDataToSave` table. All the data in the column will be lost.
  - You are about to drop the column `currentOpen` on the `InstrumentChartsDataToSave` table. All the data in the column will be lost.
  - You are about to drop the column `currentTime` on the `InstrumentChartsDataToSave` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "InstrumentChartsData" DROP COLUMN "ask",
DROP COLUMN "bid",
DROP COLUMN "currentClose",
DROP COLUMN "currentMax",
DROP COLUMN "currentMim",
DROP COLUMN "currentOpen",
DROP COLUMN "currentTime";

-- AlterTable
ALTER TABLE "InstrumentChartsDataToSave" DROP COLUMN "ask",
DROP COLUMN "bid",
DROP COLUMN "currentClose",
DROP COLUMN "currentMax",
DROP COLUMN "currentMim",
DROP COLUMN "currentOpen",
DROP COLUMN "currentTime";
