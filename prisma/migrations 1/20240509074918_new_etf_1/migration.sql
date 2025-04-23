-- CreateEnum
CREATE TYPE "ETFCRYPTO1Tf" AS ENUM ('h', 'D');

-- CreateTable
CREATE TABLE "EtfCrypto1" (
    "id" SERIAL NOT NULL,
    "bot" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "tf" "ETFCRYPTO1Tf" NOT NULL DEFAULT 'h',
    "portfolioLoad" DOUBLE PRECISION NOT NULL,
    "profitPerWeek" DOUBLE PRECISION NOT NULL,
    "profitPerMonth" DOUBLE PRECISION NOT NULL,
    "days" DOUBLE PRECISION NOT NULL,
    "totalProfit" DOUBLE PRECISION NOT NULL,
    "maxDropdown" DOUBLE PRECISION NOT NULL,
    "annualProfit" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "EtfCrypto1_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "EtfCrypto1_bot_code_tf_key" ON "EtfCrypto1"("bot", "code", "tf");
