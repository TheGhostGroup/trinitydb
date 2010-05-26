-- 8111_realmd_account_access.sql
ALTER TABLE `account_access` CHANGE `RealmID` `RealmID` INT(11) NOT NULL DEFAULT '-1';
