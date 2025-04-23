/*
  Warnings:

  - Changed the type of `tf` on the `etfCrypto1` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "etfCrypto1" DROP COLUMN "tf",
ADD COLUMN     "tf" DOUBLE PRECISION NOT NULL;

-- DropEnum
DROP TYPE "ETFCRYPTO1Tf";

-- CreateIndex
CREATE UNIQUE INDEX "etfCrypto1_bot_code_tf_key" ON "etfCrypto1"("bot", "code", "tf");
