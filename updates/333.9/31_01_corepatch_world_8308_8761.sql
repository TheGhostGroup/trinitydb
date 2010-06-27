-- ----------- --
-- TrinityCore --
-- ----------- --

-- 8312_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (71519,71562);
INSERT INTO `spell_proc_event` (`entry`, `Cooldown`) VALUES
(71519, 105),
(71562, 105);

-- 8313_world_spell_bonus_data.sql
DELETE FROM `spell_bonus_data` WHERE `entry` = 25997;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (25997, 0, 0, 0, 0, 'Paladin - Eye for an Eye');

-- 8315_world_spell_bonus_data.sql
DELETE FROM `spell_bonus_data` WHERE `entry` = 20267;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (20267, 0, 0, 0, 0, 'Paladin - Judgement of Light Proc');

-- 8316_world_spell_bonus_data.sql
DELETE FROM `spell_bonus_data` WHERE `entry` IN (59638, 59637);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(59638, 0.3, -1, 0, -1, 'Mage - Mirror Image Frostbolt'),
(59637, 0.3, -1, 0, -1, 'Mage - Mirror Image Fire Blast');

-- 8318_world_spell_bonus_data.sql
DELETE FROM `spell_bonus_data` WHERE `entry`=59637;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (59637, 0.15, -1, 0, -1, 'Mage - Mirror Image Fire Blast');

-- 8319_world_spell_linked_spell.sql
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=50720;

-- 8330_world_playercreateinfo_spell.sql
DELETE FROM `playercreateinfo_spell` WHERE `Spell`=75461;
INSERT INTO `playercreateinfo_spell` VALUES (0,7,75461,'Flame Shock Passive');

-- 8352_world_spell_linked_spell.sql
DELETE FROM `spell_linked_spell` WHERE `spell_effect` IN (52418, -52418);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(52415, 52418, 0, 'Carrying Seaforium - Add'),
(52410, -52418, 0, 'Carrying Seaforium - Remove');

-- 8358_world_spell_linked_spell.sql
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (69381,69378,69377);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES 
(69381, 72588, 1, 'Drums of the Wild'),
(69378, 72586, 1, 'Drums of the Forgotten Kings'),
(69377, 72590, 1, 'Runescroll of Fortitude');

-- 8361_world_trinity_string.sql
DELETE FROM `trinity_string` WHERE `entry` BETWEEN 10056 AND 10073;
INSERT INTO `trinity_string` VALUES
(10056,'The battle for Strand of the Ancients begins in 2 minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10057,'The battle for Strand of the Ancients begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10058,'The battle for Strand of the Ancients begins in 30 seconds. Prepare yourselves!.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10059,'Let the battle for Strand of the Ancients begin!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10060,'The %s is under attack!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10061,'The %s was destroyed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10062,'Round 1 -  finished!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10063,'The Alliance captured the titan portal!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10064,'The Horde captured the titan portal!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10065,'Round 2 of the Battle for the Strand of the Ancients begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10066,'Round 2 begins in 30 seconds. Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10067,'The chamber has been breached! The titan relic is vulnerable!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10068,'The Alliance captured the South Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10069,'The Alliance captured the West Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10070,'The Alliance captured the East Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10071,'The Horde captured the South Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10072,'The Horde captured the West Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10073,'The Horde captured the East Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 8371_world_spell_bonus_data.sql
DELETE FROM `spell_bonus_data` WHERE `entry` IN (56131,56160,52725,55533);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(56131, 0, 0, 0, 0, 'Priest - Glyph of Dispel Magic'),
(56160, 0, 0, 0, 0, 'Priest - Glyph of Power Word: Shield'),
(52752, 0, 0, 0, 0, 'Ancestral Awakening'),
(55533, 0, 0, 0, 0, 'Shaman - Glyph of Healing Wave');

-- 8372_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (57870);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
( 57870, 0x00,   9, 0x00800000, 0x00000000, 0x00000000, 0x00040000, 0x00000000,   0,   0,   0); -- Glyph of Mend Pet

-- 8373_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (70807);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES 
( 70807,    0,  11, 0x00000000, 0x00000000, 0x00000010, 0x00000000, 0x00000000,   0, 100,   0); -- Item - Shaman T10 Restoration 2P Bonus

-- 8374_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (67667);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
( 67667, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00004000, 0x00000000,   0,   0,  45); -- Item - Coliseum Healer Trinket 5men

-- 8375_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (67672,67670,67653);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
( 67672, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00800154, 0x00000000,   0,   0,  45), -- Item - Coliseum Melee Trinket 5men
( 67670, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00000000,   0,   0,  45), -- Item - Coliseum Caster Trinket 5men
( 67653, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00400028, 0x00000000,   0,   0,  45); -- Item - Coliseum Tank Trinket 5men

-- 8391_world_conditions.sql
DROP TABLE IF EXISTS `conditions`;
CREATE TABLE `conditions` (
  `SourceTypeOrReferenceId` mediumint(8) NOT NULL DEFAULT '0',
  `SourceGroup` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `SourceEntry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ElseGroup` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ConditionTypeOrReference` mediumint(8) NOT NULL DEFAULT '0',
  `ConditionValue1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ConditionValue2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ConditionValue3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ErrorTextId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Condition System';
-- convert loot conditions
INSERT INTO conditions (SourceTypeOrReferenceId,SourceGroup,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2) SELECT 1,creature_loot_template.entry,creature_loot_template.item,creature_loot_template.lootcondition,creature_loot_template.condition_value1,creature_loot_template.condition_value2 FROM creature_loot_template WHERE creature_loot_template.lootcondition>0;
INSERT INTO conditions (SourceTypeOrReferenceId,SourceGroup,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2) SELECT 2,disenchant_loot_template.entry,disenchant_loot_template.item,disenchant_loot_template.lootcondition,disenchant_loot_template.condition_value1,disenchant_loot_template.condition_value2 FROM disenchant_loot_template WHERE disenchant_loot_template.lootcondition>0;
INSERT INTO conditions (SourceTypeOrReferenceId,SourceGroup,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2) SELECT 3,fishing_loot_template.entry,fishing_loot_template.item,fishing_loot_template.lootcondition,fishing_loot_template.condition_value1,fishing_loot_template.condition_value2 FROM fishing_loot_template WHERE fishing_loot_template.lootcondition>0;
INSERT INTO conditions (SourceTypeOrReferenceId,SourceGroup,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2) SELECT 4,gameobject_loot_template.entry,gameobject_loot_template.item,gameobject_loot_template.lootcondition,gameobject_loot_template.condition_value1,gameobject_loot_template.condition_value2 FROM gameobject_loot_template WHERE gameobject_loot_template.lootcondition>0;
INSERT INTO conditions (SourceTypeOrReferenceId,SourceGroup,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2) SELECT 5,item_loot_template.entry,item_loot_template.item,item_loot_template.lootcondition,item_loot_template.condition_value1,item_loot_template.condition_value2 FROM item_loot_template WHERE item_loot_template.lootcondition>0;
INSERT INTO conditions (SourceTypeOrReferenceId,SourceGroup,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2) SELECT 6,mail_loot_template.entry,mail_loot_template.item,mail_loot_template.lootcondition,mail_loot_template.condition_value1,mail_loot_template.condition_value2 FROM mail_loot_template WHERE mail_loot_template.lootcondition>0;
INSERT INTO conditions (SourceTypeOrReferenceId,SourceGroup,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2) SELECT 7,milling_loot_template.entry,milling_loot_template.item,milling_loot_template.lootcondition,milling_loot_template.condition_value1,milling_loot_template.condition_value2 FROM milling_loot_template WHERE milling_loot_template.lootcondition>0;
INSERT INTO conditions (SourceTypeOrReferenceId,SourceGroup,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2) SELECT 8,pickpocketing_loot_template.entry,pickpocketing_loot_template.item,pickpocketing_loot_template.lootcondition,pickpocketing_loot_template.condition_value1,pickpocketing_loot_template.condition_value2 FROM pickpocketing_loot_template WHERE pickpocketing_loot_template.lootcondition>0;
INSERT INTO conditions (SourceTypeOrReferenceId,SourceGroup,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2) SELECT 9,prospecting_loot_template.entry,prospecting_loot_template.item,prospecting_loot_template.lootcondition,prospecting_loot_template.condition_value1,prospecting_loot_template.condition_value2 FROM prospecting_loot_template WHERE prospecting_loot_template.lootcondition>0;
INSERT INTO conditions (SourceTypeOrReferenceId,SourceGroup,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2) SELECT 10,reference_loot_template.entry,reference_loot_template.item,reference_loot_template.lootcondition,reference_loot_template.condition_value1,reference_loot_template.condition_value2 FROM reference_loot_template WHERE reference_loot_template.lootcondition>0;
INSERT INTO conditions (SourceTypeOrReferenceId,SourceGroup,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2) SELECT 11,skinning_loot_template.entry,skinning_loot_template.item,skinning_loot_template.lootcondition,skinning_loot_template.condition_value1,skinning_loot_template.condition_value2 FROM skinning_loot_template WHERE skinning_loot_template.lootcondition>0;
INSERT INTO conditions (SourceTypeOrReferenceId,SourceGroup,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2) SELECT 12,spell_loot_template.entry,spell_loot_template.item,spell_loot_template.lootcondition,spell_loot_template.condition_value1,spell_loot_template.condition_value2 FROM spell_loot_template WHERE spell_loot_template.lootcondition>0;
-- convert spell script targets
INSERT INTO conditions (SourceTypeOrReferenceId,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2) SELECT 13,spell_script_target.entry,18,spell_script_target.type,spell_script_target.targetEntry FROM spell_script_target;
-- convert gossip menu conditions
INSERT INTO conditions (SourceTypeOrReferenceId,SourceGroup,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2) SELECT 14,gossip_menu.entry,gossip_menu.text_id,gossip_menu.cond_1,gossip_menu.cond_1_val_1,gossip_menu.cond_1_val_2 FROM gossip_menu WHERE gossip_menu.cond_1>0;
INSERT INTO conditions (SourceTypeOrReferenceId,SourceGroup,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2) SELECT 14,gossip_menu.entry,gossip_menu.text_id,gossip_menu.cond_2,gossip_menu.cond_2_val_1,gossip_menu.cond_2_val_2 FROM gossip_menu WHERE gossip_menu.cond_2>0;
-- convert gossip menu options conditions
INSERT INTO conditions (SourceTypeOrReferenceId,SourceGroup,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2) SELECT 15,gossip_menu_option.menu_id,gossip_menu_option.id,gossip_menu_option.cond_1,gossip_menu_option.cond_1_val_1,gossip_menu_option.cond_1_val_2 FROM gossip_menu_option WHERE gossip_menu_option.cond_1>0;
INSERT INTO conditions (SourceTypeOrReferenceId,SourceGroup,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2) SELECT 15,gossip_menu_option.menu_id,gossip_menu_option.id,gossip_menu_option.cond_2,gossip_menu_option.cond_2_val_1,gossip_menu_option.cond_2_val_2 FROM gossip_menu_option WHERE gossip_menu_option.cond_2>0;
INSERT INTO conditions (SourceTypeOrReferenceId,SourceGroup,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2) SELECT 15,gossip_menu_option.menu_id,gossip_menu_option.id,gossip_menu_option.cond_3,gossip_menu_option.cond_3_val_1,gossip_menu_option.cond_3_val_2 FROM gossip_menu_option WHERE gossip_menu_option.cond_3>0;
-- convert item required target
INSERT INTO conditions (SourceTypeOrReferenceId,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2) SELECT 18,item_required_target.entry,24,item_required_target.type,item_required_target.targetEntry FROM item_required_target;
-- drop no more needed condition fields
-- drop not used loot conditions
ALTER TABLE creature_loot_template DROP COLUMN lootcondition,DROP COLUMN condition_value1,DROP COLUMN condition_value2;
ALTER TABLE disenchant_loot_template DROP COLUMN lootcondition,DROP COLUMN condition_value1,DROP COLUMN condition_value2;
ALTER TABLE fishing_loot_template DROP COLUMN lootcondition,DROP COLUMN condition_value1,DROP COLUMN condition_value2;
ALTER TABLE gameobject_loot_template DROP COLUMN lootcondition,DROP COLUMN condition_value1,DROP COLUMN condition_value2;
ALTER TABLE item_loot_template DROP COLUMN lootcondition,DROP COLUMN condition_value1,DROP COLUMN condition_value2;
ALTER TABLE mail_loot_template DROP COLUMN lootcondition,DROP COLUMN condition_value1,DROP COLUMN condition_value2;
ALTER TABLE milling_loot_template DROP COLUMN lootcondition,DROP COLUMN condition_value1,DROP COLUMN condition_value2;
ALTER TABLE pickpocketing_loot_template DROP COLUMN lootcondition,DROP COLUMN condition_value1,DROP COLUMN condition_value2;
ALTER TABLE prospecting_loot_template DROP COLUMN lootcondition,DROP COLUMN condition_value1,DROP COLUMN condition_value2;
ALTER TABLE reference_loot_template DROP COLUMN lootcondition,DROP COLUMN condition_value1,DROP COLUMN condition_value2;
ALTER TABLE skinning_loot_template DROP COLUMN lootcondition,DROP COLUMN condition_value1,DROP COLUMN condition_value2;
ALTER TABLE spell_loot_template DROP COLUMN lootcondition,DROP COLUMN condition_value1,DROP COLUMN condition_value2;
-- drop spell_script_target table, it is built into conditions
DROP TABLE IF EXISTS `spell_script_target`;
-- drop item_required_target table, it is built into conditions
DROP TABLE IF EXISTS `item_required_target`;
-- drop not used gossip conditions
ALTER TABLE gossip_menu DROP COLUMN cond_1,DROP COLUMN cond_1_val_1,DROP COLUMN cond_1_val_2,DROP COLUMN cond_2,DROP COLUMN cond_2_val_1,DROP COLUMN cond_2_val_2;
ALTER TABLE gossip_menu_option DROP COLUMN cond_1,DROP COLUMN cond_1_val_1,DROP COLUMN cond_1_val_2,DROP COLUMN cond_2,DROP COLUMN cond_2_val_1,DROP COLUMN cond_2_val_2;

-- 8397_world_command.sql
DELETE FROM `command` WHERE `name` IN ('instance open','instance close');
INSERT INTO `command` (`name`, `security`, `help`) VALUES 
('instance open', 3, 'Syntax: .instance open mapid [normal|heroic|10normal|10heroic|25normal|25heroic]'),
('instance close', 3, 'Syntax: .instance close mapid [normal|heroic|10normal|10heroic|25normal|25heroic]');

-- 8510_world_spell_proc_event.sql
UPDATE spell_proc_event SET SpellFamilyMask0 = SpellFamilyMask0 | 0x40000000, procEx = ProcEx | 0x0000001 WHERE entry IN(53569,53576);

-- 8511_world_spell_proc_event.sql
UPDATE spell_proc_event SET procEx = 0x0 WHERE entry IN(53569,53576);

-- 8512_world_command.sql
DELETE FROM `command` WHERE `name`='reload creature_onkill_reputation';
INSERT INTO `command` VALUES 
('reload creature_onkill_reputation','3','Syntax: .reload creature_onkill_reputation\r\nReload creature_onkill_reputation table.');

-- 8565_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry`=70761;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
( 70761, 0x00,  10, 0x00000000, 0x80004000, 0x00000001, 0x00000400, 0x00000000,   0,   0,   0); -- Item - Paladin T10 Protection 4P Bonus

-- 8568_world_npc_vendor.sql
ALTER TABLE npc_vendor CHANGE COLUMN `ExtendedCost` `ExtendedCost` mediumint(8) NOT NULL default '0' COMMENT 'negative if cost must exclude normal money cost';

-- 8568_world_trinity_string.sql
DELETE FROM trinity_string WHERE entry IN (210);
INSERT INTO trinity_string VALUES
(210,'Item ''%i'' (with extended cost %i) already in vendor list.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 8575_world_command.sql
DELETE FROM command WHERE name = 'reload conditions';
INSERT INTO command (name, security, help) VALUES ('reload conditions', 3, 'Reload conditions table.');

-- 8576_world_command.sql
DELETE FROM command WHERE name = 'reload spell_script_target';

-- 8586_world_command.sql
DELETE FROM `command` WHERE `name` IN ('reload item_set_names','reload locales_item_set_name');
INSERT INTO `command` VALUES 
('reload item_set_names',3,'Syntax: .reload item_set_names\nReload item_set_names table.'),
('reload locales_item_set_name',3,'Syntax: .reload locales_item_set_name\nReload locales_item_set_name table.');

-- 8586_world_item_set_names.sql
DROP TABLE IF EXISTS `item_set_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_set_names` (
  `entry` mediumint(8) unsigned NOT NULL,
  `name` varchar(255) character set utf8 NOT NULL default '',
  `InventoryType` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

-- 8586_world_locales_item_set_name.sql
DROP TABLE IF EXISTS `locales_item_set_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locales_item_set_name` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name_loc1` varchar(100) NOT NULL DEFAULT '',
  `name_loc2` varchar(100) NOT NULL DEFAULT '',
  `name_loc3` varchar(100) NOT NULL DEFAULT '',
  `name_loc4` varchar(100) NOT NULL DEFAULT '',
  `name_loc5` varchar(100) NOT NULL DEFAULT '',
  `name_loc6` varchar(100) NOT NULL DEFAULT '',
  `name_loc7` varchar(100) NOT NULL DEFAULT '',
  `name_loc8` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

-- 8589_world_item_set_names.sql
ALTER TABLE `item_set_names` ADD COLUMN `WDBVerified` smallint(5) signed NOT NULL DEFAULT '1';

-- 8602_world_spell_proc_event.sql
UPDATE `spell_proc_event` SET `Cooldown`=30 WHERE `entry` IN (30886, 30885, 30884, 30883, 30881);

-- 8605_world_playercreateinfo_item.sql
ALTER TABLE `playercreateinfo_item` CHANGE `amount` `amount` tinyint(3) NOT NULL DEFAULT '1';

-- 8607_world_pool_creature.sql
UPDATE `pool_creature` SET `description` = `comment` WHERE `comment` <> '' AND `comment` IS NOT NULL AND (`description` = '' OR `description` IS NULL);
ALTER TABLE `pool_creature` DROP COLUMN `comment`;

-- 8607_world_pool_template.sql
UPDATE `pool_template` SET `description` = `comment` WHERE `comment` <> '' AND `comment` IS NOT NULL AND (`description` = '' OR `description` IS NULL);
ALTER TABLE `pool_template` DROP COLUMN `comment`;

-- 8625_world_pool_creature.sql
ALTER TABLE `pool_creature` DROP PRIMARY KEY, ADD PRIMARY KEY (`guid`);

-- 8625_world_pool_gameobject.sql
ALTER TABLE `pool_gameobject` DROP PRIMARY KEY, ADD PRIMARY KEY (`guid`);

-- 8625_world_pool_pool.sql
ALTER TABLE `pool_pool` DROP PRIMARY KEY, ADD PRIMARY KEY (`pool_id`);

-- 8658_world_spell_linked_spell.sql
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=20066;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(20066, -61840, 0, 'Repentance');

-- 8671_world_spell_linked_spell.sql
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (54861,55004)AND `spell_effect` IN (-23335,-23333);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(54861,-23335,0, 'Drop Flag on Nitro Boost WSG'),
(54861,-23333,0, 'Drop Flag on Nitro Boost WSG'),
(55004,-23335,0, 'Drop Flag on Nitro Boost WSG'),
(55004,-23333,0, 'Drop Flag on Nitro Boost WSG');

-- 8672_world_gossip_menu_option.sql
-- Drop forgotten fields after condition implementation
ALTER TABLE gossip_menu_option DROP COLUMN cond_3,DROP COLUMN cond_3_val_1,DROP COLUMN cond_3_val_2;

-- 8674_world_spell_dbc.sql
-- Add serverside spells place holders for future development
DELETE FROM `spell_dbc` WHERE `Id`=39616;
INSERT INTO `spell_dbc` (`Id`,`Comment`) VALUES
(39616, 'Quest 10966 reward serverside spell');

-- 8674_world_spell_linked_spell.sql
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (54861,55004)AND `spell_effect` IN (-34976);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
( 54861,-34976, 0, 'Drop Flag on Nitro Boost EOS'),
( 55004,-34976, 0, 'Drop Flag on Nitro Boost EOS');

-- 8694_world_transport_events.sql
DROP TABLE IF EXISTS `transport_events`;



-- ------------- --
-- TrinityScript --
-- ------------- --

-- 8327_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_colossus' WHERE `entry`=33237;

-- 8334_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_guardian_pavilion' WHERE `entry` IN (33543,33643);

-- 8348_world_script_texts.sql
-- Skadi the Ruthless voice
DELETE FROM `script_texts` WHERE `npc_entry`=26693;
INSERT INTO `script_texts` VALUES 
(26693,-1575004, "What mongrels dare intrude here? Look alive, my brothers! A feast for the one that brings me their heads!" ,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13497,1,0,0, "Skadi - SAY_AGGRO"),
(26693,-1575005, "Not so brash now, are you?" ,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13504,1,0,0, "Skadi - SAY_KILL_1"),
(26693,-1575006, "I'll mount your skull from the highest tower!" ,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13505,1,0,0, "Skadi - SAY_KILL_2"),
(26693,-1575007, "%s in within range of the harpoon launchers!" ,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0, "Skadi - EMOTE_RANGE"),
(26693,-1575008, "ARGH! You call that... an attack? I'll... show... aghhhh..." ,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13506,1,0,0, "Skadi - SAY_DEATH"),
(26693,-1575009, "%s in within range of the harpoon launchers!" ,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0, "Skadi - EMOTE_RANGE"),
(26693,-1575010, "You motherless knaves! Your corpses will make fine morsels for my new drake!" ,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13507,1,0,0, "Skadi - SAY_DRAKE_DEATH"),
(26693,-1575011, "Sear them to the bone!" ,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13498,1,0,0, "Skadi - SAY_DRAKE_BREATH_1"),
(26693,-1575012, "Go now! Leave nothing but ash in your wake!" ,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13499,1,0,0, "Skadi - SAY_DRAKE_BREATH_2"),
(26693,-1575013, "Cleanse our sacred halls with flame!" ,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13500,1,0,0, "Skadi - SAY_DRAKE_BREATH_3");

-- 8348_world_scriptname.sql
-- Skadi Harpoon Launchers
UPDATE `gameobject_template` SET `ScriptName`='go_harpoon_launcher' WHERE `entry` IN (192175,192176,192177);

-- 8352_world_scriptname.sql
UPDATE `gameobject_template` SET `ScriptName`='go_massive_seaforium_charge' WHERE `entry` = 190752;

-- 8638_world_scriptname.sql
update `creature_template` SET `scriptname`='mob_azure_invader' WHERE `entry`=30661; -- Azure Invader 1
update `creature_template` SET `scriptname`='mob_azure_spellbreaker' WHERE `entry`=30662; -- Azure Spellbreaker
update `creature_template` SET `scriptname`='mob_azure_binder' WHERE `entry`=30663; -- Azure Binder 1
update `creature_template` SET `scriptname`='mob_azure_mage_slayer' WHERE `entry`=30664; -- Azure Mage Slayer 1
update `creature_template` SET `scriptname`='mob_azure_captain' WHERE `entry`=30666; -- Azure Captain
update `creature_template` SET `scriptname`='mob_azure_sorceror' WHERE `entry`=30667; -- Azure Sorceror
update `creature_template` SET `scriptname`='mob_azure_raider' WHERE `entry`=30668; -- Azure Raider
update `creature_template` SET `scriptname`='mob_azure_stalker' WHERE `entry`=32191; -- Azure Stalker
update `creature_template` SET `scriptname`='mob_azure_invader' WHERE `entry`=30961; -- Azure Invader 2
update `creature_template` SET `scriptname`='mob_azure_spellbreaker' WHERE `entry`=30962; -- Azure Spellbreaker
update `creature_template` SET `scriptname`='mob_azure_binder' WHERE `entry`=30918; -- Azure Binder 2
update `creature_template` SET `scriptname`='mob_azure_mage_slayer' WHERE `entry`=30963; -- Azure Mage Sl

-- 8752_world_scriptname.sql
UPDATE `creature_template` SET `scriptname`='mob_azure_saboteur' WHERE `entry`=31079; -- Azure Saboteur
