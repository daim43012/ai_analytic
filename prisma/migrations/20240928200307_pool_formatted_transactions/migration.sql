-- CreateTable
CREATE TABLE "PoolFormattedTransactions" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL DEFAULT 'test@test.com',
    "totalBuyUsdt" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "amountOfETF" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "initialPrice" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "date" TEXT NOT NULL DEFAULT '2024-01-01',

    CONSTRAINT "PoolFormattedTransactions_pkey" PRIMARY KEY ("id")
);
