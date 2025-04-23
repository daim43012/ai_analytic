/*
  Warnings:

  - The `tf` column on the `etfCrypto1` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- CreateEnum
CREATE TYPE "ETFCRYPTO1Tf" AS ENUM ('h', 'D');

-- AlterTable
ALTER TABLE "etfCrypto1" DROP COLUMN "tf",
ADD COLUMN     "tf" "ETFCRYPTO1Tf" NOT NULL DEFAULT 'h';

-- CreateIndex
CREATE UNIQUE INDEX "etfCrypto1_bot_code_tf_key" ON "etfCrypto1"("bot", "code", "tf");
