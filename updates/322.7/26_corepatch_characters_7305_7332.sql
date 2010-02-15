-- 7332_characters_account_data.sql
ALTER table account_data change `data` `data` longblob NOT NULL;

-- 7332_characters_character_account_data.sql
ALTER table character_account_data change `data` `data` longblob NOT NULL;

-- 7332_characters_character_spell.sql
DELETE FROM `character_spell` WHERE `spell` IN (6783,9913,1785,1786,1787);

-- 7332_characters_characters.sql
UPDATE characters SET data = REPLACE(data,'  ',' ');
UPDATE characters SET data = CONCAT(TRIM(data),' ');
UPDATE `characters` SET `data` = CONCAT(
	SUBSTRING_INDEX(`data`, ' ', 161 + 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 165 + 1), ' ', -165 + 162 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 165 + 4 + 1), ' ', -165 - 4 + 162 + 4 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 165 + 4*2 + 1), ' ', -165 - 4*2 + 162 + 4*2 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 165 + 4*3 + 1), ' ', -165 - 4*3 + 162 + 4*3 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 165 + 4*4 + 1), ' ', -165 - 4*4 + 162 + 4*4 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 165 + 4*5 + 1), ' ', -165 - 4*5 + 162 + 4*5 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 165 + 4*6 + 1), ' ', -165 - 4*6 + 162 + 4*6 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 165 + 4*7 + 1), ' ', -165 - 4*7 + 162 + 4*7 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 165 + 4*8 + 1), ' ', -165 - 4*8 + 162 + 4*8 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 165 + 4*9 + 1), ' ', -165 - 4*9 + 162 + 4*9 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 165 + 4*10 + 1), ' ', -165 - 4*10 + 162 + 4*10 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 165 + 4*11 + 1), ' ', -165 - 4*11 + 162 + 4*11 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 165 + 4*12 + 1), ' ', -165 - 4*12 + 162 + 4*12 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 165 + 4*13 + 1), ' ', -165 - 4*13 + 162 + 4*13 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 165 + 4*14 + 1), ' ', -165 - 4*14 + 162 + 4*14 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 165 + 4*15 + 1), ' ', -165 - 4*15 + 162 + 4*15 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 165 + 4*16 + 1), ' ', -165 - 4*16 + 162 + 4*16 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 165 + 4*17 + 1), ' ', -165 - 4*17 + 162 + 4*17 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 165 + 4*18 + 1), ' ', -165 - 4*18 + 162 + 4*18 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 165 + 4*19 + 1), ' ', -165 - 4*19 + 162 + 4*19 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 165 + 4*20 + 1), ' ', -165 - 4*20 + 162 + 4*20 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 165 + 4*21 + 1), ' ', -165 - 4*21 + 162 + 4*21 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 165 + 4*22 + 1), ' ', -165 - 4*22 + 162 + 4*22 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 165 + 4*23 + 1), ' ', -165 - 4*23 + 162 + 4*23 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 298 + 1), ' ', -298 + 162 + 4*24 - 1), ' ',
	'0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 1300 + 1), ' ', -1300 + 299 - 1), ' '	
	)
WHERE length(SUBSTRING_INDEX(data, ' ', 1300)) < length(data) and length(SUBSTRING_INDEX(data, ' ', 1300+1)) >= length(data);
UPDATE characters SET data = REPLACE(data,'  ',' ');
UPDATE characters SET data = CONCAT(TRIM(data),' ');

-- 7332_characters_guild.sql
-- add temporary column
ALTER TABLE guild ADD COLUMN created_temp bigint(20) default '0';
-- update temporary columns data
UPDATE guild SET created_temp = UNIX_TIMESTAMP(createdate);
-- drop current column
ALTER TABLE guild DROP COLUMN createdate;
-- create new column with correct type
ALTER TABLE guild ADD COLUMN createdate bigint(20) NOT NULL default '0' AFTER motd;
-- copy data to new column
UPDATE guild set createdate = created_temp;
-- remove old column
ALTER TABLE guild DROP COLUMN created_temp;

-- 7332_characters_guild_bank_eventlog.sql
DROP TABLE IF EXISTS `guild_bank_eventlog`;
CREATE TABLE `guild_bank_eventlog` (
  `guildid` int(11) unsigned NOT NULL default '0' COMMENT 'Guild Identificator',
  `LogGuid` int(11) unsigned NOT NULL default '0' COMMENT 'Log record identificator - auxiliary column',
  `TabId` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Guild bank TabId',
  `EventType` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Event type',
  `PlayerGuid` int(11) unsigned NOT NULL default '0',
  `ItemOrMoney` int(11) unsigned NOT NULL default '0',
  `ItemStackCount` tinyint(3) unsigned NOT NULL default '0',
  `DestTabId` tinyint(1) unsigned NOT NULL default '0' COMMENT 'Destination Tab Id',
  `TimeStamp` bigint(20) unsigned NOT NULL default '0' COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`,`TabId`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 7332_characters_guild_eventlog.sql
DROP TABLE IF EXISTS `guild_eventlog`;
CREATE TABLE `guild_eventlog` (
  `guildid` int(11) NOT NULL COMMENT 'Guild Identificator',
  `LogGuid` int(11) NOT NULL COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(1) NOT NULL COMMENT 'Event type',
  `PlayerGuid1` int(11) NOT NULL COMMENT 'Player 1',
  `PlayerGuid2` int(11) NOT NULL COMMENT 'Player 2',
  `NewRank` tinyint(2) NOT NULL COMMENT 'New rank(in case promotion/demotion)',
  `TimeStamp` bigint(20) NOT NULL COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`, `LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT 'Guild Eventlog';

-- 7332_characters_guild_rank.sql
UPDATE guild_rank SET BankMoneyPerDay = 4294967295 WHERE rid = 0;
