/*
  Warnings:

  - You are about to drop the column `data` on the `VirtualWallet` table. All the data in the column will be lost.
  - You are about to drop the column `dataDividents` on the `VirtualWallet` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "VirtualWallet" DROP COLUMN "data",
DROP COLUMN "dataDividents",
ADD COLUMN     "date" TEXT NOT NULL DEFAULT '1',
ADD COLUMN     "dateDividents" TEXT NOT NULL DEFAULT '1';
