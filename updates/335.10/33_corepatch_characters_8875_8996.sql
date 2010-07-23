-- 8971_characters_characters.sql
ALTER TABLE `characters`
   ADD COLUMN `deleteInfos_Account` int(11) UNSIGNED default NULL AFTER actionBars,
   ADD COLUMN `deleteInfos_Name` varchar(12) default NULL AFTER deleteInfos_Account,
   ADD COLUMN `deleteDate` bigint(20) default NULL AFTER deleteInfos_Name;

-- 8986_characters_worldstates.sql
DELETE FROM `worldstates` WHERE `entry`=20004;
INSERT INTO `worldstates` (`entry`,`value`,`comment`) VALUES (20004,0, 'cleaning_flags');
