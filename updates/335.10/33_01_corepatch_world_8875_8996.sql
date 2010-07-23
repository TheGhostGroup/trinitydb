-- ----------- --
-- TrinityCore --
-- ----------- --

-- 8890_world_spell_dbc.sql
ALTER TABLE `spell_dbc`
ADD COLUMN `Stances` int(10) unsigned NOT NULL DEFAULT '0' AFTER `AttributesEx5`,
ADD COLUMN `StancesNot` int(10) unsigned NOT NULL DEFAULT '0' AFTER `Stances`;
  
-- 8891_world_spell_dbc.sql
UPDATE `spell_dbc` SET `Stances`=0x90 WHERE `Id`=24899;
UPDATE `spell_dbc` SET `Stances`=0x1 WHERE `Id`=24900;

-- 8897_world_npc_vendor.sql
-- Restore negative ExtendedCost, we now use FlagsExtra value instead
UPDATE `npc_vendor` SET `ExtendedCost`=-`ExtendedCost` WHERE `ExtendedCost`<0;
-- Set field type to unsigned
ALTER TABLE npc_vendor CHANGE COLUMN `ExtendedCost` `ExtendedCost` mediumint(8) UNSIGNED NOT NULL default '0' COMMENT '';

-- 8897_world_trinity_string.sql
-- UPDATE so we don't kill customized locale strings if user has any
UPDATE `trinity_string` SET `content_default`='Item ''%u'' (with extended cost %u) already in vendor list.' WHERE `entry`=210;

-- 8905_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN(67758);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(67758,0,0,0,0,0,0,2,0,0,2);

-- 8906_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (47201,47202,47203,47204,47205);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(47201,0,5,0x00004009,0x00040000,0x00000000,0x00000000,0x0000000,0,0,0),
(47202,0,5,0x00004009,0x00040000,0x00000000,0x00000000,0x0000000,0,0,0),
(47203,0,5,0x00004009,0x00040000,0x00000000,0x00000000,0x0000000,0,0,0),
(47204,0,5,0x00004009,0x00040000,0x00000000,0x00000000,0x0000000,0,0,0),
(47205,0,5,0x00004009,0x00040000,0x00000000,0x00000000,0x0000000,0,0,0);

-- 8915_world_trinity_string.sql
-- UPDATE so we don't kill customized locale strings if user has any
UPDATE `trinity_string` SET `content_default`='The old password is wrong' WHERE `entry`=27;
-- INSERT as this string has not been used before
DELETE FROM `trinity_string` WHERE `entry`=62;
INSERT INTO `trinity_string` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`) VALUES (62, 'One on more parameters have incorrect values', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- 8920_world_spell_dbc.sql
-- Add serverside spells place holders for future development
DELETE FROM `spell_dbc` WHERE `Id` IN (70878);
INSERT INTO `spell_dbc` (`Id`,`Comment`) VALUES
(70878, 'Creature 40160 creature_addon serverside spell');

-- 8920_world_spell_linked_spell.sql
-- For quest: Truce?
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=50141;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(50141,50001,0, 'Blood Oath to Blood Oath Aura');

-- 8921_world_spell_dbc.sql
UPDATE `spell_dbc` SET `Effect1`=6,`EffectApplyAuraName1`=4 WHERE `Id` IN (70878);

-- 8925_world_spell_group.sql
-- Cast Speed Slow
DELETE FROM `spell_group` WHERE `id` = 1103;
INSERT INTO `spell_group` (`id`,`spell_id`) VALUES
(1103,-1100),
(1103,-1101),
(1103,-1102);

-- 8957_world_command.sql
DELETE FROM `command` WHERE `name` IN ('reload disables','reload spell_disabled','instance open','instance close');
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('reload disables',3,'Syntax: .reload disables\r\nReload disables table.');

-- 8957_world_disables.sql
-- Step 1: prepare table
DROP TABLE IF EXISTS `disables`;
CREATE TABLE `disables` (
  `sourceType` int(10) unsigned NOT NULL,
  `entry` int(10) unsigned NOT NULL,
  `flags` tinyint(3) unsigned NOT NULL default '0',
  `comment` varchar(255) character set utf8 NOT NULL default '',
  PRIMARY KEY  (`sourceType`,`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
-- Step 2: pull data
-- a) spells
INSERT INTO `disables` SELECT 0,`entry`,`disable_mask`,`comment` FROM `spell_disabled`;
-- b) maps (areatriggers)
-- don't convert
-- c) battlegrounds
INSERT INTO `disables` SELECT 3,`id`,0,'' FROM `battleground_template` WHERE `disable`=1;
-- d) achievement criteria data
INSERT INTO `disables` SELECT 4,`criteria_id`,0,'' FROM `achievement_criteria_data` WHERE `type`=11;
-- Step 3: drop old fields/tables/data
DROP TABLE IF EXISTS `spell_disabled`;
ALTER TABLE `access_requirement` DROP `status`;
ALTER TABLE `battleground_template` DROP `disable`;
DELETE FROM `achievement_criteria_data` WHERE `type`=11;

-- 8957_world_trinity_string.sql
-- Fix engrish in strings
UPDATE `trinity_string` SET `content_default`='This Battleground has been disabled. You can''t join the queue.' WHERE `entry`=747;

-- 8971_world_command.sql
DELETE FROM command WHERE name IN ('character delete', 'character deleted list', 'character deleted restore', 'character deleted delete', 'character deleted old', 'character erase');
INSERT INTO command (name, security, help) VALUES
('character erase',4,'Syntax: .character erase $name\r\n\r\nDelete character $name. Character finally deleted in case any deleting options.'),
('character deleted delete', 4, 'Syntax: .character deleted delete #guid|$name\r\n\r\nCompletely deletes the selected characters.\r\nIf $name is supplied, only characters with that string in their name will be deleted, if #guid is supplied, only the character with that GUID will be deleted.'),
('character deleted list', 3, 'Syntax: .character deleted list [#guid|$name]\r\n\r\nShows a list with all deleted characters.\r\nIf $name is supplied, only characters with that string in their name will be selected, if #guid is supplied, only the character with that GUID will be selected.'),
('character deleted old', 4, 'Syntax: .character deleted old [#keepDays]\r\n\r\nCompletely deletes all characters with deleted time longer #keepDays. If #keepDays not provided the  used value from mangosd.conf option ''CharDelete.KeepDays''. If referenced config option disabled (use 0 value) then command can''t be used without #keepDays.'),
('character deleted restore', 3, 'Syntax: .character deleted restore #guid|$name [$newname] [#new account]\r\n\r\nRestores deleted characters.\r\nIf $name is supplied, only characters with that string in their name will be restored, if $guid is supplied, only the character with that GUID will be restored.\r\nIf $newname is set, the character will be restored with that name instead of the original one. If #newaccount is set, the character will be restored to specific account character list. This works only with one character!');

-- 8971_world_trinity_string.sql
DELETE FROM trinity_string WHERE entry IN (1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026);
INSERT INTO trinity_string VALUES
(1016, '| GUID       | Name                 | Account                      | Delete Date         |', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1017, '| %10u | %20s | %15s (%10u) | %19s |', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1018, '==========================================================================================', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1019, 'No characters found.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1020, 'Restoring the following characters:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1021, 'Deleting the following characters:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1022, 'ERROR: You can only assign a new name if you have only selected a single character!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1023, 'Character ''%s'' (GUID: %u Account %u) can''t be restored: account not exist!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1024, 'Character ''%s'' (GUID: %u Account %u) can''t be restored: account character list full!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1025, 'Character ''%s'' (GUID: %u Account %u) can''t be restored: new name already used!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1026, 'GUID: %u Name: %s Account: %s (%u) Date: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- 8975_world_spell_dbc.sql
-- Add serverside spells place holders for future development
DELETE FROM `spell_dbc` WHERE `Id` IN (38406);
INSERT INTO `spell_dbc` (`Id`,`Comment`) VALUES
(38406, 'Quest 10721 RewSpellCast serverside spell');

-- 8987_world_playercreateinfo.sql
ALTER TABLE `playercreateinfo`
  ADD COLUMN `orientation` float NOT NULL DEFAULT 0 AFTER `position_z`;

-- 8988_world_playercreateinfo.sql
UPDATE `playercreateinfo` SET `orientation`=5.696318 WHERE `race`=4 AND `class`<>6;
UPDATE `playercreateinfo` SET `orientation`=6.177156 WHERE `race`=3 AND `class`<>6;
UPDATE `playercreateinfo` SET `orientation`=2.70526 WHERE `race`=5 AND `class`<>6;
UPDATE `playercreateinfo` SET `orientation`=5.316046 WHERE `race`=10 AND `class`<>6;
UPDATE `playercreateinfo` SET `orientation`=2.083644 WHERE `race`=11 AND `class`<>6;
UPDATE `playercreateinfo` SET `orientation`=3.659973 WHERE `class`=6;
