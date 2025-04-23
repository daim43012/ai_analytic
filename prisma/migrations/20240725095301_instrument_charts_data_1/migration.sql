/*
  Warnings:

  - You are about to drop the column `mmax_w` on the `InstrumentChartsData` table. All the data in the column will be lost.
  - Added the required column `max_w` to the `InstrumentChartsData` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "InstrumentChartsData" DROP COLUMN "mmax_w",
ADD COLUMN     "max_w" DOUBLE PRECISION NOT NULL;
