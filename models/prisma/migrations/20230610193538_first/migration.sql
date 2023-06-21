/*
  Warnings:

  - You are about to drop the column `Prix` on the `carditem` table. All the data in the column will be lost.
  - Added the required column `montant_total` to the `commande` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `carditem` DROP COLUMN `Prix`;

-- AlterTable
ALTER TABLE `commande` ADD COLUMN `montant_total` DOUBLE NOT NULL;
