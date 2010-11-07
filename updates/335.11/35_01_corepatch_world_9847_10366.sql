-- updated to Rev 10366
-- ----------- --
-- TrinityCore --
-- ----------- --
-- 9900_world_spell_proc_event.sql 
UPDATE `spell_proc_event` SET `procFlags`=139944 WHERE `entry`=49222;

-- 9912_world_spell_bonus_data.sql
DELETE FROM `spell_bonus_data` WHERE `entry`=33110;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(33110,0.8068,0,0,0, 'Priest - Prayer of Mending Heal Proc');

-- 9920_world_pool_quest.sql
DROP TABLE IF EXISTS `pool_quest`;
CREATE TABLE `pool_quest` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `pool_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entry`),
  KEY `idx_guid` (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 9958_world_quest_poi_points.sql  
ALTER TABLE `quest_poi_points` ADD COLUMN `idx` int(10) unsigned NOT NULL DEFAULT '0' AFTER `id`;

-- 10000_world_command.sql
DELETE FROM `command` WHERE `name` IN ('ban character','ban playeraccount');
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('ban character',3, 'Syntax: .ban character $Name $bantime $reason\nBan character and kick player.\n$bantime: negative value leads to permban, otherwise use a timestring like "4d20h3s".'),
('ban playeraccount',3, 'Syntax: .ban playeraccount $Name $bantime $reason\nBan account and kick player.\n$bantime: negative value leads to permban, otherwise use a timestring like "4d20h3s".');

-- 10000_world_trinity_string.sql  
DELETE FROM `trinity_string` WHERE `entry` IN (1131,1132,1133);
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES
(1131, 'The following characters match your query:'),
(1132, 'Currently Banned Characters:'),
(1133, '|   Character   |   BanDate    |   UnbanDate  |  Banned By    |   Ban Reason  |');

-- 10023_world_command.sql  
DELETE FROM `command` WHERE `name` IN ('achievement add', 'achievement');
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('achievement add',4,'Syntax: .achievement add $achievement\nAdd an achievement to the targeted player.\n$achievement: can be either achievement id or achievement link'),
('achievement',4,'Syntax: .achievement $subcommand\nType .achievement to see the list of possible subcommands or .help achievement $subcommand to see info on subcommands');

-- 10060_world_creature_text.sql
DROP TABLE IF EXISTS `creature_text`;
CREATE TABLE `creature_text` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `text` longtext,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `probability` float NOT NULL DEFAULT '0',
  `emote` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `duration` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sound` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) DEFAULT '',
  PRIMARY KEY (`entry`,`groupid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 10076_world_command.sql
DELETE FROM `command` WHERE `name` LIKE 'reload creature_text';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('reload creature_text',3,'Syntax: .reload creature_text\r\nReload creature_text table.');

-- 10078_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (16176,16235,16240);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(16176,0x00,11,0x000001C0,0x00000000,0x00000010,0x00000000,0x00000002,0,0,0), -- Ancestral Healing (Rank 1)
(16235,0x00,11,0x000001C0,0x00000000,0x00000010,0x00000000,0x00000002,0,0,0), -- Ancestral Healing (Rank 2)
(16240,0x00,11,0x000001C0,0x00000000,0x00000010,0x00000000,0x00000002,0,0,0); -- Ancestral Healing (Rank 3)

-- 10083_world_trinity_string.sql
UPDATE `trinity_string` SET `content_default` = '%d (Entry: %d) - |cffffffff|Hgameobject:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r ' WHERE `entry` = 517;

-- 10091_world_spell_proc_event.sql
-- Taste for Blood, Overpower Ready!, Sudden Death and Fingers of Frost proc data.
DELETE FROM `spell_proc_event` WHERE `entry` IN (60503, 68051, 52437, 74396);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(60503,0x01,4,0x00000004,0x00000000,0x00000000,0x00000010,0x00000000,0,0,0),
(68051,0x01,4,0x00000004,0x00000000,0x00000000,0x00000010,0x00000000,0,0,0),
(52437,0x01,4,0x20000000,0x00000000,0x00000000,0x00000010,0x00000000,0,0,0),
(74396,0x10,3,0x00000000,0x00000000,0x00000000,0x00010000,0x00000003,0,0,0);

-- 10105_world_spell_proc_event.sql 
DELETE FROM `spell_proc_event` WHERE `entry`=71903;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(71903,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,20,0); -- Item - Shadowmourne Legendary

-- 10113_world_spell_proc_event.sql  
UPDATE `spell_proc_event` SET `SchoolMask`=0x54,`SpellFamilyMask0`=0x28E212F7,`SpellFamilyMask1`=0x00119048 WHERE `entry`=74396; -- Allow any mage spell to drop Fingers of Frost charge
UPDATE `spell_proc_event` SET `SchoolMask`=0x48,`SpellFamilyName`=7,`SpellFamilyMask0`=0x00000067,`SpellFamilyMask1`=0x03800002 WHERE `entry` IN (16880,61345,61346); -- Let Nature's Grace proc only from non-periodic magic spells

-- 10132_world_command.sql
DELETE FROM `command` WHERE `name` IN ('debug areatriggers');
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('debug areatriggers',1,'Syntax: .debug areatriggers\nToggle debug mode for areatriggers. In debug mode GM will be notified if reaching an areatrigger');

-- 10132_world_trinity_string.sql
DELETE FROM `trinity_string` WHERE `entry` IN (1202,1203,1204);
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES
(1202, 'Areatrigger debugging turned on.'),
(1203, 'Areatrigger debugging turned off.'),
(1204, 'You have reached areatrigger %u.');

-- 10192_world_creature.sql
ALTER TABLE `creature`
 ADD COLUMN `npcflag` int(10) unsigned NOT NULL DEFAULT '0' AFTER `MovementType`,
 ADD COLUMN `unit_flags` int(10) unsigned NOT NULL DEFAULT '0' AFTER `npcflag`,
 ADD COLUMN `dynamicflags` int(10) unsigned NOT NULL DEFAULT '0' AFTER `unit_flags`;

-- 10206_world_creature_classlevelstats.sql
UPDATE `creature_classlevelstats` SET `basehp1`=4731 WHERE `class`=8 AND `level`=65;
UPDATE `creature_classlevelstats` SET `basehp1`=6906 WHERE `class`=2 AND `level`=66;
UPDATE `creature_classlevelstats` SET `basehp1`=4892 WHERE `class`=8 AND `level`=66;
UPDATE `creature_classlevelstats` SET `basehp1`=5060 WHERE `class`=8 AND `level`=67;
UPDATE `creature_classlevelstats` SET `basehp1`=11570 WHERE `class`=1 AND `level`=83;

-- 10219_world_spelldifficulty_dbc.sql
-- Delete redundant data first
DELETE FROM `spelldifficulty_dbc` WHERE `id` IN (3042,3043,3044,3045,3046,3047,3048,3053,3055,3056,3057,3058,3059,3060,3061,3063,3073,3074,3075,3076,3077,3078,3079,3080,3081,3082,3083,3084,3085,3086,3087,3088,3089,3090,3091,3092,3093,3094,3095);
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`, `spellid2`, `spellid3`) VALUES
-- Razorscale spells
(3042, 62796, 63815, 0, 0), -- SPELL_FIREBALL_10 / SPELL_FIREBALL_25
(3043, 64709, 64734, 0, 0), -- SPELL_FLAME_GROUND_10 / SPELL_FLAME_GROUND_25
(3044, 63317, 64021, 0, 0), -- SPELL_FLAMEBREATH_10 / SPELL_FLAMEBREATH_25
-- Ignis spells
(3045, 62680, 63472, 0, 0), -- SPELL_FLAME_JETS_10 / SPELL_FLAME_JETS_25
(3046, 62546, 63474, 0, 0), -- SPELL_SCORCH_10 / SPELL_SCORCH_25
(3047, 62717, 63477, 0, 0), -- SPELL_SLAG_POT_10 / SPELL_SLAG_POT_25
(3048, 62836, 63536, 0, 0), -- SPELL_SLAG_IMBUED_10 / SPELL_SLAG_IMBUED_25
(3053, 62548, 63476, 0, 0); -- SPELL_GROUND_10 / SPELL_GROUND_25

-- 10223_world_spell_proc_event.sql
-- Crusader Strike proc Righteous Vengeance
UPDATE `spell_proc_event` SET `SpellFamilyMask1`=163840 WHERE `entry`=53380;
UPDATE `spell_proc_event` SET `SpellFamilyMask1`=163840 WHERE `entry`=53381;
UPDATE `spell_proc_event` SET `SpellFamilyMask1`=163840 WHERE `entry`=53382;

-- 10228_world_trinity_string.sql
DELETE FROM `trinity_string` WHERE `entry` = 819;
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES (819, "City");

-- 10230_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (70215,72858,72859,72860);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(70215,0x00,0,0x00000000,0x00000000,0x00000000,0x00000004,0x00000000,0,100,0), -- Gaseous Bloat
(72858,0x00,0,0x00000000,0x00000000,0x00000000,0x00000004,0x00000000,0,100,0), -- Gaseous Bloat
(72859,0x00,0,0x00000000,0x00000000,0x00000000,0x00000004,0x00000000,0,100,0), -- Gaseous Bloat
(72860,0x00,0,0x00000000,0x00000000,0x00000000,0x00000004,0x00000000,0,100,0); -- Gaseous Bloat

-- 10246_world_spell_linked_spell.sql
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=-68839;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(-68839,68846,0, 'Bronjahm: Corrupt Soul Summon');

-- 10281_world_gameobject_template.sql  
ALTER TABLE `gameobject_template` ADD `AIName` CHAR( 64 ) NOT NULL DEFAULT '' AFTER `data23`;

-- 10307_world_spell_bonus_data.sql  
DELETE FROM `spell_bonus_data` WHERE `entry`=116;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(116,0.857,-1,-1,-1, 'Mage - Frostbolt');

-- 10320_world_waypoints.sql
DROP TABLE IF EXISTS waypoints;
CREATE TABLE `waypoints` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pointid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `point_comment` text,
  PRIMARY KEY (`entry`,`pointid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature waypoints';

-- 10327_world_spell_bonus_data.sql
DELETE FROM `spell_bonus_data` WHERE `entry` = 46579;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(46579,0,0,0,0, 'Deathfrost - Enchantment');

-- ------------- --
-- TrinityScript --
-- ------------- --
-- 9948_world_script_name.sql
-- Add script name to the Adventurous Dwarf
UPDATE `creature_template` SET `npcflag`=1, `ScriptName`='npc_adventurous_dwarf' WHERE `entry`=28604;

-- 9948_world_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` IN (-1571043,-1571042);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(28604,-1571042, 'Ouch! Watch where you''re tugging!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'adventurous dwarf SAY_DWARF_OUCH'),
(28604,-1571043, 'Glad I could help!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'adventurous dwarf SAY_DWARF_HELP');

-- 9948_world_spell_script_names.sql 
DELETE FROM `spell_script_names` WHERE `spell_id`=51840 AND `ScriptName`='spell_q12634_despawn_fruit_tosser';
DELETE FROM `spell_script_names` WHERE `spell_id`=49587 AND `ScriptName`='spell_q12459_seeds_of_natures_wrath';
DELETE FROM `spell_script_names` WHERE `spell_id`=19512 AND `ScriptName`='spell_q6124_6129_apply_salve';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(51840, 'spell_q12634_despawn_fruit_tosser'),
(49587, 'spell_q12459_seeds_of_natures_wrath'),
(19512, 'spell_q6124_6129_apply_salve');

-- 9963_world_spell_script_names.sql 
DELETE FROM `spell_script_names` WHERE `spell_id`=24751 AND `ScriptName`='spell_gen_trick_or_treat';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (24751,'spell_gen_trick_or_treat');

-- 9977_world_spell_script_names.sql  
DELETE FROM `spell_script_names` WHERE `spell_id`=24750 AND `ScriptName`='spell_gen_trick';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (24750,'spell_gen_trick');

-- 9988_world_spell_script_names.sql 
DELETE FROM `spell_script_names` WHERE `spell_id`=-8129 AND `ScriptName`='spell_pri_mana_burn';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(-8129,'spell_pri_mana_burn');

-- 10029_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id`=41337 AND `ScriptName`='spell_gen_aura_of_anger';
DELETE FROM `spell_script_names` WHERE `spell_id`=46394 AND `ScriptName`='spell_gen_burn_brutallus';
DELETE FROM `spell_script_names` WHERE `spell_id`=-53302 AND `ScriptName`='spell_hun_sniper_training';
DELETE FROM `spell_script_names` WHERE `spell_id`=45472 AND `ScriptName`='spell_gen_parachute';
DELETE FROM `spell_script_names` WHERE `spell_id`=-51685 AND `ScriptName`='spell_rog_prey_on_the_weak';
DELETE FROM `spell_script_names` WHERE `spell_id`=66118 AND `ScriptName`='spell_gen_leeching_swarm';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (20911,25899) AND `ScriptName`='spell_pal_blessing_of_sanctuary';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(41337,'spell_gen_aura_of_anger'),
(46394,'spell_gen_burn_brutallus'),
(-53302,'spell_hun_sniper_training'),
(45472,'spell_gen_parachute'),
(-51685,'spell_rog_prey_on_the_weak'),
(66118,'spell_gen_leeching_swarm'),
(20911,'spell_pal_blessing_of_sanctuary'),
(25899,'spell_pal_blessing_of_sanctuary');
DELETE FROM `spell_script_names` WHERE `spell_id`=51662 AND `ScriptName`='spell_rog_hunger_for_blood';
DELETE FROM `spell_script_names` WHERE `spell_id`=31231 AND `ScriptName`='spell_rog_cheat_death';

-- 10099_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id` IN (-11113) AND `ScriptName` = 'spell_mage_blast_wave';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(-11113,'spell_mage_blast_wave');

-- 10105_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id`=71905 AND `ScriptName`='spell_item_shadowmourne';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(71905,'spell_item_shadowmourne'); -- Item - Shadowmourne Legendary

-- 10171_world_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` IN (-1575015,-1575016,-1575017,-1575018,-1575022);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(29281,-1575015,'My liege! I have done as you asked, and now beseech you for your blessing!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Svala Sorrowgrave SAY_DIALOG_WITH_ARTHAS_1'),
(29281,-1575016,'The sensation is... beyond my imagining. I am yours to command, my king.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Svala Sorrowgrave SAY_DIALOG_WITH_ARTHAS_2'),
(29281,-1575017,'I will be happy to slaughter them in your name! Come, enemies of the Scourge! I will show you the might of the Lich King!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Svala Sorrowgrave SAY_DIALOG_WITH_ARTHAS_3'),
(26668,-1575018,'I will vanquish your soul!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Svala Sorrowgrave SAY_AGGRO'),
(26668,-1575022,'Nooo! I did not come this far... to...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Svala Sorrowgrave SAY_DEATH');
DELETE FROM `script_texts` WHERE `entry` IN (-1575000,-1575001,-1575002);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(26687,-1575000,'What this place? I will destroy you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gortok Palehoof SAY_AGGRO'),
(26687,-1575001,'You die! That what master wants!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gortok Palehoof SAY_SLAY_1'),
(26687,-1575002,'An easy task!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gortok Palehoof SAY_SLAY_2');
DELETE FROM `script_texts` WHERE `entry` IN (-1599014);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(27978,-1599014,'Folvynn buul hrom onn!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Sjonnir The Ironshaper SAY_SLAY_3');
DELETE FROM `script_texts` WHERE `entry` IN (-1604018,-1604019,-1604020,-1604021,-1604022,-1604023);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(29304,-1604018,'Ye not breathin''! Good.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Slad''ran SAY_SLAY_1'),
(29304,-1604019,'You ssscared now?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Slad''ran SAY_SLAY_2'),
(29304,-1604020,'I''ll eat you next, mon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Slad''ran SAY_SLAY_3'),
(29304,-1604021,'I sssee now... Ssscourge wasss not... our greatessst enemy...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Slad''ran SAY_DEATH'),
(29304,-1604022,'Minionsss of the scale, heed my call!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Slad''ran SAY_SUMMON_SNAKES'),
(29304,-1604023,'A thousssand fangs gonna rend your flesh!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Slad''ran SAY_SUMMON_CONSTRICTORS');
DELETE FROM `script_texts` WHERE `entry` IN (-1604000,-1604001,-1604003,-1604004,-1604005,-1604006,-1604007,-1604008);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(29306,-1604000,'I''m gonna spill your guts, mon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gal''darah SAY_AGGRO'),
(29306,-1604001,'What a rush!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gal''darah SAY_SLAY_1'),
(29306,-1604003,'I told ya so!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gal''darah SAY_SLAY_3'),
(29306,-1604004,'Even the mighty... can fall.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gal''darah SAY_DEATH'),
(29306,-1604005,'Gut them! Impale them!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gal''darah SAY_SUMMON_RHINO_1'),
(29306,-1604006,'KILL THEM ALL!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gal''darah SAY_SUMMON_RHINO_2'),
(29306,-1604007,'Say hello to my BIG friend!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gal''darah SAY_SUMMON_RHINO_3'),
(29306,-1604008,'Ain''t gonna be nottin'' left after this!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gal''darah SAY_TRANSFORM_1');
DELETE FROM `script_texts` WHERE `entry` IN (-1619017,-1619018,-1619019);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(29309,-1619017,'Perhaps we will be allies soon.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Elder Nadox SAY_SLAY_3'),
(29309,-1619018,'Master, is my service complete?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Elder Nadox SAY_DEATH'),
(29309,-1619019,'The young must not grow hungry...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Elder Nadox SAY_EGG_SAC_1');
DELETE FROM `script_texts` WHERE `entry` IN (-1619000,-1619001,-1619002,-1619008,-1619009);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(29310,-1619000,'These are sacred halls! Your intrusion will be met with death.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_AGGRO'),
(29310,-1619001,'Who among you is devoted?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_SACRIFICE_1_1'),
(29310,-1619002,'You there! Step forward!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_SACRIFICE_1_2'),
(29310,-1619008,'Do not expect your sacrilege... to go unpunished.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_DEATH'),
(29310,-1619009,'The elements themselves will rise up against the civilized world! Only the faithful will be spared!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_PREACHING_1');
DELETE FROM `script_texts` WHERE `entry` IN (-1619030,-1619034);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(29311,-1619030,'Shgla''yos plahf mh''naus.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Herald Volazj SAY_AGGRO'),
(29311,-1619034,'Iilth vwah, uhn''agth fhssh za.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Herald Volazj SAY_DEATH_1');

-- 10181_world_script_name.sql
-- Add script name to boss ignis adds
UPDATE `creature_template` SET `ScriptName`='npc_iron_construct' WHERE `entry`=33121;
UPDATE `creature_template` SET `ScriptName`='npc_scorch_ground' WHERE `entry`=33221;

-- 10182_world_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` IN (-1603229);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(33118,-1603229,'Ignis the Furnace Master begins to cast Flame Jets!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'IGNIS EMOTE_JETS');

-- 10183_world_spell_script_names.sql 
DELETE FROM `spell_script_names` WHERE `spell_id` IN (62717,63477) AND `ScriptName`='spell_ignis_slag_pot';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(62717, 'spell_ignis_slag_pot'), -- boss Ignis 10man
(63477, 'spell_ignis_slag_pot'); -- boss Ignis 25man

-- 10189_world_scriptnames.sql
UPDATE `creature_template` SET `ScriptName`='boss_rotface' WHERE `entry`=36627;
UPDATE `creature_template` SET `ScriptName`='npc_little_ooze' WHERE `entry`=36897;
UPDATE `creature_template` SET `ScriptName`='npc_big_ooze' WHERE `entry`=36899;
UPDATE `creature_template` SET `ScriptName`='npc_precious_icc' WHERE `entry`=37217;

-- 10189_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id` IN (69782,69796,69798,69801) AND `ScriptName`='spell_rotface_ooze_flood';
DELETE FROM `spell_script_names` WHERE `spell_id`=69538 AND `ScriptName`='spell_rotface_little_ooze_combine';
DELETE FROM `spell_script_names` WHERE `spell_id`=69553 AND `ScriptName`='spell_rotface_large_ooze_combine';
DELETE FROM `spell_script_names` WHERE `spell_id`=69610 AND `ScriptName`='spell_rotface_large_ooze_buff_combine';
DELETE FROM `spell_script_names` WHERE `spell_id`=69839 AND `ScriptName`='spell_rotface_unstable_ooze_explosion_init';
DELETE FROM `spell_script_names` WHERE `spell_id`=69832 AND `ScriptName`='spell_rotface_unstable_ooze_explosion';
DELETE FROM `spell_script_names` WHERE `spell_id`=71441 AND `ScriptName`='spell_rotface_unstable_ooze_explosion_suicide';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(69782,'spell_rotface_ooze_flood'),
(69796,'spell_rotface_ooze_flood'),
(69798,'spell_rotface_ooze_flood'),
(69801,'spell_rotface_ooze_flood'),
(69538,'spell_rotface_little_ooze_combine'),
(69553,'spell_rotface_large_ooze_combine'),
(69610,'spell_rotface_large_ooze_buff_combine'),
(69839,'spell_rotface_unstable_ooze_explosion_init'),
(69832,'spell_rotface_unstable_ooze_explosion'),
(71441,'spell_rotface_unstable_ooze_explosion_suicide');

-- 10189_world_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631103 AND -1631091;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36678,-1631091,'Great news, everyone! The slime is flowing again!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17126,1,0,1,'SAY_ROTFACE_OOZE_FLOOD1'),
(36678,-1631092,'Good news, everyone! I''ve fixed the poison slime pipes!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17123,1,0,1,'SAY_ROTFACE_OOZE_FLOOD2'),
(36678,-1631093,'Terrible news, everyone, Rotface is dead! But great news everyone, he left behind plenty of ooze for me to use! Whaa...? I''m a poet, and I didn''t know it? Astounding!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17146,1,0,0,'SAY_ROTFACE_DEATH'),
(36627,-1631094,'What? Precious? Noooooooooo!!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16993,1,0,0,'SAY_PRECIOUS_DIES'),
(36627,-1631095,'WEEEEEE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16986,1,0,0,'SAY_AGGRO'),
(36627,-1631096,'%s begins to cast Slime Spray!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_SLIME_SPRAY'),
(36627,-1631097,'Icky sticky.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16991,1,0,0,'SAY_SLIME_SPRAY'),
(36627,-1631098,'|TInterface\Icons\spell_shadow_unstableaffliction_2.blp:16|t%s begins to cast |cFFFF0000Unstable Ooze Explosion!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_UNSTABLE_EXPLOSION'),
(36627,-1631099,'I think I made an angry poo-poo. It gonna blow!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16992,1,0,0,'SAY_UNSTABLE_EXPLOSION'),
(36627,-1631100,'Daddy make toys out of you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16988,1,0,0,'SAY_KILL_1'),
(36627,-1631101,'I brokes-ded it...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16987,1,0,0,'SAY_KILL_2'),
(36627,-1631102,'Sleepy Time!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16990,1,0,0,'SAY_BERSERK'),
(36627,-1631103,'Bad news daddy...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16989,1,0,0,'SAY_DEATH');

-- 10189_world_spell_linked_spell.sql
DELETE FROM `spell_linked_spell` WHERE `spell_effect`=69706;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(-69674,69706,0, 'Rotface: Mutated Infection Summon'),
(-71224,69706,0, 'Rotface: Mutated Infection Summon'),
(-73022,69706,0, 'Rotface: Mutated Infection Summon'),
(-73023,69706,0, 'Rotface: Mutated Infection Summon');

-- 10195_world_script_texts.sql 
DELETE FROM `script_texts` WHERE `entry` IN (-1575019,-1575020);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(26668,-1575019,'You were a fool to challenge the power of the Lich King!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Svala Sorrowgrave SAY_SLAY_1'),
(26668,-1575020,'Your will is done, my king.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Svala Sorrowgrave SAY_SLAY_2');
DELETE FROM `script_texts` WHERE `entry` IN (-1604002,-1604009);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(29306,-1604002,'Who needs gods, when WE ARE GODS!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gal''darah SAY_SLAY_2'),
(29306,-1604009,'You wanna see power? I''m gonna show you power!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gal''darah SAY_TRANSFORM_2');
DELETE FROM `script_texts` WHERE `entry` IN (-1619003,-1619004,-1619005,-1619007,-1619010,-1619011,-1619012,-1619013);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(29310,-1619003,'Yogg-Saron, grant me your power!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_SACRIFICE_2_1'),
(29310,-1619004,'Master, a gift for you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_SACRIFICE_2_2'),
(29310,-1619005,'Glory to Yogg-Saron!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_SLAY_1'),
(29310,-1619007,'Get up! You haven''t suffered enough.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_SLAY_3'),
(29310,-1619010,'Immortality can be yours. But only if you pledge yourself fully to Yogg-Saron!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_PREACHING_2'),
(29310,-1619011,'Here on the very borders of his domain. You will experience powers you would never have imagined!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_PREACHING_3'),
(29310,-1619012,'You have traveled long and risked much to be here. Your devotion shall be rewarded.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_PREACHING_4'),
(29310,-1619013,'The faithful shall be exalted! But there is more work to be done. We will press on until all of Azeroth lies beneath his shadow!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_PREACHING_5');
DELETE FROM `script_texts` WHERE `entry` IN (-1619020);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(29309,-1619020,'Shhhad ak kereeesshh chak-k-k!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Elder Nadox SAY_EGG_SAC_2');
DELETE FROM `script_texts` WHERE `entry` IN (-1619031,-1619032,-1619033);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(29311,-1619031,'Ywaq puul skshgn: on''ma yeh''glu zuq.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Herald Volazj SAY_SLAY_1'),
(29311,-1619032,'Ywaq ma phgwa''cul hnakf.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Herald Volazj SAY_SLAY_2'),
(29311,-1619033,'Ywaq maq oou; ywaq maq ssaggh. Ywaq ma shg''fhn.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Herald Volazj SAY_SLAY_3');

-- 10208_world_script_name.sql
-- Razorscale
UPDATE `creature_template` SET `ScriptName` = 'boss_razorscale' WHERE `entry`=33186;
UPDATE `creature_template` SET `ScriptName` = 'npc_devouring_flame' WHERE `entry`=34188;
UPDATE `creature_template` SET `ScriptName` = 'npc_mole_machine_trigger' WHERE `entry`=33245;
UPDATE `creature_template` SET `ScriptName` = 'npc_expedition_commander' WHERE `entry`=33210;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkrune_guardian' WHERE `entry`=33388;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkrune_sentinel' WHERE `entry`=33846;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkrune_watcher' WHERE `entry`=33453;

-- 10208_world_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` IN (-1603268,-1603267,-1603266);
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(33186, -1603268, 'Razorscale grounded permanently!', NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'EMOTE_PERMA'),
(33186, -1603267, 'Razorscale takes a deep breath...', NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'EMOTE_BREATH'),
(33287, -1603266, 'Harpoon Turret is ready for use!', NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'EMOTE_HARPOON');
DELETE FROM `script_texts` WHERE `entry` IN (-1603265,-1603264,-1603263,-1603262);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(33287, -1603265, 'Fires out! Let''s rebuild those turrets!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, 'SAY_TURRETS'),
(33287, -1603264, 'Ready to move out, keep those dwarves off of our backs!', NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, 'SAY_AGGRO_3'),
(33287, -1603263, 'Be on the lookout! Mole machines will be surfacing soon with those nasty Iron dwarves aboard!', NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, 'SAY_AGGRO_2'),
(33287, -1603262, 'Give us a moment to prepare to build the turrets.', NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, 'SAY_AGGRO_1');
-- Razorscale emotes
UPDATE `script_texts` SET `content_default` = "Welcome, champions! All of our attempts at grounding her have failed. We could use a hand in bring her down with these harpoon guns.", `type`=0  WHERE `entry`=-1603260;
UPDATE `script_texts` SET `content_default` = "Move! Quickly! She won't remain grounded for long.", `type`=1  WHERE `entry`=-1603261;

-- 10213_world_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` IN (-1000002,-1000003);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(0,-1000002,'%s goes into a frenzy!',0,2,0,0,'EMOTE_GENERIC_FRENZY'),
(0,-1000003,'%s becomes enraged!',0,2,0,0,'EMOTE_GENERIC_ENRAGED');
 DELETE FROM `script_texts` WHERE `entry` IN (-1575023,-1575024,-1575025,-1575026,-1575027);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(26668,-1575023,'Your death approaches.',13850,1,0,0,'svala SAY_SACRIFICE_1'),
(26668,-1575024,'Go now to my master.',13851,1,0,0,'svala SAY_SACRIFICE_2'),
(26668,-1575025,'Your end is inevitable.',13852,1,0,0,'svala SAY_SACRIFICE_3'),
(26668,-1575026,'Yor-guul mak!',13853,1,0,0,'svala SAY_SACRIFICE_4'),
(26668,-1575027,'Any last words?',13854,1,0,0,'svala SAY_SACRIFICE_5');

-- 10215_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id` = 31261 AND `ScriptName`='spell_creature_permanent_feign_death';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(31261, 'spell_creature_permanent_feign_death');

-- 10230_world_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631114 AND -1631104;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36678,-1631104,'Good news, everyone! I think I perfected a plague that will destroy all life on Azeroth!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17114,1,0,0,'SAY_AGGRO'),
(36678,-1631105,'%s begins to cast Unstable Experiment!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_UNSTABLE_EXPERIMENT'),
(36678,-1631106,'Two oozes, one room! So many delightful possibilities...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17122,1,0,0,'SAY_PHASE_TRANSITION_HEROIC'),
(36678,-1631107,'Hmm. I don''t feel a thing. Whaa...? Where''d those come from?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17120,1,0,15,'SAY_TRANSFORM_1'),
(36678,-1631108,'Tastes like... Cherry! Oh! Excuse me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17121,1,0,15,'SAY_TRANSFORM_2'),
(36678,-1631109,'|TInterface\Icons\inv_misc_herb_evergreenmoss.blp:16|t%s cast |cFF00FF00Malleable Goo!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_MALLEABLE_GOO'),
(36678,-1631110,'%s cast |cFFFF7F00Choking Gas Bomb!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_CHOKING_GAS_BOMB'),
(36678,-1631111,'Hmm... Interesting...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17115,1,0,0,'SAY_KILL_1'),
(36678,-1631112,'That was unexpected!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17116,1,0,0,'SAY_KILL_2'),
(36678,-1631113,'Great news, everyone!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17118,1,0,0,'SAY_BERSERK'),
(36678,-1631114,'Bad news, everyone! I don''t think I''m going to make it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17117,1,0,0,'SAY_DEATH');

-- 10230_world_scriptname.sql 
UPDATE `creature_template` SET `ScriptName`='npc_volatile_ooze' WHERE `entry`=37697;

-- 10230_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id`=70701 AND `ScriptName`='spell_putricide_expunged_gas';
DELETE FROM `spell_script_names` WHERE `spell_id`=70343 AND `ScriptName`='spell_putricide_slime_puddle';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70351,71966,71967,71968) AND `ScriptName`='spell_putricide_unstable_experiment';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (71412,71415) AND `ScriptName`='spell_putricide_ooze_summon';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70672,72455,72832,72833) AND `ScriptName`='spell_putricide_gaseous_bloat';
DELETE FROM `spell_script_names` WHERE `spell_id`=70459 AND `ScriptName`='spell_putricide_ooze_eruption_searcher';
DELETE FROM `spell_script_names` WHERE `spell_id`=71255 AND `ScriptName`='spell_putricide_choking_gas_bomb';
DELETE FROM `spell_script_names` WHERE `spell_id`=70920 AND `ScriptName`='spell_putricide_unbound_plague';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70360,72527) AND `ScriptName`='spell_putricide_eat_ooze';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (72451,72463,72671,72672) AND `ScriptName`='spell_putricide_mutated_plague';
DELETE FROM `spell_script_names` WHERE `spell_id`=70308 AND `ScriptName`='spell_putricide_mutation_init';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70311,71503) AND `ScriptName`='spell_putricide_mutated_transformation';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70405,72508,72509,72510) AND `ScriptName`='spell_putricide_mutated_transformation_dismiss';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70539,72457,72875,72876) AND `ScriptName`='spell_putricide_regurgitated_ooze';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(70701,'spell_putricide_expunged_gas'),
(70343,'spell_putricide_slime_puddle'),
(70351,'spell_putricide_unstable_experiment'),
(71966,'spell_putricide_unstable_experiment'),
(71967,'spell_putricide_unstable_experiment'),
(71968,'spell_putricide_unstable_experiment'),
(71412,'spell_putricide_ooze_summon'),
(71415,'spell_putricide_ooze_summon'),
(70672,'spell_putricide_gaseous_bloat'),
(72455,'spell_putricide_gaseous_bloat'),
(72832,'spell_putricide_gaseous_bloat'),
(72833,'spell_putricide_gaseous_bloat'),
(70459,'spell_putricide_ooze_eruption_searcher'),
(71255,'spell_putricide_choking_gas_bomb'),
(70920,'spell_putricide_unbound_plague'),
(70360,'spell_putricide_eat_ooze'),
(72527,'spell_putricide_eat_ooze'),
(72451,'spell_putricide_mutated_plague'),
(72463,'spell_putricide_mutated_plague'),
(72671,'spell_putricide_mutated_plague'),
(72672,'spell_putricide_mutated_plague'),
(70308,'spell_putricide_mutation_init'),
(70311,'spell_putricide_mutated_transformation'),
(71503,'spell_putricide_mutated_transformation'),
(70405,'spell_putricide_mutated_transformation_dismiss'),
(72508,'spell_putricide_mutated_transformation_dismiss'),
(72509,'spell_putricide_mutated_transformation_dismiss'),
(72510,'spell_putricide_mutated_transformation_dismiss'),
(70539,'spell_putricide_regurgitated_ooze'),
(72457,'spell_putricide_regurgitated_ooze'),
(72875,'spell_putricide_regurgitated_ooze'),
(72876,'spell_putricide_regurgitated_ooze');

-- 10246_world_spell_script_names.sql 
DELETE FROM `spell_script_names` WHERE `spell_id` IN (68793,69050) AND `ScriptName`='spell_bronjahm_magic_bane';
DELETE FROM `spell_script_names` WHERE `spell_id`=68861 AND `ScriptName`='spell_bronjahm_consume_soul';
DELETE FROM `spell_script_names` WHERE `spell_id`=69008 AND `ScriptName`='spell_bronjahm_soulstorm_channel';
DELETE FROM `spell_script_names` WHERE `spell_id`=68870 AND `ScriptName`='spell_bronjahm_soulstorm_visual';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(68793,'spell_bronjahm_magic_bane'),
(69050,'spell_bronjahm_magic_bane'),
(68861,'spell_bronjahm_consume_soul'),
(69008,'spell_bronjahm_soulstorm_channel'),
(68870,'spell_bronjahm_soulstorm_visual');

-- 10258_world_script_texts.sql
UPDATE `script_texts` SET `language`=0 WHERE `entry`='-1000600';
DELETE FROM `script_texts` WHERE `entry` IN (-1619006,-1575021,-1619015,1619016);
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `comment`) VALUES
(26668,-1575021,'Another soul for my master.','Svala Sorrowgrave SAY_SLAY_3'),
(29310,-1619006,'You are unworthy!','Jedoga Shadowseeker SAY_SLAY_2'),
(29309,-1619015,'Sleep now, in the cold dark.','Elder Nadox SAY_SLAY_1'),
(29309,-1619016,'For the Lich King!','Elder Nadox SAY_SLAY_2');

-- 10269_world_scriptname.sql
UPDATE `gameobject_template` SET `ScriptName`='go_keystone_chamber' WHERE `entry`=124371;
DELETE FROM `areatrigger_scripts` WHERE `entry`=822;
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES (822, 'at_map_chamber');

-- 10282_world_script_texts.sql
UPDATE `script_texts` SET `language`=0 WHERE `entry`='-1000600';
DELETE FROM `script_texts` WHERE `entry` IN (-1619006,-1575021,-1619015,-1619016);
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `comment`) VALUES
(26668,-1575021,'Another soul for my master.','Svala Sorrowgrave SAY_SLAY_3'),
(29310,-1619006,'You are unworthy!','Jedoga Shadowseeker SAY_SLAY_2'),
(29309,-1619015,'Sleep now, in the cold dark.','Elder Nadox SAY_SLAY_1'),
(29309,-1619016,'For the Lich King!','Elder Nadox SAY_SLAY_2');
DELETE FROM `script_texts` WHERE `entry` IN (-1000637,-1000638,-1000639,-1000640);
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `comment`) VALUES
(17807,-1000637, 'Let the trial begin, Bloodwrath, attack!', 'npc_second_trial_controller TEXT_SECOND_TRIAL_1'),
(17807,-1000638, 'Champion Lightrend, make me proud!', 'npc_second_trial_controller TEXT_SECOND_TRIAL_2'),
(17807,-1000639, 'Show this upstart how a real Blood Knight fights, Swiftblade!', 'npc_second_trial_controller TEXT_SECOND_TRIAL_3'),
(17807,-1000640, 'Show $n the meaning of pain, Sunstriker!', 'npc_second_trial_controller TEXT_SECOND_TRIAL_4');

-- 10284_world_script_texts.sql  
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631139 AND -1631115;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(38004,-1631115,'Foolish mortals. You thought us defeated so easily? The San''layn are the Lich King''s immortal soldiers! Now you shall face their might combined!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16795,1,0,1,'SAY_INTRO_1'),
(38004,-1631116,'Rise up, brothers, and destroy our enemies.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16796,1,0,0,'SAY_INTRO_2'),
(37972,-1631117,'Such wondrous power! The Darkfallen Orb has made me INVINCIBLE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16727,1,0,0,'SAY_KELESETH_INVOCATION'),
(37972,-1631118,'Invocation of Blood jumps to Prince Keleseth!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_KELESETH_INVOCATION'),
(37972,-1631119,'Blood will flow!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16728,1,0,0,'SAY_KELESETH_SPECIAL'),
(37972,-1631120,'Were you ever a threat?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16723,1,0,0,'SAY_KELESETH_KILL_1'),
(37972,-1631121,'Truth is found in death.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16724,1,0,0,'SAY_KELESETH_KILL_2'),
(37972,-1631122,'%s cackles maniacally!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16726,2,0,0,'EMOTE_KELESETH_BERSERK'),
(37972,-1631123,'My queen... they come...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16725,1,0,0,'SAY_KELESETH_DEATH'),
(37973,-1631124,'Tremble before Taldaram, mortals, for the power of the orb flows through me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16857,1,0,0,'SAY_TALDARAM_INVOCATION'),
(37973,-1631125,'Invocation of Blood jumps to Prince Taldaram!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_TALDARAM_INVOCATION'),
(37973,-1631126,'Delight in the pain!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16858,1,0,0,'SAY_TALDARAM_SPECIAL'),
(37973,-1631127,'Inferno Flames speed toward $N!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_TALDARAM_FLAME'),
(37973,-1631128,'Worm food.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16853,1,0,0,'SAY_TALDARAM_KILL_1'),
(37973,-1631129,'Beg for mercy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16854,1,0,0,'SAY_TALDARAM_KILL_2'),
(37973,-1631130,'%s laughs.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16856,2,0,0,'EMOTE_TALDARAM_BERSERK'),
(37973,-1631131,'%s gurgles and dies.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16855,2,0,0,'EMOTE_TALDARAM_DEATH'),
(37970,-1631132,'Naxxanar was merely a setback! With the power of the orb, Valanar will have his vengeance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16685,1,0,0,'SAY_VALANAR_INVOCATION'),
(37970,-1631133,'Invocation of Blood jumps to Prince Valanar!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_VALANAR_INVOCATION'),
(37970,-1631134,'My cup runneth over.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16686,1,0,0,'SAY_VALANAR_SPECIAL'),
(37970,-1631135,'%s begins casting Empowered Schock Vortex!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_VALANAR_SHOCK_VORTEX'),
(37970,-1631136,'Dinner... is served.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16681,1,0,0,'SAY_VALANAR_KILL_1'),
(37970,-1631137,'Do you see NOW the power of the Darkfallen?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16682,1,0,0,'SAY_VALANAR_KILL_2'),
(37970,-1631138,'BOW DOWN BEFORE THE SAN''LAYN!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16684,1,0,0,'SAY_VALANAR_BERSERK'),
(37970,-1631139,'...why...?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16683,1,0,0,'SAY_VALANAR_DEATH');

-- 10284_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='boss_blood_council_controller' WHERE `entry`=38008;
UPDATE `creature_template` SET `ScriptName`='boss_prince_keleseth_icc' WHERE `entry`=37972;
UPDATE `creature_template` SET `ScriptName`='boss_prince_taldaram_icc' WHERE `entry`=37973;
UPDATE `creature_template` SET `ScriptName`='boss_prince_valanar_icc' WHERE `entry`=37970;
UPDATE `creature_template` SET `ScriptName`='npc_blood_queen_lana_thel' WHERE `entry`=38004;
UPDATE `creature_template` SET `ScriptName`='npc_kinetic_bomb' WHERE `entry`=38454;
UPDATE `creature_template` SET `ScriptName`='npc_dark_nucleus' WHERE `entry`=38369;
UPDATE `creature_template` SET `ScriptName`='npc_ball_of_flame' WHERE `entry` IN (38332,38451);

-- 10284_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id`=71598 AND `ScriptName`='spell_creature_permanent_feign_death';
DELETE FROM `spell_script_names` WHERE `spell_id`=71806 AND `ScriptName`='spell_taldaram_glittering_sparks';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (71718,72040) AND `ScriptName`='spell_taldaram_summon_flame_ball';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (55891,55947) AND `ScriptName`='spell_taldaram_flame_ball_visual';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (71756,72782,72783,72783) AND `ScriptName`='spell_taldaram_ball_of_inferno_flame';
DELETE FROM `spell_script_names` WHERE `spell_id`=72080 AND `ScriptName`='spell_valanar_kinetic_bomb';
DELETE FROM `spell_script_names` WHERE `spell_id`=72087 AND `ScriptName`='spell_valanar_kinetic_bomb_knockback';
DELETE FROM `spell_script_names` WHERE `spell_id`=73001 AND `ScriptName`='spell_blood_council_shadow_prison';
DELETE FROM `spell_script_names` WHERE `spell_id`=72999 AND `ScriptName`='spell_blood_council_shadow_prison_damage';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(71598,'spell_creature_permanent_feign_death'),
(71806,'spell_taldaram_glittering_sparks'),
(71718,'spell_taldaram_summon_flame_ball'),
(72040,'spell_taldaram_summon_flame_ball'),
(55891,'spell_taldaram_flame_ball_visual'),
(55947,'spell_taldaram_flame_ball_visual'),
(71756,'spell_taldaram_ball_of_inferno_flame'),
(72782,'spell_taldaram_ball_of_inferno_flame'),
(72783,'spell_taldaram_ball_of_inferno_flame'),
(72784,'spell_taldaram_ball_of_inferno_flame'),
(72080,'spell_valanar_kinetic_bomb'),
(72087,'spell_valanar_kinetic_bomb_knockback'),
(73001,'spell_blood_council_shadow_prison'),
(72999,'spell_blood_council_shadow_prison_damage');

-- 10300_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id`=69172 AND `ScriptName`='spell_tyrannus_overlord_brand';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(69172,'spell_tyrannus_overlord_brand');

-- 10320_world_smart_scripts.sql
DROP TABLE IF EXISTS smart_scripts;
CREATE TABLE `smart_scripts` (
  `entryorguid` mediumint(11) NOT NULL,
  `source_type` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `id` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `link` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `event_type` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `event_phase_mask` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `event_chance` mediumint(5) unsigned NOT NULL DEFAULT '100',
  `event_flags` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `event_param1` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `event_param2` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `event_param3` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `event_param4` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `action_type` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `action_param1` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `action_param2` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `action_param3` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `action_param4` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `action_param5` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `action_param6` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `target_type` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `target_param1` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `target_param2` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `target_param3` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `target_x` float NOT NULL DEFAULT '0',
  `target_y` float NOT NULL DEFAULT '0',
  `target_z` float NOT NULL DEFAULT '0',
  `target_o` float NOT NULL DEFAULT '0',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT 'Event Comment',
  PRIMARY KEY (`entryorguid`,`source_type`,`id`,`link`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- 10325_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (33299,33409,33301,33414,33418,33416,33297,33298,33300,33408);
UPDATE `creature_template` SET `ScriptName` = 'generic_vehicleAI_toc5' WHERE `entry` IN (33217,33323,33320,33316,33317,33324,33318,33319,33321,33322);

-- 10349_world_script_texts.sql
-- Fix broken string
UPDATE `script_texts` SET `content_default`='%s goes into a berserker rage!' WHERE `entry`=-1000004;
-- Reuse unused
UPDATE `script_texts` SET `content_default`='%s goes into a berserker rage!',`type`=3,`comment`='EMOTE_GENERIC_BERSERK_RAID' WHERE `entry`=-1000005;

