-- 8861_auth_realmlist.sql
ALTER TABLE `realmlist` CHANGE COLUMN `gamebuild` `gamebuild` int(11) unsigned NOT NULL DEFAULT '12340';
UPDATE `realmlist` SET `gamebuild`=12340;
