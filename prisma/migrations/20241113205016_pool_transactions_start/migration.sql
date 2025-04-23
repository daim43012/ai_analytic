-- CreateTable
CREATE TABLE "PoolTransactionsStart" (
    "id" SERIAL NOT NULL,
    "bot" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "tf" "StatSetfTf" NOT NULL DEFAULT 'h',
    "email" TEXT NOT NULL,
    "etfType" DOUBLE PRECISION NOT NULL,
    "maticRate" DOUBLE PRECISION NOT NULL,
    "usdtRateToMatic" DOUBLE PRECISION NOT NULL,
    "priceFtmc" DOUBLE PRECISION NOT NULL,
    "date" DOUBLE PRECISION NOT NULL,
    "time" DOUBLE PRECISION NOT NULL,
    "userStatus" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "PoolTransactionsStart_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "PoolTransactionsStart_bot_code_tf_key" ON "PoolTransactionsStart"("bot", "code", "tf");
