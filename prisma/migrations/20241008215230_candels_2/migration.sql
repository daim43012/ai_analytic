/*
  Warnings:

  - You are about to drop the column `Volumme` on the `Candels` table. All the data in the column will be lost.
  - Added the required column `Volume` to the `Candels` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Candels" DROP COLUMN "Volumme",
ADD COLUMN     "Volume" DOUBLE PRECISION NOT NULL;
