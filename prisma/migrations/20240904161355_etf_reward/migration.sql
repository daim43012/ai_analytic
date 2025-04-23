/*
  Warnings:

  - You are about to drop the column `amountInUSDT` on the `StatusAndTokens` table. All the data in the column will be lost.
  - You are about to drop the column `rateFTMC` on the `StatusAndTokens` table. All the data in the column will be lost.
  - Added the required column `buy` to the `StatusAndTokens` table without a default value. This is not possible if the table is not empty.
  - Added the required column `discount` to the `StatusAndTokens` table without a default value. This is not possible if the table is not empty.
  - Added the required column `etfReward` to the `StatusAndTokens` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "StatusAndTokens" DROP COLUMN "amountInUSDT",
DROP COLUMN "rateFTMC",
ADD COLUMN     "buy" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "discount" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "etfReward" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "lotsReward" DOUBLE PRECISION NOT NULL DEFAULT 0.001;
