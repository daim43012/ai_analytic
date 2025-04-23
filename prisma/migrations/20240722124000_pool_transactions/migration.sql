-- CreateTable
CREATE TABLE "PoolTransactions" (
    "id" SERIAL NOT NULL,
    "bot" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "tf" "StatSetfTf" NOT NULL DEFAULT 'h',
    "email" DOUBLE PRECISION NOT NULL,
    "etfType" DOUBLE PRECISION NOT NULL,
    "maticRate" DOUBLE PRECISION NOT NULL,
    "usdtRateToMatic" DOUBLE PRECISION NOT NULL,
    "priceFtmc" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "PoolTransactions_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "PoolTransactions_bot_code_tf_key" ON "PoolTransactions"("bot", "code", "tf");
