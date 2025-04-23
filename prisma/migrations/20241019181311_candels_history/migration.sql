-- CreateTable
CREATE TABLE "CandelsHistory" (
    "id" SERIAL NOT NULL,
    "bot" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "tf" TEXT NOT NULL DEFAULT 'h',
    "Date" DOUBLE PRECISION NOT NULL,
    "currentTime" DOUBLE PRECISION NOT NULL,
    "currentClose" DOUBLE PRECISION NOT NULL,
    "Time" DOUBLE PRECISION NOT NULL,
    "Open" DOUBLE PRECISION NOT NULL,
    "Close" DOUBLE PRECISION NOT NULL,
    "Max" DOUBLE PRECISION NOT NULL,
    "Min" DOUBLE PRECISION NOT NULL,
    "Volume" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "CandelsHistory_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "CandelsHistory_bot_code_tf_key" ON "CandelsHistory"("bot", "code", "tf");
