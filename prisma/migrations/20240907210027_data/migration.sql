/*
  Warnings:

  - You are about to drop the column `dataReward` on the `VirtualWallet` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "VirtualWallet" DROP COLUMN "dataReward",
ADD COLUMN     "data" TEXT NOT NULL DEFAULT '1';
