-- CreateTable
CREATE TABLE "ExchangeOrders" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL DEFAULT 'test@gmail.com',
    "status" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "price" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "goalPrice" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "initialPrice" TEXT NOT NULL DEFAULT '',
    "date" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "ExchangeOrders_pkey" PRIMARY KEY ("id")
);
