/*
  Warnings:

  - You are about to alter the column `maxProfit` on the `EtfCrypto1` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Integer`.

*/
-- AlterTable
ALTER TABLE "EtfCrypto1" ALTER COLUMN "maxProfit" SET DATA TYPE INTEGER;
