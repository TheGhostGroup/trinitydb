-- World SQL file: 262_world.sql

DELETE FROM trinity_string WHERE entry IN (1119,1120,1121);

INSERT INTO trinity_string VALUES
(1119,'You must use male or female as gender.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1120,'You change gender of %s to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1121,'Your gender changed to %s by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);


DELETE FROM command WHERE name IN ('modify gender');

INSERT INTO command VALUES
('modify gender',2,'Syntax: .modify gender male/female\r\n\r\nChange gender of selected player.');


DELETE FROM `command` WHERE `name` IN ('senditems','sendmail');
insert INTO `command` (`name`, `security`, `help`) values
('senditems',3,'Syntax: .senditems #playername "#subject" "#text" itemid1[:count1] itemid2[:count2] ... itemidN[:countN]\r\n\r\nSend a mail to a player. Subject and mail text must be in "". If for itemid not provided related count values then expected 1, if count > max items in stack then items will be send in required amount stacks. All stacks amount in mail limited to 12.'),
('sendmail',1,'Syntax: .sendmail #playername "#subject" "#text"\r\n\r\nSend a mail to a player. Subject and mail text must be in "".');


DELETE FROM `command` WHERE `name` = 'sendmoney';
insert INTO `command` (`name`, `security`, `help`) values
('sendmoney',3,'Syntax: .sendmoney #playername "#subject" "#text" #money\r\n\r\nSend mail with money to a player. Subject and mail text must be in "".');


DELETE FROM trinity_string WHERE entry IN (453);


DROP TABLE IF EXISTS `db_script_string`;
CREATE TABLE `db_script_string` (
  `entry` int(11) unsigned NOT NULL default '0',
  `content_default` text NOT NULL,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  `content_loc8` text,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DELETE FROM `command` WHERE `name` IN (
  'server exit',
  'server idleshutdown',
  'server idleshutdown cancel',
  'server idlerestart',
  'server idlerestart cancel',
  'server restart',
  'server restart cancel',
  'server shutdown',
  'server shutdown cancel'
);

INSERT INTO `command` (`name`, `security`, `help`) VALUES
('server exit',4,'Syntax: .server exit\r\n\r\nTerminate trinity-core NOW. Exit code 0.'),
('server idleshutdown',3,'Syntax: .server idleshutdown #delay [#exist_code]\r\n\r\nShut the server down after #delay seconds if no active connections are present (no players). Use #exist_code or 0 as program exist code.'),
('server idleshutdown cancel',3,'Syntax: .server idleshutdown cancel\r\n\r\nCancel the restart/shutdown timer if any.'),
('server idlerestart',3,'Syntax: .server idlerestart #delay\r\n\r\nRestart the server after #delay seconds if no active connections are present (no players). Use #exist_code or 2 as program exist code.'),
('server idlerestart cancel',3,'Syntax: .server idlerestart cancel\r\n\r\nCancel the restart/shutdown timer if any.'),
('server restart',3,'Syntax: .server restart #delay\r\n\r\nRestart the server after #delay seconds. Use #exist_code or 2 as program exist code.'),
('server restart cancel',3,'Syntax: .server restart cancel\r\n\r\nCancel the restart/shutdown timer if any.'),
('server shutdown',3,'Syntax: .server shutdown #delay [#exist_code]\r\n\r\nShut the server down after #delay seconds. Use #exist_code or 0 as program exist code.'),
('server shutdown cancel',3,'Syntax: .server shutdown cancel\r\n\r\nCancel the restart/shutdown timer if any.');

DELETE FROM trinity_string WHERE entry IN (251);
INSERT INTO trinity_string VALUES
(251,'Text%d (ID: %i): %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE event_scripts
  DROP datatext,
  ADD COLUMN dataint int(11) NOT NULL default '0' AFTER datalong2; 

ALTER TABLE gameobject_scripts
  DROP datatext,
  ADD COLUMN dataint int(11) NOT NULL default '0' AFTER datalong2; 

ALTER TABLE quest_end_scripts
  DROP datatext,
  ADD COLUMN dataint int(11) NOT NULL default '0' AFTER datalong2; 

ALTER TABLE quest_start_scripts
  DROP datatext,
  ADD COLUMN dataint int(11) NOT NULL default '0' AFTER datalong2; 

ALTER TABLE spell_scripts
  DROP datatext,
  ADD COLUMN dataint int(11) NOT NULL default '0' AFTER datalong2; 

ALTER TABLE creature_movement
  DROP `text1`,
  DROP `text2`,
  DROP `text3`,
  DROP `text4`,
  DROP `text5`,
  ADD COLUMN textid1 int(11) NOT NULL default '0' AFTER waittime,
  ADD COLUMN textid2 int(11) NOT NULL default '0' AFTER textid1,
  ADD COLUMN textid3 int(11) NOT NULL default '0' AFTER textid2,
  ADD COLUMN textid4 int(11) NOT NULL default '0' AFTER textid3,
  ADD COLUMN textid5 int(11) NOT NULL default '0' AFTER textid4;-- World SQL file: 273_world_scripts.sql

UPDATE `creature_template` SET `ScriptName`='npc_wounded_blood_elf' WHERE `entry`='16993';
UPDATE `creature_template` SET `ScriptName` = 'mob_phase_hunter' WHERE `entry` = '18879';

-- World SQL file: 285_world.sql

-- `trinity_string` Language.h entries

DELETE FROM `trinity_string` WHERE `entry` > 716 AND `entry` < 750;
INSERT INTO `trinity_string` VALUES
(717,'Alliance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(718,'Horde',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(719,'%s was destroyed by the %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(720,'The %s is under attack! If left unchecked, the %s will destroy it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(721,'The %s was taken by the %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(722,'The %s was taken by the %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(723,'The %s was taken by the %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(724,'The %s is under attack! If left unchecked, the %s will capture it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(725,'The %s has taken the %s! Its supplies will now be used for reinforcements!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(726,'Irondeep Mine',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(727,'Coldtooth Mine',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(728,'Stormpike Aid Station',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(729,'Dun Baldar South Bunker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(730,'Dun Baldar North Bunker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(731,'Stormpike Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(732,'Icewing Bunker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(733,'Stonehearth Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(734,'Stonehearth Bunker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(735,'Snowfall Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(736,'Iceblood Tower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(737,'Iceblood Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(738,'Tower Point',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(739,'Frostwolf Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(740,'East Frostwolf Tower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(741,'West Frostwolf Tower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(742,'Frostwolf Relief Hut',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(743,'The Battle for Alterac Valley begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(744,'The Battle for Alterac Valley begins in 30 seconds. Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(745,'The Battle for Alterac Valley has begun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(746,'The Alliance Team is running out of reinforcements!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(747,'The Horde Team is running out of reinforcements!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(748,'The Frostwolf General is Dead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(749,'The Stormpike General is Dead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)
;

-- World SQL file: 287_world_scripts.sql

UPDATE `creature_template` SET `ScriptName` = 'npc_steam_tonk' WHERE `entry` = '19405';
UPDATE `creature_template` SET `ScriptName` = 'npc_tonk_mine' WHERE `entry` = '15368';

-- World SQL file: 329_world.sql

DROP TABLE IF EXISTS `spell_proc_event`;

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for spell_proc_event
-- ----------------------------
CREATE TABLE `spell_proc_event` (
  `entry` smallint(6) unsigned NOT NULL default '0',
  `SchoolMask` tinyint(4) NOT NULL default '0',
  `SpellFamilyName` smallint(6) unsigned NOT NULL default '0',
  `SpellFamilyMask` bigint(40) unsigned NOT NULL default '0',
  `procFlags` int(10) unsigned NOT NULL default '0',
  `procEx` int(10) unsigned NOT NULL default '0',
  `ppmRate` float NOT NULL default '0',
  `CustomChance` float NOT NULL default '0',
  `Cooldown` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `spell_proc_event` VALUES ('9452', '0', '0', '0', '0', '0', '3', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('34917', '32', '6', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('34916', '32', '6', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('34914', '32', '6', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29076', '20', '3', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29075', '20', '3', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29074', '20', '3', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12704', '0', '0', '0', '0', '0', '1.6626', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12289', '0', '4', '2', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12311', '0', '4', '2048', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('28849', '0', '11', '128', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('28847', '0', '7', '32', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('28823', '0', '11', '192', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('28809', '0', '6', '4096', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('28719', '0', '7', '32', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12668', '0', '4', '2', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12703', '0', '0', '0', '0', '0', '1.33008', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12702', '0', '0', '0', '0', '0', '0.99756', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12701', '0', '0', '0', '0', '0', '0.66504', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12284', '0', '0', '0', '0', '0', '0.33252', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12797', '0', '4', '1024', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12799', '0', '4', '1024', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12800', '0', '4', '1024', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('28595', '16', '3', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('28594', '16', '3', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('28593', '16', '3', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12958', '0', '4', '2048', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('13754', '0', '8', '16', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('13867', '0', '8', '16', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('14186', '0', '8', '1082131720', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('14190', '0', '8', '9672066312', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('14193', '0', '8', '9672066312', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('14194', '0', '8', '9672066312', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('14195', '0', '8', '9672066312', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('28592', '16', '3', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('23721', '0', '9', '2048', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('15277', '0', '0', '0', '0', '0', '6', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('23572', '0', '11', '192', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('23551', '0', '11', '192', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20235', '0', '10', '32768', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20234', '0', '10', '32768', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('19415', '0', '9', '512', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('15346', '0', '0', '0', '0', '0', '6', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('19414', '0', '9', '512', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('19413', '0', '9', '512', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('15600', '0', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('19412', '0', '9', '512', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16850', '0', '7', '4', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16864', '0', '0', '0', '0', '0', '2', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16923', '0', '7', '4', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16924', '0', '7', '4', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16952', '0', '7', '4398046744576', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16954', '0', '7', '4398046744576', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('19407', '0', '9', '512', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('18096', '0', '5', '549755813984', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('18073', '0', '5', '549755813984', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('17793', '0', '5', '1', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('17796', '0', '5', '1', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('17801', '0', '5', '1', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('18095', '0', '5', '10', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('18094', '0', '5', '10', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('17802', '0', '5', '1', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('18119', '0', '5', '18416819766245', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('18120', '0', '5', '18416819766245', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('18121', '0', '5', '18416819766245', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('18122', '0', '5', '18416819766245', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('18123', '0', '5', '18416819766245', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('19228', '0', '0', '64', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('19232', '0', '9', '64', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('19233', '0', '9', '64', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('17803', '0', '5', '1', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16164', '0', '11', '2416967683', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('15363', '0', '6', '17448312320', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('15362', '0', '6', '17448312320', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('15326', '0', '6', '8691163136', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20164', '0', '0', '0', '0', '0', '5', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20165', '0', '0', '0', '0', '0', '20', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20166', '0', '0', '0', '0', '0', '20', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20215', '0', '10', '3223322624', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20214', '0', '10', '3223322624', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20213', '0', '10', '3223322624', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20212', '0', '10', '3223322624', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20210', '0', '10', '3223322624', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('15325', '0', '6', '8691163136', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('15324', '0', '6', '8691163136', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20347', '0', '0', '0', '0', '0', '20', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20348', '0', '0', '0', '0', '0', '20', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20349', '0', '0', '0', '0', '0', '20', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20356', '0', '0', '0', '0', '0', '20', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20357', '0', '0', '0', '0', '0', '20', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20375', '0', '0', '0', '0', '0', '7', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20500', '0', '4', '268435456', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20501', '0', '4', '268435456', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20915', '0', '0', '0', '0', '0', '7', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20918', '0', '0', '0', '0', '0', '7', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20919', '0', '0', '0', '0', '0', '7', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20920', '0', '0', '0', '0', '0', '7', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('21890', '0', '4', '3763103747823', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('15323', '0', '6', '8691163136', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('15286', '32', '6', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('23578', '0', '0', '0', '0', '0', '2', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('23581', '0', '0', '0', '0', '0', '2', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('23686', '0', '0', '0', '0', '0', '2', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('23689', '0', '0', '0', '0', '0', '4', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('23695', '0', '4', '2', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('15268', '0', '6', '8691163136', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('25669', '0', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('26016', '0', '0', '0', '0', '0', '2', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('26021', '0', '0', '0', '0', '0', '2', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('26119', '0', '10', '2416967683', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('26480', '0', '0', '0', '0', '0', '3', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('27160', '0', '0', '0', '0', '0', '20', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('27166', '0', '0', '0', '0', '0', '20', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('27170', '0', '0', '0', '0', '0', '7', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('27419', '0', '0', '0', '0', '0', '3', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('27498', '0', '0', '0', '0', '0', '3', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('27656', '0', '0', '0', '0', '0', '3', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('27787', '0', '0', '0', '0', '0', '3', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('14892', '0', '6', '17448312320', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12848', '4', '3', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12847', '4', '3', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12846', '4', '3', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('11255', '0', '3', '16384', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('28789', '0', '10', '3221225472', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12360', '4', '3', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('28816', '0', '0', '0', '0', '0', '3', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12359', '4', '3', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12358', '4', '3', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12357', '4', '3', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12598', '0', '3', '16384', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('11180', '16', '3', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('11129', '0', '3', '274890489879', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29150', '0', '0', '0', '0', '0', '3', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29501', '0', '0', '0', '0', '0', '3', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29624', '0', '0', '0', '0', '0', '3', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29625', '0', '0', '0', '0', '0', '3', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29626', '0', '0', '0', '0', '0', '3', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29632', '0', '0', '0', '0', '0', '3', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29633', '0', '0', '0', '0', '0', '3', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29634', '0', '0', '0', '0', '0', '3', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29635', '0', '0', '0', '0', '0', '3', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29636', '0', '0', '0', '0', '0', '3', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29637', '0', '0', '0', '0', '0', '3', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30299', '36', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30675', '0', '11', '3', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30678', '0', '11', '3', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30679', '0', '11', '3', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30680', '0', '11', '3', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30681', '0', '11', '3', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('31801', '0', '0', '0', '0', '0', '20', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('31833', '0', '10', '2147483648', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('31835', '0', '10', '2147483648', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('31836', '0', '10', '2147483648', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30302', '36', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30301', '36', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('32385', '0', '5', '73014445058', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('32387', '0', '5', '73014445058', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('32392', '0', '5', '73014445058', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('32393', '0', '5', '73014445058', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('32394', '0', '5', '73014445058', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('11120', '4', '3', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('11119', '4', '3', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('11103', '4', '3', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37195', '0', '10', '8388608', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37377', '32', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('39437', '4', '5', '824633725796', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('33191', '0', '6', '4398054932480', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('33192', '0', '6', '4398054932480', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('33193', '0', '6', '4398054932480', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('33194', '0', '6', '4398054932480', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('33195', '0', '6', '4398054932480', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('40475', '0', '0', '0', '0', '0', '3', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('41434', '0', '0', '0', '0', '0', '2', '0', '45');
INSERT INTO `spell_proc_event` VALUES ('37523', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30293', '0', '5', '824633721729', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30295', '0', '5', '824633721729', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30296', '0', '5', '824633721729', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('40407', '0', '0', '0', '0', '0', '6', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('31895', '0', '0', '0', '0', '0', '5', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37247', '8', '0', '0', '0', '65536', '0', '0', '45');
INSERT INTO `spell_proc_event` VALUES ('33510', '0', '0', '0', '0', '0', '5', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16624', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('28752', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16176', '0', '11', '448', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16235', '0', '11', '448', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16240', '0', '11', '448', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('23920', '0', '0', '0', '0', '2048', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('27811', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('27815', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('27816', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('33142', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('33145', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('33146', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16487', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16489', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16492', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('26605', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16550', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('22648', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('34320', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29977', '0', '3', '274890489879', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37443', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('38350', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('38347', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12834', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12849', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12867', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30160', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29179', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29180', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12317', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('13045', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('13046', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('13047', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('13048', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('34500', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('34502', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('34503', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('9799', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('25988', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29062', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29064', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29065', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('15088', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12319', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16256', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12971', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16281', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12972', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16282', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12973', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16283', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12974', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16284', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('42083', '0', '0', '0', '0', '2', '0', '0', '45');
INSERT INTO `spell_proc_event` VALUES ('34950', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('34954', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('28812', '0', '8', '33554438', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37227', '0', '11', '448', '0', '2', '0', '0', '60');
INSERT INTO `spell_proc_event` VALUES ('32885', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('21882', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('34258', '0', '10', '34359739392', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37237', '0', '11', '1', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37657', '0', '0', '0', '0', '2', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('40482', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37213', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('14531', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('14774', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16880', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('35121', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20705', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16958', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16961', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('33648', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37189', '0', '10', '3221225472', '0', '2', '0', '0', '60');
INSERT INTO `spell_proc_event` VALUES ('43338', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('33150', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('33154', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('34497', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('34498', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('34499', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30802', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30808', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30809', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30810', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30811', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20049', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20056', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20057', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20058', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20059', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37519', '0', '0', '0', '0', '48', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('26107', '0', '7', '549764202496', '0', '116', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('23548', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37514', '0', '0', '0', '0', '32', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('40444', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20911', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20912', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20913', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20914', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('27168', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('17495', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('22618', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('25899', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('27169', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('31904', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('32777', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20925', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20927', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20928', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('27179', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12298', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12724', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12725', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12726', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12727', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('32642', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('33089', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('26128', '0', '0', '0', '0', '8', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29441', '0', '0', '0', '0', '8', '0', '0', '1');
INSERT INTO `spell_proc_event` VALUES ('29444', '0', '0', '0', '0', '8', '0', '0', '1');
INSERT INTO `spell_proc_event` VALUES ('29445', '0', '0', '0', '0', '8', '0', '0', '1');
INSERT INTO `spell_proc_event` VALUES ('29446', '0', '0', '0', '0', '8', '0', '0', '1');
INSERT INTO `spell_proc_event` VALUES ('29447', '0', '0', '0', '0', '8', '0', '0', '1');
INSERT INTO `spell_proc_event` VALUES ('34749', '0', '0', '0', '0', '8', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('13983', '0', '0', '0', '0', '24', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('14070', '0', '0', '0', '0', '24', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('14071', '0', '0', '0', '0', '24', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('41034', '0', '0', '0', '0', '1024', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('32734', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('974', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('32593', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('32594', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('40899', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('324', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('325', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('905', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('945', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('8134', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('10431', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('10432', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('25469', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('25472', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('34355', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('39027', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('34827', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('24398', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('33736', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('41260', '0', '0', '0', '0', '0', '0', '0', '10');
INSERT INTO `spell_proc_event` VALUES ('41262', '0', '0', '0', '0', '0', '0', '0', '10');
INSERT INTO `spell_proc_event` VALUES ('34935', '0', '0', '0', '0', '0', '0', '0', '8');
INSERT INTO `spell_proc_event` VALUES ('34938', '0', '0', '0', '0', '0', '0', '0', '8');
INSERT INTO `spell_proc_event` VALUES ('34939', '0', '0', '0', '0', '0', '0', '0', '8');
INSERT INTO `spell_proc_event` VALUES ('33746', '0', '0', '0', '0', '0', '0', '0', '10');
INSERT INTO `spell_proc_event` VALUES ('33759', '0', '0', '0', '0', '0', '0', '0', '10');
INSERT INTO `spell_proc_event` VALUES ('16620', '0', '0', '0', '0', '0', '0', '0', '30');
INSERT INTO `spell_proc_event` VALUES ('21185', '0', '0', '0', '0', '0', '0', '0', '10');
INSERT INTO `spell_proc_event` VALUES ('29801', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30030', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30033', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30701', '28', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30705', '28', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('43748', '0', '11', '2416967680', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('43750', '0', '11', '1', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('42370', '0', '11', '64', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30881', '0', '0', '0', '0', '0', '0', '0', '5');
INSERT INTO `spell_proc_event` VALUES ('30883', '0', '0', '0', '0', '0', '0', '0', '5');
INSERT INTO `spell_proc_event` VALUES ('30884', '0', '0', '0', '0', '0', '0', '0', '5');
INSERT INTO `spell_proc_event` VALUES ('30885', '0', '0', '0', '0', '0', '0', '0', '5');
INSERT INTO `spell_proc_event` VALUES ('30886', '0', '0', '0', '0', '0', '0', '0', '5');
INSERT INTO `spell_proc_event` VALUES ('34138', '0', '11', '128', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('43728', '0', '11', '128', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('26135', '0', '10', '8388608', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('43745', '0', '10', '2199023255552', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('34139', '0', '10', '1073741824', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('43741', '0', '10', '2147483648', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('42368', '0', '10', '1073741824', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('34262', '0', '10', '8388608', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('41469', '0', '0', '0', '0', '0', '7', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('33127', '0', '0', '0', '0', '0', '7', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29385', '0', '0', '0', '0', '0', '7', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('43726', '0', '10', '1073741824', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('35100', '0', '9', '1', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('35102', '0', '9', '1', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('35103', '0', '9', '1', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('40485', '0', '9', '4294967296', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('31124', '0', '8', '536870926', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('31126', '0', '8', '536870926', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('31233', '0', '8', '38658768896', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('31239', '0', '8', '38658768896', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('31240', '0', '8', '38658768896', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('31241', '0', '8', '38658768896', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('31242', '0', '8', '38658768896', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37168', '0', '8', '38658768896', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37170', '0', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37165', '0', '8', '2098176', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('31244', '0', '8', '38658768896', '0', '4', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('31245', '0', '8', '38658768896', '0', '4', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('41393', '0', '0', '0', '0', '32', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('14156', '0', '8', '4063232', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('14160', '0', '8', '4063232', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('14161', '0', '8', '4063232', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('38326', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('17106', '0', '7', '524288', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('17107', '0', '7', '524288', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('17108', '0', '7', '524288', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('43739', '0', '7', '2', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('43737', '0', '7', '4672924418048', '0', '0', '0', '0', '10');
INSERT INTO `spell_proc_event` VALUES ('39372', '48', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37568', '0', '6', '2048', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37594', '0', '6', '4096', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('34753', '0', '6', '17179875328', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('34859', '0', '6', '17179875328', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('34860', '0', '6', '17179875328', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37603', '0', '6', '32768', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('38394', '0', '5', '6', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37384', '0', '5', '1', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('40478', '0', '5', '2', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37528', '0', '4', '4', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37516', '0', '4', '1024', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('40458', '0', '4', '6601398288384', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('22007', '0', '3', '2097185', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('3232', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('17364', '8', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30937', '32', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('15128', '4', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37193', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('32776', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20132', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20131', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20128', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('17794', '32', '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('31394', '32', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('25050', '4', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('24353', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20134', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('17797', '32', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('17798', '32', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('24389', '0', '3', '274890489879', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('20133', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('36111', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29455', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('34774', '0', '0', '0', '0', '0', '1.5', '0', '20');
INSERT INTO `spell_proc_event` VALUES ('9784', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('31785', '0', '0', '0', '34816', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('9782', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('24932', '0', '0', '0', '0', '2', '0', '0', '6');
INSERT INTO `spell_proc_event` VALUES ('33776', '0', '0', '0', '34816', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('34586', '0', '0', '0', '0', '0', '1.5', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('2565', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12169', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('32587', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('38031', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('34080', '0', '0', '0', '0', '8', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('42136', '0', '0', '0', '0', '0', '0', '0', '90');
INSERT INTO `spell_proc_event` VALUES ('42135', '0', '0', '0', '0', '0', '0', '0', '90');
INSERT INTO `spell_proc_event` VALUES ('23547', '0', '0', '0', '0', '32', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('32837', '0', '0', '0', '0', '65536', '0', '0', '45');
INSERT INTO `spell_proc_event` VALUES ('17799', '32', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('17800', '32', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37197', '0', '0', '0', '0', '65536', '0', '0', '45');
INSERT INTO `spell_proc_event` VALUES ('23688', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('34783', '0', '0', '0', '0', '2048', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('27521', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('27774', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('28802', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37600', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('19184', '0', '9', '35184372088852', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('19387', '0', '9', '35184372088852', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('19388', '0', '9', '35184372088852', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37655', '0', '0', '0', '0', '0', '0', '0', '60');
INSERT INTO `spell_proc_event` VALUES ('38334', '0', '0', '0', '0', '0', '0', '0', '60');
INSERT INTO `spell_proc_event` VALUES ('12966', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12967', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12968', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12969', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12970', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16257', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16277', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16278', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16279', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('16280', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('36096', '0', '0', '0', '0', '2048', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('43443', '0', '0', '0', '0', '2048', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30003', '0', '0', '0', '0', '2048', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('27181', '1', '0', '0', '0', '256', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('41381', '0', '0', '0', '0', '256', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('38026', '1', '0', '0', '0', '256', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('31569', '0', '3', '65536', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('31570', '0', '3', '65536', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('7383', '1', '0', '0', '0', '256', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('39530', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('33299', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37214', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('31794', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('18820', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('37601', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('43819', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('6346', '0', '0', '0', '0', '256', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('23552', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('46025', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('40442', '0', '7', '4672924418068', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('40470', '0', '10', '3229614080', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('40438', '0', '6', '32832', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('40463', '0', '11', '68719476865', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12322', '0', '0', '0', '0', '0', '2', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12999', '0', '0', '0', '0', '0', '4', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('13000', '0', '0', '0', '0', '0', '6', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('13001', '0', '0', '0', '0', '0', '8', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('13002', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('14318', '0', '9', '1', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('13165', '0', '9', '1', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('14319', '0', '9', '1', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('14320', '0', '9', '1', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('14321', '0', '9', '1', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('14322', '0', '9', '1', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('25296', '0', '9', '1', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('27044', '0', '9', '1', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('39443', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('39442', '0', '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('35080', '0', '0', '0', '0', '0', '1', '0', '60');
INSERT INTO `spell_proc_event` VALUES ('35077', '0', '0', '0', '0', '0', '0', '0', '60');
INSERT INTO `spell_proc_event` VALUES ('35086', '0', '0', '0', '0', '0', '0', '0', '60');
INSERT INTO `spell_proc_event` VALUES ('35083', '0', '0', '0', '0', '0', '0', '0', '60');
INSERT INTO `spell_proc_event` VALUES ('18137', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('19308', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('19309', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('19310', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('19311', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('19312', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('25477', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('38327', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('33881', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('33882', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('33883', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('33719', '0', '0', '0', '0', '2048', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29834', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('29838', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('39958', '0', '0', '0', '0', '0', '0.7', '0', '40');
INSERT INTO `spell_proc_event` VALUES ('1463', '0', '0', '0', '0', '1024', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('8494', '0', '0', '0', '0', '1024', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('8495', '0', '0', '0', '0', '1024', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('10191', '0', '0', '0', '0', '1024', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('10192', '0', '0', '0', '0', '1024', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('10193', '0', '0', '0', '0', '1024', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('27131', '0', '0', '0', '0', '1024', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('32844', '0', '0', '0', '0', '0', '2', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('33076', '0', '0', '0', '656040', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('46662', '0', '0', '0', '0', '0', '0', '0', '20');
INSERT INTO `spell_proc_event` VALUES ('38857', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('8178', '0', '0', '0', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('41635', '0', '0', '0', '656040', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('30823', '0', '0', '0', '0', '0', '10.5', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('24905', '0', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('46098', '0', '11', '128', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('46092', '0', '10', '1073741824', '0', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('38290', '0', '0', '0', '0', '0', '1.6', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('45234', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('45243', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('45244', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('23602', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('45483', '0', '0', '0', '0', '0', '0', '0', '45');
INSERT INTO `spell_proc_event` VALUES ('45482', '0', '0', '0', '0', '0', '0', '0', '45');
INSERT INTO `spell_proc_event` VALUES ('45484', '0', '0', '0', '16384', '0', '0', '0', '45');
INSERT INTO `spell_proc_event` VALUES ('46569', '0', '0', '0', '0', '0', '0', '0', '45');
INSERT INTO `spell_proc_event` VALUES ('45481', '0', '0', '0', '0', '0', '0', '0', '45');
INSERT INTO `spell_proc_event` VALUES ('32748', '0', '8', '4294967296', '320', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('24658', '0', '0', '0', '82192', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('44835', '0', '7', '549755813888', '16', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('46832', '0', '7', '1', '0', '65536', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('45057', '0', '0', '0', '0', '0', '0', '0', '30');
INSERT INTO `spell_proc_event` VALUES ('37173', '0', '8', '1126031951256', '0', '0', '0', '0', '30');
INSERT INTO `spell_proc_event` VALUES ('45054', '0', '0', '0', '0', '0', '0', '0', '15');
INSERT INTO `spell_proc_event` VALUES ('45354', '0', '0', '0', '0', '0', '0', '0', '45');
INSERT INTO `spell_proc_event` VALUES ('41989', '0', '0', '0', '0', '0', '0.5', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('11185', '0', '3', '128', '327680', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12487', '0', '3', '128', '327680', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('19572', '0', '9', '8388608', '16384', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('28716', '0', '7', '16', '294912', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('28744', '0', '7', '64', '278528', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('12488', '0', '3', '128', '327680', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('19573', '0', '9', '8388608', '16384', '0', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('33757', '0', '0', '0', '0', '0', '0', '0', '3');
-- World SQL file: 332_world.sql

DELETE FROM `spell_script_target` WHERE `entry` in (30659);
INSERT INTO `spell_script_target` VALUES (30659, 1, 17281);

-- World SQL file: 333_world.sql

DELETE FROM `spell_proc_event` WHERE `entry` IN (42083, 33727, 33754, 33755, 33756, 8516, 10608, 10610, 25583, 25584);
INSERT INTO `spell_proc_event` VALUES ('42083', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('33727', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('33754', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('33755', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('33756', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('8516', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('10608', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('10610', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('25583', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO `spell_proc_event` VALUES ('25584', '0', '0', '0', '0', '0', '0', '0', '3');
-- World SQL file: 334_world.sql

DELETE FROM `trinity_string` WHERE `entry` BETWEEN 770 AND 787;
INSERT INTO `trinity_string` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`) VALUES
(770,'Your group has members not in your arena team. Please regroup to join.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(771,'Your group does not have enough players to join this match.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(772,'The Gold Team wins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(773,'The Green Team wins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(774,'There aren\'t enough players in this battleground. It will end soon unless some more players join to balance the fight.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(775,'Your group has an offline member. Please remove him before joining.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(776,'Your group has players from the opposing faction. You can\'t join the battleground as a group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(777,'Your group has players from different battleground brakets. You can\'t join as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(778,'Someone in your party is already in this battleground queue. (S)he must leave it before joining as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(779,'Someone in your party is Deserter. You can\'t join as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(780,'Someone in your party is already in three battleground queues. You cannot join as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(781,'You cannot teleport to a battleground or arena map.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(782,'You cannot summon players to a battleground or arena map.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(783,'You must be in GM mode to teleport to a player in a battleground.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(784,'You cannot teleport to a battleground from another battleground. Please leave the current battleground first.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(785,'Arena testing turned %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(786,'|cffff0000[Automatic]:|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(787,'|cffffff00[|c1f40af20Announce by|r |cffff0000%s|cffffff00]:|r %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);-- World SQL file: 341_world.sql

TRUNCATE  TABLE playercreateinfo_item;-- World SQL file: 356_world.sql

DELETE FROM `spell_elixir` WHERE `entry` = 45373;
INSERT INTO `spell_elixir` VALUES (45373,0x1);
-- World SQL file: 373_world_scripts.sql

UPDATE `creature_template` SET `ScriptName`='boss_warchief_kargath_bladefist' WHERE `entry`=16808;
UPDATE `instance_template` SET `script`='instance_deadmines' WHERE `map`=36;
UPDATE `item_template` SET `ScriptName`='item_defias_gunpowder' WHERE `entry`=5397;
-- World SQL file: 377_world_scripts.sql

UPDATE `creature_template` SET `ScriptName`='npc_second_trial_paladin' WHERE `entry` IN (17809,17810,17811,17812);
UPDATE `creature_template` SET `ScriptName`='npc_second_trial_controller' WHERE `entry` IN (17807);
UPDATE `gameobject_template` SET `ScriptName`='go_second_trial' WHERE `entry` IN (182052);

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1645009 AND -1645006;
INSERT INTO `script_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `comment`) VALUES
(-1645006,'Let the trial begin, Bloodwrath, attack!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,'master_kelerun_bloodmourn YELL_PHASE'),
(-1645007,'Champion Lightrend, make me proud!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,'master_kelerun_bloodmourn YELL_PHASE'),
(-1645008,'Show this upstart how a real Blood Knight fights, Swiftblade!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,'master_kelerun_bloodmourn YELL_PHASE'),
(-1645009,'Show $N the meaning of pain, Sunstriker!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,'master_kelerun_bloodmourn YELL_PHASE');
-- World SQL file: 389_world.sql

DELETE FROM spell_linked_spell WHERE `spell_trigger` IN (-19386, -24132, -24133, -27068, -49011, -49012);
INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (-19386, 24131, 0, 'Wyvern Sting');
INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (-24132, 24134, 0, 'Wyvern Sting');
INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (-24133, 24135, 0, 'Wyvern Sting');
INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (-27068, 27069, 0, 'Wyvern Sting');
-- INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (-49011, 49009, 0, 'Wyvern Sting');
-- INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (-49012, 49010, 0, 'Wyvern Sting');
-- World SQL file: 400_world.sql

DELETE FROM `spell_script_target` WHERE `entry` IN (34186, 42492, 33831, 5628, 45109, 45149);
INSERT INTO `spell_script_target` VALUES (34186, 1, 16938);
INSERT INTO `spell_script_target` VALUES (42492, 1, 0);
INSERT INTO `spell_script_target` VALUES (33831, 1, 0);
INSERT INTO `spell_script_target` VALUES (5628, 1, 2011);
INSERT INTO `spell_script_target` VALUES (5628, 1, 2012);
INSERT INTO `spell_script_target` VALUES (5628, 1, 2013);
INSERT INTO `spell_script_target` VALUES (5628, 1, 2014);
INSERT INTO `spell_script_target` VALUES (45109, 1, 25084);
INSERT INTO `spell_script_target` VALUES (45149, 0, 300154);
-- World SQL file: 426_world_scripts.sql

UPDATE `gameobject_template` SET `ScriptName`='go_altar_of_the_keepers' WHERE `entry`=130511;
UPDATE `gameobject_template` SET `ScriptName`='go_altar_of_archaedas' WHERE `entry`=133234;

UPDATE `instance_template` SET `script`='instance_uldaman' WHERE `map`=70;

-- Archaedas
UPDATE `creature_template` SET `ScriptName`='boss_archaedas' WHERE `entry`=2748;

-- Archaedas' minions
UPDATE `creature_template` SET `ScriptName`='mob_archaedas_minions' WHERE `entry` IN ('7309', '7077', '7076', '10120');

-- Stone keepers
UPDATE `creature_template` SET `ScriptName`='mob_stonekeepers' WHERE `entry`=4857;
-- World SQL file: 427_world_scripts.sql

UPDATE `instance_template` SET `script`='instance_scarlet_monastery' WHERE `map`='189';
UPDATE `gameobject_template` SET `ScriptName`='go_loosely_turned_soil' WHERE `entry`='186314';

UPDATE `creature_template` SET `ScriptName`='boss_headless_horseman',
`minlevel`=70, `maxlevel`=70, `minhealth`=67068, `maxhealth`=67068,
`minmana`=3155, `maxmana`=3155, `type`=6
 WHERE `entry` = 23682;

UPDATE `creature_template` SET `ScriptName`='mob_head',
 `minlevel`=70, `maxlevel`=70, `type`=6, `modelid_h`=21908,
`minhealth`=24300, `maxhealth`=24300,
`faction_A`=14, `faction_H`=14
WHERE `entry` = 23775;

UPDATE `creature_template` SET `ScriptName`='mob_pulsing_pumpkin',
`faction_A`=14, `faction_H`=14, `type`=6,
`minlevel`=70, `maxlevel`=70,
`minhealth`=9781, `maxhealth`=9781,
`minmana`=3155, `maxmana`=3155
WHERE `entry` = 23694;

-- helper
UPDATE `creature_template` SET `ScriptName`='mob_wisp_invis',
`faction_A`=35, `faction_H`=35,
`unit_flags`='33554434' WHERE `entry`='23686';

-- pumpkin fiend
UPDATE `creature_template` SET
 `minlevel`=70, `maxlevel`=70,
`faction_A`=14, `faction_H`=14,
`type`=6
WHERE `entry`='23545';

-- wisp
UPDATE `creature_template` SET `ScriptName`='mob_wisp_invis',
`modelid_a`=21342, `modelid_h`=21342,
`faction_A`=35, `faction_H`=35, `unit_flags`='33554434'
WHERE `entry`='24034';

UPDATE `creature_template` SET `equipment_id`=23682 WHERE `entry` = 23682;
replace into`creature_equip_template` (`entry`, `equipmodel1`, `equipmodel2`, `equipmodel3`, `equipinfo1`, `equipinfo2`, `equipinfo3`, `equipslot1`, `equipslot2`, `equipslot3`)
VALUES (23682, 50495, 0, 0, 33490690, 0, 0, 781, 0, 0);

REPLACE INTO `script_texts` VALUES
(-1189001, 'It is over, your search is done! Let fate choose now, the righteous one',0,0,0,0,0,0,0,0,11961,1,0,'Headless Horseman SAY_ENTRANCE'),

(-1189002, 'Here\'s my body, fit and pure! Now, your blackened souls I\'ll cure!',0,0,0,0,0,0,0,0,12567,1,0,'Headless Horseman SAY_REJOINED'),

(-1189003, 'Over here, you idiot!',0,0,0,0,0,0,0,0,12569,1,0,'Headless Horseman SAY_LOST_HEAD'),

(-1189004, 'Harken, cur! Tis you I spurn! Now, $N, feel the burn!',0,0,0,0,0,0,0,0,12573,1,0,'Headless Horseman SAY_CONFLAGRATION'),

(-1189005, 'Soldiers arise, stand and fight! Bring victory at last to this fallen knight!',0,0,0,0,0,0,0,0,11963,1,0,'Headless Horseman SAY_SPROUTING_PUMPKINS'),

(-1189006, 'Your body lies beaten, battered and broken. Let my curse be your own, fate has spoken',0,0,0,0,0,0,0,0,11962,0,0,'Headless Horseman SAY_PLAYER_DEATH'),

(-1189007, 'This end have I reached before. What new adventure lies in store?',0,0,0,0,0,0,0,0,11964,0,0,'Headless Horseman SAY_DEATH');
-- World SQL file: 444_world.sql

DROP TABLE IF EXISTS `waypoint_data`;

CREATE TABLE `waypoint_data` (
  `id` int(10) unsigned NOT NULL default '0' COMMENT 'Creature GUID',
  `point` mediumint(8) unsigned NOT NULL default '0',
  `position_x` float NOT NULL default '0',
  `position_y` float NOT NULL default '0',
  `position_z` float NOT NULL default '0',
  `delay` int(10) unsigned NOT NULL default '0',
  `move_flag` tinyint(1) NOT NULL default '0',
  `action` int(11) NOT NULL default '0',
  `action_chance` smallint(3) NOT NULL default '100',
  `wpguid` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `waypoint_scripts`;

CREATE TABLE `waypoint_scripts` (
  `id` int(11) unsigned NOT NULL default '0',
  `delay` int(11) unsigned NOT NULL default '0',
  `command` int(11) unsigned NOT NULL default '0',
  `datalong` int(11) unsigned NOT NULL default '0',
  `datalong2` int(11) unsigned NOT NULL default '0',
  `dataint` int(11) unsigned NOT NULL default '0',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `o` float NOT NULL default '0',
  `guid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `creature_addon`
    ADD `path_id` int(11) unsigned NOT NULL default '0' AFTER `guid`;
ALTER TABLE `creature_template_addon`
    ADD `path_id` int(11) unsigned NOT NULL default '0' AFTER `entry`;
-- World SQL file: 452_world.sql

-- link gift of the wild to mark of the wild

DELETE FROM `spell_chain` WHERE `spell_id` = 21849;
DELETE FROM `spell_chain` WHERE `spell_id` = 21850;
DELETE FROM `spell_chain` WHERE `spell_id` = 26991;

INSERT INTO `spell_chain` (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (21849,0,1126,1,0);
INSERT INTO `spell_chain` (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (21850,21849,1126,2,0);
INSERT INTO `spell_chain` (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (26991,21850,1126,3,0);
-- World SQL file: 455_world.sql

-- demon fire
UPDATE `creature_template` SET spell1 = 40029, flags_extra = 128, ScriptName = '' WHERE entry = 23069;
-- pillar of fire
UPDATE `creature_template` SET spell1 = 43218, flags_extra = 128, ScriptName = '' WHERE entry = 24187;
-- Broggok Poison Cloud
UPDATE `creature_template` SET spell1 = 30914, flags_extra = 128, ScriptName = '' WHERE entry = 17662;

-- WoTLK spell
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (43468, 43648, 43658, 43658, 43658, 43658, 43658);
INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (43648, 44007, 1, 'Storm Eye Safe Zone');
INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (43658, 43653, 0, 'Electrical Arc Visual');
INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (43658, 43654, 0, 'Electrical Arc Visual');
INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (43658, 43655, 0, 'Electrical Arc Visual');
INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (43658, 43656, 0, 'Electrical Arc Visual');
INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (43658, 43659, 0, 'Electrical Arc Visual');
-- World SQL file: 471_world.sql

UPDATE `gameobject_template` SET `faction`=1375 WHERE `entry` IN (184203, 184204, 184205);
UPDATE `gameobject_template` SET `Scriptname`='go_bridge_console' WHERE entry=184568;
-- World SQL file: 480_world_scripts.sql

UPDATE `creature_template` SET `ScriptName`='npc_winter_reveler' WHERE `entry`=15760;
UPDATE `creature_template` SET `ScriptName`='npc_brewfest_reveler' WHERE `entry`=24484;
-- World SQL file: 488_world_scripts.sql

UPDATE `creature_template` SET `ScriptName`='npc_defias_traitor' WHERE `entry`=467;
UPDATE `creature_template` SET `ScriptName`='npc_torek' WHERE `entry`=12858;
UPDATE `creature_template` SET `ScriptName`='npc_magwin' WHERE `entry`=17312;
UPDATE `creature_template` SET `ScriptName`='npc_wounded_blood_elf' WHERE `entry`=16993;
UPDATE `creature_template` SET `ScriptName`='mob_abyssal' WHERE `entry`=17454;
UPDATE `creature_template` SET `ScriptName`='mob_scarlet_trainee' WHERE `entry`=6575;
UPDATE `instance_template` SET `script`='instance_scarlet_monastery' WHERE `map`=189;
UPDATE `creature_template` SET `ScriptName`='mob_phoenix_tk' WHERE `entry`=21362;
UPDATE `creature_template` SET `ScriptName`='mob_phoenix_egg_tk' WHERE `entry`=21364;
UPDATE `creature_template` SET `ScriptName`='npc_highlord_demitrian' WHERE `entry`=14347;
UPDATE `gameobject_template` SET `ScriptName`='go_gauntlet_gate' WHERE `entry`=175357;
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry`=11197;
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry`=10399;
UPDATE `gameobject_template` SET `ScriptName`='go_barrel_old_hillsbrad' WHERE `entry`=182589;
UPDATE `instance_template` SET `script`='instance_deadmines' WHERE `map`=36;
UPDATE `gameobject_template` SET `ScriptName`='go_defias_cannon' WHERE `entry`=16398;
UPDATE `gameobject_template` SET `ScriptName`='go_door_lever_dm' WHERE `entry`=101833;
UPDATE `gameobject_template` SET `ScriptName`='go_main_chambers_access_panel' WHERE `entry` IN (184125,184126);
UPDATE `creature_template` SET `ScriptName`='npc_twiggy_flathead' WHERE `entry`=6248;
DELETE FROM `areatrigger_scripts` WHERE `entry`=522;
INSERT INTO `areatrigger_scripts` VALUES (522,'at_twiggy_flathead');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1565019 AND -1565000;

-- text
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
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000110 AND -1000106;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1000106,'Everyone ready?',0,0,1,'torek SAY_READY'),
(-1000107,'Ok, Lets move out!',0,0,1,'torek SAY_MOVE'),
(-1000108,'Prepare yourselves. Silverwing is just around the bend.',0,0,1,'torek SAY_PREPARE'),
(-1000109,'Silverwing is ours!',0,0,1,'torek SAY_WIN'),
(-1000110,'Go report that the outpost is taken. We will remain here.',0,0,1,'torek SAY_END');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000116 AND -1000111;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1000111, 'Our house is this way, through the thicket.', 0, 0, 7, 'magwin SAY_START'),
(-1000112, 'Help me!', 0, 0, 7, 'magwin SAY_AGGRO'),
(-1000113, 'My poor family. Everything has been destroyed.', 0, 0, 7, 'magwin SAY_PROGRESS'),
(-1000114, 'Father! Father! You\'re alive!', 0, 0, 7, 'magwin SAY_END1'),
(-1000115, 'You can thank $N for getting me back here safely, father.', 0, 0, 7, 'magwin SAY_END2'),
(-1000116, 'hugs her father.', 0, 2, 7, 'magwin EMOTE_HUG');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1560048 AND -1560023;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1560023,'Very well then. Let\'s go!',10465,1,0,'thrall hillsbrad SAY_TH_START_EVENT_PART1'),
(-1560024,'As long as we\'re going with a new plan, I may aswell pick up a weapon and some armor.',0,0,0,'thrall hillsbrad SAY_TH_ARMORY'),
(-1560025,'A rider approaches!',10466,0,0,'thrall hillsbrad SAY_TH_SKARLOC_MEET'),
(-1560026,'I\'ll never be chained again!',10467,1,0,'thrall hillsbrad SAY_TH_SKARLOC_TAUNT'),
(-1560027,'Very well. Tarren Mill lies just west of here. Since time is of the essence...',10468,1,0,'thrall hillsbrad SAY_TH_START_EVENT_PART2'),
(-1560028,'Let\'s ride!',10469,0,0,'thrall hillsbrad SAY_TH_MOUNTS_UP'),
(-1560029,'Taretha must be in the inn. Let\'s go.',0,0,0,'thrall hillsbrad SAY_TH_CHURCH_END'),
(-1560030,'Taretha! What foul magic is this?',0,0,0,'thrall hillsbrad SAY_TH_MEET_TARETHA'),
(-1560031,'Who or what was that?',10470,1,0,'thrall hillsbrad SAY_TH_EPOCH_WONDER'),
(-1560032,'No!',10471,1,0,'thrall hillsbrad SAY_TH_EPOCH_KILL_TARETHA'),
(-1560033,'Goodbye, Taretha. I will never forget your kindness.',10472,1,0,'thrall hillsbrad SAY_TH_EVENT_COMPLETE'),
(-1560034,'Things are looking grim...',10458,1,0,'thrall hillsbrad SAY_TH_RANDOM_LOW_HP1'),
(-1560035,'I will fight to the last!',10459,1,0,'thrall hillsbrad SAY_TH_RANDOM_LOW_HP2'),
(-1560036,'Taretha...',10460,1,0,'thrall hillsbrad SAY_TH_RANDOM_DIE1'),
(-1560037,'A good day...to die...',10461,1,0,'thrall hillsbrad SAY_TH_RANDOM_DIE2'),
(-1560038,'I have earned my freedom!',10448,1,0,'thrall hillsbrad SAY_TH_RANDOM_AGGRO1'),
(-1560039,'This day is long overdue. Out of my way!',10449,1,0,'thrall hillsbrad SAY_TH_RANDOM_AGGRO2'),
(-1560040,'I am a slave no longer!',10450,1,0,'thrall hillsbrad SAY_TH_RANDOM_AGGRO3'),
(-1560041,'Blackmoore has much to answer for!',10451,1,0,'thrall hillsbrad SAY_TH_RANDOM_AGGRO4'),
(-1560042,'You have forced my hand!',10452,1,0,'thrall hillsbrad SAY_TH_RANDOM_KILL1'),
(-1560043,'It should not have come to this!',10453,1,0,'thrall hillsbrad SAY_TH_RANDOM_KILL2'),
(-1560044,'I did not ask for this!',10454,1,0,'thrall hillsbrad SAY_TH_RANDOM_KILL3'),
(-1560045,'I am truly in your debt, strangers.',10455,1,0,'thrall hillsbrad SAY_TH_LEAVE_COMBAT1'),
(-1560046,'Thank you, strangers. You have given me hope.',10456,1,0,'thrall hillsbrad SAY_TH_LEAVE_COMBAT2'),
(-1560047,'I will not waste this chance. I will seek out my destiny.',10457,1,0,'thrall hillsbrad SAY_TH_LEAVE_COMBAT3'),
(-1560048,'I\'m free! Thank you all!',0,0,0,'taretha SAY_TA_FREE');
DELETE FROM `script_texts` WHERE `entry`=-1560049;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1560049,'Thrall, you escaped!',0,0,0,'taretha SAY_TA_ESCAPED');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1534017 AND -1534000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1534000,'I\'m in jeopardy, help me if you can!',11007,1,0,'jaina hyjal ATTACKED 1'),
(-1534001,'They\'ve broken through!',11049,1,0,'jaina hyjal ATTACKED 2'),
(-1534002,'Stay alert! Another wave approaches.',11008,1,0,'jaina hyjal INCOMING'),
(-1534003,'Don\'t give up! We must prevail!',11006,1,0,'jaina hyjal BEGIN'),
(-1534004,'Hold them back as long as possible.',11050,1,0,'jaina hyjal RALLY 1'),
(-1534005,'We must hold strong!',11051,1,0,'jaina hyjal RALLY 2'),
(-1534006,'We are lost. Fall back!',11009,1,0,'jaina hyjal FAILURE'),
(-1534007,'We have won valuable time. Now we must pull back!',11011,1,0,'jaina hyjal SUCCESS'),
(-1534008,'I did... my best.',11010,1,0,'jaina hyjal DEATH'),
(-1534009,'I will lie down for no one!',11031,1,0,'thrall hyjal ATTACKED 1'),
(-1534010,'Bring the fight to me and pay with your lives!',11061,1,0,'thrall hyjal ATTACKED 2'),
(-1534011,'Make ready for another wave! LOK-TAR OGAR!',11032,1,0,'thrall hyjal INCOMING'),
(-1534012,'Hold them back! Do not falter!',11030,1,0,'thrall hyjal BEGIN'),
(-1534013,'Victory or death!',11059,1,0,'thrall hyjal RALLY 1'),
(-1534014,'Do not give an inch of ground!',11060,1,0,'thrall hyjal RALLY 2'),
(-1534015,'It is over. Withdraw! We have failed.',11033,1,0,'thrall hyjal FAILURE'),
(-1534016,'We have played our part and done well. It is up to the others now.',11035,1,0,'thrall hyjal SUCCESS'),
(-1534017,'Uraaa...',11034,1,0,'thrall hyjal DEATH');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1534030 AND -1534018;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1534018,'All of your efforts have been in vain, for the draining of the World Tree has already begun. Soon the heart of your world will beat no more.',10986,1,0,'archimonde SAY_PRE_EVENTS_COMPLETE'),
(-1534019,'Your resistance is insignificant.',10987,1,0,'archimonde SAY_AGGRO'),
(-1534020,'This world will burn!',10990,1,0,'archimonde SAY_DOOMFIRE1'),
(-1534021,'Manach sheek-thrish!',11041,1,0,'archimonde SAY_DOOMFIRE2'),
(-1534022,'A-kreesh!',10989,1,0,'archimonde SAY_AIR_BURST1'),
(-1534023,'Away vermin!',11043,1,0,'archimonde SAY_AIR_BURST2'),
(-1534024,'All creation will be devoured!',11044,1,0,'archimonde SAY_SLAY1'),
(-1534025,'Your soul will languish for eternity.',10991,1,0,'archimonde SAY_SLAY2'),
(-1534026,'I am the coming of the end!',11045,1,0,'archimonde SAY_SLAY3'),
(-1534027,'At last it is here. Mourn and lament the passing of all you have ever known and all that would have been! Akmin-kurai!',10993,1,0,'archimonde SAY_ENRAGE'),
(-1534028,'No, it cannot be! Nooo!',10992,1,0,'archimonde SAY_DEATH'),
(-1534029,'You are mine now.',10988,1,0,'archimonde SAY_SOUL_CHARGE1'),
(-1534030,'Bow to my will.',11042,1,0,'archimonde SAY_SOUL_CHARGE2');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000117 AND -1000122;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1000117, 'Thank you for agreeing to help. Now, let\'s get out of here $N.', 0, 0, 1, 'wounded elf SAY_ELF_START'),
(-1000118, 'Over there! They\'re following us!', 0, 0, 1, 'wounded elf SAY_ELF_SUMMON1'),
(-1000119, 'Allow me a moment to rest. The journey taxes what little strength I have.', 0, 0, 1, 'wounded elf SAY_ELF_RESTING'),
(-1000120, 'Did you hear something?', 0, 0, 1, 'wounded elf SAY_ELF_SUMMON2'),
(-1000121, 'Falcon Watch, at last! Now, where\'s my... Oh no! My pack, it\'s missing! Where has -', 0, 0, 1, 'wounded elf SAY_ELF_COMPLETE'),
(-1000122, 'You won\'t keep me from getting to Falcon Watch!', 0, 0, 1, 'wounded elf SAY_ELF_AGGRO');
DELETE FROM `script_texts` WHERE `entry`=-1544015;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1544015,'breaks free!',0,2,0,'magtheridon EMOTE_FREED');

UPDATE `script_texts` SET `type`=3 WHERE `entry`=-1544013;
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1189004 AND -1189000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1189000,'Ah, I have been waiting for a real challenge!',5830,1,0,'herod SAY_AGGRO'),
(-1189001,'Blades of Light!',5832,1,0,'herod SAY_WHIRLWIND'),
(-1189002,'Light, give me strength!',5833,1,0,'herod SAY_ENRAGE'),
(-1189003,'Hah, is that all?',5831,1,0,'herod SAY_KILL'),
(-1189004,'becomes enraged!',0,2,0,'herod EMOTE_ENRAGE');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1189010 AND -1189005;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1189005,'Infidels! They must be purified!',5835,1,0,'mograine SAY_MO_AGGRO'),
(-1189006,'Unworthy!',5836,1,0,'mograine SAY_MO_KILL'),
(-1189007,'At your side, milady!',5837,1,0,'mograine SAY_MO_RESSURECTED'),
(-1189008,'What, Mograine has fallen? You shall pay for this treachery!',5838,1,0,'whitemane SAY_WH_INTRO'),
(-1189009,'The Light has spoken!',5839,1,0,'whitemane SAY_WH_KILL'),
(-1189010,'Arise, my champion!',5840,1,0,'whitemane SAY_WH_RESSURECT');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1532114 AND -1532103;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1532103,'Welcome Ladies and Gentlemen, to this evening\'s presentation!',9174,1,0,'barnes OZ1'),
(-1532104,'Tonight we plumb the depths of the human soul as we join a lost, lonely girl trying desperately -- with the help of her loyal companions -- to find her way home!',9338,1,0,'barnes OZ2'),
(-1532105,'But she is pursued... by a wicked malevolent crone!',9339,1,0,'barnes OZ3'),
(-1532106,'Will she survive? Will she prevail? Only time will tell. And now ... on with the show!',9340,1,0,'barnes OZ4'),
(-1532107,'Good evening, Ladies and Gentlemen! Welcome to this evening\'s presentation!',9175,1,0,'barnes HOOD1'),
(-1532108,'Tonight, things are not what they seem. For tonight, your eyes may not be trusted',9335,1,0,'barnes HOOD2'),
(-1532109,'Take for instance, this quiet, elderly woman, waiting for a visit from her granddaughter. Surely there is nothing to fear from this sweet, grey-haired, old lady.',9336,1,0,'barnes HOOD3'),
(-1532110,'But don\'t let me pull the wool over your eyes. See for yourself what lies beneath those covers! And now... on with the show!',9337,1,0,'barnes HOOD4'),
(-1532111,'Welcome, Ladies and Gentlemen, to this evening\'s presentation!',9176,1,0,'barnes RAJ1'),
(-1532112,'Tonight, we explore a tale of forbidden love!',9341,1,0,'barnes RAJ2'),
(-1532113,'But beware, for not all love stories end happily, as you may find out. Sometimes, love pricks like a thorn.',9342,1,0,'barnes RAJ3'),
(-1532114,'But don\'t take it from me, see for yourself what tragedy lies ahead when the paths of star-crossed lovers meet. And now...on with the show!',9343,1,0,'barnes RAJ4');
DELETE FROM `script_texts` WHERE `entry` IN (-1036000,-1036001);
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1036000,'You there, check out that noise!',5775,1,7,'smite INST_SAY_ALARM1'),
(-1036001,'We\'re under attack! A vast, ye swabs! Repel the invaders!',5777,1,7,'smite INST_SAY_ALARM2');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000127 AND -1000123;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1000123, 'Ready when you are, $c.', 0, 0, 0, 'big will SAY_BIG_WILL_READY'),
(-1000124, 'The Affray has begun. $n, get ready to fight!', 0, 0, 0, 'twiggy SAY_TWIGGY_BEGIN'),
(-1000125, 'You! Enter the fray!', 0, 0, 0, 'twiggy SAY_TWIGGY_FRAY'),
(-1000126, 'Challenger is down!', 0, 0, 0, 'twiggy SAY_TWIGGY_DOWN'),
(-1000127, 'The Affray is over.', 0, 0, 0, 'twiggy SAY_TWIGGY_OVER');
-- World SQL file: 502_world_scripts.sql

UPDATE `creature_template` SET `minhealth`=2655000, `maxhealth`=2655000, `ScriptName` = 'boss_the_lurker_below', `InhabitType` = '3' WHERE `entry` = '21217';

UPDATE `creature_template` SET `ScriptName` = 'mob_coilfang_ambusher' WHERE `entry` = '21865';
UPDATE `creature_template` SET `ScriptName` = 'mob_coilfang_guardian' WHERE `entry` = '21873';

UPDATE `creature_model_info` SET `bounding_radius` = '13', `combat_reach` = '20' WHERE `modelid` = '20216';
-- World SQL file: 505_world.sql

DROP TABLE IF EXISTS `creature_formations`;

CREATE TABLE `creature_formations` (
  `leader` int(11) unsigned NOT NULL,
  `follower` int(11) unsigned NOT NULL,
  `dist` float unsigned NOT NULL,
  `angle` float unsigned NOT NULL,
  `groupAI` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`follower`));
-- World SQL file: 506_world.sql

-- added missing entry for 3rd rank of gift of the wild

DELETE FROM spell_chain WHERE spell_id = 21849;
DELETE FROM spell_chain WHERE spell_id = 21850;
DELETE FROM spell_chain WHERE spell_id = 26991;

INSERT INTO spell_chain (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (21849,0,21849,1,0);
INSERT INTO spell_chain (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (21850,21849,21849,2,0);
INSERT INTO spell_chain (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (26991,21850,21849,3,0);

-- weaponsmith and armorsmith as blacksmith req spells

DELETE FROM spell_chain WHERE spell_id = 9787;
DELETE FROM spell_chain WHERE spell_id = 9788;

INSERT INTO spell_chain (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (9787,0,9787,1,9785);
INSERT INTO spell_chain (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (9788,0,9788,1,9785);

-- axe/sword/hammer smith req weaponsmith

DELETE FROM spell_chain WHERE spell_id = 17039;
DELETE FROM spell_chain WHERE spell_id = 17040;
DELETE FROM spell_chain WHERE spell_id = 17041;

INSERT INTO spell_chain (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (17039,0,17039,1,9787);
INSERT INTO spell_chain (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (17040,0,17040,1,9787);
INSERT INTO spell_chain (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (17041,0,17041,1,9787);

-- letherworking specs req spells

DELETE FROM spell_chain WHERE spell_id = 10660;
DELETE FROM spell_chain WHERE spell_id = 10658;
DELETE FROM spell_chain WHERE spell_id = 10656;

INSERT INTO spell_chain (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (10660,0,10660,1,10662);
INSERT INTO spell_chain (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (10658,0,10658,1,10662);
INSERT INTO spell_chain (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (10656,0,10656,1,10662);

-- alchemy specs req spells

DELETE FROM spell_chain WHERE spell_id = 28672;
DELETE FROM spell_chain WHERE spell_id = 28675;
DELETE FROM spell_chain WHERE spell_id = 28677;

INSERT INTO spell_chain (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (28672,0,28672,1,28596);
INSERT INTO spell_chain (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (28675,0,28675,1,28596);
INSERT INTO spell_chain (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (28677,0,28677,1,28596);

-- tailoring specs req spells

DELETE FROM spell_chain WHERE spell_id = 26801;
DELETE FROM spell_chain WHERE spell_id = 26798;
DELETE FROM spell_chain WHERE spell_id = 26797;

INSERT INTO spell_chain (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (26801,0,26801,1,26790);
INSERT INTO spell_chain (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (26798,0,26798,1,26790);
INSERT INTO spell_chain (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (26797,0,26797,1,26790);

-- engineering specs req spells

DELETE FROM spell_chain WHERE spell_id = 20222;
DELETE FROM spell_chain WHERE spell_id = 20219;

INSERT INTO spell_chain (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (20222,0,20222,1,12656);
INSERT INTO spell_chain (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (20219,0,20219,1,12656);

-- divine spirit req spells

DELETE FROM spell_chain WHERE spell_id = 27681;
DELETE FROM spell_chain WHERE spell_id = 32999;

INSERT INTO spell_chain (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (27681,0,27681,1,14752);
INSERT INTO spell_chain (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (32999,27681,27681,2,0);

-- judgement of justice req seal of justice(dunno what is this for)

DELETE FROM spell_chain WHERE spell_id = 20184;
DELETE FROM spell_chain WHERE spell_id = 31896;

INSERT INTO spell_chain (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (20184,0,20184,1,20164);
INSERT INTO spell_chain (spell_id,prev_spell,first_spell,rank,req_spell) VALUES (31896,20184,20184,2,0);

ALTER TABLE spell_chain DROP COLUMN prev_spell;
-- World SQL file: 513_world_scripts.sql

UPDATE `instance_template` SET `script`='instance_dark_portal' WHERE `map`=269;
UPDATE `creature_template` SET `ScriptName`='npc_medivh_bm' WHERE `entry`=15608;
UPDATE `creature_template` SET `ScriptName`='npc_time_rift' WHERE `entry`=17838;
UPDATE `creature_template` SET `ScriptName`='npc_saat' WHERE `entry`=20201;


DELETE FROM `script_texts` WHERE `entry` BETWEEN -1269028 AND -1269018;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1269018,'goes into a frenzy!',0,2,0,'aeonus EMOTE_FRENZY'),
(-1269019,'Stop! Do not go further, mortals. You are ill-prepared to face the forces of the Infinite Dragonflight. Come, let me help you.',0,0,0,'saat SAY_SAAT_WELCOME'),
(-1269020,'The time has come! Gul\'dan, order your warlocks to double their efforts! Moments from now the gateway will open, and your Horde will be released upon this ripe, unsuspecting world!',10435,1,0,'medivh SAY_ENTER'),
(-1269021,'What is this? Champions, coming to my aid? I sense the hand of the dark one in this. Truly this sacred event bears his blessing?',10436,1,0,'medivh SAY_INTRO'),
(-1269022,'Champions, my shield grows weak!',10437,1,0,'medivh SAY_WEAK75'),
(-1269023,'My powers must be concentrated on the portal! I do not have time to hold the shield!',10438,1,0,'medivh SAY_WEAK50'),
(-1269024,'The shield is nearly gone! All that I have worked for is in danger!',10439,1,0,'medivh SAY_WEAK25'),
(-1269025,'No... damn this feeble mortal coil...',10441,1,0,'medivh SAY_DEATH'),
(-1269026,'I am grateful for your aid, champions. Now, Gul\'dan\'s Horde will sweep across this world, like a locust swarm, and all my designs, all my carefully laid plans will at last fall into place.',10440,1,0,'medivh SAY_WIN'),
(-1269027,'Orcs of the Horde! This portalis the gateway to your new destiny! Azeroth lies before you, ripe for the taking!',0,1,0,'medivh SAY_ORCS_ENTER'),
(-1269028,'Gul\'dan speaks the truth! We should return at once to tell our brothers of the news! Retreat back trought the portal!',0,1,0,'medivh SAY_ORCS_ANSWER');
-- World SQL file: 519_world.sql

ALTER TABLE `creature_formations` CHANGE `leader` `leaderGUID` int(11) unsigned NOT NULL default '0';
ALTER TABLE `creature_formations` CHANGE `follower` `memberGUID` int(11) unsigned NOT NULL default '0';
-- World SQL file: 537_world.sql

-- Removing the now unused creature_movement table
DROP TABLE IF EXISTS `creature_movement`;
-- World SQL file: 541_world.sql

DELETE FROM `command` WHERE `name` = "flusharenapoints";
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('flusharenapoints','3','Syntax: .flusharenapoints\r\n\r\nUse it to distribute arena points based on arena team ratings, and start a new week.');

DELETE FROM trinity_string WHERE entry BETWEEN 1122 AND 1138;

INSERT INTO trinity_string (entry, content_default) VALUES
    (1122,'Your group is too large for this battleground. Please regroup to join.'),
    (1123,'Your group is too large for this arena. Please regroup to join.'),
    (1124,'Your group has members not in your arena team. Please regroup to join.'),
    (1125,'Your group does not have enough players to join this match.'),
    (1126,'The Gold Team wins!'),
    (1127,'The Green Team wins!'),
    (1128, 'There aren\'t enough players in this battleground. It will end soon unless some more players join to balance the fight.'),
    (1129, 'Your group has an offline member. Please remove him before joining.'),
    (1130, 'Your group has players from the opposing faction. You can\'t join the battleground as a group.'),
    (1131, 'Your group has players from different battleground brakets. You can\'t join as group.'),
    (1132, 'Someone in your party is already in this battleground queue. (S)he must leave it before joining as group.'),
    (1133, 'Someone in your party is Deserter. You can\'t join as group.'),
    (1134, 'Someone in your party is already in three battleground queues. You cannot join as group.'),
    (1135, 'You cannot teleport to a battleground or arena map.'),
    (1136, 'You cannot summon players to a battleground or arena map.'),
    (1137, 'You must be in GM mode to teleport to a player in a battleground.'),
    (1138, 'You cannot teleport to a battleground from another battleground. Please leave the current battleground first.');

DELETE FROM trinity_string WHERE entry = 714 OR entry = 716;-- World SQL file: 551_world.sql

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '36574';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES ('36574', '36650', '0', 'Apply Phase Slip Vulnerability');

UPDATE `creature_template` SET `ScriptName`='' WHERE `entry`=21807;
DELETE FROM `areatrigger_scripts` WHERE `entry`=4560;
INSERT INTO `areatrigger_scripts` VALUES (4560,'at_legion_teleporter');
UPDATE `creature_template` SET `ScriptName`='npc_commander_dawnforge' WHERE `entry`=19831;
DELETE FROM `areatrigger_scripts` WHERE `entry`=4497;
INSERT INTO `areatrigger_scripts` VALUES (4497,'at_commander_dawnforge');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000137 AND -1000128;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1000128, 'We need you to send reinforcements to Manaforge Duro, Ardonis. This is not a request, it\'s an order.', 0, 0, 0, 'dawnforge SAY_COMMANDER_DAWNFORGE_1'),
(-1000129, 'You cannot be serious! We are severely understaffed and can barely keep this manaforge functional!', 0, 0, 0, 'dawnforge SAY_ARCANIST_ARDONIS_1'),
(-1000130, 'You will do as ordered. Manaforge Duro has come under heavy attack by mana creatures and the situation is out of control. Failure to comply will not be tolerated!', 0, 0, 0, 'dawnforge SAY_COMMANDER_DAWNFORGE_2'),
(-1000131, 'Indeed, it is not a request.', 0, 0, 0, 'dawnforge SAY_PATHALEON_CULATOR_IMAGE_1'),
(-1000132, 'My lord!', 0, 0, 0, 'dawnforge SAY_COMMANDER_DAWNFORGE_3'),
(-1000133, 'Duro will be reinforced! Ultris was a complete disaster. I will NOT have that mistake repeated!', 0, 0, 0, 'dawnforge PATHALEON_CULATOR_IMAGE_2'),
(-1000134, 'We\'ve had too many setbacks along the way: Hellfire Citadel, Fallen Sky Ridge, Firewing Point... Prince Kael\'thas will tolerate no further delays. I will tolerate nothing other than complete success!', 0, 0, 0, 'dawnforge PATHALEON_CULATOR_IMAGE_2_1'),
(-1000135, 'I am returning to Tempest Keep. See to it that I do not have reason to return!', 0, 0, 0, 'dawnforge PATHALEON_CULATOR_IMAGE_2_2' ),
(-1000136, 'Yes, my lord.', 0, 0, 0, 'dawnforge COMMANDER_DAWNFORGE_4 SAY_ARCANIST_ARDONIS_2'),
(-1000137, 'See to it, Ardonis!', 0, 0, 0, 'dawnforge COMMANDER_DAWNFORGE_5');-- World SQL file: 566_world.sql

INSERT INTO spell_script_target VALUES 
(8913,1,1200),
(9095,1,6492),
(33655,0,183351),
(33655,0,183350),
(34526,1,19723),
(34526,1,19724),
(36904,0,21511),
(38738,0,185193),
(38738,0,185195),
(38738,0,185196),
(38738,0,185197),
(38738,0,185198),
(39844,0,185549),
(42391,0,300152),
(12613,1,5843),
(34019,2,16873),
(34019,2,16871),
(34019,2,19422),
(34019,2,16907),
(38015,1,21216),
(39011,1,20885),
(40106,1,22883),
(40105,1,22883);
-- World SQL file: 571_world.sql

ALTER TABLE spell_chain DROP COLUMN first_spell;
ALTER TABLE spell_chain DROP COLUMN rank;
ALTER TABLE spell_chain RENAME TO spell_required;
DELETE FROM spell_required WHERE req_spell=0;

-- World SQL file: 572_world.sql

UPDATE `creature_template` SET `ScriptName`='npc_aeranas' WHERE `entry`=17085;
UPDATE `gameobject_template` SET `ScriptName`='go_haaleshi_altar' WHERE `entry`=181606;

DELETE FROM `script_texts` WHERE `entry` IN (-1000138,-1000139);
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1000138, 'Avruu\'s magic... it still controls me. You must fight me, mortal. It\'s the only way to break the spell!', 0, 0, 0, 'aeranas SAY_SUMMON'),
(-1000139, 'Avruu\'s magic is broken! I\'m free once again!', 0, 0, 0, 'aeranas SAY_FREE');
-- World SQL file: 575_world_scripts.sql

UPDATE `item_template` SET `ScriptName` = "item_only_for_flight" WHERE `entry` IN (34475, 34489, 24538);
-- World SQL file: 583_world_scripts.sql

UPDATE creature_template SET Scriptname='npc_ranger_lilatha' WHERE entry=16295;-- World SQL file: 586_world_scripts.sql

UPDATE `gameobject_template` SET `ScriptName` = 'go_mausoleum_trigger' WHERE `entry` = 104593;
UPDATE `gameobject_template` SET `ScriptName` = 'go_mausoleum_door' WHERE `entry` = 176594;-- World SQL file: 588_world.sql

DELETE FROM `trinity_string`WHERE `entry` in ('6613', '6614', '6615');
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES ('6613','|cfff00000[GM Announcement]: %s|r');
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES ('6614','Notification to GM\'s - ');
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES ('6615','|cffffff00[|c1f40af20GM Announce by|r |cffff0000%s|cffffff00]:|r %s|r');
INSERT INTO `command` (`name`,`security`,`help`) VALUES ('gmnotify', 2, 'Syntax: .gmnotify $notification\r\nDisplays a notification on the screen of all online GM\'s.');
INSERT INTO `command` (`name`,`security`,`help`) VALUES ('gmnameannounce', 2, 'Syntax: .gmnameannounce $announcement.\r\nSend an announcement to all online GM\'s, displaying the name of the sender.');
INSERT INTO `command` (`name`,`security`,`help`) VALUES ('gmannounce', 4, 'Syntax: .gmannounce $announcement\r\nSend an announcement to online Gamemasters.');

-- 608
INSERT INTO `spell_script_target` VALUES
(3730,1,15263),
(6955,1,4946),
(7022,1,4945),
(7277,1,5409),
(9457,1,3701),
(11893,1,8156),
(12134,2,5270),
(12134,2,5271),
(12134,2,5273),
(12134,2,8313),
(12134,2,5256),
(12134,2,5259),
(13489,1,9178),
(15658,1,8929), -- It's up to script to implement SpellHit() for Moira Bronze beard
(16032,1,6557), -- Dummy effect should be implemented in core i think
(16337,1,10339),
(16337,1,10429), -- per spells description, it buffs two npc's.
(16637,1,10447),
(17748,1,10556),
(18969,1,12126),
(19749,1,12352), -- used by creature script to check if all troopers are presents, NYI
(19773,1,12018), -- used by Ragnaros to kill Majordomo
(21556,1,13378), -- no longer in game, but still could be used for some FUN-so why not fix it ? ;)
(21566,1,13416),
(22710,1,14349),
(23168,1,14020),
(24062,1,15010),
(24217,1,15069),
(24323,1,14834),
(24804,1,14888),
(25896,1,15299),
(28096,1,15929),
(28111,1,15930),
(28353,2,16390),
(28392,1,16420),
(28697,1,3976),
(28861,1,16592),
(29172,0,181605),
(29456,1,17060),
(29457,1,17060),
(29459,1,17060), -- Those are spells Arch Mage Xintor casts at training dummies near him.
(29531,0,181605),
(29831,0,181288),
(30221,1,620),
(30232,1,15691),
(30460,1,17404),
(30951,1,17533),
(31326,1,15608),
(31611,1,17979),
(31727,1,17536),
(32301,1,18371),
(32396,1,18358),
(32890,1,18764),
(33111,1,17400),
(33111,1,18894),
(33644,1,19279),
(33644,1,19328),
(33644,1,19278),
(33644,1,19329),
(33644,1,19326),
(33644,1,19277),
(33644,1,19276), -- All legion antennas.
(33742,1,17400),
(33742,1,18894),
(33742,1,19279),
(33742,1,19328),
(33742,1,19278),
(33742,1,19329),
(33742,1,19326),
(33742,1,19277),
(33742,1,19276), -- All legion antennas, another spell.
(33783,1,18732),
(34254,1,19554),
(34350,1,19554),
(34662,1,17827),
(35596,1,20794),
(36174,1,20885),
(37465,1,17469),
(37465,1,21747),
(37465,1,21750),
(37465,1,21748),
(37469,1,21664),
(37469,1,21682),
(37469,1,21683),
(37469,1,17211),
(37626,1,15689), -- Netherspite's beam
(37853,1,15608),
(37868,1,21909),
(37893,1,21909),
(37895,1,21909),
(38003,1,21949),
(38044,1,21212),
(38121,1,21949),
(38123,1,21949),
(38126,1,21949),
(38128,1,21949),
(38130,1,21949),
(38250,0,185125),
(38508,1,17270),
(38508,1,16873),
(38508,1,17269),
(38508,1,16871),
(38508,1,19422),
(38508,1,16907),
(38508,1,17478),
(38508,1,19424),
(38629,0,185214),
(38722,1,21506),
(38966,1,22293),
(38968,1,38968),
(39124,0,184738),
(39126,1,19557),
(39221,1,23116),
(39364,1,19732),
(39601,1,22916),
(39974,0,300127),
(39978,1,21851),
(39993,1,23382),
(40359,1,23382),
(40454,1,22181),
(40547,1,22911),
(40828,1,23327),
(40828,1,23322),
(41128,1,23164),
(41362,1,22956),
(41362,1,22964),
(41975,1,23191),
(42317,1,22844),
(42317,1,23319),
(42317,1,23421),
(42317,1,23216),
(42317,1,23523),
(42317,1,22849),
(42317,1,22845),
(42317,1,22847),
(42317,1,23318),
(42317,1,23215),
(42317,1,23524),
(42317,1,23374),
(42317,1,22846),
(42318,1,22844),
(42318,1,23319),
(42318,1,23421),
(42318,1,23216),
(42318,1,23523),
(42318,1,22849),
(42318,1,22845),
(42318,1,22847),
(42318,1,23318),
(42318,1,23215),
(42318,1,23524),
(42318,1,23374),
(42318,1,22846),
(42405,1,23775),
(42410,1,23775),
(42517,1,23864),
(42734,1,4974),
(44864,1,24955),
(45201,1,24882),
(46809,1,26239), -- Make Ahune's Ghost Burst
(46818,1,25840),
(46852,0,181605), -- Ribbon Pole Music
(46896,0,181605),
(47104,1,26401),
(49058,1,24968); -- Rocket Bot Attack

-- 615
-- Wyvern Sting rank 5 and 6 not avail. till wotlk
DELETE FROM spell_linked_spell WHERE `spell_trigger` IN (-49011, -49012);

-- typo
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (43468, 43648);
INSERT INTO spell_linked_spell (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (43648, 44007, 1, 'Storm Eye Safe Zone');

-- 636
-- event script for Medivh's Journal
delete from event_scripts where id = 10951;
insert into event_scripts values
(10951,0,10,17651, 300000, 0,-11159,-1907.22,91.48,0);

-- remove every Image from Medivh (should not be spawned by db)
delete from creature where id = 17651;
-- add script
update creature_template set scriptname = 'npc_image_of_medivh' where entry = 17651;
-- 640 
DELETE FROM `spell_script_target` WHERE entry IN (33655, 33633, 44374);
INSERT INTO `spell_script_target` VALUES
(33655,0,183350),
(33633,0,183351),
(44374,1,24722);

-- 645
delete from creature where id=17318;
update creature_template set scriptname='npc_geezle' where entry=17318;
delete from event_scripts where id=10675;
insert into event_scripts () VALUES (10675, 0, 10, 17318, 120000, 0, -5134.3, -11250.3, 5.29568, 6.23554),
(10675, 72, 7, 9531, 0, 0, 0, 0, 0, 0);
update quest_template set specialflags=2, reqcreatureorgoid1=0, reqcreatureorgocount1=0 where entry=9531;
-- 667
update creature_template set scriptname='npc_professor_dabiri' where entry=20907;
-- 676
UPDATE `trinity_string` SET `content_default`='Player |cffff0000%s|r kicked by |cffff0000%s|r. Reason: |cffff0000%s|r.' WHERE (`entry`='282');
UPDATE `command` SET `help`='Syntax: .kick [$charactername] [$reason]\r\n\r\nKick the given character name from the world with or without reason. If no character name is provided then the selected player (except for yourself) will be kicked. If no reason is provided, default is \"No Reason\".' WHERE (`name`='kick');
