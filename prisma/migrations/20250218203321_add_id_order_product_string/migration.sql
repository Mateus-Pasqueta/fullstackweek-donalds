/*
  Warnings:

  - The primary key for the `OrderProduct` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- AlterTable
ALTER TABLE "OrderProduct" DROP CONSTRAINT "OrderProduct_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "OrderProduct_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "OrderProduct_id_seq";
