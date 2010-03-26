-- ----------- --
-- TrinityCore --
-- ----------- --

-- 7394_world_spell_bonus_data.sql
-- Some spell bonus data mostly for DK spells and trinket spells
DELETE FROM `spell_bonus_data` WHERE `entry` IN (63544,54181,55078,55095,50536,52212,51460,48721,45477,54757,45055,60203,60488,45429);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(63544, 0, -1, -1, -1, 'Priest - Empowered Renew'),
(54181, 0, -1, -1, -1, 'Warlock - Fel Synergy'),
(55078, 0, 0, -1, 0.06325, 'Death Knight - Blood Plague'),
(55095, -1, 0, -1, 0.06325, 'Death Knight - Frost Fever'),
(50536, -1, 0, -1, -1, 'Death Knight - Unholy Blight (Rank 1)'),
(52212, 0, -1, 0.0475, -1, 'Death Knight - Death and Decay'),
(51460, 0, -1, -1, -1, 'Death Knight - Necrosis'),
(48721, 0, -1, 0.04, -1, 'Death Knight - Blood Boil'),
(45477, 0, -1, 0.1, -1, 'Death Knight - Icy Touch'),
(54757, 0, -1, -1, -1, 'Hand-Mounted Pyro Rocket - Pyro Rocket'),
(45055, 0, -1, -1, -1, 'Timbal''s Focusing Crystal - Shadow Bolt'),
(60203, 0, -1, -1, -1, 'Darkmoon Card: Death'),
(60488, 0, -1, -1, -1, 'Extract of Necromatic Power'),
(45429, 0, -1, -1, -1, 'Shattered Sun Pendant of Acumen - Arcane Bolt');

-- 7402_world_spell_group_stack_rules.sql
DELETE FROM `spell_group_stack_rules` WHERE `group_id` IN (1011);
INSERT INTO `spell_group_stack_rules` (`group_id`, `stack_rule`) VALUES (1011, 2);

-- 7417_world_trinity_string.sql
DELETE FROM `trinity_string` WHERE `entry`=5022;
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES (5022, 'Channel password not changed due to channel being marked public. GM Powers required.');

-- 7430_world_command.sql
DELETE FROM `command` WHERE name='channel set public';
INSERT INTO `command` (`name`,`security`,`help`) VALUES ('channel set public', 3, 'Syntax: .channel set public  $channel $public\r\n\r\nChange password-changing ability for a channel. 1 for possible, 0 for GM only.');

-- 7430_world_trinity_string.sql
DELETE FROM `trinity_string` WHERE `entry`=5023;
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES (5023, 'Channel: %s publicity set to: %u');

-- 7432_world_access_requirement.sql
ALTER TABLE `access_requirement` ADD COLUMN `status` TINYINT(3) UNSIGNED DEFAULT 15 COMMENT 'instance status (open/close)';

-- 7432_world_trinity_string.sql
DELETE FROM `trinity_string` WHERE `entry`=5008;
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES (5008,'This instance is closed.');

-- 7465_world_command.sql
DELETE FROM `command` WHERE `name`='gobject info';
INSERT INTO `command` (`name`,`security`,`help`) VALUES ('gobject info', 2, 'Syntax: .gobject info [$object_entry]\r\n\r\nQuery Gameobject information for selected gameobject or given entry.');

-- 7465_world_trinity_string.sql
DELETE FROM `trinity_string` WHERE `entry` IN (5024,5025,5026,5027);
INSERT INTO trinity_string (`entry`, `content_default`) VALUES 
(5024, 'Entry: %u'),
(5025, 'Type: %u'),
(5026, 'DisplayID: %u'),
(5027, 'Name: %s');

-- 7469_world_locales_quest.sql
ALTER TABLE locales_quest ADD COLUMN CompletedText_loc1 text AFTER EndText_loc8;
ALTER TABLE locales_quest ADD COLUMN CompletedText_loc2 text AFTER CompletedText_loc1;
ALTER TABLE locales_quest ADD COLUMN CompletedText_loc3 text AFTER CompletedText_loc2;
ALTER TABLE locales_quest ADD COLUMN CompletedText_loc4 text AFTER CompletedText_loc3;
ALTER TABLE locales_quest ADD COLUMN CompletedText_loc5 text AFTER CompletedText_loc4;
ALTER TABLE locales_quest ADD COLUMN CompletedText_loc6 text AFTER CompletedText_loc5;
ALTER TABLE locales_quest ADD COLUMN CompletedText_loc7 text AFTER CompletedText_loc6;
ALTER TABLE locales_quest ADD COLUMN CompletedText_loc8 text AFTER CompletedText_loc7;

-- 7469_world_quest_template.sql
ALTER TABLE quest_template CHANGE CompletionText CompletedText TEXT NULL DEFAULT NULL;

-- 7508_world_trinity_string.sql
DELETE FROM `trinity_string` WHERE `entry` IN (6604,6605,6606,6607,6608,6609,6610,6611,6612);
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES
(6604, 'You cannot say, yell or emote until you become level %d.'),
(6605, 'You cannot whisper until you become level %d.'),
(6606, 'You cannot write to channels until you become level %d.'),
(6607, 'You cannot use auction until you become level %d.'),
(6608, 'You cannot write tickets until you become level %d.'),
(6609, 'You cannot trade until you become level %d.'),
(6610, 'You cannot trade with characters lower than level %d.'),
(6611, 'You cannot send mail until you become level %d.'),
(6612, 'You cannot send mail to characters lower than level %d.');

-- 7509_world_command.sql
DELETE FROM `command` WHERE `name`='server shutdown';
INSERT INTO `command` (`name`,`security`,`help`) VALUES ('server shutdown','3','Syntax: .server shutdown #delay [#exit_code]\r\n\r\nShut the server down after #delay seconds. Use #exit_code or 0 as program exit code.');

-- 7547_world_vehicle_accessory.sql
DROP TABLE IF EXISTS `vehicle_accessory`;
CREATE TABLE `vehicle_accessory` (
        `entry` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0,
        `accessory_entry` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0,
        `seat_id` TINYINT(1) SIGNED NOT NULL DEFAULT 0,
        `minion` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
        `description` TEXT NOT NULL,
        PRIMARY KEY (`entry`, `seat_id`)
)
COLLATE=utf8_general_ci
ENGINE=MyISAM
ROW_FORMAT=FIXED
AVG_ROW_LENGTH=0;

INSERT INTO `vehicle_accessory` (`entry`,`accessory_entry`,`seat_id`,`minion`,`description`) VALUES
(28782,28768,0,0, 'Acherus Deathcharger'),
(28312,28319,7,1, 'Wintergrasp Siege Engine'),
(32627,32629,7,1, 'Wintergrasp Siege Engine'),
(32930,32933,0,1, 'Kologarn'),
(32930,32934,1,1, 'Kologarn'),
(33109,33167,1,1, 'Salvaged Demolisher'),
(33060,33067,7,1, 'Salvaged Siege Engine'),
(33113,33114,0,1, 'Flame Leviathan'),
(33113,33114,1,1, 'Flame Leviathan'),
(33113,33114,2,1, 'Flame Leviathan'),
(33113,33114,3,1, 'Flame Leviathan'),
(33113,33139,7,1, 'Flame Leviathan'),
(33114,33142,1,1, 'Overload Control Device'),       
(33114,33143,2,1, 'Leviathan Defense Turret'),       
(33214,33218,1,1, 'Mechanolift 304-A'),      
(35637,34705,0,0, 'Marshal Jacob Alerius'' Mount'),
(35633,34702,0,0, 'Ambrose Boltspark''s Mount'),
(35768,34701,0,0, 'Colosos'' Mount'),
(34658,34657,0,0, 'Jaelyne Evensong''s Mount'),
(35636,34703,0,0, 'Lana Stouthammer''s Mount'),
(35638,35572,0,0, 'Mokra the Skullcrusher''s Mount'),
(35635,35569,0,0, 'Eressea Dawnsinger''s Mount'),
(35640,35571,0,0, 'Runok Wildmane''s Mount'),
(35641,35570,0,0, 'Zul''tore''s Mount'),
(35634,35617,0,0, 'Deathstalker Visceri''s Mount');

-- 7549_world_trinity_string.sql
DELETE FROM `trinity_string` WHERE `entry` in (2017,2022,2023,2024);
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES
(2017, '|cffaaffaaTicket|r:|cffaaccff %d.|r '),
(2022, '|cff00ff00Ticket Message|r: [%s]|r'),
(2023, '|cff00ff00GM Comment|r: [%s]|r'),
(2024, '|cff00ccff%s|r |cff00ff00Added comment|r: [%s]|r');

-- 7551_world_trinity_string.sql
DELETE FROM `trinity_string` WHERE `entry` in (1010,1012,1013,1015);
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES
(1010, '-[         Account][   Character][             IP][Map][Zone][Exp][GMLev]-'),
(1012, '-==================================================================-'),
(1013, '-[%16s][%12s][%15s][%3d][%4d][%d][%d]-'),
(1015, '-======================== Characters Online =======================-');

-- 7552_world_battleground_template.sql
-- Add disable column to allow battlegrounds to be disabled.
ALTER TABLE `battleground_template` ADD COLUMN disable TINYINT(1) NOT NULL DEFAULT '0';

-- Disable wtlk arenas by default
UPDATE `battleground_template` SET `disable`=1 WHERE `id` in (10,11);

-- 7552_world_trinity_string.sql
-- Add text for disabled bg/arenas.
DELETE FROM `trinity_string` WHERE `entry` in (747,748);
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES
(747, 'This Battleground have been disabled. You can''t join the queue.'),
(748, 'Arenas have been disabled. You can''t join the queue.');

-- 7581_world_spell_dbc.sql
DELETE FROM `spell_dbc` WHERE `id`=61988;
INSERT INTO `spell_dbc` (`Id`, `Dispel`, `Mechanic`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `Targets`, `CastingTimeIndex`, `AuraInterruptFlags`, `ProcFlags`, `ProcChance`, `ProcCharges`, `MaxLevel`, `BaseLevel`, `SpellLevel`, `DurationIndex`, `RangeIndex`, `StackAmount`, `EquippedItemClass`, `EquippedItemSubClassMask`, `EquippedItemInventoryTypeMask`, `Effect1`, `Effect2`, `Effect3`, `EffectDieSides1`, `EffectDieSides2`, `EffectDieSides3`, `EffectBaseDice1`, `EffectBaseDice2`, `EffectBaseDice3`, `EffectDicePerLevel1`, `EffectDicePerLevel2`, `EffectDicePerLevel3`, `EffectRealPointsPerLevel1`, `EffectRealPointsPerLevel2`, `EffectRealPointsPerLevel3`, `EffectBasePoints1`, `EffectBasePoints2`, `EffectBasePoints3`, `EffectMechanic1`, `EffectMechanic2`, `EffectMechanic3`, `EffectImplicitTargetA1`, `EffectImplicitTargetA2`, `EffectImplicitTargetA3`, `EffectImplicitTargetB1`, `EffectImplicitTargetB2`, `EffectImplicitTargetB3`, `EffectRadiusIndex1`, `EffectRadiusIndex2`, `EffectRadiusIndex3`, `EffectApplyAuraName1`, `EffectApplyAuraName2`, `EffectApplyAuraName3`, `EffectAmplitude1`, `EffectAmplitude2`, `EffectAmplitude3`, `EffectMultipleValue1`, `EffectMultipleValue2`, `EffectMultipleValue3`, `EffectMiscValue1`, `EffectMiscValue2`, `EffectMiscValue3`, `EffectMiscValueB1`, `EffectMiscValueB2`, `EffectMiscValueB3`, `EffectTriggerSpell1`, `EffectTriggerSpell2`, `EffectTriggerSpell3`, `EffectSpellClassMaskA1`, `EffectSpellClassMaskA2`, `EffectSpellClassMaskA3`, `EffectSpellClassMaskB1`, `EffectSpellClassMaskB2`, `EffectSpellClassMaskB3`, `EffectSpellClassMaskC1`, `EffectSpellClassMaskC2`, `EffectSpellClassMaskC3`, `MaxTargetLevel`, `SpellFamilyName`, `SpellFamilyFlags1`, `SpellFamilyFlags2`, `SpellFamilyFlags3`, `MaxAffectedTargets`, `DmgClass`, `PreventionType`, `DmgMultiplier1`, `DmgMultiplier2`, `DmgMultiplier3`, `AreaGroupId`, `SchoolMask`, `Comment`) VALUES (61988, 0, 0, 0x28000180, 0x10000400, 0x4, 0x10100000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 9, 13, 0, '-1', 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Divine Shield Exclude Aura - 61988');



-- ------------- --
-- TrinityScript --
-- ------------- --

-- 7373_world_scriptname.sql
UPDATE `creature_template` SET `scriptname`='npc_trapped_mammoth_calf' WHERE `entry`=25850;
UPDATE `item_template` SET `scriptname`='item_dehta_trap_smasher' WHERE `entry`=35228;

-- 7385_world_scriptname.sql
UPDATE `gameobject_template` SET `scriptname`='go_tadpole_cage' WHERE `entry`=187373;

-- 7387_world_script_texts.sql
DELETE FROM `script_texts` WHERE `npc_entry`=26588;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(26588, -1800013, 'Thank you for helping me get back to the camp. Go tell Walter that I''m safe now!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '12027'),
(26588, -1800012, 'Are you ready, Mr. Floppy? Stay close to me and watch out for those wolves!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '12027'),
(26588, -1800011, 'The Ravenous Worg chomps down on Mr. Floppy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, '12027'),
(26588, -1800010, 'Mr. Floppy revives', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, '12027'),
(26588, -1800009, 'I think I see the camp! We''re almost home, Mr. Floppy! Let''s go!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '12027'),
(26588, -1800008, 'Mr. Floppy, you''re ok! Thank you so much for saving Mr. Floppy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '12027'),
(26588, -1800007, 'Don''t go toward the light, Mr. Floppy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '12027'),
(26588, -1800006, 'Let''s get out of here before more wolves find us!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '12027'),
(26588, -1800005, 'There''s a big meanie attacking Mr. Floppy! Help! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '12027'),
(26588, -1800004, 'He''s gonna eat Mr. Floppy! You gotta help Mr. Floppy! You just gotta!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '12027'),
(26588, -1800003, 'Oh, no! Look, it''s another wolf, and it''s a biiiiiig one!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '12027'),
(26588, -1800002, 'He''s going for Mr. Floppy! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '12027'),
(26588, -1800001, 'Um... I think one of those wolves is back...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '12027');

-- 7387_world_script_waypoints.sql
DELETE FROM `script_waypoint` WHERE `entry`=26588;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES
(26588, 1, 4333.18, -3688.4, 263.857, 0, '0'),
(26588, 2, 4341.38, -3683.77, 257.422, 0, '0'),
(26588, 3, 4342.67, -3683.21, 257.218, 0, '0'),
(26588, 4, 4346.22, -3688.72, 257.065, 0, '0'),
(26588, 5, 4343.8, -3695.27, 257.124, 0, '0'),
(26588, 6, 4337.74, -3707.2, 257.628, 0, '0'),
(26588, 7, 4317.58, -3722.8, 256.941, 0, '0'),
(26588, 8, 4306.64, -3736.46, 258.304, 0, '0'),
(26588, 9, 4299.96, -3760.02, 254.959, 0, '0'),
(26588, 10, 4294.21, -3777.34, 249.139, 1000, '0'),
(26588, 11, 4294.37, -3776.97, 249.259, 10000, '0'),
(26588, 12, 4300.22, -3794.61, 240.107, 2000, '0'),
(26588, 13, 4307.25, -3817.76, 231.414, 2000, '0'),
(26588, 14, 4326.31, -3883.31, 208.457, 2000, '0'),
(26588, 15, 4346.19, -3905.41, 198.805, 2000, '0'),
(26588, 16, 4347.39, -3916.43, 196.716, 5000, '0'),
(26588, 17, 4350.17, -3935.03, 191.824, 1000, '0'),
(26588, 18, 4347.24, -3939.54, 191.445, 2000, '0'),
(26588, 19, 4347.24, -3939.54, 191.445, 2000, '0'),
(26588, 20, 4347.24, -3939.54, 191.445, 5000, '0'),
(26588, 21, 4347.24, -3939.54, 191.445, 7000, '0'),
(26588, 22, 4347.24, -3939.54, 191.445, 5000, '0'),
(26588, 23, 4347.24, -3939.54, 191.445, 5000, '0'),
(26588, 24, 4347.24, -3939.54, 191.445, 0, '0'),
(26588, 25, 4353.72, -3965.61, 190.154, 0, '0'),
(26588, 26, 4363.12, -3995.61, 183.327, 0, '0'),
(26588, 27, 4371.99, -4010.97, 181.33, 0, '0');

-- 7387_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName` = 'npc_emily' WHERE `entry`=26588;
UPDATE `creature_template` SET `ScriptName` = 'npc_mrfloppy' WHERE `entry`=26589;

-- 7390_world_scriptname.sql
UPDATE `gameobject_template` SET `ScriptName`='go_gong' WHERE `entry`=148917;
UPDATE `creature_template` SET `ScriptName`='npc_tomb_creature' WHERE `entry` IN (7351,7349);
UPDATE `instance_template` SET `script`='instance_razorfen_downs' WHERE `map`=129;

-- 7406_world_scriptname.sql
UPDATE `gameobject_template` SET `ScriptName`='go_dragonflayer_cage' WHERE entry IN (186566,186567,186568,186569,186570,186571,186572,186573,186574,186575);

-- 7410_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_lazy_peon' WHERE `entry`=10556;

-- 7421_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_magmoth_crusher' WHERE `entry`=25434;

-- 7422_world_scriptname.sql
UPDATE `gameobject_template` SET `ScriptName`='go_black_cage' WHERE `entry`=195310;

-- 7423_world_areatrigger_scripts.sql
-- delete naxxramas areatrigger to get to frostwyrm wing (no longer needed in 3.3.2)
DELETE FROM areatrigger_scripts WHERE `entry`=4156;

-- 7436_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_dame_evniki_kapsalis' WHERE `entry`=34885;

-- 7437_world_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` IN (-1571036,-1571037,-1571038);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`type`,`language`,`comment`) VALUES
(28090,-1571036, 'We''ll cleanse this place! Arthas beware!',0,0, 'crusade recruit RECRUIT_SAY1'),
(28090,-1571037, 'Your''re right! We can do this!',0,0, 'crusade recruit RECRUIT_SAY2'),
(28090,-1571038, 'Your''re right! What was I thinking? Bring on the Scourge!',0,0, 'crusade recruit RECRUIT_SAY3');

-- 7437_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_crusade_recruit' WHERE `entry`=28090;

-- 7441_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_squire_david' WHERE `entry`=33447;
UPDATE `creature_template` SET `ScriptName`='npc_argent_valiant' WHERE `entry`=33448;
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry`=33518;

-- 7446_world_areatrigger_scripts.sql
-- areatrigger for Kelthuzad chamber center
DELETE FROM `areatrigger_scripts` WHERE `entry`=4112;
INSERT INTO `areatrigger_scripts`(`entry`,`ScriptName`) VALUES(4112,'at_kelthuzad_center');

-- 7464_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_warmage_violetstand' WHERE `entry` IN (32369,32371,32372);

-- 7500_world_scriptname.sql
UPDATE `gameobject_template` SET `ScriptName`= 'go_amberpine_outhouse' WHERE `entry`=188666;
UPDATE `creature_template` SET `ScriptName`= 'npc_outhouse_bunny' WHERE `entry`=27326;
