/*
  Warnings:

  - Changed the type of `bot` on the `textsETF1` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `code` on the `textsETF1` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "textsETF1" DROP COLUMN "bot",
ADD COLUMN     "bot" TEXT NOT NULL,
DROP COLUMN "code",
ADD COLUMN     "code" TEXT NOT NULL;
