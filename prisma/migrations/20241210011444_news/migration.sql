-- CreateTable
CREATE TABLE "News" (
    "id" SERIAL NOT NULL,
    "text" TEXT NOT NULL,
    "photo" TEXT,
    "date" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "News_pkey" PRIMARY KEY ("id")
);
