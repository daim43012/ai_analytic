-- CreateTable
CREATE TABLE "StatSetf" (
    "id" SERIAL NOT NULL,
    "daysCount" INTEGER NOT NULL,
    "ideasCount" INTEGER NOT NULL,
    "ideasUpdate" TIMESTAMP(3) NOT NULL,
    "profitIdeasPercent" DOUBLE PRECISION NOT NULL,
    "profitabilityIdea" DOUBLE PRECISION NOT NULL,
    "profitPercent" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "StatSetf_pkey" PRIMARY KEY ("id")
);
