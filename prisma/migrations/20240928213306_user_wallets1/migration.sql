/*
  Warnings:

  - You are about to drop the `PoolFormattedTransactionSave` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "PoolFormattedTransactionSave";

-- CreateTable
CREATE TABLE "UserWallets1" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL DEFAULT 'test@gmail.com',
    "address" TEXT NOT NULL,

    CONSTRAINT "UserWallets1_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "UserWallets1_address_key" ON "UserWallets1"("address");
