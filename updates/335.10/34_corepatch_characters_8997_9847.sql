-- updated to Rev 9847

-- 9081_characters_characters.sql
ALTER TABLE `characters` CHANGE `dungeon_difficulty` `instance_mode_mask`  tinyint(2) UNSIGNED NOT NULL DEFAULT 0 AFTER `instance_id`;

-- 9090_characters_item_instance.sql
-- Add new fields
ALTER TABLE `item_instance`
 ADD `creatorGuid` int(10) unsigned NOT NULL default '0' AFTER `owner_guid`,
 ADD `giftCreatorGuid` int(10) unsigned NOT NULL default '0' AFTER `creatorGuid`,
 ADD `count` int(10) unsigned NOT NULL default '1' AFTER `giftCreatorGuid`,
 ADD `duration` int(10) unsigned NOT NULL AFTER `count`,
 ADD `charges` text NOT NULL AFTER `duration`,
 ADD `flags` int(10) unsigned NOT NULL default '0' AFTER `charges`,
 ADD `enchantments` text NOT NULL AFTER `flags`,
 ADD `randomPropertyId` int(11) NOT NULL default '0' AFTER `enchantments`,
 ADD `durability` int(10) unsigned NOT NULL default '0' AFTER `randomPropertyId`,
 ADD `playedTime` int(10) unsigned NOT NULL default '0' AFTER `durability`;
-- Temporarily change delimiter to prevent SQL syntax errors
DELIMITER ||
-- Function to convert ints from unsigned to signed
DROP FUNCTION IF EXISTS `uint32toint32`||
CREATE FUNCTION `uint32toint32`(input INT(10) UNSIGNED) RETURNS INT(11) SIGNED DETERMINISTIC
BEGIN
  RETURN input;
END||
-- Restore original delimiter
DELIMITER ;
-- Move data to new fields
UPDATE `item_instance` SET
`creatorGuid` = SUBSTRING(`data`,
length(SUBSTRING_INDEX(`data`,' ',10))+2,
length(SUBSTRING_INDEX(`data`,' ',10+1))-length(SUBSTRING_INDEX(data,' ',10))-1),
`giftCreatorGuid` = SUBSTRING(`data`,
length(SUBSTRING_INDEX(`data`,' ',12))+2,
length(SUBSTRING_INDEX(`data`,' ',12+1))-length(SUBSTRING_INDEX(data,' ',12))-1),
`count` = SUBSTRING(`data`,
length(SUBSTRING_INDEX(`data`,' ',14))+2,
length(SUBSTRING_INDEX(`data`,' ',14+1))-length(SUBSTRING_INDEX(data,' ',14))-1),
`duration` = SUBSTRING(`data`,
length(SUBSTRING_INDEX(`data`,' ',15))+2,
length(SUBSTRING_INDEX(`data`,' ',15+1))-length(SUBSTRING_INDEX(data,' ',15))-1),
`charges` = CONCAT_WS(' ',
uint32toint32(SUBSTRING(`data`,
length(SUBSTRING_INDEX(`data`,' ',16))+2,
length(SUBSTRING_INDEX(`data`,' ',16+1))-length(SUBSTRING_INDEX(data,' ',16))-1)),
uint32toint32(SUBSTRING(`data`,
length(SUBSTRING_INDEX(`data`,' ',17))+2,
length(SUBSTRING_INDEX(`data`,' ',17+1))-length(SUBSTRING_INDEX(data,' ',17))-1)),
uint32toint32(SUBSTRING(`data`,
length(SUBSTRING_INDEX(`data`,' ',18))+2,
length(SUBSTRING_INDEX(`data`,' ',18+1))-length(SUBSTRING_INDEX(data,' ',18))-1)),
uint32toint32(SUBSTRING(`data`,
length(SUBSTRING_INDEX(`data`,' ',19))+2,
length(SUBSTRING_INDEX(`data`,' ',19+1))-length(SUBSTRING_INDEX(data,' ',19))-1)),
uint32toint32(SUBSTRING(`data`,
length(SUBSTRING_INDEX(`data`,' ',20))+2,
length(SUBSTRING_INDEX(`data`,' ',20+1))-length(SUBSTRING_INDEX(data,' ',20))-1))),
`flags` = SUBSTRING(`data`,
length(SUBSTRING_INDEX(`data`,' ',21))+2,
length(SUBSTRING_INDEX(`data`,' ',21+1))-length(SUBSTRING_INDEX(data,' ',21))-1),
`enchantments` = SUBSTRING(`data`,
length(SUBSTRING_INDEX(`data`,' ',22))+2,
length(SUBSTRING_INDEX(`data`,' ',57+1))-length(SUBSTRING_INDEX(data,' ',22))-1),
`randomPropertyId` = uint32toint32(SUBSTRING(`data`,
length(SUBSTRING_INDEX(`data`,' ',59))+2,
length(SUBSTRING_INDEX(`data`,' ',59+1))-length(SUBSTRING_INDEX(data,' ',59))-1)),
`durability` = SUBSTRING(`data`,
length(SUBSTRING_INDEX(`data`,' ',60))+2,
length(SUBSTRING_INDEX(`data`,' ',60+1))-length(SUBSTRING_INDEX(data,' ',60))-1),
`playedTime` = SUBSTRING(`data`,
length(SUBSTRING_INDEX(`data`,' ',62))+2,
length(SUBSTRING_INDEX(`data`,' ',62+1))-length(SUBSTRING_INDEX(data,' ',62))-1);
-- Drop function
DROP FUNCTION IF EXISTS `uint32toint32`;
-- Fix heroic item flag
UPDATE `item_instance` SET `flags`=`flags`&~0x8 WHERE
SUBSTRING(`data`,
length(SUBSTRING_INDEX(`data`,' ',3))+2,
length(SUBSTRING_INDEX(`data`,' ',3+1))-length(SUBSTRING_INDEX(data,' ',3))-1)
NOT IN (5043,5044,17302,17305,17308,21831);
-- Drop old field
ALTER TABLE `item_instance` DROP `data`;

-- 9092_characters_corpse.sql
ALTER TABLE `corpse`
 ADD COLUMN `displayId` int(10) unsigned NOT NULL default '0' AFTER `phaseMask`,
 ADD COLUMN `itemCache` text NOT NULL AFTER `displayId`,
 ADD COLUMN `bytes1` int(10) unsigned NOT NULL default '0' AFTER `itemCache`,
 ADD COLUMN `bytes2` int(10) unsigned NOT NULL default '0' AFTER `bytes1`,
 ADD COLUMN `guild` int(10) unsigned NOT NULL default '0' AFTER `bytes2`,
 ADD COLUMN `flags` int(10) unsigned NOT NULL default '0' AFTER `guild`,
 ADD COLUMN `dynFlags` int(10) unsigned NOT NULL default '0' AFTER `flags`;
UPDATE `corpse` SET
`displayId` = SUBSTRING(`data`,
length(SUBSTRING_INDEX(`data`,' ',10))+2,
length(SUBSTRING_INDEX(`data`,' ',10+1))-length(SUBSTRING_INDEX(data,' ',10))-1),
`itemCache` = SUBSTRING(`data`,
length(SUBSTRING_INDEX(`data`,' ',11))+2,
length(SUBSTRING_INDEX(`data`,' ',29+1))-length(SUBSTRING_INDEX(data,' ',11))-1),
`bytes1` = SUBSTRING(`data`,
length(SUBSTRING_INDEX(`data`,' ',30))+2,
length(SUBSTRING_INDEX(`data`,' ',30+1))-length(SUBSTRING_INDEX(data,' ',30))-1),
`bytes2` = SUBSTRING(`data`,
length(SUBSTRING_INDEX(`data`,' ',31))+2,
length(SUBSTRING_INDEX(`data`,' ',31+1))-length(SUBSTRING_INDEX(data,' ',31))-1),
`guild` = SUBSTRING(`data`,
length(SUBSTRING_INDEX(`data`,' ',32))+2,
length(SUBSTRING_INDEX(`data`,' ',32+1))-length(SUBSTRING_INDEX(data,' ',32))-1),
`flags` = SUBSTRING(`data`,
length(SUBSTRING_INDEX(`data`,' ',33))+2,
length(SUBSTRING_INDEX(`data`,' ',33+1))-length(SUBSTRING_INDEX(data,' ',33))-1),
`dynFlags` = SUBSTRING(`data`,
length(SUBSTRING_INDEX(`data`,' ',34))+2,
length(SUBSTRING_INDEX(`data`,' ',34+1))-length(SUBSTRING_INDEX(data,' ',34))-1);
ALTER TABLE `corpse` DROP `data`;

-- 9160_characters_item_instance.sql
SET @allowedFlags := 0x00000001 | 0x00000008 | 0x00000200 | 0x00001000 | 0x00008000 | 0x00010000;
UPDATE `item_instance` SET `flags` = (`flags` & @allowedFlags);

-- 9521_character_achievement.sql
DELETE FROM character_achievement WHERE `achievement` IN (3812,3916,3917,3918,3799,3797,3813,3814,3798,3815,3996,3997,3800,3816,3937,3936,3817,3818,3819,3808,3809,3810,4078,4079,4156,4080);
DELETE FROM character_achievement_progress WHERE `criteria` IN (11542,11546,11547,11549,11678,11679,11680,11681,11682,11683,11684,11685,11686,11687,11688,11689,11690,11691,11692,11693,11778,11779,11780,11799,11800,11801,11802,11803,11804,11818,11838,11839,11860,11861,11862,12116,12198,12258,12278,12279,12280,12281,12338,12339,12340,12341,12342,12343,12344,12345,12346,12347,12348,12349,12350,12358,12359,12360);

-- 9632_character_arena_team_member.sql
ALTER TABLE `arena_team_member`
DROP COLUMN `personal_rating`;

-- 9632_characters_arena_team_stats.sql
UPDATE `arena_team_stats` SET `rating`=0;

-- 9632_characters_character_arena_stats.sql
CREATE TABLE `character_arena_stats` (
`guid`  int(10) NOT NULL ,
`slot`  smallint(1) NOT NULL ,
`personal_rating`  int(10) NOT NULL ,
`matchmaker_rating`  int(10) NOT NULL ,
PRIMARY KEY (`guid`, `slot`)
);

-- 9668_characters_gm_subsurveys.sql
DROP TABLE IF EXISTS `gm_subsurveys`;
CREATE TABLE `gm_subsurveys` (
  `surveyid` int(10) NOT NULL auto_increment,
  `subsurveyid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `comment` longtext NOT NULL,
  PRIMARY KEY (`surveyid`,`subsurveyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- 9668_characters_gm_surbeys.sql
DROP TABLE IF EXISTS `gm_surveys`;
CREATE TABLE `gm_surveys` (
  `surveyid` int(10) NOT NULL auto_increment,
  `player` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `mainSurvey` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `overall_comment` longtext NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`surveyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- 9668_characters_gm_tickets.sql
ALTER TABLE `gm_tickets` ADD COLUMN `completed` int(11) NOT NULL DEFAULT '0' AFTER `comment`;
ALTER TABLE `gm_tickets` ADD COLUMN `escalated` int(11) NOT NULL DEFAULT '0' AFTER `completed`;
ALTER TABLE `gm_tickets` ADD COLUMN `viewed` int(11) NOT NULL DEFAULT '0' AFTER `escalated`;

-- 9668_characters_lag_reports.sql
DROP TABLE IF EXISTS `lag_reports`;
CREATE TABLE `lag_reports` (
  `report_id` int(10) NOT NULL auto_increment,
  `player` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `lag_type` int(10) NOT NULL DEFAULT '0',
  `map` int(11) NOT NULL DEFAULT '0',
  `posX` float NOT NULL default '0',
  `posY` float NOT NULL default '0',
  `posZ` float NOT NULL default '0',
  PRIMARY KEY  (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- 9708_characters_database.sql
-- Set the correct engine
ALTER TABLE `bugreport` ENGINE=InnoDB;
ALTER TABLE `channels` ENGINE=InnoDB;

-- 9716_characters_auctionhousebot.sql
DROP TABLE `auctionhousebot`;

-- 9758_characters_game_event_save.sql
ALTER TABLE `game_event_save` ADD `next_start_timestamp` BIGINT(11) UNSIGNED NOT NULL DEFAULT '0';
UPDATE `game_event_save` SET `next_start_timestamp` = UNIX_TIMESTAMP(`next_start`);
ALTER TABLE `game_event_save` DROP `next_start`;
ALTER TABLE `game_event_save` CHANGE `next_start_timestamp` `next_start` BIGINT(11) UNSIGNED NOT NULL DEFAULT '0';

-- 9792_characters_groups.sql
ALTER TABLE `groups` ADD INDEX ( `leaderGuid` );

-- 9792_characters_instance.sql
ALTER TABLE `instance` ADD INDEX ( `difficulty` );

-- 9792_characters_instance_reset.sql
ALTER TABLE `instance_reset` ADD INDEX ( `difficulty` );
