/*
  Warnings:

  - Added the required column `maxProfit` to the `EtfCrypto1` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "EtfCrypto1" ADD COLUMN     "maxProfit" DOUBLE PRECISION NOT NULL;
