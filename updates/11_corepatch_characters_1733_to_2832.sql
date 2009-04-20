UPDATE `character_spell` SET `spell` = '34093' WHERE `spell` = '34091';
UPDATE `character_spell` SET `spell` = '34092' WHERE `spell` = '34090';
CREATE TABLE `character_spell_temp` SELECT * FROM `character_spell` WHERE `spell`='34091';
UPDATE `character_spell_temp` SET `spell`='34090';
REPLACE INTO `character_spell` SELECT * FROM `character_spell_temp`; 
DROP TABLE `character_spell_temp`; 

-- 2412_characters
DELETE FROM `character_aura` WHERE 'effect_index'>'1';
 ALTER TABLE `character_aura` CHANGE `effect_index` `effect_mask` INT( 11 ) UNSIGNED NOT NULL DEFAULT '0';
 ALTER TABLE `character_aura` CHANGE `amount` `amount0` INT( 11 ) NOT NULL DEFAULT '0';
 ALTER TABLE `character_aura` ADD `amount1` INT( 11 ) NOT NULL DEFAULT '0' AFTER `amount0`;
 ALTER TABLE `character_aura` ADD `amount2` INT( 11 ) NOT NULL DEFAULT '0' AFTER `amount1`;
DELETE FROM `pet_aura` WHERE 'effect_index'>'1';
 ALTER TABLE `pet_aura` CHANGE `effect_index` `effect_mask` INT( 11 ) UNSIGNED NOT NULL DEFAULT '0';
 ALTER TABLE `pet_aura` CHANGE `amount` `amount0` INT( 11 ) NOT NULL DEFAULT '0';
 ALTER TABLE `pet_aura` ADD `amount1` INT( 11 ) NOT NULL DEFAULT '0' AFTER `amount0`;
 ALTER TABLE `pet_aura` ADD `amount2` INT( 11 ) NOT NULL DEFAULT '0' AFTER `amount1`;
 
-- 2508_characters
DROP TABLE IF EXISTS `has_logged_in_before`;

-- 2582_mangos_7644_01_characters_character_pet
UPDATE `character_pet`
  SET slot = 100 WHERE PetType <> 1 AND slot >= 1 AND slot <= 4;
  
-- 2683_characters_gm_tickets
ALTER TABLE `gm_tickets` ADD COLUMN `createtime` int(10) NOT NULL after `message`;

-- 2686_characters_gm_tickets
ALTER TABLE `gm_tickets` ADD COLUMN `map` INT NOT NULL DEFAULT '0' AFTER `createtime`;
ALTER TABLE `gm_tickets` ADD COLUMN `posX` FLOAT NOT NULL DEFAULT '0' AFTER `map`;
ALTER TABLE `gm_tickets` ADD COLUMN `posY` FLOAT NOT NULL DEFAULT '0' AFTER `posX`;
ALTER TABLE `gm_tickets` ADD COLUMN `posZ` FLOAT NOT NULL DEFAULT '0' AFTER `posY`;