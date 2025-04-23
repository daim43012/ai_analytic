/*
  Warnings:

  - The `tf` column on the `ETF_CRYPTO_1` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- CreateEnum
CREATE TYPE "ETFCRYPTO1Tf" AS ENUM ('h', 'D');

-- AlterTable
ALTER TABLE "ETF_CRYPTO_1" DROP COLUMN "tf",
ADD COLUMN     "tf" "ETFCRYPTO1Tf" NOT NULL DEFAULT 'h';

-- DropEnum
DROP TYPE "ETF_CRYPTO_1_Tf";

-- CreateIndex
CREATE UNIQUE INDEX "ETF_CRYPTO_1_bot_code_tf_key" ON "ETF_CRYPTO_1"("bot", "code", "tf");
