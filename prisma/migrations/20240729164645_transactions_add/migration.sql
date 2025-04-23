/*
  Warnings:

  - You are about to drop the `FtmTerminalApiv1` table. If the table is not empty, all the data it contains will be lost.

*/
-- AlterTable
ALTER TABLE "Transactions" ADD COLUMN     "commission" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "commissionValue" DOUBLE PRECISION NOT NULL DEFAULT 0;

-- DropTable
DROP TABLE "FtmTerminalApiv1";

-- CreateTable
CREATE TABLE "FtmTerminalApi" (
    "id" SERIAL NOT NULL,
    "bot" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "tf" "ETFCRYPTO1Tf" NOT NULL DEFAULT 'h',
    "timeLong" DOUBLE PRECISION NOT NULL,
    "timeShort" DOUBLE PRECISION NOT NULL,
    "dateLong" DOUBLE PRECISION NOT NULL,
    "dateShort" DOUBLE PRECISION NOT NULL,
    "sizePosition" DOUBLE PRECISION NOT NULL,
    "direction" DOUBLE PRECISION NOT NULL,
    "enterPrice" DOUBLE PRECISION NOT NULL,
    "stopPrice" DOUBLE PRECISION NOT NULL,
    "pnlPosition" DOUBLE PRECISION NOT NULL,
    "riskPosition" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "FtmTerminalApi_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "FtmTerminalApi_bot_code_tf_key" ON "FtmTerminalApi"("bot", "code", "tf");
