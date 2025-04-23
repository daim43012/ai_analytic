/*
  Warnings:

  - Added the required column `profitMax` to the `etfCrypto1` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "etfCrypto1" ADD COLUMN     "profitMax" DOUBLE PRECISION NOT NULL;
