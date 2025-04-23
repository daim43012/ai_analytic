/*
  Warnings:

  - Added the required column `date` to the `PoolTransactions` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "PoolTransactions" ADD COLUMN     "date" DOUBLE PRECISION NOT NULL;
