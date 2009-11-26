-- 5642_realmd.sql
ALTER TABLE `realmlist`
    ADD `gamebuild` int(11) unsigned NOT NULL default '9947' AFTER `population`;



-- 5670_realmd.sql
ALTER TABLE `uptime` ADD COLUMN `revision` VARCHAR(255) NOT NULL DEFAULT 'Trinitycore' AFTER `maxplayers`;
