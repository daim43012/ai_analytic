/*
  Warnings:

  - A unique constraint covering the columns `[bot,code,tf]` on the table `ETF_CRYPTO_1` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "ETF_CRYPTO_1_bot_code_tf_key" ON "ETF_CRYPTO_1"("bot", "code", "tf");
