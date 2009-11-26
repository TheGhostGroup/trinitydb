-- 5354_8402_characters_guild_bank_eventlog.sql
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
  PRIMARY KEY  (`guildid`,`LogGuid`,`TabId`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




-- 5354_8402_characters_guild_eventlog.sql
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



-- 5360_8409_characters_guild.sql
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



-- 5532_8433_characters_character_account_data.sql
DROP TABLE IF EXISTS `character_account_data`;
CREATE TABLE `character_account_data` (
  `guid` int(11) unsigned NOT NULL default '0',
  `type` int(11) unsigned NOT NULL default '0',
  `time` bigint(11) unsigned NOT NULL default '0',
  `data` longtext NOT NULL,
  PRIMARY KEY  (`guid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO character_account_data
SELECT c.guid as guid, a.type as type, a.time as time, a.data as data
FROM characters c LEFT JOIN account_data a ON c.account = a.account WHERE a.type IN (1, 3, 5, 6, 7);
DELETE FROM account_data WHERE type IN (1, 3, 5, 6, 7);



-- 5628_character_8433_01_characters_character_account_data.sql
DELETE FROM character_spell WHERE spell in (
 1178,  /* Bear Form (Passive) */
 3025,  /* Cat Form (Passive) */
 5419,  /* Travel Form (Passive) */
 5420,  /* Tree of Life _passive_ */
 5421,  /* Aquatic Form (Passive) */
 7376,  /* Defensive Stance Passive */
 7381,  /* Berserker Stance Passive */
 9635,  /* Dire Bear Form (Passive) */
 21156, /* Battle Stance Passive */
 21178, /* Bear Form (Passive2) */
 24905, /* Moonkin Form (Passive) */
 34123, /* Tree of Life _pasive_ */
 33948, /* Flight Form (Passive) */
 34764, /* Flight Form (Passive) */
 40121, /* Swift Flight Form (Passive) */
 40122  /* Swift Flight Form (Passive) */
);



-- 5700_characters.sql (there was a typo, check original in core repo and fix it)
DELETE FROM `game_event_condition_save` WHERE `event_id` in (22,75,76,77);
DELETE `game_event_save` FROM `game_event_save` WHERE `event_id` in (22,75,76,77);



-- 5860_characters.sql
UPDATE `character_reputation` SET `flags`=`flags`&~ 1 WHERE `guid` IN (SELECT `guid` FROM  `characters` WHERE `race` IN (3,7,1,4,11)) AND `faction` IN (1052,1067,1124,947);
UPDATE `character_reputation` SET `flags`=`flags`&~ 1 WHERE `guid` IN (SELECT `guid` FROM `characters` WHERE `race` IN (2,6,8,5,10)) AND `faction` IN (1126,946,978);



-- 6156_characters.sql
ALTER TABLE `character_aura` MODIFY COLUMN `effect_mask` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0,
 MODIFY COLUMN `stackcount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1,
 MODIFY COLUMN `remaincharges` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `pet_aura` MODIFY COLUMN `effect_mask` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0,
 MODIFY COLUMN `stackcount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1,
 MODIFY COLUMN `remaincharges` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
 