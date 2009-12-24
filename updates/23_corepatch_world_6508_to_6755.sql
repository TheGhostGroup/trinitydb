 
-- core world SQL update 6518_world_spell_proc_event.sql
 
-- Add 20 second cooldown for Bloodworms
DELETE FROM `spell_proc_event` WHERE `entry` IN (49027, 49542, 49543); 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES 
(49027, 0, 0, 0, 0, 0, 0, 0, 0, 3, 20),  -- Bloodworms rank 1 
(49542, 0, 0, 0, 0, 0, 0, 0, 0, 6, 20),  -- Bloodworms rank 2 
(49543, 0, 0, 0, 0, 0, 0, 0, 0, 9, 20);  -- Bloodworms rank 3

 
-- core world SQL update 6521_world_command.sql
 
UPDATE `command` SET `name`='reload mail_loot_template' WHERE `name`='reload quest_mail_loot_template'; 
-- core world SQL update 6521_world_mail_level_reward.sql
 
DROP TABLE IF EXISTS `mail_level_reward`;
CREATE TABLE `mail_level_reward` (
  `level` tinyint(3) unsigned NOT NULL default '0',
  `raceMask` mediumint(8) unsigned NOT NULL default '0',
  `mailTemplateId` mediumint(8) unsigned NOT NULL default '0',
  `senderEntry`    mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`level`,`raceMask`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Mail System';

INSERT INTO `mail_level_reward` VALUES
(20, 1, 224, 4732),(20, 8, 225, 4753),
(20, 4, 226, 4772),(20, 1024, 227, 20914),
(20, 64, 228, 7954),(20, 32, 229, 3690),
(20, 128, 230, 7953),(20, 2, 231, 4752),
(20, 512, 232, 16280),(20, 16, 233, 4773); 
-- core world SQL update 6521_world_quest_mail_loot_template.sql
 
RENAME TABLE quest_mail_loot_template TO mail_loot_template;

UPDATE mail_loot_template, quest_template
  SET mail_loot_template.entry = quest_template.RewMailTemplateId WHERE mail_loot_template.entry = quest_template.entry; 
-- core world SQL update 6539_world_spell_proc_event.sql
 
-- Fixed Ruthlessness proc from Envenom
UPDATE spell_proc_event SET spellFamilyMask1 = 8 WHERE entry IN (14156, 14160, 14161); 
-- core world SQL update 6549_world_spell_proc_event.sql
 
DELETE FROM `spell_proc_event` WHERE `entry` IN (16086,16544);
INSERT INTO `spell_proc_event` VALUES 
( 16086, 0x04, 11, 0x00000000, 0x00040000, 0x00000000, 0x00030000, 0x00000000,   0,   0,   0), -- Improved Fire Nova Totem (Rank 1)
( 16544, 0x04, 11, 0x00000000, 0x00040000, 0x00000000, 0x00030000, 0x00000000,   0,   0,   0); -- Improved Fire Nova Totem (Rank 2)
 
-- core world SQL update 6589_world_battleground_template.sql
 
INSERT INTO  `battleground_template` (  `id` ,  `MinPlayersPerTeam` ,  `MaxPlayersPerTeam` ,  `MinLvl` ,  `MaxLvl` ,  `AllianceStartLoc` ,  `AllianceStartO` ,  `HordeStartLoc` ,  `HordeStartO` ) 
    VALUES ( 30, 20, 40, 71, 80, 1485, 0, 1486, 0 ) ;
INSERT INTO  `battleground_template` (  `id` ,  `MinPlayersPerTeam` ,  `MaxPlayersPerTeam` ,  `MinLvl` ,  `MaxLvl` ,  `AllianceStartLoc` ,  `AllianceStartO` ,  `HordeStartLoc` ,  `HordeStartO` ) 
    VALUES ( 32, 0, 40, 0, 80, 0, 0, 0, 0 ) ;
 
-- core world SQL update 6589_world_creature_template.sql
 
ALTER TABLE `creature_template`
  CHANGE COLUMN heroic_entry difficulty_entry_1 mediumint(8) unsigned NOT NULL default '0';
ALTER TABLE `creature_template` ADD `difficulty_entry_2` MEDIUMINT(8) unsigned
 NOT NULL default 0 AFTER `difficulty_entry_1`;
ALTER TABLE `creature_template` ADD `difficulty_entry_3` MEDIUMINT(8) unsigned
 NOT NULL default 0 AFTER `difficulty_entry_2`; 
-- core world SQL update 6589_world_instance_template.sql
 
ALTER TABLE `instance_template`
  DROP COLUMN maxPlayers,
  DROP COLUMN maxPlayersHeroic,
  DROP COLUMN reset_delay;
 
-- core world SQL update 6589_world_item_template.sql
 
ALTER TABLE `item_template`
    ADD COLUMN `Faction` int(11) UNSIGNED DEFAULT '0' NOT NULL AFTER `Flags`;

ALTER TABLE item_template
  CHANGE COLUMN ItemLevel ItemLevel smallint(5) unsigned NOT NULL DEFAULT 0; 
-- core world SQL update 6589_world_player_classlevelstats.sql
 
DELETE from `player_classlevelstats` where `class` = 7;
INSERT INTO `player_classlevelstats` (`class`, `level`, `basehp`, `basemana`) VALUES
(7, 1, 40, 85),
(7, 2, 47, 91),
(7, 3, 55, 98),
(7, 4, 62, 106),
(7, 5, 70, 115),
(7, 6, 77, 125),
(7, 7, 85, 136),
(7, 8, 92, 148),
(7, 9, 100, 161),
(7, 10, 107, 175),
(7, 11, 114, 190),
(7, 12, 122, 206),
(7, 13, 129, 223),
(7, 14, 137, 241),
(7, 15, 144, 260),
(7, 16, 152, 280),
(7, 17, 161, 301),
(7, 18, 170, 323),
(7, 19, 181, 346),
(7, 20, 193, 370),
(7, 21, 205, 395),
(7, 22, 219, 421),
(7, 23, 234, 448),
(7, 24, 250, 476),
(7, 25, 257, 505),
(7, 26, 275, 535),
(7, 27, 294, 566),
(7, 28, 315, 598),
(7, 29, 336, 631),
(7, 30, 358, 665),
(7, 31, 371, 699),
(7, 32, 396, 733),
(7, 33, 422, 767),
(7, 34, 448, 786),
(7, 35, 465, 820),
(7, 36, 494, 854),
(7, 37, 524, 888),
(7, 38, 545, 922),
(7, 39, 577, 941),
(7, 40, 610, 975),
(7, 41, 633, 1009),
(7, 42, 669, 1028),
(7, 43, 694, 1062),
(7, 44, 732, 1096),
(7, 45, 760, 1115),
(7, 46, 799, 1149),
(7, 47, 829, 1183),
(7, 48, 871, 1202),
(7, 49, 903, 1236),
(7, 50, 947, 1255),
(7, 51, 981, 1289),
(7, 52, 1027, 1323),
(7, 53, 1064, 1342),
(7, 54, 1101, 1376),
(7, 55, 1150, 1395),
(7, 56, 1190, 1414),
(7, 57, 1231, 1448),
(7, 58, 1283, 1467),
(7, 59, 1326, 1501),
(7, 60, 1423, 1520),
(7, 61, 1528, 1664),
(7, 62, 1694, 1808),
(7, 63, 1883, 1951),
(7, 64, 2067, 2095),
(7, 65, 2262, 2239),
(7, 66, 2465, 2383),
(7, 67, 2679, 2527),
(7, 68, 2903, 2670),
(7, 69, 3136, 2814),
(7, 70, 3380, 2958),
(7, 71, 3633, 3102),
(7, 72, 3903, 3246),
(7, 73, 4194, 3389),
(7, 74, 4507, 3533),
(7, 75, 4843, 3677),
(7, 76, 5203, 3821),
(7, 77, 5592, 3965),
(7, 78, 6009, 4108),
(7, 79, 6457, 4252),
(7, 80, 6939, 4396);  
-- core world SQL update 6589_world_playercreateinfo_action.sql
 
TRUNCATE `playercreateinfo_action`;
INSERT INTO `playercreateinfo_action` (`race`,`class`,`button`,`action`,`type`) VALUES
(1,1,0,6603,0),(1,1,11,117,128),(1,1,72,6603,0),(1,1,73,78,0),(1,1,82,59752,0),(1,1,83,117,128),
(1,1,84,6603,0),(1,1,96,6603,0),(1,1,108,6603,0),(1,2,0,6603,0),(1,2,1,21084,0),(1,2,2,635,0),
(1,2,9,59752,0),(1,2,10,159,128),(1,2,11,2070,128),(1,4,0,6603,0),(1,4,1,1752,0),(1,4,2,2098,0),
(1,4,3,2764,0),(1,4,10,59752,0),(1,4,11,2070,128),(1,5,0,6603,0),(1,5,1,585,0),(1,5,2,2050,0),
(1,5,9,59752,0),(1,5,10,159,128),(1,5,11,2070,128),(1,6,0,6603,0),(1,6,1,49576,0),(1,6,2,45477,0),
(1,6,3,45462,0),(1,6,4,45902,0),(1,6,5,47541,0),(1,6,11,59752,0),(1,8,0,6603,0),(1,8,1,133,0),
(1,8,2,168,0),(1,8,9,59752,0),(1,8,10,159,128),(1,8,11,2070,128),(1,9,0,6603,0),(1,9,1,686,0),
(1,9,2,687,0),(1,9,9,59752,0),(1,9,10,159,128),(1,9,11,4604,128),(2,1,0,6603,0),(2,1,72,6603,0),
(2,1,73,78,0),(2,1,74,20572,0),(2,1,83,117,128),(2,1,84,6603,0),(2,1,96,6603,0),(2,1,108,6603,0),
(2,3,0,6603,0),(2,3,1,2973,0),(2,3,2,75,0),(2,3,9,20572,0),(2,3,10,159,128),(2,3,11,117,128),
(2,4,0,6603,0),(2,4,1,1752,0),(2,4,2,2098,0),(2,4,3,2764,0),(2,4,4,20572,0),(2,4,11,117,128),
(2,6,0,6603,0),(2,6,1,49576,0),(2,6,2,45477,0),(2,6,3,45462,0),(2,6,4,45902,0),(2,6,5,47541,0),
(2,6,10,20572,0),(2,7,0,6603,0),(2,7,1,403,0),(2,7,2,331,0),(2,7,3,33697,0),(2,7,10,159,128),
(2,7,11,117,128),(2,9,0,6603,0),(2,9,1,686,0),(2,9,2,687,0),(2,9,3,33702,0),(2,9,10,159,128),
(2,9,11,117,128),(3,1,0,6603,0),(3,1,1,78,0),(3,1,11,117,128),(3,1,72,6603,0),(3,1,73,78,0),
(3,1,74,20594,0),(3,1,75,2481,0),(3,1,83,117,128),(3,1,84,6603,0),(3,1,96,6603,0),
(3,1,108,6603,0),(3,2,0,6603,0),(3,2,1,21084,0),(3,2,2,635,0),(3,2,3,20594,0),(3,2,4,2481,0),
(3,2,10,159,128),(3,2,11,4540,128),(3,3,0,6603,0),(3,3,1,2973,0),(3,3,2,75,0),(3,3,3,20594,0),
(3,3,4,2481,0),(3,3,10,159,128),(3,3,11,117,128),(3,3,75,20594,0),(3,3,76,2481,0),(3,4,0,6603,0),
(3,4,1,1752,0),(3,4,2,2098,0),(3,4,3,2764,0),(3,4,4,20594,0),(3,4,5,2481,0),(3,4,11,4540,128),
(3,5,0,6603,0),(3,5,1,585,0),(3,5,2,2050,0),(3,5,3,20594,0),(3,5,4,2481,0),(3,5,10,159,128),
(3,5,11,4540,128),(3,6,0,6603,0),(3,6,1,49576,0),(3,6,2,45477,0),(3,6,3,45462,0),(3,6,4,45902,0),
(3,6,5,47541,0),(3,6,10,2481,0),(4,1,72,6603,0),(4,4,82,58984,0),(4,1,73,78,0),(4,1,82,58984,0),
(4,1,83,117,128),(4,1,85,6603,0),(4,1,97,6603,0),(4,1,109,6603,0),(4,3,0,6603,0),(4,3,1,2973,0),
(4,3,2,75,0),(4,3,3,58984,0),(4,3,10,159,128),(4,3,11,117,128),(4,4,0,6603,0),(4,4,1,1752,0),
(4,4,2,2098,0),(4,4,3,2764,0),(4,4,10,58984,0),(4,4,11,4540,128),(4,5,0,6603,0),(4,5,1,585,0),
(4,5,2,2050,0),(4,5,3,58984,0),(4,5,10,159,128),(4,5,11,2070,128),(4,6,0,6603,0),(4,6,1,49576,0),
(4,6,2,45477,0),(4,6,3,45462,0),(4,6,4,45902,0),(4,6,5,47541,0),(4,6,10,58984,0),(4,6,83,58984,0),
(4,11,0,6603,0),(4,11,1,5176,0),(4,11,2,5185,0),(4,11,9,58984,0),(4,11,10,159,128),(4,11,11,4536,128),
(5,1,0,6603,0),(5,1,72,6603,0),(5,1,73,78,0),(5,1,74,20577,0),(5,1,83,4604,128),(5,1,84,6603,0),
(5,1,96,6603,0),(5,1,108,6603,0),(5,4,0,6603,0),(5,4,1,1752,0),(5,4,2,2098,0),(5,4,3,2764,0),
(5,4,4,20577,0),(5,4,11,4604,128),(5,5,0,6603,0),(5,5,1,585,0),(5,5,2,2050,0),(5,5,3,20577,0),
(5,5,10,159,128),(5,5,11,4604,128),(5,6,0,6603,0),(5,6,1,49576,0),(5,6,2,45477,0),(5,6,3,45462,0),
(5,6,4,45902,0),(5,6,5,47541,0),(5,6,10,20577,0),(5,8,0,6603,0),(5,8,1,133,0),(5,8,2,168,0),(5,8,3,20577,0),
(5,8,10,159,128),(5,8,11,4604,128),(5,9,0,6603,0),(5,9,1,686,0),(5,9,2,687,0),(5,9,3,20577,0),(5,9,10,159,128),
(5,9,11,4604,128),(6,1,0,6603,0),(6,1,1,78,0),(6,1,3,20549,0),(6,1,72,6603,0),(6,1,73,78,0),(6,1,74,20549,0),
(6,1,83,4540,128),(6,1,84,6603,0),(6,1,96,6603,0),(6,1,108,6603,0),(6,3,0,6603,0),(6,3,1,2973,0),(6,3,2,75,0),
(6,3,3,20549,0),(6,3,10,159,128),(6,3,11,117,128),(6,3,76,20549,0),(6,6,0,6603,0),(6,6,1,49576,0),(6,6,2,45477,0),
(6,6,3,45462,0),(6,6,4,45902,0),(6,6,5,47541,0),(6,6,10,20549,0),(6,6,75,20549,0),(6,7,0,6603,0),(6,7,1,403,0),
(6,7,2,331,0),(6,7,3,20549,0),(6,7,10,159,128),(6,7,11,4604,128),(6,7,76,20549,0),(6,11,0,6603,0),(6,11,1,5176,0),
(6,11,2,5185,0),(6,11,3,20549,0),(6,11,10,159,128),(6,11,11,4536,128),(6,11,73,6603,0),(6,11,76,20549,0),
(6,11,85,6603,0),(6,11,97,6603,0),(6,11,109,6603,0),(7,1,0,6603,0),(7,1,1,78,0),(7,1,10,20589,0),(7,1,11,117,128),
(7,1,72,6603,0),(7,1,73,78,0),(7,1,82,20589,0),(7,1,83,117,128),(7,1,84,6603,0),(7,1,96,6603,0),(7,1,108,6603,0),
(7,4,0,6603,0),(7,4,1,1752,0),(7,4,2,2098,0),(7,4,3,2764,0),(7,4,10,20589,0),(7,4,11,117,128),(7,6,0,6603,0),
(7,6,1,49576,0),(7,6,2,45477,0),(7,6,3,45462,0),(7,6,4,45902,0),(7,6,5,47541,0),(7,6,10,20589,0),(7,6,83,41751,128),
(7,6,72,6603,0),(7,6,11,41751,128),(7,6,84,6603,0),(7,6,96,6603,0),(7,6,108,6603,0),(7,8,0,6603,0),(7,8,1,133,0),
(7,8,2,168,0),(7,8,9,20589,0),(7,8,10,159,128),(7,8,11,4536,128),(7,9,0,6603,0),(7,9,1,686,0),(7,9,2,687,0),
(7,9,9,20589,0),(7,9,10,159,128),(7,9,11,4604,128),(8,1,0,6603,0),(8,1,72,6603,0),(8,1,73,78,0),(8,1,74,2764,0),
(8,1,75,26297,0),(8,1,83,117,128),(8,1,84,6603,0),(8,1,96,6603,0),(8,1,108,6603,0),(8,3,0,6603,0),(8,3,1,2973,0),
(8,3,2,75,0),(8,3,10,159,128),(8,3,11,4604,128),(8,8,3,26297,0),(8,4,0,6603,0),(8,4,1,1752,0),(8,4,2,2098,0),
(8,4,3,2764,0),(8,4,11,117,128),(8,4,4,26297,0),(8,5,0,6603,0),(8,5,1,585,0),(8,5,2,2050,0),(8,5,10,159,128),
(8,5,11,4540,128),(8,7,3,26297,0),(8,6,0,6603,0),(8,6,1,49576,0),(8,6,2,45477,0),(8,6,3,45462,0),(8,6,4,45902,0),
(8,6,5,47541,0),(8,6,10,26297,0),(8,7,0,6603,0),(8,7,1,403,0),(8,7,2,331,0),(8,7,10,159,128),(8,7,11,117,128),
(8,5,3,26297,0),(8,8,0,6603,0),(8,8,1,133,0),(8,8,2,168,0),(8,8,10,159,128),(8,8,11,117,128),(8,3,3,26297,0),
(10,2,0,6603,0),(10,2,1,21084,0),(10,2,2,635,0),(10,2,3,28730,0),(10,2,10,159,128),(10,2,11,20857,128),
(10,3,0,6603,0),(10,3,1,2973,0),(10,3,2,75,0),(10,3,3,28730,0),(10,3,10,159,128),(10,3,11,20857,128),
(10,4,0,6603,0),(10,4,1,1752,0),(10,4,2,2098,0),(10,4,3,2764,0),(10,4,4,25046,0),(10,4,11,20857,128),
(10,5,0,6603,0),(10,5,1,585,0),(10,5,2,2050,0),(10,5,3,28730,0),(10,5,10,159,128),(10,5,11,20857,128),
(10,6,0,6603,0),(10,6,1,49576,0),(10,6,2,45477,0),(10,6,3,45462,0),(10,6,4,45902,0),(10,6,5,47541,0),
(10,6,6,50613,0),(10,8,0,6603,0),(10,8,1,133,0),(10,8,2,168,0),(10,8,3,28730,0),(10,8,10,159,128),(10,8,11,20857,128),
(10,9,0,6603,0),(10,9,1,686,0),(10,9,2,687,0),(10,9,3,28730,0),(10,9,10,159,128),(10,9,11,20857,128),(11,1,0,6603,0),
(11,1,72,6603,0),(11,1,73,78,0),(11,1,74,28880,0),(11,1,83,4540,128),(11,1,84,6603,0),(11,1,96,6603,0),(11,1,108,6603,0),
(11,2,0,6603,0),(11,2,1,21084,0),(11,2,2,635,0),(11,2,3,59542,0),(11,2,10,159,128),(11,2,11,4540,128),(11,2,83,4540,128),
(11,3,0,6603,0),(11,3,1,2973,0),(11,3,2,75,0),(11,3,3,59543,0),(11,3,10,159,128),(11,3,11,4540,128),(11,3,72,6603,0),
(11,3,73,2973,0),(11,3,74,75,0),(11,3,82,159,128),(11,3,83,4540,128),(11,5,0,6603,0),(11,5,1,585,0),(11,5,2,2050,0),
(11,5,3,59544,0),(11,5,10,159,128),(11,5,11,4540,128),(11,5,83,4540,128),(11,6,0,6603,0),(11,6,1,49576,0),(11,6,2,45477,0),
(11,6,3,45462,0),(11,6,4,45902,0),(11,6,5,47541,0),(11,6,10,59545,0),(11,7,0,6603,0),(11,7,1,403,0),(11,7,2,331,0),
(11,7,3,59547,0),(11,7,10,159,128),(11,7,11,4540,128),(11,8,0,6603,0),(11,8,1,133,0),(11,8,2,168,0),(11,8,3,59548,0),
(11,8,10,159,128),(11,8,11,4540,128),(11,8,83,4540,128),(11,6,11,41751,128);
 
-- core world SQL update 6589_world_playercreateinfo_spell.sql
 
TRUNCATE `playercreateinfo_spell`;
INSERT INTO `playercreateinfo_spell` (`race`,`class`,`Spell`,`Note`) VALUES
(1,1,78,'Heroic Strike'),(1,1,81,'Dodge'),(1,1,107,'Block'),(1,1,196,'One-Handed Axes'),(1,1,198,'One-Handed Maces'),(1,1,201,'One-Handed Swords'),(1,1,203,'Unarmed'),(1,1,204,'Defense'),(1,1,522,'SPELLDEFENSE (DND)'),(1,1,668,'Language Common'),(1,1,1843,'Disarm'),(1,1,2382,'Generic'),(1,1,2457,'Battle Stance'),(1,1,2479,'Honorless Target'),(1,1,3050,'Detect'),(1,1,3365,'Opening'),(1,1,5301,'Defensive State (DND)'),(1,1,6233,'Closing'),(1,1,6246,'Closing'),(1,1,6247,'Opening'),(1,1,6477,'Opening'),(1,1,6478,'Opening'),(1,1,6603,'Attack'),(1,1,7266,'Duel'),(1,1,7267,'Grovel'),(1,1,7355,'Stuck'),(1,1,8386,'Attacking'),(1,1,8737,'Mail'),(1,1,9077,'Leather'),(1,1,9078,'Cloth'),(1,1,9116,'Shield'),(1,1,9125,'Generic'),(1,1,20597,'Sword Specialization'),(1,1,20598,'The Human Spirit'),(1,1,20599,'Diplomacy'),(1,1,20864,'Mace Specialization'),(1,1,21651,'Opening'),(1,1,21652,'Closing'),(1,1,22027,'Remove Insignia'),(1,1,22810,'Opening - No Text'),(1,1,32215,'Victorious State'),(1,1,45927,'Summon Friend'),(1,1,58985,'Perception'),(1,1,59752,'Every Man for Himself'),(1,1,61437,'Opening'),(1,2,81,'Dodge'),(1,2,107,'Block'),(1,2,198,'One-Handed Maces'),(1,2,199,'Two-Handed Maces'),(1,2,203,'Unarmed'),(1,2,204,'Defense'),(1,2,522,'SPELLDEFENSE (DND)'),(1,2,635,'Holy Light'),(1,2,668,'Language Common'),(1,2,1843,'Disarm'),(1,2,2382,'Generic'),(1,2,2479,'Honorless Target'),(1,2,3050,'Detect'),(1,2,3365,'Opening'),(1,2,6233,'Closing'),(1,2,6246,'Closing'),(1,2,6247,'Opening'),(1,2,6477,'Opening'),(1,2,6478,'Opening'),(1,2,6603,'Attack'),(1,2,7266,'Duel'),(1,2,7267,'Grovel'),(1,2,7355,'Stuck'),(1,2,8386,'Attacking'),(1,2,8737,'Mail'),(1,2,9077,'Leather'),(1,2,9078,'Cloth'),(1,2,9116,'Shield'),(1,2,9125,'Generic'),(1,2,21084,'Seal of Righteousness'),(1,2,20597,'Sword Specialization'),(1,2,20598,'The Human Spirit'),(1,2,20599,'Diplomacy'),(1,2,20864,'Mace Specialization'),(1,2,21651,'Opening'),(1,2,21652,'Closing'),(1,2,22027,'Remove Insignia'),(1,2,22810,'Opening - No Text'),(1,2,27762,'Libram'),(1,2,45927,'Summon Friend'),(1,2,58985,'Perception'),(1,2,59752,'Every Man for Himself'),(1,2,61437,'Opening'),(1,4,81,'Dodge'),(1,4,203,'Unarmed'),(1,4,204,'Defense'),(1,4,522,'SPELLDEFENSE (DND)'),(1,4,668,'Language Common'),(1,4,1180,'Daggers'),(1,4,1752,'Sinister Strike'),(1,4,1843,'Disarm'),(1,4,2098,'Eviscerate'),(1,4,2382,'Generic'),(1,4,2479,'Honorless Target'),(1,4,2567,'Thrown'),(1,4,2764,'Throw'),(1,4,3050,'Detect'),(1,4,3365,'Opening'),(1,4,6233,'Closing'),(1,4,6246,'Closing'),(1,4,6247,'Opening'),(1,4,6477,'Opening'),(1,4,6478,'Opening'),(1,4,6603,'Attack'),(1,4,7266,'Duel'),(1,4,7267,'Grovel'),(1,4,7355,'Stuck'),(1,4,8386,'Attacking'),(1,4,9077,'Leather'),(1,4,9078,'Cloth'),(1,4,9125,'Generic'),(1,4,16092,'Defensive State (DND)'),(1,4,20597,'Sword Specialization'),(1,4,20598,'The Human Spirit'),(1,4,20599,'Diplomacy'),(1,4,20864,'Mace Specialization'),(1,4,21184,'Rogue Passive (DND)'),(1,4,21651,'Opening'),(1,4,21652,'Closing'),(1,4,22027,'Remove Insignia'),(1,4,22810,'Opening - No Text'),(1,4,45927,'Summon Friend'),(1,4,58985,'Perception'),(1,4,59752,'Every Man for Himself'),(1,4,61437,'Opening'),(1,5,81,'Dodge'),(1,5,198,'One-Handed Maces'),(1,5,203,'Unarmed'),(1,5,204,'Defense'),(1,5,522,'SPELLDEFENSE (DND)'),(1,5,585,'Smite'),(1,5,668,'Language Common'),(1,5,1843,'Disarm'),(1,5,2050,'Lesser Heal'),(1,5,2382,'Generic'),(1,5,2479,'Honorless Target'),(1,5,3050,'Detect'),(1,5,3365,'Opening'),(1,5,5009,'Wands'),(1,5,5019,'Shoot'),(1,5,6233,'Closing'),(1,5,6246,'Closing'),(1,5,6247,'Opening'),(1,5,6477,'Opening'),(1,5,6478,'Opening'),(1,5,6603,'Attack'),(1,5,7266,'Duel'),(1,5,7267,'Grovel'),(1,5,7355,'Stuck'),(1,5,8386,'Attacking'),(1,5,9078,'Cloth'),(1,5,9125,'Generic'),(1,5,20597,'Sword Specialization'),(1,5,20598,'The Human Spirit'),(1,5,20599,'Diplomacy'),(1,5,20864,'Mace Specialization'),(1,5,21651,'Opening'),(1,5,21652,'Closing'),(1,5,22027,'Remove Insignia'),(1,5,22810,'Opening - No Text'),(1,5,45927,'Summon Friend'),(1,5,58985,'Perception'),(1,5,59752,'Every Man for Himself'),(1,5,61437,'Opening'),(1,6,81,'Dodge'),(1,6,196,'One-Handed Axes'),(1,6,197,'Two-Handed Axes'),(1,6,200,'Polearms'),(1,6,201,'One-Handed Swords'),(1,6,202,'Two-Handed Swords'),(1,6,203,'Unarmed'),(1,6,204,'Defense'),(1,6,522,'SPELLDEFENSE (DND)'),(1,6,668,'Language Common'),(1,6,674,'Dual Wield'),(1,6,750,'Plate Mail'),(1,6,1843,'Disarm'),(1,6,2382,'Generic'),(1,6,2479,'Honorless Target'),(1,6,3050,'Detect'),(1,6,3127,'Parry'),(1,6,3275,'Linen Bandage'),(1,6,3276,'Heavy Linen Bandage'),(1,6,3277,'Wool Bandage'),(1,6,3278,'Heavy Wool Bandage'),(1,6,3365,'Opening'),(1,6,6233,'Closing'),(1,6,6246,'Closing'),(1,6,6247,'Opening'),(1,6,6477,'Opening'),(1,6,6478,'Opening'),(1,6,6603,'Attack'),(1,6,7266,'Duel'),(1,6,7267,'Grovel'),(1,6,7355,'Stuck'),(1,6,7928,'Silk Bandage'),(1,6,7929,'Heavy Silk Bandage'),(1,6,7934,'Anti-Venom'),(1,6,8386,'Attacking'),(1,6,8737,'Mail'),(1,6,9077,'Leather'),(1,6,9078,'Cloth'),(1,6,9125,'Generic'),(1,6,10840,'Mageweave Bandage'),(1,6,10841,'Heavy Mageweave Bandage'),(1,6,10846,'First Aid'),(1,6,18629,'Runecloth Bandage'),(1,6,18630,'Heavy Runecloth Bandage'),(1,6,20597,'Sword Specialization'),(1,6,20598,'The Human Spirit'),(1,6,20599,'Diplomacy'),(1,6,20864,'Mace Specialization'),(1,6,21651,'Opening'),(1,6,21652,'Closing'),(1,6,22027,'Remove Insignia'),(1,6,22810,'Opening - No Text'),(1,6,33391,'Journeyman Riding'),(1,6,45462,'Plague Strike'),(1,6,45477,'Icy Touch'),(1,6,45902,'Blood Strike'),(1,6,45903,'Offensive State (DND)'),(1,6,45927,'Summon Friend'),(1,6,47541,'Death Coil'),(1,6,48266,'Blood Presence'),(1,6,49410,'Forceful Deflection'),(1,6,49576,'Death Grip'),(1,6,52665,'Sigil'),(1,6,58985,'Perception'),(1,6,59752,'Every Man for Himself'),(1,6,59879,'Blood Plague'),(1,6,59921,'Frost Fever'),(1,6,61437,'Opening'),(1,6,61455,'Runic Focus'),(1,8,81,'Dodge'),(1,8,133,'Fireball'),(1,8,168,'Frost Armor'),(1,8,203,'Unarmed'),(1,8,204,'Defense'),(1,8,227,'Staves'),(1,8,522,'SPELLDEFENSE (DND)'),(1,8,668,'Language Common'),(1,8,1843,'Disarm'),(1,8,2382,'Generic'),(1,8,2479,'Honorless Target'),(1,8,3050,'Detect'),(1,8,3365,'Opening'),(1,8,5009,'Wands'),(1,8,5019,'Shoot'),(1,8,6233,'Closing'),(1,8,6246,'Closing'),(1,8,6247,'Opening'),(1,8,6477,'Opening'),(1,8,6478,'Opening'),(1,8,6603,'Attack'),(1,8,7266,'Duel'),(1,8,7267,'Grovel'),(1,8,7355,'Stuck'),(1,8,8386,'Attacking'),(1,8,9078,'Cloth'),(1,8,9125,'Generic'),(1,8,20597,'Sword Specialization'),(1,8,20598,'The Human Spirit'),(1,8,20599,'Diplomacy'),(1,8,20864,'Mace Specialization'),(1,8,21651,'Opening'),(1,8,21652,'Closing'),(1,8,22027,'Remove Insignia'),(1,8,22810,'Opening - No Text'),(1,8,45927,'Summon Friend'),(1,8,58985,'Perception'),(1,8,59752,'Every Man for Himself'),(1,8,61437,'Opening'),(1,9,81,'Dodge'),(1,9,203,'Unarmed'),(1,9,204,'Defense'),(1,9,522,'SPELLDEFENSE (DND)'),(1,9,668,'Language Common'),(1,9,686,'Shadow Bolt'),(1,9,687,'Demon Skin'),(1,9,1180,'Daggers'),(1,9,1843,'Disarm'),(1,9,2382,'Generic'),(1,9,2479,'Honorless Target'),(1,9,3050,'Detect'),(1,9,3365,'Opening'),(1,9,5009,'Wands'),(1,9,5019,'Shoot'),(1,9,6233,'Closing'),(1,9,6246,'Closing'),(1,9,6247,'Opening'),(1,9,6477,'Opening'),(1,9,6478,'Opening'),(1,9,6603,'Attack'),(1,9,7266,'Duel'),(1,9,7267,'Grovel'),(1,9,7355,'Stuck'),(1,9,8386,'Attacking'),(1,9,9078,'Cloth'),(1,9,9125,'Generic'),(1,9,20597,'Sword Specialization'),(1,9,20598,'The Human Spirit'),(1,9,20599,'Diplomacy'),(1,9,20864,'Mace Specialization'),(1,9,21651,'Opening'),(1,9,21652,'Closing'),(1,9,22027,'Remove Insignia'),(1,9,22810,'Opening - No Text'),(1,9,45927,'Summon Friend'),(5,9,58284,'Chaos Bolt Passive'),(1,9,58985,'Perception'),(1,9,59752,'Every Man for Himself'),(1,9,61437,'Opening'),(2,1,78,'Heroic Strike'),(2,1,81,'Dodge'),(2,1,107,'Block'),(2,1,196,'One-Handed Axes'),(2,1,197,'Two-Handed Axes'),(2,1,201,'One-Handed Swords'),(2,1,203,'Unarmed'),(2,1,204,'Defense'),(2,1,522,'SPELLDEFENSE (DND)'),(2,1,669,'Language Orcish'),(2,1,1843,'Disarm'),(2,1,2382,'Generic'),(2,1,2457,'Battle Stance'),(2,1,2479,'Honorless Target'),(2,1,3050,'Detect'),(2,1,3365,'Opening'),(2,1,5301,'Defensive State (DND)'),(2,1,6233,'Closing'),(2,1,6246,'Closing'),(2,1,6247,'Opening'),(2,1,6477,'Opening'),(2,1,6478,'Opening'),(2,1,6603,'Attack'),(2,1,7266,'Duel'),(2,1,7267,'Grovel'),(2,1,7355,'Stuck'),(2,1,8386,'Attacking'),(2,1,8737,'Mail'),(2,1,9077,'Leather'),(2,1,9078,'Cloth'),(2,1,9116,'Shield'),(2,1,9125,'Generic'),(2,1,20572,'Blood Fury'),(2,1,20573,'Hardiness'),(2,1,20574,'Axe Specialization'),(2,1,21563,'Command'),(2,1,21651,'Opening'),(2,1,21652,'Closing'),(2,1,22027,'Remove Insignia'),(2,1,22810,'Opening - No Text'),(2,1,32215,'Victorious State'),(2,1,45927,'Summon Friend'),(2,1,61437,'Opening'),(2,3,75,'Auto Shot'),(2,3,81,'Dodge'),(2,3,196,'One-Handed Axes'),(2,3,203,'Unarmed'),(2,3,204,'Defense'),(2,3,264,'Bows'),(2,3,522,'SPELLDEFENSE (DND)'),(2,3,669,'Language Orcish'),(2,3,1843,'Disarm'),(2,3,2382,'Generic'),(2,3,2479,'Honorless Target'),(2,3,2973,'Raptor Strike'),(2,3,3050,'Detect'),(2,3,3365,'Opening'),(2,3,6233,'Closing'),(2,3,6246,'Closing'),(2,3,6247,'Opening'),(2,3,6477,'Opening'),(2,3,6478,'Opening'),(2,3,6603,'Attack'),(2,3,7266,'Duel'),(2,3,7267,'Grovel'),(2,3,7355,'Stuck'),(2,3,8386,'Attacking'),(2,3,9077,'Leather'),(2,3,9078,'Cloth'),(2,3,9125,'Generic'),(2,3,13358,'Defensive State (DND)'),(2,3,20572,'Blood Fury'),(2,3,20573,'Hardiness'),(2,3,20574,'Axe Specialization'),(2,3,20576,'Command'),(2,3,21651,'Opening'),(2,3,21652,'Closing'),(2,3,22027,'Remove Insignia'),(2,3,22810,'Opening - No Text'),(2,3,24949,'Defensive State 2 (DND)'),(2,3,34082,'Advantaged State (DND)'),(2,3,45927,'Summon Friend'),(2,3,61437,'Opening'),(2,4,81,'Dodge'),(2,4,203,'Unarmed'),(2,4,204,'Defense'),(2,4,522,'SPELLDEFENSE (DND)'),(2,4,669,'Language Orcish'),(2,4,1180,'Daggers'),(2,4,1752,'Sinister Strike'),(2,4,1843,'Disarm'),(2,4,2098,'Eviscerate'),(2,4,2382,'Generic'),(2,4,2479,'Honorless Target'),(2,4,2567,'Thrown'),(2,4,2764,'Throw'),(2,4,3050,'Detect'),(2,4,3365,'Opening'),(2,4,6233,'Closing'),(2,4,6246,'Closing'),(2,4,6247,'Opening'),(2,4,6477,'Opening'),(2,4,6478,'Opening'),(2,4,6603,'Attack'),(2,4,7266,'Duel'),(2,4,7267,'Grovel'),(2,4,7355,'Stuck'),(2,4,8386,'Attacking'),(2,4,9077,'Leather'),(2,4,9078,'Cloth'),(2,4,9125,'Generic'),(2,4,16092,'Defensive State (DND)'),(2,4,20572,'Blood Fury'),(2,4,20573,'Hardiness'),(2,4,20574,'Axe Specialization'),(2,4,21184,'Rogue Passive (DND)'),(2,4,21563,'Command'),(2,4,21651,'Opening'),(2,4,21652,'Closing'),(2,4,22027,'Remove Insignia'),(2,4,22810,'Opening - No Text'),(2,4,45927,'Summon Friend'),(2,4,61437,'Opening'),(2,6,81,'Dodge'),(2,6,196,'One-Handed Axes'),(2,6,197,'Two-Handed Axes'),(2,6,200,'Polearms'),(2,6,201,'One-Handed Swords'),(2,6,202,'Two-Handed Swords'),(2,6,203,'Unarmed'),(2,6,204,'Defense'),(2,6,522,'SPELLDEFENSE (DND)'),(2,6,669,'Language Orcish'),(2,6,674,'Dual Wield'),(2,6,750,'Plate Mail'),(2,6,1843,'Disarm'),(2,6,2382,'Generic'),(2,6,2479,'Honorless Target'),(2,6,3050,'Detect'),(2,6,3127,'Parry'),(2,6,3275,'Linen Bandage'),(2,6,3276,'Heavy Linen Bandage'),(2,6,3277,'Wool Bandage'),(2,6,3278,'Heavy Wool Bandage'),(2,6,3365,'Opening'),(2,6,6233,'Closing'),(2,6,6246,'Closing'),(2,6,6247,'Opening'),(2,6,6477,'Opening'),(2,6,6478,'Opening'),(2,6,6603,'Attack'),(2,6,7266,'Duel'),(2,6,7267,'Grovel'),(2,6,7355,'Stuck'),(2,6,7928,'Silk Bandage'),(2,6,7929,'Heavy Silk Bandage'),(2,6,7934,'Anti-Venom'),(2,6,8386,'Attacking'),(2,6,8737,'Mail'),(2,6,9077,'Leather'),(2,6,9078,'Cloth'),(2,6,9125,'Generic'),(2,6,10840,'Mageweave Bandage'),(2,6,10841,'Heavy Mageweave Bandage'),(2,6,10846,'First Aid'),(2,6,18629,'Runecloth Bandage'),(2,6,18630,'Heavy Runecloth Bandage'),(2,6,20572,'Blood Fury'),(2,6,20573,'Hardiness'),(2,6,20574,'Axe Specialization'),(2,6,21651,'Opening'),(2,6,21652,'Closing'),(2,6,22027,'Remove Insignia'),(2,6,22810,'Opening - No Text'),(2,6,33391,'Journeyman Riding'),(2,6,45462,'Plague Strike'),(2,6,45477,'Icy Touch'),(2,6,45902,'Blood Strike'),(2,6,45903,'Offensive State (DND)'),(2,6,45927,'Summon Friend'),(2,6,47541,'Death Coil'),(2,6,48266,'Blood Presence'),(2,6,49410,'Forceful Deflection'),(2,6,49576,'Death Grip'),(2,6,52665,'Sigil'),(2,6,54562,'Command'),(2,6,59879,'Blood Plague'),(2,6,59921,'Frost Fever'),(2,6,61437,'Opening'),(2,6,61455,'Runic Focus'),(2,7,81,'Dodge'),(2,7,107,'Block'),(2,7,198,'One-Handed Maces'),(2,7,203,'Unarmed'),(2,7,204,'Defense'),(2,7,227,'Staves'),(2,7,331,'Healing Wave'),(2,7,403,'Lightning Bolt'),(2,7,522,'SPELLDEFENSE (DND)'),(2,7,669,'Language Orcish'),(2,7,1843,'Disarm'),(2,7,2382,'Generic'),(2,7,2479,'Honorless Target'),(2,7,3050,'Detect'),(2,7,3365,'Opening'),(2,7,6233,'Closing'),(2,7,6246,'Closing'),(2,7,6247,'Opening'),(2,7,6477,'Opening'),(2,7,6478,'Opening'),(2,7,6603,'Attack'),(2,7,7266,'Duel'),(2,7,7267,'Grovel'),(2,7,7355,'Stuck'),(2,7,8386,'Attacking'),(2,7,9077,'Leather'),(2,7,9078,'Cloth'),(2,7,9116,'Shield'),(2,7,9125,'Generic'),(2,7,20573,'Hardiness'),(2,7,20574,'Axe Specialization'),(2,7,21563,'Command'),(2,7,21651,'Opening'),(2,7,21652,'Closing'),(2,7,22027,'Remove Insignia'),(2,7,22810,'Opening - No Text'),(2,7,27763,'Totem'),(2,7,33697,'Blood Fury'),(2,7,45927,'Summon Friend'),(2,7,61437,'Opening'),(2,9,81,'Dodge'),(2,9,203,'Unarmed'),(2,9,204,'Defense'),(2,9,522,'SPELLDEFENSE (DND)'),(2,9,669,'Language Orcish'),(2,9,686,'Shadow Bolt'),(2,9,687,'Demon Skin'),(2,9,1180,'Daggers'),(2,9,1843,'Disarm'),(2,9,2382,'Generic'),(2,9,2479,'Honorless Target'),(2,9,3050,'Detect'),(2,9,3365,'Opening'),(2,9,5009,'Wands'),(2,9,5019,'Shoot'),(2,9,6233,'Closing'),(2,9,6246,'Closing'),(2,9,6247,'Opening'),(2,9,6477,'Opening'),(2,9,6478,'Opening'),(2,9,6603,'Attack'),(2,9,7266,'Duel'),(2,9,7267,'Grovel'),(2,9,7355,'Stuck'),(2,9,8386,'Attacking'),(2,9,9078,'Cloth'),(2,9,9125,'Generic'),(2,9,20573,'Hardiness'),(2,9,20574,'Axe Specialization'),(2,9,20575,'Command'),(2,9,21651,'Opening'),(2,9,21652,'Closing'),(2,9,22027,'Remove Insignia'),(2,9,22810,'Opening - No Text'),(2,9,33702,'Blood Fury'),(2,9,45927,'Summon Friend'),(2,9,58284,'Chaos Bolt Passive'),(2,9,61437,'Opening'),(3,1,78,'Heroic Strike'),(3,1,81,'Dodge'),(3,1,107,'Block'),(3,1,196,'One-Handed Axes'),(3,1,197,'Two-Handed Axes'),(3,1,198,'One-Handed Maces'),(3,1,203,'Unarmed'),(3,1,204,'Defense'),(3,1,522,'SPELLDEFENSE (DND)'),(3,1,668,'Language Common'),(3,1,672,'Language Dwarven'),(3,1,1843,'Disarm'),(3,1,2382,'Generic'),(3,1,2457,'Battle Stance'),(3,1,2479,'Honorless Target'),(3,1,2481,'Find Treasure'),(3,1,3050,'Detect'),(3,1,3365,'Opening'),(3,1,5301,'Defensive State (DND)'),(3,1,6233,'Closing'),(3,1,6246,'Closing'),(3,1,6247,'Opening'),(3,1,6477,'Opening'),(3,1,6478,'Opening'),(3,1,6603,'Attack'),(3,1,7266,'Duel'),(3,1,7267,'Grovel'),(3,1,7355,'Stuck'),(3,1,8386,'Attacking'),(3,1,8737,'Mail'),(3,1,9077,'Leather'),(3,1,9078,'Cloth'),(3,1,9116,'Shield'),(3,1,9125,'Generic'),(3,1,20594,'Stoneform'),(3,1,20595,'Gun Specialization'),(3,1,20596,'Frost Resistance'),(3,1,21651,'Opening'),(3,1,21652,'Closing'),(3,1,22027,'Remove Insignia'),(3,1,22810,'Opening - No Text'),(3,1,32215,'Victorious State'),(3,1,45927,'Summon Friend'),(3,1,59224,'Mace Specialization'),(3,1,61437,'Opening'),(3,2,81,'Dodge'),(3,2,107,'Block'),(3,2,198,'One-Handed Maces'),(3,2,199,'Two-Handed Maces'),(3,2,203,'Unarmed'),(3,2,204,'Defense'),(3,2,522,'SPELLDEFENSE (DND)'),(3,2,635,'Holy Light'),(3,2,668,'Language Common'),(3,2,672,'Language Dwarven'),(3,2,1843,'Disarm'),(3,2,2382,'Generic'),(3,2,2479,'Honorless Target'),(3,2,2481,'Find Treasure'),(3,2,3050,'Detect'),(3,2,3365,'Opening'),(3,2,6233,'Closing'),(3,2,6246,'Closing'),(3,2,6247,'Opening'),(3,2,6477,'Opening'),(3,2,6478,'Opening'),(3,2,6603,'Attack'),(3,2,7266,'Duel'),(3,2,7267,'Grovel'),(3,2,7355,'Stuck'),(3,2,8386,'Attacking'),(3,2,8737,'Mail'),(3,2,9077,'Leather'),(3,2,9078,'Cloth'),(3,2,9116,'Shield'),(3,2,9125,'Generic'),(3,2,21084,'Seal of Righteousness'),(3,2,20594,'Stoneform'),(3,2,20595,'Gun Specialization'),(3,2,20596,'Frost Resistance'),(3,2,21651,'Opening'),(3,2,21652,'Closing'),(3,2,22027,'Remove Insignia'),(3,2,22810,'Opening - No Text'),(3,2,27762,'Libram'),(3,2,45927,'Summon Friend'),(3,2,59224,'Mace Specialization'),(3,2,61437,'Opening'),(3,3,75,'Auto Shot'),(3,3,81,'Dodge'),(3,3,196,'One-Handed Axes'),(3,3,203,'Unarmed'),(3,3,204,'Defense'),(3,3,266,'Guns'),(3,3,522,'SPELLDEFENSE (DND)'),(3,3,668,'Language Common'),(3,3,672,'Language Dwarven'),(3,3,1843,'Disarm'),(3,3,2382,'Generic'),(3,3,2479,'Honorless Target'),(3,3,2481,'Find Treasure'),(3,3,2973,'Raptor Strike'),(3,3,3050,'Detect'),(3,3,3365,'Opening'),(3,3,6233,'Closing'),(3,3,6246,'Closing'),(3,3,6247,'Opening'),(3,3,6477,'Opening'),(3,3,6478,'Opening'),(3,3,6603,'Attack'),(3,3,7266,'Duel'),(3,3,7267,'Grovel'),(3,3,7355,'Stuck'),(3,3,8386,'Attacking'),(3,3,9077,'Leather'),(3,3,9078,'Cloth'),(3,3,9125,'Generic'),(3,3,13358,'Defensive State (DND)'),(3,3,20594,'Stoneform'),(3,3,20595,'Gun Specialization'),(3,3,20596,'Frost Resistance'),(3,3,21651,'Opening'),(3,3,21652,'Closing'),(3,3,22027,'Remove Insignia'),(3,3,22810,'Opening - No Text'),(3,3,24949,'Defensive State 2 (DND)'),(3,3,34082,'Advantaged State (DND)'),(3,3,45927,'Summon Friend'),(3,3,59224,'Mace Specialization'),(3,3,61437,'Opening'),(3,4,81,'Dodge'),(3,4,203,'Unarmed'),(3,4,204,'Defense'),(3,4,522,'SPELLDEFENSE (DND)'),(3,4,668,'Language Common'),(3,4,672,'Language Dwarven'),(3,4,1180,'Daggers'),(3,4,1752,'Sinister Strike'),(3,4,1843,'Disarm'),(3,4,2098,'Eviscerate'),(3,4,2382,'Generic'),(3,4,2479,'Honorless Target'),(3,4,2481,'Find Treasure'),(3,4,2567,'Thrown'),(3,4,2764,'Throw'),(3,4,3050,'Detect'),(3,4,3365,'Opening'),(3,4,6233,'Closing'),(3,4,6246,'Closing'),(3,4,6247,'Opening'),(3,4,6477,'Opening'),(3,4,6478,'Opening'),(3,4,6603,'Attack'),(3,4,7266,'Duel'),(3,4,7267,'Grovel'),(3,4,7355,'Stuck'),(3,4,8386,'Attacking'),(3,4,9077,'Leather'),(3,4,9078,'Cloth'),(3,4,9125,'Generic'),(3,4,16092,'Defensive State (DND)'),(3,4,20594,'Stoneform'),(3,4,20595,'Gun Specialization'),(3,4,20596,'Frost Resistance'),(3,4,21184,'Rogue Passive (DND)'),(3,4,21651,'Opening'),(3,4,21652,'Closing'),(3,4,22027,'Remove Insignia'),(3,4,22810,'Opening - No Text'),(3,4,45927,'Summon Friend'),(3,4,59224,'Mace Specialization'),(3,4,61437,'Opening'),(3,5,81,'Dodge'),(3,5,198,'One-Handed Maces'),(3,5,203,'Unarmed'),(3,5,204,'Defense'),(3,5,522,'SPELLDEFENSE (DND)'),(3,5,585,'Smite'),(3,5,668,'Language Common'),(3,5,672,'Language Dwarven'),(3,5,1843,'Disarm'),(3,5,2050,'Lesser Heal'),(3,5,2382,'Generic'),(3,5,2479,'Honorless Target'),(3,5,2481,'Find Treasure'),(3,5,3050,'Detect'),(3,5,3365,'Opening'),(3,5,5009,'Wands'),(3,5,5019,'Shoot'),(3,5,6233,'Closing'),(3,5,6246,'Closing'),(3,5,6247,'Opening'),(3,5,6477,'Opening'),(3,5,6478,'Opening'),(3,5,6603,'Attack'),(3,5,7266,'Duel'),(3,5,7267,'Grovel'),(3,5,7355,'Stuck'),(3,5,8386,'Attacking'),(3,5,9078,'Cloth'),(3,5,9125,'Generic'),(3,5,20594,'Stoneform'),(3,5,20595,'Gun Specialization'),(3,5,20596,'Frost Resistance'),(3,5,21651,'Opening'),(3,5,21652,'Closing'),(3,5,22027,'Remove Insignia'),(3,5,22810,'Opening - No Text'),(3,5,45927,'Summon Friend'),(3,5,59224,'Mace Specialization'),(3,5,61437,'Opening'),(3,6,81,'Dodge'),(3,6,196,'One-Handed Axes'),(3,6,197,'Two-Handed Axes'),(3,6,200,'Polearms'),(3,6,201,'One-Handed Swords'),(3,6,202,'Two-Handed Swords'),(3,6,203,'Unarmed'),(3,6,204,'Defense'),(3,6,522,'SPELLDEFENSE (DND)'),(3,6,668,'Language Common'),(3,6,672,'Language Dwarven'),(3,6,674,'Dual Wield'),(3,6,750,'Plate Mail'),(3,6,1843,'Disarm'),(3,6,2382,'Generic'),(3,6,2479,'Honorless Target'),(3,6,2481,'Find Treasure'),(3,6,3050,'Detect'),(3,6,3127,'Parry'),(3,6,3275,'Linen Bandage'),(3,6,3276,'Heavy Linen Bandage'),(3,6,3277,'Wool Bandage'),(3,6,3278,'Heavy Wool Bandage'),(3,6,3365,'Opening'),(3,6,6233,'Closing'),(3,6,6246,'Closing'),(3,6,6247,'Opening'),(3,6,6477,'Opening'),(3,6,6478,'Opening'),(3,6,6603,'Attack'),(3,6,7266,'Duel'),(3,6,7267,'Grovel'),(3,6,7355,'Stuck'),(3,6,7928,'Silk Bandage'),(3,6,7929,'Heavy Silk Bandage'),(3,6,7934,'Anti-Venom'),(3,6,8386,'Attacking'),(3,6,8737,'Mail'),(3,6,9077,'Leather'),(3,6,9078,'Cloth'),(3,6,9125,'Generic'),(3,6,10840,'Mageweave Bandage'),(3,6,10841,'Heavy Mageweave Bandage'),(3,6,10846,'First Aid'),(3,6,18629,'Runecloth Bandage'),(3,6,18630,'Heavy Runecloth Bandage'),(3,6,20594,'Stoneform'),(3,6,20595,'Gun Specialization'),(3,6,20596,'Frost Resistance'),(3,6,21651,'Opening'),(3,6,21652,'Closing'),(3,6,22027,'Remove Insignia'),(3,6,22810,'Opening - No Text'),(3,6,33391,'Journeyman Riding'),(3,6,45462,'Plague Strike'),(3,6,45477,'Icy Touch'),(3,6,45902,'Blood Strike'),(3,6,45903,'Offensive State (DND)'),(3,6,45927,'Summon Friend'),(3,6,47541,'Death Coil'),(3,6,48266,'Blood Presence'),(3,6,49410,'Forceful Deflection'),(3,6,49576,'Death Grip'),(3,6,52665,'Sigil'),(3,6,59224,'Mace Specialization'),(3,6,59879,'Blood Plague'),(3,6,59921,'Frost Fever'),(3,6,61437,'Opening'),(3,6,61455,'Runic Focus'),(4,1,78,'Heroic Strike'),(4,1,81,'Dodge'),(4,1,107,'Block'),(4,1,198,'One-Handed Maces'),(4,1,201,'One-Handed Swords'),(4,1,203,'Unarmed'),(4,1,204,'Defense'),(4,1,522,'SPELLDEFENSE (DND)'),(4,1,668,'Language Common'),(4,1,671,'Language Darnassian'),(4,1,1180,'Daggers'),(4,1,1843,'Disarm'),(4,1,2382,'Generic'),(4,1,2457,'Battle Stance'),(4,1,2479,'Honorless Target'),(4,1,3050,'Detect'),(4,1,3365,'Opening'),(4,1,5301,'Defensive State (DND)'),(4,1,6233,'Closing'),(4,1,6246,'Closing'),(4,1,6247,'Opening'),(4,1,6477,'Opening'),(4,1,6478,'Opening'),(4,1,6603,'Attack'),(4,1,7266,'Duel'),(4,1,7267,'Grovel'),(4,1,7355,'Stuck'),(4,1,8386,'Attacking'),(4,1,8737,'Mail'),(4,1,9077,'Leather'),(4,1,9078,'Cloth'),(4,1,9116,'Shield'),(4,1,9125,'Generic'),(4,1,20582,'Quickness'),(4,1,20583,'Nature Resistance'),(4,1,20585,'Wisp Spirit'),(4,1,21651,'Opening'),(4,1,21652,'Closing'),(4,1,22027,'Remove Insignia'),(4,1,22810,'Opening - No Text'),(4,1,32215,'Victorious State'),(4,1,45927,'Summon Friend'),(4,1,58984,'Shadowmelt'),(4,1,61437,'Opening'),(4,3,75,'Auto Shot'),(4,3,81,'Dodge'),(4,3,203,'Unarmed'),(4,3,204,'Defense'),(4,3,264,'Bows'),(4,3,522,'SPELLDEFENSE (DND)'),(4,3,668,'Language Common'),(4,3,671,'Language Darnassian'),(4,3,1180,'Daggers'),(4,3,1843,'Disarm'),(4,3,2382,'Generic'),(4,3,2479,'Honorless Target'),(4,3,2973,'Raptor Strike'),(4,3,3050,'Detect'),(4,3,3365,'Opening'),(4,3,6233,'Closing'),(4,3,6246,'Closing'),(4,3,6247,'Opening'),(4,3,6477,'Opening'),(4,3,6478,'Opening'),(4,3,6603,'Attack'),(4,3,7266,'Duel'),(4,3,7267,'Grovel'),(4,3,7355,'Stuck'),(4,3,8386,'Attacking'),(4,3,9077,'Leather'),(4,3,9078,'Cloth'),(4,3,9125,'Generic'),(4,3,13358,'Defensive State (DND)'),(4,3,20582,'Quickness'),(4,3,20583,'Nature Resistance'),(4,3,20585,'Wisp Spirit'),(4,3,21651,'Opening'),(4,3,21652,'Closing'),(4,3,22027,'Remove Insignia'),(4,3,22810,'Opening - No Text'),(4,3,24949,'Defensive State 2 (DND)'),(4,3,34082,'Advantaged State (DND)'),(4,3,45927,'Summon Friend'),(4,3,58984,'Shadowmelt'),(4,3,61437,'Opening'),(4,4,81,'Dodge'),(4,4,203,'Unarmed'),(4,4,204,'Defense'),(4,4,522,'SPELLDEFENSE (DND)'),(4,4,668,'Language Common'),(4,4,671,'Language Darnassian'),(4,4,1180,'Daggers'),(4,4,1752,'Sinister Strike'),(4,4,1843,'Disarm'),(4,4,2098,'Eviscerate'),(4,4,2382,'Generic'),(4,4,2479,'Honorless Target'),(4,4,2567,'Thrown'),(4,4,2764,'Throw'),(4,4,3050,'Detect'),(4,4,3365,'Opening'),(4,4,6233,'Closing'),(4,4,6246,'Closing'),(4,4,6247,'Opening'),(4,4,6477,'Opening'),(4,4,6478,'Opening'),(4,4,6603,'Attack'),(4,4,7266,'Duel'),(4,4,7267,'Grovel'),(4,4,7355,'Stuck'),(4,4,8386,'Attacking'),(4,4,9077,'Leather'),(4,4,9078,'Cloth'),(4,4,9125,'Generic'),(4,4,16092,'Defensive State (DND)'),(4,4,20582,'Quickness'),(4,4,20583,'Nature Resistance'),(4,4,20585,'Wisp Spirit'),(4,4,21184,'Rogue Passive (DND)'),(4,4,21651,'Opening'),(4,4,21652,'Closing'),(4,4,22027,'Remove Insignia'),(4,4,22810,'Opening - No Text'),(4,4,45927,'Summon Friend'),(4,4,58984,'Shadowmelt'),(4,4,61437,'Opening'),(4,5,81,'Dodge'),(4,5,198,'One-Handed Maces'),(4,5,203,'Unarmed'),(4,5,204,'Defense'),(4,5,522,'SPELLDEFENSE (DND)'),(4,5,585,'Smite'),(4,5,668,'Language Common'),(4,5,671,'Language Darnassian'),(4,5,1843,'Disarm'),(4,5,2050,'Lesser Heal'),(4,5,2382,'Generic'),(4,5,2479,'Honorless Target'),(4,5,3050,'Detect'),(4,5,3365,'Opening'),(4,5,5009,'Wands'),(4,5,5019,'Shoot'),(4,5,6233,'Closing'),(4,5,6246,'Closing'),(4,5,6247,'Opening'),(4,5,6477,'Opening'),(4,5,6478,'Opening'),(4,5,6603,'Attack'),(4,5,7266,'Duel'),(4,5,7267,'Grovel'),(4,5,7355,'Stuck'),(4,5,8386,'Attacking'),(4,5,9078,'Cloth'),(4,5,9125,'Generic'),(4,5,20582,'Quickness'),(4,5,20583,'Nature Resistance'),(4,5,20585,'Wisp Spirit'),(4,5,21651,'Opening'),(4,5,21652,'Closing'),(4,5,22027,'Remove Insignia'),(4,5,22810,'Opening - No Text'),(4,5,45927,'Summon Friend'),(4,5,58984,'Shadowmelt'),(4,5,61437,'Opening'),(4,6,81,'Dodge'),(4,6,196,'One-Handed Axes'),(4,6,197,'Two-Handed Axes'),(4,6,200,'Polearms'),(4,6,201,'One-Handed Swords'),(4,6,202,'Two-Handed Swords'),(4,6,203,'Unarmed'),(4,6,204,'Defense'),(4,6,522,'SPELLDEFENSE (DND)'),(4,6,668,'Language Common'),(4,6,671,'Language Darnassian'),(4,6,674,'Dual Wield'),(4,6,750,'Plate Mail'),(4,6,1843,'Disarm'),(4,6,2382,'Generic'),(4,6,2479,'Honorless Target'),(4,6,3050,'Detect'),(4,6,3127,'Parry'),(4,6,3275,'Linen Bandage'),(4,6,3276,'Heavy Linen Bandage'),(4,6,3277,'Wool Bandage'),(4,6,3278,'Heavy Wool Bandage'),(4,6,3365,'Opening'),(4,6,6233,'Closing'),(4,6,6246,'Closing'),(4,6,6247,'Opening'),(4,6,6477,'Opening'),(4,6,6478,'Opening'),(4,6,6603,'Attack'),(4,6,7266,'Duel'),(4,6,7267,'Grovel'),(4,6,7355,'Stuck'),(4,6,7928,'Silk Bandage'),(4,6,7929,'Heavy Silk Bandage'),(4,6,7934,'Anti-Venom'),(4,6,8386,'Attacking'),(4,6,8737,'Mail'),(4,6,9077,'Leather'),(4,6,9078,'Cloth'),(4,6,9125,'Generic'),(4,6,10840,'Mageweave Bandage'),(4,6,10841,'Heavy Mageweave Bandage'),(4,6,10846,'First Aid'),(4,6,18629,'Runecloth Bandage'),(4,6,18630,'Heavy Runecloth Bandage'),(4,6,20582,'Quickness'),(4,6,20583,'Nature Resistance'),(4,6,20585,'Wisp Spirit'),(4,6,21651,'Opening'),(4,6,21652,'Closing'),(4,6,22027,'Remove Insignia'),(4,6,22810,'Opening - No Text'),(4,6,33391,'Journeyman Riding'),(4,6,45462,'Plague Strike'),(4,6,45477,'Icy Touch'),(4,6,45902,'Blood Strike'),(4,6,45903,'Offensive State (DND)'),(4,6,45927,'Summon Friend'),(4,6,47541,'Death Coil'),(4,6,48266,'Blood Presence'),(4,6,49410,'Forceful Deflection'),(4,6,49576,'Death Grip'),(4,6,52665,'Sigil'),(4,6,58984,'Shadowmeld'),(4,6,59879,'Blood Plague'),(4,6,59921,'Frost Fever'),(4,6,61437,'Opening'),(4,6,61455,'Runic Focus'),(4,11,81,'Dodge'),(4,11,203,'Unarmed'),(4,11,204,'Defense'),(4,11,227,'Staves'),(4,11,522,'SPELLDEFENSE (DND)'),(4,11,668,'Language Common'),(4,11,671,'Language Darnassian'),(4,11,1180,'Daggers'),(4,11,1843,'Disarm'),(4,11,2382,'Generic'),(4,11,2479,'Honorless Target'),(4,11,3050,'Detect'),(4,11,3365,'Opening'),(4,11,5176,'Wrath'),(4,11,5185,'Healing Touch'),(4,11,6233,'Closing'),(4,11,6246,'Closing'),(4,11,6247,'Opening'),(4,11,6477,'Opening'),(4,11,6478,'Opening'),(4,11,6603,'Attack'),(4,11,7266,'Duel'),(4,11,7267,'Grovel'),(4,11,7355,'Stuck'),(4,11,8386,'Attacking'),(4,11,9077,'Leather'),(4,11,9078,'Cloth'),(4,11,9125,'Generic'),(4,11,20582,'Quickness'),(4,11,20583,'Nature Resistance'),(4,11,20585,'Wisp Spirit'),(4,11,21651,'Opening'),(4,11,21652,'Closing'),(4,11,22027,'Remove Insignia'),(4,11,22810,'Opening - No Text'),(4,11,27764,'Fetish'),(4,11,45927,'Summon Friend'),(4,11,58984,'Shadowmelt'),(4,11,61437,'Opening'),(5,1,78,'Heroic Strike'),(5,1,81,'Dodge'),(5,1,107,'Block'),(5,1,201,'One-Handed Swords'),(5,1,202,'Two-Handed Swords'),(5,1,203,'Unarmed'),(5,1,204,'Defense'),(5,1,522,'SPELLDEFENSE (DND)'),(5,1,669,'Language Orcish'),(5,1,1180,'Daggers'),(5,1,1843,'Disarm'),(5,1,2382,'Generic'),(5,1,2457,'Battle Stance'),(5,1,2479,'Honorless Target'),(5,1,3050,'Detect'),(5,1,3365,'Opening'),(5,1,5227,'Underwater Breathing'),(5,1,5301,'Defensive State (DND)'),(5,1,6233,'Closing'),(5,1,6246,'Closing'),(5,1,6247,'Opening'),(5,1,6477,'Opening'),(5,1,6478,'Opening'),(5,1,6603,'Attack'),(5,1,7266,'Duel'),(5,1,7267,'Grovel'),(5,1,7355,'Stuck'),(5,1,7744,'Will of the Forsaken'),(5,1,8386,'Attacking'),(5,1,8737,'Mail'),(5,1,9077,'Leather'),(5,1,9078,'Cloth'),(5,1,9116,'Shield'),(5,1,9125,'Generic'),(5,1,17737,'Language Gutterspeak'),(5,1,20577,'Cannibalize'),(5,1,20579,'Shadow Resistance'),(5,1,21651,'Opening'),(5,1,21652,'Closing'),(5,1,22027,'Remove Insignia'),(5,1,22810,'Opening - No Text'),(5,1,32215,'Victorious State'),(5,1,45927,'Summon Friend'),(5,1,61437,'Opening'),(5,4,81,'Dodge'),(5,4,203,'Unarmed'),(5,4,204,'Defense'),(5,4,522,'SPELLDEFENSE (DND)'),(5,4,669,'Language Orcish'),(5,4,1180,'Daggers'),(5,4,1752,'Sinister Strike'),(5,4,1843,'Disarm'),(5,4,2098,'Eviscerate'),(5,4,2382,'Generic'),(5,4,2479,'Honorless Target'),(5,4,2567,'Thrown'),(5,4,2764,'Throw'),(5,4,3050,'Detect'),(5,4,3365,'Opening'),(5,4,5227,'Underwater Breathing'),(5,4,6233,'Closing'),(5,4,6246,'Closing'),(5,4,6247,'Opening'),(5,4,6477,'Opening'),(5,4,6478,'Opening'),(5,4,6603,'Attack'),(5,4,7266,'Duel'),(5,4,7267,'Grovel'),(5,4,7355,'Stuck'),(5,4,7744,'Will of the Forsaken'),(5,4,8386,'Attacking'),(5,4,9077,'Leather'),(5,4,9078,'Cloth'),(5,4,9125,'Generic'),(5,4,16092,'Defensive State (DND)'),(5,4,17737,'Language Gutterspeak'),(5,4,20577,'Cannibalize'),(5,4,20579,'Shadow Resistance'),(5,4,21184,'Rogue Passive (DND)'),(5,4,21651,'Opening'),(5,4,21652,'Closing'),(5,4,22027,'Remove Insignia'),(5,4,22810,'Opening - No Text'),(5,4,45927,'Summon Friend'),(5,4,61437,'Opening'),(5,5,81,'Dodge'),(5,5,198,'One-Handed Maces'),(5,5,203,'Unarmed'),(5,5,204,'Defense'),(5,5,522,'SPELLDEFENSE (DND)'),(5,5,585,'Smite'),(5,5,669,'Language Orcish'),(5,5,1843,'Disarm'),(5,5,2050,'Lesser Heal'),(5,5,2382,'Generic'),(5,5,2479,'Honorless Target'),(5,5,3050,'Detect'),(5,5,3365,'Opening'),(5,5,5009,'Wands'),(5,5,5019,'Shoot'),(5,5,5227,'Underwater Breathing'),(5,5,6233,'Closing'),(5,5,6246,'Closing'),(5,5,6247,'Opening'),(5,5,6477,'Opening'),(5,5,6478,'Opening'),(5,5,6603,'Attack'),(5,5,7266,'Duel'),(5,5,7267,'Grovel'),(5,5,7355,'Stuck'),(5,5,7744,'Will of the Forsaken'),(5,5,8386,'Attacking'),(5,5,9078,'Cloth'),(5,5,9125,'Generic'),(5,5,17737,'Language Gutterspeak'),(5,5,20577,'Cannibalize'),(5,5,20579,'Shadow Resistance'),(5,5,21651,'Opening'),(5,5,21652,'Closing'),(5,5,22027,'Remove Insignia'),(5,5,22810,'Opening - No Text'),(5,5,45927,'Summon Friend'),(5,5,61437,'Opening'),(5,6,81,'Dodge'),(5,6,196,'One-Handed Axes'),(5,6,197,'Two-Handed Axes'),(5,6,200,'Polearms'),(5,6,201,'One-Handed Swords'),(5,6,202,'Two-Handed Swords'),(5,6,203,'Unarmed'),(5,6,204,'Defense'),(5,6,522,'SPELLDEFENSE (DND)'),(5,6,669,'Language Orcish'),(5,6,674,'Dual Wield'),(5,6,750,'Plate Mail'),(5,6,1843,'Disarm'),(5,6,2382,'Generic'),(5,6,2479,'Honorless Target'),(5,6,3050,'Detect'),(5,6,3127,'Parry'),(5,6,3275,'Linen Bandage'),(5,6,3276,'Heavy Linen Bandage'),(5,6,3277,'Wool Bandage'),(5,6,3278,'Heavy Wool Bandage'),(5,6,3365,'Opening'),(5,6,5227,'Underwater Breathing'),(5,6,6233,'Closing'),(5,6,6246,'Closing'),(5,6,6247,'Opening'),(5,6,6477,'Opening'),(5,6,6478,'Opening'),(5,6,6603,'Attack'),(5,6,7266,'Duel'),(5,6,7267,'Grovel'),(5,6,7355,'Stuck'),(5,6,7744,'Will of the Forsaken'),(5,6,7928,'Silk Bandage'),(5,6,7929,'Heavy Silk Bandage'),(5,6,7934,'Anti-Venom'),(5,6,8386,'Attacking'),(5,6,8737,'Mail'),(5,6,9077,'Leather'),(5,6,9078,'Cloth'),(5,6,9125,'Generic'),(5,6,10840,'Mageweave Bandage'),(5,6,10841,'Heavy Mageweave Bandage'),(5,6,10846,'First Aid'),(5,6,17737,'Language Gutterspeak'),(5,6,18629,'Runecloth Bandage'),(5,6,18630,'Heavy Runecloth Bandage'),(5,6,20577,'Cannibalize'),(5,6,20579,'Shadow Resistance'),(5,6,21651,'Opening'),(5,6,21652,'Closing'),(5,6,22027,'Remove Insignia'),(5,6,22810,'Opening - No Text'),(5,6,33391,'Journeyman Riding'),(5,6,45462,'Plague Strike'),(5,6,45477,'Icy Touch'),(5,6,45902,'Blood Strike'),(5,6,45903,'Offensive State (DND)'),(5,6,45927,'Summon Friend'),(5,6,47541,'Death Coil'),(5,6,48266,'Blood Presence'),(5,6,49410,'Forceful Deflection'),(5,6,49576,'Death Grip'),(5,6,52665,'Sigil'),(5,6,59879,'Blood Plague'),(5,6,59921,'Frost Fever'),(5,6,61437,'Opening'),(5,6,61455,'Runic Focus'),(5,8,81,'Dodge'),(5,8,133,'Fireball'),(5,8,168,'Frost Armor'),(5,8,203,'Unarmed'),(5,8,204,'Defense'),(5,8,227,'Staves'),(5,8,522,'SPELLDEFENSE (DND)'),(5,8,669,'Language Orcish'),(5,8,1843,'Disarm'),(5,8,2382,'Generic'),(5,8,2479,'Honorless Target'),(5,8,3050,'Detect'),(5,8,3365,'Opening'),(5,8,5009,'Wands'),(5,8,5019,'Shoot'),(5,8,5227,'Underwater Breathing'),(5,8,6233,'Closing'),(5,8,6246,'Closing'),(5,8,6247,'Opening'),(5,8,6477,'Opening'),(5,8,6478,'Opening'),(5,8,6603,'Attack'),(5,8,7266,'Duel'),(5,8,7267,'Grovel'),(5,8,7355,'Stuck'),(5,8,7744,'Will of the Forsaken'),(5,8,8386,'Attacking'),(5,8,9078,'Cloth'),(5,8,9125,'Generic'),(5,8,17737,'Language Gutterspeak'),(5,8,20577,'Cannibalize'),(5,8,20579,'Shadow Resistance'),(5,8,21651,'Opening'),(5,8,21652,'Closing'),(5,8,22027,'Remove Insignia'),(5,8,22810,'Opening - No Text'),(5,8,45927,'Summon Friend'),(5,8,61437,'Opening'),(5,9,81,'Dodge'),(5,9,203,'Unarmed'),(5,9,204,'Defense'),(5,9,522,'SPELLDEFENSE (DND)'),(5,9,669,'Language Orcish'),(5,9,686,'Shadow Bolt'),(5,9,687,'Demon Skin'),(5,9,1180,'Daggers'),(5,9,1843,'Disarm'),(5,9,2382,'Generic'),(5,9,2479,'Honorless Target'),(5,9,3050,'Detect'),(5,9,3365,'Opening'),(5,9,5009,'Wands'),(5,9,5019,'Shoot'),(5,9,5227,'Underwater Breathing'),(5,9,6233,'Closing'),(5,9,6246,'Closing'),(5,9,6247,'Opening'),(5,9,6477,'Opening'),(5,9,6478,'Opening'),(5,9,6603,'Attack'),(5,9,7266,'Duel'),(5,9,7267,'Grovel'),(5,9,7355,'Stuck'),(5,9,7744,'Will of the Forsaken'),(5,9,8386,'Attacking'),(5,9,9078,'Cloth'),(5,9,9125,'Generic'),(5,9,17737,'Language Gutterspeak'),(5,9,20577,'Cannibalize'),(5,9,20579,'Shadow Resistance'),(5,9,21651,'Opening'),(5,9,21652,'Closing'),(5,9,22027,'Remove Insignia'),(5,9,22810,'Opening - No Text'),(5,9,45927,'Summon Friend'),(1,9,58284,'Chaos Bolt Passive'),(5,9,61437,'Opening'),(6,1,78,'Heroic Strike'),(6,1,81,'Dodge'),(6,1,107,'Block'),(6,1,196,'One-Handed Axes'),(6,1,198,'One-Handed Maces'),(6,1,199,'Two-Handed Maces'),(6,1,203,'Unarmed'),(6,1,204,'Defense'),(6,1,522,'SPELLDEFENSE (DND)'),(6,1,669,'Language Orcish'),(6,1,670,'Language Taurahe'),(6,1,1843,'Disarm'),(6,1,2382,'Generic'),(6,1,2457,'Battle Stance'),(6,1,2479,'Honorless Target'),(6,1,3050,'Detect'),(6,1,3365,'Opening'),(6,1,5301,'Defensive State (DND)'),(6,1,6233,'Closing'),(6,1,6246,'Closing'),(6,1,6247,'Opening'),(6,1,6477,'Opening'),(6,1,6478,'Opening'),(6,1,6603,'Attack'),(6,1,7266,'Duel'),(6,1,7267,'Grovel'),(6,1,7355,'Stuck'),(6,1,8386,'Attacking'),(6,1,8737,'Mail'),(6,1,9077,'Leather'),(6,1,9078,'Cloth'),(6,1,9116,'Shield'),(6,1,9125,'Generic'),(6,1,20549,'War Stomp'),(6,1,20550,'Endurance'),(6,1,20551,'Nature Resistance'),(6,1,20552,'Cultivation'),(6,1,21651,'Opening'),(6,1,21652,'Closing'),(6,1,22027,'Remove Insignia'),(6,1,22810,'Opening - No Text'),(6,1,32215,'Victorious State'),(6,1,45927,'Summon Friend'),(6,1,61437,'Opening'),(6,3,75,'Auto Shot'),(6,3,81,'Dodge'),(6,3,196,'One-Handed Axes'),(6,3,203,'Unarmed'),(6,3,204,'Defense'),(6,3,266,'Guns'),(6,3,522,'SPELLDEFENSE (DND)'),(6,3,669,'Language Orcish'),(6,3,670,'Language Taurahe'),(6,3,1843,'Disarm'),(6,3,2382,'Generic'),(6,3,2479,'Honorless Target'),(6,3,2973,'Raptor Strike'),(6,3,3050,'Detect'),(6,3,3365,'Opening'),(6,3,6233,'Closing'),(6,3,6246,'Closing'),(6,3,6247,'Opening'),(6,3,6477,'Opening'),(6,3,6478,'Opening'),(6,3,6603,'Attack'),(6,3,7266,'Duel'),(6,3,7267,'Grovel'),(6,3,7355,'Stuck'),(6,3,8386,'Attacking'),(6,3,9077,'Leather'),(6,3,9078,'Cloth'),(6,3,9125,'Generic'),(6,3,13358,'Defensive State (DND)'),(6,3,20549,'War Stomp'),(6,3,20550,'Endurance'),(6,3,20551,'Nature Resistance'),(6,3,20552,'Cultivation'),(6,3,21651,'Opening'),(6,3,21652,'Closing'),(6,3,22027,'Remove Insignia'),(6,3,22810,'Opening - No Text'),(6,3,24949,'Defensive State 2 (DND)'),(6,3,34082,'Advantaged State (DND)'),(6,3,45927,'Summon Friend'),(6,3,61437,'Opening'),(6,6,81,'Dodge'),(6,6,196,'One-Handed Axes'),(6,6,197,'Two-Handed Axes'),(6,6,200,'Polearms'),(6,6,201,'One-Handed Swords'),(6,6,202,'Two-Handed Swords'),(6,6,203,'Unarmed'),(6,6,204,'Defense'),(6,6,522,'SPELLDEFENSE (DND)'),(6,6,669,'Language Orcish'),(6,6,670,'Language Taurahe'),(6,6,674,'Dual Wield'),(6,6,750,'Plate Mail'),(6,6,1843,'Disarm'),(6,6,2382,'Generic'),(6,6,2479,'Honorless Target'),(6,6,3050,'Detect'),(6,6,3127,'Parry'),(6,6,3275,'Linen Bandage'),(6,6,3276,'Heavy Linen Bandage'),(6,6,3277,'Wool Bandage'),(6,6,3278,'Heavy Wool Bandage'),(6,6,3365,'Opening'),(6,6,6233,'Closing'),(6,6,6246,'Closing'),(6,6,6247,'Opening'),(6,6,6477,'Opening'),(6,6,6478,'Opening'),(6,6,6603,'Attack'),(6,6,7266,'Duel'),(6,6,7267,'Grovel'),(6,6,7355,'Stuck'),(6,6,7928,'Silk Bandage'),(6,6,7929,'Heavy Silk Bandage'),(6,6,7934,'Anti-Venom'),(6,6,8386,'Attacking'),(6,6,8737,'Mail'),(6,6,9077,'Leather'),(6,6,9078,'Cloth'),(6,6,9125,'Generic'),(6,6,10840,'Mageweave Bandage'),(6,6,10841,'Heavy Mageweave Bandage'),(6,6,10846,'First Aid'),(6,6,18629,'Runecloth Bandage'),(6,6,18630,'Heavy Runecloth Bandage'),(6,6,20549,'War Stomp'),(6,6,20550,'Endurance'),(6,6,20551,'Nature Resistance'),(6,6,20552,'Cultivation'),(6,6,21651,'Opening'),(6,6,21652,'Closing'),(6,6,22027,'Remove Insignia'),(6,6,22810,'Opening - No Text'),(6,6,33391,'Journeyman Riding'),(6,6,45462,'Plague Strike'),(6,6,45477,'Icy Touch'),(6,6,45902,'Blood Strike'),(6,6,45903,'Offensive State (DND)'),(6,6,45927,'Summon Friend'),(6,6,47541,'Death Coil'),(6,6,48266,'Blood Presence'),(6,6,49410,'Forceful Deflection'),(6,6,49576,'Death Grip'),(6,6,52665,'Sigil'),(6,6,59879,'Blood Plague'),(6,6,59921,'Frost Fever'),(6,6,61437,'Opening'),(6,6,61455,'Runic Focus'),(6,7,81,'Dodge'),(6,7,107,'Block'),(6,7,198,'One-Handed Maces'),(6,7,203,'Unarmed'),(6,7,204,'Defense'),(6,7,227,'Staves'),(6,7,331,'Healing Wave'),(6,7,403,'Lightning Bolt'),(6,7,522,'SPELLDEFENSE (DND)'),(6,7,669,'Language Orcish'),(6,7,670,'Language Taurahe'),(6,7,1843,'Disarm'),(6,7,2382,'Generic'),(6,7,2479,'Honorless Target'),(6,7,3050,'Detect'),(6,7,3365,'Opening'),(6,7,6233,'Closing'),(6,7,6246,'Closing'),(6,7,6247,'Opening'),(6,7,6477,'Opening'),(6,7,6478,'Opening'),(6,7,6603,'Attack'),(6,7,7266,'Duel'),(6,7,7267,'Grovel'),(6,7,7355,'Stuck'),(6,7,8386,'Attacking'),(6,7,9077,'Leather'),(6,7,9078,'Cloth'),(6,7,9116,'Shield'),(6,7,9125,'Generic'),(6,7,20549,'War Stomp'),(6,7,20550,'Endurance'),(6,7,20551,'Nature Resistance'),(6,7,20552,'Cultivation'),(6,7,21651,'Opening'),(6,7,21652,'Closing'),(6,7,22027,'Remove Insignia'),(6,7,22810,'Opening - No Text'),(6,7,27763,'Totem'),(6,7,45927,'Summon Friend'),(6,7,61437,'Opening'),(6,11,81,'Dodge'),(6,11,198,'One-Handed Maces'),(6,11,203,'Unarmed'),(6,11,204,'Defense'),(6,11,227,'Staves'),(6,11,522,'SPELLDEFENSE (DND)'),(6,11,669,'Language Orcish'),(6,11,670,'Language Taurahe'),(6,11,1843,'Disarm'),(6,11,2382,'Generic'),(6,11,2479,'Honorless Target'),(6,11,3050,'Detect'),(6,11,3365,'Opening'),(6,11,5176,'Wrath'),(6,11,5185,'Healing Touch'),(6,11,6233,'Closing'),(6,11,6246,'Closing'),(6,11,6247,'Opening'),(6,11,6477,'Opening'),(6,11,6478,'Opening'),(6,11,6603,'Attack'),(6,11,7266,'Duel'),(6,11,7267,'Grovel'),(6,11,7355,'Stuck'),(6,11,8386,'Attacking'),(6,11,9077,'Leather'),(6,11,9078,'Cloth'),(6,11,9125,'Generic'),(6,11,20549,'War Stomp'),(6,11,20550,'Endurance'),(6,11,20551,'Nature Resistance'),(6,11,20552,'Cultivation'),(6,11,21651,'Opening'),(6,11,21652,'Closing'),(6,11,22027,'Remove Insignia'),(6,11,22810,'Opening - No Text'),(6,11,27764,'Fetish'),(6,11,45927,'Summon Friend'),(6,11,61437,'Opening'),(7,1,78,'Heroic Strike'),(7,1,81,'Dodge'),(7,1,107,'Block'),(7,1,198,'One-Handed Maces'),(7,1,201,'One-Handed Swords'),(7,1,203,'Unarmed'),(7,1,204,'Defense'),(7,1,522,'SPELLDEFENSE (DND)'),(7,1,668,'Language Common'),(7,1,1180,'Daggers'),(7,1,1843,'Disarm'),(7,1,2382,'Generic'),(7,1,2457,'Battle Stance'),(7,1,2479,'Honorless Target'),(7,1,3050,'Detect'),(7,1,3365,'Opening'),(7,1,5301,'Defensive State (DND)'),(7,1,6233,'Closing'),(7,1,6246,'Closing'),(7,1,6247,'Opening'),(7,1,6477,'Opening'),(7,1,6478,'Opening'),(7,1,6603,'Attack'),(7,1,7266,'Duel'),(7,1,7267,'Grovel'),(7,1,7340,'Language Gnomish'),(7,1,7355,'Stuck'),(7,1,8386,'Attacking'),(7,1,8737,'Mail'),(7,1,9077,'Leather'),(7,1,9078,'Cloth'),(7,1,9116,'Shield'),(7,1,9125,'Generic'),(7,1,20589,'Escape Artist'),(7,1,20591,'Expansive Mind'),(7,1,20592,'Arcane Resistance'),(7,1,20593,'Engineering Specialization'),(7,1,21651,'Opening'),(7,1,21652,'Closing'),(7,1,22027,'Remove Insignia'),(7,1,22810,'Opening - No Text'),(7,1,32215,'Victorious State'),(7,1,45927,'Summon Friend'),(7,1,61437,'Opening'),(7,4,81,'Dodge'),(7,4,203,'Unarmed'),(7,4,204,'Defense'),(7,4,522,'SPELLDEFENSE (DND)'),(7,4,668,'Language Common'),(7,4,1180,'Daggers'),(7,4,1752,'Sinister Strike'),(7,4,1843,'Disarm'),(7,4,2098,'Eviscerate'),(7,4,2382,'Generic'),(7,4,2479,'Honorless Target'),(7,4,2567,'Thrown'),(7,4,2764,'Throw'),(7,4,3050,'Detect'),(7,4,3365,'Opening'),(7,4,6233,'Closing'),(7,4,6246,'Closing'),(7,4,6247,'Opening'),(7,4,6477,'Opening'),(7,4,6478,'Opening'),(7,4,6603,'Attack'),(7,4,7266,'Duel'),(7,4,7267,'Grovel'),(7,4,7340,'Language Gnomish'),(7,4,7355,'Stuck'),(7,4,8386,'Attacking'),(7,4,9077,'Leather'),(7,4,9078,'Cloth'),(7,4,9125,'Generic'),(7,4,16092,'Defensive State (DND)'),(7,4,20589,'Escape Artist'),(7,4,20591,'Expansive Mind'),(7,4,20592,'Arcane Resistance'),(7,4,20593,'Engineering Specialization'),(7,4,21184,'Rogue Passive (DND)'),(7,4,21651,'Opening'),(7,4,21652,'Closing'),(7,4,22027,'Remove Insignia'),(7,4,22810,'Opening - No Text'),(7,4,45927,'Summon Friend'),(7,4,61437,'Opening'),(7,6,81,'Dodge'),(7,6,196,'One-Handed Axes'),(7,6,197,'Two-Handed Axes'),(7,6,200,'Polearms'),(7,6,201,'One-Handed Swords'),(7,6,202,'Two-Handed Swords'),(7,6,203,'Unarmed'),(7,6,204,'Defense'),(7,6,522,'SPELLDEFENSE (DND)'),(7,6,668,'Language Common'),(7,6,674,'Dual Wield'),(7,6,750,'Plate Mail'),(7,6,1843,'Disarm'),(7,6,2382,'Generic'),(7,6,2479,'Honorless Target'),(7,6,3050,'Detect'),(7,6,3127,'Parry'),(7,6,3275,'Linen Bandage'),(7,6,3276,'Heavy Linen Bandage'),(7,6,3277,'Wool Bandage'),(7,6,3278,'Heavy Wool Bandage'),(7,6,3365,'Opening'),(7,6,6233,'Closing'),(7,6,6246,'Closing'),(7,6,6247,'Opening'),(7,6,6477,'Opening'),(7,6,6478,'Opening'),(7,6,6603,'Attack'),(7,6,7266,'Duel'),(7,6,7267,'Grovel'),(7,6,7340,'Language Gnomish'),(7,6,7355,'Stuck'),(7,6,7928,'Silk Bandage'),(7,6,7929,'Heavy Silk Bandage'),(7,6,7934,'Anti-Venom'),(7,6,8386,'Attacking'),(7,6,8737,'Mail'),(7,6,9077,'Leather'),(7,6,9078,'Cloth'),(7,6,9125,'Generic'),(7,6,10840,'Mageweave Bandage'),(7,6,10841,'Heavy Mageweave Bandage'),(7,6,10846,'First Aid'),(7,6,18629,'Runecloth Bandage'),(7,6,18630,'Heavy Runecloth Bandage'),(7,6,20589,'Escape Artist'),(7,6,20591,'Expansive Mind'),(7,6,20592,'Arcane Resistance'),(7,6,20593,'Engineering Specialization'),(7,6,21651,'Opening'),(7,6,21652,'Closing'),(7,6,22027,'Remove Insignia'),(7,6,22810,'Opening - No Text'),(7,6,33391,'Journeyman Riding'),(7,6,45462,'Plague Strike'),(7,6,45477,'Icy Touch'),(7,6,45902,'Blood Strike'),(7,6,45903,'Offensive State (DND)'),(7,6,45927,'Summon Friend'),(7,6,47541,'Death Coil'),(7,6,48266,'Blood Presence'),(7,6,49410,'Forceful Deflection'),(7,6,49576,'Death Grip'),(7,6,52665,'Sigil'),(7,6,59879,'Blood Plague'),(7,6,59921,'Frost Fever'),(7,6,61437,'Opening'),(7,6,61455,'Runic Focus'),(7,8,81,'Dodge'),(7,8,133,'Fireball'),(7,8,168,'Frost Armor'),(7,8,203,'Unarmed'),(7,8,204,'Defense'),(7,8,227,'Staves'),(7,8,522,'SPELLDEFENSE (DND)'),(7,8,668,'Language Common'),(7,8,1843,'Disarm'),(7,8,2382,'Generic'),(7,8,2479,'Honorless Target'),(7,8,3050,'Detect'),(7,8,3365,'Opening'),(7,8,5009,'Wands'),(7,8,5019,'Shoot'),(7,8,6233,'Closing'),(7,8,6246,'Closing'),(7,8,6247,'Opening'),(7,8,6477,'Opening'),(7,8,6478,'Opening'),(7,8,6603,'Attack'),(7,8,7266,'Duel'),(7,8,7267,'Grovel'),(7,8,7340,'Language Gnomish'),(7,8,7355,'Stuck'),(7,8,8386,'Attacking'),(7,8,9078,'Cloth'),(7,8,9125,'Generic'),(7,8,20589,'Escape Artist'),(7,8,20591,'Expansive Mind'),(7,8,20592,'Arcane Resistance'),(7,8,20593,'Engineering Specialization'),(7,8,21651,'Opening'),(7,8,21652,'Closing'),(7,8,22027,'Remove Insignia'),(7,8,22810,'Opening - No Text'),(7,8,45927,'Summon Friend'),(7,8,61437,'Opening'),(7,9,81,'Dodge'),(7,9,203,'Unarmed'),(7,9,204,'Defense'),(7,9,522,'SPELLDEFENSE (DND)'),(7,9,668,'Language Common'),(7,9,686,'Shadow Bolt'),(7,9,687,'Demon Skin'),(7,9,1180,'Daggers'),(7,9,1843,'Disarm'),(7,9,2382,'Generic'),(7,9,2479,'Honorless Target'),(7,9,3050,'Detect'),(7,9,3365,'Opening'),(7,9,5009,'Wands'),(7,9,5019,'Shoot'),(7,9,6233,'Closing'),(7,9,6246,'Closing'),(7,9,6247,'Opening'),(7,9,6477,'Opening'),(7,9,6478,'Opening'),(7,9,6603,'Attack'),(7,9,7266,'Duel'),(7,9,7267,'Grovel'),(7,9,7340,'Language Gnomish'),(7,9,7355,'Stuck'),(7,9,8386,'Attacking'),(7,9,9078,'Cloth'),(7,9,9125,'Generic'),(7,9,20589,'Escape Artist'),(7,9,20591,'Expansive Mind'),(7,9,20592,'Arcane Resistance'),(7,9,20593,'Engineering Specialization'),(7,9,21651,'Opening'),(7,9,21652,'Closing'),(7,9,22027,'Remove Insignia'),(7,9,22810,'Opening - No Text'),(7,9,45927,'Summon Friend'),(7,9,61437,'Opening'),(8,1,78,'Heroic Strike'),(8,1,81,'Dodge'),(8,1,107,'Block'),(8,1,196,'One-Handed Axes'),(8,1,203,'Unarmed'),(8,1,204,'Defense'),(8,1,522,'SPELLDEFENSE (DND)'),(8,1,669,'Language Orcish'),(8,1,1180,'Daggers'),(8,1,1843,'Disarm'),(8,1,2382,'Generic'),(8,1,2457,'Battle Stance'),(8,1,2479,'Honorless Target'),(8,1,2567,'Thrown'),(8,1,2764,'Throw'),(8,1,3050,'Detect'),(8,1,3365,'Opening'),(8,1,5301,'Defensive State (DND)'),(8,1,6233,'Closing'),(8,1,6246,'Closing'),(8,1,6247,'Opening'),(8,1,6477,'Opening'),(8,1,6478,'Opening'),(8,1,6603,'Attack'),(8,1,7266,'Duel'),(8,1,7267,'Grovel'),(8,1,7341,'Language Troll'),(8,1,7355,'Stuck'),(8,1,8386,'Attacking'),(8,1,8737,'Mail'),(8,1,9077,'Leather'),(8,1,9078,'Cloth'),(8,1,9116,'Shield'),(8,1,9125,'Generic'),(8,1,20555,'Regeneration'),(8,1,20557,'Beast Slaying'),(8,1,20558,'Throwing Specialization'),(8,1,21651,'Opening'),(8,1,21652,'Closing'),(8,1,22027,'Remove Insignia'),(8,1,22810,'Opening - No Text'),(8,1,26290,'Bow Specialization'),(8,1,26297,'Berserking'),(8,1,32215,'Victorious State'),(8,1,45927,'Summon Friend'),(8,1,58943,'Da Voodoo Shuffle'),(8,1,61437,'Opening'),(8,3,75,'Auto Shot'),(8,3,81,'Dodge'),(8,3,196,'One-Handed Axes'),(8,3,203,'Unarmed'),(8,3,204,'Defense'),(8,3,264,'Bows'),(8,3,522,'SPELLDEFENSE (DND)'),(8,3,669,'Language Orcish'),(8,3,1843,'Disarm'),(8,3,2382,'Generic'),(8,3,2479,'Honorless Target'),(8,3,2973,'Raptor Strike'),(8,3,3050,'Detect'),(8,3,3365,'Opening'),(8,3,6233,'Closing'),(8,3,6246,'Closing'),(8,3,6247,'Opening'),(8,3,6477,'Opening'),(8,3,6478,'Opening'),(8,3,6603,'Attack'),(8,3,7266,'Duel'),(8,3,7267,'Grovel'),(8,3,7341,'Language Troll'),(8,3,7355,'Stuck'),(8,3,8386,'Attacking'),(8,3,9077,'Leather'),(8,3,9078,'Cloth'),(8,3,9125,'Generic'),(8,3,13358,'Defensive State (DND)'),(8,3,26297,'Berserking'),(8,3,20555,'Regeneration'),(8,3,20557,'Beast Slaying'),(8,3,20558,'Throwing Specialization'),(8,3,21651,'Opening'),(8,3,21652,'Closing'),(8,3,22027,'Remove Insignia'),(8,3,22810,'Opening - No Text'),(8,3,24949,'Defensive State 2 (DND)'),(8,3,26290,'Bow Specialization'),(8,3,34082,'Advantaged State (DND)'),(8,3,45927,'Summon Friend'),(8,3,58943,'Da Voodoo Shuffle'),(8,3,61437,'Opening'),(8,4,81,'Dodge'),(8,4,203,'Unarmed'),(8,4,204,'Defense'),(8,4,522,'SPELLDEFENSE (DND)'),(8,4,669,'Language Orcish'),(8,4,1180,'Daggers'),(8,4,1752,'Sinister Strike'),(8,4,1843,'Disarm'),(8,4,2098,'Eviscerate'),(8,4,2382,'Generic'),(8,4,2479,'Honorless Target'),(8,4,2567,'Thrown'),(8,4,2764,'Throw'),(8,4,3050,'Detect'),(8,4,3365,'Opening'),(8,4,6233,'Closing'),(8,4,6246,'Closing'),(8,4,6247,'Opening'),(8,4,6477,'Opening'),(8,4,6478,'Opening'),(8,4,6603,'Attack'),(8,4,7266,'Duel'),(8,4,7267,'Grovel'),(8,4,7341,'Language Troll'),(8,4,7355,'Stuck'),(8,4,8386,'Attacking'),(8,4,9077,'Leather'),(8,4,9078,'Cloth'),(8,4,9125,'Generic'),(8,4,16092,'Defensive State (DND)'),(8,4,20555,'Regeneration'),(8,4,20557,'Beast Slaying'),(8,4,20558,'Throwing Specialization'),(8,4,21184,'Rogue Passive (DND)'),(8,4,21651,'Opening'),(8,4,21652,'Closing'),(8,4,22027,'Remove Insignia'),(8,4,22810,'Opening - No Text'),(8,4,26290,'Bow Specialization'),(8,4,26297,'Berserking'),(8,4,45927,'Summon Friend'),(8,4,58943,'Da Voodoo Shuffle'),(8,4,61437,'Opening'),(8,5,81,'Dodge'),(8,5,198,'One-Handed Maces'),(8,5,203,'Unarmed'),(8,5,204,'Defense'),(8,5,522,'SPELLDEFENSE (DND)'),(8,5,585,'Smite'),(8,5,669,'Language Orcish'),(8,5,1843,'Disarm'),(8,5,2050,'Lesser Heal'),(8,5,2382,'Generic'),(8,5,2479,'Honorless Target'),(8,5,3050,'Detect'),(8,5,3365,'Opening'),(8,5,5009,'Wands'),(8,5,5019,'Shoot'),(8,5,6233,'Closing'),(8,5,6246,'Closing'),(8,5,6247,'Opening'),(8,5,6477,'Opening'),(8,5,6478,'Opening'),(8,5,6603,'Attack'),(8,5,7266,'Duel'),(8,5,7267,'Grovel'),(8,5,7341,'Language Troll'),(8,5,7355,'Stuck'),(8,5,8386,'Attacking'),(8,5,9078,'Cloth'),(8,5,9125,'Generic'),(8,5,26297,'Berserking'),(8,5,20555,'Regeneration'),(8,5,20557,'Beast Slaying'),(8,5,20558,'Throwing Specialization'),(8,5,21651,'Opening'),(8,5,21652,'Closing'),(8,5,22027,'Remove Insignia'),(8,5,22810,'Opening - No Text'),(8,5,26290,'Bow Specialization'),(8,5,45927,'Summon Friend'),(8,5,58943,'Da Voodoo Shuffle'),(8,5,61437,'Opening'),(8,6,81,'Dodge'),(8,6,196,'One-Handed Axes'),(8,6,197,'Two-Handed Axes'),(8,6,200,'Polearms'),(8,6,201,'One-Handed Swords'),(8,6,202,'Two-Handed Swords'),(8,6,203,'Unarmed'),(8,6,204,'Defense'),(8,6,522,'SPELLDEFENSE (DND)'),(8,6,669,'Language Orcish'),(8,6,674,'Dual Wield'),(8,6,750,'Plate Mail'),(8,6,1843,'Disarm'),(8,6,2382,'Generic'),(8,6,2479,'Honorless Target'),(8,6,3050,'Detect'),(8,6,3127,'Parry'),(8,6,3275,'Linen Bandage'),(8,6,3276,'Heavy Linen Bandage'),(8,6,3277,'Wool Bandage'),(8,6,3278,'Heavy Wool Bandage'),(8,6,3365,'Opening'),(8,6,6233,'Closing'),(8,6,6246,'Closing'),(8,6,6247,'Opening'),(8,6,6477,'Opening'),(8,6,6478,'Opening'),(8,6,6603,'Attack'),(8,6,7266,'Duel'),(8,6,7267,'Grovel'),(8,6,7341,'Language Troll'),(8,6,7355,'Stuck'),(8,6,7928,'Silk Bandage'),(8,6,7929,'Heavy Silk Bandage'),(8,6,7934,'Anti-Venom'),(8,6,8386,'Attacking'),(8,6,8737,'Mail'),(8,6,9077,'Leather'),(8,6,9078,'Cloth'),(8,6,9125,'Generic'),(8,6,10840,'Mageweave Bandage'),(8,6,10841,'Heavy Mageweave Bandage'),(8,6,10846,'First Aid'),(8,6,18629,'Runecloth Bandage'),(8,6,18630,'Heavy Runecloth Bandage'),(8,6,20555,'Regeneration'),(8,6,20557,'Beast Slaying'),(8,6,20558,'Throwing Specialization'),(8,6,21651,'Opening'),(8,6,21652,'Closing'),(8,6,22027,'Remove Insignia'),(8,6,22810,'Opening - No Text'),(8,6,26290,'Bow Specialization'),(8,6,33391,'Journeyman Riding'),(8,6,45462,'Plague Strike'),(8,6,45477,'Icy Touch'),(8,6,45902,'Blood Strike'),(8,6,45903,'Offensive State (DND)'),(8,6,45927,'Summon Friend'),(8,6,47541,'Death Coil'),(8,6,48266,'Blood Presence'),(8,6,49410,'Forceful Deflection'),(8,6,49576,'Death Grip'),(8,6,26297,'Berserking'),(8,6,52665,'Sigil'),(8,6,58943,'Da Voodoo Shuffle'),(8,6,59879,'Blood Plague'),(8,6,59921,'Frost Fever'),(8,6,61437,'Opening'),(8,6,61455,'Runic Focus'),(8,7,81,'Dodge'),(8,7,107,'Block'),(8,7,198,'One-Handed Maces'),(8,7,203,'Unarmed'),(8,7,204,'Defense'),(8,7,227,'Staves'),(8,7,331,'Healing Wave'),(8,7,403,'Lightning Bolt'),(8,7,522,'SPELLDEFENSE (DND)'),(8,7,669,'Language Orcish'),(8,7,1843,'Disarm'),(8,7,2382,'Generic'),(8,7,2479,'Honorless Target'),(8,7,3050,'Detect'),(8,7,3365,'Opening'),(8,7,6233,'Closing'),(8,7,6246,'Closing'),(8,7,6247,'Opening'),(8,7,6477,'Opening'),(8,7,6478,'Opening'),(8,7,6603,'Attack'),(8,7,7266,'Duel'),(8,7,7267,'Grovel'),(8,7,7341,'Language Troll'),(8,7,7355,'Stuck'),(8,7,8386,'Attacking'),(8,7,9077,'Leather'),(8,7,9078,'Cloth'),(8,7,9116,'Shield'),(8,7,9125,'Generic'),(8,7,26297,'Berserking'),(8,7,20555,'Regeneration'),(8,7,20557,'Beast Slaying'),(8,7,20558,'Throwing Specialization'),(8,7,21651,'Opening'),(8,7,21652,'Closing'),(8,7,22027,'Remove Insignia'),(8,7,22810,'Opening - No Text'),(8,7,26290,'Bow Specialization'),(8,7,27763,'Totem'),(8,7,45927,'Summon Friend'),(8,7,58943,'Da Voodoo Shuffle'),(8,7,61437,'Opening'),(8,8,81,'Dodge'),(8,8,133,'Fireball'),(8,8,168,'Frost Armor'),(8,8,203,'Unarmed'),(8,8,204,'Defense'),(8,8,227,'Staves'),(8,8,522,'SPELLDEFENSE (DND)'),(8,8,669,'Language Orcish'),(8,8,1843,'Disarm'),(8,8,2382,'Generic'),(8,8,2479,'Honorless Target'),(8,8,3050,'Detect'),(8,8,3365,'Opening'),(8,8,5009,'Wands'),(8,8,5019,'Shoot'),(8,8,6233,'Closing'),(8,8,6246,'Closing'),(8,8,6247,'Opening'),(8,8,6477,'Opening'),(8,8,6478,'Opening'),(8,8,6603,'Attack'),(8,8,7266,'Duel'),(8,8,7267,'Grovel'),(8,8,7341,'Language Troll'),(8,8,7355,'Stuck'),(8,8,8386,'Attacking'),(8,8,9078,'Cloth'),(8,8,9125,'Generic'),(8,8,26297,'Berserking'),(8,8,20555,'Regeneration'),(8,8,20557,'Beast Slaying'),(8,8,20558,'Throwing Specialization'),(8,8,21651,'Opening'),(8,8,21652,'Closing'),(8,8,22027,'Remove Insignia'),(8,8,22810,'Opening - No Text'),(8,8,26290,'Bow Specialization'),(8,8,45927,'Summon Friend'),(8,8,58943,'Da Voodoo Shuffle'),(8,8,61437,'Opening'),(10,2,81,'Dodge'),(10,2,107,'Block'),(10,2,201,'One-Handed Swords'),(10,2,202,'Two-Handed Swords'),(10,2,203,'Unarmed'),(10,2,204,'Defense'),(10,2,522,'SPELLDEFENSE (DND)'),(10,2,635,'Holy Light'),(10,2,669,'Language Orcish'),(10,2,813,'Language Thalassian'),(10,2,822,'Magic Resistance'),(10,2,2382,'Generic'),(10,2,2479,'Honorless Target'),(10,2,3050,'Detect'),(10,2,3365,'Opening'),(10,2,6233,'Closing'),(10,2,6246,'Closing'),(10,2,6247,'Opening'),(10,2,6477,'Opening'),(10,2,6478,'Opening'),(10,2,6603,'Attack'),(10,2,7266,'Duel'),(10,2,7267,'Grovel'),(10,2,7355,'Stuck'),(10,2,8386,'Attacking'),(10,2,8737,'Mail'),(10,2,9077,'Leather'),(10,2,9078,'Cloth'),(10,2,9116,'Shield'),(10,2,9125,'Generic'),(10,2,21084,'Seal of Righteousness'),(10,2,21651,'Opening'),(10,2,21652,'Closing'),(10,2,22027,'Remove Insignia'),(10,2,22810,'Opening - No Text'),(10,2,27762,'Libram'),(10,2,28730,'Arcane Torrent'),(10,2,28877,'Arcane Affinity'),(10,3,75,'Auto Shot'),(10,3,81,'Dodge'),(10,3,203,'Unarmed'),(10,3,204,'Defense'),(10,3,264,'Bows'),(10,3,522,'SPELLDEFENSE (DND)'),(10,3,669,'Language Orcish'),(10,3,813,'Language Thalassian'),(10,3,822,'Magic Resistance'),(10,3,1180,'Daggers'),(10,3,2382,'Generic'),(10,3,2479,'Honorless Target'),(10,3,2973,'Raptor Strike'),(10,3,3050,'Detect'),(10,3,3365,'Opening'),(10,3,6233,'Closing'),(10,3,6246,'Closing'),(10,3,6247,'Opening'),(10,3,6477,'Opening'),(10,3,6478,'Opening'),(10,3,6603,'Attack'),(10,3,7266,'Duel'),(10,3,7267,'Grovel'),(10,3,7355,'Stuck'),(10,3,8386,'Attacking'),(10,3,9077,'Leather'),(10,3,9078,'Cloth'),(10,3,9125,'Generic'),(10,3,13358,'Defensive State (DND)'),(10,3,21651,'Opening'),(10,3,21652,'Closing'),(10,3,22027,'Remove Insignia'),(10,3,22810,'Opening - No Text'),(10,3,24949,'Defensive State 2 (DND)'),(10,3,28730,'Arcane Torrent'),(10,3,28877,'Arcane Affinity'),(10,3,34082,'Advantaged State (DND)'),(10,4,81,'Dodge'),(10,4,203,'Unarmed'),(10,4,204,'Defense'),(10,4,522,'SPELLDEFENSE (DND)'),(10,4,669,'Language Orcish'),(10,4,813,'Language Thalassian'),(10,4,822,'Magic Resistance'),(10,4,1180,'Daggers'),(10,4,1752,'Sinister Strike'),(10,4,2098,'Eviscerate'),(10,4,2382,'Generic'),(10,4,2479,'Honorless Target'),(10,4,2567,'Thrown'),(10,4,2764,'Throw'),(10,4,3050,'Detect'),(10,4,3365,'Opening'),(10,4,6233,'Closing'),(10,4,6246,'Closing'),(10,4,6247,'Opening'),(10,4,6477,'Opening'),(10,4,6478,'Opening'),(10,4,6603,'Attack'),(10,4,7266,'Duel'),(10,4,7267,'Grovel'),(10,4,7355,'Stuck'),(10,4,8386,'Attacking'),(10,4,9077,'Leather'),(10,4,9078,'Cloth'),(10,4,9125,'Generic'),(10,4,16092,'Defensive State (DND)'),(10,4,21184,'Rogue Passive (DND)'),(10,4,21651,'Opening'),(10,4,21652,'Closing'),(10,4,22027,'Remove Insignia'),(10,4,22810,'Opening - No Text'),(10,4,25046,'Arcane Torrent'),(10,4,28877,'Arcane Affinity'),(10,5,81,'Dodge'),(10,5,198,'One-Handed Maces'),(10,5,203,'Unarmed'),(10,5,204,'Defense'),(10,5,522,'SPELLDEFENSE (DND)'),(10,5,585,'Smite'),(10,5,669,'Language Orcish'),(10,5,813,'Language Thalassian'),(10,5,822,'Magic Resistance'),(10,5,2050,'Lesser Heal'),(10,5,2382,'Generic'),(10,5,2479,'Honorless Target'),(10,5,3050,'Detect'),(10,5,3365,'Opening'),(10,5,5009,'Wands'),(10,5,5019,'Shoot'),(10,5,6233,'Closing'),(10,5,6246,'Closing'),(10,5,6247,'Opening'),(10,5,6477,'Opening'),(10,5,6478,'Opening'),(10,5,6603,'Attack'),(10,5,7266,'Duel'),(10,5,7267,'Grovel'),(10,5,7355,'Stuck'),(10,5,8386,'Attacking'),(10,5,9078,'Cloth'),(10,5,9125,'Generic'),(10,5,21651,'Opening'),(10,5,21652,'Closing'),(10,5,22027,'Remove Insignia'),(10,5,22810,'Opening - No Text'),(10,5,28730,'Arcane Torrent'),(10,5,28877,'Arcane Affinity'),(10,6,81,'Dodge'),(10,6,196,'One-Handed Axes'),(10,6,197,'Two-Handed Axes'),(10,6,200,'Polearms'),(10,6,201,'One-Handed Swords'),(10,6,202,'Two-Handed Swords'),(10,6,203,'Unarmed'),(10,6,204,'Defense'),(10,6,522,'SPELLDEFENSE (DND)'),(10,6,669,'Language Orcish'),(10,6,674,'Dual Wield'),(10,6,750,'Plate Mail'),(10,6,813,'Language Thalassian'),(10,6,822,'Magic Resistance'),(10,6,1843,'Disarm'),(10,6,2382,'Generic'),(10,6,2479,'Honorless Target'),(10,6,3050,'Detect'),(10,6,3127,'Parry'),(10,6,3275,'Linen Bandage'),(10,6,3276,'Heavy Linen Bandage'),(10,6,3277,'Wool Bandage'),(10,6,3278,'Heavy Wool Bandage'),(10,6,3365,'Opening'),(10,6,6233,'Closing'),(10,6,6246,'Closing'),(10,6,6247,'Opening'),(10,6,6477,'Opening'),(10,6,6478,'Opening'),(10,6,6603,'Attack'),(10,6,7266,'Duel'),(10,6,7267,'Grovel'),(10,6,7355,'Stuck'),(10,6,7928,'Silk Bandage'),(10,6,7929,'Heavy Silk Bandage'),(10,6,7934,'Anti-Venom'),(10,6,8386,'Attacking'),(10,6,8737,'Mail'),(10,6,9077,'Leather'),(10,6,9078,'Cloth'),(10,6,9125,'Generic'),(10,6,10840,'Mageweave Bandage'),(10,6,10841,'Heavy Mageweave Bandage'),(10,6,10846,'First Aid'),(10,6,18629,'Runecloth Bandage'),(10,6,18630,'Heavy Runecloth Bandage'),(10,6,21651,'Opening'),(10,6,21652,'Closing'),(10,6,22027,'Remove Insignia'),(10,6,22810,'Opening - No Text'),(10,6,28877,'Arcane Affinity'),(10,6,33391,'Journeyman Riding'),(10,6,45462,'Plague Strike'),(10,6,45477,'Icy Touch'),(10,6,45902,'Blood Strike'),(10,6,45903,'Offensive State (DND)'),(10,6,45927,'Summon Friend'),(10,6,47541,'Death Coil'),(10,6,48266,'Blood Presence'),(10,6,49410,'Forceful Deflection'),(10,6,49576,'Death Grip'),(10,6,50613,'Arcane Torrent'),(10,6,52665,'Sigil'),(10,6,59879,'Blood Plague'),(10,6,59921,'Frost Fever'),(10,6,61437,'Opening'),(10,6,61455,'Runic Focus'),(10,8,81,'Dodge'),(10,8,133,'Fireball'),(10,8,168,'Frost Armor'),(10,8,203,'Unarmed'),(10,8,204,'Defense'),(10,8,227,'Staves'),(10,8,522,'SPELLDEFENSE (DND)'),(10,8,669,'Language Orcish'),(10,8,813,'Language Thalassian'),(10,8,822,'Magic Resistance'),(10,8,2382,'Generic'),(10,8,2479,'Honorless Target'),(10,8,3050,'Detect'),(10,8,3365,'Opening'),(10,8,5009,'Wands'),(10,8,5019,'Shoot'),(10,8,6233,'Closing'),(10,8,6246,'Closing'),(10,8,6247,'Opening'),(10,8,6477,'Opening'),(10,8,6478,'Opening'),(10,8,6603,'Attack'),(10,8,7266,'Duel'),(10,8,7267,'Grovel'),(10,8,7355,'Stuck'),(10,8,8386,'Attacking'),(10,8,9078,'Cloth'),(10,8,9125,'Generic'),(10,8,21651,'Opening'),(10,8,21652,'Closing'),(10,8,22027,'Remove Insignia'),(10,8,22810,'Opening - No Text'),(10,8,28730,'Arcane Torrent'),(10,8,28877,'Arcane Affinity'),(10,9,81,'Dodge'),(10,9,203,'Unarmed'),(10,9,204,'Defense'),(10,9,522,'SPELLDEFENSE (DND)'),(10,9,669,'Language Orcish'),(10,9,686,'Shadow Bolt'),(10,9,687,'Demon Skin'),(10,9,813,'Language Thalassian'),(10,9,822,'Magic Resistance'),(10,9,1180,'Daggers'),(10,9,2382,'Generic'),(10,9,2479,'Honorless Target'),(10,9,3050,'Detect'),(10,9,3365,'Opening'),(10,9,5009,'Wands'),(10,9,5019,'Shoot'),(10,9,6233,'Closing'),(10,9,6246,'Closing'),(10,9,6247,'Opening'),(10,9,6477,'Opening'),(10,9,6478,'Opening'),(10,9,6603,'Attack'),(10,9,7266,'Duel'),(10,9,7267,'Grovel'),(10,9,7355,'Stuck'),(10,9,8386,'Attacking'),(10,9,9078,'Cloth'),(10,9,9125,'Generic'),(10,9,21651,'Opening'),(10,9,21652,'Closing'),(10,9,22027,'Remove Insignia'),(10,9,22810,'Opening - No Text'),(10,9,28730,'Arcane Torrent'),(10,9,28877,'Arcane Affinity'),(11,1,78,'Heroic Strike'),(11,1,81,'Dodge'),(11,1,107,'Block'),(11,1,198,'One-Handed Maces'),(11,1,201,'One-Handed Swords'),(11,1,202,'Two-Handed Swords'),(11,1,203,'Unarmed'),(11,1,204,'Defense'),(11,1,522,'SPELLDEFENSE (DND)'),(11,1,668,'Language Common'),(11,1,1843,'Disarm'),(11,1,2382,'Generic'),(11,1,2457,'Battle Stance'),(11,1,2479,'Honorless Target'),(11,1,3050,'Detect'),(11,1,3365,'Opening'),(11,1,5301,'Defensive State (DND)'),(11,1,6233,'Closing'),(11,1,6246,'Closing'),(11,1,6247,'Opening'),(11,1,6477,'Opening'),(11,1,6478,'Opening'),(11,1,6562,'Heroic Presence'),(11,1,6603,'Attack'),(11,1,7266,'Duel'),(11,1,7267,'Grovel'),(11,1,7355,'Stuck'),(11,1,8386,'Attacking'),(11,1,8737,'Mail'),(11,1,9077,'Leather'),(11,1,9078,'Cloth'),(11,1,9116,'Shield'),(11,1,9125,'Generic'),(11,1,21651,'Opening'),(11,1,21652,'Closing'),(11,1,22027,'Remove Insignia'),(11,1,22810,'Opening - No Text'),(11,1,28875,'Gemcutting'),(11,1,28880,'Gift of the Naaru'),(11,1,29932,'Language Draenei'),(11,1,32215,'Victorious State'),(11,1,45927,'Summon Friend'),(11,1,59221,'Shadow Resistance'),(11,1,61437,'Opening'),(11,2,81,'Dodge'),(11,2,107,'Block'),(11,2,198,'One-Handed Maces'),(11,2,199,'Two-Handed Maces'),(11,2,203,'Unarmed'),(11,2,204,'Defense'),(11,2,522,'SPELLDEFENSE (DND)'),(11,2,635,'Holy Light'),(11,2,668,'Language Common'),(11,2,1843,'Disarm'),(11,2,2382,'Generic'),(11,2,2479,'Honorless Target'),(11,2,3050,'Detect'),(11,2,3365,'Opening'),(11,2,6233,'Closing'),(11,2,6246,'Closing'),(11,2,6247,'Opening'),(11,2,6477,'Opening'),(11,2,6478,'Opening'),(11,2,6562,'Heroic Presence'),(11,2,6603,'Attack'),(11,2,7266,'Duel'),(11,2,7267,'Grovel'),(11,2,7355,'Stuck'),(11,2,8386,'Attacking'),(11,2,8737,'Mail'),(11,2,9077,'Leather'),(11,2,9078,'Cloth'),(11,2,9116,'Shield'),(11,2,9125,'Generic'),(11,2,21084,'Seal of Righteousness'),(11,2,21651,'Opening'),(11,2,21652,'Closing'),(11,2,22027,'Remove Insignia'),(11,2,22810,'Opening - No Text'),(11,2,27762,'Libram'),(11,2,28875,'Gemcutting'),(11,2,29932,'Language Draenei'),(11,2,45927,'Summon Friend'),(11,2,59221,'Shadow Resistance'),(11,2,59542,'Gift of the Naaru'),(11,2,61437,'Opening'),(11,3,75,'Auto Shot'),(11,3,81,'Dodge'),(11,3,201,'One-Handed Swords'),(11,3,203,'Unarmed'),(11,3,204,'Defense'),(11,3,522,'SPELLDEFENSE (DND)'),(11,3,668,'Language Common'),(11,3,1843,'Disarm'),(11,3,2382,'Generic'),(11,3,2479,'Honorless Target'),(11,3,2973,'Raptor Strike'),(11,3,3050,'Detect'),(11,3,3365,'Opening'),(11,3,5011,'Crossbows'),(11,3,6233,'Closing'),(11,3,6246,'Closing'),(11,3,6247,'Opening'),(11,3,6477,'Opening'),(11,3,6478,'Opening'),(11,3,6562,'Heroic Presence'),(11,3,6603,'Attack'),(11,3,7266,'Duel'),(11,3,7267,'Grovel'),(11,3,7355,'Stuck'),(11,3,8386,'Attacking'),(11,3,9077,'Leather'),(11,3,9078,'Cloth'),(11,3,9125,'Generic'),(11,3,13358,'Defensive State (DND)'),(11,3,21651,'Opening'),(11,3,21652,'Closing'),(11,3,22027,'Remove Insignia'),(11,3,22810,'Opening - No Text'),(11,3,24949,'Defensive State 2 (DND)'),(11,3,28875,'Gemcutting'),(11,3,29932,'Language Draenei'),(11,3,34082,'Advantaged State (DND)'),(11,3,45927,'Summon Friend'),(11,3,59221,'Shadow Resistance'),(11,3,59543,'Gift of the Naaru'),(11,3,61437,'Opening'),(11,5,81,'Dodge'),(11,5,198,'One-Handed Maces'),(11,5,203,'Unarmed'),(11,5,204,'Defense'),(11,5,522,'SPELLDEFENSE (DND)'),(11,5,585,'Smite'),(11,5,668,'Language Common'),(11,5,1843,'Disarm'),(11,5,2050,'Lesser Heal'),(11,5,2382,'Generic'),(11,5,2479,'Honorless Target'),(11,5,3050,'Detect'),(11,5,3365,'Opening'),(11,5,5009,'Wands'),(11,5,5019,'Shoot'),(11,5,6233,'Closing'),(11,5,6246,'Closing'),(11,5,6247,'Opening'),(11,5,6477,'Opening'),(11,5,6478,'Opening'),(11,5,6603,'Attack'),(11,5,7266,'Duel'),(11,5,7267,'Grovel'),(11,5,7355,'Stuck'),(11,5,8386,'Attacking'),(11,5,9078,'Cloth'),(11,5,9125,'Generic'),(11,5,21651,'Opening'),(11,5,21652,'Closing'),(11,5,22027,'Remove Insignia'),(11,5,22810,'Opening - No Text'),(11,5,28875,'Gemcutting'),(11,5,28878,'Inspiring Presence'),(11,5,29932,'Language Draenei'),(11,5,45927,'Summon Friend'),(11,5,59221,'Shadow Resistance'),(11,5,59544,'Gift of the Naaru'),(11,5,61437,'Opening'),(11,6,81,'Dodge'),(11,6,196,'One-Handed Axes'),(11,6,197,'Two-Handed Axes'),(11,6,200,'Polearms'),(11,6,201,'One-Handed Swords'),(11,6,202,'Two-Handed Swords'),(11,6,203,'Unarmed'),(11,6,204,'Defense'),(11,6,522,'SPELLDEFENSE (DND)'),(11,6,668,'Language Common'),(11,6,674,'Dual Wield'),(11,6,750,'Plate Mail'),(11,6,1843,'Disarm'),(11,6,2382,'Generic'),(11,6,2479,'Honorless Target'),(11,6,3050,'Detect'),(11,6,3127,'Parry'),(11,6,3275,'Linen Bandage'),(11,6,3276,'Heavy Linen Bandage'),(11,6,3277,'Wool Bandage'),(11,6,3278,'Heavy Wool Bandage'),(11,6,3365,'Opening'),(11,6,6233,'Closing'),(11,6,6246,'Closing'),(11,6,6247,'Opening'),(11,6,6477,'Opening'),(11,6,6478,'Opening'),(11,6,6562,'Heroic Presence'),(11,6,6603,'Attack'),(11,6,7266,'Duel'),(11,6,7267,'Grovel'),(11,6,7355,'Stuck'),(11,6,7928,'Silk Bandage'),(11,6,7929,'Heavy Silk Bandage'),(11,6,7934,'Anti-Venom'),(11,6,8386,'Attacking'),(11,6,8737,'Mail'),(11,6,9077,'Leather'),(11,6,9078,'Cloth'),(11,6,9125,'Generic'),(11,6,10840,'Mageweave Bandage'),(11,6,10841,'Heavy Mageweave Bandage'),(11,6,10846,'First Aid'),(11,6,18629,'Runecloth Bandage'),(11,6,18630,'Heavy Runecloth Bandage'),(11,6,21651,'Opening'),(11,6,21652,'Closing'),(11,6,22027,'Remove Insignia'),(11,6,22810,'Opening - No Text'),(11,6,28875,'Gemcutting'),(11,6,29932,'Language Draenei'),(11,6,33391,'Journeyman Riding'),(11,6,45462,'Plague Strike'),(11,6,45477,'Icy Touch'),(11,6,45902,'Blood Strike'),(11,6,45903,'Offensive State (DND)'),(11,6,45927,'Summon Friend'),(11,6,47541,'Death Coil'),(11,6,48266,'Blood Presence'),(11,6,49410,'Forceful Deflection'),(11,6,49576,'Death Grip'),(11,6,52665,'Sigil'),(11,6,59221,'Shadow Resistance'),(11,6,59539,'Shadow Resistance'),(11,6,59545,'Gift of the Naaru'),(11,6,59879,'Blood Plague'),(11,6,59921,'Frost Fever'),(11,6,61437,'Opening'),(11,6,61455,'Runic Focus'),(11,7,81,'Dodge'),(11,7,107,'Block'),(11,7,198,'One-Handed Maces'),(11,7,203,'Unarmed'),(11,7,204,'Defense'),(11,7,227,'Staves'),(11,7,331,'Healing Wave'),(11,7,403,'Lightning Bolt'),(11,7,522,'SPELLDEFENSE (DND)'),(11,7,668,'Language Common'),(11,7,1843,'Disarm'),(11,7,2382,'Generic'),(11,7,2479,'Honorless Target'),(11,7,3050,'Detect'),(11,7,3365,'Opening'),(11,7,6233,'Closing'),(11,7,6246,'Closing'),(11,7,6247,'Opening'),(11,7,6477,'Opening'),(11,7,6478,'Opening'),(11,7,6603,'Attack'),(11,7,7266,'Duel'),(11,7,7267,'Grovel'),(11,7,7355,'Stuck'),(11,7,8386,'Attacking'),(11,7,9077,'Leather'),(11,7,9078,'Cloth'),(11,7,9116,'Shield'),(11,7,9125,'Generic'),(11,7,21651,'Opening'),(11,7,21652,'Closing'),(11,7,22027,'Remove Insignia'),(11,7,22810,'Opening - No Text'),(11,7,27763,'Totem'),(11,7,28875,'Gemcutting'),(11,7,28878,'Inspiring Presence'),(11,7,29932,'Language Draenei'),(11,7,45927,'Summon Friend'),(11,7,59221,'Shadow Resistance'),(11,7,59547,'Gift of the Naaru'),(11,7,61437,'Opening'),(11,8,81,'Dodge'),(11,8,133,'Fireball'),(11,8,168,'Frost Armor'),(11,8,203,'Unarmed'),(11,8,204,'Defense'),(11,8,227,'Staves'),(11,8,522,'SPELLDEFENSE (DND)'),(11,8,668,'Language Common'),(11,8,1843,'Disarm'),(11,8,2382,'Generic'),(11,8,2479,'Honorless Target'),(11,8,3050,'Detect'),(11,8,3365,'Opening'),(11,8,5009,'Wands'),(11,8,5019,'Shoot'),(11,8,6233,'Closing'),(11,8,6246,'Closing'),(11,8,6247,'Opening'),(11,8,6477,'Opening'),(11,8,6478,'Opening'),(11,8,6603,'Attack'),(11,8,7266,'Duel'),(11,8,7267,'Grovel'),(11,8,7355,'Stuck'),(11,8,8386,'Attacking'),(11,8,9078,'Cloth'),(11,8,9125,'Generic'),(11,8,21651,'Opening'),(11,8,21652,'Closing'),(11,8,22027,'Remove Insignia'),(11,8,22810,'Opening - No Text'),(11,8,28875,'Gemcutting'),(11,8,28878,'Inspiring Presence'),(11,8,29932,'Language Draenei'),(11,8,45927,'Summon Friend'),(11,8,59221,'Shadow Resistance'),(11,8,59548,'Gift of the Naaru'),(11,8,61437,'Opening'),(7,9,58284,'Chaos Bolt Passive'),(10,9,58284,'Chaos Bolt Passive'),(11,2,60091,'Judgement Anti-Parry/Dodge Passive'),(10,2,60091,'Judgement Anti-Parry/Dodge Passive'),(3,2,60091,'Judgement Anti-Parry/Dodge Passive'),(1,2,60091,'Judgement Anti-Parry/Dodge Passive'),(0,6,56816,'Rune Strike');
 
-- core world SQL update 6589_world_quest_template.sql
 
ALTER TABLE `quest_template`
    ADD COLUMN `ReqItemId5` mediumint(8) UNSIGNED DEFAULT '0' NOT NULL AFTER `ReqItemId4`,
    ADD COLUMN `ReqItemId6` mediumint(8) UNSIGNED DEFAULT '0' NOT NULL AFTER `ReqItemId5`,
    ADD COLUMN `ReqItemCount5` smallint(5) UNSIGNED DEFAULT '0' NOT NULL AFTER `ReqItemCount4`,
    ADD COLUMN `ReqItemCount6` smallint(5) UNSIGNED DEFAULT '0' NOT NULL AFTER `ReqItemCount5`; 
-- core world SQL update 6589_world_spell_bonus_data.sql
 
ALTER TABLE `spell_bonus_data` CHANGE COLUMN `entry` `entry` mediumint(8) unsigned NOT NULL DEFAULT '0';
 
-- core world SQL update 6589_world_spell_elixir.sql
 
DELETE FROM `spell_elixir` WHERE `entry` IN (67016,67017,67018);
INSERT INTO `spell_elixir` (`entry`, `mask`) VALUES
(67016,0x3),
(67017,0x3),
(67018,0x3);
 
-- core world SQL update 6589_world_spell_proc_event.sql
 
ALTER TABLE `spell_proc_event` CHANGE COLUMN `entry` `entry` mediumint(8) unsigned NOT NULL DEFAULT '0';

DELETE FROM `spell_proc_event` WHERE `entry` IN
(44401, 58642, 58676, 61433, 61434);
 
-- core world SQL update 6597_world_spell_proc_event.sql
 
DELETE FROM `spell_proc_event` WHERE `entry` IN (67353, 57989, 65661, 53601);
INSERT INTO `spell_proc_event` VALUES
(67353, 0x00, 7, 0x00008000, 0x00100500, 0x00000000, 0x00000000, 0x00000000, 0, 0, 0),
(57989, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0, 0, 0),
(65661, 0x00, 15,0x00400010, 0x20020004, 0x00000000, 0x00000010, 0x00000000, 0, 100, 0),
(53601, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x000A02A8, 0x00000000, 0, 0, 6); 
-- core world SQL update 6643_world_gameobject_template.sql
 
-- Alter data1 column in gameobject_template to allow signed value
ALTER TABLE `gameobject_template` CHANGE `data1` `data1temp` INT(10);
ALTER TABLE `gameobject_template` ADD `data1` INT SIGNED NOT NULL DEFAULT '-1' AFTER `data0`;
UPDATE `gameobject_template` SET `data1` = `data1temp`;
ALTER TABLE `gameobject_template` DROP `data1temp`;
 
-- core world SQL update 6644_world_creature_template.sql
 
ALTER TABLE creature_template ADD gossip_menu_id mediumint(8) unsigned NOT NULL default 0 AFTER IconName;
 
-- core world SQL update 6644_world_gossip_menu_option.sql
 
DROP TABLE IF EXISTS gossip_menu_option;
CREATE TABLE gossip_menu_option (
  menu_id smallint(6) unsigned NOT NULL default '0',
  id smallint(6) unsigned NOT NULL default '0',
  option_icon mediumint(8) unsigned NOT NULL default '0',
  option_text text,
  option_id tinyint(3) unsigned NOT NULL default '0',
  npc_option_npcflag int(10) unsigned NOT NULL default '0',
  action_menu_id mediumint(8) unsigned NOT NULL default '0',
  action_poi_id mediumint(8) unsigned NOT NULL default '0',
  action_script_id mediumint(8) unsigned NOT NULL default '0',
  box_coded tinyint(3) unsigned NOT NULL default '0',
  box_money int(11) unsigned NOT NULL default '0',
  box_text text,
  cond_1 tinyint(3) unsigned NOT NULL default '0',
  cond_1_val_1 mediumint(8) unsigned NOT NULL default '0',
  cond_1_val_2 mediumint(8) unsigned NOT NULL default '0',
  cond_2 tinyint(3) unsigned NOT NULL default '0',
  cond_2_val_1 mediumint(8) unsigned NOT NULL default '0',
  cond_2_val_2 mediumint(8) unsigned NOT NULL default '0',
  cond_3 tinyint(3) unsigned NOT NULL default '0',
  cond_3_val_1 mediumint(8) unsigned NOT NULL default '0',
  cond_3_val_2 mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY (menu_id, id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DELETE FROM gossip_menu_option WHERE menu_id=0;
INSERT INTO gossip_menu_option VALUES
(0,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,1,1,'GOSSIP_OPTION_VENDOR',3,128,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,2,2,'GOSSIP_OPTION_TAXIVENDOR',4,8192,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,3,3,'GOSSIP_OPTION_TRAINER',5,16,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,4,4,'GOSSIP_OPTION_SPIRITHEALER',6,16384,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,5,4,'GOSSIP_OPTION_SPIRITGUIDE',7,32768,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,6,5,'GOSSIP_OPTION_INNKEEPER',8,65536,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,7,6,'GOSSIP_OPTION_BANKER',9,131072,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,8,7,'GOSSIP_OPTION_PETITIONER',10,262144,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,9,8,'GOSSIP_OPTION_TABARDDESIGNER',11,524288,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,10,9,'GOSSIP_OPTION_BATTLEFIELD',12,1048576,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,11,6,'GOSSIP_OPTION_AUCTIONEER',13,2097152,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,12,0,'GOSSIP_OPTION_STABLEPET',14,4194304,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,13,1,'GOSSIP_OPTION_ARMORER',15,4096,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,14,2,'GOSSIP_OPTION_UNLEARNTALENTS',16,16,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,15,2,'GOSSIP_OPTION_UNLEARNPETSKILLS',17,16,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,16,2,'GOSSIP_OPTION_LEARNDUALSPEC',18,16,0,0,0,0,10000000,NULL,0,0,0,0,0,0,0,0,0),
(0,17,0,'GOSSIP_OPTION_OUTDOORPVP',1,19,536870912,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0);
 
-- core world SQL update 6644_world_gossip_menu.sql
 
DROP TABLE IF EXISTS gossip_menu;
CREATE TABLE gossip_menu (
  entry smallint(6) unsigned NOT NULL default '0',
  text_id mediumint(8) unsigned NOT NULL default '0',
  cond_1 tinyint(3) unsigned NOT NULL default '0',
  cond_1_val_1 mediumint(8) unsigned NOT NULL default '0',
  cond_1_val_2 mediumint(8) unsigned NOT NULL default '0',
  cond_2 tinyint(3) unsigned NOT NULL default '0',
  cond_2_val_1 mediumint(8) unsigned NOT NULL default '0',
  cond_2_val_2 mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY (entry, text_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
 
-- core world SQL update 6644_world_gossip_scripts.sql
 
DROP TABLE IF EXISTS `gossip_scripts`;
CREATE TABLE `gossip_scripts` (
  `id` mediumint(8) unsigned NOT NULL default '0',
  `delay` int(10) unsigned NOT NULL default '0',
  `command` mediumint(8) unsigned NOT NULL default '0',
  `datalong` mediumint(8) unsigned NOT NULL default '0',
  `datalong2` int(10) unsigned NOT NULL default '0',
  `dataint` int(11) NOT NULL default '0',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `o` float NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
 
-- core world SQL update 6644_world_locales_npc_option.sql
 
ALTER TABLE locales_npc_option CHANGE COLUMN entry id smallint(6) unsigned NOT NULL default '0';
ALTER TABLE locales_npc_option ADD menu_id smallint(6) unsigned NOT NULL default '0' FIRST;

ALTER TABLE locales_npc_option DROP PRIMARY KEY;
ALTER TABLE locales_npc_option ADD PRIMARY KEY (menu_id, id);

RENAME TABLE locales_npc_option TO locales_gossip_menu_option;
 
-- core world SQL update 6644_world_npc_gossip_textid.sql
 
DROP TABLE IF EXISTS npc_gossip_textid;
 
-- core world SQL update 6644_world_npc_option.sql
 
DROP TABLE IF EXISTS npc_option;
 
-- core world SQL update 6644_world_scriptname.sql
 
UPDATE `creature_template` SET `ScriptName` = 'npc_taxi' WHERE `entry` = 17209; 
-- core world SQL update 6645_world_gameobject_template.sql
 
-- Alter data6 column in gameobject_template to allow signed value
ALTER TABLE `gameobject_template` CHANGE `data6` `data6temp` INT(10);
ALTER TABLE `gameobject_template` ADD `data6` INT SIGNED NOT NULL AFTER `data5`;
UPDATE `gameobject_template` SET `data6` = `data6temp`;
ALTER TABLE `gameobject_template` DROP `data6temp`;
 
-- core world SQL update 6648_world_gameobject_template.sql
 
UPDATE `gameobject_template` SET `ScriptName`='go_jotunheim_cage' WHERE `entry`=192135;
 
-- core world SQL update 6655_world_spell_bonus_data.sql
 
UPDATE spell_bonus_data SET dot_bonus = 1.15 WHERE entry IN (55078, 55095); 
-- core world SQL update 6657_world_spell_proc_event.sql
 
DELETE FROM `spell_proc_event` WHERE `entry` IN (16952,16954);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(16952,0,7,233472,1024,262144,0,2,0,0,0),
(16954,0,7,233472,1024,262144,0,2,0,0,0); 
-- core world SQL update 6664_world_quest_template.sql
 
ALTER TABLE `quest_template` ADD `RepObjectiveFaction2` smallint(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `RepObjectiveValue`;
ALTER TABLE `quest_template` ADD `RepObjectiveValue2` mediumint(9) NOT NULL DEFAULT 0 AFTER `RepObjectiveFaction2`;

 
-- core world SQL update 6665_world_creature_classlevelstats.sql
 
-- Table structure for table `creature_classlevelstats`

DROP TABLE IF EXISTS `creature_classlevelstats`;

CREATE TABLE `creature_classlevelstats` (
  `exp` tinyint(1) NOT NULL,
  `class` tinyint(1) NOT NULL,
  `level` tinyint(1) NOT NULL,
  `basehp` smallint(2) NOT NULL,
  `basemana` smallint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `creature_classlevelstats` (`exp`,`class`,`level`,`basehp`,`basemana`) VALUES
(0,1,1,42,0),
(0,1,2,55,0),
(0,1,3,71,0),
(0,1,4,86,0),
(0,1,5,102,0),
(0,1,6,120,0),
(0,1,7,137,0),
(0,1,8,156,0),
(0,1,9,176,0),
(0,1,10,198,0),
(0,1,11,222,0),
(0,1,12,247,0),
(0,1,13,273,0),
(0,1,14,300,0),
(0,1,15,328,0),
(0,1,16,356,0),
(0,1,17,386,0),
(0,1,18,417,0),
(0,1,19,449,0),
(0,1,20,484,0),
(0,1,21,521,0),
(0,1,22,562,0),
(0,1,23,605,0),
(0,1,24,651,0),
(0,1,25,699,0),
(0,1,26,750,0),
(0,1,27,800,0),
(0,1,28,853,0),
(0,1,29,905,0),
(0,1,30,955,0),
(0,1,31,1006,0),
(0,1,32,1057,0),
(0,1,33,1110,0),
(0,1,34,1163,0),
(0,1,35,1220,0),
(0,1,36,1277,0),
(0,1,37,1336,0),
(0,1,38,1395,0),
(0,1,39,1459,0),
(0,1,40,1524,0),
(0,1,41,1585,0),
(0,1,42,1651,0),
(0,1,43,1716,0),
(0,1,44,1782,0),
(0,1,45,1848,0),
(0,1,46,1919,0),
(0,1,47,1990,0),
(0,1,48,2061,0),
(0,1,49,2138,0),
(0,1,50,2215,0),
(0,1,51,2292,0),
(0,1,52,2371,0),
(0,1,53,2453,0),
(0,1,54,2533,0),
(0,1,55,2614,0),
(0,1,56,2699,0),
(0,1,57,2784,0),
(0,1,58,2871,0),
(0,1,59,2961,0),
(0,1,60,3052,0),
(0,1,61,3144,0),
(0,1,62,3237,0),
(0,1,63,3331,0),
(0,1,64,0,0),
(0,1,65,3524,0),
(0,1,66,0,0),
(0,1,67,3728,0),
(0,1,68,3834,0),
(0,1,69,0,0),
(0,1,70,4050,0),
(0,1,71,4163,0),
(0,1,72,4278,0),
(0,1,73,0,0),
(0,1,74,0,0),
(0,1,75,4652,0),
(0,1,76,0,0),
(0,1,77,4916,0),
(0,1,78,5052,0),
(0,1,79,0,0),
(0,1,80,5342,0),
(0,1,81,5496,0),
(0,1,82,0,0),
(0,1,83,5808,0),
(1,1,58,3989,0),
(1,1,59,4142,0),
(1,1,60,4979,0),
(1,1,61,5158,0),
(1,1,62,5341,0),
(1,1,63,5527,0),
(1,1,64,5715,0),
(1,1,65,5914,0),
(1,1,66,6116,0),
(1,1,67,6326,0),
(1,1,68,6542,0),
(1,1,69,6761,0),
(1,1,70,6986,0),
(1,1,71,7181,0),
(1,1,72,7380,0),
(1,1,73,7580,0),
(2,1,68,6986,0),
(2,1,69,7984,0),
(2,1,70,8982,0),
(2,1,71,9291,0),
(2,1,72,9610,0),
(2,1,73,9940,0),
(2,1,74,10282,0),
(2,1,75,10635,0),
(2,1,76,11001,0),
(2,1,77,11379,0),
(2,1,78,11770,0),
(2,1,79,12175,0),
(2,1,80,12600,0),
(2,1,81,13033,0),
(2,1,82,13481,0),
(2,1,83,13945,0),
(0,2,1,41,60),
(0,2,2,54,69),
(0,2,3,69,79),
(0,2,4,83,104),
(0,2,5,98,115),
(0,2,6,115,126),
(0,2,7,131,138),
(0,2,8,148,165),
(0,2,9,166,178),
(0,2,10,186,191),
(0,2,11,208,205),
(0,2,12,230,249),
(0,2,13,253,264),
(0,2,14,276,295),
(0,2,15,301,326),
(0,2,16,325,357),
(0,2,17,350,390),
(0,2,18,377,408),
(0,2,19,404,456),
(0,2,20,433,490),
(0,2,21,464,510),
(0,2,22,498,544),
(0,2,23,533,581), 
(0,2,24,571,618),
(0,2,25,610,655),
(0,2,26,651,693),
(0,2,27,690,732),
(0,2,28,732,756),
(0,2,29,773,811),
(0,2,30,811,852),
(0,2,31,850,878),
(0,2,32,888,935),
(0,2,33,928,963),
(0,2,34,967,1007),
(0,2,35,1009,1067),
(0,2,36,1050,1097),
(0,2,37,1093,1142),
(0,2,38,1135,1186),
(0,2,39,1180,1236),
(0,2,40,1226,1283),
(0,2,41,1268,1332),
(0,2,42,1321,1381),
(0,2,43,1373,1432),
(0,2,44,1426,1483),
(0,2,45,1478,1534),
(0,2,46,1535,1587),
(0,2,47,1592,1640),
(0,2,48,1650,1695),
(0,2,49,1710,1750),
(0,2,50,1772,1807),
(0,2,51,1834,1864),
(0,2,52,1897,1923),
(0,2,53,1962,1982),
(0,2,54,2026,2041),
(0,2,55,2091,2117),
(0,2,56,2159,2163),
(0,2,57,2227,2241),
(0,2,58,2297,2289),
(0,2,59,2369,2369),
(0,2,60,2442,2434),
(0,2,61,2515,2486),
(0,2,62,2590,2568),
(0,2,63,2665,2620),
(0,2,64,0,2705),
(0,2,65,2819,2790),
(0,2,66,0,2846),
(0,2,67,2982,2933),
(0,2,68,3067,2991),
(0,2,69,0,3080),
(0,2,70,3240,3155),
(0,2,71,3330,3231),
(0,2,72,3422,3309),
(0,2,73,0,3387),
(0,2,74,0,3466),
(0,2,75,3722,3561),
(0,2,76,0,3643),
(0,2,77,3933,3725),
(0,2,78,4042,3809),
(0,2,79,0,3893),
(0,2,80,4274,3994),
(0,2,81,4394,4081),
(0,2,82,0,4169),
(0,2,83,0,4258),
(1,2,58,3191,2289),
(1,2,59,3314,2369),
(1,2,60,3984,2434),
(1,2,61,4126,2486),
(1,2,62,4274,2568),
(1,2,63,4422,2620),
(1,2,64,4572,2705),
(1,2,65,4731,2790),
(1,2,66,4892,2846),
(1,2,67,5060,2933),
(1,2,68,5233,2991),
(1,2,69,5409,3080),
(1,2,70,5589,3155),
(1,2,71,5744,3231),
(1,2,72,5900,3309),
(1,2,73,6070,3387),
(2,2,68,6986,2991),
(2,2,69,7984,3080),
(2,2,70,8982,3155),
(2,2,71,9291,3231),
(2,2,72,9610,3309),
(2,2,73,9940,3387),
(2,2,74,10282,3466),
(2,2,75,10635,3561),
(2,2,76,11001,3643),
(2,2,77,11379,3725),
(2,2,78,11770,3809),
(2,2,79,12175,3893),
(2,2,80,12600,3994),
(2,2,81,13033,4081),
(2,2,82,13481,4169),
(2,2,83,13945,4258),
(0,4,1,42,0),
(0,4,2,55,0),
(0,4,3,71,0),
(0,4,4,86,0),
(0,4,5,102,0),
(0,4,6,120,0),
(0,4,7,137,0),
(0,4,8,156,0),
(0,4,9,176,0),
(0,4,10,198,0),
(0,4,11,222,0),
(0,4,12,247,0),
(0,4,13,273,0),
(0,4,14,300,0),
(0,4,15,328,0),
(0,4,16,356,0),
(0,4,17,386,0),
(0,4,18,417,0),
(0,4,19,484,0),
(0,4,20,531,0),
(0,4,21,573,0),
(0,4,22,617,0),
(0,4,23,664,0),
(0,4,24,713,0),
(0,4,25,734,0),
(0,4,26,787,0),
(0,4,27,840,0),
(0,4,28,869,0),
(0,4,29,905,0),
(0,4,30,955,0),
(0,4,31,1006,0),
(0,4,32,1057,0),
(0,4,33,1110,0),
(0,4,34,1163,0),
(0,4,35,1220,0),
(0,4,36,1277,0),
(0,4,37,1336,0),
(0,4,38,1395,0),
(0,4,39,1459,0),
(0,4,40,1524,0),
(0,4,41,1585,0),
(0,4,42,1651,0),
(0,4,43,1716,0),
(0,4,44,1782,0),
(0,4,45,1848,0),
(0,4,46,1919,0),
(0,4,47,1990,0),
(0,4,48,2062,0),
(0,4,49,2138,0),
(0,4,50,2215,0),
(0,4,51,2292,0),
(0,4,52,2371,0),
(0,4,53,2453,0),
(0,4,54,2533,0),
(0,4,55,2614,0),
(0,4,56,2699,0),
(0,4,57,2784,0),
(0,4,58,2871,0),
(0,4,59,2961,0),
(0,4,60,3052,0),
(0,4,61,3186,0),
(0,4,62,3237,0),
(0,4,63,3331,0),
(0,4,64,0,0),
(0,4,65,3524,0),
(0,4,66,0,0),
(0,4,67,3728,0),
(0,4,68,3834,0),
(0,4,69,0,0),
(0,4,70,4050,0),
(0,4,71,4163,0),
(0,4,72,4278,0),
(0,4,73,0,0),
(0,4,74,0,0),
(0,4,75,4652,0),
(0,4,76,0,0),
(0,4,77,4916,0),
(0,4,78,5052,0),
(0,4,79,0,0),
(0,4,80,5342,0),
(0,4,81,5496,0),
(0,4,82,0,0),
(0,4,83,0,0),
(1,4,58,3989,0),
(1,4,59,4142,0),
(1,4,60,4979,0),
(1,4,61,5158,0),
(1,4,62,5341,0),
(1,4,63,5527,0),
(1,4,64,5715,0),
(1,4,65,5914,0),
(1,4,66,6116,0),
(1,4,67,6326,0),
(1,4,68,6542,0),
(1,4,69,6761,0),
(1,4,70,6986,0),
(1,4,71,7181,0),
(1,4,72,7380,0),
(1,4,73,7580,0),
(2,4,68,6986,0),
(2,4,69,7984,0),
(2,4,70,8982,0),
(2,4,71,9291,0),
(2,4,72,9610,0),
(2,4,73,9940,0),
(2,4,74,10282,0),
(2,4,75,10635,0),
(2,4,76,11001,0),
(2,4,77,11379,0),
(2,4,78,11770,0),
(2,4,79,12175,0),
(2,4,80,12600,0),
(2,4,81,13033,0),
(2,4,82,13481,0),
(2,4,83,13945,0),
(0,8,1,40,120),
(0,8,2,0,0),
(0,8,3,67,174),
(0,8,4,81,202),
(0,8,5,95,230),
(0,8,6,111,259),
(0,8,7,126,289),
(0,8,8,143,319),
(0,8,9,160,350),
(0,8,10,178,382),
(0,8,11,199,459),
(0,8,12,219,537),
(0,8,13,241,601),
(0,8,14,263,710),
(0,8,15,285,790),
(0,8,16,307,856),
(0,8,17,330,938),
(0,8,18,354,1020),
(0,8,19,379,1118),
(0,8,20,405,1202),
(0,8,21,432,1272),
(0,8,22,463,1357),
(0,8,23,494,1443),
(0,8,24,528,1545),
(0,8,25,562,1633),
(0,8,26,598,1707),
(0,8,27,633,1812),
(0,8,28,669,1977),
(0,8,29,704,2068),
(0,8,30,737,2175),
(0,8,31,770,2253),
(0,8,32,802,2362),
(0,8,33,835,2457),
(0,8,34,867,2553),
(0,8,35,902,2680),
(0,8,36,935,2763),
(0,8,37,970,2861),
(0,8,38,1004,2975),
(0,8,39,1040,3075),
(0,8,40,1077,3191),
(0,8,41,1110,3293),
(0,8,42,1156,3471),
(0,8,43,1201,3575),
(0,8,44,1247,3680),
(0,8,45,1294,3801),
(0,8,46,1343,3923),
(0,8,47,1393,4031),
(0,8,48,1443,4140),
(0,8,49,1497,4281),
(0,8,50,1551,4393),
(0,8,51,1604,4506),
(0,8,52,1660,4650),
(0,8,53,1717,4765),
(0,8,54,1773,4896),
(0,8,55,1830,5013),
(0,8,56,1889,5206),
(0,8,57,1949,5340),
(0,8,58,2010,5461),
(0,8,59,2073,5598),
(0,8,60,2136,5751),
(0,8,61,2201,5875),
(0,8,62,2266,6015),
(0,8,63,2332,6156),
(0,8,64,0,6229),
(0,8,65,2467,6443),
(0,8,66,0,6588),
(0,8,67,2610,6749),
(0,8,68,2684,6882),
(0,8,69,0,7031),
(0,8,70,2835,7196),
(0,8,71,2914,7332),
(0,8,72,2995,7500),
(0,8,73,0,7654),
(0,8,74,0,7809),
(0,8,75,3257,7981),
(0,8,76,0,8139),
(0,8,77,0,8313),
(0,8,78,0,8459),
(0,8,79,0,8636),
(0,8,80,0,8814),
(0,8,81,0,8979),
(0,8,82,0,9160),
(0,8,83,0,9325),
(1,8,58,2793,5461),
(1,8,59,2899,5598),
(1,8,60,3484,5751),
(1,8,61,3611,5875),
(1,8,62,3739,6015),
(1,8,63,3870,6156),
(1,8,64,4000,6229),
(1,8,65,4140,6443),
(1,8,66,4281,6588),
(1,8,67,4429,6749),
(1,8,68,4580,6882),
(1,8,69,4733,7031),
(1,8,70,4890,7196),
(1,8,71,5027,7332),
(1,8,72,5166,7500),
(1,8,73,5311,7654),
(2,8,68,5588,6882),
(2,8,69,6387,7031),
(2,8,70,7185,7196),
(2,8,71,7432,7332),
(2,8,72,7688,7500),
(2,8,73,7952,7654),
(2,8,74,8225,7809),
(2,8,75,8508,7981),
(2,8,76,8800,8139),
(2,8,77,9103,8313),
(2,8,78,9416,8459),
(2,8,79,9740,8636),
(2,8,80,10080,8814),
(2,8,81,10486,8979),
(2,8,82,10784,9160),
(2,8,83,11156,9325);

 
-- core world SQL update 6665_world_creature_template.sql
 
ALTER TABLE `creature_template` ADD `exp` smallint(2) NOT NULL DEFAULT 0 AFTER `IconName`;
ALTER TABLE `creature_template` DROP `minhealth`;
ALTER TABLE `creature_template` DROP `maxhealth`;
ALTER TABLE `creature_template` DROP `minmana`;
ALTER TABLE `creature_template` DROP `maxmana`;
ALTER TABLE `creature_template` CHANGE `unk16` `Health_mod` FLOAT;
ALTER TABLE `creature_template` CHANGE `unk17` `Mana_mod` FLOAT;
 
-- core world SQL update 6669_world_creature_template.sql
 
ALTER TABLE `creature_template` DROP `exp`;
ALTER TABLE `creature_template` ADD `exp` smallint(2) NOT NULL DEFAULT 0 AFTER `maxlevel`;
 
-- core world SQL update 6675_world_spell_linked_spell.sql
 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=54850;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(54850, 54851, 1, 'Emerge - Emerge Summon');
 
-- core world SQL update 6683_world_script_texts.sql
 
DELETE FROM `script_texts` WHERE `entry` IN (-1048000,-1048001,-1048002);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
   (4832,-1048000,'Just...Dust...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5803,1,0,0,''),
   (4832,-1048001,'Sleep...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5804,1,0,0,''),
   (4832,-1048002,'Who dares disturb my meditation!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5805,1,0,0,'');
 
-- core world SQL update 6686_world_scriptname.sql
 
UPDATE `creature_template` SET `ScriptName`='npc_released_offspring_harkoa' WHERE `entry`=28526;
 
-- core world SQL update 6691_world_spell_proc_event.sql
 
-- Glyph of Seal of Command
DELETE FROM `spell_proc_event` WHERE `entry` IN (54925);
INSERT INTO `spell_proc_event`
(`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(54925,0x02,10,0x00000000,0x00000208,0x00000000,0x00000000,0x00000000,0,0,0); 
-- core world SQL update 6692_world_item_template.sql
 
-- Alter Flags column in item_template to allow signed value
ALTER TABLE `item_template` CHANGE `Flags` `Flagstemp` INT(10);
ALTER TABLE `item_template` ADD `Flags` INT SIGNED NOT NULL AFTER `Quality`;
UPDATE `item_template` SET `Flags` = `Flagstemp`;
ALTER TABLE `item_template` DROP `Flagstemp`;
-- Alter maxcount column in item_template to allow max signed value
ALTER TABLE `item_template` CHANGE `maxcount` `maxcounttemp` smallINT(5);
ALTER TABLE `item_template` ADD `maxcount` INT SIGNED NOT NULL AFTER `RequiredReputationRank`;
UPDATE `item_template` SET `maxcount` = `maxcounttemp`;
ALTER TABLE `item_template` DROP `maxcounttemp`;
-- Alter stackable column in item_template to allow max signed value
ALTER TABLE `item_template` CHANGE `stackable` `stackabletemp` INT(11);
ALTER TABLE `item_template` ADD `stackable` INT SIGNED DEFAULT 1 AFTER `maxcount`;
UPDATE `item_template` SET `stackable` = `stackabletemp`;
ALTER TABLE `item_template` DROP `stackabletemp`;
-- Alter BuyPrice column in item_template to allow max signed value
ALTER TABLE `item_template` CHANGE `BuyPrice` `BuyPricetemp` INT(10);
ALTER TABLE `item_template` ADD `BuyPrice` INT SIGNED NOT NULL AFTER `BuyCount`;
UPDATE `item_template` SET `BuyPrice` = `BuyPricetemp`;
ALTER TABLE `item_template` DROP `BuyPricetemp`;
-- Alter spellid_1 column in item_template to allow signed value
ALTER TABLE `item_template` CHANGE `spellid_1` `spellid_1temp` MEDIUMINT(8);
ALTER TABLE `item_template` ADD `spellid_1` MEDIUMINT(8) SIGNED NOT NULL AFTER `RangedModRange`;
UPDATE `item_template` SET `spellid_1` = `spellid_1temp`;
ALTER TABLE `item_template` DROP `spellid_1temp`;
-- Alter spellid_2 column in item_template to allow signed value
ALTER TABLE `item_template` CHANGE `spellid_2` `spellid_2temp` MEDIUMINT(8);
ALTER TABLE `item_template` ADD `spellid_2` MEDIUMINT(8) SIGNED NOT NULL AFTER `spellcategorycooldown_1`;
UPDATE `item_template` SET `spellid_2` = `spellid_2temp`;
ALTER TABLE `item_template` DROP `spellid_2temp`;
-- Alter spellid_3 column in item_template to allow signed value
ALTER TABLE `item_template` CHANGE `spellid_3` `spellid_3temp` MEDIUMINT(8);
ALTER TABLE `item_template` ADD `spellid_3` MEDIUMINT(8) SIGNED NOT NULL AFTER `spellcategorycooldown_2`;
UPDATE `item_template` SET `spellid_3` = `spellid_3temp`;
ALTER TABLE `item_template` DROP `spellid_3temp`;
-- Alter spellid_4 column in item_template to allow signed value
ALTER TABLE `item_template` CHANGE `spellid_4` `spellid_4temp` MEDIUMINT(8);
ALTER TABLE `item_template` ADD `spellid_4` MEDIUMINT(8) SIGNED NOT NULL AFTER `spellcategorycooldown_3`;
UPDATE `item_template` SET `spellid_4` = `spellid_4temp`;
ALTER TABLE `item_template` DROP `spellid_4temp`;
-- Alter spellid_5 column in item_template to allow signed value
ALTER TABLE `item_template` CHANGE `spellid_5` `spellid_5temp` MEDIUMINT(8);
ALTER TABLE `item_template` ADD `spellid_5` MEDIUMINT(8) SIGNED NOT NULL AFTER `spellcategorycooldown_4`;
UPDATE `item_template` SET `spellid_5` = `spellid_5temp`;
ALTER TABLE `item_template` DROP `spellid_5temp`;
-- Alter RandomProperty column in item_template to allow signed value
ALTER TABLE `item_template` CHANGE `RandomProperty` `RandomPropertytemp` MEDIUMINT(8);
ALTER TABLE `item_template` ADD `RandomProperty` MEDIUMINT(8) SIGNED NOT NULL AFTER `sheath`;
UPDATE `item_template` SET `RandomProperty` = `RandomPropertytemp`;
ALTER TABLE `item_template` DROP `RandomPropertytemp`;

 
-- core world SQL update 6705_world_creature_classlevelstats.sql
 
UPDATE `creature_classlevelstats` SET `basehp`=3624 WHERE `exp`=0 AND `class`=1 AND `level`=66;
UPDATE `creature_classlevelstats` SET `basehp`=2899 WHERE `exp`=0 AND `class`=2 AND `level`=66;
UPDATE `creature_classlevelstats` SET `basehp`=3624 WHERE `exp`=0 AND `class`=4 AND `level`=66;
UPDATE `creature_classlevelstats` SET `basehp`=2537 WHERE `exp`=0 AND `class`=8 AND `level`=66;
UPDATE `creature_classlevelstats` SET `basehp`=4646 WHERE `exp`=0 AND `class`=2 AND `level`=83;
UPDATE `creature_classlevelstats` SET `basehp`=5808 WHERE `exp`=0 AND `class`=4 AND `level`=83;
UPDATE `creature_classlevelstats` SET `basehp`=4090 WHERE `exp`=0 AND `class`=8 AND `level`=83;
UPDATE `creature_classlevelstats` SET `basehp`=5194 WHERE `exp`=0 AND `class`=1 AND `level`=79;
UPDATE `creature_classlevelstats` SET `basehp`=4155 WHERE `exp`=0 AND `class`=2 AND `level`=79;
UPDATE `creature_classlevelstats` SET `basehp`=5194 WHERE `exp`=0 AND `class`=4 AND `level`=79;
UPDATE `creature_classlevelstats` SET `basehp`=3658 WHERE `exp`=0 AND `class`=8 AND `level`=79;
UPDATE `creature_classlevelstats` SET `basehp`=4781 WHERE `exp`=0 AND `class`=1 AND `level`=76;
UPDATE `creature_classlevelstats` SET `basehp`=3825 WHERE `exp`=0 AND `class`=2 AND `level`=76;
UPDATE `creature_classlevelstats` SET `basehp`=4781 WHERE `exp`=0 AND `class`=4 AND `level`=76;
UPDATE `creature_classlevelstats` SET `basehp`=3367 WHERE `exp`=0 AND `class`=8 AND `level`=76;
UPDATE `creature_classlevelstats` SET `basehp`=1 WHERE `basehp`=0;
 
-- core world SQL update 6710_world_command.sql
 
UPDATE command 
SET help = 'Syntax: .account set gmlevel [$account] #level [#realmid]\r\n\r\nSet the security level for targeted player (can\'t be used at self) or for account $name to a level of #level on the realm #realmID.\r\n\r\n#level may range from 0 to 3.\r\n\r\n#reamID may be -1 for all realms.'
WHERE name = 'account set gmlevel'; 
-- core world SQL update 6710_world_trinity_string.sql
 
INSERT INTO trinity_string VALUES 
(11001, 'You have not chosen -1 or the current realmID that you are on.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL); 
-- core world SQL update 6711_world_creature_classlevelstats.sql
 
UPDATE `creature_classlevelstats` SET `basehp`=3256 WHERE `exp`=0 AND `class`=8 AND `level`=75;
UPDATE `creature_classlevelstats` SET `basehp`=3739 WHERE `exp`=0 AND `class`=8 AND `level`=80;
UPDATE `creature_classlevelstats` SET `basehp`=4524 WHERE `exp`=0 AND `class`=1 AND `level`=74;
UPDATE `creature_classlevelstats` SET `basehp`=3619 WHERE `exp`=0 AND `class`=2 AND `level`=74;
UPDATE `creature_classlevelstats` SET `basehp`=4524 WHERE `exp`=0 AND `class`=4 AND `level`=74;
UPDATE `creature_classlevelstats` SET `basehp`=3186 WHERE `exp`=0 AND `class`=8 AND `level`=74;

 
-- core world SQL update 6739_world_script_waypoints.sql
 
DELETE FROM `script_waypoint` WHERE `entry`=30023;
INSERT INTO `script_waypoint` VALUES
   (30023, 1, 5722.558, -2960.685, 286.276, 0, ''),
   (30023, 2, 5734.698, -2984.990, 286.276, 0, ''),
   (30023, 3, 5737.401, -2991.310, 282.575, 0, ''),
   (30023, 4, 5740.416, -2997.536, 277.263, 0, ''),
   (30023, 5, 5743.790, -3004.050, 273.570, 0, ''),
   (30023, 6, 5764.240, -2993.788, 272.944, 0, '');
 
-- core world SQL update 6742_world_scriptnames.sql
 
UPDATE `creature_template` SET `ScriptName`='npc_stinkbeard' WHERE `entry`=30017;
 
-- core world SQL update 6742_world_script_texts.sql
 
DELETE FROM `script_texts` WHERE `entry`=-1571035;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
  (30007,-1571035,'The battle is about to begin! Am I reading this card right It... It''s the nefarious magnataur lord, STINKBEARD! Yes, folks, STINKBEARD! Chitchat dosen''t stand a chance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13363,1,0,0,'');
 
-- core world SQL update 6742_world_script_waypoints.sql
 
DELETE FROM `script_waypoint` WHERE `entry`=30017;
INSERT INTO `script_waypoint` VALUES
   (30017, 1, 5790.975, -2927.297, 286.277, 0, ''),
   (30017, 2, 5803.003, -2952.998, 286.277, 0, ''),
   (30017, 3, 5805.184, -2958.513, 282.899, 0, ''),
   (30017, 4, 5807.038, -2961.449, 280.250, 0, ''),
   (30017, 5, 5808.862, -2965.138, 277.089, 0, ''),
   (30017, 6, 5811.703, -2970.821, 273.569, 0, ''),
   (30017, 7, 5789.979, -2980.250, 273.584, 0, '');
 
-- core world SQL update 6747_world_command.sql
 
DELETE FROM `command` WHERE `name`='reload npc_option';
 
-- core world SQL update 6751_world_creature_classlevelstats.sql
 
TRUNCATE TABLE `creature_classlevelstats`;
INSERT INTO `creature_classlevelstats` (`exp`,`class`,`level`,`basehp`,`basemana`) VALUES
(0,1,1,42,0),
(0,1,2,55,0),
(0,1,3,71,0),
(0,1,4,86,0),
(0,1,5,102,0),
(0,1,6,120,0),
(0,1,7,137,0),
(0,1,8,156,0),
(0,1,9,176,0),
(0,1,10,198,0),
(0,1,11,222,0),
(0,1,12,247,0),
(0,1,13,273,0),
(0,1,14,300,0),
(0,1,15,328,0),
(0,1,16,356,0),
(0,1,17,386,0),
(0,1,18,417,0),
(0,1,19,449,0),
(0,1,20,484,0),
(0,1,21,521,0),
(0,1,22,562,0),
(0,1,23,605,0),
(0,1,24,651,0),
(0,1,25,699,0),
(0,1,26,750,0),
(0,1,27,800,0),
(0,1,28,853,0),
(0,1,29,905,0),
(0,1,30,955,0),
(0,1,31,1006,0),
(0,1,32,1057,0),
(0,1,33,1110,0),
(0,1,34,1163,0),
(0,1,35,1220,0),
(0,1,36,1277,0),
(0,1,37,1336,0),
(0,1,38,1395,0),
(0,1,39,1459,0),
(0,1,40,1524,0),
(0,1,41,1585,0),
(0,1,42,1651,0),
(0,1,43,1716,0),
(0,1,44,1782,0),
(0,1,45,1848,0),
(0,1,46,1919,0),
(0,1,47,1990,0),
(0,1,48,2061,0),
(0,1,49,2138,0),
(0,1,50,2215,0),
(0,1,51,2292,0),
(0,1,52,2371,0),
(0,1,53,2453,0),
(0,1,54,2533,0),
(0,1,55,2614,0),
(0,1,56,2699,0),
(0,1,57,2784,0),
(0,1,58,2871,0),
(0,1,59,2961,0),
(0,1,60,3052,0),
(0,1,61,3144,0),
(0,1,62,3237,0),
(0,1,63,3331,0),
(0,1,64,1,0), -- TODO
(0,1,65,3524,0),
(0,1,66,3624,0),
(0,1,67,3728,0),
(0,1,68,3834,0),
(0,1,69,1,0), -- TODO
(0,1,70,4050,0),
(0,1,71,4163,0),
(0,1,72,4278,0),
(0,1,73,1,0), -- TODO
(0,1,74,4524,0),
(0,1,75,4652,0),
(0,1,76,4781,0),
(0,1,77,4916,0),
(0,1,78,5052,0),
(0,1,79,5194,0),
(0,1,80,5342,0),
(0,1,81,5496,0),
(0,1,82,5647,0),
(0,1,83,5808,0),
(1,1,58,3989,0),
(1,1,59,4142,0),
(1,1,60,4979,0),
(1,1,61,5158,0),
(1,1,62,5341,0),
(1,1,63,5527,0),
(1,1,64,5715,0),
(1,1,65,5914,0),
(1,1,66,6116,0),
(1,1,67,6326,0),
(1,1,68,6542,0),
(1,1,69,6761,0),
(1,1,70,6986,0),
(1,1,71,7181,0),
(1,1,72,7380,0),
(1,1,73,7580,0),
(2,1,68,6986,0),
(2,1,69,7984,0),
(2,1,70,8982,0),
(2,1,71,9291,0),
(2,1,72,9610,0),
(2,1,73,9940,0),
(2,1,74,10282,0),
(2,1,75,10635,0),
(2,1,76,11001,0),
(2,1,77,11379,0),
(2,1,78,11770,0),
(2,1,79,12175,0),
(2,1,80,12600,0),
(2,1,81,13033,0),
(2,1,82,13481,0),
(2,1,83,13945,0),
(0,2,1,41,60),
(0,2,2,54,69),
(0,2,3,69,79),
(0,2,4,83,104),
(0,2,5,98,115),
(0,2,6,115,126),
(0,2,7,131,138),
(0,2,8,148,165),
(0,2,9,166,178),
(0,2,10,186,191),
(0,2,11,208,205),
(0,2,12,230,249),
(0,2,13,253,264),
(0,2,14,276,295),
(0,2,15,301,326),
(0,2,16,325,357),
(0,2,17,350,390),
(0,2,18,377,408),
(0,2,19,404,456),
(0,2,20,433,490),
(0,2,21,464,510),
(0,2,22,498,544),
(0,2,23,533,581), 
(0,2,24,571,618),
(0,2,25,610,655),
(0,2,26,651,693),
(0,2,27,690,732),
(0,2,28,732,756),
(0,2,29,773,811),
(0,2,30,811,852),
(0,2,31,850,878),
(0,2,32,888,935),
(0,2,33,928,963),
(0,2,34,967,1007),
(0,2,35,1009,1067),
(0,2,36,1050,1097),
(0,2,37,1093,1142),
(0,2,38,1135,1186),
(0,2,39,1180,1236),
(0,2,40,1226,1283),
(0,2,41,1268,1332),
(0,2,42,1321,1381),
(0,2,43,1373,1432),
(0,2,44,1426,1483),
(0,2,45,1478,1534),
(0,2,46,1535,1587),
(0,2,47,1592,1640),
(0,2,48,1650,1695),
(0,2,49,1710,1750),
(0,2,50,1772,1807),
(0,2,51,1834,1864),
(0,2,52,1897,1923),
(0,2,53,1962,1982),
(0,2,54,2026,2041),
(0,2,55,2091,2117),
(0,2,56,2159,2163),
(0,2,57,2227,2241),
(0,2,58,2297,2289),
(0,2,59,2369,2369),
(0,2,60,2442,2434),
(0,2,61,2515,2486),
(0,2,62,2590,2568),
(0,2,63,2665,2620),
(0,2,64,1,2705), -- TODO
(0,2,65,2819,2790),
(0,2,66,2899,2846),
(0,2,67,2982,2933),
(0,2,68,3067,2991),
(0,2,69,1,3080), -- TODO
(0,2,70,3240,3155),
(0,2,71,3330,3231),
(0,2,72,3422,3309),
(0,2,73,1,3387), -- TODO
(0,2,74,3619,3466),
(0,2,75,3722,3561),
(0,2,76,3825,3643),
(0,2,77,3933,3725),
(0,2,78,4042,3809),
(0,2,79,4155,3893),
(0,2,80,4274,3994),
(0,2,81,4394,4081),
(0,2,82,4518,4169),
(0,2,83,4646,4258),
(1,2,58,3191,2289),
(1,2,59,3314,2369),
(1,2,60,3984,2434),
(1,2,61,4126,2486),
(1,2,62,4274,2568),
(1,2,63,4422,2620),
(1,2,64,4572,2705),
(1,2,65,4731,2790),
(1,2,66,4892,2846),
(1,2,67,5060,2933),
(1,2,68,5233,2991),
(1,2,69,5409,3080),
(1,2,70,5589,3155),
(1,2,71,5744,3231),
(1,2,72,5900,3309),
(1,2,73,6070,3387),
(2,2,68,6986,2991),
(2,2,69,7984,3080),
(2,2,70,8982,3155),
(2,2,71,9291,3231),
(2,2,72,9610,3309),
(2,2,73,9940,3387),
(2,2,74,10282,3466),
(2,2,75,10635,3561),
(2,2,76,11001,3643),
(2,2,77,11379,3725),
(2,2,78,11770,3809),
(2,2,79,12175,3893),
(2,2,80,12600,3994),
(2,2,81,13033,4081),
(2,2,82,13481,4169),
(2,2,83,13945,4258),
(0,4,1,42,0),
(0,4,2,55,0),
(0,4,3,71,0),
(0,4,4,86,0),
(0,4,5,102,0),
(0,4,6,120,0),
(0,4,7,137,0),
(0,4,8,156,0),
(0,4,9,176,0),
(0,4,10,198,0),
(0,4,11,222,0),
(0,4,12,247,0),
(0,4,13,273,0),
(0,4,14,300,0),
(0,4,15,328,0),
(0,4,16,356,0),
(0,4,17,386,0),
(0,4,18,417,0),
(0,4,19,449,0),
(0,4,20,484,0),
(0,4,21,521,0),
(0,4,22,562,0),
(0,4,23,605,0),
(0,4,24,651,0),
(0,4,25,699,0),
(0,4,26,750,0),
(0,4,27,800,0),
(0,4,28,853,0),
(0,4,29,905,0),
(0,4,30,955,0),
(0,4,31,1006,0),
(0,4,32,1057,0),
(0,4,33,1110,0),
(0,4,34,1163,0),
(0,4,35,1220,0),
(0,4,36,1277,0),
(0,4,37,1336,0),
(0,4,38,1395,0),
(0,4,39,1459,0),
(0,4,40,1524,0),
(0,4,41,1585,0),
(0,4,42,1651,0),
(0,4,43,1716,0),
(0,4,44,1782,0),
(0,4,45,1848,0),
(0,4,46,1919,0),
(0,4,47,1990,0),
(0,4,48,2061,0),
(0,4,49,2138,0),
(0,4,50,2215,0),
(0,4,51,2292,0),
(0,4,52,2371,0),
(0,4,53,2453,0),
(0,4,54,2533,0),
(0,4,55,2614,0),
(0,4,56,2699,0),
(0,4,57,2784,0),
(0,4,58,2871,0),
(0,4,59,2961,0),
(0,4,60,3052,0),
(0,4,61,3144,0),
(0,4,62,3237,0),
(0,4,63,3331,0),
(0,4,64,1,0), -- TODO
(0,4,65,3524,0),
(0,4,66,3624,0),
(0,4,67,3728,0),
(0,4,68,3834,0),
(0,4,69,1,0), -- TODO
(0,4,70,4050,0),
(0,4,71,4163,0),
(0,4,72,4278,0),
(0,4,73,1,0), -- TODO
(0,4,74,4524,0),
(0,4,75,4652,0),
(0,4,76,4781,0),
(0,4,77,4916,0),
(0,4,78,5052,0),
(0,4,79,5194,0),
(0,4,80,5342,0),
(0,4,81,5496,0),
(0,4,82,5647,0),
(0,4,83,5808,0),
(1,4,58,3989,0),
(1,4,59,4142,0),
(1,4,60,4979,0),
(1,4,61,5158,0),
(1,4,62,5341,0),
(1,4,63,5527,0),
(1,4,64,5715,0),
(1,4,65,5914,0),
(1,4,66,6116,0),
(1,4,67,6326,0),
(1,4,68,6542,0),
(1,4,69,6761,0),
(1,4,70,6986,0),
(1,4,71,7181,0),
(1,4,72,7380,0),
(1,4,73,7580,0),
(2,4,68,6986,0),
(2,4,69,7984,0),
(2,4,70,8982,0),
(2,4,71,9291,0),
(2,4,72,9610,0),
(2,4,73,9940,0),
(2,4,74,10282,0),
(2,4,75,10635,0),
(2,4,76,11001,0),
(2,4,77,11379,0),
(2,4,78,11770,0),
(2,4,79,12175,0),
(2,4,80,12600,0),
(2,4,81,13033,0),
(2,4,82,13481,0),
(2,4,83,13945,0),
(0,8,1,40,120),
(0,8,2,52,0),
(0,8,3,67,174),
(0,8,4,81,202),
(0,8,5,95,230),
(0,8,6,111,259),
(0,8,7,126,289),
(0,8,8,143,319),
(0,8,9,160,350),
(0,8,10,178,382),
(0,8,11,199,459),
(0,8,12,219,537),
(0,8,13,241,601),
(0,8,14,263,710),
(0,8,15,285,790),
(0,8,16,307,856),
(0,8,17,330,938),
(0,8,18,354,1020),
(0,8,19,379,1118),
(0,8,20,405,1202),
(0,8,21,432,1272),
(0,8,22,463,1357),
(0,8,23,494,1443),
(0,8,24,528,1545),
(0,8,25,562,1633),
(0,8,26,598,1707),
(0,8,27,633,1812),
(0,8,28,669,1977),
(0,8,29,704,2068),
(0,8,30,737,2175),
(0,8,31,770,2253),
(0,8,32,802,2362),
(0,8,33,835,2457),
(0,8,34,867,2553),
(0,8,35,902,2680),
(0,8,36,935,2763),
(0,8,37,970,2861),
(0,8,38,1004,2975),
(0,8,39,1040,3075),
(0,8,40,1077,3191),
(0,8,41,1110,3293),
(0,8,42,1156,3471),
(0,8,43,1201,3575),
(0,8,44,1247,3680),
(0,8,45,1294,3801),
(0,8,46,1343,3923),
(0,8,47,1393,4031),
(0,8,48,1443,4140),
(0,8,49,1497,4281),
(0,8,50,1551,4393),
(0,8,51,1604,4506),
(0,8,52,1660,4650),
(0,8,53,1717,4765),
(0,8,54,1773,4896),
(0,8,55,1830,5013),
(0,8,56,1889,5206),
(0,8,57,1949,5340),
(0,8,58,2010,5461),
(0,8,59,2073,5598),
(0,8,60,2136,5751),
(0,8,61,2201,5875),
(0,8,62,2266,6015),
(0,8,63,2332,6156),
(0,8,64,1,6229), -- TODO
(0,8,65,2467,6443),
(0,8,66,2552,6588),
(0,8,67,2610,6749),
(0,8,68,2684,6882),
(0,8,69,1,7031), -- TODO
(0,8,70,2835,7196),
(0,8,71,2914,7332),
(0,8,72,2995,7500),
(0,8,73,1,7654), -- TODO
(0,8,74,3186,7809),
(0,8,75,3256,7981),
(0,8,76,3367,8139),
(0,8,77,3462,8313),
(0,8,78,3558,8459),
(0,8,79,3658,8636),
(0,8,80,3739,8814),
(0,8,81,3870,8979),
(0,8,82,3977,9160),
(0,8,83,4090,9325),
(1,8,58,2793,5461),
(1,8,59,2899,5598),
(1,8,60,3484,5751),
(1,8,61,3611,5875),
(1,8,62,3739,6015),
(1,8,63,3870,6156),
(1,8,64,4000,6229),
(1,8,65,4140,6443),
(1,8,66,4281,6588),
(1,8,67,4429,6749),
(1,8,68,4580,6882),
(1,8,69,4733,7031),
(1,8,70,4890,7196),
(1,8,71,5027,7332),
(1,8,72,5166,7500),
(1,8,73,5311,7654),
(2,8,68,5588,6882),
(2,8,69,6387,7031),
(2,8,70,7185,7196),
(2,8,71,7432,7332),
(2,8,72,7688,7500),
(2,8,73,7952,7654),
(2,8,74,8225,7809),
(2,8,75,8508,7981),
(2,8,76,8800,8139),
(2,8,77,9103,8313),
(2,8,78,9416,8459),
(2,8,79,9740,8636),
(2,8,80,10080,8814),
(2,8,81,10486,8979),
(2,8,82,10784,9160),
(2,8,83,11156,9325);
