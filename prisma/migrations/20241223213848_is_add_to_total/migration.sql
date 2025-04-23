-- AlterTable
ALTER TABLE "InvestorTransactions" ADD COLUMN     "isAddToTotal" DOUBLE PRECISION NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "Transactions" ADD COLUMN     "isAddToTotal" DOUBLE PRECISION NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "TransactionsTransferToWallet" ADD COLUMN     "isAddToTotal" DOUBLE PRECISION NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "VirtualWalletTransaction" ADD COLUMN     "isAddToTotal" DOUBLE PRECISION NOT NULL DEFAULT 0;

-- CreateTable
CREATE TABLE "UsersTokens" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL DEFAULT 'test@gmail.com',
    "tokens" DOUBLE PRECISION NOT NULL DEFAULT 0,

    CONSTRAINT "UsersTokens_pkey" PRIMARY KEY ("id")
);
