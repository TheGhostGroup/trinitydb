-- 1755_world
DELETE FROM spell_proc_event WHERE entry IN (47535, 47536, 47537, 47538, 47539,34074,58426,31221,31222,31223);
-- Rapture
INSERT INTO `spell_proc_event` VALUES (47535, 0x00, 6, 0x1800, 0x10000, 0x00000000, 0x00014010, 0x00000000, 0.000000, 0.000000, 0);
INSERT INTO `spell_proc_event` VALUES (47536, 0x00, 6, 0x1800, 0x10000, 0x00000000, 0x00014010, 0x00000000, 0.000000, 0.000000, 0);
INSERT INTO `spell_proc_event` VALUES (47537, 0x00, 6, 0x1800, 0x10000, 0x00000000, 0x00014010, 0x00000000, 0.000000, 0.000000, 0);
INSERT INTO `spell_proc_event` VALUES (47538, 0x00, 6, 0x1800, 0x10000, 0x00000000, 0x00014010, 0x00000000, 0.000000, 0.000000, 0);
INSERT INTO `spell_proc_event` VALUES (47539, 0x00, 6, 0x1800, 0x10000, 0x00000000, 0x00014010, 0x00000000, 0.000000, 0.000000, 0);
-- Aspect of the viper
INSERT INTO `spell_proc_event` VALUES (34074, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000003, 0.000000, 0.000000, 0);
-- Overkill
INSERT INTO `spell_proc_event` VALUES (58426, 0x00, 8, 0x400000, 0x00000000, 0x00000000, 0x00014000, 0x00000000, 0.000000, 0.000000, 0);
-- Master of subtlety
INSERT INTO `spell_proc_event` VALUES (31221, 0x00, 8, 0x400000, 0x00000000, 0x00000000, 0x00014000, 0x00000000, 0.000000, 0.000000, 0);
INSERT INTO `spell_proc_event` VALUES (31222, 0x00, 8, 0x400000, 0x00000000, 0x00000000, 0x00014000, 0x00000000, 0.000000, 0.000000, 0);
INSERT INTO `spell_proc_event` VALUES (31223, 0x00, 8, 0x400000, 0x00000000, 0x00000000, 0x00014000, 0x00000000, 0.000000, 0.000000, 0);
DELETE FROM `spell_bonus_data` WHERE entry=2944;
INSERT INTO `spell_bonus_data` VALUES ('2944', '0', '0.1849', '0', 'Priest - Devouring Plague');

-- 1764_world
DELETE FROM spell_proc_event WHERE entry IN (54149,53672,20210,20212,20213,20214,20215);
-- Infusion of Light
INSERT INTO `spell_proc_event` VALUES (54149, 0x00, 10, 2097152, 65536, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);
INSERT INTO `spell_proc_event` VALUES (53672, 0x00, 10, 2097152, 65536, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);
-- Illumination
INSERT INTO `spell_proc_event` VALUES (20210, 0x00, 10, 3221225472, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);
INSERT INTO `spell_proc_event` VALUES (20212, 0x00, 10, 3221225472, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);
INSERT INTO `spell_proc_event` VALUES (20213, 0x00, 10, 3221225472, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);
INSERT INTO `spell_proc_event` VALUES (20214, 0x00, 10, 3221225472, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);
INSERT INTO `spell_proc_event` VALUES (20215, 0x00, 10, 3221225472, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);

-- 1766_world
DELETE FROM spell_proc_event WHERE entry IN (33182,33174);
INSERT INTO `spell_proc_event` VALUES (33182, 0x00, 6, 32, 0x00000000, 0x00000000, 0x00004000, 0x00000000, 0.000000, 0.000000, 0);
INSERT INTO `spell_proc_event` VALUES (33174, 0x00, 6, 32, 0x00000000, 0x00000000, 0x00004000, 0x00000000, 0.000000, 0.000000, 0);

-- 1791_mangos_7422_01_world_trinity_string
DELETE FROM `trinity_string` WHERE `entry` IN (811, 812, 813, 814, 815);
INSERT INTO `trinity_string` VALUES
(811,'Guild Master',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(812,'Officer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(813,'Veteran',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(814,'Member',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(815,'Initiate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 1814_world
-- Improved Fire Nova Totem
DELETE FROM `spell_proc_event` WHERE `entry` IN (16086, 16544);
INSERT INTO `spell_proc_event` VALUES (16086, 0x00, 7, 0, 0x00040000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);
INSERT INTO `spell_proc_event` VALUES (16544, 0x00, 7, 0, 0x00040000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

-- 1825_world
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (-47953);
INSERT INTO `spell_linked_spell` VALUES (-47953, 60406, 0, 'Divine hymn buff to enemies');

-- 1828_world
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (48265,49772,48263);
INSERT INTO `spell_linked_spell` VALUES (48265, 49772, 2, 'Unholy Presence');
INSERT INTO `spell_linked_spell` VALUES (49772, 55222, 2, 'Unholy Presence');
INSERT INTO `spell_linked_spell` VALUES (48263, 61261, 2, 'Frost Presence');

-- 1877_mangos_7439_01_world_trinity_string
DELETE FROM `trinity_string` WHERE `entry` IN (175);
INSERT INTO `trinity_string` VALUES
(175,'Liquid level: %f, ground: %f, type: %d, status: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 1884_world
DELETE FROM `trinity_string` WHERE `entry` IN (10056, 10057);

-- 1886_world
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (61847,61846);
INSERT INTO `spell_linked_spell` VALUES (61847, 61848, 2, 'Aspect of te dragonhawk');
INSERT INTO `spell_linked_spell` VALUES (61846, 61848, 2, 'Aspect of te dragonhawk');
-- Glyph of Aspect of the Monkey
DELETE FROM `spell_proc_event` WHERE `entry` IN (13163,61848);
INSERT INTO `spell_proc_event` VALUES (13163, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x0000010, 0.000000, 0.000000, 0);
INSERT INTO `spell_proc_event` VALUES (61848, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x0000010, 0.000000, 0.000000, 0);

-- 1911_world
DELETE FROM `spell_proc_event` WHERE `entry` IN (44545, 44543);
INSERT INTO `spell_proc_event` VALUES
(44545, 0x00, 3, 1049120, 4096, 0x00000000, 0x0010000, 0x00000000, 15.000000, 0.000000, 0),
(44543, 0x00, 3, 1049120, 4096, 0x00000000, 0x0010000, 0x00000000, 7.000000, 0.000000, 0);

-- 1912_world
-- Shattered Barrier
-- Improved Fear
DELETE FROM `spell_proc_event` WHERE `entry` IN (44745, 54787, 53754, 53759);
INSERT INTO `spell_proc_event` VALUES
(44745, 0x00, 3, 0x00000000, 0x00000001, 0x00000000, 0x00008000, 0x0006000, 0.000000, 0.000000, 0),
(54787, 0x00, 3, 0x00000000, 0x00000001, 0x00000000, 0x00008000, 0x0006000, 0.000000, 0.000000, 0),
(53754, 0x00, 5, 0x00000000, 1024, 0x00000000, 0x00000000, 0x0006000, 0.000000, 0.000000, 0),
(53759, 0x00, 5, 0x00000000, 1024, 0x00000000, 0x00000000, 0x0006000, 0.000000, 0.000000, 0);

-- 1927_world
-- Nature's Grace --
DELETE FROM `spell_proc_event` WHERE `entry` IN (16880, 61345, 61346);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(16880, 0x48, 7, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0),
(61345, 0x48, 7, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0),
(61346, 0x48, 7, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);
-- Blade Twisting --
DELETE FROM `spell_proc_event` WHERE `entry` IN (31124, 31126);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(31124, 0x00, 8, 0x01000006, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0),
(31126, 0x00, 8, 0x01000006, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

-- 1939_world
-- Psychic Horror
DELETE FROM `spell_proc_event` WHERE `entry` IN (47571, 47572);
INSERT INTO `spell_proc_event` VALUES
(47571, 0x00, 6, 65536, 0x00000000, 0x00000000, 0x00010000, 0x0006000, 0.000000, 50.000000, 0),
(47572, 0x00, 6, 65536, 0x00000000, 0x00000000, 0x00010000, 0x0006000, 0.000000, 100.000000, 0);

-- 1957_word
-- Furious Attacks
DELETE FROM `spell_proc_event` WHERE `entry` IN (46910, 46911);
INSERT INTO `spell_proc_event` VALUES
(46910, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x0000001, 5.5000000, 0.000000, 0),
(46911, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x0000001, 7.5000000, 0.000000, 0);

-- 1962_mangos_7472_01_world_trinity_string
DELETE FROM trinity_string WHERE entry >= 667 and entry <= 687 or entry = 614 or entry = 615;
INSERT INTO trinity_string VALUES
(614,'The Alliance flag is now placed at its base.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(615,'The Horde flag is now placed at its base.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(667,'The Alliance has taken control of the Mage Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(668,'The Horde has taken control of the Mage Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(669,'The Alliance has taken control of the Draenei Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(670,'The Horde has taken control of the Draenei Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(671,'The Alliance has taken control of the Blood Elf Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(672,'The Horde has taken control of the Blood Elf Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(673,'The Alliance has taken control of the Fel Reaver Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(674,'The Horde has taken control of the Fel Reaver Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(675,'The Alliance has lost control of the Mage Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(676,'The Horde has lost control of the Mage Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(677,'The Alliance has lost control of the Draenei Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(678,'The Horde has lost control of the Draenei Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(679,'The Alliance has lost control of the Blood Elf Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(680,'The Horde has lost control of the Blood Elf Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(681,'The Alliance has lost control of the Fel Reaver Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(682,'The Horde has lost control of the Fel Reaver Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(683,'%s has taken the flag!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(684,'The Alliance have captured the flag!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(685,'The Horde have captured the flag!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(686,'The flag has been dropped.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(687,'The flag has been reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 2013_world
-- Shattered Barrier
DELETE FROM `spell_proc_event` WHERE `entry` IN (44745, 54787, 58426, 31221, 31222, 31223);
INSERT INTO `spell_proc_event` VALUES
(44745, 0x00, 3, 0x00000000, 0x00000001, 0x00000000, 0x00008000, 0x0002000, 0.000000, 0.000000, 0),
(54787, 0x00, 3, 0x00000000, 0x00000001, 0x00000000, 0x00008000, 0x0002000, 0.000000, 0.000000, 0),
-- Overkill
(58426, 0x00, 8, 0x400000, 0x00000000, 0x00000000, 0x00014000, 0x0004001, 0.000000, 0.000000, 0),
-- Master of subtlety
(31221, 0x00, 8, 0x400000, 0x00000000, 0x00000000, 0x00014000, 0x0004001, 0.000000, 0.000000, 0),
(31222, 0x00, 8, 0x400000, 0x00000000, 0x00000000, 0x00014000, 0x0004001, 0.000000, 0.000000, 0),
(31223, 0x00, 8, 0x400000, 0x00000000, 0x00000000, 0x00014000, 0x0004001, 0.000000, 0.000000, 0);

-- 2021_world
DELETE FROM `spell_proc_event` WHERE `entry` IN (30293, 30295, 30296);
INSERT INTO `spell_proc_event` VALUES
-- Soul Leech
(30293, 0x00, 5, 0x00000381, 0x200C0, 0x00000000, 0x0000000, 0x0000000, 0.000000, 0.000000, 0),
(30295, 0x00, 5, 0x00000381, 0x200C0, 0x00000000, 0x0000000, 0x0000000, 0.000000, 0.000000, 0),
(30296, 0x00, 5, 0x00000381, 0x200C0, 0x00000000, 0x0000000, 0x0000000, 0.000000, 0.000000, 0);

-- 2025_mangos_7493_01_world_command
DELETE FROM `command` WHERE `name` IN ('gobject near','gobject phase','gobject setphase');
INSERT INTO `command` VALUES
('gobject near',2,'Syntax: .gobject near  [#distance]\r\n\r\nOutput gameobjects at distance #distance from player. Output gameobject guids and coordinates sorted by distance from character. If #distance not provided use 10 as default value.'),
('gobject setphase',2,'Syntax: .gobject setphase #guid #phasemask\r\n\r\nGameobject with DB guid #guid phasemask changed to #phasemask with related world vision update for players. Gameobject state saved to DB and persistent.');

-- 2025_mangos_7495_01_world_trinity_string
DELETE FROM `trinity_string` WHERE `entry` IN (276,277,524);
INSERT INTO `trinity_string` VALUES
(276,'Game Object |cffffffff|Hgameobject:%d|h[%s]|h|r (GUID: %u) turned',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(277,'Game Object |cffffffff|Hgameobject:%d|h[%s]|h|r (GUID: %u) moved',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(524,'Selected object:\n|cffffffff|Hgameobject:%d|h[%s]|h|r GUID: %u ID: %u\nX: %f Y: %f Z: %f MapId: %u\nOrientation: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 2057_world
DELETE FROM `spell_bonus_data` WHERE `entry` IN (15290, 39373, 33778, 379, 38395, 40972, 22845, 33504, 34299);
INSERT INTO `spell_bonus_data` VALUES
(15290, 0, 0, 0, 'Vampiric Embrace'),
(39373, 0, 0, 0, 'Shadowmend'),
(33778, 0, 0, 0, 'Lifebloom'),
(379, 0, 0, 0, 'Earth Shield'),
(38395, 0, 0, 0, 'Siphon Essence'),
(40972, 0, 0, 0, 'Heal'),
(22845, 0, 0, 0, 'Frenzied Regeneration'),
(33504, 0, 0, 0, 'Mark of Conquest'),
(34299, 0, 0, 0, 'Improved Leader of the Pack');

-- 2064_world
DELETE FROM `trinity_string` WHERE `entry` IN (7523,7524);
INSERT INTO `trinity_string` VALUES
(7523,'WORLD: Denying connections.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(7524,'WORLD: Accepting connections.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DELETE FROM `command` WHERE `name` IN ('server set closed');
INSERT INTO `command` VALUES ('server set closed', 3, 'Syntax: server set closed on/off\r\n\r\nSets whether the world accepts new client connectsions.');

-- 2080_mangos_7503_01_world_command
DELETE FROM `command` WHERE `name` IN ('addmove','allowmove','debug Mod32Value','debug standstate','go creature','go graveyard','go trigger','gobject phase','gobject setphase','Mod32Value','modify arena','modify standstate','npc addmove','npc allowmove','npc textemote','npc phase','npc setphase','showhonor');
INSERT INTO `command` VALUES
('debug Mod32Value',3,'Syntax: .debug Mod32Value #field #value\r\n\r\nAdd #value to field #field of your character.'),
('go creature',1,'Syntax: .go creature #creature_guid\r\nTeleport your character to creature with guid #creature_guid.\r\n.gocreature #creature_name\r\nTeleport your character to creature with this name.\r\n.gocreature id #creature_id\r\nTeleport your character to a creature that was spawned from the template with this entry.\r\n*If* more than one creature is found, then you are teleported to the first that is found inside the database.'),
('go graveyard',1,'Syntax: .go graveyard #graveyardId\r\n Teleport to graveyard with the graveyardId specified.'),
('go trigger',1,'Syntax: .go trigger #trigger_id\r\n\r\nTeleport your character to areatrigger with id #trigger_id. Character will be teleported to trigger target if selected areatrigger is telporting trigger.'),
('gobject setphase',2,'Syntax: .gobject setphase #guid #phasemask\r\n\r\nGameobject with DB guid #guid phasemask changed to #phasemask with related world vision update for players. Gameobject state saved to DB and persistent.'),
('modify arena',1,'Syntax: .modify arena #value\r\nAdd $amount arena points to the selected player.'),
('modify standstate',2,'Syntax: .modify standstate #emoteid\r\n\r\nChange the emote of your character while standing to #emoteid.'),
('npc addmove',2,'Syntax: .npc addmove #creature_guid [#waittime]\r\n\r\nAdd your current location as a waypoint for creature with guid #creature_guid. And optional add wait time.'),
('npc allowmove',3,'Syntax: .npc allowmove\r\n\r\nEnable or disable movement creatures in world. Not implemented.'),
('npc setphase',2,'Syntax: .npc setphase #phasemask\r\n\r\nSelected unit or pet phasemask changed to #phasemask with related world vision update for players. In creature case state saved to DB and persistent. In pet case change active until in game phase changed for owner, owner re-login, or GM-mode enable/disable..'),
('npc textemote',1,'Syntax: .npc textemote #emoteid\r\n\r\nMake the selected creature to do textemote with an emote of id #emoteid.');

-- 2131_world
DELETE FROM `command` WHERE `name` IN ('server difftime', 'npc tempadd', 'gobject tempadd', '');
INSERT INTO `command` VALUES
('gobject tempadd','2','Adds a temporary gameobject that is not saved to DB.'),
('npc tempadd','2','Adds temporary NPC, not saved to database.');
UPDATE `command` SET `name`="ahbotoption" WHERE `name`="ahbotoptions";
DELETE FROM `command` WHERE `name` IN ('reload tickets');
DELETE FROM `command` WHERE `name` LIKE "path%";
DELETE FROM `command` WHERE `name` LIKE "wp%";
INSERT INTO `command` VALUES 
('wp load',2,'Syntax: .path load $pathid\nLoad pathid number for selected creature. Creature must have no waypoint data.'),
('wp event',2,'Syntax: .path event $subcommand\nType .path event to see the list of possible subcommands or .help path event $subcommand to see info on subcommands.'),
('wp event add',2,'Syntax: .path event add $subcommand\nAdd new waypoint action in DB.'),
('wp event mod',2,'Syntax: .path mod $eventid $parameter $parameter_value\nModify parameter value for specified eventid.\nPossible parameters: pos_x, pos_y, pos_z, command, datalong, datalon2, dataint.'),
('wp event listid',2,'Syntax: .path event listid $eventid\nShows specified eventid info.'),
('wp unload',2,'Syntax: .path unload\nUnload path for selected creature.'),
('wp show',2,'Syntax: .path show $option\nOptions:\non $pathid (or selected creature with loaded path) - Show path\noff - Hide path\ninfo $slected_waypoint - Show info for selected waypoint.'),
('wp mod ',2,'Syntax: .path mod\nType .path mod to see the list of possible subcommands or .help path mod $subcommand to see info on subcommands.'),
('wp mod del',2,'Syntax: .path mod del\nDelete selected waypoint.'),
('wp mod move',2,'Syntax: .path mod move\nChange selected waypoint coordinates to your position.'),
('wp mod move_flag',2,'Syntax: .path mod move_flag\nSet move/run flag.'),
('wp mod action',2,'Syntax: .path mod action\nAssign action (waypoint script id) to selected waypoint.'),
('wp mod action_chance',2,'Syntax: .path mod action_chance\nAssign chance.');

-- 2138_world
DELETE FROM `spell_proc_event` WHERE `entry` IN (55198, 34026);
INSERT INTO `spell_proc_event` VALUES
-- Tidial Force
(55198, 0x00, 11, 0x000001C0, 0x00000000, 0x00000000, 0x00004000, 0x00000002, 0.000000, 0.000000, 0),
-- Kill Command
(34026, 0x00, 9, 0x00000000, 0x10000000, 0x00000000, 0x0000000, 0x00000000, 0.000000, 0.000000, 0);

-- 2139_script_waypoint
DROP TABLE IF EXISTS script_waypoint;
CREATE TABLE script_waypoint (
  entry mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'creature_template entry',
  pointid mediumint(8) unsigned NOT NULL DEFAULT '0',
  location_x float NOT NULL DEFAULT '0',
  location_y float NOT NULL DEFAULT '0',
  location_z float NOT NULL DEFAULT '0',
  waittime int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'waittime in millisecs',
  point_comment text,
  PRIMARY KEY (entry, pointid)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Script Creature waypoints';
DELETE FROM `script_waypoint` WHERE `entry`=16295;
INSERT INTO `script_waypoint` VALUES
(16295, 0, 7545.070000, -7359.870000, 162.354000, 4000, 'SAY_START'),
(16295, 1, 7550.048340, -7362.237793, 162.235657, 0, ''),
(16295, 2, 7566.976074, -7364.315430, 161.738770, 0, ''),
(16295, 3, 7578.830566, -7361.677734, 161.738770, 0, ''),
(16295, 4, 7590.969238, -7359.053711, 162.257660, 0, ''),
(16295, 5, 7598.354004, -7362.815430, 162.256683, 4000, 'SAY_PROGRESS_1'),
(16295, 6, 7605.861328, -7380.424316, 161.937073, 0, ''),
(16295, 7, 7605.295410, -7387.382813, 157.253998, 0, ''),
(16295, 8, 7606.131836, -7393.893555, 156.941925, 0, ''),
(16295, 9, 7615.207520, -7400.187012, 157.142639, 0, ''),
(16295, 10, 7618.956543, -7402.652832, 158.202042, 0, ''),
(16295, 11, 7636.850586, -7401.756836, 162.144791, 0, 'SAY_PROGRESS_2'),
(16295, 12, 7637.058105, -7404.944824, 162.206970, 4000, ''),
(16295, 13, 7636.910645, -7412.585449, 162.366425, 0, ''),
(16295, 14, 7637.607910, -7425.591797, 162.630661, 0, ''),
(16295, 15, 7637.816895, -7459.057129, 163.302704, 0, ''),
(16295, 16, 7638.859863, -7470.902344, 162.517059, 0, ''),
(16295, 17, 7641.395996, -7488.217285, 157.381287, 0, ''),
(16295, 18, 7634.455566, -7505.451660, 154.682159, 0, 'SAY_PROGRESS_3'),
(16295, 19, 7631.906738, -7516.948730, 153.597382, 0, ''),
(16295, 20, 7622.231445, -7537.037598, 151.587112, 0, ''),
(16295, 21, 7610.921875, -7550.670410, 149.639374, 0, ''),
(16295, 22, 7598.229004, -7562.551758, 145.953888, 0, ''),
(16295, 23, 7588.509277, -7577.755371, 148.294479, 0, ''),
(16295, 24, 7567.339355, -7608.456055, 146.006485, 0, ''),
(16295, 25, 7562.547852, -7617.417969, 148.097504, 0, ''),
(16295, 26, 7561.508789, -7645.064453, 151.245163, 0, ''),
(16295, 27, 7563.337402, -7654.652344, 151.227158, 0, ''),
(16295, 28, 7565.533691, -7658.296387, 151.248886, 0, ''),
(16295, 39, 7571.155762, -7659.118652, 151.244568, 0, ''),
(16295, 30, 7579.119629, -7662.213867, 151.651505, 0, 'quest complete'),
(16295, 31, 7603.768066, -7667.000488, 153.997726, 0, ''),
(16295, 32, 7603.768066, -7667.000488, 153.997726, 4000, 'SAY_END_1'),
(16295, 33, 7603.768066, -7667.000488, 153.997726, 8000, 'SAY_END_2'),
(16295, 34, 7603.768066, -7667.000488, 153.997726, 0, '');

-- 2139_world
UPDATE `gameobject_template` SET `ScriptName`='go_cat_figurine' WHERE `entry`=13873;
UPDATE `creature_template` SET `ScriptName`='npc_garments_of_quests' WHERE `entry` IN (12429,12423,12427,12430,12428);

-- 2139_world_script
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000164 AND -1000174;
INSERT INTO `script_texts` (entry,content_default,sound,type,language,emote,comment) VALUES
(-1000164,'Ah, $GPriest:Priestess; you came along just in time. I appreciate it.',0,0,0,2,'garments SAY_COMMON_HEALED'),
(-1000165,'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those gnolls with your power to back me!',0,0,1,1,'garments SAY_DG_KEL_THANKS'),
(-1000166,'Farewell to you, and may shadow always protect you!',0,0,1,3,'garments SAY_DG_KEL_GOODBYE'),
(-1000167, 'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those murlocs with the Light on my side!',0,0,7,1,'garments SAY_ROBERTS_THANKS'),
(-1000168, 'Farewell to you, and may the Light be with you always.',0,0,7,3,'garments SAY_ROBERTS_GOODBYE'),
(-1000169, 'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those humans with your power to back me!',0,0,1,1,'garments SAY_KORJA_THANKS'),
(-1000170, 'Farewell to you, and may our ancestors be with you always!',0,0,1,3,'garments SAY_KORJA_GOODBYE'),
(-1000171, 'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those wendigo with the Light on my side!',0,0,7,1,'garments SAY_DOLF_THANKS'),
(-1000172, 'Farewell to you, and may the Light be with you always.',0,0,7,3,'garments SAY_DOLF_GOODBYE'),
(-1000173, 'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those corrupt timberlings with Elune\'s power behind me!',0,0,2,1,'garments SAY_SHAYA_THANKS'),
(-1000174, 'Farewell to you, and may Elune be with you always.',0,0,2,3,'garments SAY_SHAYA_GOODBYE');

-- 2160_world
DELETE FROM `command` WHERE `name` LIKE "ahbotoption %";
DELETE FROM `command` WHERE `name` LIKE "ahbotoptions %";
DELETE FROM `command` WHERE `name` IN ('gobject addtemp','npc addtemp');

-- 2161_world
DELETE FROM `command` WHERE `name` LIKE "wp mod %";
DELETE FROM `command` WHERE `name` LIKE "wp event %";

-- 2227_mangos_7544_01_world_uptime
DROP TABLE IF EXISTS `uptime`;

-- 2254_world
DELETE FROM `command` WHERE `name` IN ('server difftime', 'addmove', 'Mod32Value', 'allowmove', 'reload tickets', 'npc tempadd', 'gobject tempadd', 'gobject addtemp', 'npc addtemp');
INSERT INTO `command` VALUES
('gobject tempadd','2','Adds a temporary gameobject that is not saved to DB.'),
('npc tempadd','2','Adds temporary NPC, not saved to database.');
UPDATE `command` SET `name`="ahbotoption" WHERE `name`="ahbotoptions";
DELETE FROM `command` WHERE `name` LIKE "path%";
DELETE FROM `command` WHERE `name` LIKE "wp%";
INSERT INTO `command` VALUES 
('wp load',2,'Syntax: .wp load $pathid\nLoad pathid number for selected creature. Creature must have no waypoint data.'),
('wp event',2,'Syntax: .wp event $subcommand\nType .path event to see the list of possible subcommands or .help path event $subcommand to see info on subcommands.'),
('wp unload',2,'Syntax: .wp unload\nUnload path for selected creature.'),
('wp show',2,'Syntax: .wp show $option\nOptions:\non $pathid (or selected creature with loaded path) - Show path\noff - Hide path\ninfo $slected_waypoint - Show info for selected waypoint.'),
('wp mod',2,'Syntax: .wp mod\nType .path mod to see the list of possible subcommands or .help path mod $subcommand to see info on subcommands.');

-- 2274_mangos_7558_01_world_trinity_string
DELETE FROM `trinity_string` WHERE `entry` IN (1123,1124,1125,1126,1127);
INSERT INTO `trinity_string` VALUES
(1123,'Not pet found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1124,'Wrong pet type',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1125,'Your pet learned all talents',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1126,'Your pet talents have been reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1127,'Talents of %s\'s pet reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 2274_mangos_7558_02_world_command
DELETE FROM `command` WHERE `name` IN ('learn all_mypettalents');
INSERT INTO `command` VALUES
('learn all_mypettalents',3,'Syntax: .learn all_mypettalents\r\n\r\nLearn all talents for your pet available for his creature type (only for hunter pets).');

-- 2276_mangos_7560_01_world_gameobject_template
ALTER TABLE gameobject_template
  ADD COLUMN IconName varchar(100) NOT NULL default '' AFTER name;
  
-- 2280_mangos_7565_01_world_trinity_string
DELETE FROM `trinity_string` WHERE `entry` IN (1010,1011,1012,1013,1014);
INSERT INTO `trinity_string` VALUES
(1010,'|    Account    |       Character      |       IP        | GM | Expansion |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1011,'|<Error>        | %20s |<Error>          |<Er>| <Error>   |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1012,'===========================================================================',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1013,'|%15s| %20s | %15s |%4d| %9d |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1014,'No online players.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 2284_mangos_7568_01_world_spell_proc_event
-- (53569) Infusion of Light (Rank 1)
DELETE FROM `spell_proc_event` WHERE `entry` IN (53569);
INSERT INTO `spell_proc_event` VALUES (53569, 0x00, 10, 0x00200000, 0x00010000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);
-- (53576) Infusion of Light (Rank 2)
DELETE FROM `spell_proc_event` WHERE `entry` IN (53576);
INSERT INTO `spell_proc_event` VALUES (53576, 0x00, 10, 0x00200000, 0x00010000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);
-- (54149) Infusion of Light (Rank 2)
DELETE FROM `spell_proc_event` WHERE `entry` IN (54149);
INSERT INTO `spell_proc_event` VALUES (54149, 0x00, 10, 0x00200000, 0x00010000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);
-- (55776) Swordguard Embroidery ()
DELETE FROM `spell_proc_event` WHERE `entry` IN (55776);
INSERT INTO `spell_proc_event` VALUES (55776, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45);
-- (55768) Darkglow Embroidery ()
DELETE FROM `spell_proc_event` WHERE `entry` IN (55768);
INSERT INTO `spell_proc_event` VALUES (55768, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45);
-- (55640) Lightweave Embroidery ()
DELETE FROM `spell_proc_event` WHERE `entry` IN (55640);
INSERT INTO `spell_proc_event` VALUES (55640, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45);
-- (55380) Skyflare Swiftness ()
DELETE FROM `spell_proc_event` WHERE `entry` IN (55380);
INSERT INTO `spell_proc_event` VALUES (55380, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45);
-- (56355) Titanium Shield Spike ()
DELETE FROM `spell_proc_event` WHERE `entry` IN (56355);
INSERT INTO `spell_proc_event` VALUES (56355, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040, 0.000000, 0.000000, 0);
-- (61345) Natures Grace ()
DELETE FROM `spell_proc_event` WHERE `entry` IN (61345);
INSERT INTO `spell_proc_event` VALUES (61345, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);
-- (61346) Natures Grace ()
DELETE FROM `spell_proc_event` WHERE `entry` IN (61346);
INSERT INTO `spell_proc_event` VALUES (61346, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);
-- (61356) Invigorating Earthsiege Diamond Passive ()
DELETE FROM `spell_proc_event` WHERE `entry` IN (61356);
INSERT INTO `spell_proc_event` VALUES (61356, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);
-- (24905) Moonkin Form (Passive) (Passive)
DELETE FROM `spell_proc_event` WHERE `entry` IN (24905);
INSERT INTO `spell_proc_event` VALUES (24905, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 15.000000, 0.000000, 0);

-- 2296_world
ALTER TABLE creature_template
  ADD COLUMN `VehicleId` mediumint(8) unsigned NOT NULL default '0' AFTER `PetSpellDataId`;
  
-- 2339_world - 2346_world
DELETE FROM `command` WHERE `name` LIKE "ahbotoption %";
DELETE FROM `command` WHERE `name` LIKE "ahbotoptions %";

-- 2412_world
UPDATE `trinity_string` SET `content_default` = 'id: %d effmask: %d charges: %d stack: %d slot %d duration: %d maxduration: %d' WHERE `entry` =468;
UPDATE `trinity_string` SET `content_default` = 'id: %d eff: %d amount: %d' WHERE `trinity_string`.`entry` =470;

-- 2432_mangos_7615_01_world_command
DELETE FROM `command` WHERE `name` IN ('senditems','sendmail','sendmoney','sendmessage','send items','send mail','send money','send message');
INSERT INTO `command` VALUES
('send items',3,'Syntax: .send items #playername "#subject" "#text" itemid1[:count1] itemid2[:count2] ... itemidN[:countN]\r\n\r\nSend a mail to a player. Subject and mail text must be in "". If for itemid not provided related count values then expected 1, if count > max items in stack then items will be send in required amount stacks. All stacks amount in mail limited to 12.'),
('send mail',1,'Syntax: .send mail #playername "#subject" "#text"\r\n\r\nSend a mail to a player. Subject and mail text must be in "".'),
('send message',3,'Syntax: .send message $playername $message\r\n\r\nSend screen message to player from ADMINISTRATOR.'),
('send money','3','Syntax: .send money #playername "#subject" "#text" #money\r\n\r\nSend mail with money to a player. Subject and mail text must be in "".');

-- 2433_mangos_7616_01_world_trinity_string
DELETE FROM `trinity_string` WHERE `entry` IN (1200,1201);
INSERT INTO `trinity_string` VALUES
(1200,'You try to view cinemitic %u but it doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1201,'You try to view movie %u but it doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 2433_mangos_7616_02_world_command
DELETE FROM `command` WHERE `name` IN ('debug playsound','debug play sound','debug play cinematic','debug play movie');
INSERT INTO `command` VALUES
('debug play cinematic',1,'Syntax: .debug play cinematic #cinematicid\r\n\r\nPlay cinematic #cinematicid for you. You stay at place while your mind fly.\r\n'),
('debug play movie',1,'Syntax: .debug play movie #movieid\r\n\r\nPlay movie #movieid for you.'),
('debug play sound',1,'Syntax: .debug play sound #soundid\r\n\r\nPlay sound with #soundid.\r\nSound will be play only for you. Other players do not hear this.\r\nWarning: client may have more 5000 sounds...');

-- 2444_world
DELETE FROM `command` WHERE `name` IN ('reload spell_linked_spell');
INSERT INTO `command` VALUES
('reload spell_linked_spell','3','Usage: .reload spell_linked_spell\r\nReloads the spell_linked_spell DB table.');

-- 2450_world
UPDATE `gameobject_template` SET `ScriptName`='go_jump_a_tron' WHERE `entry`=183146;
UPDATE `gameobject_template` SET `ScriptName`='go_ethereum_prison' WHERE `entry`=184421;
UPDATE `gameobject_template` SET `scriptname`='go_sacred_fire_of_life' WHERE `entry`=175944;
UPDATE `gameobject_template` SET `scriptname`='go_skull_pile' WHERE `entry`=185913;
DELETE FROM `command` WHERE `name` IN ('reload spell_linked_spell');
INSERT INTO `command` VALUES
('reload spell_linked_spell','3','Usage: .reload spell_linked_spell\r\nReloads the spell_linked_spell DB table.');

-- 2479_world
DELETE FROM `trinity_string` WHERE `entry` = 5007;
INSERT INTO `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES (5007, 'You must be in a raid group to enter this instance.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- 2492_mangos_7622_01_world_creature_ai_scripts
DROP TABLE IF EXISTS `creature_ai_scripts`;
CREATE TABLE `creature_ai_scripts` (
  `id` int(11) unsigned NOT NULL COMMENT 'Identifier' AUTO_INCREMENT,
  `creature_id` int(11) unsigned NOT NULL default '0' COMMENT 'Creature Template Identifier',
  `event_type` tinyint(5) unsigned NOT NULL default '0' COMMENT 'Event Type',
  `event_inverse_phase_mask` int(11) signed NOT NULL default '0' COMMENT 'Mask which phases this event will not trigger in',
  `event_chance` int(3) unsigned NOT NULL default '100',
  `event_flags` int(3) unsigned NOT NULL default '0',
  `event_param1` int(11) signed NOT NULL default '0',
  `event_param2` int(11) signed NOT NULL default '0',
  `event_param3` int(11) signed NOT NULL default '0',
  `event_param4` int(11) signed NOT NULL default '0',
  `action1_type` tinyint(5) unsigned NOT NULL default '0' COMMENT 'Action Type',
  `action1_param1` int(11) signed NOT NULL default '0',
  `action1_param2` int(11) signed NOT NULL default '0',
  `action1_param3` int(11) signed NOT NULL default '0',
  `action2_type` tinyint(5) unsigned NOT NULL default '0' COMMENT 'Action Type',
  `action2_param1` int(11) signed NOT NULL default '0',
  `action2_param2` int(11) signed NOT NULL default '0',
  `action2_param3` int(11) signed NOT NULL default '0',
  `action3_type` tinyint(5) unsigned NOT NULL default '0' COMMENT 'Action Type',
  `action3_param1` int(11) signed NOT NULL default '0',
  `action3_param2` int(11) signed NOT NULL default '0',
  `action3_param3` int(11) signed NOT NULL default '0',
  `comment` varchar(255) NOT NULL default '' COMMENT 'Event Comment',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='EventAI Scripts';

-- 2492_mangos_7622_02_world_creature_ai_summons
DROP TABLE IF EXISTS `creature_ai_summons`;
CREATE TABLE `creature_ai_summons` (
  `id` int(11) unsigned NOT NULL COMMENT 'Location Identifier' AUTO_INCREMENT,
  `position_x` float NOT NULL default '0',
  `position_y` float NOT NULL default '0',
  `position_z` float NOT NULL default '0',
  `orientation` float NOT NULL default '0',
  `spawntimesecs` int(11) unsigned NOT NULL default '120',
  `comment` varchar(255) NOT NULL default '' COMMENT 'Summon Comment',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='EventAI Summoning Locations';

-- 2492_mangos_7622_03_world_creature_ai_texts
DROP TABLE IF EXISTS `creature_ai_texts`;
CREATE TABLE `creature_ai_texts` (
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
  `sound` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `emote` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment` text,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Script Texts';

-- 2515_world_scripts
UPDATE `creature_template` SET `ScriptName`='mob_giant_infernal' WHERE `entry`=17908;
UPDATE `creature_template` SET `ScriptName`='mob_abomination' WHERE `entry`=17898;
UPDATE `creature_template` SET `ScriptName`='mob_ghoul' WHERE `entry`=17895;
UPDATE `creature_template` SET `ScriptName`='mob_necromancer' WHERE `entry`=17899;
UPDATE `creature_template` SET `ScriptName`='mob_banshee' WHERE `entry`=17905;
UPDATE `creature_template` SET `ScriptName`='mob_crypt_fiend' WHERE `entry`=17897;
UPDATE `creature_template` SET `ScriptName`='mob_fel_stalker' WHERE `entry`=17916;
UPDATE `creature_template` SET `ScriptName`='mob_frost_wyrm' WHERE `entry`=17907;
UPDATE `creature_template` SET `ScriptName`='mob_gargoyle' WHERE `entry`=17906;
UPDATE `creature_template` SET `ScriptName`='alliance_rifleman' WHERE `entry`=17921;
UPDATE `creature_template` SET `ScriptName`='mob_towering_infernal' WHERE `entry`=17818;
UPDATE `creature_template` SET `ScriptName`='boss_anetheron' WHERE `entry`=17808;
UPDATE `creature_template` SET `ScriptName`='boss_azgalor' WHERE `entry`=17842;
UPDATE `creature_template` SET `ScriptName`='mob_lesser_doomguard' WHERE `entry`=17864;
UPDATE `creature_template` SET `ScriptName`='boss_kazrogal' WHERE `entry`=17888;
UPDATE `creature_template` SET `ScriptName`='boss_rage_winterchill' WHERE `entry`=17767;
UPDATE `creature_template` SET `scale`='0.5' WHERE `entry`=17968;
UPDATE `creature_template` SET `equipment_id`='17888' WHERE `entry`=17888;
UPDATE `creature_template` SET `equipment_id`='17921' WHERE `entry`=17921;

-- 2521_world
-- Sudden Death
DELETE FROM `spell_proc_event` WHERE `entry` IN (29723, 29725, 29724);
INSERT INTO `spell_proc_event` VALUES (29723, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0.000000, 0.000000, 0);
INSERT INTO `spell_proc_event` VALUES (29725, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0.000000, 0.000000, 0);
INSERT INTO `spell_proc_event` VALUES (29724, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0.000000, 0.000000, 0);

-- 2522_mangos_7627_01_world_achievement_criteria_data
DROP TABLE IF EXISTS `achievement_criteria_data`;
CREATE TABLE `achievement_criteria_data` (
  `criteria_id` mediumint(8) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `value1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `value2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`criteria_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Achievment system';

-- 2528_mangos_7633_01_world_achievement_criteria_data
ALTER TABLE `achievement_criteria_data`
  DROP PRIMARY KEY,
  ADD PRIMARY KEY (`criteria_id`,`type`);
  
-- 2551_world_spell_bonus_data
-- Judgement
DELETE FROM `spell_bonus_data` WHERE `entry` = 54158;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`comments`) VALUES
('54158','0.25','0','0.16','Paladin - Unleashing spell for Seal of Wisdom, Justice and Light');

-- 2559_world_spell_proc_event
-- Fingers of frost triggered spell
DELETE FROM `spell_proc_event` WHERE `entry` IN (44544);
INSERT INTO `spell_proc_event` VALUES (44544, 0x00, 0x00000003, 0x00000000, 0x00100000, 0x00000000, 0x00010000, 0x00000000, 0.000000, 0.000000, 0);
-- Sudden Death
DELETE FROM `spell_proc_event` WHERE `entry` IN (29723, 29725, 29724);
INSERT INTO `spell_proc_event` VALUES (29723, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);
INSERT INTO `spell_proc_event` VALUES (29725, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);
INSERT INTO `spell_proc_event` VALUES (29724, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);

-- 2565_world_SD2_scripts
-- script waypoint
DELETE FROM script_waypoint WHERE entry=467;
INSERT INTO script_waypoint VALUES
(467, 0, -10508.40, 1068.00, 55.21, 0, ''),
(467, 1, -10518.30, 1074.84, 53.96, 0, ''),
(467, 2, -10534.82, 1081.92, 49.88, 0, ''),
(467, 3, -10546.51, 1084.88, 50.13, 0, ''),
(467, 4, -10555.29, 1084.45, 45.75, 0, ''),
(467, 5, -10566.57, 1083.53, 42.10, 0, ''),
(467, 6, -10575.83, 1082.34, 39.46, 0, ''),
(467, 7, -10585.67, 1081.08, 37.77, 0, ''),
(467, 8, -10600.08, 1078.19, 36.23, 0, ''),
(467, 9, -10608.69, 1076.08, 35.88, 0, ''),
(467, 10, -10621.26, 1073.00, 35.40, 0, ''),
(467, 11, -10638.12, 1060.18, 33.61, 0, ''),
(467, 12, -10655.87, 1038.99, 33.48, 0, ''),
(467, 13, -10664.68, 1030.54, 32.70, 0, ''),
(467, 14, -10708.68, 1033.86, 33.32, 0, ''),
(467, 15, -10754.43, 1017.93, 32.79, 0, ''),
(467, 16, -10802.26, 1018.01, 32.16, 0, ''),
(467, 17, -10832.60, 1009.04, 32.71, 0, ''),
(467, 18, -10866.56, 1006.51, 31.71, 0, ''),
(467, 19, -10879.98, 1005.10, 32.84, 0, ''),
(467, 20, -10892.45, 1001.32, 34.46, 0, ''),
(467, 21, -10906.14, 997.11, 36.15, 0, ''),
(467, 22, -10922.26, 1002.23, 35.74, 0, ''),
(467, 23, -10936.32, 1023.38, 36.52, 0, ''),
(467, 24, -10933.35, 1052.61, 35.85, 0, ''),
(467, 25, -10940.25, 1077.66, 36.49, 0, ''),
(467, 26, -10957.09, 1099.33, 36.83, 0, ''),
(467, 27, -10956.53, 1119.90, 36.73, 0, ''),
(467, 28, -10939.30, 1150.75, 37.42, 0, ''),
(467, 29, -10915.14, 1202.09, 36.55, 0, ''),
(467, 30, -10892.59, 1257.03, 33.37, 0, ''),
(467, 31, -10891.93, 1306.66, 35.45, 0, ''),
(467, 32, -10896.17, 1327.86, 37.77, 0, ''),
(467, 33, -10906.03, 1368.05, 40.91, 0, ''),
(467, 34, -10910.18, 1389.33, 42.62, 0, ''),
(467, 35, -10915.42, 1417.72, 42.93, 0, ''),
(467, 36, -10926.37, 1421.18, 43.04, 0, 'walk here and say'),
(467, 37, -10952.31, 1421.74, 43.40, 0, ''),
(467, 38, -10980.04, 1411.38, 42.79, 0, ''),
(467, 39, -11006.06, 1420.47, 43.26, 0, ''),
(467, 40, -11021.98, 1450.59, 43.09, 0, ''),
(467, 41, -11025.36, 1491.59, 43.15, 0, ''),
(467, 42, -11036.09, 1508.32, 43.28, 0, ''),
(467, 43, -11060.68, 1526.72, 43.19, 0, ''),
(467, 44, -11072.75, 1527.77, 43.20, 5000, 'say and quest credit');
DELETE FROM script_waypoint WHERE entry=2768;
INSERT INTO script_waypoint VALUES
(2768, 0, -2066.45, -2085.96, 9.08, 0, ''),
(2768, 1, -2077.99, -2105.33, 13.24, 0, ''),
(2768, 2, -2074.60, -2109.67, 14.24, 0, ''),
(2768, 3, -2076.60, -2117.46, 16.67, 0, ''),
(2768, 4, -2073.51, -2123.46, 18.42, 2000, ''),
(2768, 5, -2073.51, -2123.46, 18.42, 4000, ''),
(2768, 6, -2066.60, -2131.85, 21.56, 0, ''),
(2768, 7, -2053.85, -2143.19, 20.31, 0, ''),
(2768, 8, -2043.49, -2153.73, 20.20, 10000, ''),
(2768, 9, -2043.49, -2153.73, 20.20, 20000, ''),
(2768, 10, -2043.49, -2153.73, 20.20, 10000, ''),
(2768, 11, -2043.49, -2153.73, 20.20, 2000, ''),
(2768, 12, -2053.85, -2143.19, 20.31, 0, ''),
(2768, 13, -2066.60, -2131.85, 21.56, 0, ''),
(2768, 14, -2073.51, -2123.46, 18.42, 0, ''),
(2768, 15, -2076.60, -2117.46, 16.67, 0, ''),
(2768, 16, -2074.60, -2109.67, 14.24, 0, ''),
(2768, 17, -2077.99, -2105.33, 13.24, 0, ''),
(2768, 18, -2066.45, -2085.96, 9.08, 0, ''),
(2768, 19, -2066.41, -2086.21, 8.97, 6000, ''),
(2768, 20, -2066.41, -2086.21, 8.97, 2000, '');
DELETE FROM script_waypoint WHERE entry=12818;
INSERT INTO script_waypoint VALUES
(12818, 0, 3347.250089, -694.700989, 159.925995, 0, ''),
(12818, 1, 3341.527039, -694.725891, 161.124542, 4000, ''),
(12818, 2, 3338.351074, -686.088138, 163.444000, 0, ''),
(12818, 3, 3352.744873, -677.721741, 162.316269, 0, ''),
(12818, 4, 3370.291016, -669.366943, 160.751358, 0, ''),
(12818, 5, 3381.479492, -659.449097, 162.545303, 0, ''),
(12818, 6, 3389.554199, -648.500000, 163.651825, 0, ''),
(12818, 7, 3396.645020, -641.508911, 164.216019, 0, ''),
(12818, 8, 3410.498535, -634.299622, 165.773453, 0, ''),
(12818, 9, 3418.461426, -631.791992, 166.477615, 0, ''),
(12818, 10, 3429.500000, -631.588745, 166.921265, 0, ''),
(12818, 11,3434.950195, -629.245483, 168.333969, 0, ''),
(12818, 12,3438.927979, -618.503235, 171.503143, 0, ''),
(12818, 13,3444.217529, -609.293640, 173.077972, 1000, 'Ambush 1'),
(12818, 14,3460.505127, -593.794189, 174.342255, 0, ''),
(12818, 15,3480.283203, -578.210327, 176.652313, 0, ''),
(12818, 16,3492.912842, -562.335449, 181.396301, 0, ''),
(12818, 17,3495.230957, -550.977600, 184.652267, 0, ''),
(12818, 18,3496.247070, -529.194214, 188.172028, 0, ''),
(12818, 19,3497.619385, -510.411499, 188.345322, 1000, 'Ambush 2'),
(12818, 20,3498.498047, -497.787506, 185.806274, 0, ''),
(12818, 21,3484.218750, -489.717529, 182.389862, 4000, '');
DELETE FROM script_waypoint WHERE entry=12858;
INSERT INTO script_waypoint VALUES
(12858, 0, 1782.63, -2241.11, 109.73, 5000, ''),
(12858, 1, 1788.88, -2240.17, 111.71, 0, ''),
(12858, 2, 1797.49, -2238.11, 112.31, 0, ''),
(12858, 3, 1803.83, -2232.77, 111.22, 0, ''),
(12858, 4, 1806.65, -2217.83, 107.36, 0, ''),
(12858, 5, 1811.81, -2208.01, 107.45, 0, ''),
(12858, 6, 1820.85, -2190.82, 100.49, 0, ''),
(12858, 7, 1829.60, -2177.49, 96.44, 0, ''),
(12858, 8, 1837.98, -2164.19, 96.71, 0, 'prepare'),
(12858, 9, 1839.99, -2149.29, 96.78, 0, ''),
(12858, 10, 1835.14, -2134.98, 96.80, 0, ''),
(12858, 11, 1823.57, -2118.27, 97.43, 0, ''),
(12858, 12, 1814.99, -2110.35, 98.38, 0, ''),
(12858, 13, 1806.60, -2103.09, 99.19, 0, ''),
(12858, 14, 1798.27, -2095.77, 100.04, 0, ''),
(12858, 15, 1783.59, -2079.92, 100.81, 0, ''),
(12858, 16, 1776.79, -2069.48, 101.77, 0, ''),
(12858, 17, 1776.82, -2054.59, 109.82, 0, ''),
(12858, 18, 1776.88, -2047.56, 109.83, 0, ''),
(12858, 19, 1776.86, -2036.55, 109.83, 0, ''),
(12858, 20, 1776.90, -2024.56, 109.83, 0, 'win'),
(12858, 21, 1776.87, -2028.31, 109.83,60000, 'stay'),
(12858, 22, 1776.90, -2028.30, 109.83, 0, '');
DELETE FROM script_waypoint WHERE entry=15420;
INSERT INTO script_waypoint VALUES
(15420, 0, 9294.78, -6682.51, 22.42, 0, ''),
(15420, 1, 9298.27, -6667.99, 22.42, 0, ''),
(15420, 2, 9309.63, -6658.84, 22.43, 0, ''),
(15420, 3, 9304.43, -6649.31, 26.46, 0, ''),
(15420, 4, 9298.83, -6648.00, 28.61, 0, ''),
(15420, 5, 9291.06, -6653.46, 31.83,2500, ''),
(15420, 6, 9289.08, -6660.17, 31.85,5000, ''),
(15420, 7, 9291.06, -6653.46, 31.83, 0, '');
DELETE FROM script_waypoint WHERE entry=16993;
INSERT INTO script_waypoint VALUES
(16993, 0, -1137.72, 4272.10, 14.04, 5000, ''),
(16993, 1, -1141.34, 4232.42, 14.63, 0, ''),
(16993, 2, -1133.47, 4220.88, 11.78, 0, ''),
(16993, 3, -1126.18, 4213.26, 13.51, 0, ''),
(16993, 4, -1100.12, 4204.32, 16.41, 0, ''),
(16993, 5, -1063.68, 4197.92, 15.51, 0, ''),
(16993, 6, -1027.28, 4194.36, 15.52, 0, ''),
(16993, 7, -995.68, 4189.59, 19.84, 0, ''),
(16993, 8, -970.90, 4188.60, 24.61, 0, ''),
(16993, 9, -961.93, 4193.34, 26.11, 15000, 'Summon 1'),
(16993, 10, -935.52, 4210.99, 31.98, 0, ''),
(16993, 11, -913.42, 4218.27, 37.29, 0, ''),
(16993, 12, -896.53, 4207.73, 43.23, 0, ''),
(16993, 13, -868.49, 4194.77, 46.75, 30000, 'Kneel and Rest Here'),
(16993, 14, -852.83, 4198.29, 47.28, 15000, 'Summon 2'),
(16993, 15, -819.85, 4200.50, 46.37, 0, ''),
(16993, 16, -791.92, 4201.96, 44.19, 0, ''),
(16993, 17, -774.42, 4202.46, 47.41, 0, ''),
(16993, 18, -762.90, 4202.17, 48.81, 0, ''),
(16993, 19, -728.25, 4195.35, 50.68, 0, ''),
(16993, 20, -713.58, 4192.07, 53.98, 0, ''),
(16993, 21, -703.09, 4189.74, 56.96, 0, ''),
(16993, 22, -693.70, 4185.43, 57.06, 0, ''),
(16993, 23, -686.38, 4159.81, 60.26, 0, ''),
(16993, 24, -679.88, 4147.04, 64.20, 0, ''),
(16993, 25, -656.74, 4147.72, 64.11, 0, ''),
(16993, 26, -652.22, 4137.50, 64.58, 0, ''),
(16993, 27, -649.99, 4136.38, 64.63, 30000, 'Quest Credit');
DELETE FROM script_waypoint WHERE entry=17312;
INSERT INTO script_waypoint VALUES
(17312, 0, -4784.532227, -11051.060547, 3.484263, 0, ''),
(17312, 1, -4805.509277, -11037.293945, 3.043942, 0, ''),
(17312, 2, -4827.826172, -11034.398438, 1.741959, 0, ''),
(17312, 3, -4852.630859, -11033.695313, 2.208656, 0, ''),
(17312, 4, -4876.791992, -11034.517578, 3.175228, 0, ''),
(17312, 5, -4895.486816, -11038.306641, 9.390890, 0, ''),
(17312, 6, -4915.464844, -11048.402344, 12.369793, 0, ''),
(17312, 7, -4937.288086, -11067.041992, 13.857983, 0, ''),
(17312, 8, -4966.577637, -11067.507813, 15.754786, 0, ''),
(17312, 9, -4993.799805, -11056.544922, 19.175295, 0, ''),
(17312, 10, -5017.836426, -11052.569336, 22.476587, 0, ''),
(17312, 11, -5039.706543, -11058.459961, 25.831593, 0, ''),
(17312, 12, -5057.289063, -11045.474609, 26.972496, 0, ''),
(17312, 13, -5078.828125, -11037.601563, 29.053417, 0, ''),
(17312, 14, -5104.158691, -11039.195313, 29.440195, 0, ''),
(17312, 15, -5120.780273, -11039.518555, 30.142139, 0, ''),
(17312, 16, -5140.833008, -11039.810547, 28.788074, 0, ''),
(17312, 17, -5161.201660, -11040.050781, 27.879545, 4000, ''),
(17312, 18, -5171.842285, -11046.803711, 27.183821, 0, ''),
(17312, 19, -5185.995117, -11056.359375, 20.234867, 0, ''),
(17312, 20, -5198.485840, -11065.065430, 18.872593, 0, ''),
(17312, 21, -5214.062500, -11074.653320, 19.215731, 0, ''),
(17312, 22, -5220.157227, -11088.377930, 19.818476, 0, ''),
(17312, 23, -5233.652832, -11098.846680, 18.349432, 0, ''),
(17312, 24, -5250.163086, -11111.653320, 16.438959, 0, ''),
(17312, 25, -5268.194336, -11125.639648, 12.668313, 0, ''),
(17312, 26, -5286.270508, -11130.669922, 6.912246, 0, ''),
(17312, 27, -5317.449707, -11137.392578, 4.963446, 0, ''),
(17312, 28, -5334.854492, -11154.384766, 6.742664, 0, ''),
(17312, 29, -5353.874512, -11171.595703, 6.903912, 20000, ''),
(17312, 30, -5354.240000, -11171.940000, 6.890000, 0, '');
DELETE FROM script_waypoint WHERE entry=19685;
INSERT INTO script_waypoint VALUES
(19685, 0, -1863.369019, 5419.517090, -10.463668, 5000, ''),
(19685, 1, -1861.749023, 5416.465332, -10.508068, 0, ''),
(19685, 2, -1857.036133, 5410.966309, -12.428039, 0, ''),
(19685, 3, -1831.539185, 5365.472168, -12.428039, 0, ''),
(19685, 4, -1813.416504, 5333.776855, -12.428039, 0, ''),
(19685, 5, -1800.354370, 5313.290039, -12.428039, 0, ''),
(19685, 6, -1775.624878, 5268.786133, -38.809181, 0, ''),
(19685, 7, -1770.147339, 5259.268066, -38.829231, 0, ''),
(19685, 8, -1762.814209, 5261.098145, -38.848995, 0, ''),
(19685, 9, -1740.110474, 5268.858398, -40.208965, 0, ''),
(19685, 10, -1725.837402, 5270.936035, -40.208965, 0, ''),
(19685, 11, -1701.580322, 5290.323242, -40.209187, 0, ''),
(19685, 12, -1682.877808, 5291.406738, -34.429646, 0, ''),
(19685, 13, -1670.101685, 5291.201172, -32.786007, 0, ''),
(19685, 14, -1656.666870, 5294.333496, -37.862648, 0, ''),
(19685, 15, -1652.035767, 5295.413086, -40.245499, 0, ''),
(19685, 16, -1620.860596, 5300.133301, -40.208992, 0, ''),
(19685, 17, -1607.630981, 5293.983398, -38.577045, 5000, ''),
(19685, 18, -1607.630981, 5293.983398, -38.577045, 5000, ''),
(19685, 19, -1607.630981, 5293.983398, -38.577045, 5000, ''),
(19685, 20, -1622.140869, 5301.955566, -40.208897, 0, ''),
(19685, 21, -1621.131836, 5333.112793, -40.208897, 0, ''),
(19685, 22, -1637.598999, 5342.134277, -40.208790, 0, ''),
(19685, 23, -1648.521606, 5352.309570, -47.496170, 0, ''),
(19685, 24, -1654.606934, 5357.419434, -45.870892, 0, ''),
(19685, 25, -1633.670044, 5422.067871, -42.835541, 0, ''),
(19685, 26, -1656.567505, 5426.236328, -40.405815, 0, ''),
(19685, 27, -1664.932373, 5425.686523, -38.846405, 0, ''),
(19685, 28, -1681.406006, 5425.871094, -38.810928, 0, ''),
(19685, 29, -1730.875977, 5427.413574, -12.427910, 0, ''),
(19685, 30, -1743.509521, 5369.599121, -12.427910, 0, ''),
(19685, 31, -1877.217041, 5303.710449, -12.427989, 0, ''),
(19685, 32, -1890.371216, 5289.273438, -12.428268, 0, ''),
(19685, 33, -1905.505737, 5266.534668, 2.630672, 0, ''),
(19685, 34, -1909.381348, 5273.008301, 1.663714, 10000, ''),
(19685, 35, -1909.381348, 5273.008301, 1.663714, 12000, ''),
(19685, 36, -1909.381348, 5273.008301, 1.663714, 8000, ''),
(19685, 37, -1909.381348, 5273.008301, 1.663714, 15000, ''),
(19685, 38, -1927.561401, 5275.324707, 1.984987, 0, ''),
(19685, 39, -1927.385498, 5300.879883, -12.427236, 0, ''),
(19685, 40, -1921.063965, 5314.318359, -12.427236, 0, ''),
(19685, 41, -1965.425415, 5379.298828, -12.427236, 0, ''),
(19685, 42, -1981.233154, 5450.743652, -12.427236, 0, ''),
(19685, 43, -1958.022461, 5455.904297, 0.487659, 0, ''),
(19685, 44, -1951.991455, 5463.580566, 0.874490, 10000, ''),
(19685, 45, -1951.991455, 5463.580566, 0.874490, 12000, ''),
(19685, 46, -1968.730225, 5481.752930, -12.427846, 0, ''),
(19685, 47, -1881.839844, 5554.040039, -12.427846, 0, ''),
(19685, 48, -1841.566650, 5545.965332, -12.427846, 0, ''),
(19685, 49, -1837.658325, 5523.780273, 0.558756, 0, ''),
(19685, 50, -1831.321777, 5534.821777, 1.221819, 6000, ''),
(19685, 51, -1831.321777, 5534.821777, 1.221819, 8000, ''),
(19685, 52, -1831.321777, 5534.821777, 1.221819, 5000, ''),
(19685, 53, -1850.060669, 5472.610840, 0.857320, 6000, ''),
(19685, 54, -1850.060669, 5472.610840, 0.857320, 8000, ''),
(19685, 55, -1850.060669, 5472.610840, 0.857320, 9000, ''),
(19685, 56, -1850.060669, 5472.610840, 0.857320, 9000, ''),
(19685, 57, -1850.060669, 5472.610840, 0.857320, 4000, '');
DELETE FROM script_waypoint WHERE entry=20129;
INSERT INTO script_waypoint VALUES
(20129, 0, -8374.93,-4250.21, -204.38,5000, ''),
(20129, 1, -8374.93,-4250.21, -204.38,16000, ''),
(20129, 2, -8374.93,-4250.21, -204.38,10000, ''),
(20129, 3, -8374.93,-4250.21, -204.38,2000, ''),
(20129, 4, -8439.40,-4180.05, -209.25, 0, ''),
(20129, 5, -8437.82,-4120.84, -208.59,10000, ''),
(20129, 6, -8437.82,-4120.84, -208.59,16000, ''),
(20129, 7, -8437.82,-4120.84, -208.59,13000, ''),
(20129, 8, -8437.82,-4120.84, -208.59,18000, ''),
(20129, 9, -8437.82,-4120.84, -208.59,15000, ''),
(20129, 10, -8437.82,-4120.84, -208.59,2000, ''),
(20129, 11, -8467.26,-4198.63, -214.21, 0, ''),
(20129, 12, -8667.76,-4252.13, -209.56, 0, ''),
(20129, 13, -8703.71,-4234.58, -209.5,14000, ''),
(20129, 14, -8703.71,-4234.58, -209.5,2000, ''),
(20129, 15, -8642.81,-4304.37, -209.57, 0, ''),
(20129, 16, -8649.06,-4394.36, -208.46,6000, ''),
(20129, 17, -8649.06,-4394.36, -208.46,18000, ''),
(20129, 18, -8649.06,-4394.36, -208.46,2000, ''),
(20129, 19, -8468.72,-4437.67, -215.45, 0, ''),
(20129, 20, -8427.54,-4426, -211.13, 0, ''),
(20129, 21, -8364.83,-4393.32, -205.91, 0, ''),
(20129, 22, -8304.54,-4357.2, -208.2,18000, ''),
(20129, 23, -8304.54,-4357.2, -208.2,2000, ''),
(20129, 24, -8375.42,-4250.41, -205.14,5000, ''),
(20129, 25, -8375.42,-4250.41, -205.14,5000, '');
DELETE FROM script_waypoint WHERE entry=6575;
INSERT INTO script_waypoint VALUES
(6575, 0, 1945.81, -431.54, 16.36, 0, ''),
(6575, 1, 1946.21, -436.41, 16.36, 0, ''),
(6575, 2, 1950.01, -444.11, 14.63, 0, ''),
(6575, 3, 1956.08, -449.34, 13.12, 0, ''),
(6575, 4, 1966.59, -450.55, 11.27, 0, ''),
(6575, 5, 1976.09, -447.51, 11.27, 0, ''),
(6575, 6, 1983.42, -435.85, 11.27, 0, ''),
(6575, 7, 1978.17, -428.81, 11.27, 0, ''),
(6575, 8, 1973.97, -422.08, 9.04, 0, ''),
(6575, 9, 1963.84, -418.90, 6.17, 0, ''),
(6575, 10, 1961.22, -422.74, 6.17, 0, ''),
(6575, 11, 1964.80, -431.26, 6.17, 300000, '');
DELETE FROM script_waypoint WHERE entry=3849;
INSERT INTO script_waypoint VALUES
(3849, 0, -252.92, 2126.82, 81.17, 0, ''),
(3849, 1, -253.88, 2131.11, 81.21, 0, ''),
(3849, 2, -249.66, 2142.45, 87.01, 0, ''),
(3849, 3, -248.08, 2143.68, 87.01, 0, ''),
(3849, 4, -238.87, 2139.93, 87.01, 0, ''),
(3849, 5, -235.47, 2149.18, 90.59, 0, ''),
(3849, 6, -239.89, 2156.06, 90.62, 20000, 'SAY_FREE');
DELETE FROM script_waypoint WHERE entry=3850;
INSERT INTO script_waypoint VALUES
(3850, 0, -255.33, 2117.99, 81.17, 0, ''),
(3850, 1, -253.88, 2131.11, 81.21, 0, ''),
(3850, 2, -249.66, 2142.45, 87.01, 0, ''),
(3850, 3, -248.08, 2143.68, 87.01, 0, ''),
(3850, 4, -238.87, 2139.93, 87.01, 0, ''),
(3850, 5, -235.47, 2149.18, 90.59, 0, ''),
(3850, 6, -239.89, 2156.06, 90.62, 20000, 'SAY_FREE');
-- Henry Stern
UPDATE `creature_template` SET `ScriptName`='npc_henry_stern' WHERE `entry`=8696;
DELETE FROM `trinity_string` WHERE `entry` IN (59);
INSERT INTO `trinity_string` VALUES
(59,'Using creature EventAI: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 2570_world_spell_linked_spell
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (47988,47987,27272,17854,17853,17852,17851,17850,17767);
INSERT INTO `spell_linked_spell` VALUES (47988, 54501, 2, 'Consume Shadows - Rank 9');
INSERT INTO `spell_linked_spell` VALUES (47987, 54501, 2, 'Consume Shadows - Rank 8');
INSERT INTO `spell_linked_spell` VALUES (27272, 54501, 2, 'Consume Shadows - Rank 7');
INSERT INTO `spell_linked_spell` VALUES (17854, 54501, 2, 'Consume Shadows - Rank 6');
INSERT INTO `spell_linked_spell` VALUES (17853, 54501, 2, 'Consume Shadows - Rank 5');
INSERT INTO `spell_linked_spell` VALUES (17852, 54501, 2, 'Consume Shadows - Rank 4');
INSERT INTO `spell_linked_spell` VALUES (17851, 54501, 2, 'Consume Shadows - Rank 3');
INSERT INTO `spell_linked_spell` VALUES (17850, 54501, 2, 'Consume Shadows - Rank 2');
INSERT INTO `spell_linked_spell` VALUES (17767, 54501, 2, 'Consume Shadows - Rank 1');

-- 2586_world_spell_linked_spell
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (53563);
INSERT INTO `spell_linked_spell` VALUES (53563, 53651, 2, 'Beacon of Light');
DELETE FROM `spell_proc_event` WHERE `entry` IN (53651);
INSERT INTO `spell_proc_event` VALUES
(53651, 0x00, 10, 0xC0008000, 0x00000000, 0x00000000, 0x00000000, 0x0000000, 0.000000, 0.000000, 0);

-- 2591_world_spell_linked_spell
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (16857,17390,17391,17392,27011,48475);
INSERT INTO `spell_linked_spell` VALUES (16857, 60089, 0, 'Faerie Fire (Feral) Rank 1');
INSERT INTO `spell_linked_spell` VALUES (17390, 60089, 0, 'Faerie Fire (Feral) Rank 2');
INSERT INTO `spell_linked_spell` VALUES (17391, 60089, 0, 'Faerie Fire (Feral) Rank 3');
INSERT INTO `spell_linked_spell` VALUES (17392, 60089, 0, 'Faerie Fire (Feral) Rank 4');
INSERT INTO `spell_linked_spell` VALUES (27011, 60089, 0, 'Faerie Fire (Feral) Rank 5');
INSERT INTO `spell_linked_spell` VALUES (48475, 60089, 0, 'Faerie Fire (Feral) Rank 6');

-- 2617_world_spell_linked_spell
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (781, 57635, 60932, 61507, 49576);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(781,    56446,  0, 'Disengage'),
(57635,  57636,  0, 'Disengage'),
(60932,  60934,  0, 'Disengage'),
(61507,  61508,  0, 'Disengage'),
(49576,  49560,  0, 'Death Grip');

-- 2629_world_spell_linked_spell
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (47897,61290);
INSERT INTO `spell_linked_spell` VALUES (47897, 47960, 1, 'Shadowflame Rank 1');
INSERT INTO `spell_linked_spell` VALUES (61290, 61291, 1, 'Shadowflame Rank 2');

-- 2678_mangos_7662_01_world_spell_bonus_data
DELETE FROM `spell_bonus_data` WHERE entry IN (50288, 50294);
INSERT INTO `spell_bonus_data` VALUES
(50288, 0.05, 0, 0, "Druid - Starfall"),
(50294, 0.012, 0, 0, "Druid - Starfall AOE");

-- 2682_world_SD2_scripts
DELETE FROM script_waypoint WHERE entry=3849;
INSERT INTO script_waypoint VALUES
(3849, 0, -250.923431, 2116.264160, 81.179, 0, 'SAY_FREE_AD'),
(3849, 1, -255.048538, 2119.392578, 81.179, 0, ''),
(3849, 2, -254.129105, 2123.454346, 81.179, 0, ''),
(3849, 3, -253.897552, 2130.873535, 81.179, 0, ''),
(3849, 4, -249.889435, 2142.307861, 86.972, 0, ''),
(3849, 5, -248.204926, 2144.017090, 87.013, 0, ''),
(3849, 6, -240.552826, 2140.552734, 87.012, 0, ''),
(3849, 7, -237.513916, 2142.066650, 87.012, 0, ''),
(3849, 8, -235.638138, 2149.231689, 90.587, 0, ''),
(3849, 9, -237.188019, 2151.946045, 90.624, 0, ''),
(3849, 10, -241.162064, 2153.649658, 90.624, 0, 'SAY_OPEN_DOOR_AD'),
(3849, 11, -241.129700, 2154.562988, 90.624, 5000, ''),
(3849, 12, -241.129700, 2154.562988, 90.624, 5000, 'SAY_POST1_DOOR_AD'),
(3849, 13, -241.129700, 2154.562988, 90.624, 25000, 'SAY_POST2_DOOR_AD');

DELETE FROM script_waypoint WHERE entry=3850;
INSERT INTO script_waypoint VALUES
(3850, 0, -241.816895, 2122.904053, 81.179, 0, 'SAY_FREE_AS'),
(3850, 1, -247.139297, 2124.886475, 81.179, 0, ''),
(3850, 2, -253.179184, 2127.406738, 81.179, 0, ''),
(3850, 3, -253.897552, 2130.873535, 81.179, 0, ''),
(3850, 4, -249.889435, 2142.307861, 86.972, 0, ''),
(3850, 5, -248.204926, 2144.017090, 87.013, 0, ''),
(3850, 6, -240.552826, 2140.552734, 87.012, 0, ''),
(3850, 7, -237.513916, 2142.066650, 87.012, 0, ''),
(3850, 8, -235.638138, 2149.231689, 90.587, 0, ''),
(3850, 9, -237.188019, 2151.946045, 90.624, 0, ''),
(3850, 10, -241.162064, 2153.649658, 90.624, 0, 'SAY_OPEN_DOOR_AS'),
(3850, 11, -241.129700, 2154.562988, 90.624, 5000, 'cast'),
(3850, 12, -241.129700, 2154.562988, 90.624, 5000, 'SAY_POST_DOOR_AS'),
(3850, 13, -241.129700, 2154.562988, 90.624, 25000, '');

UPDATE script_texts SET content_default='Follow me and I\'ll open the courtyard door for you.', language=7, comment='prisoner ashcrombe SAY_FREE_AS' WHERE entry=-1033000;

DELETE FROM script_texts WHERE entry BETWEEN -1033008 AND -1033001;
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1033001,'I have just the spell to get this door open. Too bad the cell doors weren\'t locked so haphazardly.',0,0,7,1,'prisoner ashcrombe SAY_OPEN_DOOR_AS'),
(-1033002,'There it is! Wide open. Good luck to you conquering what lies beyond. I must report back to the Kirin Tor at once!',0,0,7,1,'prisoner ashcrombe SAY_POST_DOOR_AS'),
(-1033003,'Free from this wretched cell at last! Let me show you to the courtyard....',0,0,1,1,'prisoner adamant SAY_FREE_AD'),
(-1033004,'You are indeed courageous for wanting to brave the horrors that lie beyond this door.',0,0,1,1,'prisoner adamant SAY_OPEN_DOOR_AD'),
(-1033005,'There we go!',0,0,1,1,'prisoner adamant SAY_POST1_DOOR_AD'),
(-1033006,'Good luck with Arugal. I must hurry back to Hadrec now.',0,0,1,1,'prisoner adamant SAY_POST2_DOOR_AD'),
(-1033007,'About time someone killed the wretch.',0,0,1,1,'prisoner adamant SAY_BOSS_DIE_AD'),
(-1033008,'For once I agree with you... scum.',0,0,7,1,'prisoner ashcrombe SAY_BOSS_DIE_AS');

-- 2683_world_trinity_string
DELETE FROM `trinity_string` WHERE `entry`=2025;
INSERT INTO `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
('2025','|cff00ff00Created|r:|cff00ccff %s ago|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 2685_world_spell_proc_event
DELETE FROM `spell_proc_event` WHERE `entry` IN (56337, 56336, 56333);
INSERT INTO `spell_proc_event` VALUES
(56337, 0x00, 9, 0x00000004, 0x00000000, 0x00000200, 0x00022200, 0x0000000, 0.000000, 0.000000, 0),
(56336, 0x00, 9, 0x00000004, 0x00000000, 0x00000200, 0x00022200, 0x0000000, 0.000000, 0.000000, 0),
(56333, 0x00, 9, 0x00000004, 0x00000000, 0x00000200, 0x00022200, 0x0000000, 0.000000, 0.000000, 0);

-- 2686_world_command
DELETE FROM `command` WHERE `name` IN ('go ticket');
INSERT INTO `command` VALUES 
('go ticket','1','Syntax: .go ticket #ticketid\r\nTeleports the user to the location where $ticketid was created.');

-- 2687_world_spell_proc_event
DELETE FROM `spell_proc_event` WHERE `entry` IN (44545, 44543);
INSERT INTO `spell_proc_event` VALUES
(44545, 0x00, 3, 1049120, 4096, 0, 65536, 0x0000000, 0.000000, 15.000000, 0),
(44543, 0x00, 3, 1049120, 4096, 0, 65536, 0x0000000, 0.000000, 7.000000, 0);

-- 2689_world_spell_linked_spell
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (51723);
INSERT INTO `spell_linked_spell` VALUES (51723, 52874, 0, 'Fan Of Knives');

-- 2702_world_spell_proc_event
DELETE FROM `spell_proc_event` WHERE `entry` IN (56337, 56336, 56333);
INSERT INTO `spell_proc_event` VALUES
(56337, 0x00, 9, 0x00000004, 0x00000000, 0x00000200, 0x00011100, 0x0000000, 0.000000, 0.000000, 0),
(56336, 0x00, 9, 0x00000004, 0x00000000, 0x00000200, 0x00011100, 0x0000000, 0.000000, 0.000000, 0),
(56333, 0x00, 9, 0x00000004, 0x00000000, 0x00000200, 0x00011100, 0x0000000, 0.000000, 0.000000, 0);

-- 2706_world_SD2_scripts
UPDATE creature_template SET ScriptName='npc_kingdom_of_dalaran_quests' WHERE entry IN (29169,23729,26673,27158,29158,29161,26471,29155,29159,29160,29162);
DELETE FROM spell_target_position WHERE id=53360;
INSERT INTO spell_target_position VALUES
(53360, 571, 5807.829, 587.960, 660.939, 1.663);

-- 2715_TC1_1362_world_creature_linked_respawn
DROP TABLE IF EXISTS `creature_linked_respawn`;
CREATE TABLE `creature_linked_respawn` (
  `guid` int(10) unsigned NOT NULL COMMENT 'dependent creature',
  `linkedGuid` int(10) unsigned NOT NULL COMMENT 'master creature',
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Creature Respawn Link System';
DELETE FROM `trinity_string` WHERE `entry` = '750';
INSERT INTO `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
('750', 'linkGUID: %u, Entry: %u (%s)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- 2724_TC1_world_1371_script
UPDATE `creature_template` SET `ScriptName` = 'mob_unkor_the_ruthless' WHERE `entry` = 18262;

-- 2774_world_spell_proc_event
DELETE FROM `spell_proc_event` WHERE `entry` IN (56337, 56336, 56333, 58426, 31221, 31222, 31223);
INSERT INTO `spell_proc_event` VALUES
(56337, 0x00, 9, 0x00000004, 0x00000000, 0x00000040, 0x00022200, 0x0000000, 0.000000, 0.000000, 0),
(56336, 0x00, 9, 0x00000004, 0x00000000, 0x00000040, 0x00022200, 0x0000000, 0.000000, 0.000000, 0),
(56333, 0x00, 9, 0x00000004, 0x00000000, 0x00000040, 0x00022200, 0x0000000, 0.000000, 0.000000, 0),
-- Overkill
(58426, 0x00, 8, 0x400000, 0x00000000, 0x00000000, 0x00014000, 0x0006001, 0.000000, 0.000000, 0),
-- Master of subtlety
(31221, 0x00, 8, 0x400000, 0x00000000, 0x00000000, 0x00014000, 0x0006001, 0.000000, 0.000000, 0),
(31222, 0x00, 8, 0x400000, 0x00000000, 0x00000000, 0x00014000, 0x0006001, 0.000000, 0.000000, 0),
(31223, 0x00, 8, 0x400000, 0x00000000, 0x00000000, 0x00014000, 0x0006001, 0.000000, 0.000000, 0);

-- 2792_world_spell_bonus_data
DELETE FROM `spell_bonus_data` WHERE entry IN (33778);
INSERT INTO `spell_bonus_data` VALUES
(33778, 0.6453, 0, 0, "Lifebloom- final effect");

-- 2792_world_spell_proc_event
DELETE FROM `spell_proc_event` WHERE `entry` IN (16180, 16198, 16196);
INSERT INTO `spell_proc_event` VALUES
(16180, 0x00, 11, 0x000000C0, 0x00000000, 0x00000010, 0x00000000, 0x0000002, 0.000000, 0.000000, 0),
(16198, 0x00, 11, 0x000000C0, 0x00000000, 0x00000010, 0x00000000, 0x0000002, 0.000000, 0.000000, 0),
(16196, 0x00, 11, 0x000000C0, 0x00000000, 0x00000010, 0x00000000, 0x0000002, 0.000000, 0.000000, 0);

-- 2793_world_spell_proc_event
DELETE FROM `spell_proc_event` WHERE `entry` IN (54754);
INSERT INTO `spell_proc_event` VALUES
(54754, 0x00, 7, 0x00000010, 0x00000000, 0x00000000, 0x00000000, 0x0000000, 0.000000, 0.000000, 0);

-- 2794_world_spell_proc_event
DELETE FROM `spell_proc_event` WHERE `entry` IN (54754);
INSERT INTO `spell_proc_event` VALUES
(54754, 0x00, 7, 0x00000010, 0x00000000, 0x00000000, 0x00000000, 0x0000000, 0.000000, 0.000000, 0);

-- 2798_world_SD2_scripts
UPDATE gameobject_template SET ScriptName='go_tele_to_dalaran_crystal' WHERE entry=191230;
UPDATE gameobject_template SET ScriptName='go_tele_to_violet_stand' WHERE entry=191229;

-- 2802_world_SD2_scripts
DELETE FROM script_waypoint WHERE entry=17876;
INSERT INTO script_waypoint VALUES
(17876, 0, 2230.91, 118.765, 82.2947,5000, ''),
(17876, 1, 2230.33, 114.980, 82.2946, 0, ''),
(17876, 2, 2233.36, 111.057, 82.2996, 0, ''),
(17876, 3, 2231.17, 108.486, 82.6624, 0, ''),
(17876, 4, 2220.22, 114.605, 89.4264, 0, ''),
(17876, 5, 2215.23, 115.990, 89.4549, 0, ''),
(17876, 6, 2210.00, 106.849, 89.4549, 0, ''),
(17876, 7, 2205.66, 105.234, 89.4549, 0, ''),
(17876, 8, 2192.26, 112.618, 89.4549, 0, 'spawn armorer'),
(17876, 9, 2181.28, 118.612, 89.4549,8000, 'get weapon'),
(17876, 10, 2181.62, 120.385, 89.4549,5000, 'get armor'),
(17876, 11, 2189.44, 113.922, 89.4549, 0, ''),
(17876, 12, 2195.63, 110.584, 89.4549, 0, ''),
(17876, 13, 2201.09, 115.115, 89.4549, 0, ''),
(17876, 14, 2204.34, 121.036, 89.4355, 0, ''),
(17876, 15, 2208.66, 129.127, 87.9560, 0, 'first ambush'),
(17876, 16, 2193.09, 137.940, 88.2164, 0, ''),
(17876, 17, 2173.39, 149.064, 87.9227, 0, ''),
(17876, 18, 2164.25, 137.965, 85.0595, 0, ''),
(17876, 19, 2149.31, 125.645, 77.0858, 0, ''),
(17876, 20, 2142.78, 127.173, 75.5954, 0, ''),
(17876, 21, 2139.28, 133.952, 73.6386, 0, 'second ambush'),
(17876, 22, 2139.54, 155.235, 67.1269, 0, ''),
(17876, 23, 2145.38, 167.551, 64.8974, 0, ''),
(17876, 24, 2134.28, 175.304, 67.9446, 0, ''),
(17876, 25, 2118.08, 187.387, 68.8141, 0, ''),
(17876, 26, 2105.88, 195.461, 65.1854, 0, 'third ambush'),
(17876, 27, 2096.77, 196.939, 65.2117, 0, ''),
(17876, 28, 2083.90, 209.395, 64.8736, 0, ''),
(17876, 29, 2067.84, 224.376, 64.8022,30000, 'meeting scarloc'),
(17876, 30, 2055.40, 242.90, 63.3418, 0, 'after skarloc'),
(17876, 31, 2039.20, 266.460, 63.0182,10000, 'mount up'),
(17876, 32, 2011.77, 278.478, 65.3388, 0, ''),
(17876, 33, 2005.08, 289.676, 66.1179, 0, ''),
(17876, 34, 2033.11, 337.450, 66.0948, 0, ''),
(17876, 35, 2070.30, 416.208, 66.0893, 0, ''),
(17876, 36, 2086.76, 469.768, 65.9182, 0, ''),
(17876, 37, 2101.70, 497.955, 61.7881, 0, 'road ambush'),
(17876, 38, 2133.39, 530.933, 55.3700,5000, ''),
(17876, 39, 2157.91, 559.635, 48.5157, 0, ''),
(17876, 40, 2167.34, 586.191, 42.4394, 0, ''),
(17876, 41, 2174.17, 637.643, 33.9002, 0, ''),
(17876, 42, 2179.31, 656.053, 34.723, 0, ''),
(17876, 43, 2183.65, 670.941, 34.0318, 0, ''),
(17876, 44, 2201.50, 668.616, 36.1236, 0, ''),
(17876, 45, 2221.56, 652.747, 36.6153, 0, ''),
(17876, 46, 2238.97, 640.125, 37.2214, 0, ''),
(17876, 47, 2251.17, 620.574, 40.1473, 0, ''),
(17876, 48, 2261.98, 595.303, 41.4117, 0, ''),
(17876, 49, 2278.67, 560.172, 38.9090, 0, ''),
(17876, 50, 2336.72, 528.327, 40.9369, 0, ''),
(17876, 51, 2381.04, 519.612, 37.7312, 0, ''),
(17876, 52, 2412.20, 515.425, 39.2068, 0, ''),
(17876, 53, 2452.39, 516.174, 42.9387, 0, ''),
(17876, 54, 2467.38, 539.389, 47.4992, 0, ''),
(17876, 55, 2470.70, 554.333, 46.6668, 0, ''),
(17876, 56, 2478.07, 575.321, 55.4549, 0, ''),
(17876, 57, 2480.00, 585.408, 56.6921, 0, ''),
(17876, 58, 2482.67, 608.817, 55.6643, 0, ''),
(17876, 59, 2485.62, 626.061, 58.0132, 2000, 'dismount'),
(17876, 60, 2486.91, 626.356, 58.0761, 0, 'scare horse'),
(17876, 61, 2488.58, 660.940, 57.3913, 0, ''),
(17876, 62, 2502.56, 686.059, 55.6252, 0, ''),
(17876, 63, 2502.08, 694.360, 55.5083, 0, ''),
(17876, 64, 2491.46, 694.321, 55.7163, 0, ''),
(17876, 65, 2491.10, 703.300, 55.7630, 0, ''),
(17876, 66, 2485.64, 702.992, 55.7917, 0, ''),
(17876, 67, 2479.10, 695.291, 55.7901, 10000, ''),
(17876, 68, 2476.75, 693.689, 55.7960, 0, 'spawn mobs'),
(17876, 69, 2475.39, 695.983, 55.8146, 0, ''),
(17876, 70, 2477.75, 694.473, 55.7945, 0, ''),
(17876, 71, 2481.27, 697.747, 55.7910, 0, 'mobs in doorway'),
(17876, 72, 2486.31, 703.131, 55.7861, 5000, ''),
(17876, 73, 2490.76, 703.511, 55.7662, 0, ''),
(17876, 74, 2491.30, 694.792, 55.7195, 0, ''),
(17876, 75, 2518.69, 693.876, 55.1383, 0, ''),
(17876, 76, 2531.33, 681.914, 55.1383, 0, ''),
(17876, 77, 2568.25, 682.654, 55.1778, 0, ''),
(17876, 78, 2589.61, 689.981, 55.1421, 0, ''),
(17876, 79, 2634.74, 679.833, 54.6613, 0, ''),
(17876, 80, 2630.41, 661.464, 54.2761, 0, ''),
(17876, 81, 2629.00, 656.982, 56.0651, 0, ''),
(17876, 82, 2620.84, 633.007, 56.0300, 3000, 'stop in church'),
(17876, 83, 2622.99, 639.178, 56.0300, 0, 'summon'),
(17876, 84, 2628.73, 656.693, 56.0610, 5000, ''),
(17876, 85, 2630.34, 661.135, 54.2738, 0, ''),
(17876, 86, 2635.38, 672.243, 54.4508, 0, ''),
(17876, 87, 2644.13, 668.158, 55.3797, 0, ''),
(17876, 88, 2646.82, 666.740, 56.9898, 0, ''),
(17876, 89, 2658.22, 665.432, 57.1725, 0, ''),
(17876, 90, 2661.88, 674.849, 57.1725, 0, ''),
(17876, 91, 2656.23, 677.208, 57.1725, 0, ''),
(17876, 92, 2652.28, 670.270, 61.9353, 0, ''),
(17876, 93, 2650.79, 664.290, 61.9302, 0, 'summon inn'),
(17876, 94, 2658.19, 660.454, 61.9320, 5000, ''),
(17876, 95, 2660.57, 659.173, 61.9370, 0, 'speak with Taretha'),
(17876, 96, 2658.19, 660.454, 61.9320, 5000, 'epoch calls'),
(17876, 97, 2659.84, 659.482, 61.9361, 5000, 'taretha "dies"'),
(17876, 98, 2654.28, 662.722, 61.9313, 0, ''),
(17876, 99, 2652.37, 670.561, 61.9368, 0, ''),
(17876, 100, 2656.05, 676.761, 57.1727, 0, ''),
(17876, 101, 2658.49, 677.166, 57.1727, 0, ''),
(17876, 102, 2659.28, 667.117, 57.1727, 0, ''),
(17876, 103, 2649.71, 665.387, 57.1727, 0, ''),
(17876, 104, 2634.79, 672.964, 54.4577, 0, 'outside inn'),
(17876, 105, 2635.06, 673.892, 54.4713, 30000, 'getting ready'),
(17876, 106, 2634.79, 672.964, 54.4577, 60000, 'when all dead and meet Taretha'),
(17876, 107, 2631.72, 665.629, 54.2923, 0, 'run off'),
(17876, 108, 2647.40, 640.530, 55.7634, 0, '');
DELETE FROM script_waypoint WHERE entry=18887;
INSERT INTO script_waypoint VALUES
(18887, 0, 2650.06, 665.473, 61.9305, 0, ''),
(18887, 1, 2652.44, 670.761, 61.9370, 0, ''),
(18887, 2, 2655.96, 676.913, 57.1725, 0, ''),
(18887, 3, 2659.40, 677.317, 57.1725, 0, ''),
(18887, 4, 2651.75, 664.482, 57.1725, 0, ''),
(18887, 5, 2647.49, 666.595, 57.0824, 0, ''),
(18887, 6, 2644.37, 668.167, 55.4182, 0, ''),
(18887, 7, 2640.96, 669.890, 54.7567, 60000, '');
DELETE FROM script_waypoint WHERE entry=10096;
INSERT INTO script_waypoint VALUES
(10096, 0, 604.802673, -191.081985, -54.058590, 0,'ring'),
(10096, 1, 604.072998, -222.106918, -52.743759, 0,'first gate'),
(10096, 2, 621.400391, -214.499054, -52.814453, 0,'hiding in corner'),
(10096, 3, 601.300781, -198.556992, -53.950256, 0,'ring'),
(10096, 4, 631.818359, -180.548126, -52.654770, 0,'second gate'),
(10096, 5, 627.390381, -201.075974, -52.692917, 0,'hiding in corner');
DELETE FROM script_waypoint WHERE entry=9503;
INSERT INTO script_waypoint VALUES
(9503, 0, 883.294861, -188.926300, -43.703655, 0,''),
(9503, 1, 872.763550, -185.605621, -43.703655, 5000,'b1'),
(9503, 2, 867.923401, -188.006393, -43.703655, 5000,'b2'),
(9503, 3, 863.295898, -190.795212, -43.703655, 5000,'b3'),
(9503, 4, 856.139587, -194.652756, -43.703655, 5000,'b4'),
(9503, 5, 851.878906, -196.928131, -43.703655, 15000,'b5'),
(9503, 6, 877.035217, -187.048080, -43.703655, 0,''),
(9503, 7, 891.198000, -197.924000, -43.620400, 0,'home');

-- 2813_world_scripts
UPDATE `creature_template` SET `ScriptName` = 'boss_elder_nadox' WHERE `entry` = 29309;
UPDATE `creature_template` SET `ScriptName` = 'mob_ahnkahar_nerubian' WHERE `entry` in (30176,30178);
UPDATE `instance_template` SET `script`= 'instance_ahnkahet' WHERE `map` = 619;

-- 2813_world_SD2_scripts
DELETE FROM script_waypoint WHERE entry=12423;
INSERT INTO script_waypoint VALUES
(12423, 0, -9509.72, -147.03, 58.74, 0, ''),
(12423, 1, -9517.07, -172.82, 58.66, 0, '');
DELETE FROM script_waypoint WHERE entry=12427;
INSERT INTO script_waypoint VALUES
(12427, 0, -5689.20, -456.44, 391.08, 0, ''),
(12427, 1, -5700.37, -450.77, 393.19, 0, '');
DELETE FROM script_waypoint WHERE entry=12428;
INSERT INTO script_waypoint VALUES
(12428, 0, 2454.09, 361.26, 31.51, 0, ''),
(12428, 1, 2472.03, 378.08, 30.98, 0, '');
DELETE FROM script_waypoint WHERE entry=12429;
INSERT INTO script_waypoint VALUES
(12429, 0, 9654.19, 909.58, 1272.11, 0, ''),
(12429, 1, 9642.53, 908.11, 1269.10, 0, '');
DELETE FROM script_waypoint WHERE entry=12430;
INSERT INTO script_waypoint VALUES
(12430, 0, 161.65, -4779.34, 14.64, 0, ''),
(12430, 1, 140.71, -4813.56, 17.04, 0, '');
UPDATE script_texts SET emote=20 WHERE entry=-1000231;
UPDATE script_texts SET emote=4 WHERE entry IN (-1000232, -1000256, -1000258, -1000260, -1000262);

-- 2814_world_spell_linked_spell
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (32386, 32388, 32389, 32390, 32391);
INSERT INTO `spell_linked_spell` VALUES (32386, 60448, 2, 'Shadow Embrace Rank1');
INSERT INTO `spell_linked_spell` VALUES (32388, 60465, 2, 'Shadow Embrace Rank2');
INSERT INTO `spell_linked_spell` VALUES (32389, 60466, 2, 'Shadow Embrace Rank3');
INSERT INTO `spell_linked_spell` VALUES (32390, 60467, 2, 'Shadow Embrace Rank4');
INSERT INTO `spell_linked_spell` VALUES (32391, 60468, 2, 'Shadow Embrace Rank5');

-- 2828_world_spell_proc_event
DELETE FROM `spell_proc_event` WHERE `entry` IN (16544, 16086);
INSERT INTO `spell_proc_event` VALUES
(16544, 0x00, 11, 0x00000000, 0x00040000, 0x00000000, 0x00000000, 0x0000000, 0.000000, 0.000000, 0),
(16086, 0x00, 11, 0x00000000, 0x00040000, 0x00000000, 0x00000000, 0x0000000, 0.000000, 0.000000, 0);