/*
  Warnings:

  - A unique constraint covering the columns `[email]` on the table `VirtualWallet` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "VirtualWallet" ALTER COLUMN "email" DROP DEFAULT;

-- CreateIndex
CREATE UNIQUE INDEX "VirtualWallet_email_key" ON "VirtualWallet"("email");
