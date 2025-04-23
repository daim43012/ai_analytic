/*
  Warnings:

  - You are about to drop the `RoboAdvisorAnalytics` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `RoboAdvisorMonthEquety` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "RoboAdvisorAnalytics";

-- DropTable
DROP TABLE "RoboAdvisorMonthEquety";

-- CreateTable
CREATE TABLE "RoboAdvisorEquetyWeekData" (
    "id" SERIAL NOT NULL,
    "bot" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "tf" "ETFCRYPTO1Tf" NOT NULL DEFAULT 'h',
    "week_1" DOUBLE PRECISION NOT NULL,
    "week_2" DOUBLE PRECISION NOT NULL,
    "week_3" DOUBLE PRECISION NOT NULL,
    "week_4" DOUBLE PRECISION NOT NULL,
    "week_5" DOUBLE PRECISION NOT NULL,
    "week_6" DOUBLE PRECISION NOT NULL,
    "week_7" DOUBLE PRECISION NOT NULL,
    "week_8" DOUBLE PRECISION NOT NULL,
    "week_9" DOUBLE PRECISION NOT NULL,
    "week_10" DOUBLE PRECISION NOT NULL,
    "week_11" DOUBLE PRECISION NOT NULL,
    "week_12" DOUBLE PRECISION NOT NULL,
    "week_13" DOUBLE PRECISION NOT NULL,
    "week_14" DOUBLE PRECISION NOT NULL,
    "week_15" DOUBLE PRECISION NOT NULL,
    "week_16" DOUBLE PRECISION NOT NULL,
    "week_17" DOUBLE PRECISION NOT NULL,
    "week_18" DOUBLE PRECISION NOT NULL,
    "week_19" DOUBLE PRECISION NOT NULL,
    "week_20" DOUBLE PRECISION NOT NULL,
    "week_21" DOUBLE PRECISION NOT NULL,
    "week_22" DOUBLE PRECISION NOT NULL,
    "week_23" DOUBLE PRECISION NOT NULL,
    "week_24" DOUBLE PRECISION NOT NULL,
    "week_25" DOUBLE PRECISION NOT NULL,
    "week_26" DOUBLE PRECISION NOT NULL,
    "week_27" DOUBLE PRECISION NOT NULL,
    "week_28" DOUBLE PRECISION NOT NULL,
    "week_29" DOUBLE PRECISION NOT NULL,
    "week_30" DOUBLE PRECISION NOT NULL,
    "week_31" DOUBLE PRECISION NOT NULL,
    "week_32" DOUBLE PRECISION NOT NULL,
    "week_33" DOUBLE PRECISION NOT NULL,
    "week_34" DOUBLE PRECISION NOT NULL,
    "week_35" DOUBLE PRECISION NOT NULL,
    "week_36" DOUBLE PRECISION NOT NULL,
    "week_37" DOUBLE PRECISION NOT NULL,
    "week_38" DOUBLE PRECISION NOT NULL,
    "week_39" DOUBLE PRECISION NOT NULL,
    "week_40" DOUBLE PRECISION NOT NULL,
    "week_41" DOUBLE PRECISION NOT NULL,
    "week_42" DOUBLE PRECISION NOT NULL,
    "week_43" DOUBLE PRECISION NOT NULL,
    "week_44" DOUBLE PRECISION NOT NULL,
    "week_45" DOUBLE PRECISION NOT NULL,
    "week_46" DOUBLE PRECISION NOT NULL,
    "week_47" DOUBLE PRECISION NOT NULL,
    "week_48" DOUBLE PRECISION NOT NULL,
    "week_49" DOUBLE PRECISION NOT NULL,
    "week_50" DOUBLE PRECISION NOT NULL,
    "week_51" DOUBLE PRECISION NOT NULL,
    "week_52" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "RoboAdvisorEquetyWeekData_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "RoboAdvisorEquetyWeekData_bot_code_tf_key" ON "RoboAdvisorEquetyWeekData"("bot", "code", "tf");
