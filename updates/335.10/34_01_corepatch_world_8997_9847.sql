-- updated to Rev 9847
-- ----------- --
-- TrinityCore --
-- ----------- --

-- 9000_world_spell_bonus_data.sql
DELETE FROM spell_bonus_data WHERE`entry`IN (15407,58381);
INSERT INTO spell_bonus_data VALUES (58381,0.257,-1,-1,-1, 'Priest - Mind Flay');

-- 9006_world_spell_group.sql
UPDATE `spell_group` SET `spell_id`=46856 WHERE `id`=1032;

-- 9008_world_trinity_string.sql
DELETE FROM `trinity_string` WHERE (`entry`='5028');
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES ('5028', 'Lootid: %u');

-- 9010_world_spell_scripts.sql
ALTER TABLE `spell_scripts` ADD COLUMN `effIndex` tinyint(3) unsigned NOT NULL DEFAULT '0' AFTER `id`;

-- 9036_world_reputation_reward_rate.sql
DROP TABLE IF EXISTS `reputation_reward_rate`;
CREATE TABLE `reputation_reward_rate` (
  `faction` mediumint(8) unsigned NOT NULL default '0',
  `quest_rate` float NOT NULL default '1',
  `creature_rate` float NOT NULL default '1',
  `spell_rate` float NOT NULL default '1',
  PRIMARY KEY  (`faction`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 9039_world_reputation_spillover_template.sql
DROP TABLE IF EXISTS `reputation_spillover_template`;
CREATE TABLE `reputation_spillover_template` (
  `faction` smallint(6) unsigned NOT NULL default '0' COMMENT 'faction entry',
  `faction1` smallint(6) unsigned NOT NULL default '0' COMMENT 'faction to give spillover for',
  `rate_1` float NOT NULL default '0' COMMENT 'the given rep points * rate',
  `rank_1` tinyint(3) unsigned NOT NULL default '0' COMMENT 'max rank,above this will not give any spillover',
  `faction2` smallint(6) unsigned NOT NULL default '0',
  `rate_2` float NOT NULL default '0',
  `rank_2` tinyint(3) unsigned NOT NULL default '0',
  `faction3` smallint(6) unsigned NOT NULL default '0',
  `rate_3` float NOT NULL default '0',
  `rank_3` tinyint(3) unsigned NOT NULL default '0',
  `faction4` smallint(6) unsigned NOT NULL default '0',
  `rate_4` float NOT NULL default '0',
  `rank_4` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`faction`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Reputation spillover reputation gain';

-- 9063_world_spell_bonus_data.sql
DELETE FROM `spell_bonus_data` WHERE `entry`=33778;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(33778,0.589714,0,0,0, 'Druid - Lifebloom final heal');

-- 9077_world_trinity_string.sql
UPDATE `trinity_string` SET `content_default`='[SERVER] %s' WHERE `entry`=3;

-- 9081_world_access_requirement.sql
ALTER TABLE `access_requirement`
 DROP PRIMARY KEY,
 CHANGE `id` `mapId` mediumint(8) unsigned NOT NULL FIRST,
 ADD `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0' AFTER `mapId`,
 DROP `heroic_level_min`,
 DROP `heroic_key`,
 DROP `heroic_key2`,
 CHANGE `quest_done` `quest_done_A` mediumint(8) unsigned NOT NULL DEFAULT '0' AFTER `item2`,
 CHANGE `heroic_quest_done` `quest_done_H` mediumint(8) unsigned NOT NULL DEFAULT '0' AFTER `quest_done_A`,
 ADD `completed_achievement` mediumint(8) unsigned NOT NULL DEFAULT '0' AFTER `quest_done_H`,
 DROP `heroic_quest_failed_text`,
 ADD PRIMARY KEY(`mapId`,`difficulty`);

-- 9081_world_areatrigger_teleport.sql
ALTER TABLE `areatrigger_teleport` DROP `access_id`;

-- 9108_world_battleground_template.sql
ALTER TABLE `battleground_template` ADD `Comment` CHAR(32) NOT NULL ;

-- 9109_world_creature_transport.sql
CREATE TABLE IF NOT EXISTS `creature_transport` (
  `guid` int(16) NOT NULL AUTO_INCREMENT COMMENT 'GUID of NPC on transport - not the same as creature.guid',
  `transport_entry` int(8) NOT NULL COMMENT 'Transport entry',
  `npc_entry` int(8) NOT NULL COMMENT 'NPC entry',
  `TransOffsetX` float NOT NULL DEFAULT '0',
  `TransOffsetY` float NOT NULL DEFAULT '0',
  `TransOffsetZ` float NOT NULL DEFAULT '0',
  `TransOffsetO` float NOT NULL DEFAULT '0',
  `emote` int(16) NOT NULL,
  PRIMARY KEY (`transport_entry`,`guid`),
  UNIQUE KEY `entry` (`transport_entry`,`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 9120_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (51459,51462,51463,51464,51465,49219,49627,49628);
INSERT INTO `spell_proc_event`(`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(51459,0,0,0,0,0,4,0,0,0,0),-- Necrosis Rank 1
(51462,0,0,0,0,0,4,0,0,0,0),-- Necrosis Rank 2
(51463,0,0,0,0,0,4,0,0,0,0),-- Necrosis Rank 3
(51464,0,0,0,0,0,4,0,0,0,0),-- Necrosis Rank 4
(51465,0,0,0,0,0,4,0,0,0,0),-- Necrosis Rank 5
(49219,0,0,0,0,0,4,0,0,0,0),-- Blood-Caked Blade Rank 1
(49627,0,0,0,0,0,4,0,0,0,0),-- Blood-Caked Blade Rank 2
(49628,0,0,0,0,0,4,0,0,0,0); -- Blood-Caked Blade Rank 3

-- 9123_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (56342,56343,56344);
INSERT INTO `spell_proc_event`(`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
( 56342,0x00,  9,0x00000018,0x08000000,0x00024000,0x00000000,0x00000000,  0,  0, 22),-- Lock and Load
( 56343,0x00,  9,0x00000018,0x08000000,0x00024000,0x00000000,0x00000000,  0,  0, 22),-- Lock and Load
( 56344,0x00,  9,0x00000018,0x08000000,0x00024000,0x00000000,0x00000000,  0,  0, 22); -- Lock and Load

-- 9124_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (12322,12999,13000,13001,13002);
INSERT INTO `spell_proc_event`(`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
( 12322,0x00,  0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,  3,  0,  0),-- Unbridled Wrath (Rank 1)
( 12999,0x00,  0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,  6,  0,  0),-- Unbridled Wrath (Rank 2)
( 13000,0x00,  0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,  9,  0,  0),-- Unbridled Wrath (Rank 3)
( 13001,0x00,  0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000, 12,  0,  0),-- Unbridled Wrath (Rank 4)
( 13002,0x00,  0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000, 15,  0,  0); -- Unbridled Wrath (Rank 5)

-- 9130_world_spell_bonus_data.sql
DELETE FROM `spell_bonus_data` WHERE `entry` IN(10444);
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(10444,0,0,0,0, 'Shaman - Flametongue Trigger');

-- 9131_world_spell_ranks.sql
DELETE FROM spell_ranks WHERE `spell_id` IN (52987,52988);
INSERT INTO spell_ranks (`first_spell_id`,`spell_id`,`rank`) VALUES
(47757,52987,3),
(47757,52988,4);

-- 9135_world_battleground_template.sql
ALTER TABLE `battleground_template` ADD `Weight` tinyint(2) UNSIGNED NOT NULL DEFAULT 1 AFTER `HordeStartO`;

-- 9136_world_trinity_string.sql
DELETE FROM `trinity_string` WHERE `entry`=1130;
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES
(1130, 'Can''t dump deleted characters,aborting.');

-- 9148_world_spell_bonus_data.sql
DELETE FROM `spell_bonus_data` WHERE `entry` IN (703);
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(703,-1,-1,-1,0.07, 'Rogue - Garrote');

-- 9166_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (53178,53179,62764,62765);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(53178,0x00,9,0x00000000,0x10000000,0x00000000,0x00000000,0x00000000,0,100,0),-- GuardDog(Rank1)
(53179,0x00,9,0x00000000,0x10000000,0x00000000,0x00000000,0x00000000,0,100,0),-- GuardDog(Rank2)
(62764,0x00,9,0x00000000,0x10000000,0x00000000,0x00000000,0x00000000,0,100,0),-- Silverback(Rank1)
(62765,0x00,9,0x00000000,0x10000000,0x00000000,0x00000000,0x00000000,0,100,0); -- Silverback(Rank2)

-- 9176_world_spell_proc_event.sql
UPDATE `spell_proc_event` SET `procFlags`=0x10000 WHERE `entry` IN (53178,53179,62764,62765);

-- 9189_world_transports.sql
ALTER TABLE `transports` ADD `ScriptName` char(64) NOT NULL DEFAULT '' AFTER `period`;

-- 9191_world_instance_template.sql
ALTER TABLE `instance_template` DROP `access_id`;

-- 9193_world_battleground_template.sql
ALTER TABLE `battleground_template` ADD `ScriptName` char(64) NOT NULL DEFAULT '' AFTER `Weight`;

-- 9195_world_game_weather.sql
ALTER TABLE `game_weather` ADD `ScriptName` char(64) NOT NULL DEFAULT '' AFTER `winter_storm_chance`;

-- 9196_world_conditions.sql
ALTER TABLE `conditions` ADD `ScriptName` char(64) NOT NULL DEFAULT '' AFTER `ErrorTextId`;

-- 9198_world_outdoorpvp_template.sql
DROP TABLE IF EXISTS `outdoorpvp_template`;
CREATE TABLE `outdoorpvp_template` (
  `TypeId` tinyint(2) unsigned NOT NULL,
  `ScriptName` char(64) NOT NULL DEFAULT '',
  `comment` text,
  PRIMARY KEY (`TypeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='OutdoorPvP Templates';

-- 9237_world_achievement_criteria_data.sql
ALTER TABLE `achievement_criteria_data` ADD `ScriptName` char(64) NOT NULL DEFAULT '' AFTER `value2`;

-- 9237_world_battleground_template.sql
UPDATE `battleground_template` SET `Comment`='Alterac Valley' WHERE `battleground_template`.`id`=1;
UPDATE `battleground_template` SET `Comment`='Warsong Gulch' WHERE `battleground_template`.`id`=2;
UPDATE `battleground_template` SET `Comment`='Arathi Basin' WHERE `battleground_template`.`id`=3;
UPDATE `battleground_template` SET `Comment`='Nagrand Arena' WHERE `battleground_template`.`id`=4;
UPDATE `battleground_template` SET `Comment`='Blades''s Edge Arena' WHERE `battleground_template`.`id`=5;
UPDATE `battleground_template` SET `Comment`='All Arena' WHERE `battleground_template`.`id`=6;
UPDATE `battleground_template` SET `Comment`='Eye of The Storm' WHERE `battleground_template`.`id`=7;
UPDATE `battleground_template` SET `Comment`='Ruins of Lordaeron' WHERE `battleground_template`.`id`=8;
UPDATE `battleground_template` SET `Comment`='Strand of the Ancients' WHERE `battleground_template`.`id`=9;
UPDATE `battleground_template` SET `Comment`='Dalaran Sewers' WHERE `battleground_template`.`id`=10;
UPDATE `battleground_template` SET `Comment`='The Ring of Valor' WHERE `battleground_template`.`id`=11;
UPDATE `battleground_template` SET `Comment`='Isle of Conquest' WHERE `battleground_template`.`id`=30;
UPDATE `battleground_template` SET `Comment`='Random battleground' WHERE `battleground_template`.`id`=32;

-- 9237_world_outdoorpvp_template.sql
DELETE FROM `outdoorpvp_template` WHERE `TypeId` IN (1,2,3,4,5,6);
INSERT INTO `outdoorpvp_template` (`TypeId`,`ScriptName`,`Comment`) VALUES
(1, 'outdoorpvp_hp', 'Hellfire Peninsula'),
(2, 'outdoorpvp_na', 'Nagrand'),
(3, 'outdoorpvp_tf', 'Terokkar Forest'),
(4, 'outdoorpvp_zm', 'Zangarmarsh'),
(5, 'outdoorpvp_si', 'Silithus'),
(6, 'outdoorpvp_ep', 'Eastern Plaguelands');

-- 9240_world_achievement_criteria_data.sql
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (3693,6641,6642,6643,6644) AND `type`=11;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(3693,11,0,0, 'achievement_storm_glory'),
(6641,11,0,0, 'achievement_school_of_hard_knocks'),
(6642,11,0,0, 'achievement_school_of_hard_knocks'),
(6643,11,0,0, 'achievement_school_of_hard_knocks'),
(6644,11,0,0, 'achievement_school_of_hard_knocks');


-- 9290_world_spell_linked_spell.sql
-- Intravenous Healing Potion Fix
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=61263;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES (61263,61267,0, 'Intravenous Healing Effect' );
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES (61263,61268,0, 'Intravenous Mana Regeneration Effect' );

-- 9332_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (71642,71611,71640,71634,71645,71602,71606,71637,71540,71402,72417,72413,72419);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(71642,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45),-- Althor's Abacus (Heroic)
(71611,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45),-- Althor's Abacus
(71640,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,30),-- Corpse Tongue Coin (Heroic)
(71634,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,30),-- Corpse Tongue Coin
(71645,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45),-- Dislodged Foreign Object (Heroic)
(71602,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45),-- Dislodged Foreign Object
(71606,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,100),-- Phylactery of the Nameless Lich
(71637,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,100),-- Phylactery of the Nameless Lich (Heroic)
(71540,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45),-- Whispering Fanged Skull (Heroic)
(71402,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45),-- Whispering Fanged Skull
(72417,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,60),-- Item - Icecrown Reputation Ring Caster Trigger
(72413,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,60),-- Item - Icecrown Reputation Ring Melee
(72419,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,60); -- Item - Icecrown Reputation Ring Healer Trigger

-- 9377_world_achievement_criteria_data.sql
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (3804,3805,3806,3807,3808,3809,3810,3811,3812,3813,1234,1239,5605,5606) AND `type` IN (0,11);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(3804,11,0,0, 'achievement_resilient_victory'),-- Resilient Victory
(3805,11,0,0, 'achievement_resilient_victory'),-- Resilient Victory
(3806,11,0,0, 'achievement_resilient_victory'),-- Resilient Victory
(3807,11,0,0, 'achievement_resilient_victory'),-- Resilient Victory
(3808,11,0,0, 'achievement_resilient_victory'),-- Resilient Victory
(3809,11,0,0, 'achievement_resilient_victory'),-- Resilient Victory
(3810,11,0,0, 'achievement_resilient_victory'),-- Resilient Victory
(3811,11,0,0, 'achievement_resilient_victory'),-- Resilient Victory
(3812,11,0,0, 'achievement_resilient_victory'),-- Resilient Victory
(3813,11,0,0, 'achievement_resilient_victory'),-- Resilient Victory
(1234,11,0,0, 'achievement_bg_control_all_nodes'),-- Territorial Dominance
(1239,11,0,0, 'achievement_bg_control_all_nodes'),-- Eye of the Storm Domination
(5605,11,0,0, 'achievement_save_the_day'),-- Save the Day
(5606,11,0,0, 'achievement_save_the_day'); -- Save the Day

-- 9421_world_command.sql
DELETE FROM `command` WHERE `name` IN ('namego', 'goname', 'groupgo', 'summon', 'appear', 'groupsummon');
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('appear',1, 'Syntax: .appear [$charactername]\r\n\r\nTeleport to the given character. Either specify the character name or click on the character''s portrait,e.g. when you are in a group. Character can be offline.'),
('groupsummon',1, 'Syntax: .groupsummon [$charactername]\r\n\r\nTeleport the given character and his group to you. Teleported only online characters but original selected group member can be offline.'),
('summon',1, 'Syntax: .summon [$charactername]\r\n\r\nTeleport the given character to you. Character can be offline.');

-- 9427_world_command.sql
DELETE FROM `command` WHERE `name` IN ('reload gossip_menu', 'reload gossip_menu_option', 'reload gossip_scripts');
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('reload gossip_menu',3, 'Syntax: .reload gossip_menu\nReload gossip_menu table.'),
('reload gossip_menu_option',3, 'Syntax: .reload gossip_menu_option\nReload gossip_menu_option table.'),
('reload gossip_scripts',3, 'Syntax: .reload gossip_scripts\nReload gossip_scripts table.');

-- 9521_world_spell_linked_spell.sql
-- spell_linked_spell
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (66870,67621,67622,67623,-66683,-67661);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(66870,-66823,1, 'Remove Paralytic Toxin when hit by Burning Bite'),
(67621,-67618,1, 'Remove Paralytic Toxin when hit by Burning Bite'),
(67622,-67619,1, 'Remove Paralytic Toxin when hit by Burning Bite'),
(67623,-67620,1, 'Remove Paralytic Toxin when hit by Burning Bite'),
(-66683,68667,0, 'Icehowl - Surge of Adrenaline'),
(-67661,68667,0, 'Icehowl - Surge of Adrenaline');

-- 9537_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (70748);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(70748,0x00,3,0x00000000,0x00200000,0x00000000,0x00000400,0x00000000,0,0,0); -- Item - Mage T10 4P Bonus

-- 9551_world_spell_bonus_data.sql
INSERT INTO `spell_bonus_data` VALUES (70809,0,0,0,0, 'Item - Shaman T10 Restoration 4P Bonus');
-- 9551_world_spell_proc_event.sql
-- Item - Shaman T10 Enhancement 2P Bonus
DELETE FROM `spell_proc_event` WHERE `entry`=70830;
INSERT INTO `spell_proc_event` VALUES (70830,0x00,11,0x00000000,0x00020000,0x00000000,0x00000000,0x00000000,0,0,0);

-- 9554_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (70727,70730,70803,70805,70841);
INSERT INTO `spell_proc_event` VALUES 
(70727,0x00,9,0x00000000,0x00000000,0x00000000,0x00000040,0x00000000,0,0,0),-- Item - Hunter T10 2P Bonus
(70730,0x00,9,0x00004000,0x00001000,0x00000000,0x00040000,0x00000000,0,0,0),-- Item - Hunter T10 4P Bonus
(70803,0x00,8,0x003E0000,0x00000008,0x00000000,0x00000000,0x00000000,0,0,0),-- Item - Rogue T10 4P Bonus
(70805,0x00,8,0x00000000,0x00020000,0x00000000,0x00004000,0x00000000,0,0,0),-- Item - Rogue T10 2P Bonus
(70841,0x00,5,0x00000004,0x00000100,0x00000000,0x00040000,0x00000000,0,0,0); -- Item - Warlock T10 4P Bonus

-- 9555_world_spell_proc_event.sql
-- Idols
-- Librams
-- Totems
-- Sigils
DELETE FROM `spell_proc_event` WHERE `entry` IN (71214,71217,67389,67386,67392,71178,67361,71176,71191,71194,71186,67379,67365,67363,64955,71228,71226,67381,67384);
INSERT INTO `spell_proc_event` VALUES 
(64955,0x00,10,0x00000000,0x00000040,0x00000000,0x00000000,0x00000000,0,0,0),-- Item - Paladin T8 Protection Relic
(67361,0x00,7,0x00000002,0x00000000,0x00000000,0x00040000,0x00000000,0,0,0),-- Item - Druid T9 Balance Relic (Moonfire)
(67363,0x00,10,0x00000000,0x80000000,0x00000000,0x00000000,0x00000000,0,0,10),-- Item - Paladin T9 Holy Relic (Judgement)
(67365,0x00,10,0x00000000,0x00000800,0x00000000,0x00040000,0x00000000,0,0,6),-- Item - Paladin T9 Retribution Relic (Seal of Vengeance)
(67379,0x00,10,0x00000000,0x00040000,0x00000000,0x00000000,0x00000000,0,0,0),-- Item - Paladin T9 Protection Relic (Hammer of The Righteous)
(67381,0x00,15,0x00000000,0x20000000,0x00000000,0x00000000,0x00000000,0,0,10),-- Item - Death Knight T9 Tank Relic (Rune Strike)
(67384,0x00,15,0x00000010,0x08020000,0x00000000,0x00000000,0x00000000,0,80,10),-- Item - Death Knight T9 Melee Relic (Rune Strike)
(67386,0x00,11,0x00000001,0x00000000,0x00000000,0x00010000,0x00000000,0,0,6),-- Item - Shaman T9 Elemental Relic (Lightning Bolt)
(67389,0x00,11,0x00000100,0x00000000,0x00000000,0x00004000,0x00000000,0,0,8),-- Item - Shaman T9 Restoration Relic (Chain Heal)
(67392,0x00,11,0x00000000,0x00000000,0x00000004,0x00000010,0x00000000,0,0,0),-- Item - Shaman T9 Enhancement Relic (Lava Lash)
(71176,0x00,7,0x00200002,0x00000000,0x00000000,0x00040000,0x00000000,0,0,0),-- Item - Druid T10 Balance Relic (Moonfire and Insect Swarm)
(71178,0x00,7,0x00000010,0x00000000,0x00000000,0x00040000,0x00000000,0,0,0),-- Item - Druid T10 Restoration Relic (Rejuvenation)
(71186,0x00,10,0x00000000,0x00008000,0x00000000,0x00000000,0x00000000,0,0,0),-- Item - Paladin T10 Retribution Relic (Crusader Strike)
(71191,0x00,10,0x00000000,0x00010000,0x00000000,0x00000000,0x00000000,0,0,0),-- Item - Paladin T10 Holy Relic (Holy Shock)
(71194,0x00,10,0x00000000,0x00100000,0x00000000,0x00000000,0x00000000,0,0,0),-- Item - Paladin T10 Protection Relic (Shield of Righteousness)
(71214,0x00,11,0x00001400,0x00000010,0x00000000,0x00000010,0x00000000,0,0,6),-- Item - Shaman T10 Enhancement Relic (Stormstrike)
(71217,0x00,11,0x00000000,0x00000000,0x00000010,0x00004000,0x00000000,0,0,0),-- Item - Shaman T10 Restoration Relic (Riptide)
(71226,0x00,15,0x00000010,0x08020000,0x00000000,0x00000000,0x00000000,0,0,0),-- Item - Death Knight T10 DPS Relic (Obliterate,Scourge Strike,Death Strike)
(71228,0x00,15,0x00000000,0x20000000,0x00000000,0x00000000,0x00000000,0,0,0); -- Item - Death Knight T10 Tank Relic (Runestrike)

-- 9556_world_spell_linked_spell.sql
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=58875 AND `spell_effect`=58876 AND `type`=0;
INSERT INTO `spell_linked_spell` VALUES (58875,58876,0,'Spirit Walk');

-- 9560_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry`=70854;
INSERT INTO `spell_proc_event` VALUES
(70854,0x00,4,0x00000000,0x00000010,0x00000000,0x00000000,0x00000000,0,0,0); --      Item - Warrior T10 Melee 2P Bonus

-- 9570_world_spell_group.sql
DELETE FROM `spell_group` WHERE `id` IN (1108,1109,1110);
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES
(1108, 1126), -- Mark of the Wild
(1108, 21849), -- Gift of the Wild
(1109, 1243), -- Power Word: Fortitude
(1109, 21562), -- Prayer of Fortitude
(1110, 976), -- Shadow Protection
(1110, 27683); -- Prayer of Shadow Protection

-- 9570_world_spell_group_stack_rules.sql
DELETE FROM `spell_group_stack_rules` WHERE `group_id` IN (1108,1109,1110);
INSERT INTO `spell_group_stack_rules` (`group_id`, `stack_rule`) VALUES
(1108,1), -- Mark/Gift of the Wild
(1109,1), -- Power Word/Prayer of Fortitude
(1110,1); -- Prayer of/Shadow protection

-- 9577_world_spell_group.sql
DELETE FROM `spell_group` WHERE `spell_id` IN (72586,72588,72590);
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES
(1006,72586), -- Blessing of Forgotten Kings (Drums)
(1108,72588), -- Gift of the Wild (Drums)
(1109,72590); -- Fortitude (Scroll)

-- 9578_world_vehicle_scaling_info.sql
DROP TABLE IF EXISTS `vehicle_scaling_info`;
CREATE TABLE `vehicle_scaling_info` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `baseItemLevel` float NOT NULL default '0',
  `scalingFactor` float NOT NULL default '0',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- 9587_world_spell_bonus_data.sql
DELETE FROM `spell_bonus_data` WHERE `entry` IN (54158,20187,31804);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(54158,0.25,0,0.16,0, 'Paladin - Judgement (Seal of Light, Seal of Wisdom, Seal of Justice)'),
(20187,0.32,0,0.2,0, 'Paladin - Judgement of Righteousness'),
(31804,0.22,0,0.14,0, 'Paladin - Judgement of Vengeance');

-- 9595_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE`entry`= 71404;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(71404,0,0,0,0,0,0,2,0,0,45);

-- 9599_world_vehicle_accessory.sql
DELETE FROM `vehicle_accessory` WHERE `entry`=33114;

-- 9607_world_achievement_criteria_data.sql
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (12778,13036,13035,13037) AND `type` IN (0,11);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(12778,11,0,0, 'achievement_ive_gone_and_made_a_mess'),
(13036,11,0,0, 'achievement_ive_gone_and_made_a_mess'),
(13035,11,0,0, 'achievement_ive_gone_and_made_a_mess'),
(13037,11,0,0, 'achievement_ive_gone_and_made_a_mess');

-- 9644_world_command.sql
DELETE FROM command WHERE name IN ('reload all_gossips', 'reload locales_gossip_menu_option', 'reload quest_poi');
INSERT INTO command (name, security, help) VALUES
('reload all_gossips',3,'Syntax: .reload all_gossips\nReload gossip_menu, gossip_menu_option, gossip_scripts, npc_gossip, points_of_interest tables.'),
('reload locales_gossip_menu_option',3, 'Syntax: .reload locales_gossip_menu_option\nReload locales_gossip_menu_option table.'),
('reload quest_poi',3,'Syntax: .reload quest_poi\nReload quest_poi table.');

-- 9669_world_creature_template.sql

-- Icecrown Citadel needed vehicleIds
-- Lord Marrowgar : Bone Spike vehicle
UPDATE `creature_template` SET `vehicleId`=533 WHERE `entry`=36619;
-- Deathbringer Saurfang
UPDATE `creature_template` SET `VehicleId`=591 WHERE `entry` IN (37813,3781301,3781302,3781303);
 -- High Overlord Saurfang
UPDATE `creature_template` SET `VehicleId`=599 WHERE `entry` IN (37187,38156,38637,38638);

-- 9671_world_spell_group.sql
-- Unstable Affliction / Immolate stacking from same caster
DELETE FROM `spell_group` where `id`=1112;
INSERT INTO spell_group (id, spell_id) VALUES
(1112,348),
(1112,30108);

-- 9671_world_spell_group_stack_rules.sql
-- Unstable Affliction / Immolate stacking from same caster
DELETE FROM `spell_group_stack_rules` where `group_id`=1112;
INSERT INTO spell_group_stack_rules (group_id,stack_rule) VALUES (1112,2);

-- 9681_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` in (30293,30295,30296);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(30293,0x00,5,0x00000381,0x008200C0,0x00000000,0x00000000,0x00000000,0,0,0),
(30295,0x00,5,0x00000381,0x008200C0,0x00000000,0x00000000,0x00000000,0,0,0),
(30296,0x00,5,0x00000381,0x008200C0,0x00000000,0x00000000,0x00000000,0,0,0);

-- 9692_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE entry IN (70652,70756);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(70652,0x00,15,0x00000008,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0), -- Item: Death Knight T10 Tank 4P Bonus
(70756,0x00,10,0x00200000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0); -- Item: Paladin T10 Holy 4P Bonus

-- 9695_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE entry IN (70656);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
( 70656,0x00,15,0x00000000,0x00000000,0x00000000,0x00014000,0x00000000,0,0,0); -- Item - Death Knight T10 Melee 4P Bonus

-- 9700_world_achievement_criteria_data.sql
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (12977,12967,12986,12982) AND `type` IN (0,11);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(12977,11,0,0, 'achievement_flu_shot_shortage'),
(12967,11,0,0, 'achievement_flu_shot_shortage'),
(12986,11,0,0, 'achievement_flu_shot_shortage'),
(12982,11,0,0, 'achievement_flu_shot_shortage');

-- 9700_world_vehicle_accessory.sql
DELETE FROM `vehicle_accessory` WHERE `entry`=36678;
INSERT INTO `vehicle_accessory` (`entry`,`accessory_entry`,`seat_id`,`minion`,`description`) VALUES
(36678,38309,0,1, 'Professor Putricide - trigger'),
(36678,38308,1,1, 'Professor Putricide - trigger');

-- 9701_world_spell_bonus_data.sql
DELETE FROM `spell_bonus_data` WHERE `entry` IN (48568,48567,33745);
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(48568,0,0,0,0.01,'Druid - Lacerate Rank 3($AP*0.05/number of ticks)'),
(48567,0,0,0,0.01,'Druid - Lacerate Rank 2($AP*0.05/number of ticks)'),
(33745,0,0,0,0.01,'Druid - Lacerate Rank 1($AP*0.05/number of ticks)');

-- 9702_world_playercreateinfo_spell.sql
DELETE FROM `playercreateinfo_spell` WHERE `Spell`=75445;
INSERT INTO `playercreateinfo_spell` VALUES (0, 9, 75445, 'Demonic Immolate');

-- 9708_world_database.sql
-- Set the correct engine
ALTER TABLE `spell_group_stack_rules` ENGINE=MyISAM;
ALTER TABLE `creature_classlevelstats` ENGINE=MyISAM;
ALTER TABLE `season_linked_event` ENGINE=MyISAM;

-- 9709_world_creature_respawn.sql
ALTER TABLE `creature_respawn` ENGINE = InnoDB;

-- 9712_world_spell_threat.sql
-- Battle Shout
DELETE FROM `spell_threat` WHERE `entry` IN (6673,5242,6192,11549,11550,11551,2048,47436);
INSERT INTO `spell_threat`(`entry`,`Threat`) VALUES
(6673,1), -- Rank 1
(5242,12), -- Rank 2
(6192,22), -- Rank 3
(11549,32), -- Rank 4
(11550,42), -- Rank 5
(11551,52), -- Rank 6 , Rank 7 already in tdb
(2048,69), -- Rank 8
(47436,78); -- Rank 9
-- Cleave
DELETE FROM `spell_threat` WHERE `entry` IN (47519,47520);
INSERT INTO `spell_threat`(`entry`,`Threat`) VALUES
(47519,175), -- Rank 7
(47520,225); -- Rank 8
-- Commanding Shout
DELETE FROM `spell_threat` WHERE `entry` IN (469,47439,47440);
INSERT INTO `spell_threat`(`entry`,`Threat`) VALUES
(469,68), -- Rank 1
(47439,77), -- Rank 2
(47440,80); -- Rank 3
-- Demoralizing Shout
DELETE FROM `spell_threat` WHERE `entry` IN (25202,25203,47437);
INSERT INTO `spell_threat`(`entry`,`Threat`) VALUES
(25202,49), -- Rank 6
(25203,56), -- Rank 7
(47437,63); -- Rank 8
-- Devastate
DELETE FROM `spell_threat` WHERE `entry` IN (47497,47498);
INSERT INTO `spell_threat`(`entry`,`Threat`) VALUES
(47497,101), -- Rank 4
(47498,101); -- Rank 5
-- Heroic Strike
DELETE FROM `spell_threat` WHERE `entry` IN (47449,47450);
INSERT INTO `spell_threat`(`entry`,`Threat`) VALUES
(47449,233), -- Rank 12
(47450,259); -- Rank 13
-- Revenge
DELETE FROM `spell_threat` WHERE `entry` IN (57823);
INSERT INTO `spell_threat`(`entry`,`Threat`) VALUES
(57823,530); -- Rank 9
-- Improved Revenge (Talented)
DELETE FROM `spell_threat` WHERE `entry` IN (12797,12799);
 INSERT INTO `spell_threat`(`entry`,`Threat`) VALUES
(12797,25), -- Rank 1
(12799,25); -- Rank 2
-- Shield Bash
DELETE FROM `spell_threat` WHERE `entry`=72;
INSERT INTO `spell_threat`(`entry`,`Threat`) VALUES
(72,36);
-- Shield Slam
DELETE FROM `spell_threat` WHERE `entry` IN (47487,47488);
INSERT INTO `spell_threat`(`entry`,`Threat`) VALUES
(47487,546), -- Rank 7
(47488,770); -- Rank 8
-- Sunder Armor (rank 7)
DELETE FROM `spell_threat` WHERE `entry`=47467;
INSERT INTO `spell_threat`(`entry`,`Threat`) VALUES
(47467,345);
-- Thunder Clap
DELETE FROM `spell_threat` WHERE `entry` IN (47501,47502);
INSERT INTO `spell_threat`(`entry`,`Threat`) VALUES
(47501,457), -- Rank 8
(47502,555);  -- Rank 9

-- 9713_world_spell_bonus_data.sql
DELETE FROM `spell_bonus_data` WHERE `entry` IN (56161);
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(56161,0,0,0,0, 'Priest - Glyph of Prayer of Healing');

-- 9715_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (51692, 51696);
INSERT INTO `spell_proc_event` VALUES 
( 51692,0x00,8,0x00000204,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0), -- Waylay (Rank 1)
( 51696,0x00,8,0x00000204,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0); -- Waylay (Rank 2)

-- 9722_world_exploration_basexp.sql
-- Base XP for Levels 71 to 79
DELETE FROM `exploration_basexp` WHERE `level` IN (71,72,73,74,75,76,77,78,79);
INSERT INTO `exploration_basexp` (`level`,`basexp`) VALUES 
(71,1330),
(72,1370),
(73,1410),
(74,1440),
(75,1470),
(76,1510),
(77,1530),
(78,1600),
(79,1630);

-- 9743_world_command.sql
DELETE FROM `command` WHERE `name` IN ('reload lfg_dungeon_encounters','reload lfg_dungeon_rewards');
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('reload lfg_dungeon_encounters',3, 'Syntax: .reload lfg_dungeon_encounters\nReload lfg_dungeon_encounters table.'),
('reload lfg_dungeon_rewards',3, 'Syntax: .reload lfg_dungeon_rewards\nReload lfg_dungeon_rewards table.');

-- 9743_world_lfg_dungeon_encounters.sql
DROP TABLE IF EXISTS `lfg_dungeon_encounters`;
CREATE TABLE `lfg_dungeon_encounters` (
  `achievementId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Achievement marking final boss completion',
  `dungeonId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Dungeon entry from dbc',
  PRIMARY KEY (`achievementId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 9743_world_lfg_dungeon_rewards.sql
DROP TABLE IF EXISTS `lfg_dungeon_rewards`;
CREATE TABLE `lfg_dungeon_rewards` (
  `dungeonId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Dungeon entry from dbc',
  `maxLevel` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Max level at which this reward is rewarded',
  `firstQuestId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest id with rewards for first dungeon this day',
  `firstMoneyVar` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Money multiplier for completing the dungeon first time in a day with less players than max',
  `firstXPVar` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Experience multiplier for completing the dungeon first time in a day with less players than max',
  `otherQuestId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest id with rewards for Nth dungeon this day',
  `otherMoneyVar` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Money multiplier for completing the dungeon Nth time in a day with less players than max',
  `otherXPVar` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Experience multiplier for completing the dungeon Nth time in a day with less players than max',
  PRIMARY KEY (`dungeonId`,`maxLevel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 9760_world_transports.sql
ALTER TABLE `transports`
  ADD COLUMN `guid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT FIRST,
  MODIFY COLUMN `entry` mediumint(8) unsigned NOT NULL DEFAULT '0' AFTER `guid`,
  DROP PRIMARY KEY,
  ADD PRIMARY KEY (`guid`),
  ADD UNIQUE INDEX `idx_entry` (`entry`);

-- 9764_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry`=53386;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(53386,0x30,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0); -- Rune of Cinderglacier

-- 9765_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry`=50421;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(50421,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0); -- Scent of Blood

-- 9768_world_command.sql
DELETE FROM `command` WHERE `name` LIKE 'instance unbind';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('instance unbind',3,'Syntax: .instance unbind <mapid|all> [difficulty]\r\n  Clear all/some of player\'s binds');

-- 9775_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry`=71564;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(71564,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000002,0,0,0); -- Nevermelting Ice Crystal

-- 9781_world_spell_proc_event.sql
DELETE FROM spell_proc_event WHERE entry IN (53290, 53291, 53292);
INSERT INTO spell_proc_event (entry, SchoolMask, SpellFamilyName, SpellFamilyMask0, SpellFamilyMask1, SpellFamilyMask2, procFlags, procEx, ppmRate, CustomChance, Cooldown) VALUES
(53290,0,9,0x800,0x1,0x200,0,0x0000002,0,0,0),
(53291,0,9,0x800,0x1,0x200,0,0x0000002,0,0,0),
(53292,0,9,0x800,0x1,0x200,0,0x0000002,0,0,0);

-- 9784_world_command.sql
DELETE FROM `command` WHERE `name` IN ('character changefaction','character changerace');
INSERT INTO `command` VALUES
('character changefaction',2,'Syntax: .character changefaction $name\r\n\r\nChange character faction.'),
('character changerace',2,'Syntax: .character changerace $name\r\n\r\nChange character race.');

-- 9784_world_player_factionchange_achievement.sql
DROP TABLE IF EXISTS `player_factionchange_achievement`;
CREATE TABLE `player_factionchange_achievement` (
 `alliance_id` int(8) NOT NULL,
 `horde_id` int(8) NOT NULL,
 PRIMARY KEY (`alliance_id`,`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 9784_world_player_factionchange_items.sql
DROP TABLE IF EXISTS `player_factionchange_items`;
CREATE TABLE `player_factionchange_items` (
 `race_A` int(8) NOT NULL,
 `alliance_id` int(8) NOT NULL,
 `commentA` text,
 `race_H` int(8) NOT NULL,
 `horde_id` int(8) NOT NULL,
 `commentH` text,
PRIMARY KEY (`alliance_id`,`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 9784_world_player_factionchange_reputations.sql
DROP TABLE IF EXISTS `player_factionchange_reputations`;
CREATE TABLE `player_factionchange_reputations` (
 `alliance_id` int(8) NOT NULL,
 `horde_id` int(8) NOT NULL,
 PRIMARY KEY (`alliance_id`,`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 9784_world_player_factionchange_spells.sql
DROP TABLE IF EXISTS `player_factionchange_spells`;
CREATE TABLE `player_factionchange_spells` (
 `alliance_id` int(8) NOT NULL,
 `horde_id` int(8) NOT NULL,
 PRIMARY KEY (`alliance_id`,`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 9791_world_spell_group.sql
DELETE FROM `spell_group` WHERE `spell_id`=63283;

-- 9791_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry`=63280;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(63280,0x00,11,0x20000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0); -- Glyph ofTotem of Wrath

-- 9803_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (75474,75465,75457,75455);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(75474,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45), -- Charred Twilight Scale (Heroic)
(75465,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45), -- Charred Twilight Scale
(75457,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45), -- Sharpened Twilight Scale (Heroic)
(75455,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45); -- Sharpened Twilight Scale

-- 9805_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (71545,71406);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(71545,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,50,0), -- Tiny Abomination in a Jar (Heroic)
(71406,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,50,0); -- Tiny Abomination in a Jar

-- 9824_world_trinity_string.sql
DELETE FROM `trinity_string` WHERE (`entry`='5029');
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES ('5029', 'Result limit reached (max results: %d)');

-- 9829_world_spell_proc_event.sql
UPDATE `spell_proc_event` SET `procFlags`=0 WHERE `entry` IN (53486,53488);

-- 9830_world_spell_group.sql  
DELETE FROM `spell_group` where `id`=1113;
INSERT INTO spell_group (id, spell_id) VALUES
(1113,1008),
(1113,604);

-- 9830_world_spell_group_stack_rules.sql
DELETE FROM `spell_group_stack_rules` where `group_id`=1113;
INSERT INTO spell_group_stack_rules (group_id, stack_rule) VALUES (1113, 1);

-- 9834_world_spell_dbc.sql
-- Add serverside spells place holders for future development
DELETE FROM `spell_dbc` WHERE `Id` IN (55805);
INSERT INTO `spell_dbc` (`Id`,`Comment`) VALUES
(44805, 'Aura used in creature_addon - serverside spell');

-- 9840_world_spell_linked_spell.sql
DELETE FROM spell_linked_spell WHERE spell_trigger IN(7744,42292,59752);
INSERT INTO spell_linked_spell (spell_trigger, spell_effect, type, comment) VALUES
(7744, 72757, 0, 'Will of the Forsaken Cooldown Trigger (WOTF)'),
(42292, 72752, 0, 'Will of the Forsaken Cooldown Trigger'),
(59752, 72752, 0, 'Will of the Forsaken Cooldown Trigger');

-- 9845_world_spell_dbc.sql
-- Add remaining placeholder info for AURA 44805
UPDATE `spell_dbc` SET `Effect1`=6,`EffectApplyAuraName1`=4 WHERE `id`=44805;


-- ------------- --
-- TrinityScript --
-- ------------- --

-- 9012_world_spell_script_names.sql
DROP TABLE IF EXISTS `spell_script_names`;
CREATE TABLE `spell_script_names` (
  `spell_id` int(11) NOT NULL,
  `ScriptName` char(64) NOT NULL,
  UNIQUE (`spell_id`,`ScriptName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 9026_world_script_texts.sql
DELETE FROM `script_texts` WHERE `npc_entry` IN (7607,7604);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(7607,-1209000, 'Oh no! Here they come!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0, 'Weegli Blastfuse SAY_WEEGLI_OHNO'),
(7607,-1209001, 'OK. Here I go.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0 , 'Weegli Blastfuse SAY_WEEGLI_OK_I_GO'),
(7604,-1209002, 'Placeholder 1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0, 'Sergeant Bly SAY_1'),
(7604,-1209003, 'Placeholder 2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,1,0, 'Sergeant Bly SAY_2');

-- 9026_world_scriptname.sql
UPDATE `gameobject_template` SET `scriptName`='go_troll_cage' WHERE `entry`>=141070 AND `entry`<141075;

-- 9043_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id`=11958 AND `ScriptName`='spell_mage_cold_snap';
DELETE FROM `spell_script_names` WHERE `spell_id`=32826 AND `ScriptName`='spell_mage_polymorph_visual';
DELETE FROM `spell_script_names` WHERE `spell_id`=31687 AND `ScriptName`='spell_mage_summon_water_elemental';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(11958, 'spell_mage_cold_snap'),
(32826, 'spell_mage_polymorph_visual'),
(31687, 'spell_mage_summon_water_elemental');

-- 9058_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id`=-47540 AND `ScriptName`='spell_pri_penance';
DELETE FROM `spell_script_names` WHERE `spell_id`=31231 AND `ScriptName`='spell_rog_cheat_death';
DELETE FROM `spell_script_names` WHERE `spell_id`=51662 AND `ScriptName`='spell_rog_hunger_for_blood';
DELETE FROM `spell_script_names` WHERE `spell_id`=14185 AND `ScriptName`='spell_rog_preparation';
DELETE FROM `spell_script_names` WHERE `spell_id`=5938 AND `ScriptName`='spell_rog_shiv';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(-47540, 'spell_pri_penance'),
(31231, 'spell_rog_cheat_death'),
(51662, 'spell_rog_hunger_for_blood'),
(14185, 'spell_rog_preparation'),
(5938, 'spell_rog_shiv');

-- 9059_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id`=53271 AND `ScriptName`='spell_hun_masters_call';
DELETE FROM `spell_script_names` WHERE `spell_id`=53478 AND `ScriptName`='spell_hun_last_stand_pet';
DELETE FROM `spell_script_names` WHERE `spell_id`=23989 AND `ScriptName`='spell_hun_readiness';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(53271, 'spell_hun_masters_call'),
(53478, 'spell_hun_last_stand_pet'),
(23989, 'spell_hun_readiness');

-- 9070_world_scriptname.sql
UPDATE creature_template SET scriptname='npc_roxi_ramrocket' WHERE entry=31247;

-- 9122_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id`=37877 AND `ScriptName`='spell_pal_blessing_of_faith';
DELETE FROM `spell_script_names` WHERE `spell_id`=-20473 AND `ScriptName`='spell_pal_holy_shock';
DELETE FROM `spell_script_names` WHERE `spell_id`=20425 AND `ScriptName`='spell_pal_judgement_of_command';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(37877, 'spell_pal_blessing_of_faith'),
(-20473, 'spell_pal_holy_shock'),
(20425, 'spell_pal_judgement_of_command');

-- 9144_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id`=21977 AND `ScriptName`='spell_warr_warriors_wrath';
DELETE FROM `spell_script_names` WHERE `spell_id`=12975 AND `ScriptName`='spell_warr_last_stand';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(12975, 'spell_warr_last_stand'),
(21977, 'spell_warr_warriors_wrath');

-- 9149_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id`=55709 AND `ScriptName`='spell_hun_pet_heart_of_the_phoenix';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(55709, 'spell_hun_pet_heart_of_the_phoenix');

-- 9162_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id`=54044 AND `ScriptName`='spell_hun_pet_carrion_feeder';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(54044, 'spell_hun_pet_carrion_feeder');

-- 9199_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id`=47948 AND `ScriptName`='spell_pri_pain_and_suffering_proc';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (47948, 'spell_pri_pain_and_suffering_proc');

-- 9205_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id`=58601 AND `ScriptName`='spell_gen_remove_flight_auras';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(58601, 'spell_gen_remove_flight_auras');

-- 9213_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id`=21977 AND `ScriptName`='spell_warr_warriors_wrath';

-- 9246_world_scriptname.sql
-- Remove by script name in case someone ever applied these names to other stuff
UPDATE `instance_template` SET `script`='' WHERE `script`='instance_blackrock_spire';
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='npc_rookey_whelp';
UPDATE `gameobject_template` SET `ScriptName`='' WHERE `ScriptName`='go_rookey_egg';

-- 9436_world_spell_script_names.sql
-- QUEST SPELLS
-- 45449 Arcane Prisoner Rescue
DELETE FROM `spell_script_names` WHERE `spell_id`=45449 AND `ScriptName`='spell_q11587_arcane_prisoner_rescue';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (45449, 'spell_q11587_arcane_prisoner_rescue');
-- 46023 The Ultrasonic Screwdriver
DELETE FROM `spell_script_names` WHERE `spell_id`=46023 AND `ScriptName`='spell_q11730_ultrasonic_screwdriver';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (46023, 'spell_q11730_ultrasonic_screwdriver');
-- SHAMAN SPELLS
-- 1535 Fire Nova (and ranks)
DELETE FROM `spell_script_names` WHERE `spell_id`=-1535 AND `ScriptName`='spell_sha_fire_nova';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (-1535, 'spell_sha_fire_nova');
-- 39610 Mana Tide Totem
DELETE FROM `spell_script_names` WHERE `spell_id`=39610 AND `ScriptName`='spell_sha_mana_tide_totem';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (39610, 'spell_sha_mana_tide_totem');
-- DEATH KNIGHT SPELLS
-- 49158 Corpse Explosion (and ranks)
DELETE FROM `spell_script_names` WHERE `spell_id`=-49158 AND `ScriptName`='spell_dk_corpse_explosion';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (-49158, 'spell_dk_corpse_explosion');
-- 50524 Runic Power Feed
DELETE FROM `spell_script_names` WHERE `spell_id`=50524 AND `ScriptName`='spell_dk_runic_power_feed';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (50524, 'spell_dk_runic_power_feed');
-- 55090 Scourge Strike (and ranks)
DELETE FROM `spell_script_names` WHERE `spell_id`=-55090 AND `ScriptName`='spell_dk_scourge_strike';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (-55090, 'spell_dk_scourge_strike');
-- DRUID SPELLS
-- 54846 Glyph of Starfire
DELETE FROM `spell_script_names` WHERE `spell_id`=54846 AND `ScriptName`='spell_dru_glyph_of_starfire';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (54846, 'spell_dru_glyph_of_starfire');
-- WARLOCK SPELLS
-- 6201 Create Healthstone (and ranks)
DELETE FROM `spell_script_names` WHERE `spell_id`=-6201 AND `ScriptName`='spell_warl_create_healthstone';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (-6201, 'spell_warl_create_healthstone');
-- 47193 Demonic Empowerment
DELETE FROM `spell_script_names` WHERE `spell_id`=47193 AND `ScriptName`='spell_warl_demonic_empowerment';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (47193, 'spell_warl_demonic_empowerment');
-- 47422 Everlasting Affliction
DELETE FROM `spell_script_names` WHERE `spell_id`=47422 AND `ScriptName`='spell_warl_everlasting_affliction';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (47422, 'spell_warl_everlasting_affliction');
-- 63521 Guarded by The Light
DELETE FROM `spell_script_names` WHERE `spell_id`=63521 AND `ScriptName`='spell_warl_guarded_by_the_light';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (63521, 'spell_warl_guarded_by_the_light');
-- HUNTER SPELLS
-- 53209 Chimera Shot
DELETE FROM `spell_script_names` WHERE `spell_id`=53209 AND `ScriptName`='spell_hun_chimera_shot';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (53209, 'spell_hun_chimera_shot');
-- 53412 Invigoration
DELETE FROM `spell_script_names` WHERE `spell_id`=53412 AND `ScriptName`='spell_hun_invigoration';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (53412, 'spell_hun_invigoration');
-- 37506 Scatter Shot
DELETE FROM `spell_script_names` WHERE `spell_id`=37506 AND `ScriptName`='spell_hun_scatter_shot';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (37506, 'spell_hun_scatter_shot');

-- 9447_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id`=63521 AND `ScriptName`='spell_warl_guarded_by_the_light';
DELETE FROM `spell_script_names` WHERE `spell_id`=63521 AND `ScriptName`='spell_pal_guarded_by_the_light';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (63521, 'spell_pal_guarded_by_the_light');

-- 9453_world_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631999 AND -1631000;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36612,-1631000, 'This is the beginning AND the end, mortals. None may enter the master''s sanctum!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16950,1,0,0, 'SAY_ENTER_ZONE'),
(36612,-1631001, 'The Scourge will wash over this world as a swarm of death and destruction!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16941,1,0,0, 'SAY_AGGRO'),
(36612,-1631002, 'BONE STORM!',NULL,NULL, NULL,NULL,NULL,NULL,NULL,NULL,16946,1,0,0, 'SAY_BONE_STORM'),
(36612,-1631003, 'Bound by bone!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16947,1,0,0, 'SAY_BONESPIKE_1'),
(36612,-1631004, 'Stick Around!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16948,1,0,0, 'SAY_BONESPIKE_2'),
(36612,-1631005, 'The only escape is death!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16949,1,0,0, 'SAY_BONESPIKE_3'),
(36612,-1631006, 'More bones for the offering!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16942,1,0,0, 'SAY_KILL_1'),
(36612,-1631007, 'Languish in damnation!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16943,1,0,0, 'SAY_KILL_2'),
(36612,-1631008, 'I see... only darkness...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16944,1,0,0, 'SAY_DEATH'),
(36612,-1631009, 'THE MASTER''S RAGE COURSES THROUGH ME!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16945,1,0,0, 'SAY_BERSERK');

-- 9453_world_scriptname.sql
-- Lord Marrowgar
UPDATE `creature_template` SET `ScriptName`='boss_lord_marrowgar' WHERE `entry`=36612;
UPDATE `creature_template` SET `ScriptName`='npc_coldflame' WHERE `entry`=36672;
UPDATE `creature_template` SET `ScriptName`='npc_bone_spike' WHERE `entry`=38711;
-- Instance
UPDATE `instance_template` SET `script`='instance_icecrown_citadel' WHERE `map`=631;

-- 9453_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id`=69057 AND `ScriptName`='spell_marrowgar_bone_spike_graveyard';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (69140,72705) AND `ScriptName`='spell_marrowgar_coldflame';
DELETE FROM `spell_script_names` WHERE `spell_id`=69147 AND `ScriptName`='spell_marrowgar_coldflame_trigger';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (69075,70834,70835,70836) AND `ScriptName`='spell_marrowgar_bone_storm';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(69057, 'spell_marrowgar_bone_spike_graveyard'),
(69140, 'spell_marrowgar_coldflame'),
(72705, 'spell_marrowgar_coldflame'),
(69147, 'spell_marrowgar_coldflame_trigger'),
(69075, 'spell_marrowgar_bone_storm'),
(70834, 'spell_marrowgar_bone_storm'),
(70835, 'spell_marrowgar_bone_storm'),
(70836, 'spell_marrowgar_bone_storm');

-- 9472_world_script_texts.sql
DELETE FROM `script_texts` WHERE `entry`=-1631010;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36612,-1631010, 'Lord Marrowgar creates a whirling storm of bone!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0, 'SAY_BONE_STORM_EMOTE');

-- 9472_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='npc_bone_spike';
UPDATE `creature_template` SET `ScriptName`='npc_bone_spike' WHERE `entry`=36619;

-- 9508_world_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631028 AND -1631011;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36855,-1631011, 'You have found your way here, because you are among the few gifted with true vision in a world cursed with blindness.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17272,1,0,0, 'SAY_INTRO_1'),
(36855,-1631012, 'You can see through the fog that hangs over this world like a shroud, and grasp where true power lies.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17273,1,0,0, 'SAY_INTRO_2'),
(36855,-1631013, 'Fix your eyes upon your crude hands: the sinew, the soft meat, the dark blood coursing within.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16878,1,0,0, 'SAY_INTRO_3'),
(36855,-1631014, 'It is a weakness; a crippling flaw.... A joke played by the Creators upon their own creations.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17268,1,0,0, 'SAY_INTRO_4'),
(36855,-1631015, 'The sooner you come to accept your condition as a defect, the sooner you will find yourselves in a position to transcend it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17269,1,0,0, 'SAY_INTRO_5'),
(36855,-1631016, 'Through our Master, all things are possible. His power is without limit, and his will unbending.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17270,1,0,0, 'SAY_INTRO_6'),
(36855,-1631017, 'Those who oppose him will be destroyed utterly, and those who serve -- who serve wholly, unquestioningly, with utter devotion of mind and soul -- elevated to heights beyond your ken.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17271,1,0,0, 'SAY_INTRO_7'),
(36855,-1631018, 'What is this disturbance?! You dare trespass upon this hallowed ground? This shall be your final resting place.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16868,1,0,0, 'SAY_AGGRO'),
(36855,-1631019, 'Enough! I see I must take matters into my own hands!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16877,1,0,0, 'SAY_PHASE_2'),
(36855,-1631020, 'Lady Deathwhisper''s Mana Barrier shimmers and fades away!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0, 'SAY_PHASE_2_EMOTE'),
(36855,-1631021, 'You are weak, powerless to resist my will!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16876,1,0,0, 'SAY_DOMINATE_MIND'),
(36855,-1631022, 'Take this blessing and show these intruders a taste of our master''s power.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16873,1,0,0, 'SAY_DARK_EMPOWERMENT'),
(36855,-1631023, 'I release you from the curse of flesh!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16874,1,0,0, 'SAY_DARK_TRANSFORMATION'),
(36855,-1631024, 'Arise and exult in your pure form!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16875,1,0,0, 'SAY_ANIMATE_DEAD'),
(36855,-1631025, 'Do you yet grasp of the futility of your actions?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16869,1,0,0, 'SAY_KILL_1'),
(36855,-1631026, 'Embrace the darkness... Darkness eternal!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16870,1,0,0, 'SAY_KILL_2'),
(36855,-1631027, 'This charade has gone on long enough.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16872,1,0,0, 'SAY_BERSERK'),
(36855,-1631028, 'All part of the masters plan! Your end is... inevitable!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16871,1,0,0, 'SAY_DEATH');

-- 9508_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='boss_lady_deathwhisper' WHERE `entry`=36855;
UPDATE `creature_template` SET `ScriptName`='npc_cult_fanatic' WHERE `entry` IN (37890,38009,38135);
UPDATE `creature_template` SET `ScriptName`='npc_cult_adherent' WHERE `entry` IN(37949,38010,38136);
UPDATE `creature_template` SET `ScriptName`='npc_vengeful_shade' WHERE `entry`=38222;

-- 9508_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70903,71236) AND `ScriptName`='spell_cultist_dark_martyrdom';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(70903, 'spell_cultist_dark_martyrdom'),
(71236, 'spell_cultist_dark_martyrdom');

-- 9521_world_script_texts.sql
-- TOC original texts/sounds (thanks to griffonheart)
-- english translation by Cristy
-- reworked by rsa
-- reworked by JohnHoliver
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1649999 AND -1649000;
INSERT INTO `script_texts`
(`comment`,`sound`,`entry`,`type`,`language`,`emote`,`content_default`) VALUES
-- Northrend Beasts
-- Gormok
(34796,0,-1649000,3,0,0, 'My slaves! Destroy the enemy!'),
-- Acidmaw & Dreadscale
(34564,0,-1649010,3,0,0, '%s buries itself in the earth!'),
(34564,0,-1649011,3,0,0, '%s getting out of the ground!'),
(34799,0,-1649012,3,0,0, 'After the death of sister %s goes berserk!'),
-- Icehowl
(34797,0,-1649020,3,0,0, '%s looks at |3-3($n) and emits a guttural howl!'),
(34797,0,-1649021,3,0,0, '%s crashes into a wall of the Colosseum and lose focus!'),
(34797,0,-1649022,3,0,0, '|3-3(%s) covers boiling rage, and he tramples all in its path!'),
-- Jaraxxus
(34780,16143,-1649030,1,0,0, 'Trifling gnome, your arrogance will be your undoing!'),
(34780,16144,-1649031,1,0,0, 'You face Jaraxxus, eredar lord of the Burning Legion!'),
(34780,16147,-1649032,1,0,0, 'Another will take my place. Your world is doomed.'),
(34780,0,-1649033,3,0,0, '$n has |cFF00FFFFIncinerate flesh!|R Heal $ghim:her;!'),
(34780,16149,-1649034,1,0,0, 'FLESH FROM BONE!'),
(34780,0,-1649035,3,0,0, '|cFFFF0000Legion Flame|R on $n'),
(34780,0,-1649036,3,0,0, '%s creates the gates of the Void!'),
(34780,16150,-1649037,1,0,0, 'Come forth, sister! Your master calls!'),
(34780,0,-1649038,3,0,0, '%s creates an |cFF00FF00Infernal Volcano!|R'),
(34780,16151,-1649039,1,0,0, 'INFERNO!'),
-- Faction Champions
(34995,0,-1649115,1,0,0, 'Weakling!'),
(34995,0,-1649116,1,0,0, 'Pathetic!'),
(34995,0,-1649117,1,0,0, 'Overpowered.'),
(34995,0,-1649118,1,0,0, 'Lok\'tar!'),
(34990,0,-1649120,1,0,0, 'HAH!'),
(34990,0,-1649121,1,0,0, 'Hardly a challenge!'),
(34990,0,-1649122,1,0,0, 'Worthless scrub.'),
(34990,0,-1649123,1,0,0, 'Is this the best the Horde has to offer?'),
-- Twin Valkyrs
(34497,16272,-1649040,1,0,0, 'In the name of our dark master. For the Lich King. You. Will. Die.'),
(34496,16275,-1649041,1,0,0, 'The Scourge cannot be stopped...'),
(34497,16273,-1649042,1,0,0, 'YOU ARE FINISHED!'),
(34497,0,-1649043,3,0,0, '%s begins to read the spell Treaty twins!'),
(34497,16274,-1649044,3,0,0, 'CHAOS!'),
(34496,16277,-1649045,1,0,0, 'UNWORTHY!'),
(34497,16276,-1649046,1,0,0, 'You appreciated and acknowledged nothing.'),
(34497,0,-1649047,3,0,0, '%s begins to read a spell |cFFFFFFFFLight Vortex!|R switch to |cFFFFFFFFLight|r essence!'),
(34496,16279,-1649048,1,0,0, 'Let the light consume you!'),
(34496,0,-1649049,3,0,0, '%s begins to read a spell |cFF9932CDBlack Vortex!|R switch to |cFF9932CDBlack|r essence!'),
(34496,16278,-1649050,1,0,0, 'Let the dark consume you!'),
-- Anub'arak
(34564,16235,-1649055,1,0,0, 'Ahhh... Our guests arrived, just as the master promised.'),
(34564,16234,-1649056,1,0,0, 'This place will serve as your tomb!'),
(34564,16236,-1649057,1,0,0, 'F-lakkh shir!'),
(34564,16237,-1649058,1,0,0, 'Another soul to sate the host.'),
(34564,16238,-1649059,1,0,0, 'I have failed you, master...'),
(34564,0,-1649060,3,0,0, '%s spikes  pursuing $n!'),
(34564,16240,-1649061,1,0,0, 'Auum na-l ak-k-k-k, isshhh. Rise, minions. Devour...'),
(34564,0,-1649062,3,0,0, '%s produces a swarm of beetles Peon to restore your health!'),
(34564,16241,-1649063,1,0,0, 'The swarm shall overtake you!'),
-- Event
-- Northrend Beasts
(34996,16036,-1649070,1,0,0, 'Welcome champions, you have heard the call of the Argent Crusade and you have boldly answered. It is here in the crusaders coliseum that you will face your greatest challenges. Those of you who survive the rigors of the coliseum will join the Argent Crusade on its marsh to ice crown citadel.'),
(34996,16038,-1649071,1,0,0, 'Hailing from the deepest, darkest carverns of the storm peaks, Gormok the Impaler! Battle on, heroes!'),
(34990,16069,-1649072,1,0,0, 'Your beast will be no match for my champions Tirion!'),
(34995,16026,-1649073,1,0,0, 'I have seen  more  worthy  challenges in the ring of blood, you waste our time paladin.'),
(34996,16039,-1649074,1,0,0, 'Steel yourselves, heroes, for the twin terrors Acidmaw and Dreadscale. Enter the arena!'),
(34996,16040,-1649075,1,0,0, 'The air freezes with the introduction of our next combatant, Icehowl! Kill or be killed, champions!'),
(34996,16041,-1649076,1,0,0, 'The monstrous menagerie has been vanquished!'),
(34996,16042,-1649077,1,0,0, 'Tragic... They fought valiantly, but the beasts of Northrend triumphed. Let us observe a moment of silence for our fallen heroes.'),
-- Jaraxxus
(34996,16043,-1649080,1,0,0, 'Grand Warlock Wilfred Fizzlebang will summon forth your next challenge. Stand by for his entry!'),
(35458,16268,-1649081,1,0,0, 'Thank you, Highlord! Now challengers, I will begin the ritual of summoning! When I am done, a fearsome Doomguard will appear!'),
(35458,16269,-1649082,1,0,0, 'Prepare for oblivion!'),
(35458,16270,-1649083,1,0,0, 'Ah ha! Behold the absolute power of Wilfred Fizzlebang, master summoner! You are bound to ME, demon!'),
(35458,16271,-1649084,1,0,0, 'But I am in charge here-'),
(35458,0,-1649085,1,0,0, '...'),
(34996,16044,-1649086,1,0,0, 'Quickly, heroes! Destroy the demon lord before it can open a portal to its twisted demonic realm!'),
(34996,16045,-1649087,1,0,0, 'The loss of Wilfred Fizzlebang, while unfortunate, should be a lesson to those that dare dabble in dark magic. Alas, you are victorious and must now face the next challenge.'),
(34995,16021,-1649088,1,0,0, 'Treacherous Alliance dogs! You summon a demon lord against warriors of the Horde!? Your deaths will be swift!'),
(34990,16064,-1649089,1,0,0, 'The Alliance doesnt need the help of a demon lord to deal with Horde filth. Come, pig!'),
(34996,16046,-1649090,1,0,0, 'Everyone, calm down! Compose yourselves! There is no conspiracy at play here. The warlock acted on his own volition - outside of influences from the Alliance. The tournament must go on!'),
-- Faction Champions
(34996,16047,-1649091,1,0,0, 'The next battle will be against the Argent Crusades most powerful knights! Only by defeating them will you be deemed worthy...'),
(34990,16066,-1649092,1,0,0, 'Our honor has been besmirched! They make wild claims and false accusations against us. I demand justice! Allow my champions to fight in place of your knights, Tirion. We challenge the Horde!'),
(34995,16023,-1649093,1,0,0, 'The Horde demands justice! We challenge the Alliance. Allow us to battle in place of your knights, paladin. We will show these dogs what it means to insult the Horde!'),
(34996,16048,-1649094,1,0,0, 'Very well, I will allow it. Fight with honor!'),
(34990,16065,-1649095,1,0,0, 'Fight for the glory of the Alliance, heroes! Honor your king and your people!'),
(34995,16022,-1649096,1,0,0, 'Show them no mercy, Horde champions! LOK-TAR OGAR!'),
(34990,16067,-1649097,1,0,0, 'GLORY OF THE ALLIANCE!'),
(34995,16024,-1649098,1,0,0, 'LOK-TAR OGAR!'),
(34996,16049,-1649099,1,0,0, 'A shallow and tragic victory. We are weaker as a whole from the losses suffered today. Who but the Lich King could benefit from such foolishness? Great warriors have lost their lives. And for what? The true threat looms ahead - the Lich King awaits us all in death.'),
-- Twin Valkyrs
(34996,16050,-1649100,1,0,0, 'Only by working together will you overcome the final challenge. From the depths of Icecrown come two of the Scourges most powerful lieutenants: fearsome valkyr, winged harbingers of the Lich King!'),
(34996,16037,-1649101,1,0,0, 'Let the games begin!'),
(34990,16068,-1649102,1,0,0, 'Not even the Lich King most powerful minions can stand against the Alliance! All hail our victors!'),
(34995,16025,-1649103,1,0,0, 'Do you still question the might of the horde paladin? We will take on all comers.'),
-- Anub'arak
(34996,16051,-1649104,1,0,0, 'A mighty blow has been dealt to the Lich King! You have proven yourselves able bodied champions of the Argent Crusade. Together we will strike at Icecrown Citadel and destroy what remains of the Scourge! There is no challenge that we cannot face united!'),
(35877,16321,-1649105,1,0,0, 'You will have your challenge, Fordring.'),
(34996,16052,-1649106,1,0,0, 'Arthas! You are hopelessly outnumbered! Lay down Frostmourne and I will grant you a just death.'),
(35877,16322,-1649107,1,0,0, 'The Nerubians built an empire beneath the frozen wastes of Northrend. An empire that you so foolishly built your structures upon. MY EMPIRE.'),
(35877,16323,-1649108,1,0,0, 'The souls of your fallen champions will be mine, Fordring.'),
(36095,0,-1649109,1,0,0, 'Champions, you are alive! Not only have you defeated every challenge of the Trial of the Crusader, but thwarted Arthas directly! Your skill and cunning will prove to be a powerful weapon against the Scourge. Well done! Allow one of my mages to transport you back to the surface!'),
(36095,0,-1649110,1,0,0, 'Let me hand you the chests as a reward, and let its contents will serve you faithfully in the campaign against Arthas in the heart of the Icecrown Citadel!');

-- 9521_world_scriptname.sql
-- Scriptnames
-- NonAgressive NPCs
UPDATE `creature_template` SET `scriptname`='npc_announcer_toc10' WHERE `entry` in (34816);
UPDATE `creature_template` SET `scriptname`='boss_lich_king_toc' WHERE `entry`=35877;
UPDATE `creature_template` SET `scriptname`='npc_fizzlebang_toc' WHERE `entry`=35458;
UPDATE `creature_template` SET `scriptname`='npc_tirion_toc' WHERE `entry`=34996;
UPDATE `creature_template` SET `scriptname`='npc_garrosh_toc' WHERE `entry`=34995;
UPDATE `creature_template` SET `scriptname`='npc_varian_toc' WHERE `entry`=34990;
-- Northrend Beasts
UPDATE `creature_template` SET `scriptname`='boss_gormok',`AIName`='' WHERE `entry`=34796;
UPDATE `creature_template` SET `scriptname`='mob_snobold_vassal',`AIName`='' WHERE `entry`=34800;
UPDATE `creature_template` SET `scriptname`='boss_dreadscale',`AIName`='' WHERE `entry`=34799;
UPDATE `creature_template` SET `scriptname`='boss_acidmaw',`AIName`='' WHERE `entry`=35144;
UPDATE `creature_template` SET `scriptname`='mob_slime_pool',`AIName`='' WHERE `entry`=35176;
UPDATE `creature_template` SET `scriptname`='boss_icehowl',`AIName`='' WHERE `entry`=34797;
-- Lord Jaraxxus
UPDATE `creature_template` SET `scriptname`='boss_jaraxxus',`AIName`='' WHERE `entry`=34780;
UPDATE `creature_template` SET `scriptname`='mob_legion_flame',`AIName`='' WHERE `entry`=34784;
UPDATE `creature_template` SET `scriptname`='mob_infernal_volcano',`AIName`='' WHERE `entry`=34813;
UPDATE `creature_template` SET `scriptname`='mob_nether_portal',`AIName`='' WHERE `entry`=34825;
UPDATE `creature_template` SET `scriptname`='mob_fel_infernal',`AIName`='' WHERE `entry`=34815;
UPDATE `creature_template` SET `scriptname`='mob_mistress_of_pain',`AIName`='' WHERE `entry`=34826;
-- Faction Champions
UPDATE `creature_template` SET `scriptname`='boss_toc_champion_controller',`AIName`='' WHERE `entry` IN (34781);
UPDATE `creature_template` SET `scriptname`='mob_toc_warrior',`AIName`='' WHERE `entry` IN (34475,34453);
UPDATE `creature_template` SET `scriptname`='mob_toc_mage',`AIName`='' WHERE `entry` IN (34468,34449);
UPDATE `creature_template` SET `scriptname`='mob_toc_shaman',`AIName`='' WHERE `entry` IN (34470,34444);
UPDATE `creature_template` SET `scriptname`='mob_toc_enh_shaman',`AIName`='' WHERE `entry` IN (34463,34455);
UPDATE `creature_template` SET `scriptname`='mob_toc_hunter',`AIName`='' WHERE `entry` IN (34467,34448);
UPDATE `creature_template` SET `scriptname`='mob_toc_rogue',`AIName`='' WHERE `entry` IN (34472,34454);
UPDATE `creature_template` SET `scriptname`='mob_toc_priest',`AIName`='' WHERE `entry` IN (34466,34447);
UPDATE `creature_template` SET `scriptname`='mob_toc_shadow_priest',`AIName`='' WHERE `entry` IN (34473,34441);
UPDATE `creature_template` SET `scriptname`='mob_toc_dk',`AIName`='' WHERE `entry` IN (34461,34458);
UPDATE `creature_template` SET `scriptname`='mob_toc_paladin',`AIName`='' WHERE `entry` IN (34465,34445);
UPDATE `creature_template` SET `scriptname`='mob_toc_retro_paladin',`AIName`='' WHERE `entry` IN (34471,34456);
UPDATE `creature_template` SET `scriptname`='mob_toc_druid',`AIName`='' WHERE `entry` IN (34469,34459);
UPDATE `creature_template` SET `scriptname`='mob_toc_boomkin',`AIName`='' WHERE `entry` IN (34460,34451);
UPDATE `creature_template` SET `scriptname`='mob_toc_warlock' WHERE `entry` IN (34474,34450);
UPDATE `creature_template` SET `scriptname`='mob_toc_pet_warlock',`AIName`='' WHERE `entry` IN (35465);
UPDATE `creature_template` SET `scriptname`='mob_toc_pet_hunter',`AIName`='' WHERE `entry` IN (35610);
-- Valkiries
UPDATE `creature_template` SET `scriptname`='boss_fjola',`AIName`='' WHERE `entry`=34497;
UPDATE `creature_template` SET `scriptname`='boss_eydis',`AIName`='' WHERE `entry`=34496;
UPDATE `creature_template` SET `scriptname`='mob_essence_of_twin',`AIName`='' WHERE `entry` IN (34567,34568);
UPDATE `creature_template` SET `scriptname`='mob_unleashed_dark',`AIName`='' WHERE entry=34628;
UPDATE `creature_template` SET `scriptname`='mob_unleashed_light',`AIName`='' WHERE entry=34630;
-- Anub'arak
UPDATE `creature_template` SET `scriptname`='boss_anubarak_trial',`AIName`='' WHERE `entry`=34564;
UPDATE `creature_template` SET `ScriptName`='mob_frost_sphere',`AIName`='' WHERE `entry`=34606;
UPDATE `creature_template` SET `scriptname`='mob_swarm_scarab',`AIName`='' WHERE `entry`=34605;
UPDATE `creature_template` SET `scriptname`='mob_nerubian_burrower',`AIName`='' WHERE `entry`=34607;
UPDATE `creature_template` SET `scriptname`='mob_anubarak_spike',`AIName`='' WHERE `entry`=34660;
-- Instance
UPDATE `instance_template` SET `script`='instance_trial_of_the_crusader' WHERE `map`=649;

-- 9529_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id`=6962 AND `ScriptName`='spell_gen_pet_summoned';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (6962, 'spell_gen_pet_summoned');

-- 9544_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id`=66244 AND `ScriptName`= 'spell_ex_66244';
DELETE FROM `spell_script_names` WHERE `spell_id`=5581 AND `ScriptName`= 'spell_ex_5581';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (66244, 'spell_ex_66244'), (5581, 'spell_ex_5581');

-- 9591_world_script_texts.sql
DELETE FROM script_texts WHERE `entry` BETWEEN -1000506 AND -1000500;
INSERT INTO script_texts (npc_entry,entry,content_default,sound,type,language,emote,comment) VALUES
(5391,-1000500, 'Help! Please, You must help me!',0,0,0,0, 'Galen - periodic say'),
(5391,-1000501, 'Let us leave this place.',0,0,0,0, 'Galen - quest accepted'),
(5391,-1000502, 'Look out! The $c attacks!',0,0,0,0, 'Galen - aggro 1'),
(5391,-1000503, 'Help! I\'m under attack!',0,0,0,0, 'Galen - aggro 2'),
(5391,-1000504, 'Thank you $N. I will remember you always. You can find my strongbox in my camp, north of Stonard.',0,0,0,0, 'Galen - quest complete'),
(5391,-1000505, '%s whispers to $N the secret to opening his strongbox.',0,2,0,0, 'Galen - emote whisper'),
(5391,-1000506, '%s disappears into the swamp.',0,2,0,0, 'Galen - emote disapper');

-- 9591_world_script_waypoint.sql
DELETE FROM `script_waypoint` WHERE `entry`=5391;
INSERT INTO script_waypoint VALUES
(5391, 0, -9901.12, -3727.29, 22.11, 3000, ''),
(5391, 1, -9909.27, -3727.81, 23.25, 0, ''),
(5391, 2, -9935.25, -3729.02, 22.11, 0, ''),
(5391, 3, -9945.83, -3719.34, 21.68, 0, ''),
(5391, 4, -9963.41, -3710.18, 21.71, 0, ''),
(5391, 5, -9972.75, -3690.13, 21.68, 0, ''),
(5391, 6, -9989.70, -3669.67, 21.67, 0, ''),
(5391, 7, -9989.21, -3647.76, 23.00, 0, ''),
(5391, 8, -9992.27, -3633.74, 21.67, 0, ''),
(5391, 9,-10002.32, -3611.67, 22.26, 0, ''),
(5391,10, -9999.25, -3586.33, 21.85, 0, ''),
(5391,11,-10006.53, -3571.99, 21.67, 0, ''),
(5391,12,-10014.30, -3545.24, 21.67, 0, ''),
(5391,13,-10018.91, -3525.03, 21.68, 0, ''),
(5391,14,-10030.22, -3514.77, 21.67, 0, ''),
(5391,15,-10045.11, -3501.49, 21.67, 0, ''),
(5391,16,-10052.91, -3479.13, 21.67, 0, ''),
(5391,17,-10060.68, -3460.31, 21.67, 0, ''),
(5391,18,-10074.68, -3436.85, 20.97, 0, ''),
(5391,19,-10074.68, -3436.85, 20.97, 0, ''),
(5391,20,-10072.86, -3408.92, 20.43, 15000, ''),
(5391,21,-10108.01, -3406.05, 22.06, 0, '');

-- 9591_world_scriptname.sql
UPDATE creature_template SET ScriptName='npc_galen_goodward' WHERE entry=5391;

-- 9599_world_scriptname.sql
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'boss_flame_leviathan_defense_cannon' WHERE `entry` = 33139;

-- 9600_world_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000578 AND -1000575;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(19589,-1000575, 'All systems on-line. Prepare yourself, we leave shortly.',0,0,0,0, 'max_a_million SAY_START'),
(19589,-1000576, 'Be careful in there and come back in one piece!',0,0,0,0, 'bot-specialist_alley SAY_ALLEY_FAREWELL'),
(19589,-1000577, 'Proceed.',0,0,0,0, 'max_a_million SAY_CONTINUE'),
(19589,-1000578, 'You are back! Were you able to get all of the machines?',0,0,0,0, 'bot-specialist_alley SAY_ALLEY_FINISH');


-- 9600_world_script_waypoint.sql
DELETE FROM `script_waypoint` WHERE `entry`=19589;
INSERT INTO script_waypoint VALUES
(19589,1,3358.22,3728.25,141.204,0, ''),
(19589,2,3368.05,3715.51,142.057,0, ''),
(19589,3,3389.04,3701.21,144.648,0, ''),
(19589,4,3419.51,3691.41,146.598,0, ''),
(19589,5,3437.83,3699.2,147.235,0, ''),
(19589,6,3444.85,3700.89,147.088,0, ''),
(19589,7,3449.89,3700.14,148.118,0, ''),
(19589,8,3443.55,3682.09,149.219,0, ''),
(19589,9,3452.6,3674.65,150.226,0, ''),
(19589,10,3462.6,3659.01,152.436,0, ''),
(19589,11,3469.18,3649.47,153.178,0, ''),
(19589,12,3475.11,3639.41,157.213,0, ''),
(19589,13,3482.26,3617.69,159.126,0, ''),
(19589,14,3492.7,3606.27,156.419,0, ''),
(19589,15,3493.52,3595.06,156.581,0, ''),
(19589,16,3490.4,3588.45,157.764,0, ''),
(19589,17,3485.21,3585.69,159.979,0, ''),
(19589,18,3504.68,3594.44,152.862,0, ''),
(19589,19,3523.6,3594.48,145.393,0, ''),
(19589,20,3537.01,3576.71,135.748,0, ''),
(19589,21,3551.73,3573.12,128.013,0, ''),
(19589,22,3552.12,3614.08,127.847,0, ''),
(19589,23,3536.14,3639.78,126.031,0, ''),
(19589,24,3522.94,3646.47,131.989,0, ''),
(19589,25,3507.21,3645.69,138.1527,0, ''),
(19589,26,3485.15,3645.64,137.755,0, ''),
(19589,27,3472.18,3633.88,140.352,0, ''),
(19589,28,3435.34,3613.69,140.725,0, ''),
(19589,29,3417.4,3612.4,141.143,0, ''),
(19589,30,3411.04,3621.14,142.454,0, ''),
(19589,31,3404.47,3636.89,144.434,0, ''),
(19589,32,3380.55,3657.06,144.332,0, ''),
(19589,33,3375,3676.86,145.298,0, ''),
(19589,34,3388.87,3685.48,146.818,0, ''),
(19589,35,3393.99,3699.4,144.858,0, ''),
(19589,36,3354.95,3726.02,141.428,0, '');

-- 9600_world_scriptname.sql
UPDATE creature_template SET ScriptName= 'npc_maxx_a_million_escort', MovementType=2 WHERE `entry`=19589;

-- 9604_world_script_texts.sql
DELETE FROM script_texts WHERE entry BETWEEN -1000516 AND -1000507;
INSERT INTO script_texts (npc_entry,entry,content_default,sound,type,language,emote,comment) VALUES
(4880,-1000507, 'Ok, let''s get started.',0,0,0,0, 'stinky - quest accepted'),
(4880,-1000508, 'Now let''s look for the herb.',0,0,0,0, 'stinky - say1'),
(4880,-1000509, 'Nope, not here...',0,0,0,0, 'stinky - say2'),
(4880,-1000510, 'There must be one around here somewhere...',0,0,0,0, 'stinky - say3'),
(4880,-1000511, 'Ah, there''s one! ',0,0,0,0, 'stinky - say4'),
(4880,-1000512, 'Come, $N!  Let''s go over there and collect it!',0,0,0,0, 'stinky - say5'),
(4880,-1000513, 'Ok, now let''s get out of here! ',0,0,0,0, 'stinky - say6'),
(4880,-1000514, 'I can make it from here.  Thanks, $N!  And talk to my employer about a reward!',0,0,0,0, 'stinky - quest complete'),
(4880,-1000515, 'Help! The beast is on me!',0,0,0,0, 'stinky - aggro'),
(4880,-1000516, '%s disappears back into the swamp.',0,2,0,0, 'stinky - emote disapper');

-- 9604_world_script_waypoint.sql
DELETE FROM script_waypoint WHERE entry=4880;
INSERT INTO `script_waypoint` VALUES
(4880,0,-2646.429932,-3436.070068,35.373199,0, ''),
(4880,1,-2650.82617,-3440.15332,35.138092,0, ''),
(4880,2,-2662.3147,-3447.67285,35.10891,0, ''),
(4880,3,-2680.4834,-3454.59766,34.6538124,0, ''),
(4880,4,-2701.01855,-3457.43628,34.26906,0, ''),
(4880,5,-2724.063,-3458.63623,33.6734657,0, ''),
(4880,6,-2745.0127,-3459.28125,32.53458,0, ''),
(4880,7,-2759.419,-3464.78174,32.714283,3000, ''),
(4880,8,-2763.63,-3471.50732,33.53883,0, ''),
(4880,9,-2771.789,-3480.88721,33.2553253,0, ''),
(4880,10,-2780.66455,-3488.76343,31.8750439,0, ''),
(4880,11,-2796.144775,-3489.013184,30.858467,3000, ''),
(4880,12,-2792.117920,-3495.966797,30.732433,0, ''),
(4880,13,-2789.059814,-3502.372559,30.670414,0, ''),
(4880,14,-2787.715576,-3515.013428,31.117569,0, ''),
(4880,15,-2790.841309,-3523.311768,30.573286,0, ''),
(4880,16,-2796.58545,-3520.61963,29.9187489,0, ''),
(4880,17,-2798.563,-3518.91064,30.3887444,0, ''),
(4880,18,-2801.46875,-3516.745,30.1914845,0, ''),
(4880,19,-2804.356201,-3513.899170,29.550812,0, ''),
(4880,20,-2807.97559,-3517.99634,29.94883,0, ''),
(4880,21,-2815.680664,-3521.739014,29.772268,0, ''),
(4880,22,-2823.386230,-3526.234131,31.71944,0, ''),
(4880,23,-2836.109619,-3544.695557,32.493855,0, ''),
(4880,24,-2830.392578,-3568.862305,30.410404,0, ''),
(4880,25,-2824.842285,-3569.516846,31.281128,0, ''),
(4880,26,-2818.663818,-3567.801025,30.920368,6000, ''),
(4880,27,-2817.663818,-3568.935059,30.431194,6000, ''),
(4880,28,-2820.394043,-3592.223389,30.716301,6000, ''),
(4880,29,-2820.765625,-3592.497803,30.886147,0, ''),
(4880,30,-2829.909424,-3588.730713,30.683064,0, ''),
(4880,31,-2842.322021,-3577.498291,36.848869,0, ''),
(4880,32,-2851.180420,-3567.579346,38.515850,0, ''),
(4880,33,-2865.554932,-3551.582275,41.438988,0, ''),
(4880,34,-2871.234863,-3548.145020,40.761391,0, ''),
(4880,35,-2877.840332,-3544.147461,38.670235,0, ''),
(4880,36,-2890.394775,-3542.388672,34.314426,0, ''),
(4880,37,-2898.729980,-3543.635742,34.319958,6000, ''),
(4880,38,-2910.064453,-3568.957275,34.250011,0, ''),
(4880,39,-2932.509766,-3584.618652,37.238464,0, '');

-- 9406_world_scriptname.sql
UPDATE creature_template SET ScriptName= 'npc_stinky' WHERE entry=4880;

-- 9607_world_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631077 AND -1631029;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(37200,-1631029, 'Let''s get a move on then! Move ou...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16974,1,0,0, 'SAY_INTRO_ALLIANCE_1'),
(37813,-1631030, 'For every Horde soldier that you killed -- for every Alliance dog that fell, the Lich King''s armies grew. Even now the val''kyr work to raise your fallen as Scourge.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16701,1,0,0, 'SAY_INTRO_ALLIANCE_2'),
(37813,-1631031, 'Things are about to get much worse. Come, taste the power that the Lich King has bestowed upon me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16702,1,0,0, 'SAY_INTRO_ALLIANCE_3'),
(37200,-1631032, 'A lone orc against the might of the Alliance???',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16970,1,0,0, 'SAY_INTRO_ALLIANCE_4'),
(37200,-1631033, 'Charge!!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16971,1,0,0, 'SAY_INTRO_ALLIANCE_5'),
(37813,-1631034, 'Dwarves...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16703,1,0,0, 'SAY_INTRO_ALLIANCE_6'),
(37813,-1631035, 'Deathbringer Saurfang immobilizes Muradin and his guards.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'SAY_INTRO_ALLIANCE_7'),
(37187,-1631036, 'Kor''kron, move out! Champions, watch your backs. The Scourge have been...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17103,1,0,22, 'SAY_INTRO_HORDE_1'),
(37813,-1631037, 'Join me, father. Join me and we will crush this world in the name of the Scourge -- for the glory of the Lich King!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16704,1,0,0, 'SAY_INTRO_HORDE_2'),
(37187,-1631038, 'My boy died at the Wrath Gate. I am here only to collect his body.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17097,0,0,397, 'SAY_INTRO_HORDE_3'),
(37813,-1631039, 'Stubborn and old. What chance do you have? I am stronger, and more powerful than you ever were.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16705,1,0,5, 'SAY_INTRO_HORDE_4'),
(37187,-1631040, 'We named him Dranosh. It means "Heart of Draenor" in orcish. I would not let the warlocks take him. My boy would be safe, hidden away by the elders of Garadar.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17098,0,0,1, 'SAY_INTRO_HORDE_5'),
(37187,-1631041, 'I made a promise to his mother before she died; that I would cross the Dark Portal alone - whether I lived or died, my son would be safe. Untainted...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17099,0,0,1, 'SAY_INTRO_HORDE_6'),
(37187,-1631042, 'Today, I fulfill that promise.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17100,0,0,397, 'SAY_INTRO_HORDE_7'),
(37187,-1631043, 'High Overlord Saurfang charges!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17104,2,0,53, 'SAY_INTRO_HORDE_8'),
(37813,-1631044, 'Pathetic old orc. Come then heroes. Come and face the might of the Scourge!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16706,1,0,15, 'SAY_INTRO_HORDE_9'),
(37813,-1631045, 'BY THE MIGHT OF THE LICH KING!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16694,1,0,0, 'SAY_AGGRO'),
(37813,-1631046, 'The ground runs red with your blood!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16699,1,0,0, 'SAY_MARK_OF_THE_FALLEN_CHAMPION'),
(37813,-1631047, 'Feast, my minions!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16700,1,0,0, 'SAY_BLOOD_BEASTS'),
(37813,-1631048, 'You are nothing!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16695,1,0,0, 'SAY_KILL_1'),
(37813,-1631049, 'Your soul will find no redemption here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16696,1,0,0, 'SAY_KILL_2'),
(37813,-1631050, 'Deathbringer Saurfang goes into frenzy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0, 'SAY_FRENZY'),
(37813,-1631051, 'I have become...DEATH!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16698,1,0,0, 'SAY_BERSERK'),
(37813,-1631052, 'I... Am... Released.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16697,1,0,0, 'SAY_DEATH'),
(37200,-1631053, 'Muradin Bronzebeard gasps for air.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16975,2,0,0, 'SAY_OUTRO_ALLIANCE_1'),
(37200,-1631054, 'That was Saurfang''s boy - the Horde commander at the Wrath Gate. Such a tragic end...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16976,0,0,0, 'SAY_OUTRO_ALLIANCE_2'),
(37200,-1631055, 'What in the... There, in the distance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16977,0,0,0, 'SAY_OUTRO_ALLIANCE_3'),
(    0,-1631056, 'A Horde Zeppelin flies up to the rise.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'SAY_OUTRO_ALLIANCE_4'),
(37200,-1631057, 'Soldiers, fall in! Looks like the Horde are comin'' to take another shot!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16978,1,0,0, 'SAY_OUTRO_ALLIANCE_5'),
(    0,-1631058, 'The Zeppelin docks, and High Overlord Saurfang hops out, confronting the Alliance soldiers and Muradin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'SAY_OUTRO_ALLIANCE_6'),
(37200,-1631059, 'Don''t force me hand, orc. We can''t let ye pass.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16972,0,0,0, 'SAY_OUTRO_ALLIANCE_7'),
(37187,-1631060, 'Behind you lies the body of my only son. Nothing will keep me from him.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17094,0,0,0, 'SAY_OUTRO_ALLIANCE_8'),
(37200,-1631061, 'I... I can''t do it. Get back on yer ship and we''ll spare yer life.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16973,0,0,0, 'SAY_OUTRO_ALLIANCE_9'),
(    0,-1631062, 'A mage portal from Stormwind appears between the two and Varian Wrynn and Jaina Proudmoore emerge.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'SAY_OUTRO_ALLIANCE_10'),
(37879,-1631063, 'Stand down, Muradin. Let a grieving father pass.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16690,0,0,0, 'SAY_OUTRO_ALLIANCE_11'),
(37187,-1631064, 'High Overlord Saurfang walks over to his son and kneels before his son''s body.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'SAY_OUTRO_ALLIANCE_12'),
(37187,-1631065, '[Orcish] No''ku kil zil''nok ha tar.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17096,0,0,0, 'SAY_OUTRO_ALLIANCE_13'),
(37187,-1631066, 'Higher Overlord Saurfang picks up the body of his son and walks over towards Varian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'SAY_OUTRO_ALLIANCE_14'),
(37187,-1631067, 'I will not forget this... kindness. I thank you, Highness',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17095,0,0,0, 'SAY_OUTRO_ALLIANCE_15'),
(37879,-1631068, 'I... I was not at the Wrath Gate, but the soldiers who survived told me much of what happened. Your son fought with honor. He died a hero''s death. He deserves a hero''s burial.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16691,0,0,0, 'SAY_OUTRO_ALLIANCE_16'),
(37188,-1631069, 'Lady Jaina Proudmoore cries.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16651,2,0,18, 'SAY_OUTRO_ALLIANCE_17'),
(37879,-1631070, 'Jaina? Why are you crying?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16692,0,0,0, 'SAY_OUTRO_ALLIANCE_18'),
(37188,-1631071, 'It was nothing, your majesty. Just... I''m proud of my king.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16652,0,0,0, 'SAY_OUTRO_ALLIANCE_19'),
(37879,-1631072, 'Bah! Muradin, secure the deck and prepare our soldiers for an assault on the upper citadel. I''ll send out another regiment from Stormwind.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16693,0,0,0, 'SAY_OUTRO_ALLIANCE_20'),
(37200,-1631073, 'Right away, yer majesty!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16979,0,0,0, 'SAY_OUTRO_ALLIANCE_21'),
(37187,-1631074, 'High Overlord Saurfang coughs.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17105,2,0,0, 'SAY_OUTRO_HORDE_1'),
(37187,-1631075, 'High Overlord Saurfang weeps over the corpse of his son.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17106,2,0,15, 'SAY_OUTRO_HORDE_2'),
(37187,-1631076, 'You will have a proper ceremony in Nagrand next to the pyres of your mother and ancestors.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17101,0,0,0, 'SAY_OUTRO_HORDE_3'),
(37187,-1631077, 'Honor, young heroes... no matter how dire the battle... Never forsake it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17102,0,0,0, 'SAY_OUTRO_HORDE_4');

-- 9607_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='boss_deathbringer_saurfang' WHERE `entry`=37813;
UPDATE `creature_template` SET `ScriptName`='npc_high_overlord_saurfang_icc' WHERE `entry`=37187;
UPDATE `creature_template` SET `ScriptName`='npc_muradin_bronzebeard_icc' WHERE `entry`=37200;
UPDATE `creature_template` SET `ScriptName`='npc_saurfang_event' WHERE `entry` IN (37920,37830);

-- 9607_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id`=70842 AND `ScriptName`='spell_deathwhisper_mana_barrier';
DELETE FROM `spell_script_names` WHERE `spell_id`=72202 AND `ScriptName`='spell_deathbringer_blood_link';
DELETE FROM `spell_script_names` WHERE `spell_id`=72178 AND `ScriptName`='spell_deathbringer_blood_link_aura';
DELETE FROM `spell_script_names` WHERE `spell_id`=72371 AND `ScriptName`='spell_deathbringer_blood_power';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (72409,72447,72448,72449) AND `ScriptName`='spell_deathbringer_rune_of_blood';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (72380,72438,72439,72440) AND `ScriptName`='spell_deathbringer_blood_nova';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(70842,'spell_deathwhisper_mana_barrier'),
(72202,'spell_deathbringer_blood_link'),
(72178,'spell_deathbringer_blood_link_aura'),
(72371,'spell_deathbringer_blood_power'),
(72409,'spell_deathbringer_rune_of_blood'),
(72447,'spell_deathbringer_rune_of_blood'),
(72448,'spell_deathbringer_rune_of_blood'),
(72449,'spell_deathbringer_rune_of_blood'),
(72380,'spell_deathbringer_blood_nova'),
(72438,'spell_deathbringer_blood_nova'),
(72439,'spell_deathbringer_blood_nova'),
(72440,'spell_deathbringer_blood_nova');

-- 9618_wrold_scriptname.sql
UPDATE `gameobject_template` SET `ScriptName`='icecrown_citadel_teleport' WHERE `entry` IN (202223,202235,202242,202243,202244,202245,202246);

-- 9666_world_spell_script_names.sql
-- 8063 Deviate Fish
DELETE FROM `spell_script_names` WHERE `spell_id`=8063 AND `ScriptName`='spell_item_deviate_fish';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (8063,'spell_item_deviate_fish');
-- 67019 Flask of the North
DELETE FROM `spell_script_names` WHERE `spell_id`=67019 AND `ScriptName`='spell_item_flask_of_the_north';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (67019,'spell_item_flask_of_the_north');
-- 13280 Gnomish Death Ray
DELETE FROM `spell_script_names` WHERE `spell_id`=13280 AND `ScriptName`='spell_item_gnomish_death_ray';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (13280,'spell_item_gnomish_death_ray');
-- 33060 Make a Wish
DELETE FROM `spell_script_names` WHERE `spell_id`=33060 AND `ScriptName`='spell_item_make_a_wish';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (33060,'spell_item_make_a_wish');
-- 13120 Net-o-Matic
DELETE FROM `spell_script_names` WHERE `spell_id`=13120 AND `ScriptName`='spell_item_net_o_matic';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (13120,'spell_item_net_o_matic');
-- 16589 Noggenfogger Elixir
DELETE FROM `spell_script_names` WHERE `spell_id`=16589 AND `ScriptName`='spell_item_noggenfogger_elixir';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (16589,'spell_item_noggenfogger_elixir');
-- 8213 Savory Deviate Delight
DELETE FROM `spell_script_names` WHERE `spell_id`=8213 AND `ScriptName`='spell_item_savory_deviate_delight';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (8213,'spell_item_savory_deviate_delight');
-- 52308 Take Sputum Sample
DELETE FROM `spell_script_names` WHERE `spell_id`=52308 AND `ScriptName`='spell_q12683_take_sputum_sample';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (52308,'spell_q12683_take_sputum_sample');
-- 59640 Underbelly Elixir
DELETE FROM `spell_script_names` WHERE `spell_id`=59640 AND `ScriptName`='spell_item_underbelly_elixir';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (59640,'spell_item_underbelly_elixir');
-- 55804 Healing Finished
DELETE FROM `spell_script_names` WHERE `spell_id`=55804 AND `ScriptName`='spell_q12937_relief_for_the_fallen';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (55804,'spell_q12937_relief_for_the_fallen');

-- 9700_world_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631090 AND -1631078;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36626,-1631078, 'NOOOO! You kill Stinky! You pay!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16907,1,0,0, 'SAY_STINKY_DEAD'),
(36626,-1631079, 'Fun time!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16901,1,0,0, 'SAY_AGGRO'),
(36678,-1631080, 'Just an ordinary gas cloud. But watch out, because that''s no ordinary gas cloud!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17119,1,0,432, 'SAY_GASEOUS_BLIGHT'),
(36626,-1631081, 'Festergut farts.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16911,2,0,0, 'EMOTE_GAS_SPORE'),
(36626,-1631082, 'Festergut releases Gas Spores!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0, 'EMOTE_WARN_GAS_SPORE'),
(36626,-1631083, 'Gyah! Uhhh, I not feel so good...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16906,1,0,0, 'SAY_PUNGENT_BLIGHT'),
(36626,-1631084, 'Festergut begins to cast |cFFFF7F00Pungent Blight!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0, 'EMOTE_WARN_PUNGENT_BLIGHT'),
(36626,-1631085, 'Festergut vomits.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'EMOTE_PUNGENT_BLIGHT'),
(36626,-1631086, 'Daddy, I did it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16902,1,0,0, 'SAY_KILL_1'),
(36626,-1631087, 'Dead, dead, dead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16903,1,0,0, 'SAY_KILL_2'),
(36626,-1631088, 'Fun time over!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16905,1,0,0, 'SAY_BERSERK'),
(36626,-1631089, 'Da ... Ddy...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16904,1,0,0, 'SAY_DEATH'),
(36678,-1631090, 'Oh, Festergut. You were always my favorite. Next to Rotface. The good news is you left behind so much gas, I can practically taste it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17124,1,0,0, 'SAY_FESTERGUT_DEATH');

-- 9700_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='boss_festergut' WHERE `entry`=36626;
UPDATE `creature_template` SET `ScriptName`='npc_stinky_icc' WHERE `entry`=37025;
UPDATE `creature_template` SET `ScriptName`='boss_professor_putricide' WHERE `entry`=36678;

-- 9700_world_spell_script_names
DELETE FROM `spell_script_names` WHERE `spell_id`=73032 AND `ScriptName`='spell_stinky_precious_decimate';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (73032,73031,71219,69195) AND `ScriptName`='spell_festergut_pungent_blight';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (72219,72551,72552,72553) AND `ScriptName`='spell_festergut_gastric_bloat';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (69290,71222,73033,73034) AND `ScriptName`='spell_festergut_blighted_spores';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(71123,'spell_stinky_precious_decimate'),
(73032,'spell_festergut_pungent_blight'),
(73031,'spell_festergut_pungent_blight'),
(71219,'spell_festergut_pungent_blight'),
(69195,'spell_festergut_pungent_blight'),
(72219,'spell_festergut_gastric_bloat'),
(72551,'spell_festergut_gastric_bloat'),
(72552,'spell_festergut_gastric_bloat'),
(72553,'spell_festergut_gastric_bloat'),
(69290,'spell_festergut_blighted_spores'),
(71222,'spell_festergut_blighted_spores'),
(73033,'spell_festergut_blighted_spores'),
(73034,'spell_festergut_blighted_spores');

-- 9746_world_spell_script_names.sql
-- 14537 Six Demon Bag
DELETE FROM `spell_script_names` WHERE `spell_id`=14537 AND `ScriptName`='spell_item_six_demon_bag';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (14537,'spell_item_six_demon_bag');
-- 17271 Test Fetid Skull
DELETE FROM `spell_script_names` WHERE `spell_id`=17271 AND `ScriptName`='spell_q5206_test_fetid_skull';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (17271,'spell_q5206_test_fetid_skull');
-- 23074 Arcanite Dragonling
DELETE FROM `spell_script_names` WHERE `spell_id`=23074 AND `ScriptName`='spell_item_arcanite_dragonling';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (23074,'spell_item_arcanite_dragonling');
-- 23075 Mithril Mechanical Dragonling
DELETE FROM `spell_script_names` WHERE `spell_id`=23075 AND `ScriptName`='spell_item_mithril_mechanical_dragonling';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (23075,'spell_item_mithril_mechanical_dragonling');
-- 23076 Mechanical Dragonling
DELETE FROM `spell_script_names` WHERE `spell_id`=23076 AND `ScriptName`='spell_item_mechanical_dragonling';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (23076,'spell_item_mechanical_dragonling');
-- 23133 Gnomish Battle Chicken
DELETE FROM `spell_script_names` WHERE `spell_id`=23133 AND `ScriptName`='spell_item_gnomish_battle_chicken';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (23133,'spell_item_gnomish_battle_chicken');
-- 34665 Administer Antidote
DELETE FROM `spell_script_names` WHERE `spell_id`=34665 AND `ScriptName`='spell_q10255_administer_antidote';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (34665,'spell_q10255_administer_antidote');
-- 40802 Mingo's Fortune Generator
DELETE FROM `spell_script_names` WHERE `spell_id`=40802 AND `ScriptName`='spell_item_mingos_fortune_generator';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (40802,'spell_item_mingos_fortune_generator');
-- 8913 Sacred Cleansing
DELETE FROM `spell_script_names` WHERE `spell_id`=8913 AND `ScriptName`='spell_q55_sacred_cleansing';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (8913,'spell_q55_sacred_cleansing');
-- 44936 Quest - Fel Siphon Dummy
DELETE FROM `spell_script_names` WHERE `spell_id`=44936 AND `ScriptName`='spell_q11515_fel_siphon_dummy';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (44936,'spell_q11515_fel_siphon_dummy');

-- 9762_world_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000522 AND -1000517;
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES 
(0,-1000517,'A-Me good. Good, A-Me. Follow... follow A-Me. Home. A-Me go home.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_ame - SAY_READY'),
(0,-1000518,'$c, no hurt A-Me. A-Me good.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_ame - SAY_AGGRO1'),
(0,-1000519,'Good... good, A-Me. A-Me good. Home. Find home.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_ame - SAY_SEARCH'),
(0,-1000520,'Danger. Danger! $c try hurt A-Me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_ame - SAY_AGGRO2'),
(0,-1000521,'Bad, $c. $c, bad!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_ame - SAY_AGGRO3'),
(0,-1000522,'A-Me home! A-Me good! Good A-Me. Home. Home. Home.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_ame - SAY_FINISH');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000525 AND -1000523;
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES 
(0,-1000523,'Saeed is currently engaged or awaiting orders to engage. You may check directly east of me and see if Saeed is ready for you. If he is not present then he is off fighting another battle. I recommend that you wait for him to return before attacking Dimensius.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'npc_professor_dabiri - WHISPER_DABIRI'),
(0,-1000524,'Bessy, is that you?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_bessy - SAY_THADELL_1'),
(0,-1000525,'Thank you for bringing back my Bessy, $N. I couldn''t live without her!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_bessy - SAY_THADELL_2');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000574 AND -1000571;
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES 
(0,-1000571,'Ok let''s get out of here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_isla_starmane - SAY_PROGRESS_1'),
(0,-1000572,'You sure you''re ready? Take a moment.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_isla_starmane - SAY_PROGRESS_2'),
(0,-1000573,'Alright, let''s do this!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_isla_starmane - SAY_PROGRESS_3'),
(0,-1000574,'Ok, I think I can make it on my own from here. Thank you so much for breaking me out of there!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_isla_starmane - SAY_PROGRESS_4');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000621 AND -1000606;
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES 
(0,-1000606,'Come, $N. Lord Stormrage awaits.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'OVERLORD_SAY_1'),
(0,-1000607,'Lord Illidan will be here shortly.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'OVERLORD_SAY_2'),
(0,-1000609,'But... My lord, I do not understand. $N... He is the orc that has...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'OVERLORD_SAY_4'),
(0,-1000610,'It will be done, my lord.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'OVERLORD_SAY_5'),
(0,-1000611,'So you thought to make a fool of Mor''ghor, eh? Before you are delivered to Lord Illidan, you will feel pain that you could not know to exist. I will take pleasure in exacting my own vengeance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,'OVERLORD_SAY_6'),
(0,-1000612,'Warriors of Dragonmaw, gather ''round! One among you has attained the rank of highlord! Bow your heads in reverence! Show your respect and allegiance to Highlord $N!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,22,'OVERLORD_YELL_1'),
(0,-1000613,'All hail Lord Illidan!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,66,'OVERLORD_YELL_2'),
(0,-1000614,'What is the meaning of this, Mor''ghor?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'LORD_ILLIDAN_SAY_1'),
(0,-1000615,'SILENCE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,22,'LORD_ILLIDAN_SAY_2'),
(0,-1000616,'Blathering idiot. You incomprehensibly incompetent buffoon...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'LORD_ILLIDAN_SAY_3'),
(0,-1000617,'THIS is your hero?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,'LORD_ILLIDAN_SAY_4'),
(0,-1000618,'You have been deceived, imbecile.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'LORD_ILLIDAN_SAY_5'),
(0,-1000619,'This... whole... operation... HAS BEEN COMPROMISED!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,22,'LORD_ILLIDAN_SAY_6'),
(0,-1000620,'I expect to see this insect''s carcass in pieces in my lair within the hour. Fail and you will suffer a fate so much worse than death.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'LORD_ILLIDAN_SAY_7'),
(0,-1000621,'You will not harm the boy, Mor''ghor! Quickly, $N, climb on my back!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,22,'YARZILL_THE_MERC_SAY');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000636 AND -1000629;
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES 
(0,-1000629,'What''s the big idea, Spark?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'geezle - GEEZLE_SAY_1'),
(0,-1000630,'What''s the big idea? You nearly blew my cover, idiot! I told you to put the compass and navigation maps somewhere safe - not out in the open for any fool to discover.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,'geezle - SPARK_SAY_2'),
(0,-1000631,'The Master has gone to great lengths to secure information about the whereabouts of the Exodar. You could have blown the entire operation, including the cover of our spy on the inside.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'geezle - SPARK_SAY_3'),
(0,-1000632,'Relax, Spark! I have it all under control. We''ll strip mine the Exodar right out from under ''em - making both you and I very, very rich in the process.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,'geezle - GEEZLE_SAY_4'),
(0,-1000633,'Relax? Do you know what Kael''thas does to those that fail him, Geezle? Eternal suffering and pain... Do NOT screw this up, fool.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'geezle - SPARK_SAY_5'),
(0,-1000634,'Our Bloodmyst scouts have located our contact. The fool, Velen, will soon leave himself open and defenseless -- long enough for us to strike! Now get out of my sight before I vaporize you...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'geezle - SPARK_SAY_6'),
(0,-1000635,'Yes, sir. It won''t happen again...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'geezle - GEEZLE_SAY_7'),
(0,-1000636,'picks up the naga flag.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'geezle - EMOTE_SPARK');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1800070 AND -1800064;
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES 
(0,-1800064,'Beware! We are attacked!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,11,1,'npc_anchorite_truuen - SAY_WP_0'),
(0,-1800065,'It must be the purity of the Mark of the Lightbringer that is drawing forth the Scourge to attack us. We must proceed with caution lest we be overwhelmed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,11,1,'npc_anchorite_truuen - SAY_WP_1'),
(0,-1800066,'This land truly needs to be cleansed by the Light! Let us continue on to the tomb. It isn''t far now...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,11,1,'npc_anchorite_truuen - SAY_WP_2'),
(0,-1800067,'Be welcome, friends!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,11,1,'npc_anchorite_truuen - SAY_WP_3'),
(0,-1800068,'Thank you for coming here in remembrance of me. Your efforts in recovering that symbol, while unnecessary, are certainly touching to an old man''s heart. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,11,1,'npc_anchorite_truuen - SAY_WP_4'),
(0,-1800069,'Please, rise my friend. Keep the Blessing as a symbol of the strength of the Light and how heroes long gone might once again rise in each of us to inspire. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,11,1,'npc_anchorite_truuen - SAY_WP_5'),
(0,-1800070,'Thank you my friend for making this possible. This is a day that I shall never forget! I think I will stay a while. Please return to High Priestess MacDonnell at the camp. I know that she''ll be keenly interested to know of what has transpired here.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,11,1,'npc_anchorite_truuen - SAY_WP_6');
DELETE FROM `script_texts` WHERE `entry`=-1000600;
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES 
(0,-1000600,'Ow! OK, I''ll get back to work, $N!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,11,1,'npc_lazy_peon - SAY_WP_0');

-- 9815_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`= 'npc_hodirs_fury' WHERE `entry`=33212;
UPDATE `creature_template` SET `ScriptName`= '' WHERE `entry`=33312;

-- 9835_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id` IN(29266,57685,58951,70592,70628,74490) AND `ScriptName`='spell_creature_permanent_feign_death';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(29266, 'spell_creature_permanent_feign_death'),
(57685, 'spell_creature_permanent_feign_death'),
(58951, 'spell_creature_permanent_feign_death'),
(70592, 'spell_creature_permanent_feign_death'),
(70628, 'spell_creature_permanent_feign_death'),
(74490, 'spell_creature_permanent_feign_death');

-- 9841_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id` IN(72752,72757);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(72752, 'spell_pvp_trinket_wotf_shared_cd'),
(72757, 'spell_pvp_trinket_wotf_shared_cd');
