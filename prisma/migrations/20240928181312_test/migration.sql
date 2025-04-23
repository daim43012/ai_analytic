-- DropIndex
DROP INDEX "VirtualWallet_email_key";

-- AlterTable
ALTER TABLE "VirtualWallet" ALTER COLUMN "email" SET DEFAULT 'test@test.com';
