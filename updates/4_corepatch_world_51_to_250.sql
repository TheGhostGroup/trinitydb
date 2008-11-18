-- World SQL file:  54_world.sql

CREATE TABLE `game_event_battleground_holiday` (
 `event` int(10) unsigned NOT NULL,
 `bgflag` int(10) unsigned NOT NULL default '0',
 PRIMARY KEY  (`event`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- World SQL file:  57_world_scripts.sql

/*sql for zulaman*/
UPDATE `creature_template` SET `ScriptName` = 'boss_nalorakk' WHERE `entry` = 23576;
UPDATE `creature_template` SET `flags_extra` = 33 WHERE `entry` = 23576; /*no crush*/

UPDATE `creature_template` set `ScriptName` = 'boss_akilzon' where entry = 23574;
UPDATE `creature_template` set `ScriptName` = 'mob_akilzon_eagle' where `entry`=24858; /*default is event ai*/

UPDATE `creature_template` SET `ScriptName` = 'boss_halazzi' WHERE `entry` = '23577';
UPDATE `creature_template` SET `ScriptName` = 'mob_halazzi_lynx' WHERE `entry` = '24143';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` = '24224'; /*totem default `spell1` = '43301' should be in DB*/

UPDATE `creature_template` SET `ScriptName` = 'boss_janalai' WHERE `entry` = '23578';
UPDATE `creature_template` SET `ScriptName` = 'mob_janalai_hatcher' WHERE `entry` = '23818';
UPDATE `creature_template` SET `ScriptName` = 'mob_janalai_hatchling' WHERE `entry` = '23598';
UPDATE `creature_template` SET `ScriptName` = 'mob_janalai_egg' WHERE `entry` = '23817';
UPDATE `creature_template` SET `ScriptName` = 'mob_janalai_firebomb' WHERE `entry` = '23920';

UPDATE `creature_template` SET `ScriptName` = 'boss_hexlord_malacrass' WHERE `entry` =24239;
UPDATE `creature_template` SET `ScriptName` = 'boss_alyson_antille' WHERE `entry` =24240;
UPDATE `creature_template` SET `ScriptName` = 'boss_thurg' WHERE `entry` =24241;
UPDATE `creature_template` SET `ScriptName` = 'boss_slither' WHERE `entry` =24242;
UPDATE `creature_template` SET `ScriptName` = 'boss_lord_raadan' WHERE `entry` =24243;
UPDATE `creature_template` SET `ScriptName` = 'boss_gazakroth' WHERE `entry` =24244;
UPDATE `creature_template` SET `ScriptName` = 'boss_fenstalker' WHERE `entry` =24245;
UPDATE `creature_template` SET `ScriptName` = 'boss_darkheart' WHERE `entry` =24246;
UPDATE `creature_template` SET `ScriptName` = 'boss_koragg' WHERE `entry` =24247;
UPDATE `creature` SET `position_x` = '117.8827',`position_y` = '921.2795',`position_z` = '33.8883',`orientation` = '1.5696' WHERE `id` = '24239' LIMIT 1;
UPDATE `creature_template` SET `faction_A` = '1890', `faction_H` = '1890' WHERE `entry` in ('24240', '24241', '24242', '24243', '24244', '24245', '24246', '24247');

UPDATE `creature_template` SET `ScriptName` = 'boss_zuljin' WHERE `entry` =23863;
UPDATE `creature_template` SET `ScriptName` = 'do_nothing' WHERE `entry` = '24187';
UPDATE `creature_template` SET `ScriptName` = 'mob_zuljin_vortex' WHERE `entry` = '24136';
UPDATE `creature_template` SET `minlevel` = '73', `maxlevel` = '73' WHERE `entry` IN (24187, 24136);
DELETE FROM `spell_proc_event` WHERE `entry` = 43983;
INSERT INTO `spell_proc_event` VALUES ('43983', '0', '0', '0', '0', '0', '16384', '0', '0');
DELETE FROM `spell_script_target` WHERE `entry` = 42577;
INSERT INTO `spell_script_target` VALUES ('42577', '1', '24136');

UPDATE `creature_template` SET `ScriptName` = 'npc_zulaman_hostage' WHERE `entry` IN (23790, 23999, 24024, 24001);
-- World SQL file:  66_world_scripts.sql

update instance_template set script = 'instance_sunwell_plateau' where map = 580;
UPDATE creature_template SET ScriptName = 'boss_brutallus' WHERE entry = 24882;
UPDATE `creature_template` SET `ScriptName` = 'boss_felmyst' WHERE `entry` = 25038;
UPDATE `creature_template` SET `ScriptName` = 'mob_felmyst_vapor' WHERE `entry` = 25265;
UPDATE `creature_template` SET `ScriptName` = 'mob_felmyst_trail' WHERE `entry` = 25267;
update creature_template set scriptname = 'boss_sacrolash' where entry = 25165;
update creature_template set scriptname = 'boss_alythess' where entry = 25166;
update creature_template set scriptname = 'mob_shadow_image' where entry = 25214;
REPLACE INTO `gameobject_template` VALUES (187366, 6, 4251, 'Blaze', '', 14, 0, 1, 0, 73, 2, 45246, 0, 1, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE creature_template SET faction_H = 14, faction_A = 14, minlevel = 73, maxlevel = 73,rank = 3, flags = 33554434, flag1 = 0 WHERE entry = 25214;
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70',`faction_A` = '14', `faction_H` = '14' WHERE `entry` in (25265,25267,25268);
UPDATE `creature_template` SET `mindmg` = '1500', `maxdmg` = '2500', `minhealth` = '40000', `maxhealth` = '40000', `baseattacktime` = '2000' WHERE `entry` = 25268;
DELETE FROM `spell_script_target` WHERE `entry` in (44885,45388,45389,46350,45714);
INSERT INTO `spell_script_target` VALUES ('45388', '1', '25038');
INSERT INTO `spell_script_target` VALUES ('45389', '1', '25265');
INSERT INTO `spell_script_target` VALUES ('44885', '1', '25160');
INSERT INTO `spell_script_target` VALUES ('46350', '1', '25160');
INSERT INTO `spell_script_target` VALUES ('45714', '1', '25038');
-- World SQL file:  68_world.sql

-- add lang strings
DELETE FROM trinity_string WHERE entry BETWEEN 1000 AND 1006;
INSERT INTO trinity_string VALUES
(1000,'You froze player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1001,'It might be amusing but no... you cant freeze yourself!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1002,'Invalid input check the name of target.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1003,'You unfroze player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1004,'There are no frozen players.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1005,'Following players are frozen on the server:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1006,'- %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- add commands
DELETE FROM `command` WHERE `name` = 'freeze' or `name` = 'unfreeze' or name = 'listfreeze';
INSERT INTO `command` (`name`,`security`,`help`) VALUES ('freeze','2','Syntax: .freeze (#player)\r\n\"Freezes\" #player and disables his chat. When using this without #name it will freeze your target.');
INSERT INTO `command` (`name`,`security`,`help`) VALUES ('unfreeze','2','Syntax: .unfreeze (#player)\r\n\"Unfreezes\" #player and enables his chat again. When using this without #name it will unfreeze your target.');
INSERT INTO `command` (`name`,`security`,`help`) VALUES ('listfreeze','1','Syntax: .listfreeze\r\n\r\nSearch and output all frozen players.');
-- World SQL file:  70_world_scripts.sql

UPDATE `creature_template` SET
`minlevel` = '60',
`maxlevel` = '60',
`minhealth` = '6900',
`maxhealth` = '7200',
`minmana` = '9476',
`maxmana` = '9736',
`armor` = '4000',
`speed` = '1.7',
`rank` = '1',
`mindmg` = '600',
`maxdmg` = '1500',
`attackpower` = '1200',
`family` = '16',
`minrangedmg` = '0',
`maxrangedmg` = '0',
`rangedattackpower` = '0',
`resistance1` = '15',
`resistance2` = '15',
`resistance3` = '15',
`resistance4` = '15',
`resistance5` = '15',
`resistance6` = '15',
`ScriptName` = 'npc_kservant' WHERE `entry` = '19685';

DELETE FROM `quest_start_scripts` WHERE `id`='10211';
UPDATE `quest_template` SET `StartScript`='0' WHERE entry=10211;
-- World SQL file:  78_world.sql

DELETE FROM spell_affect WHERE entry IN (30017,30280,44373) AND effectId = 0;
INSERT INTO spell_affect (entry, effectId, SpellFamilyMask) VALUES
(30017,0,0x0000000000000000),
(30280,0,0x0000000000000000),
(44373,0,0x0000000000000000);

DELETE FROM spell_affect WHERE entry IN (34520,37508) AND effectId = 1;
INSERT INTO spell_affect (entry, effectId, SpellFamilyMask) VALUES
(34520,1,0x0000000000000000),
(37508,1,0x0000000000000000);

DELETE FROM spell_proc_event WHERE entry IN (34139,42368,43726,46092);
INSERT INTO spell_proc_event (entry, SchoolMask, Category, SkillID, SpellFamilyName, SpellFamilyMask, procFlags, ppmRate, cooldown) VALUES
(34139,0,0,0,10,0x0000000040000000,0x08000000,0,0),
(42368,0,0,0,10,0x0000000040000000,0x08000000,0,0),
(43726,0,0,0,10,0x0000000040000000,0x08000000,0,0),
(46092,0,0,0,10,0x0000000040000000,0x08000000,0,0);

DELETE FROM spell_proc_event where entry IN (34598, 34584, 36488);
INSERT INTO spell_proc_event (entry, SchoolMask, Category, SkillID, SpellFamilyName, SpellFamilyMask, procFlags, ppmRate, cooldown) VALUES
(34598,0,0,0,0,0x0000000000000000,0x00020000,0,45),
(36488,0,0,0,0,0x0000000000000000,0x08000000,0,0),
(34584,0,0,0,0,0x0000000000000000,0x00004000,0,30);

-- World SQL file:  79_world.sql

DELETE FROM spell_proc_event where entry = 42083;
INSERT INTO spell_proc_event (entry, SchoolMask, Category, SkillID, SpellFamilyName, SpellFamilyMask, procFlags, ppmRate, cooldown) VALUES
(42083,0,0,0,0,0x0000000000000000,0x00401000,0,45);
-- World SQL file:  82_world_scripts.sql

UPDATE `creature_template` SET `ScriptName` = 'npc_twiggy_flathead' WHERE `entry` =6248;
-- World SQL file:  84_world.sql

DELETE FROM command WHERE name = 'reload all_locales';
INSERT INTO `command` VALUES
('reload all_locales',3,'Syntax: .reload all_locales\r\n\r\nReload all `locales_*` tables with reload support added and that can be _safe_ reloaded.');

-- World SQL file:  86_world_scripts.sql

update `creature_template` set `ScriptName`='boss_alar' where `entry`='19514';
update `creature_template` set `ScriptName`='mob_ember_of_alar' where `entry`='19551';
update `creature_template` set `ScriptName`='mob_flame_patch_alar' where `entry`='20602';

update gameobject_template set scriptname = "go_manticron_cube" where entry = 181713;
update creature_template set scriptname = "mob_abyssal" where entry = 17454;
-- World SQL file:  90_world.sql

DROP TABLE IF EXISTS `spell_disabled`;
CREATE TABLE `spell_disabled` (
  `entry` int(11) unsigned NOT NULL default '0' COMMENT 'Spell entry',
  `disable_mask` int(8) unsigned NOT NULL default '0',
  `comment` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Disabled Spell System';

-- World SQL file:  102_world.sql

ALTER TABLE `quest_template`
    ADD `RewHonorableKills` mediumint(9) unsigned NOT NULL default '0' AFTER `RewRepValue5`;

-- World SQL file:  112_world_scripts.sql

UPDATE `item_template` SET `ScriptName`='item_arcane_charges' WHERE `entry`='34475';
UPDATE gameobject_template SET faction = 14 WHERE entry = 185134;
-- World SQL file:  116_world.sql

INSERT INTO `spell_script_target` VALUES ('30531', '1', '17256');
INSERT INTO `spell_script_target` VALUES ('41455', '1', '22949');
INSERT INTO `spell_script_target` VALUES ('41455', '1', '22950');
INSERT INTO `spell_script_target` VALUES ('41455', '1', '22951');
INSERT INTO `spell_script_target` VALUES ('41455', '1', '22952');
INSERT INTO `spell_script_target` VALUES ('42471', '1', '23817');
INSERT INTO `spell_script_target` VALUES ('43734', '1', '23817');
INSERT INTO `spell_script_target` VALUES ('42631', '1', '23920');
-- World SQL file:  117_world_scripts.sql

-- 
-- NOTE: If you have temporary stored data in table `eventai_localized_texts` make sure to make backup of this before running this update!
-- NOTE: If you have any texts in current eventai_texts and they are not using entries valid for *_texts table, you _will_ get error messages on startup.
-- NOTE: Do not run this update twice, it may create bad data if you choose to do so.
-- 

-- drop obsolete table
DROP TABLE eventai_localized_texts;

-- alter and add fields in table `eventai_texts`
ALTER TABLE eventai_texts CHANGE COLUMN `id` `entry` mediumint(8) NOT NULL;
ALTER TABLE eventai_texts CHANGE COLUMN `text` `content_default` text NOT NULL AFTER `entry`;
ALTER TABLE eventai_texts ADD COLUMN `content_loc1` text AFTER `content_default`;
ALTER TABLE eventai_texts ADD COLUMN `content_loc2` text AFTER `content_loc1`;
ALTER TABLE eventai_texts ADD COLUMN `content_loc3` text AFTER `content_loc2`;
ALTER TABLE eventai_texts ADD COLUMN `content_loc4` text AFTER `content_loc3`;
ALTER TABLE eventai_texts ADD COLUMN `content_loc5` text AFTER `content_loc4`;
ALTER TABLE eventai_texts ADD COLUMN `content_loc6` text AFTER `content_loc5`;
ALTER TABLE eventai_texts ADD COLUMN `content_loc7` text AFTER `content_loc6`;
ALTER TABLE eventai_texts ADD COLUMN `content_loc8` text AFTER `content_loc7`;
ALTER TABLE eventai_texts ADD COLUMN `sound` mediumint(8) unsigned NOT NULL default '0' AFTER `content_loc8`;
ALTER TABLE eventai_texts ADD COLUMN `type` tinyint unsigned NOT NULL default '0' AFTER `sound`;
ALTER TABLE eventai_texts ADD COLUMN `language` tinyint unsigned NOT NULL default '0' AFTER `type`;
ALTER TABLE eventai_texts MODIFY COLUMN `comment` text;

-- get our current action type, and update text type = yell
UPDATE eventai_texts,eventai_scripts SET eventai_texts.type=1 WHERE eventai_scripts.action1_type IN (2,7) AND eventai_scripts.action1_param1=eventai_texts.entry;
UPDATE eventai_texts,eventai_scripts SET eventai_texts.type=1 WHERE eventai_scripts.action2_type IN (2,7) AND eventai_scripts.action2_param1=eventai_texts.entry;
UPDATE eventai_texts,eventai_scripts SET eventai_texts.type=1 WHERE eventai_scripts.action3_type IN (2,7) AND eventai_scripts.action3_param1=eventai_texts.entry;
-- get our current action type, and update text type = textemote
UPDATE eventai_texts,eventai_scripts SET eventai_texts.type=2 WHERE eventai_scripts.action1_type IN (3,8) AND eventai_scripts.action1_param1=eventai_texts.entry;
UPDATE eventai_texts,eventai_scripts SET eventai_texts.type=2 WHERE eventai_scripts.action2_type IN (3,8) AND eventai_scripts.action2_param1=eventai_texts.entry;
UPDATE eventai_texts,eventai_scripts SET eventai_texts.type=2 WHERE eventai_scripts.action3_type IN (3,8) AND eventai_scripts.action3_param1=eventai_texts.entry;

-- update our scripts, for all action type 2, 3, 6, 7 & 8 to become 1
UPDATE eventai_scripts SET action1_type=1 WHERE action1_type IN (2,3,6,7,8);
UPDATE eventai_scripts SET action2_type=1 WHERE action2_type IN (2,3,6,7,8);
UPDATE eventai_scripts SET action3_type=1 WHERE action3_type IN (2,3,6,7,8);

-- was OOC, so at least one could be -1, set this to 0 (dev note: below will be bad, if run twice)
UPDATE eventai_scripts SET action1_param2=0 WHERE action1_type=1 AND action1_param2=-1;
UPDATE eventai_scripts SET action1_param3=0 WHERE action1_type=1 AND action1_param3=-1;
UPDATE eventai_scripts SET action2_param2=0 WHERE action2_type=1 AND action2_param2=-1;
UPDATE eventai_scripts SET action2_param3=0 WHERE action2_type=1 AND action2_param3=-1;
UPDATE eventai_scripts SET action3_param2=0 WHERE action3_type=1 AND action3_param2=-1;
UPDATE eventai_scripts SET action3_param3=0 WHERE action3_type=1 AND action3_param3=-1;

-- expect all to be action type 1 now, continue convert to negative text entry
UPDATE eventai_scripts SET action1_param1=(`action1_param1`) *-1 WHERE action1_type=1 AND action1_param1>0;
UPDATE eventai_scripts SET action2_param1=(`action2_param1`) *-1 WHERE action2_type=1 AND action2_param1>0;
UPDATE eventai_scripts SET action3_param1=(`action3_param1`) *-1 WHERE action3_type=1 AND action3_param1>0;

UPDATE eventai_scripts SET action1_param2=(`action1_param2`) *-1 WHERE action1_type=1 AND action1_param2>0;
UPDATE eventai_scripts SET action2_param2=(`action2_param2`) *-1 WHERE action2_type=1 AND action2_param2>0;
UPDATE eventai_scripts SET action3_param2=(`action3_param2`) *-1 WHERE action3_type=1 AND action3_param2>0;

UPDATE eventai_scripts SET action1_param3=(`action1_param3`) *-1 WHERE action1_type=1 AND action1_param3>0;
UPDATE eventai_scripts SET action2_param3=(`action2_param3`) *-1 WHERE action2_type=1 AND action2_param3>0;
UPDATE eventai_scripts SET action3_param3=(`action3_param3`) *-1 WHERE action3_type=1 AND action3_param3>0;

-- now we have negative numbers in script, must make sure text entries have same entry as script
UPDATE eventai_texts SET entry=(`entry`) *-1 WHERE entry>0;

ALTER TABLE script_texts MODIFY COLUMN `sound` mediumint(8) unsigned NOT NULL default '0';

-- World SQL file:  120_world.sql

-- Add/Edit/Move lang strings
DELETE FROM `trinity_string` WHERE `entry` IN (25,52,54,55,56,171,401,413,438,593,594,595,596,597,598,599,614,615,636,637,638,809,1000,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1100,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118);
DELETE FROM `trinity_string` WHERE `entry` BETWEEN '667' AND '687';
DELETE FROM `trinity_string` WHERE `entry` BETWEEN '711' AND '716';
DELETE FROM `trinity_string` WHERE `entry` BETWEEN '730' AND '747';
DELETE FROM `trinity_string` WHERE `entry` BETWEEN '5000' AND '5006';
INSERT INTO trinity_string VALUES
('25','Password not changed (unknown error)!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('52', 'Invaid item count (%u) for item %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('54','The new passwords do not match',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('55','Your password can\'t be longer than 16 characters (client limit), password not changed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('56','Current Message of the day: \r\n%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(171,'You are being teleported by server console command.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(401,'You change security level of account %s to %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(413,'Account not exist: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(438,'Found items %u: %u ( inventory %u mail %u auction %u guild %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(593,'Currently Banned Accounts:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(594,'|    Account    |   BanDate    |   UnbanDate  |  Banned By    |   Ban Reason  |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(595,'Currently Banned IPs:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(596,'|      IP       |   BanDate    |   UnbanDate  |  Banned By    |   Ban Reason  |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(597,'Current gamemasters:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(598,'|    Account    |  GM  |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(599,'No gamemasters.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('614', 'The Alliance flag has been respawned!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('615', 'The Horde flag has been respawned!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('636', 'The Battle for Eye of the Storm begins in 1 minute.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('637', 'The Battle for Eye of the Storm begins in 30 seconds.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('638', 'The Battle for Eye of the Storm has begun!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('667', 'The Alliance has taken control of the Mage Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('668', 'The Horde has taken control of the Mage Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('669', 'The Alliance has taken control of the Draenei Ruins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('670', 'The Horde has taken control of the Draenei Ruins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('671', 'The Alliance has taken control of the Blood Elf Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('672', 'The Horde has taken control of the Blood Elf Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('673', 'The Alliance has taken control of the Fel Reaver Ruins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('674', 'The Horde has taken control of the Fel Reaver Ruins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('675', 'The Alliance has lost control of the Mage Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('676', 'The Horde has lost control of the Mage Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('677', 'The Alliance has lost control of the Draenei Ruins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('678', 'The Horde has lost control of the Draenei Ruins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('679', 'The Alliance has lost control of the Blood Elf Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('680', 'The Horde has lost control of the Blood Elf Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('681', 'The Alliance has lost control of the Fel Reaver Ruins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('682', 'The Horde has lost control of the Fel Reaver Ruins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('683', '$N has taken the flag!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('684', 'The Alliance has captured the flag!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('685', 'The Horde has captured the flag!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('686', 'The Flag has been dropped!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('687', 'The flag has been reset', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('711', 'Your group is too large for this battleground. Please regroup to join.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('712', 'Your group is too large for this arena. Please regroup to join.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('713', 'You must be level %u to join an arena team!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('714', '%s is not high enough level to join your team', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('715', 'You don\'t meet Battleground level requirements', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('716', 'Your arena team is full, %s cannot join it.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('730', 'Your group has members not in your arena team. Please regroup to join.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('731', 'Your group does not have enough players to join this match.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('732', 'The Gold Team wins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('733', 'The Green Team wins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('734', 'There aren\'t enough players in this battleground. It will end soon unless some more players join to balance the fight.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('735', 'Your group has an offline member. Please remove him before joining.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('736', 'Your group has players from the opposing faction. You can\'t join the battleground as a group.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('737', 'Your group has players from different battleground brakets. You can\'t join as group.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('738', 'Someone in your party is already in this battleground queue. (S)he must leave it before joining as group.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('739', 'Someone in your party is Deserter. You can\'t join as group.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('740', 'Someone in your party is already in three battleground queues. You cannot join as group.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('741', 'You cannot teleport to a battleground or arena map.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('742', 'You cannot summon players to a battleground or arena map.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('743', 'You must be in GM mode to teleport to a player in a battleground.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('744', 'You cannot teleport to a battleground from another battleground. Please leave the current battleground first.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('745', 'Arena testing turned %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('746','|cffff0000[Automatic]:|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('747','|cffffff00[|c1f40af20Announce by|r |cffff0000%s|cffffff00]:|r %s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('809','Account for character %s not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1000','Exiting daemon...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1001','Account deleted: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1002','Account %s NOT deleted (probably sql file format was updated)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1003','Account %s NOT deleted (unknown error)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1004','Account created: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1005','Account name can\'t be longer than 16 characters (client limit), account not created!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1006,'Account with this name already exist!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1007,'Account %s NOT created (probably sql file format was updated)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1008,'Account %s NOT created (unknown error)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1009,'Player %s (Guid: %u) Account %s (Id: %u) deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1010,'|    Account    |       Character      |       IP        | GM | TBC |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1011,'|<Error>        | %20s |<Error>          |<Er>|<Err>|',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1100,'Account %s (Id: %u) have up to %u expansion allowed now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1101,'Message of the day changed to:\r\n%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1102,'Message sent to %s: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1103,'%d - %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1104,'%d - %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1105,'%d - %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1106,'%d - %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1107,'%d - %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1108,'%d - %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1109,'%d - %s %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1110,'%d - %s X:%f Y:%f Z:%f MapId:%d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1111,'%d - %s X:%f Y:%f Z:%f MapId:%d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1112,'Failed to open file: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1113,'Account %s (%u) have max amount allowed characters (client limit)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1114,'Dump file has broken data!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1115,'Invalid character name!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1116,'Invalid character guid!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1117,'Character guid %u in use!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1118,'%d - guild: %s (guid: %u) %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(5000,'You froze player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(5001,'It might be amusing but no... you cant freeze yourself!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(5002,'Invalid input check the name of target.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(5003,'You unfroze player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(5004,'There are no frozen players.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(5005,'Following players are frozen on the server:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(5006,'- %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);


-- cleanup command syntax
DELETE FROM command WHERE name IN (
  'gm ingame','gm online',
  'ban','ban account','ban character','ban ip',
  'baninfo','baninfo account','baninfo character','baninfo ip','pdump load',
  'banlist','banlist account','banlist character','banlist ip','help','transport',
  'unban','unban account','unban character','unban ip','list item','pdump write',
  'acct','account','account create','account delete','account onlinelist',
  'account set addon','account set gmlevel','account set password',
  'chardelete','gm list','gm online','sendmessage','server corpses','server exit','server motd',
  'server set loglevel','server set motd','security'

);

INSERT INTO command VALUES
('gm ingame',0,'Syntax: .gm ingame\r\n\r\nDisplay a list of available in game Game Masters.'),
('ban account',3,'Syntax is: ban account $Name $bantime $reason\r\nBan account kick player.\r\n$bantime: negative value leads to permban, otherwise use a timestring like \"4d20h3s\".'),
('ban character',3,'Syntax is: ban character $Name $bantime $reason\r\nBan account and kick player.\r\n$bantime: negative value leads to permban, otherwise use a timestring like \"4d20h3s\".'),
('ban ip',3,'Syntax is: ban ip $Ip $bantime $reason\r\nBan IP.\r\n$bantime: negative value leads to permban, otherwise use a timestring like \"4d20h3s\".'),
('baninfo account',3,'Syntax is: baninfo account\r\nWatch full information about a specific ban.'),
('baninfo character',3,'Syntax is: baninfo character\r\nWatch full information about a specific ban.'),
('baninfo ip',3,'Syntax is: baninfo ip\r\nWatch full information about a specific ban.'),
('banlist account',3,'Syntax is: banlist account [$Name]\r\nSearches the banlist for a account name pattern or show full list account bans.'),
('banlist character',3,'Syntax is: banlist character $Name\r\nSearches the banlist for a character name pattern. Pattern required.'),
('banlist ip',3,'Syntax is: banlist ip [$Ip]\r\nSearches the banlist for a IP pattern or show full list of IP bans.'),
('unban account',3,'Syntax is: unban account $Name\r\nUnban accounts for account name pattern.'),
('unban character',3,'Syntax is: unban character $Name\r\nUnban accounts for character name pattern.'),
('unban ip',3,'Syntax is: unban ip $Ip\r\nUnban accounts for IP pattern.'),
('pdump write',3,'Syntax is: pdump write $filename $playerNameOrGUID\r\nWrite character dump with name/guid $playerNameOrGUID to file $filename.'),
('pdump load',3,'Syntax is: pdump load $filename $account [$newname] [$newguid]\r\nLoad character dump from dump file into character list of $account with saved or $newname, with saved (or first free) or $newguid guid.'),
('list item',3,'Syntax: .list item #item_id [#max_count]\r\n\r\nOutput items with item id #item_id found in all character inventories, mails, auctions, and guild banks. Output item guids, item owner guid, owner account and owner name (guild name and guid in case guild bank). Will be output maximum #max_count items. If #max_count not provided use 10 as default value.'),
('help',0,'Syntax: .help [$command]\r\n\r\nDisplay usage instructions for the given $command. If no $command provided show list available commands.'),
('account',0,'Syntax: .account\r\n\r\nDisplay the access level of your account.'),
('account create',4,'Syntax: .account create $account $password\r\n\r\nCreate account and set password to it.'),
('account delete',4,'Syntax: .account delete $account\r\n\r\nDelete account with all characters.'),
('account onlinelist',4,'Syntax: .account onlinelist\r\n\r\nShow list of online accounts.'),
('account set addon',3,'Syntax: .account set addon [$account] #addon\r\n\r\nSet user (posible targeted) expansion addon level allowed. Addon values: 0 - normal, 1 - tbc, 2 - wotlk.'),
('account set gmlevel',4,'Syntax: .account set gmlevel [$account] #level\r\n\r\nSet the security level for targeted player (can''t be used at self) or for account $name to a level of #level.\r\n\r\n#level may range from 0 to 3.'),
('account set password',4,'Syntax: .account set password $account $password $password\r\n\r\nSet password for account.'),
('chardelete',4,'Syntax: .chardelete $charactername\r\n\r\nDelete character.'),
('gm list',3,'Syntax: .gm list\r\n\r\nDisplay a list of all Game Masters accounts and security levels.'),
('gm online',0,'Syntax: .gm online\r\n\r\nDisplay a list of available Game Masters.'),
('sendmessage',3,'Syntax: .sendmessage $playername $message\r\n\r\nSend screen message to player from ADMINISTRATOR.'),
('server corpses',2,'Syntax: .server corpses\r\n\r\nTriggering corpses expire check in world.'),
('server exit',4,'Syntax: .server exit\r\n\r\nTerminate Trinity NOW.'),
('server motd',0,'Syntax: .server motd\r\n\r\nShow server Message of the day.'),
('server set loglevel',4,'Syntax: .server set loglevel #level\r\n\r\nSet server log level (0 - errors only, 1 - basic, 2 - detail, 3 - debug).'),
('server set motd',3,'Syntax: .server set motd $MOTD\r\n\r\nSet server Message of the day.');
-- World SQL file:  123_world_scripts.sql

-- 
-- trinity_script_texts.sql Contains data for table `script_texts` mainly used in C++ parts.
-- valid entries for table are between -1000000 and -1999999
-- 

TRUNCATE `script_texts`;

-- 
-- -1 000 000 First 100 entries are reserved for special use, do not add regular text here.
-- 

INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1000000,'<TrinityScript Text Entry Missing!>',0,0,0,'DEFAULT_TEXT');

-- 
-- Normal text entries. Say/Yell/Whisper/Emote for any regular world object.
-- 

-- -1 000 100 GENERAL MAPS (not typical instance maps)

-- -1 033 000 SHADOWFANG KEEP

-- -1 034 000 STOCKADES

-- -1 036 000 DEADMINES

-- -1 043 000 WAILING CAVERNS

-- -1 047 000 RAZORFEN KRAUL

-- -1 048 000 BLACKFATHOM DEEPS

-- -1 070 000 ULDAMAN

-- -1 090 000 GNOMEREGAN

-- -1 109 000 SUNKEN TEMPLE

-- -1 129 000 RAZORFEN DOWNS

-- -1 189 000 SCARLET MONASTERY

-- -1 209 000 ZUL'FARRAK

-- -1 229 000 BLACKROCK SPIRE

-- -1 230 000 BLACKROCK DEPTHS

-- -1 249 000 ONYXIA'S LAIR

-- -1 269 000 OPENING OF THE DARK PORTAL (BLACK MORASS)

-- -1 289 000 SCHOLOMANCE

-- -1 309 000 ZUL'GURUB

-- -1 329 000 STRATHOLME

-- -1 349 000 MARAUDON

-- -1 389 000 RAGEFIRE CHASM

-- -1 409 000 MOLTEN CORE

-- -1 429 000 DIRE MAUL

-- -1 469 000 BLACKWING LAIR

-- -1 509 000 RUINS OF AHN'QIRAJ

-- -1 531 000 TEMPLE OF AHN'QIRAJ

-- -1 532 000 KARAZHAN

-- -1 533 000 NAXXRAMAS

-- -1 534 000 THE BATTLE OF MT. HYJAL

-- -1 540 000 SHATTERED HALLS

-- -1 542 000 BLOOD FURNACE

-- -1 543 000 HELLFIRE RAMPARTS

-- -1 544 000 MAGTHERIDON'S LAIR

-- -1 545 000 THE STEAMVAULT

-- -1 546 000 THE UNDERBOG

-- -1 547 000 THE SLAVE PENS

-- -1 548 000 SERPENTSHRINE CAVERN

-- -1 550 000 THE EYE

-- -1 552 000 THE ARCATRAZ

-- -1 553 000 THE BOTANICA

-- -1 554 000 THE MECHANAR

-- -1 555 000 SHADOW LABYRINTH
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1555000,'Infidels have invaded the sanctuary! Sniveling pests...You have yet to learn the true meaning of agony!',10473,1,0,'hellmaw SAY_INTRO'),
(-1555001,'Pathetic mortals! You will pay dearly!',10475,1,0,'hellmaw SAY_AGGRO1'),
(-1555002,'I will break you!',10476,1,0,'hellmaw SAY_AGGRO2'),
(-1555003,'Finally! Something to relieve the tedium!',10477,1,0,'hellmaw SAY_AGGRO3'),
(-1555004,'Aid me, you fools, before it\'s too late!',10474,1,0,'hellmaw SAY_HELP'),
(-1555005,'Do you fear death?',10478,1,0,'hellmaw SAY_SLAY1'),
(-1555006,'This is the part I enjoy most.',10479,1,0,'hellmaw SAY_SLAY2'),
(-1555007,'Do not...grow...overconfident, mortal.',10480,1,0,'hellmaw SAY_DEATH'),

(-1555008,'All flesh must burn.',10482,1,0,'blackhearth SAY_INTRO1'),
(-1555009,'All creation must be unmade!',10483,1,0,'blackhearth SAY_INTRO2'),
(-1555010,'Power will be yours!',10484,1,0,'blackhearth SAY_INTRO3'),
(-1555011,'You\'ll be sorry!',10486,1,0,'blackhearth SAY_AGGRO1'),
(-1555012,'Time for fun!',10487,1,0,'blackhearth SAY_AGGRO2'),
(-1555013,'I see dead people!',10488,1,0,'blackhearth SAY_AGGRO3'),
(-1555014,'No comin\' back for you!',10489,1,0,'blackhearth SAY_SLAY1'),
(-1555015,'Nice try!',10490,1,0,'blackhearth SAY_SLAY2'),
(-1555016,'Help us, hurry!',10485,1,0,'blackhearth SAY_HELP'),
(-1555017,'This... no... good...',10491,1,0,'blackhearth SAY_DEATH'),

(-1555018,'Be ready for Dark One\'s return.',10492,1,0,'blackhearth SAY2_INTRO1'),
(-1555019,'So we have place in new universe.',10493,1,0,'blackhearth SAY2_INTRO2'),
(-1555020,'Dark one promise!',10494,1,0,'blackhearth SAY2_INTRO3'),
(-1555021,'You\'ll be sorry!',10496,1,0,'blackhearth SAY2_AGGRO1'),
(-1555022,'Time to kill!',10497,1,0,'blackhearth SAY2_AGGRO2'),
(-1555023,'You be dead people!',10498,1,0,'blackhearth SAY2_AGGRO3'),
(-1555024,'Now you gone for good.',10499,1,0,'blackhearth SAY2_SLAY1'),
(-1555025,'You failed, haha haha',10500,1,0,'blackhearth SAY2_SLAY2'),
(-1555026,'Help us, hurry!',10495,1,0,'blackhearth SAY2_HELP'),
(-1555027,'Arrgh, aah...ahhh',10501,1,0,'blackhearth SAY2_DEATH'),

(-1555028,'Keep your minds focused for the days of reckoning are close at hand. Soon, the destroyer of worlds will return to make good on his promise. Soon the destruction of all that is will begin!',10522,1,0,'vorpil SAY_INTRO'),
(-1555029,'I\'ll make an offering of your blood!',10524,1,0,'vorpil SAY_AGGRO1'),
(-1555030,'You\'ll be a fine example, for the others.',10525,1,0,'vorpil SAY_AGGRO2'),
(-1555031,'Good, a worthy sacrifice.',10526,1,0,'vorpil SAY_AGGRO3'),
(-1555032,'Come to my aid, heed your master now!',10523,1,0,'vorpil SAY_HELP'),
(-1555033,'I serve with pride.',10527,1,0,'vorpil SAY_SLAY1'),
(-1555034,'Your death is for the greater cause!',10528,1,0,'vorpil SAY_SLAY2'),
(-1555035,'I give my life... Gladly.',10529,1,0,'vorpil SAY_DEATH'),

(-1555036,'draws energy from the air.',0,2,0,'murmur EMOTE_SONIC_BOOM');

-- -1 556 000 SETHEKK HALLS
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1556000,'I have pets..<squawk>..of my own!',10502,1,0,'syth SAY_SUMMON'),
(-1556001,'Hrrmm.. Time to.. hrrm.. make my move.',10503,1,0,'syth SAY_AGGRO_1'),
(-1556002,'Nice pets..hrm.. Yes! <squawking>',10504,1,0,'syth SAY_AGGRO_2'),
(-1556003,'Nice pets have.. weapons. No so..<squawk>..nice.',10505,1,0,'syth SAY_AGGRO_3'),
(-1556004,'Death.. meeting life is.. <squawking>',10506,1,0,'syth SAY_SLAY_1'),
(-1556005,'Uhn.. Be free..<squawk>',10507,1,0,'syth SAY_SLAY_2'),
(-1556006,'No more life..hrm. No more pain. <squawks weakly>',10508,1,0,'syth SAY_DEATH'),

(-1556007,'<squawk>..Trinkets yes pretty Trinkets..<squawk>..power, great power.<squawk>..power in Trinkets..<squawk>',10557,1,0,'ikiss SAY_INTRO'),
(-1556008,'You make war on Ikiss?..<squawk>',10554,1,0,'ikiss SAY_AGGRO_1'),
(-1556009,'Ikiss cut you pretty..<squawk>..slice you. Yes!',10555,1,0,'ikiss SAY_AGGRO_2'),
(-1556010,'No escape for..<squawk>..for you',10556,1,0,'ikiss SAY_AGGRO_3'),
(-1556011,'You die..<squawk>..stay away from Trinkets',10558,1,0,'ikiss SAY_SLAY_1'),
(-1556012,'<squawk>',10559,1,0,'ikiss SAY_SLAY_2'),
(-1556013,'Ikiss will not..<squawk>..die',10560,1,0,'ikiss SAY_DEATH'),
(-1556015,'begins to channel arcane energy...',0,3,0,'ikiss EMOTE_ARCANE_EXP');

-- -1 557 000 MANA TOMBS
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1557000,'What is this? You must forgive me, but I was not expecting company. As you can see, we are somewhat preoccupied right now. But no matter. As I am a gracious host, I will tend to you... personally.',10539,1,0,'shaffar SAY_INTRO'),
(-1557001,'We have not yet been properly introduced.',10541,1,0,'shaffar SAY_AGGRO_1'),
(-1557002,'An epic battle. How exciting!',10542,1,0,'shaffar SAY_AGGRO_2'),
(-1557003,'I have longed for a good adventure.',10543,1,0,'shaffar SAY_AGGRO_3'),
(-1557004,'It has been... entertaining.',10544,1,0,'shaffar SAY_SLAY_1'),
(-1557005,'And now we part company.',10545,1,0,'shaffar SAY_SLAY_2'),
(-1557006,'I have such fascinating things to show you.',10540,1,0,'shaffar SAY_SUMMON'),
(-1557007,'I must bid you... farewell.',10546,1,0,'shaffar SAY_DEAD'),

(-1557008,'I will feed on your soul.',10561,1,0,'pandemonius SAY_AGGRO_1'),
(-1557009,'So... full of life!',10562,1,0,'pandemonius SAY_AGGRO_2'),
(-1557010,'Do not... resist.',10563,1,0,'pandemonius SAY_AGGRO_3'),
(-1557011,'Yes! I am... empowered!',10564,1,0,'pandemonius SAY_KILL_1'),
(-1557012,'More... I must have more!',10565,1,0,'pandemonius SAY_KILL_2'),
(-1557013,'To the void... once... more..',10566,1,0,'pandemonius SAY_DEATH'),
(-1557014,'shifts into the void...',0,3,0,'pandemonius EMOTE_DARK_SHELL');

-- -1 558 000 AUCHENAI CRYPTS
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1558000,'You have defiled the resting place of our ancestors. For this offense, there can be but one punishment. It is fitting that you have come to a place of the dead... for you will soon be joining them.',10509,1,0,'maladaar SAY_INTRO'),
(-1558001,'Rise my fallen brothers. Take form and fight!',10512,1,0,'maladaar SAY_SUMMON'),
(-1558002,'You will pay with your life!',10513,1,0,'maladaar SAY_AGGRO_1'),
(-1558003,'There\'s no turning back now!',10514,1,0,'maladaar SAY_AGGRO_2'),
(-1558004,'Serve your penitence!',10515,1,0,'maladaar SAY_AGGRO_3'),
(-1558005,'Let your mind be clouded.',10510,1,0,'maladaar SAY_ROAR'),
(-1558006,'Stare into the darkness of your soul.',10511,1,0,'maladaar SAY_SOUL_CLEAVE'),
(-1558007,'These walls will be your doom.',10516,1,0,'maladaar SAY_SLAY_1'),
(-1558008,'<laugh> Now, you\'ll stay for eternity!',10517,1,0,'maladaar SAY_SLAY_2'),
(-1558009,'This is... where.. I belong...',10518,1,0,'maladaar SAY_DEATH');

-- -1 560 000 ESCAPE FROM DURNHOLDE (OLD HILLSBRAD)

-- -1 564 000 BLACK TEMPLE

-- -1 565 000 GRUUL'S LAIR

-- -1 568 000 ZUL'AMAN

-- -1 580 000 SUNWELL PLATEAU

-- -1 585 000 MAGISTER'S TERRACE


-- 
-- Below just for beautiful view in table, run at own desire
-- 

-- ALTER TABLE `script_texts` ORDER BY `entry` desc;

-- World SQL file:  125_world_scripts.sql

update creature_template set speed='0.01', scriptname='mob_toxic_sporebat' WHERE entry=22140;
update creature_template SET scriptname='npc_overlord_morghor' WHERE entry=23139;
update creature_template SET scriptname='npc_lord_illidan_stormrage' WHERE entry=22083;
update creature_template SET scriptname='npc_yarzill_the_merc' WHERE entry=23141;
update quest_template SET StartScript=0 WHERE entry=11108;
-- World SQL file:  133_world_scripts.sql

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1469030 AND -1469000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1469000,'None of your kind should be here! You\'ve doomed only yourselves!',8286,1,0,'broodlord SAY_AGGRO'),
(-1469001,'Clever Mortals but I am not so easily lured away from my sanctum!',8287,1,0,'broodlord SAY_LEASH'),
(-1469002,'goes into a killing frenzy!',0,2,0,'chromaggus EMOTE_FRENZY'),
(-1469003,'flinches as its skin shimmers.',0,2,0,'chromaggus EMOTE_SHIMMER'),
(-1469004,'In this world where time is your enemy, it is my greatest ally. This grand game of life that you think you play in fact plays you. To that I say...',0,0,0,'victor_nefarius SAY_GAMESBEGIN_1'),
(-1469005,'Let the games begin!',8280,1,0,'victor_nefarius SAY_GAMESBEGIN_2'),
(-1469006,'Ah, the heroes. You are persistent, aren\'t you. Your allied attempted to match his power against mine, and had to pay the price. Now he shall serve me, by slaughtering you. Get up little red wyrm and destroy them!',8279,1,0,'victor_nefarius SAY_VAEL_INTRO'),
(-1469007,'Well done, my minions. The mortals\' courage begins to wane! Now, let\'s see how they contend with the true Lord of Blackrock Spire!',8288,1,0,'nefarian SAY_AGGRO'),
(-1469008,'Enough! Now you vermin shall feel the force of my birthright, the fury of the earth itself.',8289,1,0,'nefarian SAY_XHEALTH'),
(-1469009,'Burn, you wretches! Burn!',8290,1,0,'nefarian SAY_SHADOWFLAME'),
(-1469010,'Impossible! Rise my minions! Serve your master once more!',8291,1,0,'nefarian SAY_RAISE_SKELETONS'),
(-1469011,'Worthless $N! Your friends will join you soon enough!',8293,1,0,'nefarian SAY_SLAY'),
(-1469012,'This cannot be! I am the Master here! You mortals are nothing to my kind! DO YOU HEAR? NOTHING!',8292,1,0,'nefarian SAY_DEATH'),
(-1469013,'Mages too? You should be more careful when you play with magic...',0,1,0,'nefarian SAY_MAGE'),
(-1469014,'Warriors, I know you can hit harder than that! Let\'s see it!',0,1,0,'nefarian SAY_WARRIOR'),
(-1469015,'Druids and your silly shapeshifting. Let\'s see it in action!',0,1,0,'nefarian SAY_DRUID'),
(-1469016,'Priests! If you\'re going to keep healing like that, we might as well make it a little more interesting!',0,1,0,'nefarian SAY_PRIEST'),
(-1469017,'Paladins, I\'ve heard you have many lives. Show me.',0,1,0,'nefarian SAY_PALADIN'),
(-1469018,'Shamans, show me what your totems can do!',0,1,0,'nefarian SAY_SHAMAN'),
(-1469019,'Warlocks, you shouldn\'t be playing with magic you don\'t understand. See what happens?',0,1,0,'nefarian SAY_WARLOCK'),
(-1469020,'Hunters and your annoying pea-shooters!',0,1,0,'nefarian SAY_HUNTER'),
(-1469021,'Rogues? Stop hiding and face me!',0,1,0,'nefarian SAY_ROGUE'),
(-1469022,'You\'ll pay for forcing me to do this.',8275,1,0,'razorgore SAY_EGGS_BROKEN1'),
(-1469023,'Fools! These eggs are more precious than you know.',8276,1,0,'razorgore SAY_EGGS_BROKEN2'),
(-1469024,'No! Not another one! I\'ll have your heads for this atrocity.',8277,1,0,'razorgore SAY_EGGS_BROKEN3'),
(-1469025,'If I fall into the abyss I\'ll take all of you mortals with me...',8278,1,0,'razorgore SAY_DEATH'),
(-1469026,'Too late...friends. Nefarius\' corruption has taken hold. I cannot...control myself.',8281,1,0,'vaelastrasz SAY_LINE1'),
(-1469027,'I beg you Mortals, flee! Flee before I lose all control. The Black Fire rages within my heart. I must release it!',8282,1,0,'vaelastrasz SAY_LINE2'),
(-1469028,'FLAME! DEATH! DESTRUCTION! COWER MORTALS BEFORE THE WRATH OF LORD....NO! I MUST FIGHT THIS!',8283,1,0,'vaelastrasz SAY_LINE3'),
(-1469029,'Nefarius\' hate has made me stronger than ever before. You should have fled, while you could, mortals! The fury of Blackrock courses through my veins!',8285,1,0,'vaelastrasz SAY_HALFLIFE'),
(-1469030,'Forgive me $N, your death only adds to my failure.',8284,1,0,'vaelastrasz SAY_KILLTARGET');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1269017 AND -1269000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1269000,'Why do you persist? Surely you can see the futility of it all. It is not too late! You may still leave with your lives ...',10442,1,0,'temporus SAY_ENTER'),
(-1269001,'So be it ... you have been warned.',10444,1,0,'temporus SAY_AGGRO'),
(-1269002,'Time... sands of time is run out for you.',10443,1,0,'temporus SAY_BANISH'),
(-1269003,'You should have left when you had the chance.',10445,1,0,'temporus SAY_SLAY1'),
(-1269004,'Your days are done.',10446,1,0,'temporus SAY_SLAY2'),
(-1269005,'My death means ... little.',10447,1,0,'temporus SAY_DEATH'),
(-1269006,'Why do you aid the Magus? Just think of how many lives could be saved if the portal is never opened, if the resulting wars could be erased ...',10412,1,0,'chrono_lord_deja SAY_ENTER'),
(-1269007,'If you will not cease this foolish quest, then you will die!',10414,1,0,'chrono_lord_deja SAY_AGGRO'),
(-1269008,'You have outstayed your welcome, Timekeeper. Begone!',10413,1,0,'chrono_lord_deja SAY_BANISH'),
(-1269009,'I told you it was a fool\'s quest!',10415,1,0,'chrono_lord_deja SAY_SLAY1'),
(-1269010,'Leaving so soon?',10416,1,0,'chrono_lord_deja SAY_SLAY2'),
(-1269011,'Time ... is on our side.',10417,1,0,'chrono_lord_deja SAY_DEATH'),
(-1269012,'The time has come to shatter this clockwork universe forever! Let us no longer be slaves of the hourglass! I warn you: those who do not embrace the greater path shall become victims of its passing!',10400,1,0,'aeonus SAY_ENTER'),
(-1269013,'Let us see what fate lays in store...',10402,1,0,'aeonus SAY_AGGRO'),
(-1269014,'Your time is up, slave of the past!',10401,1,0,'aeonus SAY_BANISH'),
(-1269015,'One less obstacle in our way!',10403,1,0,'aeonus SAY_SLAY1'),
(-1269016,'No one can stop us! No one!',10404,1,0,'aeonus SAY_SLAY2'),
(-1269017,'It is only a matter...of time.',10405,1,0,'aeonus SAY_DEATH');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1560022 AND -1560000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1560000,'Thrall! You didn\'t really think you would escape did you? You and your allies shall answer to Blackmoore - after I\'ve had my fun!',10406,1,0,'skarloc SAY_ENTER'),
(-1560001,'You\'re a slave. That\'s all you\'ll ever be.',10407,1,0,'skarloc SAY_TAUNT1'),
(-1560002,'I don\'t know what Blackmoore sees in you. For my money, you\'re just another ignorant savage!',10408,1,0,'skarloc SAY_TAUNT2'),
(-1560003,'Thrall will never be free!',10409,1,0,'skarloc SAY_SLAY1'),
(-1560004,'Did you really think you would leave here alive?',10410,1,0,'skarloc SAY_SLAY2'),
(-1560005,'Guards! Urgh..Guards..!',10411,1,0,'skarloc SAY_DEATH'),
(-1560006,'You there, fetch water quickly! Get these flames out before they spread to the rest of the keep! Hurry, damn you!',10428,1,0,'lieutenant_drake SAY_ENTER'),
(-1560007,'I know what you\'re up to, and I mean to put an end to it, permanently!',10429,1,0,'lieutenant_drake SAY_AGGRO'),
(-1560008,'No more middling for you.',10432,1,0,'lieutenant_drake SAY_SLAY1'),
(-1560009,'You will not interfere!',10433,1,0,'lieutenant_drake SAY_SLAY2'),
(-1560010,'Time to bleed!',10430,1,0,'lieutenant_drake SAY_MORTAL'),
(-1560011,'Run, you blasted cowards!',10431,1,0,'lieutenant_drake SAY_SHOUT'),
(-1560012,'Thrall... must not... go free.',10434,1,0,'lieutenant_drake SAY_DEATH'),
(-1560013,'Thrall! Come outside and face your fate!',10418,1,0,'epoch SAY_ENTER1'),
(-1560014,'Taretha\'s life hangs in the balance. Surely you care for her. Surely you wish to save her...',10419,1,0,'epoch SAY_ENTER2'),
(-1560015,'Ah, there you are. I had hoped to accomplish this with a bit of subtlety, but I suppose direct confrontation was inevitable. Your future, Thrall, must not come to pass and so...you and your troublesome friends must die!',10420,1,0,'epoch SAY_ENTER3'),
(-1560016,'Enough! I will erase your very existence!',10421,1,0,'epoch SAY_AGGRO1'),
(-1560017,'You cannot fight fate!',10422,1,0,'epoch SAY_AGGRO2'),
(-1560018,'You are...irrelevant.',10425,1,0,'epoch SAY_SLAY1'),
(-1560019,'Thrall will remain a slave. Taretha will die. You have failed.',10426,1,0,'epoch SAY_SLAY2'),
(-1560020,'Not so fast!',10423,1,0,'epoch SAY_BREATH1'),
(-1560021,'Struggle as much as you like!',10424,1,0,'epoch SAY_BREATH2'),
(-1560022,'No!...The master... will not... be pleased.',10427,1,0,'epoch SAY_DEATH');
-- World SQL file:  140_world.sql

DELETE FROM command WHERE name IN ('npc follow','npc unfollow','waterwalk','repairitems');

INSERT INTO command VALUES
('repairitems',2,'Syntax: .repairitems\r\n\r\nRepair all selected player''s items.'),
('npc follow',2,'Syntax: .npc follow\r\n\r\nSelected creature start follow you until death/fight/etc.'),
('npc unfollow',2,'Syntax: .npc unfollow\r\n\r\nSelected creature (non pet) stop follow you.'),
('waterwalk',2,'Syntax: .waterwalk on/off\r\n\r\nSet on/off waterwalk state for selected player or self if no player selected.');

DELETE FROM trinity_string WHERE entry IN (171,172,336,337,338,339,340,341,342,5007,5008);

INSERT INTO trinity_string VALUES
(172,'server console command',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(336,'You repair all %s''s items.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(337,'All your items repaired by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(338,'You set waterwalk mode %s for %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(339,'Your waterwalk mode set to %s by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(340,'%s is now following you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(341,'%s is not following you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(342,'%s is now not following you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(810,'You must be in a raid group to enter the instance %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(811,'You cannot enter %s while in a ghost mode!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
-- World SQL file:  145_world_scripts.sql

DELETE FROM gameobject_template WHERE `entry` IN (187578, 188173);
INSERT INTO gameobject_template () VALUES (187578, 10, 4891, 'Scrying Orb', '', 0, 0, 2.16851, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_movie_orb');
INSERT INTO gameobject_template () VALUES (188173, 10, 7161, 'Escape to the Isle of Quel\'Danas', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_kael_orb');

DELETE FROM spell_script_target WHERE `entry` IN (44320, 44321);
INSERT INTO spell_script_target () VALUES (44320, 1, 24723);
INSERT INTO spell_script_target () VALUES (44321, 1, 24723);

UPDATE creature_template SET modelid_A = '17612' WHERE entry = '24745';
UPDATE creature_template SET modelid_H = '17612' WHERE entry = '24745';

UPDATE `creature_template` SET `minhealth` = '6900' WHERE `entry` = 24675;
UPDATE `creature_template` SET `maxhealth` = '6900' WHERE `entry` = 24675;

UPDATE `creature_template` SET `minlevel` = '70' WHERE `entry` = 24708;
UPDATE `creature_template` SET `maxlevel` = '70' WHERE `entry` = 24708;

UPDATE `creature_template` SET `minlevel` = '70' WHERE `entry` = 24666;
UPDATE `creature_template` SET `maxlevel` = '70' WHERE `entry` = 24666;

UPDATE `creature_template` SET `scale` = '0.5' WHERE `entry` = 24708;

UPDATE `gameobject_template` SET `ScriptName` = 'go_kael_orb' WHERE `entry` = 188173;
UPDATE `gameobject_template` SET `ScriptName` = 'go_movie_orb' WHERE `entry` = 187578;

update creature_template SET spell1=6474 WHERE entry=22487;
update creature_template SET spell1=3600 WHERE entry=22486;
-- World SQL file:  146_world.sql

DROP TABLE IF EXISTS `spell_linked_spell`;
CREATE TABLE `spell_linked_spell` (
  `spell_trigger` int(10) NOT NULL,
  `spell_effect` int(10) NOT NULL default '0',
  `type` smallint(3) unsigned NOT NULL default '0',
  `comment` text NOT NULL,
  PRIMARY KEY (`spell_trigger`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO spell_linked_spell
   (`spell_trigger`, `spell_effect`, `type`, `comment`)
VALUES
   (44008, 45265, 1, 'Static Disruption Visual');

INSERT INTO spell_linked_spell
   (`spell_trigger`, `spell_effect`, `type`, `comment`)
VALUES
   (-30410, 44032, 0, 'Manticron Cube Mind Exhaustion');

INSERT INTO spell_linked_spell
   (`spell_trigger`, `spell_effect`, `type`, `comment`)
VALUES
   (45661, 45665, 1, 'Encapsulate\r\n');

INSERT INTO spell_linked_spell
   (`spell_trigger`, `spell_effect`, `type`, `comment`)
VALUES
   (40604, 40616, 1, 'Fel Rage Aura');

INSERT INTO spell_linked_spell
   (`spell_trigger`, `spell_effect`, `type`, `comment`)
VALUES
   (40616, 41625, 1, 'Fel Rage Aura');

INSERT INTO spell_linked_spell
   (`spell_trigger`, `spell_effect`, `type`, `comment`)
VALUES
   (41292, 42017, 1, 'Aura of Suffering');

INSERT INTO spell_linked_spell
   (`spell_trigger`, `spell_effect`, `type`, `comment`)
VALUES
   (-41292, -42017, 0, 'Aura of Suffering');

INSERT INTO spell_linked_spell
   (`spell_trigger`, `spell_effect`, `type`, `comment`)
VALUES
   (45347, -45348, 1, 'Remove Flame Touched');

INSERT INTO spell_linked_spell
   (`spell_trigger`, `spell_effect`, `type`, `comment`)
VALUES
   (45348, -45347, 1, 'Remove Dark Touched');

INSERT INTO spell_linked_spell
   (`spell_trigger`, `spell_effect`, `type`, `comment`)
VALUES
   (45248, 45347, 1, 'Apply Dark Touched');

INSERT INTO spell_linked_spell
   (`spell_trigger`, `spell_effect`, `type`, `comment`)
VALUES
   (45329, 45347, 1, 'Apply Dark Touched');

INSERT INTO spell_linked_spell
   (`spell_trigger`, `spell_effect`, `type`, `comment`)
VALUES
   (45256, 45347, 1, 'Apply Dark Touched');

INSERT INTO spell_linked_spell
   (`spell_trigger`, `spell_effect`, `type`, `comment`)
VALUES
   (45270, 45347, 1, 'Apply Dark Touched');

INSERT INTO spell_linked_spell
   (`spell_trigger`, `spell_effect`, `type`, `comment`)
VALUES
   (45342, 45348, 1, 'Apply Flame Touched');

INSERT INTO spell_linked_spell
   (`spell_trigger`, `spell_effect`, `type`, `comment`)
VALUES
   (46771, 45348, 1, 'Apply Flame Touched');

INSERT INTO spell_linked_spell
   (`spell_trigger`, `spell_effect`, `type`, `comment`)
VALUES
   (45271, 45347, 1, 'Apply Dark Touched');

INSERT INTO spell_linked_spell
   (`spell_trigger`, `spell_effect`, `type`, `comment`)
VALUES
   (45246, 45348, 1, 'Apply Flame Touched');
-- World SQL file:  147_world.sql

-- Magtheridon Earthquake
DELETE FROM spell_script_target WHERE `entry` IN (30657);
INSERT INTO spell_script_target VALUES ('30657', '1', '24136');
-- World SQL file:  152_world.sql

delete from `spell_linked_spell` where `spell_trigger` in ('15237','15430','15431','27799','27800','27801','25331');
insert into `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) values('15237','23455','0','Holy Nova (rank1)');
insert into `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) values('15430','23458','0','Holy Nova (rank2)');
insert into `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) values('15431','23459','0','Holy Nova (rank3)');
insert into `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) values('27799','27803','0','Holy Nova (rank4)');
insert into `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) values('27800','27804','0','Holy Nova (rank5)');
insert into `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) values('27801','27805','0','Holy Nova (rank6)');
insert into `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) values('25331','25329','0','Holy Nova (rank7)');
-- World SQL file:  153_world.sql

update creature_template set flags_extra = 128 where entry = 12999;
-- World SQL file:  171_world.sql

DELETE FROM trinity_string WHERE entry IN (57,58,5009);

INSERT INTO trinity_string VALUES
(57,'Using World DB: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(58,'Using script library: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(5009,'Sound %u Played to server',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);


DELETE FROM `command` WHERE name IN ('pet create','pet learn','pet unlearn','pet tp','gobject activate','playall');
INSERT INTO `command` (name,security,help) VALUES
('pet create',2,'Syntax: .pet create\r\n\r\nCreates a pet of the selected creature.'),
('pet learn',2,'Syntax: .pet learn\r\n\r\nLearn #spellid to pet.'),
('pet unlearn',2,'Syntax: .pet unlean\r\n\r\nunLearn #spellid to pet.'),
('pet tp',2,'Syntax: .pet tp #\r\n\r\nChange pet\'s amount of training points.'),
('modify gender',2,'Syntax: .modify gender\r\n\r\n.modify gender #male/female - Turns selected player into a male or female'),
('gobject activate',2,'Syntax: .gobject activate #guid\r\n\r\nActivates an object like a door or a button.'),
('playall',2,'Syntax: .playall #soundid\r\n\r\nPlayer a sound to whole server.');
-- World SQL file:  172_world_scripts.sql

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1548055 AND -1548000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1548000,'I cannot allow you to interfere!',11289,1,0,'hydross SAY_AGGRO'),
(-1548001,'Better, much better.',11290,1,0,'hydross SAY_SWITCH_TO_CLEAN'),
(-1548002,'They have forced me to this...',11291,1,0,'hydross SAY_CLEAN_SLAY1'),
(-1548003,'I have no choice.',11292,1,0,'hydross SAY_CLEAN_SLAY2'),
(-1548004,'I am... released...',11293,1,0,'hydross SAY_CLEAN_DEATH'),
(-1548005,'Aaghh, the poison...',11297,1,0,'hydross SAY_SWITCH_TO_CORRUPT'),
(-1548006,'I will purge you from this place.',11298,1,0,'hydross SAY_CORRUPT_SLAY1'),
(-1548007,'You are no better than they!',11299,1,0,'hydross SAY_CORRUPT_SLAY2'),
(-1548008,'You are the disease, not I',11300,1,0,'hydross SAY_CORRUPT_DEATH'),
(-1548009,'Finally my banishment ends!',11312,1,0,'leotheras SAY_AGGRO'),
(-1548010,'Be gone trifling elf. I\'m in control now.',11304,1,0,'leotheras SAY_SWITCH_TO_DEMON'),
(-1548011,'We all have our demons...',11305,1,0,'leotheras SAY_INNER_DEMONS'),
(-1548012,'I have no equal.',11306,1,0,'leotheras SAY_DEMON_SLAY1'),
(-1548013,'Perish, mortal.',11307,1,0,'leotheras SAY_DEMON_SLAY2'),
(-1548014,'Yes, YES! Ahahah!',11308,1,0,'leotheras SAY_DEMON_SLAY3'),
(-1548015,'Kill! KILL!',11314,1,0,'leotheras SAY_NIGHTELF_SLAY1'),
(-1548016,'That\'s right! Yes!',11315,1,0,'leotheras SAY_NIGHTELF_SLAY2'),
(-1548017,'Who\'s the master now?',11316,1,0,'leotheras SAY_NIGHTELF_SLAY3'),
(-1548018,'No! NO! What have you done?! I am the master, do you hear me? I... aaghh... Can\'t... contain him...',11313,1,0,'leotheras SAY_FINAL_FORM'),
(-1548019,'At last I am liberated. It has been too long since I have tasted true freedom!',11309,1,0,'leotheras SAY_FREE'),
(-1548020,'You cannot kill me! Fools, I\'ll be back! I\'ll... aarghh...',11317,1,0,'leotheras SAY_DEATH'),
(-1548021,'Guards, attention! We have visitors...',11277,1,0,'karathress SAY_AGGRO'),
(-1548022,'Your overconfidence will be your undoing! Guards, lend me your strength!',11278,1,0,'karathress SAY_GAIN_BLESSING'),
(-1548023,'Go on, kill them! I\'ll be the better for it!',11279,1,0,'karathress SAY_GAIN_ABILITY1'),
(-1548024,'I am more powerful than ever!',11280,1,0,'karathress SAY_GAIN_ABILITY2'),
(-1548025,'More knowledge, more power!',11281,1,0,'karathress SAY_GAIN_ABILITY3'),
(-1548026,'Land-dwelling scum!',11282,1,0,'karathress SAY_SLAY1'),
(-1548027,'Alana be\'lendor!',11283,1,0,'karathress SAY_SLAY2'),
(-1548028,'I am rid of you.',11284,1,0,'karathress SAY_SLAY3'),
(-1548029,'Her ... excellency ... awaits!',11285,1,0,'karathress SAY_DEATH'),
(-1548030,'Flood of the deep, take you!',11321,1,0,'morogrim SAY_AGGRO'),
(-1548031,'By the Tides, kill them at once!',11322,1,0,'morogrim SAY_SUMMON1'),
(-1548032,'Destroy them my subjects!',11323,1,0,'morogrim SAY_SUMMON2'),
(-1548033,'There is nowhere to hide!',11324,1,0,'morogrim SAY_SUMMON_BUBL1'),
(-1548034,'Soon it will be finished!',11325,1,0,'morogrim SAY_SUMMON_BUBL2'),
(-1548035,'It is done!',11326,1,0,'morogrim SAY_SLAY1'),
(-1548036,'Strugging only makes it worse.',11327,1,0,'morogrim SAY_SLAY2'),
(-1548037,'Only the strong survive.',11328,1,0,'morogrim SAY_SLAY3'),
(-1548038,'Great... currents of... Ageon.',11329,1,0,'morogrim SAY_DEATH'),
(-1548039,'sends his enemies to their watery graves!',0,2,0,'morogrim EMOTE_WATERY_GRAVE'),
(-1548040,'The violent earthquake has alerted nearby murlocs!',0,3,0,'morogrim EMOTE_EARTHQUAKE'),
(-1548041,'summons Watery Globules!',0,2,0,'morogrim EMOTE_WATERY_GLOBULES'),
(-1548042,'Water is life. It has become a rare commodity here in Outland. A commodity that we alone shall control. We are the Highborne, and the time has come at last for us to retake our rightful place in the world!',11531,1,0,'vashj SAY_INTRO'),
(-1548043,'I\'ll split you from stem to stern!',11532,1,0,'vashj SAY_AGGRO1'),
(-1548044,'Victory to Lord Illidan!',11533,1,0,'vashj SAY_AGGRO2'),
(-1548045,'I spit on you, surface filth!',11534,1,0,'vashj SAY_AGGRO3'),
(-1548046,'Death to the outsiders!',11535,1,0,'vashj SAY_AGGRO4'),
(-1548047,'I did not wish to lower myself by engaging your kind, but you leave me little choice!',11538,1,0,'vashj SAY_PHASE1'),
(-1548048,'The time is now! Leave none standing!',11539,1,0,'vashj SAY_PHASE2'),
(-1548049,'You may want to take cover.',11540,1,0,'vashj SAY_PHASE3'),
(-1548050,'Straight to the heart!',11536,1,0,'vashj SAY_BOWSHOT1'),
(-1548051,'Seek your mark!',11537,1,0,'vashj SAY_BOWSHOT2'),
(-1548052,'Your time ends now!',11541,1,0,'vashj SAY_SLAY1'),
(-1548053,'You have failed!',11542,1,0,'vashj SAY_SLAY2'),
(-1548054,'Be\'lamere an\'delay',11543,1,0,'vashj SAY_SLAY3'),
(-1548055,'Lord Illidan, I... I am... sorry.',11544,1,0,'vashj SAY_DEATH');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1545023 AND -1545000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1545000,'Surge forth my pets!',10360,1,0,'thespia SAY_SUMMON'),
(-1545001,'The depths will consume you!',10361,1,0,'thespia SAY_AGGRO_1'),
(-1545002,'Meet your doom, surface dwellers!',10362,1,0,'thespia SAY_AGGRO_2'),
(-1545003,'You will drown in blood!',10363,1,0,'thespia SAY_AGGRO_3'),
(-1545004,'To the depths of oblivion with you!',10364,1,0,'thespia SAY_SLAY_1'),
(-1545005,'For my lady and master!',10365,1,0,'thespia SAY_SLAY_2'),
(-1545006,'Our matron will be.. the end of.. you..',10366,1,0,'thespia SAY_DEAD'),
(-1545007,'I\'m bringin\' the pain!',10367,1,0,'mekgineer SAY_MECHANICS'),
(-1545008,'You\'re in for a world of hurt!',10368,1,0,'mekgineer SAY_AGGRO_1'),
(-1545009,'Eat hot metal, scumbag!',10369,1,0,'mekgineer SAY_AGGRO_2'),
(-1545010,'I\'ll come over there!',10370,1,0,'mekgineer SAY_AGGRO_3'),
(-1545011,'I\'m bringin\' the pain!',10371,1,0,'mekgineer SAY_AGGRO_4'),
(-1545012,'You just got served, punk!',10372,1,0,'mekgineer SOUND_SLAY_1'),
(-1545013,'I own you!',10373,1,0,'mekgineer SOUND_SLAY_2'),
(-1545014,'Have fun dyin\', cupcake!',10374,1,0,'mekgineer SOUND_SLAY_3'),
(-1545015,'Mommy!',10375,1,0,'mekgineer SAY_DEATH'),
(-1545016,'You deem yourselves worthy simply because you bested my guards? Our work here will not be compromised!',10390,1,0,'kalithresh SAY_INTRO'),
(-1545017,'This is not nearly over...',10391,1,0,'kalithresh SAY_REGEN'),
(-1545018,'Your head will roll!',10392,1,0,'kalithresh SAY_AGGRO1'),
(-1545019,'I despise all of your kind!',10393,1,0,'kalithresh SAY_AGGRO2'),
(-1545020,'Ba\'ahntha sol\'dorei!',10394,1,0,'kalithresh SAY_AGGRO3'),
(-1545021,'Scram, surface filth!',10395,1,0,'kalithresh SAY_SLAY1'),
(-1545022,'Ah ha ha ha ha ha ha!',10396,1,0,'kalithresh SAY_SLAY2'),
(-1545023,'For her Excellency... for... Vashj!',10397,1,0,'kalithresh SAY_DEATH');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1540041 AND -1540000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1540000,'You wish to fight us all at once? This should be amusing!',10262,1,0,'nethekurse SAY_INTRO'),
(-1540001,'You can have that one. I no longer need him.',10263,1,0,'nethekurse PEON_ATTACK_1'),
(-1540002,'Yes, beat him mercilessly. His skull is a thick as an ogres.',10264,1,0,'nethekurse PEON_ATTACK_2'),
(-1540003,'Don\'t waste your time on that one. He\'s weak!',10265,1,0,'nethekurse PEON_ATTACK_3'),
(-1540004,'You want him? Very well, take him!',10266,1,0,'nethekurse PEON_ATTACK_4'),
(-1540005,'One pitiful wretch down. Go on, take another one.',10267,1,0,'nethekurse PEON_DIE_1'),
(-1540006,'Ahh, what a waste... Next!',10268,1,0,'nethekurse PEON_DIE_2'),
(-1540007,'I was going to kill him anyway!',10269,1,0,'nethekurse PEON_DIE_3'),
(-1540008,'Thank you for saving me the trouble! Now it\'s my turn to have some fun...',10270,1,0,'nethekurse PEON_DIE_4'),
(-1540009,'Beg for your pittyfull life!',10259,1,0,'nethekurse SAY_TAUNT_1'),
(-1540010,'Run covad, ruun!',10260,1,0,'nethekurse SAY_TAUNT_2'),
(-1540011,'Your pain amuses me.',10261,1,0,'nethekurse SAY_TAUNT_3'),
(-1540012,'I\'m already bored.',10271,1,0,'nethekurse SAY_AGGRO_1'),
(-1540013,'Come on! ... Show me a real fight.',10272,1,0,'nethekurse SAY_AGGRO_2'),
(-1540014,'I had more fun torturing the peons.',10273,1,0,'nethekurse SAY_AGGRO_3'),
(-1540015,'You Loose.',10274,1,0,'nethekurse SAY_SLAY_1'),
(-1540016,'Ohh! Just die.',10275,1,0,'nethekurse SAY_SLAY_2'),
(-1540017,'What a ... a shame.',10276,1,0,'nethekurse SAY_DIE'),
(-1540018,'Smash!',10306,1,0,'omrogg GoCombat_1'),
(-1540019,'If you nice me let you live.',10308,1,0,'omrogg GoCombat_2'),
(-1540020,'Me hungry!',10309,1,0,'omrogg GoCombat_3'),
(-1540021,'Why don\'t you let me do the talking?',10317,1,0,'omrogg GoCombatDelay_1'),
(-1540022,'No, we will NOT let you live!',10318,1,0,'omrogg GoCombatDelay_2'),
(-1540023,'You always hungry. That why we so fat!',10319,1,0,'omrogg GoCombatDelay_3'),
(-1540024,'You stay here. Me go kill someone else!',10303,1,0,'omrogg Threat_1'),
(-1540025,'What are you doing!',10315,1,0,'omrogg Threat_2'),
(-1540026,'Me kill someone else...',10302,1,0,'omrogg Threat_3'),
(-1540027,'Me not like this one...',10300,1,0,'omrogg Threat_4'),
(-1540028,'That\'s not funny!',10314,1,0,'omrogg ThreatDelay1_1'),
(-1540029,'Me get bored...',10305,1,0,'omrogg ThreatDelay1_2'),
(-1540030,'I\'m not done yet, idiot!',10313,1,0,'omrogg ThreatDelay1_3'),
(-1540031,'Hey you numbskull!',10312,1,0,'omrogg ThreatDelay1_4'),
(-1540032,'Ha ha ha.',10304,1,0,'omrogg ThreatDelay2_1'),
(-1540033,'Whhy! He almost dead!',10316,1,0,'omrogg ThreatDelay2_2'),
(-1540034,'H\'ey...',10307,1,0,'omrogg ThreatDelay2_3'),
(-1540035,'We kill his friend!',10301,1,0,'omrogg ThreatDelay2_4'),
(-1540036,'This one die easy!',10310,1,0,'omrogg Killing_1'),
(-1540037,'I\'m tired. You kill next one!',10320,1,0,'omrogg Killing_2'),
(-1540038,'That\'s because I do all the hard work!',10321,1,0,'omrogg KillingDelay_1'),
(-1540039,'This all...your fault!',10311,1,0,'omrogg YELL_DIE_L'),
(-1540040,'I...hate...you...',10322,1,0,'omrogg YELL_DIE_R'),
(-1540041,'enrages',0,2,0,'omrogg EMOTE_ENRAGE');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1542014 AND -1542000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1542000,'Who dares interrupt... What is this? What have you done? You ruin everything!',10164,1,0,'kelidan SAY_WAKE'),
(-1542001,'You mustn\'t let him loose!',10166,1,0,'kelidan SAY_ADD_AGGRO_1'),
(-1542002,'Ignorant whelps!',10167,1,0,'kelidan SAY_ADD_AGGRO_2'),
(-1542003,'You fools! He\'ll kill us all!',10168,1,0,'kelidan SAY_ADD_AGGRO_3'),
(-1542004,'Just as you deserve!',10169,1,0,'kelidan SAY_KILL_1'),
(-1542005,'Your friends will soon be joining you.',10170,1,0,'kelidan SAY_KILL_2'),
(-1542006,'Closer... Come closer.. and burn!',10165,1,0,'kelidan SAY_NOVA'),
(-1542007,'Good luck... you\'ll need it..',10171,1,0,'kelidan SAY_DIE'),
(-1542008,'Come intruders....',0,1,0,'broggok SAY_AGGRO'),
(-1542009,'My work must not be interrupted.',10286,1,0,'the_maker SAY_AGGRO_1'),
(-1542010,'Perhaps I can find a use for you.',10287,1,0,'the_maker SAY_AGGRO_2'),
(-1542011,'Anger... Hate... These are tools I can use.',10288,1,0,'the_maker SAY_AGGRO_3'),
(-1542012,'Let\'s see what I can make of you.',10289,1,0,'the_maker SAY_KILL_1'),
(-1542013,'It is pointless to resist.',10290,1,0,'the_maker SAY_KILL_2'),
(-1542014,'Stay away from... me.',10291,1,0,'the_maker SAY_DIE');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1543016 AND -1543000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1543000,'Do you smell that? Fresh meat has somehow breached our citadel. Be wary of any intruders.',0,1,0,'gargolmar SAY_TAUNT'),
(-1543001,'Heal me! QUICKLY!',10329,1,0,'gargolmar SAY_HEAL'),
(-1543002,'Back off, pup!',10330,1,0,'gargolmar SAY_SURGE'),
(-1543003,'What have we here...?',10331,1,0,'gargolmar SAY_AGGRO_1'),
(-1543004,'Heh... this may hurt a little.',10332,1,0,'gargolmar SAY_AGGRO_2'),
(-1543005,'I\'m gonna enjoy this.',10333,1,0,'gargolmar SAY_AGGRO_3'),
(-1543006,'Say farewell!',10334,1,0,'gargolmar SAY_KILL_1'),
(-1543007,'Much too easy...',10335,1,0,'gargolmar SAY_KILL_2'),
(-1543008,'Hahah.. <cough> ..argh!',10336,1,0,'gargolmar SAY_DIE'),
(-1543009,'You dare stand against me?!',10280,1,0,'omor SAY_AGGRO_1'),
(-1543010,'I will not be defeated!',10279,1,0,'omor SAY_AGGRO_2'),
(-1543011,'Your insolence will be your death.',10281,1,0,'omor SAY_AGGRO_3'),
(-1543012,'Achor-she-ki! Feast my pet! Eat your fill!',10277,1,0,'omor SAY_SUMMON'),
(-1543013,'A-Kreesh!',10278,1,0,'omor SAY_CURSE'),
(-1543014,'Die, weakling!',10282,1,0,'omor SAY_KILL_1'),
(-1543015,'It is... not over.',10284,1,0,'omor SAY_DIE'),
(-1543016,'I am victorious!',10283,1,0,'omor SAY_WIPE');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1544014 AND -1544000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1544000,'Wretched, meddling insects. Release me and perhaps i will grant you a merciful death!',10247,1,0,'magtheridon SAY_TAUNT1'),
(-1544001,'Vermin! Leeches! Take my blood and choke on it!',10248,1,0,'magtheridon SAY_TAUNT2'),
(-1544002,'Illidan is an arrogant fool. I will crush him and reclaim Outland as my own.',10249,1,0,'magtheridon SAY_TAUNT3'),
(-1544003,'Away, you mindless parasites. My blood is my own!',10250,1,0,'magtheridon SAY_TAUNT4'),
(-1544004,'How long do you believe your pathetic sorcery can hold me?',10251,1,0,'magtheridon SAY_TAUNT5'),
(-1544005,'My blood will be the end of you!',10252,1,0,'magtheridon SAY_TAUNT6'),
(-1544006,'I...am...UNLEASHED!!!',10253,1,0,'magtheridon SAY_FREED'),
(-1544007,'Thank you for releasing me. Now...die!',10254,1,0,'magtheridon SAY_AGGRO'),
(-1544008,'Not again...NOT AGAIN!',10256,1,0,'magtheridon SAY_BANISH'),
(-1544009,'I will not be taken so easily. Let the walls of this prison tremble...and FALL!!!',10257,1,0,'magtheridon SAY_CHAMBER_DESTROY'),
(-1544010,'Did you think me weak? Soft? Who is the weak one now?!',10255,1,0,'magtheridon SAY_PLAYER_KILLED'),
(-1544011,'The Legion...will consume you...all...',10258,1,0,'magtheridon SAY_DEATH'),
(-1544012,'becomes enraged!',0,2,0,'magtheridon EMOTE_BERSERK'),
(-1544013,'begins to cast Blast Nova!',0,2,0,'magtheridon EMOTE_BLASTNOVA'),
(-1544014,'bonds begin to weaken!',0,2,0,'magtheridon EMOTE_BEGIN');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1565019 AND -1565000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1565000,'Gronn are the real power in outland.',11367,1,0,'maulgar SAY_AGGRO'),
(-1565001,'You will not defeat the hand of Gruul!',11368,1,0,'maulgar SAY_ENRAGE'),
(-1565002,'You won\'t kill next one so easy!',11369,1,0,'maulgar SAY_OGRE_DEATH1'),
(-1565003,'Pah! Does not prove anything!',11370,1,0,'maulgar SAY_OGRE_DEATH2'),
(-1565004,'I\'m not afraid of you.',11371,1,0,'maulgar SAY_OGRE_DEATH3'),
(-1565005,'Good, now you fight me!',11372,1,0,'maulgar SAY_OGRE_DEATH4'),
(-1565006,'You not so tough afterall!',11373,1,0,'maulgar SAY_SLAY1'),
(-1565007,'Aha-ha ha ha!',11374,1,0,'maulgar SAY_SLAY2'),
(-1565008,'Mulgar is king!',11375,1,0,'maulgar SAY_SLAY3'),
(-1565009,'Gruul... will crush you...',11376,1,0,'maulgar SAY_DEATH'),
(-1565010,'Come... and die.',11355,1,0,'gruul SAY_AGGRO'),
(-1565011,'Scurry',11356,1,0,'gruul SAY_SLAM1'),
(-1565012,'No escape',11357,1,0,'gruul SAY_SLAM2'),
(-1565013,'Stay',11358,1,0,'gruul SAY_SHATTER1'),
(-1565014,'Beg... for life',11359,1,0,'gruul SAY_SHATTER2'),
(-1565015,'No more',11360,1,0,'gruul SAY_SLAY1'),
(-1565016,'Unworthy',11361,1,0,'gruul SAY_SLAY2'),
(-1565017,'Die',11362,1,0,'gruul SAY_SLAY3'),
(-1565018,'Aaargh...',11363,1,0,'gruul SAY_DEATH'),
(-1565019,'grows in size!',0,2,0,'gruul EMOTE_GROW');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1532102 AND -1532000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1532000,'Well done Midnight!',9173,1,0,'attumen SAY_MIDNIGHT_KILL'),
(-1532001,'Cowards! Wretches!',9167,1,0,'attumen SAY_APPEAR1'),
(-1532002,'Who dares attack the steed of the Huntsman?',9298,1,0,'attumen SAY_APPEAR2'),
(-1532003,'Perhaps you would rather test yourselves against a more formidable opponent?!',9299,1,0,'attumen SAY_APPEAR3'),
(-1532004,'Come, Midnight, let\'s disperse this petty rabble!',9168,1,0,'attumen SAY_MOUNT'),
(-1532005,'It was... inevitable.',9169,1,0,'attumen SAY_KILL1'),
(-1532006,'Another trophy to add to my collection!',9300,1,0,'attumen SAY_KILL2'),
(-1532007,'Weapons are merely a convenience for a warrior of my skill!',9166,1,0,'attumen SAY_DISARMED'),
(-1532008,'I always knew... someday I would become... the hunted.',9165,1,0,'attumen SAY_DEATH'),
(-1532009,'Such easy sport.',9170,1,0,'attumen SAY_RANDOM1'),
(-1532010,'Amateurs! Do not think you can best me! I kill for a living.',9304,1,0,'attumen SAY_RANDOM2'),
(-1532011,'Hmm, unannounced visitors? Preparations must be made.',9211,1,0,'moroes SAY_AGGRO'),
(-1532012,'Now, where was I? Oh yes...',9215,1,0,'moroes SAY_SPECIAL_1'),
(-1532013,'You rang?',9316,1,0,'moroes SAY_SPECIAL_2'),
(-1532014,'One more for dinner this evening.',9214,1,0,'moroes SAY_KILL_1'),
(-1532015,'Time... Never enough time.',9314,1,0,'moroes SAY_KILL_2'),
(-1532016,'I\'ve gone and made a mess.',9315,1,0,'moroes SAY_KILL_3'),
(-1532017,'How terribly clumsy of me...',9213,1,0,'moroes SAY_DEATH'),
(-1532018,'Your behavior will not be tolerated!',9204,1,0,'maiden SAY_AGGRO'),
(-1532019,'Ah ah ah...',9207,1,0,'maiden SAY_SLAY1'),
(-1532020,'This is for the best.',9312,1,0,'maiden SAY_SLAY2'),
(-1532021,'Impure thoughts lead to profane actions.',9311,1,0,'maiden SAY_SLAY3'),
(-1532022,'Cast out your corrupt thoughts.',9313,1,0,'maiden SAY_REPENTANCE1'),
(-1532023,'Your impurity must be cleansed.',9208,1,0,'maiden SAY_REPENTANCE2'),
(-1532024,'Death comes. Will your conscience be clear?',9206,1,0,'maiden SAY_DEATH'),
(-1532025,'Oh at last, at last. I can go home.',9190,1,0,'dorothee SAY_DOROTHEE_DEATH'),
(-1532026,'Don\'t let them hurt us, Tito! Oh, you won\'t, will you?',9191,1,0,'dorothee SAY_DOROTHEE_SUMMON'),
(-1532027,'Tito, oh Tito, no!',9192,1,0,'dorothee SAY_DOROTHEE_TITO_DEATH'),
(-1532028,'Oh dear, we simply must find a way home! The old wizard could be our only hope! Strawman, Roar, Tinhead, will you... wait! Oh golly, look! We have visitors!',9195,1,0,'dorothee SAY_DOROTHEE_AGGRO'),
(-1532029,'Wanna fight? Huh? Do ya? C\'mon, I\'ll fight you with both claws behind my back!',9227,1,0,'roar SAY_ROAR_AGGRO'),
(-1532030,'You didn\'t have to go and do that.',9229,1,0,'roar SAY_ROAR_DEATH'),
(-1532031,'I think I\'m going to go take fourty winks.',9230,1,0,'roar SAY_ROAR_SLAY'),
(-1532032,'Now what should I do with you? I simply can\'t make up my mind.',9254,1,0,'strawman SAY_STRAWMAN_AGGRO'),
(-1532033,'Don\'t let them make a mattress... out of me.',9256,1,0,'strawman SAY_STRAWMAN_DEATH'),
(-1532034,'I guess I\'m not a failure after all.',9257,1,0,'strawman SAY_STRAWMAN_SLAY'),
(-1532035,'I could really use a heart. Say, can I have yours?',9268,1,0,'tinhead SAY_TINHEAD_AGGRO'),
(-1532036,'Back to being an old rustbucket.',9270,1,0,'tinhead SAY_TINHEAD_DEATH'),
(-1532037,'Guess I\'m not so rusty, after all.',9271,1,0,'tinhead SAY_TINHEAD_SLAY'),
(-1532038,'begins to rust.',0,2,0,'tinhead EMOTE_RUST'),
(-1532039,'Woe to each and every one of you my pretties! <cackles>',9179,1,0,'crone SAY_CRONE_AGGRO'),
(-1532040,'It will all be over soon! <cackles>',9307,1,0,'crone SAY_CRONE_AGGRO2'),
(-1532041,'How could you? What a cruel, cruel world!',9178,1,0,'crone SAY_CRONE_DEATH'),
(-1532042,'Fixed you, didn\'t I? <cackles>',9180,1,0,'crone SAY_CRONE_SLAY'),
(-1532043,'All the better to own you with!',9276,1,0,'wolf SAY_WOLF_AGGRO'),
(-1532044,'Mmmm... delicious.',9277,1,0,'wolf SAY_WOLF_SLAY'),
(-1532045,'Run away little girl, run away!',9278,1,0,'wolf SAY_WOLF_HOOD'),
(-1532046,'What devil art thou, that dost torment me thus?',9196,1,0,'julianne SAY_JULIANNE_AGGRO'),
(-1532047,'Where is my lord? Where is my Romulo?',9199,1,0,'julianne SAY_JULIANNE_ENTER'),
(-1532048,'Romulo, I come! Oh... this do I drink to thee!',9198,1,0,'julianne SAY_JULIANNE_DEATH01'),
(-1532049,'Where is my Lord? Where is my Romulo? Ohh, happy dagger! This is thy sheath! There rust, and let me die!',9310,1,0,'julianne SAY_JULIANNE_DEATH02'),
(-1532050,'Come, gentle night; and give me back my Romulo!',9200,1,0,'julianne SAY_JULIANNE_RESURRECT'),
(-1532051,'Parting is such sweet sorrow.',9201,1,0,'julianne SAY_JULIANNE_SLAY'),
(-1532052,'Wilt thou provoke me? Then have at thee, boy!',9233,1,0,'romulo SAY_ROMULO_AGGRO'),
(-1532053,'Thou smilest... upon the stroke that... murders me.',9235,1,0,'romulo SAY_ROMULO_DEATH'),
(-1532054,'This day\'s black fate on more days doth depend. This but begins the woe. Others must end.',9236,1,0,'romulo SAY_ROMULO_ENTER'),
(-1532055,'Thou detestable maw, thou womb of death; I enforce thy rotten jaws to open!',9237,1,0,'romulo SAY_ROMULO_RESURRECT'),
(-1532056,'How well my comfort is revived by this!',9238,1,0,'romulo SAY_ROMULO_SLAY'),
(-1532057,'The Menagerie is for guests only.',9183,1,0,'curator SAY_AGGRO'),
(-1532058,'Gallery rules will be strictly enforced.',9188,1,0,'curator SAY_SUMMON1'),
(-1532059,'This curator is equipped for gallery protection.',9309,1,0,'curator SAY_SUMMON2'),
(-1532060,'Your request cannot be processed.',9186,1,0,'curator SAY_EVOCATE'),
(-1532061,'Failure to comply will result in offensive action.',9185,1,0,'curator SAY_ENRAGE'),
(-1532062,'Do not touch the displays.',9187,1,0,'curator SAY_KILL1'),
(-1532063,'You are not a guest.',9308,1,0,'curator SAY_KILL2'),
(-1532064,'This Curator is no longer op... er... ation... al.',9184,1,0,'curator SAY_DEATH'),
(-1532065,'Your blood will anoint my circle.',9264,1,0,'terestian SAY_SLAY1'),
(-1532066,'The great one will be pleased.',9329,1,0,'terestian SAY_SLAY2'),
(-1532067,'My life, is yours. Oh great one.',9262,1,0,'terestian SAY_DEATH'),
(-1532068,'Ah, you\'re just in time. The rituals are about to begin.',9260,1,0,'terestian SAY_AGGRO'),
(-1532069,'Please, accept this humble offering, oh great one.',9263,1,0,'terestian SAY_SACRIFICE1'),
(-1532070,'Let the sacrifice serve his testament to my fealty.',9330,1,0,'terestian SAY_SACRIFICE2'),
(-1532071,'Come, you dwellers in the dark. Rally to my call!',9265,1,0,'terestian SAY_SUMMON1'),
(-1532072,'Gather, my pets. There is plenty for all.',9331,1,0,'terestian SAY_SUMMON2'),
(-1532073,'Please, no more. My son... he\'s gone mad!',9241,1,0,'aran SAY_AGGRO1'),
(-1532074,'I\'ll not be tortured again!',9323,1,0,'aran SAY_AGGRO2'),
(-1532075,'Who are you? What do you want? Stay away from me!',9324,1,0,'aran SAY_AGGRO3'),
(-1532076,'I\'ll show you this beaten dog still has some teeth!',9245,1,0,'aran SAY_FLAMEWREATH1'),
(-1532077,'Burn you hellish fiends!',9326,1,0,'aran SAY_FLAMEWREATH2'),
(-1532078,'I\'ll freeze you all!',9246,1,0,'aran SAY_BLIZZARD1'),
(-1532079,'Back to the cold dark with you!',9327,1,0,'aran SAY_BLIZZARD2'),
(-1532080,'Yes, yes, my son is quite powerful... but I have powers of my own!',9242,1,0,'aran SAY_EXPLOSION1'),
(-1532081,'I am not some simple jester! I am Nielas Aran!',9325,1,0,'aran SAY_EXPLOSION2'),
(-1532082,'Surely you would not deny an old man a replenishing drink? No, no I thought not.',9248,1,0,'aran SAY_DRINK'),
(-1532083,'I\'m not finished yet! No, I have a few more tricks up me sleeve.',9251,1,0,'aran SAY_ELEMENTALS'),
(-1532084,'I want this nightmare to be over!',9250,1,0,'aran SAY_KILL1'),
(-1532085,'Torment me no more!',9328,1,0,'aran SAY_KILL2'),
(-1532086,'You\'ve wasted enough of my time. Let these games be finished!',9247,1,0,'aran SAY_TIMEOVER'),
(-1532087,'At last... The nightmare is.. over...',9244,1,0,'aran SAY_DEATH'),
(-1532088,'Where did you get that?! Did HE send you?!',9249,1,0,'aran SAY_ATIESH'),
(-1532089,'cries out in withdrawal, opening gates to the warp.',0,2,0,'netherspite EMOTE_PHASE_PORTAL'),
(-1532090,'goes into a nether-fed rage!',0,2,0,'netherspite EMOTE_PHASE_BANISH'),
(-1532091,'Madness has brought you here to me. I shall be your undoing!',9218,1,0,'malchezaar SAY_AGGRO'),
(-1532092,'Simple fools! Time is the fire in which you\'ll burn!',9220,1,0,'malchezaar SAY_AXE_TOSS1'),
(-1532093,'I see the subtlety of conception is beyond primitives such as you.',9317,1,0,'malchezaar SAY_AXE_TOSS2'),
(-1532094,'Who knows what secrets hide in the dark.',9223,1,0,'malchezaar SAY_SPECIAL1'),
(-1532095,'The cerestial forces are mine to manipulate.',9320,1,0,'malchezaar SAY_SPECIAL2'),
(-1532096,'How can you hope to withstand against such overwhelming power?',9321,1,0,'malchezaar SAY_SPECIAL3'),
(-1532097,'Surely you did not think you could win.',9222,1,0,'malchezaar SAY_SLAY1'),
(-1532098,'Your greed, your foolishness has brought you to this end.',9318,1,0,'malchezaar SAY_SLAY2'),
(-1532099,'You are, but a plaything, unfit even to amuse.',9319,1,0,'malchezaar SAY_SLAY3'),
(-1532100,'All realities, all dimensions are open to me!',9224,1,0,'malchezaar SAY_SUMMON1'),
(-1532101,'You face not Malchezaar alone, but the legions I command!',9322,1,0,'malchezaar SAY_SUMMON2'),
(-1532102,'I refuse to concede defeat. I am a prince of the Eredar! I am...',9221,1,0,'malchezaar SAY_DEATH');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1550043 AND -1550000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1550000,'Alert, you are marked for extermination!',11213,1,0,'voidreaver SAY_AGGRO'),
(-1550001,'Extermination, successful.',11215,1,0,'voidreaver SAY_SLAY1'),
(-1550002,'Imbecile life form, no longer functional.',11216,1,0,'voidreaver SAY_SLAY2'),
(-1550003,'Threat neutralized.',11217,1,0,'voidreaver SAY_SLAY3'),
(-1550004,'Systems... shutting... down...',11214,1,0,'voidreaver SAY_DEATH'),
(-1550005,'Alternative measure commencing...',11218,1,0,'voidreaver SAY_POUNDING1'),
(-1550006,'Calculating force parameters...',11219,1,0,'voidreaver SAY_POUNDING2'),
(-1550007,'Tal anu\'men no Sin\'dorei!',11134,1,0,'solarian SAY_AGGRO'),
(-1550008,'Ha ha ha! You are hopelessly outmatched!',11139,1,0,'solarian SAY_SUMMON1'),
(-1550009,'I will crush your delusions of grandeur!',11140,1,0,'solarian SAY_SUMMON2'),
(-1550010,'Your soul belongs to the Abyss!',11136,1,0,'solarian SAY_KILL1'),
(-1550011,'By the blood of the Highborne!',11137,1,0,'solarian SAY_KILL2'),
(-1550012,'For the Sunwell!',11138,1,0,'solarian SAY_KILL3'),
(-1550013,'The warmth of the sun... awaits.',11135,1,0,'solarian SAY_DEATH'),
(-1550014,'Enough of this! Now I call upon the fury of the cosmos itself.',0,1,0,'solarian SAY_VOIDA'),
(-1550015,'I become ONE... with the VOID!',0,1,0,'solarian SAY_VOIDB'),
(-1550016,'Energy. Power. My people are addicted to it... a dependence made manifest after the Sunwell was destroyed. Welcome... to the future. A pity you are too late to stop it. No one can stop me now! Selama ashal\'anore!',11256,1,0,'kaelthas SAY_INTRO'),
(-1550017,'Capernian will see to it that your stay here is a short one.',11257,1,0,'kaelthas SAY_INTRO_CAPERNIAN'),
(-1550018,'Well done, you have proven worthy to test your skills against my master engineer, Telonicus.',11258,1,0,'kaelthas SAY_INTRO_TELONICUS'),
(-1550019,'Let us see how your nerves hold up against the Darkener, Thaladred.',11259,1,0,'kaelthas SAY_INTRO_THALADRED'),
(-1550020,'You have persevered against some of my best advisors... but none can withstand the might of the Blood Hammer. Behold, Lord Sanguinar!',11260,1,0,'kaelthas SAY_INTRO_SANGUINAR'),
(-1550021,'As you see, I have many weapons in my arsenal...',11261,1,0,'kaelthas SAY_PHASE2_WEAPON'),
(-1550022,'Perhaps I underestimated you. It would be unfair to make you fight all four advisors at once, but... fair treatment was never shown to my people. I\'m just returning the favor.',11262,1,0,'kaelthas SAY_PHASE3_ADVANCE'),
(-1550023,'Alas, sometimes one must take matters into one\'s own hands. Balamore shanal!',11263,1,0,'kaelthas SAY_PHASE4_INTRO2'),
(-1550024,'I have not come this far to be stopped! The future I have planned will not be jeopardized! Now you will taste true power!!',11273,1,0,'kaelthas SAY_PHASE5_NUTS'),
(-1550025,'You will not prevail.',11270,1,0,'kaelthas SAY_SLAY1'),
(-1550026,'You gambled...and lost.',11271,1,0,'kaelthas SAY_SLAY2'),
(-1550027,'This was Child\'s play.',11272,1,0,'kaelthas SAY_SLAY3'),
(-1550028,'Obey me.',11268,1,0,'kaelthas SAY_MINDCONTROL1'),
(-1550029,'Bow to my will.',11269,1,0,'kaelthas SAY_MINDCONTROL2'),
(-1550030,'Let us see how you fare when your world is turned upside down.',11264,1,0,'kaelthas SAY_GRAVITYLAPSE1'),
(-1550031,'Having trouble staying grounded?',11265,1,0,'kaelthas SAY_GRAVITYLAPSE2'),
(-1550032,'Anara\'nel belore!',11267,1,0,'kaelthas SAY_SUMMON_PHOENIX1'),
(-1550033,'By the power of the sun!',11266,1,0,'kaelthas SAY_SUMMON_PHOENIX2'),
(-1550034,'For...Quel...thalas!',11274,1,0,'kaelthas SAY_DEATH'),
(-1550035,'Prepare yourselves!',11203,1,0,'thaladred SAY_THALADRED_AGGRO'),
(-1550036,'Forgive me, my prince! I have... failed.',11204,1,0,'thaladred SAY_THALADRED_DEATH'),
(-1550037,'sets his gaze on $N!',0,2,0,'thaladred EMOTE_THALADRED_GAZE'),
(-1550038,'Blood for blood!',11152,1,0,'sanguinar SAY_SANGUINAR_AGGRO'),
(-1550039,'NO! I ...will... not...',11153,1,0,'sanguinar SAY_SANGUINAR_DEATH'),
(-1550040,'The sin\'dore reign supreme!',11117,1,0,'capernian SAY_CAPERNIAN_AGGRO'),
(-1550041,'This is not over!',11118,1,0,'capernian SAY_CAPERNIAN_DEATH'),
(-1550042,'Anar\'alah belore!',11157,1,0,'telonicus SAY_TELONICUS_AGGRO'),
(-1550043,'More perils... await',11158,1,0,'telonicus SAY_TELONICUS_DEATH');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1553012 AND -1553000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1553000,'What are you doing? These specimens are very delicate!',11144,1,0,'freywinn SAY_AGGRO'),
(-1553001,'Your life cycle is now concluded!',11145,1,0,'freywinn SAY_KILL_1'),
(-1553002,'You will feed the worms.',11146,1,0,'freywinn SAY_KILL_2'),
(-1553003,'Endorel aluminor!',11147,1,0,'freywinn SAY_TREE_1'),
(-1553004,'Nature bends to my will!',11148,1,0,'freywinn SAY_TREE_2'),
(-1553005,'The specimens...must be preserved.',11149,1,0,'freywinn SAY_DEATH'),
(-1553006,'emits a strange noise.',0,2,0,'laj EMOTE_SUMMON'),
(-1553007,'Who disturbs this sanctuary?',11230,1,0,'warp SAY_AGGRO'),
(-1553008,'You must die! But wait: this does not--No, no... you must die!',11231,1,0,'warp SAY_SLAY_1'),
(-1553009,'What am I doing? Why do I...',11232,1,0,'warp SAY_SLAY_2'),
(-1553010,'Children, come to me!',11233,1,0,'warp SAY_SUMMON_1'),
(-1553011,'Maybe this is not--No, we fight! Come to my aid.',11234,1,0,'warp SAY_SUMMON_2'),
(-1553012,'So... confused. Do not... belong here!',11235,1,0,'warp SAY_DEATH');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1554027 AND -1554000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1554000,'I predict a painful death.',11101,1,0,'gyro SAY_AGGRO'),
(-1554001,'Measure twice; cut once!',11104,1,0,'gyro SAY_SAW_ATTACK1'),
(-1554002,'If my division is correct, you should be quite dead.',11105,1,0,'gyro SAY_SAW_ATTACK2'),
(-1554003,'Your strategy was flawed!',11102,1,0,'gyro SAY_SLAY1'),
(-1554004,'Yes, the only logical outcome.',11103,1,0,'gyro SAY_SLAY2'),
(-1554005,'An unforseen... contingency',11106,1,0,'gyro SAY_DEATH'),
(-1554006,'You have approximately five seconds to live.',11109,1,0,'ironhand SAY_AGGRO_1'),
(-1554007,'With the precise angle and velocity...',11112,1,0,'ironhand SAY_HAMMER_1'),
(-1554008,'Low tech yet quiet effective!',11113,1,0,'ironhand SAY_HAMMER_2'),
(-1554009,'A foregone conclusion.',11110,1,0,'ironhand SAY_SLAY_1'),
(-1554010,'The processing will continue a schedule!',11111,1,0,'ironhand SAY_SLAY_2'),
(-1554011,'My calculations did not...',11114,1,0,'ironhand SAY_DEATH_1'),
(-1554012,'raises his hammer menacingly...',0,3,0,'ironhand EMOTE_HAMMER'),
(-1554013,'Don\'t value your life very much, do you?',11186,1,0,'sepethrea SAY_AGGRO'),
(-1554014,'I am not alone.',11191,1,0,'sepethrea SAY_SUMMON'),
(-1554015,'Think you can take the heat?',11189,1,0,'sepethrea SAY_DRAGONS_BREATH_1'),
(-1554016,'Anar\'endal dracon!',11190,1,0,'sepethrea SAY_DRAGONS_BREATH_2'),
(-1554017,'And don\'t come back!',11187,1,0,'sepethrea SAY_SLAY1'),
(-1554018,'En\'dala finel el\'dal',11188,1,0,'sepethrea SAY_SLAY2'),
(-1554019,'Anu... bala belore...alon.',11192,1,0,'sepethrea SAY_DEATH'),
(-1554020,'We are on a strict timetable. You will not interfere!',11193,1,0,'pathaleon SAY_AGGRO'),
(-1554021,'I\'m looking for a team player...',11197,1,0,'pathaleon SAY_DOMINATION_1'),
(-1554022,'You work for me now!',11198,1,0,'pathaleon SAY_DOMINATION_2'),
(-1554023,'Time to supplement my work force.',11196,1,0,'pathaleon SAY_SUMMON'),
(-1554024,'I prefeer to be hands-on...',11199,1,0,'pathaleon SAY_ENRAGE'),
(-1554025,'A minor inconvenience.',11194,1,0,'pathaleon SAY_SLAY_1'),
(-1554026,'Looks like you lose.',11195,1,0,'pathaleon SAY_SLAY_2'),
(-1554027,'The project will... continue.',11200,1,0,'pathaleon SAY_DEATH');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1585029 AND -1585000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1585000,'You only waste my time!',12378,1,0,'selin SAY_AGGRO'),
(-1585001,'My hunger knows no bounds!',12381,1,0,'selin SAY_ENERGY'),
(-1585002,'Yes! I am a god!',12382,1,0,'selin SAY_EMPOWERED'),
(-1585003,'Enough distractions!',12388,1,0,'selin SAY_KILL_1'),
(-1585004,'I am invincible!',12385,1,0,'selin SAY_KILL_2'),
(-1585005,'No! More... I must have more!',12383,1,0,'selin SAY_DEATH'),
(-1585006,'begins to channel from the nearby Fel Crystal...',0,3,0,'selin EMOTE_CRYSTAL'),
(-1585007,'Drain...life!',12389,1,0,'vexallus SAY_AGGRO'),
(-1585008,'Un...con...tainable.',12392,1,0,'vexallus SAY_ENERGY'),
(-1585009,'Un...leash...',12390,1,0,'vexallus SAY_OVERLOAD'),
(-1585010,'Con...sume.',12393,1,0,'vexallus SAY_KILL'),
(-1585011,'discharges pure energy!',0,3,0,'vexallus EMOTE_DISCHARGE_ENERGY'),
(-1585012,'Annihilate them!',12395,1,0,'delrissa SAY_AGGRO'),
(-1585013,'Oh, the horror.',12398,1,0,'delrissa LackeyDeath1'),
(-1585014,'Well, aren\'t you lucky?',12400,1,0,'delrissa LackeyDeath2'),
(-1585015,'Now I\'m getting annoyed.',12401,1,0,'delrissa LackeyDeath3'),
(-1585016,'Lackies be damned! I\'ll finish you myself!',12403,1,0,'delrissa LackeyDeath4'),
(-1585017,'I call that a good start.',12405,1,0,'delrissa PlayerDeath1'),
(-1585018,'I could have sworn there were more of you.',12407,1,0,'delrissa PlayerDeath2'),
(-1585019,'Not really much of a group, anymore, is it?',12409,1,0,'delrissa PlayerDeath3'),
(-1585020,'One is such a lonely number.',12410,1,0,'delrissa PlayerDeath4'),
(-1585021,'It\'s been a kick, really.',12411,1,0,'delrissa PlayerDeath5'),
(-1585022,'Not what I had... planned...',12397,1,0,'delrissa SAY_DEATH'),
(-1585023,'Don\'t look so smug! I know what you\'re thinking, but Tempest Keep was merely a set back. Did you honestly believe I would trust the future to some blind, half-night elf mongrel? Oh no, he was merely an instrument, a stepping stone to a much larger plan! It has all led to this, and this time, you will not interfere!',12413,1,0,'kaelthas MT SAY_AGGRO'),
(-1585024,'Vengeance burns!',12415,1,0,'kaelthas MT SAY_PHOENIX'),
(-1585025,'Felomin ashal!',12417,1,0,'kaelthas MT SAY_FLAMESTRIKE'),
(-1585026,'I\'ll turn your world... upside... down...',12418,1,0,'kaelthas MT SAY_GRAVITY_LAPSE'),
(-1585027,'Master... grant me strength.',12419,1,0,'kaelthas MT SAY_TIRED'),
(-1585028,'Do not... get too comfortable.',12420,1,0,'kaelthas MT SAY_RECAST_GRAVITY'),
(-1585029,'My demise accomplishes nothing! The Master will have you! You will drown in your own blood! This world shall burn! Aaaghh!',12421,1,0,'kaelthas MT SAY_DEATH');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1580035 AND -1580000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1580000,'Aggh! No longer will I be a slave to Malygos! Challenge me and you will be destroyed!',12422,1,0,'kalecgos SAY_EVIL_AGGRO'),
(-1580001,'I will purge you!',12423,1,0,'kalecgos SAY_EVIL_SPELL1'),
(-1580002,'Your pain has only begun!',12424,1,0,'kalecgos SAY_EVIL_SPELL2'),
(-1580003,'In the name of Kil\'jaeden!',12425,1,0,'kalecgos SAY_EVIL_SLAY1'),
(-1580004,'You were warned!',12426,1,0,'kalecgos SAY_EVIL_SLAY2'),
(-1580005,'My awakening is complete! You shall all perish!',12427,1,0,'kalecgos SAY_EVIL_ENRAGE'),
(-1580006,'I need... your help... Cannot... resist him... much longer...',12428,1,0,'kalecgos humanoid SAY_GOOD_AGGRO'),
(-1580007,'Aaahhh! Help me, before I lose my mind!',12429,1,0,'kalecgos humanoid SAY_GOOD_NEAR_DEATH'),
(-1580008,'Hurry! There is not much of me left!',12430,1,0,'kalecgos humanoid SAY_GOOD_NEAR_DEATH2'),
(-1580009,'I am forever in your debt. Once we have triumphed over Kil\'jaeden, this entire world will be in your debt as well.',12431,1,0,'kalecgos humanoid SAY_GOOD_PLRWIN'),
(-1580010,'There will be no reprieve. My work here is nearly finished.',12451,1,0,'sathrovarr SAY_SATH_AGGRO'),
(-1580011,'I\'m... never on... the losing... side...',12452,1,0,'sathrovarr SAY_SATH_DEATH'),
(-1580012,'Your misery is my delight!',12453,1,0,'sathrovarr SAY_SATH_SPELL1'),
(-1580013,'I will watch you bleed!',12454,1,0,'sathrovarr SAY_SATH_SPELL2'),
(-1580014,'Pitious mortal!',12455,1,0,'sathrovarr SAY_SATH_SLAY1'),
(-1580015,'Haven\'t you heard? I always win!',12456,1,0,'sathrovarr SAY_SATH_SLAY2'),
(-1580016,'I have toyed with you long enough!',12457,1,0,'sathrovarr SAY_SATH_ENRAGE'),
(-1580017,'Puny lizard! Death is the only answer you\'ll find here!',12458,1,0,'brutallus YELL_INTRO'),
(-1580018,'Grah! Your magic is weak!',12459,1,0,'brutallus YELL_INTRO_BREAK_ICE'),
(-1580019,'I will crush you!',12460,1,0,'brutallus YELL_INTRO_CHARGE'),
(-1580020,'That was fun.',12461,1,0,'brutallus YELL_INTRO_KILL_MADRIGOSA'),
(-1580021,'Come, try your luck!',12462,1,0,'brutallus YELL_INTRO_TAUNT'),
(-1580022,'Ahh! More lambs to the slaughter!',12463,1,0,'brutallus YELL_AGGRO'),
(-1580023,'Perish, insect!',12464,1,0,'brutallus YELL_KILL1'),
(-1580024,'You are meat!',12465,1,0,'brutallus YELL_KILL2'),
(-1580025,'Too easy!',12466,1,0,'brutallus YELL_KILL3'),
(-1580026,'Bring the fight to me!',12467,1,0,'brutallus YELL_LOVE1'),
(-1580027,'Another day, another glorious battle!',12468,1,0,'brutallus YELL_LOVE2'),
(-1580028,'I live for this!',12469,1,0,'brutallus YELL_LOVE3'),
(-1580029,'So much for a real challenge... Die!',12470,1,0,'brutallus YELL_BERSERK'),
(-1580030,'Gah! Well done... Now... this gets... interesting...',12471,1,0,'brutallus YELL_DEATH'),
(-1580031,'Hold, friends! There is information to be had before this devil meets his fate!',12472,1,0,'madrigosa YELL_MADR_ICE_BARRIER'),
(-1580032,'Where is Anveena, demon? What has become of Kalec?',12473,1,0,'madrigosa YELL_MADR_INTRO'),
(-1580033,'You will tell me where they are!',12474,1,0,'madrigosa YELL_MADR_ICE_BLOCK'),
(-1580034,'Speak, I grow weary of asking!',12475,1,0,'madrigosa YELL_MADR_TRAP'),
(-1580035,'Malygos, my lord! I did my best!',12476,1,0,'madrigosa YELL_MADR_DEATH');

DELETE FROM `script_texts` WHERE `entry`=-1033000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1033000,'Thanks for freeing me, I\'ll open this door for you, then I will get out of here.',0,0,0,'shadowfang_prisoner SAY_FREE');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1309023 AND -1309000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1309000,'Let the coils of hate unfurl!',8421,1,0,'venoxis SAY_TRANSFORM'),
(-1309001,'Ssserenity..at lassst!',0,1,0,'venoxis SAY_DEATH'),
(-1309002,'Lord Hir\'eek, grant me wings of vengance!',8417,1,0,'jeklik SAY_AGGRO'),
(-1309003,'I command you to rain fire down upon these invaders!',0,1,0,'jeklik SAY_RAIN_FIRE'),
(-1309004,'Finally ...death. Curse you Hakkar! Curse you!',8422,1,0,'jeklik SAY_DEATH'),
(-1309005,'Draw me to your web mistress Shadra. Unleash your venom!',8418,1,0,'marli SAY_AGGRO'),
(-1309006,'Shadra, make of me your avatar!',0,1,0,'marli SAY_TRANSFORM'),
(-1309007,'Aid me my brood!',0,1,0,'marli SAY_SPIDER_SPAWN'),
(-1309008,'Bless you mortal for this release. Hakkar controls me no longer...',8423,1,0,'marli SAY_DEATH'),
(-1309009,'Shirvallah, fill me with your RAGE!',8419,1,0,'thekal SAY_AGGRO'),
(-1309010,'Hakkar binds me no more! Peace at last!',8424,1,0,'thekal SAY_DEATH'),
(-1309011,'Bethekk, your priestess calls upon your might!',8416,1,0,'arlokk SAY_AGGRO'),
(-1309012,'Feast on $n, my pretties!',0,1,0,'arlokk SAY_FEAST_PANTHER'),
(-1309013,'At last, I am free of the Soulflayer!',8412,1,0,'arlokk SAY_DEATH'),
(-1309014,'Welcome to da great show friends! Step right up to die!',8425,1,0,'jindo SAY_AGGRO'),
(-1309015,'I\'ll feed your souls to Hakkar himself!',8413,1,0,'mandokir SAY_AGGRO'),
(-1309016,'DING!',0,1,0,'mandokir SAY_DING_KILL'),
(-1309017,'GRATS!',0,1,0,'mandokir SAY_GRATS_JINDO'),
(-1309018,'I\'m keeping my eye on you, $N!',0,1,0,'mandokir SAY_WATCH'),
(-1309019,'Don\'t make me angry. You won\'t like it when I\'m angry.',0,1,0,'mandokir SAY_WATCH_WHISPER'),
(-1309020,'PRIDE HERALDS THE END OF YOUR WORLD. COME, MORTALS! FACE THE WRATH OF THE SOULFLAYER!',8414,1,0,'hakkar SAY_AGGRO'),
(-1309021,'Fleeing will do you no good, mortals!',0,1,0,'hakkar SAY_FLEEING'),
(-1309022,'You dare set foot upon Hakkari holy ground? Minions of Hakkar, destroy the infidels!',0,1,0,'hakkar SAY_MINION_DESTROY'),
(-1309023,'Minions of Hakkar, hear your God. The sanctity of this temple has been compromised. Invaders encroach upon holy ground! The Altar of Blood must be protected. Kill them all!',0,1,0,'hakkar SAY_PROTECT_ALTAR');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1568023 AND -1568000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1568000,'Spirits of da wind be your doom!',12031,1,0,'janalai SAY_AGGRO'),
(-1568001,'I burn ya now!',12032,1,0,'janalai SAY_FIRE_BOMBS'),
(-1568002,'Where ma hatcha? Get to work on dem eggs!',12033,1,0,'janalai SAY_SUMMON_HATCHER'),
(-1568003,'I show you strength... in numbers.',12034,1,0,'janalai SAY_ALL_EGGS'),
(-1568004,'You done run outta time!',12035,1,0,'janalai SAY_BERSERK'),
(-1568005,'It all be over now, mon!',12036,1,0,'janalai SAY_SLAY_1'),
(-1568006,'Tazaga-choo!',12037,1,0,'janalai SAY_SLAY_2'),
(-1568007,'Zul\'jin... got a surprise for you...',12038,1,0,'janalai SAY_DEATH'),
(-1568008,'Come, strangers. The spirit of the dragonhawk hot be hungry for worthy souls.',12039,1,0,'janalai SAY_EVENT_STRANGERS'),
(-1568009,'Come, friends. Your bodies gonna feed ma hatchlings, and your souls are going to feed me with power!',12040,1,0,'janalai SAY_EVENT_FRIENDS'),
(-1568010,'Get da move on, guards! It be killin\' time!',12066,1,0,'nalorakk SAY_WAVE1_AGGRO'),
(-1568011,'Guards, go already! Who you more afraid of, dem... or me?',12067,1,0,'nalorakk SAY_WAVE2_STAIR1'),
(-1568012,'Ride now! Ride out dere and bring me back some heads!',12068,1,0,'nalorakk SAY_WAVE3_STAIR2'),
(-1568013,'I be losin\' me patience! Go on: make dem wish dey was never born!',12069,1,0,'nalorakk SAY_WAVE4_PLATFORM'),
(-1568014,'What could be better than servin\' da bear spirit for eternity? Come closer now. Bring your souls to me!',12078,1,0,'nalorakk SAY_EVENT1_SACRIFICE'),
(-1568015,'Don\'t be delayin\' your fate. Come to me now. I make your sacrifice quick.',12079,1,0,'nalorakk SAY_EVENT2_SACRIFICE'),
(-1568016,'You be dead soon enough!',12070,1,0,'nalorakk SAY_AGGRO'),
(-1568017,'I bring da pain!',12071,1,0,'nalorakk SAY_SURGE'),
(-1568018,'You call on da beast, you gonna get more dan you bargain for!',12072,1,0,'nalorakk SAY_TOBEAR'),
(-1568019,'Make way for Nalorakk!',12073,1,0,'nalorakk SAY_TOTROLL'),
(-1568020,'You had your chance, now it be too late!',12074,1,0,'nalorakk SAY_BERSERK'),
(-1568021,'Mua-ha-ha! Now whatchoo got to say?',12075,1,0,'nalorakk SAY_SLAY1'),
(-1568022,'Da Amani gonna rule again!',12076,1,0,'nalorakk SAY_SLAY2'),
(-1568023,'I... be waitin\' on da udda side....',12077,1,0,'nalorakk SAY_DEATH');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1509027 AND -1509000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1509000,'senses your fear.',0,2,0,'moam EMOTE_AGGRO'),
(-1509001,'bristles with energy!',0,2,0,'moan EMOTE_MANA_FULL'),
(-1509002,'sets eyes on $N!',0,2,0,'buru EMOTE_TARGET'),
(-1509003,'They come now. Try not to get yourself killed, young blood.',0,1,0,'andorov SAY_ANDOROV_INTRO'),
(-1509004,'Remember, Rajaxx, when I said I\'d kill you last? I lied...',0,1,0,'andorov SAY_ANDOROV_ATTACK'),
(-1509005,'The time of our retribution is at hand! Let darkness reign in the hearts of our enemies!',8612,1,0,'rajaxx SAY_WAVE3'),
(-1509006,'No longer will we wait behind barred doors and walls of stone! No longer will our vengeance be denied! The dragons themselves will tremble before our wrath!',8610,1,0,'rajaxx SAY_WAVE4'),
(-1509007,'Fear is for the enemy! Fear and death!',8608,1,0,'rajaxx SAY_WAVE5'),
(-1509008,'Staghelm will whimper and beg for his life, just as his whelp of a son did! One thousand years of injustice will end this day!',8611,1,0,'rajaxx SAY_WAVE6'),
(-1509009,'Fandral! Your time has come! Go and hide in the Emerald Dream and pray we never find you!',8607,1,0,'rajaxx SAY_WAVE7'),
(-1509010,'Impudent fool! I will kill you myself!',8609,1,0,'rajaxx SAY_INTRO'),
(-1509011,'Attack and make them pay dearly!',8603,1,0,'rajaxx SAY_UNK1'),
(-1509012,'Crush them! Drive them out!',8605,1,0,'rajaxx SAY_UNK2'),
(-1509013,'Do not hesitate! Destroy them!',8606,1,0,'rajaxx SAY_UNK3'),
(-1509014,'Warriors! Captains! Continue the fight!',8613,1,0,'rajaxx SAY_UNK4'),
(-1509015,'You are not worth my time $N!',8614,1,0,'rajaxx SAY_DEAGGRO'),
(-1509016,'Breath your last!',8604,1,0,'rajaxx SAY_KILLS_ANDOROV'),
(-1509017,'Soon you will know the price of your meddling, mortals... The master is nearly whole... And when he rises, your world will be cease!',0,1,0,'rajaxx SAY_COMPLETE_QUEST'),
(-1509018,'I am rejuvinated!',8593,1,0,'ossirian SAY_SURPREME1'),
(-1509019,'My powers are renewed!',8595,1,0,'ossirian SAY_SURPREME2'),
(-1509020,'My powers return!',8596,1,0,'ossirian SAY_SURPREME3'),
(-1509021,'Protect the city at all costs!',8597,1,0,'ossirian SAY_RAND_INTRO1'),
(-1509022,'The walls have been breached!',8599,1,0,'ossirian SAY_RAND_INTRO2'),
(-1509023,'To your posts. Defend the city.',8600,1,0,'ossirian SAY_RAND_INTRO3'),
(-1509024,'Tresspassers will be terminated.',8601,1,0,'ossirian SAY_RAND_INTRO4'),
(-1509025,'Sands of the desert rise and block out the sun!',8598,1,0,'ossirian SAY_AGGRO'),
(-1509026,'You are terminated.',8602,1,0,'ossirian SAY_SLAY'),
(-1509027,'I...have...failed.',8594,1,0,'ossirian SAY_DEATH');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1531011 AND -1531000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1531000,'Are you so eager to die? I would be happy to accomodate you.',8615,1,0,'skeram SAY_AGGRO1'),
(-1531001,'Cower mortals! The age of darkness is at hand.',8616,1,0,'skeram SAY_AGGRO2'),
(-1531002,'Tremble! The end is upon you.',8621,1,0,'skeram SAY_AGGRO3'),
(-1531003,'Let your death serve as an example!',8617,1,0,'skeram SAY_SLAY1'),
(-1531004,'Spineless wretches! You will drown in rivers of blood!',8619,1,0,'skeram SAY_SLAY2'),
(-1531005,'The screams of the dying will fill the air. A symphony of terror is about to begin!',8620,1,0,'skeram SAY_SLAY3'),
(-1531006,'Prepare for the return of the ancient ones!',8618,1,0,'skeram SAY_SPLIT'),
(-1531007,'You only delay... the inevetable.',8622,1,0,'skeram SAY_DEATH'),
(-1531008,'You will be judged for defiling these sacred grounds! The laws of the Ancients will not be challenged! Trespassers will be annihilated!',8646,1,0,'sartura SAY_AGGRO'),
(-1531009,'I sentence you to death!',8647,1,0,'sartura SAY_SLAY'),
(-1531010,'I serve to the last!',8648,1,0,'sartura SAY_DEATH'),
(-1531011,'is weakened!',0,2,0,'cthun EMOTE_WEAKENED');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1509027 AND -1509018;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1509018,'I am rejuvinated!',8593,1,0,'ossirian SAY_SURPREME1'),
(-1509019,'My powers are renewed!',8595,1,0,'ossirian SAY_SURPREME2'),
(-1509020,'My powers return!',8596,1,0,'ossirian SAY_SURPREME3'),
(-1509021,'Protect the city at all costs!',8597,1,0,'ossirian SAY_RAND_INTRO1'),
(-1509022,'The walls have been breached!',8599,1,0,'ossirian SAY_RAND_INTRO2'),
(-1509023,'To your posts. Defend the city.',8600,1,0,'ossirian SAY_RAND_INTRO3'),
(-1509024,'Tresspassers will be terminated.',8601,1,0,'ossirian SAY_RAND_INTRO4'),
(-1509025,'Sands of the desert rise and block out the sun!',8598,1,0,'ossirian SAY_AGGRO'),
(-1509026,'You are terminated.',8602,1,0,'ossirian SAY_SLAY'),
(-1509027,'I...have...failed.',8594,1,0,'ossirian SAY_DEATH');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1564096 AND -1564000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1564000,'You will die in the name of Lady Vashj!',11450,1,0,'SAY_AGGRO'),
(-1564001,'Stick around!',11451,1,0,'SAY_NEEDLE1'),
(-1564002,'I\'ll deal with you later!',11452,1,0,'SAY_NEEDLE2'),
(-1564003,'Your success was short lived!',11455,1,0,'SAY_SLAY1'),
(-1564004,'Time for you to go!',11456,1,0,'SAY_SLAY2'),
(-1564005,'Bel\'anen dal\'lorei!',11453,1,0,'SAY_SPECIAL1'),
(-1564006,'Blood will flow!',11454,1,0,'SAY_SPECIAL2'),
(-1564007,'Bal\'amer ch\'itah!',11457,1,0,'SAY_ENRAGE1'),
(-1564008,'My patience has ran out! Die, DIE!',11458,1,0,'SAY_ENRAGE2'),
(-1564009,'Lord Illidan will... crush you.',11459,1,0,'SAY_DEATH'),
(-1564010,'%s acquires a new target!',0,3,0,'supremus EMOTE_NEW_TARGET'),
(-1564011,'%s punches the ground in anger!',0,3,0,'supremus EMOTE_PUNCH_GROUND'),
(-1564012,'The ground begins to crack open!',0,3,0,'supremus EMOTE_GROUND_CRACK'),
(-1564013,'No! Not yet...',11385,1,0,'akama shade SAY_LOW_HEALTH'),
(-1564014,'I will not last much longer...',11386,1,0,'akama shade SAY_DEATH'),
(-1564015,'Come out from the shadows! I\'ve returned to lead you against our true enemy! Shed your chains and raise your weapons against your Illidari masters!',0,1,0,'akama shade SAY_FREE'),
(-1564016,'Hail our leader! Hail Akama!',0,1,0,'akama shade broken SAY_BROKEN_FREE_01'),
(-1564017,'Hail Akama!',0,1,0,'akama shade broken SAY_BROKEN_FREE_02'),
(-1564018,'You play, you pay.',11501,1,0,'shahraz SAY_TAUNT1'),
(-1564019,'I\'m not impressed.',11502,1,0,'shahraz SAY_TAUNT2'),
(-1564020,'Enjoying yourselves?',11503,1,0,'shahraz SAY_TAUNT3'),
(-1564021,'So... business or pleasure?',11504,1,0,'shahraz SAY_AGGRO'),
(-1564022,'You seem a little tense.',11505,1,0,'shahraz SAY_SPELL1'),
(-1564023,'Don\'t be shy.',11506,1,0,'shahraz SAY_SPELL2'),
(-1564024,'I\'m all... yours.',11507,1,0,'shahraz SAY_SPELL3'),
(-1564025,'Easy come, easy go.',11508,1,0,'shahraz SAY_SLAY1'),
(-1564026,'So much for a happy ending.',11509,1,0,'shahraz SAY_SLAY2'),
(-1564027,'Stop toying with my emotions!',11510,1,0,'shahraz SAY_ENRAGE'),
(-1564028,'I wasn\'t... finished.',11511,1,0,'shahraz SAY_DEATH'),
(-1564029,'Horde will... crush you.',11432,1,0,'bloodboil SOUND_AGGRO'),
(-1564030,'Time to feast!',11433,1,0,'bloodboil SAY_SLAY1'),
(-1564031,'More! I want more!',11434,1,0,'bloodboil SAY_SLAY2'),
(-1564032,'Drink your blood! Eat your flesh!',11435,1,0,'bloodboil SAY_SPECIAL1'),
(-1564033,'I hunger!',11436,1,0,'bloodboil SAY_SPECIAL2'),
(-1564034,'<babbling>',11437,1,0,'bloodboil SAY_ENRAGE1'),
(-1564035,'I\'ll rip the meat from your bones!',11438,1,0,'bloodboil SAY_ENRAGE2'),
(-1564036,'Aaaahrg...',11439,1,0,'bloodboil SAY_DEATH'),
(-1564037,'I was the first, you know. For me, the wheel of death has spun many times. <laughs> So much time has passed. I have a lot of catching up to do...',11512,1,0,'teron SAY_INTRO'),
(-1564038,'Vengeance is mine!',11513,1,0,'teron SAY_AGGRO'),
(-1564039,'I have use for you!',11514,1,0,'teron SAY_SLAY1'),
(-1564040,'It gets worse...',11515,1,0,'teron SAY_SLAY2'),
(-1564041,'What are you afraid of?',11517,1,0,'teron SAY_SPELL1'),
(-1564042,'Death... really isn\'t so bad.',11516,1,0,'teron SAY_SPELL2'),
(-1564043,'Give in!',11518,1,0,'teron SAY_SPECIAL1'),
(-1564044,'I have something for you...',11519,1,0,'teron SAY_SPECIAL2'),
(-1564045,'YOU WILL SHOW THE PROPER RESPECT!',11520,1,0,'teron SAY_ENRAGE'),
(-1564046,'The wheel...spins...again....',11521,1,0,'teron SAY_DEATH'),
(-1564047,'Pain and suffering are all that await you!',11415,1,0,'essence SUFF_SAY_FREED'),
(-1564048,'Don\'t leave me alone!',11416,1,0,'essence SUFF_SAY_AGGRO'),
(-1564049,'Look at what you make me do!',11417,1,0,'essence SUFF_SAY_SLAY1'),
(-1564050,'I didn\'t ask for this!',11418,1,0,'essence SUFF_SAY_SLAY2'),
(-1564051,'The pain is only beginning!',11419,1,0,'essence SUFF_SAY_SLAY3'),
(-1564052,'I don\'t want to go back!',11420,1,0,'essence SUFF_SAY_RECAP'),
(-1564053,'Now what do I do?',11421,1,0,'essence SUFF_SAY_AFTER'),
(-1564054,'%s becomes enraged!',0,3,0,'essence SUFF_EMOTE_ENRAGE'),
(-1564055,'You can have anything you desire... for a price.',11408,1,0,'essence DESI_SAY_FREED'),
(-1564056,'Fulfilment is at hand!',11409,1,0,'essence DESI_SAY_SLAY1'),
(-1564057,'Yes... you\'ll stay with us now...',11410,1,0,'essence DESI_SAY_SLAY2'),
(-1564058,'Your reach exceeds your grasp.',11412,1,0,'essence DESI_SAY_SLAY3'),
(-1564059,'Be careful what you wish for...',11411,1,0,'essence DESI_SAY_SPEC'),
(-1564060,'I\'ll be waiting...',11413,1,0,'essence DESI_SAY_RECAP'),
(-1564061,'I won\'t be far...',11414,1,0,'essence DESI_SAY_AFTER'),
(-1564062,'Beware: I live!',11399,1,0,'essence ANGER_SAY_FREED'),
(-1564063,'So... foolish.',11400,1,0,'essence ANGER_SAY_FREED2'),
(-1564064,'<maniacal cackle>',11401,1,0,'essence ANGER_SAY_SLAY1'),
(-1564065,'Enough. No more.',11402,1,0,'essence ANGER_SAY_SLAY2'),
(-1564066,'On your knees!',11403,1,0,'essence ANGER_SAY_SPEC'),
(-1564067,'Beware, coward.',11405,1,0,'essence ANGER_SAY_BEFORE'),
(-1564068,'I won\'t... be... ignored.',11404,1,0,'essence ANGER_SAY_DEATH'),
(-1564069,'You wish to test me?',11524,1,0,'council vera AGGRO'),
(-1564070,'I have better things to do...',11422,1,0,'council gath AGGRO'),
(-1564071,'Flee or die!',11482,1,0,'council mala AGGRO'),
(-1564072,'Common... such a crude language. Bandal!',11440,1,0,'council zere AGGRO'),
(-1564073,'Enough games!',11428,1,0,'council gath ENRAGE'),
(-1564074,'You wish to kill me? Hahaha, you first!',11530,1,0,'council vera ENRAGE'),
(-1564075,'For Quel\'Thalas! For the Sunwell!',11488,1,0,'council mala ENRAGE'),
(-1564076,'Sha\'amoor sine menoor!',11446,1,0,'council zere ENRAGE'),
(-1564077,'Enjoy your final moments!',11426,1,0,'council gath SPECIAL1'),
(-1564078,'You\'re not caught up for this!',11528,1,0,'council vera SPECIAL1'),
(-1564079,'No second chances!',11486,1,0,'council mala SPECIAL1'),
(-1564080,'Diel fin\'al',11444,1,0,'council zere SPECIAL1'),
(-1564081,'You are mine!',11427,1,0,'council gath SPECIAL2'),
(-1564082,'Anar\'alah belore!',11529,1,0,'council vera SPECIAL2'),
(-1564083,'I\'m full of surprises!',11487,1,0,'council mala SPECIAL2'),
(-1564084,'Sha\'amoor ara mashal?',11445,1,0,'council zere SPECIAL2'),
(-1564085,'Selama am\'oronor!',11423,1,0,'council gath SLAY'),
(-1564086,'Valiant effort!',11525,1,0,'council vera SLAY'),
(-1564087,'My work is done.',11483,1,0,'council mala SLAY'),
(-1564088,'Shorel\'aran.',11441,1,0,'council zere SLAY'),
(-1564089,'Well done!',11424,1,0,'council gath SLAY_COMT'),
(-1564090,'A glorious kill!',11526,1,0,'council vera SLAY_COMT'),
(-1564091,'As it should be!',11484,1,0,'council mala SLAY_COMT'),
(-1564092,'Belesa menoor!',11442,1,0,'council zere SLAY_COMT'),
(-1564093,'Lord Illidan... I...',11425,1,0,'council gath DEATH'),
(-1564094,'You got lucky!',11527,1,0,'council vera DEATH'),
(-1564095,'Destiny... awaits.',11485,1,0,'council mala DEATH'),
(-1564096,'Diel ma\'ahn... oreindel\'o',11443,1,0,'council zere DEATH');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1409018 AND -1409000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1409000,'performs one last service for Ragnaros.',0,2,0,'geddon EMOTE_SERVICE'),
(-1409001,'goes into a killing frenzy!',0,2,0,'magmadar EMOTE_FRENZY'),
(-1409002,'refuses to die while its master is in trouble.',0,2,0,'core rager EMOTE_AEGIS'),
(-1409003,'Reckless mortals, none may challenge the sons of the living flame!',8035,1,0,'majordomo SAY_AGGRO'),
(-1409004,'The runes of warding have been destroyed! Hunt down the infedels my bretheren.',8039,1,0,'majordomo SAY_SPAWN'),
(-1409005,'Ashes to Ashes!',8037,1,0,'majordomo SAY_SLAY'),
(-1409006,'Burn mortals! Burn for this transgression!',8036,1,0,'majordomo SAY_SPECIAL'),
(-1409007,'Impossible! Stay your attack mortals! I submitt! I submitt! Brashly you have come to rest the secrets of the living flame. You will soon regret the recklessness of your quest. I go now to summon the lord whos house this is. Should you seek an audiance with him your paltry lives will surly be forfit. Nevertheless seek out his lair if you dare!',8038,1,0,'majordomo SAY_DEFEAT'),
(-1409008,'Behold Ragnaros, the Firelord! He who was ancient when this world was young! Bow before him, mortals! Bow before your ending!',8040,1,0,'ragnaros SAY_SUMMON_MAJ'),
(-1409009,'TOO SOON! YOU HAVE AWAKENED ME TOO SOON, EXECUTUS! WHAT IS THE MEANING OF THIS INTRUSION?',8043,1,0,'ragnaros SAY_ARRIVAL1_RAG'),
(-1409010,'These mortal infidels, my lord! They have invaded your sanctum, and seek to steal your secrets!',8041,1,0,'ragnaros SAY_ARRIVAL2_MAJ'),
(-1409011,'FOOL! YOU ALLOWED THESE INSECTS TO RUN RAMPANT THROUGH THE HALLOWED CORE, AND NOW YOU LEAD THEM TO MY VERY LAIR? YOU HAVE FAILED ME, EXECUTUS! JUSTICE SHALL BE MET, INDEED!',8044,1,0,'ragnaros SAY_ARRIVAL3_RAG'),
(-1409012,'NOW FOR YOU, INSECTS. BOLDLY YOU SAUGHT THE POWER OF RAGNAROS NOW YOU SHALL SEE IT FIRST HAND.',8045,1,0,'ragnaros SAY_ARRIVAL5_RAG'),
(-1409013,'COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!',8049,1,0,'ragnaros SAY_REINFORCEMENTS1'),
(-1409014,'YOU CANNOT DEFEAT THE LIVING FLAME! COME YOU MINIONS OF FIRE! COME FORTH YOU CREATURES OF HATE! YOUR MASTER CALLS!',8050,1,0,'ragnaros SAY_REINFORCEMENTS2'),
(-1409015,'BY FIRE BE PURGED!',8046,1,0,'ragnaros SAY_HAND'),
(-1409016,'TASTE THE FLAMES OF SULFURON!',8047,1,0,'ragnaros SAY_WRATH'),
(-1409017,'DIE INSECT!',8051,1,0,'ragnaros SAY_KILL'),
(-1409018,'MY PATIENCE IS DWINDILING! COME NATS TO YOUR DEATH!',8048,1,0,'ragnaros SAY_MAGMABURST');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1552030 AND -1552000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1552000,'It is a small matter to control the mind of the weak... for I bear allegiance to powers untouched by time, unmoved by fate. No force on this world or beyond harbors the strength to bend our knee... not even the mighty Legion!',11122,1,0,'skyriss SAY_INTRO'),
(-1552001,'Bear witness to the agent of your demise!',11123,1,0,'skyriss SAY_AGGRO'),
(-1552002,'Your fate is written!',11124,1,0,'skyriss SAY_KILL_1'),
(-1552003,'The chaos I have sown here is but a taste...',11125,1,0,'skyriss SAY_KILL_2'),
(-1552004,'You will do my bidding, weakling.',11127,1,0,'skyriss SAY_MIND_1'),
(-1552005,'Your will is no longer your own.',11128,1,0,'skyriss SAY_MIND_2'),
(-1552006,'Flee in terror!',11129,1,0,'skyriss SAY_FEAR_1'),
(-1552007,'I will show you horrors undreamed of!',11130,1,0,'skyriss SAY_FEAR_2'),
(-1552008,'We span the universe, as countless as the stars!',11131,1,0,'skyriss SAY_IMAGE'),
(-1552009,'I am merely one of... infinite multitudes.',11126,1,0,'skyriss SAY_DEATH'),
(-1552010,'Where in Bonzo\'s brass buttons am I? And who are-- yaaghh, that\'s one mother of a headache!',11171,1,0,'millhouse SAY_INTRO_1'),
(-1552011,'\"Lowly\"? I don\'t care who you are friend, no one refers to the mighty Millhouse Manastorm as \"Lowly\"! I have no idea what goes on here, but I will gladly join your fight against this impudent imbecile! Prepare to defend yourself, cretin!',11172,1,0,'millhouse SAY_INTRO_2'),
(-1552012,'I just need to get some things ready first. You guys go ahead and get started. I need to summon up some water...',11173,1,0,'millhouse SAY_WATER'),
(-1552013,'Fantastic! Next, some protective spells. Yes! Now we\'re cookin\'',11174,1,0,'millhouse SAY_BUFFS'),
(-1552014,'And of course i\'ll need some mana. You guys are gonna love this, just wait.',11175,1,0,'millhouse SAY_DRINK'),
(-1552015,'Aaalllriiiight!! Who ordered up an extra large can of whoop-ass?',11176,1,0,'millhouse SAY_READY'),
(-1552016,'I didn\'t even break a sweat on that one.',11177,1,0,'millhouse SAY_KILL_1'),
(-1552017,'You guys, feel free to jump in anytime.',11178,1,0,'millhouse SAY_KILL_2'),
(-1552018,'I\'m gonna light you up, sweet cheeks!',11179,1,0,'millhouse SAY_PYRO'),
(-1552019,'Ice, ice, baby!',11180,1,0,'millhouse SAY_ICEBLOCK'),
(-1552020,'Heal me! Oh, for the love of all that is holy, HEAL me! I\'m dying!',11181,1,0,'millhouse SAY_LOWHP'),
(-1552021,'You\'ll be hearing from my lawyer...',11182,1,0,'millhouse SAY_DEATH'),
(-1552022,'Who\'s bad? Who\'s bad? That\'s right: we bad!',11183,1,0,'millhouse SAY_COMPLETE'),
(-1552023,'I knew the prince would be angry but, I... I have not been myself. I had to let them out! The great one speaks to me, you see. Wait--outsiders. Kael\'thas did not send you! Good... I\'ll just tell the prince you released the prisoners!',11222,1,0,'mellichar YELL_INTRO1'),
(-1552024,'The naaru kept some of the most dangerous beings in existence here in these cells. Let me introduce you to another...',11223,1,0,'mellichar YELL_INTRO2'),
(-1552025,'Yes, yes... another! Your will is mine!',11224,1,0,'mellichar YELL_RELEASE1'),
(-1552026,'Behold another terrifying creature of incomprehensible power!',11225,1,0,'mellichar YELL_RELEASE2A'),
(-1552027,'What is this? A lowly gnome? I will do better, O\'great one.',11226,1,0,'mellichar YELL_RELEASE2B'),
(-1552028,'Anarchy! Bedlam! Oh, you are so wise! Yes, I see it now, of course!',11227,1,0,'mellichar YELL_RELEASE3'),
(-1552029,'One final cell remains. Yes, O\'great one, right away!',11228,1,0,'mellichar YELL_RELEASE4'),
(-1552030,'Welcome, O\'great one. I am your humble servant.',11229,1,0,'mellichar YELL_WELCOME');

DELETE FROM `script_texts` WHERE `entry`=-1000100;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1000100,'Come, little ones. Face me!',0,1,0,'azuregos SAY_TELEPORT');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1249004 AND -1249000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1249000,'How fortuitous. Usually, I must leave my lair to feed.',0,1,0,'onyxia SAY_AGGRO'),
(-1249001,'Learn your place mortal!',0,1,0,'onyxia SAY_KILL'),
(-1249002,'This meaningless exertion bores me. I\'ll incinerate you all from above!',0,1,0,'onyxia SAY_PHASE_2_TRANS'),
(-1249003,'It seems you\'ll need another lesson, mortals!',0,1,0,'onyxia SAY_PHASE_3_TRANS'),
(-1249004,'takes in a deep breath...',0,1,0,'onyxia EMOTE_BREATH');

DELETE FROM `script_texts` WHERE `entry`=-1469031;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1469031,'goes into a frenzy!',0,2,0,'flamegor EMOTE_FRENZY');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000105 AND -1000101;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1000101,'Follow me, $N. I\'ll take you to the Defias hideout. But you better protect me or I am as good as dead',0,0,7,'defias traitor SAY_START'),
(-1000102,'The entrance is hidden here in Moonbrook. Keep your eyes peeled for thieves. They want me dead.',0,0,7,'defias traitor SAY_PROGRESS'),
(-1000103,'You can go tell Stoutmantle this is where the Defias Gang is holed up, $N.',0,0,7,'defias traitor SAY_END'),
(-1000104,'%s coming in fast! Prepare to fight!',0,0,7,'defias traitor SAY_AGGRO_1'),
(-1000105,'Help!',0,0,7,'defias traitor SAY_AGGRO_2');

-- World SQL file:  175_world_scripts.sql

UPDATE `creature_template` SET `ScriptName`='npc_defias_traitor' WHERE `entry`='467';
-- World SQL file:  176_world.sql

ALTER TABLE `npc_option`
  CHANGE COLUMN `id` `id` mediumint(8) unsigned NOT NULL default '0',
  CHANGE COLUMN `gossip_id` `gossip_id` mediumint(8) unsigned NOT NULL default '0',
  CHANGE COLUMN `action` `action` mediumint(8) unsigned NOT NULL default '0',
  ADD COLUMN `box_money` int(10) unsigned NOT NULL default '0' AFTER `action`,
  ADD COLUMN `coded` tinyint(3) unsigned NOT NULL default '0' AFTER `box_money`,
  ADD COLUMN `box_text` text AFTER `option_text`;

CREATE TABLE `locales_npc_option` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `option_text_loc1` text,
  `option_text_loc2` text,
  `option_text_loc3` text,
  `option_text_loc4` text,
  `option_text_loc5` text,
  `option_text_loc6` text,
  `option_text_loc7` text,
  `option_text_loc8` text,
  `box_text_loc1` text,
  `box_text_loc2` text,
  `box_text_loc3` text,
  `box_text_loc4` text,
  `box_text_loc5` text,
  `box_text_loc6` text,
  `box_text_loc7` text,
  `box_text_loc8` text,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `creature_template`
  CHANGE COLUMN `flags` `unit_flags` int(10) unsigned NOT NULL default '0',
  CHANGE COLUMN `flag1` `type_flags` int(10) unsigned NOT NULL default '0';

-- World SQL file:  182_world.sql

DELETE FROM `command` WHERE name IN ('possess', 'unpossess');
INSERT INTO `command` (name,security,help) VALUES
('possess',3,'Syntax: .possess\r\n\r\nPossesses indefinitely the selected creature.'),
('unpossess',3,'Syntax: .unpossess\r\n\r\nIf you are possessed, unpossesses yourself; otherwise unpossesses current possessed target.');

-- World SQL file:  212_world_scripts.sql

UPDATE `creature_template` SET `ScriptName`='npc_clintar_dreamwalker' WHERE `entry`=22834;
UPDATE `creature_template` SET `ScriptName`='npc_clintar_spirit' WHERE `entry` = 22916;
UPDATE `creature_template` SET `ScriptName`='mob_sparrowhawk' WHERE `entry`=22979;
UPDATE `creature_template` SET `ScriptName`='mob_rizzle_sprysprocket' WHERE `entry`=23002;
UPDATE `creature_template` SET `ScriptName`='mob_depth_charge' WHERE `entry`=23025;
-- World SQL file:  230_world.sql

UPDATE `spell_proc_event` SET `procFlags` = '8396800' WHERE `entry` =14774;
UPDATE `spell_proc_event` SET `procFlags` = '8396800' WHERE `entry` =14531;

-- World SQL file:  230_world_blacktemple.sql

DELETE FROM spell_linked_spell WHERE `spell_trigger` IN (39992, 39835, 42052, -41914, -41917, 41126, -41376, 39908);
-- INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (39992, 39835, 1, 'Needle Spine');
INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (39835, 39968, 1, 'Needle Spine');
INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (-41376, 41377, 0, 'Spite');
INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (41126, 41131, 1, 'Flame Crash');
INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (-41914, 41915, 0, 'Summon Parasitic Shadowfiend');
INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (-41917, 41915, 0, 'Summon Parasitic Shadowfiend');
INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (39908, 40017, 1, 'Eye Blast');

-- spine
update gameobject_template set scriptname = 'go_najentus_spine' where entry = 185584;
-- molten_flame
UPDATE creature_template SET spell1 = 40980, flags_extra = 128, speed = 1.0, scriptname = 'molten_flame' WHERE entry = 23095;
-- volcano
UPDATE creature_template SET spell1 = 40117, flags_extra = 128, scriptname = '' WHERE entry = 23085;
-- flame crash
update creature_template set spell1 = 40836, flags_extra = 128, scriptname = '' where entry = 23336;
-- blaze
update creature_template set spell1 = 40610, flags_extra = 128, scriptname = '' where entry = 23259;
-- glaive
update creature_template set scriptname = 'mob_blade_of_azzinoth' where entry = 22996;
-- parasitic shadowfiend
update creature_template set scriptname = 'mob_parasitic_shadowfiend' where entry = 23498;
-- Maiev
update creature_template set minlevel = 73, maxlevel = 73, minhealth = 500000, maxhealth = 500000, mindmg = 3000, maxdmg = 4000 where entry = 23197;
-- World SQL file:  230_world_scripts.sql

update gameobject_template set scriptname = 'go_gilded_brazier' where entry = 181956;
-- World SQL file:  230_world_serpent_shrine.sql

UPDATE creature_template SET ScriptName = 'boss_leotheras_the_blind' WHERE entry = '21215';
UPDATE creature_template SET ScriptName = 'boss_leotheras_the_blind_demonform' WHERE entry = '21875';
UPDATE creature_template SET ScriptName = 'mob_greyheart_spellbinder' WHERE entry = '21806';
UPDATE creature_template SET ScriptName = 'mob_inner_demon' WHERE entry = '21857';

UPDATE creature_template SET ScriptName = 'mob_toxic_sporebat', speed = '1' WHERE entry = '22140';
UPDATE creature_template SET modelid_A = '11686', modelid_H = '11686', flags_extra = '128' WHERE entry = '22207';

-- lurker
UPDATE creature_model_info SET bounding_radius = '13', combat_reach = '20' WHERE modelid = '20216';
UPDATE creature_template SET InhabitType = '3', ScriptName = 'boss_the_lurker_below' WHERE entry = '21217';
UPDATE creature_template SET ScriptName = 'mob_coilfang_ambusher' WHERE entry = '21865';
UPDATE creature_template SET ScriptName = 'mob_coilfang_guardian' WHERE entry = '21873';

-- World SQL file:  231_world_scripts.sql

UPDATE `creature_template` SET `ScriptName`='boss_pathaleon_the_calculator' WHERE `entry`=19220;
UPDATE `creature_template` SET `ScriptName`='mob_nether_wraith' WHERE `entry`=21062;
UPDATE `instance_template` SET `script`='instance_mechanar' WHERE `map`=554;
-- World SQL file:  233_world.sql

UPDATE `spell_proc_event` SET `SchoolMask` = '1' WHERE `entry` = '41434';

-- World SQL file:  238_world.sql

DELETE FROM trinity_string WHERE entry IN (453);
-- World SQL file:  240_world.sql

delete from `command` where `name` IN ('senditems','sendmail');
insert into `command` (`name`, `security`, `help`) values
('senditems',3,'Syntax: .senditems #playername "#subject" "#text" itemid1[:count1] itemid2[:count2] ... itemidN[:countN]\r\n\r\nSend a mail to a player. Subject and mail text must be in "". If for itemid not provided related count values then expected 1, if count > max items in stack then items will be send in required amount stacks. All stacks amount in mail limited to 12.'),
('sendmail',1,'Syntax: .sendmail #playername "#subject" "#text"\r\n\r\nSend a mail to a player. Subject and mail text must be in "".');
 
-- World SQL file:  241_world.sql

DELETE FROM `command` WHERE name IN ('bindsight', 'unbindsight');
INSERT INTO `command` (name,security,help) VALUES
('bindsight',3,'Syntax: .bindsight\r\n\r\nBinds vision to the selected unit indefinitely. Cannot be used while currently possessing a target.'),
('unbindsight',3,'Syntax: .unbindsight\r\n\r\nRemoves bound vision. Cannot be used while currently possessing a target.');

-- World SQL file:  247_world.sql

ALTER TABLE `spell_linked_spell` DROP PRIMARY KEY;

UPDATE creature_template SET scriptname = 'boss_kalecgos' WHERE entry = 24850;
UPDATE creature_template SET scriptname = 'boss_sathrovarr' WHERE entry = 24892;
UPDATE creature_template SET scriptname = 'boss_kalec' WHERE entry = 24891;
UPDATE creature_template SET minhealth = 2018275, maxhealth = minhealth = 2018275 WHERE entry = 24892;
UPDATE creature_template SET minlevel = 73, maxlevel = 73, minhealth = 828555, maxhealth = 828555, armor = 5000, mindmg = 1000, maxdmg = 2000 WHERE entry = 24891;
UPDATE gameobject_template SET scriptname = 'kalocegos_teleporter' WHERE entry = 187055;

INSERT INTO creature_template_addon (entry) SELECT 24891 FROM creature_template_addon WHERE NOT EXISTS(SELECT * FROM creature_template_addon WHERE entry = 24891) LIMIT 1; 
INSERT INTO creature_template_addon (entry) SELECT 24892 FROM creature_template_addon WHERE NOT EXISTS(SELECT * FROM creature_template_addon WHERE entry = 24892) LIMIT 1; 
UPDATE creature_template_addon SET auras = '45769 0 45769 1' WHERE entry = 24850;
UPDATE creature_template_addon SET auras = '45769 0 45769 1 44801 0 44801 1 44801 2' WHERE entry = 24891;
UPDATE creature_template_addon SET auras = '45769 0 45769 1 44801 0 44801 1 44801 2 44800 0' WHERE entry = 24892;

DELETE FROM spell_linked_spell WHERE `spell_trigger` IN (44869, 46648, 46019, 46021, -46021, 46020);
INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (44869, 44866, 1, 'Spectral Blast Portal');
-- 46648 will cause severe lag if your video card is not good enough
-- INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (44869, 46648, 1, 'Spectral Blast Visual');
INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (44869, 46019, 1, 'Spectral Blast Teleport');
INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (46019, 46021, 1, 'Spectral Realm Aura');
-- 44852 makes boss friendly to you, weird
-- INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (46021, 44852, 1, 'Spectral Realm Aura');
INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (-46021, 46020, 0, 'Teleport: Normal Realm');
INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (46020, 44867, 1, 'Spectral Exhaustion');

DELETE FROM spell_target_position WHERE `id` IN (46019, 46020);
INSERT INTO spell_target_position () VALUES (46019, 580, 1704.34, 928.17, -74.558, 0);
INSERT INTO spell_target_position () VALUES (46020, 580, 1704.34, 928.17, 53.079, 0);
