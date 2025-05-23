-- CreateTable
CREATE TABLE "ETF_CRYPTO_1" (
    "id" SERIAL NOT NULL,
    "portfolioLoad" DOUBLE PRECISION NOT NULL,
    "profitPerWeek" DOUBLE PRECISION NOT NULL,
    "profitPerMonth" DOUBLE PRECISION NOT NULL,
    "days" DOUBLE PRECISION NOT NULL,
    "totalProfit" DOUBLE PRECISION NOT NULL,
    "maxDropdown" DOUBLE PRECISION NOT NULL,
    "annualProfit" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "ETF_CRYPTO_1_pkey" PRIMARY KEY ("id")
);
