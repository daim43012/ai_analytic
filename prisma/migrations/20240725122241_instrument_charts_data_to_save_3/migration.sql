/*
  Warnings:

  - A unique constraint covering the columns `[bot,code,tf]` on the table `InstrumentChartsDataToSave` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "InstrumentChartsDataToSave_code_tf_key";

-- CreateIndex
CREATE UNIQUE INDEX "InstrumentChartsDataToSave_bot_code_tf_key" ON "InstrumentChartsDataToSave"("bot", "code", "tf");
