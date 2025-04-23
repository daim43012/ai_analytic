-- CreateTable
CREATE TABLE "UserWallets" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL DEFAULT 'test@gmail.com',
    "address" TEXT NOT NULL,

    CONSTRAINT "UserWallets_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "UserWallets_address_key" ON "UserWallets"("address");
