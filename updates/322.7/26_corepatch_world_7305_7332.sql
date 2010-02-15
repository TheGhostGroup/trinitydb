-- ----------- --
-- TrinityCore --
-- ----------- --

-- 7306_world_trinity_string.sql
UPDATE `trinity_string` SET `content_default` = 'The distance is: (3D) %f (2D) %f (Exact 3D) %f (Exact 2D) %f yards.' WHERE `entry`=503;

-- 7327_world_creature_classlevelstats.sql
UPDATE `creature_classlevelstats` SET `basehp1`=7794 WHERE `level`=82 AND `class`=2;

-- 7328_world_creature_classlevelstats.sql
-- Update HP Stats
UPDATE `creature_classlevelstats` SET `basehp0`=5492 WHERE `level`=81 AND `class`=1;
UPDATE `creature_classlevelstats` SET `basehp1`=8715 WHERE `level`=78 AND `class`=1;
UPDATE `creature_classlevelstats` SET `basehp1`=8960 WHERE `level`=79 AND `class`=1;
UPDATE `creature_classlevelstats` SET `basehp1`=9474 WHERE `level`=81 AND `class`=1;
UPDATE `creature_classlevelstats` SET `basehp1`=7794 WHERE `level`=82 AND `class`=2;
UPDATE `creature_classlevelstats` SET `basehp1`=6243 WHERE `level`=74 AND `class`=2;
UPDATE `creature_classlevelstats` SET `basehp1`=6602 WHERE `level`=76 AND `class`=2;
UPDATE `creature_classlevelstats` SET `basehp1`=6784 WHERE `level`=77 AND `class`=2;
UPDATE `creature_classlevelstats` SET `basehp1`=6972 WHERE `level`=78 AND `class`=2;
UPDATE `creature_classlevelstats` SET `basehp1`=7167 WHERE `level`=79 AND `class`=2;
UPDATE `creature_classlevelstats` SET `basehp1`=7373 WHERE `level`=80 AND `class`=2;
UPDATE `creature_classlevelstats` SET `basehp1`=7581 WHERE `level`=81 AND `class`=2;

-- 7332_world_creature_template.sql
ALTER TABLE `creature_template` ADD `WDBVerified` SMALLINT(5) SIGNED DEFAULT 0 AFTER `ScriptName`;

-- 7332_world_gameobject_template.sql
ALTER TABLE `gameobject_template` ADD `WDBVerified` SMALLINT(5) SIGNED DEFAULT 0 AFTER `ScriptName`;

-- 7332_world_item_template.sql
-- Resize spellcharge fields in item_template to hold 3.3.0 wdb data
ALTER TABLE `item_template` MODIFY `spellcharges_1` SMALLINT(4); -- Resize make larger
ALTER TABLE `item_template` MODIFY `spellcharges_2` SMALLINT(4); -- Resize make larger
ALTER TABLE `item_template` MODIFY `spellcharges_3` SMALLINT(4); -- Resize make larger
ALTER TABLE `item_template` MODIFY `spellcharges_4` SMALLINT(4); -- Resize make larger
ALTER TABLE `item_template` MODIFY `spellcharges_5` SMALLINT(4); -- Resize make larger
ALTER TABLE `item_template` ADD `WDBVerified` SMALLINT(5) SIGNED DEFAULT 0 AFTER `maxMoneyLoot`;

-- 7332_world_npc_text.sql
ALTER TABLE `npc_text` ADD `WDBVerified` SMALLINT(5) SIGNED DEFAULT 0 AFTER `em7_5`;

-- 7332_world_page_text.sql
ALTER TABLE `page_text` ADD `WDBVerified` SMALLINT(5) SIGNED DEFAULT 0 AFTER `next_page`;

-- 7332_world_playercreateinfo_action.sql
TRUNCATE `playercreateinfo_action`;
INSERT INTO `playercreateinfo_action` VALUES ('1', '1', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '1', '72', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '1', '73', '78', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '1', '82', '59752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '1', '84', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '1', '96', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '1', '108', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '2', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '2', '1', '21084', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '2', '2', '635', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '2', '11', '59752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '4', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '4', '1', '1752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '4', '2', '2098', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '4', '3', '2764', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '4', '11', '59752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '5', '0', '585', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '5', '1', '2050', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '5', '11', '59752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '6', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '6', '1', '49576', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '6', '2', '45477', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '6', '3', '45462', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '6', '4', '45902', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '6', '5', '47541', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '6', '11', '59752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '8', '0', '133', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '8', '1', '168', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '8', '11', '59752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '9', '0', '686', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '9', '1', '687', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '9', '11', '59752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '1', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '1', '72', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '1', '73', '78', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '1', '74', '20572', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '1', '84', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '1', '96', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '1', '108', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '3', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '3', '1', '2973', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '3', '2', '75', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '3', '11', '20572', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '4', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '4', '1', '1752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '4', '2', '2098', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '4', '3', '2764', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '4', '4', '20572', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '6', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '6', '1', '49576', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '6', '2', '45477', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '6', '3', '45462', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '6', '4', '45902', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '6', '5', '47541', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '6', '10', '20572', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '7', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '7', '1', '403', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '7', '2', '331', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '7', '3', '33697', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '9', '0', '686', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '9', '1', '687', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '9', '2', '33702', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '1', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '1', '1', '78', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '1', '72', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '1', '73', '78', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '1', '74', '20594', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '1', '75', '2481', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '1', '84', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '1', '96', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '1', '108', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '2', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '2', '1', '21084', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '2', '2', '635', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '2', '3', '20594', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '2', '4', '2481', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '3', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '3', '1', '2973', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '3', '2', '75', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '3', '3', '20594', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '3', '4', '2481', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '3', '75', '20594', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '3', '76', '2481', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '4', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '4', '1', '1752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '4', '2', '2098', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '4', '3', '2764', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '4', '4', '20594', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '4', '5', '2481', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '5', '0', '585', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '5', '1', '2050', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '5', '2', '20594', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '5', '3', '2481', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '6', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '6', '1', '49576', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '6', '2', '45477', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '6', '3', '45462', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '6', '4', '45902', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '6', '5', '47541', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '6', '10', '2481', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '1', '72', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '4', '82', '58984', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '1', '73', '78', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '1', '82', '58984', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '1', '85', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '1', '97', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '1', '109', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '3', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '3', '1', '2973', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '3', '2', '75', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '3', '3', '58984', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '4', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '4', '1', '1752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '4', '2', '2098', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '4', '3', '2764', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '4', '11', '58984', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '5', '0', '585', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '5', '1', '2050', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '5', '2', '58984', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '6', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '6', '1', '49576', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '6', '2', '45477', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '6', '3', '45462', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '6', '4', '45902', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '6', '5', '47541', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '6', '10', '58984', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '6', '83', '58984', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '11', '0', '5176', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '11', '1', '5185', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '11', '11', '58984', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '1', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '1', '72', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '1', '73', '78', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '1', '74', '20577', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '1', '84', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '1', '96', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '1', '108', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '4', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '4', '1', '1752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '4', '2', '2098', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '4', '3', '2764', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '4', '4', '20577', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '5', '0', '585', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '5', '1', '2050', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '5', '2', '20577', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '6', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '6', '1', '49576', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '6', '2', '45477', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '6', '3', '45462', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '6', '4', '45902', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '6', '5', '47541', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '6', '10', '20577', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '8', '0', '133', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '8', '1', '168', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '8', '2', '20577', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '9', '0', '686', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '9', '1', '687', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '9', '2', '20577', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '1', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '1', '1', '78', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '1', '3', '20549', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '1', '72', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '1', '73', '78', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '1', '74', '20549', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '1', '84', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '1', '96', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '1', '108', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '3', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '3', '1', '2973', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '3', '2', '75', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '3', '3', '20549', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '3', '76', '20549', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '6', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '6', '1', '49576', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '6', '2', '45477', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '6', '3', '45462', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '6', '4', '45902', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '6', '5', '47541', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '6', '10', '20549', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '6', '75', '20549', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '7', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '7', '1', '403', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '7', '2', '331', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '7', '3', '20549', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '7', '76', '20549', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '11', '0', '5176', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '11', '1', '5185', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '11', '2', '20549', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '11', '73', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '11', '76', '20549', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '11', '85', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '11', '97', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '11', '109', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '1', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '1', '1', '78', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '1', '11', '20589', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '1', '72', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '1', '73', '78', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '1', '82', '20589', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '1', '84', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '1', '96', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '1', '108', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '4', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '4', '1', '1752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '4', '2', '2098', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '4', '3', '2764', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '4', '11', '20589', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '1', '49576', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '2', '45477', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '3', '45462', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '4', '45902', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '5', '47541', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '10', '20589', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '83', '41751', '128');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '72', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '11', '41751', '128');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '84', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '96', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '108', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '8', '0', '133', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '8', '1', '168', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '8', '11', '20589', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '9', '0', '686', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '9', '1', '687', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '9', '11', '20589', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '1', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '1', '72', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '1', '73', '78', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '1', '74', '2764', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '1', '75', '26296', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '1', '84', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '1', '96', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '1', '108', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '3', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '3', '1', '2973', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '3', '2', '75', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '8', '2', '20554', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '4', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '4', '1', '1752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '4', '2', '2098', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '4', '3', '2764', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '4', '4', '26297', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '5', '0', '585', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '5', '1', '2050', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '7', '3', '20554', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '6', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '6', '1', '49576', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '6', '2', '45477', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '6', '3', '45462', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '6', '4', '45902', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '6', '5', '47541', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '6', '10', '50621', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '7', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '7', '1', '403', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '7', '2', '331', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '5', '2', '20554', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '8', '0', '133', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '8', '1', '168', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '3', '3', '20554', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '2', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '2', '1', '21084', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '2', '2', '635', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '2', '3', '28730', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '3', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '3', '1', '2973', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '3', '2', '75', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '3', '3', '28730', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '4', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '4', '1', '1752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '4', '2', '2098', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '4', '3', '2764', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '4', '4', '25046', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '5', '0', '585', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '5', '1', '2050', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '5', '2', '28730', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '6', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '6', '1', '49576', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '6', '2', '45477', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '6', '3', '45462', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '6', '4', '45902', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '6', '5', '47541', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '6', '6', '50613', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '8', '0', '133', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '8', '1', '168', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '8', '2', '28730', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '9', '0', '686', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '9', '1', '687', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '9', '2', '28730', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '1', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '1', '72', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '1', '73', '78', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '1', '74', '28880', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '1', '84', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '1', '96', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '1', '108', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '2', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '2', '1', '21084', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '2', '2', '635', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '2', '3', '59542', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '3', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '3', '1', '2973', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '3', '2', '75', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '3', '3', '59543', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '3', '72', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '3', '73', '2973', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '3', '74', '75', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '5', '0', '585', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '5', '1', '2050', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '5', '2', '59544', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '6', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '6', '1', '49576', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '6', '2', '45477', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '6', '3', '45462', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '6', '4', '45902', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '6', '5', '47541', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '6', '10', '59545', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '7', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '7', '1', '403', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '7', '2', '331', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '7', '3', '59547', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '8', '0', '133', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '8', '1', '168', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '8', '2', '59548', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '6', '11', '41751', '128');

-- 7332_world_playercreateinfo_spell.sql
-- Add new start weapons as of 3.3 patch

-- Warrior: Two-Handed Sword
DELETE FROM `playercreateinfo_spell` WHERE `class`=1 AND `Spell`=202;
INSERT INTO `playercreateinfo_spell` (`race`,`class`,`Spell`,`Note`) VALUES
(1,1,202, 'Two-Handed Swords'),
(4,1,202, 'Two-Handed Swords'),
(5,1,202, 'Two-Handed Swords'),
(7,1,202, 'Two-Handed Swords'),
(8,1,202, 'Two-Handed Swords'),
(11,1,202, 'Two-Handed Swords');

-- Hunter: Two-Handed Axe
DELETE FROM `playercreateinfo_spell` WHERE `class`=3 AND `Spell`=197;
INSERT INTO `playercreateinfo_spell` (`race`,`class`,`Spell`,`Note`) VALUES
(2,3,197, 'Two-Handed Axes'),
(3,3,197, 'Two-Handed Axes'),
(4,3,197, 'Two-Handed Axes'),
(6,3,197, 'Two-Handed Axes'),
(8,3,197, 'Two-Handed Axes'),
(10,3,197, 'Two-Handed Axes'),
(11,3,197, 'Two-Handed Axes');

-- Rogue: Dual Wield
DELETE FROM `playercreateinfo_spell` WHERE `class`=4 AND `Spell`=674;
INSERT INTO `playercreateinfo_spell` (`race`,`class`,`Spell`,`Note`) VALUES
(1,4,674, 'Dual Wield'),
(2,4,674, 'Dual Wield'),
(3,4,674, 'Dual Wield'),
(4,4,674, 'Dual Wield'),
(5,4,674, 'Dual Wield'),
(7,4,674, 'Dual Wield'),
(8,4,674, 'Dual Wield'),
(10,4,674, 'Dual Wield');

-- Priest: Staff
DELETE FROM `playercreateinfo_spell` WHERE `class`=5 AND `Spell`=227;
INSERT INTO `playercreateinfo_spell` (`race`,`class`,`Spell`,`Note`) VALUES
(1,5,227, 'Staves'),
(3,5,227, 'Staves'),
(4,5,227, 'Staves'),
(5,5,227, 'Staves'),
(8,5,227, 'Staves'),
(10,5,227, 'Staves'),
(11,5,227, 'Staves');

-- Warlock: Staff
DELETE FROM `playercreateinfo_spell` WHERE `class`=9 AND `Spell`=227;
INSERT INTO `playercreateinfo_spell` (`race`,`class`,`Spell`,`Note`) VALUES
(1,9,227, 'Staves'),
(2,9,227, 'Staves'),
(5,9,227, 'Staves'),
(7,9,227, 'Staves'),
(10,9,227, 'Staves');

-- 7332_world_quest_poi.sql
DROP TABLE IF EXISTS `quest_poi`;
CREATE TABLE `quest_poi` (
  `questId` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `objIndex` int(10) NOT NULL DEFAULT '0',
  `mapid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `WorldMapAreaId` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `FloorId` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unk3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unk4` int(10) UNSIGNED NOT NULL DEFAULT '0',
  KEY `questId` (`questId`,`id`),
  KEY `id` (`id`,`questId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 7332_world_quest_poi_points.sql
DROP TABLE IF EXISTS `quest_poi_points`;
CREATE TABLE `quest_poi_points` (
  `questId` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `x` int(10) NOT NULL DEFAULT '0',
  `y` int(10) NOT NULL DEFAULT '0',
  KEY `questId_id` (`questId`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 7332_world_quest_template.sql
-- Update quest_template table for 3.3.0
ALTER TABLE `quest_template` ADD `RewXPId` TINYINT(2) UNSIGNED NOT NULL DEFAULT '0' AFTER `NextQuestInChain`;
ALTER TABLE `quest_template` ADD `RewHonorMultiplier` FLOAT NOT NULL DEFAULT '1' AFTER `RewHonorableKills`;
ALTER TABLE `quest_template` ADD `RewardArenaPoints` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `BonusTalents`;
ALTER TABLE `quest_template` ADD `unk0` TINYINT(2) UNSIGNED NOT NULL DEFAULT '0' AFTER `RewHonorMultiplier`;
ALTER TABLE `quest_template` ADD `RewRepValueId1` MEDIUMINT(6) NOT NULL DEFAULT '0' AFTER `RewRepFaction5`;
ALTER TABLE `quest_template` ADD `RewRepValueId2` MEDIUMINT(6) NOT NULL DEFAULT '0' AFTER `RewRepValueId1`;
ALTER TABLE `quest_template` ADD `RewRepValueId3` MEDIUMINT(6) NOT NULL DEFAULT '0' AFTER `RewRepValueId2`;
ALTER TABLE `quest_template` ADD `RewRepValueId4` MEDIUMINT(6) NOT NULL DEFAULT '0' AFTER `RewRepValueId3`;
ALTER TABLE `quest_template` ADD `RewRepValueId5` MEDIUMINT(6) NOT NULL DEFAULT '0' AFTER `RewRepValueId4`;
ALTER TABLE `quest_template` ADD `CompletionText` TEXT NULL DEFAULT NULL AFTER `EndText`;
ALTER TABLE `quest_template` ADD `WDBVerified` SMALLINT(5) SIGNED DEFAULT 0 AFTER `CompleteScript`;
ALTER TABLE `quest_template` CHANGE COLUMN `RewHonorableKills` `RewHonorAddition` int(10) NOT NULL default '0';

-- 7332_world_spell_bonus_data.sql
UPDATE `spell_bonus_data` SET `ap_bonus`= 0.15 WHERE `entry`=60089;
DELETE FROM `spell_bonus_data` WHERE `entry`=52042;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES ('52042','-1','-1','-1','-1','Shaman - Healing Stream Totem Triggered Heal');

DELETE FROM `spell_proc_event` WHERE `entry` IN (51524,51523);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES ('51524', '0', '11', '0', '1', '0', '65536', '0', '0', '50', '0');
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES ('51523', '0', '11', '0', '1', '0', '65536', '0', '0', '50', '0');
DELETE FROM `spell_bonus_data` WHERE `entry` IN (8443,8504,8505,11310,11311,25538,25539,61651,61660);

-- 7332_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (49194);
INSERT INTO `spell_proc_event` VALUES
(49194, 0x00, 15, 0x00002000, 0x00000000, 0x00000000, 0x00000000,  0x00000000, 0.000000, 0.000000, 0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (31656, 31657, 31658);
INSERT INTO `spell_proc_event` VALUES
(31656, 4, 3, 0x8000000, 0, 0, 0, 0, 0, 0, 0),
(31657, 4, 3, 0x8000000, 0, 0, 0, 0, 0, 0, 0),
(31658, 4, 3, 0x8000000, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `spell_proc_event` WHERE entry = 67356;
INSERT INTO `spell_proc_event` VALUES (67356, 8, 7, 0x10, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (47245,47246,47247);
INSERT INTO `spell_proc_event` VALUES
(47245, 0x00, 5, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0.000000, 0.000000, 0),
(47246, 0x00, 5, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0.000000, 0.000000, 0),
(47247, 0x00, 5, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0.000000, 0.000000, 0);

DELETE FROM `spell_proc_event` WHERE `entry` IN
(58631,55668,55669,55670,63320);

DELETE FROM `spell_proc_event` WHERE `entry` IN (20375,21084,31801);
INSERT INTO `spell_proc_event` VALUES
(20375, 0x00000001,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  1),
(21084, 0x00000001,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(31801, 0x00000001,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (51524,51523);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES ('51524', '0', '11', '0', '1', '0', '65536', '0', '0', '50', '0');
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES ('51523', '0', '11', '0', '1', '0', '65536', '0', '0', '50', '0');

-- 7332_world_spell_ranks.sql
TRUNCATE TABLE spell_ranks;
INSERT INTO spell_ranks (`first_spell_id`, `spell_id`, `rank`) VALUES
 -- Abomination's Might
(53137, 53137, 1),
(53137, 53138, 2),
 -- Absolution
(33167, 33167, 1),
(33167, 33171, 2),
(33167, 33172, 3),
 -- Acclimation
(49200, 49200, 1),
(49200, 50151, 2),
(49200, 50152, 3),
 -- Acid Spit
(55749, 55749, 1),
(55749, 55750, 2),
(55749, 55751, 3),
(55749, 55752, 4),
(55749, 55753, 5),
(55749, 55754, 6),
 -- Aftermath
(18119, 18119, 1),
(18119, 18120, 2),
 -- Aggression
(18427, 18427, 1),
(18427, 18428, 2),
(18427, 18429, 3),
(18427, 61330, 4),
(18427, 61331, 5),
 -- Agility
(8115, 8115, 1),
(8115, 8116, 2),
(8115, 8117, 3),
(8115, 12174, 4),
(8115, 33077, 5),
(8115, 43194, 6),
(8115, 58450, 7),
(8115, 58451, 8),
 -- Aimed Shot
(19434, 19434, 1),
(19434, 20900, 2),
(19434, 20901, 3),
(19434, 20902, 4),
(19434, 20903, 5),
(19434, 20904, 6),
(19434, 27065, 7),
(19434, 49049, 8),
(19434, 49050, 9),
 -- Alchemy
(2259, 2259, 1),
(2259, 3101, 2),
(2259, 3464, 3),
(2259, 11611, 4),
(2259, 28596, 5),
(2259, 51304, 6),
 -- Ambush
(8676, 8676, 1),
(8676, 8724, 2),
(8676, 8725, 3),
(8676, 11267, 4),
(8676, 11268, 5),
(8676, 11269, 6),
(8676, 27441, 7),
(8676, 48689, 8),
(8676, 48690, 9),
(8676, 48691, 10),
 -- Amplify Magic
(1267, 1267, 1),
(1267, 8456, 2),
(1267, 10171, 3),
(1267, 10172, 4),
(1267, 27397, 5),
(1267, 33947, 6),
 -- Amplify Magic
(1008, 1008, 1),
(1008, 8455, 2),
(1008, 10169, 3),
(1008, 10170, 4),
(1008, 27130, 5),
(1008, 33946, 6),
(1008, 43017, 7),
 -- Ancestral Awakening
(51556, 51556, 1),
(51556, 51557, 2),
(51556, 51558, 3),
 -- Ancestral Fortitude
(16177, 16177, 1),
(16177, 16236, 2),
(16177, 16237, 3),
 -- Ancestral Healing
(16176, 16176, 1),
(16176, 16235, 2),
(16176, 16240, 3),
 -- Ancestral Knowledge
(17485, 17485, 1),
(17485, 17486, 2),
(17485, 17487, 3),
(17485, 17488, 4),
(17485, 17489, 5),
 -- Ancestral Spirit
(2008, 2008, 1),
(2008, 20609, 2),
(2008, 20610, 3),
(2008, 20776, 4),
(2008, 20777, 5),
(2008, 25590, 6),
(2008, 49277, 7),
 -- Anguish
(33704, 33704, 1),
(33704, 33705, 2),
(33704, 33706, 3),
 -- Anguish
(33698, 33698, 1),
(33698, 33699, 2),
(33698, 33700, 3),
(33698, 47993, 4),
 -- Animal Handler
(34453, 34453, 1),
(34453, 34454, 2),
 -- Annihilation
(51468, 51468, 1),
(51468, 51472, 2),
(51468, 51473, 3),
 -- Anticipation
(12297, 12297, 1),
(12297, 12750, 2),
(12297, 12751, 3),
(12297, 12752, 4),
(12297, 12753, 5),
 -- Anticipation
(20096, 20096, 1),
(20096, 20097, 2),
(20096, 20098, 3),
(20096, 20099, 4),
(20096, 20100, 5),
 -- Anticipation
(16254, 16254, 1),
(16254, 16271, 2),
(16254, 16272, 3),
 -- Anticipation
(55129, 55129, 1),
(55129, 55130, 2),
(55129, 55131, 3),
(55129, 55132, 4),
(55129, 55133, 5),
 -- Arcane Barrage
(44425, 44425, 1),
(44425, 44780, 2),
(44425, 44781, 3),
 -- Arcane Blast
(30451, 30451, 1),
(30451, 42894, 2),
(30451, 42896, 3),
(30451, 42897, 4),
 -- Arcane Brilliance
(23028, 23028, 1),
(23028, 27127, 2),
(23028, 43002, 3),
 -- Arcane Concentration
(11213, 11213, 1),
(11213, 12574, 2),
(11213, 12575, 3),
(11213, 12576, 4),
(11213, 12577, 5),
 -- Arcane Empowerment
(31579, 31579, 1),
(31579, 31582, 2),
(31579, 31583, 3),
 -- Arcane Explosion
(1449, 1449, 1),
(1449, 8437, 2),
(1449, 8438, 3),
(1449, 8439, 4),
(1449, 10201, 5),
(1449, 10202, 6),
(1449, 27080, 7),
(1449, 27082, 8),
(1449, 42920, 9),
(1449, 42921, 10),
 -- Arcane Flows
(44378, 44378, 1),
(44378, 44379, 2),
 -- Arcane Focus
(11222, 11222, 1),
(11222, 12839, 2),
(11222, 12840, 3),
 -- Arcane Fortitude
(28574, 28574, 1),
(28574, 54658, 2),
(28574, 54659, 3),
 -- Arcane Instability
(15058, 15058, 1),
(15058, 15059, 2),
(15058, 15060, 3),
 -- Arcane Intellect
(1459, 1459, 1),
(1459, 1460, 2),
(1459, 1461, 3),
(1459, 10156, 4),
(1459, 10157, 5),
(1459, 27126, 6),
(1459, 42995, 7),
 -- Arcane Mastery
(16734, 16734, 1),
(16734, 16735, 2),
(16734, 16736, 3),
(16734, 16737, 4),
(16734, 16738, 5),
 -- Arcane Meditation
(18462, 18462, 1),
(18462, 18463, 2),
(18462, 18464, 3),
 -- Arcane Mind
(11232, 11232, 1),
(11232, 12500, 2),
(11232, 12501, 3),
(11232, 12502, 4),
(11232, 12503, 5),
 -- Arcane Potency
(31571, 31571, 1),
(31571, 31572, 2),
 -- Arcane Shielding
(11252, 11252, 1),
(11252, 12605, 2),
 -- Arcane Shot
(3044, 3044, 1),
(3044, 14281, 2),
(3044, 14282, 3),
(3044, 14283, 4),
(3044, 14284, 5),
(3044, 14285, 6),
(3044, 14286, 7),
(3044, 14287, 8),
(3044, 27019, 9),
(3044, 49044, 10),
(3044, 49045, 11),
 -- Arcane Stability
(11237, 11237, 1),
(11237, 12463, 2),
(11237, 12464, 3),
(11237, 16769, 4),
(11237, 16770, 5),
 -- Arcane Subtlety
(11210, 11210, 1),
(11210, 12592, 2),
 -- Arctic Reach
(16757, 16757, 1),
(16757, 16758, 2),
 -- Arctic Winds
(31674, 31674, 1),
(31674, 31675, 2),
(31674, 31676, 3),
(31674, 31677, 4),
(31674, 31678, 5),
 -- Ardent Defender
(31850, 31850, 1),
(31850, 31851, 2),
(31850, 31852, 3),
 -- Armor
(8091, 8091, 1),
(8091, 8094, 2),
(8091, 8095, 3),
(8091, 12175, 4),
(8091, 33079, 5),
(8091, 43196, 6),
(8091, 58452, 7),
(8091, 58453, 8),
 -- Armored to the Teeth
(61216, 61216, 1),
(61216, 61221, 2),
(61216, 61222, 3),
 -- Aspect of the Dragonhawk
(61846, 61846, 1),
(61846, 61847, 2),
 -- Aspect of the Hawk
(13165, 13165, 1),
(13165, 14318, 2),
(13165, 14319, 3),
(13165, 14320, 4),
(13165, 14321, 5),
(13165, 14322, 6),
(13165, 25296, 7),
(13165, 27044, 8),
 -- Aspect of the Wild
(20043, 20043, 1),
(20043, 20190, 2),
(20043, 27045, 3),
(20043, 49071, 4),
 -- Aspiration
(47507, 47507, 1),
(47507, 47508, 2),
 -- Astral Shift
(51474, 51474, 1),
(51474, 51478, 2),
(51474, 51479, 3),
 -- Avenger's Shield
(31935, 31935, 1),
(31935, 32699, 2),
(31935, 32700, 3),
(31935, 48826, 4),
(31935, 48827, 5),
 -- Backdraft
(47258, 47258, 1),
(47258, 47259, 2),
(47258, 47260, 3),
 -- Backlash
(34935, 34935, 1),
(34935, 34938, 2),
(34935, 34939, 3),
 -- Backstab
(53, 53, 1),
(53, 2589, 2),
(53, 2590, 3),
(53, 2591, 4),
(53, 8721, 5),
(53, 11279, 6),
(53, 11280, 7),
(53, 11281, 8),
(53, 25300, 9),
(53, 26863, 10),
(53, 48656, 11),
(53, 48657, 12),
 -- Bad Attitude
(50433, 50433, 1),
(50433, 52395, 2),
(50433, 52396, 3),
(50433, 52397, 4),
(50433, 52398, 5),
(50433, 52399, 6),
 -- Balance of Power
(33592, 33592, 1),
(33592, 33596, 2),
 -- Bane
(17788, 17788, 1),
(17788, 17789, 2),
(17788, 17790, 3),
(17788, 17791, 4),
(17788, 17792, 5),
 -- Banish
(710, 710, 1),
(710, 18647, 2),
 -- Barrage
(19461, 19461, 1),
(19461, 19462, 2),
(19461, 24691, 3),
 -- Bash
(5211, 5211, 1),
(5211, 6798, 2),
(5211, 8983, 3),
 -- Battle Shout
(6673, 6673, 1),
(6673, 5242, 2),
(6673, 6192, 3),
(6673, 11549, 4),
(6673, 11550, 5),
(6673, 11551, 6),
(6673, 25289, 7),
(6673, 2048, 8),
(6673, 47436, 9),
 -- Benediction
(20101, 20101, 1),
(20101, 20102, 2),
(20101, 20103, 3),
(20101, 20104, 4),
(20101, 20105, 5),
 -- Bestial Discipline
(19590, 19590, 1),
(19590, 19592, 2),
 -- Bestial Fury
(19603, 19603, 1),
(19603, 19605, 2),
(19603, 19606, 3),
(19603, 19607, 4),
(19603, 19608, 5),
 -- Binding Heal
(32546, 32546, 1),
(32546, 48119, 2),
(32546, 48120, 3),
 -- Bite
(17254, 17254, 1),
(17254, 17262, 2),
(17254, 17263, 3),
(17254, 17264, 4),
(17254, 17265, 5),
(17254, 17266, 6),
(17254, 17267, 7),
(17254, 17268, 8),
(17254, 27348, 9),
 -- Bite
(17253, 17253, 1),
(17253, 17255, 2),
(17253, 17256, 3),
(17253, 17257, 4),
(17253, 17258, 5),
(17253, 17259, 6),
(17253, 17260, 7),
(17253, 17261, 8),
(17253, 27050, 9),
(17253, 52473, 10),
(17253, 52474, 11),
 -- Black Arrow
(3674, 3674, 1),
(3674, 63668, 2),
(3674, 63669, 3),
(3674, 63670, 4),
(3674, 63671, 5),
(3674, 63672, 6),
 -- Black Ice
(49140, 49140, 1),
(49140, 49661, 2),
(49140, 49662, 3),
(49140, 49663, 4),
(49140, 49664, 5),
 -- Blacksmithing
(2018, 2018, 1),
(2018, 3100, 2),
(2018, 3538, 3),
(2018, 9785, 4),
(2018, 29844, 5),
(2018, 51300, 6),
 -- Blade Barrier
(51789, 51789, 1),
(51789, 64855, 2),
(51789, 64856, 3),
(51789, 64858, 4),
(51789, 64859, 5),
 -- Blade Barrier
(49182, 49182, 1),
(49182, 49500, 2),
(49182, 49501, 3),
(49182, 55225, 4),
(49182, 55226, 5),
 -- Blade Twisting
(31124, 31124, 1),
(31124, 31126, 2),
 -- Bladed Armor
(48978, 48978, 1),
(48978, 49390, 2),
(48978, 49391, 3),
(48978, 49392, 4),
(48978, 49393, 5),
 -- Blast Wave
(11113, 11113, 1),
(11113, 13018, 2),
(11113, 13019, 3),
(11113, 13020, 4),
(11113, 13021, 5),
(11113, 27133, 6),
(11113, 33933, 7),
(11113, 42944, 8),
(11113, 42945, 9),
 -- Blazing Speed
(31641, 31641, 1),
(31641, 31642, 2),
 -- Blessed Hands
(53660, 53660, 1),
(53660, 53661, 2),
 -- Blessed Life
(31828, 31828, 1),
(31828, 31829, 2),
(31828, 31830, 3),
 -- Blessing of Might
(19740, 19740, 1),
(19740, 19834, 2),
(19740, 19835, 3),
(19740, 19836, 4),
(19740, 19837, 5),
(19740, 19838, 6),
(19740, 25291, 7),
(19740, 27140, 8),
(19740, 48931, 9),
(19740, 48932, 10),
 -- Blessing of the Eternals
(51554, 51554, 1),
(51554, 51555, 2),
 -- Blessing of Wisdom
(19742, 19742, 1),
(19742, 19850, 2),
(19742, 19852, 3),
(19742, 19853, 4),
(19742, 19854, 5),
(19742, 25290, 6),
(19742, 27142, 7),
(19742, 48935, 8),
(19742, 48936, 9),
 -- Blood Boil
(48721, 48721, 1),
(48721, 49939, 2),
(48721, 49940, 3),
(48721, 49941, 4),
 -- Blood Craze
(16487, 16487, 1),
(16487, 16489, 2),
(16487, 16492, 3),
 -- Blood Frenzy
(30069, 30069, 1),
(30069, 30070, 2),
 -- Blood Frenzy
(29836, 29836, 1),
(29836, 29859, 2),
 -- Blood Frenzy
(16952, 16952, 1),
(16952, 16954, 2),
 -- Blood of Icewater
(50122, 50122, 1),
(50122, 50123, 2),
(50122, 50124, 3),
(50122, 50125, 4),
(50122, 50126, 5),
 -- Blood of the North
(54639, 54639, 1),
(54639, 54638, 2),
(54639, 54637, 3),
 -- Blood of the Rhino
(53481, 53481, 1),
(53481, 53482, 2),
 -- Blood Pact
(6307, 6307, 1),
(6307, 7804, 2),
(6307, 7805, 3),
(6307, 11766, 4),
(6307, 11767, 5),
(6307, 27268, 6),
(6307, 47982, 7),
 -- Blood Spatter
(51632, 51632, 1),
(51632, 51633, 2),
 -- Blood-Caked Blade
(49219, 49219, 1),
(49219, 49627, 2),
(49219, 49628, 3),
 -- Bloodsurge
(46913, 46913, 1),
(46913, 46914, 2),
(46913, 46915, 3),
 -- Bloodthirsty
(53186, 53186, 1),
(53186, 53187, 2),
 -- Bloodworms
(49027, 49027, 1),
(49027, 49542, 2),
(49027, 49543, 3),
 -- Bloody Strikes
(48977, 48977, 1),
(48977, 49394, 2),
(48977, 49395, 3),
 -- Bloody Vengeance
(48988, 48988, 1),
(48988, 49503, 2),
(48988, 49504, 3),
 -- Body and Soul
(64127, 64127, 1),
(64127, 64129, 2),
 -- Booming Echoes
(63370, 63370, 1),
(63370, 63372, 2),
 -- Booming Voice
(12321, 12321, 1),
(12321, 12835, 2),
 -- Borrowed Time
(52795, 52795, 1),
(52795, 52797, 2),
(52795, 52798, 3),
(52795, 52799, 4),
(52795, 52800, 5),
 -- Brain Freeze
(44546, 44546, 1),
(44546, 44548, 2),
(44546, 44549, 3),
 -- Brambles
(16836, 16836, 1),
(16836, 16839, 2),
(16836, 16840, 3),
 -- Brutal Impact
(16940, 16940, 1),
(16940, 16941, 2),
 -- Burning Determination
(54747, 54747, 1),
(54747, 54749, 2),
 -- Burning Soul
(11083, 11083, 1),
(11083, 12351, 2),
 -- Burnout
(44449, 44449, 1),
(44449, 44469, 2),
(44449, 44470, 3),
(44449, 44471, 4),
(44449, 44472, 5),
 -- Butchery
(48979, 48979, 1),
(48979, 49483, 2),
 -- Call of Flame
(16038, 16038, 1),
(16038, 16160, 2),
(16038, 16161, 3),
 -- Camouflage
(13975, 13975, 1),
(13975, 14062, 2),
(13975, 14063, 3),
 -- Careful Aim
(34482, 34482, 1),
(34482, 34483, 2),
(34482, 34484, 3),
 -- Cataclysm
(17778, 17778, 1),
(17778, 17779, 2),
(17778, 17780, 3),
 -- Catlike Reflexes
(34462, 34462, 1),
(34462, 34464, 2),
(34462, 34465, 3),
 -- Celestial Focus
(16850, 16850, 1),
(16850, 16923, 2),
(16850, 16924, 3),
 -- Chain Heal
(1064, 1064, 1),
(1064, 10622, 2),
(1064, 10623, 3),
(1064, 25422, 4),
(1064, 25423, 5),
(1064, 55458, 6),
(1064, 55459, 7),
 -- Chains of Ice
(113, 113, 1),
(113, 512, 2),
 -- Chaos Bolt
(50796, 50796, 1),
(50796, 59170, 2),
(50796, 59171, 3),
(50796, 59172, 4),
 -- Charge
(100, 100, 1),
(100, 6178, 2),
(100, 11578, 3),
 -- Charge Rage Bonus Effect
(12695, 12695, 1),
(12695, 12696, 2),
 -- Cheat Death
(31228, 31228, 1),
(31228, 31229, 2),
(31228, 31230, 3),
 -- Chilblains
(50040, 50040, 1),
(50040, 50041, 2),
(50040, 50043, 3),
 -- Chill of the Grave
(49149, 49149, 1),
(49149, 50115, 2),
 -- Chilled
(12484, 12484, 1),
(12484, 12485, 2),
(12484, 12486, 3),
 -- Chilled to the Bone
(44566, 44566, 1),
(44566, 44567, 2),
(44566, 44568, 3),
(44566, 44570, 4),
(44566, 44571, 5),
 -- Circle of Healing
(34861, 34861, 1),
(34861, 34863, 2),
(34861, 34864, 3),
(34861, 34865, 4),
(34861, 34866, 5),
(34861, 48088, 6),
(34861, 48089, 7),
 -- Claw
(1082, 1082, 1),
(1082, 3029, 2),
(1082, 5201, 3),
(1082, 9849, 4),
(1082, 9850, 5),
(1082, 27000, 6),
(1082, 48569, 7),
(1082, 48570, 8),
 -- Claw
(16827, 16827, 1),
(16827, 16828, 2),
(16827, 16829, 3),
(16827, 16830, 4),
(16827, 16831, 5),
(16827, 16832, 6),
(16827, 3010, 7),
(16827, 3009, 8),
(16827, 27049, 9),
(16827, 52471, 10),
(16827, 52472, 11),
 -- Cleave
(30214, 30214, 1),
(30214, 30222, 2),
(30214, 30224, 3),
 -- Cleave
(845, 845, 1),
(845, 7369, 2),
(845, 11608, 3),
(845, 11609, 4),
(845, 20569, 5),
(845, 25231, 6),
(845, 47519, 7),
(845, 47520, 8),
 -- Cleave
(30213, 30213, 1),
(30213, 30219, 2),
(30213, 30223, 3),
(30213, 47994, 4),
 -- Cleave Armor
(5508, 5508, 1),
(5508, 5480, 2),
 -- Close Quarters Combat
(13706, 13706, 1),
(13706, 13804, 2),
(13706, 13805, 3),
(13706, 13806, 4),
(13706, 13807, 5),
 -- Cobra Reflexes
(61682, 61682, 1),
(61682, 61683, 2),
 -- Cobra Strikes
(53256, 53256, 1),
(53256, 53259, 2),
(53256, 53260, 3),
 -- Cold as Ice
(55091, 55091, 1),
(55091, 55092, 2),
 -- Combat Endurance
(17427, 17427, 1),
(17427, 17428, 2),
(17427, 17429, 3),
 -- Combat Experience
(34475, 34475, 1),
(34475, 34476, 2),
 -- Combat Expertise
(31858, 31858, 1),
(31858, 31859, 2),
(31858, 31860, 3),
 -- Combat Potency
(35542, 35542, 1),
(35542, 35545, 2),
(35542, 35546, 3),
(35542, 35547, 4),
(35542, 35548, 5),
 -- Combat Potency
(35541, 35541, 1),
(35541, 35550, 2),
(35541, 35551, 3),
(35541, 35552, 4),
(35541, 35553, 5),
 -- Commanding Presence
(12318, 12318, 1),
(12318, 12857, 2),
(12318, 12858, 3),
(12318, 12860, 4),
(12318, 12861, 5),
 -- Commanding Shout
(469, 469, 1),
(469, 47439, 2),
(469, 47440, 3),
 -- Concussion
(16035, 16035, 1),
(16035, 16105, 2),
(16035, 16106, 3),
(16035, 16107, 4),
(16035, 16108, 5),
 -- Concussive Barrage
(35100, 35100, 1),
(35100, 35102, 2),
 -- Cone of Cold
(120, 120, 1),
(120, 8492, 2),
(120, 10159, 3),
(120, 10160, 4),
(120, 10161, 5),
(120, 27087, 6),
(120, 42930, 7),
(120, 42931, 8),
 -- Conjure Food
(587, 587, 1),
(587, 597, 2),
(587, 990, 3),
(587, 6129, 4),
(587, 10144, 5),
(587, 10145, 6),
(587, 28612, 7),
(587, 33717, 8),
 -- Conjure Mana Gem
(759, 759, 1),
(759, 3552, 2),
(759, 10053, 3),
(759, 10054, 4),
(759, 27101, 5),
(759, 42985, 6),
 -- Conjure Refreshment
(42955, 42955, 1),
(42955, 42956, 2),
 -- Conjure Water
(5504, 5504, 1),
(5504, 5505, 2),
(5504, 5506, 3),
(5504, 6127, 4),
(5504, 10138, 5),
(5504, 10139, 6),
(5504, 10140, 7),
(5504, 37420, 8),
(5504, 27090, 9),
 -- Consecration
(26573, 26573, 1),
(26573, 20116, 2),
(26573, 20922, 3),
(26573, 20923, 4),
(26573, 20924, 5),
(26573, 27173, 6),
(26573, 48818, 7),
(26573, 48819, 8),
 -- Consume Shadows
(17767, 17767, 1),
(17767, 17850, 2),
(17767, 17851, 3),
(17767, 17852, 4),
(17767, 17853, 5),
(17767, 17854, 6),
(17767, 27272, 7),
(17767, 47987, 8),
(17767, 47988, 9),
 -- Contagion
(30060, 30060, 1),
(30060, 30061, 2),
(30060, 30062, 3),
(30060, 30063, 4),
(30060, 30064, 5),
 -- Convection
(16039, 16039, 1),
(16039, 16109, 2),
(16039, 16110, 3),
(16039, 16111, 4),
(16039, 16112, 5),
 -- Conviction
(20117, 20117, 1),
(20117, 20118, 2),
(20117, 20119, 3),
(20117, 20120, 4),
(20117, 20121, 5),
 -- Cooking
(2550, 2550, 1),
(2550, 3102, 2),
(2550, 3413, 3),
(2550, 18260, 4),
(2550, 33359, 5),
(2550, 51296, 6),
 -- Cornered
(52234, 52234, 1),
(52234, 53497, 2),
 -- Corpse Explosion
(49158, 49158, 1),
(49158, 51325, 2),
(49158, 51326, 3),
(49158, 51327, 4),
(49158, 51328, 5),
 -- Corruption
(172, 172, 1),
(172, 6222, 2),
(172, 6223, 3),
(172, 7648, 4),
(172, 11671, 5),
(172, 11672, 6),
(172, 25311, 7),
(172, 27216, 8),
(172, 47812, 9),
(172, 47813, 10),
 -- Counterattack
(19306, 19306, 1),
(19306, 20909, 2),
(19306, 20910, 3),
(19306, 27067, 4),
(19306, 48998, 5),
(19306, 48999, 6),
 -- Cower
(8998, 8998, 1),
(8998, 9000, 2),
(8998, 9892, 3),
(8998, 31709, 4),
(8998, 27004, 5),
(8998, 48575, 6),
 -- Create Firestone
(6366, 6366, 1),
(6366, 17951, 2),
(6366, 17952, 3),
(6366, 17953, 4),
(6366, 27250, 5),
(6366, 60219, 6),
(6366, 60220, 7),
 -- Create Healthstone
(6201, 6201, 1),
(6201, 6202, 2),
(6201, 5699, 3),
(6201, 11729, 4),
(6201, 11730, 5),
(6201, 27230, 6),
(6201, 47871, 7),
(6201, 47878, 8),
 -- Create Soulstone
(693, 693, 1),
(693, 20752, 2),
(693, 20755, 3),
(693, 20756, 4),
(693, 20757, 5),
(693, 27238, 6),
(693, 47884, 7),
 -- Create Spellstone
(2362, 2362, 1),
(2362, 17727, 2),
(2362, 17728, 3),
(2362, 28172, 4),
(2362, 47886, 5),
(2362, 47888, 6),
 -- Critical Block
(47294, 47294, 1),
(47294, 47295, 2),
(47294, 47296, 3),
 -- Critical Mass
(11115, 11115, 1),
(11115, 11367, 2),
(11115, 11368, 3),
 -- Cruelty
(12320, 12320, 1),
(12320, 12852, 2),
(12320, 12853, 3),
(12320, 12855, 4),
(12320, 12856, 5),
 -- Crusade
(31866, 31866, 1),
(31866, 31867, 2),
(31866, 31868, 3),
 -- Crypt Fever
(49032, 49032, 1),
(49032, 49631, 2),
(49032, 49632, 3),
 -- Culling the Herd
(61680, 61680, 1),
(61680, 61681, 2),
(61680, 52858, 3),
 -- Curse of Agony
(980, 980, 1),
(980, 1014, 2),
(980, 6217, 3),
(980, 11711, 4),
(980, 11712, 5),
(980, 11713, 6),
(980, 27218, 7),
(980, 47863, 8),
(980, 47864, 9),
 -- Curse of Doom
(603, 603, 1),
(603, 30910, 2),
(603, 47867, 3),
 -- Curse of the Elements
(1490, 1490, 1),
(1490, 11721, 2),
(1490, 11722, 3),
(1490, 27228, 4),
(1490, 47865, 5),
 -- Curse of Tongues
(1714, 1714, 1),
(1714, 11719, 2),
 -- Curse of Weakness
(702, 702, 1),
(702, 1108, 2),
(702, 6205, 3),
(702, 7646, 4),
(702, 11707, 5),
(702, 11708, 6),
(702, 27224, 7),
(702, 30909, 8),
(702, 50511, 9),
 -- Cut to the Chase
(51664, 51664, 1),
(51664, 51665, 2),
(51664, 51667, 3),
(51664, 51668, 4),
(51664, 51669, 5),
 -- Damage Shield
(58872, 58872, 1),
(58872, 58874, 2),
 -- Dampen Magic
(1266, 1266, 1),
(1266, 8452, 2),
(1266, 8453, 3),
(1266, 10175, 4),
(1266, 10176, 5),
 -- Dampen Magic
(604, 604, 1),
(604, 8450, 2),
(604, 8451, 3),
(604, 10173, 4),
(604, 10174, 5),
(604, 33944, 6),
(604, 43015, 7),
 -- Dark Conviction
(48987, 48987, 1),
(48987, 49477, 2),
(48987, 49478, 3),
(48987, 49479, 4),
(48987, 49480, 5),
 -- Dark Pact
(18220, 18220, 1),
(18220, 18937, 2),
(18220, 18938, 3),
(18220, 27265, 4),
(18220, 59092, 5),
 -- Darkness
(15259, 15259, 1),
(15259, 15307, 2),
(15259, 15308, 3),
(15259, 15309, 4),
(15259, 15310, 5),
 -- Dash
(1850, 1850, 1),
(1850, 9821, 2),
(1850, 33357, 3),
 -- Deadened Nerves
(31380, 31380, 1),
(31380, 31382, 2),
(31380, 31383, 3),
 -- Deadliness
(30902, 30902, 1),
(30902, 30903, 2),
(30902, 30904, 3),
(30902, 30905, 4),
(30902, 30906, 5),
 -- Deadly Brew
(51625, 51625, 1),
(51625, 51626, 2),
 -- Deadly Throw
(26679, 26679, 1),
(26679, 48673, 2),
(26679, 48674, 3),
 -- Death and Decay
(43265, 43265, 1),
(43265, 49936, 2),
(43265, 49937, 3),
(43265, 49938, 4),
 -- Death Coil
(6789, 6789, 1),
(6789, 17925, 2),
(6789, 17926, 3),
(6789, 27223, 4),
(6789, 47859, 5),
(6789, 47860, 6),
 -- Death Coil
(62900, 62900, 1),
(62900, 62901, 2),
(62900, 62902, 3),
(62900, 62903, 4),
(62900, 62904, 5),
 -- Death Strike
(49998, 49998, 1),
(49998, 49999, 2),
(49998, 45463, 3),
(49998, 49923, 4),
(49998, 49924, 5),
 -- Death's Embrace
(47198, 47198, 1),
(47198, 47199, 2),
(47198, 47200, 3),
 -- Decimation
(63156, 63156, 1),
(63156, 63158, 2),
 -- Deep Wounds
(12162, 12162, 1),
(12162, 12850, 2),
(12162, 12868, 3),
 -- Deep Wounds
(12834, 12834, 1),
(12834, 12849, 2),
(12834, 12867, 3),
 -- Defensive Tactics
(29559, 29559, 1),
(29559, 29588, 2),
(29559, 29589, 3),
 -- Defiance
(12303, 12303, 1),
(12303, 12788, 2),
(12303, 12789, 3),
 -- Deflection
(16462, 16462, 1),
(16462, 16463, 2),
(16462, 16464, 3),
(16462, 16465, 4),
(16462, 16466, 5),
 -- Deflection
(13713, 13713, 1),
(13713, 13853, 2),
(13713, 13854, 3),
 -- Deflection
(19295, 19295, 1),
(19295, 19297, 2),
(19295, 19298, 3),
 -- Deflection
(20060, 20060, 1),
(20060, 20061, 2),
(20060, 20062, 3),
(20060, 20063, 4),
(20060, 20064, 5),
 -- Demon Armor
(706, 706, 1),
(706, 1086, 2),
(706, 11733, 3),
(706, 11734, 4),
(706, 11735, 5),
(706, 27260, 6),
(706, 47793, 7),
(706, 47889, 8),
 -- Demon Skin
(687, 687, 1),
(687, 696, 2),
 -- Demonic Aegis
(30143, 30143, 1),
(30143, 30144, 2),
(30143, 30145, 3),
 -- Demonic Brutality
(18705, 18705, 1),
(18705, 18706, 2),
(18705, 18707, 3),
 -- Demonic Embrace
(18697, 18697, 1),
(18697, 18698, 2),
(18697, 18699, 3),
 -- Demonic Knowledge
(35691, 35691, 1),
(35691, 35692, 2),
(35691, 35693, 3),
 -- Demonic Pact
(47236, 47236, 1),
(47236, 47237, 2),
(47236, 47238, 3),
(47236, 47239, 4),
(47236, 47240, 5),
 -- Demonic Power
(18126, 18126, 1),
(18126, 18127, 2),
 -- Demonic Resilience
(30319, 30319, 1),
(30319, 30320, 2),
(30319, 30321, 3),
 -- Demonic Tactics
(30242, 30242, 1),
(30242, 30245, 2),
(30242, 30246, 3),
(30242, 30247, 4),
(30242, 30248, 5),
 -- Demoralizing Roar
(99, 99, 1),
(99, 1735, 2),
(99, 9490, 3),
(99, 9747, 4),
(99, 9898, 5),
(99, 26998, 6),
(99, 48559, 7),
(99, 48560, 8),
 -- Demoralizing Screech
(24424, 24424, 1),
(24424, 24580, 2),
(24424, 24581, 3),
(24424, 24582, 4),
(24424, 27349, 5),
 -- Demoralizing Screech
(24423, 24423, 1),
(24423, 24577, 2),
(24423, 24578, 3),
(24423, 24579, 4),
(24423, 27051, 5),
(24423, 55487, 6),
 -- Demoralizing Shout
(1160, 1160, 1),
(1160, 6190, 2),
(1160, 11554, 3),
(1160, 11555, 4),
(1160, 11556, 5),
(1160, 25202, 6),
(1160, 25203, 7),
(1160, 47437, 8),
 -- Desecration
(55666, 55666, 1),
(55666, 55667, 2),
 -- Desperate Prayer
(19236, 19236, 1),
(19236, 19238, 2),
(19236, 19240, 3),
(19236, 19241, 4),
(19236, 19242, 5),
(19236, 19243, 6),
(19236, 25437, 7),
(19236, 48172, 8),
(19236, 48173, 9),
 -- Destructive Reach
(17917, 17917, 1),
(17917, 17918, 2),
 -- Destructive Soul
(30251, 30251, 1),
(30251, 30256, 2),
 -- Devastate
(20243, 20243, 1),
(20243, 30016, 2),
(20243, 30022, 3),
(20243, 47497, 4),
(20243, 47498, 5),
 -- Devotion Aura
(465, 465, 1),
(465, 10290, 2),
(465, 643, 3),
(465, 10291, 4),
(465, 1032, 5),
(465, 10292, 6),
(465, 10293, 7),
(465, 27149, 8),
(465, 48941, 9),
(465, 48942, 10),
 -- Devour Magic
(19505, 19505, 1),
(19505, 19731, 2),
(19505, 19734, 3),
(19505, 19736, 4),
(19505, 27276, 5),
(19505, 27277, 6),
(19505, 48011, 7),
 -- Devouring Plague
(2944, 2944, 1),
(2944, 19276, 2),
(2944, 19277, 3),
(2944, 19278, 4),
(2944, 19279, 5),
(2944, 19280, 6),
(2944, 25467, 7),
(2944, 48299, 8),
(2944, 48300, 9),
 -- Dirge
(49223, 49223, 1),
(49223, 49599, 2),
 -- Dirty Deeds
(14082, 14082, 1),
(14082, 14083, 2),
 -- Dirty Tricks
(14076, 14076, 1),
(14076, 14094, 2),
 -- Dispel Magic
(527, 527, 1),
(527, 988, 2),
 -- Displacement
(34478, 34478, 1),
(34478, 34479, 2),
(34478, 34481, 3),
 -- Dive
(23146, 23146, 1),
(23146, 23149, 2),
(23146, 23150, 3),
 -- Divine Aegis
(47509, 47509, 1),
(47509, 47511, 2),
(47509, 47515, 3),
 -- Divine Fury
(18530, 18530, 1),
(18530, 18531, 2),
(18530, 18533, 3),
(18530, 18534, 4),
(18530, 18535, 5),
 -- Divine Guardian
(53527, 53527, 1),
(53527, 53530, 2),
 -- Divine Intellect
(20257, 20257, 1),
(20257, 20258, 2),
(20257, 20259, 3),
(20257, 20260, 4),
(20257, 20261, 5),
 -- Divine Providence
(47562, 47562, 1),
(47562, 47564, 2),
(47562, 47565, 3),
(47562, 47566, 4),
(47562, 47567, 5),
 -- Divine Purpose
(31871, 31871, 1),
(31871, 31872, 2),
 -- Divine Spirit
(14752, 14752, 1),
(14752, 14818, 2),
(14752, 14819, 3),
(14752, 27841, 4),
(14752, 25312, 5),
(14752, 48073, 6),
 -- Divine Strength
(20262, 20262, 1),
(20262, 20263, 2),
(20262, 20264, 3),
(20262, 20265, 4),
(20262, 20266, 5),
 -- Divinity
(63646, 63646, 1),
(63646, 63647, 2),
(63646, 63648, 3),
(63646, 63649, 4),
(63646, 63650, 5),
 -- Dragon's Breath
(31661, 31661, 1),
(31661, 33041, 2),
(31661, 33042, 3),
(31661, 33043, 4),
(31661, 42949, 5),
(31661, 42950, 6),
 -- Drain Life
(689, 689, 1),
(689, 699, 2),
(689, 709, 3),
(689, 7651, 4),
(689, 11699, 5),
(689, 11700, 6),
(689, 27219, 7),
(689, 27220, 8),
(689, 47857, 9),
 -- Drain Soul
(1120, 1120, 1),
(1120, 8288, 2),
(1120, 8289, 3),
(1120, 11675, 4),
(1120, 27217, 5),
(1120, 47855, 6),
 -- Dreamstate
(33597, 33597, 1),
(33597, 33599, 2),
(33597, 33956, 3),
 -- Dual Wield Specialization
(13715, 13715, 1),
(13715, 13848, 2),
(13715, 13849, 3),
(13715, 13851, 4),
(13715, 13852, 5),
 -- Dual Wield Specialization
(23584, 23584, 1),
(23584, 23585, 2),
(23584, 23586, 3),
(23584, 23587, 4),
(23584, 23588, 5),
 -- Dual Wield Specialization
(30816, 30816, 1),
(30816, 30818, 2),
(30816, 30819, 3),
 -- Earth and Moon
(48506, 48506, 1),
(48506, 48510, 2),
(48506, 48511, 3),
 -- Earth Shield
(974, 974, 1),
(974, 32593, 2),
(974, 32594, 3),
(974, 49283, 4),
(974, 49284, 5),
 -- Earth Shock
(8042, 8042, 1),
(8042, 8044, 2),
(8042, 8045, 3),
(8042, 8046, 4),
(8042, 10412, 5),
(8042, 10413, 6),
(8042, 10414, 7),
(8042, 25454, 8),
(8042, 49230, 9),
(8042, 49231, 10),
 -- Earthen Power
(51523, 51523, 1),
(51523, 51524, 2),
 -- Earthliving
(51945, 51945, 1),
(51945, 51990, 2),
(51945, 51997, 3),
(51945, 51998, 4),
(51945, 51999, 5),
(51945, 52000, 6),
 -- Earthliving Weapon
(51730, 51730, 1),
(51730, 51988, 2),
(51730, 51991, 3),
(51730, 51992, 4),
(51730, 51993, 5),
(51730, 51994, 6),
 -- Earthliving Weapon (Passive)
(51940, 51940, 1),
(51940, 51989, 2),
(51940, 52004, 3),
(51940, 52005, 4),
(51940, 52007, 5),
(51940, 52008, 6),
 -- Earth's Grasp
(16043, 16043, 1),
(16043, 16130, 2),
 -- Ebon Plaguebringer
(51099, 51099, 1),
(51099, 51160, 2),
(51099, 51161, 3),
 -- Eclipse
(48516, 48516, 1),
(48516, 48521, 2),
(48516, 48525, 3),
 -- Efficiency
(19416, 19416, 1),
(19416, 19417, 2),
(19416, 19418, 3),
(19416, 19419, 4),
(19416, 19420, 5),
 -- Elemental Absorption
(30701, 30701, 1),
(30701, 30702, 2),
(30701, 30703, 3),
(30701, 30704, 4),
(30701, 30705, 5),
 -- Elemental Oath
(51466, 51466, 1),
(51466, 51470, 2),
 -- Elemental Precision
(30672, 30672, 1),
(30672, 30673, 2),
(30672, 30674, 3),
 -- Elemental Reach
(28999, 28999, 1),
(28999, 29000, 2),
 -- Elemental Shields
(30669, 30669, 1),
(30669, 30670, 2),
(30669, 30671, 3),
 -- Elemental Warding
(28996, 28996, 1),
(28996, 28997, 2),
(28996, 28998, 3),
 -- Elemental Weapons
(16266, 16266, 1),
(16266, 29079, 2),
(16266, 29080, 3),
 -- Elusiveness
(13981, 13981, 1),
(13981, 14066, 2),
 -- Emberstorm
(17954, 17954, 1),
(17954, 17955, 2),
(17954, 17956, 3),
(17954, 17957, 4),
(17954, 17958, 5),
 -- Empowered Corruption
(32381, 32381, 1),
(32381, 32382, 2),
(32381, 32383, 3),
 -- Empowered Fire
(31656, 31656, 1),
(31656, 31657, 2),
(31656, 31658, 3),
 -- Empowered Frostbolt
(31682, 31682, 1),
(31682, 31683, 2),
 -- Empowered Healing
(33158, 33158, 1),
(33158, 33159, 2),
(33158, 33160, 3),
(33158, 33161, 4),
(33158, 33162, 5),
 -- Empowered Imp
(47220, 47220, 1),
(47220, 47221, 2),
(47220, 47223, 3),
 -- Empowered Rejuvenation
(33886, 33886, 1),
(33886, 33887, 2),
(33886, 33888, 3),
(33886, 33889, 4),
(33886, 33890, 5),
 -- Empowered Renew
(63534, 63534, 1),
(63534, 63542, 2),
(63534, 63543, 3),
 -- Empowered Touch
(33879, 33879, 1),
(33879, 33880, 2),
 -- Enchanting
(7411, 7411, 1),
(7411, 7412, 2),
(7411, 7413, 3),
(7411, 13920, 4),
(7411, 28029, 5),
(7411, 51313, 6),
 -- Endless Winter
(49137, 49137, 1),
(49137, 49657, 2),
 -- Endurance
(13742, 13742, 1),
(13742, 13872, 2),
 -- Endurance Training
(19583, 19583, 1),
(19583, 19584, 2),
(19583, 19585, 3),
(19583, 19586, 4),
(19583, 19587, 5),
 -- Enduring Winter
(44557, 44557, 1),
(44557, 44560, 2),
(44557, 44561, 3),
 -- Engineering
(4036, 4036, 1),
(4036, 4037, 2),
(4036, 4038, 3),
(4036, 12656, 4),
(4036, 30350, 5),
(4036, 51306, 6),
 -- Enhancing Totems
(16259, 16259, 1),
(16259, 16295, 2),
(16259, 52456, 3),
 -- Enlightened Judgements
(53556, 53556, 1),
(53556, 53557, 2),
 -- Enlightenment
(34908, 34908, 1),
(34908, 34909, 2),
(34908, 34910, 3),
 -- Enrage
(12317, 12317, 1),
(12317, 13045, 2),
(12317, 13046, 3),
(12317, 13047, 4),
(12317, 13048, 5),
 -- Enslave Demon
(1098, 1098, 1),
(1098, 11725, 2),
(1098, 11726, 3),
(1098, 61191, 4),
 -- Entangling Roots
(339, 339, 1),
(339, 1062, 2),
(339, 5195, 3),
(339, 5196, 4),
(339, 9852, 5),
(339, 9853, 6),
(339, 26989, 7),
(339, 53308, 8),
 -- Entrapment
(19184, 19184, 1),
(19184, 19387, 2),
(19184, 19388, 3),
 -- Enveloping Shadows
(31211, 31211, 1),
(31211, 31212, 2),
(31211, 31213, 3),
 -- Envenom
(32645, 32645, 1),
(32645, 32684, 2),
(32645, 57992, 3),
(32645, 57993, 4),
 -- Epidemic
(49036, 49036, 1),
(49036, 49562, 2),
 -- Eradication
(47195, 47195, 1),
(47195, 47196, 2),
(47195, 47197, 3),
 -- Evasion
(5277, 5277, 1),
(5277, 26669, 2),
 -- Everlasting Affliction
(47201, 47201, 1),
(47201, 47202, 2),
(47201, 47203, 3),
(47201, 47204, 4),
(47201, 47205, 5),
 -- Eviscerate
(2098, 2098, 1),
(2098, 6760, 2),
(2098, 6761, 3),
(2098, 6762, 4),
(2098, 8623, 5),
(2098, 8624, 6),
(2098, 11299, 7),
(2098, 11300, 8),
(2098, 31016, 9),
(2098, 26865, 10),
(2098, 48667, 11),
(2098, 48668, 12),
 -- Execute
(5308, 5308, 1),
(5308, 20658, 2),
(5308, 20660, 3),
(5308, 20661, 4),
(5308, 20662, 5),
(5308, 25234, 6),
(5308, 25236, 7),
(5308, 47470, 8),
(5308, 47471, 9),
 -- Exorcism
(879, 879, 1),
(879, 5614, 2),
(879, 5615, 3),
(879, 10312, 4),
(879, 10313, 5),
(879, 10314, 6),
(879, 27138, 7),
(879, 48800, 8),
(879, 48801, 9),
 -- Explosive Shot
(53301, 53301, 1),
(53301, 60051, 2),
(53301, 60052, 3),
(53301, 60053, 4),
 -- Explosive Trap
(13813, 13813, 1),
(13813, 14316, 2),
(13813, 14317, 3),
(13813, 27025, 4),
(13813, 49066, 5),
(13813, 49067, 6),
 -- Explosive Trap Effect
(13812, 13812, 1),
(13812, 14314, 2),
(13812, 14315, 3),
(13812, 27026, 4),
(13812, 49064, 5),
(13812, 49065, 6),
 -- Expose Weakness
(34500, 34500, 1),
(34500, 34502, 2),
(34500, 34503, 3),
 -- Eye of the Storm
(29062, 29062, 1),
(29062, 29064, 2),
(29062, 29065, 3),
 -- Faerie Fire
(13424, 13424, 1),
(13424, 13752, 2),
 -- Fanaticism
(31879, 31879, 1),
(31879, 31880, 2),
(31879, 31881, 3),
 -- Fear
(5782, 5782, 1),
(5782, 6213, 2),
(5782, 6215, 3),
 -- Feeding Frenzy
(60096, 60096, 1),
(60096, 60097, 2),
 -- Feeding Frenzy
(53511, 53511, 1),
(53511, 53512, 2),
 -- Feint
(1966, 1966, 1),
(1966, 6768, 2),
(1966, 8637, 3),
(1966, 11303, 4),
(1966, 25302, 5),
(1966, 27448, 6),
(1966, 48658, 7),
(1966, 48659, 8),
 -- Fel Armor
(28176, 28176, 1),
(28176, 28189, 2),
(28176, 47892, 3),
(28176, 47893, 4),
 -- Fel Concentration
(17783, 17783, 1),
(17783, 17784, 2),
(17783, 17785, 3),
 -- Fel Intelligence
(54424, 54424, 1),
(54424, 57564, 2),
(54424, 57565, 3),
(54424, 57566, 4),
(54424, 57567, 5),
 -- Fel Synergy
(47230, 47230, 1),
(47230, 47231, 2),
 -- Fel Vitality
(18731, 18731, 1),
(18731, 18743, 2),
(18731, 18744, 3),
 -- Feral Aggression
(16858, 16858, 1),
(16858, 16859, 2),
(16858, 16860, 3),
(16858, 16861, 4),
(16858, 16862, 5),
 -- Feral Instinct
(16947, 16947, 1),
(16947, 16948, 2),
(16947, 16949, 3),
 -- Ferocious Bite
(22568, 22568, 1),
(22568, 22827, 2),
(22568, 22828, 3),
(22568, 22829, 4),
(22568, 31018, 5),
(22568, 24248, 6),
(22568, 48576, 7),
(22568, 48577, 8),
 -- Ferocious Dead
(49038, 49038, 1),
(49038, 49595, 2),
(49038, 49596, 3),
 -- Ferocious Inspiration
(34455, 34455, 1),
(34455, 34459, 2),
(34455, 34460, 3),
 -- Ferocity
(19598, 19598, 1),
(19598, 19599, 2),
(19598, 19600, 3),
(19598, 19601, 4),
(19598, 19602, 5),
 -- Ferocity
(16934, 16934, 1),
(16934, 16935, 2),
(16934, 16936, 3),
(16934, 16937, 4),
(16934, 16938, 5),
 -- Filthy Tricks
(58414, 58414, 1),
(58414, 58415, 2),
 -- Find Weakness
(31234, 31234, 1),
(31234, 31235, 2),
(31234, 31236, 3),
 -- Fingers of Frost
(44543, 44543, 1),
(44543, 44545, 2),
 -- Fire and Brimstone
(47266, 47266, 1),
(47266, 47267, 2),
(47266, 47268, 3),
(47266, 47269, 4),
(47266, 47270, 5),
 -- Fire Blast
(2141, 2141, 1),
(2141, 2142, 2),
(2141, 2143, 3),
(2141, 8414, 4),
(2141, 8415, 5),
(2141, 10198, 6),
(2141, 10200, 7),
(2141, 27378, 8),
(2141, 27379, 9),
 -- Fire Blast
(2136, 2136, 1),
(2136, 2137, 2),
(2136, 2138, 3),
(2136, 8412, 4),
(2136, 8413, 5),
(2136, 10197, 6),
(2136, 10199, 7),
(2136, 27078, 8),
(2136, 27079, 9),
(2136, 42872, 10),
(2136, 42873, 11),
 -- Fire Breath
(34889, 34889, 1),
(34889, 35323, 2),
(34889, 55482, 3),
(34889, 55483, 4),
(34889, 55484, 5),
(34889, 55485, 6),
 -- Fire Power
(11124, 11124, 1),
(11124, 12378, 2),
(11124, 12398, 3),
(11124, 12399, 4),
(11124, 12400, 5),
 -- Fire Resistance Aura
(19891, 19891, 1),
(19891, 19899, 2),
(19891, 19900, 3),
(19891, 27153, 4),
(19891, 48947, 5),
 -- Fire Resistance Totem
(8184, 8184, 1),
(8184, 10537, 2),
(8184, 10538, 3),
(8184, 25563, 4),
(8184, 58737, 5),
(8184, 58739, 6),
 -- Fire Shield
(2947, 2947, 1),
(2947, 8316, 2),
(2947, 8317, 3),
(2947, 11770, 4),
(2947, 11771, 5),
(2947, 27269, 6),
(2947, 47983, 7),
 -- Fire Shot
(3011, 3011, 1),
(3011, 6979, 2),
(3011, 6980, 3),
 -- Fire Ward
(1035, 1035, 1),
(1035, 8459, 2),
(1035, 8460, 3),
(1035, 10224, 4),
(1035, 10226, 5),
(1035, 27395, 6),
 -- Fire Ward
(543, 543, 1),
(543, 8457, 2),
(543, 8458, 3),
(543, 10223, 4),
(543, 10225, 5),
(543, 27128, 6),
(543, 43010, 7),
 -- Fireball
(133, 133, 1),
(133, 143, 2),
(133, 145, 3),
(133, 3140, 4),
(133, 8400, 5),
(133, 8401, 6),
(133, 8402, 7),
(133, 10148, 8),
(133, 10149, 9),
(133, 10150, 10),
(133, 10151, 11),
(133, 25306, 12),
(133, 27070, 13),
(133, 38692, 14),
(133, 42832, 15),
(133, 42833, 16),
 -- Firebolt
(3110, 3110, 1),
(3110, 7799, 2),
(3110, 7800, 3),
(3110, 7801, 4),
(3110, 7802, 5),
(3110, 11762, 6),
(3110, 11763, 7),
(3110, 27267, 8),
(3110, 47964, 9),
 -- Firestarter
(44442, 44442, 1),
(44442, 44443, 2),
 -- First Aid
(3273, 3273, 1),
(3273, 3274, 2),
(3273, 7924, 3),
(3273, 10846, 4),
(3273, 27028, 5),
(3273, 45542, 6),
 -- Flame Shock
(8050, 8050, 1),
(8050, 8052, 2),
(8050, 8053, 3),
(8050, 10447, 4),
(8050, 10448, 5),
(8050, 29228, 6),
(8050, 25457, 7),
(8050, 49232, 8),
(8050, 49233, 9),
 -- Flame Throwing
(11100, 11100, 1),
(11100, 12353, 2),
 -- Flamestrike
(2120, 2120, 1),
(2120, 2121, 2),
(2120, 8422, 3),
(2120, 8423, 4),
(2120, 10215, 5),
(2120, 10216, 6),
(2120, 27086, 7),
(2120, 42925, 8),
(2120, 42926, 9),
 -- Flametongue Totem
(52109, 52109, 1),
(52109, 52110, 2),
(52109, 52111, 3),
(52109, 52112, 4),
(52109, 52113, 5),
(52109, 58651, 6),
(52109, 58654, 7),
(52109, 58655, 8),
 -- Flametongue Totem
(8227, 8227, 1),
(8227, 8249, 2),
(8227, 10526, 3),
(8227, 16387, 4),
(8227, 25557, 5),
(8227, 58649, 6),
(8227, 58652, 7),
(8227, 58656, 8),
 -- Flametongue Weapon
(8024, 8024, 1),
(8024, 8027, 2),
(8024, 8030, 3),
(8024, 16339, 4),
(8024, 16341, 5),
(8024, 16342, 6),
(8024, 25489, 7),
(8024, 58785, 8),
(8024, 58789, 9),
(8024, 58790, 10),
 -- Flametongue Weapon (Passive)
(10400, 10400, 1),
(10400, 15567, 2),
(10400, 15568, 3),
(10400, 15569, 4),
(10400, 16311, 5),
(10400, 16312, 6),
(10400, 16313, 7),
(10400, 58784, 8),
(10400, 58791, 9),
(10400, 58792, 10),
 -- Flametongue Weapon Proc
(8026, 8026, 1),
(8026, 8028, 2),
(8026, 8029, 3),
(8026, 10445, 4),
(8026, 16343, 5),
(8026, 16344, 6),
(8026, 25488, 7),
(8026, 58786, 8),
(8026, 58787, 9),
(8026, 58788, 10),
 -- Flash Heal
(2061, 2061, 1),
(2061, 9472, 2),
(2061, 9473, 3),
(2061, 9474, 4),
(2061, 10915, 5),
(2061, 10916, 6),
(2061, 10917, 7),
(2061, 25233, 8),
(2061, 25235, 9),
(2061, 48070, 10),
(2061, 48071, 11),
 -- Flash of Light
(19750, 19750, 1),
(19750, 19939, 2),
(19750, 19940, 3),
(19750, 19941, 4),
(19750, 19942, 5),
(19750, 19943, 6),
(19750, 27137, 7),
(19750, 48784, 8),
(19750, 48785, 9),
 -- Fleet Footed
(31208, 31208, 1),
(31208, 31209, 2),
 -- Flurry
(16257, 16257, 1),
(16257, 16277, 2),
(16257, 16278, 3),
(16257, 16279, 4),
(16257, 16280, 5),
 -- Flurry
(16256, 16256, 1),
(16256, 16281, 2),
(16256, 16282, 3),
(16256, 16283, 4),
(16256, 16284, 5),
 -- Focused Aim
(53620, 53620, 1),
(53620, 53621, 2),
(53620, 53622, 3),
 -- Focused Attacks
(51634, 51634, 1),
(51634, 51635, 2),
(51634, 51636, 3),
 -- Focused Casting
(14743, 14743, 1),
(14743, 27828, 2),
 -- Focused Fire
(35060, 35060, 1),
(35060, 35061, 2),
 -- Focused Fire
(35029, 35029, 1),
(35029, 35030, 2),
 -- Focused Mind
(33213, 33213, 1),
(33213, 33214, 2),
(33213, 33215, 3),
 -- Focused Mind
(30864, 30864, 1),
(30864, 30865, 2),
(30864, 30866, 3),
 -- Focused Power
(33186, 33186, 1),
(33186, 33190, 2),
 -- Focused Rage
(29787, 29787, 1),
(29787, 29790, 2),
(29787, 29792, 3),
 -- Freezing Trap
(1499, 1499, 1),
(1499, 14310, 2),
(1499, 14311, 3),
 -- Freezing Trap Effect
(3355, 3355, 1),
(3355, 14308, 2),
(3355, 14309, 3),
 -- Frenzy
(19621, 19621, 1),
(19621, 19622, 2),
(19621, 19623, 3),
(19621, 19624, 4),
(19621, 19625, 5),
 -- Frigid Dreadplate
(49186, 49186, 1),
(49186, 51108, 2),
(49186, 51109, 3),
 -- Frost Armor
(168, 168, 1),
(168, 7300, 2),
(168, 7301, 3),
 -- Frost Channeling
(11160, 11160, 1),
(11160, 12518, 2),
(11160, 12519, 3),
 -- Frost Nova
(122, 122, 1),
(122, 865, 2),
(122, 6131, 3),
(122, 10230, 4),
(122, 27088, 5),
(122, 42917, 6),
 -- Frost Resistance Aura
(19888, 19888, 1),
(19888, 19897, 2),
(19888, 19898, 3),
(19888, 27152, 4),
(19888, 48945, 5),
 -- Frost Resistance Totem
(8181, 8181, 1),
(8181, 10478, 2),
(8181, 10479, 3),
(8181, 25560, 4),
(8181, 58741, 5),
(8181, 58745, 6),
 -- Frost Shock
(8056, 8056, 1),
(8056, 8058, 2),
(8056, 10472, 3),
(8056, 10473, 4),
(8056, 25464, 5),
(8056, 49235, 6),
(8056, 49236, 7),
 -- Frost Ward
(6144, 6144, 1),
(6144, 8463, 2),
(6144, 8464, 3),
(6144, 10178, 4),
(6144, 27396, 5),
(6144, 32797, 6),
 -- Frost Ward
(6143, 6143, 1),
(6143, 8461, 2),
(6143, 8462, 3),
(6143, 10177, 4),
(6143, 28609, 5),
(6143, 32796, 6),
(6143, 43012, 7),
 -- Frost Warding
(11189, 11189, 1),
(11189, 28332, 2),
 -- Frostbite
(11071, 11071, 1),
(11071, 12496, 2),
(11071, 12497, 3),
 -- Frostbolt
(116, 116, 1),
(116, 205, 2),
(116, 837, 3),
(116, 7322, 4),
(116, 8406, 5),
(116, 8407, 6),
(116, 8408, 7),
(116, 10179, 8),
(116, 10180, 9),
(116, 10181, 10),
(116, 25304, 11),
(116, 27071, 12),
(116, 27072, 13),
(116, 38697, 14),
(116, 42841, 15),
(116, 42842, 16),
 -- Frostbrand Weapon
(8033, 8033, 1),
(8033, 8038, 2),
(8033, 10456, 3),
(8033, 16355, 4),
(8033, 16356, 5),
(8033, 25500, 6),
(8033, 58794, 7),
(8033, 58795, 8),
(8033, 58796, 9),
 -- Frostfire Bolt
(44614, 44614, 1),
(44614, 47610, 2),
 -- Froststorm Breath
(54644, 54644, 1),
(54644, 55488, 2),
(54644, 55489, 3),
(54644, 55490, 4),
(54644, 55491, 5),
(54644, 55492, 6),
 -- Frozen Core
(31667, 31667, 1),
(31667, 31668, 2),
(31667, 31669, 3),
 -- Frozen Power
(63373, 63373, 1),
(63373, 63374, 2),
 -- Furious Attacks
(46910, 46910, 1),
(46910, 46911, 2),
 -- Furious Howl
(24604, 24604, 1),
(24604, 64491, 2),
(24604, 64492, 3),
(24604, 64493, 4),
(24604, 64494, 5),
(24604, 64495, 6),
 -- Furor
(17056, 17056, 1),
(17056, 17058, 2),
(17056, 17059, 3),
(17056, 17060, 4),
(17056, 17061, 5),
 -- Gag Order
(12311, 12311, 1),
(12311, 12958, 2),
 -- Gale Winds
(48488, 48488, 1),
(48488, 48514, 2),
 -- Garrote
(703, 703, 1),
(703, 8631, 2),
(703, 8632, 3),
(703, 8633, 4),
(703, 11289, 5),
(703, 11290, 6),
(703, 26839, 7),
(703, 26884, 8),
(703, 48675, 9),
(703, 48676, 10),
 -- Genesis
(57810, 57810, 1),
(57810, 57811, 2),
(57810, 57812, 3),
(57810, 57813, 4),
(57810, 57814, 5),
 -- Gift of Nature
(17104, 17104, 1),
(17104, 24943, 2),
(17104, 24944, 3),
(17104, 24945, 4),
(17104, 24946, 5),
 -- Gift of the Earthmother
(51179, 51179, 1),
(51179, 51180, 2),
(51179, 51181, 3),
(51179, 51182, 4),
(51179, 51183, 5),
 -- Gift of the Wild
(21849, 21849, 1),
(21849, 21850, 2),
(21849, 26991, 3),
(21849, 48470, 4),
 -- Glacier Rot
(49471, 49471, 1),
(49471, 49790, 2),
(49471, 49791, 3),
 -- Go for the Throat
(34952, 34952, 1),
(34952, 34953, 2),
 -- Go for the Throat
(34950, 34950, 1),
(34950, 34954, 2),
 -- Gore
(35299, 35299, 1),
(35299, 35300, 2),
(35299, 35302, 3),
(35299, 35303, 4),
(35299, 35304, 5),
(35299, 35305, 6),
(35299, 35306, 7),
(35299, 35307, 8),
(35299, 35308, 9),
 -- Gore
(35290, 35290, 1),
(35290, 35291, 2),
(35290, 35292, 3),
(35290, 35293, 4),
(35290, 35294, 5),
(35290, 35295, 6),
 -- Grace
(47516, 47516, 1),
(47516, 47517, 2),
 -- Grace of the Mantis
(53450, 53450, 1),
(53450, 53451, 2),
 -- Great Resistance
(53427, 53427, 1),
(53427, 53429, 2),
(53427, 53430, 3),
 -- Great Stamina
(4195, 4195, 1),
(4195, 4196, 2),
(4195, 4197, 3),
(4195, 4198, 4),
(4195, 4199, 5),
(4195, 4200, 6),
(4195, 4201, 7),
(4195, 4202, 8),
(4195, 5048, 9),
(4195, 5049, 10),
(4195, 27364, 11),
 -- Great Stamina
(61686, 61686, 1),
(61686, 61687, 2),
(61686, 61688, 3),
 -- Greater Blessing of Might
(25782, 25782, 1),
(25782, 25916, 2),
(25782, 27141, 3),
(25782, 48933, 4),
(25782, 48934, 5),
 -- Greater Blessing of Wisdom
(25894, 25894, 1),
(25894, 25918, 2),
(25894, 27143, 3),
(25894, 48937, 4),
(25894, 48938, 5),
 -- Greater Heal
(2060, 2060, 1),
(2060, 10963, 2),
(2060, 10964, 3),
(2060, 10965, 4),
(2060, 25314, 5),
(2060, 25210, 6),
(2060, 25213, 7),
(2060, 48062, 8),
(2060, 48063, 9),
 -- Grim Reach
(18218, 18218, 1),
(18218, 18219, 2),
 -- Growl
(1853, 1853, 1),
(1853, 14922, 2),
(1853, 14923, 3),
(1853, 14924, 4),
(1853, 14925, 5),
(1853, 14926, 6),
(1853, 14927, 7),
(1853, 27344, 8),
 -- Growl
(2649, 2649, 1),
(2649, 14916, 2),
(2649, 14917, 3),
(2649, 14918, 4),
(2649, 14919, 5),
(2649, 14920, 6),
(2649, 14921, 7),
(2649, 27047, 8),
(2649, 61676, 9),
 -- Guard Dog
(53178, 53178, 1),
(53178, 53179, 2),
 -- Guarded by the Light
(53583, 53583, 1),
(53583, 53585, 2),
 -- Guardian Totems
(16258, 16258, 1),
(16258, 16293, 2),
 -- Guardian's Favor
(20174, 20174, 1),
(20174, 20175, 2),
 -- Guile of Gorefiend
(50187, 50187, 1),
(50187, 50190, 2),
(50187, 50191, 3),
 -- Hack and Slash
(13960, 13960, 1),
(13960, 13961, 2),
(13960, 13962, 3),
(13960, 13963, 4),
(13960, 13964, 5),
 -- Hammer of Justice
(853, 853, 1),
(853, 5588, 2),
(853, 5589, 3),
(853, 10308, 4),
 -- Hammer of Wrath
(24275, 24275, 1),
(24275, 24274, 2),
(24275, 24239, 3),
(24275, 27180, 4),
(24275, 48805, 5),
(24275, 48806, 6),
 -- Hand of Protection
(1022, 1022, 1),
(1022, 5599, 2),
(1022, 10278, 3),
 -- Haunt
(48181, 48181, 1),
(48181, 59161, 2),
(48181, 59163, 3),
(48181, 59164, 4),
 -- Hawk Eye
(19498, 19498, 1),
(19498, 19499, 2),
(19498, 19500, 3),
 -- Heal
(2054, 2054, 1),
(2054, 2055, 2),
(2054, 6063, 3),
(2054, 6064, 4),
 -- Healing Focus
(14913, 14913, 1),
(14913, 15012, 2),
 -- Healing Focus
(16181, 16181, 1),
(16181, 16230, 2),
(16181, 16232, 3),
 -- Healing Grace
(29187, 29187, 1),
(29187, 29189, 2),
(29187, 29191, 3),
 -- Healing Light
(20237, 20237, 1),
(20237, 20238, 2),
(20237, 20239, 3),
 -- Healing Prayers
(14911, 14911, 1),
(14911, 15018, 2),
 -- Healing Stream Totem
(5394, 5394, 1),
(5394, 6375, 2),
(5394, 6377, 3),
(5394, 10462, 4),
(5394, 10463, 5),
(5394, 25567, 6),
(5394, 58755, 7),
(5394, 58756, 8),
(5394, 58757, 9),
 -- Healing Touch
(5185, 5185, 1),
(5185, 5186, 2),
(5185, 5187, 3),
(5185, 5188, 4),
(5185, 5189, 5),
(5185, 6778, 6),
(5185, 8903, 7),
(5185, 9758, 8),
(5185, 9888, 9),
(5185, 9889, 10),
(5185, 25297, 11),
(5185, 26978, 12),
(5185, 26979, 13),
(5185, 48377, 14),
(5185, 48378, 15),
 -- Healing Wave
(331, 331, 1),
(331, 332, 2),
(331, 547, 3),
(331, 913, 4),
(331, 939, 5),
(331, 959, 6),
(331, 8005, 7),
(331, 10395, 8),
(331, 10396, 9),
(331, 25357, 10),
(331, 25391, 11),
(331, 25396, 12),
(331, 49272, 13),
(331, 49273, 14),
 -- Healing Way
(29206, 29206, 1),
(29206, 29205, 2),
(29206, 29202, 3),
 -- Health Funnel
(755, 755, 1),
(755, 3698, 2),
(755, 3699, 3),
(755, 3700, 4),
(755, 11693, 5),
(755, 11694, 6),
(755, 11695, 7),
(755, 27259, 8),
(755, 47856, 9),
 -- Heart of the Crusader
(21183, 21183, 1),
(21183, 54498, 2),
(21183, 54499, 3),
 -- Heart of the Crusader
(20335, 20335, 1),
(20335, 20336, 2),
(20335, 20337, 3),
 -- Heart of the Wild
(17003, 17003, 1),
(17003, 17004, 2),
(17003, 17005, 3),
(17003, 17006, 4),
(17003, 24894, 5),
 -- Heart Strike
(55050, 55050, 1),
(55050, 55258, 2),
(55050, 55259, 3),
(55050, 55260, 4),
(55050, 55261, 5),
(55050, 55262, 6),
 -- Heightened Senses
(30894, 30894, 1),
(30894, 30895, 2),
 -- Hellfire
(1949, 1949, 1),
(1949, 11683, 2),
(1949, 11684, 3),
(1949, 27213, 4),
(1949, 47823, 5),
 -- Hellfire Effect
(5857, 5857, 1),
(5857, 11681, 2),
(5857, 11682, 3),
(5857, 27214, 4),
(5857, 47822, 5),
 -- Hemorrhage
(16511, 16511, 1),
(16511, 17347, 2),
(16511, 17348, 3),
(16511, 26864, 4),
(16511, 48660, 5),
 -- Herb Gathering
(2366, 2366, 1),
(2366, 2368, 2),
(2366, 3570, 3),
(2366, 11993, 4),
(2366, 28695, 5),
(2366, 50300, 6),
 -- Heroic Strike
(78, 78, 1),
(78, 284, 2),
(78, 285, 3),
(78, 1608, 4),
(78, 11564, 5),
(78, 11565, 6),
(78, 11566, 7),
(78, 11567, 8),
(78, 25286, 9),
(78, 29707, 10),
(78, 30324, 11),
(78, 47449, 12),
(78, 47450, 13),
 -- Hibernate
(2637, 2637, 1),
(2637, 18657, 2),
(2637, 18658, 3),
 -- Holy Concentration
(34753, 34753, 1),
(34753, 34859, 2),
(34753, 34860, 3),
 -- Holy Fire
(14914, 14914, 1),
(14914, 15262, 2),
(14914, 15263, 3),
(14914, 15264, 4),
(14914, 15265, 5),
(14914, 15266, 6),
(14914, 15267, 7),
(14914, 15261, 8),
(14914, 25384, 9),
(14914, 48134, 10),
(14914, 48135, 11),
 -- Holy Guidance
(31837, 31837, 1),
(31837, 31838, 2),
(31837, 31839, 3),
(31837, 31840, 4),
(31837, 31841, 5),
 -- Holy Light
(635, 635, 1),
(635, 639, 2),
(635, 647, 3),
(635, 1026, 4),
(635, 1042, 5),
(635, 3472, 6),
(635, 10328, 7),
(635, 10329, 8),
(635, 25292, 9),
(635, 27135, 10),
(635, 27136, 11),
(635, 48781, 12),
(635, 48782, 13),
 -- Holy Power
(5923, 5923, 1),
(5923, 5924, 2),
(5923, 5925, 3),
(5923, 5926, 4),
(5923, 25829, 5),
 -- Holy Reach
(27789, 27789, 1),
(27789, 27790, 2),
 -- Holy Shield
(20925, 20925, 1),
(20925, 20927, 2),
(20925, 20928, 3),
(20925, 27179, 4),
(20925, 48951, 5),
(20925, 48952, 6),
 -- Holy Specialization
(14889, 14889, 1),
(14889, 15008, 2),
(14889, 15009, 3),
(14889, 15010, 4),
(14889, 15011, 5),
 -- Holy Wrath
(2812, 2812, 1),
(2812, 10318, 2),
(2812, 27139, 3),
(2812, 48816, 4),
(2812, 48817, 5),
 -- Honor Among Thieves
(51698, 51698, 1),
(51698, 51700, 2),
(51698, 51701, 3),
 -- Horn of Winter
(57330, 57330, 1),
(57330, 57623, 2),
 -- Hot Streak
(44445, 44445, 1),
(44445, 44446, 2),
(44445, 44448, 3),
 -- Howl of Terror
(5484, 5484, 1),
(5484, 17928, 2),
 -- Howling Blast
(49184, 49184, 1),
(49184, 51409, 2),
(49184, 51410, 3),
(49184, 51411, 4),
 -- Hunter vs. Wild
(56339, 56339, 1),
(56339, 56340, 2),
(56339, 56341, 3),
 -- Hunter's Mark
(1130, 1130, 1),
(1130, 14323, 2),
(1130, 14324, 3),
(1130, 14325, 4),
(1130, 53338, 5),
 -- Hunting Party
(53290, 53290, 1),
(53290, 53291, 2),
(53290, 53292, 3),
 -- Ice Armor
(1214, 1214, 1),
(1214, 1228, 2),
(1214, 10221, 3),
(1214, 10222, 4),
(1214, 27391, 5),
 -- Ice Armor
(7302, 7302, 1),
(7302, 7320, 2),
(7302, 10219, 3),
(7302, 10220, 4),
(7302, 27124, 5),
(7302, 43008, 6),
 -- Ice Barrier
(11426, 11426, 1),
(11426, 13031, 2),
(11426, 13032, 3),
(11426, 13033, 4),
(11426, 27134, 5),
(11426, 33405, 6),
(11426, 43038, 7),
(11426, 43039, 8),
 -- Ice Floes
(31670, 31670, 1),
(31670, 31672, 2),
(31670, 55094, 3),
 -- Ice Lance
(30455, 30455, 1),
(30455, 42913, 2),
(30455, 42914, 3),
 -- Ice Shards
(11207, 11207, 1),
(11207, 12672, 2),
(11207, 15047, 3),
 -- Icy Reach
(55061, 55061, 1),
(55061, 55062, 2),
 -- Icy Talons
(50880, 50880, 1),
(50880, 50884, 2),
(50880, 50885, 3),
(50880, 50886, 4),
(50880, 50887, 5),
 -- Ignite
(11119, 11119, 1),
(11119, 11120, 2),
(11119, 12846, 3),
(11119, 12847, 4),
(11119, 12848, 5),
 -- Illumination
(20210, 20210, 1),
(20210, 20212, 2),
(20210, 20213, 3),
(20210, 20214, 4),
(20210, 20215, 5),
 -- Immolate
(348, 348, 1),
(348, 707, 2),
(348, 1094, 3),
(348, 2941, 4),
(348, 11665, 5),
(348, 11667, 6),
(348, 11668, 7),
(348, 25309, 8),
(348, 27215, 9),
(348, 47810, 10),
(348, 47811, 11),
 -- Impale
(16493, 16493, 1),
(16493, 16494, 2),
 -- Improved Ambush
(14079, 14079, 1),
(14079, 14080, 2),
 -- Improved Arcane Shot
(19454, 19454, 1),
(19454, 19455, 2),
(19454, 19456, 3),
 -- Improved Aspect of the Hawk
(19552, 19552, 1),
(19552, 19553, 2),
(19552, 19554, 3),
(19552, 19555, 4),
(19552, 19556, 5),
 -- Improved Aspect of the Monkey
(19549, 19549, 1),
(19549, 19550, 2),
(19549, 19551, 3),
 -- Improved Barkskin
(63410, 63410, 1),
(63410, 63411, 2),
 -- Improved Barrage
(35104, 35104, 1),
(35104, 35110, 2),
(35104, 35111, 3),
 -- Improved Berserker Rage
(20500, 20500, 1),
(20500, 20501, 2),
 -- Improved Berserker Stance
(29759, 29759, 1),
(29759, 29760, 2),
(29759, 29761, 3),
(29759, 29762, 4),
(29759, 29763, 5),
 -- Improved Blessing of Might
(20042, 20042, 1),
(20042, 20045, 2),
 -- Improved Blessing of Salvation
(20194, 20194, 1),
(20194, 20195, 2),
 -- Improved Blessing of Wisdom
(20244, 20244, 1),
(20244, 20245, 2),
 -- Improved Blink
(31569, 31569, 1),
(31569, 31570, 2),
 -- Improved Blizzard
(11185, 11185, 1),
(11185, 12487, 2),
(11185, 12488, 3),
 -- Improved Blood Presence
(50365, 50365, 1),
(50365, 50371, 2),
 -- Improved Bloodrage
(12301, 12301, 1),
(12301, 12818, 2),
 -- Improved Chain Heal
(30872, 30872, 1),
(30872, 30873, 2),
 -- Improved Challenging Shout
(12327, 12327, 1),
(12327, 12886, 2),
 -- Improved Charge
(12285, 12285, 1),
(12285, 12697, 2),
 -- Improved Cleave
(12329, 12329, 1),
(12329, 12950, 2),
(12329, 20496, 3),
 -- Improved Concentration Aura
(20254, 20254, 1),
(20254, 20255, 2),
(20254, 20256, 3),
 -- Improved Concussive Shot
(19407, 19407, 1),
(19407, 19412, 2),
 -- Improved Cone of Cold
(11190, 11190, 1),
(11190, 12489, 2),
(11190, 12490, 3),
 -- Improved Corpse Explosion
(49601, 49601, 1),
(49601, 49602, 2),
 -- Improved Corruption
(17810, 17810, 1),
(17810, 17811, 2),
(17810, 17812, 3),
(17810, 17813, 4),
(17810, 17814, 5),
 -- Improved Counterspell
(11255, 11255, 1),
(11255, 12598, 2),
 -- Improved Cower
(53180, 53180, 1),
(53180, 53181, 2),
 -- Improved Curse of Agony
(18827, 18827, 1),
(18827, 18829, 2),
 -- Improved Curse of Weakness
(18179, 18179, 1),
(18179, 18180, 2),
 -- Improved Death Coil
(30049, 30049, 1),
(30049, 30051, 2),
(30049, 30052, 3),
 -- Improved Defensive Stance
(29593, 29593, 1),
(29593, 29594, 2),
 -- Improved Demonic Tactics
(54347, 54347, 1),
(54347, 54348, 2),
(54347, 54349, 3),
 -- Improved Demoralizing Shout
(12324, 12324, 1),
(12324, 12876, 2),
(12324, 12877, 3),
(12324, 12878, 4),
(12324, 12879, 5),
 -- Improved Devotion Aura
(20138, 20138, 1),
(20138, 20139, 2),
(20138, 20140, 3),
 -- Improved Devouring Plague
(63625, 63625, 1),
(63625, 63626, 2),
(63625, 63627, 3),
 -- Improved Disarm
(12313, 12313, 1),
(12313, 12804, 2),
 -- Improved Disciplines
(12312, 12312, 1),
(12312, 12803, 2),
 -- Improved Divine Spirit
(33174, 33174, 1),
(33174, 33182, 2),
 -- Improved Drain Soul
(18213, 18213, 1),
(18213, 18372, 2),
 -- Improved Earth Shield
(51560, 51560, 1),
(51560, 51561, 2),
 -- Improved Eviscerate
(14162, 14162, 1),
(14162, 14163, 2),
(14162, 14164, 3),
 -- Improved Execute
(20502, 20502, 1),
(20502, 20503, 2),
 -- Improved Expose Armor
(14168, 14168, 1),
(14168, 14169, 2),
 -- Improved Eyes of the Beast
(19557, 19557, 1),
(19557, 19558, 2),
 -- Improved Faerie Fire
(33600, 33600, 1),
(33600, 33601, 2),
(33600, 33602, 3),
 -- Improved Fear
(53754, 53754, 1),
(53754, 53759, 2),
 -- Improved Felhunter
(54037, 54037, 1),
(54037, 54038, 2),
 -- Improved Fire Blast
(11078, 11078, 1),
(11078, 11080, 2),
 -- Improved Fire Nova
(16086, 16086, 1),
(16086, 16544, 2),
 -- Improved Fireball
(11069, 11069, 1),
(11069, 12338, 2),
(11069, 12339, 3),
(11069, 12340, 4),
(11069, 12341, 5),
 -- Improved Flash of Light
(20249, 20249, 1),
(20249, 20250, 2),
(20249, 20251, 3),
 -- Improved Frost Presence
(50384, 50384, 1),
(50384, 50385, 2),
 -- Improved Frostbolt
(11070, 11070, 1),
(11070, 12473, 2),
(11070, 16763, 3),
(11070, 16765, 4),
(11070, 16766, 5),
 -- Improved Ghost Wolf
(16262, 16262, 1),
(16262, 16287, 2),
 -- Improved Gouge
(13741, 13741, 1),
(13741, 13793, 2),
(13741, 13792, 3),
 -- Improved Hammer of Justice
(20487, 20487, 1),
(20487, 20488, 2),
 -- Improved Hamstring
(12289, 12289, 1),
(12289, 12668, 2),
(12289, 23695, 3),
 -- Improved Healing
(14912, 14912, 1),
(14912, 15013, 2),
(14912, 15014, 3),
 -- Improved Healing Wave
(16182, 16182, 1),
(16182, 16226, 2),
(16182, 16227, 3),
(16182, 16228, 4),
(16182, 16229, 5),
 -- Improved Health Funnel
(18703, 18703, 1),
(18703, 18704, 2),
 -- Improved Healthstone
(18692, 18692, 1),
(18692, 18693, 2),
 -- Improved Heroic Strike
(12282, 12282, 1),
(12282, 12663, 2),
(12282, 12664, 3),
 -- Improved Howl of Terror
(30054, 30054, 1),
(30054, 30057, 2),
 -- Improved Hunter's Mark
(19421, 19421, 1),
(19421, 19422, 2),
(19421, 19423, 3),
 -- Improved Icy Touch
(49175, 49175, 1),
(49175, 50031, 2),
(49175, 51456, 3),
 -- Improved Immolate
(17815, 17815, 1),
(17815, 17833, 2),
(17815, 17834, 3),
 -- Improved Imp
(18694, 18694, 1),
(18694, 18695, 2),
(18694, 18696, 3),
 -- Improved Inner Fire
(14747, 14747, 1),
(14747, 14770, 2),
(14747, 14771, 3),
 -- Improved Inner Rage
(12325, 12325, 1),
(12325, 12863, 2),
(12325, 12864, 3),
(12325, 12865, 4),
(12325, 12866, 5),
 -- Improved Insect Swarm
(57849, 57849, 1),
(57849, 57850, 2),
(57849, 57851, 3),
 -- Improved Intercept
(29888, 29888, 1),
(29888, 29889, 2),
 -- Improved Intimidating Shout
(19870, 19870, 1),
(19870, 19871, 2),
 -- Improved Judgements
(25956, 25956, 1),
(25956, 25957, 2),
 -- Improved Kick
(13754, 13754, 1),
(13754, 13867, 2),
 -- Improved Kidney Shot
(14174, 14174, 1),
(14174, 14175, 2),
(14174, 14176, 3),
 -- Improved Lay on Hands
(20234, 20234, 1),
(20234, 20235, 2),
 -- Improved Leader of the Pack
(34297, 34297, 1),
(34297, 34300, 2),
 -- Improved Life Tap
(18182, 18182, 1),
(18182, 18183, 2),
 -- Improved Mana Burn
(14750, 14750, 1),
(14750, 14772, 2),
 -- Improved Mangle
(48532, 48532, 1),
(48532, 48489, 2),
(48532, 48491, 3),
 -- Improved Mark of the Wild
(17050, 17050, 1),
(17050, 17051, 2),
 -- Improved Mind Blast
(15273, 15273, 1),
(15273, 15312, 2),
(15273, 15313, 3),
(15273, 15314, 4),
(15273, 15316, 5),
 -- Improved Moonfire
(16821, 16821, 1),
(16821, 16822, 2),
 -- Improved Moonkin Form
(50170, 50170, 1),
(50170, 50171, 2),
(50170, 50172, 3),
 -- Improved Moonkin Form
(48384, 48384, 1),
(48384, 48395, 2),
(48384, 48396, 3),
 -- Improved Mortal Strike
(35446, 35446, 1),
(35446, 35448, 2),
(35446, 35449, 3),
 -- Improved Overpower
(12290, 12290, 1),
(12290, 12963, 2),
 -- Improved Poisons
(14113, 14113, 1),
(14113, 14114, 2),
(14113, 14115, 3),
(14113, 14116, 4),
(14113, 14117, 5),
 -- Improved Power Word: Fortitude
(14749, 14749, 1),
(14749, 14767, 2),
 -- Improved Power Word: Shield
(14748, 14748, 1),
(14748, 14768, 2),
(14748, 14769, 3),
 -- Improved Psychic Scream
(15392, 15392, 1),
(15392, 15448, 2),
 -- Improved Reincarnation
(16184, 16184, 1),
(16184, 16209, 2),
 -- Improved Rejuvenation
(17111, 17111, 1),
(17111, 17112, 2),
(17111, 17113, 3),
 -- Improved Rend
(12286, 12286, 1),
(12286, 12658, 2),
 -- Improved Renew
(14908, 14908, 1),
(14908, 15020, 2),
(14908, 17191, 3),
 -- Improved Revenge
(12797, 12797, 1),
(12797, 12799, 2),
 -- Improved Revive Pet
(24443, 24443, 1),
(24443, 19575, 2),
 -- Improved Righteous Fury
(20468, 20468, 1),
(20468, 20469, 2),
(20468, 20470, 3),
 -- Improved Rune Tap
(48985, 48985, 1),
(48985, 49488, 2),
(48985, 49489, 3),
 -- Improved Scorch
(11095, 11095, 1),
(11095, 12872, 2),
(11095, 12873, 3),
 -- Improved Scorpid Sting
(19491, 19491, 1),
(19491, 19493, 2),
(19491, 19494, 3),
 -- Improved Searing Pain
(17927, 17927, 1),
(17927, 17929, 2),
(17927, 17930, 3),
 -- Improved Shadow Bolt
(17793, 17793, 1),
(17793, 17796, 2),
(17793, 17801, 3),
(17793, 17802, 4),
(17793, 17803, 5),
 -- Improved Shadow Word: Pain
(15275, 15275, 1),
(15275, 15317, 2),
 -- Improved Shadowform
(47569, 47569, 1),
(47569, 47570, 2),
 -- Improved Shields
(16261, 16261, 1),
(16261, 16290, 2),
(16261, 51881, 3),
 -- Improved Sinister Strike
(13732, 13732, 1),
(13732, 13863, 2),
 -- Improved Slam
(12862, 12862, 1),
(12862, 12330, 2),
 -- Improved Slice and Dice
(14165, 14165, 1),
(14165, 14166, 2),
 -- Improved Soul Leech
(54117, 54117, 1),
(54117, 54118, 2),
 -- Improved Spell Reflection
(59088, 59088, 1),
(59088, 59089, 2),
 -- Improved Spirit Tap
(49694, 49694, 1),
(49694, 59000, 2),
 -- Improved Spirit Tap
(15337, 15337, 1),
(15337, 15338, 2),
 -- Improved Sprint
(13743, 13743, 1),
(13743, 13875, 2),
 -- Improved Steady Shot
(53221, 53221, 1),
(53221, 53222, 2),
(53221, 53224, 3),
 -- Improved Stings
(19464, 19464, 1),
(19464, 19465, 2),
(19464, 19466, 3),
 -- Improved Stormstrike
(51521, 51521, 1),
(51521, 51522, 2),
 -- Improved Succubus
(18754, 18754, 1),
(18754, 18755, 2),
(18754, 18756, 3),
 -- Improved Thunder Clap
(12287, 12287, 1),
(12287, 12665, 2),
(12287, 12666, 3),
 -- Improved Tracking
(52783, 52783, 1),
(52783, 52785, 2),
(52783, 52786, 3),
(52783, 52787, 4),
(52783, 52788, 5),
 -- Improved Tranquility
(17123, 17123, 1),
(17123, 17124, 2),
 -- Improved Tree of Life
(48535, 48535, 1),
(48535, 48536, 2),
(48535, 48537, 3),
 -- Improved Unholy Presence
(50391, 50391, 1),
(50391, 50392, 2),
 -- Improved Vampiric Embrace
(27839, 27839, 1),
(27839, 27840, 2),
 -- Improved Water Shield
(16180, 16180, 1),
(16180, 16196, 2),
(16180, 16198, 3),
 -- Improved Whirlwind
(29721, 29721, 1),
(29721, 29776, 2),
 -- Improved Windfury Totem
(29192, 29192, 1),
(29192, 29193, 2),
 -- Impurity
(49220, 49220, 1),
(49220, 49633, 2),
(49220, 49635, 3),
(49220, 49636, 4),
(49220, 49638, 5),
 -- Incanter's Absorption
(44394, 44394, 1),
(44394, 44395, 2),
(44394, 44396, 3),
 -- Incinerate
(29722, 29722, 1),
(29722, 32231, 2),
(29722, 47837, 3),
(29722, 47838, 4),
 -- Incineration
(18459, 18459, 1),
(18459, 18460, 2),
(18459, 54734, 3),
 -- Incite
(50685, 50685, 1),
(50685, 50686, 2),
(50685, 50687, 3),
 -- Infected Wounds
(48483, 48483, 1),
(48483, 48484, 2),
(48483, 48485, 3),
 -- Infectious Poisons
(51630, 51630, 1),
(51630, 51631, 2),
 -- Inner Fire
(588, 588, 1),
(588, 7128, 2),
(588, 602, 3),
(588, 1006, 4),
(588, 10951, 5),
(588, 10952, 6),
(588, 25431, 7),
(588, 48040, 8),
(588, 48168, 9),
 -- Inscription
(45357, 45357, 1),
(45357, 45358, 2),
(45357, 45359, 3),
(45357, 45360, 4),
(45357, 45361, 5),
(45357, 45363, 6),
 -- Insect Swarm
(5570, 5570, 1),
(5570, 24974, 2),
(5570, 24975, 3),
(5570, 24976, 4),
(5570, 24977, 5),
(5570, 27013, 6),
(5570, 48468, 7),
 -- Inspiration
(14893, 14893, 1),
(14893, 15357, 2),
(14893, 15359, 3),
 -- Inspiration
(14892, 14892, 1),
(14892, 15362, 2),
(14892, 15363, 3),
 -- Intensify Rage
(46908, 46908, 1),
(46908, 46909, 2),
(46908, 56924, 3),
 -- Intensity
(17080, 17080, 1),
(17080, 35358, 2),
(17080, 35359, 3),
 -- Intensity
(17106, 17106, 1),
(17106, 17107, 2),
(17106, 17108, 3),
 -- Intensity
(18135, 18135, 1),
(18135, 18136, 2),
 -- Invigoration
(53252, 53252, 1),
(53252, 53253, 2),
 -- Iron Will
(12300, 12300, 1),
(12300, 12959, 2),
(12300, 12960, 3),
 -- Jewelcrafting
(25229, 25229, 1),
(25229, 25230, 2),
(25229, 28894, 3),
(25229, 28895, 4),
(25229, 28897, 5),
(25229, 51311, 6),
 -- Judgements of the Just
(53695, 53695, 1),
(53695, 53696, 2),
 -- Judgements of the Wise
(31876, 31876, 1),
(31876, 31877, 2),
(31876, 31878, 3),
 -- Khadgar's Unlocking
(491, 491, 1),
(491, 857, 2),
(491, 10165, 3),
(491, 10166, 4),
 -- Kidney Shot
(408, 408, 1),
(408, 8643, 2),
 -- Kill Shot
(53351, 53351, 1),
(53351, 61005, 2),
(53351, 61006, 3),
 -- Killer Instinct
(19370, 19370, 1),
(19370, 19371, 2),
(19370, 19373, 3),
 -- Killing Machine
(51123, 51123, 1),
(51123, 51127, 2),
(51123, 51128, 3),
(51123, 51129, 4),
(51123, 51130, 5),
 -- Kindling Soul
(47426, 47426, 1),
(47426, 47427, 2),
 -- Kindling Soul
(47261, 47261, 1),
(47261, 47262, 2),
 -- Kindred Spirits
(56314, 56314, 1),
(56314, 56315, 2),
(56314, 56316, 3),
(56314, 56317, 4),
(56314, 56318, 5),
 -- King of the Jungle
(48492, 48492, 1),
(48492, 48494, 2),
(48492, 48495, 3),
 -- Lacerate
(33745, 33745, 1),
(33745, 48567, 2),
(33745, 48568, 3),
 -- Lash of Pain
(7814, 7814, 1),
(7814, 7815, 2),
(7814, 7816, 3),
(7814, 11778, 4),
(7814, 11779, 5),
(7814, 11780, 6),
(7814, 27274, 7),
(7814, 47991, 8),
(7814, 47992, 9),
 -- Lava Breath
(58604, 58604, 1),
(58604, 58607, 2),
(58604, 58608, 3),
(58604, 58609, 4),
(58604, 58610, 5),
(58604, 58611, 6),
 -- Lava Burst
(51505, 51505, 1),
(51505, 60043, 2),
 -- Lava Flows
(51480, 51480, 1),
(51480, 51481, 2),
(51480, 51482, 3),
 -- Lay on Hands
(633, 633, 1),
(633, 2800, 2),
(633, 10310, 3),
(633, 27154, 4),
(633, 48788, 5),
 -- Leatherworking
(2108, 2108, 1),
(2108, 3104, 2),
(2108, 3811, 3),
(2108, 10662, 4),
(2108, 32549, 5),
(2108, 51302, 6),
 -- Lesser Heal
(2050, 2050, 1),
(2050, 2052, 2),
(2050, 2053, 3),
 -- Lesser Healing Wave
(8004, 8004, 1),
(8004, 8008, 2),
(8004, 8010, 3),
(8004, 10466, 4),
(8004, 10467, 5),
(8004, 10468, 6),
(8004, 25420, 7),
(8004, 49275, 8),
(8004, 49276, 9),
 -- Lethal Shots
(19426, 19426, 1),
(19426, 19427, 2),
(19426, 19429, 3),
(19426, 19430, 4),
(19426, 19431, 5),
 -- Lethality
(14128, 14128, 1),
(14128, 14132, 2),
(14128, 14135, 3),
(14128, 14136, 4),
(14128, 14137, 5),
 -- Life Tap
(1454, 1454, 1),
(1454, 1455, 2),
(1454, 1456, 3),
(1454, 11687, 4),
(1454, 11688, 5),
(1454, 11689, 6),
(1454, 27222, 7),
(1454, 57946, 8),
 -- Lifeblood
(55428, 55428, 1),
(55428, 55480, 2),
(55428, 55500, 3),
(55428, 55501, 4),
(55428, 55502, 5),
(55428, 55503, 6),
 -- Lifebloom
(33763, 33763, 1),
(33763, 48450, 2),
(33763, 48451, 3),
 -- Lightning Breath
(24845, 24845, 1),
(24845, 25013, 2),
(24845, 25014, 3),
(24845, 25015, 4),
(24845, 25016, 5),
(24845, 25017, 6),
 -- Lightning Breath
(24844, 24844, 1),
(24844, 25008, 2),
(24844, 25009, 3),
(24844, 25010, 4),
(24844, 25011, 5),
(24844, 25012, 6),
 -- Lightning Mastery
(16578, 16578, 1),
(16578, 16579, 2),
(16578, 16580, 3),
(16578, 16581, 4),
(16578, 16582, 5),
 -- Lightning Overload
(30675, 30675, 1),
(30675, 30678, 2),
(30675, 30679, 3),
 -- Lightning Reflexes
(13712, 13712, 1),
(13712, 13788, 2),
(13712, 13789, 3),
 -- Lightning Reflexes
(19168, 19168, 1),
(19168, 19180, 2),
(19168, 19181, 3),
(19168, 24296, 4),
(19168, 24297, 5),
 -- Light's Grace
(31833, 31833, 1),
(31833, 31835, 2),
(31833, 31836, 3),
 -- Lightwell
(724, 724, 1),
(724, 27870, 2),
(724, 27871, 3),
(724, 28275, 4),
(724, 48086, 5),
(724, 48087, 6),
 -- Lightwell Renew
(7001, 7001, 1),
(7001, 27873, 2),
(7001, 27874, 3),
(7001, 28276, 4),
(7001, 48084, 5),
(7001, 48085, 6),
 -- Lionhearted
(53409, 53409, 1),
(53409, 53411, 2),
 -- Living Seed
(48496, 48496, 1),
(48496, 48499, 2),
(48496, 48500, 3),
 -- Living Spirit
(34151, 34151, 1),
(34151, 34152, 2),
(34151, 34153, 3),
 -- Lock and Load
(56342, 56342, 1),
(56342, 56343, 2),
(56342, 56344, 3),
 -- Lockpicking
(1809, 1809, 1),
(1809, 1810, 2),
(1809, 6460, 3),
 -- Longevity
(53262, 53262, 1),
(53262, 53263, 2),
(53262, 53264, 3),
 -- Lunar Guidance
(33589, 33589, 1),
(33589, 33590, 2),
(33589, 33591, 3),
 -- Mace Specialization
(13709, 13709, 1),
(13709, 13800, 2),
(13709, 13801, 3),
(13709, 13802, 4),
(13709, 13803, 5),
 -- Maelstrom Weapon
(51528, 51528, 1),
(51528, 51529, 2),
(51528, 51530, 3),
(51528, 51531, 4),
(51528, 51532, 5),
 -- Mage Armor
(6121, 6121, 1),
(6121, 22784, 2),
(6121, 22785, 3),
(6121, 27392, 4),
 -- Mage Armor
(6117, 6117, 1),
(6117, 22782, 2),
(6117, 22783, 3),
(6117, 27125, 4),
(6117, 43023, 5),
(6117, 43024, 6),
 -- Magic Absorption
(29441, 29441, 1),
(29441, 29444, 2),
 -- Magic Attunement
(11247, 11247, 1),
(11247, 12606, 2),
 -- Magic Suppression
(49224, 49224, 1),
(49224, 49610, 2),
(49224, 49611, 3),
 -- Magma Totem
(8187, 8187, 1),
(8187, 10579, 2),
(8187, 10580, 3),
(8187, 10581, 4),
(8187, 25550, 5),
(8187, 58732, 6),
(8187, 58735, 7),
 -- Magma Totem
(8190, 8190, 1),
(8190, 10585, 2),
(8190, 10586, 3),
(8190, 10587, 4),
(8190, 25552, 5),
(8190, 58731, 6),
(8190, 58734, 7),
 -- Magma Totem Passive
(8188, 8188, 1),
(8188, 10582, 2),
(8188, 10583, 3),
(8188, 10584, 4),
(8188, 25551, 5),
(8188, 58733, 6),
(8188, 58736, 7),
 -- Maim
(22570, 22570, 1),
(22570, 49802, 2),
 -- Malediction
(32477, 32477, 1),
(32477, 32483, 2),
(32477, 32484, 3),
 -- Malice
(14138, 14138, 1),
(14138, 14139, 2),
(14138, 14140, 3),
(14138, 14141, 4),
(14138, 14142, 5),
 -- Mana Shield
(1481, 1481, 1),
(1481, 8496, 2),
(1481, 8497, 3),
(1481, 10194, 4),
(1481, 10195, 5),
(1481, 10196, 6),
(1481, 27398, 7),
 -- Mana Shield
(1463, 1463, 1),
(1463, 8494, 2),
(1463, 8495, 3),
(1463, 10191, 4),
(1463, 10192, 5),
(1463, 10193, 6),
(1463, 27131, 7),
(1463, 43019, 8),
(1463, 43020, 9),
 -- Mana Spring
(5677, 5677, 1),
(5677, 10491, 2),
(5677, 10493, 3),
(5677, 10494, 4),
(5677, 25569, 5),
(5677, 58775, 6),
(5677, 58776, 7),
(5677, 58777, 8),
 -- Mana Spring Totem
(5675, 5675, 1),
(5675, 10495, 2),
(5675, 10496, 3),
(5675, 10497, 4),
(5675, 25570, 5),
(5675, 58771, 6),
(5675, 58773, 7),
(5675, 58774, 8),
 -- Mangle (Bear)
(33878, 33878, 1),
(33878, 33986, 2),
(33878, 33987, 3),
(33878, 48563, 4),
(33878, 48564, 5),
 -- Mangle (Cat)
(33876, 33876, 1),
(33876, 33982, 2),
(33876, 33983, 3),
(33876, 48565, 4),
(33876, 48566, 5),
 -- Mark of the Wild
(1126, 1126, 1),
(1126, 5232, 2),
(1126, 6756, 3),
(1126, 5234, 4),
(1126, 8907, 5),
(1126, 9884, 6),
(1126, 9885, 7),
(1126, 26990, 8),
(1126, 48469, 9),
 -- Marked for Death
(53241, 53241, 1),
(53241, 53243, 2),
(53241, 53244, 3),
(53241, 53245, 4),
(53241, 53246, 5),
 -- Martyrdom
(14531, 14531, 1),
(14531, 14774, 2),
 -- Master Conjuror
(18767, 18767, 1),
(18767, 18768, 2),
 -- Master Healer
(14904, 14904, 1),
(14904, 15024, 2),
(14904, 15025, 3),
(14904, 15026, 4),
(14904, 15027, 5),
 -- Master Marksman
(34485, 34485, 1),
(34485, 34486, 2),
(34485, 34487, 3),
(34485, 34488, 4),
(34485, 34489, 5),
 -- Master of Anatomy
(53125, 53125, 1),
(53125, 53662, 2),
(53125, 53663, 3),
(53125, 53664, 4),
(53125, 53665, 5),
(53125, 53666, 6),
 -- Master of Deception
(13958, 13958, 1),
(13958, 13970, 2),
(13958, 13971, 3),
 -- Master of Elements
(29074, 29074, 1),
(29074, 29075, 2),
(29074, 29076, 3),
 -- Master of Subtlety
(31221, 31221, 1),
(31221, 31222, 2),
(31221, 31223, 3),
 -- Master Poisoner
(31226, 31226, 1),
(31226, 31227, 2),
(31226, 58410, 3),
 -- Master Summoner
(18709, 18709, 1),
(18709, 18710, 2),
 -- Maul
(6807, 6807, 1),
(6807, 6808, 2),
(6807, 6809, 3),
(6807, 8972, 4),
(6807, 9745, 5),
(6807, 9880, 6),
(6807, 9881, 7),
(6807, 26996, 8),
(6807, 48479, 9),
(6807, 48480, 10),
 -- Meditation
(14521, 14521, 1),
(14521, 14776, 2),
(14521, 14777, 3),
 -- Melee Specialization
(19381, 19381, 1),
(19381, 19382, 2),
(19381, 19383, 3),
(19381, 19384, 4),
(19381, 19385, 5),
 -- Melted Mind
(58378, 58378, 1),
(58378, 58379, 2),
 -- Mend Pet
(136, 136, 1),
(136, 3111, 2),
(136, 3661, 3),
(136, 3662, 4),
(136, 13542, 5),
(136, 13543, 6),
(136, 13544, 7),
(136, 27046, 8),
(136, 48989, 9),
(136, 48990, 10),
 -- Mental Agility
(14520, 14520, 1),
(14520, 14780, 2),
(14520, 14781, 3),
 -- Mental Dexterity
(51883, 51883, 1),
(51883, 51884, 2),
(51883, 51885, 3),
 -- Mental Quickness
(30812, 30812, 1),
(30812, 30813, 2),
(30812, 30814, 3),
 -- Mental Strength
(18551, 18551, 1),
(18551, 18552, 2),
(18551, 18553, 3),
(18551, 18554, 4),
(18551, 18555, 5),
 -- Merciless Combat
(49024, 49024, 1),
(49024, 49538, 2),
 -- Might of Mograine
(49023, 49023, 1),
(49023, 49533, 2),
(49023, 49534, 3),
 -- Mind Blast
(8092, 8092, 1),
(8092, 8102, 2),
(8092, 8103, 3),
(8092, 8104, 4),
(8092, 8105, 5),
(8092, 8106, 6),
(8092, 10945, 7),
(8092, 10946, 8),
(8092, 10947, 9),
(8092, 25372, 10),
(8092, 25375, 11),
(8092, 48126, 12),
(8092, 48127, 13),
 -- Mind Flay
(15407, 15407, 1),
(15407, 17311, 2),
(15407, 17312, 3),
(15407, 17313, 4),
(15407, 17314, 5),
(15407, 18807, 6),
(15407, 25387, 7),
(15407, 48155, 8),
(15407, 48156, 9),
 -- Mind Mastery
(31584, 31584, 1),
(31584, 31585, 2),
(31584, 31586, 3),
(31584, 31587, 4),
(31584, 31588, 5),
 -- Mind Melt
(14910, 14910, 1),
(14910, 33371, 2),
 -- Mind Vision
(2096, 2096, 1),
(2096, 10909, 2),
 -- Mining
(2575, 2575, 1),
(2575, 2576, 2),
(2575, 3564, 3),
(2575, 10248, 4),
(2575, 29354, 5),
(2575, 50310, 6),
 -- Missile Barrage
(44404, 44404, 1),
(44404, 54486, 2),
(44404, 54488, 3),
(44404, 54489, 4),
(44404, 54490, 5),
 -- Molten Core
(47245, 47245, 1),
(47245, 47246, 2),
(47245, 47247, 3),
 -- Molten Fury
(31679, 31679, 1),
(31679, 31680, 2),
 -- Molten Shields
(11094, 11094, 1),
(11094, 13043, 2),
 -- Mongoose Bite
(1495, 1495, 1),
(1495, 14269, 2),
(1495, 14270, 3),
(1495, 14271, 4),
(1495, 36916, 5),
(1495, 53339, 6),
 -- Monstrous Bite
(54680, 54680, 1),
(54680, 55495, 2),
(54680, 55496, 3),
(54680, 55497, 4),
(54680, 55498, 5),
(54680, 55499, 6),
 -- Moonfire
(8921, 8921, 1),
(8921, 8924, 2),
(8921, 8925, 3),
(8921, 8926, 4),
(8921, 8927, 5),
(8921, 8928, 6),
(8921, 8929, 7),
(8921, 9833, 8),
(8921, 9834, 9),
(8921, 9835, 10),
(8921, 26987, 11),
(8921, 26988, 12),
(8921, 48462, 13),
(8921, 48463, 14),
 -- Moonfury
(16896, 16896, 1),
(16896, 16897, 2),
(16896, 16899, 3),
 -- Moonglow
(16845, 16845, 1),
(16845, 16846, 2),
(16845, 16847, 3),
 -- Morbidity
(48963, 48963, 1),
(48963, 49564, 2),
(48963, 49565, 3),
 -- Mortal Shots
(19485, 19485, 1),
(19485, 19487, 2),
(19485, 19488, 3),
(19485, 19489, 4),
(19485, 19490, 5),
 -- Mortal Strike
(12294, 12294, 1),
(12294, 21551, 2),
(12294, 21552, 3),
(12294, 21553, 4),
(12294, 25248, 5),
(12294, 30330, 6),
(12294, 47485, 7),
(12294, 47486, 8),
 -- Multi-Shot
(2643, 2643, 1),
(2643, 14288, 2),
(2643, 14289, 3),
(2643, 14290, 4),
(2643, 25294, 5),
(2643, 27021, 6),
(2643, 49047, 7),
(2643, 49048, 8),
 -- Murder
(14158, 14158, 1),
(14158, 14159, 2),
 -- Mutilate
(1329, 1329, 1),
(1329, 34411, 2),
(1329, 34412, 3),
(1329, 34413, 4),
(1329, 48663, 5),
(1329, 48666, 6),
 -- Natural Armor
(24547, 24547, 1),
(24547, 24556, 2),
(24547, 24557, 3),
(24547, 24558, 4),
(24547, 24559, 5),
(24547, 24560, 6),
(24547, 24561, 7),
(24547, 24562, 8),
(24547, 24631, 9),
(24547, 24632, 10),
(24547, 27362, 11),
 -- Natural Armor
(61689, 61689, 1),
(61689, 61690, 2),
 -- Natural Perfection
(45281, 45281, 1),
(45281, 45282, 2),
(45281, 45283, 3),
 -- Natural Perfection
(33881, 33881, 1),
(33881, 33882, 2),
(33881, 33883, 3),
 -- Natural Reaction
(57878, 57878, 1),
(57878, 57880, 2),
(57878, 57881, 3),
 -- Natural Shapeshifter
(16833, 16833, 1),
(16833, 16834, 2),
(16833, 16835, 3),
 -- Naturalist
(17069, 17069, 1),
(17069, 17070, 2),
(17069, 17071, 3),
(17069, 17072, 4),
(17069, 17073, 5),
 -- Nature Resistance Totem
(10595, 10595, 1),
(10595, 10600, 2),
(10595, 10601, 3),
(10595, 25574, 4),
(10595, 58746, 5),
(10595, 58749, 6),
 -- Nature's Blessing
(30867, 30867, 1),
(30867, 30868, 2),
(30867, 30869, 3),
 -- Nature's Bounty
(17074, 17074, 1),
(17074, 17075, 2),
(17074, 17076, 3),
(17074, 17077, 4),
(17074, 17078, 5),
 -- Nature's Focus
(17063, 17063, 1),
(17063, 17065, 2),
(17063, 17066, 3),
 -- Nature's Grasp
(16689, 16689, 1),
(16689, 16810, 2),
(16689, 16811, 3),
(16689, 16812, 4),
(16689, 16813, 5),
(16689, 17329, 6),
(16689, 27009, 7),
(16689, 53312, 8),
 -- Nature's Guardian
(30881, 30881, 1),
(30881, 30883, 2),
(30881, 30884, 3),
(30881, 30885, 4),
(30881, 30886, 5),
 -- Nature's Reach
(16819, 16819, 1),
(16819, 16820, 2),
 -- Necrosis
(51459, 51459, 1),
(51459, 51462, 2),
(51459, 51463, 3),
(51459, 51464, 4),
(51459, 51465, 5),
 -- Nemesis
(63117, 63117, 1),
(63117, 63121, 2),
(63117, 63123, 3),
 -- Nerves of Cold Steel
(49226, 49226, 1),
(49226, 50137, 2),
(49226, 50138, 3),
 -- Nerves of Steel
(31130, 31130, 1),
(31130, 31131, 2),
 -- Nether Protection
(30299, 30299, 1),
(30299, 30301, 2),
(30299, 30302, 3),
 -- Nether Shock
(50479, 50479, 1),
(50479, 53584, 2),
(50479, 53586, 3),
(50479, 53587, 4),
(50479, 53588, 5),
(50479, 53589, 6),
 -- Netherwind Presence
(44400, 44400, 1),
(44400, 44402, 2),
(44400, 44403, 3),
 -- Night of the Dead
(55620, 55620, 1),
(55620, 55623, 2),
 -- Nightfall
(18094, 18094, 1),
(18094, 18095, 2),
 -- Noxious Stings
(53295, 53295, 1),
(53295, 53296, 2),
(53295, 53297, 3),
 -- Nurturing Instinct
(47179, 47179, 1),
(47179, 47180, 2),
 -- Nurturing Instinct
(33872, 33872, 1),
(33872, 33873, 2),
 -- One-Handed Weapon Specialization
(16538, 16538, 1),
(16538, 16539, 2),
(16538, 16540, 3),
(16538, 16541, 4),
(16538, 16542, 5),
 -- One-Handed Weapon Specialization
(20196, 20196, 1),
(20196, 20197, 2),
(20196, 20198, 3),
 -- Opportunity
(14057, 14057, 1),
(14057, 14072, 2),
 -- Outbreak
(49013, 49013, 1),
(49013, 55236, 2),
(49013, 55237, 3),
 -- Owlkin Frenzy
(48389, 48389, 1),
(48389, 48392, 2),
(48389, 48393, 3),
 -- Owl's Focus
(53514, 53514, 1),
(53514, 53516, 2),
 -- Pain and Suffering
(47580, 47580, 1),
(47580, 47581, 2),
(47580, 47582, 3),
 -- Pathfinding
(19559, 19559, 1),
(19559, 19560, 2),
 -- Permafrost
(11175, 11175, 1),
(11175, 12569, 2),
(11175, 12571, 3),
 -- Pet Aggression
(6311, 6311, 1),
(6311, 6314, 2),
(6311, 6315, 3),
(6311, 6316, 4),
(6311, 6317, 5),
 -- Pet Barding
(53175, 53175, 1),
(53175, 53176, 2),
 -- Pet Hardiness
(6280, 6280, 1),
(6280, 6281, 2),
(6280, 6282, 3),
(6280, 6283, 4),
(6280, 6286, 5),
 -- Pet Recovery
(6328, 6328, 1),
(6328, 6331, 2),
(6328, 6332, 3),
(6328, 6333, 4),
(6328, 6334, 5),
 -- Pet Resistance
(6443, 6443, 1),
(6443, 6444, 2),
(6443, 6445, 3),
(6443, 6446, 4),
(6443, 6447, 5),
 -- Piercing Ice
(11151, 11151, 1),
(11151, 12952, 2),
(11151, 12953, 3),
 -- Piercing Shots
(53234, 53234, 1),
(53234, 53237, 2),
(53234, 53238, 3),
 -- Pin
(50245, 50245, 1),
(50245, 53544, 2),
(50245, 53545, 3),
(50245, 53546, 4),
(50245, 53547, 5),
(50245, 53548, 6),
 -- Playing with Fire
(31638, 31638, 1),
(31638, 31639, 2),
(31638, 31640, 3),
 -- Point of No Escape
(53298, 53298, 1),
(53298, 53299, 2),
 -- Poison Spit
(35388, 35388, 1),
(35388, 35390, 2),
(35388, 35391, 3),
 -- Poison Spit
(35387, 35387, 1),
(35387, 35389, 2),
(35387, 35392, 3),
(35387, 55555, 4),
(35387, 55556, 5),
(35387, 55557, 6),
 -- Poleaxe Specialization
(12700, 12700, 1),
(12700, 12781, 2),
(12700, 12783, 3),
(12700, 12784, 4),
(12700, 12785, 5),
 -- Polymorph
(118, 118, 1),
(118, 12824, 2),
(118, 12825, 3),
(118, 12826, 4),
 -- Pounce
(9005, 9005, 1),
(9005, 9823, 2),
(9005, 9827, 3),
(9005, 27006, 4),
(9005, 49803, 5),
 -- Pounce Bleed
(9007, 9007, 1),
(9007, 9824, 2),
(9007, 9826, 3),
(9007, 27007, 4),
(9007, 49804, 5),
 -- Power Word: Fortitude
(1243, 1243, 1),
(1243, 1244, 2),
(1243, 1245, 3),
(1243, 2791, 4),
(1243, 10937, 5),
(1243, 10938, 6),
(1243, 25389, 7),
(1243, 48161, 8),
 -- Power Word: Shield
(17, 17, 1),
(17, 592, 2),
(17, 600, 3),
(17, 3747, 4),
(17, 6065, 5),
(17, 6066, 6),
(17, 10898, 7),
(17, 10899, 8),
(17, 10900, 9),
(17, 10901, 10),
(17, 25217, 11),
(17, 25218, 12),
(17, 48065, 13),
(17, 48066, 14),
 -- Prayer of Fortitude
(21562, 21562, 1),
(21562, 21564, 2),
(21562, 25392, 3),
(21562, 48162, 4),
 -- Prayer of Healing
(596, 596, 1),
(596, 996, 2),
(596, 10960, 3),
(596, 10961, 4),
(596, 25316, 5),
(596, 25308, 6),
(596, 48072, 7),
 -- Prayer of Mending
(41635, 41635, 1),
(41635, 48110, 2),
(41635, 48111, 3),
 -- Prayer of Mending
(33076, 33076, 1),
(33076, 48112, 2),
(33076, 48113, 3),
 -- Prayer of Shadow Protection
(27683, 27683, 1),
(27683, 39374, 2),
(27683, 48170, 3),
 -- Prayer of Spirit
(27681, 27681, 1),
(27681, 32999, 2),
(27681, 48074, 3),
 -- Precision
(29438, 29438, 1),
(29438, 29439, 2),
(29438, 29440, 3),
 -- Precision
(13705, 13705, 1),
(13705, 13832, 2),
(13705, 13843, 3),
(13705, 13844, 4),
(13705, 13845, 5),
 -- Precision
(29590, 29590, 1),
(29590, 29591, 2),
(29590, 29592, 3),
 -- Predatory Instincts
(33859, 33859, 1),
(33859, 33866, 2),
(33859, 33867, 3),
 -- Predatory Strikes
(16972, 16972, 1),
(16972, 16974, 2),
(16972, 16975, 3),
 -- Prey on the Weak
(51685, 51685, 1),
(51685, 51686, 2),
(51685, 51687, 3),
(51685, 51688, 4),
(51685, 51689, 5),
 -- Primal Precision
(48409, 48409, 1),
(48409, 48410, 2),
 -- Primal Tenacity
(33851, 33851, 1),
(33851, 33852, 2),
(33851, 33957, 3),
 -- Prismatic Cloak
(31574, 31574, 1),
(31574, 31575, 2),
(31574, 54354, 3),
 -- Protector of the Pack
(57873, 57873, 1),
(57873, 57876, 2),
(57873, 57877, 3),
 -- Prowl
(24450, 24450, 1),
(24450, 24452, 2),
(24450, 24453, 3),
 -- Psychic Scream
(8122, 8122, 1),
(8122, 8124, 2),
(8122, 10888, 3),
(8122, 10890, 4),
 -- Pummel
(13491, 13491, 1),
(13491, 6554, 2),
(13491, 6555, 3),
 -- Puncture
(12308, 12308, 1),
(12308, 12810, 2),
(12308, 12811, 3),
 -- Puncturing Wounds
(13733, 13733, 1),
(13733, 13865, 2),
(13733, 13866, 3),
 -- Pure of Heart
(31822, 31822, 1),
(31822, 31823, 2),
 -- Purge
(370, 370, 1),
(370, 8012, 2),
 -- Purification
(16178, 16178, 1),
(16178, 16210, 2),
(16178, 16211, 3),
(16178, 16212, 4),
(16178, 16213, 5),
 -- Purifying Power
(31825, 31825, 1),
(31825, 31826, 2),
 -- Pursuit of Justice
(61417, 61417, 1),
(61417, 61418, 2),
 -- Pursuit of Justice
(26022, 26022, 1),
(26022, 26023, 2),
 -- Pyroblast
(11366, 11366, 1),
(11366, 12505, 2),
(11366, 12522, 3),
(11366, 12523, 4),
(11366, 12524, 5),
(11366, 12525, 6),
(11366, 12526, 7),
(11366, 18809, 8),
(11366, 27132, 9),
(11366, 33938, 10),
(11366, 42890, 11),
(11366, 42891, 12),
 -- Pyroclasm
(18096, 18096, 1),
(18096, 18073, 2),
(18096, 63245, 3),
 -- Pyromaniac
(34293, 34293, 1),
(34293, 34295, 2),
(34293, 34296, 3),
 -- Quick Recovery
(31244, 31244, 1),
(31244, 31245, 2),
 -- Rage of Rivendare
(50117, 50117, 1),
(50117, 50118, 2),
(50117, 50119, 3),
(50117, 50120, 4),
(50117, 50121, 5),
 -- Rake
(1822, 1822, 1),
(1822, 1823, 2),
(1822, 1824, 3),
(1822, 9904, 4),
(1822, 27003, 5),
(1822, 48573, 6),
(1822, 48574, 7),
 -- Rake
(59881, 59881, 1),
(59881, 59882, 2),
(59881, 59883, 3),
(59881, 59884, 4),
(59881, 59885, 5),
(59881, 59886, 6),
 -- Ranged Weapon Specialization
(19507, 19507, 1),
(19507, 19508, 2),
(19507, 19509, 3),
 -- Rapid Recuperation
(53228, 53228, 1),
(53228, 53232, 2),
 -- Raptor Strike
(2973, 2973, 1),
(2973, 14260, 2),
(2973, 14261, 3),
(2973, 14262, 4),
(2973, 14263, 5),
(2973, 14264, 6),
(2973, 14265, 7),
(2973, 14266, 8),
(2973, 27014, 9),
(2973, 48995, 10),
(2973, 48996, 11),
 -- Rapture
(47535, 47535, 1),
(47535, 47536, 2),
(47535, 47537, 3),
 -- Ravage
(6785, 6785, 1),
(6785, 6787, 2),
(6785, 9866, 3),
(6785, 9867, 4),
(6785, 27005, 5),
(6785, 48578, 6),
(6785, 48579, 7),
 -- Ravage
(50518, 50518, 1),
(50518, 53558, 2),
(50518, 53559, 3),
(50518, 53560, 4),
(50518, 53561, 5),
(50518, 53562, 6),
 -- Ravenous Dead
(48965, 48965, 1),
(48965, 49571, 2),
(48965, 49572, 3),
 -- Reaping
(49208, 49208, 1),
(49208, 56834, 2),
(49208, 56835, 3),
 -- Rebirth
(20484, 20484, 1),
(20484, 20739, 2),
(20484, 20742, 3),
(20484, 20747, 4),
(20484, 20748, 5),
(20484, 26994, 6),
(20484, 48477, 7),
 -- Reckoning
(20177, 20177, 1),
(20177, 20179, 2),
(20177, 20181, 3),
(20177, 20180, 4),
(20177, 20182, 5),
 -- Redemption
(7328, 7328, 1),
(7328, 10322, 2),
(7328, 10324, 3),
(7328, 20772, 4),
(7328, 20773, 5),
(7328, 48949, 6),
(7328, 48950, 7),
 -- Redoubt
(20127, 20127, 1),
(20127, 20130, 2),
(20127, 20135, 3),
 -- Reflective Shield
(33201, 33201, 1),
(33201, 33202, 2),
 -- Regeneration
(30799, 30799, 1),
(30799, 30800, 2),
(30799, 30801, 3),
 -- Regrowth
(8936, 8936, 1),
(8936, 8938, 2),
(8936, 8939, 3),
(8936, 8940, 4),
(8936, 8941, 5),
(8936, 9750, 6),
(8936, 9856, 7),
(8936, 9857, 8),
(8936, 9858, 9),
(8936, 26980, 10),
(8936, 48442, 11),
(8936, 48443, 12),
 -- Rejuvenation
(774, 774, 1),
(774, 1058, 2),
(774, 1430, 3),
(774, 2090, 4),
(774, 2091, 5),
(774, 3627, 6),
(774, 8910, 7),
(774, 9839, 8),
(774, 9840, 9),
(774, 9841, 10),
(774, 25299, 11),
(774, 26981, 12),
(774, 26982, 13),
(774, 48440, 14),
(774, 48441, 15),
 -- Relentless Strikes
(14179, 14179, 1),
(14179, 58422, 2),
(14179, 58423, 3),
(14179, 58424, 4),
(14179, 58425, 5),
 -- Remorseless
(14143, 14143, 1),
(14143, 14149, 2),
 -- Remorseless Attacks
(14144, 14144, 1),
(14144, 14148, 2),
 -- Rend
(772, 772, 1),
(772, 6546, 2),
(772, 6547, 3),
(772, 6548, 4),
(772, 11572, 5),
(772, 11573, 6),
(772, 11574, 7),
(772, 25208, 8),
(772, 46845, 9),
(772, 47465, 10),
 -- Rend and Tear
(48432, 48432, 1),
(48432, 48433, 2),
(48432, 48434, 3),
(48432, 51268, 4),
(48432, 51269, 5),
 -- Renew
(139, 139, 1),
(139, 6074, 2),
(139, 6075, 3),
(139, 6076, 4),
(139, 6077, 5),
(139, 6078, 6),
(139, 10927, 7),
(139, 10928, 8),
(139, 10929, 9),
(139, 25315, 10),
(139, 25221, 11),
(139, 25222, 12),
(139, 48067, 13),
(139, 48068, 14),
 -- Renewed Hope
(57470, 57470, 1),
(57470, 57472, 2),
 -- Replenish Mana
(5405, 5405, 1),
(5405, 10052, 2),
(5405, 10057, 3),
(5405, 10058, 4),
(5405, 27103, 5),
(5405, 42987, 6),
(5405, 42988, 7),
 -- Resourcefulness
(34491, 34491, 1),
(34491, 34492, 2),
(34491, 34493, 3),
 -- Restorative Totems
(16187, 16187, 1),
(16187, 16205, 2),
(16187, 16206, 3),
 -- Resurrection
(2006, 2006, 1),
(2006, 2010, 2),
(2006, 10880, 3),
(2006, 10881, 4),
(2006, 20770, 5),
(2006, 25435, 6),
(2006, 48171, 7),
 -- Retribution Aura
(7294, 7294, 1),
(7294, 10298, 2),
(7294, 10299, 3),
(7294, 10300, 4),
(7294, 10301, 5),
(7294, 27150, 6),
(7294, 54043, 7),
 -- Revenge
(6572, 6572, 1),
(6572, 6574, 2),
(6572, 7379, 3),
(6572, 11600, 4),
(6572, 11601, 5),
(6572, 25288, 6),
(6572, 25269, 7),
(6572, 30357, 8),
(6572, 57823, 9),
 -- Reverberation
(16040, 16040, 1),
(16040, 16113, 2),
(16040, 16114, 3),
(16040, 16115, 4),
(16040, 16116, 5),
 -- Revitalize
(48539, 48539, 1),
(48539, 48544, 2),
(48539, 48545, 3),
 -- Revive
(50769, 50769, 1),
(50769, 50768, 2),
(50769, 50767, 3),
(50769, 50766, 4),
(50769, 50765, 5),
(50769, 50764, 6),
(50769, 50763, 7),
 -- Righteous Vengeance
(53380, 53380, 1),
(53380, 53381, 2),
(53380, 53382, 3),
 -- Rime
(49188, 49188, 1),
(49188, 56822, 2),
(49188, 59057, 3),
 -- Rip
(1079, 1079, 1),
(1079, 9492, 2),
(1079, 9493, 3),
(1079, 9752, 4),
(1079, 9894, 5),
(1079, 9896, 6),
(1079, 27008, 7),
(1079, 49799, 8),
(1079, 49800, 9),
 -- Riptide
(61295, 61295, 1),
(61295, 61299, 2),
(61295, 61300, 3),
(61295, 61301, 4),
 -- Ritual of Refreshment
(43987, 43987, 1),
(43987, 58659, 2),
 -- Ritual of Souls
(29893, 29893, 1),
(29893, 58887, 2),
 -- Rockbiter Weapon
(8017, 8017, 1),
(8017, 8018, 2),
(8017, 8019, 3),
(8017, 10399, 4),
 -- Ruin
(17959, 17959, 1),
(17959, 59738, 2),
(17959, 59739, 3),
(17959, 59740, 4),
(17959, 59741, 5),
 -- Runic Power Mastery
(49455, 49455, 1),
(49455, 50147, 2),
 -- Rupture
(1943, 1943, 1),
(1943, 8639, 2),
(1943, 8640, 3),
(1943, 11273, 4),
(1943, 11274, 5),
(1943, 11275, 6),
(1943, 26867, 7),
(1943, 48671, 8),
(1943, 48672, 9),
 -- Ruthlessness
(14156, 14156, 1),
(14156, 14160, 2),
(14156, 14161, 3),
 -- Sacred Cleansing
(53551, 53551, 1),
(53551, 53552, 2),
(53551, 53553, 3),
 -- Sacred Duty
(31848, 31848, 1),
(31848, 31849, 2),
 -- Sacrifice
(7812, 7812, 1),
(7812, 19438, 2),
(7812, 19440, 3),
(7812, 19441, 4),
(7812, 19442, 5),
(7812, 19443, 6),
(7812, 27273, 7),
(7812, 47985, 8),
(7812, 47986, 9),
 -- Sanctified Light
(20359, 20359, 1),
(20359, 20360, 2),
(20359, 20361, 3),
 -- Sanctified Wrath
(53375, 53375, 1),
(53375, 53376, 2),
 -- Sanctity of Battle
(32043, 32043, 1),
(32043, 35396, 2),
(32043, 35397, 3),
 -- Sap
(6770, 6770, 1),
(6770, 2070, 2),
(6770, 11297, 3),
(6770, 51724, 4),
 -- Savage Combat
(58684, 58684, 1),
(58684, 58683, 2),
 -- Savage Combat
(51682, 51682, 1),
(51682, 58413, 2),
 -- Savage Fury
(16998, 16998, 1),
(16998, 16999, 2),
 -- Savage Strikes
(19159, 19159, 1),
(19159, 19160, 2),
 -- Scare Beast
(1513, 1513, 1),
(1513, 14326, 2),
(1513, 14327, 3),
 -- Scent of Blood
(49004, 49004, 1),
(49004, 49508, 2),
(49004, 49509, 3),
 -- Scorch
(1811, 1811, 1),
(1811, 8447, 2),
(1811, 8448, 3),
(1811, 8449, 4),
(1811, 10208, 5),
(1811, 10209, 6),
(1811, 10210, 7),
(1811, 27375, 8),
(1811, 27376, 9),
 -- Scorch
(2948, 2948, 1),
(2948, 8444, 2),
(2948, 8445, 3),
(2948, 8446, 4),
(2948, 10205, 5),
(2948, 10206, 6),
(2948, 10207, 7),
(2948, 27073, 8),
(2948, 27074, 9),
(2948, 42858, 10),
(2948, 42859, 11),
 -- Scorpid Poison
(24641, 24641, 1),
(24641, 24584, 2),
(24641, 24588, 3),
(24641, 24589, 4),
(24641, 27361, 5),
 -- Scorpid Poison
(24640, 24640, 1),
(24640, 24583, 2),
(24640, 24586, 3),
(24640, 24587, 4),
(24640, 27060, 5),
(24640, 55728, 6),
 -- Scourge Strike
(55090, 55090, 1),
(55090, 55265, 2),
(55090, 55270, 3),
(55090, 55271, 4),
 -- Seal Fate
(14186, 14186, 1),
(14186, 14190, 2),
(14186, 14193, 3),
(14186, 14194, 4),
(14186, 14195, 5),
 -- Seals of the Pure
(20224, 20224, 1),
(20224, 20225, 2),
(20224, 20330, 3),
(20224, 20331, 4),
(20224, 20332, 5),
 -- Searing Light
(14909, 14909, 1),
(14909, 15017, 2),
 -- Searing Pain
(5676, 5676, 1),
(5676, 17919, 2),
(5676, 17920, 3),
(5676, 17921, 4),
(5676, 17922, 5),
(5676, 17923, 6),
(5676, 27210, 7),
(5676, 30459, 8),
(5676, 47814, 9),
(5676, 47815, 10),
 -- Searing Totem
(2075, 2075, 1),
(2075, 38116, 2),
 -- Searing Totem
(3599, 3599, 1),
(3599, 6363, 2),
(3599, 6364, 3),
(3599, 6365, 4),
(3599, 10437, 5),
(3599, 10438, 6),
(3599, 25533, 7),
(3599, 58699, 8),
(3599, 58703, 9),
(3599, 58704, 10),
 -- Seed of Corruption
(43991, 43991, 1),
(43991, 47831, 2),
(43991, 47832, 3),
 -- Serendipity
(63730, 63730, 1),
(63730, 63733, 2),
(63730, 63737, 3),
 -- Serenity Dust
(50318, 50318, 1),
(50318, 52012, 2),
(50318, 52013, 3),
(50318, 52014, 4),
(50318, 52015, 5),
(50318, 52016, 6),
 -- Serious Wound
(5597, 5597, 1),
(5597, 5598, 2),
 -- Serpent Sting
(1978, 1978, 1),
(1978, 13549, 2),
(1978, 13550, 3),
(1978, 13551, 4),
(1978, 13552, 5),
(1978, 13553, 6),
(1978, 13554, 7),
(1978, 13555, 8),
(1978, 25295, 9),
(1978, 27016, 10),
(1978, 49000, 11),
(1978, 49001, 12),
 -- Serpent's Swiftness
(34466, 34466, 1),
(34466, 34467, 2),
(34466, 34468, 3),
(34466, 34469, 4),
(34466, 34470, 5),
 -- Serrated Blades
(14171, 14171, 1),
(14171, 14172, 2),
(14171, 14173, 3),
 -- Setup
(13983, 13983, 1),
(13983, 14070, 2),
(13983, 14071, 3),
 -- Shackle Undead
(9484, 9484, 1),
(9484, 9485, 2),
(9484, 10955, 3),
 -- Shadow Affinity
(15318, 15318, 1),
(15318, 15272, 2),
(15318, 15320, 3),
 -- Shadow and Flame
(30288, 30288, 1),
(30288, 30289, 2),
(30288, 30290, 3),
(30288, 30291, 4),
(30288, 30292, 5),
 -- Shadow Bite
(54049, 54049, 1),
(54049, 54050, 2),
(54049, 54051, 3),
(54049, 54052, 4),
(54049, 54053, 5),
 -- Shadow Bolt
(686, 686, 1),
(686, 695, 2),
(686, 705, 3),
(686, 1088, 4),
(686, 1106, 5),
(686, 7641, 6),
(686, 11659, 7),
(686, 11660, 8),
(686, 11661, 9),
(686, 25307, 10),
(686, 27209, 11),
(686, 47808, 12),
(686, 47809, 13),
 -- Shadow Embrace
(32385, 32385, 1),
(32385, 32387, 2),
(32385, 32392, 3),
(32385, 32393, 4),
(32385, 32394, 5),
 -- Shadow Focus
(15260, 15260, 1),
(15260, 15327, 2),
(15260, 15328, 3),
 -- Shadow Mastery
(18271, 18271, 1),
(18271, 18272, 2),
(18271, 18273, 3),
(18271, 18274, 4),
(18271, 18275, 5),
 -- Shadow Power
(33221, 33221, 1),
(33221, 33222, 2),
(33221, 33223, 3),
(33221, 33224, 4),
(33221, 33225, 5),
 -- Shadow Protection
(976, 976, 1),
(976, 10957, 2),
(976, 10958, 3),
(976, 25433, 4),
(976, 48169, 5),
 -- Shadow Reach
(17322, 17322, 1),
(17322, 17323, 2),
 -- Shadow Resistance Aura
(19876, 19876, 1),
(19876, 19895, 2),
(19876, 19896, 3),
(19876, 27151, 4),
(19876, 48943, 5),
 -- Shadow Ward
(6229, 6229, 1),
(6229, 11739, 2),
(6229, 11740, 3),
(6229, 28610, 4),
(6229, 47890, 5),
(6229, 47891, 6),
 -- Shadow Weaving
(15257, 15257, 1),
(15257, 15331, 2),
(15257, 15332, 3),
 -- Shadow Word: Death
(32379, 32379, 1),
(32379, 32996, 2),
(32379, 48157, 3),
(32379, 48158, 4),
 -- Shadow Word: Pain
(589, 589, 1),
(589, 594, 2),
(589, 970, 3),
(589, 992, 4),
(589, 2767, 5),
(589, 10892, 6),
(589, 10893, 7),
(589, 10894, 8),
(589, 25367, 9),
(589, 25368, 10),
(589, 48124, 11),
(589, 48125, 12),
 -- Shadowburn
(17877, 17877, 1),
(17877, 18867, 2),
(17877, 18868, 3),
(17877, 18869, 4),
(17877, 18870, 5),
(17877, 18871, 6),
(17877, 27263, 7),
(17877, 30546, 8),
(17877, 47826, 9),
(17877, 47827, 10),
 -- Shadowflame
(47897, 47897, 1),
(47897, 61290, 2),
 -- Shadowfury
(30283, 30283, 1),
(30283, 30413, 2),
(30283, 30414, 3),
(30283, 47846, 4),
(30283, 47847, 5),
 -- Shamanism
(62097, 62097, 1),
(62097, 62098, 2),
(62097, 62099, 3),
(62097, 62100, 4),
(62097, 62101, 5),
 -- Shark Attack
(62759, 62759, 1),
(62759, 62760, 2),
 -- Sharpened Claws
(16942, 16942, 1),
(16942, 16943, 2),
(16942, 16944, 3),
 -- Shatter
(11170, 11170, 1),
(11170, 12982, 2),
(11170, 12983, 3),
 -- Shattered Barrier
(44745, 44745, 1),
(44745, 54787, 2),
 -- Sheath of Light
(53501, 53501, 1),
(53501, 53502, 2),
(53501, 53503, 3),
 -- Shield Mastery
(29598, 29598, 1),
(29598, 29599, 2),
 -- Shield of Righteousness
(53600, 53600, 1),
(53600, 61411, 2),
 -- Shield of the Templar
(53709, 53709, 1),
(53709, 53710, 2),
(53709, 53711, 3),
 -- Shield Slam
(23922, 23922, 1),
(23922, 23923, 2),
(23922, 23924, 3),
(23922, 23925, 4),
(23922, 25258, 5),
(23922, 30356, 6),
(23922, 47487, 7),
(23922, 47488, 8),
 -- Shield Specialization
(12298, 12298, 1),
(12298, 12724, 2),
(12298, 12725, 3),
(12298, 12726, 4),
(12298, 12727, 5),
 -- Shield Specialization
(16253, 16253, 1),
(16253, 16298, 2),
 -- Shock
(2607, 2607, 1),
(2607, 2606, 2),
(2607, 2608, 3),
(2607, 2609, 4),
(2607, 2610, 5),
 -- Shred
(5221, 5221, 1),
(5221, 6800, 2),
(5221, 8992, 3),
(5221, 9829, 4),
(5221, 9830, 5),
(5221, 27001, 6),
(5221, 27002, 7),
(5221, 48571, 8),
(5221, 48572, 9),
 -- Shredding Attacks
(16966, 16966, 1),
(16966, 16968, 2),
 -- Silenced - Improved Counterspell
(18469, 18469, 1),
(18469, 55021, 2),
 -- Silent Hunter
(34472, 34472, 1),
(34472, 34473, 2),
(34472, 34474, 3),
 -- Silent Resolve
(14523, 14523, 1),
(14523, 14784, 2),
(14523, 14785, 3),
 -- Silverback
(62764, 62764, 1),
(62764, 62765, 2),
 -- Sinister Calling
(31216, 31216, 1),
(31216, 31217, 2),
(31216, 31218, 3),
(31216, 31219, 4),
(31216, 31220, 5),
 -- Sinister Strike
(1752, 1752, 1),
(1752, 1757, 2),
(1752, 1758, 3),
(1752, 1759, 4),
(1752, 1760, 5),
(1752, 8621, 6),
(1752, 11293, 7),
(1752, 11294, 8),
(1752, 26861, 9),
(1752, 26862, 10),
(1752, 48637, 11),
(1752, 48638, 12),
 -- Skinning
(8613, 8613, 1),
(8613, 8617, 2),
(8613, 8618, 3),
(8613, 10768, 4),
(8613, 32678, 5),
(8613, 50305, 6),
 -- Slam
(1464, 1464, 1),
(1464, 8820, 2),
(1464, 11604, 3),
(1464, 11605, 4),
(1464, 25241, 5),
(1464, 25242, 6),
(1464, 47474, 7),
(1464, 47475, 8),
 -- Slaughter from the Shadows
(51708, 51708, 1),
(51708, 51709, 2),
(51708, 51710, 3),
(51708, 51711, 4),
(51708, 51712, 5),
 -- Sleep
(700, 700, 1),
(700, 1090, 2),
 -- Sleight of Hand
(30892, 30892, 1),
(30892, 30893, 2),
 -- Slice and Dice
(5171, 5171, 1),
(5171, 6774, 2),
 -- Slow
(246, 246, 1),
(246, 6146, 2),
 -- Smack
(49966, 49966, 1),
(49966, 49967, 2),
(49966, 49968, 3),
(49966, 49969, 4),
(49966, 49970, 5),
(49966, 49971, 6),
(49966, 49972, 7),
(49966, 49973, 8),
(49966, 49974, 9),
(49966, 52475, 10),
(49966, 52476, 11),
 -- Smite
(585, 585, 1),
(585, 591, 2),
(585, 598, 3),
(585, 984, 4),
(585, 1004, 5),
(585, 6060, 6),
(585, 10933, 7),
(585, 10934, 8),
(585, 25363, 9),
(585, 25364, 10),
(585, 48122, 11),
(585, 48123, 12),
 -- Snatch
(50541, 50541, 1),
(50541, 53537, 2),
(50541, 53538, 3),
(50541, 53540, 4),
(50541, 53542, 5),
(50541, 53543, 6),
 -- Sniper Training
(53302, 53302, 1),
(53302, 53303, 2),
(53302, 53304, 3),
 -- Sonic Blast
(50519, 50519, 1),
(50519, 53564, 2),
(50519, 53565, 3),
(50519, 53566, 4),
(50519, 53567, 5),
(50519, 53568, 6),
 -- Soothe Animal
(2908, 2908, 1),
(2908, 8955, 2),
(2908, 9901, 3),
(2908, 26995, 4),
 -- Soothing Kiss
(6360, 6360, 1),
(6360, 7813, 2),
(6360, 11784, 3),
(6360, 11785, 4),
(6360, 27275, 5),
 -- Soul Fire
(6353, 6353, 1),
(6353, 17924, 2),
(6353, 27211, 3),
(6353, 30545, 4),
(6353, 47824, 5),
(6353, 47825, 6),
 -- Soul Leech
(30293, 30293, 1),
(30293, 30295, 2),
(30293, 30296, 3),
 -- Soul Siphon
(17804, 17804, 1),
(17804, 17805, 2),
 -- Spark of Nature
(48435, 48435, 1),
(48435, 48436, 2),
(48435, 48437, 3),
 -- Spell Deflection
(49145, 49145, 1),
(49145, 49495, 2),
(49145, 49497, 3),
 -- Spell Impact
(11242, 11242, 1),
(11242, 12467, 2),
(11242, 12469, 3),
 -- Spell Lock
(19244, 19244, 1),
(19244, 19647, 2),
 -- Spell Power
(35578, 35578, 1),
(35578, 35581, 2),
 -- Spell Warding
(27900, 27900, 1),
(27900, 27901, 2),
(27900, 27902, 3),
(27900, 27903, 4),
(27900, 27904, 5),
 -- Spider's Bite
(53203, 53203, 1),
(53203, 53204, 2),
(53203, 53205, 3),
 -- Spiked Collar
(53182, 53182, 1),
(53182, 53183, 2),
(53182, 53184, 3),
 -- Spirit
(8112, 8112, 1),
(8112, 8113, 2),
(8112, 8114, 3),
(8112, 12177, 4),
(8112, 33080, 5),
(8112, 43197, 6),
(8112, 48103, 7),
(8112, 48104, 8),
 -- Spirit Strike
(61193, 61193, 1),
(61193, 61194, 2),
(61193, 61195, 3),
(61193, 61196, 4),
(61193, 61197, 5),
(61193, 61198, 6),
 -- Spirit Tap
(15270, 15270, 1),
(15270, 15335, 2),
(15270, 15336, 3),
 -- Spiritual Attunement
(31785, 31785, 1),
(31785, 33776, 2),
 -- Spiritual Focus
(20205, 20205, 1),
(20205, 20206, 2),
(20205, 20207, 3),
(20205, 20209, 4),
(20205, 20208, 5),
 -- Spiritual Guidance
(14901, 14901, 1),
(14901, 15028, 2),
(14901, 15029, 3),
(14901, 15030, 4),
(14901, 15031, 5),
 -- Spiritual Healing
(14898, 14898, 1),
(14898, 15349, 2),
(14898, 15354, 3),
(14898, 15355, 4),
(14898, 15356, 5),
 -- Spore Cloud
(50274, 50274, 1),
(50274, 53593, 2),
(50274, 53594, 3),
(50274, 53596, 4),
(50274, 53597, 5),
(50274, 53598, 6),
 -- Sprint
(2983, 2983, 1),
(2983, 8696, 2),
(2983, 11305, 3),
 -- Stampede
(57386, 57386, 1),
(57386, 57389, 2),
(57386, 57390, 3),
(57386, 57391, 4),
(57386, 57392, 5),
(57386, 57393, 6),
 -- Starfall
(48505, 48505, 1),
(48505, 53199, 2),
(48505, 53200, 3),
(48505, 53201, 4),
 -- Starfire
(2912, 2912, 1),
(2912, 8949, 2),
(2912, 8950, 3),
(2912, 8951, 4),
(2912, 9875, 5),
(2912, 9876, 6),
(2912, 25298, 7),
(2912, 26986, 8),
(2912, 48464, 9),
(2912, 48465, 10),
 -- Starlight Wrath
(16814, 16814, 1),
(16814, 16815, 2),
(16814, 16816, 3),
(16814, 16817, 4),
(16814, 16818, 5),
 -- Static Shock
(51525, 51525, 1),
(51525, 51526, 2),
(51525, 51527, 3),
 -- Steady Shot
(56641, 56641, 1),
(56641, 34120, 2),
(56641, 49051, 3),
(56641, 49052, 4),
 -- Sting
(56626, 56626, 1),
(56626, 56627, 2),
(56626, 56628, 3),
(56626, 56629, 4),
(56626, 56630, 5),
(56626, 56631, 6),
 -- Stoicism
(31844, 31844, 1),
(31844, 31845, 2),
(31844, 53519, 3),
 -- Stoneclaw Totem
(5730, 5730, 1),
(5730, 6390, 2),
(5730, 6391, 3),
(5730, 6392, 4),
(5730, 10427, 5),
(5730, 10428, 6),
(5730, 25525, 7),
(5730, 58580, 8),
(5730, 58581, 9),
(5730, 58582, 10),
 -- Stoneclaw Totem Passive
(5728, 5728, 1),
(5728, 6397, 2),
(5728, 6398, 3),
(5728, 6399, 4),
(5728, 10425, 5),
(5728, 10426, 6),
(5728, 25513, 7),
(5728, 58583, 8),
(5728, 58584, 9),
(5728, 58585, 10),
 -- Stoneskin Totem
(8073, 8073, 1),
(8073, 38115, 2),
 -- Stoneskin Totem
(8071, 8071, 1),
(8071, 8154, 2),
(8071, 8155, 3),
(8071, 10406, 4),
(8071, 10407, 5),
(8071, 10408, 6),
(8071, 25508, 7),
(8071, 25509, 8),
(8071, 58751, 9),
(8071, 58753, 10),
 -- Storm, Earth and Fire
(51483, 51483, 1),
(51483, 51485, 2),
(51483, 51486, 3),
 -- Strength
(8118, 8118, 1),
(8118, 8119, 2),
(8118, 8120, 3),
(8118, 12179, 4),
(8118, 33082, 5),
(8118, 43199, 6),
(8118, 58448, 7),
(8118, 58449, 8),
 -- Strength of Arms
(46865, 46865, 1),
(46865, 46866, 2),
 -- Strength of Earth Totem
(8075, 8075, 1),
(8075, 8160, 2),
(8075, 8161, 3),
(8075, 10442, 4),
(8075, 25361, 5),
(8075, 25528, 6),
(8075, 57622, 7),
(8075, 58643, 8),
 -- Student of the Mind
(44397, 44397, 1),
(44397, 44398, 2),
(44397, 44399, 3),
 -- Stunning Blast
(5648, 5648, 1),
(5648, 5649, 2),
 -- Stunning Blow
(5726, 5726, 1),
(5726, 5727, 2),
 -- Subtlety
(17118, 17118, 1),
(17118, 17119, 2),
(17118, 17120, 3),
 -- Subversion
(48997, 48997, 1),
(48997, 49490, 2),
(48997, 49491, 3),
 -- Sudden Death
(29723, 29723, 1),
(29723, 29725, 2),
(29723, 29724, 3),
 -- Sudden Doom
(49018, 49018, 1),
(49018, 49529, 2),
(49018, 49530, 3),
 -- Suffering
(17735, 17735, 1),
(17735, 17750, 2),
(17735, 17751, 3),
(17735, 17752, 4),
(17735, 27271, 5),
(17735, 33701, 6),
(17735, 47989, 7),
(17735, 47990, 8),
 -- Suppression
(18174, 18174, 1),
(18174, 18175, 2),
(18174, 18176, 3),
 -- Surefooted
(19290, 19290, 1),
(19290, 19294, 2),
(19290, 24283, 3),
 -- Survival Instincts
(34494, 34494, 1),
(34494, 34496, 2),
 -- Survival of the Fittest
(33853, 33853, 1),
(33853, 33855, 2),
(33853, 33856, 3),
 -- Survival Tactics
(19286, 19286, 1),
(19286, 19287, 2),
 -- Survivalist
(19255, 19255, 1),
(19255, 19256, 2),
(19255, 19257, 3),
(19255, 19258, 4),
(19255, 19259, 5),
 -- Swift Retribution
(53379, 53379, 1),
(53379, 53484, 2),
(53379, 53648, 3),
 -- Swipe
(50256, 50256, 1),
(50256, 53526, 2),
(50256, 53528, 3),
(50256, 53529, 4),
(50256, 53532, 5),
(50256, 53533, 6),
 -- Swipe (Bear)
(779, 779, 1),
(779, 780, 2),
(779, 769, 3),
(779, 9754, 4),
(779, 9908, 5),
(779, 26997, 6),
(779, 48561, 7),
(779, 48562, 8),
 -- Sword and Board
(46951, 46951, 1),
(46951, 46952, 2),
(46951, 46953, 3),
 -- Sword Specialization
(12281, 12281, 1),
(12281, 12812, 2),
(12281, 12813, 3),
(12281, 12814, 4),
(12281, 12815, 5),
 -- T.N.T.
(56333, 56333, 1),
(56333, 56336, 2),
(56333, 56337, 3),
 -- Tactical Mastery
(12295, 12295, 1),
(12295, 12676, 2),
(12295, 12677, 3),
 -- Tailoring
(3908, 3908, 1),
(3908, 3909, 2),
(3908, 3910, 3),
(3908, 12180, 4),
(3908, 26790, 5),
(3908, 51309, 6),
 -- Taste for Blood
(56636, 56636, 1),
(56636, 56637, 2),
(56636, 56638, 3),
 -- Tendon Rip
(50271, 50271, 1),
(50271, 53571, 2),
(50271, 53572, 3),
(50271, 53573, 4),
(50271, 53574, 5),
(50271, 53575, 6),
 -- Test of Faith
(47558, 47558, 1),
(47558, 47559, 2),
(47558, 47560, 3),
 -- Thick Hide
(19609, 19609, 1),
(19609, 19610, 2),
(19609, 19612, 3),
 -- Thick Hide
(16929, 16929, 1),
(16929, 16930, 2),
(16929, 16931, 3),
 -- Thorns
(467, 467, 1),
(467, 782, 2),
(467, 1075, 3),
(467, 8914, 4),
(467, 9756, 5),
(467, 9910, 6),
(467, 26992, 7),
(467, 53307, 8),
 -- Threat of Thassarian
(65661, 65661, 1),
(65661, 66191, 2),
(65661, 66192, 3),
 -- Thrill of the Hunt
(34497, 34497, 1),
(34497, 34498, 2),
(34497, 34499, 3),
 -- Throwing Specialization
(5952, 5952, 1),
(5952, 51679, 2),
 -- Thunder Clap
(6343, 6343, 1),
(6343, 8198, 2),
(6343, 8204, 3),
(6343, 8205, 4),
(6343, 11580, 5),
(6343, 11581, 6),
(6343, 25264, 7),
(6343, 47501, 8),
(6343, 47502, 9),
 -- Thundering Strikes
(16255, 16255, 1),
(16255, 16302, 2),
(16255, 16303, 3),
(16255, 16304, 4),
(16255, 16305, 5),
 -- Thunderstorm
(51490, 51490, 1),
(51490, 59156, 2),
(51490, 59158, 3),
(51490, 59159, 4),
 -- Tidal Focus
(16179, 16179, 1),
(16179, 16214, 2),
(16179, 16215, 3),
(16179, 16216, 4),
(16179, 16217, 5),
 -- Tidal Mastery
(16194, 16194, 1),
(16194, 16218, 2),
(16194, 16219, 3),
(16194, 16220, 4),
(16194, 16221, 5),
 -- Tidal Waves
(51562, 51562, 1),
(51562, 51563, 2),
(51562, 51564, 3),
(51562, 51565, 4),
(51562, 51566, 5),
 -- Tiger's Fury
(5217, 5217, 1),
(5217, 6793, 2),
(5217, 9845, 3),
(5217, 9846, 4),
(5217, 50212, 5),
(5217, 50213, 6),
 -- Torment
(3716, 3716, 1),
(3716, 7809, 2),
(3716, 7810, 3),
(3716, 7811, 4),
(3716, 11774, 5),
(3716, 11775, 6),
(3716, 27270, 7),
(3716, 47984, 8),
 -- Torment the Weak
(29447, 29447, 1),
(29447, 55339, 2),
(29447, 55340, 3),
 -- Torture
(47263, 47263, 1),
(47263, 47264, 2),
(47263, 47265, 3),
 -- Totem of Wrath
(30706, 30706, 1),
(30706, 57720, 2),
(30706, 57721, 3),
(30706, 57722, 4),
 -- Totemic Focus
(16173, 16173, 1),
(16173, 16222, 2),
(16173, 16223, 3),
(16173, 16224, 4),
(16173, 16225, 5),
 -- Touched by the Light
(53590, 53590, 1),
(53590, 53591, 2),
(53590, 53592, 3),
 -- Toughness
(53120, 53120, 1),
(53120, 53121, 2),
(53120, 53122, 3),
(53120, 53123, 4),
(53120, 53124, 5),
(53120, 53040, 6),
 -- Toughness
(12299, 12299, 1),
(12299, 12761, 2),
(12299, 12762, 3),
(12299, 12763, 4),
(12299, 12764, 5),
 -- Toughness
(20143, 20143, 1),
(20143, 20144, 2),
(20143, 20145, 3),
(20143, 20146, 4),
(20143, 20147, 5),
 -- Toughness
(16252, 16252, 1),
(16252, 16306, 2),
(16252, 16307, 3),
(16252, 16308, 4),
(16252, 16309, 5),
 -- Toughness
(49042, 49042, 1),
(49042, 49786, 2),
(49042, 49787, 3),
(49042, 49788, 4),
(49042, 49789, 5),
 -- Tranquil Spirit
(24968, 24968, 1),
(24968, 24969, 2),
(24968, 24970, 3),
(24968, 24971, 4),
(24968, 24972, 5),
 -- Trap Mastery
(19376, 19376, 1),
(19376, 63457, 2),
(19376, 63458, 3),
 -- Tundra Stalker
(49202, 49202, 1),
(49202, 50127, 2),
(49202, 50128, 3),
(49202, 50129, 4),
(49202, 50130, 5),
 -- Turn the Tables
(51627, 51627, 1),
(51627, 51628, 2),
(51627, 51629, 3),
 -- Twin Disciplines
(47586, 47586, 1),
(47586, 47587, 2),
(47586, 47588, 3),
(47586, 52802, 4),
(47586, 52803, 5),
 -- Twisted Faith
(47573, 47573, 1),
(47573, 47577, 2),
(47573, 47578, 3),
(47573, 51166, 4),
(47573, 51167, 5),
 -- Two-Handed Weapon Specialization
(12163, 12163, 1),
(12163, 12711, 2),
(12163, 12712, 3),
 -- Two-Handed Weapon Specialization
(20111, 20111, 1),
(20111, 20112, 2),
(20111, 20113, 3),
 -- Two-Handed Weapon Specialization
(55107, 55107, 1),
(55107, 55108, 2),
 -- Unbreakable Will
(14522, 14522, 1),
(14522, 14788, 2),
(14522, 14789, 3),
(14522, 14790, 4),
(14522, 14791, 5),
 -- Unending Fury
(56927, 56927, 1),
(56927, 56929, 2),
(56927, 56930, 3),
(56927, 56931, 4),
(56927, 56932, 5),
 -- Unholy Command
(49588, 49588, 1),
(49588, 49589, 2),
 -- Unholy Power
(18769, 18769, 1),
(18769, 18770, 2),
(18769, 18771, 3),
(18769, 18772, 4),
(18769, 18773, 5),
 -- Unleashed Fury
(19616, 19616, 1),
(19616, 19617, 2),
(19616, 19618, 3),
(19616, 19619, 4),
(19616, 19620, 5),
 -- Unrelenting Assault
(46859, 46859, 1),
(46859, 46860, 2),
 -- Unrelenting Storm
(30664, 30664, 1),
(30664, 30665, 2),
(30664, 30666, 3),
 -- Unstable Affliction
(30108, 30108, 1),
(30108, 30404, 2),
(30108, 30405, 3),
(30108, 47841, 4),
(30108, 47843, 5),
 -- Unyielding Faith
(9453, 9453, 1),
(9453, 25836, 2),
 -- Vampiric Touch
(34914, 34914, 1),
(34914, 34916, 2),
(34914, 34917, 3),
(34914, 48159, 4),
(34914, 48160, 5),
 -- Vanish
(1856, 1856, 1),
(1856, 1857, 2),
(1856, 26889, 3),
 -- Veiled Shadows
(15274, 15274, 1),
(15274, 15311, 2),
 -- Vendetta
(49015, 49015, 1),
(49015, 50154, 2),
(49015, 55136, 3),
 -- Vengeance
(20049, 20049, 1),
(20049, 20056, 2),
(20049, 20057, 3),
 -- Vengeance
(16909, 16909, 1),
(16909, 16910, 2),
(16909, 16911, 3),
(16909, 16912, 4),
(16909, 16913, 5),
 -- Venom Web Spray
(54706, 54706, 1),
(54706, 55505, 2),
(54706, 55506, 3),
(54706, 55507, 4),
(54706, 55508, 5),
(54706, 55509, 6),
 -- Veteran of the Third War
(49006, 49006, 1),
(49006, 49526, 2),
(49006, 50029, 3),
 -- Vicious Strikes
(51745, 51745, 1),
(51745, 51746, 2),
 -- Vile Poisons
(16513, 16513, 1),
(16513, 16514, 2),
(16513, 16515, 3),
 -- Virulence
(48962, 48962, 1),
(48962, 49567, 2),
(48962, 49568, 3),
 -- Vitality
(31122, 31122, 1),
(31122, 31123, 2),
(31122, 61329, 3),
 -- Vitality
(29140, 29140, 1),
(29140, 29143, 2),
(29140, 29144, 3),
 -- Wand Specialization
(14524, 14524, 1),
(14524, 14525, 2),
(14524, 14526, 3),
(14524, 14527, 4),
(14524, 14528, 5),
 -- Wandering Plague
(49217, 49217, 1),
(49217, 49654, 2),
(49217, 49655, 3),
 -- Water Shield
(52127, 52127, 1),
(52127, 52129, 2),
(52127, 52131, 3),
(52127, 52134, 4),
(52127, 52136, 5),
(52127, 52138, 6),
(52127, 24398, 7),
(52127, 33736, 8),
(52127, 57960, 9),
 -- Waylay
(51692, 51692, 1),
(51692, 51696, 2),
 -- Weapon Expertise
(30919, 30919, 1),
(30919, 30920, 2),
 -- Weapon Mastery
(20504, 20504, 1),
(20504, 20505, 2),
 -- Weapon Mastery
(29082, 29082, 1),
(29082, 29084, 2),
(29082, 29086, 3),
 -- Wild Growth
(48438, 48438, 1),
(48438, 53248, 2),
(48438, 53249, 3),
(48438, 53251, 4),
 -- Wild Hunt
(62758, 62758, 1),
(62758, 62762, 2),
 -- Wild Quiver
(53215, 53215, 1),
(53215, 53216, 2),
(53215, 53217, 3),
 -- Windfury Weapon
(8232, 8232, 1),
(8232, 8235, 2),
(8232, 10486, 3),
(8232, 16362, 4),
(8232, 25505, 5),
(8232, 58801, 6),
(8232, 58803, 7),
(8232, 58804, 8),
 -- Winter's Chill
(11180, 11180, 1),
(11180, 28592, 2),
(11180, 28593, 3),
 -- World in Flames
(11108, 11108, 1),
(11108, 12349, 2),
(11108, 12350, 3),
 -- Wrath
(5176, 5176, 1),
(5176, 5177, 2),
(5176, 5178, 3),
(5176, 5179, 4),
(5176, 5180, 5),
(5176, 6780, 6),
(5176, 8905, 7),
(5176, 9912, 8),
(5176, 26984, 9),
(5176, 26985, 10),
(5176, 48459, 11),
(5176, 48461, 12),
 -- Wrath of Cenarius
(33603, 33603, 1),
(33603, 33604, 2),
(33603, 33605, 3),
(33603, 33606, 4),
(33603, 33607, 5),
 -- Wrecking Crew
(46867, 46867, 1),
(46867, 56611, 2),
(46867, 56612, 3),
(46867, 56613, 4),
(46867, 56614, 5),
 -- Arcane Brilliance
(23030, 23030, 1),
(23030, 27394, 2),
 -- Arcane Explosion
(1467, 1467, 1),
(1467, 8440, 2),
(1467, 8441, 3),
(1467, 8442, 4),
(1467, 10203, 5),
(1467, 10204, 6),
(1467, 27380, 7),
(1467, 27381, 8),
 -- Arcane Intellect
(1472, 1472, 1),
(1472, 1473, 2),
(1472, 1474, 3),
(1472, 1475, 4),
(1472, 10158, 5),
(1472, 27393, 6),
(1472, 42999, 7),
 -- Arcane Missiles
(5143, 5143, 1),
(5143, 5144, 2),
(5143, 5145, 3),
(5143, 8416, 4),
(5143, 8417, 5),
(5143, 10211, 6),
(5143, 10212, 7),
(5143, 25345, 8),
(5143, 27075, 9),
(5143, 38699, 10),
(5143, 38704, 11),
(5143, 42843, 12),
(5143, 42846, 13),
 -- Blessed Recovery
(27811, 27811, 1),
(27811, 27815, 2),
(27811, 27816, 3),
 -- Blessed Recovery
(27813, 27813, 1),
(27813, 27817, 2),
(27813, 27818, 3),
 -- Blessed Resilience
(33142, 33142, 1),
(33142, 33145, 2),
(33142, 33146, 3),
 -- Blizzard
(1196, 1196, 1),
(1196, 6142, 2),
(1196, 8428, 3),
(1196, 10188, 4),
(1196, 10189, 5),
(1196, 10190, 6),
(1196, 27384, 7),
 -- Blizzard
(42208, 42208, 1),
(42208, 42209, 2),
(42208, 42210, 3),
(42208, 42211, 4),
(42208, 42212, 5),
(42208, 42213, 6),
(42208, 42198, 7),
(42208, 42937, 8),
(42208, 42938, 9),
 -- Blizzard
(10, 10, 1),
(10, 6141, 2),
(10, 8427, 3),
(10, 10185, 4),
(10, 10186, 5),
(10, 10187, 6),
(10, 27085, 7),
(10, 42939, 8),
(10, 42940, 9),
 -- Chain Lightning
(421, 421, 1),
(421, 930, 2),
(421, 2860, 3),
(421, 10605, 4),
(421, 25439, 5),
(421, 25442, 6),
(421, 49270, 7),
(421, 49271, 8),
 -- Chain Lightning
(45297, 45297, 1),
(45297, 45298, 2),
(45297, 45299, 3),
(45297, 45300, 4),
(45297, 45301, 5),
(45297, 45302, 6),
(45297, 49268, 7),
(45297, 49269, 8),
 -- Charge
(7370, 7370, 1),
(7370, 26184, 2),
(7370, 26185, 3),
(7370, 26186, 4),
(7370, 26202, 5),
(7370, 28343, 6),
 -- Consume Shadows
(17776, 17776, 1),
(17776, 17855, 2),
(17776, 17856, 3),
(17776, 17857, 4),
(17776, 17859, 5),
(17776, 17860, 6),
 -- Consume Shadows
(20387, 20387, 1),
(20387, 20388, 2),
(20387, 20389, 3),
(20387, 20390, 4),
(20387, 20391, 5),
(20387, 20392, 6),
(20387, 27491, 7),
(20387, 48003, 8),
(20387, 48004, 9),
 -- Cower
(1747, 1747, 1),
(1747, 1748, 2),
(1747, 1749, 3),
(1747, 1750, 4),
(1747, 1751, 5),
(1747, 16698, 6),
(1747, 27346, 7),
 -- Echoes of Lordaeron
(6966, 6966, 1),
(6966, 30880, 2),
(6966, 30683, 3),
(6966, 30682, 4),
(6966, 29520, 5),
 -- Echoes of Lordaeron
(6964, 6964, 1),
(6964, 11413, 2),
(6964, 11414, 3),
(6964, 11415, 4),
(6964, 1386, 5),
 -- Eye for an Eye
(9799, 9799, 1),
(9799, 25988, 2),
 -- Fire Nova
(1535, 1535, 1),
(1535, 8498, 2),
(1535, 8499, 3),
(1535, 11314, 4),
(1535, 11315, 5),
(1535, 25546, 6),
(1535, 25547, 7),
(1535, 61649, 8),
(1535, 61657, 9),
 -- Fire Nova
(8349, 8349, 1),
(8349, 8502, 2),
(8349, 8503, 3),
(8349, 11306, 4),
(8349, 11307, 5),
(8349, 25535, 6),
(8349, 25537, 7),
(8349, 61650, 8),
(8349, 61654, 9),
 -- Fire Protection
(7230, 7230, 1),
(7230, 7231, 2),
(7230, 7232, 3),
(7230, 7233, 4),
(7230, 7234, 5),
 -- Fire Resistance
(24440, 24440, 1),
(24440, 24441, 2),
(24440, 24463, 3),
(24440, 24464, 4),
(24440, 27351, 5),
 -- Fire Resistance
(8185, 8185, 1),
(8185, 10534, 2),
(8185, 10535, 3),
(8185, 25562, 4),
(8185, 58738, 5),
(8185, 58740, 6),
 -- Fire Shield
(2949, 2949, 1),
(2949, 8318, 2),
(2949, 8319, 3),
(2949, 11772, 4),
(2949, 11773, 5),
(2949, 27486, 6),
 -- Fire Shield
(20322, 20322, 1),
(20322, 20323, 2),
(20322, 20324, 3),
(20322, 20326, 4),
(20322, 20327, 5),
(20322, 27489, 6),
(20322, 47998, 7),
 -- Flameblade
(7829, 7829, 1),
(7829, 7874, 2),
(7829, 7875, 3),
 -- Flameblade
(7806, 7806, 1),
(7806, 7807, 2),
(7806, 7808, 3),
 -- Flurry
(12319, 12319, 1),
(12319, 12971, 2),
(12319, 12972, 3),
(12319, 12973, 4),
(12319, 12974, 5),
 -- Flurry
(12966, 12966, 1),
(12966, 12967, 2),
(12966, 12968, 3),
(12966, 12969, 4),
(12966, 12970, 5),
 -- Focused Will
(45234, 45234, 1),
(45234, 45243, 2),
(45234, 45244, 3),
 -- Focused Will
(45237, 45237, 1),
(45237, 45241, 2),
(45237, 45242, 3),
 -- Frost Nova
(1194, 1194, 1),
(1194, 1225, 2),
(1194, 6132, 3),
(1194, 10231, 4),
(1194, 27387, 5),
 -- Frost Protection
(7240, 7240, 1),
(7240, 7236, 2),
(7240, 7238, 3),
(7240, 7237, 4),
(7240, 7239, 5),
 -- Frost Resistance
(24475, 24475, 1),
(24475, 24476, 2),
(24475, 24477, 3),
(24475, 24478, 4),
(24475, 27352, 5),
 -- Frost Resistance
(8182, 8182, 1),
(8182, 10476, 2),
(8182, 10477, 3),
(8182, 25559, 4),
(8182, 58742, 5),
(8182, 58744, 6),
 -- Frostbrand Attack
(8034, 8034, 1),
(8034, 8037, 2),
(8034, 10458, 3),
(8034, 16352, 4),
(8034, 16353, 5),
(8034, 25501, 6),
(8034, 58797, 7),
(8034, 58798, 8),
(8034, 58799, 9),
 -- Healing Stream
(5672, 5672, 1),
(5672, 6371, 2),
(5672, 6372, 3),
(5672, 10460, 4),
(5672, 10461, 5),
(5672, 25566, 6),
(5672, 58763, 7),
(5672, 58764, 8),
(5672, 58765, 9),
 -- Holy Nova
(15237, 15237, 1),
(15237, 15430, 2),
(15237, 15431, 3),
(15237, 27799, 4),
(15237, 27800, 5),
(15237, 27801, 6),
(15237, 25331, 7),
(15237, 48077, 8),
(15237, 48078, 9),
 -- Holy Nova
(23455, 23455, 1),
(23455, 23458, 2),
(23455, 23459, 3),
(23455, 27803, 4),
(23455, 27804, 5),
(23455, 27805, 6),
(23455, 25329, 7),
(23455, 48075, 8),
(23455, 48076, 9),
 -- Holy Protection
(7245, 7245, 1),
(7245, 7246, 2),
(7245, 7247, 3),
(7245, 7248, 4),
(7245, 7249, 5),
(7245, 17545, 6),
 -- Holy Shock
(20473, 20473, 1),
(20473, 20929, 2),
(20473, 20930, 3),
(20473, 27174, 4),
(20473, 33072, 5),
(20473, 48824, 6),
(20473, 48825, 7),
 -- Holy Shock
(25912, 25912, 1),
(25912, 25911, 2),
(25912, 25902, 3),
(25912, 27176, 4),
(25912, 33073, 5),
(25912, 48822, 6),
(25912, 48823, 7),
 -- Holy Shock
(25914, 25914, 1),
(25914, 25913, 2),
(25914, 25903, 3),
(25914, 27175, 4),
(25914, 33074, 5),
(25914, 48820, 6),
(25914, 48821, 7),
 -- Hurricane
(16914, 16914, 1),
(16914, 17401, 2),
(16914, 17402, 3),
(16914, 27012, 4),
(16914, 48467, 5),
 -- Hurricane
(42231, 42231, 1),
(42231, 42232, 2),
(42231, 42233, 3),
(42231, 42230, 4),
(42231, 48466, 5),
 -- Immolation Trap
(13795, 13795, 1),
(13795, 14302, 2),
(13795, 14303, 3),
(13795, 14304, 4),
(13795, 14305, 5),
(13795, 27023, 6),
(13795, 49055, 7),
(13795, 49056, 8),
 -- Impact
(11103, 11103, 1),
(11103, 12357, 2),
(11103, 12358, 3),
 -- Improved Mend Pet
(19572, 19572, 1),
(19572, 19573, 2),
 -- Infusion of Light
(53569, 53569, 1),
(53569, 53576, 2),
 -- Initiative
(13976, 13976, 1),
(13976, 13979, 2),
(13976, 13980, 3),
 -- Intercept
(30154, 30154, 1),
(30154, 30199, 2),
(30154, 30200, 3),
 -- Intercept
(30153, 30153, 1),
(30153, 30195, 2),
(30153, 30197, 3),
(30153, 47995, 4),
 -- Intercept
(30151, 30151, 1),
(30151, 30194, 2),
(30151, 30198, 3),
(30151, 47996, 4),
 -- Lash of Pain
(7876, 7876, 1),
(7876, 7877, 2),
(7876, 7878, 3),
(7876, 11781, 4),
(7876, 11782, 5),
(7876, 11783, 6),
 -- Lay on Hands
(20233, 20233, 1),
(20233, 20236, 2),
 -- Lay on Hands
(17233, 17233, 1),
(17233, 9257, 2),
 -- Lightning Bolt
(403, 403, 1),
(403, 529, 2),
(403, 548, 3),
(403, 915, 4),
(403, 943, 5),
(403, 6041, 6),
(403, 10391, 7),
(403, 10392, 8),
(403, 15207, 9),
(403, 15208, 10),
(403, 25448, 11),
(403, 25449, 12),
(403, 49237, 13),
(403, 49238, 14),
 -- Lightning Bolt
(45284, 45284, 1),
(45284, 45286, 2),
(45284, 45287, 3),
(45284, 45288, 4),
(45284, 45289, 5),
(45284, 45290, 6),
(45284, 45291, 7),
(45284, 45292, 8),
(45284, 45293, 9),
(45284, 45294, 10),
(45284, 45295, 11),
(45284, 45296, 12),
(45284, 49239, 13),
(45284, 49240, 14),
 -- Lightning Shield
(324, 324, 1),
(324, 325, 2),
(324, 905, 3),
(324, 945, 4),
(324, 8134, 5),
(324, 10431, 6),
(324, 10432, 7),
(324, 25469, 8),
(324, 25472, 9),
(324, 49280, 10),
(324, 49281, 11),
 -- Lightning Shield
(26364, 26364, 1),
(26364, 26365, 2),
(26364, 26366, 3),
(26364, 26367, 4),
(26364, 26369, 5),
(26364, 26370, 6),
(26364, 26363, 7),
(26364, 26371, 8),
(26364, 26372, 9),
(26364, 49278, 10),
(26364, 49279, 11),
 -- Living Bomb
(44457, 44457, 1),
(44457, 55359, 2),
(44457, 55360, 3),
 -- Living Bomb
(44461, 44461, 1),
(44461, 55361, 2),
(44461, 55362, 3),
 -- Mind Sear
(48045, 48045, 1),
(48045, 53023, 2),
 -- Mind Sear
(49821, 49821, 1),
(49821, 53022, 2),
 -- Molten Armor
(34913, 34913, 1),
(34913, 43043, 2),
(34913, 43044, 3),
 -- Molten Armor
(30482, 30482, 1),
(30482, 43045, 2),
(30482, 43046, 3),
 -- Nature Protection
(7250, 7250, 1),
(7250, 7251, 2),
(7250, 7252, 3),
(7250, 7253, 4),
(7250, 7254, 5),
 -- Nature Resistance
(24494, 24494, 1),
(24494, 24511, 2),
(24494, 24512, 3),
(24494, 24513, 4),
(24494, 27354, 5),
 -- Nature Resistance
(10596, 10596, 1),
(10596, 10598, 2),
(10596, 10599, 3),
(10596, 25573, 4),
(10596, 58748, 5),
(10596, 58750, 6),
 -- On a Pale Horse
(49146, 49146, 1),
(49146, 51267, 2),
 -- Penance
(47540, 47540, 1),
(47540, 53005, 2),
(47540, 53006, 3),
(47540, 53007, 4),
 -- Penance
(47750, 47750, 1),
(47750, 52983, 2),
(47750, 52984, 3),
(47750, 52985, 4),
 -- Penance
(47666, 47666, 1),
(47666, 52998, 2),
(47666, 52999, 3),
(47666, 53000, 4),
 -- Plague Strike
(59133, 59133, 1),
(59133, 66988, 2),
(59133, 66989, 3),
(59133, 66990, 4),
(59133, 66991, 5),
(59133, 66992, 6),
 -- Prowl
(24451, 24451, 1),
(24451, 24454, 2),
(24451, 24455, 3),
 -- Rain of Fire
(42223, 42223, 1),
(42223, 42224, 2),
(42223, 42225, 3),
(42223, 42226, 4),
(42223, 42218, 5),
(42223, 47817, 6),
(42223, 47818, 7),
 -- Rain of Fire
(5740, 5740, 1),
(5740, 6219, 2),
(5740, 11677, 3),
(5740, 11678, 4),
(5740, 27212, 5),
(5740, 47819, 6),
(5740, 47820, 7),
 -- Sacrifice
(7885, 7885, 1),
(7885, 19439, 2),
(7885, 19444, 3),
(7885, 19445, 4),
(7885, 19446, 5),
(7885, 19447, 6),
 -- Sacrifice
(20381, 20381, 1),
(20381, 20382, 2),
(20381, 20383, 3),
(20381, 20384, 4),
(20381, 20385, 5),
(20381, 20386, 6),
(20381, 27492, 7),
(20381, 48001, 8),
(20381, 48002, 9),
 -- Safeguard
(46945, 46945, 1),
(46945, 46949, 2),
 -- Safeguard
(46946, 46946, 1),
(46946, 46947, 2),
 -- Seed of Corruption
(27285, 27285, 1),
(27285, 47833, 2),
(27285, 47834, 3),
 -- Seed of Corruption
(27243, 27243, 1),
(27243, 47835, 2),
(27243, 47836, 3),
 -- Shadow Protection
(7235, 7235, 1),
(7235, 7241, 2),
(7235, 7242, 3),
(7235, 7243, 4),
(7235, 7244, 5),
 -- Shadow Resistance
(24490, 24490, 1),
(24490, 24514, 2),
(24490, 24515, 3),
(24490, 24516, 4),
(24490, 27353, 5),
 -- Soothing Kiss
(6362, 6362, 1),
(6362, 7879, 2),
(6362, 11786, 3),
(6362, 11787, 4),
 -- Soothing Kiss
(20403, 20403, 1),
(20403, 20404, 2),
(20403, 20405, 3),
(20403, 20406, 4),
(20403, 27494, 5),
 -- Spell Lock
(19648, 19648, 1),
(19648, 19650, 2),
 -- Spell Lock
(20433, 20433, 1),
(20433, 20434, 2),
 -- Starfall
(50286, 50286, 1),
(50286, 53196, 2),
(50286, 53197, 3),
(50286, 53198, 4),
 -- Starfall
(50294, 50294, 1),
(50294, 53188, 2),
(50294, 53189, 3),
(50294, 53190, 4),
 -- Starfall
(50288, 50288, 1),
(50288, 53191, 2),
(50288, 53194, 3),
(50288, 53195, 4),
 -- Suffering
(17736, 17736, 1),
(17736, 17753, 2),
(17736, 17754, 3),
(17736, 17755, 4),
 -- Suffering
(20393, 20393, 1),
(20393, 20394, 2),
(20393, 20395, 3),
(20393, 20396, 4),
(20393, 27500, 5),
(20393, 33703, 6),
(20393, 48005, 7),
(20393, 48006, 8),
 -- Surge of Light
(33150, 33150, 1),
(33150, 33154, 2),
 -- Tainted Blood
(19661, 19661, 1),
(19661, 19662, 2),
(19661, 19663, 3),
(19661, 19664, 4),
 -- Tainted Blood
(20429, 20429, 1),
(20429, 20430, 2),
(20429, 20431, 3),
(20429, 20432, 4),
(20429, 27497, 5),
 -- The Art of War
(53486, 53486, 1),
(53486, 53488, 2),
 -- Thick Skin
(5364, 5364, 1),
(5364, 5368, 2),
(5364, 5369, 3),
(5364, 5370, 4),
 -- Thick Skin
(5363, 5363, 1),
(5363, 5365, 2),
(5363, 5366, 3),
(5363, 5367, 4),
 -- Torment
(7881, 7881, 1),
(7881, 7882, 2),
(7881, 7883, 3),
(7881, 7884, 4),
(7881, 11776, 5),
(7881, 11777, 6),
 -- Tough Shell
(4112, 4112, 1),
(4112, 4113, 2),
(4112, 4115, 3),
(4112, 4114, 4),
 -- Tough Shell
(4107, 4107, 1),
(4107, 4108, 2),
(4107, 4109, 3),
(4107, 4111, 4),
 -- Tranquility
(740, 740, 1),
(740, 8918, 2),
(740, 9862, 3),
(740, 9863, 4),
(740, 26983, 5),
(740, 48446, 6),
(740, 48447, 7),
 -- Tranquility
(44203, 44203, 1),
(44203, 44205, 2),
(44203, 44206, 3),
(44203, 44207, 4),
(44203, 44208, 5),
(44203, 48444, 6),
(44203, 48445, 7),
 -- Typhoon
(61391, 61391, 1),
(61391, 61390, 2),
(61391, 61388, 3),
(61391, 61387, 4),
(61391, 53227, 5),
 -- Typhoon
(50516, 50516, 1),
(50516, 53223, 2),
(50516, 53225, 3),
(50516, 53226, 4),
(50516, 61384, 5),
 -- Unfair Advantage
(51675, 51675, 1),
(51675, 51677, 2),
 -- Unfair Advantage
(51672, 51672, 1),
(51672, 51674, 2),
 -- Unleashed Rage
(30802, 30802, 1),
(30802, 30808, 2),
(30802, 30809, 3),
 -- Unleashed Rage
(30803, 30803, 1),
(30803, 30804, 2),
(30803, 30805, 3),
 -- Vindication
(9452, 9452, 1),
(9452, 26016, 2),
 -- Vindication
(67, 67, 1),
(67, 26017, 2),
 -- Volley
(42243, 42243, 1),
(42243, 42244, 2),
(42243, 42245, 3),
(42243, 42234, 4),
(42243, 58432, 5),
(42243, 58433, 6),
 -- Volley
(1510, 1510, 1),
(1510, 14294, 2),
(1510, 14295, 3),
(1510, 27022, 4),
(1510, 58431, 5),
(1510, 58434, 6),
 -- Will of the Necropolis
(52284, 52284, 1),
(52284, 52285, 2),
(52284, 52286, 3),
 -- Will of the Necropolis
(49189, 49189, 1),
(49189, 50149, 2),
(49189, 50150, 3),
 -- Wyvern Sting
(19386, 19386, 1),
(19386, 24132, 2),
(19386, 24133, 3),
(19386, 27068, 4),
(19386, 49011, 5),
(19386, 49012, 6),
 -- First Aid
(746, 746, 1),
(746, 1159, 2),
(746, 3267, 3),
(746, 3268, 4),
(746, 7926, 5),
(746, 7927, 6),
(746, 10838, 7),
(746, 10839, 8),
(746, 18608, 9),
(746, 18610, 10),
(746, 27030, 11),
(746, 27031, 12),
(746, 45543, 13),
(746, 51827, 14),
(746, 45544, 15),
(746, 51803, 16),
 -- Frost Strike
(49143, 49143, 1),
(49143, 51416, 2),
(49143, 51417, 3),
(49143, 51418, 4),
(49143, 51419, 5),
(49143, 55268, 6),
 -- Intercept
(20253, 20253, 1),
(20253, 20614, 2),
(20253, 20615, 3),
(20253, 25273, 4),
(20253, 25274, 5),
 -- Misery
(33191, 33191, 1),
(33191, 33192, 2),
(33191, 33193, 3),
 -- Misery
(33196, 33196, 1),
(33196, 33197, 2),
(33196, 33198, 3),
 -- Obliterate
(49020, 49020, 1),
(49020, 51423, 2),
(49020, 51424, 3),
(49020, 51425, 4),
 -- Penance
(47758, 47758, 1),
(47758, 53001, 2),
(47758, 53002, 3),
(47758, 53003, 4),
 -- Penance
(47757, 47757, 1),
(47757, 52986, 2),
 -- Savage Rend
(50498, 50498, 1),
(50498, 53578, 2),
(50498, 53579, 3),
(50498, 53580, 4),
(50498, 53581, 5),
(50498, 53582, 6),
 -- Spirit Bond
(19578, 19578, 1),
(19578, 20895, 2),
 -- Spirit Bond
(19579, 19579, 1),
(19579, 24529, 2),
 -- Stoneskin
(8072, 8072, 1),
(8072, 8156, 2),
(8072, 8157, 3),
(8072, 10403, 4),
(8072, 10404, 5),
(8072, 10405, 6),
(8072, 25506, 7),
(8072, 25507, 8),
(8072, 58752, 9),
(8072, 58754, 10),
 -- Attack
(3606, 3606, 1),
(3606, 6350, 2),
(3606, 6351, 3),
(3606, 6352, 4),
(3606, 10435, 5),
(3606, 10436, 6),
(3606, 25530, 7),
(3606, 58700, 8),
(3606, 58701, 9),
(3606, 58702, 10),
 -- Blood Strike
(45902, 45902, 1),
(45902, 49926, 2),
(45902, 49927, 3),
(45902, 49928, 4),
(45902, 49929, 5),
(45902, 49930, 6),
 -- Elemental Devastation
(30160, 30160, 1),
(30160, 29179, 2),
(30160, 29180, 3),
 -- Elemental Devastation
(30165, 30165, 1),
(30165, 29177, 2),
(30165, 29178, 3),
 -- Fishing
(7620, 7620, 1),
(7620, 7731, 2),
(7620, 7732, 3),
(7620, 18248, 4),
(7620, 33095, 5),
(7620, 51294, 6),
 -- Icy Touch
(45477, 45477, 1),
(45477, 49896, 2),
(45477, 49903, 3),
(45477, 49904, 4),
(45477, 49909, 5),
 -- Judgements of the Pure
(53671, 53671, 1),
(53671, 53673, 2),
(53671, 54151, 3),
(53671, 54154, 4),
(53671, 54155, 5),
 -- Judgements of the Pure
(53655, 53655, 1),
(53655, 53656, 2),
(53655, 53657, 3),
(53655, 54152, 4),
(53655, 54153, 5),
 -- Master Tactician
(34506, 34506, 1),
(34506, 34507, 2),
(34506, 34508, 3),
(34506, 34838, 4),
(34506, 34839, 5),
 -- Master Tactician
(34833, 34833, 1),
(34833, 34834, 2),
(34833, 34835, 3),
(34833, 34836, 4),
(34833, 34837, 5),
 -- Plague Strike
(45462, 45462, 1),
(45462, 49917, 2),
(45462, 49918, 3),
(45462, 49919, 4),
(45462, 49920, 5),
(45462, 49921, 6),
 -- Rapid Killing
(34948, 34948, 1),
(34948, 34949, 2),
 -- Rapid Killing
(35098, 35098, 1),
(35098, 35099, 2),
 -- Second Wind
(29841, 29841, 1),
(29841, 29842, 2),
 -- Second Wind
(29834, 29834, 1),
(29834, 29838, 2),
 -- Strength of Earth
(8076, 8076, 1),
(8076, 8162, 2),
(8076, 8163, 3),
(8076, 10441, 4),
(8076, 25362, 5),
(8076, 25527, 6),
(8076, 57621, 7),
(8076, 58646, 8),
 -- Trauma
(46854, 46854, 1),
(46854, 46855, 2),
 -- Trauma
(46856, 46856, 1),
(46856, 46857, 2),
 -- Unbridled Wrath
(12322, 12322, 1),
(12322, 12999, 2),
(12322, 13000, 3),
(12322, 13001, 4),
(12322, 13002, 5),
 -- Vanish
(11327, 11327, 1),
(11327, 11329, 2),
(11327, 26888, 3),
 -- Blood Gorged
(50096, 50096, 1),
(50096, 50108, 2),
(50096, 50109, 3),
(50096, 50110, 4),
(50096, 50111, 5),
 -- Blood Gorged
(61274, 61274, 1),
(61274, 61275, 2),
(61274, 61276, 3),
(61274, 61277, 4),
(61274, 61278, 5),
 -- Blood Gorged
(61154, 61154, 1),
(61154, 61155, 2),
(61154, 61156, 3),
(61154, 61157, 4),
(61154, 61158, 5),
 -- Cone of Cold
(1241, 1241, 1),
(1241, 8493, 2),
(1241, 10162, 3),
(1241, 10163, 4),
(1241, 10164, 5),
(1241, 27386, 6),
 -- Flamestrike
(2124, 2124, 1),
(2124, 2125, 2),
(2124, 8425, 3),
(2124, 8426, 4),
(2124, 10217, 5),
(2124, 10218, 6),
(2124, 27385, 7),
 -- Anesthetic Poison
(26688, 26688, 1),
(26688, 57981, 2),
 -- Anesthetic Poison
(26785, 26785, 1),
(26785, 57982, 2),
 -- Apprentice Riding
(33388, 33388, 1),
(33388, 33391, 2),
(33388, 34090, 3),
(33388, 34091, 4),
 -- Primal Fury
(16958, 16958, 1),
(16958, 16961, 2),
 -- Primal Fury
(37116, 37116, 1),
(37116, 37117, 2),
 -- Nature Resist
(4548, 4548, 1),
(4548, 24502, 2),
(4548, 24503, 3),
(4548, 24504, 4),
(4548, 27055, 5),
 -- Instant Poison
(8680, 8680, 1),
(8680, 8685, 2),
(8680, 8689, 3),
(8680, 11335, 4),
(8680, 11336, 5),
(8680, 11337, 6),
(8680, 26890, 7),
(8680, 57964, 8),
(8680, 57965, 9),
 -- Instant Poison
(8679, 8679, 1),
(8679, 8686, 2),
(8679, 8688, 3),
(8679, 11338, 4),
(8679, 11339, 5),
(8679, 11340, 6),
(8679, 26891, 7),
(8679, 57967, 8),
(8679, 57968, 9),
 -- Claw
(2980, 2980, 1),
(2980, 2981, 2),
(2980, 2982, 3),
(2980, 3667, 4),
(2980, 2975, 5),
(2980, 2976, 6),
(2980, 2977, 7),
(2980, 3666, 8),
(2980, 27347, 9),
 -- Mace Specialization
(12284, 12284, 1),
(12284, 12701, 2),
(12284, 12702, 3),
(12284, 12703, 4),
(12284, 12704, 5),
 -- Deadly Toxin
(11539, 11539, 1),
(11539, 11471, 2),
(11539, 11470, 3),
(11539, 11469, 4),
 -- Deadly Poison
(2818, 2818, 1),
(2818, 2819, 2),
(2818, 11353, 3),
(2818, 11354, 4),
(2818, 25349, 5),
(2818, 26968, 6),
(2818, 27187, 7),
(2818, 57969, 8),
(2818, 57970, 9),
 -- Deadly Poison
(2823, 2823, 1),
(2823, 2824, 2),
(2823, 11355, 3),
(2823, 11356, 4),
(2823, 25351, 5),
(2823, 26967, 6),
(2823, 27186, 7),
(2823, 57972, 8),
(2823, 57973, 9),
 -- On a Pale Horse
(51983, 51983, 1),
(51983, 51986, 2),
 -- On a Pale Horse
(51969, 51969, 1),
(51969, 51970, 2),
 -- Wound Poison
(13218, 13218, 1),
(13218, 13222, 2),
(13218, 13223, 3),
(13218, 13224, 4),
(13218, 27189, 5),
(13218, 57974, 6),
(13218, 57975, 7),
 -- Wound Poison
(13219, 13219, 1),
(13219, 13225, 2),
(13219, 13226, 3),
(13219, 13227, 4),
(13219, 27188, 5),
(13219, 57977, 6),
(13219, 57978, 7),
 -- Thunderstomp
(26094, 26094, 1),
(26094, 26189, 2),
(26094, 26190, 3),
(26094, 27366, 4),
 -- Obliterate
(66198, 66198, 1),
(66198, 66972, 2),
(66198, 66973, 3),
(66198, 66974, 4),
 -- Frost Strike
(66196, 66196, 1),
(66196, 66958, 2),
(66196, 66959, 3),
(66196, 66960, 4),
(66196, 66961, 5),
(66196, 66962, 6),
 -- Death Strike
(66188, 66188, 1),
(66188, 66950, 2),
(66188, 66951, 3),
(66188, 66952, 4),
(66188, 66953, 5),
 -- Fiery Payback
(44440, 44440, 1),
(44440, 44441, 2),
 -- Fiery Payback
(64353, 64353, 1),
(64353, 64357, 2),
 -- Improved Flash Heal
(63504, 63504, 1),
(63504, 63505, 2),
(63504, 63506, 3),
 -- Elemental Fury
(16089, 16089, 1),
(16089, 60184, 2),
(16089, 60185, 3),
(16089, 60187, 4),
(16089, 60188, 5),
 -- Feral Swiftness
(17002, 17002, 1),
(17002, 24866, 2),
 -- Master Shapeshifter
(48411, 48411, 1),
(48411, 48412, 2),
 -- Nature's Majesty
(35363, 35363, 1),
(35363, 35364, 2),
 -- Nature's Grace
(16880, 16880, 1),
(16880, 61345, 2),
(16880, 61346, 3),
 -- Molten Skin
(63349, 63349, 1),
(63349, 63350, 2),
(63349, 63351, 3),
 -- Master Demonologist
(23785, 23785, 1),
(23785, 23822, 2),
(23785, 23823, 3),
(23785, 23824, 4),
(23785, 23825, 5),
 -- Death Rune Mastery
(49467, 49467, 1),
(49467, 50033, 2),
(49467, 50034, 3),
 -- Improved Death Strike
(62905, 62905, 1),
(62905, 62908, 2),
 -- Desolation
(66799, 66799, 1),
(66799, 66814, 2),
(66799, 66815, 3),
(66799, 66816, 4),
(66799, 66817, 5),
 -- Mobility
(53483, 53483, 1),
(53483, 53485, 2),
 -- Mobility
(53554, 53554, 1),
(53554, 53555, 2),
 -- Arcane Missiles
(7268, 7268, 1),
(7268, 7269, 2),
(7268, 7270, 3),
(7268, 8419, 4),
(7268, 8418, 5),
(7268, 10273, 6),
(7268, 10274, 7),
(7268, 25346, 8),
(7268, 27076, 9),
(7268, 38700, 10),
(7268, 38703, 11),
(7268, 42844, 12),
(7268, 42845, 13),
 -- Entangling Roots
(19975, 19975, 1),
(19975, 19974, 2),
(19975, 19973, 3),
(19975, 19972, 4),
(19975, 19971, 5),
(19975, 19970, 6),
(19975, 27010, 7),
(19975, 53313, 8),
 -- Death Coil
(47541, 47541, 1),
(47541, 49892, 2),
(47541, 49893, 3),
(47541, 49894, 4),
(47541, 49895, 5),
 -- Intellect
(8096, 8096, 1),
(8096, 8097, 2),
(8096, 8098, 3),
(8096, 12176, 4),
(8096, 33078, 5),
(8096, 43195, 6),
(8096, 48099, 7),
(8096, 48100, 8),
 -- Stamina
(8099, 8099, 1),
(8099, 8100, 2),
(8099, 8101, 3),
(8099, 12178, 4),
(8099, 33081, 5),
(8099, 48101, 6),
(8099, 48102, 7),
(8099, 43198, 8),
 -- Mutilate
(5374, 5374, 1),
(5374, 34414, 2),
(5374, 34416, 3),
(5374, 34419, 4),
(5374, 48662, 5),
(5374, 48665, 6),
 -- Mutilate
(27576, 27576, 1),
(27576, 34415, 2),
(27576, 34417, 3),
(27576, 34418, 4),
(27576, 48661, 5),
(27576, 48664, 6),
 -- Immolation trap
(13797, 13797, 1),
(13797, 14298, 2),
(13797, 14299, 3),
(13797, 14300, 4),
(13797, 14301, 5),
(13797, 27024, 6),
(13797, 49053, 7),
(13797, 49054, 8),
 -- Sniper Training
(64418, 64418, 1),
(64418, 64419, 2),
(64418, 64420, 3),
 -- Blood Strike
(66215, 66215, 1),
(66215, 66975, 2),
(66215, 66976, 3),
(66215, 66977, 4),
(66215, 66978, 5),
(66215, 66979, 6),
 -- Stoneclaw Totem Effect
(5729, 5729, 1),
(5729, 6393, 2),
(5729, 6394, 3),
(5729, 6395, 4),
(5729, 10423, 5),
(5729, 10424, 6),
(5729, 25512, 7),
(5729, 58586, 8),
(5729, 58587, 9),
(5729, 58588, 10);

-- 7332_world_trinity_string.sql
INSERT INTO `trinity_string` VALUES
(10056,'The battle for Strand of the Ancients begins in 2 minutes.','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL'),
(10057,'The battle for Strand of the Ancients begins in 1 minute.','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL'),
(10058,'The battle for Strand of the Ancients begins in 30 seconds. Prepare yourselves!.','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL'),
(10059,'Let the battle for Strand of the Ancients begin!.','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL'),
(10061,'%s is destroyed!','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL'),
(10060,'%s is under attack!','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL');



-- ------------- --
-- TrinityScript --
-- ------------- --

-- 7312_world_script_texts.sql
UPDATE `script_texts` SET `npc_entry`=15420 WHERE `entry` IN (-1000209,-1000210);

-- 7316_world_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` in (-1603045,-1603062,-1603064);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(28070,-1603045,'Query? What do you think I''m here for? Tea and biscuits? Spill the beans already!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14263,1,0,0,'brann SAY_EVENT_END_01'),
(28070,-1603062,'This Loken sounds like a nasty character. Glad we don''t have to worry about the likes of him anymore. So if I''m understanding you lads the original Earthen eventually woke up from this statis. And by that time this destabily-whatever had turned them into our brother dwarfs. Or at least dwarf ancestors. Hm?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14272,1,0,0,'brann SAY_EVENT_END_18'),
(28070,-1603064,'Well now. That''s a lot to digest. I''m gonna need some time to take all of this in. Thank you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14273,1,0,0,'brann SAY_EVENT_END_20');

DELETE FROM `script_texts` WHERE `entry`<=-1608000 and `entry`>=-1608045;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
/* Cyanigosa */
(31134,-1608000,'We finish this now, champions of Kirin Tor!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13947,1,0,0,'cyanigosa SAY_AGGRO'),
(31134,-1608001,'I will end the Kirin Tor!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13952,1,0,0,'cyanigosa SAY_SLAY_1'),
(31134,-1608002,'Dalaran will fall!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13953,1,0,0,'cyanigosa SAY_SLAY_2'),
(31134,-1608003,'So ends your defiance of the Spell-Weaver!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13954,1,0,0,'cyanigosa SAY_SLAY_3'),
(31134,-1608004,'Perhaps... we have... underestimated... you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13955,1,0,0,'cyanigosa SAY_DEATH'),
(31134,-1608005,'A valiant defense, but this city must be razed. I will fulfill Malygos''s wishes myself!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13946,1,0,0,'cyanigosa SAY_SPAWN'),
(31134,-1608006,'Am I interrupting?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13951,1,0,0,'cyanigosa SAY_DISRUPTION'),
(31134,-1608007,'Shiver and die!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13948,1,0,0,'cyanigosa SAY_BREATH_ATTACK'),
(31134,-1608008,'The world has forgotten what true magic is! Let this be a reminder!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13949,1,0,0,'cyanigosa SAY_SPECIAL_ATTACK_1'),
(31134,-1608009,'Who among you can withstand my power?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13950,1,0,0,'cyanigosa SAY_SPECIAL_ATTACK_2'),

/* Erekem */
(29315,-1608010,'Not--caww--get in way of--rrak-rrak--flee!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14219,1,0,0,'erekem SAY_AGGRO'),
(29315,-1608011,'Ya ya ya yaaaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14222,1,0,0,'erekem SAY_SLAY_1'),
(29315,-1608012,'Preeciouuss life---Ra-aak---Wasted!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14223,1,0,0,'erekem SAY_SLAY_2'),
(29315,-1608013,'Only the strong---Ra-aak---Survive!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14224,1,0,0,'erekem SAY_SLAY_3'),
(29315,-1608014,'No--kaw, kaw--flee...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14225,1,0,0,'erekem SAY_DEATH'),
(29315,-1608015,'Free to--mm--fly now. Ra-aak... Not find us--ekh-ekh! Escape!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14218,1,0,0,'erekem SAY_SPAWN'),
(29315,-1608016,'My---raaak--favorite! Awk awk awk! Raa-kaa!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14220,1,0,0,'erekem SAY_ADD_KILLED'),
(29315,-1608017,'Nasty little...A-ak, kaw! Kill! Yes, kill you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14221,1,0,0,'erekem SAY_BOTH_ADDS_KILLED'),

/* Ichoron */
(29313,-1608018,'Stand aside, mortals!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14230,1,0,0,'ichoron SAY_AGGRO'),
(29313,-1608019,'I am a force of nature!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14234,1,0,0,'ichoron SAY_SLAY_1'),
(29313,-1608020,'I shall pass!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14235,1,0,0,'ichoron SAY_SLAY_2'),
(29313,-1608021,'You can not stop the tide!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14236,1,0,0,'ichoron SAY_SLAY_3'),
(29313,-1608022,'I... recede.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14237,1,0,0,'ichoron SAY_DEATH'),
(29313,-1608023,'I... am fury... unrestrained!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14229,1,0,0,'ichoron SAY_SPAWN'),
(29313,-1608024,'I shall consume, decimate, devastate, and destroy! Yield now to the wrath of the pounding sea!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14231,1,0,0,'ichoron SAY_ENRAGE'),
(29313,-1608025,'I will not be contained! Ngyah!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14233,1,0,0,'ichoron SAY_SHATTER'),
(29313,-1608026,'Water can hold any form, take any shape... overcome any obstacle.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14232,1,0,0,'ichoron SAY_BUBBLE'),

/* Xevozz */
(29266,-1608027,'It seems my freedom must be bought with blood...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14498,1,0,0,'Xevozz SAY_AGGRO'),
(29266,-1608028,'Nothing personal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14504,1,0,0,'Xevozz SAY_SLAY_1'),
(29266,-1608029,'Business concluded.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14505,1,0,0,'Xevozz SAY_SLAY_2'),
(29266,-1608030,'Profit!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14506,1,0,0,'Xevozz SAY_SLAY_3'),
(29266,-1608031,'This is an... unrecoverable... loss.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14507,1,0,0,'Xevozz SAY_DEATH'),
(29266,-1608032,'Back in business! Now to execute an exit strategy.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14498,1,0,0,'Xevozz SAY_SPAWN'),
(29266,-1608033,'It would seem that a renegotiation is in order.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14503,1,0,0,'Xevozz SAY_CHARGED'),
(29266,-1608034,'The air teems with latent energy... quite the harvest!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14501,1,0,0,'Xevozz SAY_REPEAT_SUMMON_1'),
(29266,-1608035,'Plentiful, exploitable resources... primed for acquisition!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14502,1,0,0,'Xevozz SAY_REPEAT_SUMMON_2'),
(29266,-1608036,'Intriguing... a high quantity of arcane energy is near. Time for some prospecting...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14500,1,0,0,'Xevozz SAY_SUMMON_ENERGY'),

/* Zuramat */
(29314,-1608037,'Eradicate.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13996,1,0,0,'zuramat SAY_AGGRO'),
(29314,-1608038,'More... energy.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13999,1,0,0,'zuramat SAY_SLAY_1'),
(29314,-1608039,'Relinquish.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14000,1,0,0,'zuramat SAY_SLAY_2'),
(29314,-1608040,'Fall... to shadow.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14001,1,0,0,'zuramat SAY_SLAY_3'),
(29314,-1608041,'Disperse.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14002,1,0,0,'zuramat SAY_DEATH'),
(29314,-1608042,'I am... renewed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13995,1,0,0,'zuramat SAY_SPAWN'),
(29314,-1608043,'Know... my... pain.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13997,1,0,0,'zuramat SAY_SHIELD'),
(29314,-1608044,'Gaze... into the void.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13998,1,0,0,'zuramat SAY_WHISPER'),

/* Sinclari */
(30658,-1608045,'Prison guards, we are leaving! These adventurers are taking over! Go go go',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'sinclari SAY_SINCLARI_1');

-- 7332_world_scriptname.sql
UPDATE creature_template SET ScriptName='boss_algalon' WHERE entry=32871;
UPDATE creature_template SET ScriptName='mob_collapsing_star' WHERE entry=32955;
