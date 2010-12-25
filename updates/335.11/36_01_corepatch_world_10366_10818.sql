-- Updated to Revision 10818
 
-- ------------------------------- 
-- TrinityCore -- 
-- ------------------------------- 

-- 10383_world_version.sql
ALTER TABLE `version` CHANGE `core_revision` `core_revision` varchar(120) DEFAULT NULL;

-- 10392_world_spell_bonus_data.sql
DELETE FROM `spell_bonus_data` WHERE `entry`=53600;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(53600,0,0,0,0, 'Paladin - Shield of Righteousness');

-- 10393_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN(12281,12812,12813,12814,12815);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`)VALUES
(12281,0x00,4,0xAA600444,0x00400105,0x00000000,0x00000000,0x00000000,0,0,6), -- SwordSpecialization (Rank 1)
(12812,0x00,4,0xAA600444,0x00400105,0x00000000,0x00000000,0x00000000,0,0,6), -- SwordSpecialization (Rank 2)
(12813,0x00,4,0xAA600444,0x00400105,0x00000000,0x00000000,0x00000000,0,0,6), -- SwordSpecialization (Rank 3)
(12814,0x00,4,0xAA600444,0x00400105,0x00000000,0x00000000,0x00000000,0,0,6), -- SwordSpecialization (Rank 4)
(12815,0x00,4,0xAA600444,0x00400105,0x00000000,0x00000000,0x00000000,0,0,6); -- SwordSpecialization (Rank 5)

-- 10397_world_command.sql
-- Rename changed learn commands
DELETE FROM `command` WHERE `name` LIKE 'learn%';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('learn',3, 'Syntax: .learn #spell [all]\r\n\r\nSelected character learn a spell of id #spell. If ''all'' provided then all ranks learned.'),
('learn all',3, 'Syntax: .learn all\r\n\r\nLearn all big set different spell maybe useful for Administaror.'),
('learn all crafts',2, 'Syntax: .learn crafts\r\n\r\nLearn all professions and recipes.'),
('learn all default',1, 'Syntax: .learn all default [$playername]\r\n\r\nLearn for selected/$playername player all default spells for his race/class and spells rewarded by completed quests.'),
('learn all gm',2, 'Syntax: .learn all gm\r\n\r\nLearn all default spells for Game Masters.'),
('learn all lang',1, 'Syntax: .learn all lang\r\n\r\nLearn all languages'),
('learn all my class',3, 'Syntax: .learn all my class\r\n\r\nLearn all spells and talents available for his class.'),
('learn all my pettalents',3, 'Syntax: .learn all my pettalents\r\n\r\nLearn all talents for your pet available for his creature type (only for hunter pets).'),
('learn all my spells',3, 'Syntax: .learn all my spells\r\n\r\nLearn all spells (except talents and spells with first rank learned as talent) available for his class.'),
('learn all my talents',3, 'Syntax: .learn all my talents\r\n\r\nLearn all talents (and spells with first rank learned as talent) available for his class.'),
('learn all recipes',2, 'Syntax: .learn all recipes [$profession]\r\rLearns all recipes of specified profession and sets skill level to max.\rExample: .learn all recipes enchanting');
-- Rename changed npc commands
DELETE FROM `command` WHERE `name` LIKE 'npc%';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('npc',1, 'Syntax: .npc $subcommand\nType .npc to see the list of possible subcommands or .help npc $subcommand to see info on subcommands'),
('npc add',2, 'Syntax: .npc add #creatureid\r\n\r\nSpawn a creature by the given template id of #creatureid.'),
('npc add formation',1, 'Syntax: .npc add formation $leader\nAdd selected creature to a leader''s formation.'),
('npc add item',2, 'Syntax: .npc add item #itemId <#maxcount><#incrtime><#extendedcost>r\r\n\r\nAdd item #itemid to item list of selected vendor. Also optionally set max count item in vendor item list and time to item count restoring and items ExtendedCost.'),
('npc add move',2, 'Syntax: .npc add move #creature_guid [#waittime]\r\n\r\nAdd your current location as a waypoint for creature with guid #creature_guid. And optional add wait time.'),
('npc set allowmove',3, 'Syntax: .npc set allowmove\r\n\r\nEnable or disable movement creatures in world. Not implemented.'),
('npc set entry',3, 'Syntax: .npc set entry $entry\nSwitch selected creature with another entry from creature_template. - New creature.id value not saved to DB.'),
('npc set level',2, 'Syntax: .npc set level #level\r\n\r\nChange the level of the selected creature to #level.\r\n\r\n#level may range from 1 to (CONFIG_MAX_PLAYER_LEVEL) + 3.'),
('npc delete',2, 'Syntax: .npc delete [#guid]\r\n\r\nDelete creature with guid #guid (or the selected if no guid is provided)'),
('npc delete item',2, 'Syntax: .npc delete item #itemId\r\n\r\nRemove item #itemid from item list of selected vendor.'),
('npc set factionid',2, 'Syntax: .npc set factionid #factionid\r\n\r\nSet the faction of the selected creature to #factionid.'),
('npc set flag',2, 'Syntax: .npc set flag #npcflag\r\n\r\nSet the NPC flags of creature template of the selected creature and selected creature to #npcflag. NPC flags will applied to all creatures of selected creature template after server restart or grid unload/load.'),
('npc follow',2, 'Syntax: .npc follow start\r\n\r\nSelected creature start follow you until death/fight/etc.'),
('npc follow stop',2, 'Syntax: .npc follow stop\r\n\r\nSelected creature (non pet) stop follow you.'),
('npc info',3, 'Syntax: .npc info\r\n\r\nDisplay a list of details for the selected creature.\r\n\r\nThe list includes:\r\n- GUID, Faction, NPC flags, Entry ID, Model ID,\r\n- Level,\r\n- Health (current/maximum),\r\n\r\n- Field flags, dynamic flags, faction template, \r\n- Position information,\r\n- and the creature type, e.g. if the creature is a vendor.'),
('npc move',2, 'Syntax: .npc move [#creature_guid]\r\n\r\nMove the targeted creature spawn point to your coordinates.'),
('npc playemote',3, 'Syntax: .npc playemote #emoteid\r\n\r\nMake the selected creature emote with an emote of id #emoteid.'),
('npc say',1, 'Syntax: .npc say $message\nMake selected creature say specified message.'),
('npc set deathstate',2, 'Syntax: .npc set deathstate on/off\r\n\r\nSet default death state (dead/alive) for npc at spawn.'),
('npc set link',2, 'Syntax: .npc set link $creatureGUID\r\n\r\nLinks respawn of selected creature to the condition that $creatureGUID defined is alive.'),
('npc set model',2, 'Syntax: .npc set model #displayid\r\n\r\nChange the model id of the selected creature to #displayid.'),
('npc set movetype',2, 'Syntax: .npc set movetype [#creature_guid] stay/random/way [NODEL]\r\n\r\nSet for creature pointed by #creature_guid (or selected if #creature_guid not provided) movement type and move it to respawn position (if creature alive). Any existing waypoints for creature will be removed from the database if you do not use NODEL. If the creature is dead then movement type will applied at creature respawn.\r\nMake sure you use NODEL, if you want to keep the waypoints.'),
('npc set phase',2, 'Syntax: .npc set phase #phasemask\r\n\r\nSelected unit or pet phasemask changed to #phasemask with related world vision update for players. In creature case state saved to DB and persistent. In pet case change active until in game phase changed for owner, owner re-login, or GM-mode enable/disable..'),
('npc set spawndist',2, 'Syntax: .npc set spawndist #dist\r\n\r\nAdjust spawndistance of selected creature to dist.'),
('npc set spawntime',2, 'Syntax: .npc set spawntime #time \r\n\r\nAdjust spawntime of selected creature to time.'),
('npc add temp',2, 'Syntax: .npc add temp\r\n\r\nAdds temporary NPC, not saved to database.'),
('npc textemote',1, 'Syntax: .npc textemote #emoteid\r\n\r\nMake the selected creature to do textemote with an emote of id #emoteid.'),
('npc whisper',1, 'Syntax: .npc whisper #playerguid #text\r\nMake the selected npc whisper #text to  #playerguid.'),
('npc yell',1, 'Syntax: .npc yell $message\nMake selected creature yell specified message.');

-- 10419_world_spell_linked_spell.sql
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (58984);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(58984,59646,0, 'Shadowmeld: Sanctuary'),
(58984,62196,0, 'Shadowmeld: Force deselect');

-- 10431_world_trinity_string.sql 
DELETE FROM `trinity_string` WHERE `entry` IN (1134,1135);
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES 
(1134, 'Sending tickets is allowed.'),
(1135, 'Sending tickets is not allowed.');

-- 10460_world_command.sql
-- Rename changed gobject commands
DELETE FROM `command` WHERE `name` IN ('gobject setphase','gobject tempadd','gobject set phase','gobject add temp');
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('gobject set phase',2, 'Syntax: .gobject set phase #guid #phasemask\r\n\r\nGameobject with DB guid #guid phasemask changed to #phasemask with related world vision update for players. Gameobject state saved to DB and persistent.'),
('gobject add temp',2, 'Adds a temporary gameobject that is not saved to DB.');
-- Rename changed honor commands
DELETE FROM `command` WHERE `name` IN ('honor addkill','honor add kill');
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('honor add kill',2, 'Syntax: .honor add kill\r\n\r\nAdd the targeted unit as one of your pvp kills today (you only get honor if it''s a racial leader or a player)');
-- Add wp add command
DELETE FROM `command` WHERE `name` IN ('wp add','wp addwp');
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('wp add',2, 'Syntax: .wp add\r\n\r\nAdd a waypoint for the selected creature at your current position.');
-- Rename changed loadpath command and move it to wp reload
DELETE FROM `command` WHERE `name` IN ('loadpath','wp reload');
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('wp reload',3, 'Syntax: .wp reload $pathid\nLoad path changes ingame - IMPORTANT: must be applied first for new paths before .wp load #pathid ');
DELETE FROM `command` WHERE `name` LIKE 'reload all%';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('reload all',3, 'Syntax: .reload all\r\n\r\nReload all tables with reload support added and that can be _safe_ reloaded.'),
('reload all gossips',3, 'Syntax: .reload all gossips\nReload gossip_menu, gossip_menu_option, gossip_scripts, npc_gossip, points_of_interest tables.'),
('reload all item',3, 'Syntax: .reload all item\nReload page_text, item_enchantment_table tables.'),
('reload all locales',3, 'Syntax: .reload all locales\r\n\r\nReload all `locales_*` tables with reload support added and that can be _safe_ reloaded.'),
('reload all loot',3, 'Syntax: .reload all loot\r\n\r\nReload all `*_loot_template` tables. This can be slow operation with lags for server run.'),
('reload all npc',3, 'Syntax: .reload all npc\nReload npc_gossip, npc_option, npc_trainer, npc vendor, points of interest tables.'),
('reload all quest',3, 'Syntax: .reload all quest\r\n\r\nReload all quest related tables if reload support added for this table and this table can be _safe_ reloaded.'),
('reload all scripts',3, 'Syntax: .reload all scripts\nReload gameobject_scripts, event_scripts, quest_end_scripts, quest_start_scripts, spell_scripts, db_script_string, waypoint_scripts tables.'),
('reload all spell',3, 'Syntax: .reload all spell\r\n\r\nReload all `spell_*` tables with reload support added and that can be _safe_ reloaded.');
DELETE FROM `command` WHERE `name` IN ('titles setmask','titles set mask');
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('titles set mask',2, 'Syntax: .titles set mask #mask\r\n\r\nAllows user to use all titles from #mask.\r\n\r\n #mask=0 disables the title-choose-field');

-- 10470_world_command.sql
DELETE FROM `command` WHERE `name` LIKE 'server togglequerylog';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('server togglequerylog',4, 'Toggle SQL driver query logging.');

-- 10470_world_trinity_string.sql
DELETE FROM `trinity_string` WHERE `entry` IN (1027, 1028);
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES 
(1027, 'SQL driver query logging enabled.'),
(1028, 'SQL driver query logging disabled.');

-- 10548_world_command.sql
DELETE FROM `command` WHERE `name` LIKE 'channel set public';
DELETE FROM `command` WHERE `name` LIKE 'channel set ownership';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('channel set ownership', 3, 'Syntax: .channel set ownership $channel [on/off]\n\n\Grant ownership to the first person that joins the channel.');

-- 10548_world_trinity_string.sql
DELETE FROM `trinity_string` WHERE `entry` IN (5022, 5023);
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES
(5022, 'Granting ownership to first person that joins the channel \"%s\": Enabled.'),
(5023, 'Granting ownership to first person that joins the channel \"%s\": Disabled.');

-- 10561_world_achievement_criteria_data.sql
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (12780,13012,13011,13013) AND `type` IN (0,11);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(12780,11,0,0, 'achievement_once_bitten_twice_shy_n'),
(13012,11,0,0, 'achievement_once_bitten_twice_shy_n'),
(13011,11,0,0, 'achievement_once_bitten_twice_shy_v'),
(13013,11,0,0, 'achievement_once_bitten_twice_shy_v');

-- 10561_world_spell_linked_spell.sql
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (70867,71473,71532,71533,70879,71525,71530,71531,70877,71474,70923,71446,71478,71479,71480,71952,71390);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(70867,70871,2, 'Blood-Queen: Essence of the Blood Queen'),
(71473,70871,2, 'Blood-Queen: Essence of the Blood Queen'),
(71532,70871,2, 'Blood-Queen: Essence of the Blood Queen'),
(71533,70871,2, 'Blood-Queen: Essence of the Blood Queen'),
(70879,70871,2, 'Blood-Queen: Essence of the Blood Queen'),
(71525,70871,2, 'Blood-Queen: Essence of the Blood Queen'),
(71530,70871,2, 'Blood-Queen: Essence of the Blood Queen'),
(71531,70871,2, 'Blood-Queen: Essence of the Blood Queen'),
(70877,72649,2, 'Blood-Queen: Frenzied Bloodthirst 10man'),
(70877,72151,2, 'Blood-Queen: Frenzied Bloodthirst 10man'),
(71474,72648,2, 'Blood-Queen: Frenzied Bloodthirst 25man'),
(71474,72650,2, 'Blood-Queen: Frenzied Bloodthirst 25man'),
(70923,70924,2, 'Blood-Queen: Uncontrollable Frenzy'),
(71446,71447,1, 'Blood-Queen: Bloodbolt Splash'),
(71478,71481,1, 'Blood-Queen: Bloodbolt Splash'),
(71479,71482,1, 'Blood-Queen: Bloodbolt Splash'),
(71480,71483,1, 'Blood-Queen: Bloodbolt Splash'),
(71952,70995,1, 'Blood-Queen: Presence of the Darkfallen'),
(71390,71341,0, 'Blood-Queen: Pact of the Darkfallen');

-- 10570_world_disables.sql
ALTER TABLE `disables`
ADD COLUMN params_0 varchar (255) NOT NULL default '' AFTER flags,
ADD COLUMN params_1 VARCHAR (255) NOT NULL default '' AFTER params_0;

-- 10623_world_spell_bonus_data.sql 
DELETE FROM `spell_bonus_data` WHERE `entry` IN (66922);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(66922,0,0,0,0, 'Paladin - Flash of Light');

-- 10681_world_command.sql
DELETE FROM `command` WHERE `name` IN ('reload access_requirement','reload achievement_criteria_data','reload achievement_reward','reload all achievement','reload all area','reload all eventai','reload auctions','reload mail_level_reward','reload smart_scripts');
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('reload access_requirement',3, 'Syntax: .reload access_requirement\nReload access_requirement table.'),
('reload achievement_criteria_data',3, 'Syntax: .reload achievement_criteria_data\nReload achievement_criteria_data table.'),
('reload achievement_reward',3, 'Syntax: .reload achievement_reward\nReload achievement_reward table.'),
('reload all achievement',3, 'Syntax: .reload all achievement\r\n\r\nReload achievement_reward, achievement_criteria_data tables.'),
('reload all area',3, 'Syntax: .reload all area\r\n\r\nReload areatrigger_teleport, areatrigger_tavern, game_graveyard_zone tables.'),
('reload all eventai',3, 'Syntax: .reload all eventai\r\n\r\nReload creature_ai_scripts, creature_ai_summons, creature_ai_texts tables.'),
('reload auctions',3, 'Syntax: .reload auctions\nReload dynamic data tables from the database.'),
('reload mail_level_reward',3, 'Syntax: .reload mail_level_reward\nReload mail_level_reward table.'),
('reload smart_scripts',3, 'Syntax: .reload smart_scripts\nReload smart_scripts table.');

-- 10733_world_spell_proc_event.sql 
DELETE FROM `spell_proc_event` WHERE `entry` IN (15337,15338);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(15337,0,6,8396800,2,0,0,2,0,0,0), -- Improved Spirit Tap (Rank 1)
(15338,0,6,8396800,2,0,0,2,0,0,0); -- Improved Spirit Tap (Rank 2)

-- 10801_world_creature_linked_respawn.sql
ALTER table `creature_linked_respawn`
RENAME TO `linked_respawn`,
ADD COLUMN linkType tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
DROP PRIMARY KEY,
ADD PRIMARY KEY(`guid`, `linkType`);

-- -------------------
-- -- TrinityScript -- 
-- -------------------

-- 10402_world_spell_script_names.sql 
DELETE FROM `spell_script_names` WHERE `spell_id`=46221 AND `ScriptName`='spell_gen_animal_blood';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(46221, 'spell_gen_animal_blood');

-- 10418_world_spell_script_names.sql
DELETE FROM spell_script_names WHERE spell_id = 10848 AND `ScriptName`='spell_gen_shroud_of_death';
INSERT INTO spell_script_names (`spell_id`,`ScriptName`) VALUES
(10848, 'spell_gen_shroud_of_death');

-- 10436_world_script_texts.sql 
-- Quest Discrediting the Deserters (11133)
-- Script Texts
DELETE FROM `script_texts` WHERE `entry` BETWEEN (-1603510) AND (-1603502);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`)
VALUES
(4979,-1603502, 'Hey, thanks.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'Theramore Guard - SAY_QUEST1'),
(4979,-1603503, '...receive 50 percent off deserter undergarments? What is this garbage?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Theramore Guard - SAY_QUEST2'),
(4979,-1603504, '...to establish a fund for the purchase of hair gel? I like my hair the way it is, thanks!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Theramore Guard - SAY_QUEST3'),
(4979,-1603505, '...the deserters seek a Theramore where citizens will be free to juggle at all hours of the day? What is this nonsense?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Theramore Guard - SAY_QUEST4'),
(4979,-1603506, '...to establish the chicken as the official symbol of Theramore?! These guys are nuts!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Theramore Guard - SAY_QUEST5'),
(4979,-1603507, '...as a deserter, you\'ll enjoy activities like tethered swimming and dog grooming? How ridiculous!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Theramore Guard - SAY_QUEST6'),
(4979,-1603508, 'This... this is a joke, right?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Theramore Guard - SAY_QUEST7'),
(4979,-1603509, 'I\'d never join anything like this. Better keep this, though. It\'ll come in handy in the privy...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Theramore Guard - SAY_QUEST8'),
(4979,-1603510, 'What a bunch of lunatics! You actually believe this stuff?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Theramore Guard - SAY_QUEST9');

-- 10436_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_theramore_guard' WHERE `entry`=4979; -- Theramore Guard

-- 10453_world_script_text.sql 
-- Quest Smoke Em Out
DELETE FROM `script_texts` WHERE `entry` BETWEEN (-1603539) AND (-1603535);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(27570,-1603535, 'We\'re all gonna die!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'Smoke \'Em Out - Say1'),
(27570,-1603536, 'Gotta get out of here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'Smoke \'Em Out - Say2'),
(27570,-1603537, 'No way I\'m stickin\' around!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'Smoke \'Em Out - Say3'),
(27570,-1603538, 'Forget this! I\'m going home!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'Smoke \'Em Out - Say4'),
(27570,-1603539, 'I didn\'t sign up for this!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'Smoke \'Em Out - Say5');

-- 10453_world_creature_template.sql 
-- Quest ...Or Maybe We Don't (12138, 12198) & Quest Smoke 'Em Out (12323, 12324)
UPDATE `creature_template` SET `ScriptName`='npc_lightning_sentry' WHERE `entry`=26407; -- Lightning Sentry
UPDATE `creature_template` SET `ScriptName`='npc_venture_co_straggler',`AIName`='' WHERE `entry`=27570;

-- 10462_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id`=6474;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (6474, 'spell_sha_earthbind_totem');

-- 10468_world_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631139 AND -1631000;

-- 10468_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id` IN (69057,70826,72088,72089) AND `ScriptName`='spell_marrowgar_bone_spike_graveyard';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70903,72498,72499,72500,71236,72495,72496,72497) AND `ScriptName`='spell_cultist_dark_martyrdrom';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(69057, 'spell_marrowgar_bone_spike_graveyard'),
(70826, 'spell_marrowgar_bone_spike_graveyard'),
(72088, 'spell_marrowgar_bone_spike_graveyard'),
(72089, 'spell_marrowgar_bone_spike_graveyard'),
(70903, 'spell_cultist_dark_martyrdrom'),
(72498, 'spell_cultist_dark_martyrdrom'),
(72499, 'spell_cultist_dark_martyrdrom'),
(72500, 'spell_cultist_dark_martyrdrom'),
(71236, 'spell_cultist_dark_martyrdrom'),
(72495, 'spell_cultist_dark_martyrdrom'),
(72496, 'spell_cultist_dark_martyrdrom'),
(72497, 'spell_cultist_dark_martyrdrom');

-- 10490_world_scriptname.sql
UPDATE `item_template` SET `ScriptName`= 'item_captured_frog' WHERE `entry`=53510; -- ScriptName for Captured Frog

-- 10545_world_script_texts.sql
DELETE FROM `script_texts` WHERE `npc_entry` IN (25828,25248,25827);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(25248,-1571044, 'Well...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'npc_hidden_cultist SAY_HIDDEN_CULTIST_1'),
(25828,-1571045, 'Finally! This charade is over... Arthas give me strength!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'npc_hidden_cultist SAY_HIDDEN_CULTIST_2'),
(25827,-1571046, 'You don''t know who you''re messing with! Death beckons!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'npc_hidden_cultist SAY_HIDDEN_CULTIST_3'),
(25248,-1571047, 'I suppose this is it, then? I won''t go down quietly!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'npc_hidden_cultist SAY_HIDDEN_CULTIST_4');

-- 10545_world_scriptname.sql 
UPDATE `creature_template` SET `ScriptName`='npc_hidden_cultist' WHERE `entry` IN (25828,25248,25827);

-- 10561_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70877,71474) AND `ScriptName`='spell_blood_queen_frenzied_bloodthirst';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70946,71475,71476,71477) AND `ScriptName`='spell_blood_queen_vampiric_bite';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (71899,71900,71901,71902) AND `ScriptName`='spell_blood_queen_bloodbolt';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(70877, 'spell_blood_queen_frenzied_bloodthirst'),
(71474, 'spell_blood_queen_frenzied_bloodthirst'),
(70946, 'spell_blood_queen_vampiric_bite'),
(71475, 'spell_blood_queen_vampiric_bite'),
(71476, 'spell_blood_queen_vampiric_bite'),
(71477, 'spell_blood_queen_vampiric_bite'),
(71899, 'spell_blood_queen_bloodbolt'),
(71900, 'spell_blood_queen_bloodbolt'),
(71901, 'spell_blood_queen_bloodbolt'),
(71902, 'spell_blood_queen_bloodbolt');

-- 10561_world_scriptname.sql 
UPDATE `creature_template` SET `ScriptName`='boss_blood_queen_lana_thel' WHERE `entry`=37955;

-- 10563_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_daegarn' WHERE `entry`=24151;

-- 10619_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id`=43874 AND `ScriptName`='spell_q11396_11399_force_shield_arcane_purple_x3';
DELETE FROM `spell_script_names` WHERE `spell_id`=50133 AND `ScriptName`='spell_q11396_11399_scourging_crystal_controller';
DELETE FROM `spell_script_names` WHERE `spell_id`=43882 AND `ScriptName`='spell_q11396_11399_scourging_crystal_controller_dummy';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(43874, 'spell_q11396_11399_force_shield_arcane_purple_x3'),
(43882, 'spell_q11396_11399_scourging_crystal_controller_dummy'),
(50133, 'spell_q11396_11399_scourging_crystal_controller');

-- 10646_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_bone_spike' WHERE `entry` IN (36619,38711,38712);

-- 10736_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry`=28823;

-- 10765_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`= 'mob_rune_of_power' WHERE entry = 33705;

-- 10765_world_spell_dbc.sql
DELETE FROM spell_dbc WHERE `Id`=3617;
INSERT INTO spell_dbc (`Id`, `Effect1`, `Comment`) VALUES (3617, 1, 'NPC 32958 suicide spell');

-- 10806_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry`=3216; -- Neeru Fireblade

-- 10815_world_spell_script_names.sql
DELETE FROM `spell_script_names` WHERE `spell_id`=67533 AND `ScriptName`='spell_item_red_rider_air_rifle';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(67533, 'spell_item_red_rider_air_rifle');
