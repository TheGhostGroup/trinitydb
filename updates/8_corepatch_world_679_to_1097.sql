-- World SQL file: 679_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='npc_deathstalker_erland' WHERE `entry`=1978;

-- World SQL file: 683_world_scripts.sql
UPDATE `quest_template` SET `SpecialFlags`=2 WHERE `entry`=665;
UPDATE `creature_template` SET `ScriptName`='npc_professor_phizzlethorpe' WHERE `entry`=2768;

-- World SQL file: 686_world_scripts.sql
UPDATE `creature_template` SET `Scriptname`='npc_willix' WHERE `entry`=4508;
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1047010 and -1047000;
INSERT INTO `script_texts` (entry, content_default, sound, type, language, comment) VALUES
(-1047000, 'Phew! Finally,out here. However, it will not become easy. Detain your eyes after annoyance.', 0, 0, 0, 'Willix'),
(-1047001, 'There on top resides Charlga Razorflank. The damned old Crone.', 0, 0, 0, 'Willix'),
(-1047002, 'Help! Get this Raging Agam\'ar from me!', 0, 0, 0, 'Willix'),
(-1047003, 'In this ditch there are Blueleaf Tuber! As if the gold waited only to be dug out, I say it you!', 0, 0, 0, 'Willix'),
(-1047004, 'Danger is behind every corner.', 0, 0, 0, 'Willix'),
(-1047005, 'I do not understand how these disgusting animals can live at such a place.... puh as this stinks!', 0, 0, 0, 'Willix'),
(-1047006, 'I think, I see a way how we come out of this damned thorn tangle.', 0, 0, 0, 'Willix'),
(-1047007, 'I am glad that we are out again from this damned ditch. However, up here it is not much better!', 0, 0, 0, 'Willix'),
(-1047008, 'Finally! I am glad that I come, finally out here.', 0, 0, 0, 'Willix'),
(-1047009, 'I will rather rest a moment and come again to breath, before I return to Ratchet.', 0, 0, 0, 'Willix'),
(-1047010, 'Many thanks for your help.', 0, 0, 0, 'Willix');

-- World SQL file: 691_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='npc_earthmender_wilda' WHERE `entry`=21027;

-- World SQL file: 692_world.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN ('38164','14144','14148');
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
('38164','0','0','0','0','1','0','0','60'),
('14144','0','0','0','2','0','0','0','0'),
('14148','0','0','0','2','0','0','0','0');

-- World SQL file: 708_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='boss_shirrak_the_dead_watcher' WHERE `entry`=18371;
UPDATE `creature_template` SET `ScriptName`='mob_focus_fire' WHERE `entry`=18374;

-- World SQL file: 722_world_scripts.sql
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000146 AND -1000140;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1000140,'Let\'s go.',0,0,1,'lilatha SAY_START'),
(-1000141,'$N, let\'s use the antechamber to the right.',0,0,1,'lilatha SAY_PROGRESS1'),
(-1000142,'I can see the light at the end of the tunnel!',0,0,1,'lilatha SAY_PROGRESS2'),
(-1000143,'There\'s Farstrider Enclave now, $C. Not far to go... Look out! Troll ambush!!',0,0,1,'lilatha SAY_PROGRESS3'),
(-1000144,'Thank you for saving my life and bringing me back to safety, $N',0,0,1,'lilatha SAY_END1'),
(-1000145,'Captain Helios, I\'ve been rescued from the Amani Catacombs. Reporting for duty, sir!',0,0,1,'lilatha SAY_END2'),
(-1000146,'Liatha, get someone to look at those injuries. Thank you for bringing her back safely.',0,0,1,'lilatha CAPTAIN_ANSWER');

-- World SQL file: 724_world.sql
ALTER TABLE `custom_texts` ADD COLUMN `emote` tinyint(3) UNSIGNED DEFAULT '0' NOT NULL AFTER `language`;
ALTER TABLE `eventai_texts` ADD COLUMN `emote` tinyint(3) UNSIGNED DEFAULT '0' NOT NULL AFTER `language`;
ALTER TABLE `script_texts` ADD COLUMN `emote` tinyint(3) UNSIGNED DEFAULT '0' NOT NULL AFTER `language`;

-- World SQL file: 725_world.sql
DELETE FROM `trinity_string` WHERE `entry` IN (290,296,289);  
DELETE FROM `trinity_string` WHERE `entry` BETWEEN 2000 AND 2016;
INSERT INTO trinity_string (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES 
(2000, '|cff00ff00New ticket from|r|cffff00ff %s.|r |cff00ff00Ticket entry:|r|cffff00ff %d.|r', '', '', '', '', '', '', '', ''), 
(2001, '|cff00ff00Character|r|cffff00ff %s |r|cff00ff00edited his/her ticket:|r|cffff00ff %d.|r', '', '', '', '', '', '', '', ''), 
(2002, '|cff00ff00Character|r|cffff00ff %s |r|cff00ff00abandoned ticket entry:|r|cffff00ff %d.|r', '', '', '', '', '', '', '', ''), 
(2003, '|cffff00ff %s|r |cff00ff00closed ticket|r |cffff00ff %d.|r', '', '', '', '', '', '', '', ''), 
(2004, 'Ticket %d permanently deleted by %s.', '', '', '', '', '', '', '', ''), 
(2005, 'Ticket not found.', '', '', '', '', '', '', '', ''), 
(2007, 'Please close ticket before deleting it permanently.', '', '', '', '', '', '', '', ''), 
(2008, 'Ticket %d is already assigned to GM %s.', '', '', '', '', '', '', '', ''), 
(2009, '%u Tickets succesfully reloaded from the database.', '', '', '', '', '', '', '', ''), 
(2010, 'Showing list of open tickets.', '', '', '', '', '', '', '', ''), 
(2011, 'Showing list of open tickets whose creator is online.', '', '', '', '', '', '', '', ''), 
(2012, 'Invalid name specified. Name should be that of an online Gamemaster.', '', '', '', '', '', '', '', ''), 
(2013, 'This ticket is already assigned to yourself. To unassign use .ticket unassign %d and then reassign.', '', '', '', '', '', '', '', ''), 
(2014, 'Ticket %d is not assigned, you cannot unassign it.', '', '', '', '', '', '', '', ''), 
(2015, 'You cannot unassign tickets from staffmembers with a higher security level than yourself.', '', '', '', '', '', '', '', ''), 
(2016, 'Cannot close ticket %d, it is assigned to another GM.', '', '', '', '', '', '', '', ''); 
DELETE FROM `command` WHERE (`name` LIKE '%ticket%');
INSERT INTO `command` (`name`,`security`,`help`) VALUES 
('ticket list','1','Displays a list of open GM tickets.'),
('ticket onlinelist','1','Displays a list of open GM tickets whose owner is online.'),
('ticket viewname','1','Usage: .ticket viewname $creatorname. \r\nReturns details about specified ticket. Ticket must be open and not deleted.'),
('ticket viewid','1','Usage: .ticket viewid $ticketid.\r\nReturns details about specified ticket. Ticket must be open and not deleted.'),
('ticket close','2','Usage: .ticket close $ticketid.\r\nCloses the specified ticket. Does not delete permanently.'),
('ticket delete','3','Usage: .ticket delete $ticketid.\r\nDeletes the specified ticket permanently. Ticket must be closed first.'),
('ticket assign','3','Usage: .ticket assign $ticketid $gmname.\r\nAssigns the specified ticket to the specified Game Master.'),
('ticket unassign','3','Usage: .ticket unassign $ticketid.\r\nUnassigns the specified ticket from the current assigned Game Master.'),
('ticket comment','2','Usage: .ticket comment $ticketid $comment.\r\nAllows the adding or modifying of a comment to the specified ticket.'),
('reload tickets','4','Usage: .reload tickets.\r\nReloads GM Tickets from the database and re-caches them into memory.');

-- World SQL file: 728_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='npc_apprentice_mirveda' WHERE `entry`=15402;

-- World SQL file: 747_world.sql
UPDATE `trinity_string` SET `content_default`='Ticket %d is already assigned.' WHERE `entry`=2008;

-- World SQL file: 748_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='npc_infused_crystal' WHERE `entry`=16364;
UPDATE `creature_template` SET `flags_extra`=0 WHERE `entry`=16364;
DELETE FROM `creature` WHERE `id`=17086;

-- World SQL file: 758_world_scripts.sql
DELETE FROM `creature_template_addon` WHERE `entry`=17225;
UPDATE `creature_template` SET `ScriptName`='boss_nightbane' WHERE `entry`=17225;
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry`=17225;
DELETE FROM `event_scripts` WHERE `id`=10951;
INSERT INTO `event_scripts` VALUES
(10951,0,10,17651,180000,0,-11159,-1907.22,91.48,0);

-- World SQL file: 762_world.sql
DROP TABLE IF EXISTS `transport_events`;
CREATE TABLE `transport_events` (
 	`entry` int(11) unsigned NOT NULL default '0',
	`waypoint_id` int(11) unsigned NOT NULL default '0',	
  `event_id` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- World SQL file: 765_world_scripts.sql
UPDATE `creature_template` SET `flags_extra`=0 WHERE `entry`=20129;
-- Insert English and French dialogs in database
DELETE FROM `script_texts` WHERE entry BETWEEN -1000163 and -1000150;
INSERT INTO `script_texts` (`entry`, `content_default`, `content_loc2`, `type`, `language`, `comment`) VALUES
(-1000150, 'Greetings, $N. I will guide you through the cavern. Please try and keep up.', 'Salutations, $N. Je vais vous guider à travers cette grotte. Veuillez me suivre.', 4, 0, 'WHISPER_CUSTODIAN_1'),
(-1000151, 'We do not know if the Caverns of Time have always been accessible to mortals. Truly, it is impossible to tell as the Timeless One is in perpetual motion, changing our timeways as he sees fit. What you see now may very well not exist tomorrow. You may wake up and have no memory of this place.', 'Nous ne savons pas si les Grottes du Temps ont toujours été accessibles aux mortels. Vraiment, c\'est impossible à dire étant donné que l\'Intemporel est en mouvement perpétuel, changeant nos spirales temporelles comme bon lui semble. Ce que vous voyez aujourd\'hui peut très bien ne plus exister demain. Vous pourriez vous réveiller sans aucun souvenir de cet endroit.', 4, 0, 'WHISPER_CUSTODIAN_2'),
(-1000152, 'It is strange, I know... Most mortals cannot actually comprehend what they see here, as often, what they see is not anchored within their own perception of reality.', 'C\'est étrange, je sais... La plupart des mortels ne peuvent pas réellement comprendre ce qu\ils voient ici, comme souvent, ce qu\'ils voient n\'est pas ancré dans leur propre perception de la réalité.', 4, 0, 'WHISPER_CUSTODIAN_3'),
(-1000153, 'Follow me, please.', 'Veuillez me suivre.', 4, 0, 'WHISPER_CUSTODIAN_4'),
(-1000154, 'There are only two truths to be found here: First, that time is chaotic, always in flux, and completely malleable and second, perception does not dictate reality.', 'Il n\'y a que deux vérités qui peuvent être trouvées ici : premièrement, ce temps est chaotique, toujours en mouvement, et complètement malléable, et ensuite, la perception ne détermine pas la réalité.', 4, 0, 'WHISPER_CUSTODIAN_5'),
(-1000155, 'As custodians of time, we watch over and care for Nozdormu\'s realm. The master is away at the moment, which means that attempts are being made to dramatically alter time. The master never meddles in the affairs of mortals but instead corrects the alterations made to time by others. He is reactionary in this regard.', 'En tant que protecteurs du temps, nous observons et veillons sur le royaume de Nozdormu. Le maître est absent en ce moment, ce qui signifie que des tentatives sont faites pour altérer fortement le temps. Le maître ne se mêle jamais des affaires des mortels mais il corrige les altérations faites au temps par d\'autres. Il est réactionnaire à cet égard.', 4, 0, 'WHISPER_CUSTODIAN_6'),
(-1000156, 'For normal maintenance of time, the Keepers of Time are sufficient caretakers. We are able to deal with most ordinary disturbances. I speak of little things, such as rogue mages changing something in the past to elevate their status or wealth in the present.', 'Pour le maintien normal du temps, les Gardiens du temps suffisent à la tâche. Nous sommes capables de gérer les perturbations les plus ordinaires. Je parle de petites choses, comme des mages voleurs qui changent quelque chose dans le passé pour élever leur statut ou leur richesse dans le présent.', 4, 0, 'WHISPER_CUSTODIAN_7'),
(-1000157, 'These tunnels that you see are called timeways. They are infinite in number. The ones that currently exist in your reality are what the master has deemed as \'trouble spots.\' These trouble spots may differ completely in theme but they always share a cause. That is, their existence is a result of the same temporal disturbance. Remember that should you venture inside one...', 'Ces tunnels que vous voyez sont appelés Voies Temporelles. Leur nombre est infini. Ceux qui existent actuellement dans votre réalité sont ceux que le maître a considérés comme \'points sensibles\'. Ces points sensibles peuvent différer complètement de part leur thème, mais partagent toujours une cause. C\'est-à-dire, leur existence est le résultat des mêmes perturbations temporelles. Rappelez-vous en si vous osez vous aventurer dans l\'un d\'eux...', 4, 0, 'WHISPER_CUSTODIAN_8'),
(-1000158, 'This timeway is in great disarray! We have agents inside right now attempting to restore order. What information I have indicates that Thrall\'s freedom is in jeopardy. A malevolent organization known as the Infinite Dragonflight is trying to prevent his escape. I fear without outside assistance, all will be lost.', 'Cette voie temporelle est en grand désarroi ! Nous avons actuellement des agents à l\intérieur qui tentent de restaurer l\'ordre. Les informations que j\'ai indiquent que la liberté de Thrall est en péril. Une organisation malveillante connue sous le nom de Vol du Dragon Infini essaye d\'empêcher son évasion. J\'ai peur que sans assistance extérieure, tout soit perdu.', 4, 0, 'WHISPER_CUSTODIAN_9'),
(-1000159, 'We have very little information on this timeway. Sa\'at has been dispatched and is currently inside. The data we have gathered from his correspondence is that the Infinite Dragonflight are once again attempting to alter time. Could it be that the opening of the Dark Portal is being targeted for sabotage? Let us hope not...', 'Nous avons très peu d\'informations sur cette voie. Sa\'at a été envoyé et est actuellement sur place. Les données que nous avons recueillies de sa correspondance est que le Vol du Dragon Infini tente une fois de plus d\'altérer le temps. Se pourrait-il que l\'ouverture de la Porte des Ténèbres soit la cible d\'un sabotage. Espérons que non...', 4, 0, 'WHISPER_CUSTODIAN_10'),
(-1000160, 'This timeway is currently collapsing. What that may hold for the past, present and future is currently unknown...', 'Cette voie est en train de s\'effondrer. Ce qu\'elle peut avoir contenu dans le passé, le présent et le futur nous est actuellement inconnu...', 4, 0, 'WHISPER_CUSTODIAN_11'),
(-1000161, 'The timeways are currently ranked in order from least catastrophic to most catastrophic. Note that they are all classified as catastrophic, meaning that any single one of these timeways collapsing would mean that your world would end. We only classify them in such a way so that the heroes and adventurers that are sent here know which timeway best suits their abilities.', 'Les voies sont pour le moment classées de la moins catastrophique à la plus catastrophique, ce qui veut dire que la moindre de celles-ci qui s\'effondre signifierait la fin de votre monde. Nous les classons seulement de cette façon pour que les héros et aventuriers qui y sont envoyés sachent quelle voie est la plus adaptée à leurs compétences.', 4, 0, 'WHISPER_CUSTODIAN_12'),
(-1000162, 'All we know of this timeway is that it leads to Mount Hyjal. The Infinite Dragonflight have gone to great lengths to prevent our involvement. We know next to nothing, mortal. Soridormi is currently attempting to break through the timeway\'s defenses but has thus far been unsuccessful. You might be our only hope of breaking through and resolving the conflict.', 'Tout ce que nous savons sur cette voie temporelle est qu\'elle mène au Mont Hyjal. Le Vol du Dragon Infini s\'est donné beaucoup de peine pour empêcher notre participation. Soridormi est actuellement en train de tenter de briser les défenses de cette voie, mais ses efforts ont été vain jusqu\'ici. Vous pourriez être notre seul espoir de les briser et de résoudre le conflit.', 4, 0, 'WHISPER_CUSTODIAN_13'),
(-1000163, 'Our time is at an end $N. I would wish you luck, if such a thing existed.', 'Notre entretien touche à sa fin, $N. Je vous souhaite bonne chance, si tant est qu\'une telle chose a jamais existé.', 4, 0, 'WHISPER_CUSTODIAN_14');

-- World SQL file: 773_world_scripts.sql
UPDATE `quest_template` SET `SpecialFlags`=2 WHERE `entry`=4770;
UPDATE `creature_template` SET `ScriptName`='npc_swiftmountain' WHERE `entry`=10427;
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000149 AND -1000147;
INSERT INTO `script_texts`
  (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `comment`) VALUES
  (-1000147, 'Lets go $N. I am ready to start to Whitereach Post.', NULL, NULL, 'Gehen wir $N.Ich bin bereit,mich zum Weissgipfelposten aufzumachen.', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL),
  (-1000148, 'This seems to me trusted. If we move to the east, we are  probably... Aah!  Wyvern attack !', NULL, NULL, 'Das kommt mir vertraut vor.Wenn wir nach Osten ziehen,können wir wahrscheinlich...Aah!Flügeldrachen im Angriff!', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL),
  (-1000149, 'Thanks so much... From here I find the way back to the Whitereach Post. Speak with Motega Firemane, maybe you can persuade him to send me home.', NULL, NULL, 'Tausend Dank...Von hier aus finde ich den Rückweg zum Weissgipfelposten.Sprecht unbedingt mit Motega Feuermähne,vielleicht könnt ihr ihn überreden,mich nach Hause zu schicken.', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL);

-- World SQL file: 783_world.sql
DELETE FROM `trinity_string` WHERE `entry` IN (10056, 10057);
INSERT INTO `trinity_string` (entry, content_default) VALUES
(10056, 'You must be a member of the Horde to enter the Hall of Legends.'),
(10057, 'You must be a member of the Alliance to enter the Champion\'s Hall.');

-- World SQL file: 785_world.sql
DELETE FROM `command` WHERE `name` IN ('gobject addtemp', 'npc addtemp');
INSERT INTO `command` (name, security, help) VALUES
('gobject addtemp','2','Adds a temporary gameobject that is not saved to DB.'),
('npc addtemp','2','Adds temporary NPC, not saved to database.');

-- World SQL file: 789_world.sql
ALTER TABLE `eventai_texts` DROP COLUMN `emote`;

-- World SQL file: 807_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='npc_isla_starmane' WHERE `entry`=18760;

-- World SQL file: 817_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='npc_ame' WHERE `entry`=9623;
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000205 AND -1000200;
INSERT INTO `script_texts`
   (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
   (-1000200, 'A-Me good.Good A-me.Follow...A-ME follow.Home.A-ME go home.', NULL, NULL, 'A-ME gut.Gut A-Me.Folgen...Heim.A-ME geht heim.', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
   (-1000201, 'Bad Un´Goro Stomper.Stomper evil.', NULL, NULL, 'Böser Stampfer von Un´Goro. Stampfer von Un´Goro böse.', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
   (-1000202, 'Good..good,A-ME. Home. Search way.', NULL, NULL, 'Gut...gut.A-ME.A-ME gut.Heim.Heim suchen.', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
   (-1000203, 'A-Me home.A-ME go home!Tar Lord dont disturb A-ME.', NULL, NULL, 'A-ME daheim.A-ME geht heim!Teerfürst A-ME nicht aufhalten.', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
   (-1000204, 'Tar Lord A-ME no hurt.A-ME good.', NULL, NULL, 'Teerfürst A-ME nicht wehtun.A-ME gut.', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
   (-1000205, 'A-ME at home!A-ME good!Good A-ME.At home.Home.Home', NULL, NULL, 'A-ME daheim!A-ME gut!Gute A-ME.Daheim.Daheim.Daheim', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);
UPDATE `quest_template` SET `QuestFlags` = 2, `SpecialFlags` = 2 WHERE `entry` = 4245;

-- World SQL file: 822_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='npc_kayra_longmane' WHERE `entry`=17969;
DELETE FROM `creature_template_addon` WHERE `entry`=17969;
UPDATE `quest_template` SET specialflags=2 WHERE `entry`=9752;

-- World SQL file: 822_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='npc_ruul_snowhoof' WHERE `entry`=12818;

-- World SQL file: 833_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='npc_dirty_larry', `unit_flags`=0, `flags_extra`=0 WHERE `entry`=19720;
UPDATE `creature_template` SET `unit_flags`=0, `flags_extra`=0 WHERE `entry` IN (19726, 19725);

-- World SQL file: 834_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='npc_ishanah' WHERE `entry`=18538;

-- World SQL file: 837_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='npc_khadgar' WHERE `entry`=18166;

-- World SQL file: 838_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='npc_kyle_frenzied' WHERE `entry`='23616';
DELETE FROM `spell_script_target` WHERE `entry`=42222;
INSERT INTO `spell_script_target` VALUES
('42222','1','23616');

-- World SQL file: 839_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='npc_wizzlecrank_shredder' WHERE `entry`=3439;

-- World SQL file: 840_world_scripts.sql
UPDATE `creature_template` SET `spell1`=0, `flags_extra`=0, `ScriptName`='npc_volcano' WHERE `entry`=23085;

-- World SQL file: 841_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='npc_greengill_slave' WHERE `entry`=25084;

-- World SQL file: 842_world.sql
ALTER TABLE `areatrigger_teleport`
ADD `heroic_required_quest_done` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0 AFTER `heroic_key2`,
ADD `heroic_required_failed_quest_text` TEXT NULL DEFAULT NULL AFTER `heroic_required_quest_done`;
UPDATE `areatrigger_teleport` SET `heroic_required_quest_done`=11492, `heroic_required_failed_quest_text`='Heroic Difficulty requires completion of the "Hard to Kill" quest.' WHERE `id`=4887;

-- World SQL file: 850_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='npc_bessy' WHERE `entry`=20415;

-- World SQL file: 852_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='mob_nestlewood_owlkin' WHERE `entry`=16518;
UPDATE `item_template` SET `ScriptName`='item_inoculating_crystal' WHERE `entry`=22962;

-- World SQL file: 857_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='npc_kaya_flathoof' WHERE `entry`=11856;

-- World SQL file: 863_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='npc_OOX17' WHERE `entry`=7784;
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1060005 AND -1060000;
INSERT INTO `script_texts`
   (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
   (-1060000, 'Emergency power activated! Initializing ambulatory motor! CLUCK!', NULL, NULL, 'Notfallenergie aktiviert! Ambulatorenantrieb wird gestartet! GLUCK!', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
   (-1060001, 'Physical threat detected! Evasive action! CLUCK!', NULL, NULL, 'Körperliche Bedrohung entdeckt! Ausweichmanöver! GLUCK!', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
   (-1060002, 'Threat analyzed! Activating combat plan beta! CLUCK!', NULL, NULL, 'Bedrohung analysiert! Gefechtsplan Beta wird aktiviert! GLUCK!', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
   (-1060003, 'CLUCK! Sensors detect spatial anomaly -- danger imminent! CLUCK', NULL, NULL, 'GLUCK! Sensoren haben räumliche Anomalie entdeckt - Gefahr im Verzug! GLUCK!', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
   (-1060004, 'No one challenges the wastevander nomads -- not even robotic chickens! ATTACK!', NULL, NULL, 'Niemand fordert die Wüsenläufernomaden heraus - auch keine Robothühner! ANGRIFF!', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
   (-1060005, 'Cloaking systems online! CLUCK! Engaging cloak for transport to Booty Bay!', NULL, NULL, 'Tarnsysteme online! GLUCK! Tarnung für Transport nach Beutebucht wird aktiviert.', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

-- World SQL file: 871_world.sql
DELETE FROM `trinity_string` WHERE `entry` BETWEEN '288' AND '295';
DELETE FROM `trinity_string` WHERE `entry` BETWEEN '2000' AND '2029';
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
(2024, '\n|cff00ccff%s|r |cff00ff00Added comment|r: \"%s\"|r ', '', '', '', '', '', '', '', '');
DELETE FROM `command` WHERE (`name` LIKE '%ticket closedlist%');
INSERT INTO `command` (`name`,`security`,`help`) VALUES ('.ticket closedlist','1','Displays a list of closed GM tickets.');

-- World SQL file: 884_world.sql
DELETE FROM `command` WHERE `name` IN ('gobject addtemp','npc addtemp');
INSERT INTO `command` (name, security, help) VALUES
('gobject addtemp','2','Adds a temporary gameobject that is not saved to DB.'),
('npc addtemp','2','Adds temporary NPC, not saved to database.');

-- World SQL file: 905_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='npc_grimstone' WHERE `entry`=10096;
UPDATE `creature_template` SET `ScriptName`='mob_phalanx' WHERE `entry`=9502;
UPDATE `creature_template` SET `ScriptName`='npc_rocknot' WHERE `entry`=9503;
DELETE FROM `areatrigger_scripts` WHERE `entry`=1526;
INSERT INTO `areatrigger_scripts` VALUES (1526,'at_ring_of_law');
DELETE FROM `script_texts` WHERE `entry`=-1230000;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
(-1230000,'Ah, hits the spot!',0,0,0,'rocknot SAY_GOT_BEER');

-- World SQL file: 917_world.sql
CREATE TABLE `version` (
    `core_version` varchar(120) default NULL COMMENT 'Core revision dumped at startup.',
    `db_version` varchar(120) default NULL COMMENT 'Version of world DB.',
    `script_version` varchar(120) default NULL COMMENT 'Version of scripts DB.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Version Notes';
INSERT INTO `version` (core_version, db_version, script_version) VALUES ("",(SELECT version FROM db_version),(SELECT version FROM script_db_version));
DROP TABLE IF EXISTS `db_version`;
DROP TABLE IF EXISTS `script_db_version`;

-- World SQL file: 919_world.sql
ALTER TABLE `version`
   ADD `core_revision` BIGINT UNSIGNED AFTER `core_version`;
   
-- World SQL file: 933_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='npc_snake_trap_serpents' WHERE `entry` IN (19921, 19833);

-- World SQL file: 935_world_scripts.sql
DELETE FROM `creature` WHERE `id`='17653';
UPDATE `gameobject_template` SET `flags`='4' WHERE `entry` IN ('181766','181823');
UPDATE `gameobject` SET `SpawnMask`='3',`state`='1' WHERE `id` IN ('181766','181823');
UPDATE `instance_template` SET `script`='instance_blood_furnace' WHERE `map`=542;

-- World SQL file: 940_world_scripts.sql
ALTER TABLE `custom_texts` CHANGE COLUMN `emote` `emote` smallint(5) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `script_texts` CHANGE COLUMN `emote` `emote` smallint(5) unsigned NOT NULL DEFAULT '0';

-- World SQL file: 945_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry`=22083;
UPDATE `creature_template` SET `ScriptName`='npc_overlord_morghor' WHERE `entry`=	23139;
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry`=23141;
DELETE FROM `script_texts` WHERE entry BETWEEN -1000221 and -1000206;
INSERT INTO `script_texts` (entry, content_default, type, emote, comment) VALUES
(-1000206, 'Come, $N. Lord Stormrage awaits.', 0, 1, 'OVERLORD_SAY_1'),
(-1000207, 'Lord Illidan will be here shortly.', 0, 1, 'OVERLORD_SAY_2'),
(-1000208, 'Lord Illidan, this is the Dragonmaw that I, and others, have told you about. He will lead us to victory!', 0, 1, 'OVERLORD_SAY_3'),
(-1000209, 'But... My lord, I do not understand. $N... He is the orc that has...', 0, 1, 'OVERLORD_SAY_4'),
(-1000210, 'It will be done, my lord.', 0, 1, 'OVERLORD_SAY_5'),
(-1000211, 'So you thought to make a fool of Mor\'ghor, eh? Before you are delivered to Lord Illidan, you will feel pain that you could not know to exist. I will take pleasure in exacting my own vengeance.', 0, 25, 'OVERLORD_SAY_6'),
(-1000212, 'Warriors of Dragonmaw, gather \'round! One among you has attained the rank of highlord! Bow your heads in reverence! Show your respect and allegiance to Highlord $N!', 1, 22, 'OVERLORD_YELL_1'),
(-1000213, 'All hail Lord Illidan!', 1, 66, 'OVERLORD_YELL_2'),
(-1000214, 'What is the meaning of this, Mor\'ghor?', 0, 1, 'LORD_ILLIDAN_SAY_1'),
(-1000215, 'SILENCE!', 0, 22, 'LORD_ILLIDAN_SAY_2'),
(-1000216, 'Blathering idiot. You incomprehensibly incompetent buffoon...', 0, 1, 'LORD_ILLIDAN_SAY_3'),
(-1000217, 'THIS is your hero?', 0, 6, 'LORD_ILLIDAN_SAY_4'),
(-1000218, 'You have been deceived, imbecile.', 0, 1, 'LORD_ILLIDAN_SAY_5'),
(-1000219, 'This... whole... operation... HAS BEEN COMPROMISED!', 0, 22, 'LORD_ILLIDAN_SAY_6'),
(-1000220, 'I expect to see this insect\'s carcass in pieces in my lair within the hour. Fail and you will suffer a fate so much worse than death.', 0, 1, 'LORD_ILLIDAN_SAY_7'),
(-1000221, 'You will not harm the boy, Mor\'ghor! Quickly, $N, climb on my back!', 0, 22, 'YARZILL_THE_MERC_SAY');
DELETE FROM `script_texts` WHERE `entry`='-1000222';
INSERT INTO `script_texts` (entry, content_default, type, language, emote, comment) VALUES
(-1000222, 'Thank you, mortal.', 0, 11, 1, 'SAY_JUST_EATEN');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000234 and -1000223;
INSERT INTO `script_texts` (entry, content_default, emote, comment) VALUES
(-1000223, 'I sense the tortured spirits, $N. They are this way, come quickly!', 1, 'SAY_START'),
(-1000224, 'Watch out!', 0, 'SAY_AGGRO1'),
(-1000225, 'Naga attackers! Defend yourself!', 0, 'SAY_AGGRO2'),
(-1000226, 'Kill them all!', 0, 'ASSASSIN_SAY_AGGRO1'),
(-1000227, 'You will never essscape Coilssskarrr...', 0, 'ASSASSIN_SAY_AGGRO2'),
(-1000228, 'Grant me protection $N, i must break trough their foul magic!', 0, 'SAY_PROGRESS1'),
(-1000229, 'The naga of Coilskar are exceptionally cruel to their prisoners. It is a miracle that I survived inside that watery prison for as long as I did. Earthmother be praised.', 0, 'SAY_PROGRESS2'),
(-1000230, 'Now we must find the exit.', 0, 'SAY_PROGRESS3'),
(-1000231, 'Lady Vashj must answer for these atrocities. She must be brought to justice!', 0, 'SAY_PROGRESS4'),
(-1000232, 'The tumultuous nature of the great waterways of Azeroth and Draenor are a direct result of tormented water spirits.', 0, 'SAY_PROGRESS5'),
(-1000233, 'It shouldn\'t be much further, $N. The exit is just up ahead.', 0, 'SAY_PROGRESS6'),
(-1000234, 'Thank you, $N. Please return to my brethren at the Altar of Damnation, near the Hand of Gul\'dan, and tell them that Wilda is safe. May the Earthmother watch over you...', 0, 'SAY_END');

-- World SQL file: 947_world_scripts.sql
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000244 and -1000235;
INSERT INTO `script_texts` (entry, content_default, type, emote, comment) VALUES
(-1000235, 'Ok, $N. Follow me to the cave where I\'ll attempt to harness the power of the rune stone into these goggles.', 0, 1, 'phizzlethorpe - SAY_PROGRESS_1'),
(-1000236, 'I discovered this cave on our first day here. I believe the energy in the stone can be used to our advantage.', 0, 1, 'phizzlethorpe - SAY_PROGRESS_2'),
(-1000237, 'I\'ll begin drawing energy from the stone. Your job, $N, is to defend me. This place is cursed... trust me.', 0, 1, 'phizzlethorpe - SAY_PROGRESS_3'),
(-1000238, 'begins tinkering with the goggles before the stone.', 2, 0, 'phizzlethorpe - EMOTE_PROGRESS_4'),
(-1000239, 'Help!!! Get these things off me so I can get my work done!', 0, 0, 'SAY_AGGRO'),
(-1000240, 'Almost done! Just a little longer!', 0, 1, 'phizzlethorpe - SAY_PROGRESS_5'),
(-1000241, 'I\'ve done it! I have harnessed the power of the stone into the goggles! Let\'s get out of here!', 0, 1, 'phizzlethorpe - SAY_PROGRESS_6'),
(-1000242, 'Phew! Glad to be back from that creepy cave.', 0, 1, 'phizzlethorpe - SAY_PROGRESS_7'),
(-1000243, 'hands one glowing goggles over to Doctor Draxlegauge.', 2, 0, 'phizzlethorpe - EMOTE_PROGRESS_8'),
(-1000244, 'Doctor Draxlegauge will give you further instructions, $N. Many thanks for your help!', 0, 1, 'phizzlethorpe - SAY_PROGRESS_9');

-- World SQL file: 948_world_scripts.sql
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000247 and -1000245;
INSERT INTO `script_texts` (entry, content_default, type, comment) VALUES
(-1000245, 'You, there! Hand over that moonstone and nobody gets hurt!', 1, 'SAY_RIZZLE_START'),
(-1000246, 'Just chill!', 4, 'SAY_RIZZLE_GRENADE'),
(-1000247, 'All right, you win! I surrender! Just don\'t hurt me!', 1, 'SAY_RIZZLE_FINAL');

-- World SQL file: 950_world_scripts.sql
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000266 and -1000248;
INSERT INTO `script_texts` (entry, content_default, type, emote, comment) VALUES
(-1000248, 'The last thing I remember is the ship falling and us getting into the pods. I\'ll go see how I can help. Thank you!', 0, 0, 'draenei survivor - HEAL1'),
(-1000249, '$C, Where am I? Who are you? Oh no! What happened to the ship?.', 0, 0, 'draenei survivor - HEAL2'),
(-1000250, '$C You saved me! I owe you a debt that I can never repay. I\'ll go see if I can help the others.', 0, 0, 'draenei survivor - HEAL3'),
(-1000251, 'Ugh... what is this place? Is that all that\'s left of the ship over there?', 0, 0, 'draenei survivor - HEAL4'),
(-1000252, 'Oh, the pain...', 0, 0, 'draenei survivor - HELP1'),
(-1000253, 'Everything hurts, Please make it stop...', 0, 0, 'draenei survivor - HELP2'),
(-1000254, 'Ughhh... I hurt. Can you help me?', 0, 0, 'draenei survivor - HELP3'),
(-1000255, 'I don\'t know if I can make it, please help me...', 0, 0, 'draenei survivor - HELP4'),
(-1000256, 'Yes Master, all goes along as planned.', 0, 1, 'overgrind - SAY_TEXT'),
(-1000257, 'puts the shell to his ear.', 2, 0, 'overgrind - SAY_EMOTE'),
(-1000258, 'Now I cut you!', 1, 0, 'overgrind - YELL_ATTACK'),
(-1000259, 'What\'s the big idea, Spark?', 0, 0, 'geezle - GEEZLE_SAY_1'),
(-1000260, 'What\'s the big idea? You nearly blew my cover, idiot! I told you to put the compass and navigation maps somewhere safe - not out in the open for any fool to discover.', 0, 0, 'geezle - SPARK_SAY_2'),
(-1000261, 'The Master has gone to great lengths to secure information about the whereabouts of the Exodar. You could have blown the entire operation, including the cover of our spy on the inside.', 0, 0, 'geezle - SPARK_SAY_3'),
(-1000262, 'Relax, Spark! I have it all under control. We\'ll strip mine the Exodar right out from under \'em - making both you and I very, very rich in the process.', 0, 0, 'geezle - GEEZLE_SAY_4'),
(-1000263, 'Relax? Do you know what Kael\'thas does to those that fail him, Geezle? Eternal suffering and pain... Do NOT screw this up, fool.', 0, 0, 'geezle - SPARK_SAY_5'),
(-1000264, 'Our Bloodmyst scouts have located our contact. The fool, Velen, will soon leave himself open and defenseless -- long enough for us to strike! Now get out of my sight before I vaporize you...', 0, 0, 'geezle - SPARK_SAY_6'),
(-1000265, 'Yes, sir. It won\'t happen again...', 0, 0, 'geezle - GEEZLE_SAY_7'),
(-1000266, 'picks up the naga flag.', 2, 0, 'geezle - EMOTE_SPARK');

-- World SQL file: 951_world_scripts.sql
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000279 and -1000267;
INSERT INTO `script_texts` (entry, content_default, type, comment) VALUES
(-1000267, 'Ready when you are, warrior.', 1, 'flathead - SAY_BIG_WILL_READY'),
(-1000268, 'The Affray has begun, get ready to fight!', 1, 'flathead - SAY_TWIGGY_FLATHEAD_BEGIN'),
(-1000269, 'You! Enter the fray!', 1, 'flathead - SAY_TWIGGY_FLATHEAD_FRAY'),
(-1000270, 'Challenger is down!', 1, 'flathead - SAY_TWIGGY_FLATHEAD_DOWN'),
(-1000271, 'The Affray is over.', 1, 'flathead - SAY_TWIGGY_FLATHEAD_OVER'),
(-1000272, 'Alright, alright I think I can figure out how to operate this thing...', 0, 'shredder - SAY_PROGRESS_1'),
(-1000273, 'Arrrgh! This isn\'t right!', 0, 'shredder - SAY_PROGRESS_2'),
(-1000274, 'Okay, I think I\'ve got it, now. Follow me, $N!', 0, 'shredder - SAY_PROGRESS_3'),
(-1000275, 'There\'s the stolen shredder! Stop it or Lugwizzle will have our hides!', 1, 'shredder - SAY_MERCENARY_4'),
(-1000276, 'Looks like we\'re out of woods, eh? Wonder what this does...', 0, 'shredder - SAY_PROGRESS_5'),
(-1000277, 'Come on, don\'t break down on me now!', 0, 'shredder - SAY_PROGRESS_6'),
(-1000278, 'That was a close one! Well, let\'s get going, it\'s still a ways to Ratchet!', 0, 'shredder - SAY_PROGRESS_7'),
(-1000279, 'Hmm... I don\'t think this blinking red light is a good thing...', 0, 'shredder - SAY_PROGRESS_8');

-- World SQL file: 952_world_scripts.sql
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000285 and -1000280;
INSERT INTO `script_texts` (entry, content_default, type, language, comment) VALUES
(-1000280, 'Thank you, dear Paladin, you just saved my life.', 0, 7, 'faulk - SAY_HEAL'),
(-1000281, 'Very well. Let\'s see what you have to show me, $N.', 0, 0, 'anvilvard - SAY_PR_1'),
(-1000282, 'What manner of trick is this, $R? If you seek to ambush me, I warn you I will not go down quietly!', 0, 0, 'anvilvard - SAY_PR_2'),
(-1000283, 'releases the last of its energies into the nerarby runestone, succesfully reactivating it.', 2, 0, 'crystal - EMOTE'),
(-1000284, 'Deployment sucessful. Trespassers will be neutralized.', 0, 0, 'sentry - SAY_CONVERTED_1'),
(-1000285, 'Objective acquired. Initiating security routines.', 0, 0, 'sentry - SAY_CONVERTED_1');

-- World SQL file: 953_world_scripts.sql
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000292 and -1000286;
INSERT INTO `script_texts` (entry, content_default, type, emote, comment) VALUES
(-1000286, 'A shadowy, sinister presence has invader the Emerald Dream. Its power is poised to spill over into our world, $N. We must oppose it! That\'s why I cannot accompany you in person.', 0, 0, 'clintar_spirit'),
(-1000287, 'The Emerald Dream will never be yours!', 0, 0, 'clintar_spirit'),
(-1000288, 'Begone from this place!', 0, 0, 'clintar_spirit'),
(-1000289, 'That\'s the first relic, but there are still two more. Follow me, $N.', 0, 0, 'clintar_spirit'),
(-1000290, 'I\'ve recovered the second relic. Take a moment to rest, and then we\'ll continue to the last reliquary.', 0, 0, 'clintar_spirit'),
(-1000291, 'We have all three of the relics, but my energy is rapidly fading. We must make our way back to Dreamwarden Lurosa! He will let you know what to do next.', 0, 0, 'clintar_spirit'),
(-1000292, 'Lurosa, I am entrusting the Relics of Aviana to $N, who will take them to Morthis Whisperwing. I must return completely to the Emerald Dream now. Do not let $N fail!', 0, 0, 'clintar_spirit');

-- World SQL file: 954_world_scripts.sql
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000305 and -1000293;
INSERT INTO `script_texts` (entry, content_default, type, comment) VALUES
(-1000293, 'In Nagrand, food hunt ogre!', 0, 'LUMP_SAY0'),
(-1000294, 'You taste good with maybe a little salt and pepper.', 0, 'LUMP_SAY1'),
(-1000295, 'OK, OK! Lump give up!', 0, 'LUMP_DEFEAT'),
(-1000296, 'Warning! Emergency shutdown process initiated by $N. Shutdown will complete in two minutes.', 2, 'npc_manaforge_control_console - EMOTE_START'),
(-1000297, 'Emergency shutdown will complete in one minute.', 2, 'npc_manaforge_control_console - EMOTE_60'),
(-1000298, 'Emergency shutdown will complete in thirty seconds.', 2, 'npc_manaforge_control_console - EMOTE_30'),
(-1000299, 'Emergency shutdown will complete in ten seconds.', 2, 'npc_manaforge_control_console - EMOTE_10'),
(-1000300, 'Emergency shutdown complete.', 2, 'npc_manaforge_control_console - EMOTE_COMPLETE'),
(-1000301, 'Emergency shutdown aborted.', 2, 'npc_manaforge_control_console - EMOTE_ABORT'),
(-1000302, 'Saeed is currently engaged or awaiting orders to engage. You may check directly east of me and see if Saeed is ready for you. If he is not present then he is off fighting another battle. I recommend that you wait for him to return before attacking Dimensius.', 4, 'npc_professor_dabiri - WHISPER_DABIRI'),
(-1000303, 'is very weak', 2, 'mob_phase_hunter - EMOTE_WEAK'),
(-1000304, 'Bessy, is that you?', 0, 'npc_bessy- SAY_THADELL_1'),
(-1000305, 'Thank you for bringing back my Bessy, $N. I couldn\'t live without her!', 0, 'npc_bessy- SAY_THADELL_2');

-- World SQL file: 955_world_scripts.sql
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000333 and -1000306;
INSERT INTO `script_texts` (entry, content_default, type, comment) VALUES
(-1000306, 'Follow me, stranger. This won\'t take long.', 0, 'npc_kservant - SAY1'),
(-1000307, 'Shattrath was once the draenei capital of this world. Its name means \"dwelling of light.\"', 4, 'npc_kservant - WHISP1'),
(-1000308, 'When the Burning Legion turned the orcs against the draenei, the fiercest battle was fought here. The draenei fought tooth and nail, but in the end the city fell.', 4, 'npc_kservant - WHISP2'),
(-1000309, 'The city was left in ruins and darkness... until the Sha\'tar arrived.', 4, 'npc_kservant - WHISP3'),
(-1000310, 'Let us go into the Lower City. I will warn you that as one of the only safe havens in Outland, Shattrath has attracted droves of refugees from all wars, current and past.', 4, 'npc_kservant - WHISP4'),
(-1000311, 'The Sha\'tar, or \"born from light\" are the naaru that came to Outland to fight the demons of the Burning Legion.', 4, 'npc_kservant - WHISP5'),
(-1000312, 'They were drawn to the ruins of Shattrath City where a small remnant of the draenei priesthood conducted its rites inside a ruined temple on this very spot.', 4, 'npc_kservant - WHISP6'),
(-1000313, 'The priesthood, known as the Aldor, quickly regained its strength as word spread that the naaru had returned and reconstruction soon began. The ruined temple is now used as an infirmary for injured refugees.', 4, 'npc_kservant - WHISP7'),
(-1000314, 'It wouldn\'t be long, however, before the city came under attack once again. This time, the attack came from Illidan\'s armies. A large regiment of blood elves had been sent by Illidan\'s ally, Kael\'thas Sunstrider, to lay waste to the city.', 4, 'npc_kservant - WHISP8'),
(-1000315, 'As the regiment of blood elves crossed this very bridge, the Aldor\'s exarchs and vindicators lined up to defend the Terrace of Light. But then the unexpected happened.', 4, 'npc_kservant - WHISP9'),
(-1000316, 'The blood elves laid down their weapons in front of the city\'s defenders; their leader, a blood elf elder known as Voren\'thal, stormed into the Terrace of Light and demanded to speak to A\'dal.', 4, 'npc_kservant - WHISP10'),
(-1000317, 'As the naaru approached him, Voren\'thal kneeled before him and uttered the following words: \"I\'ve seen you in a vision, naaru. My race\'s only hope for survival lies with you. My followers and I are here to serve you.\"', 4, 'npc_kservant - WHISP11'),
(-1000318, 'The defection of Voren\'thal and his followers was the largest loss ever incurred by Kael\'s forces. And these weren\'t just any blood elves. Many of the best and brightest amongst Kael\'s scholars and magisters had been swayed by Voren\'thal\'s influence.', 4, 'npc_kservant - WHISP12'),
(-1000319, 'The naaru accepted the defectors, who would become known as the Scryers; their dwelling lies in the platform above. Only those initiated with the Scryers are allowed there.', 4, 'npc_kservant - WHISP13'),
(-1000320, 'The Aldor are followers of the Light and forgiveness and redemption are values they understand. However, they found hard to forget the deeds of the blood elves while under Kael\'s command.', 4, 'npc_kservant - WHISP14'),
(-1000321, 'Many of the priesthood had been slain by the same magisters who now vowed to serve the naaru. They were not happy to share the city with their former enemies.', 4, 'npc_kservant - WHISP15'),
(-1000322, 'The Aldor\'s most holy temple and its surrounding dwellings lie on the terrace above. As a holy site, only the initiated are welcome inside.', 4, 'npc_kservant - WHISP16'),
(-1000323, 'The attacks against Shattrath continued, but the city did not fall, as you can see. On the contrary, the naaru known as Xi\'ri led a successful incursion into Shadowmoon Valley - Illidan\'s doorstep.', 4, 'npc_kservant - WHISP17'),
(-1000324, 'There he continues to wage war on Illidan with the assistance of the Aldor and the Scryers. The two factions have not given up on their old feuds, though.', 4, 'npc_kservant - WHISP18'),
(-1000325, 'Such is their animosity that they vie for the honor of being sent to assist the naaru there. Each day, that decision is made here by A\'dal. The armies gather here to receive A\'dal\'s blessing before heading to Shadowmoon.', 4, 'npc_kservant - WHISP19'),
(-1000326, 'Khadgar should be ready to see you again. Just remember that to serve the Sha\'tar you will most likely have to ally with the Aldor or the Scryers. And seeking the favor of one group will cause the others\' dislike.', 4, 'npc_kservant - WHISP20'),
(-1000327, 'Good luck stranger, and welcome to Shattrath City.', 4, 'npc_kservant - WHISP21'),
(-1000328, 'Time to teach you a lesson in manners, little boy!', 0, ''),
(-1000329, 'Now I\'m gonna give you to the count of \'3\' to get out of here before I sick the dogs on you.', 0, ''),
(-1000330, '1...', 0, ''),
(-1000331, '2...', 0, ''),
(-1000332, 'Time to meet your maker!', 0, ''),
(-1000333, 'Alright, we give up! Don\'t hurt us!', 0, '');
DELETE FROM `script_texts` WHERE `entry`=-1000334;
INSERT INTO `script_texts` (entry, content_default, type, language, comment) VALUES
(-1000334, 'Thank you, dear Paladin, you just saved my life.', 0, 10, 'stillblade - SAY_HEAL');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000349 and -1000335;
INSERT INTO `script_texts` (entry, content_default, type, comment) VALUES
(-1000335, 'Let\'s get to the others, and keep an eye open for those wolves cutside...', 0, 'npc_deathstalker_erland - SAY_QUESTACCEPT'),
(-1000336, 'Be careful, $N. Those wolves like to hide among the trees.', 0, 'npc_deathstalker_erland - SAY_START'),
(-1000337, 'A $C attacks!', 0, 'npc_deathstalker_erland - SAY_AGGRO_1'),
(-1000338, 'Beware! I am under attack!', 0, 'npc_deathstalker_erland - SAY_AGGRO_2'),
(-1000339, 'We\'re almost there!', 0, 'npc_deathstalker_erland - SAY_LAST'),
(-1000340, 'We made it! Thanks, $N. I couldn\'t have gotten without you.', 0, 'npc_deathstalker_erland - SAY_THANKS'),
(-1000341, 'It\'s good to see you again, Erland. What is your report?', 0, 'npc_deathstalker_erland - SAY_RANE'),
(-1000342, 'Masses of wolves are to the east, and whoever lived at Malden\'s Orchard is gone.', 0, 'npc_deathstalker_erland - SAY_ANSWER'),
(-1000343, 'If I am excused, then I\'d like to check on Quinn...', 0, 'npc_deathstalker_erland - SAY_MOVE_QUINN'),
(-1000344, 'Hello, Quinn. How are you faring?', 0, 'npc_deathstalker_erland - SAY_GREETINGS'),
(-1000345, 'I\'ve been better. Ivar the Foul got the better of me...', 0, 'npc_deathstalker_erland - SAY_QUINN'),
(-1000346, 'Try to take better care of yourself, Quinn. You were lucky this time.', 0, 'npc_deathstalker_erland - SAY_ON_BYE'),
(-1000347, 'Let\'s go before they find out I\'m free!', 0, 'npc_kaya_flathoof - SAY_START'),
(-1000348, 'Look out! We\'re under attack!', 0, 'npc_kaya_flathoof - SAY_AMBUSH'),
(-1000349, 'Thank you for helping me. I know my way back from here.', 0, 'npc_kaya_flathoof - SAY_END');

-- World SQL file: 956_world_scripts.sql
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000365 and -1000350;
INSERT INTO `script_texts` (entry, content_default, type, comment) VALUES
(-1000350, 'Who dares awaken Aquementas?', 1, 'mob_aquementas - AGGRO_YELL_AQUE'),
(-1000351, 'I give up! Please don\'t kill me!', 0, 'mob_unkor_the_ruthless - SAY_SUBMIT'),
(-1000352, 'I choose the third option: KILLING YOU!', 0, 'npc_floon - SAY_FLOON_ATTACK'),
(-1000353, 'Ok let\'s get out of here!', 0, 'npc_isla_starmane - SAY_PROGRESS_1'),
(-1000354, 'You sure you\'re ready? Take a moment.', 0, 'npc_isla_starmane - SAY_PROGRESS_2'),
(-1000355, 'Alright, let\'s do this!', 0, 'npc_isla_starmane - SAY_PROGRESS_3'),
(-1000356, 'Ok, I think I can make it on my own from here. Thank you so much for breaking me out of there!', 0, 'npc_isla_starmane - SAY_PROGRESS_4'),
(-1000357, 'Belore...', 0, 'npc_lady_sylvanas_windrunner - SAY_LAMENT_END'),
(-1000358, 'kneels down and pick up the amulet.', 2, 'npc_lady_sylvanas_windrunner - EMOTE_LAMENT_END'),
(-1000359, 'You have my blessing', 0, 'npcs_ashyen_and_keleth - GOSSIP_REWARD_BLESS'),
(-1000360, 'Is the way clear? Let\'s get out while we can, $N.', 0, 'npc_kayra_longmane - SAY_PROGRESS_1'),
(-1000361, 'Looks like we won\'t get away so easy. Get ready!', 0, 'npc_kayra_longmane - SAY_PROGRESS_2'),
(-1000362, 'Let\'s keep moving. We\'re not safe here!', 0, 'npc_kayra_longmane - SAY_PROGRESS_3'),
(-1000363, 'Look out, $N! Enemies ahead!', 0, 'npc_kayra_longmane - SAY_PROGRESS_4'),
(-1000364, 'We\'re almost to the refuge! Let\'s go.', 0, 'npc_kayra_longmane - SAY_PROGRESS_5'),
(-1000365, 'I can see my fellow druids from here. Thank you, $N. I\'m sure Ysiel will reward you for your actions!', 0, 'npc_kayra_longmane - SAY_PROGRESS_6');

-- World SQL file: 957_world_scripts.sql
-- Liquid Fire
UPDATE `gameobject_template` SET `data2`='5',`data11`='1' WHERE `entry` IN ('180125','182533');
-- Scripts & Stats
UPDATE `creature_template` SET `ScriptName`='boss_vazruden_the_herald' WHERE `entry` = '17307';
UPDATE `creature_template` SET `ScriptName`='boss_vazruden',`heroic_entry`='18434' WHERE `entry` = '17537';
UPDATE `creature_template` SET `ScriptName`='boss_nazan' WHERE `entry` = '17536';
UPDATE `creature_template` SET `ScriptName`='mob_hellfire_sentry' WHERE `entry` = '17517';
UPDATE `creature_template` SET `equipment_id`='2183',`mechanic_immune_mask`='805306367' WHERE `entry` = '18434';
-- Reinforced Fel Iron Chest
DELETE FROM `gameobject` WHERE `id` IN ('185168','185169');
-- Script Texts
DELETE FROM `script_texts` WHERE `entry` BETWEEN '-1543025' AND '-1543017';
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
('-1543017','You have faced many challenges, pity they were all in vain. Soon your people will kneel to my lord!',10292,1,0,'vazruden SAY_INTRO'),
('-1543018','Is there no one left to test me?',10293,1,0,'vazruden SAY_WIPE'),
('-1543019','Your time is running out!',10294,1,0,'vazruden SAY_AGGRO_1'),
('-1543020','You are nothing, I answer a higher call!',10295,1,0,'vazruden SAY_AGGRO_2'),
('-1543021','The Dark Lord laughs at you!',10296,1,0,'vazruden SAY_AGGRO_3'),
('-1543022','It is over. Finished!',10297,1,0,'vazruden SAY_KILL_1'),
('-1543023','Your days are done!',10298,1,0,'vazruden SAY_KILL_2'),
('-1543024','My lord will be the end you all...',10299,1,0,'vazruden SAY_DIE'),
('-1543025','descends from the sky',0,3,0,'vazruden EMOTE');
-- Waypoint Movement
DELETE FROM `waypoint_data` WHERE `id` = '2081';
INSERT INTO `waypoint_data`(`id`,`point`,`position_x`,`position_y`,`position_z`) VALUES
('2081','1','-1412.2','1784','112'),
('2081','2','-1447.9','1760.9','112'),
('2081','3','-1454.2','1729.3','112'),
('2081','4','-1430','1705','112'),
('2081','5','-1393.5','1705.5','112'),
('2081','6','-1369.8','1724.5','112'),
('2081','7','-1377','1760','112');

-- World SQL file: 963_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='mob_illidari_spawn' WHERE `entry` IN (22075,22074,19797);
UPDATE `creature_template` SET `ScriptName`='mob_torloth_the_magnificent' WHERE `entry`='22076';
UPDATE `creature_template` SET `ScriptName`='npc_lord_illidan_stormrage' WHERE `entry`=22083;
DELETE FROM `creature` WHERE `id`=22083;
INSERT INTO `creature` (id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(22083, 530, 1, 0, 0, -4635.75, 1386.32, 137.34, 5.72398, 25,0, 0, 9955, 6774, 0, 0);
UPDATE `gameobject_template` SET `ScriptName`='go_crystal_prison' WHERE `entry`=185126;
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000374 and -1000366;
INSERT INTO `script_texts` (entry, content_default, type, comment) VALUES
(-1000366, 'So you have defeated the Crimson Sigil. You now seek to challenge my rule? Not even Arthas could defeat me, yet you dare to even harbor such thoughts? Then I say to you, come! Come $N! The Black Temple awaits...', 1, 'Quest: Battle of the crimson watch - END_TEXT'),
(-1000367, 'At your command, my liege...', 0, 'TorlothAnim - First'),
(-1000368, 'Destroy them, Torloth. Let lose their blood like a river upon this hallowed ground.', 0, 'Quest: Battle of the crimson watch TorlothAnim - Second'),
(-1000369, 'As you desire, Lord Illidan.', 0, 'Quest: Battle of the crimson watch TorlothAnim - Third'),
(-1000370, 'Yes, Lord Illidan, I would sacrifice to you this magnificent physique. On this day you will fall - another victim of Torloth...', 0, 'Quest: Battle of the crimson watch TorlothAnim - Fourth'),
(-1000371, 'What manner of fool dares stand before Illidan Stormrage? Soldiers, destroy these insects!', 1, 'Quest: Battle of the crimson watch WavesInfo - First'),
(-1000372, 'You are no challenge for the Crimson Sigil. Mind breakers, end this nonsense.', 1, 'Quest: Battle of the crimson watch WavesInfo - Second'),
(-1000373, 'Run while you still can. The highlords come soon...', 1, 'Quest: Battle of the crimson watch WavesInfo - Third'),
(-1000374, 'Torloth your master calls!', 1, 'Quest: Battle of the crimson watch WavesInfo - Fourth');

-- World SQL file: 965_world_scripts.sql
REPLACE INTO `spell_script_target` VALUES
(33655,0,183350),
(33655,0,183351),
(44374,1,24722),
(31538,1,17895),
(29967,1,16524),
(39887,1,23002),
(31617,1,17899),
(31624,1,17899),
(31625,1,17899),
(34019,1,19422),
(34946,1,20040),
(34946,1,20041),
(21934,1,21934),
(43144,1,23817),
(12613,1,5843),
(9095,1,1200);

-- World SQL file: 966_world_scripts.sql
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000395 AND -1000375;
INSERT INTO `script_texts` (entry,content_default,sound,type,language,emote,comment) VALUES
(-1000375 ,'I remember well the sting of defeat at the conclusion of the Third War. I have waited far too long for my revenge. Now the shadow of the Legion falls over this world. It is only a matter of time until all of your failed creation... is undone.',11332,1,0,0,'kazzak SAY_INTRO'),
(-1000376,'The Legion will conquer all!',11333,1,0,0,'kazzak SAY_AGGRO1'),
(-1000377,'All mortals will perish!',11334,1,0,0,'kazzak SAY_AGGRO2'),
(-1000378,'All life must be eradicated!',11335,1,0,0,'kazzak SAY_SURPREME1'),
(-1000379,'I\'ll rip the flesh from your bones!',11336,1,0,0,'kazzak SAY_SURPREME2'),
(-1000380,'Kirel Narak!',11337,1,0,0,'kazzak SAY_KILL1'),
(-1000381,'Contemptible wretch!',11338,1,0,0,'kazzak SAY_KILL2'),
(-1000382,'The universe will be remade.',11339,1,0,0,'kazzak SAY_KILL3'),
(-1000383,'The Legion... will never... fall.',11340,1,0,0,'kazzak SAY_DEATH'),
(-1000384,'%s goes into a frenzy!',0,2,0,0,'kazzak EMOTE_FRENZY'),
(-1000385,'Invaders, you dangle upon the precipice of oblivion! The Burning Legion comes and with it comes your end.',0,1,0,0,'kazzak SAY_RAND1'),
(-1000386,'Impudent whelps, you only delay the inevitable. Where one has fallen, ten shall rise. Such is the will of Kazzak...',0,1,0,0,'kazzak SAY_RAND2'),
(-1000387,'Do not proceed. You will be eliminated!',11344,1,0,0,'doomwalker SAY_AGGRO'),
(-1000388,'Tectonic disruption commencing.',11345,1,0,0,'doomwalker SAY_EARTHQUAKE_1'),
(-1000389,'Magnitude set. Release.',11346,1,0,0,'doomwalker SAY_EARTHQUAKE_2'),
(-1000390,'Trajectory locked.',11347,1,0,0,'doomwalker SAY_OVERRUN_1'),
(-1000391,'Engage maximum speed.',11348,1,0,0,'doomwalker SAY_OVERRUN_2'),
(-1000392,'Threat level zero.',11349,1,0,0,'doomwalker SAY_SLAY_1'),
(-1000393,'Directive accomplished.',11350,1,0,0,'doomwalker SAY_SLAY_2'),
(-1000394,'Target exterminated.',11351,1,0,0,'doomwalker SAY_SLAY_3'),
(-1000395,'System failure in five, f-o-u-r...',11352,1,0,0,'doomwalker SAY_DEATH');

-- World SQL file: 970_world_scripts.sql
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000401 AND -1000396;
INSERT INTO `script_texts` (entry, content_default, type, language, comment) VALUES
(-1000396, 'Muahahahaha! You fool! You\'ve released me from my banishment in the interstices between space and time!', 0, 0, 'mobs_nether_drake - SAY_NIHIL_1'),
(-1000397, 'All of Draenor shall quick beneath my feet! I will destroy this world and reshape it in my image!', 0, 0, 'mobs_nether_drake - SAY_NIHIL_2'),
(-1000398, 'Where shall I begin? I cannot bother myself with a worm such as yourself. There is a world to be conquered!', 0, 0, 'mobs_nether_Drake - SAY_NIHIL_3'),
(-1000399, 'No doubt the fools that banished me are long dead. I shall take wing survey my demense. Pray to whatever gods you hold dear that we do not meet again.', 0, 0, 'mobs_nether_drake - SAY_NIHIL_4'),
(-1000400, 'NOOOOooooooo!', 1, 0, 'mobs_nether_drake - SAY_NIHIL_INTERRUPT'),
(-1000401, 'Good $N, you are under the spell\'s influence. I must analyze it quickly, then we can talk.', 0, 7, 'npc_daranelle - SAY_DARANELLE');

-- World SQL file: 973_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='npc_enraged_spirit' WHERE `entry` IN (21050, 21061, 21060, 21059);

-- World SQL file: 1016_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='boss_akilzon' WHERE `entry`=23574;

-- World SQL file: 1016_world.sql
DELETE FROM `trinity_string` WHERE `entry` IN (746, 747);
DELETE FROM `trinity_string` WHERE `entry` BETWEEN 10001 and 10055;
INSERT INTO `trinity_string` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`) VALUES
(746,'|cffff0000[Automatic]:|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(747,'|cffffff00[|c1f40af20Announce by|r |cffff0000%s|cffffff00]:|r %s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10001,'The Horde has taken The Overlook!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10002,'The Alliance has taken The Overlook!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10003,'The Horde has taken The Stadium!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10004,'The Alliance has taken The Stadium!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10005,'The Horde has taken Broken Hill!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10006,'The Alliance has taken Broken Hill!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10007,'The Horde lost The Overlook!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10008,'The Alliance lost The Overlook!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10009,'The Horde lost The Stadium!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10010,'The Alliance lost The Stadium!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10011,'The Horde lost Broken Hill!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10012,'The Alliance lost Broken Hill!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10013,'The Horde has taken the West Beacon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10014,'The Alliance has taken the West Beacon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10015,'The Horde has taken the East Beacon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10016,'The Alliance has taken the East Beacon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10017,'The Horde has captured the Twin Spire Graveyard!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10018,'The Alliance has captured the Twin Spire Graveyard!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10019,'The Horde lost the West Beacon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10020,'The Alliance lost the West Beacon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10021,'The Horde lost the East Beacon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10022,'The Alliance lost the East Beacon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10023,'The Horde lost the Twin Spire Graveyard!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10024,'The Alliance lost the Twin Spire Graveyard!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10025,'The Horde has captured Halaa!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10026,'The Alliance has captured Halaa!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10027,'The Horde lost Halaa!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10028,'The Alliance lost Halaa!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10029,'The Horde has taken a Spirit Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10030,'The Alliance has taken a Spirit Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10031,'The Horde lost a Spirit Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10032,'The Alliance lost a Spirit Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10033,'The Horde has taken the Northpass Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10034,'The Alliance has taken the Northpass Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10035,'The Horde has taken the Eastwall Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10036,'The Alliance has taken the Eastwall Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10037,'The Horde has taken the Crown Guard Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10038,'The Alliance has taken the Crown Guard Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10039,'The Horde has taken the Plaguewood Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10040,'The Alliance has taken the Plaguewood Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10041,'The Horde lost the Northpass Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10042,'The Alliance lost the Northpass Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10043,'The Horde lost the Eastwall Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10044,'The Alliance lost the Eastwall Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10045,'The Horde lost the Crown Guard Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10046,'The Alliance lost the Crown Guard Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10047,'The Horde lost the Plaguewood Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10048,'The Alliance lost the Plaguewood Tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10049,'The Horde has collected 200 silithyst!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10050,'The Alliance has collected 200 silithyst!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10051,'Take me to Northpass Tower.',NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10052,'Take me to Eastwall Tower.',NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10053,'Take me to Crown Guard Tower.',NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10054,'Give me the flag, I\'ll take it to the central beacon for the glory of the Alliance!',NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10055,'Give me the flag, I\'ll take it to the central beacon for the glory of the Horde!',NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- World SQL file: 1018_world.sql
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (31224,41292,44007,44867);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(31224,  -1543,  2, 'Cloak of Shadows - Flare'),
(41292,  42017,  2, 'Aura of Suffering'),
(44007,  -43657, 2, 'Storm Eye Safe Zone Immune'),
(44867,  -46019, 2, 'Spectral Exhaustion - Teleport: Spectral Realm');

-- World SQL file: 1026_world.sql
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN ('-33711','-38794','33686');
INSERT INTO `spell_linked_spell`(`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
('-33711','33686','0','Murmur\'s Shockwave (Normal)'),
('-38794','33686','0','Murmur\'s Shockwave (Heroic)'),
('33686','31705','0','Murmur\'s Shockwave Jump');

-- World SQL file: 1028_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='boss_the_black_stalker' WHERE `entry`=17882;

-- World SQL file: 1069_world_scripts.sql
DELETE FROM `spell_script_target` WHERE `entry` IN ('44807', '32307', '32314');
INSERT INTO `spell_script_target` (`entry`,`type`,`targetEntry`) VALUES
('44807', '1', '24850'), 
('44807', '1', '24892'),
('32307', '2', '17146'),
('32307', '2', '17147'),
('32307', '2', '17148'),
('32307', '2', '18658'),
('32314', '2', '17138'),
('32314', '2', '18037'),
('32314', '2', '18064'),
('32314', '2', '18065');

-- World SQL file: 1073_world_scripts.sql
UPDATE `creature_template` SET `ScriptName`='npc_plains_vision' WHERE `entry`='2983';

-- World SQL file: 1074_world_scripts.sql
UPDATE `creature_template` SET `ScriptName` = 'npc_plucky' WHERE `entry` = '6626';