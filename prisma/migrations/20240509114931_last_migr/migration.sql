/*
  Warnings:

  - You are about to drop the `EtfCrypto1` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "EtfCrypto1";

-- CreateTable
CREATE TABLE "ETFCrypto1" (
    "id" SERIAL NOT NULL,
    "bot" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "tf" "ETFCRYPTO1Tf" NOT NULL DEFAULT 'h',
    "startdate" DOUBLE PRECISION NOT NULL,
    "ratecom" DOUBLE PRECISION NOT NULL,
    "portfolioLoad" DOUBLE PRECISION NOT NULL,
    "days" DOUBLE PRECISION NOT NULL,
    "totalProfit" DOUBLE PRECISION NOT NULL,
    "profitMax" DOUBLE PRECISION NOT NULL,
    "maxDropdown" DOUBLE PRECISION NOT NULL,
    "annualProfit" DOUBLE PRECISION NOT NULL,
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

    CONSTRAINT "ETFCrypto1_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "ETFCrypto1_bot_code_tf_key" ON "ETFCrypto1"("bot", "code", "tf");
