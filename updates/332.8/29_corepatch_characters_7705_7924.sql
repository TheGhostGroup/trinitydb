-- 7705_characters_worldstates.sql
ALTER TABLE `saved_variables` CHANGE `NextArenaPointDistributionTime` `value` bigint(40) UNSIGNED NOT NULL DEFAULT '0',
ADD COLUMN `entry` mediumint(11) UNSIGNED NOT NULL DEFAULT '0' FIRST,
ADD COLUMN `comment` text NOT NULL,
ADD PRIMARY KEY  (`entry`),
RENAME `worldstates`,
ROW_FORMAT=DYNAMIC;
-- Only possible value is NextArenaPointDistributionTime so make the conversion to custom worldstate
UPDATE `worldstates` SET `entry`=20001, `comment`='NextArenaPointDistributionTime';

-- 7834_characters_characters.sql
ALTER TABLE characters
  ADD COLUMN `exploredZones` longtext AFTER activeSpec,
  ADD COLUMN `equipmentCache` longtext AFTER exploredZones,
  ADD COLUMN `ammoId` int(10) UNSIGNED NOT NULL default '0' AFTER equipmentCache,
  ADD COLUMN `knownTitles` longtext AFTER ammoId;
UPDATE characters SET
exploredZones = SUBSTRING(data,
length(SUBSTRING_INDEX(data, ' ', 1041))+2,
length(SUBSTRING_INDEX(data, ' ', 1168+1))- length(SUBSTRING_INDEX(data, ' ', 1041)) - 1),
equipmentCache = SUBSTRING(data,
length(SUBSTRING_INDEX(data, ' ', 283))+2,
length(SUBSTRING_INDEX(data, ' ', 320+1))- length(SUBSTRING_INDEX(data, ' ', 283)) - 1),
ammoId = SUBSTRING(data,
length(SUBSTRING_INDEX(data, ' ', 1198))+2,
length(SUBSTRING_INDEX(data, ' ', 1198+1))- length(SUBSTRING_INDEX(data, ' ', 1198)) - 1),
knownTitles = SUBSTRING(data,
length(SUBSTRING_INDEX(data, ' ', 626))+2,
length(SUBSTRING_INDEX(data, ' ', 631+1))- length(SUBSTRING_INDEX(data, ' ', 626)) - 1);
ALTER TABLE characters
  DROP COLUMN data;

-- 7845_characters_mail.sql
ALTER TABLE `mail` ADD COLUMN `body` longtext CHARSET utf8 COLLATE utf8_general_ci NULL after `subject`;
UPDATE `mail` LEFT JOIN `item_text` ON `mail`.`itemtextid` = `item_text`.`id` SET `mail`.`body`=`item_text`.`text`;
DELETE item_text FROM mail, item_text WHERE mail.itemtextid = item_text.id;
ALTER TABLE `mail` DROP COLUMN `itemtextid`;

-- 7893_characters_item_instance.sql
UPDATE item_instance SET data = REPLACE(data,'  ',' ');
UPDATE item_instance SET data = CONCAT(TRIM(data),' ');
UPDATE `item_instance` SET `data` = CONCAT(
	SUBSTRING_INDEX(`data`, ' ', 59 + 1), ' ',
	SUBSTRING_INDEX(`data`, ' ', -3 -1), '0 ')
WHERE length(SUBSTRING_INDEX(data, ' ', 64)) < length(data) and length(SUBSTRING_INDEX(data, ' ', 64+1)) >= length(data);
UPDATE item_instance SET data = REPLACE(data,'  ',' ');
UPDATE item_instance SET data = CONCAT(TRIM(data),' ');

-- 7904_characters_item_instance.sql
ALTER TABLE `item_instance` ADD COLUMN `text` longtext AFTER `data`;

-- 7904_characters_item_text.sql
DROP TABLE IF EXISTS `item_text`;

-- 7905_characters_character_equipmentsets.sql
ALTER TABLE `character_equipmentsets` ADD INDEX `Idx_setindex` (`setindex`);

-- 7905_characters_corpse.sql
ALTER TABLE `corpse` ADD INDEX `Idx_player`(`player`);
ALTER TABLE `corpse` ADD INDEX `Idx_time`(`time`);

-- 7905_characters_group_member.sql
ALTER TABLE `group_member` ADD INDEX `Idx_memberGuid`(`memberGuid`);

-- 7905_characters_guild.sql
ALTER TABLE `guild_eventlog`      ADD INDEX `Idx_PlayerGuid1`(`PlayerGuid1`);
ALTER TABLE `guild_eventlog`      ADD INDEX `Idx_PlayerGuid2`(`PlayerGuid2`);
ALTER TABLE `guild_eventlog`      ADD INDEX `Idx_LogGuid`(`LogGuid`);
ALTER TABLE `guild_bank_eventlog` ADD INDEX `Idx_PlayerGuid`(`PlayerGuid`);
ALTER TABLE `guild_bank_eventlog` ADD INDEX `Idx_LogGuid`(`LogGuid`);
ALTER TABLE `guild_bank_item`     ADD INDEX `Idx_item_guid`(`item_guid`);
ALTER TABLE `guild_rank`          ADD INDEX `Idx_rid`(`rid`);

-- 7905_characters_petition.sql
ALTER TABLE `petition_sign` ADD INDEX `Idx_playerguid`(`playerguid`);
ALTER TABLE `petition_sign` ADD INDEX `Idx_ownerguid`(`ownerguid`);

-- 7906_characters_character_stats.sql
DROP TABLE IF EXISTS `character_stats`;
CREATE TABLE `character_stats` (
  `guid` int(11) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier, Low part',
  `maxhealth` int(10) UNSIGNED NOT NULL default '0',
  `maxpower1` int(10) UNSIGNED NOT NULL default '0',
  `maxpower2` int(10) UNSIGNED NOT NULL default '0',
  `maxpower3` int(10) UNSIGNED NOT NULL default '0',
  `maxpower4` int(10) UNSIGNED NOT NULL default '0',
  `maxpower5` int(10) UNSIGNED NOT NULL default '0',
  `maxpower6` int(10) UNSIGNED NOT NULL default '0',
  `maxpower7` int(10) UNSIGNED NOT NULL default '0',
  `strength` int(10) UNSIGNED NOT NULL default '0',
  `agility` int(10) UNSIGNED NOT NULL default '0',
  `stamina` int(10) UNSIGNED NOT NULL default '0',
  `intellect` int(10) UNSIGNED NOT NULL default '0',
  `spirit` int(10) UNSIGNED NOT NULL default '0',
  `armor` int(10) UNSIGNED NOT NULL default '0',
  `resHoly` int(10) UNSIGNED NOT NULL default '0',
  `resFire` int(10) UNSIGNED NOT NULL default '0',
  `resNature` int(10) UNSIGNED NOT NULL default '0',
  `resFrost` int(10) UNSIGNED NOT NULL default '0',
  `resShadow` int(10) UNSIGNED NOT NULL default '0',
  `resArcane` int(10) UNSIGNED NOT NULL default '0',
  `blockPct` float UNSIGNED NOT NULL default '0',
  `dodgePct` float UNSIGNED NOT NULL default '0',
  `parryPct` float UNSIGNED NOT NULL default '0',
  `critPct` float UNSIGNED NOT NULL default '0',  
  `rangedCritPct` float UNSIGNED NOT NULL default '0',
  `spellCritPct` float UNSIGNED NOT NULL default '0',
  `attackPower` int(10) UNSIGNED NOT NULL default '0',
  `rangedAttackPower` int(10) UNSIGNED NOT NULL default '0',
  `spellPower` int(10) UNSIGNED NOT NULL default '0',
  PRIMARY KEY  (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 7914_characters_character_queststatus_weekly.sql
DROP TABLE IF EXISTS `character_queststatus_weekly`;
CREATE TABLE `character_queststatus_weekly` (
  `guid` int(11) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `quest` int(11) unsigned NOT NULL default '0' COMMENT 'Quest Identifier',
  PRIMARY KEY  (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- 7914_characters_worldstates.sql
ALTER TABLE `worldstates` ADD COLUMN `NextWeeklyQuestResetTime` bigint(40) unsigned NOT NULL default '0' AFTER `value`;

-- 7915_characters_worldstates.sql
ALTER TABLE `worldstates` DROP COLUMN `NextWeeklyQuestResetTime`;
INSERT INTO `worldstates` (`entry`,`value`, `comment`) VALUES (20002, 0, 'NextWeeklyQuestResetTime');

-- 7919_characters_worldstates.sql
DELETE FROM `worldstates` WHERE `entry` IN (20001,20002);
INSERT INTO `worldstates` (`entry`,`value`, `comment`) VALUES 
(20001, 0, 'NextArenaPointDistributionTime'),
(20002, 0, 'NextWeeklyQuestResetTime');

-- 7921_characters_worldstates.sql
ALTER TABLE `worldstates` CHANGE COLUMN `comment` `comment` text;

-- 7923_characters_characters.sql
ALTER TABLE `characters` ADD COLUMN `actionBars` tinyint(3) UNSIGNED NOT NULL default '0' AFTER knownTitles;
