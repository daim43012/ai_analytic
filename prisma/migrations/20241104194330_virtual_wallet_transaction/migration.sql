-- CreateTable
CREATE TABLE "VirtualWalletTransaction" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL DEFAULT 'test@gmail.com',
    "orderId" DOUBLE PRECISION NOT NULL,
    "address" TEXT NOT NULL DEFAULT '',
    "totalBuy" TEXT NOT NULL DEFAULT '',
    "amountOfETF" TEXT NOT NULL DEFAULT '',
    "recievedAmount" TEXT NOT NULL DEFAULT '',
    "investDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "initialPrice" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "CurrencyFromChain" TEXT NOT NULL DEFAULT '',
    "CurrencyFromCode" TEXT NOT NULL DEFAULT '',
    "CurrencyToChain" TEXT NOT NULL DEFAULT '',
    "CurrencyToCode" TEXT NOT NULL DEFAULT '',
    "status" INTEGER NOT NULL DEFAULT 1,
    "PaymentMethod" INTEGER NOT NULL DEFAULT 1,
    "totalFunded" DOUBLE PRECISION NOT NULL DEFAULT 0,

    CONSTRAINT "VirtualWalletTransaction_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "VirtualWalletTransaction_orderId_key" ON "VirtualWalletTransaction"("orderId");
