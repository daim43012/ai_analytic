/*
  Warnings:

  - You are about to drop the column `ADA` on the `ETF1portfolio` table. All the data in the column will be lost.
  - You are about to drop the column `AVAX` on the `ETF1portfolio` table. All the data in the column will be lost.
  - You are about to drop the column `BCH` on the `ETF1portfolio` table. All the data in the column will be lost.
  - You are about to drop the column `BTC` on the `ETF1portfolio` table. All the data in the column will be lost.
  - You are about to drop the column `DOT` on the `ETF1portfolio` table. All the data in the column will be lost.
  - You are about to drop the column `ETH` on the `ETF1portfolio` table. All the data in the column will be lost.
  - You are about to drop the column `LINK` on the `ETF1portfolio` table. All the data in the column will be lost.
  - You are about to drop the column `MATIC` on the `ETF1portfolio` table. All the data in the column will be lost.
  - You are about to drop the column `SOL` on the `ETF1portfolio` table. All the data in the column will be lost.
  - You are about to drop the column `UNI` on the `ETF1portfolio` table. All the data in the column will be lost.
  - Added the required column `inst_1` to the `ETF1portfolio` table without a default value. This is not possible if the table is not empty.
  - Added the required column `inst_10` to the `ETF1portfolio` table without a default value. This is not possible if the table is not empty.
  - Added the required column `inst_2` to the `ETF1portfolio` table without a default value. This is not possible if the table is not empty.
  - Added the required column `inst_3` to the `ETF1portfolio` table without a default value. This is not possible if the table is not empty.
  - Added the required column `inst_4` to the `ETF1portfolio` table without a default value. This is not possible if the table is not empty.
  - Added the required column `inst_5` to the `ETF1portfolio` table without a default value. This is not possible if the table is not empty.
  - Added the required column `inst_6` to the `ETF1portfolio` table without a default value. This is not possible if the table is not empty.
  - Added the required column `inst_7` to the `ETF1portfolio` table without a default value. This is not possible if the table is not empty.
  - Added the required column `inst_8` to the `ETF1portfolio` table without a default value. This is not possible if the table is not empty.
  - Added the required column `inst_9` to the `ETF1portfolio` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "ETF1portfolio" DROP COLUMN "ADA",
DROP COLUMN "AVAX",
DROP COLUMN "BCH",
DROP COLUMN "BTC",
DROP COLUMN "DOT",
DROP COLUMN "ETH",
DROP COLUMN "LINK",
DROP COLUMN "MATIC",
DROP COLUMN "SOL",
DROP COLUMN "UNI",
ADD COLUMN     "inst_1" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "inst_10" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "inst_2" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "inst_3" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "inst_4" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "inst_5" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "inst_6" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "inst_7" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "inst_8" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "inst_9" DOUBLE PRECISION NOT NULL;
