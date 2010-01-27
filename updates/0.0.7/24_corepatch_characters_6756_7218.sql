-- Rev 6932
ALTER TABLE `character_aura` 
	ADD COLUMN `base_amount0` INT(11) NOT NULL DEFAULT '0' AFTER `amount2`,
	ADD COLUMN `base_amount1` INT(11) NOT NULL DEFAULT '0' AFTER `base_amount0`,
	ADD COLUMN `base_amount2` INT(11) NOT NULL DEFAULT '0' AFTER `base_amount1`,
	ADD COLUMN `recalculate_mask` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER `effect_mask`;

ALTER TABLE `pet_aura` DROP PRIMARY KEY,
	ADD COLUMN `base_amount0` INT(11) NOT NULL DEFAULT '0' AFTER `amount2`,
	ADD COLUMN `base_amount1` INT(11) NOT NULL DEFAULT '0' AFTER `base_amount0`,
	ADD COLUMN `base_amount2` INT(11) NOT NULL DEFAULT '0' AFTER `base_amount1`,
	ADD COLUMN `recalculate_mask` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER `effect_mask`;

-- Rev 6960
DELETE FROM `character_aura` WHERE `spell` IN (61248, 58105, 61251);
 
DELETE FROM `pet_aura` WHERE `spell` IN (61248, 58105, 61251);

-- Rev 7118
DROP TABLE IF EXISTS `addons`;
CREATE TABLE `addons` (
  `name` varchar(120) NOT NULL default '',
  `crc` mediumint(32) unsigned NOT NULL default '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Addons';
