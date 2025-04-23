/*
  Warnings:

  - Changed the type of `ideasUpdate` on the `StatSetf` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "StatSetf" ALTER COLUMN "daysCount" SET DATA TYPE DOUBLE PRECISION,
ALTER COLUMN "ideasCount" SET DATA TYPE DOUBLE PRECISION,
DROP COLUMN "ideasUpdate",
ADD COLUMN     "ideasUpdate" DOUBLE PRECISION NOT NULL;
