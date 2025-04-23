/*
  Warnings:

  - You are about to drop the column `Shib` on the `ETF3portfolio` table. All the data in the column will be lost.
  - Added the required column `SHIB` to the `ETF3portfolio` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "ETF3portfolio" DROP COLUMN "Shib",
ADD COLUMN     "SHIB" DOUBLE PRECISION NOT NULL;
