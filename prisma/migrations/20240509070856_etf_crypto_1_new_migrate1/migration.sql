/*
  Warnings:

  - Added the required column `bot` to the `ETF_CRYPTO_1` table without a default value. This is not possible if the table is not empty.
  - Added the required column `code` to the `ETF_CRYPTO_1` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "ETF_CRYPTO_1_Tf" AS ENUM ('h', 'D');

-- AlterTable
ALTER TABLE "ETF_CRYPTO_1" ADD COLUMN     "bot" TEXT NOT NULL,
ADD COLUMN     "code" TEXT NOT NULL,
ADD COLUMN     "tf" "ETF_CRYPTO_1_Tf" NOT NULL DEFAULT 'h';
