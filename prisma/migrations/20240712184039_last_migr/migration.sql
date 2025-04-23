/*
  Warnings:

  - You are about to drop the `etfCrypto1` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "etfCrypto1";

-- CreateTable
CREATE TABLE "etfCrypto12" (
    "id" SERIAL NOT NULL,
    "bot" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "tf" "ETFCRYPTO1Tf" NOT NULL DEFAULT 'h',
    "days" DOUBLE PRECISION NOT NULL,
    "totalProfit" DOUBLE PRECISION NOT NULL,
    "profitMax" DOUBLE PRECISION NOT NULL,
    "maxDropdown" DOUBLE PRECISION NOT NULL,
    "price1" DOUBLE PRECISION NOT NULL,
    "price2" DOUBLE PRECISION NOT NULL,
    "price3" DOUBLE PRECISION NOT NULL,
    "price4" DOUBLE PRECISION NOT NULL,
    "price5" DOUBLE PRECISION NOT NULL,
    "price6" DOUBLE PRECISION NOT NULL,
    "price7" DOUBLE PRECISION NOT NULL,
    "price8" DOUBLE PRECISION NOT NULL,
    "price9" DOUBLE PRECISION NOT NULL,
    "price10" DOUBLE PRECISION NOT NULL,
    "entryPrice1" DOUBLE PRECISION NOT NULL,
    "entryPrice2" DOUBLE PRECISION NOT NULL,
    "entryPrice3" DOUBLE PRECISION NOT NULL,
    "entryPrice4" DOUBLE PRECISION NOT NULL,
    "entryPrice5" DOUBLE PRECISION NOT NULL,
    "entryPrice6" DOUBLE PRECISION NOT NULL,
    "entryPrice7" DOUBLE PRECISION NOT NULL,
    "entryPrice8" DOUBLE PRECISION NOT NULL,
    "entryPrice9" DOUBLE PRECISION NOT NULL,
    "entryPrice10" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "etfCrypto12_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "etfCrypto12_bot_code_tf_key" ON "etfCrypto12"("bot", "code", "tf");
