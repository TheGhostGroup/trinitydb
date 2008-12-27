-- Character SQL file: 262_characters.sql

ALTER TABLE `guild_bank_tab`
  CHANGE COLUMN `TabText` `TabText` text;

ALTER TABLE `character_aura` ADD `stackcount` INT NOT NULL DEFAULT '1' AFTER `effect_index` ;
ALTER TABLE `pet_aura` ADD `stackcount` INT NOT NULL DEFAULT '1' AFTER `effect_index`;
-- Character SQL file: 410_characters.sql

ALTER TABLE `guild_member` DROP INDEX `guid_key` ,
ADD UNIQUE `guid_key` ( `guid` );
-- Character SQL file: 541_characters.sql

ALTER TABLE `characters` ADD COLUMN `arena_pending_points` int(10) UNSIGNED NOT NULL default '0' AFTER `taxi_path`;
DROP TABLE IF EXISTS `saved_variables`;
CREATE TABLE `saved_variables` (
    `NextArenaPointDistributionTime` bigint(40) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Variable Saves';

ALTER TABLE `arena_team_member` DROP COLUMN `points_to_add`;
ALTER TABLE `arena_team_member` ADD COLUMN `personal_rating` int(10) UNSIGNED NOT NULL DEFAULT '0';
-- Character SQL file: 542_characters.sql

UPDATE 
    `arena_team_member` AS `a`, 
    (SELECT
        `attq1`.`guid` AS `b_guid`,
        `atid`, `atpr`
        FROM 
        (SELECT 
            `guid`, 
            `name`, 
            SUBSTRING_INDEX(SUBSTRING_INDEX(`data`,' ',1545),' ',-1) AS `atid`,
            SUBSTRING_INDEX(SUBSTRING_INDEX(`data`,' ',1550),' ',-1) AS `atpr` 
        FROM 
        `characters`) AS `attq1` 
    INNER JOIN 
        `arena_team_member` ON `arenateamid` = `atid` AND 
        `arena_team_member`.`guid` = `attq1`.`guid` 
    WHERE 
        `atid` <> 0) 
    AS `b` 
SET 
    `a`.`personal_rating` = `b`.`atpr` 
WHERE 
    `a`.`arenateamid` = `b`.`atid` AND 
    `a`.`guid` = `b`.`b_guid`;
	
UPDATE 
    `arena_team_member` AS `a`, 
    (SELECT
        `attq1`.`guid` AS `b_guid`,
        `atid`, `atpr`
        FROM 
        (SELECT 
            `guid`, 
            `name`, 
            SUBSTRING_INDEX(SUBSTRING_INDEX(`data`,' ',1551),' ',-1) AS `atid`,
            SUBSTRING_INDEX(SUBSTRING_INDEX(`data`,' ',1556),' ',-1) AS `atpr` 
        FROM 
        `characters`) AS `attq1` 
    INNER JOIN 
        `arena_team_member` ON `arenateamid` = `atid` AND 
        `arena_team_member`.`guid` = `attq1`.`guid` 
    WHERE 
        `atid` <> 0) 
    AS `b` 
SET 
    `a`.`personal_rating` = `b`.`atpr` 
WHERE 
    `a`.`arenateamid` = `b`.`atid` AND 
    `a`.`guid` = `b`.`b_guid`;
	
UPDATE 
    `arena_team_member` AS `a`, 
    (SELECT
        `attq1`.`guid` AS `b_guid`,
        `atid`, `atpr`
        FROM 
        (SELECT 
            `guid`, 
            `name`, 
            SUBSTRING_INDEX(SUBSTRING_INDEX(`data`,' ',1557),' ',-1) AS `atid`,
            SUBSTRING_INDEX(SUBSTRING_INDEX(`data`,' ',1562),' ',-1) AS `atpr` 
        FROM 
        `characters`) AS `attq1` 
    INNER JOIN 
        `arena_team_member` ON `arenateamid` = `atid` AND 
        `arena_team_member`.`guid` = `attq1`.`guid` 
    WHERE 
        `atid` <> 0) 
    AS `b` 
SET 
    `a`.`personal_rating` = `b`.`atpr` 
WHERE 
    `a`.`arenateamid` = `b`.`atid` AND 
    `a`.`guid` = `b`.`b_guid`;
