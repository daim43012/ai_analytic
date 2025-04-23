/*
  Warnings:

  - You are about to drop the column `max` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `min` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `open` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `max` on the `InstrumentChartsDataToSave` table. All the data in the column will be lost.
  - You are about to drop the column `min` on the `InstrumentChartsDataToSave` table. All the data in the column will be lost.
  - You are about to drop the column `open` on the `InstrumentChartsDataToSave` table. All the data in the column will be lost.
  - Added the required column `CurrentClose` to the `InstrumentChartsData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `CurrentTime` to the `InstrumentChartsData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `CurrentClose` to the `InstrumentChartsDataToSave` table without a default value. This is not possible if the table is not empty.
  - Added the required column `CurrentTime` to the `InstrumentChartsDataToSave` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "InstrumentChartsData" DROP COLUMN "max",
DROP COLUMN "min",
DROP COLUMN "open",
ADD COLUMN     "CurrentClose" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "CurrentTime" DOUBLE PRECISION NOT NULL;

-- AlterTable
ALTER TABLE "InstrumentChartsDataToSave" DROP COLUMN "max",
DROP COLUMN "min",
DROP COLUMN "open",
ADD COLUMN     "CurrentClose" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "CurrentTime" DOUBLE PRECISION NOT NULL;
