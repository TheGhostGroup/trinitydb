-- ----------- --
-- TrinityCore --
-- ----------- --

-- Rev 6792
UPDATE `spell_proc_event` SET `SpellFamilyMask0`=0x04000000,`SpellFamilyMask1`=0x10000000 WHERE `entry` IN(49208,56834,56835);

-- Rev 6799
UPDATE `spell_proc_event` SET `SchoolMask`=4,`spellFamilyMask0`=146800663,`spellFamilyMask1`=200776 WHERE `entry`=11129;

-- Rev 6804
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=66680;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(66680,66547,0, 'Confess - Confess');

-- Rev 6823
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=66889;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(66889,-66865,0, 'Remove Vengeance');

-- Rev 6840
-- Seal of Command
-- Change max procs per minute (ppm) to be read from the dbc
UPDATE `spell_proc_event` SET `ppmRate`=0 WHERE `entry`=20375;

-- Rev 6871
DELETE FROM `spell_bonus_data` WHERE `entry`=12654;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES (12654,0,0,0,0, 'Mage - Ignite');

-- Rev 6881
UPDATE `spell_proc_event` SET procFlags=procFlags|4 WHERE `entry` in (53486,53488); -- Fix Art of War to only proc from Critical Hits

-- Rev 6882
ALTER TABLE `creature_addon` DROP COLUMN `moveflags`;
ALTER TABLE `creature_template_addon` DROP COLUMN `moveflags`;

-- Rev 6898
DELETE FROM `spell_proc_event` WHERE `entry`=58387;
INSERT INTO `spell_proc_event` VALUES (58387,0,4,16384,64,0,16,0,0,0,0); -- Glyph of Sunder Armor

-- Rev 6901
DELETE FROM `spell_proc_event` WHERE `entry`=58375;
INSERT INTO `spell_proc_event` VALUES (58375,0,4,0,0x200,0,0x10,0,0,0,0); -- Glyph of Blocking

-- Rev 6903
UPDATE `spell_proc_event` SET `customChance`=100 WHERE `entry`=33757;

-- Rev 6915
UPDATE `spell_proc_event` SET `spellFamilyMask0`=`spellFamilyMask0`|0x100,`customChance`=100 WHERE `entry` IN(16198,16180,16196);

-- Rev 6923
DELETE FROM `trinity_string` WHERE `entry`=5020;
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES (5020, 'Phasemask: %u');

-- Rev 6932
DELETE FROM `spell_proc_event` WHERE `procEx`&0x6000;

-- Rev 6941
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=19263 AND `spell_effect`=67801;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
( 19263,67801,2, 'Deterrence');

-- Rev 6953
DELETE FROM `trinity_string` WHERE `entry`=5021;
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES (5021, 'Armor: %u');

-- Rev 6964
ALTER TABLE `creature_template` ADD COLUMN `Armor_mod` FLOAT NOT NULL DEFAULT '1' AFTER `Mana_mod`;
ALTER TABLE `creature_template` DROP COLUMN `armor`;

DROP TABLE IF EXISTS `creature_classlevelstats`;

CREATE TABLE `creature_classlevelstats` (
  `level` tinyint(1) NOT NULL,
  `class` tinyint(1) NOT NULL,
  `basehp0` smallint(2) NOT NULL,
  `basehp1` smallint(2) NOT NULL, 
  `basehp2` smallint(2) NOT NULL, 
  `basemana` smallint(2) NOT NULL,
  `basearmor` smallint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `creature_classlevelstats` (`class`,`level`,`basehp0`,`basehp1`,`basehp2`,`basemana`,`basearmor`) VALUES
(1,1,42,1,1,0,8),
(1,2,55,1,1,0,20),
(1,3,71,1,1,0,33),
(1,4,86,1,1,0,68),
(1,5,102,1,1,0,111),
(1,6,120,1,1,0,165),
(1,7,137,1,1,0,230),
(1,8,156,1,1,0,306),
(1,9,176,1,1,0,387),
(1,10,198,1,1,0,463),
(1,11,222,1,1,0,528),
(1,12,247,1,1,0,562),
(1,13,273,1,1,0,596),
(1,14,300,1,1,0,630),
(1,15,328,1,1,0,665),
(1,16,356,1,1,0,700),
(1,17,386,1,1,0,734),
(1,18,417,1,1,0,768),
(1,19,449,1,1,0,802),
(1,20,484,1,1,0,836),
(1,21,521,1,1,0,872),
(1,22,562,1,1,0,906),
(1,23,605,1,1,0,940),
(1,24,651,1,1,0,975),
(1,25,699,1,1,0,1008),
(1,26,750,1,1,0,1043),
(1,27,800,1,1,0,1078),
(1,28,853,1,1,0,1111),
(1,29,905,1,1,0,1145),
(1,30,955,1,1,0,1179),
(1,31,1006,1,1,0,1213),
(1,32,1057,1,1,0,1249),
(1,33,1110,1,1,0,1281),
(1,34,1163,1,1,0,1317),
(1,35,1220,1,1,0,1349),
(1,36,1277,1,1,0,1456),
(1,37,1336,1,1,0,1568),
(1,38,1395,1,1,0,1684),
(1,39,1459,1,1,0,1808),
(1,40,1524,1,1,0,1938),
(1,41,1585,1,1,0,2074),
(1,42,1651,1,1,0,2218),
(1,43,1716,1,1,0,2369),
(1,44,1782,1,1,0,2528),
(1,45,1848,1,1,0,2695),
(1,46,1919,1,1,0,2750),
(1,47,1990,1,1,0,2804),
(1,48,2062,1,1,0,2857),
(1,49,2138,1,1,0,2912),
(1,50,2215,1,1,0,2966),
(1,51,2292,1,1,0,3018),
(1,52,2371,1,1,0,3060),
(1,53,2453,1,1,0,3128),
(1,54,2533,1,1,0,3180),
(1,55,2614,1,1,0,3234),
(1,56,2699,1,1,0,3289),
(1,57,2784,1,1,0,3342),
(1,58,2871,3989,1,0,3396),
(1,59,2961,4142,1,0,3449),
(1,60,3052,4979,1,0,3750),
(1,61,3144,5158,1,0,4047),
(1,62,3237,5341,1,0,4344),
(1,63,3331,5527,1,0,4641),
(1,64,3427,5715,1,0,4937),
(1,65,3524,5914,1,0,5234),
(1,66,3624,6116,1,0,5531),
(1,67,3728,6326,1,0,5829),
(1,68,3834,6542,6986,0,6126),
(1,69,3942,6761,7984,0,6423),
(1,70,4050,6986,8982,0,6719),
(1,71,4163,7181,9291,0,7018),
(1,72,4278,7380,9610,0,7318),
(1,73,4399,7588,9940,0,7618),
(1,74,4524,7804,10282,0,7918),
(1,75,4652,8025,10635,0,8219),
(1,76,4781,8247,11001,0,8520),
(1,77,4916,8480,11379,0,8822),
(1,78,5052,0,11770,0,9124),
(1,79,5194,0,12175,0,9426),
(1,80,5342,9215,12600,0,9729),
(1,81,5496,1,13033,0,10033),
(1,82,5647,1,13481,0,10356),
(1,83,5808,1,13945,0,10673),
(1,84,1,1,1,0,1),
(1,85,1,1,1,0,1),
(1,86,1,1,1,0,1),
(1,87,1,1,1,0,1),
(1,88,1,1,1,0,1),
(1,89,1,1,1,0,1),
(1,90,1,1,1,0,1),
(1,91,1,1,1,0,1),
(1,92,1,1,1,0,1),
(1,93,1,1,1,0,1),
(1,94,1,1,1,0,1),
(1,95,1,1,1,0,1),
(1,96,1,1,1,0,1),
(1,97,1,1,1,0,1),
(1,98,1,1,1,0,1),
(1,99,1,1,1,0,1),
(1,100,1,1,1,0,1),
(2,1,41,1,1,60,7),
(2,2,54,1,1,69,19),
(2,3,69,1,1,79,33),
(2,4,83,1,1,104,66),
(2,5,98,1,1,115,109),
(2,6,115,1,1,126,163),
(2,7,131,1,1,138,208),
(2,8,148,1,1,165,303),
(2,9,166,1,1,178,369),
(2,10,186,1,1,191,460),
(2,11,208,1,1,205,526),
(2,12,230,1,1,249,560),
(2,13,253,1,1,264,596),
(2,14,276,1,1,295,630),
(2,15,301,1,1,326,665),
(2,16,325,1,1,357,700),
(2,17,350,1,1,390,734),
(2,18,377,1,1,408,768),
(2,19,404,1,1,456,802),
(2,20,433,1,1,490,836),
(2,21,464,1,1,510,872),
(2,22,498,1,1,545,906),
(2,23,533,1,1,581,940),
(2,24,571,1,1,618,975),
(2,25,610,1,1,655,1008),
(2,26,651,1,1,693,1042),
(2,27,690,1,1,732,1078),
(2,28,732,1,1,756,1110),
(2,29,773,1,1,811,1145),
(2,30,811,1,1,852,1178),
(2,31,850,1,1,878,1213),
(2,32,888,1,1,935,1248),
(2,33,928,1,1,963,1281),
(2,34,967,1,1,1007,1316),
(2,35,1009,1,1,1067,1349),
(2,36,1050,1,1,1097,1455),
(2,37,1093,1,1,1142,1567),
(2,38,1135,1,1,1189,1683),
(2,39,1180,1,1,1236,1807),
(2,40,1226,1,1,1283,1937),
(2,41,1268,1,1,1332,2072),
(2,42,1321,1,1,1381,2216),
(2,43,1373,1,1,1432,2367),
(2,44,1426,1,1,1483,2527),
(2,45,1478,1,1,1534,2692),
(2,46,1535,1,1,1587,2749),
(2,47,1592,1,1,1640,2802),
(2,48,1650,1,1,1695,2855),
(2,49,1710,1,1,1750,2910),
(2,50,1772,1,1,1807,2964),
(2,51,1834,1,1,1864,3017),
(2,52,1897,1,1,1923,3072),
(2,53,1962,1,1,1982,3126),
(2,54,2026,1,1,2041,3178),
(2,55,2091,1,1,2117,3232),
(2,56,2159,1,1,2163,3287),
(2,57,2227,1,1,2241,3340),
(2,58,2297,3191,1,2289,3394),
(2,59,2369,3314,1,2369,3447),
(2,60,2442,3984,1,2434,3748),
(2,61,2515,4126,1,2486,4044),
(2,62,2590,4274,1,2568,4340),
(2,63,2665,4422,1,2620,4637),
(2,64,2740,4572,1,2705,4933),
(2,65,2819,4731,1,2790,5228),
(2,66,2899,4892,6116,2846,5523),
(2,67,2982,5060,1,2933,5821),
(2,68,3067,5233,6986,2991,6116),
(2,69,3153,5409,7984,3080,6412),
(2,70,3240,5589,8982,3155,6708),
(2,71,3330,5744,9291,3231,7007),
(2,72,3422,5903,9610,3309,7305),
(2,73,3519,6070,9940,3387,7604),
(2,74,3619,1,10282,3466,7903),
(2,75,3722,6420,10635,3561,8204),
(2,76,3825,1,11001,3643,8503),
(2,77,3933,1,11379,3725,8803),
(2,78,4042,1,11770,3809,9104),
(2,79,4155,1,12175,3893,9405),
(2,80,4274,1,12600,3994,9706),
(2,81,4394,1,13033,4081,10007),
(2,82,4518,1,13481,4169,10253),
(2,83,4646,1,13945,4258,10573),
(2,84,1,1,1,1,1),
(2,85,1,1,1,1,1),
(2,86,1,1,1,1,1),
(2,87,1,1,1,1,1),
(2,88,1,1,1,1,1),
(2,89,1,1,1,1,1),
(2,90,1,1,1,1,1),
(2,91,1,1,1,1,1),
(2,92,1,1,1,1,1),
(2,93,1,1,1,1,1),
(2,94,1,1,1,1,1),
(2,95,1,1,1,1,1),
(2,96,1,1,1,1,1),
(2,97,1,1,1,1,1),
(2,98,1,1,1,1,1),
(2,99,1,1,1,1,1),
(2,100,1,1,1,1,1),
(4,1,42,1,1,0,6),
(4,2,55,1,1,0,18),
(4,3,71,1,1,0,31),
(4,4,86,1,1,0,63),
(4,5,102,1,1,0,102),
(4,6,120,1,1,0,152),
(4,7,137,1,1,0,212),
(4,8,156,1,1,0,286),
(4,9,176,1,1,0,363),
(4,10,198,1,1,0,443),
(4,11,222,1,1,0,488),
(4,12,247,1,1,0,519),
(4,13,273,1,1,0,553),
(4,14,300,1,1,0,577),
(4,15,328,1,1,0,612),
(4,16,356,1,1,0,645),
(4,17,386,1,1,0,676),
(4,18,417,1,1,0,706),
(4,19,449,1,1,0,738),
(4,20,484,1,1,0,769),
(4,21,521,1,1,0,801),
(4,22,562,1,1,0,833),
(4,23,605,1,1,0,863),
(4,24,651,1,1,0,895),
(4,25,699,1,1,0,926),
(4,26,750,1,1,0,957),
(4,27,800,1,1,0,989),
(4,28,853,1,1,0,1020),
(4,29,905,1,1,0,1051),
(4,30,955,1,1,0,1082),
(4,31,1006,1,1,0,1113),
(4,32,1057,1,1,0,1146),
(4,33,1110,1,1,0,1173),
(4,34,1163,1,1,0,1208),
(4,35,1220,1,1,0,1237),
(4,36,1277,1,1,0,1349),
(4,37,1336,1,1,0,1434),
(4,38,1395,1,1,0,1538),
(4,39,1459,1,1,0,1649),
(4,40,1524,1,1,0,1764),
(4,41,1585,1,1,0,1886),
(4,42,1651,1,1,0,2015),
(4,43,1716,1,1,0,2148),
(4,44,1782,1,1,0,2303),
(4,45,1848,1,1,0,2436),
(4,46,1919,1,1,0,2485),
(4,47,1990,1,1,0,2535),
(4,48,2062,1,1,0,2582),
(4,49,2138,1,1,0,2631),
(4,50,2215,1,1,0,2680),
(4,51,2292,1,1,0,2728),
(4,52,2371,1,1,0,2778),
(4,53,2453,1,1,0,2826),
(4,54,2533,1,1,0,2874),
(4,55,2614,1,1,0,2922),
(4,56,2699,1,1,0,2972),
(4,57,2784,1,1,0,3020),
(4,58,2871,3989,1,0,3068),
(4,59,2961,4142,1,0,3117),
(4,60,3052,4979,1,0,3388),
(4,61,3144,5158,1,0,3655),
(4,62,3237,5341,1,0,3922),
(4,63,3331,5527,1,0,4189),
(4,64,3427,5715,1,0,4457),
(4,65,3524,5914,1,0,4724),
(4,66,3624,6116,1,0,5104),
(4,67,3728,6326,1,0,5326),
(4,68,3834,6542,6986,0,5527),
(4,69,3942,6761,7984,0,5795),
(4,70,4050,6986,8982,0,6062),
(4,71,4163,7181,9291,0,6332),
(4,72,4278,7380,9610,0,6602),
(4,73,4399,7580,9940,0,6872),
(4,74,4524,1,10282,0,7143),
(4,75,4652,1,10635,0,7415),
(4,76,4781,1,11001,0,7686),
(4,77,4916,1,11379,0,7958),
(4,78,5052,1,11770,0,8230),
(4,79,5194,1,12175,0,8503),
(4,80,5342,1,12600,0,8776),
(4,81,5496,1,13033,0,9068),
(4,82,5647,1,13481,0,9348),
(4,83,5808,1,13945,0,9589),
(4,84,1,1,1,0,1),
(4,85,1,1,1,0,1),
(4,86,1,1,1,0,1),
(4,87,1,1,1,0,1),
(4,88,1,1,1,0,1),
(4,89,1,1,1,0,1),
(4,90,1,1,1,0,1),
(4,91,1,1,1,0,1),
(4,92,1,1,1,0,1),
(4,93,1,1,1,0,1),
(4,94,1,1,1,0,1),
(4,95,1,1,1,0,1),
(4,96,1,1,1,0,1),
(4,97,1,1,1,0,1),
(4,98,1,1,1,0,1),
(4,99,1,1,1,0,1),
(4,100,1,1,1,0,1),
(8,1,40,1,1,120,5),
(8,2,52,1,1,147,16),
(8,3,67,1,1,174,28),
(8,4,81,1,1,202,57),
(8,5,95,1,1,230,93),
(8,6,111,1,1,259,139),
(8,7,126,1,1,289,194),
(8,8,143,1,1,319,265),
(8,9,160,1,1,350,339),
(8,10,178,1,1,382,423),
(8,11,199,1,1,459,447),
(8,12,219,1,1,537,475),
(8,13,241,1,1,601,509),
(8,14,263,1,1,710,523),
(8,15,285,1,1,790,559),
(8,16,307,1,1,856,589),
(8,17,330,1,1,938,617),
(8,18,354,1,1,1020,643),
(8,19,379,1,1,1118,674),
(8,20,405,1,1,1202,701),
(8,21,432,1,1,1272,729),
(8,22,463,1,1,1357,759),
(8,23,494,1,1,1443,786),
(8,24,528,1,1,1545,815),
(8,25,562,1,1,1633,843),
(8,26,598,1,1,1707,871),
(8,27,633,1,1,1812,900),
(8,28,669,1,1,1977,928),
(8,29,704,1,1,2068,957),
(8,30,737,1,1,2175,984),
(8,31,770,1,1,2253,1012),
(8,32,802,1,1,2362,1042),
(8,33,835,1,1,2457,1065),
(8,34,867,1,1,2553,1098),
(8,35,902,1,1,2680,1124),
(8,36,935,1,1,2763,1241),
(8,37,970,1,1,2861,1300),
(8,38,1004,1,1,2975,1391),
(8,39,1040,1,1,3075,1489),
(8,40,1077,1,1,3191,1590),
(8,41,1110,1,1,3293,1697),
(8,42,1156,1,1,3471,1811),
(8,43,1201,1,1,3575,1926),
(8,44,1247,1,1,3680,2078),
(8,45,1294,1,1,3801,2177),
(8,46,1343,1,1,3923,2220),
(8,47,1393,1,1,4031,2265),
(8,48,1443,1,1,4140,2307),
(8,49,1497,1,1,4281,2349),
(8,50,1551,1,1,4393,2393),
(8,51,1604,1,1,4506,2437),
(8,52,1660,1,1,4650,2481),
(8,53,1717,1,1,4765,2524),
(8,54,1773,1,1,4896,2567),
(8,55,1830,1,1,5013,2609),
(8,56,1889,1,1,5206,2654),
(8,57,1949,1,1,5340,2698),
(8,58,2010,2793,1,5461,2740),
(8,59,2073,2899,1,5598,2784),
(8,60,2136,3484,1,5751,3025),
(8,61,2201,3611,1,5875,3263),
(8,62,2266,3739,1,6015,3500),
(8,63,2332,3870,1,6156,3736),
(8,64,2399,4000,1,6229,3977),
(8,65,2467,4140,4731,6443,4214),
(8,66,2552,4281,4892,6588,4460),
(8,67,2610,4429,1,6749,4710),
(8,68,2684,4580,5588,6882,4928),
(8,69,2759,4733,6387,7031,5167),
(8,70,2835,4890,7185,7196,5404),
(8,71,2914,5027,7432,7332,5645),
(8,72,2995,5166,7688,7500,5886),
(8,73,3098,5311,7952,7654,6126),
(8,74,3186,1,8225,7809,6368),
(8,75,3256,5617,8508,7981,6610),
(8,76,3367,1,8800,8139,6851),
(8,77,3462,1,9103,8313,7094),
(8,78,3558,1,9416,8459,7335),
(8,79,3658,1,9740,8636,7579),
(8,80,3739,1,10080,8814,7822),
(8,81,3870,1,10486,8979,8102),
(8,82,3977,1,10784,9160,8340),
(8,83,4090,1,11156,9325,8505),
(8,84,1,1,1,1,1),
(8,85,1,1,1,1,1),
(8,86,1,1,1,1,1),
(8,87,1,1,1,1,1),
(8,88,1,1,1,1,1),
(8,89,1,1,1,1,1),
(8,90,1,1,1,1,1),
(8,91,1,1,1,1,1),
(8,92,1,1,1,1,1),
(8,93,1,1,1,1,1),
(8,94,1,1,1,1,1),
(8,95,1,1,1,1,1),
(8,96,1,1,1,1,1),
(8,97,1,1,1,1,1),
(8,98,1,1,1,1,1),
(8,99,1,1,1,1,1),
(8,100,1,1,1,1,1);

-- Rev 6966
UPDATE `trinity_string` SET `content_default`= 'Selected object:\n|cffffffff|Hgameobject:%d|h[%s]|h|r GUID: %u ID: %u\nX: %f Y: %f Z: %f MapId: %u\nOrientation: %f\nPhasemask %u' WHERE `entry`=524;

-- Rev 6967
UPDATE `spell_proc_event` SET `procFlags`=139944 WHERE `entry` IN(974,32593,32594,49283,49284);

-- Rev 6980
UPDATE `creature_classlevelstats` SET `basehp1`=1 WHERE `class`=1 AND `level` IN(78,79);

-- Rev 6984
ALTER TABLE `quest_template` CHANGE `RewSpellCast` `RewSpellCast` int(11) SIGNED NOT NULL DEFAULT 0;

-- Rev 7037
-- Set Waypoint (Only GM can see it) so health is 1 from levels 1 - 80
UPDATE `creature_template` SET `maxlevel`=80,`Health_mod`=0.0125 WHERE `entry`=1;
-- Set Waypoint (Only GM can see it) so it can also show altitude
UPDATE `creature_template` SET InhabitType=7 WHERE `entry`=1;

-- Rev 7040
-- cast s66747 (Totem of the Earthen Ring) after completing q14100 or q14111 (Relic of the Earthen Ring)
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=66744 AND `spell_effect`=66747;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES 
(66744,66747,0, 'totem of the earthen ring');

-- Rev 7059
-- add spell trigger for teleport to acherus (quest 12757)
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=53099;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(53099,53098,0, 'trigger teleport to acherus (for quest 12757)');

-- Rev 7062
-- Converts GOSSIP_OPTION display text from Generic to English
-- Fixes some problems with GOSSIP_OPTION_OUTDOORPVP,the columns were shifted over one for some reason,seems to have been a typo.
UPDATE `gossip_menu_option` SET `option_text`= 'I want to travel fast' WHERE `option_text`= 'GOSSIP_OPTION_TAXIVENDOR';
UPDATE `gossip_menu_option` SET `option_text`= 'I want to join the Battle Ground' WHERE `option_text`= 'GOSSIP_OPTION_BATTLEFIELD';
UPDATE `gossip_menu_option` SET `option_text`= 'Bring me back to life' WHERE `option_text`= 'GOSSIP_OPTION_SPIRITGUIDE' OR `option_text`= 'GOSSIP_OPTION_SPIRITHEALER';
UPDATE `gossip_menu_option` SET `option_text`= 'Make this inn my home' WHERE `option_text`= 'GOSSIP_OPTION_INNKEEPER';
UPDATE `gossip_menu_option` SET `option_text`= 'Show me my bank' WHERE `option_text`= 'GOSSIP_OPTION_BANKER';
UPDATE `gossip_menu_option` SET `option_text`= 'I''d like to stable my pet here' WHERE `option_text`= 'GOSSIP_OPTION_STABLEPET';
UPDATE `gossip_menu_option` SET `option_text`= 'I want to create a guild crest' WHERE `option_text`= 'GOSSIP_OPTION_TABARDDESIGNER';
UPDATE `gossip_menu_option` SET `option_text`= 'Auction!' WHERE `option_text`= 'GOSSIP_OPTION_AUCTIONEER';
UPDATE `gossip_menu_option` SET `option_text`= 'Purchase a Dual Talent Specialization'  WHERE `option_text`= 'GOSSIP_OPTION_LEARNDUALSPEC';
UPDATE `gossip_menu_option` SET `option_text`= 'I wish to unlearn my pet''s skills'  WHERE `option_text`= 'GOSSIP_OPTION_UNLEARNPETSKILLS';
UPDATE `gossip_menu_option` SET `option_text`= 'I wish to unlearn my talents'  WHERE `option_text`= 'GOSSIP_OPTION_UNLEARNTALENTS';
UPDATE `gossip_menu_option` SET `option_text`= 'Train me!'  WHERE `option_text`= 'GOSSIP_OPTION_TRAINER';
UPDATE `gossip_menu_option` SET `option_text`= 'I want to browse your goods'  WHERE `option_text`= 'GOSSIP_OPTION_VENDOR' OR `option_text`= 'GOSSIP_OPTION_ARMORER';
UPDATE `gossip_menu_option` SET `option_text`= 'How do I form a guild?'  WHERE `option_text`= 'GOSSIP_OPTION_PETITIONER';
UPDATE `gossip_menu_option` SET `option_id`=19,`npc_option_npcflag`=536870912,`action_menu_id`=0 WHERE `option_text`= 'GOSSIP_OPTION_OUTDOORPVP';

-- Rev 7091
-- Unrelenting Trainee
UPDATE `creature_template` SET `spell1` = 55604, `spell8` = 27892 WHERE `entry` = 16124;
UPDATE `creature_template` SET `spell1` = 55645, `spell2` = 0, `spell8` = 27892 where `entry` = 29987;
-- Unrelenting Death Knight
UPDATE `creature_template` SET `spell1` = 27825, `spell8` = 27928 WHERE `entry` IN (16125, 29985);
-- Unrelenting Rider
UPDATE `creature_template` SET `spell1` = 27831, `spell2` = 55606, `spell8` = 27935 where `entry` = 16126;
UPDATE `creature_template` SET `spell1` = 55638, `spell2` = 55608, `spell8` = 27935 where `entry` = 29986;

-- Rev 7116
-- Remove no longer uses entries from Wintergrasp
DELETE FROM `trinity_string` WHERE `entry` BETWEEN 763 AND 770;

-- Rev 7117
-- Remove no longer uses entries from Wintergrasp
DELETE FROM `trinity_string` WHERE `entry` BETWEEN 756 AND 772;

-- Rev 7128
-- Remove Wintergrasp commands from command table
DELETE FROM `command` WHERE `name` LIKE '%wg%';

-- Rev 7134
DELETE FROM command where name IN ('character titles','modify titles','titles add','titles current','titles remove','lookup title');
INSERT INTO `command` (`name`, `security`, `help`)
VALUES
('character titles',2,'Syntax: .character titles [$player_name]\r\n\r\nShow known titles list for selected player or player find by $player_name.'),
('titles add',2,'Syntax: .titles add #title\r\nAdd title #title (id or shift-link) to known titles list for selected player.'),
('titles current',2,'Syntax: .titles current #title\r\nSet title #title (id or shift-link) as current selected titl for selected player. If title not in known title list for player then it will be added to list.'),
('titles remove',2,'Syntax: .titles remove #title\r\nRemove title #title (id or shift-link) from known titles list for selected player.'),
('titles setmask',2,'Syntax: .titles setmask #mask\r\n\r\nAllows user to use all titles from #mask.\r\n\r\n #mask=0 disables the title-choose-field'),
('lookup title',2,'Syntax: .lookup title $$namepart\r\n\r\nLooks up a title by $namepart, and returns all matches with their title ID\'s and index\'s.');

DELETE FROM trinity_string WHERE entry in (349, 350, 351, 352, 353, 354, 355, 356);

INSERT INTO trinity_string  (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`)
VALUES
 (349,'%d (idx:%d) - |cffffffff|Htitle:%d|h[%s %s]|h|r %s %s ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (350,'%d (idx:%d) - [%s %s] %s %s ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (351,'No titles found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (352,'Invalid title id: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (353,'Title %u (%s) added to known titles list for player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (354,'Title %u (%s) removed from known titles list for player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (355,'Title %u (%s) set as current seelcted title for player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (356,'Current selected title for player %s reset as not known now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 7147
-- Not needed, they revert e previous rev which was backedout from repo.

-- 7168
DROP TABLE IF EXISTS `spell_stack_masks`;

CREATE TABLE `spell_stack_masks` (
  `id` int(32) unsigned NOT NULL default '0',
  `mask` int(64) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Rev 7217
-- Entrapment
DELETE FROM `spell_proc_event` WHERE `entry` IN (19387,19388,19184);
INSERT INTO `spell_proc_event`
(`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(19184,0x00,9,0x00000010,0x00002000,0x00000000,0x00000000,0x00000000,0,0,0),
(19387,0x00,9,0x00000010,0x00002000,0x00000000,0x00000000,0x00000000,0,0,0),
(19388,0x00,9,0x00000010,0x00002000,0x00000000,0x00000000,0x00000000,0,0,0);
-- Lock and Load
DELETE FROM `spell_proc_event` WHERE `entry` IN (56342,56343,56344);
INSERT INTO `spell_proc_event`
(`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(56342,0x00,9,0x00000018,0x08000000,0x00024000,0x00000000,0x00000000,0,0,0),
(56343,0x00,9,0x00000018,0x08000000,0x00024000,0x00000000,0x00000000,0,0,0),
(56344,0x00,9,0x00000018,0x08000000,0x00024000,0x00000000,0x00000000,0,0,0);



-- ------------- --
-- TrinityScript --
-- ------------- --

-- Rev 6771
-- Trial of the Champion
UPDATE `instance_template` SET `script`= 'instance_trial_of_the_champion' WHERE `map`=650;
UPDATE `creature_template` SET `Scriptname`= 'npc_toc5_announcer',`npcflag`=1 WHERE entry IN(35004,35005);
UPDATE `creature_template` SET `ScriptName`= 'mob_toc5_warrior' WHERE entry IN(34705,35572);
UPDATE `creature_template` SET `ScriptName`= 'mob_toc5_mage' WHERE entry IN(34702,35569);
UPDATE `creature_template` SET `ScriptName`= 'mob_toc5_shaman' WHERE entry IN(34701,35571);
UPDATE `creature_template` SET `ScriptName`= 'mob_toc5_hunter' WHERE entry IN(34657,35570);
UPDATE `creature_template` SET `ScriptName`= 'mob_toc5_rogue' WHERE entry IN(34703,35617);
UPDATE `creature_template` SET `ScriptName`= 'npc_risen_ghoul' WHERE `entry` IN(35545,35564);
UPDATE `creature_template` SET `ScriptName`= 'boss_black_knight' WHERE `entry`=35451;
UPDATE `creature_template` SET `ScriptName`= 'boss_eadric' WHERE `entry`=35119;
UPDATE `creature_template` SET `ScriptName`= 'boss_paletress' WHERE `entry`=34928;
UPDATE `creature_template` SET `ScriptName`= 'npc_memory' WHERE `entry` IN(35052,35041,35033,35046,35043,35047,35044,35039,35034,35049,35030,34942,35050,35042,35045,35037,35031,35038,35029,35048,35032,35028,35040,35036,35051);

-- Rev 6782
UPDATE `creature_template` SET `ScriptName`= 'npc_risen_ghoul' WHERE `entry` IN(35545,35564);

-- Rev 6828
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=66889;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(66889,-66865,0, 'Remove Vengeance');

-- Rev 6857
UPDATE `creature_template` SET `ScriptName`= 'valiant_challenge' WHERE `entry`=33518;

-- Rev 6859
DELETE FROM `script_texts` WHERE `npc_entry` IN(25504,25589);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES 
(25504,-1750040, 'My father''s aura is quite strong,he cannot be far. Could you be a doll and fight off the monsters wandering throught the mist?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'npc_mootoo_the_younger'),
(25504,-1750041, 'Watch out for the monsters!Which way should we go first? Let''s try this way...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'npc_mootoo_the_younger'),
(25504,-1750042, 'What could this be?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'npc_mootoo_the_younger'),
(25504,-1750043, 'There''s no sign of it ending! Where could my father be?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'npc_mootoo_the_younger'),
(25504,-1750044, 'Father! You''re safe!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'npc_mootoo_the_younger'),
(25589,-1700003, 'I\'ll make you a deal: If you get me out of here alive,you\'ll get a reward larger than you can imagine!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL, 0, 0, 0, 0, 'npc_bonker_togglevolt'),
(25589,-1700002, 'I AM NOT AN APPETIZER!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'npc_bonker_togglevolt'),
(25589,-1700001, 'Right then,no time to waste. Lets get outa here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'npc_bonker_togglevolt');

DELETE FROM `script_waypoint` WHERE `entry` IN(25504,25589);
INSERT INTO `script_waypoint` (`entry`,`pointid`,`location_x`,`location_y`,`location_z`,`waittime`,`point_comment`) VALUES
(25504,1,2882.26,6734.51,32.8864,0, 'Mootoo the Younger'),
(25504,2,2877.37,6731.59,32.8721,0, 'Mootoo the Younger'),
(25504,3,2874.18,6725.85,30.3087,0, 'Mootoo the Younger'),
(25504,4,2866.36,6726.04,26.7277,0, 'Mootoo the Younger'),
(25504,5,2863.97,6731.91,23.8372,0, 'Mootoo the Younger'),
(25504,6,2869.29,6736.92,20.5227,0, 'Mootoo the Younger'),
(25504,7,2874.16,6731.88,18.5042,0, 'Mootoo the Younger'),
(25504,8,2887.05,6736.39,13.997,0, 'Mootoo the Younger'),
(25504,9,2901.68,6741.25,14.0413,0, 'Mootoo the Younger'),
(25504,10,2919.45,6746.28,13.7325,5000, 'Mootoo the Younger'),
(25504,11,2947.18,6738.71,12.7117,0, 'Mootoo the Younger'),
(25504,12,2982.43,6748.59,10.2755,5000, 'Mootoo the Younger'),
(25504,13,2985.05,6776.05,8.33081,0, 'Mootoo the Younger'),
(25504,14,2978.72,6801.48,5.83056,0, 'Mootoo the Younger'),
(25504,15,2957.81,6818.86,4.7594,0, 'Mootoo the Younger'),
(25504,16,2917.03,6820.55,5.87954,5000, 'Mootoo the Younger'),
(25504,17,2890.04,6825.68,4.11676,0, 'Mootoo the Younger'),
(25504,18,2850.31,6812.35,2.09411,0, 'Mootoo the Younger'),
(25504,19,2821.29,6797.99,4.49696,0, 'Mootoo the Younger'),
(25504,20,2798.25,6770.64,5.0632,1000, 'Mootoo the Younger'),
(25504,21,2807.49,6748.29,8.25933,5000, 'Mootoo the Younger');

INSERT INTO `script_waypoint` (`entry`,`pointid`,`location_x`,`location_y`,`location_z`,`waittime`) VALUES
(25589,1,4462.37,5372.75,-15.2912,0),
(25589,2,4478.7,5377.27,-15.0012,5000),
(25589,3,4482.25,5390.64,-15.2354,0),
(25589,4,4477.09,5405.02,-15.2386,0),
(25589,5,4468.71,5416.9,-15.2602,0),
(25589,6,4457.24,5426.87,-15.6104,0),
(25589,7,4439.7,5433.46,-15.2384,0),
(25589,8,4422.63,5432.32,-14.8822,0),
(25589,9,4404.71,5422.74,-14.4494,0),
(25589,10,4394.68,5406.63,-10.8423,0),
(25589,11,4391.99,5392.88,-6.45477,0),
(25589,12,4390.65,5370.91,0.504708,0),
(25589,13,4393.34,5354.19,3.1859,0),
(25589,14,4401.68,5342.78,5.20245,0),
(25589,15,4417.98,5335.18,8.31299,0),
(25589,16,4431.01,5335.17,11.0135,0),
(25589,17,4446.21,5340.58,14.4585,0),
(25589,18,4462.73,5350.22,16.8783,0),
(25589,19,4475.06,5362.82,19.1229,0),
(25589,20,4480.92,5381.72,22.2479,0),
(25589,21,4481.31,5394.2,26.2008,0),
(25589,22,4476.32,5409.12,29.0811,5000),
(25589,23,4466.33,5420.75,31.8093,0),
(25589,24,4450.66,5430.03,36.2843,0),
(25589,25,4431.24,5433.77,38.2282,0),
(25589,26,4417.65,5437.11,40.2429,0),
(25589,27,4402.5,5440.94,42.7727,0),
(25589,28,4387.11,5450.98,48.6992,0),
(25589,29,4364.52,5468.98,48.8229,0),
(25589,30,4344.02,5483.26,48.0509,0);

UPDATE `creature_template` SET `ScriptName`= 'npc_mootoo_the_younger' WHERE `entry`=25504;
UPDATE `creature_template` SET `ScriptName`= 'npc_bonker_togglevolt' WHERE `entry`=25589;

-- Rev 6873
UPDATE `creature_template` SET `ScriptName`= 'npc_shadowfiend' WHERE `entry`=19668;

-- Rev 6877
DELETE FROM `script_texts` WHERE `entry` IN(-1000464,-1000465,-1000466,-1000467,-1000468);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
   (349,-1000464, 'My wounds are grave. Forgive my slow pace but my injuries won''t allow me to walk any faster.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (349,-1000465, 'Ah,fresh air,at last! I need a moment to reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (349,-1000466, 'The Blackrock infestation is thick in these parts. I will do my best to keep the pace. Let''s go!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (349,-1000467, 'Marshal Marris,sir. Corporal Keeshan of the 12th Sabre Regiment returned from battle and reporting for duty!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (349,-1000468, 'Brave adventurer,thank you for rescuing me! I am sure Marshal Marris will reward your kind deed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, '');

DELETE FROM `script_waypoint` WHERE `entry`=349;
INSERT INTO `script_waypoint` VALUES
(349,1,-8763.9,-2185.21,141.217,0, ''),
(349,2,-8768.76,-2185.94,141.949,0, ''),
(349,3,-8772.1,-2189.18,141.443,0, ''),
(349,4,-8778.78,-2195.66,140.662,0, ''),
(349,5,-8789.74,-2191.46,141.634,0, ''),
(349,6,-8802.37,-2185.99,141.96,0, ''),
(349,7,-8818,-2184.8,139.153,0, ''),
(349,8,-8828.42,-2193.02,138.973,0, ''),
(349,9,-8826.45,-2203.82,140.293,0, ''),
(349,10,-8822.54,-2211.43,142.884,0, ''),
(349,11,-8813.51,-2225.08,143.327,0, ''),
(349,12,-8807.5,-2233.92,144.441,0, ''),
(349,13,-8801.3,-2239.04,146.476,0, ''),
(349,14,-8797.57,-2243.61,146.594,0, ''),
(349,15,-8794.38,-2250.83,146.723,0, ''),
(349,16,-8788.1,-2255.1,147.309,0, ''),
(349,17,-8775.37,-2259.82,149.18,0, ''),
(349,18,-8768.09,-2259.54,150.52,0, ''),
(349,19,-8754.65,-2255.62,152.253,0, ''),
(349,20,-8748.51,-2252.62,153.098,0, ''),
(349,21,-8743.2,-2251.67,154.038,0, ''),
(349,22,-8738.4,-2250.23,154.028,0, ''),
(349,23,-8734.35,-2251.56,154.363,0, ''),
(349,24,-8727.41,-2248.64,154.919,0, ''),
(349,25,-8717.66,-2246.3,154.926,0, ''),
(349,26,-8709.05,-2245.83,154.767,0, ''),
(349,27,-8700.13,-2243.28,153.872,0, ''),
(349,28,-8690.15,-2242.54,153.733,0, ''),
(349,29,-8683.49,-2244.31,155.356,0, ''),
(349,30,-8674.53,-2247.89,155.574,0, ''),
(349,31,-8669.86,-2252.77,154.854,0, ''),
(349,32,-8669.07,-2258.88,156.424,0, ''),
(349,33,-8670.56,-2264.69,156.978,0, ''),
(349,34,-8673.45,-2269.45,156.007,0, ''),
(349,35,-8674.4,-2275.9,155.747,0, ''),
(349,36,-8674.82,-2282.75,155.496,0, ''),
(349,37,-8675.17,-2289.5,157.049,0, ''),
(349,38,-8676.43,-2297.67,156.701,0, ''),
(349,39,-8677.59,-2304.85,155.917,0, ''),
(349,40,-8682.32,-2312.88,155.928,0, ''),
(349,41,-8687.78,-2324.44,156.024,0, ''),
(349,42,-8695.71,-2334.87,156.06,0, ''),
(349,43,-8705.17,-2345.13,156.021,0, ''),
(349,44,-8715.1,-2353.95,156.188,0, ''),
(349,45,-8725.8,-2359.17,156.253,0, ''),
(349,46,-8735.92,-2363.27,157.151,0, ''),
(349,47,-8746.82,-2367.99,158.13,0, ''),
(349,48,-8755.38,-2375.72,157.271,0, ''),
(349,49,-8765.12,-2388.08,156.092,0, ''),
(349,50,-8768.84,-2395.58,155.926,0, ''),
(349,51,-8772.85,-2405.27,156.418,0, ''),
(349,52,-8776.95,-2414.94,156.388,0, ''),
(349,53,-8781.69,-2430.11,153.264,0, ''),
(349,54,-8786.76,-2440.34,147.849,0, ''),
(349,55,-8792.01,-2453.38,142.746,0, ''),
(349,56,-8797.41,-2462.21,138.171,0, ''),
(349,57,-8804.78,-2472.43,134.192,0, ''),
(349,58,-8815.26,-2478.45,133.079,0, ''),
(349,59,-8823.74,-2491.21,132.911,0, ''),
(349,60,-8835.25,-2496.44,132.057,0, ''),
(349,61,-8841.04,-2503.01,132.199,0, ''),
(349,62,-8850.81,-2509.63,132.865,0, ''),
(349,63,-8858.64,-2522.29,133.852,0, ''),
(349,64,-8862.25,-2527.1,134.279,0, ''),
(349,65,-8870.67,-2542.08,131.044,0, ''),
(349,66,-8880.4,-2550.79,130.505,0, ''),
(349,67,-8892.87,-2560.3,130.558,0, ''),
(349,68,-8908.74,-2573.64,131.616,0, ''),
(349,69,-8922.05,-2585.31,132.446,0, ''),
(349,70,-8935.86,-2591.19,132.446,0, ''),
(349,71,-8949.08,-2596.87,132.537,0, ''),
(349,72,-8959.17,-2599.72,132.507,0, ''),
(349,73,-8969.43,-2601.96,132.471,0, ''),
(349,74,-8979.77,-2603.66,132.39,0, ''),
(349,75,-8991.61,-2604.16,131.196,0, ''),
(349,76,-9000.2,-2602.38,128.954,0, ''),
(349,77,-9011.57,-2594.23,127.435,0, ''),
(349,78,-9019.77,-2587.67,126.618,0, ''),
(349,79,-9028.35,-2582.26,125.787,0, ''),
(349,80,-9038.96,-2572.71,124.748,0, ''),
(349,81,-9046.92,-2560.64,124.447,0, ''),
(349,82,-9059.29,-2550.1,123.756,0, ''),
(349,83,-9068.15,-2547.28,122.965,0, ''),
(349,84,-9077.54,-2541.67,121.17,0, ''),
(349,85,-9085.61,-2532.98,118.85,0, ''),
(349,86,-9097.8,-2520.49,117.401,0, ''),
(349,87,-9110.18,-2507.01,117.098,0, ''),
(349,88,-9119.21,-2498.23,116.627,0, ''),
(349,89,-9124.61,-2487.07,115.972,0, ''),
(349,90,-9127.42,-2478.53,114.843,0, ''),
(349,91,-9133.18,-2465.77,113.029,0, ''),
(349,92,-9137.54,-2456.22,111.051,0, ''),
(349,93,-9146.73,-2441.6,107.979,0, ''),
(349,94,-9155.62,-2430.79,106.251,0, ''),
(349,95,-9158.06,-2420.36,104.838,0, ''),
(349,96,-9157.25,-2410.2,103.858,0, ''),
(349,97,-9152.95,-2401.47,102.679,0, ''),
(349,98,-9153.63,-2393.46,100.63,0, ''),
(349,99,-9156.48,-2385.68,98.2937,0, ''),
(349,100,-9161.01,-2379.87,96.2066,0, ''),
(349,101,-9169.08,-2373.14,93.8832,0, ''),
(349,102,-9175.61,-2368.72,92.5178,0, ''),
(349,103,-9187.1,-2360.52,89.9231,0, ''),
(349,104,-9194.27,-2352.89,87.593,0, ''),
(349,105,-9201.07,-2344.88,85.8516,0, ''),
(349,106,-9205.62,-2339.56,85.0342,0, ''),
(349,107,-9212.44,-2331.58,83.8068,0, ''),
(349,108,-9219.26,-2323.6,82.29,0, ''),
(349,109,-9229.98,-2313.25,79.4506,0, ''),
(349,110,-9240.03,-2303.51,76.7841,0, ''),
(349,111,-9249.34,-2298.82,74.3911,0, ''),
(349,112,-9254.95,-2296.68,72.8144,0, ''),
(349,113,-9264.73,-2292.92,70.0089,0, ''),
(349,114,-9272.24,-2293.79,68.6096,0, ''),
(349,115,-9277.03,-2295.98,68.1135,10000, '');

UPDATE `creature_template` SET `ScriptName`= 'npc_corporal_keeshan' WHERE `entry`=349;

-- Rev 6887
UPDATE `creature_template` SET `ScriptName`= 'npc_blackfathom_deeps_event' WHERE `entry` IN(4823,4825,4977,4978);

-- Rev 6889
DELETE FROM `script_texts` WHERE `entry` IN(-1048003,-1048004);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(6729,-1048003, 'Aku''mai is dead! At last,I can leave this wretched place.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, ''),
(6729,-1048004, 'Speak with me to hear my tale',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, '');

DELETE FROM `script_waypoint` WHERE `entry`=6729;
INSERT INTO `script_waypoint` VALUES
(6729,1,-861.803,-460.36,-33.8918,0, ''),
(6729,2,-856.168,-464.425,-33.9223,0, ''),
(6729,3,-849.964,-469.231,-34.0381,0, ''),
(6729,4,-839.838,-473.654,-34.0535,0, ''),
(6729,5,-837.417,-473.105,-34.0288,0, '');

UPDATE `creature_template` SET `ScriptName`= 'npc_morridune' WHERE `entry`=6729;

-- Rev 6890
UPDATE `gameobject_template` SET `ScriptName`= 'go_table_theka' WHERE `entry`=142715;

-- Rev 6896
DELETE FROM `script_texts` WHERE `entry`=-1033009;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
   (4275,-1033009, 'Who dares interfere with the Sons of Arugal?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, '');

UPDATE `creature_template` SET `ScriptName`= 'npc_arugal_voidwalker' WHERE `entry`=4627;

-- Rev 6922
UPDATE `creature_template` SET `ScriptName`= 'boss_mr_smite' WHERE `entry`=646;

-- Rev 6947
UPDATE `creature_template` SET `ScriptName`= 'npc_fezzix_geartwist' WHERE `entry`=25849;

-- Rev 6979
UPDATE `creature_template` SET `ScriptName`= 'npc_bushwhacker' WHERE `entry`=28317;

-- Rev 6988
UPDATE `gameobject_template` SET `Scriptname`= 'go_inconspicuous_landmark' WHERE `entry`=142189;

-- Rev 7033
DELETE FROM `script_texts` WHERE `npc_entry` IN(7998,7361);
DELETE FROM `script_texts` WHERE `entry` IN(-1090001,-1090002,-1090003,-1090004,-1090005,-1090006,-1090007,-1090008,-1090009,-1090010,-1090011,-1090012,-1090013,-1090014,-1090015,-1090016,-1090017,-1090018,-1090019,-1090020,-1090021,-1090022,-1090023,-1090024,-1090025,-1090026,-1090027,-1090028);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
   (7998,-1090000, 'With your help,I can evaluate these tunnels.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (7998,-1090001, 'Let''s see if we can find out where these Troggs are coming from... and put a stop to the invasion!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (7998,-1090002, 'Such devastation... what horrible mess...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (7998,-1090003, 'It''s quiet here...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (7998,-1090004, '...too quiet.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (7998,-1090005, 'Look! Over there at the tunnel wall!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (7998,-1090006, 'Trogg incrusion! Defend me while i blast the hole closed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (7998,-1090007, 'The charges are set. Get back before they blow!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (7998,-1090008, 'Incoming blast in 10 seconds!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, ''),
   (7998,-1090009, 'Incoming blast in 5 seconds. Clear the tunnel!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, ''),
   (7998,-1090010, 'FIRE IN THE HOLE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, ''),
   (7998,-1090011, 'Well done! Without your help I would have never been able to thwart that wave of troggs.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (7998,-1090012, 'Did you hear something?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (7998,-1090013, 'I heard something over there.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (7998,-1090014, 'More troggs! Ward them off as I prepare the explosives!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (7998,-1090015, 'The final charge is set. Stand back!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, ''),
   (7998,-1090016, 'The final charge is set. Stand back!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (7998,-1090017, 'Incoming blast in 10 seconds!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, ''),
   (7998,-1090018, 'Incoming blast in 5 seconds. Clear the tunnel!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, ''),
   (7998,-1090019, 'I don''t think one charge is going to cut it. Keep fending them off!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (7998,-1090020, 'FIRE IN THE HOLE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, ''),
   (7998,-1090021, 'Well done! Without your help I would have never been able to thwart that wave of troggs.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (7998,-1090022, 'Did you hear something?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (7998,-1090023, 'I heard something over there.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (7998,-1090024, 'More troggs! Ward them off as I prepare the explosives!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (7998,-1090025, 'The final charge is set. Stand back!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (7998,-1090026, '10 seconds to blast! Stand back!!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, ''),
   (7998,-1090027, '5 seconds until detonation!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, ''),
   (7361,-1090028, 'We come from below! You can never stop us!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, '');
DELETE FROM `script_waypoint` WHERE `entry`=7998;
INSERT INTO `script_waypoint` VALUES
    (7998,1,-511.065,-134.51,-152.493,0, ''),
    (7998,2,-511.862,-131.76,-152.932,0, ''),
    (7998,3,-513.319,-126.733,-156.095,0, ''),
    (7998,4,-515.969,-118.962,-156.109,0, ''),
    (7998,5,-518.983,-111.608,-155.923,0, ''),
    (7998,6,-522.392,-101.145,-155.228,0, ''),
    (7998,7,-523.941,-96.9487,-154.823,0, ''),
    (7998,8,-531.938,-104.249,-156.031,0, ''),
    (7998,9,-533.141,-105.332,-156.017,30000, ''),
    (7998,10,-541.3,-96.7414,-155.895,30000, ''),
    (7998,11,-517.556,-106.826,-155.149,0, ''),
    (7998,12,-508.757,-103.227,-151.742,30000, ''),
    (7998,13,-512.396,-86.3113,-151.642,30000, ''),
    (7998,14,-520.928,-117.679,-156.119,0, ''),
    (7998,15,-521.717,-119.564,-156.114,0, '');
UPDATE `creature_template` SET `ScriptName`= 'npc_blastmaster_emi_shortfuse' WHERE `entry`=7998;
UPDATE `creature_template` SET `ScriptName`= 'boss_grubbis' WHERE `entry`=7361;
UPDATE `instance_template` SET `script`= 'instance_gnomeregan' WHERE `map`=90;

-- Rev 7053
DELETE FROM `script_texts` WHERE entry IN(-1000469,-1000470,-1000471);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
   (23861,-1000469, 'It is too late for us,living one. Take yourself and your friend away from here before you both are... claimed...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (23861,-1000470, 'Go away,whoever you are! Witch Hill is mine... mine!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, ''),
   (23861,-1000471, 'It was... terrible... the demon...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, '');

-- Rev 7054
DELETE FROM `script_texts` WHERE `entry` IN(-1000472,-1000473);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
   (23864,-1000472, 'This land was mine long before your wretched kind set foot here.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, ''),
   (23864,-1000473, 'All who venture here belong to me,including you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, '');
UPDATE `creature_template` SET `ScriptName`= 'npc_zelfrax' WHERE `entry`=23864;

-- Rev 7060
-- Argent Tournament Target Dummies
UPDATE `creature_template` SET `ScriptName`= 'npc_training_dummy' WHERE `entry` IN(33229,33243,33272);

-- Rev 7090
UPDATE `item_template` SET `ScriptName`='item_petrov_cluster_bombs' WHERE `entry`=33098;
