/*
  Warnings:

  - You are about to drop the column `date` on the `VirtualWallet` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "VirtualWallet" DROP COLUMN "date",
ADD COLUMN     "data" TEXT NOT NULL DEFAULT '1',
ADD COLUMN     "dataDividents" TEXT NOT NULL DEFAULT '1';
