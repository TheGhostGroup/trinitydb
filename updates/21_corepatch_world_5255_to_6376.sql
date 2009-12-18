-- 5410_world_sql_dbc.sql
DROP TABLE IF EXISTS `spell_dbc`;
CREATE TABLE `spell_dbc` (
	`Id` INT UNSIGNED NOT NULL,
	`Dispel` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`Mechanic` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`Attributes` INT UNSIGNED NOT NULL DEFAULT 0,
	`AttributesEx` INT UNSIGNED NOT NULL DEFAULT 0,
	`AttributesEx2` INT UNSIGNED NOT NULL DEFAULT 0,
	`AttributesEx3` INT UNSIGNED NOT NULL DEFAULT 0,
	`AttributesEx4` INT UNSIGNED NOT NULL DEFAULT 0,
	`AttributesEx5` INT UNSIGNED NOT NULL DEFAULT 0,
	`Targets` INT UNSIGNED NOT NULL DEFAULT 0,
	`CastingTimeIndex` TINYINT UNSIGNED NOT NULL DEFAULT 1,
	`AuraInterruptFlags` INT UNSIGNED NOT NULL DEFAULT 0,
	`ProcFlags` INT UNSIGNED NOT NULL DEFAULT 0,
	`ProcChance` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`ProcCharges` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`MaxLevel` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`BaseLevel` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`SpellLevel` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`DurationIndex` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
	`RangeIndex` TINYINT UNSIGNED NOT NULL DEFAULT 1,
	`StackAmount` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`EquippedItemClass` INT NOT NULL DEFAULT -1,
	`EquippedItemSubClassMask` INT NOT NULL DEFAULT 0 DEFAULT 0,
	`EquippedItemInventoryTypeMask` INT NOT NULL DEFAULT 0 DEFAULT 0,
	`Effect1` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`Effect2` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`Effect3` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`EffectDieSides1` INT NOT NULL DEFAULT 0,
	`EffectDieSides2` INT NOT NULL DEFAULT 0,
	`EffectDieSides3` INT NOT NULL DEFAULT 0,
	`EffectBaseDice1` INT NOT NULL DEFAULT 0,
	`EffectBaseDice2` INT NOT NULL DEFAULT 0,
	`EffectBaseDice3` INT NOT NULL DEFAULT 0,
	`EffectDicePerLevel1` FLOAT NOT NULL DEFAULT 0,
	`EffectDicePerLevel2` FLOAT NOT NULL DEFAULT 0,
	`EffectDicePerLevel3` FLOAT NOT NULL DEFAULT 0,
	`EffectRealPointsPerLevel1` FLOAT NOT NULL DEFAULT 0,
	`EffectRealPointsPerLevel2` FLOAT NOT NULL DEFAULT 0,
	`EffectRealPointsPerLevel3` FLOAT NOT NULL DEFAULT 0,
	`EffectBasePoints1` INT NOT NULL DEFAULT 0,
	`EffectBasePoints2` INT NOT NULL DEFAULT 0,
	`EffectBasePoints3` INT NOT NULL DEFAULT 0,
	`EffectMechanic1` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`EffectMechanic2` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`EffectMechanic3` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`EffectImplicitTargetA1` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`EffectImplicitTargetA2` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`EffectImplicitTargetA3` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`EffectImplicitTargetB1` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`EffectImplicitTargetB2` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`EffectImplicitTargetB3` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`EffectRadiusIndex1` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`EffectRadiusIndex2` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`EffectRadiusIndex3` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`EffectApplyAuraName1` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
	`EffectApplyAuraName2` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
	`EffectApplyAuraName3` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
	`EffectAmplitude1` INT NOT NULL DEFAULT 0,
	`EffectAmplitude2` INT NOT NULL DEFAULT 0,
	`EffectAmplitude3` INT NOT NULL DEFAULT 0,
	`EffectMultipleValue1` FLOAT NOT NULL DEFAULT 0,
	`EffectMultipleValue2` FLOAT NOT NULL DEFAULT 0,
	`EffectMultipleValue3` FLOAT NOT NULL DEFAULT 0,
	`EffectMiscValue1` INT NOT NULL DEFAULT 0,
	`EffectMiscValue2` INT NOT NULL DEFAULT 0,
	`EffectMiscValue3` INT NOT NULL DEFAULT 0,
	`EffectMiscValueB1` INT NOT NULL DEFAULT 0,
	`EffectMiscValueB2` INT NOT NULL DEFAULT 0,
	`EffectMiscValueB3` INT NOT NULL DEFAULT 0,
	`EffectTriggerSpell1` INT UNSIGNED NOT NULL DEFAULT 0,
	`EffectTriggerSpell2` INT UNSIGNED NOT NULL DEFAULT 0,
	`EffectTriggerSpell3` INT UNSIGNED NOT NULL DEFAULT 0,
	`EffectSpellClassMaskA1` INT UNSIGNED NOT NULL DEFAULT 0,
	`EffectSpellClassMaskA2` INT UNSIGNED NOT NULL DEFAULT 0,
	`EffectSpellClassMaskA3` INT UNSIGNED NOT NULL DEFAULT 0,
	`EffectSpellClassMaskB1` INT UNSIGNED NOT NULL DEFAULT 0,
	`EffectSpellClassMaskB2` INT UNSIGNED NOT NULL DEFAULT 0,
	`EffectSpellClassMaskB3` INT UNSIGNED NOT NULL DEFAULT 0,
	`EffectSpellClassMaskC1` INT UNSIGNED NOT NULL DEFAULT 0,
	`EffectSpellClassMaskC2` INT UNSIGNED NOT NULL DEFAULT 0,
	`EffectSpellClassMaskC3` INT UNSIGNED NOT NULL DEFAULT 0,
	`MaxTargetLevel` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`SpellFamilyName` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`SpellFamilyFlags1` INT UNSIGNED NOT NULL DEFAULT 0,
	`SpellFamilyFlags2` INT UNSIGNED NOT NULL DEFAULT 0,
	`SpellFamilyFlags3` INT UNSIGNED NOT NULL DEFAULT 0,
	`MaxAffectedTargets` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`DmgClass` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`PreventionType` TINYINT UNSIGNED NOT NULL DEFAULT 0,
	`DmgMultiplier1` FLOAT NOT NULL DEFAULT 0,
	`DmgMultiplier2` FLOAT NOT NULL DEFAULT 0,
	`DmgMultiplier3` FLOAT NOT NULL DEFAULT 0,
	`AreaGroupId` INT NOT NULL DEFAULT 0,
	`SchoolMask` INT UNSIGNED NOT NULL DEFAULT 0,
	`Comment` TEXT NOT NULL,
	PRIMARY KEY (`id`)
)ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Custom spell.dbc entries';



-- 5595_world_script_text.sql THIS CAN BE DONE WITH ADD COLUMN I THINK
DROP TABLE IF EXISTS `script_texts`;
CREATE TABLE `script_texts` (
  `npc_entry` mediumint(8) NOT NULL default '0' COMMENT 'creature_template entry',
  `entry` mediumint(8) NOT NULL,
  `content_default` text NOT NULL,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  `content_loc8` text,
  `sound` mediumint(8) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  `language` tinyint(3) unsigned NOT NULL default '0',
  `emote` smallint(5) unsigned NOT NULL default '0',
  `comment` text,
  PRIMARY KEY  (`npc_entry`,`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Script Texts';



-- 5628_world_8451_01_mangos_spell_proc_event.sql (Typo, check original in core repo and rename it)
ALTER TABLE creature_ai_texts CHANGE emote emote smallint(5) unsigned NOT NULL default '0';



-- 5696_world.sql
ALTER TABLE `creature_addon`
    ADD `path_id` int(11) unsigned NOT NULL default '0' AFTER `guid`;
ALTER TABLE `creature_template_addon`
    ADD `path_id` int(11) unsigned NOT NULL default '0' AFTER `entry`;
ALTER TABLE `waypoint_data` ADD COLUMN `id_old` int(10) unsigned NOT NULL default '0' COMMENT 'Creature GUID' AFTER `wpguid`;

UPDATE `waypoint_data` SET `id_old`=`id`*0.1;
REPLACE INTO `creature_addon` ( `guid` ) SELECT `id_old` FROM `waypoint_data`;
UPDATE `creature_addon`,`waypoint_data` SET `creature_addon`.`path_id` = `waypoint_data`.`id` WHERE `creature_addon`.`guid`=`waypoint_data`.`id_old`;

ALTER TABLE `waypoint_data` DROP COLUMN `id_old`;



-- 5717_world.sql
ALTER TABLE `item_template` MODIFY `stackable` int;
ALTER TABLE `creature_template` CHANGE COLUMN `modelid_A` `modelid1` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `creature_template` CHANGE COLUMN `modelid_A2` `modelid2` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `creature_template` CHANGE COLUMN `modelid_H` `modelid3` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `creature_template` CHANGE COLUMN `modelid_H2` `modelid4` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;



-- 6097_world_loot_template.sql
-- Currently utilized in the following tables (1 = default, 0 = disabled)
ALTER TABLE `creature_loot_template` ADD COLUMN `lootmode` SMALLINT UNSIGNED NOT NULL DEFAULT 1 AFTER `ChanceOrQuestChance`;
ALTER TABLE `gameobject_loot_template` ADD COLUMN `lootmode` SMALLINT UNSIGNED NOT NULL DEFAULT 1 AFTER `ChanceOrQuestChance`;
ALTER TABLE `reference_loot_template` ADD COLUMN `lootmode` SMALLINT UNSIGNED NOT NULL DEFAULT 1 AFTER `ChanceOrQuestChance`;
-- Currently not utilized in the following tables (1 = enabled, any other value = disabled)
ALTER TABLE `fishing_loot_template` ADD COLUMN `lootmode` SMALLINT UNSIGNED NOT NULL DEFAULT 1 AFTER `ChanceOrQuestChance`;
ALTER TABLE `disenchant_loot_template` ADD COLUMN `lootmode` SMALLINT UNSIGNED NOT NULL DEFAULT 1 AFTER `ChanceOrQuestChance`;
ALTER TABLE `item_loot_template` ADD COLUMN `lootmode` SMALLINT UNSIGNED NOT NULL DEFAULT 1 AFTER `ChanceOrQuestChance`;
ALTER TABLE `milling_loot_template` ADD COLUMN `lootmode` SMALLINT UNSIGNED NOT NULL DEFAULT 1 AFTER `ChanceOrQuestChance`;
ALTER TABLE `pickpocketing_loot_template` ADD COLUMN `lootmode` SMALLINT UNSIGNED NOT NULL DEFAULT 1 AFTER `ChanceOrQuestChance`;
ALTER TABLE `prospecting_loot_template` ADD COLUMN `lootmode` SMALLINT UNSIGNED NOT NULL DEFAULT 1 AFTER `ChanceOrQuestChance`;
ALTER TABLE `skinning_loot_template` ADD COLUMN `lootmode` SMALLINT UNSIGNED NOT NULL DEFAULT 1 AFTER `ChanceOrQuestChance`;
ALTER TABLE `quest_mail_loot_template` ADD COLUMN `lootmode` SMALLINT UNSIGNED NOT NULL DEFAULT 1 AFTER `ChanceOrQuestChance`;



-- 6110_world_loot_template.sql
ALTER TABLE `spell_loot_template` ADD COLUMN `lootmode` SMALLINT UNSIGNED NOT NULL DEFAULT 1 AFTER `ChanceOrQuestChance`;



-- 6156_world.sql
-- the (4) in TINYINT(4) is kind of useless here, but whatever. This column should be unsigned.
ALTER TABLE `exploration_basexp` MODIFY COLUMN `level` TINYINT(4) UNSIGNED NOT NULL DEFAULT 0;



-- 6241_world_quest_template.sql
-- Change column QuestLevel to allowed -1 value.
ALTER TABLE `quest_template` CHANGE `QuestLevel` `QuestLeveltemp` INT(8);
ALTER TABLE `quest_template` ADD `QuestLevel` SMALLINT(3) AFTER `QuestLeveltemp`;
UPDATE `quest_template` SET `QuestLevel` = `QuestLeveltemp`;
ALTER TABLE `quest_template` DROP `QuestLeveltemp`;

-- 6374_world.sql
ALTER TABLE `creature_template` ADD `questItem5` int(11) UNSIGNED NOT NULL DEFAULT 0 AFTER `questItem4`;
ALTER TABLE `creature_template` ADD `questItem6` int(11) UNSIGNED NOT NULL DEFAULT 0 AFTER `questItem5`;
ALTER TABLE `gameobject_template` ADD `questItem5` int(11) UNSIGNED NOT NULL DEFAULT 0 AFTER `questItem4`;
ALTER TABLE `gameobject_template` ADD `questItem6` int(11) UNSIGNED NOT NULL DEFAULT 0 AFTER `questItem5`;
