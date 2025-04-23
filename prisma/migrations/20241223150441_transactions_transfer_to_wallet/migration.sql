-- CreateTable
CREATE TABLE "TransactionsTransferToWallet" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL DEFAULT 'test@gmail.com',
    "USDF" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "tokens" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "isSended" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "date" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "TransactionsTransferToWallet_pkey" PRIMARY KEY ("id")
);
