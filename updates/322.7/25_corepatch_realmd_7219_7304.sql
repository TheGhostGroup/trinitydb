-- 7279_realmd_account.sql
ALTER TABLE `account` CHANGE COLUMN `expansion` `expansion` tinyint(3) unsigned NOT NULL DEFAULT '2';
