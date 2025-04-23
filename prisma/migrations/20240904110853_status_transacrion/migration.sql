/*
  Warnings:

  - You are about to drop the column `status` on the `StatusAndTokens` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "StatusAndTokens" DROP COLUMN "status",
ADD COLUMN     "statusTransacrion" DOUBLE PRECISION NOT NULL DEFAULT 1;
