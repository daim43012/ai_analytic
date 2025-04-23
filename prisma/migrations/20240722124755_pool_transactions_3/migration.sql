/*
  Warnings:

  - Added the required column `time` to the `PoolTransactions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userStatus` to the `PoolTransactions` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "PoolTransactions" ADD COLUMN     "time" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "userStatus" DOUBLE PRECISION NOT NULL;
