-- CreateTable
CREATE TABLE "StatusAndTokens" (
    "id" SERIAL NOT NULL,
    "bot" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "tf" "ETFCRYPTO1Tf" NOT NULL DEFAULT 'h',
    "email" DOUBLE PRECISION NOT NULL,
    "status" DOUBLE PRECISION NOT NULL,
    "rateFTMC" DOUBLE PRECISION NOT NULL,
    "amountInUSDT" DOUBLE PRECISION NOT NULL,
    "date" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "StatusAndTokens_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "StatusAndTokens_bot_code_tf_key" ON "StatusAndTokens"("bot", "code", "tf");
