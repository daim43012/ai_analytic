-- CreateTable
CREATE TABLE "FtmTerminalApiv1" (
    "id" SERIAL NOT NULL,
    "bot" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "tf" "ETFCRYPTO1Tf" NOT NULL DEFAULT 'h',
    "timeLong" DOUBLE PRECISION NOT NULL,
    "timeShort" DOUBLE PRECISION NOT NULL,
    "dateLong" DOUBLE PRECISION NOT NULL,
    "dateShort" DOUBLE PRECISION NOT NULL,
    "sizePosition" DOUBLE PRECISION NOT NULL,
    "direction" DOUBLE PRECISION NOT NULL,
    "enterPrice" DOUBLE PRECISION NOT NULL,
    "stopPrice" DOUBLE PRECISION NOT NULL,
    "pnlPosition" DOUBLE PRECISION NOT NULL,
    "riskPosition" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "FtmTerminalApiv1_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "FtmTerminalApiv1_bot_code_tf_key" ON "FtmTerminalApiv1"("bot", "code", "tf");
