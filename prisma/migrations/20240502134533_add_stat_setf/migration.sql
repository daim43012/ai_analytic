/*
  Warnings:

  - Added the required column `bot` to the `StatSetf` table without a default value. This is not possible if the table is not empty.
  - Added the required column `code` to the `StatSetf` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "StatSetfTf" AS ENUM ('h', 'D');

-- AlterTable
ALTER TABLE "StatSetf" ADD COLUMN     "bot" TEXT NOT NULL,
ADD COLUMN     "code" TEXT NOT NULL,
ADD COLUMN     "tf" "StatSetfTf" NOT NULL DEFAULT 'h';
