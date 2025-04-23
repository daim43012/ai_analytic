-- CreateTable
CREATE TABLE "ETF2MonthPriceChange" (
    "id" SERIAL NOT NULL,
    "bot" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "tf" "ETFCRYPTO1Tf" NOT NULL DEFAULT 'h',
    "oneMonth_1" DOUBLE PRECISION NOT NULL,
    "oneMonth_2" DOUBLE PRECISION NOT NULL,
    "oneMonth_3" DOUBLE PRECISION NOT NULL,
    "oneMonth_4" DOUBLE PRECISION NOT NULL,
    "oneMonth_5" DOUBLE PRECISION NOT NULL,
    "oneMonth_6" DOUBLE PRECISION NOT NULL,
    "oneMonth_7" DOUBLE PRECISION NOT NULL,
    "oneMonth_8" DOUBLE PRECISION NOT NULL,
    "oneMonth_9" DOUBLE PRECISION NOT NULL,
    "oneMonth_10" DOUBLE PRECISION NOT NULL,
    "threeMonth_1" DOUBLE PRECISION NOT NULL,
    "threeMonth_2" DOUBLE PRECISION NOT NULL,
    "threeMonth_3" DOUBLE PRECISION NOT NULL,
    "threeMonth_4" DOUBLE PRECISION NOT NULL,
    "threeMonth_5" DOUBLE PRECISION NOT NULL,
    "threeMonth_6" DOUBLE PRECISION NOT NULL,
    "threeMonth_7" DOUBLE PRECISION NOT NULL,
    "threeMonth_8" DOUBLE PRECISION NOT NULL,
    "threeMonth_9" DOUBLE PRECISION NOT NULL,
    "threeMonth_10" DOUBLE PRECISION NOT NULL,
    "minSpread" DOUBLE PRECISION NOT NULL,
    "maxSpread" DOUBLE PRECISION NOT NULL,
    "fastMomentum" DOUBLE PRECISION NOT NULL,
    "slowMomentum" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "ETF2MonthPriceChange_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ETF3MonthPriceChange" (
    "id" SERIAL NOT NULL,
    "bot" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "tf" "ETFCRYPTO1Tf" NOT NULL DEFAULT 'h',
    "oneMonth_1" DOUBLE PRECISION NOT NULL,
    "oneMonth_2" DOUBLE PRECISION NOT NULL,
    "oneMonth_3" DOUBLE PRECISION NOT NULL,
    "oneMonth_4" DOUBLE PRECISION NOT NULL,
    "oneMonth_5" DOUBLE PRECISION NOT NULL,
    "oneMonth_6" DOUBLE PRECISION NOT NULL,
    "oneMonth_7" DOUBLE PRECISION NOT NULL,
    "oneMonth_8" DOUBLE PRECISION NOT NULL,
    "oneMonth_9" DOUBLE PRECISION NOT NULL,
    "oneMonth_10" DOUBLE PRECISION NOT NULL,
    "threeMonth_1" DOUBLE PRECISION NOT NULL,
    "threeMonth_2" DOUBLE PRECISION NOT NULL,
    "threeMonth_3" DOUBLE PRECISION NOT NULL,
    "threeMonth_4" DOUBLE PRECISION NOT NULL,
    "threeMonth_5" DOUBLE PRECISION NOT NULL,
    "threeMonth_6" DOUBLE PRECISION NOT NULL,
    "threeMonth_7" DOUBLE PRECISION NOT NULL,
    "threeMonth_8" DOUBLE PRECISION NOT NULL,
    "threeMonth_9" DOUBLE PRECISION NOT NULL,
    "threeMonth_10" DOUBLE PRECISION NOT NULL,
    "minSpread" DOUBLE PRECISION NOT NULL,
    "maxSpread" DOUBLE PRECISION NOT NULL,
    "fastMomentum" DOUBLE PRECISION NOT NULL,
    "slowMomentum" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "ETF3MonthPriceChange_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "ETF2MonthPriceChange_bot_code_tf_key" ON "ETF2MonthPriceChange"("bot", "code", "tf");

-- CreateIndex
CREATE UNIQUE INDEX "ETF3MonthPriceChange_bot_code_tf_key" ON "ETF3MonthPriceChange"("bot", "code", "tf");
