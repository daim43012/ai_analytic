/*
  Warnings:

  - The `tf` column on the `CurrencyCandelsHistory` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "CurrencyCandelsHistory" DROP COLUMN "tf",
ADD COLUMN     "tf" TEXT NOT NULL DEFAULT 'h';

-- CreateIndex
CREATE UNIQUE INDEX "CurrencyCandelsHistory_bot_code_tf_key" ON "CurrencyCandelsHistory"("bot", "code", "tf");
