-- 79
ALTER TABLE characters
  CHANGE COLUMN gmstate extra_flags int(11) unsigned NOT NULL default '0';
-- 220
ALTER TABLE `characters`
    ADD `latency` int(11) unsigned NOT NULL default '0' AFTER `taxi_path`;
