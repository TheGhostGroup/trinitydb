-- ----------- --
-- TrinityCore --
-- ----------- --

-- 7928_world_quest_template.sql
ALTER TABLE `quest_template` CHANGE COLUMN `QuestFlags` `QuestFlags` int(6) unsigned NOT NULL default '0';

-- 7973_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (67771,67702);
INSERT INTO `spell_proc_event` VALUES (67771,1,0,0,0,0,0x0851154,0x03,0,35,45), (67702,1,0,0,0,0,0x0851154,0x03,0,35,45);

-- 7981_world_season_linked_event.sql
DROP TABLE IF EXISTS `season_linked_event`;
CREATE TABLE `season_linked_event` (
 `season` int(3) UNSIGNED NOT NULL default '0',
 `event` int(8) UNSIGNED NOT NULL default '0',
 PRIMARY KEY (`season`),
 UNIQUE (`season`,`event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 7982_world_spell_proc_event.sql
-- Make Divine Guardian proc on Divine Sacrifice only
DELETE FROM `spell_proc_event` WHERE `entry`=53530;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES 
(53530,1,10,0x0000,0x0000,0x0004,0x0400,0x0001,0,100,0);

-- 8004_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` in (67365,53527,54925);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(67365,2,10,0,0x0800,0,0x040000,0,0,70,6),
(53527,1,10,0,0,0x0004,0x0400,0x0001,0,100,0),
(54925,2,10,0,0x0200,0,0,0,0,0,0);

-- 8006_world_quest_template.sql
ALTER TABLE `quest_template` CHANGE COLUMN `QuestFlags` `QuestFlags` int(10) unsigned NOT NULL default '0';

-- 8049_world_npc_vendor.sql
ALTER TABLE npc_vendor DROP PRIMARY KEY,
ADD PRIMARY KEY (`entry`,`item`,`ExtendedCost`);

-- 8049_world_trinity_strings.sql
DELETE FROM trinity_string WHERE entry in (210);
INSERT INTO trinity_string VALUES
(210,'Item ''%i'' (with extended cost %u) already in vendor list', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- 8057_world_game_event_npc_vendor.sql
ALTER TABLE `game_event_npc_vendor` ADD `slot` SMALLINT(6) NOT NULL DEFAULT '0' AFTER `guid`;
ALTER TABLE `game_event_npc_vendor` ADD INDEX (`slot`);

-- 8057_world_npc_vendor.sql
ALTER TABLE `npc_vendor` ADD `slot` SMALLINT(6) NOT NULL DEFAULT '0' AFTER `entry`;
ALTER TABLE `npc_vendor` ADD INDEX (`slot`);

-- 8109_world_spell_proc_event.sql
-- Arcane Empowerment proc event
DELETE FROM spell_proc_event WHERE entry IN (31583, 31582, 31579);
INSERT INTO spell_proc_event (entry, SchoolMask, SpellFamilyName, SpellFamilyMask0, SpellFamilyMask1, SpellFamilyMask2, procFlags, procEx, ppmRate, CustomChance, Cooldown) VALUES
(31583,0,3,0x20201000,0x8000,0x0,0x00010000,0x0000002,0,0,0),
(31582,0,3,0x20201000,0x8000,0x0,0x00010000,0x0000002,0,0,0),
(31579,0,3,0x20201000,0x8000,0x0,0x00010000,0x0000002,0,0,0);

-- 8140_world_spell_proc_event.sql
-- Undo 8109
DELETE FROM `spell_proc_event` WHERE `entry` IN (31583,31582,31579);

-- 8191_world_spell_proc_event.sql
DELETE FROM spell_proc_event WHERE entry = 63320;
INSERT INTO spell_proc_event (entry, SpellFamilyName, SpellFamilyMask0, SpellFamilyMask1, SpellFamilyMask2, procFlags) VALUES
(63320, 5, 0x80040000, 0x00000000, 0x00008000, 0x00000400); -- Life Tap, Dark Pact

-- 8197_world_spell_bonus_data.sql
DELETE FROM spell_bonus_data WHERE entry = 52042;
INSERT INTO spell_bonus_data (entry, direct_bonus, dot_bonus, ap_bonus, ap_dot_bonus, comments) VALUES 
(52042, 0.0445, 0.0445, -1, -1, 'Shaman - Healing Stream Totem Triggered Heal');

-- 8198_world_quest_template.sql
ALTER TABLE `quest_template` CHANGE COLUMN `SkillOrClass` `SkillOrClassMask` mediumint(8) NOT NULL DEFAULT '0';
UPDATE `quest_template` SET `SkillOrClassMask`=-(1<<(-`SkillOrClassMask`-1)) WHERE `SkillOrClassMask`<0;

-- 8212_world_spell_proc_event.sql
UPDATE spell_proc_event SET procEx = 0x00000070 WHERE entry IN (12298, 12724, 12725, 12726, 12727); -- Shield Specialization

-- 8213_world_spell_proc_event.sql
DELETE FROM spell_proc_event WHERE entry = 23602;

-- 8214_world_command.sql
DELETE FROM `command` WHERE `name` IN ('reload creature_template');
INSERT INTO `command` VALUES 
('reload creature_template','3','Syntax: .reload creature_template $entry\r\nReload the specified creature''s template.');

-- 8214_world_trinity_string.sql
DELETE FROM `trinity_string` WHERE `entry` IN (817,818);
INSERT INTO `trinity_string` VALUES
(817,'Entry %u not found in creature_template table.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(818,'Entry %u not found in sCreatureStorage. Possible new line in creature_template, but you can not add new creatures without restarting. Only modifing is allowed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 8215_world_spell_bonus_data.sql
DELETE FROM spell_bonus_data WHERE entry = 63675;
INSERT INTO spell_bonus_data (entry, direct_bonus, dot_bonus, ap_bonus, ap_dot_bonus, comments) VALUES
(63675, 0, 0, 0, 0, 'Priest - Improved Devouring Plague');

-- 8216_world_spell_group.sql
DELETE FROM spell_group WHERE id = 1107;
INSERT INTO spell_group (id, spell_id) VALUES
(1107, 122), -- Frost Nova
(1107, 33395), -- Freeze
(1107, 55080); -- Shattered Barrier

-- 8216_world_spell_group_stack_rules.sql
DELETE FROM spell_group_stack_rules WHERE group_id = 1107;
INSERT INTO spell_group_stack_rules (group_id, stack_rule) VALUES (1107, 1);

-- 8231_world_spell_dbc.sql
DELETE FROM `spell_dbc` WHERE `Id` = 58428;
INSERT INTO `spell_dbc`
(`Id`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectMiscValueB1`,`EffectMiscValueB2`,`EffectMiscValueB3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`EffectSpellClassMaskA1`,`EffectSpellClassMaskA2`,`EffectSpellClassMaskA3`,`EffectSpellClassMaskB1`,`EffectSpellClassMaskB2`,`EffectSpellClassMaskB3`,`EffectSpellClassMaskC1`,`EffectSpellClassMaskC2`,`EffectSpellClassMaskC3`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`SpellFamilyFlags3`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`DmgMultiplier3`,`AreaGroupId`,`SchoolMask`,`Comment`)
VALUES
(58428,0,0,671089024,0,0,0,0,0,0,1,0,0,100,0,0,0,0,18,1,0,-1,0,0,6,0,0,1,0,0,0,0,0,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,226,0,0,20000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,1,1,1,0,1,'Overkill - aura remove spell');

-- 8232_world_spell_dbc.sql
DELETE FROM `spell_dbc` WHERE `Id` = 56817;
INSERT INTO `spell_dbc`
(`Id`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectMiscValueB1`,`EffectMiscValueB2`,`EffectMiscValueB3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`EffectSpellClassMaskA1`,`EffectSpellClassMaskA2`,`EffectSpellClassMaskA3`,`EffectSpellClassMaskB1`,`EffectSpellClassMaskB2`,`EffectSpellClassMaskB3`,`EffectSpellClassMaskC1`,`EffectSpellClassMaskC2`,`EffectSpellClassMaskC3`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`SpellFamilyFlags3`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`DmgMultiplier3`,`AreaGroupId`,`SchoolMask`,`Comment`)
VALUES
(56817,0,0,384,0,0,0,0,0,0,1,0,16,101,1,0,67,67,1,1,0,-1,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,'Rune strike proc');

-- 8237_world_spell_linked_spell.sql
DELETE FROM spell_linked_spell WHERE spell_trigger = 45524;
INSERT INTO spell_linked_spell VALUES (45524, 55095, 0, 'Chains of Ice - Frost Fever');

-- 8239_world_spell_proc_event.sql
UPDATE spell_proc_event SET SpellFamilyMask1 = 0x00000006 WHERE entry IN (14186, 14190, 14193, 14194, 14195); -- Seal Fate

-- 8241_world_spell_proc_event.sql
UPDATE spell_proc_event SET Cooldown = 1 WHERE entry IN (14186, 14190, 14193, 14194, 14195); -- Seal Fate

-- 8242_world_spell_proc_event.sql
UPDATE spell_proc_event SET SpellFamilyMask0 = 0x00400000, SpellFamilyMask1 = 0x00010000 WHERE entry IN (49208, 56834, 56835); -- Reaping

-- 8244_world_spell_dbc.sql
DELETE FROM spell_dbc WHERE Id IN (24899, 24900);
INSERT INTO spell_dbc (Id, Dispel, Mechanic, Attributes, AttributesEx, AttributesEx2, AttributesEx3, AttributesEx4, AttributesEx5, Targets, CastingTimeIndex, AuraInterruptFlags, ProcFlags, ProcChance, ProcCharges, MaxLevel, BaseLevel, SpellLevel, DurationIndex, RangeIndex, StackAmount, EquippedItemClass, EquippedItemSubClassMask, EquippedItemInventoryTypeMask, Effect1, Effect2, Effect3, EffectDieSides1, EffectDieSides2, EffectDieSides3, EffectRealPointsPerLevel1, EffectRealPointsPerLevel2, EffectRealPointsPerLevel3, EffectBasePoints1, EffectBasePoints2, EffectBasePoints3, EffectMechanic1, EffectMechanic2, EffectMechanic3, EffectImplicitTargetA1, EffectImplicitTargetA2, EffectImplicitTargetA3, EffectImplicitTargetB1, EffectImplicitTargetB2, EffectImplicitTargetB3, EffectRadiusIndex1, EffectRadiusIndex2, EffectRadiusIndex3, EffectApplyAuraName1, EffectApplyAuraName2, EffectApplyAuraName3, EffectAmplitude1, EffectAmplitude2, EffectAmplitude3, EffectMultipleValue1, EffectMultipleValue2, EffectMultipleValue3, EffectMiscValue1, EffectMiscValue2, EffectMiscValue3, EffectMiscValueB1, EffectMiscValueB2, EffectMiscValueB3, EffectTriggerSpell1, EffectTriggerSpell2, EffectTriggerSpell3, EffectSpellClassMaskA1, EffectSpellClassMaskA2, EffectSpellClassMaskA3, EffectSpellClassMaskB1, EffectSpellClassMaskB2, EffectSpellClassMaskB3, EffectSpellClassMaskC1, EffectSpellClassMaskC2, EffectSpellClassMaskC3, MaxTargetLevel, SpellFamilyName, SpellFamilyFlags1, SpellFamilyFlags2, SpellFamilyFlags3, MaxAffectedTargets, DmgClass, PreventionType, DmgMultiplier1, DmgMultiplier2, DmgMultiplier3, AreaGroupId, SchoolMask, Comment) VALUES 
(24899, 0, 0, 400, 1024, 0, 0, 2097152, 0, 0, 1, 0, 0, 101, 0, 0, 0, 0, 21, 1, 0, -1, 0, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 137, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Heart of the Wild Bear Effect'),
(24900, 0, 0, 400, 1024, 0, 0, 2097152, 0, 0, 1, 0, 0, 101, 0, 0, 0, 0, 21, 1, 0, -1, 0, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Heart of the Wild Cat Effect');

-- 8255_world_item_template.sql
ALTER TABLE `item_template` CHANGE `Faction` `FlagsExtra` INT(10) UNSIGNED NOT NULL DEFAULT '0';

-- 8259_world_spell_proc_event.sql
UPDATE `spell_proc_event` SET `SpellFamilyMask1`=192 WHERE `entry` in (63156,63158);

-- 8271_world_spell_dbc.sql
-- Add serverside spells place holders for future development
DELETE FROM `spell_dbc` WHERE `Id`=43503;
INSERT INTO `spell_dbc` (`Id`,`Comment`) VALUES
(43503, 'Quest 11261 reward serverside spell');

-- 8280_world_spell_dbc.sql
-- Add serverside spells place holders for future development
DELETE FROM `spell_dbc` WHERE `Id`=39613;
INSERT INTO `spell_dbc` (`Id`,`Comment`) VALUES
(39613, 'Quest 10967 reward serverside spell');

-- 8292_world_creature.sql
ALTER TABLE `creature` CHANGE `spawndist` `spawndist` FLOAT NOT NULL DEFAULT '0';

-- 8293_world_spell_dbc.sql
DELETE FROM `spell_dbc` WHERE `id`IN (34448,34452);
INSERT INTO `spell_dbc` (`Id`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectMiscValueB1`,`EffectMiscValueB2`,`EffectMiscValueB3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`EffectSpellClassMaskA1`,`EffectSpellClassMaskA2`,`EffectSpellClassMaskA3`,`EffectSpellClassMaskB1`,`EffectSpellClassMaskB2`,`EffectSpellClassMaskB3`,`EffectSpellClassMaskC1`,`EffectSpellClassMaskC2`,`EffectSpellClassMaskC3`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`SpellFamilyFlags3`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`DmgMultiplier3`,`AreaGroupId`,`SchoolMask`,`Comment`) VALUES 
(34448,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,77,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Serverside spell orb of translocation (gobjid=180911)' ),
(34452,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,77,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Serverside spell orb of translocation (gobjid=180912)' );



-- ------------- --
-- TrinityScript --
-- ------------- --

-- 7930_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`= 'npc_alorah_and_grimmin' WHERE `entry` IN (36101,36102);

-- 7963_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_locksmith' WHERE `entry` IN (29665,29725,29728);

-- 7988_world_scriptname.sql
DELETE FROM `areatrigger_scripts` WHERE `entry` IN (5332,5338,5334,5340);
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5332,'at_last_rites'),
(5338,'at_last_rites'),
(5334,'at_last_rites'),
(5340,'at_last_rites');

-- 8041_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_tabard_vendor' WHERE `entry`=28776;

-- 8044_world_script_texts.sql
DELETE FROM `script_texts` WHERE `npc_entry` IN (27316,27577);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2` ,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(27316,-1800041, 'Let''s you and I have a chat about some things,Godfrey.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27316,-1800040, 'Return to Halford with the information the good mayor was kind enough to submit,$N,I will finish here and squeeze whatever else this wretch might know about Thel''zan. Now,I will show Godfrey the rarely shown "option three." ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27316,-1800039, 'You let us worry about how we kill the bastard,Godfrey. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27316,-1800036, 'What? There is a mausoleum beneath the old village? What fools we are to not have noticed. We will find and strike down your master now,Godfrey. We will end this nightmare. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27316,-1800033, 'RUBBISH! Godfrey do you take me for a fool? Do not spew your Scourge propaganda at a man of the Light,heathen! Speak now or I will have the peasants craft a holy water bath and dip you into it like a dog with fleas! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27316,-1800031, 'I thought you would see the Light,Godfrey... Now speak quickly,fiend. What does it say? ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27316,-1800030, 'The power of the Lich King pales in comparison to the glory of the Light! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27316,-1800029, 'LIGHT TAKE YOU,BEAST! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27316,-1800027, 'LET THE LIGHT IN,GODFREY GODDARD! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27316,-1800026, 'May the power of Light compel you! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27316,-1800024, 'LET THE LIGHT IN,GODFREY GODDARD! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27316,-1800023, 'Let the sermon begin.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27316,-1800022, 'I say a prayer for you now,lost soul. May the Light take you gracefully. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27316,-1800021, 'Then it is option two. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27316,-1800016, 'Good,I have your attention,then,Godfrey? ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27316,-1800015, 'GODFREY! Hear me,fiend! Hear me,for I am the Light,here to deliver you from evil! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27316,-1800014, 'Stand back,$N,the beast might lash out and harm you. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27316,-1800017, 'We can do this in one of two ways,Godfrey. First,I will simply ask you to tell me what the unholy markings etched upon the pages of this tome mean. What say you? ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27577,-1800038, 'You cannot stop Thel''zan! He bears the dark gift,bestowed upon him by the Lich King himself! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27577,-1800037, 'How? Humans truly are stupid,yes? Thel''zan the Duskbringer! Thel''zan the Lich! He who is born of human flesh and bone,sacrificed all power,protected by the Lich King! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27577,-1800035, 'Humans... Beneath the earth of Wintergarde Village you built a mausoleum! Why do you think Naxxramas attacked that spot? Thel''zan hides deep in your own crypt and sends a thousand-thousand corpses at you! Perish you will... ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27577,-1800034, 'NOOOO!!! I tell you! I tell you everything! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27577,-1800032, 'It tells of the coming apocalypse. How this world will burn and be reborn from death. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27577,-1800028, 'Never felt hurt like this! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27577,-1800025, 'IT BURNSSSSS! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27577,-1800020, 'The book is your salvation,yes... but nothing will you know. NOTHING I SAY! NOTHING! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27577,-1800019, 'What can you do to me that Kel''Thuzad has not? That the Lich King will not? ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(27577,-1800018, 'Tell you nothing,preacher. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);

-- 8044_world_script_waypoints.sql
DELETE FROM `script_waypoint` WHERE `entry`=27316;
INSERT INTO `script_waypoint` (`entry`,`pointid`,`location_x`,`location_y`,`location_z`,`waittime`,`point_comment`) VALUES
(27316,1,3801.11,-678.964,213.753,5000, ''),
(27316,2,3801.11,-678.964,213.753,5000, ''),
(27316,3,3801.11,-678.964,213.753,5000, ''),
(27316,4,3801.11,-678.964,213.753,5000, ''),
(27316,5,3801.11,-678.964,213.753,5000, ''),
(27316,6,3801.11,-678.964,213.753,5000, ''),
(27316,7,3801.11,-678.964,213.753,5000, ''),
(27316,8,3801.11,-678.964,213.753,5000, ''),
(27316,9,3801.11,-678.964,213.753,5000, ''),
(27316,10,3801.11,-678.964,213.753,5000, ''),
(27316,11,3801.11,-678.964,213.753,5000, ''),
(27316,12,3801.11,-678.964,213.753,5000, ''),
(27316,13,3801.11,-678.964,213.753,5000, ''),
(27316,14,3801.11,-678.964,213.753,5000, ''),
(27316,15,3801.11,-678.964,213.753,5000, ''),
(27316,16,3801.11,-678.964,213.753,5000, ''),
(27316,17,3801.11,-678.964,213.753,5000, ''),
(27316,18,3801.11,-678.964,213.753,5000, ''),
(27316,19,3801.11,-678.964,213.753,5000, ''),
(27316,20,3801.11,-678.964,213.753,5000, ''),
(27316,21,3801.11,-678.964,213.753,5000, ''),
(27316,22,3801.11,-678.964,213.753,5000, ''),
(27316,23,3801.11,-678.964,213.753,5000, ''),
(27316,24,3801.11,-678.964,213.753,5000, ''),
(27316,25,3801.11,-678.964,213.753,5000, ''),
(27316,26,3801.11,-678.964,213.753,5000, ''),
(27316,27,3801.11,-678.964,213.753,10000, '');

-- 8044_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_inquisitor_hallard' WHERE `entry`=27316;

-- 8051_world_script_texts.sql
DELETE FROM `script_texts` WHERE `npc_entry`=27463;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(27463, -1800046, 'Thank you. $Class!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'RANDOM_SAY_3'),
(27463, -1800045, 'Whoa.. i nearly died there. Thank you, $Race!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'RANDOM_SAY_2'),
(27463, -1800044, 'Ahh..better..', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'RANDOM_SAY_1');

-- 8051_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_wounded_skirmisher' WHERE `entry`=27463;

-- 8052_world_script_texts.sql
DELETE FROM `script_texts` WHERE `npc_entry`= 29434;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
('29434', '-1800042', 'Let me know when you''re ready. I''d prefer sooner than later... what with the slowly dying from poison and all. ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', 'injured goblin SAY_QUEST_START'), 
('29434', '-1800043', 'I''m going to bring the venom sack to Ricket... and then... you know... collapse. Thank you for helping me! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', 'injured goblin SAY_END_WP_REACHED');

-- 8052_world_script_waypoint.sql
DELETE FROM `script_waypoint` WHERE `entry` =29434;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES
(29434, 1, 6645.47, -1263.66, 396.938, 0, ''),
(29434, 2, 6662.06, -1274.13, 397.319, 0, ''),
(29434, 3, 6666.29, -1254.59, 396.11, 0, ''),
(29434, 4, 6669.33, -1240.06, 397.789, 0, ''),
(29434, 5, 6654.31, -1205.01, 399.823, 0, ''),
(29434, 6, 6657.03, -1170.15, 398.755, 0, ''),
(29434, 7, 6667.33, -1146.28, 399.014, 0, ''),
(29434, 8, 6670.9, -1138.68, 397.125, 0, ''),
(29434, 9, 6685.09, -1103.95, 396.828, 0, ''),
(29434, 10, 6688.71, -1094.32, 395.019, 0, ''),
(29434, 11, 6684.75, -1084.31, 396.916, 0, ''),
(29434, 12, 6679.3, -1074.4, 404.284, 0, ''),
(29434, 13, 6691.91, -1051.96, 407.983, 0, ''),
(29434, 14, 6696.28, -1016.54, 414.823, 0, ''),
(29434, 15, 6675.32, -1005.06, 414.844, 0, ''),
(29434, 16, 6661.01, -1007.41, 414.946, 0, ''),
(29434, 17, 6643.75, -1010.24, 420.508, 0, ''),
(29434, 18, 6620.76, -1012.59, 424.378, 0, ''),
(29434, 19, 6610.33, -996.992, 428.116, 0, ''),
(29434, 20, 6581.3, -1005.9, 434.257, 0, ''),
(29434, 21, 6570.74, -1013, 434.076, 0, ''),
(29434, 22, 6551.68, -1012.38, 433.218, 0, ''),
(29434, 23, 6530.83, -1024.99, 433.04, 0, ''),
(29434, 24, 6510.05, -1031.23, 435.824, 0, ''),
(29434, 25, 6491.5, -1032.46, 434.226, 0, ''),
(29434, 26, 6475.58, -1023.13, 434.759, 0, ''),
(29434, 27, 6451.81, -1025.43, 431.502, 10000, '');

-- 8052_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_injured_goblin' WHERE `entry`=29434;

-- 8054_world_script_waypoint.sql
DELETE FROM `script_waypoint` WHERE `entry`=17238;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES
(17238, 1, 953.061, -1432.52, 63.2255, 0, ''),
(17238, 2, 969.607, -1438.15, 65.3669, 0, ''),
(17238, 3, 980.073, -1441.5, 65.3997, 0, ''),
(17238, 4, 995.001, -1450.47, 61.3227, 0, ''),
(17238, 5, 1032.7, -1473.49, 63.7699, 0, ''),
(17238, 6, 1039.69, -1491.42, 65.2801, 0, ''),
(17238, 7, 1038.8, -1523.32, 64.4661, 0, ''),
(17238, 8, 1035.43, -1572.97, 61.5412, 0, ''),
(17238, 9, 1034.45, -1612.83, 61.6186, 0, ''),
(17238, 10, 1040.12, -1663.41, 60.923, 0, ''),
(17238, 11, 1059.75, -1703.75, 60.5768, 0, ''),
(17238, 12, 1091.83, -1735.24, 60.8057, 0, ''),
(17238, 13, 1131.75, -1755.32, 61.0073, 0, ''),
(17238, 14, 1159.77, -1762.64, 60.5699, 0, ''),
(17238, 15, 1153.79, -1772, 60.6475, 0, ''),
(17238, 16, 1115.4, -1787.21, 61.0759, 0, ''),
(17238, 17, 1091.88, -1799.06, 61.6055, 0, ''),
(17238, 18, 1056.22, -1805.65, 71.8112, 0, ''),
(17238, 19, 1024.03, -1807.93, 77.025, 0, ''),
(17238, 20, 1012.74, -1811.67, 77.5636, 0, ''),
(17238, 21, 1006.74, -1813.59, 80.4872, 0, ''),
(17238, 22, 983.15, -1823.05, 80.4872, 0, ''),
(17238, 23, 974.954, -1825.33, 81.3482, 5000, ''),
(17238, 24, 974.954, -1825.33, 81.3482, 5000, ''),
(17238, 25, 974.954, -1825.33, 81.3482, 5000, ''),
(17238, 26, 974.954, -1825.33, 81.3482, 5000, '');

-- 8054_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_anchorite_truuen' WHERE `entry`=17238;

-- 8058_world_scriptname.sql
UPDATE `item_template` SET `ScriptName`='item_Trident_of_Nazjan' WHERE `entry`=35850;

-- 8060_world_script_waypoint.sql
DELETE FROM `script_waypoint` WHERE `entry`=5644;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES
(5644, 1, -339.679, 1752.04, 139.482, 0, ''),
(5644, 2, -328.957, 1734.95, 139.327, 0, ''),
(5644, 3, -350.747, 1731.12, 139.338, 0, ''),
(5644, 4, -365.064, 1739.04, 139.376, 0, ''),
(5644, 5, -371.105, 1746.03, 139.374, 0, ''),
(5644, 6, -383.141, 1738.62, 138.93, 0, ''),
(5644, 7, -390.445, 1733.98, 136.353, 0, ''),
(5644, 8, -401.368, 1726.77, 131.071, 0, ''),
(5644, 9, -416.016, 1721.19, 129.807, 0, ''),
(5644, 10, -437.139, 1709.82, 126.342, 0, ''),
(5644, 11, -459.862, 1687.92, 116.059, 0, ''),
(5644, 12, -460.686, 1679.55, 111.976, 0, ''),
(5644, 13, -461.485, 1670.94, 109.033, 0, ''),
(5644, 14, -468.53, 1645.51, 102.811, 0, ''),
(5644, 15, -474.529, 1615.97, 97.228, 0, ''),
(5644, 16, -474.329, 1590.01, 94.4982, 0, '');

-- 8060_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_dalinda' WHERE `entry`=5644;

-- 8062_world_script_texts.sql
DELETE FROM `script_texts` WHERE `npc_entry`=28787;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(28787, -1800047, 'Let''s get the hell out of here', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(28787, -1800048, 'Listen up, Venture Company goons! Rule #1: Never keep the prisoner near the explosives.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(28787, -1800049, 'Or THIS is what you get. ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(28787, -1800050, 'It''s getting a little hot over here. Shall we move on? ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(28787, -1800051, 'Oh, look, it''s another cartload of explosives! Let''s help them dispose of it. ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(28787, -1800052, 'You really shouldn''t play with this stuff. Someone could get hurt.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(28787, -1800053, 'We made it! Thank you for getting me out of that hell hole. Tell Hemet to expect me! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

-- 8062_world_script_waypoint.sql
DELETE FROM `script_waypoint` WHERE `entry` =28787;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES
(28787, 0, 5919.43, 5374.88, -98.8816, 5000, ''),
(28787, 1, 5919.43, 5374.88, -98.8816, 5000, ''),
(28787, 2, 5925.17, 5372.37, -98.8815, 0, ''),
(28787, 3, 5928.32, 5377, -99.0266, 0, ''),
(28787, 4, 5917.24, 5383.36, -106.31, 0, ''),
(28787, 5, 5907.49, 5389.62, -106.31, 0, ''),
(28787, 6, 5899.66, 5405.25, -96.5535, 0, ''),
(28787, 7, 5890.27, 5395.42, -95.5519, 0, ''),
(28787, 8, 5887.57, 5384.4, -95.4326, 5000, ''),
(28787, 9, 5878.52, 5384.61, -93.3333, 0, ''),
(28787, 10, 5873.17, 5360.43, -98.4124, 0, ''),
(28787, 11, 5859.23, 5353.29, -98.8777, 0, ''),
(28787, 12, 5841.27, 5334.14, -100.446, 0, ''),
(28787, 13, 5819.81, 5300.27, -96.8567, 0, '');

-- 8062_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_engineer_helice' WHERE `entry`=28787;

-- 8063_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_ogre_brute' WHERE `entry`=19995;
UPDATE `creature_template` SET `ScriptName`='npc_bloodmaul_brutebane' WHERE `entry`=21241;

-- 8073_world_scriptname.sql
UPDATE `gameobject_template` SET `ScriptName`='go_scourge_enclosure' WHERE `entry`=191548;

-- 8088_world_scriptname.sql
UPDATE `gameobject_template` SET `ScriptName`='go_hive_pod' WHERE `entry`=178553;

-- 8089_world_script_texts.sql
DELETE FROM `script_texts` WHERE `npc_entry`=12717;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(12717, -1800054, 'Are you sure that you are ready? If we do not have a group of your allies to aid us, we will surely fail.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'muglash SAY_MUG_START1'),
(12717, -1800055, 'This will be a though fight, $N. Follow me closely.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'muglash SAY_MUG_START2'),
(12717, -1800056, 'This is the brazier, $N. Put it out. Vorsha is a beast, worthy of praise from no one!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'muglash SAY_MUG_BRAZIER'),
(12717, -1800057, 'Now we must wait. It won''t be long before the naga realize what we have done.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'muglash SAY_MUG_BRAZIER_WAIT'),
(12717, -1800058, 'Be on your guard, $N!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'muglash SAY_MUG_ON_GUARD'),
(12717, -1800059, 'Perhaps we will get a moment to rest. But I will not give up until we have faced off against Vorsha!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'muglash SAY_MUG_REST'),
(12717, -1800060, 'We have done it!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'muglash SAY_MUG_DONE'),
(12717, -1800061, 'You have my deepest gratitude. I thank you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'muglash SAY_MUG_GRATITUDE'),
(12717, -1800062, 'I am going to patrol the area for a while longer and ensure that things are truly safe.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'muglash SAY_MUG_PATROL'),
(12717, -1800063, 'Please return to Zoram''gar and report our success to the Warsong runner.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'muglash SAY_MUG_RETURN');

-- 8089_world_script_waypoint.sql
DELETE FROM `script_waypoint` WHERE `entry`=12717;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`,`location_y`, `location_z`, `waittime`, `point_comment`) VALUES
(12717, 0, 3346.25, 1007.88, 3.59, 0, 'SAY_MUG_START2'),
(12717, 1, 3367.39, 1011.51, 3.72, 0, ''),
(12717, 2, 3418.64, 1013.96, 2.905, 0, ''),
(12717, 3, 3426.84, 1015.1, 3.449, 0, ''),
(12717, 4, 3437.03, 1020.79, 2.742, 0, ''),
(12717, 5, 3460.56, 1024.26, 1.353, 0, ''),
(12717, 6, 3479.87, 1037.96, 1.023, 0, ''),
(12717, 7, 3490.53, 1043.35, 3.338, 0, ''),
(12717, 8, 3504.28, 1047.77, 8.205, 0, ''),
(12717, 9, 3510.73, 1049.79, 12.143, 0, ''),
(12717, 10, 3514.41, 1051.17, 13.235, 0, ''),
(12717, 11, 3516.94, 1052.91, 12.918, 0, ''),
(12717, 12, 3523.64, 1056.3, 7.563, 0, ''),
(12717, 13, 3531.94, 1059.86, 6.175, 0, ''),
(12717, 14, 3535.48, 1069.96, 1.697, 0, ''),
(12717, 15, 3546.98, 1093.49, 0.68, 0, ''),
(12717, 16, 3549.73, 1101.88, -1.123, 0, ''),
(12717, 17, 3555.14, 1116.99, -4.326, 0, ''),
(12717, 18, 3571.94, 1132.18, -0.634, 0, ''),
(12717, 19, 3574.28, 1137.58, 3.684, 0, ''),
(12717, 20, 3579.31, 1137.25, 8.205, 0, ''),
(12717, 21, 3590.22, 1143.65, 8.291, 0, ''),
(12717, 22, 3595.97, 1145.83, 6.773, 0, ''),
(12717, 23, 3603.65, 1146.92, 9.763, 0, ''),
(12717, 24, 3607.08, 1146.01, 10.692, 5000, 'SAY_MUG_BRAZIER'),
(12717, 25, 3614.52, 1142.63, 10.248, 0, ''),
(12717, 26, 3616.66, 1140.84, 10.682, 3000, 'SAY_MUG_PATROL'),
(12717, 27, 3621.08, 1138.11, 10.369, 0, 'SAY_MUG_RETURN'),
(12717, 28, 3615.48, 1145.53, 9.614, 0, ''),
(12717, 29, 3607.19, 1152.72, 8.871, 0, '');

-- 8089_world_scriptname.sql
UPDATE `gameobject_template` SET `ScriptName`='go_naga_brazier' WHERE `entry`=178247;
UPDATE `creature_template` SET `ScriptName`='npc_muglash' WHERE `entry`=12717;

-- 8122_world_scriptname.sql
DELETE FROM `areatrigger_scripts` WHERE `entry` BETWEEN 1726 AND 1740;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(1726, 'at_scent_larkorwi'),
(1727, 'at_scent_larkorwi'),
(1728, 'at_scent_larkorwi'),
(1729, 'at_scent_larkorwi'),
(1730, 'at_scent_larkorwi'),
(1731, 'at_scent_larkorwi'),
(1732, 'at_scent_larkorwi'),
(1733, 'at_scent_larkorwi'),
(1734, 'at_scent_larkorwi'),
(1735, 'at_scent_larkorwi'),
(1736, 'at_scent_larkorwi'),
(1737, 'at_scent_larkorwi'),
(1738, 'at_scent_larkorwi'),
(1739, 'at_scent_larkorwi'),
(1740, 'at_scent_larkorwi');

-- 8156_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_experience'WHERE `entry` IN (35364,35365);

-- 8179_world_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` IN (-1571039,-1571040,-1571041);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
   (30014,-1571039,'Yggdras emerges!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,''),
   (30017,-1571040,'Stinkbeard comin'' for you, little ones!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
   (30007,-1571041,'Do you fell that folks? The air is cracking with energy! Than can only mean one thing...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'');

-- 8179_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_elemental_lord' WHERE `entry` IN (30024,30025,30019,30026);
UPDATE `creature_template` SET `ScriptName`='npc_fiend_elemental' WHERE `entry` IN (30044,30042,30043,30045);

-- 8246_world_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` <= -1668000 and `entry` >= -1668999;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
-- INTRO
(37221,-1668001,'The chill of this place... Brr... I can feel my blood freezing.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16631,1,0,0,'Jaina SAY_JAINA_INTRO_1'),
(37221,-1668002,'What is that? Up ahead! Could it be... ? Heroes at my side!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16632,1,0,0,'Jaina SAY_JAINA_INTRO_2'),
(37221,-1668003,'Frostmourne! The blade that destroyed our kingdom...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16633,1,0,0,'Jaina SAY_JAINA_INTRO_3'),
(37221,-1668004,'Stand back! Touch that blade and your soul will be scarred for all eternity! I must attempt to commune with the spirits locked away within Frostmourne. Give me space, back up please!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16634,1,0,0,'Jaina SAY_JAINA_INTRO_4'),
(37225,-1668005,'Jaina! Could it truly be you?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16666,1,0,0,'Uther SAY_UTHER_INTRO_A2_1'),
(37221,-1668006,'Uther! Dear Uther! ... I... I''m so sorry.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16635,0,0,0,'Jaina SAY_JAINA_INTRO_5'),
(37225,-1668007,'Jaina you haven''t much time. The Lich King sees what the sword sees. He will be here shortly!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16667,0,0,0,'Uther SAY_UTHER_INTRO_A2_2'),
(37221,-1668008,'Arthas is here? Maybe I...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16636,0,0,0,'Jaina SAY_JAINA_INTRO_6'),
(37225,-1668009,'No, girl. Arthas is not here. Arthas is merely a presence within the Lich King''s mind. A dwindling presence...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16668,0,0,0,'Uther SAY_UTHER_INTRO_A2_3'),
(37221,-1668010,'But Uther, if there''s any hope of reaching Arthas. I... I must try.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16637,0,0,0,'Jaina SAY_JAINA_INTRO_7'),
(37225,-1668011,'Jaina, listen to me. You must destroy the Lich King. You cannot reason with him. He will kill you and your allies and raise you all as powerful soldiers of the Scourge.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16669,0,0,0,'Uther SAY_UTHER_INTRO_A2_4'),
(37221,-1668012,'Tell me how, Uther? How do I destroy my prince? My...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16638,0,0,0,'Jaina SAY_JAINA_INTRO_8'),
(37225,-1668013,'Snap out of it, girl. You must destroy the Lich King at the place where he merged with Ner''zhul - atop the spire, at the Frozen Throne. It is the only way.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16670,0,0,0,'Uther SAY_UTHER_INTRO_A2_5'),
(37221,-1668014,'You''re right, Uther. Forgive me. I... I don''t know what got a hold of me. We will deliver this information to the King and the knights that battle the Scourge within Icecrown Citadel.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16639,0,0,0,'Jaina SAY_JAINA_INTRO_9'),
(37225,-1668015,'There is... something else that you should know about the Lich King. Control over the Scourge must never be lost. Even if you were to strike down the Lich King, another would have to take his place. For without the control of its master, the Scourge would run rampant across the world - destroying all living things.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16671,0,0,0,'Uther SAY_UTHER_INTRO_A2_6'),
(37225,-1668016,'A grand sacrifice by a noble soul...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16672,0,0,0,'Uther SAY_UTHER_INTRO_A2_7'),
(37221,-1668017,'Who could bear such a burden?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16640,0,0,0,'Jaina SAY_JAINA_INTRO_10'),
(37225,-1668018,'I do not know, Jaina. I suspect that the piece of Arthas that might be left inside the Lich King is all that holds the Scourge from annihilating Azeroth.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16673,0,0,0,'Uther SAY_UTHER_INTRO_A2_8'),
(37221,-1668019,'Then maybe there is still hope...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16641,0,0,0,'Jaina SAY_JAINA_INTRO_11'),
(37225,-1668020,'No, Jaina! Aargh! He... He is coming! You... You must...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16674,0,0,0,'Uther SAY_UTHER_INTRO_A2_9'),
(37223,-1668021,'I... I don''t believe it! Frostmourne stands before us, unguarded! Just as the Gnome claimed. Come, heroes!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17049,1,0,0,'Sylvanas SAY_SYLVANAS_INTRO_1'),
(37223,-1668022,'Standing this close to the blade that ended my life... The pain... It is renewed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17050,1,0,0,'Sylvanas SAY_SYLVANAS_INTRO_2'),
(37223,-1668023,'I dare not touch it. Stand back! Stand back as I attempt to commune with the blade! Perhaps our salvation lies within...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17051,1,0,0,'Sylvanas SAY_SYLVANAS_INTRO_3'),
(37225,-1668024,'Careful, girl. I''ve heard talk of that cursed blade saving us before. Look around you and see what has been born of Frostmourne.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16659,0,0,0,'Uther SAY_UTHER_INTRO_H2_1'),
(37223,-1668025,'Uther...Uther the Lightbringer. How...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17052,0,0,0,'Sylvanas SAY_SYLVANAS_INTRO_4'),
(37225,-1668026,'You haven''t much time. The Lich King sees what the sword sees. He will be here shortly.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16660,0,0,0,'Uther SAY_UTHER_INTRO_H2_2'),
(37223,-1668027,'The Lich King is here? Then my destiny shall be fulfilled today!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17053,0,0,0,'Sylvanas SAY_SYLVANAS_INTRO_5'),
(37225,-1668028,'You cannot defeat the Lich King. Not here. You would be a fool to try. He will kill those who follow you and raise them as powerful servants of the Scourge. But for you, Sylvanas, his reward for you would be worse than the last.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16661,0,0,0,'Uther SAY_UTHER_INTRO_H2_3'),
(37223,-1668029,'There must be a way... ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17054,0,0,0,'Sylvanas SAY_SYLVANAS_INTRO_6'),
(37225,-1668030,'Perhaps, but know this: there must always be a Lich King. Even if you were to strike down Arthas, another would have to take his place, for without the control of the Lich King, the Scourge would wash over this world like locusts, destroying all that they touched.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16662,0,0,0,'Uther SAY_UTHER_INTRO_H2_4'),
(37223,-1668031,'Who could bear such a burden?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17055,0,0,0,'Sylvanas SAY_SYLVANAS_INTRO_7'),
(37225,-1668032,'I do not know, Banshee Queen. I suspect that the piece of Arthas that might be left inside the Lich King is all that holds the Scourge from annihilating Azeroth.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16663,0,0,0,'Uther SAY_UTHER_INTRO_H2_5'),
(37225,-1668033,'Alas, the only way to defeat the Lich King is to destroy him at the place he was created.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16664,0,0,0,'Uther SAY_UTHER_INTRO_H2_6'),
(37223,-1668034,'The Frozen Throne...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17056,0,0,0,'Sylvanas SAY_SYLVANAS_INTRO_8'),
(37225,-1668035,'I... Aargh... He... He is coming... You... You must...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16665,0,0,0,'Uther SAY_UTHER_INTRO_H2_7'),
(37226,-1668036,'SILENCE, PALADIN!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17225,1,0,0,'Lich King SAY_LK_INTRO_1'),
(37226,-1668037,'So you wish to commune with the dead? You shall have your wish.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17226,1,0,0,'Lich King SAY_LK_INTRO_2'),
(37226,-1668038,'Falric. Marwyn. Bring their corpses to my chamber when you are through.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17227,1,0,0,'Lich King SAY_LK_INTRO_3'),
(38112,-1668039,'As you wish, my lord.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16717,1,0,0,'Falric SAY_FALRIC_INTRO_1'),
(38113,-1668040,'As you wish, my lord.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16741,1,0,0,'Marwyn SAY_MARWYN_INTRO_1'),
(38112,-1668041,'Soldiers of Lordaeron, rise to meet your master''s call!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16714,1,0,0,'Falric SAY_FALRIC_INTRO_2'),
(37221,-1668042,'You won''t deny me this Arthas! I must know! I must find out!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16642,1,0,0,'Jaina SAY_JAINA_INTRO_END'),
(37223,-1668043,'You will not escape me that easily, Arthas! I will have my vengeance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17057,1,0,0,'Sylvanas SAY_SYLVANAS_INTRO_END'),
-- Falric
(38112,-1668050,'Men, women and children... None were spared the master''s wrath. Your death will be no different.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16710,1,0,0,'Falric SAY_AGGRO'),
(38112,-1668051,'Sniveling maggot!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16711,1,0,0,'Falric SAY_SLAY_1'),
(38112,-1668052,'The children of Stratholme fought with more ferocity!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16712,1,0,0,'Falric SAY_SLAY_2'),
(38112,-1668053,'Marwyn, finish them...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16713,1,0,0,'Falric SAY_DEATH'),
(38112,-1668054,'Despair... so delicious...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16715,1,0,0,'Falric SAY_IMPENDING_DESPAIR'),
(38112,-1668055,'Fear... so exhilarating...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16716,1,0,0,'Falric SAY_DEFILING_HORROR'),
-- Marwyn
(38113,-1668060,'Death is all that you will find here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16734,1,0,0,'Marwyn SAY_AGGRO'),
(38113,-1668061,'I saw the same look in his eyes when he died. Terenas could hardly believe it. Hahahaha!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16735,1,0,0,'Marwyn SAY_SLAY_1'),
(38113,-1668062,'Choke on your suffering!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16736,1,0,0,'Marwyn SAY_SLAY_2'),
(38113,-1668063,'Yes... Run... Run to meet your destiny... Its bitter, cold embrace, awaits you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16737,1,0,0,'Marwyn SAY_DEATH'),
(38113,-1668064,'Your flesh has decayed before your very eyes!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16739,1,0,0,'Marwyn SAY_CORRUPTED_FLESH_1'),
(38113,-1668065,'Waste away into nothingness!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16740,1,0,0,'Marwyn SAY_CORRUPTED_FLESH_2');

-- 8246_world_scriptname.sql
UPDATE `instance_template` SET `script`='instance_halls_of_reflection' WHERE `map`=668;
UPDATE `creature_template` SET `Scriptname`='boss_falric' WHERE `entry`=38112;
UPDATE `creature_template` SET `Scriptname`='boss_marwyn' WHERE `entry`=38113;
UPDATE `creature_template` SET `Scriptname`='npc_jaina_hor_part1' WHERE `entry`=37221;
UPDATE `creature_template` SET `Scriptname`='npc_sylvanas_hor_part1' WHERE `entry`=37223;
UPDATE `creature_template` SET `Scriptname`='npc_ghostly_priest' WHERE `entry`=38175;
UPDATE `creature_template` SET `Scriptname`='npc_phantom_mage' WHERE `entry`=38172;
UPDATE `creature_template` SET `Scriptname`='npc_phantom_hallucination' WHERE `entry`=38567;
UPDATE `creature_template` SET `Scriptname`='npc_shadowy_mercenary' WHERE `entry`=38177;
UPDATE `creature_template` SET `Scriptname`='npc_spectral_footman' WHERE `entry`=38173;
UPDATE `creature_template` SET `Scriptname`='npc_tortured_rifleman' WHERE `entry`=38176;

-- 8248_world_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` IN (-1578000,-1578001,-1578002,-1578003,-1578004);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
   (27655,-1578000,'What do we have here... those that would defy the Spell-Weaver? Those without foresight our understanding. How can i make you see? Malygos is saving the world from itself! Bah! You are hardly worth my time!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
   (27655,-1578001,'Clearly my pets failed. Perhaps another demonstration is in order.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
   (27655,-1578002,'Still you fight. Still you cling to misguided principles. If you survive, you''ll find me in the center ring.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
   (27655,-1578003,'Poor blind fools!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
   (27655,-1578004,'A taste... just a small taste... of the Spell-Weaver''s power!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'');

-- 8248_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='boss_urom' WHERE `entry`=27655;

-- 8263_world_script_texts.sql
-- King Ymiron voice by SnakeIce
DELETE FROM `script_texts` WHERE `npc_entry`=26861;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES 
(26861,-1575028, 'You invade my home and then dare to challenge me? I will tear the hearts from your chests and offer them as gifts to the death god! Rualg nja gaborr!' ,13609,1,0,0, 'King Ymirom - SAY_AGGRO'),
(26861,-1575029, 'Your death is only the beginning!' ,13614,1,0,0, 'King Ymirom - SAY_SLAY_1'),
(26861,-1575030, 'You have failed your people!' ,13615,1,0,0, 'King Ymirom - SAY_SLAY_2'),
(26861,-1575031, 'There is a reason I am king!' ,13616,1,0,0, 'King Ymirom - SAY_SLAY_3'),
(26861,-1575032, 'Bleed no more!' ,13617,1,0,0, 'King Ymirom - SAY_SLAY_4'),
(26861,-1575033, 'What... awaits me... now?' ,13618,1,0,0, 'King Ymirom - SAY_DEATH'),
(26861,-1575034, 'Bjorn of the Black Storm! Honor me now with your presence!' ,13610,1,0,0, 'King Ymirom - SAY_SUMMON_BJORN'),
(26861,-1575035, 'Haldor of the Rocky Cliffs, grant me your strength!' ,13611,1,0,0, 'King Ymirom - SAY_SUMMON_HALDOR'),
(26861,-1575036, 'Ranulf of the Screaming Abyss, snuff these maggots with darkest night! ' ,13612,1,0,0, 'King Ymirom - SAY_SUMMON_RANULF'),
(26861,-1575037, 'Tor of the Brutal Siege! Bestow your might upon me!' ,13613,1,0,0, 'King Ymirom - SAY_SUMMON_TORGYN');

-- 8265_world_script_texts.sql
UPDATE `script_texts` SET `type`=3,`content_default`='%s takes in a deep breath...' WHERE `entry`=-1249004;

-- 8265_world_scriptname.sql
UPDATE `instance_template` SET `script`='instance_onyxias_lair' WHERE `map`=249;

-- 8277_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName` = 'npc_fel_guard_hound' WHERE `entry`=21847;

-- 8287_world_script_texts.sql
UPDATE `script_texts` SET `content_default`='%s flee' WHERE `entry`='-1609272';
UPDATE `script_texts` SET `content_default`='%s kneels in defeat before Tirion Fordring.' WHERE `entry`='-1609273';
UPDATE `script_texts` SET `content_default`='%s arrives.' WHERE `entry`='-1609274';
UPDATE `script_texts` SET `content_default`='%s becomes a shade of his past, and walks up to his father.' WHERE `entry`='-1609275';
UPDATE `script_texts` SET `content_default`='%s hugs his father.' WHERE `entry`='-1609276';
UPDATE `script_texts` SET `content_default`='%s disappears, and the Lich King appears.' WHERE `entry`='-1609277';
UPDATE `script_texts` SET `content_default`='%s becomes himself again...and is now angry.' WHERE `entry`='-1609278';
UPDATE `script_texts` SET `content_default`='%s casts a spell on Tirion.' WHERE `entry`='-1609279';
UPDATE `script_texts` SET `content_default`='%s gasps for air.' WHERE `entry`='-1609280';
UPDATE `script_texts` SET `content_default`='%s casts a powerful spell, killing the Defenders and knocking back the others.' WHERE `entry`='-1609281';
UPDATE `script_texts` SET `content_default`='%s throws the Corrupted Ashbringer to Tirion, who catches it. Tirion becomes awash with Light, and the Ashbringer is cleansed.' WHERE `entry`='-1609282';
UPDATE `script_texts` SET `content_default`='%s collapses.' WHERE `entry`='-1609283';
UPDATE `script_texts` SET `content_default`='%s charges towards the Lich King, Ashbringer in hand and strikes the Lich King.' WHERE `entry`='-1609284';
UPDATE `script_texts` SET `content_default`='%s disappears. Tirion walks over to where Darion lay' WHERE `entry`='-1609285';


-- 8306_world_scriptname.sql
-- Update basic NPC guards to use a common AI - gossip now handled in database
-- guard_azuremyst -> guard_generic
UPDATE `creature_template` SET `ScriptName` = 'guard_generic' WHERE `entry` IN (18038);
-- guard_bluffwatcher -> guard_generic
UPDATE `creature_template` SET `ScriptName` = 'guard_generic' WHERE `entry` IN (3084);
-- guard_contested -> guard_generic
UPDATE `creature_template` SET `ScriptName` = 'guard_generic' WHERE `entry` IN (3502,4624,9460,11190,15184);
-- guard_darnassus -> guard_generic
UPDATE `creature_template` SET `ScriptName` = 'guard_generic' WHERE `entry` IN (4262);
-- guard_dunmorogh -> guard_generic
UPDATE `creature_template` SET `ScriptName` = 'guard_generic' WHERE `entry` IN (727,13076);
-- guard_durotar -> guard_generic
UPDATE `creature_template` SET `ScriptName` = 'guard_generic' WHERE `entry` IN (5953);
-- guard_elwynnforest -> guard_generic
UPDATE `creature_template` SET `ScriptName` = 'guard_generic' WHERE `entry` IN (1423);
-- guard_eversong -> guard_generic
UPDATE `creature_template` SET `ScriptName` = 'guard_generic' WHERE `entry` IN (16221);
-- guard_exodar -> guard_generic
UPDATE `creature_template` SET `ScriptName` = 'guard_generic' WHERE `entry` IN (16733);
-- guard_ironforge -> guard_generic
UPDATE `creature_template` SET `ScriptName` = 'guard_generic' WHERE `entry` IN (5595);
-- guard_mulgore -> guard_generic
UPDATE `creature_template` SET `ScriptName` = 'guard_generic' WHERE `entry` IN (3212,3215,3217,3218,3219,3220,3221,3222,3223,3224);
-- guard_shattrath -> guard_generic
UPDATE `creature_template` SET `ScriptName` = 'guard_generic' WHERE `entry` IN (19687);
-- guard_silvermoon -> guard_generic
UPDATE `creature_template` SET `ScriptName` = 'guard_generic' WHERE `entry` IN (16222);
-- guard_teldrassil -> guard_generic
UPDATE `creature_template` SET `ScriptName` = 'guard_generic' WHERE `entry` IN (3571);
-- guard_tirisfal -> guard_generic
UPDATE `creature_template` SET `ScriptName` = 'guard_generic' WHERE `entry` IN (1735,1738,1742,1743,1744,1745,1746,2209,2210,5725);
-- guard_undercity -> guard_generic
UPDATE `creature_template` SET `ScriptName` = 'guard_generic' WHERE `entry` IN (5624);
-- Update (remove) scripts from NPCs that had gossip - gossip now handled in database (AI removed)
-- NPC Surristrasz
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (24795);
-- NPC Tiare
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (30051);
-- NPC Fizzcrank Fullthrottle
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (25590);
