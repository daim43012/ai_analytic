/*
  Warnings:

  - You are about to drop the `sergeyApi_1` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "sergeyApi_1";

-- CreateTable
CREATE TABLE "sergeyApi_1_1" (
    "id" SERIAL NOT NULL,
    "bot" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "tf" "ETFCRYPTO1Tf" NOT NULL DEFAULT 'h',
    "days" DOUBLE PRECISION NOT NULL,
    "totalProfit" DOUBLE PRECISION NOT NULL,
    "priceOpenPos_1" DOUBLE PRECISION NOT NULL,
    "priceOpenPos_2" DOUBLE PRECISION NOT NULL,
    "priceOpenPos_3" DOUBLE PRECISION NOT NULL,
    "priceOpenPos_4" DOUBLE PRECISION NOT NULL,
    "priceOpenPos_5" DOUBLE PRECISION NOT NULL,
    "priceOpenPos_6" DOUBLE PRECISION NOT NULL,
    "priceOpenPos_7" DOUBLE PRECISION NOT NULL,
    "priceOpenPos_8" DOUBLE PRECISION NOT NULL,
    "priceOpenPos_9" DOUBLE PRECISION NOT NULL,
    "priceOpenPos_10" DOUBLE PRECISION NOT NULL,
    "profitLop_1" DOUBLE PRECISION NOT NULL,
    "profitLop_2" DOUBLE PRECISION NOT NULL,
    "profitLop_3" DOUBLE PRECISION NOT NULL,
    "profitLop_4" DOUBLE PRECISION NOT NULL,
    "profitLop_5" DOUBLE PRECISION NOT NULL,
    "profitLop_6" DOUBLE PRECISION NOT NULL,
    "profitLop_7" DOUBLE PRECISION NOT NULL,
    "profitLop_8" DOUBLE PRECISION NOT NULL,
    "profitLop_9" DOUBLE PRECISION NOT NULL,
    "profitLop_10" DOUBLE PRECISION NOT NULL,
    "Fchange_1" DOUBLE PRECISION NOT NULL,
    "Fchange_2" DOUBLE PRECISION NOT NULL,
    "Fchange_3" DOUBLE PRECISION NOT NULL,
    "Fchange_4" DOUBLE PRECISION NOT NULL,
    "Fchange_5" DOUBLE PRECISION NOT NULL,
    "Fchange_6" DOUBLE PRECISION NOT NULL,
    "Fchange_7" DOUBLE PRECISION NOT NULL,
    "Fchange_8" DOUBLE PRECISION NOT NULL,
    "Fchange_9" DOUBLE PRECISION NOT NULL,
    "Fchange_10" DOUBLE PRECISION NOT NULL,
    "FW_change_1" DOUBLE PRECISION NOT NULL,
    "FW_change_2" DOUBLE PRECISION NOT NULL,
    "FW_change_3" DOUBLE PRECISION NOT NULL,
    "FW_change_4" DOUBLE PRECISION NOT NULL,
    "FW_change_5" DOUBLE PRECISION NOT NULL,
    "FW_change_6" DOUBLE PRECISION NOT NULL,
    "FW_change_7" DOUBLE PRECISION NOT NULL,
    "FW_change_8" DOUBLE PRECISION NOT NULL,
    "FW_change_9" DOUBLE PRECISION NOT NULL,
    "FW_change_10" DOUBLE PRECISION NOT NULL,
    "FM_change_1" DOUBLE PRECISION NOT NULL,
    "FM_change_2" DOUBLE PRECISION NOT NULL,
    "FM_change_3" DOUBLE PRECISION NOT NULL,
    "FM_change_4" DOUBLE PRECISION NOT NULL,
    "FM_change_5" DOUBLE PRECISION NOT NULL,
    "FM_change_6" DOUBLE PRECISION NOT NULL,
    "FM_change_7" DOUBLE PRECISION NOT NULL,
    "FM_change_8" DOUBLE PRECISION NOT NULL,
    "FM_change_9" DOUBLE PRECISION NOT NULL,
    "FM_change_10" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "sergeyApi_1_1_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "sergeyApi_1_1_bot_code_tf_key" ON "sergeyApi_1_1"("bot", "code", "tf");
