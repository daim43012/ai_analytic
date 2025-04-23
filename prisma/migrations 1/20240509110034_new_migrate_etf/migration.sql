/*
  Warnings:

  - You are about to drop the column `profitPerMonth` on the `EtfCrypto1` table. All the data in the column will be lost.
  - You are about to drop the column `profitPerWeek` on the `EtfCrypto1` table. All the data in the column will be lost.
  - Added the required column `price1` to the `EtfCrypto1` table without a default value. This is not possible if the table is not empty.
  - Added the required column `price10` to the `EtfCrypto1` table without a default value. This is not possible if the table is not empty.
  - Added the required column `price2` to the `EtfCrypto1` table without a default value. This is not possible if the table is not empty.
  - Added the required column `price3` to the `EtfCrypto1` table without a default value. This is not possible if the table is not empty.
  - Added the required column `price4` to the `EtfCrypto1` table without a default value. This is not possible if the table is not empty.
  - Added the required column `price5` to the `EtfCrypto1` table without a default value. This is not possible if the table is not empty.
  - Added the required column `price6` to the `EtfCrypto1` table without a default value. This is not possible if the table is not empty.
  - Added the required column `price7` to the `EtfCrypto1` table without a default value. This is not possible if the table is not empty.
  - Added the required column `price8` to the `EtfCrypto1` table without a default value. This is not possible if the table is not empty.
  - Added the required column `price9` to the `EtfCrypto1` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ratecom` to the `EtfCrypto1` table without a default value. This is not possible if the table is not empty.
  - Added the required column `startdate` to the `EtfCrypto1` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "EtfCrypto1" DROP COLUMN "profitPerMonth",
DROP COLUMN "profitPerWeek",
ADD COLUMN     "price1" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "price10" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "price2" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "price3" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "price4" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "price5" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "price6" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "price7" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "price8" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "price9" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "ratecom" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "startdate" DOUBLE PRECISION NOT NULL;
