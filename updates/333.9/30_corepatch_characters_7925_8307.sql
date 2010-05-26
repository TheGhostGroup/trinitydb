-- 7974_characters_character_aura.sql
ALTER TABLE `character_aura` DROP PRIMARY KEY,
ADD PRIMARY KEY (`guid`,`caster_guid`,`spell`,`effect_mask`);

-- 8020_characters_item_refund_instance.sql
ALTER TABLE `item_refund_instance`
ADD `count` int(10) UNSIGNED NOT NULL DEFAULT 1 AFTER `item_guid`;

-- 8048_characters_item_refund_instance.sql
ALTER TABLE `item_refund_instance` DROP COLUMN `count`;

-- 8116_characters_groups.sql
ALTER TABLE `groups` CHANGE `isRaid` `groupType` MEDIUMINT(8) UNSIGNED NOT NULL;
UPDATE `groups` SET `groupType`=2 where `groupType`=1;

-- 8136_01_characters_groups.sql
-- Create guid column and make it new pk
ALTER TABLE `groups` ADD `guid` INT(11) NOT NULL FIRST;
SET @a := 0;
UPDATE `groups` SET `guid` = @a := @a+1;
ALTER TABLE `groups` DROP PRIMARY KEY, ADD PRIMARY KEY (`guid`);

-- 8136_02_characters_group_member.sql
-- Create guid column
ALTER TABLE `group_member` ADD `guid` INT(11) NOT NULL FIRST;
-- populate column
UPDATE `group_member` SET `guid`=(SELECT `groups`.`guid` FROM `groups` WHERE `leaderGuid`=`group_member`.`leaderGuid`);
-- Remove index that will be same as pk
ALTER TABLE `group_member` DROP INDEX `Idx_memberGuid` ;
-- NOTE: if this one fails then u have a problem in your DB. Have a member in 2 groups, so fix it yourself and then re-run this one
ALTER TABLE `group_member` DROP `leaderGuid`;

-- 8136_03_characters_group_instance.sql
-- Create guid column
ALTER TABLE `group_instance` ADD `guid` INT(11) NOT NULL FIRST;
-- populate column
UPDATE `group_instance` SET `guid`=(SELECT `groups`.`guid` FROM `groups` WHERE `leaderGuid`=`group_instance`.`leaderGuid`);
-- Update pk
ALTER TABLE `group_instance` DROP PRIMARY KEY, ADD PRIMARY KEY (`guid`, `instance`);
-- Remove unused column leaderguid
ALTER TABLE `group_instance` DROP `leaderGuid`;

-- 8300_characters_character_battleground_random.sql
DROP TABLE IF EXISTS `character_battleground_random`;
CREATE TABLE `character_battleground_random` (
  `guid` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 8300_characters_worldstates.sql
DELETE FROM `worldstates` WHERE `entry` IN (20003);
INSERT INTO `worldstates` (`entry`,`value`, `comment`) VALUES 
(20003, 0, 'NextBGRandomDailyResetTime');
