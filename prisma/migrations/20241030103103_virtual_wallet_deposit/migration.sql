-- CreateTable
CREATE TABLE "VirtualWalletDeposit" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL DEFAULT 'test@gmail.com',
    "amount" DOUBLE PRECISION NOT NULL DEFAULT 0,

    CONSTRAINT "VirtualWalletDeposit_pkey" PRIMARY KEY ("id")
);
