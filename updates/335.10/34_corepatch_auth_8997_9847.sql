-- 9444_auth_account.sql
ALTER TABLE `account` ADD COLUMN `recruiter` int(11) NOT NULL default '0' AFTER `locale`;

