/*
  Warnings:

  - Added the required column `isAchived` to the `Com_objective` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `com_objective` ADD COLUMN `isAchived` BOOLEAN NOT NULL;
