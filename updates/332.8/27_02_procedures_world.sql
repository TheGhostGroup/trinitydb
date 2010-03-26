-- == ================= ==
-- ==     DROP LIST     ==
-- == ================= ==

-- Prevent query execution stop on '' statement
-- SET max_error_count=0;

-- Procedures
DROP PROCEDURE IF EXISTS `sp_CheckNPCOrGO`;
DROP PROCEDURE IF EXISTS `sp_CheckGobjEntry`;
DROP PROCEDURE IF EXISTS `sp_CheckNpcEntry`;
DROP PROCEDURE IF EXISTS `sp_CheckQuestEntry`;
DROP PROCEDURE IF EXISTS `sp_CheckTriggerId`;
DROP PROCEDURE IF EXISTS `sp_eai_CastSpellOnSpawn`;
DROP PROCEDURE IF EXISTS `sp_eai_KillCreditOnDeath`;
DROP PROCEDURE IF EXISTS `sp_eai_KillCreditOnSpellhit`;
DROP PROCEDURE IF EXISTS `sp_eai_selectID`;
DROP PROCEDURE IF EXISTS `sp_GetDifficultyEntry`;
DROP PROCEDURE IF EXISTS `sp_GetLootIdForChest`;
DROP PROCEDURE IF EXISTS `sp_GetReferenceId`;
DROP PROCEDURE IF EXISTS `sp_IgnoreAggro`;
DROP PROCEDURE IF EXISTS `sp_KillQuestgiver`;
DROP PROCEDURE IF EXISTS `sp_MakeAttackable`;
DROP PROCEDURE IF EXISTS `sp_MakeLootable`;
DROP PROCEDURE IF EXISTS `sp_MakeNotAttackable`;
DROP PROCEDURE IF EXISTS `sp_MakeNotLootable`;
DROP PROCEDURE IF EXISTS `sp_NotIgnoreAggro`;
DROP PROCEDURE IF EXISTS `sp_QuestRelations`;
DROP PROCEDURE IF EXISTS `sp_SetFaction`;
DROP PROCEDURE IF EXISTS `sp_SetLootId`;
DROP PROCEDURE IF EXISTS `sp_SetLootIdByList`;
DROP PROCEDURE IF EXISTS `sp_SetNotSelectable`;
DROP PROCEDURE IF EXISTS `sp_SetQuestlevel`;
DROP PROCEDURE IF EXISTS `sp_SetSelectable`;
DROP PROCEDURE IF EXISTS `sp_SpellScriptTarget`;
DROP PROCEDURE IF EXISTS `sp_TriggerSettings`;
DROP PROCEDURE IF EXISTS `sp_ReGuidAlterTables`;
DROP PROCEDURE IF EXISTS `sp_ReGuid`;
DROP PROCEDURE IF EXISTS `sp_eAI_SpawnOnSpellhit`;
DROP PROCEDURE IF EXISTS `sp_GetEntryList`;
DROP PROCEDURE IF EXISTS `sp_eAI_TablePhaseMask`;
DROP PROCEDURE IF EXISTS `sp_eAI_InversePhaseMask`;
DROP PROCEDURE IF EXISTS `sp_UpdateByList`;
DROP PROCEDURE IF EXISTS `sp_UpdateDifficultyEntries`;
DROP PROCEDURE IF EXISTS `sp_UpdateByMap`;



-- == =================== ==
-- ==   UPDATEPACK 27     ==
-- == =================== ==

-- ------------------ --
--  SINGLE RUN PROC   --
-- ------------------ --

-- update a all creatures spawned in a given map to have the specified difficulty_entry_* template added/fixed
DROP PROCEDURE IF EXISTS `sp_UpdateByMap`;
DELIMITER //
CREATE PROCEDURE `sp_UpdateByMap` (map VARCHAR(4), difficulty TINYINT(1))
BEGIN
    INSERT INTO `creature_temp` SELECT * FROM `creature_template` WHERE `entry` IN (SELECT DISTINCT `ct`.`entry` FROM `creature_template` `ct` INNER JOIN `creature` `c` ON `c`.`id` = `ct`.`entry` WHERE `c`.`map`=map AND `ct`.`difficulty_entry_1`=0);
    UPDATE `creature_temp` SET `entry`=`entry`*100+difficulty,`name`=CONCAT(`name`,' (',difficulty,')'),`AIName`='',`ScriptName`='',`difficulty_entry_1`=0,`difficulty_entry_2`=0,`difficulty_entry_3`=0,`WDBVerified`=0;
    DELETE FROM `creature_template` WHERE `entry` IN (SELECT `entry` FROM `creature_temp`);
    INSERT INTO `creature_template` SELECT * FROM `creature_temp`;
    TRUNCATE TABLE `creature_temp`;
END //
DELIMITER ;
-- update a list of entries to have specified difficulty_entry_* template added/fixed
DROP PROCEDURE IF EXISTS `sp_UpdateByList`;
DELIMITER //
CREATE PROCEDURE `sp_UpdateByList` (entryList BLOB, difficulty TINYINT(1))
BEGIN
    CALL `sp_GetEntryList` (entryList);
    INSERT INTO `creature_temp` SELECT * FROM `creature_template` WHERE `entry` IN (SELECT * FROM `tdb_entry_list`) AND CONCAT('difficulty_entry_',difficulty)=0;
    UPDATE `creature_temp` SET `entry`=`entry`*100+difficulty,`name`=CONCAT(`name`,' (',difficulty,')'),`AIName`='',`ScriptName`='',`difficulty_entry_1`=0,`difficulty_entry_2`=0,`difficulty_entry_3`=0,`WDBVerified`=0;
    DELETE FROM `creature_template` WHERE `entry` IN (SELECT `entry` FROM `creature_temp`);
    INSERT INTO `creature_template` SELECT * FROM `creature_temp`;
    TRUNCATE TABLE `creature_temp`;
END //
DELIMITER ;
-- update the difficulty_entry_* values for a list of entries
DROP PROCEDURE IF EXISTS `sp_UpdateDifficultyEntries`;
DELIMITER //
CREATE PROCEDURE `sp_UpdateDifficultyEntries` (entryList BLOB(65535), applyDiff1 BOOLEAN, applyDiff2 BOOLEAN, applyDiff3 BOOLEAN)
BEGIN
    CALL `sp_GetEntryList` (entryList);
    CASE WHEN applyDiff1 IS TRUE THEN UPDATE `creature_template` SET `difficulty_entry_1`=`entry`*100+1 WHERE `entry` IN (SELECT * FROM `tdb_entry_list`) AND `difficulty_entry_1`=0;
    ELSE BEGIN END;
    END CASE;
    CASE WHEN applyDiff2 IS TRUE THEN UPDATE `creature_template` SET `difficulty_entry_2`=`entry`*100+2 WHERE `entry` IN (SELECT * FROM `tdb_entry_list`) AND `difficulty_entry_2`=0;
    ELSE BEGIN END;
    END CASE;
    CASE WHEN applyDiff3 IS TRUE THEN UPDATE `creature_template` SET `difficulty_entry_3`=`entry`*100+3 WHERE `entry` IN (SELECT * FROM `tdb_entry_list`) AND `difficulty_entry_3`=0;
    ELSE BEGIN END;
    END CASE;
END //
DELIMITER ;

-- ------------------ --
--   ERROR HANDLERS   --
-- ------------------ --
-- `sp_CheckGobjEntry`
DELIMITER //
CREATE PROCEDURE `sp_CheckGobjEntry` (IN gameobject_entry MEDIUMINT(6))
BEGIN
/**
 * DEGREE: ERROR HANDLER
 * TABLES AFFECTED: gameobject_template
 * PROCS USED: none
 *
 * Error handling for TDB procedure: check if gameobject of provided ID exists in database
 *
 * gameobject_entry - Entry of the npc to check
 *
 * CALL `sp_CheckGobjEntry` (175124); -- check if Rookery Egg exists in database, error if not
 */
    DECLARE Check_entry TINYINT;
    SET Check_entry = (SELECT COUNT(entry) FROM `gameobject_template` WHERE `entry`=gameobject_entry);
    IF Check_entry = 0 THEN 
        CALL INVALID_GAMEOBJECT_ENTRY();
    ELSE 
        SET Check_entry = 0;
    END IF;
END//
DELIMITER ;
-- `sp_CheckNpcEntry`
DELIMITER //
CREATE PROCEDURE `sp_CheckNpcEntry` (IN creature_entry INT)
BEGIN
/**
 * DEGREE: ERROR HANDLER
 * TABLES AFFECTED: creature_template
 * PROCS USED: none
 *
 * Error handling for TDB procedure: check if creature of provided ID exists in database
 *
 * creature_entry - Entry of the npc to check
 *
 * CALL `sp_CheckNpcEntry` (257); -- will error out if invalid npc entry (creature_template.entry = 257)
 */
    DECLARE Check_entry INT;
    SET Check_entry = (SELECT COUNT(entry) FROM `creature_template` WHERE `entry`= creature_entry);
    IF Check_entry = 0 THEN 
        CALL INVALID_CREATURE_ENTRY();
    ELSE 
        SET Check_entry = 0;
    END IF;
END//
DELIMITER ;
-- `sp_CheckQuestEntry`
DELIMITER //
CREATE PROCEDURE `sp_CheckQuestEntry`(IN quest_entry INT(10))
BEGIN
/**
 * DEGREE: ERROR HANDLER
 * TABLES AFFECTED: quest_template
 * PROCS USED: none
 *
 * quest_entry - entry of quest from quest_template
 *
 * ex: CALL `sp_CheckQuestEntry` (9876); -- check if quest with ID 9876 exists in database
 */
DECLARE Check_entry INT;
SET Check_entry = (SELECT COUNT(entry) FROM `quest_template` WHERE `entry`= quest_entry);
IF Check_entry = 0 THEN
CALL INCORRECT_QUEST_ENTRY();
END IF;
END //
DELIMITER ;
-- `sp_CheckNPCOrGO`
DELIMITER //
CREATE PROCEDURE `sp_CheckNPCOrGO`(IN npc_or_go_entry INT(10), IN entry_type VARCHAR(10)) 
BEGIN
/**
 * DEGREE: ERROR HANDLER
 * TABLES AFFECTED: creature_template, gameobject_template
 * PROCS USED: none
 * 
 * npc_or_go_entry - entry of creature or gameobject from *_template
 * entry_type: ["GO"|"NPC"]
 *
 * ex: CALL `sp_CheckNPCOrGO` (257, "NPC"); -- check if NPC with entry = 257 exists in database
 */
DECLARE Check_entry INT;
CASE entry_type
        WHEN "NPC" THEN
SET Check_entry = (SELECT COUNT(`entry`) FROM `creature_template` WHERE `entry`=npc_or_go_entry);
        WHEN "GO" THEN
SET Check_entry = (SELECT COUNT(`entry`) FROM `gameobject_template` WHERE `entry`=npc_or_go_entry);
        ELSE
        CALL INCORRECT_ENTRY_TYPE();
END CASE;
IF Check_entry=0 THEN
CALL INCORRECT_CREATURE_OR_GO_ID();
END IF;
END //
DELIMITER ;
-- `sp_CheckTriggerId`
DELIMITER //
CREATE PROCEDURE `sp_CheckTriggerId` (IN trigger_id INT(10))
BEGIN
/**
 * DEGREE: ERROR HANDLER
 * TABLES AFFECTED: quest_template
 * PROCS USED: none
 *
 * Error handling for TDB procedure: check if triggerID for eAI is objective of any quest
 *
 * trigger_id - ID to check against the db for quest objective
 *
 * ex: CALL `sp_CheckTriggerId` (257); -- make sure trigger (creature_template.entry = 257) is requirement for a quest
 */
    DECLARE Check_trigger1 INT;
    DECLARE Check_trigger2 INT;
    DECLARE Check_trigger3 INT;
    DECLARE Check_trigger4 INT;
    SET Check_trigger1 = (SELECT COUNT(ReqCreatureOrGOId1) FROM `quest_template` WHERE `ReqCreatureOrGOId1`= trigger_ID);
    SET Check_trigger2 = (SELECT COUNT(ReqCreatureOrGOId2) FROM `quest_template` WHERE `ReqCreatureOrGOId2`= trigger_ID);
    SET Check_trigger3 = (SELECT COUNT(ReqCreatureOrGOId3) FROM `quest_template` WHERE `ReqCreatureOrGOId3`= trigger_ID);
    SET Check_trigger4 = (SELECT COUNT(ReqCreatureOrGOId4) FROM `quest_template` WHERE `ReqCreatureOrGOId4`= trigger_ID);
    IF Check_trigger1 = 0 AND Check_trigger2 = 0 AND Check_trigger3 = 0 AND Check_trigger4 = 0 THEN
        CALL NO_QUEST_WITH_REQUIREMENT();
    ELSE
        SET Check_trigger1 = 0;
        SET Check_trigger2 = 0;
        SET Check_trigger3 = 0;
        SET Check_trigger4 = 0;
    END IF;
END //
DELIMITER ;

-- ------------------ --
--     UTILITIES      --
-- ------------------ --
-- `sp_eai_selectID`
DELIMITER //
CREATE PROCEDURE `sp_eai_selectID`(IN creature_entry INT(10), OUT event_id INT(10))
BEGIN
/**
 * DEGREE: UTILITY
 * TABLES AFFECT: creature_ai_scripts
 * PROCS USERD: none
 *
 * Check if eAI exists and add pick best id for new entries
 * To be used inside other eAI procs only!
 * 
 * ex: CALL `sp_eai_selectID` (257); -- selects new creature_ai_scripts.id for NPC entry 257 (Kobold Worker) and deletes old eAI added by procedures 
 */
DECLARE check_entry INT;
SET check_entry = (SELECT COUNT(ID) FROM `creature_ai_scripts` WHERE `creature_id`= creature_entry);
        IF check_entry <> 0 THEN
                SET event_id = (SELECT MAX(id)+1 FROM `creature_ai_scripts` WHERE `creature_id`= creature_entry);
                DELETE FROM `creature_ai_scripts` WHERE `creature_id`= creature_entry AND `comment` LIKE "Stored procedures eAI%";
	 ELSE
	        SET event_id = (creature_entry*100)+1;
        END IF;
END //
DELIMITER ;
-- `sp_eAI_TablePhaseMask`
DELIMITER //
CREATE
    PROCEDURE `sp_eAI_TablePhaseMask`()
    BEGIN
 /*
 * DEGREE:UTILITY
 * TABLES AFFECTED: NONE
 * PROCS USED: NONE
 *
 * THIS PROCEDURE IS AN INTEGRAL PART OF `sp_InversePhaseMask` PROC. AND HAS NO OTHER USE!!!
 *
 */
CREATE TABLE `phase_mask`(
`phaseID` INT(2) NOT NULL DEFAULT '0' ,
`phase_mask` INT(11) UNSIGNED NOT NULL DEFAULT '0' ,
PRIMARY KEY (`phaseID`));
INSERT INTO phase_mask VALUES
(0,1),
(1,2),
(2,4),
(3,8),
(4,16),
(5,32),
(6,64),
(7,128),
(8,256),
(9,512),
(10,1024),
(11,2048),
(12,4096),
(13,8192),
(14,16384),
(15,32768),
(16,65536),
(17,131072),
(18,262144),
(19,524288),
(20,1048576),
(21,2097152),
(22,4194304),
(23,8388608),
(24,16777216),
(25,33554432),
(26,67108864),
(27,134217728),
(28,268435456),
(29,536870912),
(30,1073741824),
(31,2147483648);
    END//
DELIMITER ;
-- `sp_eAI_InversePhaseMask`
DELIMITER //
CREATE
    PROCEDURE `sp_eAI_InversePhaseMask`(IN max_phase INT, IN phase_list VARCHAR(255))
    BEGIN
/*
 * DEGREE:UTILITY
 * TABLES AFFECTED: NONE
 * PROCS USED: sp_GetEntryList()
 *
 *
 * Procedure to select value for field event_inverse_phase_mask in creature_ai_scripts table
 *
 * max_phase = number of maximum phase used for creature:
 * phase_list = list of phase IDs in which event will occur 
 * example call: CALL `sp_eAI_InversePhaseMask`(3,"2,1");
 * If creature will should enter phase: 0,1,2,3 - then max_phase value is 3
 * phase_list assigns in which phases event WILL occur
 * so if we want NPC using 3 phases (0-3) to take action from eAI while he's in phase 2 OR 3
 * the call for procedure would be: CALL `sp_eAI_InversePhaseMask`(3,"2,3");
 *
 */
DECLARE max_phase_mask INT;
DECLARE phase_yes INT;
DECLARE inverse_phase_mask INT;
CALL `sp_eAI_TablePhaseMask`();
CALL `sp_GetEntryList`(phase_list);
SET max_phase_mask = (SELECT SUM(phase_mask) FROM phase_mask WHERE phaseID <= max_phase);
-- UPDATE tdb_entry_list SET `value` = `value`-1;
SET phase_yes = (SELECT SUM(phase_mask) FROM phase_mask WHERE phaseID IN (SELECT `value` FROM tdb_entry_list));
SET inverse_phase_mask = (max_phase_mask - phase_yes);
DROP TABLE `tdb_entry_list`;
DROP TABLE `phase_mask`;
IF inverse_phase_mask < 0 THEN
SELECT "PhaseID is bigger then maximum phase entered" AS `inverse_phase_mask`;
ELSE IF phase_list="0" THEN
SELECT 0 AS `inverse_phase_mask`;
ELSE
SELECT inverse_phase_mask;
END IF;
END IF;
    END//
DELIMITER ;
-- `sp_ReGuidAlterTables`
DELIMITER //
CREATE
    PROCEDURE `sp_ReGuidAlterTables`()
    BEGIN
/**
 * DEGREE: UTILITY
 * TABLES AFFECT: many
 * PROCS USERD: none
 *
 * THIS PROCEDURE IS A PART OF `sp_ReGuid` AND HAS NO OTHER USE!
 */
            CREATE TABLE `creature_temp` (
  `guid` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Global Unique Identifier',
  `id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Creature Identifier',
  `map` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `spawnMask` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
  `phaseMask` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '1',
  `modelid` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `equipment_id` MEDIUMINT(9) NOT NULL DEFAULT '0',
  `position_x` FLOAT NOT NULL DEFAULT '0',
  `position_y` FLOAT NOT NULL DEFAULT '0',
  `position_z` FLOAT NOT NULL DEFAULT '0',
  `orientation` FLOAT NOT NULL DEFAULT '0',
  `spawntimesecs` INT(10) UNSIGNED NOT NULL DEFAULT '120',
  `spawndist` FLOAT NOT NULL DEFAULT '5',
  `currentwaypoint` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `curhealth` INT(10) UNSIGNED NOT NULL DEFAULT '1',
  `curmana` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `DeathState` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `MovementType` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `old_guid` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `idx_map` (`map`),
  KEY `idx_id` (`id`)
) ENGINE=MYISAM AUTO_INCREMENT=250001 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Creature System';
        ALTER TABLE `creature_addon` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `creature_formations` ADD COLUMN `new_guid_leader` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `creature_formations` ADD COLUMN `new_guid_member` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `creature_linked_respawn` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `creature_linked_respawn` ADD COLUMN `new_linked_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `game_event_creature` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `pool_creature` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `game_event_model_equip` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `game_event_npc_gossip` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `game_event_npc_vendor` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `game_event_npcflag` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `npc_gossip` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
    END//
DELIMITER ;
-- `sp_ReGuid`
DELIMITER //
CREATE
    PROCEDURE `sp_ReGuid`(IN new_base_guid INT(10))
    BEGIN
/**
 * DEGREE: UTILITY
 * TABLES AFFECT: any with creature.guid value in use
 * PROCS USED: `sp_ReGuidAlterTables`
 *
 * THIS PROCEDURE IS IN A TESTING PHASE, USE AT OWN RISK!
 * 
 * ex: CALL `sp_ReGuid`(1000); -- will renumber all existing guids in creature table starting with 1000 as initial
 */
    CALL `sp_ReGuidAlterTables`();
    SET @s = CONCAT("ALTER TABLE `creature_temp` AUTO_INCREMENT=",new_base_guid,";");
    PREPARE STM FROM @s;
    EXECUTE STM;
    INSERT INTO `creature_temp` (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType,old_guid)
    SELECT id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType,guid FROM `creature` ORDER BY `id` ASC;
    UPDATE `creature_temp` SET guid = old_guid WHERE `old_guid`>250000;    
		UPDATE game_event_npc_gossip p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_guid = pp.guid;
                UPDATE game_event_npc_vendor p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_guid = pp.guid;
                UPDATE game_event_npcflag p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_guid = pp.guid;
                UPDATE npc_gossip p
                INNER JOIN creature_temp pp
                ON p.npc_guid = pp.old_guid
                SET p.new_guid = pp.guid;
                UPDATE game_event_model_equip p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_guid = pp.guid;
                UPDATE creature_addon p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_guid = pp.guid;
                UPDATE creature_formations p
                INNER JOIN creature_temp pp
                ON p.leaderGUID = pp.old_guid
                SET p.new_guid_leader = pp.guid;
                UPDATE creature_formations p
                INNER JOIN creature_temp pp
                ON p.memberGUID = pp.old_guid
                SET p.new_guid_member = pp.guid;
                UPDATE creature_linked_respawn p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_guid = pp.guid;
                UPDATE creature_linked_respawn p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_linked_guid = pp.guid;
                UPDATE game_event_creature p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_guid = pp.guid;
                UPDATE pool_creature p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_guid = pp.guid;
                ALTER TABLE `creature_temp` DROP COLUMN `old_guid`;
                DROP TABLE `creature`;
                RENAME TABLE `creature_temp` TO `creature`;
                ALTER TABLE game_event_npc_gossip DISABLE KEYS;
                UPDATE `game_event_npc_gossip` SET `guid`=`new_guid`;        
                ALTER TABLE `game_event_npc_gossip` DROP COLUMN `new_guid`;
                ALTER TABLE game_event_npc_gossip ENABLE KEYS;
                ALTER TABLE game_event_npc_vendor DISABLE KEYS;
                UPDATE `game_event_npc_vendor` SET `guid`=`new_guid`;        
                ALTER TABLE `game_event_npc_vendor` DROP COLUMN `new_guid`;
                ALTER TABLE game_event_npc_vendor ENABLE KEYS;
                ALTER TABLE game_event_npcflag DISABLE KEYS;
                UPDATE `game_event_npcflag` SET `guid`=`new_guid`;        
                ALTER TABLE `game_event_npcflag` DROP COLUMN `new_guid`;
                ALTER TABLE game_event_npcflag ENABLE KEYS;
                ALTER TABLE `npc_gossip` DROP PRIMARY KEY;
                UPDATE `npc_gossip` SET `npc_guid`=`new_guid`;      
                SELECT npc_guid,new_guid FROM npc_gossip;  
                ALTER TABLE `npc_gossip` DROP COLUMN `new_guid`;
                ALTER TABLE `npc_gossip` ADD PRIMARY KEY(`npc_guid`);
                ALTER TABLE game_event_model_equip DISABLE KEYS;
                UPDATE `game_event_model_equip` SET `guid`=`new_guid`;        
                ALTER TABLE `game_event_model_equip` DROP COLUMN `new_guid`;
                ALTER TABLE game_event_model_equip ENABLE KEYS;
                ALTER TABLE `creature_addon` DROP PRIMARY KEY;
                UPDATE `creature_addon` SET `guid`=`new_guid`;        
                ALTER TABLE `creature_addon` DROP COLUMN `new_guid`;
                ALTER TABLE `creature_addon` ADD PRIMARY KEY(`guid`);
                ALTER TABLE creature_formations DISABLE KEYS;
                UPDATE `creature_formations` SET leaderGUID = new_guid_leader;
                ALTER TABLE `creature_formations` DROP COLUMN `new_guid_leader`;
                UPDATE `creature_formations` SET memberGUID = new_guid_member;
                ALTER TABLE `creature_formations` DROP COLUMN `new_guid_member`;
                ALTER TABLE creature_formations ENABLE KEYS;
                ALTER TABLE `creature_linked_respawn` DROP PRIMARY KEY;
                UPDATE `creature_linked_respawn` SET guid = new_guid;
                ALTER TABLE `creature_linked_respawn` DROP COLUMN `new_guid`;
                UPDATE `creature_linked_respawn` SET linkedGuid = new_linked_guid;
                ALTER TABLE `creature_linked_respawn` DROP COLUMN `new_linked_guid`;
                ALTER TABLE `creature_linked_respawn` ADD PRIMARY KEY(`guid`);
                ALTER TABLE `game_event_creature` DROP PRIMARY KEY;
                UPDATE `game_event_creature` SET guid = new_guid;
                ALTER TABLE `game_event_creature` DROP COLUMN `new_guid`;
                ALTER TABLE `game_event_creature` ADD PRIMARY KEY(`guid`);
                ALTER TABLE pool_creature DISABLE KEYS;
                UPDATE `pool_creature` SET guid = new_guid;
                ALTER TABLE `pool_creature` DROP COLUMN `new_guid`;
                ALTER TABLE pool_creature ENABLE KEYS;

    END //
DELIMITER ;
-- `sp_GetEntryList`
DELIMITER //
CREATE PROCEDURE `sp_GetEntryList` (IN input TEXT) 
BEGIN
/**
 * DEGREE: UTILITY
 * TABLES AFFECTED: tdb_entry_list (temp)
 * PROCS USED: none
 *
 * Utility procedure to split a comma-delimited list into a temporary table to be used outside of the procedure.
 * ***USE WITH CARE! Drop up the temporary table after using it!***
 *
 * input - comma-delimited list of entries to be split and inserted individually into a temporary table
 *
 * ex: CALL sp_GetEntryList ('1,2,3,4,5,6');
 *     SELECT * FROM `tdb_entry_list`;
 *     DROP TEMPORARY TABLE `tdb_entry_list`;
 */
    DECLARE cur_position INT DEFAULT 1;
    DECLARE remainder TEXT;
    DECLARE cur_string VARCHAR(10);
    DROP TEMPORARY TABLE IF EXISTS `tdb_entry_list`;
    CREATE TEMPORARY TABLE `tdb_entry_list` (`value` INT NOT NULL PRIMARY KEY) ENGINE=MYISAM;
    SET remainder = input;
    WHILE CHAR_LENGTH(remainder) > 0 AND cur_position > 0 DO
        SET cur_position = INSTR(remainder, ',');
        IF cur_position = 0 THEN
            SET cur_string = remainder;
        ELSE
            SET cur_string = LEFT(remainder, cur_position-1);
        END IF;
        IF TRIM(cur_string) != '' THEN
            INSERT INTO `tdb_entry_list` VALUES (cur_string);
        END IF;
        SET remainder = SUBSTRING(remainder, cur_position+1);
    END WHILE;
END//
DELIMITER ;

-- ------------------ --
-- BASIC PROCEDURES   --
-- ------------------ --
-- `sp_GetDifficultyEntry`
DELIMITER //
CREATE PROCEDURE `sp_GetDifficultyEntry` (IN normalEntry MEDIUMINT(5),IN difficulty TINYINT(1),OUT output MEDIUMINT(8))
BEGIN
/**
 * DEGREE: BASIC
 * TABLES AFFECTED: creature_template
 * PROCS USED: none
 *
 * Retrieves the specified difficulty entry for a given NPC
 *
 * normalEntry - ID of the npc whose difficulty entry is to be 
 * difficulty - level of difficulty who entry should be retrieved
 * output - OUT. desired difficulty entry is placed in this variable for use by the caller
 *
 * ex: CALL `sp_GetDifficultyEntry` (10184,1,@Test);
 *     SELECT @Test;
 */
    CASE difficulty
        WHEN 1 THEN BEGIN 
            SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=normalEntry INTO output; 
        END;
        WHEN 2 THEN BEGIN 
            SELECT `difficulty_entry_2` FROM `creature_template` WHERE `entry`=normalEntry INTO output; 
        END;
        WHEN 3 THEN BEGIN 
            SELECT `difficulty_entry_3` FROM `creature_template` WHERE `entry`=normalEntry INTO output; 
        END;
        ELSE CALL INVALID_DIFFICULTY_ENTRY();
    END CASE;
END//
DELIMITER ;
-- `sp_GetReferenceId`
DELIMITER //
CREATE PROCEDURE `sp_GetReferenceId` (IN refType VARCHAR(10),OUT reference MEDIUMINT(5))
BEGIN
/**
 * DEGREE: BASIC
 * TABLES AFFECTED: reference_loot_template
 * PROCS USED: none
 *
 * Get a generated loot reference id based on the type of loot its to be used for
 *
 * refType - [SKIN,ITEM,FISH,MILL,RAID_GOBJ,MINE,PROSPECT,WORLD,RAID_CRE,DUNGEON]
 *
 * ex: CALL `sp_GetReferenceId` ('RAID_CRE',@Test);
 *     SELECT @Test
 */
    CASE UCASE(refType)
        WHEN 'SKIN' THEN BEGIN
            SET @Low :=00000;
            SET @High :=1000;
        END;
        WHEN 'ITEM' THEN BEGIN
            SET @Low :=10000;
            SET @High :=10999;
        END;
        WHEN 'FISH' THEN BEGIN
            SET @Low :=11000;
            SET @High :=11799;
        END;
        WHEN 'MILL' THEN BEGIN
            SET @Low :=11800;
            SET @High :=11999;
        END;
        WHEN 'RAID_GOBJ' THEN BEGIN
            SET @Low :=12000;
            SET @High :=12899;
        END;
        WHEN 'MINE' THEN BEGIN
            SET @Low :=12900;
            SET @High :=12999;
        END;
        WHEN 'PROSPECT' THEN BEGIN
            SET @Low :=13000;
            SET @High :=13999;
        END;
        WHEN 'WORLD' THEN BEGIN
            SET @Low :=14000;
            SET @High :=29000;
        END;
        WHEN 'RAID_CRE' THEN BEGIN
            SET @Low :=34000;
            SET @High :=34999;
        END;
        WHEN 'DUNGEON' THEN BEGIN
            SET @Low :=35000;
            SET @High :=35999;
        END;
        ELSE CALL INVALID_REFERENCE_TYPE();
    END CASE;
    SET reference :=1+(SELECT `entry` FROM `reference_loot_template` WHERE `entry` BETWEEN @Low AND @High ORDER BY `entry` DESC LIMIT 1);
END//
DELIMITER ;
-- `sp_MakeNotAttackable`
DELIMITER //
CREATE PROCEDURE `sp_MakeNotAttackable`(IN creature_entry INT(10))
BEGIN
/**
 * DEGREE: BASIC
 * TABLES AFFECTED: creature_template
 * PROCS USED: sp_CheckNpcEntry
 *
 * Update creature to be unattackable
 *
 * creature_entry - ID of NPC from `creature_template`.`entry`
 * 
 * ex: CALL `sp_MakeNotAttackable` (257); -- disables attacking of creature with ID 257 (creature_template.entry - Kobold Worker)
 */
    CALL `sp_CheckNpcEntry` (creature_entry);
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|256 WHERE `entry`= creature_entry;
END //
DELIMITER ;
-- `sp_GetLootIdForChest`
DELIMITER //
CREATE PROCEDURE `sp_GetLootIdForChest` (IN gobjID MEDIUMINT(6),OUT gobjLootID INT(10))
BEGIN
/**
 * DEGREE: BASIC
 * TABLES AFFECTED: gameobject_template
 * PROCS USED: sp_CheckGobjEntry
 *
 * Get the loot ID for a specified gameobject (data1 field). Must be a chest (type=3).
 *
 * gobjID - ID of the gameobject whose loot id is to be gathered
 * gobjLootID - variable to store the retrieved value in
 *
 * ex: CALL `sp_GetLootIdForChest`(195709,@Test);
 *     SELECT * FROM `gameobject_loot_template` WHERE `entry`=@Test;
 */
    CALL `sp_CheckGobjEntry` (gobjID);
    SELECT `data1` FROM `gameobject_template` WHERE `entry`=gobjID AND `type`=3 INTO gobjLootID;
END//
DELIMITER ;
-- `sp_NotIgnoreAggro`
DELIMITER //
CREATE PROCEDURE `sp_NotIgnoreAggro`(IN creature_entry INT(10))
BEGIN
/**
 * DEGREE: BASIC
 * TABLES AFFECTED: creature_template
 * PROCS USED: sp_CheckNpcEntry
 *
 * Update creature to aggro normally
 *
 * creature_entry - ID of NPC from `creature_template`.`entry`
 * 
 * ex: CALL `sp_NotIgnoreAggro` (257); -- makes creature of ID 257 (Kobold Worker) stop ignoring aggro
 */
    CALL `sp_CheckNpcEntry` (creature_entry);
UPDATE `creature_template` SET `flags_extra`=`flags_extra`&~2 WHERE `entry`= creature_entry;
END //
DELIMITER ;
-- `sp_MakeNotLootable`
DELIMITER //
CREATE PROCEDURE `sp_MakeNotLootable`(IN creature_entry INT(10))
BEGIN
/**
 * DEGREE: BASIC
 * TABLES AFFECTED: creature_template
 * PROCS USED: sp_CheckNpcEntry
 *
 * Update creature to become not lootable
 *
 * creature_entry - ID of NPC from `creature_template`.`entry`
 * 
 * ex: CALL `sp_MakeNotLootable` (257); -- makes creature of ID 257 (Kobold Worker) not lootable
 */
    CALL `sp_CheckNpcEntry` (creature_entry);
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`&~1 WHERE `entry`= creature_entry;
END //
DELIMITER ;
-- `sp_SetNotSelectable`
DELIMITER //
CREATE PROCEDURE `sp_SetNotSelectable`(IN creature_entry INT(10))
BEGIN
/**
 * DEGREE: BASIC
 * TABLES AFFECTED: creature_template
 * PROCS USED: sp_CheckNpcEntry
 *
 * Update creature to make it unselectable
 *
 * creature_entry - ID of NPC from `creature_template`.`entry`
 * 
 * ex: CALL `sp_tdb_SetNotSelectable`(257) - makes creature with ID 257 (Kobold Worker) not selectable
 */
    CALL `sp_CheckNpcEntry` (creature_entry);
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33554432 WHERE `entry`= creature_entry;
END //
DELIMITER ;
-- `sp_SetQuestlevel`
DELIMITER //
CREATE PROCEDURE `sp_SetQuestlevel`(IN quest_entry INT(10), IN quest_level INT(10))
BEGIN
/**
 * DEGREE: BASIC
 * TABLES AFFECTED: quest_template
 * PROCS USED: sp_CheckQuestEntry
 *
 * Update quest to provided level
 * ONLY FOR SEASONAL QUESTS WHERE LEVELS ARE NOT CORRECT FROM WDB!
 *
 * quest_entry - ID of a quest from quest_template
 * quest_level - new MinLevel value
 * 
 * ex: CALL `sp_SetQuestlevel` (11335,30) - sets MinLevel of quest ID 11335 (Call to Arms: Arathi Basin) to 30
 */
CALL `sp_CheckQuestEntry` (quest_entry);
UPDATE `quest_template` SET `MinLevel`= quest_level WHERE `entry`= quest_entry;
END //
DELIMITER ;
-- `sp_SetSelectable`
DELIMITER //
CREATE PROCEDURE `sp_SetSelectable`(IN creature_entry INT(10))
BEGIN
/**
 * DEGREE: BASIC
 * TABLES AFFECTED: creature_template
 * PROCS USED: sp_CheckNpcEntry
 *
 * Update creature to make it selectable
 *
 * creature_entry - ID of NPC from `creature_template`.`entry`
 * 
 * ex: CALL `sp_SetSelectable` (257) - makes creature with ID 257 (Kobold Worker) selectable 
 */
    CALL `sp_CheckNpcEntry` (creature_entry);
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~33554432 WHERE `entry`= creature_entry;
END //
DELIMITER ;
-- `sp_SetFaction`
DELIMITER //
CREATE PROCEDURE `sp_SetFaction`(IN creature_entry INT(10), faction_A INT(10), faction_H INT(10))
BEGIN
/**
 * DEGREE: BASIC
 * TABLES AFFECTED: creature_template
 * PROCS USED: sp_CheckNpcEntry
 *
 * Update creature's faction
 *
 * creature_entry - ID of NPC from `creature_template`.`entry`
 * 
 * ex: CALL `sp_SetFaction` (257,7,7); -- sets faction to 7 for NPC with ID 257 (Kobold Worker)
 */
    CALL `sp_CheckNpcEntry` (creature_entry);
UPDATE `creature_template` SET `faction_A`= faction_A,`faction_H`= faction_H WHERE `entry`= creature_entry;
END //
DELIMITER ;
-- `sp_MakeLootable`
DELIMITER //
CREATE PROCEDURE `sp_MakeLootable`(IN creature_entry INT(10))
BEGIN
/**
 * DEGREE: BASIC
 * TABLES AFFECTED: creature_template
 * PROCS USED: sp_CheckNpcEntry
 *
 * Update creature to become lootable
 *
 * creature_entry - ID of NPC from `creature_template`.`entry`
 * 
 * ex: CALL `sp_MakeLootable` (257); -- makes NPC of ID 257 lootable
 */
    CALL `sp_CheckNpcEntry` (creature_entry);
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`|1 WHERE `entry`= creature_entry;
END //
DELIMITER ;
-- `sp_IgnoreAggro`
DELIMITER //
CREATE PROCEDURE `sp_IgnoreAggro`(IN creature_entry INT(10))
BEGIN
/**
 * DEGREE: BASIC
 * TABLES AFFECTED: creature_template
 * PROCS USED: sp_CheckNpcEntry
 *
 * Update creature to ignore aggro
 *
 * creature_entry - ID of NPC from `creature_template`.`entry`
 * 
 * ex: CALL `sp_IgnoreAggro` (257); -- makes NPC with ID 257 ignore aggro
 */
    CALL `sp_CheckNpcEntry` (creature_entry);
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`= creature_entry;
END //
DELIMITER ;
-- `sp_MakeAttackable`
DELIMITER //
CREATE PROCEDURE `sp_MakeAttackable`(IN creature_entry INT(10))
BEGIN
/**
 * DEGREE: BASIC
 * TABLES AFFECTED: creature_template
 * PROCS USED: sp_CheckNpcEntry
 *
 * Update creature to be attackable
 *
 * creature_entry - ID of NPC from `creature_template`.`entry`
 * 
 * ex: CALL `sp_MakeAttackable` (257); -- enables attacking for NPC with ID 257 (creature_template.entry)
 */
    CALL `sp_CheckNpcEntry` (creature_entry);
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~256 WHERE `entry`= creature_entry;
END //
DELIMITER ;
-- `sp_KillQuestgiver`
DELIMITER //
CREATE PROCEDURE `sp_KillQuestgiver`(IN creature_entry INT(10))
BEGIN
/**
 * DEGREE: BASIC
 * TABLES AFFECTED: creature_template_addon, creature
 * PROCS USED: sp_CheckNpcEntry
 *
 * Update creature to appear death but still react to eAI / give or take quests
 *
 * creature_entry - ID of NPC from `creature_template`.`entry`
 * 
 * ex: CALL `TDB_sp_KillQuestgiver` (257); -- Makes creature with entry 257 appear dead but still albe to give / take quests or react to spellhits
 */
    DECLARE check_addon_exists INT;
    CALL `sp_CheckNpcEntry` (creature_entry);
    SET check_addon_exists = (SELECT COUNT(`entry`) FROM `creature_template_addon` WHERE `entry` = creature_entry);
    UPDATE `creature` SET `MovementType`=0, `spawndist`=0, `Deathstate`=0 WHERE `id`= creature_entry;
 UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`= creature_entry;
    IF check_addon_exists > 0 THEN 
        UPDATE `creature_template_addon` SET `bytes1`=7 WHERE `entry`= creature_entry;
    ELSE 
        INSERT INTO `creature_template_addon` VALUES (creature_entry,0,0,7,0,0, '');
    END IF;
END //
DELIMITER ;
-- `sp_SetLootId`
DELIMITER //
CREATE PROCEDURE `sp_SetLootId` (IN creature_entry MEDIUMINT(5),IN lootID MEDIUMINT(5))
BEGIN    
/**
 * DEGREE: BASIC
 * TABLES AFFECTED: creature_template
 * PROCS USED: sb_CheckNpcEntry
 *
 * Sets the loot id of a specified NPC
 *
 * npcEntry - Entry of the npc whose lootid you would like to set
 * loot - OPTIONAL. If provided, set the specified NPC's lootid to this value. If NULL, NPC uses its own entry.
 * 
 * ex: CALL `sp_SetLootId` (99999,NULL); -- sets the lootid to its own entry number
 */
    CALL `sp_CheckNpcEntry` (creature_entry);
    UPDATE `creature_template` SET `lootid`=IFNULL(lootID,npcEntry) WHERE `entry`=creature_entry;
END//
DELIMITER ;
-- `sp_SpellScriptTarget`
DELIMITER //
CREATE PROCEDURE `sp_SpellScriptTarget` (IN spell_ID INT(11),IN target_type VARCHAR(10),IN spell_target_entry INT(11))
BEGIN
/**
 * DEGREE: BASIC
 * TABLES AFFECTED: creature_template, spell_script_target
 * PROCS USED: none
 *
 * Sets target requirement for spellcast
 *
 * spell_ID - ID of spell we want to set target for
 * target_type - [GO|NPC|DEAD_NPC|MINION]
 * spell_target_entry - ID of creature or gameobject
 * 
 * ex: CALL `sp_SpellScriptTarget` (4444,'NPC',257); -- allows spell 4444 to be cast only on living creature with `creature_template`.`entry` = 257
 */
    DECLARE Check_entry INT;
    SET Check_entry = (SELECT COUNT(entry) FROM `creature_template` WHERE `entry`=spell_target_entry)+(SELECT COUNT(entry) FROM `gameobject_template` WHERE `entry`=spell_target_entry);
    CASE UCASE(target_type) AND check_entry
        WHEN 'GO' AND 1 THEN BEGIN
            DELETE FROM `spell_script_target` WHERE `entry`=spell_ID;
            INSERT INTO `spell_script_target` VALUES (spell_ID,0,spell_target_entry);
        END;
        WHEN 'NPC' AND 1 THEN BEGIN
            DELETE FROM `spell_script_target` WHERE `entry`=spell_ID;
            INSERT INTO `spell_script_target` VALUES (spell_ID,1,spell_target_entry);
        END;
        WHEN 'DEAD_NPC' AND 1 THEN BEGIN
            DELETE FROM `spell_script_target` WHERE `entry`=spell_ID;
            INSERT INTO `spell_script_target` VALUES (spell_ID,2,spell_target_entry);
        END;
        WHEN 'MINION' AND 1 THEN BEGIN
            DELETE FROM `spell_script_target` WHERE `entry`=spell_ID;
            INSERT INTO `spell_script_target` VALUES (spell_ID,3,spell_target_entry);
        END;
        ELSE CALL INCORRECT_TARGET_TYPE_OR_ENTRY();
    END CASE;
END //
DELIMITER ;
-- `sp_TriggerSettings`
DELIMITER //
CREATE PROCEDURE `sp_TriggerSettings` (creature_entry INTEGER)
BEGIN
/**
 * DEGREE: BASIC
 * TABLES AFFECTED: creature, creature_template
 * PROCS USED: none
 *
 * Sets NPC as a trigger (disable movements, ignore aggro, and disable targetting)
 *
 * creature_entry - Entry of the npc for whom template is updated
 *
 * ex: CALL `sp_tdb_TriggerSettings` (257); -- sets creature having `creature_template`.`entry` = 257 to act as trigger
 */
    DECLARE Check_entry INT;
    SET Check_entry = (SELECT COUNT(entry) FROM `creature_template` WHERE `entry`= creature_entry);
    CASE Check_entry
        WHEN 1 THEN BEGIN
            UPDATE `creature` SET `spawndist`=0,`MovementType`=0 WHERE `id`= creature_entry;
            UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2,`unit_flags`=`unit_flags`|33554432  WHERE `entry`= creature_entry;
        END;
        ELSE CALL INVALID_CREATURE_ENTRY();
    END CASE;
END //
DELIMITER ;
-- -------------------- --
--  AVERAGE PROCEDURES  --
-- -------------------- --
-- `sp_eai_KillCreditOnSpellhit`
DELIMITER //
CREATE PROCEDURE `sp_eai_KillCreditOnSpellhit` (IN creature_entry INT(10), spell_ID MEDIUMINT(6), trigger_ID INT(10), despawn_time INT(10))
BEGIN
/**
 * DEGREE: AVERAGE
 * TABLES AFFECT: creature_template, creature_ai_scripts
 * PROCS USED: sp_CheckNpcEntry, sp_CheckTriggerId, sp_eai_selectID
 *
 * Create eAI script for NPC to give credit on spellhit
 *
 * spell_ID - ID of spell we want to set target for
 * creature_entry - ID of NPC from `creature_template`.`entry`
 * trigger_id - ID of trigger NPC that needs to be killed for quest objective
 * despawn_time - time before NPC despawns in miliseconds
 * 
 * ex: CALL `sp_tdb_eai_KillCreditOnSpellhit` (257,4444,1235,10000); -- Creature of ID 257 when hit with spell of ID 4444 will give credit for killing NPC of ID 1235 and will then despawn after 10 seconds
 */
    CALL `sp_CheckNpcEntry` (creature_entry);
    CALL `sp_CheckTriggerId` (trigger_ID);
    UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry`=creature_entry; -- enable eAI
    -- EAI reacting on spellhit, gives credit for kill and despawns
        CALL `sp_eai_selectID` (creature_entry, @event_id);
    INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
        (@event_id,creature_entry,8,0,100,1,spell_ID,-1,0,0,33,trigger_ID,6,0,23,1,0,0,0,0,0,0, 'Stored procedures eAI: quest - kill trigger on spellcast');
    INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
        (@event_id+1,creature_entry,1,1,100,0,despawn_time,despawn_time,despawn_time,despawn_time,41,0,0,0,0,0,0,0,0,0,0,0, 'Stored procedures eAI: despawn after defined time');
END //
DELIMITER ;
-- `sp_eai_CastSpellOnSpawn`
DELIMITER //
CREATE PROCEDURE `sp_eai_CastSpellOnSpawn` (IN creature_entry INT(10), spell_ID MEDIUMINT(6))
BEGIN
/**
 * DEGREE: AVERAGE
 * TABLES AFFECT: creature_template, creature_ai_scripts
 * PROCS USED: sp_CheckNpcEntry, sp_tdb_eai_selectID
 *
 * Create eAI script for NPC to cast spell on self upon spawn
 *
 * spell_ID - ID of spell we want to set target for
 * creature_entry - ID of NPC from `creature_template`.`entry`
 * 
 * ex: CALL `sp_eai_CastSpellOnSpawn` (257,4444); -- Creature of ID 257 (Kobold Worker) will cast spell of ID 4444 on self when spawned
 */
    CALL `sp_CheckNpcEntry` (creature_entry);
    UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry`=creature_entry; -- enable eAI
   CALL `sp_eai_selectID` (creature_entry, @event_id);
   INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
        (@event_id,creature_entry,11,0,100,0,0,0,0,0,11,spell_ID,0,0,0,0,0,0,0,0,0,0, 'Stored procedures eAI: NPC cast spell on self');
END //
DELIMITER ;
-- `sp_QuestRelations`
DELIMITER //
CREATE PROCEDURE `sp_QuestRelations`(IN creature_or_go_entry INT(10), IN switch_give_take VARCHAR(10), IN quest_entry INT(10), IN entry_type VARCHAR(10))
BEGIN
/**
 * DEGREE: AVERAGE
 * TABLES AFFECTED: creature_questrelation AND creature_involvedrelation OR gameobject_questrelation AND gameobject_involvedrelation
 * PROCS USED: sp_CheckNPCOrGO, sp_CheckQuestEntry,
 *
 * Setup quest relations for either gameobject or NPC
 *
 * creature_or_go_entry - ID of NPC from `creature_template`.`entry` OR GameObject from `gameobject_template`
 * entry_type: ["GO"|"NPC"] - switch between creature and gameobject being quest-giver / quest-taker
 * quest_entry - entry of quest from quest_template
 * switch_give_take: ["QGIVER"|"QTAKER"|"BOTH"] - defines if NPC / GO will only give quest / take quest / do both
 *
 * ex: CALL `sp_QuestRelations` (253, "QTAKER",12, "NPC"); -- makes William Pestle (257) be NPC ending quest (12) The People's Militia
 */
CALL `sp_CheckNPCOrGO`(creature_or_go_entry,entry_type);
CALL `sp_CheckQuestEntry`(quest_entry);
                CASE UCASE(switch_give_take) AND UCASE(entry_type)
                        WHEN "QGIVER" AND "GO" THEN BEGIN
DELETE FROM `gameobject_questrelation` WHERE `id`=creature_or_go_entry;
INSERT INTO `gameobject_questrelation` VALUES (creature_or_go_entry, quest_entry);
                        END;
                        WHEN "QTAKER" AND "GO" THEN BEGIN
DELETE FROM `gameobject_involvedrelation` WHERE `id`=creature_or_go_entry;
INSERT INTO `gameobject_involvedrelation` VALUES (creature_or_go_entry, quest_entry);
                        END;
                        WHEN "BOTH" AND "GO" THEN BEGIN
DELETE FROM `gameobject_questrelation` WHERE `id`=creature_or_go_entry;
DELETE FROM `gameobject_involvedrelation` WHERE `id`=creature_or_go_entry;
INSERT INTO `gameobject_questrelation` VALUES (creature_or_go_entry, quest_entry);
INSERT INTO `gameobject_involvedrelation` VALUES (creature_or_go_entry, quest_entry);
                        END;
                        WHEN "QGIVER" AND "NPC" THEN BEGIN
DELETE FROM `creature_questrelation` WHERE `id`=creature_or_go_entry;
INSERT INTO `creature_questrelation` VALUES (creature_or_go_entry, quest_entry);
                        END;
                        WHEN "QTAKER" AND "NPC" THEN BEGIN
DELETE FROM `creature_involvedrelation` WHERE `id`=creature_or_go_entry;
INSERT INTO `creature_involvedrelation` VALUES (creature_or_go_entry, quest_entry);
                        END;
                        WHEN "BOTH" AND "NPC" THEN BEGIN
DELETE FROM `creature_questrelation` WHERE `id`=creature_or_go_entry;
DELETE FROM `creature_involvedrelation` WHERE `id`=creature_or_go_entry;
INSERT INTO `creature_questrelation` VALUES (creature_or_go_entry, quest_entry);
INSERT INTO `creature_involvedrelation` VALUES (creature_or_go_entry, quest_entry);
                        END;
                        ELSE CALL INCORRECT_VALUES_IN_PROCEDURE();
                        END CASE;
END //
DELIMITER ;
-- `sp_SetLootIdByList`
DELIMITER //
CREATE PROCEDURE `sp_SetLootIdByList` (IN entryList TEXT,IN lootID MEDIUMINT(5))
BEGIN    
/**
 * DEGREE: AVERAGE
 * TABLES AFFECTED: creature_template, tdb_entry_list (temp)
 * PROCS USED: sp_GetEntryList
 *
 * Sets the loot id of a specified NPC
 *
 * npcEntry - Entry of the npc whose lootid you would like to set
 * loot - NULLABLE. If provided, set the specified NPC's lootid to this value. If NULL, NPC uses its own entry.
 * 
 * ex: CALL `sp_SetLootIdByList` ('1,2,3,4,5','99999'); -- sets the loot id of 5 specified npcs to 99999
 */
    CALL `sp_GetEntryList` (entryList);
    UPDATE `creature_template` SET `lootid`=IFNULL(lootID,`entry`) WHERE `entry` IN (SELECT DISTINCT * FROM `tdb_entry_list`);
    
    DROP TEMPORARY TABLE `tdb_entry_list`; -- dont forget the cleanup!
END//
DELIMITER ;
-- `sp_eai_KillCreditOnDeath`
DELIMITER //
CREATE PROCEDURE `sp_eai_KillCreditOnDeath` (IN creature_entry INT(10), trigger_ID INT(10))
BEGIN
/**
 * DEGREE: AVERAGE
 * TABLES AFFECT: creature_template, creature_ai_scripts
 * PROCS USED: sp_CheckNpcEntry, sp_eai_selectID
 *
 * Create eAI script for NPC to give credit on death
 *
 * creature_entry - ID of NPC from `creature_template`.`entry`
 * trigger_id - ID of trigger NPC that needs to be killed for quest objective
 * 
 * ex: CALL `sp_eai_KillCreditOnDeath` (46,257); -- NPC of ID 46 (Murloc Forager) when killed will give credit for killing NPC with ID 257 (Kobold Worker)
 */
    CALL `sp_CheckNpcEntry` (creature_entry);
    UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry`=creature_entry; -- enable eAI
    -- EAI reacting on spellhit, gives credit for kill and despawns
    CALL `sp_eai_selectID` (creature_entry, @event_id);
    INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
        (@event_id,creature_entry,6,0,100,0,0,0,0,0,33,trigger_ID,6,0,23,1,0,0,0,0,0,0, 'Stored procedures eAI: quest - kill trigger on NPC death');
END //
DELIMITER ;
-- `sp_eAI_SpawnOnSpellhit`
DELIMITER //
/**
 * DEGREE: AVERAGE
 * TABLES AFFECT: creature_template, creature_ai_scripts
 * PROCS USED: sp_CheckNpcEntry, sp_eai_selectID
 *
 * Create eAI script for NPC to summon another NPC upon spellhit
 *
 * creature_entry - ID of NPC from `creature_template`.`entry`
 * spawn_id - creature that will be spawned at current location of NPC
 * spell_ID - ID of spell which will run the event
 * despawn_time - time after which summoned mob despawns in miliseconds
 * 
 * ex: CALL `sp_eAI_SpawnOnSpellhit` (1234,4444,1235,100000);
 */
CREATE PROCEDURE `sp_eAI_SpawnOnSpellhit` (IN creature_entry INT(10), IN spell_ID MEDIUMINT(6), IN spawn_id INT(10), IN despawn_time INT(10))
BEGIN
    CALL `sp_CheckNpcEntry` (creature_entry);
    UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry`=creature_entry; -- enable eAI
    CALL `sp_eai_selectID` (creature_entry, @event_id); -- select event ID
    INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
        (@event_id,creature_entry,8,0,100,1,spell_ID,-1,0,0,32,spawn_id,6,0,41,0,0,0,0,0,0,0, 'Stored procedures eAI: quest - summon mob on spellcast');
    INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
        (@event_id+1,spawn_id,1,1,100,0,despawn_time,despawn_time,despawn_time,despawn_time,41,0,0,0,0,0,0,0,0,0,0,0, 'Stored procedures eAI: despawn after defined time');
END //
DELIMITER ;
