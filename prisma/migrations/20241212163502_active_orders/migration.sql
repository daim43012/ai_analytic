-- CreateTable
CREATE TABLE "ActiveOrders" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL DEFAULT 'test@gmail.com',
    "typeOfETF" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "bidPrice" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "askPrice" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "amountOfETF" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "status" TEXT NOT NULL DEFAULT '',

    CONSTRAINT "ActiveOrders_pkey" PRIMARY KEY ("id")
);
