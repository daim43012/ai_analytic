/*
  Warnings:

  - A unique constraint covering the columns `[address,currency,chain]` on the table `Wallet` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "Wallet_address_currency_chain_key" ON "Wallet"("address", "currency", "chain");
