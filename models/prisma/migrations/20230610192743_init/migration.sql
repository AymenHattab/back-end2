/*
  Warnings:

  - You are about to drop the column `idCard` on the `carditem` table. All the data in the column will be lost.
  - You are about to drop the column `idCard` on the `commande` table. All the data in the column will be lost.
  - You are about to drop the column `nbr_defi` on the `objectif` table. All the data in the column will be lost.
  - You are about to drop the `card` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `com_objective` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `facture` table. If the table is not empty, all the data it contains will be lost.
  - A unique constraint covering the columns `[code_cmd]` on the table `CardItem` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `code_cmd` to the `CardItem` table without a default value. This is not possible if the table is not empty.
  - Added the required column `condition` to the `objectif` table without a default value. This is not possible if the table is not empty.
  - Added the required column `number` to the `objectif` table without a default value. This is not possible if the table is not empty.
  - Added the required column `reward` to the `objectif` table without a default value. This is not possible if the table is not empty.
  - Added the required column `rewardreward` to the `objectif` table without a default value. This is not possible if the table is not empty.
  - Added the required column `search` to the `objectif` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `carditem` DROP FOREIGN KEY `CardItem_idCard_fkey`;

-- DropForeignKey
ALTER TABLE `com_objective` DROP FOREIGN KEY `Com_objective_ComId_fkey`;

-- DropForeignKey
ALTER TABLE `com_objective` DROP FOREIGN KEY `Com_objective_Idobj_fkey`;

-- DropForeignKey
ALTER TABLE `commande` DROP FOREIGN KEY `commande_idCard_fkey`;

-- DropForeignKey
ALTER TABLE `facture` DROP FOREIGN KEY `facture_code_cmd_fkey`;

-- AlterTable
ALTER TABLE `carditem` DROP COLUMN `idCard`,
    ADD COLUMN `code_cmd` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `commande` DROP COLUMN `idCard`;

-- AlterTable
ALTER TABLE `objectif` DROP COLUMN `nbr_defi`,
    ADD COLUMN `condition` VARCHAR(191) NOT NULL,
    ADD COLUMN `number` VARCHAR(191) NOT NULL,
    ADD COLUMN `reward` VARCHAR(191) NOT NULL,
    ADD COLUMN `rewardreward` VARCHAR(191) NOT NULL,
    ADD COLUMN `search` VARCHAR(191) NOT NULL;

-- DropTable
DROP TABLE `card`;

-- DropTable
DROP TABLE `com_objective`;

-- DropTable
DROP TABLE `facture`;

-- CreateIndex
CREATE UNIQUE INDEX `CardItem_code_cmd_key` ON `CardItem`(`code_cmd`);

-- AddForeignKey
ALTER TABLE `CardItem` ADD CONSTRAINT `CardItem_code_cmd_fkey` FOREIGN KEY (`code_cmd`) REFERENCES `commande`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
