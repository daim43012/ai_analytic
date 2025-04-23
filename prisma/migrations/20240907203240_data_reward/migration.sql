/*
  Warnings:

  - You are about to drop the column `data` on the `VirtualWallet` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "VirtualWallet" DROP COLUMN "data",
ADD COLUMN     "dataReward" TEXT NOT NULL DEFAULT '1';
