-- CreateTable
CREATE TABLE "Candels" (
    "id" SERIAL NOT NULL,
    "bot" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "tf" "ETFCRYPTO1Tf" NOT NULL DEFAULT 'h',
    "Date" DOUBLE PRECISION NOT NULL,
    "currentTime" DOUBLE PRECISION NOT NULL,
    "currentClose" DOUBLE PRECISION NOT NULL,
    "Time" DOUBLE PRECISION NOT NULL,
    "Open" DOUBLE PRECISION NOT NULL,
    "Close" DOUBLE PRECISION NOT NULL,
    "Max" DOUBLE PRECISION NOT NULL,
    "Min" DOUBLE PRECISION NOT NULL,
    "Volumme" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "Candels_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Candels_bot_code_tf_key" ON "Candels"("bot", "code", "tf");
