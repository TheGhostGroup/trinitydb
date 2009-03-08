-- 1327_world
ALTER TABLE `creature_template` ADD COLUMN `spell5` mediumint(8) unsigned NOT NULL default '0' AFTER `spell4`;
ALTER TABLE `creature_template` ADD COLUMN `spell6` mediumint(8) unsigned NOT NULL default '0' AFTER `spell5`;
ALTER TABLE `creature_template` ADD COLUMN `spell7` mediumint(8) unsigned NOT NULL default '0' AFTER `spell6`;
ALTER TABLE `creature_template` ADD COLUMN `spell8` mediumint(8) unsigned NOT NULL default '0' AFTER `spell7`;

-- 1351_world
DROP TABLE IF EXISTS `trinity_string`;
CREATE TABLE IF NOT EXISTS `trinity_string` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
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

--
-- Dumping data for table `mangos_string`
--

INSERT INTO `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(1, 'You should select a character or a creature.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'You should select a creature.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '|cffff0000[System Message]: %s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '|cffff0000[Event Message]: %s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'There is no help for that command', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'There is no such command', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'There is no such subcommand', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Command %s have subcommands:%s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Commands available to you:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Incorrect syntax.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Your account level is: %i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Online players: %u (max: %u) Queued players: %u (max: %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Server uptime: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Player saved.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'All players saved.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'There are the following active GMs on this server:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'There are no GMs currently logged in on this server.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Cannot do that while flying.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Cannot do that in Battlegrounds.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Target is flying you can''t do that.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '%s is flying command failed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'You are not mounted so you can''t dismount.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Cannot do that while fighting.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'You used it recently.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Password not changed (unknown error)!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'The password was changed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'The new passwords do not match or the old password is wrong', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'Your account is now locked.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Your account is now unlocked.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, ', rank ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, ' [known]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, ' [learn]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, ' [passive]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, ' [talent]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, ' [active]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, ' [complete]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, ' (offline)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'on', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'You are: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'visible', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'invisible', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'done', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'You', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, ' <unknown> ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, '<error>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '<non-existing character>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'UNKNOWN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'You must be at least level %u to enter.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'You must be at least level %u and have item %s to enter.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'Hello! Ready for some training?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'Invaid item count (%u) for item %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Mail can''t have more %u item stacks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'The new passwords do not match', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'Your password can''t be longer than 16 characters (client limit), password not changed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'Current Message of the day: \r\n%s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'Using World DB: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'Using script library: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'Global notify: ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'Map: %u (%s) Zone: %u (%s) Area: %u (%s)\nX: %f Y: %f Z: %f Orientation: %f\ngrid[%u,%u]cell[%u,%u] InstanceID: %u\n ZoneX: %f ZoneY: %f\nGroundZ: %f FloorZ: %f Have height data (Map: %u VMap: %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, '%s is already being teleported.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'You can summon a player to your instance only if he is in your party with you as leader.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'You cannot go to the player''s instance because you are in a party now.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'You can go to the player''s instance while not being in his party only if your GM mode is on.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'You can not go to player %s from instance to instance.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'You can not summon player %s from instance to instance.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'You are summoning %s%s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'You are being summoned by %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'You are teleporting %s%s to %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'You are being teleported by %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'Player (%s) does not exist.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'Appearing at %s''s location.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, '%s is appearing to your location.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'Incorrect values.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'No character selected.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, '%s is not in a group.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'You changed HP of %s to %i/%i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, '%s changed your HP to %i/%i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'You changed MANA of %s to %i/%i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, '%s changed your MANA to %i/%i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'You changed ENERGY of %s to %i/%i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, '%s changed your ENERGY to %i/%i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'Current energy: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'You changed rage of %s to %i/%i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, '%s changed your rage to %i/%i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'You changed level of %s to %i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'GUID %i, faction is %i, flags is %i, npcflag is %i, DY flag is %i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'Wrong faction: %u (not found in factiontemplate.dbc).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'You changed GUID=%i ''s Faction to %i, flags to %i, npcflag to %i, dyflag to %i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'You changed the spellflatid=%i, val= %i, mark =%i to %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, '%s changed your spellflatid=%i, val= %i, mark =%i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, '%s has access to all taxi nodes now (until logout).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, '%s has no more access to all taxi nodes now (only visited accessible).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, '%s has given you access to all taxi nodes (until logout).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, '%s has removed access to all taxi nodes (only visited still accessible).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'You set all speeds to %2.2f from normal of %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, '%s set all your speeds to %2.2f from normal.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'You set the speed to %2.2f from normal of %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, '%s set your speed to %2.2f from normal.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'You set the swim speed to %2.2f from normal of %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, '%s set your swim speed to %2.2f from normal.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'You set the backwards run speed to %2.2f from normal of %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, '%s set your backwards run speed to %2.2f from normal.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'You set the fly speed to %2.2f from normal of %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, '%s set your fly speed to %2.2f from normal.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'You set the size %2.2f of %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, '%s set your size to %2.2f.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'There is no such mount.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'You give a mount to %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, '%s gave you a mount.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'USER1: %i, ADD: %i, DIF: %i\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'You take all copper of %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, '%s took you all of your copper.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'You take %i copper from %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, '%s took %i copper from you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'You give %i copper to %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, '%s gave you %i copper.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'You hear sound %u.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'USER2: %i, ADD: %i, RESULT: %i\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'Removed bit %i in field %i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'Set bit %i in field %i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'Teleport location table is empty!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'Teleport location not found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'Requires search parameter.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'There are no teleport locations matching your request.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'Locations found are:\n%s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'Mail sent to %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'You try to hear sound %u but it doesn''t exist.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'server console command', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'You changed runic power of %s to %i/%i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, '%s changed your runic power to %i/%i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(200, 'No selection.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, 'Object GUID is: lowpart %u highpart %X', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, 'The name was too long by %i characters.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, 'Error, name can only contain characters A-Z and a-z.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, 'The subname was too long by %i characters.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 'Not yet implemented', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, 'Item ''%i'' ''%s'' added to list with maxcount ''%i'' and incrtime ''%i'' and extendedcost ''%i''', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, 'Item ''%i'' not found in database.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, 'Item ''%i'' ''%s'' deleted from vendor list', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, 'Item ''%i'' not found in vendor list.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, 'Item ''%i'' already in vendor list.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, 'Spells of %s reset.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, 'Spells of %s will reset at next login.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, 'Talents of %s reset.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, 'Talents of %s will reset at next login.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, 'Your spells have been reset.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, 'Your talents have been reset.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, 'Unknown case ''%s'' for .resetall command. Type full correct case name.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, 'Spells will reset for all players at login. Strongly recommend re-login!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, 'Talents will reset for all players at login. Strongly recommend re-login!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, 'Creature (GUID: %u) No waypoint found.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, 'Creature (GUID: %u) Last waypoint not found.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, 'Creature (GUID: %u) No waypoint found - used ''wpguid''. Now trying to find it by its position...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, 'Creature (GUID: %u) No waypoints found - This is a MaNGOS db problem (single float).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, 'Selected creature is ignored - provided GUID is used', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, 'Creature (GUID: %u) not found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, 'You must select a visual waypoint.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, 'No visual waypoints found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, 'Could not create visual waypoint with creatureID: %d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, 'All visual waypoints removed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, 'Could not create waypoint-creature with ID: %d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, 'No GUID provided.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, 'No waypoint number provided.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, 'Argument required for ''%s''.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, 'Waypoint %i added to GUID: %d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, 'Waypoint %d added.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, 'Waypoint changed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, 'Waypoint %s modified.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, 'WP export successfull.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, 'No waypoints found inside the database.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, 'File imported.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, 'Waypoint removed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, 'Warning: Could not delete WP from the world with ID: %d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, 'This happens if the waypoint is too far away from your char.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, 'The WP is deleted from the database, but not from the world here.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, 'They will disappear after a server restart.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, 'Waypoint %d: Info for creature: %s, GUID: %d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, 'Waittime: %d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, 'Model %d: %d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, 'Emote: %d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, 'Spell: %d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, 'Text%d (ID: %i): %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, 'AIScript: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, 'Forced rename for player %s will be requested at next login.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, 'Forced rename for player %s (GUID #%u) will be requested at next login.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, 'Waypoint-Creature (GUID: %u) Not found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, 'Could not find NPC...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, 'Creature movement type set to ''%s'', waypoints removed (if any).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, 'Creature movement type set to ''%s'', waypoints were not removed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, 'Incorrect value, use on or off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, 'Value saved.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, 'Value saved, you may need to rejoin or clean your client cache.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, 'Areatrigger ID %u not found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, 'Target map or coordinates is invalid (X: %f Y: %f MapId: %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, 'Zone coordinates is invalid (X: %f Y: %f AreaId: %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, 'Zone %u (%s) is part of instanceable map %u (%s)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, 'Nothing found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, 'Object not found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, 'Creature not found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, 'Warning: Mob found more than once - you will be teleported to the first one found in DB.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, 'Creature Removed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, 'Creature moved.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, 'Creature (GUID:%u) must be on the same map as player!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, 'Game Object (GUID: %u) not found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, 'Game Object (GUID: %u) has references in not found creature %u GO list, can''t be deleted.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, 'Game Object (GUID: %u) removed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, 'Game Object (GUID: %u) turned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, 'Game Object (GUID: %u) moved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, 'You must select a vendor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, 'You must send id for item', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, 'Vendor has too many items (max 128)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, 'You can''t kick self, logout instead', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, 'Player %s kicked.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, 'Player %s not found.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, 'Accepting Whisper: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, 'Accepting Whisper: ON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, 'Accepting Whisper: OFF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, 'Creature (GUID: %u) not found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, 'Tickets count: %i show new tickets: %s\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, 'New ticket from %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, 'Ticket of %s (Last updated: %s):\n%s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, 'New ticket show: ON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, 'New ticket show: OFF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, 'Ticket %i doesn''t exist', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, 'All tickets deleted.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, 'Character %s ticket deleted.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, 'Ticket deleted.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, 'Spawn distance changed to: %f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, 'Spawn time changed to: %i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, 'The honor of %s was set to %u!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, 'Your chat has been disabled for %u minutes.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, 'You have disabled %s''s chat for %u minutes.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, 'Player''s chat is already enabled.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, 'Your chat has been enabled.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, 'You have enabled %s''s chat.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, 'Faction %s (%u) reputation of %s was set to %5d!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, 'The arena points of %s was set to %u!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, 'No faction found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, 'Faction %i unknown!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, 'Invalid parameter %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, 'delta must be between 0 and %d (inclusive)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, '%d - |cffffffff|Hfaction:%d|h[%s]|h|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, ' [visible]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, ' [at war]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, ' [peace forced]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, ' [hidden]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, ' [invisible forced]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, ' [inactive]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, 'Hated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, 'Hostile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, 'Unfriendly', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, 'Neutral', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, 'Friendly', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, 'Honored', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, 'Revered', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, 'Exalted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, 'Faction %s (%u) can''not have reputation.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, ' [no reputation]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, 'Characters at account %s (Id: %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, '  %s (GUID %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, 'No players found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, 'Extended item cost %u not exist', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, 'GM mode is ON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, 'GM mode is OFF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, 'GM Chat Badge is ON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, 'GM Chat Badge is OFF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, 'You repair all %s''s items.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, 'All your items repaired by %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, 'You set waterwalk mode %s for %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, 'Your waterwalk mode %s by %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, '%s is now following you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, '%s is not following you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(342, '%s is now not following you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, 'Creature (Entry: %u) cannot be tamed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, 'You already have pet.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, 'Forced customize for player %s will be requested at next login.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(346, 'Forced customize for player %s (GUID #%u) will be requested at next login.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(400, '|cffff0000[System Message]:|rScripts reloaded', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(401, 'You change security level of account %s to %i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(402, '%s changed your security level to %i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(403, 'You have low security level for this.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(404, 'Creature movement disabled.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(405, 'Creature movement enabled.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(406, 'Weather can''t be changed for this zone.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(407, 'Weather system disabled at server.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(408, '%s is banned for %s. Reason: %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(409, '%s is banned permanently for %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(410, '%s %s not found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(411, '%s unbanned.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(412, 'There was an error removing the ban on %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(413, 'Account not exist: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(414, 'There is no such character.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(415, 'There is no such IP in banlist.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(416, 'Account %s has never been banned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(417, 'Ban history for account %s:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(418, 'Ban Date: %s Bantime: %s Still active: %s  Reason: %s Set by: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(419, 'Inf.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(420, 'Never', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(421, 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(422, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(423, 'IP: %s\nBan Date: %s\nUnban Date: %s\nRemaining: %s\nReason: %s\nSet by: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(424, 'There is no matching IPban.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(425, 'There is no matching account.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(426, 'There is no banned account owning a character matching this part.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(427, 'The following IPs match your pattern:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(428, 'The following accounts match your query:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(429, 'You learned many spells/skills.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(430, 'You learned all spells for class.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(431, 'You learned all talents for class.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(432, 'You learned all languages.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(433, 'You learned all craft skills and recipes.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(434, 'Could not find ''%s''', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(435, 'Invalid item id: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(436, 'No items found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(437, 'Invalid gameobject id: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(438, 'Found items %u: %u ( inventory %u mail %u auction %u guild %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(439, 'Found gameobjects %u: %u ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(440, 'Invalid creature id: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(441, 'Found creatures %u: %u ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(442, 'No area found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(443, 'No item sets found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(444, 'No skills found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(445, 'No spells found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(446, 'No quests found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(447, 'No creatures found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(448, 'No gameobjects found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(449, 'Graveyard #%u doesn''t exist.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(450, 'Graveyard #%u already linked to zone #%u (current).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(451, 'Graveyard #%u linked to zone #%u (current).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(452, 'Graveyard #%u can''t be linked to subzone or not existed zone #%u (internal error).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(454, 'No faction in Graveyard with id= #%u , fix your DB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(455, 'invalid team, please fix database', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(456, 'any', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(457, 'alliance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(458, 'horde', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(459, 'Graveyard #%u (faction: %s) is nearest from linked to zone #%u.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(460, 'Zone #%u doesn''t have linked graveyards.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(461, 'Zone #%u doesn''t have linked graveyards for faction: %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(462, 'Teleport location already exists!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(463, 'Teleport location added.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(464, 'Teleport location NOT added: database error.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(465, 'Teleport location deleted.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(467, 'Target unit has %d auras:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(468, 'id: %d eff: %d type: %d duration: %d maxduration: %d name: %s%s%s caster: %s %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(469, 'Target unit has %d auras of type %d:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(470, 'id: %d eff: %d name: %s%s%s caster: %s %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(471, 'Quest %u not found.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(472, 'Quest %u started from item. For correct work, please, add item to inventory and start quest in normal way: .additem %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(473, 'Quest removed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(474, ' [rewarded]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(475, ' [complete]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(476, ' [active]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(477, '%s''s Fly Mode %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(478, 'Opcode %u sent to %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(479, 'Character loaded successfully!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(480, 'Failed to load the character!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(481, 'Character dumped successfully!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(482, 'Character dump failed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(483, 'Spell %u broken and not allowed to cast or learn!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(484, 'Skill %u (%s) for player %s set to %u and current maximum set to %u (without permanent (talent) bonuses).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(485, 'Player %s must have skill %u (%s) before using this command.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(486, 'Invalid skill id (%u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(487, 'You learned default GM spells/skills.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(488, 'You already know that spell.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(489, 'Target(%s) already know that spell.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(490, '%s doesn''t know that spell.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(491, 'You already forgot that spell.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(492, 'All spell cooldowns removed for %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(493, 'Spell %u cooldown removed for %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(494, 'Command : Additem, itemId = %i, amount = %i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(495, 'Command : Additemset, itemsetId = %i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(496, 'Removed itemID = %i, amount = %i from %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(497, 'Cannot create item ''%i'' (amount: %i)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(498, 'You need to provide a guild name!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(499, 'Player not found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(500, 'Player already has a guild!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(501, 'Guild not created! (already exists?)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(502, 'No items from itemset ''%u'' found.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(503, 'The distance is: (3D) %f (2D) %f yards.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(504, 'Item ''%i'' ''%s'' Item Slot %i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(505, 'Item ''%i'' doesn''t exist.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(506, 'Item ''%i'' ''%s'' Added to Slot %i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(507, 'Item save failed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(508, '%d - owner: %s (guid: %u account: %u ) %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(509, '%d - sender: %s (guid: %u account: %u ) receiver: %s (guid: %u account: %u ) %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(510, '%d - owner: %s (guid: %u account: %u ) %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(511, 'Wrong link type!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(512, '%d - |cffffffff|Hitem:%d:0:0:0:0:0:0:0|h[%s]|h|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(513, '%d - |cffffffff|Hquest:%d|h[%s]|h|r %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(514, '%d - |cffffffff|Hcreature_entry:%d|h[%s]|h|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(515, '%d - |cffffffff|Hcreature:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(516, '%d - |cffffffff|Hgameobject_entry:%d|h[%s]|h|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(517, '%d - |cffffffff|Hgameobject:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(518, '%d - |cffffffff|Hitemset:%d|h[%s %s]|h|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(519, '|cffffffff|Htele:%s|h[%s]|h|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(520, '%d - |cffffffff|Hspell:%d|h[%s]|h|r ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(521, '%d - |cffffffff|Hskill:%d|h[%s %s]|h|r %s %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(522, 'Game Object (GUID: %u) not found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(523, '>> Game Object %s (GUID: %u) at %f %f %f. Orientation %f.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(524, 'Selected object:\n|cffffffff|Hitemset:%d|h[%s]|h|r\nGUID: %u ID: %u\nX: %f Y: %f Z: %f MapId: %u\nOrientation: %f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(525, '>> Add Game Object ''%i'' (%s) (GUID: %i) added at ''%f %f %f''.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(526, '%s (lowguid: %u) movement generators stack:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(527, '   Idle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(528, '   Random', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(529, '   Waypoint', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(530, '   Animal random', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(531, '   Confused', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(532, '   Targeted to player %s (lowguid %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(533, '   Targeted to creature %s (lowguid %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(534, '   Targeted to <NULL>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(535, '   Home movement to (X:%f Y:%f Z:%f)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(536, '   Home movement used for player?!?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(537, '   Taxi flight', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(538, '   Unknown movement generator (%u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(539, 'Player selected NPC\nGUID: %u.\nFaction: %u.\nnpcFlags: %u.\nEntry: %u.\nDisplayID: %u (Native: %u).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(540, 'Level: %u.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(541, 'Health (base): %u. (max): %u. (current): %u.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(542, 'Field Flags: %u.\nDynamic Flags: %u.\nFaction Template: %u.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(543, 'Loot: %u Pickpocket: %u Skinning: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(544, 'Position: %f %f %f.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(545, '*** Is a vendor!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(546, '*** Is a trainer!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(547, 'InstanceID: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(548, 'Player%s %s (guid: %u) Account: %s (id: %u) GMLevel: %u Last IP: %s Last login: %s Latency: %ums', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(549, 'Played time: %s Level: %u Money: %ug%us%uc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(550, 'Command .pinfo doesn''t support ''rep'' option for offline players.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(551, '%s has explored all zones now.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(552, '%s has no more explored zones.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(553, '%s has explored all zones for you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(554, '%s has hidden all zones from you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(555, 'Hover enabled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(556, 'Hover disabled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(557, 'You have been leveled up (%i)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(558, 'You have been leveled down (%i)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(559, 'Your level progress has been reset.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(560, 'The area has been set as explored.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(561, 'The area has been set as not explored.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(562, 'GUID=%i ''s updateIndex: %i, value:  %i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(563, 'You change GUID=%i ''s UpdateIndex: %i value to %i.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(564, 'The value index %u is too big to %u(count: %u).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(565, 'Set %u uint32 Value:[OPCODE]:%u [VALUE]:%u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(566, 'You Set %u Field:%u to uint32 Value: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(567, 'Set %u float Value:[OPCODE]:%u [VALUE]:%f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(568, 'You Set %u Field:%i to float Value: %f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(569, 'Get %u uint32 Value:[OPCODE]:%u [VALUE]:%u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(570, 'The uint32 value of %u in %u is: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(571, 'Get %u float Value:[OPCODE]:%u [VALUE]:%f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(572, 'The float of %u value in %u is: %f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(573, '.Set32Bit:[OPCODE]:%u [VALUE]:%u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(574, 'You set Bit of Field:%u to Value: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(575, '.Mod32Value:[OPCODE]:%u [VALUE]:%i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(576, 'You modified the value of Field:%u to Value: %u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(577, 'You are now invisible.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(578, 'You are now visible.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(579, 'Selected player or creature not have victim.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(580, 'Player %s learned all default spells for race/class and completed quests rewarded spells.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(581, 'Found near gameobjects (distance %f): %u ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(582, 'SpawnTime: Full:%s Remain:%s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(583, '%d - |cffffffff|Hgameevent:%d|h[%s]|h|r%s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(584, 'No event found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(585, 'Event not exist!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(586, 'Event %u: %s%s\nStart: %s End: %s Occurence: %s Length: %s\nNext state change: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(587, 'Event %u already active!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(588, 'Event %u not active!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(589, '   Point movement to (X:%f Y:%f Z:%f)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(590, '   Fear movement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(591, '   Distract movement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(592, 'You have learned all spells in craft: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(593, 'Currently Banned Accounts:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(594, '|    Account    |   BanDate    |   UnbanDate  |  Banned By    |   Ban Reason  |', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(595, 'Currently Banned IPs:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(596, '|      IP       |   BanDate    |   UnbanDate  |  Banned By    |   Ban Reason  |', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(597, 'Current gamemasters:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(598, '|    Account    |  GM  |', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(599, 'No gamemasters.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(600, 'The Alliance wins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(601, 'The Horde wins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(602, 'The battle for Warsong Gulch begins in 1 minute.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(603, 'The battle for Warsong Gulch begins in 30 seconds. Prepare yourselves!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(604, 'Let the battle for Warsong Gulch begin!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(605, '$n captured the Horde flag!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(606, '$n captured the Alliance flag!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(607, 'The Horde flag was dropped by $n!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(608, 'The Alliance Flag was dropped by $n!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(609, 'The Alliance Flag was returned to its base by $n!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(610, 'The Horde flag was returned to its base by $n!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(611, 'The Horde flag was picked up by $n!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(612, 'The Alliance Flag was picked up by $n!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(613, 'The flags are now placed at their bases.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(614, 'The Alliance flag has been respawned!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(615, 'The Horde flag has been respawned!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(636, 'The Battle for Eye of the Storm begins in 1 minute.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(637, 'The Battle for Eye of the Storm begins in 30 seconds.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(638, 'The Battle for Eye of the Storm has begun!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(650, 'Alliance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(651, 'Horde', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(652, 'stables', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(653, 'blacksmith', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(654, 'farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(655, 'lumber mill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(656, 'mine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(657, 'The %s has taken the %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(658, '$n has defended the %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(659, '$n has assaulted the %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(660, '$n claims the %s! If left unchallenged, the %s will control it in 1 minute!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(661, 'The Battle for Arathi Basin begins in 1 minute.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(662, 'The Battle for Arathi Basin begins in 30 seconds. Prepare yourselves!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(663, 'The Battle for Arathi Basin has begun!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(664, 'The Alliance has gathered $1776W resources, and is near victory!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(665, 'The Horde has gathered $1777W resources, and is near victory!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(666, 'After your recent battle in %s our best attempts to award you a Mark of Honor failed. Enclosed you will find the Mark of Honor we were not able to deliver to you at the time. Thanks for fighting in %s!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(667, 'The Alliance has taken control of the Mage Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(668, 'The Horde has taken control of the Mage Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(669, 'The Alliance has taken control of the Draenei Ruins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(670, 'The Horde has taken control of the Draenei Ruins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(671, 'The Alliance has taken control of the Blood Elf Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(672, 'The Horde has taken control of the Blood Elf Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(673, 'The Alliance has taken control of the Fel Reaver Ruins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(674, 'The Horde has taken control of the Fel Reaver Ruins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(675, 'The Alliance has lost control of the Mage Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(676, 'The Horde has lost control of the Mage Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(677, 'The Alliance has lost control of the Draenei Ruins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(678, 'The Horde has lost control of the Draenei Ruins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(679, 'The Alliance has lost control of the Blood Elf Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(680, 'The Horde has lost control of the Blood Elf Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(681, 'The Alliance has lost control of the Fel Reaver Ruins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(682, 'The Horde has lost control of the Fel Reaver Ruins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(683, '$N has taken the flag!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(684, 'The Alliance has captured the flag!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(685, 'The Horde has captured the flag!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(686, 'The Flag has been dropped!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(687, 'The flag has been reset', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(700, 'You must be level %u to form an arena team', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(701, 'One minute until the Arena battle begins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(702, 'Thirty seconds until the Arena battle begins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(703, 'Fifteen seconds until the Arena battle begins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(704, 'The Arena battle has begun!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(705, 'You must wait %s before speaking again.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(706, 'This item(s) have problems with equipping/storing in inventory.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(707, '%s wishes to not be disturbed and cannot receive whisper messages: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(708, '%s is Away from Keyboard: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(709, 'Do not Disturb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(710, 'Away from Keyboard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(711, 'Queue status for %s (Lvl: %u to %u)\nQueued alliances: %u (Need at least %u more)\nQueued hordes: %u (Need at least %u more)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(712, '|cffff0000[BG Queue Announcer]:|r %s -- [%u-%u] A: %u/%u, H: %u/%u|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(713, 'You must be level %u to join an arena team!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(715, 'You don''t meet Battleground level requirements', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(717, '|cffff0000[BG Queue Announcer]:|r %s -- [%u-%u] Started!|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(718, '|cffff0000[Arena Queue Announcer]:|r %s -- Joined : %ux%u : %u|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(719, '|cffff0000[Arena Queue Announcer]:|r %s -- Exited : %ux%u : %u|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(720, 'Your group is too large for this battleground. Please regroup to join.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(721, 'Your group is too large for this arena. Please regroup to join.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(722, 'Your group has members not in your arena team. Please regroup to join.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(723, 'Your group does not have enough players to join this match.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(724, 'The Gold Team wins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(725, 'The Green Team wins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(726, 'There aren''t enough players in this battleground. It will end soon unless some more players join to balance the fight.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(727, 'Your group has an offline member. Please remove him before joining.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(728, 'Your group has players from the opposing faction. You can''t join the battleground as a group.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(729, 'Your group has players from different battleground brakets. You can''t join as group.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(730, 'Someone in your party is already in this battleground queue. (S)he must leave it before joining as group.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(731, 'Someone in your party is Deserter. You can''t join as group.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(732, 'Someone in your party is already in three battleground queues. You cannot join as group.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(733, 'You cannot teleport to a battleground or arena map.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(734, 'You cannot summon players to a battleground or arena map.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(735, 'You must be in GM mode to teleport to a player in a battleground.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(736, 'You cannot teleport to a battleground from another battleground. Please leave the current battleground first.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(737, 'Arenas are set to 1v1 for debugging. So, don''t join as group.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(738, 'Arenas are set to normal playercount.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(739, 'Battlegrounds are set to 1v0 for debugging.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(740, 'Battlegrounds are set to normal playercount.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(741, 'Flushing Arena points based on team ratings, this may take a few minutes. Please stand by...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(742, 'Distributing arena points to players...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(743, 'Finished setting arena points for online players.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(744, 'Modifying played count, arena points etc. for loaded arena teams, sending updated stats to online players...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(745, 'Modification done.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(746, 'Done flushing Arena points.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(785, 'Arena testing turned %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(786, '|cffff0000[Automatic]:|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(787, '|cffffff00[|c1f40af20Announce by|r |cffff0000%s|cffffff00]:|r %s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(800, 'Invalid name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(801, 'You do not have enough gold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(802, 'You do not have enough free slots', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(803, 'Your partner does not have enough free bag slots', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(804, 'You do not have permission to perform that function', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(805, 'Unknown language', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(806, 'You don''t know that language', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(807, 'Please provide character name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(808, 'Player %s not found or offline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(809, 'Account for character %s not found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1000, 'Exiting daemon...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1001, 'Account deleted: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1002, 'Account %s NOT deleted (probably sql file format was updated)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1003, 'Account %s NOT deleted (unknown error)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1004, 'Account created: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1005, 'Account name can''t be longer than 16 characters (client limit), account not created!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1006, 'Account with this name already exist!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1007, 'Account %s NOT created (probably sql file format was updated)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1008, 'Account %s NOT created (unknown error)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1009, 'Player %s (Guid: %u) Account %s (Id: %u) deleted.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1010, '|    Account    |       Character      |       IP        | GM | TBC |', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1011, '|<Error>        | %20s |<Error>          |<Er>|<Err>|', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1100, 'Account %s (Id: %u) have up to %u expansion allowed now.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1101, 'Message of the day changed to:\r\n%s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1102, 'Message sent to %s: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1103, '%d - %s %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1104, '%d - %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1105, '%d - %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1106, '%d - %s %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1107, '%d - %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1108, '%d - %s %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1109, '%d - %s %s %s %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1110, '%d - %s X:%f Y:%f Z:%f MapId:%d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1111, '%d - %s X:%f Y:%f Z:%f MapId:%d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1112, 'Failed to open file: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1113, 'Account %s (%u) have max amount allowed characters (client limit)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1114, 'Dump file have broken data!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1115, 'Invalid character name!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1116, 'Invalid character guid!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1117, 'Character guid %u in use!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1118, '%d - guild: %s (guid: %u) %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1119, 'You must use male or female as gender.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1120, 'You change gender of %s to %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1121, 'Your gender changed to %s by %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1122, '(%u/%u +perm %u +temp %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),

(1200,'Alliance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1201,'Horde',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1202,'%s was destroyed by the %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1203,'The %s is under attack! If left unchecked, the %s will destroy it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1204,'The %s was taken by the %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1205,'The %s was taken by the %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1206,'The %s was taken by the %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1207,'The %s is under attack! If left unchecked, the %s will capture it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1208,'The %s has taken the %s! Its supplies will now be used for reinforcements!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1209,'Irondeep Mine',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1210,'Coldtooth Mine',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1211,'Stormpike Aid Station',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1212,'Dun Baldar South Bunker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1213,'Dun Baldar North Bunker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1214,'Stormpike Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1215,'Icewing Bunker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1216,'Stonehearth Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1217,'Stonehearth Bunker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1218,'Snowfall Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1219,'Iceblood Tower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1220,'Iceblood Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1221,'Tower Point',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1222,'Frostwolf Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1223,'East Frostwolf Tower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1224,'West Frostwolf Tower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1225,'Frostwolf Relief Hut',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1226,'The Battle for Alterac Valley begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1227,'The Battle for Alterac Valley begins in 30 seconds. Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1228,'The Battle for Alterac Valley has begun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1229,'The Alliance Team is running out of reinforcements!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1230,'The Horde Team is running out of reinforcements!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1231,'The Frostwolf General is Dead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1232,'The Stormpike General is Dead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

INSERT INTO `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000, '|cff00ff00New ticket from|r|cffff00ff %s.|r |cff00ff00Ticket entry:|r|cffff00ff %d.|r', '', '', '', '', '', '', '', ''),
(2001, '|cff00ff00Character|r|cffff00ff %s |r|cff00ff00edited his/her ticket:|r|cffff00ff %d.|r', '', '', '', '', '', '', '', ''),
(2002, '|cff00ff00Character|r|cffff00ff %s |r|cff00ff00abandoned ticket entry:|r|cffff00ff %d.|r', '', '', '', '', '', '', '', ''),
(2003, '|cff00ff00Closed by|r:|cff00ccff %s|r ', '', '', '', '', '', '', '', ''),
(2004, '|cff00ff00Deleted by|r:|cff00ccff %s|r ', '', '', '', '', '', '', '', ''),
(2005, 'Ticket not found.', '', '', '', '', '', '', '', ''),
(2006, 'Please close ticket before deleting it permanently.', '', '', '', '', '', '', '', ''),
(2007, 'Ticket %d is already assigned.', '', '', '', '', '', '', '', ''),
(2008, '%u Tickets succesfully reloaded from the database.', '', '', '', '', '', '', '', ''),
(2009, 'Showing list of open tickets.', '', '', '', '', '', '', '', ''),
(2010, 'Showing list of open tickets whose creator is online.', '', '', '', '', '', '', '', ''),
(2011, 'Showing list of closed tickets.', '', '', '', '', '', '', '', ''),
(2012, 'Invalid name specified. Name should be that of an online Gamemaster.', '', '', '', '', '', '', '', ''),
(2013, 'This ticket is already assigned to yourself. To unassign use .ticket unassign %d and then reassign.', '', '', '', '', '', '', '', ''),
(2014, 'Ticket %d is not assigned, you cannot unassign it.', '', '', '', '', '', '', '', ''),
(2015, 'You cannot unassign tickets from staffmembers with a higher security level than yourself.', '', '', '', '', '', '', '', ''),
(2016, 'Cannot close ticket %d, it is assigned to another GM.', '', '', '', '', '', '', '', ''),
(2017, '|cff00ff00Ticket|r:|cff00ccff %d.|r ', '', '', '', '', '', '', '', ''),
(2018, '|cff00ff00Created by|r:|cff00ccff %s|r ', '', '', '', '', '', '', '', ''),
(2019, '|cff00ff00Last change|r:|cff00ccff %s ago|r ', '', '', '', '', '', '', '', ''),
(2020, '|cff00ff00Assigned to|r:|cff00ccff %s|r ', '', '', '', '', '', '', '', ''),
(2021, '|cff00ff00Unassigned by|r:|cff00ccff %s|r ', '', '', '', '', '', '', '', ''),
(2022, '\n|cff00ff00Message|r: \"%s\"|r ', '', '', '', '', '', '', '', ''),
(2023, '\n|cff00ff00Comment|r: \"%s\"|r ', '', '', '', '', '', '', '', ''),
(2024, '\n|cff00ccff%s|r |cff00ff00Added comment|r: \"%s\"|r ', '', '', '', '', '', '', '', ''),

(5000, 'You froze player %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5001, 'It might be amusing but no... you cant freeze yourself!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5002, 'Invalid input check the name of target.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5003, 'You unfroze player %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5004, 'There are no frozen players.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5005, 'Following players are frozen on the server:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5006, '- %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5009, 'Sound %u Played to server', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),

(6613, '|cfff00000[GM Announcement]: %s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6614, 'Notification to GM''s - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6615, '|cffffff00[|c1f40af20GM Announce by|r |cffff0000%s|cffffff00]:|r %s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),

(10001, 'The Horde has taken The Overlook!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10002, 'The Alliance has taken The Overlook!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10003, 'The Horde has taken The Stadium!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10004, 'The Alliance has taken The Stadium!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10005, 'The Horde has taken Broken Hill!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10006, 'The Alliance has taken Broken Hill!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10007, 'The Horde lost The Overlook!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10008, 'The Alliance lost The Overlook!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10009, 'The Horde lost The Stadium!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10010, 'The Alliance lost The Stadium!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10011, 'The Horde lost Broken Hill!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10012, 'The Alliance lost Broken Hill!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10013, 'The Horde has taken the West Beacon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10014, 'The Alliance has taken the West Beacon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10015, 'The Horde has taken the East Beacon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10016, 'The Alliance has taken the East Beacon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10017, 'The Horde has captured the Twin Spire Graveyard!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10018, 'The Alliance has captured the Twin Spire Graveyard!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10019, 'The Horde lost the West Beacon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10020, 'The Alliance lost the West Beacon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10021, 'The Horde lost the East Beacon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10022, 'The Alliance lost the East Beacon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10023, 'The Horde lost the Twin Spire Graveyard!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10024, 'The Alliance lost the Twin Spire Graveyard!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10025, 'The Horde has captured Halaa!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10026, 'The Alliance has captured Halaa!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10027, 'The Horde lost Halaa!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10028, 'The Alliance lost Halaa!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10029, 'The Horde has taken a Spirit Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10030, 'The Alliance has taken a Spirit Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10031, 'The Horde lost a Spirit Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10032, 'The Alliance lost a Spirit Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10033, 'The Horde has taken the Northpass Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10034, 'The Alliance has taken the Northpass Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10035, 'The Horde has taken the Eastwall Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10036, 'The Alliance has taken the Eastwall Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10037, 'The Horde has taken the Crown Guard Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10038, 'The Alliance has taken the Crown Guard Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10039, 'The Horde has taken the Plaguewood Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10040, 'The Alliance has taken the Plaguewood Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10041, 'The Horde lost the Northpass Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10042, 'The Alliance lost the Northpass Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10043, 'The Horde lost the Eastwall Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10044, 'The Alliance lost the Eastwall Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10045, 'The Horde lost the Crown Guard Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10046, 'The Alliance lost the Crown Guard Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10047, 'The Horde lost the Plaguewood Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10048, 'The Alliance lost the Plaguewood Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10049, 'The Horde has collected 200 silithyst!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10050, 'The Alliance has collected 200 silithyst!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10051, 'Take me to Northpass Tower.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10052, 'Take me to Eastwall Tower.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10053, 'Take me to Crown Guard Tower.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10054, 'Give me the flag, I''ll take it to the central beacon for the glory of the Alliance!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10055, 'Give me the flag, I''ll take it to the central beacon for the glory of the Horde!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10056, 'You must be a member of the Horde to enter the Hall of Legends.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10057, 'You must be a member of the Alliance to enter the Champion''s Hall.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- 1414_world_scripts
-- r847_scriptdev2_script_texts.sql
UPDATE `script_texts` SET emote=15 WHERE `entry`=-1000123;
UPDATE `script_texts` SET emote=1 WHERE `entry`=-1560028;
UPDATE `script_texts` SET emote=1 WHERE `entry`=-1560031;
UPDATE `script_texts` SET emote=5 WHERE `entry`=-1560032;
UPDATE `script_texts` SET emote=16 WHERE `entry`=-1000119;
UPDATE `script_texts` SET emote=254 WHERE `entry`=-1249002;
UPDATE `script_texts` SET emote=293 WHERE `entry`=-1249003;
UPDATE `script_texts` SET emote=1 WHERE `entry`=-1033000;
-- r848_scriptdev2_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1540047 AND -1540042;
INSERT INTO `script_texts` (entry,content_default,sound,type,language,emote,comment) VALUES
(-1540042,'Ours is the true Horde! The only Horde!',10323,1,0,0,'kargath SAY_AGGRO1'),
(-1540043,'I\'ll carve the meat from your bones!',10324,1,0,0,'kargath SAY_AGGRO2'),
(-1540044,'I am called Bladefist for a reason, as you will see!',10325,1,0,0,'kargath SAY_AGGRO3'),
(-1540045,'For the real Horde!',10326,1,0,0,'kargath SAY_SLAY1'),
(-1540046,'I am the only Warchief!',10327,1,0,0,'kargath SAY_SLAY2'),
(-1540047,'The true Horde... will.. prevail...',10328,1,0,0,'kargath SAY_DEATH');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1533118 AND -1533109;
INSERT INTO `script_texts` (entry,content_default,sound,type,language,emote,comment) VALUES
(-1533109,'You are mine now!',8825,1,0,0,'heigan SAY_AGGRO1'),
(-1533110,'I see you!',8826,1,0,0,'heigan SAY_AGGRO2'),
(-1533111,'You...are next!',8827,1,0,0,'heigan SAY_AGGRO3'),
(-1533112,'Close your eyes... sleep!',8829,1,0,0,'heigan SAY_SLAY'),
(-1533113,'The races of the world will perish. It is only a matter of time.',8830,1,0,0,'heigan SAY_TAUNT1'),
(-1533114,'I see endless suffering, I see torment, I see rage. I see... everything!',8831,1,0,0,'heigan SAY_TAUNT2'),
(-1533115,'Soon... the world will tremble!',8832,1,0,0,'heigan SAY_TAUNT3'),
(-1533116,'The end is upon you.',8833,1,0,0,'heigan SAY_TAUNT4'),
(-1533117,'Hungry worms will feast on your rotten flesh!',8834,1,0,0,'heigan SAY_TAUNT5'),
(-1533118,'Noo... o...',8828,1,0,0,'heigan SAY_DEATH');
-- r849_scriptdev2_script_texts.sql
DELETE FROM `script_texts` WHERE `entry`=-1070000;
INSERT INTO `script_texts` (entry,content_default,sound,type,language,emote,comment) VALUES
(-1070000,'None may steal the secrets of the makers!',5851,1,0,0,'ironaya SAY_AGGRO');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1129004 AND -1129000;
INSERT INTO `script_texts` (entry,content_default,sound,type,language,emote,comment) VALUES
(-1129000,'You\'ll never leave this place... alive.',5825,1,0,0,'amnennar SAY_AGGRO'),
(-1129001,'To me, my servants!',5828,1,0,0,'amnennar SAY_SUMMON60'),
(-1129002,'Come, spirits, attend your master!',5829,1,0,0,'amnennar SAY_SUMMON30'),
(-1129003,'I am the hand of the Lich King!',5827,1,0,0,'amnennar SAY_HP'),
(-1129004,'Too...easy!',5826,1,0,0,'amnennar SAY_KILL');
DELETE FROM `script_texts` WHERE `entry` IN (-1230002,-1230001);
INSERT INTO `script_texts` (entry,content_default,sound,type,language,emote,comment) VALUES
(-1230001,'Come to aid the Throne!',0,1,0,0,'dagran SAY_AGGRO'),
(-1230002,'Hail to the king, baby!',0,1,0,0,'dagran SAY_SLAY');
-- r852_scriptdev2_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1189021 AND -1189011;
INSERT INTO `script_texts` (entry,content_default,sound,type,language,emote,comment) VALUES
(-1189011,'Tell me... tell me everything!',5847,1,0,0,'vishas SAY_AGGRO'),
(-1189012,'Naughty secrets!',5849,1,0,0,'vishas SAY_HEALTH1'),
(-1189013,'I\'ll rip the secrets from your flesh!',5850,1,0,0,'vishas SAY_HEALTH2'),
(-1189014,'Purged by pain!',5848,1,0,0,'vishas SAY_KILL'),
(-1189015,'The monster got what he deserved.',0,0,1,0,'vishas SAY_TRIGGER_VORREL'),
(-1189016,'We hunger for vengeance.',5844,1,0,0,'thalnos SAY_AGGRO'),
(-1189017,'No rest, for the angry dead.',5846,1,0,0,'thalnos SAY_HEALTH'),
(-1189018,'More... More souls.',5845,1,0,0,'thalnos SAY_KILL'),
(-1189019,'You will not defile these mysteries!',5842,1,0,0,'doan SAY_AGGRO'),
(-1189020,'Burn in righteous fire!',5843,1,0,0,'doan SAY_SPECIALAE'),
(-1189021,'Release the hounds!',5841,1,0,0,'loksey SAY_AGGRO');
-- r854_scriptdev2_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1070006 AND -1070001;
INSERT INTO `script_texts` (entry,content_default,sound,type,language,emote,comment) VALUES
(-1070001,'Taste blade, mongrel!',0,0,0,0,'SAY_GUARD_SIL_AGGRO1'),
(-1070002,'Please tell me that you didn\'t just do what I think you just did. Please tell me that I\'m not going to have to hurt you...',0,0,0,0,'SAY_GUARD_SIL_AGGRO2'),
(-1070003,'As if we don\'t have enough problems, you go and create more!',0,0,0,0,'SAY_GUARD_SIL_AGGRO3'),
(-1070004,'looks up at you quizzically. Maybe you should inspect it?',0,2,0,0,'cluck EMOTE_A_HELLO'),
(-1070005,'looks at you unexpectadly.',0,2,0,0,'cluck EMOTE_H_HELLO'),
(-1070006,'starts pecking at the feed.',0,2,0,0,'cluck EMOTE_CLUCK_TEXT2');
-- r855_scriptdev2_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` IN (-1000004,-1000001);
INSERT INTO `script_texts` (entry,content_default,sound,type,language,emote,comment) VALUES
(-1000001,'goes into a killing frenzy!',0,2,0,0,'EMOTE_GENERIC_FRENZY_KILL'),
(-1000004,'goes into a berserker rage!',0,2,0,0,'EMOTE_GENERIC_BERSERK');
DELETE FROM `script_texts` WHERE `entry` = -1000005;
INSERT INTO `script_texts` (entry,content_default,sound,type,language,emote,comment) VALUES
(-1000005,'Greetings citizen',0,0,7,0,'general_marcus SAY_GREETING');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1329003 AND -1329000;
INSERT INTO `script_texts` (entry,content_default,sound,type,language,emote,comment) VALUES
(-1329000,'Thanks to Egan',0,0,0,0,'freed_soul SAY_ZAPPED0'),
(-1329001,'Rivendare must die',0,0,0,0,'freed_soul SAY_ZAPPED1'),
(-1329002,'Who you gonna call?',0,0,0,0,'freed_soul SAY_ZAPPED2'),
(-1329003,'Don\'t cross those beams!',0,0,0,0,'freed_soul SAY_ZAPPED3');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1999925 AND -1999900;
INSERT INTO `script_texts` (entry,content_default,sound,type,language,emote,comment) VALUES
(-1999900,'Let the games begin.',8280,1,0,0,'example_creature SAY_AGGRO'),
(-1999901,'I see endless suffering. I see torment. I see rage. I see everything.',8831,1,0,0,'example_creature SAY_RANDOM_0'),
(-1999902,'Muahahahaha',8818,1,0,0,'example_creature SAY_RANDOM_1'),
(-1999903,'These mortal infedels my lord, they have invaded your sanctum and seek to steal your secrets.',8041,1,0,0,'example_creature SAY_RANDOM_2'),
(-1999904,'You are already dead.',8581,1,0,0,'example_creature SAY_RANDOM_3'),
(-1999905,'Where to go? What to do? So many choices that all end in pain, end in death.',8791,1,0,0,'example_creature SAY_RANDOM_4'),
(-1999906,'$N, I sentance you to death!',8588,1,0,0,'example_creature SAY_BESERK'),
(-1999907,'The suffering has just begun!',0,1,0,0,'example_creature SAY_PHASE'),
(-1999908,'I always thought I was a good dancer.',0,0,0,0,'example_creature SAY_DANCE'),
(-1999909,'Move out Soldier!',0,0,0,0,'example_creature SAY_SALUTE'),
(-1999910,'Help $N! I\'m under attack!',0,0,0,0,'example_escort SAY_AGGRO1'),
(-1999911,'Die scum!',0,0,0,0,'example_escort SAY_AGGRO2'),
(-1999912,'Hmm a nice day for a walk alright',0,0,0,0,'example_escort SAY_WP_1'),
(-1999913,'Wild Felboar attack!',0,0,0,0,'example_escort SAY_WP_2'),
(-1999914,'Time for me to go! See ya around $N!',0,0,0,3,'example_escort SAY_WP_3'),
(-1999915,'Bye Bye!',0,0,0,3,'example_escort SAY_WP_4'),
(-1999916,'How dare you leave me like that! I hate you! =*(',0,3,0,0,'example_escort SAY_DEATH_1'),
(-1999917,'...no...how could you let me die $N',0,0,0,0,'example_escort SAY_DEATH_2'),
(-1999918,'ugh...',0,0,0,0,'example_escort SAY_DEATH_3'),
(-1999919,'Taste death!',0,0,0,0,'example_escort SAY_SPELL'),
(-1999920,'Fireworks!',0,0,0,0,'example_escort SAY_RAND_1'),
(-1999921,'Hmm, I think I could use a buff.',0,0,0,0,'example_escort SAY_RAND_2'),
(-1999922,'Normal select, guess you\'re not interested.',0,0,0,0,'example_gossip_codebox SAY_NOT_INTERESTED'),
(-1999923,'Wrong!',0,0,0,0,'example_gossip_codebox SAY_WRONG'),
(-1999924,'You\'re right, you are allowed to see my inner secrets.',0,0,0,0,'example_gossip_codebox SAY_CORRECT'),
(-1999925,'Hi!',0,0,0,0,'example_areatrigger SAY_HI');

-- 1423_mangos_7290_01_world_command
DELETE FROM `command` WHERE `name` = 'npc setdeathstate';
INSERT INTO `command` VALUES
('npc setdeathstate',2,'Syntax: .npc setdeathstate on/off\r\n\r\nSet default death state (dead/alive) for npc at spawn.');

-- 1426_mangos_7292_01_world_points_of_interest
DROP TABLE IF EXISTS `points_of_interest`; 
CREATE TABLE `points_of_interest` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `icon` mediumint(8) unsigned NOT NULL default '0',
  `flags` mediumint(8) unsigned NOT NULL default '0',
  `data` mediumint(8) unsigned NOT NULL default '0',
  `icon_name` text NOT NULL,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 1426_mangos_7292_02_world_locales_points_of_interest
DROP TABLE IF EXISTS `locales_points_of_interest`; 
CREATE TABLE `locales_points_of_interest` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `icon_name_loc1` text,
  `icon_name_loc2` text,
  `icon_name_loc3` text,
  `icon_name_loc4` text,
  `icon_name_loc5` text,
  `icon_name_loc6` text,
  `icon_name_loc7` text,
  `icon_name_loc8` text,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 1463_mangos_7303_01_world_pools
DROP TABLE IF EXISTS `pool_creature`;
CREATE TABLE `pool_creature` (
  `guid` int(10) unsigned NOT NULL default '0',
  `pool_entry` mediumint(8) unsigned NOT NULL default '0',
  `chance` float unsigned NOT NULL default '0',
  PRIMARY KEY  (`pool_entry`,`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pool_gameobject`;
CREATE TABLE `pool_gameobject` (
  `guid` int(10) unsigned NOT NULL default '0',
  `pool_entry` mediumint(8) unsigned NOT NULL default '0',
  `chance` float unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`,`pool_entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pool_pool`;
CREATE TABLE `pool_pool` (
  `pool_id` mediumint(8) unsigned NOT NULL default '0',
  `mother_pool` mediumint(8) unsigned NOT NULL default '0',
  `chance` float NOT NULL default '0',
  PRIMARY KEY  (`pool_id`,`mother_pool`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pool_template`;
CREATE TABLE `pool_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Pool entry',
  `max_limit` int(10) unsigned NOT NULL default '0' COMMENT 'Max number of objects (0) is no limit',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `game_event_pool`;
CREATE TABLE `game_event_pool` (
  `pool_entry` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Id of the pool',
  `event` smallint(6) NOT NULL default '0' COMMENT 'Put negatives values to remove during event',
  PRIMARY KEY  (`pool_entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 1470_world_scripts
-- Remove script for quest 8346. Note support for this quest will be added in next ACID release(25)
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry` IN (15273,15274,15294,15298,15367);
UPDATE `creature_template` SET `ScriptName`='mob_broggok_poisoncloud' WHERE `entry`=17662;
-- UPDATE `creature_template` SET `ScriptName`='npc_draenei_survivor' WHERE `entry`=16483;

-- 1495_mangos_7312_01_world_trinity_string
DELETE FROM `trinity_string` WHERE entry = 810;
INSERT INTO `trinity_string` VALUES
(810,'|Hplayer:$N|h[$N]|h has earned the achievement $a!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 1525_world_scripts
-- Script for Yrykul Skeleton - Prince Keleseth Event
UPDATE `creature_template` SET `ScriptName`='mob_vrykul_skeleton' WHERE `entry`=23970;

-- 1555_mangos_7331_01_world_command
DELETE FROM `command` WHERE `name` = 'account set addon';
DELETE FROM `command` WHERE `name` = 'ban account';
DELETE FROM `command` WHERE `name` = 'ban character';
DELETE FROM `command` WHERE `name` = 'ban ip';
DELETE FROM `command` WHERE `name` = 'baninfo account';
DELETE FROM `command` WHERE `name` = 'baninfo character';
DELETE FROM `command` WHERE `name` = 'baninfo ip';
DELETE FROM `command` WHERE `name` = 'banlist account';
DELETE FROM `command` WHERE `name` = 'banlist character';
DELETE FROM `command` WHERE `name` = 'banlist ip';
DELETE FROM `command` WHERE `name` = 'gm fly';
/* next command deleted even in case it has been already corrected (trailing space) */
DELETE FROM `command` WHERE `name` = 'gobject near ';
DELETE FROM `command` WHERE `name` = 'gobject near';
DELETE FROM `command` WHERE `name` = 'lookup player account';
DELETE FROM `command` WHERE `name` = 'lookup player ip';
DELETE FROM `command` WHERE `name` = 'lookup player email';
DELETE FROM `command` WHERE `name` = 'modify money';
DELETE FROM `command` WHERE `name` = 'modify mount';
DELETE FROM `command` WHERE `name` = 'modify speed';
DELETE FROM `command` WHERE `name` = 'modify titles';
DELETE FROM `command` WHERE `name` = 'pdump write';
DELETE FROM `command` WHERE `name` = 'pdump load';
DELETE FROM `command` WHERE `name` = 'reset honor';
DELETE FROM `command` WHERE `name` = 'reset level';
DELETE FROM `command` WHERE `name` = 'reset spells';
DELETE FROM `command` WHERE `name` = 'reset stats';
DELETE FROM `command` WHERE `name` = 'reset talents';
DELETE FROM `command` WHERE `name` = 'unban account';
DELETE FROM `command` WHERE `name` = 'unban character';
DELETE FROM `command` WHERE `name` = 'unban ip';

INSERT INTO `command` VALUES
('account set addon',3,'Syntax: .account set addon [$account] #addon\r\n\r\nSet user (possible targeted) expansion addon level allowed. Addon values: 0 - normal, 1 - tbc, 2 - wotlk.'),
('ban account',3,'Syntax: .ban account $Name $bantime $reason\r\nBan account kick player.\r\n$bantime: negative value leads to permban, otherwise use a timestring like \"4d20h3s\".'),
('ban character',3,'Syntax: .ban character $Name $bantime $reason\r\nBan account and kick player.\r\n$bantime: negative value leads to permban, otherwise use a timestring like \"4d20h3s\".'),
('ban ip',3,'Syntax: .ban ip $Ip $bantime $reason\r\nBan IP.\r\n$bantime: negative value leads to permban, otherwise use a timestring like \"4d20h3s\".'),
('baninfo account',3,'Syntax: .baninfo account\r\nWatch full information about a specific ban.'),
('baninfo character',3,'Syntax: .baninfo character\r\nWatch full information about a specific ban.'),
('baninfo ip',3,'Syntax: .baninfo ip\r\nWatch full information about a specific ban.'),
('banlist account',3,'Syntax: .banlist account [$Name]\r\nSearches the banlist for a account name pattern or show full list account bans.'),
('banlist character',3,'Syntax: .banlist character $Name\r\nSearches the banlist for a character name pattern. Pattern required.'),
('banlist ip',3,'Syntax: .banlist ip [$Ip]\r\nSearches the banlist for a IP pattern or show full list of IP bans.'),
('gm fly',3,'Syntax: .gm fly [on/off]\r\nEnable/disable gm fly mode.'),
('gobject near',3,'Syntax: .gobject near  [#distance]\r\n\r\nOutput gameobjects at distance #distance from player. Output gameobject guids and coordinates sorted by distance from character. If #distance not provided use 10 as default value.'),
('lookup player account',2,'Syntax: .lookup player account $account ($limit) \r\n\r\n Searchs players, which account username is $account with optional parametr $limit of results.'),
('lookup player ip',2,'Syntax: .lookup player ip $ip ($limit) \r\n\r\n Searchs players, which account ast_ip is $ip with optional parametr $limit of results.'),
('lookup player email',2,'Syntax: .lookup player email $email ($limit) \r\n\r\n Searchs players, which account email is $email with optional parametr $limit of results.'),
('modify money',1,'Syntax: .modify money #money\r\n.money #money\r\n\r\nAdd or remove money to the selected player. If no player is selected, modify your money.\r\n\r\n #gold can be negative to remove money.'),
('modify mount',1,'Syntax: .modify mount #id #speed\r\nDisplay selected player as mounted at #id creature and set speed to #speed value.'),
('modify speed',1,'Syntax: .modify speed #rate\r\n.speed #rate\r\n\r\nModify the running speed of the selected player to \"normal base run speed\"*rate. If no player is selected, modify your speed.\r\n\r\n #rate may range from 0.1 to 10.'),
('modify titles',1,'Syntax: .modify titles #mask\r\n\r\nAllows user to use all titles from #mask.\r\n\r\n #mask=0 disables the title-choose-field'),
('pdump write',3,'Syntax: .pdump write $filename $playerNameOrGUID\r\nWrite character dump with name/guid $playerNameOrGUID to file $filename.'),
('pdump load',3,'Syntax: .pdump load $filename $account [$newname] [$newguid]\r\nLoad character dump from dump file into character list of $account with saved or $newname, with saved (or first free) or $newguid guid.'),
('reset honor',3,'Syntax: .reset honor [Playername]\r\n  Reset all honor data for targeted character.'),
('reset level',3,'Syntax: .reset level [Playername]\r\n  Reset level to 1 including reset stats and talents.  Equipped items with greater level requirement can be lost.'),
('reset spells',3,'Syntax: .reset spells [Playername]\r\n  Removes all non-original spells from spellbook.\r\n. Playername can be name of offline character.'),
('reset stats',3,'Syntax: .reset stats [Playername]\r\n  Resets(recalculate) all stats of the targeted player to their original VALUESat current level.'),
('reset talents',3,'Syntax: .reset talents [Playername]\r\n  Removes all talents of the targeted player. Playername can be name of offline character.'),
('unban account',3,'Syntax: .unban account $Name\r\nUnban accounts for account name pattern.'),
('unban character',3,'Syntax: .unban character $Name\r\nUnban accounts for character name pattern.'),
('unban ip',3,'Syntax : .unban ip $Ip\r\nUnban accounts for IP pattern.');

-- 1558_world_spell_linked_spell
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '44869' AND `spell_effect` = '-45018';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '46019' AND `spell_effect` = '-45018';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(44869, -45018, 1, 'Remove Arcane Buffet'),
(46019, -45018, 1, 'Remove Arcane Buffet');

-- 1559_world
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(48077, 48075, 0, 'Holy Nova (rank8)'),
(48078, 48076, 0, 'Holy Nova (rank9)'),
(47585, 60069, 0, 'Dispersion (transform/regen)');
DELETE FROM `spell_proc_event` WHERE `entry` IN (47549);
INSERT INTO `spell_proc_event` VALUES (47549, 0x00, 6, 0x00000000, 0x00000200, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (47551);
INSERT INTO `spell_proc_event` VALUES (47551, 0x00, 6, 0x00000000, 0x00000200, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (47552);
INSERT INTO `spell_proc_event` VALUES (47552, 0x00, 6, 0x00000000, 0x00000200, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

-- 1576_mangos_7332_01_world_command
DELETE FROM `command` WHERE `name` = 'distance';
INSERT INTO `command` VALUES
('distance',3,'Syntax: .distance [$name/$link]\r\n\r\nDisplay the distance from your character to the selected creature/player, or player with name $name, or player/creature/gameobject pointed to shift-link with guid.');

-- 1605_mangos_7349_01_world_spell_area
DROP TABLE IF EXISTS `spell_area`;
CREATE TABLE `spell_area` (
  `spell`              mediumint(8) unsigned NOT NULL default '0',
  `area`               mediumint(8) unsigned NOT NULL default '0',
  `quest_start`        mediumint(8) unsigned NOT NULL default '0',
  `quest_start_active` tinyint(1) unsigned NOT NULL default '0',
  `quest_end`          mediumint(8) unsigned NOT NULL default '0',
  `aura_spell`         mediumint(8) unsigned NOT NULL default '0',
  `racemask`           mediumint(8) unsigned NOT NULL default '0',
  `gender`             tinyint(1) unsigned NOT NULL default '2',
  `autocast`           tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`spell`,`area`,`quest_start`,`quest_start_active`,`aura_spell`,`racemask`,`gender`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 1613_world_scripts
-- Script for Skarvald and Dalronn
UPDATE `creature_template` SET `ScriptName`= 'boss_skarvald_the_constructor' WHERE `entry` IN (24200,27390);
UPDATE `creature_template` SET `ScriptName`= 'boss_dalronn_the_controller' WHERE `entry` IN (24201,27389);

-- 1618_world
-- Glyph of power word: shield
INSERT INTO `spell_proc_event` VALUES (55672, 0x00, 6, 0x00000001, 0x00000000, 0x00000000, 0x00004000, 0x00000000, 0.000000, 0.000000, 0);
-- Bloodsurge
DELETE FROM `spell_proc_event` WHERE `entry` IN (46915);
INSERT INTO `spell_proc_event` VALUES (46915, 0x00, 4, 0x00000040, 0x00000404, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);

-- 1646_mangos_7369_01_world_quest_template
ALTER TABLE quest_template
  DROP COLUMN ReqSourceRef1,
  DROP COLUMN ReqSourceRef2,
  DROP COLUMN ReqSourceRef3,
  DROP COLUMN ReqSourceRef4;

-- 1654_world
INSERT INTO `spell_proc_event` VALUES (17619, 0x00, 13, 0x00000000, 0x00000000, 0x00000000, 0x00008000, 0x00000000, 0.000000, 0.000000, 0);

-- 1657_world
DELETE FROM `trinity_string` WHERE `entry`=1010;
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES(1010, "|    Account    |       Character      |       IP        | GM | EXP |");

-- 1661_world
-- Death Strike
INSERT INTO `spell_proc_event` VALUES (45469, 0x00, 15, 0x00000010, 0x00000000, 0x00000000, 0x00000010, 0x00000000, 0.000000, 0.000000, 0);

-- 1663_mangos_7376_01_world_spell_area
ALTER TABLE spell_area
  CHANGE COLUMN `aura_spell`  `aura_spell` mediumint(8) NOT NULL default '0';

-- 1688_mangos_7382_01_world_creature_template
ALTER TABLE creature_template
  ADD COLUMN unk16 float NOT NULL default '1' AFTER InhabitType,
  ADD COLUMN unk17 float NOT NULL default '1' AFTER unk16;
  
-- 1693_world
-- Update Proc Rate
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES 
('60442', '0', '0', '0', '0', '0', '0', '0', '0', '0', '45'),
('57345', '0', '0', '0', '0', '0', '0', '0', '0', '0', '45'),
('61356', '0', '0', '0', '0', '0', '0', '0', '0', '0', '45'),
('54707', '0', '0', '0', '0', '0', '0', '0', '0', '0', '60'),
('54808', '0', '0', '0', '0', '0', '0', '0', '0', '0', '60');
-- Update Spell Coefficients 
DELETE FROM `spell_bonus_data` WHERE `entry` IN ('689', '18790', '172', '42223', '42224', '42225', '42226', '42218', '47817', '47818', '1949', '5857', '11681', '11682', '27214', '47822', '27243', '30108', '17962', '6789', '48181', '29722', '5676', '686', '17877', '30283', '1120', '30294', '44425', '42208', '42209', '42210', '42211', '42212', '42213', '42198', '42937', '42938', '11113', '31661', '120', '19750', '635', '25914', '25913', '25903', '27175', '33074', '48820', '48821', '58597', '31803', '53742', '31893', '32221', '53719', '53718', '20167', '20424', '31804', '53733', '31898', '32220', '53726', '53725', '20267', '20187', '20467', '53600', '596', '2944', '8092', '27813', '27817', '27818', '33619');
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `comments`) VALUES
('689', '0', '0.143', '0', 'Warlock - Drain Life'),
('18790', '0', '0', '0','Warlock - Fel Stamina'),
('172', '0', '0.2', '0', 'Warlock - Corruption'),
('42223', '0.6932', '0', '0', 'Warlock - Rain of Fire Triggered Rank 1'),
('42224', '0.6932', '0', '0', 'Warlock - Rain of Fire Triggered Rank 2'),
('42225', '0.6932', '0', '0', 'Warlock - Rain of Fire Triggered Rank 3'),
('42226', '0.6932', '0', '0', 'Warlock - Rain of Fire Triggered Rank 4'),
('42218', '0.6932', '0', '0', 'Warlock - Rain of Fire Triggered Rank 5'),
('47817', '0.6932', '0', '0', 'Warlock - Rain of Fire Triggered Rank 6'),
('47818', '0.6932', '0', '0', 'Warlock - Rain of Fire Triggered Rank 7'),
('1949', '0', '0.0949', '0', 'Warlock - Hellfire'),
('5857', '0.1427', '0', '0', 'Warlock - Hellfire Effect on Enemy Rank 1'),
('11681', '0.1427', '0', '0', 'Warlock - Hellfire Effect on Enemy Rank 2'),
('11682', '0.1427', '0', '0', 'Warlock - Hellfire Effect on Enemy Rank 3'),
('27214', '0.1427', '0', '0', 'Warlock - Hellfire Effect on Enemy Rank 4'),
('47822', '0.1427', '0', '0', 'Warlock - Hellfire Effect on Enemy Rank 5'),
('27243', '0.2129', '0.25', '0', 'Warlock - Seed of Corruption'),
('30108', '0', '0.2', '0', 'Warlock - Unstable Affliction'),
('17962', '0.4293', '0', '0', 'Warlock - Conflagrate'),
('6789', '0.214', '0', '0', 'Warlock - Death Coil'),
('48181', '0.4793', '0', '0', 'Warlock - Haunt'),
('29722', '0.7139', '0', '0', 'Warlock - Incinerate'),
('5676', '0.4293', '0', '0', 'Warlock - Searing Pain'),
('686', '0.8569', '0', '0', 'Warlock - Shadow Bolt'),
('17877', '0.4293', '0', '0', 'Warlock - Shadowburn'),
('30283', '0.1932', '0', '0', 'Warlock - Shadowfury'),
('1120', '0', '0.429', '0', 'Warlock - Drain Soul'),
('30294', '0', '0', '0', 'Warlock - Soul Leech'),
('44425', '0.7143', '0', '0', 'Mage - Arcane Barrage'),
('42208', '0.1437', '0', '0', 'Mage - Blizzard Triggered Spell Rank 1'),
('42209', '0.1437', '0', '0', 'Mage - Blizzard Triggered Spell Rank 2'),
('42210', '0.1437', '0', '0', 'Mage - Blizzard Triggered Spell Rank 3'),
('42211', '0.1437', '0', '0', 'Mage - Blizzard Triggered Spell Rank 4'),
('42212', '0.1437', '0', '0', 'Mage - Blizzard Triggered Spell Rank 5'),
('42213', '0.1437', '0', '0', 'Mage - Blizzard Triggered Spell Rank 6'),
('42198', '0.1437', '0', '0', 'Mage - Blizzard Triggered Spell Rank 7'),
('42937', '0.1437', '0', '0', 'Mage - Blizzard Triggered Spell Rank 8'),
('42938', '0.1437', '0', '0', 'Mage - Blizzard Triggered Spell Rank 9'),
('11113', '0.1936', '0', '0', 'Mage - Blast Wave Rank'),
('31661', '0.1936', '0', '0', 'Mage - Dragons Breath'),
('120', '0.214', '0', '0', 'Mage - Cone of Cold'),
('19750', '1', '0', '0', 'Paladin - Flash of Light'),
('635', '1.66', '0', '0', 'Paladin - Holy Light'),
('25914', '0.81', '0', '0', 'Paladin - Holy Shock Triggered Heal Rank 1'),
('25913', '0.81', '0', '0', 'Paladin - Holy Shock Triggered Heal Rank 2'),
('25903', '0.81', '0', '0', 'Paladin - Holy Shock Triggered Heal Rank 3'),
('27175', '0.81', '0', '0', 'Paladin - Holy Shock Triggered Heal Rank 4'),
('33074', '0.81', '0', '0', 'Paladin - Holy Shock Triggered Heal Rank 5'),
('48820', '0.81', '0', '0', 'Paladin - Holy Shock Triggered Heal Rank 6'),
('48821', '0.81', '0', '0', 'Paladin - Holy Shock Triggered Heal Rank 7'),
('58597', '0.75', '0', '0', 'Paladin - Sacred Shield'),
('31803', '0', '0.018', '0.03', 'Paladin - Holy Vengeance'),
('53742', '0', '0.018', '0.03', 'Paladin - Blood Corruption'),
('31893', '0', '0', '0', 'Paladin - Seal of Blood Enemy Proc'),
('32221', '0', '0', '0', 'Paladin - Seal of Blood Self Proc'),
('53719', '0', '0', '0', 'Paladin - Seal of The Martyr Enemy Proc'),
('53718', '0', '0', '0', 'Paladin - Seal of The Martyr Self Proc'),
('20167', '0.15', '0', '0.15', 'Paladin - Seal of Light Proc'),
('20424', '0.1035', '0', '0', 'Paladin - Seal of Command Proc'),
('31804', '0.22', '0', '0.14', 'Paladin - Judgement of Vengeance'),
('53733', '0.22', '0', '0.14', 'Paladin - Judgement of Corruption'),
('31898', '0.25', '0', '0.16', 'Paladin - Judgement of Blood Enemy'),
('32220', '0', '0', '0', 'Paladin - Judgement of Blood Self'),
('53726', '0.25', '0', '0.16', 'Paladin - Judgement of the Martyr Enemy'),
('53725', '0', '0', '0', 'Paladin - Judgement of the Martyr Self'),
('20267', '0.1', '0', '0.1', 'Paladin - Judgement of Light Proc'),
('20187', '0.4', '0', '0.25', 'Paladin - Judgement of Righteousness'),
('20467', '0.25', '0', '0.16', 'Paladin - Judgement of Command'),
('53600', '0', '0', '0', 'Paladin - Shield of Righteousness'),
('596', '0.8068', '0', '0', 'Priest - Prayer of Healing'),
('2944', '0.8149', '0', '0', 'Priest - Devouring Plague'),
('8092', '0.428', '0', '0', 'Priest - Mind Blast'),
('27813', '0', '0', '0', 'Priest - Blessed Recovery Rank 1'),
('27817', '0', '0', '0', 'Priest - Blessed Recovery Rank 2'),
('27818', '0', '0', '0', 'Priest - Blessed Recovery Rank 3'),
('33619', '0', '0', '0', 'Priest - Reflective Shield');

-- 1694_world
-- Sanctified Wrath
INSERT INTO `spell_proc_event` VALUES (57318, 0x00, 10, 0x00000000, 0x00002000, 0x00000000, 0x00004000, 0x00000000, 0.000000, 0.000000, 6);
INSERT INTO `spell_proc_event` VALUES (53375, 0x00, 10, 0x00000000, 0x00002000, 0x00000000, 0x00004000, 0x00000000, 0.000000, 0.000000, 6);
-- Star Sinner
DELETE FROM `spell_proc_event` WHERE `entry` IN (54738);
INSERT INTO `spell_proc_event`  VALUES (54738, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 45);
-- Tentacles
DELETE FROM `spell_proc_event` WHERE `entry` IN (61618);
INSERT INTO `spell_proc_event`  VALUES (61618, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45);
-- Demonic Sacrifice
DELETE FROM `spell_bonus_data` WHERE `entry` = 18790;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`comments`) VALUES
('18790','0','0','0','Warlock - Fel Stamina');

-- 1697_mangos_7388_01_world_trinity_string
DELETE FROM `trinity_string` WHERE `entry` IN (750,751);
INSERT INTO `trinity_string` VALUES
(750,'Not enough players. This game will close in %u mins.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(751,'Not enough players. This game will close in %u seconds.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 1703_world
DROP TABLE IF EXISTS `access_requirement`;
CREATE TABLE `access_requirement` (
  `id` bigint(20) unsigned NOT NULL COMMENT 'Identifier',
  `level_min` tinyint(3) unsigned NOT NULL default '0',
  `level_max` tinyint(3) unsigned NOT NULL default '0',
  `item` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `item2` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `heroic_key` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `heroic_key2` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `quest_done` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `quest_failed_text` TEXT NULL DEFAULT NULL,
  `heroic_quest_done` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `heroic_quest_failed_text` TEXT NULL DEFAULT NULL,
  `comment` TEXT NULL DEFAULT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Access Requirements';

ALTER TABLE `instance_template`
 DROP COLUMN `levelMin`,
 DROP COLUMN `levelMax`,
 ADD COLUMN `access_id` bigint(20) unsigned NOT NULL DEFAULT '0' AFTER `reset_delay`;

ALTER TABLE `areatrigger_teleport`
 DROP COLUMN `required_level`,
 DROP COLUMN `required_item`,
 DROP COLUMN `required_item2`,
 DROP COLUMN `heroic_key`,
 DROP COLUMN `heroic_key2`,
 DROP COLUMN `heroic_required_quest_done`,
 DROP COLUMN `heroic_required_failed_quest_text`,
 DROP COLUMN `required_quest_done`,
 DROP COLUMN `required_failed_text`,
 ADD COLUMN `access_id` bigint(20) unsigned NOT NULL DEFAULT '0' AFTER `name`;

INSERT INTO `access_requirement` VALUES
('1','10','0','0','0','0','0','0',NULL,'0',NULL,'instance Shadowfang Keep (33)'),
('2','15','0','0','0','0','0','0',NULL,'0',NULL,'instance The Stockade (34)'),
('3','10','0','0','0','0','0','0',NULL,'0',NULL,'instance The Deadmines (36)'),
('4','10','0','0','0','0','0','0',NULL,'0',NULL,'instance Wailing Caverns (43)'),
('5','15','0','0','0','0','0','0',NULL,'0',NULL,'instance Razorfen Kraul (47)'),
('6','10','0','0','0','0','0','0',NULL,'0',NULL,'instance Blackfathom Deeps (48)'),
('7','30','0','0','0','0','0','0',NULL,'0',NULL,'instance Uldaman (70)'),
('8','15','0','0','0','0','0','0',NULL,'0',NULL,'instance Gnomeregan (90)'),
('9','35','0','0','0','0','0','0',NULL,'0',NULL,'instance Sunken Temple (109)'),
('10','25','0','0','0','0','0','0',NULL,'0',NULL,'instance Razorfen Downs (129)'),
('11','20','0','0','0','0','0','0',NULL,'0',NULL,'instance Scarlet Monastery (189)'),
('12','35','0','0','0','0','0','0',NULL,'0',NULL,'instance Zul\'Farrak (209)'),
('13','45','0','0','0','0','0','0',NULL,'0',NULL,'instance Blackrock Spire (229)'),
('14','40','0','0','0','0','0','0',NULL,'0',NULL,'instance Blackrock Depths (230)'),
('15','55','0','16309','0','0','0','0',NULL,'0',NULL,'instance Onyxia\'s Lair (249)'),
('16','66','0','0','0','30635','0','10285','You can\'t enter Black Morass until you rescue Thrall from Durnholde Keep.','0',NULL,'instance The Black Morass (269)'),
('17','45','0','13704','0','0','0','0',NULL,'0',NULL,'instance Scholomance (289)'),
('18','50','0','0','0','0','0','0',NULL,'0',NULL,'instance Zul\'Gurub (309)'),
('19','45','0','0','0','0','0','0',NULL,'0',NULL,'instance Stratholme (329)'),
('20','30','0','0','0','0','0','0',NULL,'0',NULL,'instance Maraudon (349)'),
('21','8','0','0','0','0','0','0',NULL,'0',NULL,'instance Ragefire Chasm (389)'),
('22','50','0','0','0','0','0','7487',NULL,'0',NULL,'instance Molten Core (409)'),
('23','45','0','0','0','0','0','0',NULL,'0',NULL,'instance Dire Maul (429)'),
('24','60','0','0','0','0','0','7761',NULL,'0',NULL,'instance Blackwing Lair (469)'),
('25','60','0','0','0','0','0','0',NULL,'0',NULL,'instance Ruins of Ahn\'Qiraj (509)'),
('26','60','0','0','0','0','0','0',NULL,'0',NULL,'instance Temple of Ahn\'Qiraj (531)'),
('27','68','0','0'/*'24490'*/,'0','0','0','0',NULL,'0',NULL,'instance Karazhan (532)'),
('28','60','0','0','0','0','0','0',NULL,'0',NULL,'instance Naxxramas (533)'),
('29','70','0','0','0','0','0','10445',NULL,'0',NULL,'instance Hyjal Summit (534)'),
('30','55','0','0'/*'28395'*/,'0','30637','30622','0',NULL,'0',NULL,'instance The Shattered Halls (540)'),
('31','55','0','0','0','30637','30622','0',NULL,'0',NULL,'instance The Blood Furnace (542)'),
('32','55','0','0','0','30637','30622','0',NULL,'0',NULL,'instance Hellfire Ramparts (543)'),
('33','65','0','0','0','0','0','0',NULL,'0',NULL,'instance Magtheridon\'s Lair (544)'),
('34','55','0','0','0','30623','0','0',NULL,'0',NULL,'instance The Steamvault (545)'),
('35','55','0','0','0','30623','0','0',NULL,'0',NULL,'instance The Underbog (546)'),
('36','55','0','0','0','30623','0','0',NULL,'0',NULL,'instance The Slave Pens (547)'),
('37','70','0','0','0','0','0','0'/*'10901'*/,NULL,'0',NULL,'instance Serpentshrine Cavern (548)'),
('38','70','0','0'/*'31704'*/,'0','0','0','0',NULL,'0',NULL,'instance The Eye (550)'),
('39','68','0','0'/*'31084'*/,'0','30634','0','0',NULL,'0',NULL,'instance The Arcatraz (552)'),
('40','68','0','0','0','30634','0','0',NULL,'0',NULL,'instance The Botanica (553)'),
('41','68','0','0','0','30634','0','0',NULL,'0',NULL,'instance The Mechanar (554)'),
('42','65','0','27991','0','30633','0','0',NULL,'0',NULL,'instance Shadow Labyrinth (555)'),
('43','55','0','0','0','30633','0','0',NULL,'0',NULL,'instance Sethekk Halls (556)'),
('44','55','0','0','0','30633','0','0',NULL,'0',NULL,'instance Mana-Tombs (557)'),
('45','55','0','0','0','30633','0','0',NULL,'0',NULL,'instance Auchenai Crypts (558)'),
('46','66','0','0','0','30635','0','0',NULL,'0',NULL,'instance Old Hillsbrad Foothills (560)'),
('47','70','0','32649','0','0','0','0',NULL,'0',NULL,'instance Black Temple (564)'),
('48','65','0','0','0','0','0','0',NULL,'0',NULL,'instance Gruul\'s Lair (565)'),
('49','70','0','0','0','0','0','0',NULL,'0',NULL,'instance Zul\'Aman (568)'),
('50','70','0','0','0','0','0','0',NULL,'0',NULL,'instance Sunwell Plateau (580)'),
('51','70','0','0','0','0','0','0',NULL,'11492','Heroic Difficulty requires completion of the "Hard to Kill" quest.','instance Magisters\' Terrace (585)'),
('52','58','0','0','0','0','0','0',NULL,'0',NULL,'Dark Portal');
UPDATE `instance_template` SET `access_id` = '1' WHERE `map` = '33';
UPDATE `instance_template` SET `access_id` = '2' WHERE `map` = '34';
UPDATE `instance_template` SET `access_id` = '3' WHERE `map` = '36';
UPDATE `instance_template` SET `access_id` = '4' WHERE `map` = '43';
UPDATE `instance_template` SET `access_id` = '5' WHERE `map` = '47';
UPDATE `instance_template` SET `access_id` = '6' WHERE `map` = '48';
UPDATE `instance_template` SET `access_id` = '7' WHERE `map` = '70';
UPDATE `instance_template` SET `access_id` = '8' WHERE `map` = '90';
UPDATE `instance_template` SET `access_id` = '9' WHERE `map` = '109';
UPDATE `instance_template` SET `access_id` = '10' WHERE `map` = '129';
UPDATE `instance_template` SET `access_id` = '11' WHERE `map` = '189';
UPDATE `instance_template` SET `access_id` = '12' WHERE `map` = '209';
UPDATE `instance_template` SET `access_id` = '13' WHERE `map` = '229';
UPDATE `instance_template` SET `access_id` = '14' WHERE `map` = '230';
UPDATE `instance_template` SET `access_id` = '15' WHERE `map` = '249';
UPDATE `instance_template` SET `access_id` = '16' WHERE `map` = '269';
UPDATE `instance_template` SET `access_id` = '17' WHERE `map` = '289';
UPDATE `instance_template` SET `access_id` = '18' WHERE `map` = '309';
UPDATE `instance_template` SET `access_id` = '19' WHERE `map` = '329';
UPDATE `instance_template` SET `access_id` = '20' WHERE `map` = '349';
UPDATE `instance_template` SET `access_id` = '21' WHERE `map` = '389';
UPDATE `instance_template` SET `access_id` = '22' WHERE `map` = '409';
UPDATE `instance_template` SET `access_id` = '23' WHERE `map` = '429';
UPDATE `instance_template` SET `access_id` = '24' WHERE `map` = '469';
UPDATE `instance_template` SET `access_id` = '25' WHERE `map` = '509';
UPDATE `instance_template` SET `access_id` = '26' WHERE `map` = '531';
UPDATE `instance_template` SET `access_id` = '27' WHERE `map` = '532';
UPDATE `instance_template` SET `access_id` = '28' WHERE `map` = '533';
UPDATE `instance_template` SET `access_id` = '29' WHERE `map` = '534';
UPDATE `instance_template` SET `access_id` = '30' WHERE `map` = '540';
UPDATE `instance_template` SET `access_id` = '31' WHERE `map` = '542';
UPDATE `instance_template` SET `access_id` = '32' WHERE `map` = '543';
UPDATE `instance_template` SET `access_id` = '33' WHERE `map` = '544';
UPDATE `instance_template` SET `access_id` = '34' WHERE `map` = '545';
UPDATE `instance_template` SET `access_id` = '35' WHERE `map` = '546';
UPDATE `instance_template` SET `access_id` = '36' WHERE `map` = '547';
UPDATE `instance_template` SET `access_id` = '37' WHERE `map` = '548';
UPDATE `instance_template` SET `access_id` = '38' WHERE `map` = '550';
UPDATE `instance_template` SET `access_id` = '39' WHERE `map` = '552';
UPDATE `instance_template` SET `access_id` = '40' WHERE `map` = '553';
UPDATE `instance_template` SET `access_id` = '41' WHERE `map` = '554';
UPDATE `instance_template` SET `access_id` = '42' WHERE `map` = '555';
UPDATE `instance_template` SET `access_id` = '43' WHERE `map` = '556';
UPDATE `instance_template` SET `access_id` = '44' WHERE `map` = '557';
UPDATE `instance_template` SET `access_id` = '45' WHERE `map` = '558';
UPDATE `instance_template` SET `access_id` = '46' WHERE `map` = '560';
UPDATE `instance_template` SET `access_id` = '47' WHERE `map` = '564';
UPDATE `instance_template` SET `access_id` = '48' WHERE `map` = '565';
UPDATE `instance_template` SET `access_id` = '49' WHERE `map` = '568';
UPDATE `instance_template` SET `access_id` = '50' WHERE `map` = '580';
UPDATE `instance_template` SET `access_id` = '51' WHERE `map` = '585';
UPDATE `areatrigger_teleport` SET `access_id` = '52' WHERE `id` IN ('4352','4354');

-- 1709_mangos_7393_01_world_game_event
ALTER TABLE `game_event`
  ADD COLUMN `holiday` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Client side holiday id' AFTER `length`;
  
-- 1724_mangos_7399_01_world_trinity_string
DELETE FROM `trinity_string` WHERE `entry` IN (753, 754, 755);
INSERT INTO `trinity_string` VALUES
(753,'The battle for Warsong Gulch begins in 2 minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(754,'The battle for Arathi Basin begins in 2 minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(755,'The battle for Eye of the Storm begins in 2 minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 1727_world
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (42857,1,23954);

-- 1727_world_script
UPDATE `creature_template` SET `ScriptName`='boss_ingvar_the_plunderer' WHERE `entry`=23954;
UPDATE `creature_template` SET `ScriptName`='mob_annhylde_the_caller' WHERE `entry`=24068;
UPDATE `creature_template` SET `ScriptName`='mob_ingvar_throw_dummy' WHERE `entry`=23997;

-- 1729_world
-- Judgements of the Wise
REPLACE INTO `spell_proc_event` VALUES (31876, 0x00, 10, 0x20180400, 0x0000008, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);
REPLACE INTO `spell_proc_event` VALUES (31877, 0x00, 10, 0x20180400, 0x0000008, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);
REPLACE INTO `spell_proc_event` VALUES (31878, 0x00, 10, 0x20180400, 0x0000008, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

-- 1730_world
-- Faerie fire
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `comments`) VALUES ('60089', '0', '0', '0.05', 'Druid - Faerie Fire (Bear Form)');
-- Glyph of Devastate
INSERT INTO `spell_proc_event` VALUES (58388, 0x00, 4, 0x00000040, 0x00000000, 0x00000000, 0x00000110, 0x00000000, 0.000000, 0.000000, 0);