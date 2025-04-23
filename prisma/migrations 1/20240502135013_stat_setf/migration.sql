/*
  Warnings:

  - A unique constraint covering the columns `[bot,code,tf]` on the table `StatSetf` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "StatSetf_bot_code_tf_key" ON "StatSetf"("bot", "code", "tf");
