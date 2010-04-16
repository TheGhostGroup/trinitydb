-- ----------- --
-- TrinityCore --
-- ----------- --

-- 7707_world_spell_dbc.sql
UPDATE `spell_dbc` SET `DurationIndex` = 25 WHERE `Id` = 61988;

-- 7760_world_spell_group.sql
DELETE FROM `spell_group` WHERE id > 1011 AND id < 1107;
-- Minors
INSERT INTO `spell_group` (`id`,`spell_id`) VALUES
-- Armor Debuff (Major)
(1012,55749), -- Acid Spit
(1013,8647), -- Exposed Armor
(1014,7386), -- sunder Armor
-- Armor Debuff (Minor)
(1016,770), -- Faerie Fire
(1016,16857), -- Faerie Fire
(1017,56626), -- Sting
(1018,16231), -- Curse of Recklessness
-- Melee Haste Buff
(1020,55610), -- Improved Icy Talons
(1021,8515), -- windfury totem
-- Melee Critical Strike Chance Buff
(1023,17007), -- Leader of the Pack
(1024,29801), -- Rampage
-- Attack Power Buff (Multiplier)
(1026,53137), -- Abomination's Might
(1027,19506), -- Trueshot Aura
(1028,30802), -- Unleashed Rage
-- Bleed Damage Increase Debuff
(1030,33878), -- Mangle (Bear)
(1031,33876), -- Mangle (Cat)
(1032,46854), -- Trauma
-- Spell Critical Strike Chance Buff
(1034,24907), -- moonkng aura
(1035,51466), -- elemental oath
-- Spell Critical Strike Chance Debuff
(1037,11095), -- improved scorch
(1038,11180), -- Winter's Chill
-- Increased Spell Damage Taken Debuff
(1040,51099), -- Ebon Plaguebringer
(1041,48506), -- Earth and Moon
(1042,1490), -- Curse of the Elements
-- Increased Spell Power Buff
(1044,54646), -- Focus Magic
(1045,52109), -- Flametongue Totem
(1046,63283), -- Totem of Wrath
(1046,57658), -- Totem of Wrath
(1046,57660), -- Totem of Wrath
(1046,57662), -- Totem of Wrath
(1046,57663), -- Totem of Wrath
(1046,30708), -- Totem of Wrath
(1047,53646), -- Demonic Pact
-- Increased Spell Hit Chance Taken Debuff
(1049,33600), --  Improved Faerie Fire
(1050,33191), -- Misery
-- Percentage Haste Increase (All Types)
(1052,48384), -- Improved Moonkin Form
(1053,53379), -- Swift Retribution
-- Percentage Damage Increase
(1055,75593), -- Ferocious Inspiration
(1056,31869), -- Sanctified Retribution
-- Critical Strike Chance Taken Debuff (All types)
(1058,20335), -- Heart of the Crusader
-- totem of wrath  1046 CHECK IT!
-- Melee Attack Speed Slow Debuff
(1060,45477), -- Icy Touch
(1061,48483), -- Infected Wounds
(1062,53695), -- Judgements of the Just
(1063,6343), -- Thunder Clap
-- Melee Hit Chance Reduction Debuff
(1066,5570), -- Insect Swarm
(1067,3043), -- Scorpid Sting
-- Healing Debuff
(1070,13218), -- Wound Posion
(1071,19434), -- Aimed Shot
(1072,12294), -- Mortal Strike
(1073,46910), -- Furious Attacks
-- Attack Power Debuff
(1076,99), -- Demoralizing Roar
(1077,702), -- Curse of Weakness
(1078,1160), -- Demoralizing Shout
-- Agility and Strength Buff
(1080,8076), -- Strength of Earth
(1081,57330), -- Horn of Winter
-- Health Buff
(1083,469), -- Commanding Shout
(1084,6307), -- Blood Pact
-- Intellect Buff
(1086,1459), -- Arcane Intellect
(1104,23028), -- Arcane Brilliance
(1087,54424), -- Fel Intelligence
-- Spirit Buff
-- fel intelegencegoes here
(1105,14752), -- Divine Spirit
(1106,27681), -- Prayer of Spirit
-- Damage Reduction Percentage Buff
(1091,47930), -- Grace
(1092,20911), -- Blessing of Sanctuary
-- Percentage Increase Healing Received Buff
(1094,34123), -- tree of life aura
(1095,20138), -- Improved Devotion Aura
-- Armor Increase Percentage Buff
(1097,14892), -- Inspiration
(1098,16176), -- Ancestral Healing
-- Cast Speed Slow
(1100,1714), -- Curse of Tongues
(1101,31589), -- Slow
(1102,5760); -- Mind-numbing Poison
-- Mothers
INSERT INTO `spell_group` (`id`,`spell_id`) VALUES
-- Armor Debuff (Major)
(1015,-1012),
(1015,-1013),
(1015,-1014),
-- Armor Debuff (Minor)
(1019,-1016),
(1019,-1017),
(1019,-1018),
-- Melee Haste Buff
(1022,-1020),
(1022,-1021),
-- Melee Critical Strike Chance Buff
(1025,-1023),
(1025,-1024),
-- Attack Power Buff (Multiplier)
(1029,-1026),
(1029,-1027),
(1029,-1028),
-- Bleed Damage Increase Debuff
(1033,-1030),
(1033,-1031),
(1033,-1032),
-- Spell Critical Strike Chance Buff
(1036,-1034),
(1036,-1035),
-- Spell Critical Strike Chance Debuff
(1039,-1037),
(1039,-1038),
-- Increased Spell Damage Taken Debuff
(1043,-1040),
(1043,-1041),
(1043,-1042),
-- Increased Spell Power Buff
(1048,-1044),
(1048,-1045),
(1048,-1046),
(1048,-1047),
-- Increased Spell Hit Chance Taken Debuff
(1051,-1049),
(1051,-1050),
-- Percentage Haste Increase (All Types)
(1054,-1052),
(1054,-1053),
-- Percentage Damage Increase
(1057,-1055),
(1057,-1056),
-- Critical Strike Chance Taken Debuff (All types)
(1059,-1058),
(1059,-1046),
-- Melee Attack Speed Slow Debuff
(1064,-1060),
(1064,-1061),
(1064,-1062),
(1064,-1063),
-- Melee Hit Chance Reduction Debuff
(1068,-1066),
(1068,-1067),
-- Healing Debuff
(1074,-1070),
(1074,-1071),
(1074,-1072),
(1074,-1073),
-- Attack Power Debuff
(1079,-1076),
(1079,-1077),
(1079,-1078),
-- Agility and Strength Buff
(1082,-1080),
(1082,-1081),
-- Health Buff
(1085,-1083),
(1085,-1084),
-- Intellect Buff
(1088,-1086),
(1088,-1104),
(1088,-1087),
-- Spirit Buff
(1090,-1087),
(1090,-1105),
(1090,-1106),
-- Damage Reduction Percentage Buff
(1093,-1091),
(1093,-1092),
-- Percentage Increase Healing Received Buff
(1096,-1094),
(1096,-1095),
-- Armor Increase Percentage Buff
(1099,-1097),
(1099,-1098),
-- Cast Speed Slow
(1103,-1100),
(1103,-1001),
(1103,-1002);
-- corrections
DELETE FROM `spell_group` WHERE `id`=1011 AND `spell_id`=469;
INSERT INTO `spell_group` (`id`,`spell_id`) VALUES (1011,-1083);

-- 7760_world_spell_group_stack_rules.sql
DELETE FROM `spell_group_stack_rules` WHERE `group_id` IN (1015,1016,1019,1022,1025,1029,1033,1036,1043,1048,1051,1054,1057,1059,1064,1068,1074,1079,1082,1085,1088,1090,1093,1096,1099,1103,1046);
INSERT INTO `spell_group_stack_rules` (`group_id`,`stack_rule`) VALUES 
(1015,1),
(1016,1),
(1019,1),
(1022,1),
(1025,1),
(1029,1),
(1033,1),
(1036,1),
(1043,1),
(1048,1),
(1051,1),
(1054,1),
(1057,1),
(1059,1),
(1064,1),
(1068,1),
(1074,1),
(1079,1),
(1082,1),
(1085,1),
(1088,1),
(1090,1),
(1093,1),
(1096,1),
(1099,1),
(1103,1),
(1046,1);

-- 7767_world_spell_group.sql
UPDATE `spell_group` SET `spell_id`=34455 WHERE `id`=1055;

-- 7812_world_creature_template.sql
-- Bone Gryphon
UPDATE `creature_template` SET `spell1`=48766,`spell2`=54469,`spell3`=54467,`spell4`=55214,`spell5`=54422,`VehicleId`=166 WHERE `entry`=29414;
-- Make the chopper mount usable as multimount, horde(i=41505) and ally(i=44413) version
UPDATE `creature_template` SET `vehicleid`=318 WHERE `entry` IN (29929,32286);

-- 7812_world_spell_dbc.sql
-- Add serverside spells place holders for future development
DELETE FROM `spell_dbc` WHERE `Id` IN (25347,45315,43236,43459,43499,44275,64689,50574);
INSERT INTO `spell_dbc` (`Id`,`Comment`) VALUES
(25347, 'Item_template serverside spell'),
(45315, 'Quest 11566 reward serverside spell'),
(43236, 'Quest 11288 reward serverside spell'),
(43459, 'Quest 11332 reward serverside spell'),
(43499, 'Quest 11250 reward serverside spell'),
(44275, 'Quest 11432 reward serverside spell'),
(64689, 'Quest 13854 and 13862 reward serverside spell'),
(50574, 'Quest 12597 reward serverside spell');

-- 7815_world_spelldifficulty_dbc.sql
DROP TABLE IF EXISTS `spelldifficulty_dbc`;
CREATE TABLE `spelldifficulty_dbc` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `spellid0` int(11) unsigned NOT NULL DEFAULT '0',
  `spellid1` int(11) unsigned NOT NULL DEFAULT '0',
  `spellid2` int(11) unsigned NOT NULL DEFAULT '0',
  `spellid3` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 7816_world_spelldifficulty_dbc.sql
-- Add examples for spell difficulties
DELETE FROM `spelldifficulty_dbc` WHERE `id` IN (3000,3001);
INSERT INTO `spelldifficulty_dbc` (`id`,`spellid0`,`spellid1`,`spellid2`,`spellid3`) VALUES
(3000, 47772, 56935, 0, 0),
(3001, 47773, 56934, 0, 0);

-- 7823_world_spelldifficulty_dbc.sql
DELETE FROM `spelldifficulty_dbc` WHERE `id` BETWEEN 3002 AND 3194;
INSERT INTO `spelldifficulty_dbc` (`id`,`spellid0`,`spellid1`,`spellid2`,`spellid3`) VALUES
(3002, 44189, 46164, 0, 0), -- SPELL_FIREBALL_NORMAL / SPELL_FIREBALL_HEROIC
(3003, 44190, 46163, 0, 0), -- SPELL_FLAMESTRIKE1_NORMAL / SPELL_FLAMESTRIKE1_HEROIC
(3004, 44174, 46192, 0, 0), -- SPELL_RENEW_NORMAL / SPELL_RENEW_HEROIC
(3005, 14032, 15654, 0, 0), -- SPELL_SW_PAIN_NORMAL / SPELL_SW_PAIN_HEROIC
(3006, 44318, 46380, 0, 0), -- SPELL_CHAIN_LIGHTNING / SPELL_H_CHAIN_LIGHTNING
(3007, 44319, 46381, 0, 0), -- SPELL_ARCANE_SHOCK / SPELL_H_ARCANE_SHOCK
(3008, 52771, 58830, 0, 0), -- SPELL_WOUNDING_STRIKE / H_SPELL_WOUNDING_STRIKE
(3009, 52720, 58852, 0, 0), -- SPELL_CARRION_SWARM / H_SPELL_CARRION_SWARM
(3010, 52722, 58850, 0, 0), -- SPELL_MIND_BLAST / H_SPELL_MIND_BLAST
(3011, 52721, 58849, 0, 0), -- SPELL_SLEEP / H_SPELL_SLEEP
(3012, 52666, 58824, 0, 0), -- SPELL_DISEASE_EXPULSION / H_SPELL_DISEASE_EXPULSION
(3013, 52696, 58823, 0, 0), -- SPELL_CONSTRICTING_CHAINS / H_SPELL_CONSTRICTING_CHAINS
(3014, 57725, 58828, 0, 0), -- SPELL_SHADOW_BOLT / H_SPELL_SHADOW_BOLT
(3015, 52445, 58822, 0, 0), -- SPELL_EXORCISM_N / SPELL_EXORCISM_H
(3016, 31473, 39049, 0, 0), -- SPELL_SAND_BREATH / H_SPELL_SAND_BREATH
(3017, 31457, 38538, 0, 0), -- SPELL_ARCANE_BLAST / H_SPELL_ARCANE_BLAST
(3018, 31472, 38539, 0, 0), -- SPELL_ARCANE_DISCHARGE / H_SPELL_ARCANE_DISCHARGE
(3019, 31475, 38593, 0, 0), -- SPELL_WING_BUFFET / H_SPELL_WING_BUFFET
(3020, 56130, 59467, 0, 0), -- SPELL_BROOD_PLAGUE / H_SPELL_BROOD_PLAGUE
(3021, 57941, 59974, 0, 0), -- SPELL_MIND_FLAY / H_SPELL_MIND_FLAY
(3022, 57942, 59975, 0, 0), -- SPELL_SHADOW_BOLT_VOLLEY / H_SPELL_SHADOW_BOLT_VOLLEY
(3023, 57949, 59978, 0, 0), -- SPELL_SHIVER / H_SPELL_SHIVER
(3024, 56855, 60030, 0, 0), -- SPELL_CYCLONE_STRIKE / SPELL_CYCLONE_STRIKE_H
(3025, 55959, 59513, 0, 0), -- SPELL_EMBRACE_OF_THE_VAMPYR / H_SPELL_EMBRACE_OF_THE_VAMPYR
(3026, 55926, 59508, 0, 0), -- SPELL_FLAME_SPHERE_PERIODIC / H_SPELL_FLAME_SPHERE_PERIODIC
(3027, 53472, 59433, 0, 0), -- SPELL_POUND / H_SPELL_POUND
(3028, 53400, 59419, 0, 0), -- SPELL_ACID_CLOUD / H_SPELL_ACID_CLOUD
(3029, 53030, 59417, 0, 0), -- SPELL_LEECH_POISON / H_SPELL_LEECH_POISON
(3030, 57731, 59421, 0, 0), -- SPELL_WEB_GRAB / H_SPELL_WEB_GRAB
(3031, 52586, 59367, 0, 0), -- SPELL_MIND_FLAY / H_SPELL_MIND_FLAY
(3032, 52592, 59368, 0, 0), -- SPELL_CURSE_OF_FATIGUE / H_SPELL_CURSE_OF_FATIGUE
(3033, 52592, 59368, 0, 0), -- SPELL_CURSE_OF_FATIGUE / H_SPELL_CURSE_OF_FATIGUE
(3034, 59363, 52446, 0, 0), -- SPELL_ACID_SPLASH / H_SPELL_ACID_SPLASH
(3035, 52534, 59357, 0, 0), -- SPELL_SHADOW_BOLT / H_SPELL_SHADOW_BOLT
(3036, 52535, 59358, 0, 0), -- SPELL_SHADOW_NOVA / H_SPELL_SHADOW_NOVA
(3037, 52469, 59364, 0, 0), -- SPELL_INFECTED_BITE / H_SPELL_INFECTED_BITE
(3038, 52469, 59364, 0, 0), -- SPELL_INFECTED_BITE / H_SPELL_INFECTED_BITE
(3039, 52524, 59365, 0, 0), -- SPELL_BLINDING_WEBS / H_SPELL_BLINDING_WEBS
(3040, 52469, 59364, 0, 0), -- SPELL_INFECTED_BITE / H_SPELL_INFECTED_BITE
(3041, 52493, 59366, 0, 0), -- SPELL_POSION_SPRAY / H_SPELL_POSION_SPRAY
(3042, 66538, 67676, 0, 0), -- SPELL_HOLY_FIRE / SPELL_HOLY_FIRE_H
(3043, 66536, 67674, 0, 0), -- SPELL_SMITE / SPELL_SMITE_H
(3044, 66537, 67675, 0, 0), -- SPELL_RENEW / SPELL_RENEW_H
(3045, 66537, 67675, 0, 0), -- SPELL_RENEW / SPELL_RENEW_H
(3046, 66620, 67679, 0, 0), -- SPELL_OLD_WOUNDS / SPELL_OLD_WOUNDS_H
(3047, 66552, 67677, 0, 0), -- SPELL_WAKING_NIGHTMARE / SPELL_WAKING_NIGHTMARE_H
(3048, 66619, 67678, 0, 0), -- SPELL_SHADOWS_PAST / SPELL_SHADOWS_PAST_H
(3049, 67881, 67718, 0, 0), -- SPELL_ICY_TOUCH / SPELL_ICY_TOUCH_H
(3050, 67881, 67718, 0, 0), -- SPELL_ICY_TOUCH / SPELL_ICY_TOUCH_H
(3051, 67883, 67725, 0, 0), -- SPELL_OBLITERATE / SPELL_OBLITERATE_H
(3052, 67875, 67808, 0, 0), -- SPELL_DEATH_BITE / SPELL_DEATH_BITE_H
(3053, 67749, 67880, 0, 0), -- SPELL_LEAP / SPELL_LEAP_H
(3054, 68783, 68784, 0, 0), -- SPELL_MORTAL_STRIKE / SPELL_MORTAL_STRIKE_H
(3055, 66042, 68310, 0, 0), -- SPELL_FIREBALL / SPELL_FIREBALL_H
(3056, 66042, 68310, 0, 0), -- SPELL_FIREBALL / SPELL_FIREBALL_H
(3057, 66043, 68311, 0, 0), -- SPELL_POLYMORPH / SPELL_POLYMORPH_H
(3058, 66044, 68312, 0, 0), -- SPELL_BLAST_WAVE / SPELL_BLAST_WAVE_H
(3059, 67529, 68319, 0, 0), -- SPELL_CHAIN_LIGHTNING / SPELL_CHAIN_LIGHTNING_H
(3060, 67528, 68318, 0, 0), -- SPELL_HEALING_WAVE / SPELL_HEALING_WAVE_H
(3061, 67528, 68318, 0, 0), -- SPELL_HEALING_WAVE / SPELL_HEALING_WAVE_H
(3062, 65868, 67988, 0, 0), -- SPELL_SHOOT / SPELL_SHOOT_H
(3063, 67709, 68317, 0, 0), -- SPELL_EVISCERATE / SPELL_EVISCERATE_H
(3064, 48849, 59422, 0, 0), -- SPELL_FEARSOME_ROAR / H_SPELL_FEARSOME_ROAR
(3065, 49527, 59972, 0, 0), -- SPELL_CURSE_OF_LIFE / H_SPELL_CURSE_OF_LIFE
(3066, 49528, 59973, 0, 0), -- SPELL_SHADOW_VOLLEY / H_SPELL_SHADOW_VOLLEY
(3067, 49518, 59971, 0, 0), -- SPELL_RAIN_OF_FIRE / H_SPELL_RAIN_OF_FIRE
(3068, 49537, 59963, 0, 0), -- SPELL_LIGHTNING_BREATH / H_SPELL_LIGHTNING_BREATH
(3069, 49544, 59965, 0, 0), -- SPELL_EYE_BEAM / H_SPELL_EYE_BEAM
(3070, 49548, 59969, 0, 0), -- SPELL_POISON_CLOUD / H_SPELL_POISON_CLOUD
(3071, 59803, 49381, 0, 0), -- SPELL_CONSUME / H_SPELL_CONSUME
(3072, 49555, 59807, 0, 0), -- SPELL_CORPSE_EXPLODE / H_SPELL_CORPSE_EXPLODE
(3073, 68793, 69050, 0, 0), -- SPELL_MAGIC_S_BANE / H_SPELL_MAGIC_S_BANE
(3074, 68858, 69047, 0, 0), -- SPELL_CONSUME_SOUL / H_SPELL_CONSUME_SOUL
(3075, 68982, 70322, 0, 0), -- SPELL_PHANTOM_BLAST / H_SPELL_PHANTOM_BLAST
(3076, 68895, 70212, 0, 0), -- SPELL_SPITE / H_SPELL_SPITE
(3077, 69148, 70210, 0, 0), -- SPELL_WAIL_OF_SOULS / H_SPELL_WAIL_OF_SOULS
(3078, 69060, 70209, 0, 0), -- SPELL_FROST_NOVA / H_SPELL_FROST_NOVA
(3079, 69080, 70206, 0, 0), -- SPELL_BONE_VOLLEY / H_SPELL_BONE_VOLLEY
(3080, 69069, 70207, 0, 0), -- SPELL_SHIELD_OF_BONES / H_SPELL_SHIELD_OF_BONES
(3081, 69068, 70208, 0, 0), -- SPELL_SHADOW_BOLT / H_SPELL_SHADOW_BOLT
(3082, 69068, 70208, 0, 0), -- SPELL_SHADOW_BOLT / H_SPELL_SHADOW_BOLT
(3083, 69066, 70213, 0, 0), -- SPELL_DRAIN_LIFE / H_SPELL_DRAIN_LIFE
(3084, 69564, 70205, 0, 0), -- SPELL_SHADOW_MEND / H_SPELL_SHADOW_MEND
(3085, 69088, 70211, 0, 0), -- SPELL_SOUL_STRIKE / H_SPELL_SOUL_STRIKE
(3086, 68774, 70334, 0, 0), -- SPELL_FORGE_BLADE / H_SPELL_FORGE_BLADE
(3087, 68785, 70335, 0, 0), -- SPELL_FORGE_MACE / H_SPELL_FORGE_MACE
(3088, 70381, 72930, 0, 0), -- SPELL_DEEP_FREEZE / H_SPELL_DEEP_FREEZE
(3089, 68778, 70333, 0, 0), -- SPELL_CHILLING_WAVE / H_SPELL_CHILLING_WAVE
(3090, 68989, 70434, 0, 0), -- SPELL_POISON_NOVA / H_SPELL_POISON_NOVA
(3091, 69024, 70436, 0, 0), -- SPELL_TOXIC_WASTE / H_SPELL_TOXIC_WASTE
(3092, 69155, 69627, 0, 0), -- SPELL_FORCEFUL_SMASH / H_SPELL_FORCEFUL_SMASH
(3093, 69167, 69629, 0, 0), -- SPELL_DARK_MIGHT / H_SPELL_DARK_MIGHT
(3094, 69233, 69646, 0, 0), -- SPELL_ICY_BLAST / H_SPELL_ICY_BLAST
(3095, 69238, 69628, 0, 0), -- SPELL_ICY_BLAST_2 / H_SPELL_ICY_BLAST_2
(3096, 55626, 58993, 0, 0), -- SPELL_MOJO_WAVE / H_SPELL_MOJO_WAVE
(3097, 55627, 58994, 0, 0), -- SPELL_MOJO_PUDDLE / H_SPELL_MOJO_PUDDLE
(3098, 55250, 59824, 0, 0), -- SPELL_WHIRLING_SLASH / H_SPELL_WHIRLING_SLASH
(3099, 55276, 59826, 0, 0), -- SPELL_PUNCTURE / H_SPELL_PUNCTURE
(3100, 55285, 59828, 0, 0), -- SPELL_ENRAGE / H_SPELL_ENRAGE
(3101, 55292, 59829, 0, 0), -- SPELL_STOMP / H_SPELL_STOMP
(3102, 54956, 59827, 0, 0), -- SPELL_IMPALING_CHARGE / H_SPELL_IMPALING_CHARGE
(3103, 55102, 59444, 0, 0), -- SPELL_DETERMINED_GORE / H_SPELL_DETERMINED_GORE
(3104, 55081, 59842, 0, 0), -- SPELL_POISON_NOVA / H_SPELL_POISON_NOVA
(3105, 48287, 59840, 0, 0), -- SPELL_POWERFULL_BITE / H_SPELL_POWERFULL_BITE
(3106, 54970, 59839, 0, 0), -- SPELL_VENOM_BOLT / H_SPELL_VENOM_BOLT
(3107, 54987, 58996, 0, 0), -- SPELL_VENOMOUS_BITE / H_SPELL_VENOMOUS_BITE
(3108, 47751, 57062, 0, 0), -- SPELL_SPARK / H_SPELL_SPARK
(3109, 48096, 57091, 0, 0), -- SPELL_CRYSTALFIRE_BREATH / H_SPELL_CRYSTALFIRE_BREATH
(3110, 48016, 57066, 0, 0), -- SPELL_TRAMPLE / H_SPELL_TRAMPLE
(3111, 47944, 57067, 0, 0), -- SPELL_CRYSTALL_SPIKE_DAMAGE / H_SPELL_CRYSTALL_SPIKE_DAMAGE
(3112, 50774, 59370, 0, 0), -- SPELL_THUNDERING_STOMP / SPELL_THUNDERING_STOMP_H
(3113, 52774, 59160, 0, 0), -- SPELL_RENEW_STEEL_N / SPELL_RENEW_STEEL_H
(3114, 52658, 59795, 0, 0), -- SPELL_STATIC_OVERLOAD / H_SPELL_STATIC_OVERLOAD
(3115, 52780, 59800, 0, 0), -- SPELL_BALL_LIGHTNING / H_SPELL_BALL_LIGHTNING
(3116, 52961, 59836, 0, 0), -- SPELL_PULSING_SHOCKWAVE_N / SPELL_PULSING_SHOCKWAVE_H
(3117, 52960, 59835, 0, 0), -- SPELL_LIGHTNING_NOVA_N / SPELL_LIGHTNING_NOVA_H
(3118, 52237, 59529, 0, 0), -- SPELL_SHATTERING_STOMP_N / SPELL_SHATTERING_STOMP_H
(3119, 52433, 59530, 0, 0), -- SPELL_IMMOLATION_STRIKE_N / SPELL_IMMOLATION_STRIKE_H
(3120, 50843, 59742, 0, 0), -- SPELL_BOULDER_TOSS / H_SPELL_BOULDER_TOSS
(3121, 48131, 59744, 0, 0), -- SPELL_STOMP / H_SPELL_STOMP
(3122, 50810, 61546, 0, 0), -- SPELL_SHATTER / H_SPELL_SHATTER
(3123, 50752, 59772, 0, 0), -- SPELL_STORM_OF_GRIEF_N / SPELL_STORM_OF_GRIEF_H
(3124, 50760, 59726, 0, 0), -- SPELL_SHOCK_OF_SORROW_N / SPELL_SHOCK_OF_SORROW_H
(3125, 50761, 59727, 0, 0), -- SPELL_PILLAR_OF_WOE_N / SPELL_PILLAR_OF_WOE_H
(3126, 50761, 59727, 0, 0), -- SPELL_PILLAR_OF_WOE_N / SPELL_PILLAR_OF_WOE_H
(3127, 50830, 59844, 0, 0), -- SPELL_CHAIN_LIGHTING / H_SPELL_CHAIN_LIGHTING
(3128, 50831, 59845, 0, 0), -- SPELL_LIGHTING_SHIELD / H_SPELL_LIGHTING_SHIELD
(3129, 50834, 59846, 0, 0), -- SPELL_STATIC_CHARGE / H_SPELL_STATIC_CHARGE
(3130, 51849, 59861, 0, 0), -- SPELL_LIGHTING_RING / H_SPELL_LIGHTING_RING
(3131, 42730, 59735, 0, 0), -- SPELL_WOE_STRIKE / H_SPELL_WOE_STRIKE
(3132, 42669, 59706, 0, 0), -- SPELL_SMASH / H_SPELL_SMASH
(3133, 42705, 59707, 0, 0), -- SPELL_ENRAGE / H_SPELL_ENRAGE
(3134, 42729, 59734, 0, 0), -- SPELL_DREADFUL_ROAR / H_SPELL_DREADFUL_ROAR
(3135, 42708, 59708, 0, 0), -- SPELL_STAGGERING_ROAR / H_SPELL_STAGGERING_ROAR
(3136, 42750, 59719, 0, 0), -- SPELL_SHADOW_AXE_DAMAGE / H_SPELL_SHADOW_AXE_DAMAGE
(3137, 43649, 59575, 0, 0), -- SPELL_SHADOW_BOLT / H_SPELL_SHADOW_BOLT
(3138, 48261, 59268, 0, 0), -- SPELL_IMPALE / H_SPELL_IMPALE
(3139, 48256, 59267, 0, 0), -- SPELL_WITHERING_ROAR / H_SPELL_WITHERING_ROAR
(3140, 48140, 59273, 0, 0), -- SPELL_CHAIN_LIGHTING / H_SPELL_CHAIN_LIGHTING
(3141, 48137, 59265, 0, 0), -- SPELL_MORTAL_WOUND / H_SPELL_MORTAL_WOUND
(3142, 48130, 59264, 0, 0), -- SPELL_GORE / H_SPELL_GORE
(3143, 48105, 59263, 0, 0), -- SPELL_GRIEVOUS_WOUND / H_SPELL_GRIEVOUS_WOUND
(3144, 48133, 59271, 0, 0), -- SPELL_POISON_BREATH / H_SPELL_POISON_BREATH
(3145, 48133, 59271, 0, 0), -- SPELL_POISON_BREATH / H_SPELL_POISON_BREATH
(3146, 50234, 59330, 0, 0), -- SPELL_CRUSH / H_SPELL_CRUSH
(3147, 50225, 59331, 0, 0), -- SPELL_POISONED_SPEAR / H_SPELL_POISONED_SPEAR
(3148, 15667, 59409, 0, 0), -- SPELL_SINSTER_STRIKE / H_SPELL_SINSTER_STRIKE
(3149, 48294, 59301, 0, 0), -- SPELL_BANE / H_SPELL_BANE
(3150, 48291, 59300, 0, 0), -- SPELL_FETID_ROT / H_SPELL_FETID_ROT
(3151, 48423, 59304, 0, 0), -- SPELL_SPIRIT_STRIKE / H_SPELL_SPIRIT_STRIKE
(3152, 48529, 59305, 0, 0), -- SPELL_SPIRIT_BURST / H_SPELL_SPIRIT_BURST
(3153, 58693, 59369, 0, 0), -- SPELL_BLIZZARD / H_SPELL_BLIZZARD
(3154, 58690, 59283, 0, 0), -- SPELL_TAIL_SWEEP / H_SPELL_TAIL_SWEEP
(3155, 58688, 59281, 0, 0), -- SPELL_UNCONTROLLABLE_ENERGY / H_SPELL_UNCONTROLLABLE_ENERGY
(3156, 54479, 59471, 0, 0), -- SPELL_EARTH_SHIELD / H_SPELL_EARTH_SHIELD
(3157, 54479, 59471, 0, 0), -- SPELL_EARTH_SHIELD / H_SPELL_EARTH_SHIELD
(3158, 54481, 59473, 0, 0), -- SPELL_CHAIN_HEAL / H_SPELL_CHAIN_HEAL
(3159, 54312, 59522, 0, 0), -- SPELL_FRENZY / SPELL_FRENZY_H
(3160, 54237, 59520, 0, 0), -- SPELL_WATER_BLAST / SPELL_WATER_BLAST_H
(3161, 54241, 59521, 0, 0), -- SPELL_WATER_BOLT_VOLLEY / SPELL_WATER_BOLT_VOLLEY_H
(3162, 54235, 59468, 0, 0), -- SPELL_FIREBOLT / H_SPELL_FIREBOLT
(3163, 54282, 59469, 0, 0), -- SPELL_FLAME_BREATH / H_SPELL_FLAME_BREATH
(3164, 54249, 59594, 0, 0), -- SPELL_LAVA_BURN / H_SPELL_LAVA_BURN
(3165, 54202, 59483, 0, 0), -- SPELL_ARCANE_BARRAGE_VOLLEY / SPELL_ARCANE_BARRAGE_VOLLEY_H
(3166, 54226, 59485, 0, 0), -- SPELL_ARCANE_BUFFET / SPELL_ARCANE_BUFFET_H
(3167, 54160, 59474, 0, 0), -- SPELL_ARCANE_POWER / H_SPELL_ARCANE_POWER
(3168, 54361, 59743, 0, 0), -- SPELL_VOID_SHIFT / H_SPELL_VOID_SHIFT
(3169, 54524, 59745, 0, 0), -- SPELL_SHROUD_OF_DARKNESS / H_SPELL_SHROUD_OF_DARKNESS
(3170, 54342, 59747, 0, 0), -- SPELL_ZURAMAT_ADD_2 / H_SPELL_ZURAMAT_ADD_2
(3171, 32325, 38760, 0, 0), -- SPELL_VOID_BLAST / H_SPELL_VOID_BLAST
(3172, 32358, 38759, 0, 0), -- SPELL_DARK_SHELL / H_SPELL_DARK_SHELL
(3173, 38197, 40425, 0, 0), -- SPELL_ARCANE_EXPLOSION / H_SPELL_ARCANE_EXPLOSION
(3174, 35059, 40424, 0, 0), -- SPELL_ARCANE_VOLLEY / H_SPELL_ARCANE_VOLLEY
(3175, 38245, 43309, 0, 0), -- SPELL_POLYMORPH / H_SPELL_POLYMORPH
(3176, 33617, 39363, 0, 0), -- SPELL_RAIN_OF_FIRE / H_SPELL_RAIN_OF_FIRE
(3177, 34449, 37924, 0, 0), -- SPELL_WATER_BOLT_VOLLEY / H_SPELL_WATER_BOLT_VOLLEY
(3178, 31532, 37936, 0, 0), -- SPELL_REPAIR / H_SPELL_REPAIR
(3179, 33132, 37371, 0, 0), -- SPELL_FIRE_NOVA / H_SPELL_FIRE_NOVA
(3180, 28599, 40070, 0, 0), -- SPELL_SHADOW_BOLT_VOLLEY / H_SPELL_SHADOW_BOLT_VOLLEY
(3181, 49381, 59805, 0, 0), -- SPELL_CONSUME_AURA / H_SPELL_CONSUME_AURA
(3182, 30695, 37566, 0, 0), -- SPELL_TREACHEROUS_AURA / H_SPELL_BANE_OF_TREACHERY
(3183, 30686, 39297, 0, 0), -- SPELL_SHADOW_BOLT / H_SPELL_SHADOW_BOLT
(3184, 30641, 36814, 0, 0), -- SPELL_MORTAL_WOUND / H_SPELL_MORTAL_WOUND
(3185, 30495, 35953, 0, 0), -- SPELL_SHADOW_CLEAVE / H_SPELL_SHADOW_SLAM
(3186, 30598, 36056, 0, 0), -- SPELL_BURNING_MAUL / H_SPELL_BURNING_MAUL
(3187, 36924, 39017, 0, 0), -- SPELL_MIND_REND / H_SPELL_MIND_REND
(3188, 36924, 39017, 0, 0), -- SPELL_MIND_REND / H_SPELL_MIND_REND
(3189, 37162, 39019, 0, 0), -- SPELL_DOMINATION / H_SPELL_DOMINATION
(3190, 37162, 39019, 0, 0), -- SPELL_DOMINATION / H_SPELL_DOMINATION
(3191, 35322, 39193, 0, 0), -- SPELL_SHADOW_POWER / H_SPELL_SHADOW_POWER
(3192, 35327, 39194, 0, 0), -- SPELL_JACKHAMMER / H_SPELL_JACKHAMMER
(3193, 35275, 39084, 0, 0), -- SPELL_SUMMON_RAGIN_FLAMES / H_SPELL_SUMMON_RAGIN_FLAMES
(3194, 35268, 39346, 0, 0); -- SPELL_INFERNO / H_SPELL_INFERNO

-- 7846_world_spell_dbc.sql
ALTER TABLE spell_dbc DROP EffectBaseDice1;
ALTER TABLE spell_dbc DROP EffectBaseDice2;
ALTER TABLE spell_dbc DROP EffectBaseDice3;
ALTER TABLE spell_dbc DROP EffectDicePerLevel1;
ALTER TABLE spell_dbc DROP EffectDicePerLevel2;
ALTER TABLE spell_dbc DROP EffectDicePerLevel3;

-- 7854_world_spell_goup.sql
DELETE FROM `spell_group` WHERE `spell_id` IN (61417, 61418);

-- 7854_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (58642, 58676, 61433, 61434, 33174, 33182, 51470, 44396, 29801, 30802, 30803, 30804, 30805, 30808, 30809, 49137, 49657, 51466, 53137, 53138, 44394, 44395, 44396, 34457);

-- 7854_world_spell_ranks.sql
DELETE FROM `spell_ranks` WHERE `first_spell_id` IN (30803, 33174, 61417, 9736, 15742);

-- 7881_world_spell_linked_spell.sql
DELETE FROM `spell_linked_spell` WHERE `spell_effect` IN (24395,24396,24397,26592,61417,61418);

-- 7884_world_spell_dbc.sql
-- Add serverside spells place holders for future development
DELETE FROM `spell_dbc` WHERE `Id` IN (71356,71803,72111,72125,70816,72233,72234,72235);
INSERT INTO `spell_dbc` (`Id`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectMiscValueB1`,`EffectMiscValueB2`,`EffectMiscValueB3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`EffectSpellClassMaskA1`,`EffectSpellClassMaskA2`,`EffectSpellClassMaskA3`,`EffectSpellClassMaskB1`,`EffectSpellClassMaskB2`,`EffectSpellClassMaskB3`,`EffectSpellClassMaskC1`,`EffectSpellClassMaskC2`,`EffectSpellClassMaskC3`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`SpellFamilyFlags3`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`DmgMultiplier3`,`AreaGroupId`,`SchoolMask`,`Comment`) VALUES
(71356,  0,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spelldifficulty_dbc id:2108 spellid0 serverside spell'),
(71803,  0,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spelldifficulty_dbc id:2108 spellid1 serverside spell'),
(72111,  0,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spelldifficulty_dbc id:2136 spellid0 serverside spell'),
(72125,  0,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spelldifficulty_dbc id:2136 spellid1 serverside spell'),
(70816,  0,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spelldifficulty_dbc id:2146 spellid0 serverside spell'),
(72233,  0,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spelldifficulty_dbc id:2146 spellid1 serverside spell'),
(72234,  0,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spelldifficulty_dbc id:2146 spellid2 serverside spell'),
(72235,  0,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spelldifficulty_dbc id:2146 spellid3 serverside spell');

-- 7884_world_spelldifficulty_dbc.sql
UPDATE `spelldifficulty_dbc` SET `spellid1`=58827 WHERE `id`=3014;

-- 7922_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (66191,66192);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(66191, 0x00,  15, 0x00400010, 0x20020004, 0x00000000, 0x00000010, 0x00000000,   0, 100,   0), -- Threat of Thassarian (Rank 2)
(66192, 0x00,  15, 0x00400010, 0x20020004, 0x00000000, 0x00000010, 0x00000000,   0, 100,   0); -- Threat of Thassarian (Rank 3)

-- ------------- --
-- TrinityScript --
-- ------------- --

-- 7721_world_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` <= -1595000 and `entry` >= -1595999;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
-- Chrono Lord Epoch
(26532,-1595000,'Prince Arthas Menethil, on this day, a powerful darkness has taken hold of your soul. The death you are destined to visit upon others will this day be your own.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13408,1,0,0,'epoch SAY_INTRO | culling SAY_PHASE314'),
(26532,-1595001,'We''ll see about that, young prince.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13409,1,0,0,'epoch SAY_AGGRO'),
(26532,-1595002,'Tick tock, tick tock...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13410,1,0,0,'epoch SAY_TIME_WARP_1'),
(26532,-1595003,'Not quick enough!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13411,1,0,0,'epoch SAY_TIME_WARP_2'),
(26532,-1595004,'Let''s get this over with. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13412,1,0,0,'epoch SAY_TIME_WARP_3'),
(26532,-1595005,'There is no future for you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13413,1,0,0,'epoch SAY_SLAY_1'),
(26532,-1595006,'This is the hour of our greatest triumph!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13414,1,0,0,'epoch SAY_SLAY_2'),
(26532,-1595007,'You were destined to fail.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13415,1,0,0,'epoch SAY_SLAY_3'),
(26532,-1595008,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13416,0,0,0,'epoch SAY_DEATH'),
-- Mal'Ganis
(26533,-1595009,'Yes, this is the beginning. I''ve been waiting for you, young prince. I am Mal''Ganis.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14410,0,0,1,'mal_ganis SAY_INTRO_1 | culling SAY_PHASE206'),
(26533,-1595010,'As you can see, your people are now mine. I will now turn this city household by household, until the flame of life has been snuffed out... forever.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14411,0,0,1,'mal_ganis SAY_INTRO_2 | culling SAY_PHASE207'),
(26533,-1595011,'This will be a fine test...Prince Arthas...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14413,1,0,0,'mal_ganis SAY_AGGRO'),
(26533,-1595012,'All too easy...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14416,1,0,0,'mal_ganis SAY_KILL_1'),
(26533,-1595013,'The dark lord is displeased with your interference...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14417,1,0,0,'mal_ganis SAY_KILL_2'),
(26533,-1595014,'It is Prince Arthas I want... not you...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14418,1,0,0,'mal_ganis SAY_KILL_3'),
(26533,-1595015,'Anak''Keri...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14422,1,0,0,'mal_ganis SAY_SLAY_1'),
(26533,-1595016,'My onslaught will wash over the Lich King''s forces...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14423,1,0,0,'mal_ganis SAY_SLAY_2'),
(26533,-1595017,'Your death is in vain, tiny mortal...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14424,1,0,0,'mal_ganis SAY_SLAY_3'),
(26533,-1595018,'Your time has come to an end!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14425,1,0,0,'mal_ganis SAY_SLAY_4'),
(26533,-1595019,'Time out...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14414,1,0,0,'mal_ganis SAY_SLEEP_1'),
(26533,-1595020,'You seem...tired...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14415,1,0,0,'mal_ganis SAY_SLEEP_2'),
(26533,-1595021,'I spent too much time in that weak little shell...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14426,1,0,0,'mal_ganis SAY_30HEALTH'),
(26533,-1595022,'(Eredun) I AM MAL''GANIS! I AM ETERNAL!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14427,1,0,0,'mal_ganis SAY_15HEALTH'),
(26533,-1595023,'ENOUGH! I waste my time here...I must gather my strength on the home world...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14428,1,0,0,'mal_ganis SAY_ESCAPE_SPEECH_1'),
(26533,-1595024,'You''ll never defeat the Lich King without my forces! I''ll have my revenge...on him, AND you...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14429,1,0,0,'mal_ganis SAY_ESCAPE_SPEECH_2'),
(26533,-1595025,'Your journey has just begun, young prince. Gather your forces and meet me in the artic land of Northrend. It is there that we shall settle the score between us. It is there that your true destiny will unfold.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14412,1,0,1,'mal_ganis SAY_OUTRO'),
-- Meathook
(26529,-1595026,'Play time!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13428,1,0,0,'meathook SAY_AGGRO'),
(26529,-1595027,'Boring...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13430,1,0,0,'meathook SAY_SLAY_1'),
(26529,-1595028,'Why you stop moving?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13431,1,0,0,'meathook SAY_SLAY_2'),
(26529,-1595029,'Get up! Me not done!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13432,1,0,0,'meathook SAY_SLAY_3'),
(26529,-1595030,'New toys!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13429,1,0,0,'meathook SAY_SPAWN'),
(26529,-1595031,'This... not fun...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13433,1,0,0,'meathook SAY_DEATH'),
-- Salramm the Fleshcrafter 
(26530,-1595032,'Ah, the entertainment has arrived!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13472,1,0,0,'salramm SAY_AGGRO'),
(26530,-1595033,'You are too late, champion of Lordaeron. The dead shall have their day.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13471,1,0,0,'salramm SAY_SPAWN'),
(26530,-1595034,'The fun is just beginning!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13473,1,0,0,'salramm SAY_SLAY_1'),
(26530,-1595035,'Aah, quality materials!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13474,1,0,0,'salramm SAY_SLAY_2'),
(26530,-1595036,'Don''t worry, I''ll make good use of you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13475,1,0,0,'salramm SAY_SLAY_3'),
(26530,-1595037,'You only advance... the master''s plan...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13483,1,0,0,'salramm SAY_DEATH'),
(26530,-1595038,'BOOM! Hahahahah...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13478,1,0,0,'salramm SAY_EXPLODE_GHOUL_1'),
(26530,-1595039,'Blood... destruction... EXHILARATING!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13479,1,0,0,'salramm SAY_EXPLODE_GHOUL_2'),
(26530,-1595040,'I want a sample...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13480,1,0,0,'salramm SAY_STEAL_FLESH_1'),
(26530,-1595041,'Such strength... it must be mine!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13481,1,0,0,'salramm SAY_STEAL_FLESH_2'),
(26530,-1595042,'Your flesh betrays you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13482,1,0,0,'salramm SAY_STEAL_FLESH_3'),
(26530,-1595043,'Say hello to some friends of mine.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13476,1,0,0,'salramm SAY_SUMMON_GHOULS_1'),
(26530,-1595044,'Come, citizen of Stratholme! Meet your saviors.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13477,1,0,0,'salramm SAY_SUMMON_GHOULS_2'),
-- The Infinite Corruptor 
-- Couldn't find the value from the audios for `sound` column, not added.
(32273,-1595045,'How dare you interfere with our work here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'infinite SAY_AGGRO'),
(32273,-1595046,'My work here is finished!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'infinite SAY_FAIL'),
(32273,-1595047,'My time... has run out...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'infinite SAY_DEATH'),
-- First Act - Uther and Jaina Dialog
-- Outside the city, Arthas, Uther and Jaina dialog
(26499,-1595070,'Glad you could make it, Uther.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12828,0,0,1,'culling SAY_PHASE101'),
(26528,-1595071,'Watch your tone with me, boy. You may be the prince, but I''m still your superior as a paladin!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12839,0,0,25,'culling SAY_PHASE102'),
(26499,-1595072,'As if I could forget. Listen, Uther, there''s something about the plague you should know... ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12829,0,0,0,'culling SAY_PHASE103'),
(26499,-1595073,'Oh, no. We''re too late. These people have all been infected! They may look fine now, but it''s just a matter of time before they turn into the undead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12830,0,0,1,'culling SAY_PHASE104'),
(26528,-1595074,'What?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12840,0,0,5,'culling SAY_PHASE105'),
(26499,-1595075,'This entire city must be purged.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12831,0,0,1,'culling SAY_PHASE106'),
(26528,-1595076,'How can you even consider that? There''s got to be some other way.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12841,0,0,1,'culling SAY_PHASE107'),
(26499,-1595077,'Damn it, Uther! As your future king, I order you to purge this city!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12832,1,0,5,'culling SAY_PHASE108'),
(26528,-1595078,'You are not my king yet, boy! Nor would I obey that command even if you were!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12842,1,0,22,'culling SAY_PHASE109'),
(26499,-1595079,'Then I must consider this an act of treason.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12833,0,0,0,'culling SAY_PHASE110'),
(26528,-1595080,'Treason? Have you lost your mind, Arthas?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12843,0,0,5,'culling SAY_PHASE111'),
(26499,-1595081,'Have I? Lord Uther, by my right of succession and the sovereignty of my crown, I hereby relieve you of your command and suspend your paladins from service.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12834,0,0,1,'culling SAY_PHASE112'),
(26497,-1595082,'Arthas! You can''t just--',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12837,0,0,1,'culling SAY_PHASE113'),
(26499,-1595083,'It''s done! Those of you who have the will to save this land, follow me! The rest of you... get out of my sight!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12835,0,0,0,'culling SAY_PHASE114'),
(26528,-1595084,'You''ve just crossed a terrible threshold, Arthas.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12844,0,0,25,'culling SAY_PHASE115'),
(26499,-1595085,'Jaina?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12836,0,0,1,'culling SAY_PHASE116'),
(26497,-1595086,'I''m sorry, Arthas. I can''t watch you do this.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12838,0,0,1,'culling SAY_PHASE117'),
(26499,-1595087,'Take position here, and I will lead a small force inside Stratholme to begin the culling. We must contain and purge the infected for the sake of all Lordaeron!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14327,0,0,1,'culling SAY_PHASE118'),
-- Second Act - City Streets
-- Arthas enters the city and dialog with Mal'Ganis
-- After defeating 2 bosses he runs to Town Hall
(26499,-1595088,'Everyone looks ready. Remember, these people are all infected with the plague and will die soon. We must purge Stratholme to protect the remainder of Lordaeron from the Scourge. Let''s go.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14293,0,0,1,'culling SAY_PHASE201'),
(0,-1595089,'Prince Arthas, may the light be praised! Many people in the town have begun to fall seriously ill, can you help us?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'culling SAY_PHASE202'),
(26499,-1595090,'I can only help you with a clean death.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14294,0,0,0,'culling SAY_PHASE203'),
(0,-1595091,'What? This can''t be!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'culling SAY_PHASE204'),
(26499,-1595092,'That was just the beginning.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14295,0,0,1,'culling SAY_PHASE205'),
(26499,-1595093,'I won''t allow it, Mal''Ganis! Better that these people die by my hand than serve as your slaves in death!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14296,0,0,5,'culling SAY_PHASE208'),
(26499,-1595094,'Mal''ganis will send out some of his Scourge minions to interfere with us. Those of you with the strongest steel and magic shall go forth and destroy them. I will lead the rest of my forces in purging Stratholme of the infected.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14885,0,0,1,'culling SAY_PHASE209'),
(26499,-1595095,'Champions, meet me at town hall at once! We must take the fight to Mal''Ganis.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14297,0,0,1,'culling SAY_PHASE210'),
-- Third Act - Town Hall
(26499,-1595096,'Follow me. I know the way trought.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14298,0,0,1,'culling SAY_PHASE301'),
(0,-1595097,'Ah, you''ve finally arrived Prince Arthas. You''re just in the nick of time.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'culling SAY_PHASE302'),
(26499,-1595098,'Yes, I''m glad i could get you before the plague.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14299,0,0,1,'culling SAY_PHASE303'),
(26499,-1595099,'What is this sorcery?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14300,0,0,0,'culling SAY_PHASE304'),
(0,-1595100,'There''s no need for you to understand, Arthas. All you need to do is die!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'culling SAY_PHASE305'),
(26499,-1595101,'Mal''Ganis appears to have more than scourge in his arsenal. We should make haste.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14301,0,0,0,'culling SAY_PHASE306'),
(26499,-1595102,'More vile sorcery! Be ready for anything.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14302,0,0,0,'culling SAY_PHASE307'),
(26499,-1595103,'Let''s move on.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14303,0,0,0,'culling SAY_PHASE308'),
(26499,-1595104,'Watch your backs... they have us surrounded in this hall.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14304,0,0,0,'culling SAY_PHASE309'),
(26499,-1595105,'One less obstacle to deal with.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'culling SAY_PHASE310'),
(26499,-1595106,'Mal''Ganis is not making this easy...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14305,0,0,0,'culling SAY_PHASE311'),
(26499,-1595107,'They''re very persistent.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14306,0,0,0,'culling SAY_PHASE312'),
(26499,-1595108,'What else can be put in my way?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14307,0,0,0,'culling SAY_PHASE313'),
(26499,-1595109,'I do what i must for Lordaeron. And neither your words nor your actions will stop me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14309,0,0,5,'culling SAY_PHASE315'),
-- Fourth Act - Fire Corridor
(26499,-1595110,'The quickest path to Mal''Ganis lays behind that bookshelf ahead.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14308,0,0,0,'culling SAY_PHASE401'),
(26499,-1595111,'This will only take a moment.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14310,0,0,0,'culling SAY_PHASE402'),
(26499,-1595112,'I believe that secret passage still works!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14311,0,0,0,'culling SAY_PHASE403'),
(26499,-1595113,'Let''s move trought here as quickly as possible. If the undead don''t kill us the fires might.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14312,0,0,0,'culling SAY_PHASE404'),
(26499,-1595114,'Rest a moment and clear your lungs. But we must move again soon.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14313,0,0,0,'culling SAY_PHASE405'),
(26499,-1595115,'That''s enough, we must move again. Mal''Ganis awaits.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14314,0,0,0,'culling SAY_PHASE406'),
(26499,-1595116,'At last some good luck, Market Row has not caught fire yet. Mal''Ganis is supposed to be on Crusader Square which is just ahead. Tell me when you''re ready to move forth.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14315,0,0,0,'culling SAY_PHASE407'),
-- Fifth Act - Mal'Ganis Fight
(26499,-1595117,'Justice will be done!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14316,0,0,0,'culling SAY_PHASE501'),
(26499,-1595118,'We''re going to finish this right now Mal''Ganis... just you and me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14317,0,0,0,'culling SAY_PHASE502'),
(26499,-1595119,'I''ll hunt you to the ends of the earth if I have to! Do you hear me? To the ends of the earth!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14318,1,0,5,'culling SAY_PHASE503'),
(26499,-1595120,'You performed well this day. Anything that Mal''Ganis has left behind is yours. Take it as your reward. I must now begin plans for an expedition to Northrend.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14319,0,0,5,'culling SAY_PHASE504');

-- script_texts for boss_epoch_hunter have wrong comment (epoch instead of epoch_hunter)
-- This generates ambiguities with boss_epoch script_texts just introduced
-- The following queries eliminate script_texts comment conflict from boss_epoch and boss_epoch_hunter
UPDATE `script_texts` SET `comment`= 'epoch_hunter SAY_ENTER1' WHERE `entry`=-1560013;
UPDATE `script_texts` SET `comment`= 'epoch_hunter SAY_ENTER2' WHERE `entry`=-1560014;
UPDATE `script_texts` SET `comment`= 'epoch_hunter SAY_ENTER3' WHERE `entry`=-1560015;
UPDATE `script_texts` SET `comment`= 'epoch_hunter SAY_AGGRO1' WHERE `entry`=-1560016;
UPDATE `script_texts` SET `comment`= 'epoch_hunter SAY_AGGRO2' WHERE `entry`=-1560017;
UPDATE `script_texts` SET `comment`= 'epoch_hunter SAY_SLAY1' WHERE `entry`=-1560018;
UPDATE `script_texts` SET `comment`= 'epoch_hunter SAY_SLAY2' WHERE `entry`=-1560019;
UPDATE `script_texts` SET `comment`= 'epoch_hunter SAY_BREATH1' WHERE `entry`=-1560020;
UPDATE `script_texts` SET `comment`= 'epoch_hunter SAY_BREATH2' WHERE `entry`=-1560021;
UPDATE `script_texts` SET `comment`= 'epoch_hunter SAY_DEATH' WHERE `entry`=-1560022;

-- 7721_world_script_waypoints.sql
-- script_waypoints for Arthas movements inside Culling
DELETE FROM `script_waypoint` WHERE `entry`=26499;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES
(26499,0,1903.167,1291.573,143.32,0, 'culling Bridge WP1'),
(26499,1,1911.087,1314.263,150.026,0, 'culling Bridge WP2'),
(26499,2,1902.959,1295.127,143.388,10000, 'culling Bridge WP3'),
(26499,3,1913.726,1287.407,141.927,0, 'culling Bridge WP4'),
(26499,4,1990.833,1293.391,145.467,0, 'culling Bridge WP5'),
(26499,5,1997.003,1317.776,142.963,0, 'culling Bridge WP6'),
(26499,6,2019.631,1326.084,142.929,0, 'culling Bridge WP7'),
(26499,7,2026.469,1287.088,143.596,0, 'culling Bridge WP8'),
(26499,8,2050.660,1287.333,142.671,0, 'culling Bridge WP9'),
(26499,9,2081.447,1287.770,141.324,0, 'culling Streets WP1'),
(26499,10,2087.689,1280.344,140.730,0, 'culling Streets WP2'),
(26499,11,2092.154,1276.645,140.520,0, 'culling Streets WP3'),
(26499,12,2099.876,1280.21,138.55,0, 'culling Streets WP4'),
(26499,13,2120.757,1286.97,136.343,0, 'culling Streets WP5'),
(26499,14,2165.073,1279.338,133.40,0, 'culling Streets WP6'),
(26499,15,2186.441,1234.445,136.524,0, 'culling Streets WP7'),
(26499,16,2210.385,1207.550,136.259,0, 'culling Streets WP8'),
(26499,17,2243.594,1177.705,137.144,0, 'culling Streets WP9'),
(26499,18,2286.883,1177.262,137.631,0, 'culling Streets WP10'),
(26499,19,2320.374,1179.954,133.926,0, 'culling Streets WP11'),
(26499,20,2365.626,1194.838,131.974,0, 'culling Streets WP12'),
(26499,21,2366.559,1197.759,132.382,0, 'culling House WP1'),
(26499,22,2394.011,1205.148,134.125,0, 'culling House WP2'),
(26499,23,2395.854,1206.345,134.039,0, 'culling House WP3'),
(26499,24,2442.023,1219.205,133.999,0, 'culling House WP3'),
(26499,25,2447.105,1191.182,148.076,0, 'culling House WP4'),
(26499,26,2444.250,1190.510,148.076,0, 'culling House WP5'),
(26499,27,2418.487,1196.059,148.076,0, 'culling House WP6'),
(26499,28,2401.221,1191.705,148.076,0, 'culling House WP7'),
(26499,29,2409.205,1157.425,148.190,0, 'culling House WP8'),
(26499,30,2417.584,1121.026,148.082,0, 'culling House WP9'),
(26499,31,2423.123,1119.431,148.076,0, 'culling House WP10'),
(26499,32,2447.833,1112.714,148.076,0, 'culling House WP11'),
(26499,33,2457.133,1120.941,150.008,0, 'culling House WP12'),
(26499,34,2459.694,1127.012,150.008,0, 'culling House WP13'),
(26499,35,2469.617,1122.274,150.008,0, 'culling House WP14'),
(26499,36,2470.437,1122.794,150.008,3000, 'culling House WP15'),
(26499,37,2471.662,1123.077,150.035,3000, 'culling House WP16'),
(26499,38,2483.183,1125.042,149.905,0, 'culling Secret WP1'),
(26499,39,2487.867,1099.760,144.858,0, 'culling Secret WP2'),
(26499,40,2498.270,1101.929,144.599,0, 'culling Secret WP3'),
(26499,41,2492.114,1128.238,139.967,0, 'culling Secret WP4'),
(26499,42,2500.286,1130.183,139.982,0, 'culling Room WP1'),
(26499,43,2503.010,1119.241,139.978,0, 'culling Room WP2'),
(26499,44,2517.820,1122.645,132.066,0, 'culling Room WP3'),
(26499,45,2540.479,1129.061,130.868,7000, 'culling Fire Street WP1'),
(26499,46,2568.619,1157.794,126.906,0, 'culling Fire Street WP2'),
(26499,47,2556.074,1222.058,125.412,20000, 'culling Fire Street WP3'),
(26499,48,2521.531,1295.209,130.573,0, 'culling Fire Street WP4'),
(26499,49,2504.362,1348.667,132.944,0, 'culling Fire Street WP5'),
(26499,50,2450.594,1431.544,131.361,0, 'culling Fire Street WP6'),
(26499,51,2353.485,1404.839,128.531,0, 'culling Market WP1'),
(26499,52,2329.882,1406.273,128.013,0, 'culling Market WP2'),
(26499,53,2329.882,1406.273,128.013,12000, 'culling Market WP3'),
(26499,54,2327.391,1412.475,127.692,0, 'culling Market WP4'),
(26499,55,2303.016,1480.070,128.139,0, 'culling Crusader WP1'),
(26499,56,2296.665,1502.362,128.362,0, 'culling Crusader WP2');

-- 7721_world_scriptname.sql
UPDATE `instance_template` SET `script`='instance_culling_of_stratholme' WHERE `map`=595;
UPDATE `creature_template` SET `Scriptname`='npc_arthas' WHERE `entry`=26499;
UPDATE `creature_template` SET `Scriptname`='boss_salramm' WHERE `entry`=26530;
UPDATE `creature_template` SET `Scriptname`='boss_meathook' WHERE `entry`=26529;
UPDATE `creature_template` SET `Scriptname`='boss_epoch' WHERE `entry`=26532;
UPDATE `creature_template` SET `Scriptname`='boss_mal_ganis' WHERE `entry`=26533;
UPDATE `creature_template` SET `Scriptname`='boss_infinite_corruptor' WHERE `entry`=32273;

-- 7739_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_hira_snowdawn' WHERE `entry`=31238;

-- 7748_word_scriptname.sql
DELETE FROM `areatrigger_scripts` WHERE `entry` IN (5284,5285,5286,5287,4871,4872,4873,5108);
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES 
(5284, 'at_aldurthar_gate'),
(5285, 'at_aldurthar_gate'),
(5286, 'at_aldurthar_gate'),
(5287, 'at_aldurthar_gate'),
(4871, 'at_warsong_farms'),
(4872, 'at_warsong_farms'),
(4873, 'at_warsong_farms'),
(5108, 'at_stormwright_shelf');

-- 7751_world_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` <= -1658000 and `entry` >= -1658999;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
-- Garfrost
(36494,-1658001,'Tiny creatures under feet, you bring Garfrost something good to eat!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16912,1,0,0,'garfrost SAY_AGGRO'),
(36494,-1658002,'Will save for snack. For later.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16913,1,0,0,'garfrost SAY_SLAY_1'),
(36494,-1658003,'That one maybe not so good to eat now. Stupid Garfrost! BAD! BAD!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16914,1,0,0,'garfrost SAY_SLAY_2'),
(36494,-1658004,'Garfrost hope giant underpants clean. Save boss great shame. For later.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16915,1,0,0,'garfrost SAY_DEATH'),
(36494,-1658005,'Axe too weak. Garfrost make better and CRUSH YOU!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16916,1,0,0,'garfrost SAY_PHASE2'),
(36494,-1658006,'Garfrost tired of puny mortals. Now your bones will freeze!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16917,1,0,0,'garfrost SAY_PHASE3'),
(36658,-1658007,'Another shall take his place. You waste your time.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16752,1,0,0,'Tyrannus SAY_TYRANNUS_DEATH'),
-- Krick
(36477,-1658010,'Our work must not be interrupted! Ick! Take care of them!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16926,1,0,0,'Krick SAY_AGGRO'),
(36477,-1658011,'Ooh...We could probably use these parts!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16927,1,0,0,'Krick SAY_SLAY_1'),
(36477,-1658012,'Arms and legs are in short supply...Thanks for your contribution!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16928,1,0,0,'Krick SAY_SLAY_2'),
(36477,-1658013,'Enough moving around! Hold still while I blow them all up!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16929,1,0,0,'Krick SAY_BARRAGE_1'),
(36477,-1658014,'Krick begins rapidly conjuring explosive mines!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Krick SAY_BARRAGE_2'),
(36477,-1658015,'Quickly! Poison them all while they''re still close!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16930,1,0,0,'Krick SAY_POISON_NOVA'),
(36477,-1658016,'No! That one! That one! Get that one!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16931,1,0,0,'Krick SAY_CHASE_1'),
(36477,-1658017,'I''ve changed my mind...go get that one instead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16932,1,0,0,'Krick SAY_CHASE_2'),
(36477,-1658018,'What are you attacking him for? The dangerous one is over there,fool!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16933,1,0,0,'Krick SAY_CHASE_3'),
-- Ick
(36476,-1658020,'Ick begins to unleash a toxic poison cloud!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Ick SAY_ICK_POISON_NOVA'),
(36476,-1658021,'Ick is chasing you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Ick SAY_ICK_CHASE_1'),
-- Krick OUTRO
(36477,-1658030,'Wait! Stop! Don''t kill me, please! I''ll tell you everything!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16934,1,0,0,'Krick SAY_KRICK_OUTRO_1'),
(36993,-1658031,'I''m not so naive as to believe your appeal for clemency, but I will listen.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16611,1,0,0,'Jaina SAY_JAINA_OUTRO_2'),
(36990,-1658032,'Why should the Banshee Queen spare your miserable life?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17033,1,0,0,'Sylvanas SAY_SYLVANAS_OUTRO_2'),
(36477,-1658033,'What you seek is in the master''s lair, but you must destroy Tyrannus to gain entry. Within the Halls of Reflection you will find Frostmourne. It... it holds the truth.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16935,1,0,0,'Krick SAY_KRICK_OUTRO_3'),
(36993,-1658034,'Frostmourne lies unguarded? Impossible!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16612,1,0,0,'Jaina SAY_JAINA_OUTRO_4'),
(36990,-1658035,'Frostmourne? The Lich King is never without his blade! If you are lying to me...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17034,1,0,0,'Sylvanas SAY_SYLVANAS_OUTRO_4'),
(36477,-1658036,'I swear it is true! Please, don''t kill me!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16936,1,0,0,'Krick SAY_KRICK_OUTRO_5'),
(36658,-1658037,'Worthless gnat! Death is all that awaits you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16753,1,0,0,'Tyrannus SAY_TYRANNUS_OUTRO_7'),
(36477,-1658038,'Urg... no!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16937,1,0,0,'Krick SAY_KRICK_OUTRO_8'),
(36658,-1658039,'Do not think that I shall permit you entry into my master''s sanctum so easily. Pursue me if you dare.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16754,1,0,0,'Tyrannus SAY_TYRANNUS_OUTRO_9'),
(36993,-1658040,'What a cruel end. Come, heroes. We must see if the gnome''s story is true. If we can separate Arthas from Frostmourne, we might have a chance at stopping him.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16613,1,0,0,'Jaina SAY_JAINA_OUTRO_10'),
(36990,-1658041,'A fitting end for a traitor. Come, we must free the slaves and see what is within the Lich King''s chamber for ourselves.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17035,1,0,0,'Sylvanas SAY_SYLVANAS_OUTRO_10'),
-- Tyrannus
(36658,-1658050,'Your pursuit shall be in vain, adventurers, for the Lich King has placed an army of undead at my command! Behold!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16755,1,0,0,'Tyrannus SAY_AMBUSH_1'),
(36658,-1658051,'Persistent whelps! You will not reach the entrance of my lord''s lair! Soldiers, destroy them!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16756,1,0,0,'Tyrannus SAY_AMBUSH_2'),
(36658,-1658052,'Rimefang! Trap them within the tunnel! Bury them alive!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16757,1,0,0,'Tyrannus SAY_GAUNTLET_START'),
(36658,-1658053,'Alas, brave, brave adventurers, your meddling has reached its end. Do you hear the clatter of bone and steel coming up the tunnel behind you? That is the sound of your impending demise.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16758,1,0,0,'Tyrannus SAY_INTRO_1'),
(36658,-1658054,'Ha, such an amusing gesture from the rabble. When I have finished with you, my master''s blade will feast upon your souls. Die!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16759,1,0,0,'Tyrannus SAY_INTRO_2'),
(36658,-1658055,'I shall not fail The Lich King! Come and meet your end!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16760,1,0,0,'Tyrannus SAY_AGGRO'),
(36658,-1658056,'Such a shameful display... You are better off dead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16761,1,0,0,'Tyrannus SAY_SLAY_1'),
(36658,-1658057,'Perhaps you should have stayed in the mountains!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16762,1,0,0,'Tyrannus SAY_SLAY_2'),
(36658,-1658058,'Impossible! Rimefang... Warn...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16763,1,0,0,'Tyrannus SAY_DEATH'),
(36658,-1658059,'Rimefang, destroy this fool!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16764,1,0,0,'Tyrannus SAY_MARK_RIMEFANG_1'),
(36658,-1658060,'The frostwyrm Rimefang gazes at $N and readies an icy attack!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Tyrannus SAY_MARK_RIMEFANG_2'),
(36658,-1658061,'Power... overwhelming!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16765,1,0,0,'Tyrannus SAY_DARK_MIGHT_1'),
(36658,-1658062,'Scourgelord Tyrannus roars and swells with dark might!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Tyrannus SAY_DARK_MIGHT_2'),
(37592,-1658063,'Brave champions, we owe you our lives, our freedom... Though it be a tiny gesture in the face of this enormous debt, I pledge that from this day forth, all will know of your deeds, and the blazing path of light you cut through the shadow of this dark citadel.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Gorkun  SAY_GORKUN_OUTRO_1'),
(37592,-1658064,'This day will stand as a testament not only to your valor, but to the fact that no foe, not even the Lich King himself, can stand when Alliance and Horde set aside their differences and ---',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Gorkun  SAY_GORKUN_OUTRO_2'),
(36993,-1658065,'Heroes, to me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16614,1,0,0,'Jaina SAY_JAYNA_OUTRO_3'),
(36990,-1658066,'Take cover behind me! Quickly!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17037,1,0,0,'Sylvanas SAY_SYLVANAS_OUTRO_3'),
(36993,-1658067,'The Frost Queen is gone. We must keep moving - our objective is near.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16615,0,0,0,'Jaina SAY_JAYNA_OUTRO_4'),
(36990,-1658068,'I thought he''d never shut up. At last, Sindragosa silenced that long-winded fool. To the Halls of Reflection, champions! Our objective  is near... I can sense it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17036,0,0,0,'Sylvanas SAY_SYLVANAS_OUTRO_4'),
(36993,-1658069,'I... I could not save them... Damn you, Arthas! DAMN YOU!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16616,0,0,0,'Jaina SAY_JAYNA_OUTRO_5');

-- 7751_world_scriptname.sql
UPDATE `instance_template` SET `script`='instance_pit_of_saron' WHERE `map`=658;
UPDATE `creature_template` SET `Scriptname`='boss_garfrost' WHERE `entry`=36494;
UPDATE `creature_template` SET `Scriptname`='boss_ick' WHERE `entry`=36476;
UPDATE `creature_template` SET `Scriptname`='boss_krick' WHERE `entry`=36477;
UPDATE `creature_template` SET `Scriptname`='boss_tyrannus' WHERE `entry`=36658;
UPDATE `creature_template` SET `Scriptname`='boss_rimefang' WHERE `entry`=36661;
UPDATE `creature_template` SET `Scriptname`='mob_ymirjar_wrathbringer' WHERE `entry`=36840;
UPDATE `creature_template` SET `Scriptname`='mob_ymirjar_skycaller' WHERE `entry`=31260;
UPDATE `creature_template` SET `Scriptname`='mob_ymirjar_flamebearer' WHERE `entry`=36893;
UPDATE `creature_template` SET `Scriptname`='mob_ymirjar_deathbringer' WHERE `entry`=36892;
UPDATE `creature_template` SET `Scriptname`='mob_wrathbone_laborer' WHERE `entry`=36830;
UPDATE `creature_template` SET `Scriptname`='mob_wrathbone_coldwraith' WHERE `entry`=36842;
UPDATE `creature_template` SET `Scriptname`='mob_wrathbone_sorcerer' WHERE `entry`=37728;
UPDATE `creature_template` SET `Scriptname`='mob_stonespine_gargoyle' WHERE `entry`=36896;
UPDATE `creature_template` SET `Scriptname`='mob_plagueborn_horror' WHERE `entry`=36879;
UPDATE `creature_template` SET `Scriptname`='mob_iceborn_protodrake' WHERE `entry`=36891;
UPDATE `creature_template` SET `Scriptname`='mob_hungering_ghoul' WHERE `entry`=37711;
UPDATE `creature_template` SET `Scriptname`='mob_fallen_warrior' WHERE `entry`=38487;
UPDATE `creature_template` SET `Scriptname`='mob_fallen_warrior' WHERE `entry`=36841;
UPDATE `creature_template` SET `Scriptname`='mob_deathwhisper_torturer' WHERE `entry`=37713;
UPDATE `creature_template` SET `Scriptname`='mob_deathwhisper_shadowcaster' WHERE `entry`=37712;
UPDATE `creature_template` SET `Scriptname`='mob_deathwhisper_necrolyte' WHERE `entry`=36788;
UPDATE `creature_template` SET `Scriptname`='mob_geist_ambusher' WHERE `entry`=36886;

-- 7753_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`= 'npc_valiance_keep_cannoneer' WHERE `entry`=25306;

-- 7780_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`= 'npc_warmage_coldarra' WHERE `entry` IN (27173,27904,27906);

-- 7786_world_scriptname.sql
-- Alterac Valley
-- ScriptName update to bosses, marshals and warmasters
UPDATE `creature_template` SET `ScriptName`= 'boss_drekthar' WHERE `entry`=11946;
UPDATE `creature_template` SET `ScriptName`= 'boss_vanndar' WHERE `entry`=11948;
UPDATE `creature_template` SET `ScriptName`= 'boss_balinda' WHERE `entry`=11949;
UPDATE `creature_template` SET `ScriptName`= 'mob_water_elemental' WHERE `entry`=25040;
UPDATE `creature_template` SET `ScriptName`= 'boss_galvangar' WHERE `entry`=11947;
UPDATE `creature_template` SET `ScriptName`= 'mob_av_marshal_or_warmaster' WHERE `entry` IN (14762,14763,14764,14765,14772,14773,14776,14777);

-- 7797_world_scriptname.sql
UPDATE `instance_template` SET `script`='instance_blackrock_spire' WHERE `map`=229; 
UPDATE `creature_template` SET `ScriptName`='npc_rookey_whelp' WHERE `entry`=10161;
UPDATE `gameobject_template` SET `ScriptName`='go_rookey_egg' WHERE `entry`=175124;

-- 7813_world_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` <= -1632000 and `entry` >= -1632999;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
-- Bronjham
(36497,-1632001,'Finally...a captive audience!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16595,1,0,0,'Bronjham SAY_AGGRO'),
(36497,-1632002,'Fodder for the engine!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16596,1,0,0,'Bronjham SAY_SLAY_1'),
(36497,-1632003,'Another soul to strengthen the host!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16597,1,0,0,'Bronjham SAY_SLAY_2'),
(36497,-1632004,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16598,1,0,0,'Bronjham SAY_DEATH'),
(36497,-1632005,'The vortex of the harvested calls to you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16599,1,0,0,'Bronjham SAY_SOUL_STORM'),
(36497,-1632006,'I will sever the soul from your body!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16600,1,0,0,'Bronjham SAY_CORRUPT_SOUL'),

-- Devourer of Souls
(36502,-1632010,'You dare look upon the host of souls? I SHALL DEVOUR YOU WHOLE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16884,1,0,0,'Devoureur SAY_FACE_ANGER_AGGRO'),
(36502,-1632011,'You dare look upon the host of souls? I SHALL DEVOUR YOU WHOLE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16890,1,0,0,'Devoureur SAY_FACE_DESIRE_AGGRO'),
(36502,-1632012,'Damnation!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16885,1,0,0,'Devoureur SAY_FACE_ANGER_SLAY_1'),
(36502,-1632013,'Damnation!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16896,1,0,0,'Devoureur SAY_FACE_SORROW_SLAY_1'),
(36502,-1632014,'Damnation!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16891,1,0,0,'Devoureur SAY_FACE_DESIRE_SLAY_1'),
(36502,-1632015,'Doomed for eternity!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16886,1,0,0,'Devoureur SAY_FACE_ANGER_SLAY_2'),
(36502,-1632016,'Doomed for eternity!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16897,1,0,0,'Devoureur SAY_FACE_SORROW_SLAY_2'),
(36502,-1632017,'Doomed for eternity!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16892,1,0,0,'Devoureur SAY_FACE_DESIRE_SLAY_2'),
(36502,-1632018,'The swell of souls will not be abated! You only delay the inevitable!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16887,1,0,0,'Devoureur SAY_FACE_ANGER_DEATH'),
(36502,-1632019,'The swell of souls will not be abated! You only delay the inevitable!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16898,1,0,0,'Devoureur SAY_FACE_SORROW_DEATH'),
(36502,-1632020,'The swell of souls will not be abated! You only delay the inevitable!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16893,1,0,0,'Devoureur SAY_FACE_DESIRE_DEATH'),
(36502,-1632021,'Devourer of Souls begins to cast Mirrored Soul!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Devoureur EMOTE_MIRRORED_SOUL'),
(36502,-1632022,'Devourer of Souls begins to Unleash Souls!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Devoureur EMOTE_UNLEASH_SOUL'),
(36502,-1632023,'SUFFERING! ANGUISH! CHAOS! RISE AND FEED!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16888,1,0,0,'Devoureur SAY_FACE_ANGER_UNLEASH_SOUL'),
(36502,-1632024,'SUFFERING! ANGUISH! CHAOS! RISE AND FEED!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16899,1,0,0,'Devoureur SAY_FACE_SORROW_UNLEASH_SOUL'),
(36502,-1632025,'SUFFERING! ANGUISH! CHAOS! RISE AND FEED!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16894,1,0,0,'Devoureur SAY_FACE_DESIRE_UNLEASH_SOUL'),
(36502,-1632026,'Devourer of Souls begins to cast Wailing Souls!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Devoureur EMOTE_WAILING_SOUL'),
(36502,-1632027,'Stare into the abyss, and see your end!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16889,1,0,0,'Devoureur SAY_FACE_ANGER_WAILING_SOUL'),
(36502,-1632028,'Stare into the abyss, and see your end!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16895,1,0,0,'Devoureur SAY_FACE_DESIRE_WAILING_SOUL'),
(38160,-1632029,'Excellent work, champions! We shall set up our base camp in these chambers. My mages will get the Scourge transport device working shortly. Step inside it when you''re ready for your next mission. I will meet you on the other side.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16625,1,0,0,'Jaina SAY_JAINA_OUTRO'),
(38161,-1632030,'Excellent work, champions! We shall set up our base camp in these chambers. My mages will get the Scourge transport device working shortly. Step inside when you are ready for your next mission. I will meet you on the other side.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17044,1,0,0,'Sylvanas SAY_SYLVANAS_OUTRO'),

-- Jaina
(37597,-1632040,'Thank the light for seeing you here safely. We have much work to do if we are to defeat the Lich King and put an end to the Scourge.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16617,0,0,0,'Jaina SAY_INTRO_1'),
(37597,-1632041,'Our allies within the Argent Crusade and the Knights of the Ebon Blade have broken through the front gate of Icecrown and are attempting to establish a foothold within the Citadel.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16618,0,0,0,'Jaina SAY_INTRO_2'),
(37597,-1632042,'Their success hinges upon what we discover in these cursed halls. Although our mission is a wrought with peril, we must persevere!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16619,0,0,0,'Jaina SAY_INTRO_3'),
(37597,-1632043,'With the attention of the Lich King drawn toward the front gate, we will be working our way through the side in search of information that will enable us to defeat the Scourge - once and for all.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16620,0,0,0,'Jaina SAY_INTRO_4'),
(37597,-1632044,'King Varian''s SI7 agents have gathered information about a private sanctum of the Lich King''s deep within a place called the Halls of Reflection.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16621,0,0,0,'Jaina SAY_INTRO_5'),
(37597,-1632045,'We will carve a path through this wretched place and find a way to enter the Halls of Reflection. I sense powerful magic hidden away within those walls... Magic that could be the key to destroy the Scourge.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16622,0,0,0,'Jaina SAY_INTRO_6'),
(37597,-1632046,'Your first mission is to destroy the machines of death within this malevolent engine of souls, and clear a path for our soldiers.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16623,0,0,0,'Jaina SAY_INTRO_7'),
(37597,-1632047,'Make haste, champions! I will prepare the troops to fall in behind you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16624,0,0,0,'Jaina SAY_INTRO_8'),

-- Sylvanas
(37596,-1632050,'The Argent Crusade and the Knights of the Ebon Blade have assaulted the gates of Icecrown Citadel and are preparing for a massive attack upon the Scourge. Our missition is a bit more subtle, but equally as important.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17038,0,0,0,'Sylvanas SAY_INTRO_1'),
(37596,-1632051,'With the attention of the Lich King turned towards the front gate, we''ll be working our way through the side in search of information that will enable us to defeat the Lich King - once and for all.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17039,0,0,0,'Sylvanas SAY_INTRO_2'),
(37596,-1632052,'Our scouts have reported that the Lich King has a private chamber, outside of the Frozen Throne, deep within a place called the Halls of Reflection. That is our target, champions.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17040,0,0,0,'Sylvanas SAY_INTRO_3'),
(37596,-1632053,'We will cut a swath of destruction through this cursed place and find a way to enter the Halls of Reflection. If there is anything of value to be found here, it will be found in the Halls.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17041,0,0,0,'Sylvanas SAY_INTRO_4'),
(37596,-1632054,'Your first mission is to destroy the machines of death within this wretched engine of souls, and clear a path for our soldiers.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17042,0,0,0,'Sylvanas SAY_INTRO_5'),
(37596,-1632055,'The Dark Lady watches over you. Make haste!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17043,0,0,0,'Sylvanas SAY_INTRO_6');

-- 7813_world_scriptname.sql
UPDATE `instance_template` SET `script`='instance_forge_of_souls' WHERE `map`=632;
UPDATE `creature_template` SET `Scriptname`='boss_devourer_of_souls' WHERE `entry`=36502;
UPDATE `creature_template` SET `Scriptname`='boss_bronjahm' WHERE `entry`=36497;
UPDATE `creature_template` SET `Scriptname`='npc_jaina_fos' WHERE `entry`=37597;
UPDATE `creature_template` SET `Scriptname`='npc_sylvanas_fos' WHERE `entry`=37596;
UPDATE `creature_template` SET `Scriptname`='mob_soul_horror' WHERE `entry`=36522;
UPDATE `creature_template` SET `Scriptname`='mob_soulguard_adept' WHERE `entry`=36620;
UPDATE `creature_template` SET `Scriptname`='mob_soulguard_animator' WHERE `entry`=36516;
UPDATE `creature_template` SET `Scriptname`='mob_soulguard_bonecaster' WHERE `entry`=36564;
UPDATE `creature_template` SET `Scriptname`='mob_soulguard_reaper' WHERE `entry`=36499;
UPDATE `creature_template` SET `Scriptname`='mob_soulguard_watchman' WHERE `entry`=36478;
UPDATE `creature_template` SET `Scriptname`='mob_spectral_warden' WHERE `entry`=36666;
UPDATE `creature_template` SET `Scriptname`='mob_spiteful_apparition' WHERE `entry`=36551;
UPDATE `creature_template` SET `Scriptname`='mob_corrupted_soul_fragment' WHERE `entry`=36535;

-- 7827_world_script_texts.sql
DELETE FROM `script_texts` WHERE `entry` <= -1601000 and `entry` >= -1601022;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
-- Anub'arak
('29120', '-1601000', 'Eternal aggony awaits you!', null, null, null, null, null, null, null, null, '14054', '1', '0', '0', ''),
('29120', '-1601001', 'Soon, the Master\'s voice will call to you.', null, null, null, null, null, null, null, null, '14057', '1', '0', '0', ''),
('29120', '-1601002', 'You have made your choice.', null, null, null, null, null, null, null, null, '14056', '1', '0', '0', ''),
('29120', '-1601003', 'You shall experience my torment, first-hand!', null, null, null, null, null, null, null, null, '14055', '1', '0', '0', ''),
('29120', '-1601004', 'Ahhh... RAAAAAGH! Never thought... I would be free of him...', null, null, null, null, null, null, null, null, '14069', '1', '0', '0', ''),
('29120', '-1601005', 'Your armor is useless againts my locusts.', null, null, null, null, null, null, null, null, '14060', '1', '0', '0', ''),
('29120', '-1601006', 'Uunak-hissss tik-k-k-k-k!', null, null, null, null, null, null, null, null, '14067', '1', '0', '0', ''),
('29120', '-1601007', 'The pestilence upon you!', null, null, null, null, null, null, null, null, '14068', '1', '0', '0', ''),
('29120', '-1601008', 'Auum na-l ak-k-k-k, isshhh.', null, null, null, null, null, null, null, null, '14058', '1', '0', '0', ''),
('29120', '-1601009', 'Come forth my brethren! Feast on their flesh.', null, null, null, null, null, null, null, null, '14059', '1', '0', '0', ''),
('29120', '-1601010', 'I was king of this empire once\, long ago. In life I stood as champion. In death I returned as conqueror. Now I protect the kingdom once more. Ironic\, yes? ', null, null, null, null, null, null, null, null, '14053', '1', '0', '0', ''),
-- Kirkthir
('28684', '-1601011', 'This kingdom belongs to the Scourge! Only the dead may enter.', null, null, null, null, null, null, null, null, '14075', '1', '0', '0', ''),
('28684', '-1601012', 'You were foolish to come.', null, null, null, null, null, null, null, null, '14077', '1', '0', '0', ''),
('28684', '-1601013', 'As Anub\'Arak commands!', null, null, null, null, null, null, null, null, '14078', '1', '0', '0', ''),
('28684', '-1601014', 'I should be grateful. But I long ago lost the capacity.', null, null, null, null, null, null, null, null, '14087', '1', '0', '0', ''),
('28684', '-1601015', 'They hunger.', null, null, null, null, null, null, null, null, '14085', '1', '0', '0', ''),
('28684', '-1601016', 'Dinner time\, my pets.', null, null, null, null, null, null, null, null, '14086', '1', '0', '0', ''),
('28684', '-1601017', 'Keep an eye on the tunnel. We must not let anyone through!', null, null, null, null, null, null, null, null, '14082', '1', '0', '0', ''),
('28684', '-1601018', 'I hear footsteps. Be on your guard.', null, null, null, null, null, null, null, null, '14083', '1', '0', '0', ''),
('28684', '-1601019', 'I sense the living. Be ready.', null, null, null, null, null, null, null, null, '14084', '1', '0', '0', ''),
('28684', '-1601020', 'We are besieged. Strike out and bring back their corpses!', null, null, null, null, null, null, null, null, '14079', '1', '0', '0', ''),
('28684', '-1601021', 'We must hold the gate. Attack! Tear them limb from limb!', null, null, null, null, null, null, null, null, '14080', '1', '0', '0', ''),
('28684', '-1601022', 'The gate must be protected at all costs. Rip them to shreds!', null, null, null, null, null, null, null, null, '14081', '1', '0', '0', '');

-- 7873_world_scriptname.sql
UPDATE `gameobject_template` SET `ScriptName`='go_stillpine_cage' WHERE `entry`=181714;

-- 7909_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_pet_trainer' WHERE `entry` IN (10090,3698,17484,4320,3545,16712,3622,16675,3620,10086,2879,3306,543,2878,3688,10089,16271,10088,3624);
