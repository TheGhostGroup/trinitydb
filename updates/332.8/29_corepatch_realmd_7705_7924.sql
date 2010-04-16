-- 7849_realmd_realmlist.sql
UPDATE `realmlist` SET `gamebuild`=11723 WHERE `id`=1;

-- 7857_realmd_realmlist.sql
ALTER TABLE `realmlist` CHANGE COLUMN `gamebuild` `gamebuild` int(11) unsigned NOT NULL default '11723';
