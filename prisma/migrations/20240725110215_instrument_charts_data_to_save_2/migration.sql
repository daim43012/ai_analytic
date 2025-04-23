/*
  Warnings:

  - You are about to drop the column `close_d` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `close_h` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `close_w` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `date_w` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `max_d` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `max_h` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `max_w` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `min_d` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `min_h` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `min_w` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `open_d` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `open_h` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `open_w` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `time_d` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `time_h` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - You are about to drop the column `time_w` on the `InstrumentChartsData` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "InstrumentChartsData" DROP COLUMN "close_d",
DROP COLUMN "close_h",
DROP COLUMN "close_w",
DROP COLUMN "date_w",
DROP COLUMN "max_d",
DROP COLUMN "max_h",
DROP COLUMN "max_w",
DROP COLUMN "min_d",
DROP COLUMN "min_h",
DROP COLUMN "min_w",
DROP COLUMN "open_d",
DROP COLUMN "open_h",
DROP COLUMN "open_w",
DROP COLUMN "time_d",
DROP COLUMN "time_h",
DROP COLUMN "time_w";

-- CreateTable
CREATE TABLE "InstrumentChartsDataToSave" (
    "id" SERIAL NOT NULL,
    "bot" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "tf" "ETFCRYPTO1Tf" NOT NULL DEFAULT 'h',
    "bid" DOUBLE PRECISION NOT NULL,
    "ask" DOUBLE PRECISION NOT NULL,
    "date" DOUBLE PRECISION NOT NULL,
    "time" DOUBLE PRECISION NOT NULL,
    "open" DOUBLE PRECISION NOT NULL,
    "close" DOUBLE PRECISION NOT NULL,
    "max" DOUBLE PRECISION NOT NULL,
    "min" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "InstrumentChartsDataToSave_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "InstrumentChartsDataToSave_code_tf_key" ON "InstrumentChartsDataToSave"("code", "tf");
