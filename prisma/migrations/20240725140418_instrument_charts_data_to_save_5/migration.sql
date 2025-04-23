/*
  Warnings:

  - Added the required column `currentClose` to the `InstrumentChartsData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `currentMax` to the `InstrumentChartsData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `currentMim` to the `InstrumentChartsData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `currentOpen` to the `InstrumentChartsData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `currentTime` to the `InstrumentChartsData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `currentClose` to the `InstrumentChartsDataToSave` table without a default value. This is not possible if the table is not empty.
  - Added the required column `currentMax` to the `InstrumentChartsDataToSave` table without a default value. This is not possible if the table is not empty.
  - Added the required column `currentMim` to the `InstrumentChartsDataToSave` table without a default value. This is not possible if the table is not empty.
  - Added the required column `currentOpen` to the `InstrumentChartsDataToSave` table without a default value. This is not possible if the table is not empty.
  - Added the required column `currentTime` to the `InstrumentChartsDataToSave` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "InstrumentChartsData" ADD COLUMN     "currentClose" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "currentMax" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "currentMim" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "currentOpen" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "currentTime" DOUBLE PRECISION NOT NULL;

-- AlterTable
ALTER TABLE "InstrumentChartsDataToSave" ADD COLUMN     "currentClose" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "currentMax" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "currentMim" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "currentOpen" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "currentTime" DOUBLE PRECISION NOT NULL;
