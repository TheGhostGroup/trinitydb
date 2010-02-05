-- ================================
-- == Updatepack 25 - 2010-02-05 ==
-- == For Core 7304 ===============
-- ================================

-- --------------
-- -- TDB Team --
-- --------------
-- Missed trainers re-write in UP24, by SoulForge
-- Rewrite of Grand Master Engineer Trainers
-- Binkie Brightgear <Grand Master Engineering Trainer> - Level 75 - Icecrown -- 140 Entries
DELETE FROM `npc_trainer` WHERE `entry`=33586;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
-- Engineering training levels.
(33586,4039,10,0,0,5), -- Apprentice Engineer
(33586,4040,500,202,50,10), -- Journeyman Engineer
(33586,4041,5000,202,125,20), -- Expert Engineer
(33586,12657,50000,202,200,35), -- Artisan Engineer
(33586,30351,100000,202,275,50), -- Master Engineer
(33586,61464,350000,202,350,65), -- Grand Master Engineer
-- Engineering Apprentice
(33586,3922,115,202,30,0), -- Handful of Copper Bolts
(33586,3923,130,202,30,0), -- Rough Copper Bomb
(33586,7430,150,202,50,0), -- Arclight Spanner
(33586,3925,150,202,50,0), -- Rough Boomstick
(33586,3924,150,202,50,0), -- Copper Tube
-- Engineering Journeyman
(33586,3977,200,202,60,0), -- Crude Scope
(33586,3926,225,202,65,0), -- Copper Modulator
(33586,3929,250,202,75,0), -- Coarse Blasting Powder
(33586,3930,250,202,75,0), -- Crafted Heavy Shot
(33586,3931,250,202,75,0), -- Coarse Dynamite
(33586,3932,300,202,85,0), -- Target Dummy
(33586,3973,300,202,90,0), -- Silver Contact
(33586,8334,300,202,100,0), -- Practice Lock
(33586,3934,400,202,100,0), -- Flying Tiger Goggles
(33586,3938,450,202,105,0), -- Bronze Tube
(33586,3937,450,202,105,0), -- Large Copper Bomb
(33586,3936,420,202,105,0), -- Deadly Blunderbuss
(33586,3978,475,202,110,0), -- Standard Scope
(33586,3941,500,202,120,0), -- Small Bronze Bomb
(33586,3947,300,202,125,0), -- Crafted Solid Shot
(33586,3945,500,202,125,0), -- Heavy Blasting Powder
(33586,3946,500,202,125,0), -- Heavy Dynamite
(33586,3942,500,202,125,0), -- Whirring Bronze Gizmo
-- Engineering Expert
(33586,3949,550,202,130,0), -- Silver-plated Shotgun
(33586,6458,400,202,135,0), -- Ornate Spyglass
(33586,3950,600,202,140,0), -- Big Bronze Bomb
(33586,3953,600,202,145,0), -- Bronze Framework
(33586,9271,500,202,150,0), -- Aquadynamic Fish Attractor
(33586,12584,1000,202,150,0), -- Gold Power Core
(33586,3956,450,202,150,0), -- Green Tinted Goggles
(33586,3955,750,202,150,0), -- Explosive Sheep
(33586,3958,800,202,160,0), -- Iron Strut
(33586,3961,900,202,170,0), -- Gyrochronatom
(33586,12585,1000,202,175,0), -- Solid Blasting Powder
(33586,12586,1000,202,175,0), -- Solid Dynamite
(33586,3963,1000,202,175,0), -- Compact Harvest Reaper Kit
(33586,12590,1000,202,175,0), -- Gyromatic Micro-Adjustor
(33586,3962,1000,202,175,0), -- Iron Grenade
(33586,3965,1200,202,185,0), -- Advanced Target Dummy
(33586,3967,1400,202,190,0), -- Big Iron Bomb
(33586,12589,1300,202,195,0), -- Mithril Tube
(33586,15255,1500,202,200,0), -- Mechanical Repair Kit
(33586,12591,1500,202,200,0), -- Unstable Trigger
-- Engineering Artisan
(33586,12594,1600,202,205,0), -- Fire Goggles
(33586,12595,1600,202,205,0), -- Mithril Blunderbuss
(33586,12596,1700,202,210,0), -- Hi-Impact Mithril Slugs
(33586,12599,1800,202,215,0), -- Mithril Casing
(33586,12603,1800,202,215,0), -- Mithril Frag Bomb
(33586,12615,2500,202,225,0), -- Spellpower Goggles Xtreme
(33586,12618,2200,202,230,0), -- Rose Colored Goggles
(33586,12619,2400,202,235,0), -- Hi-Explosive Bomb
(33586,12621,2800,202,245,0), -- Mithril Gyro-Shot
(33586,12622,2800,202,245,0), -- Green Lens
(33586,19788,4000,202,250,0), -- Dense Blasting Powder
(33586,23070,5000,202,250,0), -- Dense Dynamite
(33586,63750,5000,202,250,0), -- High-powered Flashlight
(33586,19567,4000,202,250,0), -- Salt Shaker
(33586,23071,5000,202,260,0), -- Truesilver Transformer
(33586,19792,10000,202,260,0), -- Thorium Rifle
(33586,19790,10000,202,260,0), -- Thorium Grenade
(33586,19791,5000,202,260,0), -- Thorium Widget
(33586,19794,20000,202,270,0), -- Spellpower Goggles Xtreme Plus
(33586,19795,10000,202,275,0), -- Thorium Tube
-- Engineering Master
(33586,19800,10000,202,285,0), -- Thorium Shells
(33586,19825,20000,202,290,0), -- Master Engineer's Goggles
(33586,30305,10000,202,300,0), -- Handful of Fel Iron Bolts
(33586,30303,10000,202,300,0), -- Elemental Blasting Powder
(33586,30304,10000,202,300,0), -- Fel Iron Casing
(33586,30310,15000,202,300,0), -- Fel Iron Bomb
(33586,30346,15000,202,310,0), -- Fel Iron Shells
(33586,30312,20000,202,320,0), -- Fel Iron Musket
(33586,30306,20000,202,325,0), -- Adamantite Frame
(33586,30311,25000,202,325,0), -- Adamantite Grenade
(33586,44155,50000,202,300,60), -- Flying Machine
(33586,39971,20000,202,335,0), -- Icy Blasting Primers
(33586,30309,50000,202,340,0), -- Felsteel Stabilizer
(33586,30307,50000,202,340,0), -- Hardened Adamantite Tube
(33586,30308,50000,202,340,0), -- Khorium Power Core
(33586,56349,50000,202,350,0), -- Handful of Cobalt Bolts
(33586,53281,50000,202,350,0), -- Volatile Blasting Trigger
(33586,41317,50000,202,350,0), -- Deathblow X11 Goggles
(33586,41320,50000,202,350,0), -- Destruction Holo-gogs
(33586,40274,50000,202,350,0), -- Furious Gizmatic Goggles
(33586,41315,50000,202,350,0), -- Gadgetstorm Goggles
(33586,41311,50000,202,350,0), -- Justicebringer 2000 Specs
(33586,41316,50000,202,350,0), -- Living Replicator Specs
(33586,41319,50000,202,350,0), -- Magnified Moon Specs
(33586,41321,50000,202,350,0), -- Powerheal 4000 Lens
(33586,41314,50000,202,350,0), -- Surestrike Goggles v2.0
(33586,41312,50000,202,350,0), -- Tankatronic Goggles
(33586,41318,50000,202,350,0), -- Wonderheal XT40 Shades
(33586,56460,50000,202,350,0), -- Cobalt Frag Bomb
-- Engineering Grand Master
(33586,41307,50000,202,375,0), -- Gyro-balanced Khorium Destroyer
(33586,56461,50000,202,375,0), -- Bladed Pickaxe
(33586,56459,100000,202,375,0), -- Hammer Pick
(33586,56464,100000,202,375,0), -- Overcharged Capacitor
(33586,56463,100000,202,375,0), -- Explosive Decoy
(33586,55002,100000,202,380,0), -- Flexweave Underlay
(33586,54793,100000,202,380,0), -- Frag Belt
(33586,63765,100000,202,380,0), -- Springy Arachnoweave
(33586,54736,100000,202,390,0), -- Personal Electromagnetic Pulse Generator
(33586,56471,100000,202,390,0), -- Froststeel Tube
(33586,61471,100000,202,390,0), -- Diamond-cut Refractor Scope
(33586,54998,125000,202,400,0), -- Hand-Mounted Pyro Rocket
(33586,54999,125000,202,400,0), -- Hyperspeed Accelerators
(33586,63770,125000,202,400,0), -- Reticulated Armor Webbing
(33586,54353,125000,202,400,0), -- Mark "S" Boomstick
(33586,55016,125000,202,405,0), -- Nitro Boosts
(33586,56468,125000,202,405,0), -- Box of Bombs
(33586,56474,125000,202,410,0), -- Mammoth Cutters
(33586,67839,100000,202,410,0), -- Mind Amplification Dish
(33586,67326,100000,202,410,0), -- Goblin Beam Welder
(33586,56476,125000,202,410,0), -- Healing Injector Kit
(33586,56475,125000,202,415,0), -- Saronite Razorheads
(33586,56477,125000,202,415,0), -- Mana Injector Kit
(33586,61483,125000,202,420,0), -- Mechanized Snow Goggles - Plate
(33586,56467,125000,202,420,0), -- Noise Machine
(33586,56466,125000,202,420,0), -- Sonic Booster
(33586,56472,150000,202,425,0), -- MOLL-E
(33586,56470,150000,202,425,0), -- Sun Scope
(33586,56469,150000,202,425,0), -- Gnomish Lightning Generator
(33586,56478,200000,202,430,0), -- Heartseeker Scope
(33586,56462,150000,202,435,0), -- Gnomish Army Knife
(33586,67920,150000,202,435,0), -- Wormhole Generator: Northrend
(33586,56480,150000,202,440,0), -- Armored Titanium Goggles
(33586,56483,150000,202,440,0), -- Charged Titanium Specs
(33586,56487,150000,202,440,0), -- Electroflux Sight Enhancers
(33586,56486,150000,202,440,0), -- Greensight Gogs
(33586,56574,150000,202,440,0), -- Truesight Ice Blinders
(33586,62271,150000,202,440,0), -- Unbreakable Healing Amplifiers
(33586,56484,150000,202,440,0), -- Visage Liquification Goggles
(33586,56481,150000,202,440,0), -- Weakness Spectralizers
(33586,56479,200000,202,450,0), -- Armor Plated Combat Shotgun
(33586,60874,200000,202,450,0); -- Nesingwary 4000

-- Timofey Oshenko <Grand Master Engineering Trainer> - Level 75 - Dalaran -- 141 Entries
DELETE FROM `npc_trainer` WHERE `entry`=28697;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
-- Engineering training levels.
(28697,4039,10,0,0,5), -- Apprentice Engineer
(28697,4040,500,202,50,10), -- Journeyman Engineer
(28697,4041,5000,202,125,20), -- Expert Engineer
(28697,12657,50000,202,200,35), -- Artisan Engineer
(28697,30351,100000,202,275,50), -- Master Engineer
(28697,61464,350000,202,350,65), -- Grand Master Engineer
-- Engineering Apprentice
(28697,3922,115,202,30,0), -- Handful of Copper Bolts
(28697,3923,130,202,30,0), -- Rough Copper Bomb
(28697,7430,150,202,50,0), -- Arclight Spanner
(28697,3925,150,202,50,0), -- Rough Boomstick
(28697,3924,150,202,50,0), -- Copper Tube
-- Engineering Journeyman
(28697,3977,200,202,60,0), -- Crude Scope
(28697,3926,225,202,65,0), -- Copper Modulator
(28697,3929,250,202,75,0), -- Coarse Blasting Powder
(28697,3930,250,202,75,0), -- Crafted Heavy Shot
(28697,3931,250,202,75,0), -- Coarse Dynamite
(28697,3932,300,202,85,0), -- Target Dummy
(28697,3973,300,202,90,0), -- Silver Contact
(28697,8334,300,202,100,0), -- Practice Lock
(28697,3934,400,202,100,0), -- Flying Tiger Goggles
(28697,3938,450,202,105,0), -- Bronze Tube
(28697,3937,450,202,105,0), -- Large Copper Bomb
(28697,3936,420,202,105,0), -- Deadly Blunderbuss
(28697,3978,475,202,110,0), -- Standard Scope
(28697,3941,500,202,120,0), -- Small Bronze Bomb
(28697,3947,300,202,125,0), -- Crafted Solid Shot
(28697,3945,500,202,125,0), -- Heavy Blasting Powder
(28697,3946,500,202,125,0), -- Heavy Dynamite
(28697,3942,500,202,125,0), -- Whirring Bronze Gizmo
-- Engineering Expert
(28697,3949,550,202,130,0), -- Silver-plated Shotgun
(28697,6458,400,202,135,0), -- Ornate Spyglass
(28697,3950,600,202,140,0), -- Big Bronze Bomb
(28697,3953,600,202,145,0), -- Bronze Framework
(28697,9271,500,202,150,0), -- Aquadynamic Fish Attractor
(28697,12584,1000,202,150,0), -- Gold Power Core
(28697,3956,450,202,150,0), -- Green Tinted Goggles
(28697,3955,750,202,150,0), -- Explosive Sheep
(28697,3958,800,202,160,0), -- Iron Strut
(28697,3961,900,202,170,0), -- Gyrochronatom
(28697,12585,1000,202,175,0), -- Solid Blasting Powder
(28697,12586,1000,202,175,0), -- Solid Dynamite
(28697,3963,1000,202,175,0), -- Compact Harvest Reaper Kit
(28697,12590,1000,202,175,0), -- Gyromatic Micro-Adjustor
(28697,3962,1000,202,175,0), -- Iron Grenade
(28697,3965,1200,202,185,0), -- Advanced Target Dummy
(28697,3967,1400,202,190,0), -- Big Iron Bomb
(28697,12589,1300,202,195,0), -- Mithril Tube
(28697,15255,1500,202,200,0), -- Mechanical Repair Kit
(28697,12591,1500,202,200,0), -- Unstable Trigger
-- Engineering Artisan
(28697,12594,1600,202,205,0), -- Fire Goggles
(28697,12595,1600,202,205,0), -- Mithril Blunderbuss
(28697,12596,1700,202,210,0), -- Hi-Impact Mithril Slugs
(28697,12599,1800,202,215,0), -- Mithril Casing
(28697,12603,1800,202,215,0), -- Mithril Frag Bomb
(28697,12615,2500,202,225,0), -- Spellpower Goggles Xtreme
(28697,12618,2200,202,230,0), -- Rose Colored Goggles
(28697,12619,2400,202,235,0), -- Hi-Explosive Bomb
(28697,12621,2800,202,245,0), -- Mithril Gyro-Shot
(28697,12622,2800,202,245,0), -- Green Lens
(28697,19788,4000,202,250,0), -- Dense Blasting Powder
(28697,23070,5000,202,250,0), -- Dense Dynamite
(28697,63750,5000,202,250,0), -- High-powered Flashlight
(28697,19567,4000,202,250,0), -- Salt Shaker
(28697,23071,5000,202,260,0), -- Truesilver Transformer
(28697,19792,10000,202,260,0), -- Thorium Rifle
(28697,19790,10000,202,260,0), -- Thorium Grenade
(28697,19791,5000,202,260,0), -- Thorium Widget
(28697,19794,20000,202,270,0), -- Spellpower Goggles Xtreme Plus
(28697,19795,10000,202,275,0), -- Thorium Tube
-- Engineering Master
(28697,19800,10000,202,285,0), -- Thorium Shells
(28697,19825,20000,202,290,0), -- Master Engineer's Goggles
(28697,30305,10000,202,300,0), -- Handful of Fel Iron Bolts
(28697,30303,10000,202,300,0), -- Elemental Blasting Powder
(28697,30304,10000,202,300,0), -- Fel Iron Casing
(28697,30310,15000,202,300,0), -- Fel Iron Bomb
(28697,30346,15000,202,310,0), -- Fel Iron Shells
(28697,30312,20000,202,320,0), -- Fel Iron Musket
(28697,30306,20000,202,325,0), -- Adamantite Frame
(28697,30311,25000,202,325,0), -- Adamantite Grenade
(28697,44155,50000,202,300,60), -- Flying Machine
(28697,39971,20000,202,335,0), -- Icy Blasting Primers
(28697,30309,50000,202,340,0), -- Felsteel Stabilizer
(28697,30307,50000,202,340,0), -- Hardened Adamantite Tube
(28697,30308,50000,202,340,0), -- Khorium Power Core
(28697,56349,50000,202,350,0), -- Handful of Cobalt Bolts
(28697,53281,50000,202,350,0), -- Volatile Blasting Trigger
(28697,41317,50000,202,350,0), -- Deathblow X11 Goggles
(28697,41320,50000,202,350,0), -- Destruction Holo-gogs
(28697,40274,50000,202,350,0), -- Furious Gizmatic Goggles
(28697,41315,50000,202,350,0), -- Gadgetstorm Goggles
(28697,41311,50000,202,350,0), -- Justicebringer 2000 Specs
(28697,41316,50000,202,350,0), -- Living Replicator Specs
(28697,41319,50000,202,350,0), -- Magnified Moon Specs
(28697,41321,50000,202,350,0), -- Powerheal 4000 Lens
(28697,41314,50000,202,350,0), -- Surestrike Goggles v2.0
(28697,41312,50000,202,350,0), -- Tankatronic Goggles
(28697,41318,50000,202,350,0), -- Wonderheal XT40 Shades
(28697,56460,50000,202,350,0), -- Cobalt Frag Bomb
-- Engineering Grand Master
(28697,41307,50000,202,375,0), -- Gyro-balanced Khorium Destroyer
(28697,56461,50000,202,375,0), -- Bladed Pickaxe
(28697,56459,100000,202,375,0), -- Hammer Pick
(28697,56464,100000,202,375,0), -- Overcharged Capacitor
(28697,56463,100000,202,375,0), -- Explosive Decoy
(28697,55002,100000,202,380,0), -- Flexweave Underlay
(28697,54793,100000,202,380,0), -- Frag Belt
(28697,63765,100000,202,380,0), -- Springy Arachnoweave
(28697,54736,100000,202,390,0), -- Personal Electromagnetic Pulse Generator
(28697,56471,100000,202,390,0), -- Froststeel Tube
(28697,61471,100000,202,390,0), -- Diamond-cut Refractor Scope
(28697,54998,125000,202,400,0), -- Hand-Mounted Pyro Rocket
(28697,54999,125000,202,400,0), -- Hyperspeed Accelerators
(28697,63770,125000,202,400,0), -- Reticulated Armor Webbing
(28697,54353,125000,202,400,0), -- Mark "S" Boomstick
(28697,55016,125000,202,405,0), -- Nitro Boosts
(28697,56468,125000,202,405,0), -- Box of Bombs
(28697,56474,125000,202,410,0), -- Mammoth Cutters
(28697,67839,100000,202,410,0), -- Mind Amplification Dish
(28697,67326,100000,202,410,0), -- Goblin Beam Welder
(28697,56476,125000,202,410,0), -- Healing Injector Kit
(28697,56475,125000,202,415,0), -- Saronite Razorheads
(28697,56477,125000,202,415,0), -- Mana Injector Kit
(28697,61482,125000,202,420,0), -- Mechanized Snow Goggles - Mail
(28697,61483,125000,202,420,0), -- Mechanized Snow Goggles - Plate
(28697,56467,125000,202,420,0), -- Noise Machine
(28697,56466,125000,202,420,0), -- Sonic Booster
(28697,56472,150000,202,425,0), -- MOLL-E
(28697,56470,150000,202,425,0), -- Sun Scope
(28697,56469,150000,202,425,0), -- Gnomish Lightning Generator
(28697,56478,200000,202,430,0), -- Heartseeker Scope
(28697,56462,150000,202,435,0), -- Gnomish Army Knife
(28697,67920,150000,202,435,0), -- Wormhole Generator: Northrend
(28697,56480,150000,202,440,0), -- Armored Titanium Goggles
(28697,56483,150000,202,440,0), -- Charged Titanium Specs
(28697,56487,150000,202,440,0), -- Electroflux Sight Enhancers
(28697,56486,150000,202,440,0), -- Greensight Gogs
(28697,56574,150000,202,440,0), -- Truesight Ice Blinders
(28697,62271,150000,202,440,0), -- Unbreakable Healing Amplifiers
(28697,56484,150000,202,440,0), -- Visage Liquification Goggles
(28697,56481,150000,202,440,0), -- Weakness Spectralizers
(28697,56479,200000,202,450,0), -- Armor Plated Combat Shotgun
(28697,60874,200000,202,450,0); -- Nesingwary 4000

-- Jamesina Watterly <Grand Master Engineering Trainer> - Level 71 -  Howling Fjord -- 139 Entries
DELETE FROM `npc_trainer` WHERE `entry`=26955;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
-- Engineering training levels.
(26955,4039,10,0,0,5), -- Apprentice Engineer
(26955,4040,500,202,50,10), -- Journeyman Engineer
(26955,4041,5000,202,125,20), -- Expert Engineer
(26955,12657,50000,202,200,35), -- Artisan Engineer
(26955,30351,100000,202,275,50), -- Master Engineer
(26955,61464,350000,202,350,65), -- Grand Master Engineer
-- Engineering Apprentice
(26955,3922,115,202,30,0), -- Handful of Copper Bolts
(26955,3923,130,202,30,0), -- Rough Copper Bomb
(26955,7430,150,202,50,0), -- Arclight Spanner
(26955,3925,150,202,50,0), -- Rough Boomstick
(26955,3924,150,202,50,0), -- Copper Tube
-- Engineering Journeyman
(26955,3977,200,202,60,0), -- Crude Scope
(26955,3926,225,202,65,0), -- Copper Modulator
(26955,3929,250,202,75,0), -- Coarse Blasting Powder
(26955,3930,250,202,75,0), -- Crafted Heavy Shot
(26955,3931,250,202,75,0), -- Coarse Dynamite
(26955,3932,300,202,85,0), -- Target Dummy
(26955,3973,300,202,90,0), -- Silver Contact
(26955,8334,300,202,100,0), -- Practice Lock
(26955,3934,400,202,100,0), -- Flying Tiger Goggles
(26955,3938,450,202,105,0), -- Bronze Tube
(26955,3937,450,202,105,0), -- Large Copper Bomb
(26955,3936,420,202,105,0), -- Deadly Blunderbuss
(26955,3978,475,202,110,0), -- Standard Scope
(26955,3941,500,202,120,0), -- Small Bronze Bomb
(26955,3947,300,202,125,0), -- Crafted Solid Shot
(26955,3945,500,202,125,0), -- Heavy Blasting Powder
(26955,3946,500,202,125,0), -- Heavy Dynamite
(26955,3942,500,202,125,0), -- Whirring Bronze Gizmo
-- Engineering Expert
(26955,3949,550,202,130,0), -- Silver-plated Shotgun
(26955,6458,400,202,135,0), -- Ornate Spyglass
(26955,3950,600,202,140,0), -- Big Bronze Bomb
(26955,3953,600,202,145,0), -- Bronze Framework
(26955,9271,500,202,150,0), -- Aquadynamic Fish Attractor
(26955,12584,1000,202,150,0), -- Gold Power Core
(26955,3956,450,202,150,0), -- Green Tinted Goggles
(26955,3955,750,202,150,0), -- Explosive Sheep
(26955,3958,800,202,160,0), -- Iron Strut
(26955,3961,900,202,170,0), -- Gyrochronatom
(26955,12585,1000,202,175,0), -- Solid Blasting Powder
(26955,12586,1000,202,175,0), -- Solid Dynamite
(26955,3963,1000,202,175,0), -- Compact Harvest Reaper Kit
(26955,12590,1000,202,175,0), -- Gyromatic Micro-Adjustor
(26955,3962,1000,202,175,0), -- Iron Grenade
(26955,3965,1200,202,185,0), -- Advanced Target Dummy
(26955,3967,1400,202,190,0), -- Big Iron Bomb
(26955,12589,1300,202,195,0), -- Mithril Tube
(26955,15255,1500,202,200,0), -- Mechanical Repair Kit
(26955,12591,1500,202,200,0), -- Unstable Trigger
-- Engineering Artisan
(26955,12594,1600,202,205,0), -- Fire Goggles
(26955,12595,1600,202,205,0), -- Mithril Blunderbuss
(26955,12596,1700,202,210,0), -- Hi-Impact Mithril Slugs
(26955,12599,1800,202,215,0), -- Mithril Casing
(26955,12603,1800,202,215,0), -- Mithril Frag Bomb
(26955,12615,2500,202,225,0), -- Spellpower Goggles Xtreme
(26955,12618,2200,202,230,0), -- Rose Colored Goggles
(26955,12619,2400,202,235,0), -- Hi-Explosive Bomb
(26955,12621,2800,202,245,0), -- Mithril Gyro-Shot
(26955,12622,2800,202,245,0), -- Green Lens
(26955,19788,4000,202,250,0), -- Dense Blasting Powder
(26955,23070,5000,202,250,0), -- Dense Dynamite
(26955,63750,5000,202,250,0), -- High-powered Flashlight
(26955,19567,4000,202,250,0), -- Salt Shaker
(26955,23071,5000,202,260,0), -- Truesilver Transformer
(26955,19792,10000,202,260,0), -- Thorium Rifle
(26955,19790,10000,202,260,0), -- Thorium Grenade
(26955,19791,5000,202,260,0), -- Thorium Widget
(26955,19794,20000,202,270,0), -- Spellpower Goggles Xtreme Plus
(26955,19795,10000,202,275,0), -- Thorium Tube
-- Engineering Master
(26955,19800,10000,202,285,0), -- Thorium Shells
(26955,19825,20000,202,290,0), -- Master Engineer's Goggles
(26955,30305,10000,202,300,0), -- Handful of Fel Iron Bolts
(26955,30303,10000,202,300,0), -- Elemental Blasting Powder
(26955,30304,10000,202,300,0), -- Fel Iron Casing
(26955,30310,15000,202,300,0), -- Fel Iron Bomb
(26955,30346,15000,202,310,0), -- Fel Iron Shells
(26955,30312,20000,202,320,0), -- Fel Iron Musket
(26955,30306,20000,202,325,0), -- Adamantite Frame
(26955,30311,25000,202,325,0), -- Adamantite Grenade
(26955,44155,50000,202,300,60), -- Flying Machine
(26955,39971,20000,202,335,0), -- Icy Blasting Primers
(26955,30309,50000,202,340,0), -- Felsteel Stabilizer
(26955,30307,50000,202,340,0), -- Hardened Adamantite Tube
(26955,30308,50000,202,340,0), -- Khorium Power Core
(26955,56349,50000,202,350,0), -- Handful of Cobalt Bolts
(26955,53281,50000,202,350,0), -- Volatile Blasting Trigger
(26955,41317,50000,202,350,0), -- Deathblow X11 Goggles
(26955,41320,50000,202,350,0), -- Destruction Holo-gogs
(26955,40274,50000,202,350,0), -- Furious Gizmatic Goggles
(26955,41315,50000,202,350,0), -- Gadgetstorm Goggles
(26955,41311,50000,202,350,0), -- Justicebringer 2000 Specs
(26955,41316,50000,202,350,0), -- Living Replicator Specs
(26955,41319,50000,202,350,0), -- Magnified Moon Specs
(26955,41314,50000,202,350,0), -- Surestrike Goggles v2.0
(26955,41312,50000,202,350,0), -- Tankatronic Goggles
(26955,41318,50000,202,350,0), -- Wonderheal XT40 Shades
(26955,56460,50000,202,350,0), -- Cobalt Frag Bomb
-- Engineering Grand Master
(26955,41307,50000,202,375,0), -- Gyro-balanced Khorium Destroyer
(26955,56461,50000,202,375,0), -- Bladed Pickaxe
(26955,56459,100000,202,375,0), -- Hammer Pick
(26955,56464,100000,202,375,0), -- Overcharged Capacitor
(26955,56463,100000,202,375,0), -- Explosive Decoy
(26955,55002,100000,202,380,0), -- Flexweave Underlay
(26955,54793,100000,202,380,0), -- Frag Belt
(26955,63765,100000,202,380,0), -- Springy Arachnoweave
(26955,54736,100000,202,390,0), -- Personal Electromagnetic Pulse Generator
(26955,56471,100000,202,390,0), -- Froststeel Tube
(26955,61471,100000,202,390,0), -- Diamond-cut Refractor Scope
(26955,54998,125000,202,400,0), -- Hand-Mounted Pyro Rocket
(26955,54999,125000,202,400,0), -- Hyperspeed Accelerators
(26955,63770,125000,202,400,0), -- Reticulated Armor Webbing
(26955,54353,125000,202,400,0), -- Mark "S" Boomstick
(26955,55016,125000,202,405,0), -- Nitro Boosts
(26955,56468,125000,202,405,0), -- Box of Bombs
(26955,56474,125000,202,410,0), -- Mammoth Cutters
(26955,67839,100000,202,410,0), -- Mind Amplification Dish
(26955,67326,100000,202,410,0), -- Goblin Beam Welder
(26955,56476,125000,202,410,0), -- Healing Injector Kit
(26955,56475,125000,202,415,0), -- Saronite Razorheads
(26955,56477,125000,202,415,0), -- Mana Injector Kit
(26955,61483,125000,202,420,0), -- Mechanized Snow Goggles - Plate
(26955,56467,125000,202,420,0), -- Noise Machine
(26955,56466,125000,202,420,0), -- Sonic Booster
(26955,56472,150000,202,425,0), -- MOLL-E
(26955,56470,150000,202,425,0), -- Sun Scope
(26955,56469,150000,202,425,0), -- Gnomish Lightning Generator
(26955,56478,200000,202,430,0), -- Heartseeker Scope
(26955,56462,150000,202,435,0), -- Gnomish Army Knife
(26955,67920,150000,202,435,0), -- Wormhole Generator: Northrend
(26955,56480,150000,202,440,0), -- Armored Titanium Goggles
(26955,56483,150000,202,440,0), -- Charged Titanium Specs
(26955,56487,150000,202,440,0), -- Electroflux Sight Enhancers
(26955,56486,150000,202,440,0), -- Greensight Gogs
(26955,56574,150000,202,440,0), -- Truesight Ice Blinders
(26955,62271,150000,202,440,0), -- Unbreakable Healing Amplifiers
(26955,56484,150000,202,440,0), -- Visage Liquification Goggles
(26955,56481,150000,202,440,0), -- Weakness Spectralizers
(26955,56479,200000,202,450,0), -- Armor Plated Combat Shotgun
(26955,60874,200000,202,450,0); -- Nesingwary 4000

-- Sock Brightbolt <Grand Master Engineering Trainer> - Level 71 -  Borean Tundra - 137 Entries
DELETE FROM `npc_trainer` WHERE `entry`=26991;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
-- Engineering training levels.
(26991,4039,10,0,0,5), -- Apprentice Engineer
(26991,4040,500,202,50,10), -- Journeyman Engineer
(26991,4041,5000,202,125,20), -- Expert Engineer
(26991,12657,50000,202,200,35), -- Artisan Engineer
(26991,30351,100000,202,275,50), -- Master Engineer
(26991,61464,350000,202,350,65), -- Grand Master Engineer
-- Engineering Apprentice
(26991,3922,115,202,30,0), -- Handful of Copper Bolts
(26991,3923,130,202,30,0), -- Rough Copper Bomb
(26991,7430,150,202,50,0), -- Arclight Spanner
(26991,3925,150,202,50,0), -- Rough Boomstick
(26991,3924,150,202,50,0), -- Copper Tube
-- Engineering Journeyman
(26991,3977,200,202,60,0), -- Crude Scope
(26991,3926,225,202,65,0), -- Copper Modulator
(26991,3929,250,202,75,0), -- Coarse Blasting Powder
(26991,3930,250,202,75,0), -- Crafted Heavy Shot
(26991,3931,250,202,75,0), -- Coarse Dynamite
(26991,3932,300,202,85,0), -- Target Dummy
(26991,3973,300,202,90,0), -- Silver Contact
(26991,8334,300,202,100,0), -- Practice Lock
(26991,3934,400,202,100,0), -- Flying Tiger Goggles
(26991,3938,450,202,105,0), -- Bronze Tube
(26991,3937,450,202,105,0), -- Large Copper Bomb
(26991,3936,420,202,105,0), -- Deadly Blunderbuss
(26991,3978,475,202,110,0), -- Standard Scope
(26991,3941,500,202,120,0), -- Small Bronze Bomb
(26991,3947,300,202,125,0), -- Crafted Solid Shot
(26991,3945,500,202,125,0), -- Heavy Blasting Powder
(26991,3946,500,202,125,0), -- Heavy Dynamite
(26991,3942,500,202,125,0), -- Whirring Bronze Gizmo
-- Engineering Expert
(26991,3949,550,202,130,0), -- Silver-plated Shotgun
(26991,6458,400,202,135,0), -- Ornate Spyglass
(26991,3950,600,202,140,0), -- Big Bronze Bomb
(26991,3953,600,202,145,0), -- Bronze Framework
(26991,9271,500,202,150,0), -- Aquadynamic Fish Attractor
(26991,12584,1000,202,150,0), -- Gold Power Core
(26991,3956,450,202,150,0), -- Green Tinted Goggles
(26991,3955,750,202,150,0), -- Explosive Sheep
(26991,3958,800,202,160,0), -- Iron Strut
(26991,3961,900,202,170,0), -- Gyrochronatom
(26991,12585,1000,202,175,0), -- Solid Blasting Powder
(26991,12586,1000,202,175,0), -- Solid Dynamite
(26991,3963,1000,202,175,0), -- Compact Harvest Reaper Kit
(26991,12590,1000,202,175,0), -- Gyromatic Micro-Adjustor
(26991,3962,1000,202,175,0), -- Iron Grenade
(26991,3965,1200,202,185,0), -- Advanced Target Dummy
(26991,3967,1400,202,190,0), -- Big Iron Bomb
(26991,12589,1300,202,195,0), -- Mithril Tube
(26991,15255,1500,202,200,0), -- Mechanical Repair Kit
(26991,12591,1500,202,200,0), -- Unstable Trigger
-- Engineering Artisan
(26991,12594,1600,202,205,0), -- Fire Goggles
(26991,12595,1600,202,205,0), -- Mithril Blunderbuss
(26991,12596,1700,202,210,0), -- Hi-Impact Mithril Slugs
(26991,12599,1800,202,215,0), -- Mithril Casing
(26991,12603,1800,202,215,0), -- Mithril Frag Bomb
(26991,12615,2500,202,225,0), -- Spellpower Goggles Xtreme
(26991,12618,2200,202,230,0), -- Rose Colored Goggles
(26991,12619,2400,202,235,0), -- Hi-Explosive Bomb
(26991,12621,2800,202,245,0), -- Mithril Gyro-Shot
(26991,12622,2800,202,245,0), -- Green Lens
(26991,19788,4000,202,250,0), -- Dense Blasting Powder
(26991,23070,5000,202,250,0), -- Dense Dynamite
(26991,63750,5000,202,250,0), -- High-powered Flashlight
(26991,19567,4000,202,250,0), -- Salt Shaker
(26991,23071,5000,202,260,0), -- Truesilver Transformer
(26991,19792,10000,202,260,0), -- Thorium Rifle
(26991,19790,10000,202,260,0), -- Thorium Grenade
(26991,19791,5000,202,260,0), -- Thorium Widget
(26991,19794,20000,202,270,0), -- Spellpower Goggles Xtreme Plus
(26991,19795,10000,202,275,0), -- Thorium Tube
-- Engineering Master
(26991,19800,10000,202,285,0), -- Thorium Shells
(26991,19825,20000,202,290,0), -- Master Engineer's Goggles
(26991,30305,10000,202,300,0), -- Handful of Fel Iron Bolts
(26991,30303,10000,202,300,0), -- Elemental Blasting Powder
(26991,30304,10000,202,300,0), -- Fel Iron Casing
(26991,30310,15000,202,300,0), -- Fel Iron Bomb
(26991,30346,15000,202,310,0), -- Fel Iron Shells
(26991,30312,20000,202,320,0), -- Fel Iron Musket
(26991,30306,20000,202,325,0), -- Adamantite Frame
(26991,30311,25000,202,325,0), -- Adamantite Grenade
(26991,44155,50000,202,300,60), -- Flying Machine
(26991,39971,20000,202,335,0), -- Icy Blasting Primers
(26991,30309,50000,202,340,0), -- Felsteel Stabilizer
(26991,30307,50000,202,340,0), -- Hardened Adamantite Tube
(26991,30308,50000,202,340,0), -- Khorium Power Core
(26991,56349,50000,202,350,0), -- Handful of Cobalt Bolts
(26991,53281,50000,202,350,0), -- Volatile Blasting Trigger
(26991,41317,50000,202,350,0), -- Deathblow X11 Goggles
(26991,41320,50000,202,350,0), -- Destruction Holo-gogs
(26991,40274,50000,202,350,0), -- Furious Gizmatic Goggles
(26991,41315,50000,202,350,0), -- Gadgetstorm Goggles
(26991,41311,50000,202,350,0), -- Justicebringer 2000 Specs
(26991,41316,50000,202,350,0), -- Living Replicator Specs
(26991,41319,50000,202,350,0), -- Magnified Moon Specs
(26991,41314,50000,202,350,0), -- Surestrike Goggles v2.0
(26991,41312,50000,202,350,0), -- Tankatronic Goggles
(26991,56460,50000,202,350,0), -- Cobalt Frag Bomb
-- Engineering Grand Master
(26991,41307,50000,202,375,0), -- Gyro-balanced Khorium Destroyer
(26991,56461,50000,202,375,0), -- Bladed Pickaxe
(26991,56459,100000,202,375,0), -- Hammer Pick
(26991,56464,100000,202,375,0), -- Overcharged Capacitor
(26991,56463,100000,202,375,0), -- Explosive Decoy
(26991,55002,100000,202,380,0), -- Flexweave Underlay
(26991,54793,100000,202,380,0), -- Frag Belt
(26991,63765,100000,202,380,0), -- Springy Arachnoweave
(26991,54736,100000,202,390,0), -- Personal Electromagnetic Pulse Generator
(26991,56471,100000,202,390,0), -- Froststeel Tube
(26991,61471,100000,202,390,0), -- Diamond-cut Refractor Scope
(26991,54998,125000,202,400,0), -- Hand-Mounted Pyro Rocket
(26991,54999,125000,202,400,0), -- Hyperspeed Accelerators
(26991,63770,125000,202,400,0), -- Reticulated Armor Webbing
(26991,54353,125000,202,400,0), -- Mark "S" Boomstick
(26991,55016,125000,202,405,0), -- Nitro Boosts
(26991,56468,125000,202,405,0), -- Box of Bombs
(26991,56474,125000,202,410,0), -- Mammoth Cutters
(26991,67839,100000,202,410,0), -- Mind Amplification Dish
(26991,67326,100000,202,410,0), -- Goblin Beam Welder
(26991,56476,125000,202,410,0), -- Healing Injector Kit
(26991,56475,125000,202,415,0), -- Saronite Razorheads
(26991,56477,125000,202,415,0), -- Mana Injector Kit
(26991,61483,125000,202,420,0), -- Mechanized Snow Goggles - Plate
(26991,56467,125000,202,420,0), -- Noise Machine
(26991,56466,125000,202,420,0), -- Sonic Booster
(26991,56472,150000,202,425,0), -- MOLL-E
(26991,56470,150000,202,425,0), -- Sun Scope
(26991,56469,150000,202,425,0), -- Gnomish Lightning Generator
(26991,56478,200000,202,430,0), -- Heartseeker Scope
(26991,56462,150000,202,435,0), -- Gnomish Army Knife
(26991,67920,150000,202,435,0), -- Wormhole Generator: Northrend
(26991,56480,150000,202,440,0), -- Armored Titanium Goggles
(26991,56483,150000,202,440,0), -- Charged Titanium Specs
(26991,56487,150000,202,440,0), -- Electroflux Sight Enhancers
(26991,56574,150000,202,440,0), -- Truesight Ice Blinders
(26991,62271,150000,202,440,0), -- Unbreakable Healing Amplifiers
(26991,56484,150000,202,440,0), -- Visage Liquification Goggles
(26991,56481,150000,202,440,0), -- Weakness Spectralizers
(26991,56479,200000,202,450,0), -- Armor Plated Combat Shotgun
(26991,60874,200000,202,450,0); -- Nesingwary 4000

-- Tisha Longbridge <Grand Master Engineering Trainer> - Level 71 - Icecrown -- 140 Entries
DELETE FROM `npc_trainer` WHERE `entry`=26907;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
-- Engineering training levels.
(26907,4039,10,0,0,5), -- Apprentice Engineer
(26907,4040,500,202,50,10), -- Journeyman Engineer
(26907,4041,5000,202,125,20), -- Expert Engineer
(26907,12657,50000,202,200,35), -- Artisan Engineer
(26907,30351,100000,202,275,50), -- Master Engineer
(26907,61464,350000,202,350,65), -- Grand Master Engineer
-- Engineering Apprentice
(26907,3922,115,202,30,0), -- Handful of Copper Bolts
(26907,3923,130,202,30,0), -- Rough Copper Bomb
(26907,7430,150,202,50,0), -- Arclight Spanner
(26907,3925,150,202,50,0), -- Rough Boomstick
(26907,3924,150,202,50,0), -- Copper Tube
-- Engineering Journeyman
(26907,3977,200,202,60,0), -- Crude Scope
(26907,3926,225,202,65,0), -- Copper Modulator
(26907,3929,250,202,75,0), -- Coarse Blasting Powder
(26907,3930,250,202,75,0), -- Crafted Heavy Shot
(26907,3931,250,202,75,0), -- Coarse Dynamite
(26907,3932,300,202,85,0), -- Target Dummy
(26907,3973,300,202,90,0), -- Silver Contact
(26907,8334,300,202,100,0), -- Practice Lock
(26907,3934,400,202,100,0), -- Flying Tiger Goggles
(26907,3938,450,202,105,0), -- Bronze Tube
(26907,3937,450,202,105,0), -- Large Copper Bomb
(26907,3936,420,202,105,0), -- Deadly Blunderbuss
(26907,3978,475,202,110,0), -- Standard Scope
(26907,3941,500,202,120,0), -- Small Bronze Bomb
(26907,3947,300,202,125,0), -- Crafted Solid Shot
(26907,3945,500,202,125,0), -- Heavy Blasting Powder
(26907,3946,500,202,125,0), -- Heavy Dynamite
(26907,3942,500,202,125,0), -- Whirring Bronze Gizmo
-- Engineering Expert
(26907,3949,550,202,130,0), -- Silver-plated Shotgun
(26907,6458,400,202,135,0), -- Ornate Spyglass
(26907,3950,600,202,140,0), -- Big Bronze Bomb
(26907,3953,600,202,145,0), -- Bronze Framework
(26907,9271,500,202,150,0), -- Aquadynamic Fish Attractor
(26907,12584,1000,202,150,0), -- Gold Power Core
(26907,3956,450,202,150,0), -- Green Tinted Goggles
(26907,3955,750,202,150,0), -- Explosive Sheep
(26907,3958,800,202,160,0), -- Iron Strut
(26907,3961,900,202,170,0), -- Gyrochronatom
(26907,12585,1000,202,175,0), -- Solid Blasting Powder
(26907,12586,1000,202,175,0), -- Solid Dynamite
(26907,3963,1000,202,175,0), -- Compact Harvest Reaper Kit
(26907,12590,1000,202,175,0), -- Gyromatic Micro-Adjustor
(26907,3962,1000,202,175,0), -- Iron Grenade
(26907,3965,1200,202,185,0), -- Advanced Target Dummy
(26907,3967,1400,202,190,0), -- Big Iron Bomb
(26907,12589,1300,202,195,0), -- Mithril Tube
(26907,15255,1500,202,200,0), -- Mechanical Repair Kit
(26907,12591,1500,202,200,0), -- Unstable Trigger
-- Engineering Artisan
(26907,12594,1600,202,205,0), -- Fire Goggles
(26907,12595,1600,202,205,0), -- Mithril Blunderbuss
(26907,12596,1700,202,210,0), -- Hi-Impact Mithril Slugs
(26907,12599,1800,202,215,0), -- Mithril Casing
(26907,12603,1800,202,215,0), -- Mithril Frag Bomb
(26907,12615,2500,202,225,0), -- Spellpower Goggles Xtreme
(26907,12618,2200,202,230,0), -- Rose Colored Goggles
(26907,12619,2400,202,235,0), -- Hi-Explosive Bomb
(26907,12621,2800,202,245,0), -- Mithril Gyro-Shot
(26907,12622,2800,202,245,0), -- Green Lens
(26907,19788,4000,202,250,0), -- Dense Blasting Powder
(26907,23070,5000,202,250,0), -- Dense Dynamite
(26907,63750,5000,202,250,0), -- High-powered Flashlight
(26907,19567,4000,202,250,0), -- Salt Shaker
(26907,23071,5000,202,260,0), -- Truesilver Transformer
(26907,19792,10000,202,260,0), -- Thorium Rifle
(26907,19790,10000,202,260,0), -- Thorium Grenade
(26907,19791,5000,202,260,0), -- Thorium Widget
(26907,19794,20000,202,270,0), -- Spellpower Goggles Xtreme Plus
(26907,19795,10000,202,275,0), -- Thorium Tube
-- Engineering Master
(26907,19800,10000,202,285,0), -- Thorium Shells
(26907,19825,20000,202,290,0), -- Master Engineer's Goggles
(26907,30305,10000,202,300,0), -- Handful of Fel Iron Bolts
(26907,30303,10000,202,300,0), -- Elemental Blasting Powder
(26907,30304,10000,202,300,0), -- Fel Iron Casing
(26907,30310,15000,202,300,0), -- Fel Iron Bomb
(26907,30346,15000,202,310,0), -- Fel Iron Shells
(26907,30312,20000,202,320,0), -- Fel Iron Musket
(26907,30306,20000,202,325,0), -- Adamantite Frame
(26907,30311,25000,202,325,0), -- Adamantite Grenade
(26907,44155,50000,202,300,60), -- Flying Machine
(26907,39971,20000,202,335,0), -- Icy Blasting Primers
(26907,30309,50000,202,340,0), -- Felsteel Stabilizer
(26907,30307,50000,202,340,0), -- Hardened Adamantite Tube
(26907,30308,50000,202,340,0), -- Khorium Power Core
(26907,56349,50000,202,350,0), -- Handful of Cobalt Bolts
(26907,53281,50000,202,350,0), -- Volatile Blasting Trigger
(26907,41317,50000,202,350,0), -- Deathblow X11 Goggles
(26907,41320,50000,202,350,0), -- Destruction Holo-gogs
(26907,40274,50000,202,350,0), -- Furious Gizmatic Goggles
(26907,41315,50000,202,350,0), -- Gadgetstorm Goggles
(26907,41311,50000,202,350,0), -- Justicebringer 2000 Specs
(26907,41316,50000,202,350,0), -- Living Replicator Specs
(26907,41319,50000,202,350,0), -- Magnified Moon Specs
(26907,41321,50000,202,350,0), -- Powerheal 4000 Lens
(26907,41314,50000,202,350,0), -- Surestrike Goggles v2.0
(26907,41312,50000,202,350,0), -- Tankatronic Goggles
(26907,41318,50000,202,350,0), -- Wonderheal XT40 Shades
(26907,56460,50000,202,350,0), -- Cobalt Frag Bomb
-- Engineering Grand Master
(26907,41307,50000,202,375,0), -- Gyro-balanced Khorium Destroyer
(26907,56461,50000,202,375,0), -- Bladed Pickaxe
(26907,56459,100000,202,375,0), -- Hammer Pick
(26907,56464,100000,202,375,0), -- Overcharged Capacitor
(26907,56463,100000,202,375,0), -- Explosive Decoy
(26907,55002,100000,202,380,0), -- Flexweave Underlay
(26907,54793,100000,202,380,0), -- Frag Belt
(26907,63765,100000,202,380,0), -- Springy Arachnoweave
(26907,54736,100000,202,390,0), -- Personal Electromagnetic Pulse Generator
(26907,56471,100000,202,390,0), -- Froststeel Tube
(26907,61471,100000,202,390,0), -- Diamond-cut Refractor Scope
(26907,54998,125000,202,400,0), -- Hand-Mounted Pyro Rocket
(26907,54999,125000,202,400,0), -- Hyperspeed Accelerators
(26907,63770,125000,202,400,0), -- Reticulated Armor Webbing
(26907,54353,125000,202,400,0), -- Mark "S" Boomstick
(26907,55016,125000,202,405,0), -- Nitro Boosts
(26907,56468,125000,202,405,0), -- Box of Bombs
(26907,56474,125000,202,410,0), -- Mammoth Cutters
(26907,67839,100000,202,410,0), -- Mind Amplification Dish
(26907,67326,100000,202,410,0), -- Goblin Beam Welder
(26907,56476,125000,202,410,0), -- Healing Injector Kit
(26907,56475,125000,202,415,0), -- Saronite Razorheads
(26907,56477,125000,202,415,0), -- Mana Injector Kit
(26907,61483,125000,202,420,0), -- Mechanized Snow Goggles - Plate
(26907,56467,125000,202,420,0), -- Noise Machine
(26907,56466,125000,202,420,0), -- Sonic Booster
(26907,56472,150000,202,425,0), -- MOLL-E
(26907,56470,150000,202,425,0), -- Sun Scope
(26907,56469,150000,202,425,0), -- Gnomish Lightning Generator
(26907,56478,200000,202,430,0), -- Heartseeker Scope
(26907,56462,150000,202,435,0), -- Gnomish Army Knife
(26907,67920,150000,202,435,0), -- Wormhole Generator: Northrend
(26907,56480,150000,202,440,0), -- Armored Titanium Goggles
(26907,56483,150000,202,440,0), -- Charged Titanium Specs
(26907,56487,150000,202,440,0), -- Electroflux Sight Enhancers
(26907,56486,150000,202,440,0), -- Greensight Gogs
(26907,56574,150000,202,440,0), -- Truesight Ice Blinders
(26907,62271,150000,202,440,0), -- Unbreakable Healing Amplifiers
(26907,56484,150000,202,440,0), -- Visage Liquification Goggles
(26907,56481,150000,202,440,0), -- Weakness Spectralizers
(26907,56479,200000,202,450,0), -- Armor Plated Combat Shotgun
(26907,60874,200000,202,450,0); -- Nesingwary 4000

-- Findle Whistlesteam <Gnome Engineering Trainer> - Level 75 - Dalaran -- 15 Entries
DELETE FROM `npc_trainer` WHERE `entry`=29514;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
(29514,12895,1500,202,205,0), -- Inlaid Mithril Cylinder Plans
(29514,12899,1500,202,205,0), -- Gnomish Shrink Ray
(29514,12897,1500,202,210,0), -- Gnomish Goggles
(29514,12902,1800,202,210,0), -- Gnomish Net-o-Matic Projector
(29514,12903,2000,202,215,0), -- Gnomish Harm Prevention Belt
(29514,12905,2200,202,225,0), -- Gnomish Rocket Boots
(29514,12906,2400,202,230,0), -- Gnomish Battle Chicken
(29514,12907,2600,202,235,0), -- Gnomish Mind Control Cap
(29514,12759,2800,202,240,0), -- Gnomish Death Ray
(29514,30568,25000,202,325,0), -- Gnomish Flame Turret
(29514,30569,35000,202,340,0), -- Gnomish Poultryizer
(29514,30570,50000,202,350,0), -- Nigh-Invulnerability Belt
(29514,30575,100000,202,375,0), -- Gnomish Battle Goggles
(29514,30574,100000,202,375,0), -- Gnomish Power Goggles 
(29514,56473,150000,202,425,0); -- Gnomish X-Ray Specs

-- Didi the Wrench <Goblin Engineering Trainer> - Level 75 - Dalaran -- 16 Entries
DELETE FROM `npc_trainer` WHERE `entry`=29513;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
(29513,12715,1000,202,205,0), -- Goblin Rocket Fuel Recipe
(29513,13240,1500,202,205,0), -- The Mortar: Reloaded
(29513,12760,1500,202,205,0), -- Goblin Sapper Charge
(29513,12718,1500,202,205,0), -- Goblin Construction Helmet
(29513,12717,1500,202,205,0), -- Goblin Mining Helmet
(29513,8895,2200,202,225,0), -- Goblin Rocket Boots
(29513,12755,2400,202,230,0), -- Goblin Bomb Dispenser
(29513,12754,2600,202,235,0), -- The Big One
(29513,12908,2800,202,240,0), -- Goblin Dragon Gun
(29513,12758,3000,202,245,0), -- Goblin Rocket Helmet
(29513,30558,25000,202,325,0), -- The Bigger One
(29513,30560,35000,202,340,0), -- Super Sapper Charge
(29513,30563,50000,202,350,0), -- Goblin Rocket Launcher
(29513,30565,100000,202,375,0), -- Foreman's Enchanted Helmet
(29513,30566,100000,202,375,0), -- Foreman's Reinforced Helmet
(29513,56514,150000,202,425,0); -- Global Thermal Sapper Charge

-- Jonathan Garrett <Master Engineering Trainer> - Level 70 - Shadowmoon Valley -- 2 Entries
DELETE FROM `npc_trainer` WHERE `entry`=25099;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
(25099,44155,60000,202,300,60), -- Flying Machine
(25099,44157,180000,202,375,70); -- Turbo-Charged Flying Machine

-- Niobe Whizzlespark <Master Engineering Trainer> - Level 70 - Shadowmoon Valley -- 2 Entries
DELETE FROM `npc_trainer` WHERE `entry`=24868;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
(24868,44155,60000,202,300,60), -- Flying Machine
(24868,44157,180000,202,375,70); -- Turbo-Charged Flying Machine

-- Xyrol <Master Engineering Trainer> - Level 65 - Netherstorm -- 90 Entries
DELETE FROM `npc_trainer` WHERE `entry`=19576;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
-- Engineering training levels.
(19576,4039,10,0,0,5), -- Apprentice Engineer
(19576,4040,500,202,50,10), -- Journeyman Engineer
(19576,4041,5000,202,125,20), -- Expert Engineer
(19576,12657,50000,202,200,35), -- Artisan Engineer
(19576,30351,100000,202,275,50), -- Master Engineer
-- Engineering Apprentice
(19576,3922,115,202,30,0), -- Handful of Copper Bolts
(19576,3923,130,202,30,0), -- Rough Copper Bomb
(19576,7430,150,202,50,0), -- Arclight Spanner
(19576,3925,150,202,50,0), -- Rough Boomstick
(19576,3924,150,202,50,0), -- Copper Tube
-- Engineering Journeyman
(19576,3977,200,202,60,0), -- Crude Scope
(19576,3926,225,202,65,0), -- Copper Modulator
(19576,3929,250,202,75,0), -- Coarse Blasting Powder
(19576,3930,250,202,75,0), -- Crafted Heavy Shot
(19576,3931,250,202,75,0), -- Coarse Dynamite
(19576,3932,300,202,85,0), -- Target Dummy
(19576,3973,300,202,90,0), -- Silver Contact
(19576,8334,300,202,100,0), -- Practice Lock
(19576,3934,400,202,100,0), -- Flying Tiger Goggles
(19576,3938,450,202,105,0), -- Bronze Tube
(19576,3937,450,202,105,0), -- Large Copper Bomb
(19576,3936,420,202,105,0), -- Deadly Blunderbuss
(19576,3978,475,202,110,0), -- Standard Scope
(19576,3941,500,202,120,0), -- Small Bronze Bomb
(19576,3947,300,202,125,0), -- Crafted Solid Shot
(19576,3945,500,202,125,0), -- Heavy Blasting Powder
(19576,3946,500,202,125,0), -- Heavy Dynamite
(19576,3942,500,202,125,0), -- Whirring Bronze Gizmo
-- Engineering Expert
(19576,3949,550,202,130,0), -- Silver-plated Shotgun
(19576,6458,400,202,135,0), -- Ornate Spyglass
(19576,3950,600,202,140,0), -- Big Bronze Bomb
(19576,3953,600,202,145,0), -- Bronze Framework
(19576,9271,500,202,150,0), -- Aquadynamic Fish Attractor
(19576,12584,1000,202,150,0), -- Gold Power Core
(19576,3956,450,202,150,0), -- Green Tinted Goggles
(19576,3955,750,202,150,0), -- Explosive Sheep
(19576,3958,800,202,160,0), -- Iron Strut
(19576,3961,900,202,170,0), -- Gyrochronatom
(19576,12585,1000,202,175,0), -- Solid Blasting Powder
(19576,12586,1000,202,175,0), -- Solid Dynamite
(19576,3963,1000,202,175,0), -- Compact Harvest Reaper Kit
(19576,12590,1000,202,175,0), -- Gyromatic Micro-Adjustor
(19576,3962,1000,202,175,0), -- Iron Grenade
(19576,3965,1200,202,185,0), -- Advanced Target Dummy
(19576,3967,1400,202,190,0), -- Big Iron Bomb
(19576,12589,1300,202,195,0), -- Mithril Tube
(19576,15255,1500,202,200,0), -- Mechanical Repair Kit
(19576,12591,1500,202,200,0), -- Unstable Trigger
-- Engineering Artisan
(19576,12594,1600,202,205,0), -- Fire Goggles
(19576,12595,1600,202,205,0), -- Mithril Blunderbuss
(19576,12596,1700,202,210,0), -- Hi-Impact Mithril Slugs
(19576,12599,1800,202,215,0), -- Mithril Casing
(19576,12603,1800,202,215,0), -- Mithril Frag Bomb
(19576,12615,2500,202,225,0), -- Spellpower Goggles Xtreme
(19576,12618,2200,202,230,0), -- Rose Colored Goggles
(19576,12619,2400,202,235,0), -- Hi-Explosive Bomb
(19576,12621,2800,202,245,0), -- Mithril Gyro-Shot
(19576,12622,2800,202,245,0), -- Green Lens
(19576,19788,4000,202,250,0), -- Dense Blasting Powder
(19576,23070,5000,202,250,0), -- Dense Dynamite
(19576,63750,5000,202,250,0), -- High-powered Flashlight
(19576,19567,4000,202,250,0), -- Salt Shaker
(19576,23071,5000,202,260,0), -- Truesilver Transformer
(19576,19792,10000,202,260,0), -- Thorium Rifle
(19576,19790,10000,202,260,0), -- Thorium Grenade
(19576,19791,5000,202,260,0), -- Thorium Widget
(19576,19794,20000,202,270,0), -- Spellpower Goggles Xtreme Plus
(19576,19795,10000,202,275,0), -- Thorium Tube
-- Engineering Master
(19576,19800,10000,202,285,0), -- Thorium Shells
(19576,19825,20000,202,290,0), -- Master Engineer's Goggles
(19576,30305,10000,202,300,0), -- Handful of Fel Iron Bolts
(19576,30303,10000,202,300,0), -- Elemental Blasting Powder
(19576,30304,10000,202,300,0), -- Fel Iron Casing
(19576,30310,15000,202,300,0), -- Fel Iron Bomb
(19576,30346,15000,202,310,0), -- Fel Iron Shells
(19576,30312,20000,202,320,0), -- Fel Iron Musket
(19576,30306,20000,202,325,0), -- Adamantite Frame
(19576,30311,25000,202,325,0), -- Adamantite Grenade
(19576,44155,50000,202,300,60), -- Flying Machine
(19576,39971,20000,202,335,0), -- Icy Blasting Primers
(19576,39973,50000,202,335,0), -- Frost Grenades
(19576,30309,50000,202,340,0), -- Felsteel Stabilizer
(19576,30307,50000,202,340,0), -- Hardened Adamantite Tube
(19576,30308,50000,202,340,0), -- Khorium Power Core
(19576,41317,50000,202,350,0), -- Deathblow X11 Goggles
(19576,41320,50000,202,350,0), -- Destruction Holo-gogs
(19576,40274,50000,202,350,0), -- Furious Gizmatic Goggles
(19576,41314,50000,202,350,0), -- Surestrike Goggles v2.0
(19576,41312,50000,202,350,0), -- Tankatronic Goggles
(19576,41307,50000,202,375,0); -- Gyro-balanced Khorium Destroyer

-- K. Lee Smallfry <Master Engineering Trainer> - Level 65 - Zangarmarsh -- 95 Entries
DELETE FROM `npc_trainer` WHERE `entry`=17634;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
-- Engineering training levels.
(17634,4039,10,0,0,5), -- Apprentice Engineer
(17634,4040,500,202,50,10), -- Journeyman Engineer
(17634,4041,5000,202,125,20), -- Expert Engineer
(17634,12657,50000,202,200,35), -- Artisan Engineer
(17634,30351,100000,202,275,50), -- Master Engineer
-- Engineering Apprentice
(17634,3922,115,202,30,0), -- Handful of Copper Bolts
(17634,3923,130,202,30,0), -- Rough Copper Bomb
(17634,7430,150,202,50,0), -- Arclight Spanner
(17634,3925,150,202,50,0), -- Rough Boomstick
(17634,3924,150,202,50,0), -- Copper Tube
-- Engineering Journeyman
(17634,3977,200,202,60,0), -- Crude Scope
(17634,3926,225,202,65,0), -- Copper Modulator
(17634,3929,250,202,75,0), -- Coarse Blasting Powder
(17634,3930,250,202,75,0), -- Crafted Heavy Shot
(17634,3931,250,202,75,0), -- Coarse Dynamite
(17634,3932,300,202,85,0), -- Target Dummy
(17634,3973,300,202,90,0), -- Silver Contact
(17634,8334,300,202,100,0), -- Practice Lock
(17634,3934,400,202,100,0), -- Flying Tiger Goggles
(17634,3938,450,202,105,0), -- Bronze Tube
(17634,3937,450,202,105,0), -- Large Copper Bomb
(17634,3936,420,202,105,0), -- Deadly Blunderbuss
(17634,3978,475,202,110,0), -- Standard Scope
(17634,3941,500,202,120,0), -- Small Bronze Bomb
(17634,3947,300,202,125,0), -- Crafted Solid Shot
(17634,3945,500,202,125,0), -- Heavy Blasting Powder
(17634,3946,500,202,125,0), -- Heavy Dynamite
(17634,3942,500,202,125,0), -- Whirring Bronze Gizmo
-- Engineering Expert
(17634,3949,550,202,130,0), -- Silver-plated Shotgun
(17634,6458,400,202,135,0), -- Ornate Spyglass
(17634,3950,600,202,140,0), -- Big Bronze Bomb
(17634,3953,600,202,145,0), -- Bronze Framework
(17634,9271,500,202,150,0), -- Aquadynamic Fish Attractor
(17634,12584,1000,202,150,0), -- Gold Power Core
(17634,3956,450,202,150,0), -- Green Tinted Goggles
(17634,3955,750,202,150,0), -- Explosive Sheep
(17634,3958,800,202,160,0), -- Iron Strut
(17634,3961,900,202,170,0), -- Gyrochronatom
(17634,12585,1000,202,175,0), -- Solid Blasting Powder
(17634,12586,1000,202,175,0), -- Solid Dynamite
(17634,3963,1000,202,175,0), -- Compact Harvest Reaper Kit
(17634,12590,1000,202,175,0), -- Gyromatic Micro-Adjustor
(17634,3962,1000,202,175,0), -- Iron Grenade
(17634,3965,1200,202,185,0), -- Advanced Target Dummy
(17634,3967,1400,202,190,0), -- Big Iron Bomb
(17634,12589,1300,202,195,0), -- Mithril Tube
(17634,15255,1500,202,200,0), -- Mechanical Repair Kit
(17634,12591,1500,202,200,0), -- Unstable Trigger
-- Engineering Artisan
(17634,12594,1600,202,205,0), -- Fire Goggles
(17634,12595,1600,202,205,0), -- Mithril Blunderbuss
(17634,12596,1700,202,210,0), -- Hi-Impact Mithril Slugs
(17634,12599,1800,202,215,0), -- Mithril Casing
(17634,12603,1800,202,215,0), -- Mithril Frag Bomb
(17634,12615,2500,202,225,0), -- Spellpower Goggles Xtreme
(17634,12618,2200,202,230,0), -- Rose Colored Goggles
(17634,12619,2400,202,235,0), -- Hi-Explosive Bomb
(17634,12621,2800,202,245,0), -- Mithril Gyro-Shot
(17634,12622,2800,202,245,0), -- Green Lens
(17634,19788,4000,202,250,0), -- Dense Blasting Powder
(17634,23070,5000,202,250,0), -- Dense Dynamite
(17634,63750,5000,202,250,0), -- High-powered Flashlight
(17634,19567,4000,202,250,0), -- Salt Shaker
(17634,23071,5000,202,260,0), -- Truesilver Transformer
(17634,19792,10000,202,260,0), -- Thorium Rifle
(17634,19790,10000,202,260,0), -- Thorium Grenade
(17634,19791,5000,202,260,0), -- Thorium Widget
(17634,19794,20000,202,270,0), -- Spellpower Goggles Xtreme Plus
(17634,19795,10000,202,275,0), -- Thorium Tube
-- Engineering Master
(17634,19800,10000,202,285,0), -- Thorium Shells
(17634,19825,20000,202,290,0), -- Master Engineer's Goggles
(17634,30305,10000,202,300,0), -- Handful of Fel Iron Bolts
(17634,30303,10000,202,300,0), -- Elemental Blasting Powder
(17634,30304,10000,202,300,0), -- Fel Iron Casing
(17634,30310,15000,202,300,0), -- Fel Iron Bomb
(17634,30346,15000,202,310,0), -- Fel Iron Shells
(17634,30312,20000,202,320,0), -- Fel Iron Musket
(17634,30306,20000,202,325,0), -- Adamantite Frame
(17634,30311,25000,202,325,0), -- Adamantite Grenade
(17634,44155,50000,202,300,60), -- Flying Machine
(17634,39971,20000,202,335,0), -- Icy Blasting Primers
(17634,39973,50000,202,335,0), -- Frost Grenades
(17634,30309,50000,202,340,0), -- Felsteel Stabilizer
(17634,30307,50000,202,340,0), -- Hardened Adamantite Tube
(17634,30308,50000,202,340,0), -- Khorium Power Core
(17634,41317,50000,202,350,0), -- Deathblow X11 Goggles
(17634,41320,50000,202,350,0), -- Destruction Holo-gogs
(17634,40274,50000,202,350,0), -- Furious Gizmatic Goggles
(17634,41315,50000,202,350,0), -- Gadgetstorm Goggles
(17634,41311,50000,202,350,0), -- Justicebringer 2000 Specs
(17634,41316,50000,202,350,0), -- Living Replicator Specs
(17634,41319,50000,202,350,0), -- Magnified Moon Specs
(17634,41314,50000,202,350,0), -- Surestrike Goggles v2.0
(17634,41312,50000,202,350,0), -- Tankatronic Goggles
(17634,41318,50000,202,350,0), -- Wonderheal XT40 Shades
(17634,41307,50000,202,375,0); -- Gyro-balanced Khorium Destroyer

-- Mack Diver <Master Engineering Trainer> - Level 65 - Zangarmarsh -- 87 Entries
DELETE FROM `npc_trainer` WHERE `entry`=17637;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
-- Engineering training levels.
(17637,4039,10,0,0,5), -- Apprentice Engineer
(17637,4040,500,202,50,10), -- Journeyman Engineer
(17637,4041,5000,202,125,20), -- Expert Engineer
(17637,12657,50000,202,200,35), -- Artisan Engineer
(17637,30351,100000,202,275,50), -- Master Engineer
-- Engineering Apprentice
(17637,3922,115,202,30,0), -- Handful of Copper Bolts
(17637,3923,130,202,30,0), -- Rough Copper Bomb
(17637,7430,150,202,50,0), -- Arclight Spanner
(17637,3925,150,202,50,0), -- Rough Boomstick
(17637,3924,150,202,50,0), -- Copper Tube
-- Engineering Journeyman
(17637,3977,200,202,60,0), -- Crude Scope
(17637,3926,225,202,65,0), -- Copper Modulator
(17637,3929,250,202,75,0), -- Coarse Blasting Powder
(17637,3930,250,202,75,0), -- Crafted Heavy Shot
(17637,3931,250,202,75,0), -- Coarse Dynamite
(17637,3932,300,202,85,0), -- Target Dummy
(17637,3973,300,202,90,0), -- Silver Contact
(17637,8334,300,202,100,0), -- Practice Lock
(17637,3934,400,202,100,0), -- Flying Tiger Goggles
(17637,3938,450,202,105,0), -- Bronze Tube
(17637,3937,450,202,105,0), -- Large Copper Bomb
(17637,3936,420,202,105,0), -- Deadly Blunderbuss
(17637,3978,475,202,110,0), -- Standard Scope
(17637,3941,500,202,120,0), -- Small Bronze Bomb
(17637,3947,300,202,125,0), -- Crafted Solid Shot
(17637,3945,500,202,125,0), -- Heavy Blasting Powder
(17637,3946,500,202,125,0), -- Heavy Dynamite
(17637,3942,500,202,125,0), -- Whirring Bronze Gizmo
-- Engineering Expert
(17637,3949,550,202,130,0), -- Silver-plated Shotgun
(17637,6458,400,202,135,0), -- Ornate Spyglass
(17637,3950,600,202,140,0), -- Big Bronze Bomb
(17637,3953,600,202,145,0), -- Bronze Framework
(17637,9271,500,202,150,0), -- Aquadynamic Fish Attractor
(17637,12584,1000,202,150,0), -- Gold Power Core
(17637,3956,450,202,150,0), -- Green Tinted Goggles
(17637,3955,750,202,150,0), -- Explosive Sheep
(17637,3958,800,202,160,0), -- Iron Strut
(17637,3961,900,202,170,0), -- Gyrochronatom
(17637,12585,1000,202,175,0), -- Solid Blasting Powder
(17637,12586,1000,202,175,0), -- Solid Dynamite
(17637,3963,1000,202,175,0), -- Compact Harvest Reaper Kit
(17637,12590,1000,202,175,0), -- Gyromatic Micro-Adjustor
(17637,3962,1000,202,175,0), -- Iron Grenade
(17637,3965,1200,202,185,0), -- Advanced Target Dummy
(17637,3967,1400,202,190,0), -- Big Iron Bomb
(17637,12589,1300,202,195,0), -- Mithril Tube
(17637,15255,1500,202,200,0), -- Mechanical Repair Kit
(17637,12591,1500,202,200,0), -- Unstable Trigger
-- Engineering Artisan
(17637,12594,1600,202,205,0), -- Fire Goggles
(17637,12595,1600,202,205,0), -- Mithril Blunderbuss
(17637,12596,1700,202,210,0), -- Hi-Impact Mithril Slugs
(17637,12599,1800,202,215,0), -- Mithril Casing
(17637,12603,1800,202,215,0), -- Mithril Frag Bomb
(17637,12615,2500,202,225,0), -- Spellpower Goggles Xtreme
(17637,12618,2200,202,230,0), -- Rose Colored Goggles
(17637,12619,2400,202,235,0), -- Hi-Explosive Bomb
(17637,12621,2800,202,245,0), -- Mithril Gyro-Shot
(17637,12622,2800,202,245,0), -- Green Lens
(17637,19788,4000,202,250,0), -- Dense Blasting Powder
(17637,23070,5000,202,250,0), -- Dense Dynamite
(17637,63750,5000,202,250,0), -- High-powered Flashlight
(17637,19567,4000,202,250,0), -- Salt Shaker
(17637,23071,5000,202,260,0), -- Truesilver Transformer
(17637,19792,10000,202,260,0), -- Thorium Rifle
(17637,19790,10000,202,260,0), -- Thorium Grenade
(17637,19791,5000,202,260,0), -- Thorium Widget
(17637,19794,20000,202,270,0), -- Spellpower Goggles Xtreme Plus
(17637,19795,10000,202,275,0), -- Thorium Tube
-- Engineering Master
(17637,19800,10000,202,285,0), -- Thorium Shells
(17637,19825,20000,202,290,0), -- Master Engineer's Goggles
(17637,30305,10000,202,300,0), -- Handful of Fel Iron Bolts
(17637,30303,10000,202,300,0), -- Elemental Blasting Powder
(17637,30304,10000,202,300,0), -- Fel Iron Casing
(17637,30310,15000,202,300,0), -- Fel Iron Bomb
(17637,30346,15000,202,310,0), -- Fel Iron Shells
(17637,30312,20000,202,320,0), -- Fel Iron Musket
(17637,30306,20000,202,325,0), -- Adamantite Frame
(17637,30311,25000,202,325,0), -- Adamantite Grenade
(17637,44155,50000,202,300,60), -- Flying Machine
(17637,39971,20000,202,335,0), -- Icy Blasting Primers
(17637,39973,50000,202,335,0), -- Frost Grenades
(17637,30309,50000,202,340,0), -- Felsteel Stabilizer
(17637,30307,50000,202,340,0), -- Hardened Adamantite Tube
(17637,30308,50000,202,340,0), -- Khorium Power Core
(17637,41317,50000,202,350,0), -- Deathblow X11 Goggles
(17637,41320,50000,202,350,0), -- Destruction Holo-gogs
(17637,41307,50000,202,375,0); -- Gyro-balanced Khorium Destroyer

-- Engineer Sinbei <Master Engineering Trainer> - Level 62 - Shattrath City -- 84 Entries
DELETE FROM `npc_trainer` WHERE `entry`=33634;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
-- Engineering training levels.
(33634,4039,10,0,0,5), -- Apprentice Engineer
(33634,4040,500,202,50,10), -- Journeyman Engineer
(33634,4041,5000,202,125,20), -- Expert Engineer
(33634,12657,50000,202,200,35), -- Artisan Engineer
(33634,30351,100000,202,275,50), -- Master Engineer
-- Engineering Apprentice
(33634,3922,115,202,30,0), -- Handful of Copper Bolts
(33634,3923,130,202,30,0), -- Rough Copper Bomb
(33634,7430,150,202,50,0), -- Arclight Spanner
(33634,3925,150,202,50,0), -- Rough Boomstick
(33634,3924,150,202,50,0), -- Copper Tube
-- Engineering Journeyman
(33634,3977,200,202,60,0), -- Crude Scope
(33634,3926,225,202,65,0), -- Copper Modulator
(33634,3929,250,202,75,0), -- Coarse Blasting Powder
(33634,3930,250,202,75,0), -- Crafted Heavy Shot
(33634,3931,250,202,75,0), -- Coarse Dynamite
(33634,3932,300,202,85,0), -- Target Dummy
(33634,3973,300,202,90,0), -- Silver Contact
(33634,8334,300,202,100,0), -- Practice Lock
(33634,3934,400,202,100,0), -- Flying Tiger Goggles
(33634,3938,450,202,105,0), -- Bronze Tube
(33634,3937,450,202,105,0), -- Large Copper Bomb
(33634,3936,420,202,105,0), -- Deadly Blunderbuss
(33634,3978,475,202,110,0), -- Standard Scope
(33634,3941,500,202,120,0), -- Small Bronze Bomb
(33634,3947,300,202,125,0), -- Crafted Solid Shot
(33634,3945,500,202,125,0), -- Heavy Blasting Powder
(33634,3946,500,202,125,0), -- Heavy Dynamite
(33634,3942,500,202,125,0), -- Whirring Bronze Gizmo
-- Engineering Expert
(33634,3949,550,202,130,0), -- Silver-plated Shotgun
(33634,6458,400,202,135,0), -- Ornate Spyglass
(33634,3950,600,202,140,0), -- Big Bronze Bomb
(33634,3953,600,202,145,0), -- Bronze Framework
(33634,9271,500,202,150,0), -- Aquadynamic Fish Attractor
(33634,12584,1000,202,150,0), -- Gold Power Core
(33634,3956,450,202,150,0), -- Green Tinted Goggles
(33634,3955,750,202,150,0), -- Explosive Sheep
(33634,3958,800,202,160,0), -- Iron Strut
(33634,3961,900,202,170,0), -- Gyrochronatom
(33634,12585,1000,202,175,0), -- Solid Blasting Powder
(33634,12586,1000,202,175,0), -- Solid Dynamite
(33634,3963,1000,202,175,0), -- Compact Harvest Reaper Kit
(33634,12590,1000,202,175,0), -- Gyromatic Micro-Adjustor
(33634,3962,1000,202,175,0), -- Iron Grenade
(33634,3965,1200,202,185,0), -- Advanced Target Dummy
(33634,3967,1400,202,190,0), -- Big Iron Bomb
(33634,12589,1300,202,195,0), -- Mithril Tube
(33634,15255,1500,202,200,0), -- Mechanical Repair Kit
(33634,12591,1500,202,200,0), -- Unstable Trigger
-- Engineering Artisan
(33634,12594,1600,202,205,0), -- Fire Goggles
(33634,12595,1600,202,205,0), -- Mithril Blunderbuss
(33634,12596,1700,202,210,0), -- Hi-Impact Mithril Slugs
(33634,12599,1800,202,215,0), -- Mithril Casing
(33634,12603,1800,202,215,0), -- Mithril Frag Bomb
(33634,12615,2500,202,225,0), -- Spellpower Goggles Xtreme
(33634,12618,2200,202,230,0), -- Rose Colored Goggles
(33634,12619,2400,202,235,0), -- Hi-Explosive Bomb
(33634,12621,2800,202,245,0), -- Mithril Gyro-Shot
(33634,12622,2800,202,245,0), -- Green Lens
(33634,19788,4000,202,250,0), -- Dense Blasting Powder
(33634,23070,5000,202,250,0), -- Dense Dynamite
(33634,63750,5000,202,250,0), -- High-powered Flashlight
(33634,19567,4000,202,250,0), -- Salt Shaker
(33634,23071,5000,202,260,0), -- Truesilver Transformer
(33634,19792,10000,202,260,0), -- Thorium Rifle
(33634,19790,10000,202,260,0), -- Thorium Grenade
(33634,19791,5000,202,260,0), -- Thorium Widget
(33634,19794,20000,202,270,0), -- Spellpower Goggles Xtreme Plus
(33634,19795,10000,202,275,0), -- Thorium Tube
-- Engineering Master
(33634,19800,10000,202,285,0), -- Thorium Shells
(33634,19825,20000,202,290,0), -- Master Engineer's Goggles
(33634,30305,10000,202,300,0), -- Handful of Fel Iron Bolts
(33634,30303,10000,202,300,0), -- Elemental Blasting Powder
(33634,30304,10000,202,300,0), -- Fel Iron Casing
(33634,30310,15000,202,300,0), -- Fel Iron Bomb
(33634,30346,15000,202,310,0), -- Fel Iron Shells
(33634,30312,20000,202,320,0), -- Fel Iron Musket
(33634,30306,20000,202,325,0), -- Adamantite Frame
(33634,30311,25000,202,325,0), -- Adamantite Grenade
(33634,44155,50000,202,300,60), -- Flying Machine
(33634,39971,20000,202,335,0), -- Icy Blasting Primers
(33634,30309,50000,202,340,0), -- Felsteel Stabilizer
(33634,30307,50000,202,340,0), -- Hardened Adamantite Tube
(33634,30308,50000,202,340,0), -- Khorium Power Core
(33634,41307,50000,202,375,0); -- Gyro-balanced Khorium Destroyer

-- Technician Mihila <Master Engineering Trainer> - Level 62 - Shattrath City -- 86 Entries
DELETE FROM `npc_trainer` WHERE `entry`=33677;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
-- Engineering training levels.
(33677,4039,10,0,0,5), -- Apprentice Engineer
(33677,4040,500,202,50,10), -- Journeyman Engineer
(33677,4041,5000,202,125,20), -- Expert Engineer
(33677,12657,50000,202,200,35), -- Artisan Engineer
(33677,30351,100000,202,275,50), -- Master Engineer
-- Engineering Apprentice
(33677,3922,115,202,30,0), -- Handful of Copper Bolts
(33677,3923,130,202,30,0), -- Rough Copper Bomb
(33677,7430,150,202,50,0), -- Arclight Spanner
(33677,3925,150,202,50,0), -- Rough Boomstick
(33677,3924,150,202,50,0), -- Copper Tube
-- Engineering Journeyman
(33677,3977,200,202,60,0), -- Crude Scope
(33677,3926,225,202,65,0), -- Copper Modulator
(33677,3929,250,202,75,0), -- Coarse Blasting Powder
(33677,3930,250,202,75,0), -- Crafted Heavy Shot
(33677,3931,250,202,75,0), -- Coarse Dynamite
(33677,3932,300,202,85,0), -- Target Dummy
(33677,3973,300,202,90,0), -- Silver Contact
(33677,8334,300,202,100,0), -- Practice Lock
(33677,3934,400,202,100,0), -- Flying Tiger Goggles
(33677,3938,450,202,105,0), -- Bronze Tube
(33677,3937,450,202,105,0), -- Large Copper Bomb
(33677,3936,420,202,105,0), -- Deadly Blunderbuss
(33677,3978,475,202,110,0), -- Standard Scope
(33677,3941,500,202,120,0), -- Small Bronze Bomb
(33677,3947,300,202,125,0), -- Crafted Solid Shot
(33677,3945,500,202,125,0), -- Heavy Blasting Powder
(33677,3946,500,202,125,0), -- Heavy Dynamite
(33677,3942,500,202,125,0), -- Whirring Bronze Gizmo
-- Engineering Expert
(33677,3949,550,202,130,0), -- Silver-plated Shotgun
(33677,6458,400,202,135,0), -- Ornate Spyglass
(33677,3950,600,202,140,0), -- Big Bronze Bomb
(33677,3953,600,202,145,0), -- Bronze Framework
(33677,9271,500,202,150,0), -- Aquadynamic Fish Attractor
(33677,12584,1000,202,150,0), -- Gold Power Core
(33677,3956,450,202,150,0), -- Green Tinted Goggles
(33677,3955,750,202,150,0), -- Explosive Sheep
(33677,3958,800,202,160,0), -- Iron Strut
(33677,3961,900,202,170,0), -- Gyrochronatom
(33677,12585,1000,202,175,0), -- Solid Blasting Powder
(33677,12586,1000,202,175,0), -- Solid Dynamite
(33677,3963,1000,202,175,0), -- Compact Harvest Reaper Kit
(33677,12590,1000,202,175,0), -- Gyromatic Micro-Adjustor
(33677,3962,1000,202,175,0), -- Iron Grenade
(33677,3965,1200,202,185,0), -- Advanced Target Dummy
(33677,3967,1400,202,190,0), -- Big Iron Bomb
(33677,12589,1300,202,195,0), -- Mithril Tube
(33677,15255,1500,202,200,0), -- Mechanical Repair Kit
(33677,12591,1500,202,200,0), -- Unstable Trigger
-- Engineering Artisan
(33677,12594,1600,202,205,0), -- Fire Goggles
(33677,12595,1600,202,205,0), -- Mithril Blunderbuss
(33677,12596,1700,202,210,0), -- Hi-Impact Mithril Slugs
(33677,12599,1800,202,215,0), -- Mithril Casing
(33677,12603,1800,202,215,0), -- Mithril Frag Bomb
(33677,12615,2500,202,225,0), -- Spellpower Goggles Xtreme
(33677,12618,2200,202,230,0), -- Rose Colored Goggles
(33677,12619,2400,202,235,0), -- Hi-Explosive Bomb
(33677,12621,2800,202,245,0), -- Mithril Gyro-Shot
(33677,12622,2800,202,245,0), -- Green Lens
(33677,19788,4000,202,250,0), -- Dense Blasting Powder
(33677,23070,5000,202,250,0), -- Dense Dynamite
(33677,63750,5000,202,250,0), -- High-powered Flashlight
(33677,19567,4000,202,250,0), -- Salt Shaker
(33677,23071,5000,202,260,0), -- Truesilver Transformer
(33677,19792,10000,202,260,0), -- Thorium Rifle
(33677,19790,10000,202,260,0), -- Thorium Grenade
(33677,19791,5000,202,260,0), -- Thorium Widget
(33677,19794,20000,202,270,0), -- Spellpower Goggles Xtreme Plus
(33677,19795,10000,202,275,0), -- Thorium Tube
-- Engineering Master
(33677,19800,10000,202,285,0), -- Thorium Shells
(33677,19825,20000,202,290,0), -- Master Engineer's Goggles
(33677,30305,10000,202,300,0), -- Handful of Fel Iron Bolts
(33677,30303,10000,202,300,0), -- Elemental Blasting Powder
(33677,30304,10000,202,300,0), -- Fel Iron Casing
(33677,30310,15000,202,300,0), -- Fel Iron Bomb
(33677,30346,15000,202,310,0), -- Fel Iron Shells
(33677,30312,20000,202,320,0), -- Fel Iron Musket
(33677,30306,20000,202,325,0), -- Adamantite Frame
(33677,30311,25000,202,325,0), -- Adamantite Grenade
(33677,44155,50000,202,300,60), -- Flying Machine
(33677,39971,20000,202,335,0), -- Icy Blasting Primers
(33677,30309,50000,202,340,0), -- Felsteel Stabilizer
(33677,30307,50000,202,340,0), -- Hardened Adamantite Tube
(33677,30308,50000,202,340,0), -- Khorium Power Core
(33677,40274,50000,202,350,0), -- Furious Gizmatic Goggles
(33677,41312,50000,202,350,0), -- Tankatronic Goggles
(33677,41307,50000,202,375,0); -- Gyro-balanced Khorium Destroyer

-- Lebowski <Master Engineering Trainer> - Level 60 - Hellfire Peninsula -- 91 Entries
DELETE FROM `npc_trainer` WHERE `entry`=18775;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
-- Engineering training levels.
(18775,4039,10,0,0,5), -- Apprentice Engineer
(18775,4040,500,202,50,10), -- Journeyman Engineer
(18775,4041,5000,202,125,20), -- Expert Engineer
(18775,12657,50000,202,200,35), -- Artisan Engineer
(18775,30351,100000,202,275,50), -- Master Engineer
-- Engineering Apprentice
(18775,3922,115,202,30,0), -- Handful of Copper Bolts
(18775,3923,130,202,30,0), -- Rough Copper Bomb
(18775,7430,150,202,50,0), -- Arclight Spanner
(18775,3925,150,202,50,0), -- Rough Boomstick
(18775,3924,150,202,50,0), -- Copper Tube
-- Engineering Journeyman
(18775,3977,200,202,60,0), -- Crude Scope
(18775,3926,225,202,65,0), -- Copper Modulator
(18775,3929,250,202,75,0), -- Coarse Blasting Powder
(18775,3930,250,202,75,0), -- Crafted Heavy Shot
(18775,3931,250,202,75,0), -- Coarse Dynamite
(18775,3932,300,202,85,0), -- Target Dummy
(18775,3973,300,202,90,0), -- Silver Contact
(18775,8334,300,202,100,0), -- Practice Lock
(18775,3934,400,202,100,0), -- Flying Tiger Goggles
(18775,3938,450,202,105,0), -- Bronze Tube
(18775,3937,450,202,105,0), -- Large Copper Bomb
(18775,3936,420,202,105,0), -- Deadly Blunderbuss
(18775,3978,475,202,110,0), -- Standard Scope
(18775,3941,500,202,120,0), -- Small Bronze Bomb
(18775,3947,300,202,125,0), -- Crafted Solid Shot
(18775,3945,500,202,125,0), -- Heavy Blasting Powder
(18775,3946,500,202,125,0), -- Heavy Dynamite
(18775,3942,500,202,125,0), -- Whirring Bronze Gizmo
-- Engineering Expert
(18775,3949,550,202,130,0), -- Silver-plated Shotgun
(18775,6458,400,202,135,0), -- Ornate Spyglass
(18775,3950,600,202,140,0), -- Big Bronze Bomb
(18775,3953,600,202,145,0), -- Bronze Framework
(18775,9271,500,202,150,0), -- Aquadynamic Fish Attractor
(18775,12584,1000,202,150,0), -- Gold Power Core
(18775,3956,450,202,150,0), -- Green Tinted Goggles
(18775,3955,750,202,150,0), -- Explosive Sheep
(18775,3958,800,202,160,0), -- Iron Strut
(18775,3961,900,202,170,0), -- Gyrochronatom
(18775,12585,1000,202,175,0), -- Solid Blasting Powder
(18775,12586,1000,202,175,0), -- Solid Dynamite
(18775,3963,1000,202,175,0), -- Compact Harvest Reaper Kit
(18775,12590,1000,202,175,0), -- Gyromatic Micro-Adjustor
(18775,3962,1000,202,175,0), -- Iron Grenade
(18775,3965,1200,202,185,0), -- Advanced Target Dummy
(18775,3967,1400,202,190,0), -- Big Iron Bomb
(18775,12589,1300,202,195,0), -- Mithril Tube
(18775,15255,1500,202,200,0), -- Mechanical Repair Kit
(18775,12591,1500,202,200,0), -- Unstable Trigger
-- Engineering Artisan
(18775,12594,1600,202,205,0), -- Fire Goggles
(18775,12595,1600,202,205,0), -- Mithril Blunderbuss
(18775,12596,1700,202,210,0), -- Hi-Impact Mithril Slugs
(18775,12599,1800,202,215,0), -- Mithril Casing
(18775,12603,1800,202,215,0), -- Mithril Frag Bomb
(18775,12615,2500,202,225,0), -- Spellpower Goggles Xtreme
(18775,12618,2200,202,230,0), -- Rose Colored Goggles
(18775,12619,2400,202,235,0), -- Hi-Explosive Bomb
(18775,12621,2800,202,245,0), -- Mithril Gyro-Shot
(18775,12622,2800,202,245,0), -- Green Lens
(18775,19788,4000,202,250,0), -- Dense Blasting Powder
(18775,23070,5000,202,250,0), -- Dense Dynamite
(18775,63750,5000,202,250,0), -- High-powered Flashlight
(18775,19567,4000,202,250,0), -- Salt Shaker
(18775,23071,5000,202,260,0), -- Truesilver Transformer
(18775,19792,10000,202,260,0), -- Thorium Rifle
(18775,19790,10000,202,260,0), -- Thorium Grenade
(18775,19791,5000,202,260,0), -- Thorium Widget
(18775,19794,20000,202,270,0), -- Spellpower Goggles Xtreme Plus
(18775,19795,10000,202,275,0), -- Thorium Tube
-- Engineering Master
(18775,19800,10000,202,285,0), -- Thorium Shells
(18775,19825,20000,202,290,0), -- Master Engineer's Goggles
(18775,30305,10000,202,300,0), -- Handful of Fel Iron Bolts
(18775,30303,10000,202,300,0), -- Elemental Blasting Powder
(18775,30304,10000,202,300,0), -- Fel Iron Casing
(18775,30310,15000,202,300,0), -- Fel Iron Bomb
(18775,30346,15000,202,310,0), -- Fel Iron Shells
(18775,30312,20000,202,320,0), -- Fel Iron Musket
(18775,30306,20000,202,325,0), -- Adamantite Frame
(18775,30311,25000,202,325,0), -- Adamantite Grenade
(18775,44155,50000,202,300,60), -- Flying Machine
(18775,39971,20000,202,335,0), -- Icy Blasting Primers
(18775,39973,50000,202,335,0), -- Frost Grenades
(18775,30309,50000,202,340,0), -- Felsteel Stabilizer
(18775,30307,50000,202,340,0), -- Hardened Adamantite Tube
(18775,30308,50000,202,340,0), -- Khorium Power Core
(18775,41317,50000,202,350,0), -- Deathblow X11 Goggles
(18775,41320,50000,202,350,0), -- Destruction Holo-gogs
(18775,40274,50000,202,350,0), -- Furious Gizmatic Goggles
(18775,41311,50000,202,350,0), -- Justicebringer 2000 Specs
(18775,41314,50000,202,350,0), -- Surestrike Goggles v2.0
(18775,41312,50000,202,350,0), -- Tankatronic Goggles
(18775,41307,50000,202,375,0); -- Gyro-balanced Khorium Destroyer

-- Zebig <Master Engineering Trainer> - Level 60 - Hellfire Peninsula -- 93 Entries
DELETE FROM `npc_trainer` WHERE `entry`=18752;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
-- Engineering training levels.
(18752,4039,10,0,0,5), -- Apprentice Engineer
(18752,4040,500,202,50,10), -- Journeyman Engineer
(18752,4041,5000,202,125,20), -- Expert Engineer
(18752,12657,50000,202,200,35), -- Artisan Engineer
(18752,30351,100000,202,275,50), -- Master Engineer
-- Engineering Apprentice
(18752,3922,115,202,30,0), -- Handful of Copper Bolts
(18752,3923,130,202,30,0), -- Rough Copper Bomb
(18752,7430,150,202,50,0), -- Arclight Spanner
(18752,3925,150,202,50,0), -- Rough Boomstick
(18752,3924,150,202,50,0), -- Copper Tube
-- Engineering Journeyman
(18752,3977,200,202,60,0), -- Crude Scope
(18752,3926,225,202,65,0), -- Copper Modulator
(18752,3929,250,202,75,0), -- Coarse Blasting Powder
(18752,3930,250,202,75,0), -- Crafted Heavy Shot
(18752,3931,250,202,75,0), -- Coarse Dynamite
(18752,3932,300,202,85,0), -- Target Dummy
(18752,3973,300,202,90,0), -- Silver Contact
(18752,8334,300,202,100,0), -- Practice Lock
(18752,3934,400,202,100,0), -- Flying Tiger Goggles
(18752,3938,450,202,105,0), -- Bronze Tube
(18752,3937,450,202,105,0), -- Large Copper Bomb
(18752,3936,420,202,105,0), -- Deadly Blunderbuss
(18752,3978,475,202,110,0), -- Standard Scope
(18752,3941,500,202,120,0), -- Small Bronze Bomb
(18752,3947,300,202,125,0), -- Crafted Solid Shot
(18752,3945,500,202,125,0), -- Heavy Blasting Powder
(18752,3946,500,202,125,0), -- Heavy Dynamite
(18752,3942,500,202,125,0), -- Whirring Bronze Gizmo
-- Engineering Expert
(18752,3949,550,202,130,0), -- Silver-plated Shotgun
(18752,6458,400,202,135,0), -- Ornate Spyglass
(18752,3950,600,202,140,0), -- Big Bronze Bomb
(18752,3953,600,202,145,0), -- Bronze Framework
(18752,9271,500,202,150,0), -- Aquadynamic Fish Attractor
(18752,12584,1000,202,150,0), -- Gold Power Core
(18752,3956,450,202,150,0), -- Green Tinted Goggles
(18752,3955,750,202,150,0), -- Explosive Sheep
(18752,3958,800,202,160,0), -- Iron Strut
(18752,3961,900,202,170,0), -- Gyrochronatom
(18752,12585,1000,202,175,0), -- Solid Blasting Powder
(18752,12586,1000,202,175,0), -- Solid Dynamite
(18752,3963,1000,202,175,0), -- Compact Harvest Reaper Kit
(18752,12590,1000,202,175,0), -- Gyromatic Micro-Adjustor
(18752,3962,1000,202,175,0), -- Iron Grenade
(18752,3965,1200,202,185,0), -- Advanced Target Dummy
(18752,3967,1400,202,190,0), -- Big Iron Bomb
(18752,12589,1300,202,195,0), -- Mithril Tube
(18752,15255,1500,202,200,0), -- Mechanical Repair Kit
(18752,12591,1500,202,200,0), -- Unstable Trigger
-- Engineering Artisan
(18752,12594,1600,202,205,0), -- Fire Goggles
(18752,12595,1600,202,205,0), -- Mithril Blunderbuss
(18752,12596,1700,202,210,0), -- Hi-Impact Mithril Slugs
(18752,12599,1800,202,215,0), -- Mithril Casing
(18752,12603,1800,202,215,0), -- Mithril Frag Bomb
(18752,12615,2500,202,225,0), -- Spellpower Goggles Xtreme
(18752,12618,2200,202,230,0), -- Rose Colored Goggles
(18752,12619,2400,202,235,0), -- Hi-Explosive Bomb
(18752,12621,2800,202,245,0), -- Mithril Gyro-Shot
(18752,12622,2800,202,245,0), -- Green Lens
(18752,19788,4000,202,250,0), -- Dense Blasting Powder
(18752,23070,5000,202,250,0), -- Dense Dynamite
(18752,63750,5000,202,250,0), -- High-powered Flashlight
(18752,19567,4000,202,250,0), -- Salt Shaker
(18752,23071,5000,202,260,0), -- Truesilver Transformer
(18752,19792,10000,202,260,0), -- Thorium Rifle
(18752,19790,10000,202,260,0), -- Thorium Grenade
(18752,19791,5000,202,260,0), -- Thorium Widget
(18752,19794,20000,202,270,0), -- Spellpower Goggles Xtreme Plus
(18752,19795,10000,202,275,0), -- Thorium Tube
-- Engineering Master
(18752,19800,10000,202,285,0), -- Thorium Shells
(18752,19825,20000,202,290,0), -- Master Engineer's Goggles
(18752,30305,10000,202,300,0), -- Handful of Fel Iron Bolts
(18752,30303,10000,202,300,0), -- Elemental Blasting Powder
(18752,30304,10000,202,300,0), -- Fel Iron Casing
(18752,30310,15000,202,300,0), -- Fel Iron Bomb
(18752,30346,15000,202,310,0), -- Fel Iron Shells
(18752,30312,20000,202,320,0), -- Fel Iron Musket
(18752,30306,20000,202,325,0), -- Adamantite Frame
(18752,30311,25000,202,325,0), -- Adamantite Grenade
(18752,44155,50000,202,300,60), -- Flying Machine
(18752,39971,20000,202,335,0), -- Icy Blasting Primers
(18752,39973,50000,202,335,0), -- Frost Grenades
(18752,30309,50000,202,340,0), -- Felsteel Stabilizer
(18752,30307,50000,202,340,0), -- Hardened Adamantite Tube
(18752,30308,50000,202,340,0), -- Khorium Power Core
(18752,41317,50000,202,350,0), -- Deathblow X11 Goggles
(18752,41320,50000,202,350,0), -- Destruction Holo-gogs
(18752,40274,50000,202,350,0), -- Furious Gizmatic Goggles
(18752,41315,50000,202,350,0), -- Gadgetstorm Goggles
(18752,41311,50000,202,350,0), -- Justicebringer 2000 Specs
(18752,41316,50000,202,350,0), -- Living Replicator Specs
(18752,41314,50000,202,350,0), -- Surestrike Goggles v2.0
(18752,41312,50000,202,350,0), -- Tankatronic Goggles
(18752,41307,50000,202,375,0); -- Gyro-balanced Khorium Destroyer

-- Tinkmaster Overspark <Gnomish Engineering Trainer> - Level 57 - Ironforge -- 15 Entries
DELETE FROM `npc_trainer` WHERE `entry`=7944;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
(7944,12895,1500,202,200,0), -- Inlaid Mithril Cylinder Plans
(7944,12899,1500,202,205,0), -- Gnomish Shrink Ray
(7944,12897,1500,202,210,0), -- Gnomish Goggles
(7944,12902,1800,202,210,0), -- Gnomish Net-o-Matic Projector
(7944,12903,2000,202,215,0), -- Gnomish Harm Prevention Belt
(7944,12905,2200,202,225,0), -- Gnomish Rocket Boots
(7944,12906,2400,202,230,0), -- Gnomish Battle Chicken
(7944,12907,2600,202,235,0), -- Gnomish Mind Control Cap
(7944,12759,2800,202,240,0), -- Gnomish Death Ray
(7944,30568,25000,202,325,0), -- Gnomish Flame Turret
(7944,30569,35000,202,340,0), -- Gnomish Poultryizer
(7944,30570,50000,202,350,0), -- Nigh-Invulnerability Belt
(7944,30575,100000,202,375,0), -- Gnomish Battle Goggles
(7944,30574,100000,202,375,0), -- Gnomish Power Goggles
(7944,56473,150000,202,425,0); -- Gnomish X-Ray Specs

-- Nixx Sprocketspring <Goblin Engineering Trainer> - Level 55 - Tanaris -- 16 Entries
DELETE FROM `npc_trainer` WHERE `entry`=8126;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
(8126,12715,1500,202,205,0), -- Goblin Rocket Fuel Recipe
(8126,13240,2600,202,205,0), -- The Mortar: Reloaded
(8126,30560,35000,202,340,0), -- Super Sapper Charge
(8126,12718,1500,202,205,0), -- Goblin Construction Helmet
(8126,12717,1500,202,205,0), -- Goblin Mining Helmet
(8126,8895,2200,202,225,0), -- Goblin Rocket Boots
(8126,12755,2400,202,230,0), -- Goblin Bomb Dispenser
(8126,12754,2250,202,235,0), -- The Big One
(8126,12908,2800,202,240,0), -- Goblin Dragon Gun
(8126,12758,2600,202,245,0), -- Goblin Rocket Helmet
(8126,30558,25000,202,325,65), -- The Bigger One
(8126,12760,1500,202,205,0), -- Goblin Sapper Charge
(8126,30563,50000,202,350,70), -- Goblin Rocket Launcher
(8126,30565,100000,202,375,70), -- Foreman's Enchanted Helmet
(8126,30566,100000,202,375,70), -- Foreman's Reinforced Helmet
(8126,56514,150000,202,425,70); -- Global Thermal Sapper Charge

-- Buzzek Bracketswing <Engineering Trainer> - Level 53 - Tanaris -- 69 Entries
DELETE FROM `npc_trainer` WHERE `entry`=8736;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
-- Engineering training levels.
(8736,4039,10,0,0,5), -- Apprentice Engineer
(8736,4040,500,202,50,10), -- Journeyman Engineer
(8736,4041,5000,202,125,20), -- Expert Engineer
(8736,12657,50000,202,200,35), -- Artisan Engineer
-- Engineering Apprentice
(8736,3922,115,202,30,0), -- Handful of Copper Bolts
(8736,3923,130,202,30,0), -- Rough Copper Bomb
(8736,7430,150,202,50,0), -- Arclight Spanner
(8736,3925,150,202,50,0), -- Rough Boomstick
(8736,3924,150,202,50,0), -- Copper Tube
-- Engineering Journeyman
(8736,3977,200,202,60,0), -- Crude Scope
(8736,3926,225,202,65,0), -- Copper Modulator
(8736,3929,250,202,75,0), -- Coarse Blasting Powder
(8736,3930,250,202,75,0), -- Crafted Heavy Shot
(8736,3931,250,202,75,0), -- Coarse Dynamite
(8736,3932,300,202,85,0), -- Target Dummy
(8736,3973,300,202,90,0), -- Silver Contact
(8736,8334,300,202,100,0), -- Practice Lock
(8736,3934,400,202,100,0), -- Flying Tiger Goggles
(8736,3938,450,202,105,0), -- Bronze Tube
(8736,3937,450,202,105,0), -- Large Copper Bomb
(8736,3936,420,202,105,0), -- Deadly Blunderbuss
(8736,3978,475,202,110,0), -- Standard Scope
(8736,3941,500,202,120,0), -- Small Bronze Bomb
(8736,3947,300,202,125,0), -- Crafted Solid Shot
(8736,3945,500,202,125,0), -- Heavy Blasting Powder
(8736,3946,500,202,125,0), -- Heavy Dynamite
(8736,3942,500,202,125,0), -- Whirring Bronze Gizmo
-- Engineering Expert
(8736,3949,550,202,130,0), -- Silver-plated Shotgun
(8736,6458,400,202,135,0), -- Ornate Spyglass
(8736,3950,600,202,140,0), -- Big Bronze Bomb
(8736,3953,600,202,145,0), -- Bronze Framework
(8736,9271,500,202,150,0), -- Aquadynamic Fish Attractor
(8736,12584,1000,202,150,0), -- Gold Power Core
(8736,3956,450,202,150,0), -- Green Tinted Goggles
(8736,3955,750,202,150,0), -- Explosive Sheep
(8736,3958,800,202,160,0), -- Iron Strut
(8736,3961,900,202,170,0), -- Gyrochronatom
(8736,12585,1000,202,175,0), -- Solid Blasting Powder
(8736,12586,1000,202,175,0), -- Solid Dynamite
(8736,3963,1000,202,175,0), -- Compact Harvest Reaper Kit
(8736,12590,1000,202,175,0), -- Gyromatic Micro-Adjustor
(8736,3962,1000,202,175,0), -- Iron Grenade
(8736,3965,1200,202,185,0), -- Advanced Target Dummy
(8736,3967,1400,202,190,0), -- Big Iron Bomb
(8736,12589,1300,202,195,0), -- Mithril Tube
(8736,15255,1500,202,200,0), -- Mechanical Repair Kit
(8736,12591,1500,202,200,0), -- Unstable Trigger
-- Engineering Artisan
(8736,12594,1600,202,205,0), -- Fire Goggles
(8736,12595,1600,202,205,0), -- Mithril Blunderbuss
(8736,12596,1700,202,210,0), -- Hi-Impact Mithril Slugs
(8736,12599,1800,202,215,0), -- Mithril Casing
(8736,12603,1800,202,215,0), -- Mithril Frag Bomb
(8736,12615,2500,202,225,0), -- Spellpower Goggles Xtreme
(8736,12618,2200,202,230,0), -- Rose Colored Goggles
(8736,12619,2400,202,235,0), -- Hi-Explosive Bomb
(8736,12621,2800,202,245,0), -- Mithril Gyro-Shot
(8736,12622,2800,202,245,0), -- Green Lens
(8736,19788,4000,202,250,0), -- Dense Blasting Powder
(8736,23070,5000,202,250,0), -- Dense Dynamite
(8736,63750,5000,202,250,0), -- High-powered Flashlight
(8736,19567,4000,202,250,0), -- Salt Shaker
(8736,23071,5000,202,260,0), -- Truesilver Transformer
(8736,19792,10000,202,260,0), -- Thorium Rifle
(8736,19790,10000,202,260,0), -- Thorium Grenade
(8736,19791,5000,202,260,0), -- Thorium Widget
(8736,19794,20000,202,270,0), -- Spellpower Goggles Xtreme Plus
(8736,19795,10000,202,275,0), -- Thorium Tube
(8736,19800,10000,202,285,0), -- Thorium Shells
(8736,19825,20000,202,290,0); -- Master Engineer's Goggles

-- Oglethorpe Obnoticus <Gnomish Engineering Trainer> - Level 50 - Stranglethorn Vale -- 15 Entries
DELETE FROM `npc_trainer` WHERE `entry`=7406;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
(7406,12895,1500,202,200,0), -- Inlaid Mithril Cylinder Plans
(7406,12899,1500,202,205,0), -- Gnomish Shrink Ray
(7406,12897,1500,202,210,0), -- Gnomish Goggles
(7406,12902,1800,202,210,0), -- Gnomish Net-o-Matic Projector
(7406,12903,2000,202,215,0), -- Gnomish Harm Prevention Belt
(7406,12905,2200,202,225,0), -- Gnomish Rocket Boots
(7406,12906,2400,202,230,0), -- Gnomish Battle Chicken
(7406,12907,2600,202,235,0), -- Gnomish Mind Control Cap
(7406,12759,2800,202,240,0), -- Gnomish Death Ray
(7406,30568,25000,202,325,0), -- Gnomish Flame Turret
(7406,30569,35000,202,340,0), -- Gnomish Poultryizer
(7406,30570,50000,202,350,0), -- Nigh-Invulnerability Belt
(7406,30575,100000,202,375,0), -- Gnomish Battle Goggles
(7406,30574,100000,202,375,0), -- Gnomish Power Goggles
(7406,56473,150000,202,425,0); -- Gnomish X-Ray Specs

-- Roxxik <Engineering Trainer> - Level 46 - Orginmmar -- 69 Entries
DELETE FROM `npc_trainer` WHERE `entry`=11017;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
-- Engineering training levels.
(11017,4039,10,0,0,5), -- Apprentice Engineer
(11017,4040,500,202,50,10), -- Journeyman Engineer
(11017,4041,5000,202,125,20), -- Expert Engineer
(11017,12657,50000,202,200,35), -- Artisan Engineer
-- Engineering Apprentice
(11017,3922,115,202,30,0), -- Handful of Copper Bolts
(11017,3923,130,202,30,0), -- Rough Copper Bomb
(11017,7430,150,202,50,0), -- Arclight Spanner
(11017,3925,150,202,50,0), -- Rough Boomstick
(11017,3924,150,202,50,0), -- Copper Tube
-- Engineering Journeyman
(11017,3977,200,202,60,0), -- Crude Scope
(11017,3926,225,202,65,0), -- Copper Modulator
(11017,3929,250,202,75,0), -- Coarse Blasting Powder
(11017,3930,250,202,75,0), -- Crafted Heavy Shot
(11017,3931,250,202,75,0), -- Coarse Dynamite
(11017,3932,300,202,85,0), -- Target Dummy
(11017,3973,300,202,90,0), -- Silver Contact
(11017,8334,300,202,100,0), -- Practice Lock
(11017,3934,400,202,100,0), -- Flying Tiger Goggles
(11017,3938,450,202,105,0), -- Bronze Tube
(11017,3937,450,202,105,0), -- Large Copper Bomb
(11017,3936,420,202,105,0), -- Deadly Blunderbuss
(11017,3978,475,202,110,0), -- Standard Scope
(11017,3941,500,202,120,0), -- Small Bronze Bomb
(11017,3947,300,202,125,0), -- Crafted Solid Shot
(11017,3945,500,202,125,0), -- Heavy Blasting Powder
(11017,3946,500,202,125,0), -- Heavy Dynamite
(11017,3942,500,202,125,0), -- Whirring Bronze Gizmo
-- Engineering Expert
(11017,3949,550,202,130,0), -- Silver-plated Shotgun
(11017,6458,400,202,135,0), -- Ornate Spyglass
(11017,3950,600,202,140,0), -- Big Bronze Bomb
(11017,3953,600,202,145,0), -- Bronze Framework
(11017,9271,500,202,150,0), -- Aquadynamic Fish Attractor
(11017,12584,1000,202,150,0), -- Gold Power Core
(11017,3956,450,202,150,0), -- Green Tinted Goggles
(11017,3955,750,202,150,0), -- Explosive Sheep
(11017,3958,800,202,160,0), -- Iron Strut
(11017,3961,900,202,170,0), -- Gyrochronatom
(11017,12585,1000,202,175,0), -- Solid Blasting Powder
(11017,12586,1000,202,175,0), -- Solid Dynamite
(11017,3963,1000,202,175,0), -- Compact Harvest Reaper Kit
(11017,12590,1000,202,175,0), -- Gyromatic Micro-Adjustor
(11017,3962,1000,202,175,0), -- Iron Grenade
(11017,3965,1200,202,185,0), -- Advanced Target Dummy
(11017,3967,1400,202,190,0), -- Big Iron Bomb
(11017,12589,1300,202,195,0), -- Mithril Tube
(11017,15255,1500,202,200,0), -- Mechanical Repair Kit
(11017,12591,1500,202,200,0), -- Unstable Trigger
-- Engineering Artisan
(11017,12594,1600,202,205,0), -- Fire Goggles
(11017,12595,1600,202,205,0), -- Mithril Blunderbuss
(11017,12596,1700,202,210,0), -- Hi-Impact Mithril Slugs
(11017,12599,1800,202,215,0), -- Mithril Casing
(11017,12603,1800,202,215,0), -- Mithril Frag Bomb
(11017,12615,2500,202,225,0), -- Spellpower Goggles Xtreme
(11017,12618,2200,202,230,0), -- Rose Colored Goggles
(11017,12619,2400,202,235,0), -- Hi-Explosive Bomb
(11017,12621,2800,202,245,0), -- Mithril Gyro-Shot
(11017,12622,2800,202,245,0), -- Green Lens
(11017,19788,4000,202,250,0), -- Dense Blasting Powder
(11017,23070,5000,202,250,0), -- Dense Dynamite
(11017,63750,5000,202,250,0), -- High-powered Flashlight
(11017,19567,4000,202,250,0), -- Salt Shaker
(11017,23071,5000,202,260,0), -- Truesilver Transformer
(11017,19792,10000,202,260,0), -- Thorium Rifle
(11017,19790,10000,202,260,0), -- Thorium Grenade
(11017,19791,5000,202,260,0), -- Thorium Widget
(11017,19794,20000,202,270,0), -- Spellpower Goggles Xtreme Plus
(11017,19795,10000,202,275,0), -- Thorium Tube
(11017,19800,10000,202,285,0), -- Thorium Shells
(11017,19825,20000,202,290,0); -- Master Engineer's Goggles

-- Springspindle Fizzlegear <Engineering Trainer> - Level 45 - Ironforge -- 69 Entries
DELETE FROM `npc_trainer` WHERE `entry`=5174;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
-- Engineering training levels.
(5174,4039,10,0,0,5), -- Apprentice Engineer
(5174,4040,500,202,50,10), -- Journeyman Engineer
(5174,4041,5000,202,125,20), -- Expert Engineer
(5174,12657,50000,202,200,35), -- Artisan Engineer
-- Engineering Apprentice
(5174,3922,115,202,30,0), -- Handful of Copper Bolts
(5174,3923,130,202,30,0), -- Rough Copper Bomb
(5174,7430,150,202,50,0), -- Arclight Spanner
(5174,3925,150,202,50,0), -- Rough Boomstick
(5174,3924,150,202,50,0), -- Copper Tube
-- Engineering Journeyman
(5174,3977,200,202,60,0), -- Crude Scope
(5174,3926,225,202,65,0), -- Copper Modulator
(5174,3929,250,202,75,0), -- Coarse Blasting Powder
(5174,3930,250,202,75,0), -- Crafted Heavy Shot
(5174,3931,250,202,75,0), -- Coarse Dynamite
(5174,3932,300,202,85,0), -- Target Dummy
(5174,3973,300,202,90,0), -- Silver Contact
(5174,8334,300,202,100,0), -- Practice Lock
(5174,3934,400,202,100,0), -- Flying Tiger Goggles
(5174,3938,450,202,105,0), -- Bronze Tube
(5174,3937,450,202,105,0), -- Large Copper Bomb
(5174,3936,420,202,105,0), -- Deadly Blunderbuss
(5174,3978,475,202,110,0), -- Standard Scope
(5174,3941,500,202,120,0), -- Small Bronze Bomb
(5174,3947,300,202,125,0), -- Crafted Solid Shot
(5174,3945,500,202,125,0), -- Heavy Blasting Powder
(5174,3946,500,202,125,0), -- Heavy Dynamite
(5174,3942,500,202,125,0), -- Whirring Bronze Gizmo
-- Engineering Expert
(5174,3949,550,202,130,0), -- Silver-plated Shotgun
(5174,6458,400,202,135,0), -- Ornate Spyglass
(5174,3950,600,202,140,0), -- Big Bronze Bomb
(5174,3953,600,202,145,0), -- Bronze Framework
(5174,9271,500,202,150,0), -- Aquadynamic Fish Attractor
(5174,12584,1000,202,150,0), -- Gold Power Core
(5174,3956,450,202,150,0), -- Green Tinted Goggles
(5174,3955,750,202,150,0), -- Explosive Sheep
(5174,3958,800,202,160,0), -- Iron Strut
(5174,3961,900,202,170,0), -- Gyrochronatom
(5174,12585,1000,202,175,0), -- Solid Blasting Powder
(5174,12586,1000,202,175,0), -- Solid Dynamite
(5174,3963,1000,202,175,0), -- Compact Harvest Reaper Kit
(5174,12590,1000,202,175,0), -- Gyromatic Micro-Adjustor
(5174,3962,1000,202,175,0), -- Iron Grenade
(5174,3965,1200,202,185,0), -- Advanced Target Dummy
(5174,3967,1400,202,190,0), -- Big Iron Bomb
(5174,12589,1300,202,195,0), -- Mithril Tube
(5174,15255,1500,202,200,0), -- Mechanical Repair Kit
(5174,12591,1500,202,200,0), -- Unstable Trigger
-- Engineering Artisan
(5174,12594,1600,202,205,0), -- Fire Goggles
(5174,12595,1600,202,205,0), -- Mithril Blunderbuss
(5174,12596,1700,202,210,0), -- Hi-Impact Mithril Slugs
(5174,12599,1800,202,215,0), -- Mithril Casing
(5174,12603,1800,202,215,0), -- Mithril Frag Bomb
(5174,12615,2500,202,225,0), -- Spellpower Goggles Xtreme
(5174,12618,2200,202,230,0), -- Rose Colored Goggles
(5174,12619,2400,202,235,0), -- Hi-Explosive Bomb
(5174,12621,2800,202,245,0), -- Mithril Gyro-Shot
(5174,12622,2800,202,245,0), -- Green Lens
(5174,19788,4000,202,250,0), -- Dense Blasting Powder
(5174,23070,5000,202,250,0), -- Dense Dynamite
(5174,63750,5000,202,250,0), -- High-powered Flashlight
(5174,19567,4000,202,250,0), -- Salt Shaker
(5174,23071,5000,202,260,0), -- Truesilver Transformer
(5174,19792,10000,202,260,0), -- Thorium Rifle
(5174,19790,10000,202,260,0), -- Thorium Grenade
(5174,19791,5000,202,260,0), -- Thorium Widget
(5174,19794,20000,202,270,0), -- Spellpower Goggles Xtreme Plus
(5174,19795,10000,202,275,0), -- Thorium Tube
(5174,19800,10000,202,285,0), -- Thorium Shells
(5174,19825,20000,202,290,0); -- Master Engineer's Goggles

-- Vazario Linkgrease <Goblin Engineering Trainer> - Level 40 - The Barrens -- 16 Entries
DELETE FROM `npc_trainer` WHERE `entry`=8738;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
(8738,12715,1500,202,205,0), -- Goblin Rocket Fuel Recipe
(8738,13240,2600,202,205,0), -- The Mortar: Reloaded
(8738,30560,35000,202,340,0), -- Super Sapper Charge
(8738,12718,1500,202,205,0), -- Goblin Construction Helmet
(8738,12717,1500,202,205,0), -- Goblin Mining Helmet
(8738,8895,2200,202,225,0), -- Goblin Rocket Boots
(8738,12755,2400,202,230,0), -- Goblin Bomb Dispenser
(8738,12754,2250,202,235,0), -- The Big One
(8738,12908,2800,202,240,0), -- Goblin Dragon Gun
(8738,12758,2600,202,245,0), -- Goblin Rocket Helmet
(8738,30558,25000,202,325,65), -- The Bigger One
(8738,12760,1500,202,205,0), -- Goblin Sapper Charge
(8738,30563,50000,202,350,70), -- Goblin Rocket Launcher
(8738,30565,100000,202,375,70), -- Foreman's Enchanted Helmet
(8738,30566,100000,202,375,70), -- Foreman's Reinforced Helmet
(8738,56514,150000,202,425,70); -- Global Thermal Sapper Charge

-- Lilliam Sparkspindle <Engineering Trainer> - Level 35 - Stormwind City -- 69 Entries
DELETE FROM `npc_trainer` WHERE `entry`=5518;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
-- Engineering training levels.
(5518,4039,10,0,0,5), -- Apprentice Engineer
(5518,4040,500,202,50,10), -- Journeyman Engineer
(5518,4041,5000,202,125,20), -- Expert Engineer
(5518,12657,50000,202,200,35), -- Artisan Engineer
-- Engineering Apprentice
(5518,3922,115,202,30,0), -- Handful of Copper Bolts
(5518,3923,130,202,30,0), -- Rough Copper Bomb
(5518,7430,150,202,50,0), -- Arclight Spanner
(5518,3925,150,202,50,0), -- Rough Boomstick
(5518,3924,150,202,50,0), -- Copper Tube
-- Engineering Journeyman
(5518,3977,200,202,60,0), -- Crude Scope
(5518,3926,225,202,65,0), -- Copper Modulator
(5518,3929,250,202,75,0), -- Coarse Blasting Powder
(5518,3930,250,202,75,0), -- Crafted Heavy Shot
(5518,3931,250,202,75,0), -- Coarse Dynamite
(5518,3932,300,202,85,0), -- Target Dummy
(5518,3973,300,202,90,0), -- Silver Contact
(5518,8334,300,202,100,0), -- Practice Lock
(5518,3934,400,202,100,0), -- Flying Tiger Goggles
(5518,3938,450,202,105,0), -- Bronze Tube
(5518,3937,450,202,105,0), -- Large Copper Bomb
(5518,3936,420,202,105,0), -- Deadly Blunderbuss
(5518,3978,475,202,110,0), -- Standard Scope
(5518,3941,500,202,120,0), -- Small Bronze Bomb
(5518,3947,300,202,125,0), -- Crafted Solid Shot
(5518,3945,500,202,125,0), -- Heavy Blasting Powder
(5518,3946,500,202,125,0), -- Heavy Dynamite
(5518,3942,500,202,125,0), -- Whirring Bronze Gizmo
-- Engineering Expert
(5518,3949,550,202,130,0), -- Silver-plated Shotgun
(5518,6458,400,202,135,0), -- Ornate Spyglass
(5518,3950,600,202,140,0), -- Big Bronze Bomb
(5518,3953,600,202,145,0), -- Bronze Framework
(5518,9271,500,202,150,0), -- Aquadynamic Fish Attractor
(5518,12584,1000,202,150,0), -- Gold Power Core
(5518,3956,450,202,150,0), -- Green Tinted Goggles
(5518,3955,750,202,150,0), -- Explosive Sheep
(5518,3958,800,202,160,0), -- Iron Strut
(5518,3961,900,202,170,0), -- Gyrochronatom
(5518,12585,1000,202,175,0), -- Solid Blasting Powder
(5518,12586,1000,202,175,0), -- Solid Dynamite
(5518,3963,1000,202,175,0), -- Compact Harvest Reaper Kit
(5518,12590,1000,202,175,0), -- Gyromatic Micro-Adjustor
(5518,3962,1000,202,175,0), -- Iron Grenade
(5518,3965,1200,202,185,0), -- Advanced Target Dummy
(5518,3967,1400,202,190,0), -- Big Iron Bomb
(5518,12589,1300,202,195,0), -- Mithril Tube
(5518,15255,1500,202,200,0), -- Mechanical Repair Kit
(5518,12591,1500,202,200,0), -- Unstable Trigger
-- Engineering Artisan
(5518,12594,1600,202,205,0), -- Fire Goggles
(5518,12595,1600,202,205,0), -- Mithril Blunderbuss
(5518,12596,1700,202,210,0), -- Hi-Impact Mithril Slugs
(5518,12599,1800,202,215,0), -- Mithril Casing
(5518,12603,1800,202,215,0), -- Mithril Frag Bomb
(5518,12615,2500,202,225,0), -- Spellpower Goggles Xtreme
(5518,12618,2200,202,230,0), -- Rose Colored Goggles
(5518,12619,2400,202,235,0), -- Hi-Explosive Bomb
(5518,12621,2800,202,245,0), -- Mithril Gyro-Shot
(5518,12622,2800,202,245,0), -- Green Lens
(5518,19788,4000,202,250,0), -- Dense Blasting Powder
(5518,23070,5000,202,250,0), -- Dense Dynamite
(5518,63750,5000,202,250,0), -- High-powered Flashlight
(5518,19567,4000,202,250,0), -- Salt Shaker
(5518,23071,5000,202,260,0), -- Truesilver Transformer
(5518,19792,10000,202,260,0), -- Thorium Rifle
(5518,19790,10000,202,260,0), -- Thorium Grenade
(5518,19791,5000,202,260,0), -- Thorium Widget
(5518,19794,20000,202,270,0), -- Spellpower Goggles Xtreme Plus
(5518,19795,10000,202,275,0), -- Thorium Tube
(5518,19800,10000,202,285,0), -- Thorium Shells
(5518,19825,20000,202,290,0); -- Master Engineer's Goggles

-- Franklin Lloyd <Engineering Trainer> - Level 33 - Undercity -- 69 Entries
DELETE FROM `npc_trainer` WHERE `entry`=11031;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
-- Engineering training levels.
(11031,4039,10,0,0,5), -- Apprentice Engineer
(11031,4040,500,202,50,10), -- Journeyman Engineer
(11031,4041,5000,202,125,20), -- Expert Engineer
(11031,12657,50000,202,200,35), -- Artisan Engineer
-- Engineering Apprentice
(11031,3922,115,202,30,0), -- Handful of Copper Bolts
(11031,3923,130,202,30,0), -- Rough Copper Bomb
(11031,7430,150,202,50,0), -- Arclight Spanner
(11031,3925,150,202,50,0), -- Rough Boomstick
(11031,3924,150,202,50,0), -- Copper Tube
-- Engineering Journeyman
(11031,3977,200,202,60,0), -- Crude Scope
(11031,3926,225,202,65,0), -- Copper Modulator
(11031,3929,250,202,75,0), -- Coarse Blasting Powder
(11031,3930,250,202,75,0), -- Crafted Heavy Shot
(11031,3931,250,202,75,0), -- Coarse Dynamite
(11031,3932,300,202,85,0), -- Target Dummy
(11031,3973,300,202,90,0), -- Silver Contact
(11031,8334,300,202,100,0), -- Practice Lock
(11031,3934,400,202,100,0), -- Flying Tiger Goggles
(11031,3938,450,202,105,0), -- Bronze Tube
(11031,3937,450,202,105,0), -- Large Copper Bomb
(11031,3936,420,202,105,0), -- Deadly Blunderbuss
(11031,3978,475,202,110,0), -- Standard Scope
(11031,3941,500,202,120,0), -- Small Bronze Bomb
(11031,3947,300,202,125,0), -- Crafted Solid Shot
(11031,3945,500,202,125,0), -- Heavy Blasting Powder
(11031,3946,500,202,125,0), -- Heavy Dynamite
(11031,3942,500,202,125,0), -- Whirring Bronze Gizmo
-- Engineering Expert
(11031,3949,550,202,130,0), -- Silver-plated Shotgun
(11031,6458,400,202,135,0), -- Ornate Spyglass
(11031,3950,600,202,140,0), -- Big Bronze Bomb
(11031,3953,600,202,145,0), -- Bronze Framework
(11031,9271,500,202,150,0), -- Aquadynamic Fish Attractor
(11031,12584,1000,202,150,0), -- Gold Power Core
(11031,3956,450,202,150,0), -- Green Tinted Goggles
(11031,3955,750,202,150,0), -- Explosive Sheep
(11031,3958,800,202,160,0), -- Iron Strut
(11031,3961,900,202,170,0), -- Gyrochronatom
(11031,12585,1000,202,175,0), -- Solid Blasting Powder
(11031,12586,1000,202,175,0), -- Solid Dynamite
(11031,3963,1000,202,175,0), -- Compact Harvest Reaper Kit
(11031,12590,1000,202,175,0), -- Gyromatic Micro-Adjustor
(11031,3962,1000,202,175,0), -- Iron Grenade
(11031,3965,1200,202,185,0), -- Advanced Target Dummy
(11031,3967,1400,202,190,0), -- Big Iron Bomb
(11031,12589,1300,202,195,0), -- Mithril Tube
(11031,15255,1500,202,200,0), -- Mechanical Repair Kit
(11031,12591,1500,202,200,0), -- Unstable Trigger
-- Engineering Artisan
(11031,12594,1600,202,205,0), -- Fire Goggles
(11031,12595,1600,202,205,0), -- Mithril Blunderbuss
(11031,12596,1700,202,210,0), -- Hi-Impact Mithril Slugs
(11031,12599,1800,202,215,0), -- Mithril Casing
(11031,12603,1800,202,215,0), -- Mithril Frag Bomb
(11031,12615,2500,202,225,0), -- Spellpower Goggles Xtreme
(11031,12618,2200,202,230,0), -- Rose Colored Goggles
(11031,12619,2400,202,235,0), -- Hi-Explosive Bomb
(11031,12621,2800,202,245,0), -- Mithril Gyro-Shot
(11031,12622,2800,202,245,0), -- Green Lens
(11031,19788,4000,202,250,0), -- Dense Blasting Powder
(11031,23070,5000,202,250,0), -- Dense Dynamite
(11031,63750,5000,202,250,0), -- High-powered Flashlight
(11031,19567,4000,202,250,0), -- Salt Shaker
(11031,23071,5000,202,260,0), -- Truesilver Transformer
(11031,19792,10000,202,260,0), -- Thorium Rifle
(11031,19790,10000,202,260,0), -- Thorium Grenade
(11031,19791,5000,202,260,0), -- Thorium Widget
(11031,19794,20000,202,270,0), -- Spellpower Goggles Xtreme Plus
(11031,19795,10000,202,275,0), -- Thorium Tube
(11031,19800,10000,202,285,0), -- Thorium Shells
(11031,19825,20000,202,290,0); -- Master Engineer's Goggles

-- Finbus Geargrind <Engineering Trainer> - Level 31 - Duskwood -- 69 Entries
DELETE FROM `npc_trainer` WHERE `entry`=1676;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
-- Engineering training levels.
(1676,4039,10,0,0,5), -- Apprentice Engineer
(1676,4040,500,202,50,10), -- Journeyman Engineer
(1676,4041,5000,202,125,20), -- Expert Engineer
(1676,12657,50000,202,200,35), -- Artisan Engineer
-- Engineering Apprentice
(1676,3922,115,202,30,0), -- Handful of Copper Bolts
(1676,3923,130,202,30,0), -- Rough Copper Bomb
(1676,7430,150,202,50,0), -- Arclight Spanner
(1676,3925,150,202,50,0), -- Rough Boomstick
(1676,3924,150,202,50,0), -- Copper Tube
-- Engineering Journeyman
(1676,3977,200,202,60,0), -- Crude Scope
(1676,3926,225,202,65,0), -- Copper Modulator
(1676,3929,250,202,75,0), -- Coarse Blasting Powder
(1676,3930,250,202,75,0), -- Crafted Heavy Shot
(1676,3931,250,202,75,0), -- Coarse Dynamite
(1676,3932,300,202,85,0), -- Target Dummy
(1676,3973,300,202,90,0), -- Silver Contact
(1676,8334,300,202,100,0), -- Practice Lock
(1676,3934,400,202,100,0), -- Flying Tiger Goggles
(1676,3938,450,202,105,0), -- Bronze Tube
(1676,3937,450,202,105,0), -- Large Copper Bomb
(1676,3936,420,202,105,0), -- Deadly Blunderbuss
(1676,3978,475,202,110,0), -- Standard Scope
(1676,3941,500,202,120,0), -- Small Bronze Bomb
(1676,3947,300,202,125,0), -- Crafted Solid Shot
(1676,3945,500,202,125,0), -- Heavy Blasting Powder
(1676,3946,500,202,125,0), -- Heavy Dynamite
(1676,3942,500,202,125,0), -- Whirring Bronze Gizmo
-- Engineering Expert
(1676,3949,550,202,130,0), -- Silver-plated Shotgun
(1676,6458,400,202,135,0), -- Ornate Spyglass
(1676,3950,600,202,140,0), -- Big Bronze Bomb
(1676,3953,600,202,145,0), -- Bronze Framework
(1676,9271,500,202,150,0), -- Aquadynamic Fish Attractor
(1676,12584,1000,202,150,0), -- Gold Power Core
(1676,3956,450,202,150,0), -- Green Tinted Goggles
(1676,3955,750,202,150,0), -- Explosive Sheep
(1676,3958,800,202,160,0), -- Iron Strut
(1676,3961,900,202,170,0), -- Gyrochronatom
(1676,12585,1000,202,175,0), -- Solid Blasting Powder
(1676,12586,1000,202,175,0), -- Solid Dynamite
(1676,3963,1000,202,175,0), -- Compact Harvest Reaper Kit
(1676,12590,1000,202,175,0), -- Gyromatic Micro-Adjustor
(1676,3962,1000,202,175,0), -- Iron Grenade
(1676,3965,1200,202,185,0), -- Advanced Target Dummy
(1676,3967,1400,202,190,0), -- Big Iron Bomb
(1676,12589,1300,202,195,0), -- Mithril Tube
(1676,15255,1500,202,200,0), -- Mechanical Repair Kit
(1676,12591,1500,202,200,0), -- Unstable Trigger
-- Engineering Artisan
(1676,12594,1600,202,205,0), -- Fire Goggles
(1676,12595,1600,202,205,0), -- Mithril Blunderbuss
(1676,12596,1700,202,210,0), -- Hi-Impact Mithril Slugs
(1676,12599,1800,202,215,0), -- Mithril Casing
(1676,12603,1800,202,215,0), -- Mithril Frag Bomb
(1676,12615,2500,202,225,0), -- Spellpower Goggles Xtreme
(1676,12618,2200,202,230,0), -- Rose Colored Goggles
(1676,12619,2400,202,235,0), -- Hi-Explosive Bomb
(1676,12621,2800,202,245,0), -- Mithril Gyro-Shot
(1676,12622,2800,202,245,0), -- Green Lens
(1676,19788,4000,202,250,0), -- Dense Blasting Powder
(1676,23070,5000,202,250,0), -- Dense Dynamite
(1676,63750,5000,202,250,0), -- High-powered Flashlight
(1676,19567,4000,202,250,0), -- Salt Shaker
(1676,23071,5000,202,260,0), -- Truesilver Transformer
(1676,19792,10000,202,260,0), -- Thorium Rifle
(1676,19790,10000,202,260,0), -- Thorium Grenade
(1676,19791,5000,202,260,0), -- Thorium Widget
(1676,19794,20000,202,270,0), -- Spellpower Goggles Xtreme Plus
(1676,19795,10000,202,275,0), -- Thorium Tube
(1676,19800,10000,202,285,0), -- Thorium Shells
(1676,19825,20000,202,290,0); -- Master Engineer's Goggles

-- Danwe <Engineering Trainer> - Level 30 - Silvermoon City -- 69 Entries
DELETE FROM `npc_trainer` WHERE `entry`=16667;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
-- Engineering training levels.
(16667,4039,10,0,0,5), -- Apprentice Engineer
(16667,4040,500,202,50,10), -- Journeyman Engineer
(16667,4041,5000,202,125,20), -- Expert Engineer
(16667,12657,50000,202,200,35), -- Artisan Engineer
-- Engineering Apprentice
(16667,3922,115,202,30,0), -- Handful of Copper Bolts
(16667,3923,130,202,30,0), -- Rough Copper Bomb
(16667,7430,150,202,50,0), -- Arclight Spanner
(16667,3925,150,202,50,0), -- Rough Boomstick
(16667,3924,150,202,50,0), -- Copper Tube
-- Engineering Journeyman
(16667,3977,200,202,60,0), -- Crude Scope
(16667,3926,225,202,65,0), -- Copper Modulator
(16667,3929,250,202,75,0), -- Coarse Blasting Powder
(16667,3930,250,202,75,0), -- Crafted Heavy Shot
(16667,3931,250,202,75,0), -- Coarse Dynamite
(16667,3932,300,202,85,0), -- Target Dummy
(16667,3973,300,202,90,0), -- Silver Contact
(16667,8334,300,202,100,0), -- Practice Lock
(16667,3934,400,202,100,0), -- Flying Tiger Goggles
(16667,3938,450,202,105,0), -- Bronze Tube
(16667,3937,450,202,105,0), -- Large Copper Bomb
(16667,3936,420,202,105,0), -- Deadly Blunderbuss
(16667,3978,475,202,110,0), -- Standard Scope
(16667,3941,500,202,120,0), -- Small Bronze Bomb
(16667,3947,300,202,125,0), -- Crafted Solid Shot
(16667,3945,500,202,125,0), -- Heavy Blasting Powder
(16667,3946,500,202,125,0), -- Heavy Dynamite
(16667,3942,500,202,125,0), -- Whirring Bronze Gizmo
-- Engineering Expert
(16667,3949,550,202,130,0), -- Silver-plated Shotgun
(16667,6458,400,202,135,0), -- Ornate Spyglass
(16667,3950,600,202,140,0), -- Big Bronze Bomb
(16667,3953,600,202,145,0), -- Bronze Framework
(16667,9271,500,202,150,0), -- Aquadynamic Fish Attractor
(16667,12584,1000,202,150,0), -- Gold Power Core
(16667,3956,450,202,150,0), -- Green Tinted Goggles
(16667,3955,750,202,150,0), -- Explosive Sheep
(16667,3958,800,202,160,0), -- Iron Strut
(16667,3961,900,202,170,0), -- Gyrochronatom
(16667,12585,1000,202,175,0), -- Solid Blasting Powder
(16667,12586,1000,202,175,0), -- Solid Dynamite
(16667,3963,1000,202,175,0), -- Compact Harvest Reaper Kit
(16667,12590,1000,202,175,0), -- Gyromatic Micro-Adjustor
(16667,3962,1000,202,175,0), -- Iron Grenade
(16667,3965,1200,202,185,0), -- Advanced Target Dummy
(16667,3967,1400,202,190,0), -- Big Iron Bomb
(16667,12589,1300,202,195,0), -- Mithril Tube
(16667,15255,1500,202,200,0), -- Mechanical Repair Kit
(16667,12591,1500,202,200,0), -- Unstable Trigger
-- Engineering Artisan
(16667,12594,1600,202,205,0), -- Fire Goggles
(16667,12595,1600,202,205,0), -- Mithril Blunderbuss
(16667,12596,1700,202,210,0), -- Hi-Impact Mithril Slugs
(16667,12599,1800,202,215,0), -- Mithril Casing
(16667,12603,1800,202,215,0), -- Mithril Frag Bomb
(16667,12615,2500,202,225,0), -- Spellpower Goggles Xtreme
(16667,12618,2200,202,230,0), -- Rose Colored Goggles
(16667,12619,2400,202,235,0), -- Hi-Explosive Bomb
(16667,12621,2800,202,245,0), -- Mithril Gyro-Shot
(16667,12622,2800,202,245,0), -- Green Lens
(16667,19788,4000,202,250,0), -- Dense Blasting Powder
(16667,23070,5000,202,250,0), -- Dense Dynamite
(16667,63750,5000,202,250,0), -- High-powered Flashlight
(16667,19567,4000,202,250,0), -- Salt Shaker
(16667,23071,5000,202,260,0), -- Truesilver Transformer
(16667,19792,10000,202,260,0), -- Thorium Rifle
(16667,19790,10000,202,260,0), -- Thorium Grenade
(16667,19791,5000,202,260,0), -- Thorium Widget
(16667,19794,20000,202,270,0), -- Spellpower Goggles Xtreme Plus
(16667,19795,10000,202,275,0), -- Thorium Tube
(16667,19800,10000,202,285,0), -- Thorium Shells
(16667,19825,20000,202,290,0); -- Master Engineer's Goggles

-- Ockil <Engineering Trainer> - Level 30 - The Exodar -- 69 Entries
DELETE FROM `npc_trainer` WHERE `entry`=16726;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
-- Engineering training levels.
(16726,4039,10,0,0,5), -- Apprentice Engineer
(16726,4040,500,202,50,10), -- Journeyman Engineer
(16726,4041,5000,202,125,20), -- Expert Engineer
(16726,12657,50000,202,200,35), -- Artisan Engineer
-- Engineering Apprentice
(16726,3922,115,202,30,0), -- Handful of Copper Bolts
(16726,3923,130,202,30,0), -- Rough Copper Bomb
(16726,7430,150,202,50,0), -- Arclight Spanner
(16726,3925,150,202,50,0), -- Rough Boomstick
(16726,3924,150,202,50,0), -- Copper Tube
-- Engineering Journeyman
(16726,3977,200,202,60,0), -- Crude Scope
(16726,3926,225,202,65,0), -- Copper Modulator
(16726,3929,250,202,75,0), -- Coarse Blasting Powder
(16726,3930,250,202,75,0), -- Crafted Heavy Shot
(16726,3931,250,202,75,0), -- Coarse Dynamite
(16726,3932,300,202,85,0), -- Target Dummy
(16726,3973,300,202,90,0), -- Silver Contact
(16726,8334,300,202,100,0), -- Practice Lock
(16726,3934,400,202,100,0), -- Flying Tiger Goggles
(16726,3938,450,202,105,0), -- Bronze Tube
(16726,3937,450,202,105,0), -- Large Copper Bomb
(16726,3936,420,202,105,0), -- Deadly Blunderbuss
(16726,3978,475,202,110,0), -- Standard Scope
(16726,3941,500,202,120,0), -- Small Bronze Bomb
(16726,3947,300,202,125,0), -- Crafted Solid Shot
(16726,3945,500,202,125,0), -- Heavy Blasting Powder
(16726,3946,500,202,125,0), -- Heavy Dynamite
(16726,3942,500,202,125,0), -- Whirring Bronze Gizmo
-- Engineering Expert
(16726,3949,550,202,130,0), -- Silver-plated Shotgun
(16726,6458,400,202,135,0), -- Ornate Spyglass
(16726,3950,600,202,140,0), -- Big Bronze Bomb
(16726,3953,600,202,145,0), -- Bronze Framework
(16726,9271,500,202,150,0), -- Aquadynamic Fish Attractor
(16726,12584,1000,202,150,0), -- Gold Power Core
(16726,3956,450,202,150,0), -- Green Tinted Goggles
(16726,3955,750,202,150,0), -- Explosive Sheep
(16726,3958,800,202,160,0), -- Iron Strut
(16726,3961,900,202,170,0), -- Gyrochronatom
(16726,12585,1000,202,175,0), -- Solid Blasting Powder
(16726,12586,1000,202,175,0), -- Solid Dynamite
(16726,3963,1000,202,175,0), -- Compact Harvest Reaper Kit
(16726,12590,1000,202,175,0), -- Gyromatic Micro-Adjustor
(16726,3962,1000,202,175,0), -- Iron Grenade
(16726,3965,1200,202,185,0), -- Advanced Target Dummy
(16726,3967,1400,202,190,0), -- Big Iron Bomb
(16726,12589,1300,202,195,0), -- Mithril Tube
(16726,15255,1500,202,200,0), -- Mechanical Repair Kit
(16726,12591,1500,202,200,0), -- Unstable Trigger
-- Engineering Artisan
(16726,12594,1600,202,205,0), -- Fire Goggles
(16726,12595,1600,202,205,0), -- Mithril Blunderbuss
(16726,12596,1700,202,210,0), -- Hi-Impact Mithril Slugs
(16726,12599,1800,202,215,0), -- Mithril Casing
(16726,12603,1800,202,215,0), -- Mithril Frag Bomb
(16726,12615,2500,202,225,0), -- Spellpower Goggles Xtreme
(16726,12618,2200,202,230,0), -- Rose Colored Goggles
(16726,12619,2400,202,235,0), -- Hi-Explosive Bomb
(16726,12621,2800,202,245,0), -- Mithril Gyro-Shot
(16726,12622,2800,202,245,0), -- Green Lens
(16726,19788,4000,202,250,0), -- Dense Blasting Powder
(16726,23070,5000,202,250,0), -- Dense Dynamite
(16726,63750,5000,202,250,0), -- High-powered Flashlight
(16726,19567,4000,202,250,0), -- Salt Shaker
(16726,23071,5000,202,260,0), -- Truesilver Transformer
(16726,19792,10000,202,260,0), -- Thorium Rifle
(16726,19790,10000,202,260,0), -- Thorium Grenade
(16726,19791,5000,202,260,0), -- Thorium Widget
(16726,19794,20000,202,270,0), -- Spellpower Goggles Xtreme Plus
(16726,19795,10000,202,275,0), -- Thorium Tube
(16726,19800,10000,202,285,0), -- Thorium Shells
(16726,19825,20000,202,290,0); -- Master Engineer's Goggles

-- Deek Fizzlebizz <Engineering Trainer> - Level 27 - Loch Modan -- 69 Entries
DELETE FROM `npc_trainer` WHERE `entry`=3290;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
-- Engineering training levels.
(3290,4039,10,0,0,5), -- Apprentice Engineer
(3290,4040,500,202,50,10), -- Journeyman Engineer
(3290,4041,5000,202,125,20), -- Expert Engineer
(3290,12657,50000,202,200,35), -- Artisan Engineer
-- Engineering Apprentice
(3290,3922,115,202,30,0), -- Handful of Copper Bolts
(3290,3923,130,202,30,0), -- Rough Copper Bomb
(3290,7430,150,202,50,0), -- Arclight Spanner
(3290,3925,150,202,50,0), -- Rough Boomstick
(3290,3924,150,202,50,0), -- Copper Tube
-- Engineering Journeyman
(3290,3977,200,202,60,0), -- Crude Scope
(3290,3926,225,202,65,0), -- Copper Modulator
(3290,3929,250,202,75,0), -- Coarse Blasting Powder
(3290,3930,250,202,75,0), -- Crafted Heavy Shot
(3290,3931,250,202,75,0), -- Coarse Dynamite
(3290,3932,300,202,85,0), -- Target Dummy
(3290,3973,300,202,90,0), -- Silver Contact
(3290,8334,300,202,100,0), -- Practice Lock
(3290,3934,400,202,100,0), -- Flying Tiger Goggles
(3290,3938,450,202,105,0), -- Bronze Tube
(3290,3937,450,202,105,0), -- Large Copper Bomb
(3290,3936,420,202,105,0), -- Deadly Blunderbuss
(3290,3978,475,202,110,0), -- Standard Scope
(3290,3941,500,202,120,0), -- Small Bronze Bomb
(3290,3947,300,202,125,0), -- Crafted Solid Shot
(3290,3945,500,202,125,0), -- Heavy Blasting Powder
(3290,3946,500,202,125,0), -- Heavy Dynamite
(3290,3942,500,202,125,0), -- Whirring Bronze Gizmo
-- Engineering Expert
(3290,3949,550,202,130,0), -- Silver-plated Shotgun
(3290,6458,400,202,135,0), -- Ornate Spyglass
(3290,3950,600,202,140,0), -- Big Bronze Bomb
(3290,3953,600,202,145,0), -- Bronze Framework
(3290,9271,500,202,150,0), -- Aquadynamic Fish Attractor
(3290,12584,1000,202,150,0), -- Gold Power Core
(3290,3956,450,202,150,0), -- Green Tinted Goggles
(3290,3955,750,202,150,0), -- Explosive Sheep
(3290,3958,800,202,160,0), -- Iron Strut
(3290,3961,900,202,170,0), -- Gyrochronatom
(3290,12585,1000,202,175,0), -- Solid Blasting Powder
(3290,12586,1000,202,175,0), -- Solid Dynamite
(3290,3963,1000,202,175,0), -- Compact Harvest Reaper Kit
(3290,12590,1000,202,175,0), -- Gyromatic Micro-Adjustor
(3290,3962,1000,202,175,0), -- Iron Grenade
(3290,3965,1200,202,185,0), -- Advanced Target Dummy
(3290,3967,1400,202,190,0), -- Big Iron Bomb
(3290,12589,1300,202,195,0), -- Mithril Tube
(3290,15255,1500,202,200,0), -- Mechanical Repair Kit
(3290,12591,1500,202,200,0), -- Unstable Trigger
-- Engineering Artisan
(3290,12594,1600,202,205,0), -- Fire Goggles
(3290,12595,1600,202,205,0), -- Mithril Blunderbuss
(3290,12596,1700,202,210,0), -- Hi-Impact Mithril Slugs
(3290,12599,1800,202,215,0), -- Mithril Casing
(3290,12603,1800,202,215,0), -- Mithril Frag Bomb
(3290,12615,2500,202,225,0), -- Spellpower Goggles Xtreme
(3290,12618,2200,202,230,0), -- Rose Colored Goggles
(3290,12619,2400,202,235,0), -- Hi-Explosive Bomb
(3290,12621,2800,202,245,0), -- Mithril Gyro-Shot
(3290,12622,2800,202,245,0), -- Green Lens
(3290,19788,4000,202,250,0), -- Dense Blasting Powder
(3290,23070,5000,202,250,0), -- Dense Dynamite
(3290,63750,5000,202,250,0), -- High-powered Flashlight
(3290,19567,4000,202,250,0), -- Salt Shaker
(3290,23071,5000,202,260,0), -- Truesilver Transformer
(3290,19792,10000,202,260,0), -- Thorium Rifle
(3290,19790,10000,202,260,0), -- Thorium Grenade
(3290,19791,5000,202,260,0), -- Thorium Widget
(3290,19794,20000,202,270,0), -- Spellpower Goggles Xtreme Plus
(3290,19795,10000,202,275,0), -- Thorium Tube
(3290,19800,10000,202,285,0), -- Thorium Shells
(3290,19825,20000,202,290,0); -- Master Engineer's Goggles

-- Jenna Lemkenilli <Engineering Trainer> - Level 26 - Darkshore -- 69 Entries
DELETE FROM `npc_trainer` WHERE `entry`=11037;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
-- Engineering training levels.
(11037,4039,10,0,0,5), -- Apprentice Engineer
(11037,4040,500,202,50,10), -- Journeyman Engineer
(11037,4041,5000,202,125,20), -- Expert Engineer
(11037,12657,50000,202,200,35), -- Artisan Engineer
-- Engineering Apprentice
(11037,3922,115,202,30,0), -- Handful of Copper Bolts
(11037,3923,130,202,30,0), -- Rough Copper Bomb
(11037,7430,150,202,50,0), -- Arclight Spanner
(11037,3925,150,202,50,0), -- Rough Boomstick
(11037,3924,150,202,50,0), -- Copper Tube
-- Engineering Journeyman
(11037,3977,200,202,60,0), -- Crude Scope
(11037,3926,225,202,65,0), -- Copper Modulator
(11037,3929,250,202,75,0), -- Coarse Blasting Powder
(11037,3930,250,202,75,0), -- Crafted Heavy Shot
(11037,3931,250,202,75,0), -- Coarse Dynamite
(11037,3932,300,202,85,0), -- Target Dummy
(11037,3973,300,202,90,0), -- Silver Contact
(11037,8334,300,202,100,0), -- Practice Lock
(11037,3934,400,202,100,0), -- Flying Tiger Goggles
(11037,3938,450,202,105,0), -- Bronze Tube
(11037,3937,450,202,105,0), -- Large Copper Bomb
(11037,3936,420,202,105,0), -- Deadly Blunderbuss
(11037,3978,475,202,110,0), -- Standard Scope
(11037,3941,500,202,120,0), -- Small Bronze Bomb
(11037,3947,300,202,125,0), -- Crafted Solid Shot
(11037,3945,500,202,125,0), -- Heavy Blasting Powder
(11037,3946,500,202,125,0), -- Heavy Dynamite
(11037,3942,500,202,125,0), -- Whirring Bronze Gizmo
-- Engineering Expert
(11037,3949,550,202,130,0), -- Silver-plated Shotgun
(11037,6458,400,202,135,0), -- Ornate Spyglass
(11037,3950,600,202,140,0), -- Big Bronze Bomb
(11037,3953,600,202,145,0), -- Bronze Framework
(11037,9271,500,202,150,0), -- Aquadynamic Fish Attractor
(11037,12584,1000,202,150,0), -- Gold Power Core
(11037,3956,450,202,150,0), -- Green Tinted Goggles
(11037,3955,750,202,150,0), -- Explosive Sheep
(11037,3958,800,202,160,0), -- Iron Strut
(11037,3961,900,202,170,0), -- Gyrochronatom
(11037,12585,1000,202,175,0), -- Solid Blasting Powder
(11037,12586,1000,202,175,0), -- Solid Dynamite
(11037,3963,1000,202,175,0), -- Compact Harvest Reaper Kit
(11037,12590,1000,202,175,0), -- Gyromatic Micro-Adjustor
(11037,3962,1000,202,175,0), -- Iron Grenade
(11037,3965,1200,202,185,0), -- Advanced Target Dummy
(11037,3967,1400,202,190,0), -- Big Iron Bomb
(11037,12589,1300,202,195,0), -- Mithril Tube
(11037,15255,1500,202,200,0), -- Mechanical Repair Kit
(11037,12591,1500,202,200,0), -- Unstable Trigger
-- Engineering Artisan
(11037,12594,1600,202,205,0), -- Fire Goggles
(11037,12595,1600,202,205,0), -- Mithril Blunderbuss
(11037,12596,1700,202,210,0), -- Hi-Impact Mithril Slugs
(11037,12599,1800,202,215,0), -- Mithril Casing
(11037,12603,1800,202,215,0), -- Mithril Frag Bomb
(11037,12615,2500,202,225,0), -- Spellpower Goggles Xtreme
(11037,12618,2200,202,230,0), -- Rose Colored Goggles
(11037,12619,2400,202,235,0), -- Hi-Explosive Bomb
(11037,12621,2800,202,245,0), -- Mithril Gyro-Shot
(11037,12622,2800,202,245,0), -- Green Lens
(11037,19788,4000,202,250,0), -- Dense Blasting Powder
(11037,23070,5000,202,250,0), -- Dense Dynamite
(11037,63750,5000,202,250,0), -- High-powered Flashlight
(11037,19567,4000,202,250,0), -- Salt Shaker
(11037,23071,5000,202,260,0), -- Truesilver Transformer
(11037,19792,10000,202,260,0), -- Thorium Rifle
(11037,19790,10000,202,260,0), -- Thorium Grenade
(11037,19791,5000,202,260,0), -- Thorium Widget
(11037,19794,20000,202,270,0), -- Spellpower Goggles Xtreme Plus
(11037,19795,10000,202,275,0), -- Thorium Tube
(11037,19800,10000,202,285,0), -- Thorium Shells
(11037,19825,20000,202,290,0); -- Master Engineer's Goggles

-- Mukdrak <Engineering Trainer> - Level 26 - Durotar -- 69 Entries
DELETE FROM `npc_trainer` WHERE `entry`=11025;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
-- Engineering training levels.
(11025,4039,10,0,0,5), -- Apprentice Engineer
(11025,4040,500,202,50,10), -- Journeyman Engineer
(11025,4041,5000,202,125,20), -- Expert Engineer
(11025,12657,50000,202,200,35), -- Artisan Engineer
-- Engineering Apprentice
(11025,3922,115,202,30,0), -- Handful of Copper Bolts
(11025,3923,130,202,30,0), -- Rough Copper Bomb
(11025,7430,150,202,50,0), -- Arclight Spanner
(11025,3925,150,202,50,0), -- Rough Boomstick
(11025,3924,150,202,50,0), -- Copper Tube
-- Engineering Journeyman
(11025,3977,200,202,60,0), -- Crude Scope
(11025,3926,225,202,65,0), -- Copper Modulator
(11025,3929,250,202,75,0), -- Coarse Blasting Powder
(11025,3930,250,202,75,0), -- Crafted Heavy Shot
(11025,3931,250,202,75,0), -- Coarse Dynamite
(11025,3932,300,202,85,0), -- Target Dummy
(11025,3973,300,202,90,0), -- Silver Contact
(11025,8334,300,202,100,0), -- Practice Lock
(11025,3934,400,202,100,0), -- Flying Tiger Goggles
(11025,3938,450,202,105,0), -- Bronze Tube
(11025,3937,450,202,105,0), -- Large Copper Bomb
(11025,3936,420,202,105,0), -- Deadly Blunderbuss
(11025,3978,475,202,110,0), -- Standard Scope
(11025,3941,500,202,120,0), -- Small Bronze Bomb
(11025,3947,300,202,125,0), -- Crafted Solid Shot
(11025,3945,500,202,125,0), -- Heavy Blasting Powder
(11025,3946,500,202,125,0), -- Heavy Dynamite
(11025,3942,500,202,125,0), -- Whirring Bronze Gizmo
-- Engineering Expert
(11025,3949,550,202,130,0), -- Silver-plated Shotgun
(11025,6458,400,202,135,0), -- Ornate Spyglass
(11025,3950,600,202,140,0), -- Big Bronze Bomb
(11025,3953,600,202,145,0), -- Bronze Framework
(11025,9271,500,202,150,0), -- Aquadynamic Fish Attractor
(11025,12584,1000,202,150,0), -- Gold Power Core
(11025,3956,450,202,150,0), -- Green Tinted Goggles
(11025,3955,750,202,150,0), -- Explosive Sheep
(11025,3958,800,202,160,0), -- Iron Strut
(11025,3961,900,202,170,0), -- Gyrochronatom
(11025,12585,1000,202,175,0), -- Solid Blasting Powder
(11025,12586,1000,202,175,0), -- Solid Dynamite
(11025,3963,1000,202,175,0), -- Compact Harvest Reaper Kit
(11025,12590,1000,202,175,0), -- Gyromatic Micro-Adjustor
(11025,3962,1000,202,175,0), -- Iron Grenade
(11025,3965,1200,202,185,0), -- Advanced Target Dummy
(11025,3967,1400,202,190,0), -- Big Iron Bomb
(11025,12589,1300,202,195,0), -- Mithril Tube
(11025,15255,1500,202,200,0), -- Mechanical Repair Kit
(11025,12591,1500,202,200,0), -- Unstable Trigger
-- Engineering Artisan
(11025,12594,1600,202,205,0), -- Fire Goggles
(11025,12595,1600,202,205,0), -- Mithril Blunderbuss
(11025,12596,1700,202,210,0), -- Hi-Impact Mithril Slugs
(11025,12599,1800,202,215,0), -- Mithril Casing
(11025,12603,1800,202,215,0), -- Mithril Frag Bomb
(11025,12615,2500,202,225,0), -- Spellpower Goggles Xtreme
(11025,12618,2200,202,230,0), -- Rose Colored Goggles
(11025,12619,2400,202,235,0), -- Hi-Explosive Bomb
(11025,12621,2800,202,245,0), -- Mithril Gyro-Shot
(11025,12622,2800,202,245,0), -- Green Lens
(11025,19788,4000,202,250,0), -- Dense Blasting Powder
(11025,23070,5000,202,250,0), -- Dense Dynamite
(11025,63750,5000,202,250,0), -- High-powered Flashlight
(11025,19567,4000,202,250,0), -- Salt Shaker
(11025,23071,5000,202,260,0), -- Truesilver Transformer
(11025,19792,10000,202,260,0), -- Thorium Rifle
(11025,19790,10000,202,260,0), -- Thorium Grenade
(11025,19791,5000,202,260,0), -- Thorium Widget
(11025,19794,20000,202,270,0), -- Spellpower Goggles Xtreme Plus
(11025,19795,10000,202,275,0), -- Thorium Tube
(11025,19800,10000,202,285,0), -- Thorium Shells
(11025,19825,20000,202,290,0); -- Master Engineer's Goggles



-- Progect Genesis by Unholy (remake of start areas)
-- Brill
-- add missing vendor William Saldean
DELETE FROM `creature` WHERE `id`=33996;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(200144,33996,0,1,1,0,106,2236.61,297.819,35.1893,5.49006,25,0,0,102,0,0,0);
-- Doreen Beltis is on random movement
UPDATE `creature` SET `spawndist`=3, `MovementType`=1 WHERE `guid`=31918;
-- set proper wp path to Hamlin Atkins
DELETE FROM `waypoint_data` WHERE `id`=382920;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES 
(382920,1,2283.86,386.706,34.1142,0,0,0,100,0),
(382920,2,2286.12,394.197,34.0471,0,0,0,100,0),
(382920,3,2287.9,395.711,34.0292,0,0,0,100,0),
(382920,4,2290.5,396.192,34.0261,0,0,0,100,0),
(382920,5,2335.99,397.679,33.6667,0,0,0,100,0),
(382920,6,2358.24,368.876,37.0261,0,0,0,100,0),
(382920,7,2358.8,358.865,37.7712,0,0,0,100,0),
(382920,8,2360.7,351.688,37.7914,0,0,0,100,0),
(382920,9,2363.49,345.913,37.8996,0,0,0,100,0),
(382920,10,2364.1,347.916,37.9404,0,0,0,100,0),
(382920,11,2362.86,353.099,38.0711,0,0,0,100,0),
(382920,12,2353.84,375.787,35.6826,0,0,0,100,0),
(382920,13,2337.76,395.508,33.6669,0,0,0,100,0),
(382920,14,2333.73,397.028,33.6669,0,0,0,100,0),
(382920,15,2287.36,397.65,34.0017,0,0,0,100,0),
(382920,16,2283.69,399.55,33.963,0,0,0,100,0),
(382920,17,2264.82,469.728,33.864,0,0,0,100,0),
(382920,18,2273.83,432.134,33.9745,0,0,0,100,0),
(382920,19,2284.54,380.336,34.1138,0,0,0,100,0),
(382920,20,2283.26,354.943,34.1138,0,0,0,100,0);
-- set proper wp path to Sahvan Bloodshadow
DELETE FROM `waypoint_data` WHERE `id`=319190;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES 
(319190,1,2281.65,342.483,34.1138,0,0,0,100,0),
(319190,2,2262.17,301.243,34.1138,0,0,0,100,0),
(319190,3,2246.35,276.135,34.1138,0,0,0,100,0),
(319190,4,2246.46,260.124,34.1291,0,1,0,100,0), -- run to next point
(319190,5,2246.45,260.845,34.137,30000,0,0,100,0), -- delay here
(319190,6,2245.9,270.184,34.1138,0,0,0,100,0),
(319190,7,2250.16,275.897,34.1138,0,0,0,100,0),
(319190,8,2252.08,274.987,34.1138,10000,0,0,100,0), -- delay here
(319190,9,2259.82,289.887,34.1141,0,0,0,100,0),
(319190,10,2267.54,310.507,34.1138,0,0,0,100,0),
(319190,11,2260.34,323.82,35.0834,10000,0,0,100,0), -- delay here
(319190,12,2281.91,342.844,34.1138,0,0,0,100,0),
(319190,13,2285.17,351.591,34.1138,0,0,0,100,0),
(319190,14,2284.93,390.006,34.1138,0,0,0,100,0),
(319190,15,2287.94,394.491,34.0501,0,0,0,100,0),
(319190,16,2341.1,397.651,33.6667,0,0,0,100,0),
(319190,17,2373.36,398.861,37.5403,0,0,0,100,0),
(319190,18,2374.81,398.1,37.4271,10000,0,0,100,0), -- delay here
(319190,19,2357.46,398.638,36.1101,0,0,0,100,0),
(319190,20,2289.78,395.382,34.0359,0,0,0,100,0),
(319190,21,2285.15,391.249,34.1086,0,0,0,100,0),
(319190,22,2284.34,387.399,34.1297,0,0,0,100,0),
(319190,23,2282.82,358.647,34.1179,0,0,0,100,0);
-- set proper wp path for deathguard bartholomew
UPDATE `creature` SET `spawndist`=0, `MovementType`=2 WHERE `guid`=34111;
UPDATE `creature_addon` SET `path_id`=341110 WHERE `guid`=34111;
DELETE FROM `waypoint_data` WHERE `id`=341110;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES 
(341110,1,2289.16,391.669,34.1012,0,0,1001,100,0), -- says text
(341110,2,2315.83,396.523,33.742,0,0,0,100,0),
(341110,3,2336.82,396.92,33.6667,0,0,0,100,0),
(341110,4,2353.38,370.687,36.3969,0,0,0,100,0),
(341110,5,2349.97,328.953,37.4589,0,0,0,100,0),
(341110,6,2366.27,310.962,36.2944,0,0,0,100,0),
(341110,7,2379.07,306.904,37.2327,0,0,0,100,0),
(341110,8,2379.85,306.042,37.1692,6000,0,1000,100,0), -- delay at fence & text
(341110,9,2399.14,305.15,37.6983,0,0,0,100,0),
(341110,10,2413.45,315.29,38.0267,0,0,0,100,0),
(341110,11,2427.08,335.754,35.8407,0,0,0,100,0),
(341110,12,2424.95,345.606,33.9677,0,0,0,100,0),
(341110,13,2423.65,351.911,33.8674,0,0,0,100,0),
(341110,14,2426.61,353.696,33.8674,0,0,0,100,0),
(341110,15,2428.87,355.539,33.8731,10000,0,0,100,0), -- delay at gate
(341110,16,2412.87,370.285,34.0232,0,0,0,100,0),
(341110,17,2397.56,395.547,33.9003,0,0,0,100,0),
(341110,18,2387.4,420.528,33.8907,0,0,0,100,0),
(341110,19,2375.53,428.555,34.0246,0,0,0,100,0),
(341110,20,2369.2,430.833,33.5856,0,0,0,100,0),
(341110,21,2366.47,438.077,33.3433,0,0,0,100,0),
(341110,22,2356.94,444.502,33.3352,10000,0,0,100,0), -- delay here
(341110,23,2356.72,442.773,33.338,0,0,0,100,0),
(341110,24,2355.32,441.766,33.3342,0,0,0,100,0),
(341110,25,2351.45,436.943,33.3304,0,0,0,100,0),
(341110,26,2350.74,428.538,33.3561,0,0,0,100,0),
(341110,27,2339.63,414.704,33.6696,0,0,0,100,0),
(341110,28,2336.52,401.974,33.6669,0,0,0,100,0),
(341110,29,2330.25,399.231,33.6667,0,0,0,100,0),
(341110,30,2312.71,397.174,33.8855,0,0,0,100,0),
(341110,31,2288.65,391.566,34.1005,600000,1,0,100,0); -- runs back here and waits here 5 mins on offy
-- add missing text
DELETE FROM `db_script_string` WHERE `entry` IN (2000005400,2000005401);
INSERT INTO `db_script_string` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`) VALUES 
(2000005400, 'We really should fix this fence soon.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005401, '*sigh* It''s about time to check on the cemetary again-- Ill be back in a few minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
-- add text to script
DELETE FROM `waypoint_scripts` WHERE `id` IN (1000,1001);
INSERT INTO `waypoint_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`,`guid`) VALUES 
(1000,0,0,0,0,2000005400,0.0,0.0,0.0,0.0,516),
(1001,0,0,0,0,2000005401,0.0,0.0,0.0,0.0,517);
-- set up proper wp path for Junior Apothecary Holland
DELETE FROM `waypoint_data` WHERE `id`=284120;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES 
(284120,1,2326.21,398.704,33.6667,0,0,0,100,200062),
(284120,2,2332.9,400.654,33.7654,0,0,0,100,200061),
(284120,3,2336.98,404.958,33.6667,0,0,0,100,200060),
(284120,4,2338.86,413.132,33.6667,0,0,0,100,200059),
(284120,5,2344.94,422.005,33.6695,0,0,0,100,200058),
(284120,6,2351.85,428.927,33.3483,0,0,0,100,200057),
(284120,7,2351.39,434.389,33.3294,0,0,0,100,200056),
(284120,8,2354.95,441.351,33.3308,5000,0,22,100,200055), -- delay here & text
(284120,9,2362.86,441.826,33.3567,0,0,0,100,200054),
(284120,10,2368.65,431.222,33.5523,0,0,0,100,200053),
(284120,11,2378.02,428.002,34.0443,0,0,0,100,200052),
(284120,12,2388.27,417.957,33.8909,5000,0,1002,100,200051), -- delay here & text
(284120,13,2395.75,401.915,33.8916,0,0,0,100,200063),
(284120,14,2403.24,386.405,33.8912,0,0,0,100,200064),
(284120,15,2404.96,382.338,33.8917,0,0,0,100,200065),
(284120,16,2408.46,379.514,34.012,0,0,0,100,200066),
(284120,17,2411.38,373.24,34.0604,0,0,0,100,200067),
(284120,18,2418.16,365.964,34.0473,0,0,1003,100,200068),
(284120,19,2429.85,356.125,33.8741,10000,0,1002,100,200069), -- delay here & text
(284120,20,2428.57,356.531,33.8777,0,0,0,100,200070),
(284120,21,2415.7,365.001,33.9564,0,0,0,100,200071),
(284120,22,2404.9,379.496,33.9172,0,0,0,100,200072),
(284120,23,2392.95,403.802,33.8907,0,0,0,100,200073),
(284120,24,2386.21,421.674,33.8907,0,0,0,100,200074),
(284120,25,2376.66,427.997,34.041,0,0,1004,100,200075), -- text here
(284120,26,2367.43,430.782,33.5527,0,0,0,100,200076),
(284120,27,2361.52,427.364,33.5527,0,0,0,100,200077),
(284120,28,2351.32,427.95,33.3457,0,0,0,100,200078),
(284120,29,2343.33,420.592,33.6674,0,0,0,100,200079),
(284120,30,2335.72,404.528,33.7507,0,0,0,100,200080),
(284120,31,2333.62,401.291,33.726,0,0,1005,100,200081), -- text say
(284120,32,2327.3,398.426,33.6667,0,0,0,100,200082),
(284120,33,2319.66,398.503,33.6667,0,0,0,100,200083);
-- add missing text to junior apothecary holland
DELETE FROM `db_script_string` WHERE `entry` IN (2000005402,2000005403,2000005404,2000005405);
INSERT INTO `db_script_string` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`) VALUES 
(2000005402, 'How long can it take to pick a handful of weeds?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005403, 'At this rate I could have gathered them myself!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005404, 'Ah, this must be him now... no? Bah!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005405, 'As if I had all eternity.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DELETE FROM `waypoint_scripts` WHERE `id` IN (1002,1003,1004,1005);
INSERT INTO `waypoint_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`,`guid`) VALUES 
(1002,0,0,0,0,2000005402,0.0,0.0,0.0,0.0,518),
(1003,0,0,0,0,2000005403,0.0,0.0,0.0,0.0,519),
(1004,0,0,0,0,2000005404,0.0,0.0,0.0,0.0,520),
(1005,0,0,0,0,2000005405,0.0,0.0,0.0,0.0,521);
-- set proper wp path for deathguard mort
UPDATE `creature` SET `spawndist`=0, `MovementType`=2 WHERE `guid`=34113;
UPDATE `creature_addon` SET `path_id`=341130 WHERE `guid`=34113;
DELETE FROM `waypoint_data` WHERE `id`=341130;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES 
(341130,1,2238.03,258.098,34.1155,0,0,0,100,0),
(341130,2,2231.01,254.377,33.7111,0,0,0,100,0),
(341130,3,2230.57,230.335,32.0697,0,0,0,100,0),
(341130,4,2240.13,210.739,28.8822,0,0,0,100,0),
(341130,5,2245.49,207.97,28.4874,0,0,0,100,0),
(341130,6,2269.34,206.985,28.1209,0,0,0,100,0),
(341130,7,2290.56,215.104,28.1209,0,0,0,100,0),
(341130,8,2313.42,225.214,28.1209,0,0,0,100,0),
(341130,9,2348.19,239.938,28.1209,0,0,0,100,0),
(341130,10,2397.72,255.055,28.1206,0,0,0,100,0),
(341130,11,2462.58,299.145,28.1131,0,0,0,100,0),
(341130,12,2452.62,333.698,29.9135,10000,0,0,100,0), -- delay here
(341130,13,2454.84,334.046,29.9375,6000,0,0,100,0), -- delay here
(341130,14,2474.66,307.759,28.1198,0,0,0,100,0),
(341130,15,2500.28,319.11,28.1198,0,0,0,100,0),
(341130,16,2550.28,344.573,28.1198,0,0,0,100,0),
(341130,17,2576.0,351.915,28.1198,0,0,0,100,0),
(341130,18,2596.8,351.361,28.1198,0,0,0,100,0),
(341130,19,2622.07,336.721,28.1198,10000,0,0,100,0), -- delay here
(341130,20,2602.01,348.264,28.1209,0,0,0,100,0),
(341130,21,2587.56,352.491,28.1209,0,0,0,100,0),
(341130,22,2566.56,349.01,28.1209,0,0,0,100,0),
(341130,23,2528.34,334.151,28.1209,0,0,0,100,0),
(341130,24,2464.87,295.254,28.1209,0,0,0,100,0),
(341130,25,2403.06,258.992,28.1209,0,0,0,100,0),
(341130,26,2386.77,253.304,28.2053,0,0,0,100,0),
(341130,27,2352.18,245.667,28.1416,0,0,0,100,0),
(341130,28,2334.01,237.28,28.1209,0,0,0,100,0),
(341130,29,2276.63,208.923,28.1197,0,0,0,100,0),
(341130,30,2259.48,206.766,28.1216,0,0,0,100,0),
(341130,31,2241.62,210.299,28.7599,0,0,0,100,0),
(341130,32,2236.86,215.901,29.863,0,0,0,100,0),
(341130,33,2232.07,231.88,32.1364,0,0,0,100,0),
(341130,34,2231.62,250.73,33.2461,0,0,0,100,0),
(341130,35,2233.35,258.024,34.084,0,0,0,100,0),
(341130,36,2238.28,258.094,34.1151,0,0,0,100,0),
(341130,37,2237.95,258.875,34.1151,600000,0,0,100,0); -- offy 10 minute delay here
-- we have an extra deathguard in brill that is not on offy entryid 7980
DELETE FROM `creature` WHERE `guid`=45204;
DELETE FROM `creature_addon` WHERE `guid`=45204;
-- proper modelids and spawntimesecs (teacher)
UPDATE `creature` SET `modelid`=24169,`spawntimesecs`=300 WHERE `guid`=200117;
UPDATE `creature` SET `modelid`=7118,`spawntimesecs`=300 WHERE `guid` IN (200118,200119);
UPDATE `creature` SET `modelid`=7117,`spawntimesecs`=300 WHERE `guid`=200120;
UPDATE `creature` SET `modelid`=14369,`spawntimesecs`=300 WHERE `guid`=200121;
UPDATE `creature` SET `modelid`=11375,`spawntimesecs`=300 WHERE `guid`=200122;
UPDATE `creature` SET `spawntimesecs`=300 WHERE `guid`=200123;

-- Mulgore
-- Brave Windfeather
-- clean up old path.. not blizz like and make new one
DELETE FROM `waypoint_data` WHERE `id`=249160;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES 
(249160,1,-2895.3,-243.672,53.12,0,0,0,100,0),
(249160,2,-2895.01,-258.347,52.9776,0,0,0,100,0),
(249160,3,-2891.95,-263.297,53.3373,0,0,0,100,0),
(249160,4,-2882.78,-265.714,53.915,0,0,0,100,0),
(249160,5,-2886.37,-265.955,53.9028,0,0,0,100,0),
(249160,6,-2892.08,-268.336,53.7216,0,0,0,100,0),
(249160,7,-2892.55,-272.073,53.8796,0,0,0,100,0),
(249160,8,-2892.87,-270.267,53.7881,0,0,0,100,0),
(249160,9,-2897.14,-254.637,52.9413,0,0,0,100,0),
(249160,10,-2900.88,-249.243,52.9413,0,0,0,100,0),
(249160,11,-2909.35,-243.119,53.0171,0,0,0,100,0),
(249160,12,-2915.1,-238.997,53.7014,0,0,0,100,0),
(249160,13,-2917.27,-234.734,54.9377,1000,0,0,100,0), -- delay at top of steps here
(249160,14,-2916.07,-238.443,53.7932,0,0,0,100,0),
(249160,15,-2914.95,-243.192,53.4791,0,0,0,100,0),
(249160,16,-2914.65,-248.894,53.1095,0,0,0,100,0),
(249160,17,-2924.27,-255.489,53.0242,0,0,0,100,0),
(249160,18,-2929.6,-252.168,53.3513,0,0,0,100,0),
(249160,19,-2936.02,-247.237,53.7721,0,0,0,100,0),
(249160,20,-2935.52,-249.858,53.5817,0,0,0,100,0),
(249160,21,-2933.6,-248.262,53.6997,0,0,0,100,0),
(249160,22,-2934.07,-251.949,53.4104,0,0,0,100,0),
(249160,23,-2926.39,-253.447,53.1918,0,0,0,100,0),
(249160,24,-2918.47,-253.049,53.022,0,0,0,100,0),
(249160,25,-2910.91,-248.671,52.942,0,0,0,100,0),
(249160,26,-2903.16,-246.921,52.942,0,0,0,100,0),
(249160,27,-2896.53,-242.217,53.1415,0,0,0,100,0),
(249160,28,-2886.79,-233.106,53.9175,0,0,0,100,0),
(249160,29,-2883.1,-229.618,55.0118,0,0,0,100,0),
(249160,30,-2885.99,-232.802,53.9169,0,0,0,100,0),
(249160,31,-2895.49,-244.402,53.0647,0,0,0,100,0),
(249160,32,-2895.74,-252.964,52.9412,0,0,0,100,0),
(249160,33,-2893.03,-262.413,53.1932,0,0,0,100,0),
(249160,34,-2893.67,-272.459,53.8737,0,0,0,100,0),
(249160,35,-2892.21,-266.743,53.6256,0,0,0,100,0),
(249160,36,-2882.44,-267.127,53.9153,0,0,0,100,0),
(249160,37,-2892.63,-261.523,53.1296,0,0,0,100,0),
(249160,38,-2899.66,-250.928,52.9407,0,0,0,100,0),
(249160,39,-2906.87,-247.321,52.9407,0,0,0,100,0),
(249160,40,-2914.69,-252.023,52.9479,0,0,0,100,0),
(249160,41,-2925.94,-256.507,52.9767,0,0,0,100,0),
(249160,42,-2938.15,-258.035,53.0305,0,0,0,100,0),
(249160,43,-2937.23,-255.912,53.1376,0,0,0,100,0),
(249160,44,-2936.3,-258.795,53.0378,0,0,0,100,0),
(249160,45,-2932.18,-257.72,53.0204,0,0,0,100,0),
(249160,46,-2922.38,-255.162,52.9779,0,0,0,100,0),
(249160,47,-2912.88,-249.206,52.9998,0,0,0,100,0),
(249160,48,-2905.57,-246.094,52.9421,0,0,0,100,0),
(249160,49,-2898.9,-243.24,52.9701,0,0,0,100,0);
-- set random movements
-- Brave Proudsnout
UPDATE `creature` SET `spawndist`=15, `MovementType`=1 WHERE `guid`=24932;
-- Brave Lightninghorn
UPDATE `creature` SET `spawndist`=15, `MovementType`=1 WHERE `guid`=24949;
-- Brave Greathoof
UPDATE `creature` SET `spawndist`=15, `MovementType`=1 WHERE `guid`=25345;
-- Brave Running Wolf
UPDATE `creature` SET `spawndist`=15, `MovementType`=1 WHERE `guid`=25242;

-- Solliden Farms
-- 1535 Scarlet Warrior
-- spamming Moss Hide 3288 shield spell (which is incorrect)(notice resemblence of spell ids)
-- setup EAI to use correct spell Nimble Reflexes 3238
UPDATE `creature_template` SET `spell1`=0,`AIName`= 'EventAI' WHERE `entry`=1535;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (1535);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
(153501,1535,0,0,100,1,1000,5000,30000,35000,11,3238,0,0,1,-10011,-10012,-10013,0,0,0,0, 'Scarlet Warrior - cast Nimble Reflexes on self - random say'),
(153502,1535,2,0,100,0,20,15,0,0,25,0,0,0,0,0,0,0,0,0,0,0, 'Scarlet Warrior - flees at @ 15% hp');
-- add text to DB (thanks Malcrom for getting these with his alliance character)
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-10011,-10012,-10013);
INSERT INTO `creature_ai_texts` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES 
(-10011, 'There is no escape for you. The Crusade shall destroy all who carry the scourge''s taint.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1535),
(-10012, 'You carry the taint of the scourge. Prepare to enter the twisting nether.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1535),
(-10013, 'The light condemns all who harbor evil. Now you will die!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,1535);
-- 1 scarlet warrior on patrol of road
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=44909;
UPDATE `creature_addon` SET `path_id`=449090 WHERE `guid`=44909;
DELETE FROM `waypoint_data` WHERE `id`=449090;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES 
(449090,1,2386.18,1364.25,34.4485,0,0,0,100,0),
(449090,2,2385.15,1331.12,34.2939,0,0,0,100,0),
(449090,3,2380.23,1308.36,32.4416,0,0,0,100,0),
(449090,4,2371.99,1280.8,31.2809,20000,0,0,100,0),-- delay here
(449090,5,2380.06,1306.7,32.2316,0,0,0,100,0),
(449090,6,2384.98,1327.77,34.1459,0,0,0,100,0),
(449090,7,2384.98,1380.11,34.4477,0,0,0,100,0),
(449090,8,2383.68,1429.84,34.4477,0,0,0,100,0),
(449090,9,2382.21,1471.66,34.4477,0,0,0,100,0),
(449090,10,2379.47,1484.69,34.415,0,0,0,100,0),
(449090,11,2376.4,1492.37,34.6188,30000,0,0,100,0),-- delay here
(449090,12,2375.85,1492.21,34.6188,0,0,0,100,0),
(449090,13,2380.74,1481.99,34.4322,0,0,0,100,0),
(449090,14,2383.56,1424.33,34.4476,0,0,0,100,0);
-- Muad 1910 (rare) murloc 1-2 hr respawn
-- spawned at wrong location and needs a long waypoint path
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`spawntimesecs`=3600,`position_x`=2560.56,`position_y`=1384.3,`position_z`=4.44448,`orientation`=1.98845 WHERE `guid`=43909;
UPDATE `creature_addon` SET `path_id`=439090 WHERE `guid`=43909;
DELETE FROM `waypoint_data` WHERE `id`=439090;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES 
(439090,1,2560.87,1383.37,4.50395,0,0,0,100,0),
(439090,2,2570.03,1402.94,1.54059,0,0,0,100,0),
(439090,3,2579.45,1429.17,-4.3321,0,0,0,100,0),
(439090,4,2593.99,1450.15,-7.89234,0,0,0,100,0),
(439090,5,2601.62,1446.89,-7.27309,0,0,0,100,0),
(439090,6,2613.47,1438.87,-6.89807,0,0,0,100,0),
(439090,7,2624.67,1438.41,-9.39612,0,0,0,100,0),
(439090,8,2625.67,1463.9,-10.579,0,0,0,100,0),
(439090,9,2618.77,1481.38,-13.1043,0,0,0,100,0),
(439090,10,2602.46,1474.33,-11.9274,0,0,0,100,0),
(439090,11,2602.56,1463.68,-10.5436,60000,0,0,100,0),-- delay here
(439090,12,2590.15,1474.77,-10.7952,0,0,0,100,0),
(439090,13,2564.63,1506.97,-8.94545,0,0,0,100,0),
(439090,14,2541.87,1516.33,-4.3325,0,0,0,100,0),
(439090,15,2524.31,1512.05,-0.096567,0,0,0,100,0),
(439090,16,2503.73,1481.51,0.811042,0,0,0,100,0),
(439090,17,2502.97,1468.14,2.37526,0,0,0,100,0),
(439090,18,2492.1,1466.8,4.67212,0,0,0,100,0),
(439090,19,2488.31,1453.82,6.30721,0,0,0,100,0),
(439090,20,2494.6,1429.94,6.60753,0,0,0,100,0),
(439090,21,2497.23,1393.23,5.80512,0,0,0,100,0),
(439090,22,2526.28,1419.0,1.64461,0,0,0,100,0),
(439090,23,2534.23,1414.35,3.52403,0,0,0,100,0),
(439090,24,2538.32,1407.85,5.59288,30000,0,0,100,0),-- delay here
(439090,25,2543.13,1404.27,5.74442,0,0,0,100,0),
(439090,26,2539.93,1402.86,5.42545,0,0,0,100,0),
(439090,27,2540.81,1406.7,5.88053,0,0,0,100,0),
(439090,28,2546.03,1402.95,5.06959,0,0,0,100,0),
(439090,29,2547.8,1396.79,4.25417,0,0,0,100,0),
(439090,30,2555.93,1388.16,4.95441,0,0,0,100,0),
(439090,31,2564.59,1387.98,3.86626,0,0,0,100,0),
(439090,32,2552.19,1391.92,4.88426,0,0,0,100,0),
(439090,33,2549.76,1385.2,5.93925,0,0,0,100,0),
(439090,34,2559.06,1382.17,4.9502,0,0,0,100,0);

-- Tirisfal Glades
-- 1657 Devilin Agamand
-- set up EAI for creature combat
UPDATE `creature_template` SET `Spell1`=0,`AIName`= 'EventAI' WHERE `entry`=1657;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=1657;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
(165701,1657,0,0,100,0,5000,6000,45000,50000,11,3148,1,0,0,0,0,0,0,0,0,0, 'Devilin Agamand  - cast Head Crack');
-- 1522 Darkeye Bonecaster
-- set up EAI for combat
UPDATE `creature_template` SET `Spell1`=0,`AIName`= 'EventAI' WHERE `entry`=1522;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=1522;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
(152201,1522,0,0,100,0,1000,2000,20000,35000,11,13322,1,0,0,0,0,0,0,0,0,0, 'Darkeye Bonecaster - cast Frostbolt');
-- 1656 Thurman Agamand
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=44988;
UPDATE `creature_addon` SET `path_id`=449880 WHERE `guid`=44988;
DELETE FROM `waypoint_data` WHERE `id`=449880;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES 
(449880,1,2824.77,1045.1,110.94,0,0,0,100,0),
(449880,2,2786.83,1060.2,110.682,0,0,0,100,0),
(449880,3,2772.39,1058.91,110.128,5000,0,0,100,0), -- delay here
(449880,4,2771.32,1061.32,110.338,25000,0,0,100,0), -- delay here
(449880,5,2785.66,1058.43,110.559,0,0,0,100,0),
(449880,6,2818.0,1049.68,110.808,0,0,0,100,0),
(449880,7,2849.79,1052.53,112.733,0,0,0,100,0),
(449880,8,2867.34,1060.41,112.6,0,0,0,100,0),
(449880,9,2874.29,1074.27,110.586,0,0,0,100,0),
(449880,10,2882.95,1086.89,109.436,0,0,0,100,0),
(449880,11,2884.18,1093.19,109.722,0,0,0,100,0),
(449880,12,2878.47,1102.94,113.046,0,0,0,100,0),
(449880,13,2871.94,1104.64,114.514,0,0,0,100,0),
(449880,14,2865.25,1102.38,115.935,0,0,0,100,0),
(449880,15,2857.22,1096.48,117.33,5000,0,0,100,0), -- delay here
(449880,16,2857.54,1097.31,117.266,5000,0,0,100,0), -- delay here
(449880,17,2857.98,1097.93,117.221,5000,0,0,100,0), -- delay here
(449880,18,2858.67,1097.25,117.19,0,0,0,100,0),
(449880,19,2864.52,1102.56,116.057,0,0,0,100,0),
(449880,20,2871.18,1105.3,114.799,0,0,0,100,0),
(449880,21,2878.84,1100.98,112.372,0,0,0,100,0),
(449880,22,2883.35,1093.99,109.841,0,0,0,100,0),
(449880,23,2882.14,1086.16,109.627,0,0,0,100,0),
(449880,24,2868.81,1061.26,112.253,0,0,0,100,0),
(449880,25,2847.49,1056.7,111.74,0,0,0,100,0);
-- 1654 gregor agamand
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=44626;
UPDATE `creature_addon` SET `path_id`=446260 WHERE `guid`=44626;
DELETE FROM `waypoint_data` WHERE `id`=446260;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES  
(446260,1,2954.85,921.173,114.326,0,0,0,100,0),
(446260,2,2970.57,931.799,113.744,0,0,0,100,0),
(446260,3,2967.27,945.549,116.919,0,0,0,100,0),
(446260,4,2961.93,955.907,118.989,0,0,0,100,0),
(446260,5,2957.57,959.138,118.97,0,0,0,100,0),
(446260,6,2951.65,963.651,122.059,5000,0,0,100,0), -- delay here
(446260,7,2952.17,966.375,122.133,5000,0,0,100,0), -- delay here
(446260,8,2949.23,969.831,122.046,5000,0,0,100,0), -- delay here
(446260,9,2949.51,965.823,122.495,5000,0,0,100,0), -- delay here
(446260,10,2954.43,963.172,120.992,0,0,0,100,0),
(446260,11,2959.65,960.494,118.466,0,0,0,100,0),
(446260,12,2964.26,965.048,118.046,0,0,0,100,0),
(446260,13,2963.61,980.998,116.627,0,0,0,100,0),
(446260,14,2947.14,999.115,109.989,0,0,0,100,0),
(446260,15,2927.24,1006.63,105.399,0,0,0,100,0),
(446260,16,2902.83,1005.13,108.718,10000,0,0,100,0), -- delay here
(446260,17,2899.66,982.425,113.067,0,0,0,100,0),
(446260,18,2899.8,957.48,115.114,0,0,0,100,0),
(446260,19,2906.91,929.237,114.899,0,0,0,100,0),
(446260,20,2927.42,920.908,115.747,0,0,0,100,0),
(446260,21,2932.96,912.372,116.071,0,0,0,100,0),
(446260,22,2930.83,903.215,116.737,0,0,0,100,0),
(446260,23,2930.25,902.447,116.806,0,0,0,100,0),
(446260,24,2932.6,911.499,116.04,0,0,0,100,0),
(446260,25,2949.14,918.783,114.808,0,0,0,100,0);
-- 1522 Darkeye Bonecaster that pats the hill at beach
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=41937;
UPDATE `creature_addon` SET `path_id`=419370 WHERE `guid`=41937;
DELETE FROM `waypoint_data` WHERE `id`=419370;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES 
(419370,1,2806.94,1097.99,86.1857,0,0,0,100,0),
(419370,2,2811.84,1088.85,90.6936,0,0,0,100,0),
(419370,3,2818.29,1076.31,97.9603,0,0,0,100,0),
(419370,4,2825.9,1061.51,108.758,0,0,0,100,0),
(419370,5,2820.73,1071.55,100.922,0,0,0,100,0),
(419370,6,2812.32,1087.53,91.573,0,0,0,100,0);



-- -----------------
-- -- Forum Fixes --
-- -----------------

-- Core DB Fixes
-- Rev 7273
-- Add npcflag for gossip
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry`=35646;
-- Insert spell_target_position for spells 67835, 67836, 67837, 67838
DELETE FROM `spell_target_position` WHERE `id` IN (67835,67836,67837,67838);
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES 
(67838,571,1226.520996,-4913.048828,299.030640,6.190202), -- Howling Fjord
(67835,571,6131.940918,4782.939941,97.767342,2.930881), -- Sholazar Basin
(67836,571,8098.434082,1265.948364,714.487549,2.462196), -- Icecrown
(67837,571,8983.536133,-1267.378906,1059.006104,3.365503); -- Storm Peaks
-- Rev 7285
-- Set vehicleid, it is not sniffed.
UPDATE `creature_template` SET `VehicleId`=486 WHERE `entry` IN (35637,35633,35768,34658,35636,35638,35635,35640,35641,35634,33298,33416,33297,33414,33301,33408,33300,33409,33418);

-- Accepted Fixes
-- Brian
-- Add external quest complete flag to quest 8490 (Powering our Defenses), this quest is completed externally by a script
UPDATE `quest_template` SET `specialflags`=`specialflags`|2 WHERE `entry`=8490;
-- Add missing GO template for Stormwatcher's Head (191179) (3.3.0a WDB data -- shouldn't matter for this)
DELETE FROM `gameobject_template` WHERE `entry`=191179;
INSERT INTO `gameobject_template` (`entry`,`type`,`displayId`,`name`,`IconName`,`castBarCaption`,`data0`,`data1`,`data2`,`data3`,`data4`,`data5`,`data6`,`data7`,`data8`,`data9`,`data10`,`data11`,`data12`,`data13`,`data14`,`data15`,`data16`,`data17`,`data18`,`data19`,`data20`,`data21`,`data22`,`data23`,`size`,`questItem1`,`questItem2`,`questItem3`,`questItem4`,`questItem5`,`questItem6`) VALUES
(191179,3,7795, 'Stormwatcher''s Head' , '' , '' ,1691,25025,0,1,0,0,0,0,12758,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1.75,39667,0,0,0,0,0);
-- Add missing loot for Stormwatcher's Head (still need spawns)
-- loot template entry is field `data1` from GO template for type 3 GOs
DELETE FROM `gameobject_loot_template` WHERE `entry`=25025;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(25025,39667,-100,1,0,1,1,0,0,0);
-- Adding Shiny Treasures (item 38575) to Glowing Crystal in Sholazar Basin
DELETE FROM `gameobject_loot_template` WHERE `entry`=18375 AND `item`=38575;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(18375,38575,-100,1,0,1,1,0,0,0); -- Glowing Crystal
-- Drakari Collosus was using a ref loot table for Drakari Elementals
-- Should only drop item 39220 (Geodesic Fragments)
DELETE FROM `creature_loot_template` WHERE `entry`=29307;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`) VALUES
(29307,39220,100);

-- Creature for Onyxian Drake (by Wladass)
DELETE FROM `creature_template` WHERE `entry`=36837;
INSERT INTO `creature_template` (`entry`,`name`,`subname`,`IconName`,`type_flags`,`type`,`family`,`rank`,`KillCredit1`,`KillCredit2`,`modelid1`,`modelid2`,`modelid3`,`modelid4`,`health_mod`,`mana_mod`,`RacialLeader`,`questItem1`,`questItem2`,`questItem3`,`questItem4`,`questItem5`,`questItem6`,`movementId`) VALUES
(36837,'Onyxian Drake','','',0,1,0,0,0,0,30346,0,0,0,1,1,0,0,0,0,0,0,0,0);
-- Stat update for entry 36837 - Onyxian Drake
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`exp`=2,`unit_class`=1 WHERE `entry`=36837;
-- teacher temp faction and model info
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35 WHERE `entry`=36837;
DELETE FROM `creature_model_info` WHERE `modelid`=30346;
INSERT INTO `creature_model_info` (`modelid`) VALUES (30346);


-- Malcrom
-- Remove duplicate equipment entry and apply originals to `creature_template` rather than `creature`.
UPDATE `creature` SET `equipment_id`=0 WHERE `id` IN (61,472,763,771,1106,2541,8282,11383,22863,30721);
UPDATE `creature_template` SET `equipment_id`=557 WHERE `entry`=17252;
UPDATE `creature_template` SET `equipment_id`=712 WHERE `entry`=22863;
UPDATE `creature_template` SET `equipment_id`=1845 WHERE `entry`=33125;
UPDATE `creature_template` SET `equipment_id`=1859 WHERE `entry`=34119;
DELETE FROM `creature_equip_template` WHERE `entry` IN (1807,1853,1864,10004);
-- Set speed to Null for a number of targets that should not be able to move
UPDATE `creature_template` SET `speed`=NULL WHERE `entry` IN 
(2674,5202,5674,16897,20251,33229,33243,33272,31280);

-- Unholy
-- scarlet miners on retail aggressive but do not attack until you attack them, change flag to make not aggro
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry` IN (28819,28822);
-- issue: Skybreaker Squad Leader too many spawns, Skybreaker Infantry too many spawns
-- http://trinitydatabase.org/index.php?/topic/14073-npc/
-- these npcs are for alliance escort quest and must have been sniffed at different locales while active on escort
-- need to eliminate all other over spawns (put one where he belongs)
-- skybreaker squad leader
DELETE FROM `creature` WHERE `id`=31737;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES 
(125004,31737,571,1,1,27724,0,7268.57,1507.12,321.349,1.50098,300,0.0,0,25200,0,0,0);
-- need to eliminate all other over spawns (put 5 where they belong)
-- skybreaker infantry
DELETE FROM `creature` WHERE `id`=31701;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES 
(124411,31701,571,1,1,27673,0,7264.96,1505.11,321.717,2.29558,300,0.0,0,18900,0,0,0),
(124409,31701,571,1,1,27676,0,7263.22,1508.15,321.703,5.77489,300,0.0,0,18900,0,0,0),
(124410,31701,571,1,1,27675,0,7274.38,1504.02,319.962,2.72362,300,0.0,0,18900,0,0,0),
(124408,31701,571,1,1,27674,0,7271.82,1501.06,321.311,1.94607,300,0.0,0,18900,0,0,0),
(124407,31701,571,1,1,27674,0,7270.91,1504.28,321.127,5.7631,300,0.0,0,18900,0,0,0);
-- clean up from deletion teacher: check
DELETE FROM `creature_addon` WHERE `guid` IN (14772,14773,14774,14775,14776,16397,16398,16399,16400,16402,124412,124413,124414,124415,124417,124418,200146);

-- Denyde
-- add loot for i43624 (Titanium Lockbox)
SET @Lockbox :=43624;
SET @RefRare :=1+(SELECT `entry` FROM `reference_loot_template` WHERE `entry` BETWEEN 10000 AND 10999 ORDER BY `entry` DESC LIMIT 1);
SET @RefGem :=@RefRare+1;
SET @RefGreen :=@RefGem+1;
DELETE FROM `item_loot_template` WHERE `entry`=@Lockbox;
DELETE FROM `reference_loot_template` WHERE `entry`=@RefRare;
DELETE FROM `reference_loot_template` WHERE `entry`=@RefGem;
DELETE FROM `reference_loot_template` WHERE `entry`=@RefGreen;
INSERT INTO `item_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@Lockbox,1,100,1,0,-@RefRare,1,0,0,0), -- 1 selection from rare drops (100%)
(@Lockbox,2,80,1,0,-@RefGem,1,0,0,0), -- 1 selection from gem drops (80%)
(@Lockbox,3,50,1,0,-@RefGreen,1,0,0,0); -- 1 selection from green drops (50%)
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
-- rare drops
(@RefRare,45912,0,1,1,1,1,0,0,0), -- Book of Glyph Mastery
(@RefRare,37790,0,1,1,1,1,0,0,0), -- Belt of Crystalline Tears
(@RefRare,37780,0,1,1,1,1,0,0,0), -- Condor-Bone Chestguard
(@RefRare,37792,0,1,1,1,1,0,0,0), -- Agin's Crushing Carapace
(@RefRare,37770,0,1,1,1,1,0,0,0), -- Bulge-Concealing Breastplate
(@RefRare,37797,0,1,1,1,1,0,0,0), -- Cloak of the Agile Mind
(@RefRare,37760,0,1,1,1,1,0,0,0), -- Cracklefire Wristguards
(@RefRare,37823,0,1,1,1,1,0,0,0), -- Draconic Choker of Ferocity
(@RefRare,37759,0,1,1,1,1,0,0,0), -- Rhie-ay's Clutching Gauntlets
(@RefRare,37809,0,1,1,1,1,0,0,0), -- Roc-Feather Longbow
(@RefRare,37793,0,1,1,1,1,0,0,0), -- Skullcage of Eternal Terror
(@RefRare,37806,0,1,1,1,1,0,0,0), -- Zabra's Misplaced Staff
(@RefRare,37808,0,1,1,1,1,0,0,0), -- Dragonjaw Mauler
(@RefRare,37769,0,1,1,1,1,0,0,0), -- Gnarled Shovelhorn Spaulders
(@RefRare,37768,0,1,1,1,1,0,0,0), -- Leggings of Violent Exsanguination
(@RefRare,37822,0,1,1,1,1,0,0,0), -- Twisted Puzzle-Ring
(@RefRare,41779,0,1,1,1,1,0,0,0), -- Design: Stalwart Monarch Topaz
(@RefRare,41777,0,1,1,1,1,0,0,0), -- Design: Etched Monarch Topaz
(@RefRare,41789,0,1,1,1,1,0,0,0), -- Design: Inscribed Monarch Topaz
(@RefRare,41786,0,1,1,1,1,0,0,0), -- Design: Destructive Skyflare Diamond
(@RefRare,41781,0,1,1,1,1,0,0,0), -- Design: Misty Forest Emerald
(@RefRare,41783,0,1,1,1,1,0,0,0), -- Design: Purified Twilight Opal
(@RefRare,41782,0,1,1,1,1,0,0,0), -- Design: Shining Forest Emerald
(@RefRare,41785,0,1,1,1,1,0,0,0), -- Design: Tenuous Twilight Opal
(@RefRare,41784,0,1,1,1,1,0,0,0), -- Design: Sovereign Twilight Opal
(@RefRare,41787,0,1,1,1,1,0,0,0), -- Design: Thundering Skyflare Diamond
(@RefRare,41788,0,1,1,1,1,0,0,0), -- Design: Beaming Earthsiege Diamond
(@RefRare,41780,0,1,1,1,1,0,0,0), -- Design: Champion's Monarch Topaz
(@RefRare,41778,0,1,1,1,1,0,0,0), -- Design: Resolute Monarch Topaz
-- gem drops (greens more likely)
(@RefGem,36929,12,1,1,1,1,0,0,0), -- Huge Citrine (12%)
(@RefGem,36920,12,1,1,1,1,0,0,0), -- Sun Crystal (12%)
(@RefGem,36932,12,1,1,1,1,0,0,0), -- Dark Jade (12%)
(@RefGem,36926,12,1,1,1,1,0,0,0), -- Shadow Crystal (12%)
(@RefGem,36917,12,1,1,1,1,0,0,0), -- Bloodstone (12%)
(@RefGem,36923,12,1,1,1,1,0,0,0), -- Chalcedony (12%)
(@RefGem,36921,5,1,1,1,1,0,0,0), -- Autumn's Glow (5%)
(@RefGem,36930,5,1,1,1,1,0,0,0), -- Monarch Topaz (5%)
(@RefGem,36933,5,1,1,1,1,0,0,0), -- Forest Emerald (5%)
(@RefGem,36924,5,1,1,1,1,0,0,0), -- Sky Sapphire (5%)
(@RefGem,36927,4,1,1,1,1,0,0,0), -- Twilight Opal (4%)
(@RefGem,36918,4,1,1,1,1,0,0,0), -- Scarlet Ruby (4%)
-- green drops
(@RefGreen,36035,0,1,1,1,1,0,0,0), -- Condor Belt
(@RefGreen,36042,0,1,1,1,1,0,0,0), -- Condor Bindings
(@RefGreen,36039,0,1,1,1,1,0,0,0), -- Condor Headpiece
(@RefGreen,36037,0,1,1,1,1,0,0,0), -- Condor Robe
(@RefGreen,36036,0,1,1,1,1,0,0,0), -- Condor Sandals
(@RefGreen,36038,0,1,1,1,1,0,0,0), -- Condor Gloves
(@RefGreen,36040,0,1,1,1,1,0,0,0), -- Condor Pants
(@RefGreen,36041,0,1,1,1,1,0,0,0), -- Condor Shoulderpads
(@RefGreen,36261,0,1,1,1,1,0,0,0), -- Cormorant Chain Vest
(@RefGreen,36263,0,1,1,1,1,0,0,0), -- Cormorant Helm
(@RefGreen,36265,0,1,1,1,1,0,0,0), -- Cormorant Mantle
(@RefGreen,36266,0,1,1,1,1,0,0,0), -- Cormorant Bracelets
(@RefGreen,36260,0,1,1,1,1,0,0,0), -- Cormorant Footwraps
(@RefGreen,36262,0,1,1,1,1,0,0,0), -- Cormorant Gloves
(@RefGreen,36264,0,1,1,1,1,0,0,0), -- Cormorant Leggings
(@RefGreen,36259,0,1,1,1,1,0,0,0), -- Cormorant Waistband
(@RefGreen,36427,0,1,1,1,1,0,0,0), -- Engraved Ring
(@RefGreen,36373,0,1,1,1,1,0,0,0), -- Kraken Breastplate
(@RefGreen,36374,0,1,1,1,1,0,0,0), -- Kraken Gauntlets
(@RefGreen,36372,0,1,1,1,1,0,0,0), -- Kraken Greaves
(@RefGreen,36376,0,1,1,1,1,0,0,0), -- Kraken Legplates
(@RefGreen,36378,0,1,1,1,1,0,0,0), -- Kraken Vambraces
(@RefGreen,36377,0,1,1,1,1,0,0,0), -- Kraken Epaulets
(@RefGreen,36371,0,1,1,1,1,0,0,0), -- Kraken Girdle
(@RefGreen,36375,0,1,1,1,1,0,0,0), -- Kraken Helm
(@RefGreen,36441,0,1,1,1,1,0,0,0), -- Pearl Woven Choker
(@RefGreen,36595,0,1,1,1,1,0,0,0), -- Planate Broadaxe
(@RefGreen,36455,0,1,1,1,1,0,0,0), -- Plated Bulwark
(@RefGreen,36147,0,1,1,1,1,0,0,0), -- Pygmy Belt
(@RefGreen,36148,0,1,1,1,1,0,0,0), -- Pygmy Boots
(@RefGreen,36150,0,1,1,1,1,0,0,0), -- Pygmy Gloves
(@RefGreen,36153,0,1,1,1,1,0,0,0), -- Pygmy Shoulders
(@RefGreen,36149,0,1,1,1,1,0,0,0), -- Pygmy Tunic
(@RefGreen,36154,0,1,1,1,1,0,0,0), -- Pygmy Bindings
(@RefGreen,36151,0,1,1,1,1,0,0,0), -- Pygmy Helmet
(@RefGreen,36152,0,1,1,1,1,0,0,0), -- Pygmy Pants
(@RefGreen,36693,0,1,1,1,1,0,0,0), -- Serene Hammer
(@RefGreen,36679,0,1,1,1,1,0,0,0), -- Singing Dagger
(@RefGreen,36567,0,1,1,1,1,0,0,0), -- Six-Fingered Claws
(@RefGreen,36664,0,1,1,1,1,0,0,0), -- Chilled Wand
(@RefGreen,36580,0,1,1,1,1,0,0,0), -- Dire Axe
(@RefGreen,36412,0,1,1,1,1,0,0,0), -- Fleece Cloak
(@RefGreen,36720,0,1,1,1,1,0,0,0), -- Flying Knives
(@RefGreen,36140,0,1,1,1,1,0,0,0), -- Ghrino Boots
(@RefGreen,36139,0,1,1,1,1,0,0,0), -- Ghrino Belt
(@RefGreen,36146,0,1,1,1,1,0,0,0), -- Ghrino Bracers
(@RefGreen,36144,0,1,1,1,1,0,0,0), -- Ghrino Britches
(@RefGreen,36143,0,1,1,1,1,0,0,0), -- Ghrino Cover
(@RefGreen,36142,0,1,1,1,1,0,0,0), -- Ghrino Gloves
(@RefGreen,36145,0,1,1,1,1,0,0,0), -- Ghrino Pauldrons
(@RefGreen,36141,0,1,1,1,1,0,0,0), -- Ghrino Vest
(@RefGreen,36370,0,1,1,1,1,0,0,0), -- Magnataur Bracers
(@RefGreen,36366,0,1,1,1,1,0,0,0), -- Magnataur Gauntlets
(@RefGreen,36363,0,1,1,1,1,0,0,0), -- Magnataur Girdle
(@RefGreen,36368,0,1,1,1,1,0,0,0), -- Magnataur Legplates
(@RefGreen,36369,0,1,1,1,1,0,0,0), -- Magnataur Pauldrons
(@RefGreen,36365,0,1,1,1,1,0,0,0), -- Magnataur Breastplate
(@RefGreen,36367,0,1,1,1,1,0,0,0), -- Magnataur Helm
(@RefGreen,36364,0,1,1,1,1,0,0,0), -- Magnataur Sabatons
(@RefGreen,36027,0,1,1,1,1,0,0,0), -- Oracle Belt
(@RefGreen,36034,0,1,1,1,1,0,0,0), -- Oracle Bracelets
(@RefGreen,36031,0,1,1,1,1,0,0,0), -- Oracle Circlet
(@RefGreen,36030,0,1,1,1,1,0,0,0), -- Oracle Gloves
(@RefGreen,36032,0,1,1,1,1,0,0,0), -- Oracle Leggings
(@RefGreen,36033,0,1,1,1,1,0,0,0), -- Oracle Mantle
(@RefGreen,36029,0,1,1,1,1,0,0,0), -- Oracle Robe
(@RefGreen,36028,0,1,1,1,1,0,0,0), -- Oracle Slippers
(@RefGreen,36524,0,1,1,1,1,0,0,0), -- Primitive Scimitar
(@RefGreen,36678,0,1,1,1,1,0,0,0), -- Runed Talon
(@RefGreen,36426,0,1,1,1,1,0,0,0), -- Stirrup Ring
(@RefGreen,36253,0,1,1,1,1,0,0,0), -- Wolvar Armor
(@RefGreen,36251,0,1,1,1,1,0,0,0), -- Wolvar Belt
(@RefGreen,36258,0,1,1,1,1,0,0,0), -- Wolvar Bindings
(@RefGreen,36254,0,1,1,1,1,0,0,0), -- Wolvar Fists
(@RefGreen,36252,0,1,1,1,1,0,0,0), -- Wolvar Greaves
(@RefGreen,36255,0,1,1,1,1,0,0,0), -- Wolvar Helmet
(@RefGreen,36256,0,1,1,1,1,0,0,0), -- Wolvar Legguards
(@RefGreen,36257,0,1,1,1,1,0,0,0), -- Wolvar Shoulderguards
(@RefGreen,36019,0,1,1,1,1,0,0,0), -- Aerie Belt
(@RefGreen,36020,0,1,1,1,1,0,0,0), -- Aerie Boots
(@RefGreen,36026,0,1,1,1,1,0,0,0), -- Aerie Bracers
(@RefGreen,36022,0,1,1,1,1,0,0,0), -- Aerie Gloves
(@RefGreen,36023,0,1,1,1,1,0,0,0), -- Aerie Headpiece
(@RefGreen,36024,0,1,1,1,1,0,0,0), -- Aerie Pants
(@RefGreen,36021,0,1,1,1,1,0,0,0), -- Aerie Robe
(@RefGreen,36025,0,1,1,1,1,0,0,0), -- Aerie Shoulderpads
(@RefGreen,36663,0,1,1,1,1,0,0,0), -- Ancient Wand
(@RefGreen,36411,0,1,1,1,1,0,0,0), -- Brawler's Cape
(@RefGreen,36691,0,1,1,1,1,0,0,0), -- Dignified Hammer
(@RefGreen,36453,0,1,1,1,1,0,0,0), -- Embossed Brazen Shield
(@RefGreen,36357,0,1,1,1,1,0,0,0), -- Frostpaw Armor
(@RefGreen,36355,0,1,1,1,1,0,0,0), -- Frostpaw Belt
(@RefGreen,36361,0,1,1,1,1,0,0,0), -- Frostpaw Epaulets
(@RefGreen,36358,0,1,1,1,1,0,0,0), -- Frostpaw Gauntlets
(@RefGreen,36356,0,1,1,1,1,0,0,0), -- Frostpaw Greaves
(@RefGreen,36359,0,1,1,1,1,0,0,0), -- Frostpaw Helmet
(@RefGreen,36360,0,1,1,1,1,0,0,0), -- Frostpaw Legguards
(@RefGreen,36362,0,1,1,1,1,0,0,0), -- Frostpaw Vambraces
(@RefGreen,36537,0,1,1,1,1,0,0,0), -- Fur-Grip Broadsword
(@RefGreen,36425,0,1,1,1,1,0,0,0), -- Gold Twisted Ring
(@RefGreen,36677,0,1,1,1,1,0,0,0), -- Levitating Dagger
(@RefGreen,36250,0,1,1,1,1,0,0,0), -- Mammoth Bindings
(@RefGreen,36244,0,1,1,1,1,0,0,0), -- Mammoth Boots
(@RefGreen,36245,0,1,1,1,1,0,0,0), -- Mammoth Chestpiece
(@RefGreen,36246,0,1,1,1,1,0,0,0), -- Mammoth Fists
(@RefGreen,36243,0,1,1,1,1,0,0,0), -- Mammoth Girdle
(@RefGreen,36247,0,1,1,1,1,0,0,0), -- Mammoth Helm
(@RefGreen,36248,0,1,1,1,1,0,0,0), -- Mammoth Legwraps
(@RefGreen,36249,0,1,1,1,1,0,0,0), -- Mammoth Spaulders
(@RefGreen,36439,0,1,1,1,1,0,0,0), -- Serpentine Chain
(@RefGreen,36138,0,1,1,1,1,0,0,0), -- Wolverine Armguards
(@RefGreen,36132,0,1,1,1,1,0,0,0), -- Wolverine Boots
(@RefGreen,36135,0,1,1,1,1,0,0,0), -- Wolverine Cap
(@RefGreen,36131,0,1,1,1,1,0,0,0), -- Wolverine Girdle
(@RefGreen,36134,0,1,1,1,1,0,0,0), -- Wolverine Gloves
(@RefGreen,36133,0,1,1,1,1,0,0,0), -- Wolverine Jerkin
(@RefGreen,36136,0,1,1,1,1,0,0,0), -- Wolverine Leggings
(@RefGreen,36137,0,1,1,1,1,0,0,0); -- Wolverine Shoulderguards

-- add i35219 (Pattern: Sun-Drenched Scale Chestguard) to sunwell non-BOP reference loot
DELETE FROM `reference_loot_template` WHERE `item`=35219;
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(34092,35219,0,1,1,1,1,0,0,0);

-- Loot fix for q13836 (Monsterbelly Appetite) and g192053 (Deep Sea Monsertbelly School)
-- source: wowhead, elsanglin
SET @RefFrozenSeaFishing :=11023; -- assigned in previous updatepack
SET @Belly :=45328;
SET @BellySchool :=(SELECT `data1` FROM `gameobject_template` WHERE `entry`=192053);
-- add i45328 (Bloated Monsterbelly) to fishing loot in the Frozen Sea
DELETE FROM `reference_loot_template` WHERE `entry`=@RefFrozenSeaFishing AND `item`=@Belly;
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`minCountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@RefFrozenSeaFishing,@Belly,20,1,1,1,1,9,13836,0);
-- add loot for g192053 (Deep Sea Monsertbelly School)
DELETE FROM `gameobject_loot_template` WHERE `entry`=@BellySchool;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`minCountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(@BellySchool,41800,90,1,1,1,1,0,0,0), -- Deep Sea Monsterbelly (90%)
(@BellySchool,40199,65,1,2,1,1,0,0,0), -- Pygmy Suckerfish (65%)
(@BellySchool,37705,5,1,3,1,1,0,0,0), -- Crystallized Water (5%)
(@BellySchool,44475,5,1,4,1,1,0,0,0), -- Reinforced Crate (5%)
(@BellySchool,46109,1,1,5,1,1,0,0,0), -- Sea Turtle (1%)
-- quest drop
(@BellySchool,@Belly,60,1,6,1,1,9,13836,0); -- Bloated Monsterbelly (60%)
-- add loot for i45328 (Bloated Monsterbelly)
DELETE FROM `item_loot_template` WHERE `entry`=@Belly;  
INSERT INTO `item_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`mincountOrRef`,`maxcount`) VALUES  
(@Belly,3181,100,1,2), -- Partially Digested Meat  
(@Belly,45323,-100,1,1); -- Severed Arm

-- add loot to i45986 (Tiny Titanium Lockbox)
SET @Lockbox :=45986;
SET @RareGems :=1+(SELECT `entry` FROM `reference_loot_template` WHERE `entry` BETWEEN 10000 AND 10999 ORDER BY `entry` DESC LIMIT 1);
SET @EpicGems :=@RareGems+1;
SET @Jewelry :=@EpicGems+1;
DELETE FROM `item_loot_template` WHERE `entry` = @Lockbox;
INSERT INTO `item_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@Lockbox,1,100,0,-@RareGems,2), -- 2 selections from rare gems
(@Lockbox,2,100,0,-@EpicGems,1), -- 1 selection from epic gems
(@Lockbox,3,100,0,-@Jewelry,1), -- 1 selection from jewelry
(@Lockbox,9355,94,0,1,2), -- Hoop Earring
(@Lockbox,11940,92,0,1,1); -- Sparkly Necklace
DELETE FROM `reference_loot_template` WHERE `entry` IN (@RareGems,@EpicGems);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- rare gems
(@RareGems,36921,0,1,1,2), -- Autumn's Glow
(@RareGems,36930,0,1,1,2), -- Monarch Topaz
(@RareGems,36918,0,1,1,2), -- Scarlet Ruby
(@RareGems,36927,0,1,1,1), -- Twilight Opal
(@RareGems,36924,0,1,1,1), -- Sky Sapphire
(@RareGems,36933,0,1,1,1), -- Forest Emerald
-- epic gems
(@EpicGems,45883,26,1,1,1), -- Runed Stormjewel
(@EpicGems,45879,19,1,1,1), -- Delicate Stormjewel
(@EpicGems,45880,19,1,1,1), -- Solid Stormjewel
(@EpicGems,45862,13,1,1,1), -- Bold Stormjewel
(@EpicGems,45987,12,1,1,1), -- Rigid Stormjewel
(@EpicGems,45882,6,1,1,1), -- Brilliant Stormjewel
(@EpicGems,45881,5,1,1,1), -- Sparkling Stormjewel
-- jewelry
(@Jewelry,45994,26,1,1,1), -- Lost Ring
(@Jewelry,45995,19,1,1,1), -- Forgotten Necklace
(@Jewelry,36430,13,1,1,1), -- Puzzle Ring
(@Jewelry,36428,11,1,1,1), -- Bouquet Ring
(@Jewelry,36429,11,1,1,1), -- Spur Ring
(@Jewelry,36442,7,1,1,1), -- Silken Cord Amulet
(@Jewelry,36444,5,1,1,1), -- Ice Encrusted Amulet
(@Jewelry,36443,5,1,1,1), -- Platinum Medallion
(@Jewelry,45859,3,1,1,1); -- The 5 Ring

-- Gyullo
-- The following NPCs must be civilian and ignore aggro: Mijiri, Jonru, Arcanist Iramhir
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry` IN (35000,34999,35596);

-- SoulForge
-- Fix to totem visuals for horde/alliance side. The totems for alliance were just showing up as horde models. 
-- Earth Totems.
UPDATE `creature_template` SET `modelid1`=19073,`modelid3`=4588 WHERE `entry` IN (3579,3911,3912,3913,7398,15478,31122,31120,31121); -- Stoneclaw Totems
UPDATE `creature_template` SET `modelid1`=19073,`modelid3`=4588 WHERE `entry` IN (5874,5921,5922,7403,15464,15479,30647,31129); -- Strength of Earth Totems
UPDATE `creature_template` SET `modelid1`=19073,`modelid3`=4588 WHERE `entry`=2630; -- Earthbind Totem
UPDATE `creature_template` SET `modelid1`=19073,`modelid3`=4588 WHERE `entry` IN (5873,5919,5920,7366,7367,7368,15470,15474,31175,31176); -- Stoneskin Totems
UPDATE `creature_template` SET `modelid1`=19073,`modelid3`=4588 WHERE `entry`=5913; -- Tremor Totem
UPDATE `creature_template` SET `modelid1`=19073,`modelid3`=4588 WHERE `entry`=15430; -- Earth Elemental Totem
-- Fire Totems.
UPDATE `creature_template` SET `modelid1`=19074,`modelid3`=4589 WHERE `entry` IN (2523,3902,3903,3904,7400,7402,15480,31162,31164,31165); -- Searing Totems
UPDATE `creature_template` SET `modelid1`=19074,`modelid3`=4589 WHERE `entry` IN (5879,24320,6110,6111,7844,32775,32776,7845,15482,15483); -- Fire Nova Totems
UPDATE `creature_template` SET `modelid1`=19074,`modelid3`=4589 WHERE `entry` IN (5926,7412,7413,15486,31171,31172); -- Frost Resistance Totems
UPDATE `creature_template` SET `modelid1`=19074,`modelid3`=4589 WHERE `entry` IN (5929,7464,7465,7466,31167,32887,15484,31166); -- Magma Totems
UPDATE `creature_template` SET `modelid1`=19074,`modelid3`=4589 WHERE `entry` IN (5950,6012,7423,10557,15485,31132,31133,31158); -- Flametongue Totems
UPDATE `creature_template` SET `modelid1`=19074,`modelid3`=4589 WHERE `entry`=15439; -- Fire Elemental Totem
UPDATE `creature_template` SET `modelid1`=19074,`modelid3`=4589 WHERE `entry` IN (17539,30653,30652,30654); -- Totem of Wrath Totems
-- Water Totems.
UPDATE `creature_template` SET `modelid1`=19075,`modelid3`=4587 WHERE `entry` IN (3527,3906,3907,3908,3909,15488,31181,31182,31185,34686); -- Healing Stream Totems
UPDATE `creature_template` SET `modelid1`=19075,`modelid3`=4587 WHERE `entry` IN (5927,7424,7425,15487,31169,31170); -- Fire Resistance Totems
UPDATE `creature_template` SET `modelid1`=19075,`modelid3`=4587 WHERE `entry` IN (3573,7414,7415,7416,15489,31186,31189,31190); -- Mana Spring Totems
UPDATE `creature_template` SET `modelid1`=19075,`modelid3`=4587 WHERE `entry`=5924; -- Cleansing Totem
UPDATE `creature_template` SET `modelid1`=19075,`modelid3`=4587 WHERE `entry`=10467; -- Mana Tide Totem
-- Air Totems
UPDATE `creature_template` SET `modelid1`=19071,`modelid3`=4590 WHERE `entry`=5925; -- Grounding Totem
UPDATE `creature_template` SET `modelid1`=19071,`modelid3`=4590 WHERE `entry` IN (7467,7468,7469,15490,31173,31174); -- Nature Resistance Totems
UPDATE `creature_template` SET `modelid1`=19071,`modelid3`=4590 WHERE `entry`=6112; -- Windfury Totem
UPDATE `creature_template` SET `modelid1`=19071,`modelid3`=4590 WHERE `entry`=3968; -- Sentry Totem
UPDATE `creature_template` SET `modelid1`=19071,`modelid3`=4590 WHERE `entry`=15447; -- Wrath of Air Totem

-- spawn missing npc "Dart" (by manuel)
DELETE FROM `creature` WHERE `id`=14232;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(200145,14232,1,1,1,0,0,-2714.64,-3489.85,34.85,4.46,300,0,0,50,0,0,0);

-- Correct lunar festival start date (by Socolin) source:http://www.worldofwarcraft.com/info/events/calendar/
UPDATE `game_event` SET `start_time`='2010-02-12 06:00:00' WHERE `entry`=7;

-- Add missing Transmutations for Alchemy Trainers (by Ident, thx Denyde for format)
DELETE FROM `npc_trainer` WHERE `spell` IN (66658,66662,66664,66660,66663);
SET @Brightspark :=33588;
SET @Blackbolt :=28703;
SET @Henslowe :=26975;
SET @Nightwhisper :=26987;
SET @Dewdrop :=26903;
SET @Renel :=26951;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES 
-- Crystal Brightspark <Grand Master Alchemy Trainer>
(@Brightspark,66658,150000,171,450,0), -- Transmute: Ametrine
(@Brightspark,66662,150000,171,450,0), -- Transmute: Dreadstone
(@Brightspark,66664,150000,171,450,0), -- Transmute: Eye of Zul
(@Brightspark,66660,150000,171,450,0), -- Transmute: King's Amber
(@Brightspark,66663,150000,171,450,0), -- Transmute: Majestic Zircon
-- Linzy Blackbolt <Grand Master Alchemy Trainer>
(@Blackbolt,66658,150000,171,450,0), -- Transmute: Ametrine
(@Blackbolt,66662,150000,171,450,0), -- Transmute: Dreadstone
(@Blackbolt,66664,150000,171,450,0), -- Transmute: Eye of Zul
(@Blackbolt,66660,150000,171,450,0), -- Transmute: King's Amber
(@Blackbolt,66663,150000,171,450,0), -- Transmute: Majestic Zircon
-- Arthur Henslowe <Grand Master Alchemy Trainer>
(@Henslowe,66658,150000,171,450,0), -- Transmute: Ametrine
(@Henslowe,66662,150000,171,450,0), -- Transmute: Dreadstone
(@Henslowe,66664,150000,171,450,0), -- Transmute: Eye of Zul
(@Henslowe,66660,150000,171,450,0), -- Transmute: King's Amber
(@Henslowe,66663,150000,171,450,0), -- Transmute: Majestic Zircon
-- Falorn Nightwhisper <Grand Master Alchemy Trainer>
(@Nightwhisper,66658,150000,171,450,0), -- Transmute: Ametrine
(@Nightwhisper,66662,150000,171,450,0), -- Transmute: Dreadstone
(@Nightwhisper,66664,150000,171,450,0), -- Transmute: Eye of Zul
(@Nightwhisper,66660,150000,171,450,0), -- Transmute: King's Amber
(@Nightwhisper,66663,150000,171,450,0), -- Transmute: Majestic Zircon
-- Lanolis Dewdrop <Grand Master Alchemy Trainer>
(@Dewdrop,66658,150000,171,450,0), -- Transmute: Ametrine
(@Dewdrop,66662,150000,171,450,0), -- Transmute: Dreadstone
(@Dewdrop,66664,150000,171,450,0), -- Transmute: Eye of Zul
(@Dewdrop,66660,150000,171,450,0), -- Transmute: King's Amber
(@Dewdrop,66663,150000,171,450,0), -- Transmute: Majestic Zircon
-- Wilhelmina Renel <Grand Master Alchemy Trainer>
(@Renel,66658,150000,171,450,0), -- Transmute: Ametrine
(@Renel,66662,150000,171,450,0), -- Transmute: Dreadstone
(@Renel,66664,150000,171,450,0), -- Transmute: Eye of Zul
(@Renel,66660,150000,171,450,0), -- Transmute: King's Amber
(@Renel,66663,150000,171,450,0); -- Transmute: Majestic Zircon

-- Add Missing Jewelcrafter Spells to trainers (by Ident)
DELETE FROM `npc_trainer` WHERE `spell` IN (64727,64725,64726,64728);
SET @Alestos :=26997;
SET @Carter :=26960;
SET @Gebali :=26982;
SET @Oluros :=33590;
SET @Ounhulo :=26915;
SET @Timothy :=28701;
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
-- Alestos <Grand Master Jewelcrafting Trainer>
(@Alestos,64727,100000,755,420,0), -- Runed Mana Band (s64727)
(@Alestos,64725,100000,755,420,0), -- Emerald Choker (s64725)
(@Alestos,64726,100000,755,420,0), -- Sky Sappire Amulet (s64726)
(@Alestos,64728,100000,755,420,0), -- Scarlet Signet (s64728)
-- Carter Tiffens <Grand Master Jewelcrafting Trainer>
(@Carter,64727,100000,755,420,0), -- Runed Mana Band (s64727)
(@Carter,64725,100000,755,420,0), -- Emerald Choker (s64725)
(@Carter,64726,100000,755,420,0), -- Sky Sappire Amulet (s64726)
(@Carter,64728,100000,755,420,0), -- Scarlet Signet (s64728)
-- Geba'li <Grand Master Jewelcrafting Trainer>
(@Gebali,64727,100000,755,420,0), -- Runed Mana Band (s64727)
(@Gebali,64725,100000,755,420,0), -- Emerald Choker (s64725)
(@Gebali,64726,100000,755,420,0), -- Sky Sappire Amulet (s64726)
(@Gebali,64728,100000,755,420,0), -- Scarlet Signet (s64728)
-- Oluros <Grand Master Jewelcrafting Trainer>
(@Oluros,64727,100000,755,420,0), -- Runed Mana Band (s64727)
(@Oluros,64725,100000,755,420,0), -- Emerald Choker (s64725)
(@Oluros,64726,100000,755,420,0), -- Sky Sappire Amulet (s64726)
(@Oluros,64728,100000,755,420,0), -- Scarlet Signet (s64728)
-- Ounhulo <Grand Master Jewelcrafting Trainer>
(@Ounhulo,64727,100000,755,420,0), -- Runed Mana Band (s64727)
(@Ounhulo,64725,100000,755,420,0), -- Emerald Choker (s64725)
(@Ounhulo,64726,100000,755,420,0), -- Sky Sappire Amulet (s64726)
(@Ounhulo,64728,100000,755,420,0), -- Scarlet Signet (s64728)
-- Timothy Jones <Grand Master Jewelcrafting Trainer>
(@Timothy,64727,100000,755,420,0), -- Runed Mana Band (s64727)
(@Timothy,64725,100000,755,420,0), -- Emerald Choker (s64725)
(@Timothy,64726,100000,755,420,0), -- Sky Sappire Amulet (s64726)
(@Timothy,64728,100000,755,420,0); -- Scarlet Signet (s64728)

-- Change movetype to stay for Naxxramas Combat Dummy (by kiper)
UPDATE `creature` SET `spawndist`=0,`MovementType`=0 where `id`=16211;

-- Set ignore agro to stop Envoy Ripfang attacking alliance players (by kiper)
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`=26441;

-- Add missing object The Staff of Storm's Fury to make quest The Staff of Storm's Fury(11511) works (by kiper)
delete from `gameobject` where `id`=187033; 
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(150123, 187033, 571, 1,1,501.014, -3530.57, 0.370485, 6.21848, 0, 0, 0.0323477, -0.999477, 25, 0, 1);

-- faction for this creature was changed after UP21 and now is friendly when should be hostile. The faction values I used are from UP21 (by kiper)
UPDATE `creature_template` SET `faction_A`=1985,`faction_H`=1985 WHERE `entry`=26280;
UPDATE `creature_template` SET `faction_A`=1985,`faction_H`=1985 WHERE `entry`=26816;

-- Update creature 30281 "Silver Covenant Hippogryp" to ignore agro (by kiper)
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`=30281;

-- Add start relation to quest's for achievement Elders of Northrend (by kiper)
DELETE FROM `creature_questrelation` WHERE `quest` IN (13012,13014,13033,13018,13025,13027,13028,13029,13031,13013,13015,13016,13024,13026,13019,13020,13030,13032);
INSERT INTO `creature_questrelation` (`id`,`quest`) VALUES
(30348,13012),
(30358,13014),
(30364,13033),
(30362,13018),
(30367,13025),
(30369,13027),
(30370,13028),
(30371,13029),
(30373,13031),
(30357,13013),
(30359,13015),
(30360,13016),
(30365,13024),
(30368,13026),
(30363,13019),
(30375,13020),
(30372,13030),
(30374,13032);
-- Add end relation to quest's for achievement Elders of Northrend
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (13012,13014,13033,13018,13025,13027,13028,13029,13031,13013,13015,13016,13024,13026,13019,13020,13030,13032);
INSERT INTO `creature_involvedrelation` (`id`,`quest`) VALUES
(30348,13012),
(30358,13014),
(30364,13033),
(30362,13018),
(30367,13025),
(30369,13027),
(30370,13028),
(30371,13029),
(30373,13031),
(30357,13013),
(30359,13015),
(30360,13016),
(30365,13024),
(30368,13026),
(30363,13019),
(30375,13020),
(30372,13030),
(30374,13032);

-- Update creature 35984 "Sunreaver Dragonhawk" to ignore agro (by kiper)
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`=35984;

-- Set Sinok's Key Fragment loot chance correct based on wowarmory (by kiper)
UPDATE `creature_loot_template` SET`ChanceOrQuestChance`=-100 WHERE `item`=36754;

-- Added Reputation on Kill with Horde Expdition/Alliance Vanguard for Gundrak (by kiper)
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (30939,30925,30929,30930,30935,30936,30932,30933,30926,30938,30927,30942,30931,30928,30934,30940,30943,31365,29307,31368,30530,31370,31367);
INSERT INTO `creature_onkill_reputation` (`creature_id`,`RewOnKillRepFaction1`,`RewOnKillRepFaction2`,`MaxStanding1`,`IsTeamAward1`,`RewOnKillRepValue1`,`MaxStanding2`,`IsTeamAward2`,`RewOnKillRepValue2`,`TeamDependent`) VALUES
(30939,1037,1052,7,0,15,7,0,15,1),
(30925,1037,1052,7,0,15,7,0,15,1),
(30929,1037,1052,7,0,15,7,0,15,1),
(30930,1037,1052,7,0,15,7,0,15,1),
(30935,1037,1052,7,0,15,7,0,15,1),
(30936,1037,1052,7,0,15,7,0,15,1),
(30932,1037,1052,7,0,15,7,0,15,1),
(30933,1037,1052,7,0,15,7,0,15,1),
(30926,1037,1052,7,0,15,7,0,15,1),
(30938,1037,1052,7,0,15,7,0,15,1),
(30927,1037,1052,7,0,15,7,0,15,1),
(30942,1037,1052,7,0,15,7,0,15,1),
(30931,1037,1052,7,0,2,7,0,2,1),
(30928,1037,1052,7,0,2,7,0,2,1),
(30934,1037,1052,7,0,2,7,0,2,1),
(30940,1037,1052,7,0,2,7,0,2,1),
(30943,1037,1052,7,0,2,7,0,2,1),
(31365,1037,1052,7,0,250,7,0,250,1),
(29307,1037,1052,7,0,250,7,0,250,1),
(31368,1037,1052,7,0,250,7,0,250,1),
(30530,1037,1052,7,0,250,7,0,250,1),
(31370,1037,1052,7,0,250,7,0,250,1),
(31367,1037,1052,7,0,250,7,0,250,1);

-- Add faction for Grand Champions of the Alliance based on Grand Champion's city (by kiper)
UPDATE `creature_template` SET `faction_A`=1078,`faction_H`=1078 WHERE `entry`=34705; -- Grand Champion of Stormwind
UPDATE `creature_template` SET `faction_A`=64,`faction_H`=64 WHERE `entry`=34702;  -- Grand Champion of Gnomeregan
UPDATE `creature_template` SET `faction_A`=1694,`faction_H`=1694 WHERE `entry`=34701; -- Grand Champion of the Exodar
UPDATE `creature_template` SET `faction_A`=1076,`faction_H`=1076 WHERE `entry`=34657; -- Grand Champion of Darnassus
UPDATE `creature_template` SET `faction_A`=2155,`faction_H`=2155 WHERE `entry`=34703; -- Grand Champion of Ironforge
-- Add faction for Grand Champions of the Horde based on Grand Champion's city
UPDATE `creature_template` SET `faction_A`=29,`faction_H`=29 WHERE `entry`=35572; -- Grand Champion of Orgrimmar
UPDATE `creature_template` SET `faction_A`=1604,`faction_H`=1604 WHERE `entry`=35569;  -- Grand Champion of Silvermoon
UPDATE `creature_template` SET `faction_A`=104,`faction_H`=104 WHERE `entry`=35571; -- Grand Champion of the Thunder Bluff
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126 WHERE `entry`=35570; -- Grand Champion of Sen'jin
UPDATE `creature_template` SET `faction_A`=68,`faction_H`=68 WHERE `entry`=35617; -- Grand Champion of Undercity
-- Add faction undead to The Black Knight
UPDATE `creature_template` SET `faction_A`=21,`faction_H`=21 WHERE `entry`=35451;

-- add missing items to vendor Hiren Loresong (kiper)
DELETE FROM `npc_vendor` WHERE `entry`=34881;
INSERT INTO `npc_vendor` (`entry`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) VALUES
(34881,46813,0,0,2603), -- Silver Covenant Hippogryph 150xChampion's Seal
(34881,46815,0,0,2600), -- Quel'dorei Steed 100xChampion's Seal
(34881,46820,0,0,2599), -- Shimmering Wyrmling 40xChampion's Seal
(34881,46817,0,0,2598); -- Silver Covenant Tabard 50xChampion's Seal

-- add missing items to vendor Vasarin Redmorn (by kiper)
DELETE FROM `npc_vendor` WHERE `entry`=34772;
INSERT INTO `npc_vendor` (`entry`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) VALUES
(34772,46814,0,0,2603), -- Sunreaver Dragonhawk 150xChampion's Seal
(34772,46816,0,0,2600), -- Sunreaver Hawkstrider 100xChampion's Seal
(34772,46821,0,0,2599), -- Shimmering Wyrmling 40xChampion's Seal
(34772,46818,0,0,2598); -- Sunreaver Tabard 50xChampion's Seal

-- add missing items to vendor Valiant Laradia (by kiper)
DELETE FROM `npc_vendor` WHERE `entry`=35577;
INSERT INTO `npc_vendor` (`entry`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) VALUES
-- 75xEmblem of Triumph 1xTrophy of the Crusade
(35577,47778,0,0,2683), -- Kel'Thuzad's Hood of Triumph
(35577,47780,0,0,2683), -- Kel'Thuzad's Leggings of Triumph
(35577,47779,0,0,2683), -- Kel'Thuzad's Robe of Triumph
(35577,47754,0,0,2683), -- Khadgar's Hood of Triumph
(35577,47755,0,0,2683), -- Khadgar's Leggings of Triumph 
(35577,47756,0,0,2683), -- Khadgar's Robe of Triumph
(35577,48164,0,0,2683), -- Malfurion's Cover of Triumph
(35577,48134,0,0,2683), -- Malfurion's Headpiece of Triumph
(35577,48135,0,0,2683), -- Malfurion's Leggings of Triumph
(35577,48211,0,0,2683), -- Malfurion's Headguard of Triumph
(35577,48210,0,0,2683), -- Malfurion's Legguards of Triumph
(35577,48209,0,0,2683), -- Malfurion's Raiments of Triumph
(35577,48136,0,0,2683), -- Malfurion's Robe of Triumph
(35577,48165,0,0,2683), -- Malfurion's Trousers of Triumph
(35577,48166,0,0,2683), -- Malfurion's Vestments of Triumph
(35577,48346,0,0,2683), -- Nobundo's Chestguard of Triumph
(35577,48348,0,0,2683), -- Nobundo's Faceguard of Triumph
(35577,48316,0,0,2683), -- Nobundo's Hauberk of Triumph
(35577,48287,0,0,2683), -- Nobundo's Headpiece of Triumph
(35577,48318,0,0,2683), -- Nobundo's Helm of Triumph
(35577,48319,0,0,2683), -- Nobundo's Kilt of Triumph
(35577,48288,0,0,2683), -- Nobundo's Legguards of Triumph
(35577,48285,0,0,2683), -- Nobundo's Tunic of Triumph
(35577,48349,0,0,2683), -- Nobundo's War-Kilt of Triumph
(35577,48481,0,0,2683), -- Thassarian's Battleplate of Triumph
(35577,48538,0,0,2683), -- Thassarian's Chestguard of Triumph
(35577,48540,0,0,2683), -- Thassarian's Faceguard of Triumph 
(35577,48483,0,0,2683), -- Thassarian's Helmet of Triumph
(35577,48541,0,0,2683), -- Thassarian's Legguards of Triumph
(35577,48484,0,0,2683), -- Thassarian's Legplates of Triumph
(35577,48607,0,0,2683), -- Turalyon's Battleplate of Triumph
(35577,48641,0,0,2683), -- Turalyon's Breastplate of Triumph
(35577,48639,0,0,2683), -- Turalyon's Faceguard of Triumph
(35577,48578,0,0,2683), -- Turalyon's Greaves of Triumph
(35577,48577,0,0,2683), -- Turalyon's Headpiece of Triumph
(35577,48609,0,0,2683), -- Turalyon's Helm of Triumph
(35577,48638,0,0,2683), -- Turalyon's Legguards of Triumph
(35577,48610,0,0,2683), -- Turalyon's Legplates of Triumph
(35577,48575,0,0,2683), -- Turalyon's Tunic of Triumph
(35577,48223,0,0,2683), -- VanCleef's Breastplate of Triumph
(35577,48225,0,0,2683), -- VanCleef's Helmet of Triumph
(35577,48226,0,0,2683), -- VanCleef's Legplates of Triumph
(35577,48078,0,0,2683), -- Velen's Circlet of Triumph
(35577,47984,0,0,2683), -- Velen's Cowl of Triumph
(35577,47985,0,0,2683), -- Velen's Leggings of Triumph
(35577,48079,0,0,2683), -- Velen's Pants of Triumph
(35577,48080,0,0,2683), -- Velen's Raiments of Triumph
(35577,47986,0,0,2683), -- Velen's Robe of Triumph
(35577,48257,0,0,2683), -- Windrunner's Headpiece of Triumph
(35577,48258,0,0,2683), -- Windrunner's Legguards of Triumph
(35577,48255,0,0,2683), -- Windrunner's Tunic of Triumph
(35577,48376,0,0,2683), -- Wrynn's Battleplate of Triumph
(35577,48450,0,0,2683), -- Wrynn's Breastplate of Triumph
(35577,48430,0,0,2683), -- Wrynn's Greathelm of Triumph
(35577,48378,0,0,2683), -- Wrynn's Helmet of Triumph
(35577,48446,0,0,2683), -- Wrynn's Legguards of Triumph
(35577,48379,0,0,2683), -- Wrynn's Legplates of Triumph
-- 45xEmblem of Triumph 1xTrophy of the Crusade
(35577,47782,0,0,2684), -- Kel'Thuzad's Gloves of Triumph
(35577,47781,0,0,2684), -- Kel'Thuzad's Shoulderpads of Triumph
(35577,47753,0,0,2684), -- Khadgar's Gauntlets of Triumph
(35577,47757,0,0,2684), -- Khadgar's Shoulderpads of Triumph
(35577,48163,0,0,2684), -- Malfurion's Gloves of Triumph
(35577,48212,0,0,2684), -- Malfurion's Handgrips of Triumph
(35577,48133,0,0,2684), -- Malfurion's Handguards of Triumph
(35577,48167,0,0,2684), -- Malfurion's Mantle of Triumph
(35577,48208,0,0,2684), -- Malfurion's Shoulderpads of Triumph
(35577,48137,0,0,2684), -- Malfurion's Spaulders of Triumph
(35577,48317,0,0,2684), -- Nobundo's Gloves of Triumph
(35577,48347,0,0,2684), -- Nobundo's Grips of Triumph
(35577,48286,0,0,2684), -- Nobundo's Handguards of Triumph
(35577,48350,0,0,2684), -- Nobundo's Shoulderguards of Triumph
(35577,48320,0,0,2684), -- Nobundo's Shoulderpads of Triumph
(35577,48289,0,0,2684), -- Nobundo's Spaulders of Triumph
(35577,48482,0,0,2684), -- Thassarian's Gauntlets of Triumph
(35577,48539,0,0,2684), -- Thassarian's Handguards of Triumph
(35577,48542,0,0,2684), -- Thassarian's Pauldrons of Triumph
(35577,48485,0,0,2684), -- Thassarian's Shoulderplates of Triumph
(35577,48608,0,0,2684), -- Turalyon's Gauntlets of Triumph
(35577,48576,0,0,2684), -- Turalyon's Gloves of Triumph
(35577,48640,0,0,2684), -- Turalyon's Handguards of Triumph
(35577,48637,0,0,2684), -- Turalyon's Shoulderguards of Triumph
(35577,48611,0,0,2684), -- Turalyon's Shoulderplates of Triumph
(35577,48579,0,0,2684), -- Turalyon's Spaulders of Triumph
(35577,48224,0,0,2684), -- VanCleef's Gauntlets of Triumph
(35577,48227,0,0,2684), -- VanCleef's Pauldrons of Triumph
(35577,47983,0,0,2684), -- Velen's Gloves of Triumph
(35577,48077,0,0,2684), -- Velen's Handwraps of Triumph
(35577,48081,0,0,2684), -- Velen's Mantle of Triumph
(35577,47987,0,0,2684), -- Velen's Shoulderpads of Triumph
(35577,48256,0,0,2684), -- Windrunner's Handguards of Triumph
(35577,48259,0,0,2684), -- Windrunner's Spaulders of Triumph
(35577,48377,0,0,2684), -- Wrynn's Gauntlets of Triumph
(35577,48452,0,0,2684), -- Wrynn's Handguards of Triumph
(35577,48454,0,0,2684), -- Wrynn's Pauldrons of Triumph
(35577,48380,0,0,2684); -- Wrynn's Shoulderplates of Triumph

-- add missing items to vendor Champion Faesrol (by kiper)
DELETE FROM `npc_vendor` WHERE `entry`=35578;
INSERT INTO `npc_vendor` (`entry`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) VALUES
(35578,48242,0,0,2683), -- Garonas Breastplate of Triumph 
(35578,48241,0,0,2684), -- Garonas Gauntlets of Triumph 
(35578,48240,0,0,2683), -- Garonas Helmet of Triumph
(35578,48239,0,0,2683), -- Garonas Legplates of Triumph
(35578,48238,0,0,2684), -- Garonas Pauldrons of Triumph
(35578,47803,0,0,2684), -- Guldans Gloves of Triumph
(35578,47804,0,0,2683), -- Guldans Hood of Triumph
(35578,47805,0,0,2683), -- Guldans Leggings of Triumph
(35578,47806,0,0,2683), -- Guldans Robe of Triumph
(35578,47807,0,0,2684), -- Guldans Shoulderpads of Triumph
(35578,48391,0,0,2683), -- Hellscreams Battleplate of Triumph
(35578,48461,0,0,2683), -- Hellscreams Breastplate of Triumph
(35578,48392,0,0,2684), -- Hellscreams Gauntlets of Triumph
(35578,48463,0,0,2683), -- Hellscreams Greathelm of Triumph
(35578,48462,0,0,2684), -- Hellscreams Handguards of Triumph
(35578,48393,0,0,2683), -- Hellscreams Helmet of Triumph
(35578,48464,0,0,2683), -- Hellscreams Legguards of Triumph
(35578,48394,0,0,2683), -- Hellscreams Legplates of Triumph
(35578,48465,0,0,2684), -- Hellscreams Pauldrons of Triumph
(35578,48395,0,0,2684), -- Hellscreams Shoulderplates of Triumph
(35578,48500,0,0,2683), -- Koltiras Battleplate of Triumph
(35578,48557,0,0,2683), -- Koltiras Chestguard of Triumph
(35578,48555,0,0,2683), -- Koltiras Faceguard of Triumph
(35578,48499,0,0,2684), -- Koltiras Gauntlets of Triumph
(35578,48556,0,0,2684), -- Koltiras Handguards of Triumph
(35578,48498,0,0,2683), -- Koltiras Helmet of Triumph
(35578,48554,0,0,2683), -- Koltiras Legguards of Triumph
(35578,48497,0,0,2683), -- Koltiras Legplates of Triumph
(35578,48553,0,0,2684), -- Koltiras Pauldrons of Triumph
(35578,48496,0,0,2684), -- Koltiras Shoulderplates of Triumph
(35578,48626,0,0,2683), -- Liadrins Battleplate of Triumph
(35578,48657,0,0,2683), -- Liadrins Breastplate of Triumph
(35578,48659,0,0,2683), -- Liadrins Faceguard of Triumph
(35578,48625,0,0,2684), -- Liadrins Gauntlets of Triumph
(35578,48593,0,0,2684), -- Liadrins Gloves of Triumph
(35578,48591,0,0,2683), -- Liadrins Greaves of Triumph
(35578,48658,0,0,2684), -- Liadrins Handguards of Triumph
(35578,48592,0,0,2683), -- Liadrins Headpiece of Triumph
(35578,48624,0,0,2683), -- Liadrins Helm of Triumph
(35578,48660,0,0,2683), -- Liadrins Legguards of Triumph
(35578,48623,0,0,2683), -- Liadrins Legplates of Triumph
(35578,48661,0,0,2684), -- Liadrins Shoulderguards of Triumph
(35578,48622,0,0,2684), -- Liadrins Shoulderplates of Triumph
(35578,48590,0,0,2684), -- Liadrins Spaulders of Triumph
(35578,48594,0,0,2683), -- Liadrins Tunic of Triumph
(35578,48181,0,0,2683), -- Runetotems Cover of Triumph
(35578,48182,0,0,2684), -- Runetotems Gloves of Triumph
(35578,48193,0,0,2684), -- Runetotems Handgrips of Triumph
(35578,48152,0,0,2684), -- Runetotems Handguards of Triumph
(35578,48194,0,0,2683), -- Runetotems Headguard of Triumph
(35578,48151,0,0,2683), -- Runetotems Headpiece of Triumph
(35578,48150,0,0,2683), -- Runetotems Leggings of Triumph
(35578,48195,0,0,2683), -- Runetotems Legguards of Triumph
(35578,48178,0,0,2684), -- Runetotems Mantle of Triumph
(35578,48196,0,0,2683), -- Runetotems Raiments of Triumph
(35578,48149,0,0,2683), -- Runetotems Robe of Triumph
(35578,48197,0,0,2684), -- Runetotems Shoulderpads of Triumph
(35578,48148,0,0,2684), -- Runetotems Spaulders of Triumph
(35578,48180,0,0,2683), -- Runetotems Trousers of Triumph
(35578,48179,0,0,2683), -- Runetotems Vestments of Triumph
(35578,47772,0,0,2684), -- Sunstriders Gauntlets of Triumph
(35578,47771,0,0,2683), -- Sunstriders Hood of Triumph
(35578,47770,0,0,2683), -- Sunstriders Leggings of Triumph
(35578,47769,0,0,2683), -- Sunstriders Robe of Triumph
(35578,47768,0,0,2684), -- Sunstriders Shoulderpads of Triumph
(35578,48365,0,0,2683), -- Thralls Chestguard of Triumph
(35578,48363,0,0,2683), -- Thralls Faceguard of Triumph
(35578,48334,0,0,2684), -- Thralls Gloves of Triumph
(35578,48364,0,0,2684), -- Thralls Grips of Triumph
(35578,48301,0,0,2684), -- Thralls Handguards of Triumph
(35578,48335,0,0,2683), -- Thralls Hauberk of Triumph
(35578,48302,0,0,2683), -- Thralls Headpiece of Triumph
(35578,48333,0,0,2683), -- Thralls Helm of Triumph
(35578,48332,0,0,2683), -- Thralls Kilt of Triumph
(35578,48303,0,0,2683), -- Thralls Legguards of Triumph
(35578,48361,0,0,2684), -- Thralls Shoulderguards of Triumph
(35578,48331,0,0,2684), -- Thralls Shoulderpads of Triumph
(35578,48304,0,0,2684), -- Thralls Spaulders of Triumph
(35578,48300,0,0,2683), -- Thralls Tunic of Triumph
(35578,48362,0,0,2683), -- Thralls War-Kilt of Triumph
(35578,48273,0,0,2684), -- Windrunners Handguards of Triumph
(35578,48272,0,0,2683), -- Windrunners Headpiece of Triumph
(35578,48271,0,0,2683), -- Windrunners Legguards of Triumph
(35578,48270,0,0,2684), -- Windrunners Spaulders of Triumph
(35578,48274,0,0,2683), -- Windrunners Tunic of Triumph
(35578,48095,0,0,2683), -- Zabras Circlet of Triumph
(35578,48065,0,0,2683), -- Zabras Cowl of Triumph
(35578,48066,0,0,2684), -- Zabras Gloves of Triumph
(35578,48096,0,0,2684), -- Zabras Handwraps of Triumph
(35578,48064,0,0,2683), -- Zabras Leggings of Triumph
(35578,48092,0,0,2684), -- Zabras Mantle of Triumph
(35578,48094,0,0,2683), -- Zabras Pants of Triumph
(35578,48093,0,0,2683), -- Zabras Raiments of Triumph
(35578,48063,0,0,2683), -- Zabras Robe of Triumph
(35578,48062,0,0,2684); -- Zabras Shoulderpads of Triumph

-- Add vendor flag to Dame Evniki Kapsalis (by kiper)
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=34885;
-- add missing items to vendor Dame Evniki Kapsalis
DELETE FROM `npc_vendor` WHERE `entry`=34885;
INSERT INTO `npc_vendor` (`entry`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) VALUES
(34885,47541,0,0,2603), -- Argent Pony Bridle 150xChampion's Seal
-- 100xChampion's Seal
(34885,47179,0,0,2600), -- Argent Charger (was wrong ID 46815)
(34885,47180,0,0,2600), -- Argent Warhorse 
-- 95xChampion's Seal
(34885,42943,0,0,2674), -- Bloodied Arcanite Reaper 
(34885,42946,0,0,2674), -- Charmed Ancient Bone Bow 
(34885,42947,0,0,2674), -- Dignified Headmaster's Charge
(34885,48718,0,0,2674), -- Repurposed Lava Dredger
-- 75xChampion's Seal
(34885,42948,0,0,2675), -- Devout Aurastone Hammer
(34885,42992,0,0,2675), -- Discerning Eye of the Beast
(34885,42991,0,0,2675), -- Swift Hand of Justice
(34885,48716,0,0,2675), -- Venerable Mass of McGowan
-- 60xChampion's Seal
(34885,42944,0,0,2673), -- Balanced Heartseeker
(34885,42950,0,0,2673), -- Champion Herod's Shoulder
(34885,48677,0,0,2673), -- Champion's Deathdealer Breastplate
(34885,42951,0,0,2673), -- Mystical Pauldrons of Elements
(34885,48683,0,0,2673), -- Mystical Vest of Elements
(34885,48685,0,0,2673), -- Polished Breastplate of Valor
(34885,42949,0,0,2673), -- Polished Spaulders of Valor
(34885,48687,0,0,2673), -- Preened Ironfeather Breastplate
(34885,42984,0,0,2673), -- Preened Ironfeather Shoulders
(34885,42952,0,0,2673), -- Stained Shadowcraft Spaulders
(34885,48689,0,0,2673), -- Stained Shadowcraft Tunic
(34885,42985,0,0,2673), -- Tattered Dreadmist Mantle
(34885,48691,0,0,2673), -- Tattered Dreadmist Robe
(34885,42945,0,0,2673), -- Venerable Dal'Rend's Sacred Charge
-- 50xChampion's Seal
(34885,46874,0,0,2598), -- Argent Crusader's Tabard
-- 15xxChampion's Seal
(34885,46843,0,0,2597); -- Argent Crusader's Banner

-- This NPCs are not agressive against players in Argent Tournament (by Misimouse)
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry` IN (33474,33465,33459,33467,33459,33480,33462,33560,33477);

-- Some NO aggressive NPCs on Shattrath City (http://www.wowhead.com/?zone=3703) (by Misimouse)
-- Creature Sister of Torment Image is not aggresive is not attackable.
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2,`unit_flags`=`unit_flags`|33555202 WHERE `entry`=24854;

-- Creature Jonru,Mijiri,Arcanist Iramhir are not aggressive is not attackable (by Misimouse).
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry` IN (34999,35000,35596);

-- set the correct faction from Warp Slicer (by devnull)
UPDATE `creature_template` SET `faction_A`=1620,`faction_H`=1620 WHERE `entry`=21272;

-- Set no aggro flag on Sul'lithuz Hatchling (by voltaje)
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`=8130;

-- Remove all items from c33680 - Nemiha <Master Jewelcrafting Trainer> (by wex, thx unclechopchop)
DELETE FROM `npc_vendor` where `entry`=33680;
-- Add items to c33680 - Nemiha <Master Jewelcrafting Trainer>
INSERT INTO `npc_vendor`(`entry`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) VALUES
(33680,20815,0,0,0), -- Jeweler's Kit
(33680,20824,0,0,0), -- Simple Grinder
(33680,46897,0,0,2436), -- Design: Enduring Eye of Zul
(33680,46898,0,0,2436), -- Design: Steady Eye of Zul
(33680,46899,0,0,2436), -- Design: Vivid Eye of Zul
(33680,46900,0,0,2436), -- Design: Dazzling Eye of Zul
(33680,46901,0,0,2436), -- Design: Jagged Eye of Zul
(33680,46902,0,0,2436), -- Design: Timeless Eye of Zul
(33680,46903,0,0,2436), -- Design: Seer's Eye of Zul
(33680,46904,0,0,2436), -- Design: Forceful Eye of Zul
(33680,46905,0,0,2436), -- Design: Misty Eye of Zul
(33680,46906,0,0,2436), -- Design: Sundered Eye of Zul
(33680,46907,0,0,2436), -- Design: Shining Eye of Zul
(33680,46908,0,0,2436), -- Design: Tense Eye of Zul
(33680,46909,0,0,2436), -- Design: Lambent Eye of Zul
(33680,46910,0,0,2436), -- Design: Intricate Eye of Zul
(33680,46911,0,0,2436), -- Design: Radiant Eye of Zul
(33680,46912,0,0,2436), -- Design: Energized Eye of Zul
(33680,46913,0,0,2436), -- Design: Shattered Eye of Zul
(33680,46914,0,0,2436), -- Design: Opaque Eye of Zul
(33680,46915,0,0,2436), -- Design: Turbid Eye of Zul
(33680,46916,0,0,2436), -- Design: Runed Cardinal Ruby
(33680,46917,0,0,2436), -- Design: Bold Cardinal Ruby
(33680,46918,0,0,2436), -- Design: Delicate Cardinal Ruby
(33680,46919,0,0,2436), -- Design: Bright Cardinal Ruby
(33680,46920,0,0,2436), -- Design: Precise Cardinal Ruby
(33680,46921,0,0,2436), -- Design: Fractured Cardinal Ruby
(33680,46922,0,0,2436), -- Design: Subtle Cardinal Ruby
(33680,46923,0,0,2436), -- Design: Flashing Cardinal Ruby
(33680,46924,0,0,2436), -- Design: Solid Majestic Zircon
(33680,46925,0,0,2436), -- Design: Sparkling Majestic Zircon
(33680,46926,0,0,2436), -- Design: Stormy Majestic Zircon
(33680,46927,0,0,2436), -- Design: Lustrous Majestic Zircon
(33680,46928,0,0,2436), -- Design: Rigid King's Amber
(33680,46929,0,0,2436), -- Design: Smooth King's Amber
(33680,46930,0,0,2436), -- Design: Brilliant King's Amber
(33680,46931,0,0,2436), -- Design: Thick King's Amber
(33680,46932,0,0,2436), -- Design: Mystic King's Amber
(33680,46933,0,0,2436), -- Design: Quick King's Amber
(33680,46934,0,0,2436), -- Design: Balanced Dreadstone
(33680,46935,0,0,2436), -- Design: Sovereign Dreadstone
(33680,46936,0,0,2436), -- Design: Glowing Dreadstone
(33680,46937,0,0,2436), -- Design: Purified Dreadstone
(33680,46938,0,0,2436), -- Design: Shifting Dreadstone
(33680,46939,0,0,2436), -- Design: Royal Dreadstone
(33680,46940,0,0,2436), -- Design: Regal Dreadstone
(33680,46941,0,0,2436), -- Design: Defender's Dreadstone
(33680,46942,0,0,2436), -- Design: Guardian's Dreadstone
(33680,46943,0,0,2436), -- Design: Mysterious Dreadstone
(33680,46944,0,0,2436), -- Design: Puissant Dreadstone
(33680,46945,0,0,2436), -- Design: Infused Dreadstone
(33680,46946,0,0,2436), -- Design: Tenuous Dreadstone
(33680,46947,0,0,2436), -- Design: Luminous Ametrine
(33680,46948,0,0,2436), -- Design: Inscribed Ametrine
(33680,46949,0,0,2436), -- Design: Deadly Ametrine
(33680,46950,0,0,2436), -- Design: Potent Ametrine
(33680,46951,0,0,2436), -- Design: Veiled Ametrine
(33680,46952,0,0,2436), -- Design: Durable Ametrine
(33680,46953,0,0,2436), -- Design: Etched Ametrine
(33680,46956,0,0,2436), -- Design: Pristine Ametrine
(33680,47007,0,0,2436), -- Design: Reckless Ametrine
(33680,47008,0,0,2436), -- Design: Glinting Ametrine
(33680,47010,0,0,2436), -- Design: Accurite Ametrine
(33680,47011,0,0,2436), -- Design: Wicked Ametrine
(33680,47012,0,0,2436), -- Design: Glimmering Ametrine
(33680,47015,0,0,2436), -- Design: Champion's Ametrine
(33680,47016,0,0,2436), -- Design: Empowered Ametrine
(33680,47017,0,0,2436), -- Design: Stalwart Ametrine
(33680,47018,0,0,2436), -- Design: Resplendent Ametrine
(33680,47019,0,0,2436), -- Design: Fierce Ametrine
(33680,47020,0,0,2436), -- Design: Deft Ametrine
(33680,47021,0,0,2436), -- Design: Lucent Ametrine
(33680,47022,0,0,2436), -- Design: Resolute Ametrine
(33680,47023,0,0,2436), -- Design: Stark Ametrine
(33680,49112,0,0,2436); -- Design: Nightmare Tear

-- Set proper faction for Orabus the Helmsman c32576 (1885 - Vrykul) (by juronius)
UPDATE `creature_template` SET `faction_A`=1885,`faction_H`=1885 WHERE `entry`=32576;

-- Remove Kil'rek should be spawned by script (by ogeraisi)
DELETE FROM `creature` WHERE `id`=17229;

-- Quest "Deaths in the Family (362) does not require quest "The Haunted Hills" to be completed before you can accept it (by mikebeck, thx Brian)
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `entry`=354;

-- Add missing Spellfocus gameobjects used by questitem Cannoneer's Smoke Flare(33335) (by Socolin, thx Brian for proper research-comments)
-- Spellfocus GOs can not be gotten from sniffs and the data isn't available ANYWHERE else.
-- Usual spawn location is in the exact same location as the visible gameobject.
DELETE FROM `gameobject` WHERE `id`=300163;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`, `rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(150124,300163,571,1,1,1498.65,-6193.97,15.6769,3.43613,0,0,0.989175,-0.146738,25,0,1),
(150125,300163,571,1,1,1576.89,-6252.19,15.7494,2.96725,0,0,0.996203,0.0870613,25,0,1);

-- Add missing gameobject for visual of quest Latent Power (northern stone) (by Socolin)
DELETE FROM `gameobject` WHERE `id` IN (188473,188469,188479);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(150126,188473,571,1,1,4128.46,-4852.93,73.124,3.49344,0,0,0.984565,-0.175018,300,0,1),
(150127,188469,571,1,1,4128.46,-4852.93,73.124,3.49344,0,0,0.984565,-0.175018,300,0,1),
(150128,188479,571,1,1,4128.46,-4852.93,73.124,3.49344,0,0,0.984565,-0.175018,300,0,1);

-- Set the good date for the major event of the day (by Socolin)
-- sources: in game calendar and http://www.worldofwarcraft.com/info/events/calendar/
UPDATE `game_event` SET `start_time`= '2010-06-21 00:01:00' WHERE `entry`=1; -- Midsummer Fire Festival
UPDATE `game_event` SET `start_time`= '2010-12-15 06:00:00' WHERE `entry`=2; -- Feast of Winter Veil
UPDATE `game_event` SET `start_time`= '2010-01-31 00:01:00' WHERE `entry`=3; -- Darkmoon Faire (Terokkar Forest)
UPDATE `game_event` SET `start_time`= '2010-02-28 00:01:00' WHERE `entry`=4; -- Darkmoon Faire (Elwynn)
UPDATE `game_event` SET `start_time`= '2010-04-04 00:01:00' WHERE `entry`=5; -- Darkmoon Faire (Mulgore)
UPDATE `game_event` SET `start_time`= '2010-02-12 06:00:00' WHERE `entry`=7; -- Lunar Festival 
UPDATE `game_event` SET `start_time`= '2010-02-11 06:00:00' WHERE `entry`=8; -- Love is in the Air
UPDATE `game_event` SET `start_time`= '2010-04-04 00:01:00' WHERE `entry`=9; -- Noblegarden
UPDATE `game_event` SET `start_time`= '2010-05-02 00:01:00' WHERE `entry`=10; -- Children's Week
UPDATE `game_event` SET `start_time`= '2010-09-16 00:01:00' WHERE `entry`=11; -- Harvest Festival
UPDATE `game_event` SET `start_time`= '2010-10-18 01:00:00' WHERE `entry`=12; -- Hallow's End
UPDATE `game_event` SET `start_time`= '2010-02-25 00:01:00' WHERE `entry`=23; -- Darkmoon Faire Building (Elwynn Forest)
UPDATE `game_event` SET `start_time`= '2010-09-20 00:01:00' WHERE `entry`=26; -- Brewfest

-- correct spell list for npc 2834 (by Tigercop, thx Brian for proper format)
DELETE FROM `npc_trainer` WHERE `entry`=2834;
INSERT INTO `npc_trainer` (entry,spell,spellcost,reqskill,reqskillvalue,reqlevel) VALUES 
(2834,7620,100,0,0,5), -- Apprentice fishing
(2834,7731,500,356,50,1), -- Journeyman fishing
(2834,7732,10000,356,125,1), -- Expert fishing
(2834,18248,25000,356,200,1); -- Artisan fishing
-- NPC 2834 no longer sells and doesn't have a vendor list in TDB 0.0.7 (24)
-- Remove vendor flag using bitwise math
UPDATE `creature_template` SET `npcflag`=`npcflag`&~128 WHERE `entry`=2834;

-- Add start relation to quest's for achievement Elders of the Dungeons (Northrend ones were missing) (by unclechopchop, thx kiper)
DELETE FROM `creature_questrelation` WHERE `quest` IN (13067,13021,13017,13023,13022,13065,13066);
INSERT INTO `creature_questrelation` (`id`,`quest`) VALUES
(30538,13067), -- Elder Chogan'gada (Utgarde Pinnacle)
(30536,13021), -- Elder Igasho (The Nexus)
(30531,13017), -- Elder Jarten (Utgarde Keep)
(30534,13023), -- Elder Kilias (Drak'Tharon Keep)
(30533,13022), -- Elder Nurgen (Azjol-Nerub)
(30537,13065), -- Elder Ohanzee (Gundrak)
(30535,13066); -- Elder Yurauk (Halls Of Stone)
-- Add end relation to quest's for achievement Elders of the Dungeons (Northrend ones were missing)
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (13067,13021,13017,13023,13022,13065,13066);
INSERT INTO `creature_involvedrelation` (`id`,`quest`) VALUES
(30538,13067), -- Elder Chogan'gada (Utgarde Pinnacle)
(30536,13021), -- Elder Igasho (The Nexus)
(30531,13017), -- Elder jarten (Utgarde keep)
(30534,13023), -- Elder Kilias (Drak'Tharon Keep)
(30533,13022), -- Elder Nurgen (Azjol-Nerub)
(30537,13065), -- Elder Ohanzee (Gundrak)
(30535,13066); -- Elder Yurauk (Halls Of Stone)



-- ---------------------
-- -- Special Cleanup --
-- ---------------------
-- Remove Essence of Wintergrasp and Wintergrasp No Fly Zone and Dalaran No Fly Zone (Dalaran needs proper Core Support)
DELETE FROM `spell_area` WHERE `spell` IN (58045, 57940, 58730,58600 );

-- Change guid in UP24 to proper TDB range
UPDATE `gameobject` SET `guid`=150122 WHERE `guid`=255093;

-- Restore 3.1.3 Quest XP Reward until new formula is implemented in COre
INSERT INTO `quest_template` (`entry`,`RewMoneyMaxLevel`) VALUES (1,198600),(2,14700),(5,2340),(6,210),(7,90),(8,60),(9,6300),(10,37800),(11,510),(12,2160),(13,4650),(14,9600),(15,150),(16,0),(17,28800),(18,210),(19,12000),(20,9900),(21,270),(22,2160),(23,11700),(24,13200),(25,12000),(30,360),(5061,480),(27,60),(26,60),(28,360),(32,47100),(33,90),(34,11700),(35,240),(36,240),(37,120),(38,3300),(39,660),(40,60),(45,240),(46,510),(47,390),(48,31800),(49,39600),(50,39600),(51,39600),(52,390),(53,47400),(54,120),(55,24300),(56,8700),(57,12600),(58,14700),(59,120),(60,270),(61,480),(62,270),(63,360),(64,2160),(65,8100),(66,1380),(67,6900),(68,10200),(69,3450),(70,10200),(71,120),(72,1380),(74,6900),(75,6900),(76,510),(77,37800),(78,3450),(79,1380),(80,1380),(81,37800),(82,27000),(83,480),(84,90),(85,90),(86,240),(87,540),(88,480),(89,9300),(90,12000),(91,11100),(92,8100),(93,4650),(94,7500),(95,6000),(96,720),(97,1380),(98,24300),(99,6300),(100,0),(101,15300),(102,4650),(103,6900),(104,9300),(105,71400),(106,90),(107,90),(109,390),(110,3750),(111,90),(112,180),(113,3750),(114,480),(115,11100),(116,6300),(117,0),(118,2040),(119,4050),(120,2340),(121,1200),(122,10200),(123,120),(124,6900),(125,5250),(126,9900),(127,7500),(128,12000),(129,3300),(130,1620),(131,1620),(132,4050),(133,9900),(134,7200),(135,4050),(136,3450),(138,3450),(139,3450),(140,6900),(141,2040),(142,8100),(143,2340),(144,1200),(145,6000),(146,2040),(147,510),(148,2940),(149,2940),(150,9300),(151,6000),(152,8700),(153,6300),(154,1200),(155,10200),(156,5850),(157,8700),(158,2940),(159,5850),(160,3600),(161,8100),(162,48900),(163,2340),(164,5550),(165,6000),(166,15600),(167,9300),(168,8100),(169,15900),(170,90),(171,120),(172,0),(173,6900),(174,12000),(175,6000),(176,1080),(177,9000),(178,8400),(179,60),(180,15900),(181,14700),(182,210),(183,150),(184,360),(185,7500),(186,8700),(187,14700),(188,22200),(189,14700),(190,7500),(191,8700),(192,17400),(193,26100),(194,9300),(195,10500),(196,20400),(197,30300),(198,4050),(199,8100),(200,9900),(201,1620),(202,32700),(203,12900),(204,18600),(205,26100),(206,43200),(207,29400),(208,45300),(209,28800),(210,11100),(211,71400),(212,39300),(213,21000),(214,11400),(215,8700),(216,11700),(217,9600),(218,330),(219,15300),(220,120),(221,10500),(222,11400),(223,18900),(224,2160),(225,3600),(226,7500),(227,1500),(228,11100),(229,1500),(230,6000),(231,7200),(232,3300),(233,120),(234,150),(235,960),(237,6300),(238,3300),(239,120),(240,4650),(243,17100),(244,1740),(245,7500),(246,5700),(247,18300),(248,10500),(249,12600),(250,4050),(251,1500),(252,1500),(253,21900),(254,0),(255,8700),(256,10500),(257,5250),(258,5700),(261,24900),(262,3000),(263,6300),(264,3300),(265,1200),(266,1200),(267,2160),(268,3000),(269,3600),(270,7200),(271,9300),(272,360),(29,360),(31,480),(273,1620),(274,2040),(275,15900),(276,7500),(277,11100),(278,8100),(279,10500),(280,4050),(281,3000),(282,210),(283,11700),(284,3000),(285,6000),(286,9000),(287,360),(288,1320),(289,10500),(290,7200),(291,240),(292,7200),(293,14700),(294,11700),(295,13200),(296,17700),(297,8100),(298,1620),(299,13800),(301,3300),(302,1620),(303,14700),(304,15300),(305,5850),(306,2940),(307,8100),(308,0),(309,6300),(310,90),(311,390),(312,2160),(313,390),(314,2160),(315,480),(317,420),(318,90),(319,330),(320,540),(321,3600),(322,7200),(323,13800),(324,10500),(325,3600),(328,11100),(329,11100),(330,2220),(331,22200),(332,90),(333,60),(334,90),(335,14700),(336,14700),(337,9000),(338,39300),(339,6600),(340,6600),(341,6600),(342,6600),(343,1200),(344,2940),(345,2940),(346,11700),(347,5850),(348,49800),(349,0),(350,1500),(351,37800),(353,6300),(354,1080),(355,60),(356,780),(357,330),(358,420),(359,120),(360,240),(361,270),(362,240),(363,30),(364,90),(365,390),(366,210),(367,330),(368,480),(369,270),(370,480),(371,510),(372,2160),(373,5250),(374,390),(375,420),(376,90),(377,18900),(378,19800),(379,25800),(380,210),(381,210),(382,390),(383,210),(384,390),(385,6300),(386,18300),(387,18900),(388,18900),(389,2640),(391,21300),(392,3600),(393,3600),(394,1500),(395,3750),(396,22800),(397,1500),(398,510),(399,6300),(400,60),(401,11100),(402,0),(403,0),(404,240),(405,90),(407,90),(408,3300),(409,1620),(410,0),(411,2160),(412,510),(413,240),(414,390),(415,60),(416,1080),(417,780),(418,1080),(419,240),(420,210),(421,510),(422,1080),(423,4650),(424,6300),(425,1620),(426,540),(427,420),(428,540),(429,540),(430,780),(431,0),(432,360),(433,780),(434,11400),(435,1080),(436,2040),(437,4650),(438,5250),(439,1740),(440,3450),(441,3450),(442,11700),(443,7500),(444,1920),(445,390),(446,1740),(447,2160),(448,3450),(449,540),(450,8100),(451,12300),(452,6300),(453,6000),(454,660),(455,7500),(456,90),(457,150),(458,30),(459,150),(460,3750),(461,4050),(463,4950),(464,12600),(465,9600),(466,10500),(467,2760),(468,1020),(469,4950),(470,14400),(471,12600),(472,6000),(473,1260),(474,12600),(475,150),(476,330),(477,4650),(478,3600),(479,6900),(480,10500),(481,480),(482,480),(483,480),(484,10500),(485,37800),(486,2760),(487,420),(488,270),(489,390),(491,10200),(492,1080),(493,6900),(494,4650),(495,2460),(496,1080),(498,13200),(499,10500),(500,26100),(501,11700),(502,8700),(503,21000),(504,39300),(505,12900),(506,15600),(507,36000),(508,32700),(509,13800),(510,9300),(511,9300),(512,21000),(513,6900),(514,9300),(515,18300),(516,7500),(517,7200),(518,18600),(519,27600),(520,37800),(521,30300),(522,5850),(523,32700),(524,21900),(525,9300),(526,10500),(527,11700),(528,12000),(529,12600),(530,9300),(531,9300),(532,12600),(533,18600),(535,1860),(536,11100),(537,26100),(538,5850),(539,13800),(540,29400),(541,14700),(542,29400),(543,39300),(544,23100),(545,14700),(546,15300),(547,18300),(549,10500),(550,16200),(551,6600),(552,17400),(553,21600),(554,12900),(555,15300),(556,16200),(557,18600),(558,60),(559,16200),(560,1620),(561,1620),(562,12000),(563,20100),(564,18600),(565,18600),(566,26100),(567,13800),(568,21000),(569,22200),(570,17400),(571,20400),(572,20400),(573,39600),(574,23400),(575,7500),(576,21600),(577,10500),(578,22200),(579,0),(580,40800),(581,13800),(582,16500),(583,1500),(584,27600),(585,19500),(586,34800),(587,13500),(588,3300),(589,33300),(590,60),(591,34800),(592,43200),(593,0),(594,21600),(595,20400),(596,16500),(597,20400),(598,28800),(599,6900),(600,27600),(601,22200),(602,11100),(603,11100),(604,28800),(605,19800),(606,6900),(607,20400),(608,36000),(609,31800),(610,18600),(611,26100),(613,39600),(614,28800),(615,2880),(616,2220),(617,30300),(618,43200),(619,0),(620,14400),(621,31800),(622,22200),(623,22500),(624,30300),(625,30300),(626,52800),(627,16500),(628,23400),(629,22200),(630,28800),(631,15300),(632,15300),(633,15300),(634,7500),(635,1980),(636,1980),(637,14700),(638,5550),(639,22200),(640,26100),(641,2640),(642,22200),(643,27600),(644,28800),(645,7200),(646,36000),(647,18300),(648,47100),(649,3750),(650,37800),(651,23400),(652,28800),(653,19500),(654,34800),(655,1860),(656,61200),(657,0),(658,21000),(659,8700),(660,22200),(661,27600),(662,26100),(663,4950),(664,26100),(665,26100),(666,32700),(667,39600),(668,12900),(669,26100),(670,26100),(671,17400),(672,18600),(673,26100),(674,1860),(675,1860),(676,16200),(677,16200),(678,23400),(679,26100),(680,32700),(681,15300),(682,27600),(683,7200),(684,30900),(685,32700),(686,7200),(687,12900),(688,19500),(689,15300),(690,12000),(691,26100),(692,27600),(693,24900),(694,24900),(695,2460),(696,24900),(697,30900),(698,26100),(699,28800),(700,15300),(701,22200),(702,2220),(703,19500),(704,23400),(705,22200),(706,33300),(707,5550),(708,19500),(709,26100),(710,22200),(711,24900),(712,28800),(713,22200),(714,22200),(715,16500),(716,21600),(717,40800),(718,17400),(719,19800),(720,9900),(721,19800),(722,26100),(723,19500),(724,26100),(725,12900),(726,19500),(727,6600),(728,6600),(729,6900),(730,2340),(731,11700),(732,30300),(733,26100),(734,0),(735,47400),(736,47400),(737,19500),(738,11700),(739,28800),(741,6900),(742,960),(743,420),(744,1080),(745,330),(746,420),(747,90),(748,270),(749,330),(750,150),(751,330),(752,60),(753,150),(754,330),(755,150),(756,390),(757,270),(758,420),(759,510),(760,660),(761,420),(762,39600),(763,210),(764,390),(765,2160),(766,420),(767,30),(768,540),(769,240),(770,2160),(771,390),(772,270),(773,510),(775,240),(776,6000),(777,0),(778,41400),(779,0),(780,270),(781,210),(782,30300),(783,30),(784,390),(785,210),(786,420),(787,30),(788,90),(789,150),(790,270),(791,390),(792,270),(793,51000),(794,390),(795,0),(804,60),(805,120),(806,2160),(808,480),(809,1620),(812,600),(813,0),(815,420),(816,1080),(817,420),(818,390),(819,6300),(821,8100),(822,0),(823,180),(824,13200),(825,420),(826,510),(827,2160),(828,210),(829,1080),(830,390),(831,390),(832,1620),(833,390),(834,480),(835,1080),(836,47100),(837,390),(838,4950),(840,1080),(841,0),(842,2160),(843,11100),(844,2160),(845,3300),(846,12600),(847,22200),(848,6300),(849,12600),(850,5250),(851,6000),(852,6600),(853,4800),(854,540),(855,6000),(857,14700),(858,8100),(860,60),(861,510),(862,11100),(863,10200),(864,43200),(865,8100),(866,6900),(867,6300),(868,10500),(869,3300),(870,2460),(871,2160),(872,6300),(873,16500),(874,3300),(875,6900),(876,11700),(877,6900),(878,9900),(879,9000),(880,6900),(881,8700),(882,10800),(883,7800),(884,8700),(885,9000),(886,60),(887,3600),(888,6900),(889,0),(890,480),(891,9300),(892,480),(893,11700),(894,3600),(895,6900),(896,10200),(897,14400),(898,11700),(899,11700),(900,2340),(901,3600),(902,6900),(903,6300),(905,7500),(906,18300),(907,10200),(908,16500),(909,18300),(910,60),(911,60),(913,11700),(914,15600),(915,60),(916,210),(917,330),(918,390),(919,480),(920,30),(921,210),(922,180),(923,600),(924,6000),(925,60),(926,0),(927,1080),(928,120),(929,210),(930,510),(931,510),(932,390),(933,480),(934,780),(935,1320),(936,4050),(937,540),(938,2160),(939,47400),(940,540),(941,2160),(942,9300),(943,14400),(944,3750),(945,8100),(947,7500),(948,3750),(949,7500),(950,5700),(951,11700),(952,1080),(953,2160),(954,1620),(955,2160),(956,3300),(957,2460),(958,2160),(959,8100),(960,0),(961,0),(962,8100),(963,5250),(964,39000),(965,4050),(966,8100),(967,6000),(968,11700),(969,57300),(970,9900),(971,16500),(972,0),(973,11700),(974,48900),(975,0),(976,17400),(977,40500),(978,48900),(979,26100),(980,24300),(981,15300),(982,7500),(983,510),(984,3600),(985,4650),(986,9300),(990,2220),(991,8700),(992,25800),(994,10500),(995,4650),(996,0),(997,120),(998,0),(999,0),(1000,4950),(1001,2760),(1002,4650),(1003,6900),(1004,4950),(1005,0),(1006,0),(1007,6900),(1008,8700),(1009,15300),(1010,4650),(1011,14100),(1012,20100),(1013,18900),(1014,19800),(1015,4950),(1016,11700),(1017,15300),(1018,4950),(1019,4950),(1020,11700),(1021,16200),(1022,14700),(1023,7500),(1024,4950),(1025,11700),(1026,13200),(1027,13800),(1028,10200),(1029,1380),(1030,10200),(1031,16200),(1032,16200),(1033,10500),(1034,11100),(1035,18300),(1036,5700),(1037,3600),(1038,3600),(1039,7200),(1040,3600),(1041,7200),(1042,1500),(1043,14700),(1044,18300),(1045,14700),(1046,18300),(1047,4950),(1048,43200),(1049,35100),(1050,35100),(1051,26100),(1052,12900),(1053,39300),(1054,12000),(1055,1380),(1056,4050),(1057,13200),(1058,12600),(1059,13200),(1060,9300),(1061,1920),(1062,8700),(1063,4050),(1064,2040),(1065,8100),(1066,11100),(1067,8400),(1068,11100),(1069,11700),(1070,4950),(1071,9900),(1072,4950),(1073,9900),(1074,4950),(1075,4950),(1076,9900),(1077,4950),(1078,12600),(1079,13200),(1080,13200),(1081,20400),(1082,5250),(1083,12600),(1084,13800),(1085,1020),(1086,13800),(1087,9000),(1088,14100),(1089,14100),(1090,13200),(1091,1080),(1092,7800),(1093,9900),(1094,4950),(1095,6600),(1096,13200),(1097,660),(1098,18300),(1099,0),(1100,6600),(1101,19800),(1102,19800),(1103,0),(1104,11100),(1105,14700),(1106,9900),(1107,19800),(1108,24900),(1109,18900),(1110,15300),(1111,10500),(1112,10500),(1113,26100),(1114,5250),(1115,10500),(1116,26100),(1117,26100),(1118,7500),(1119,31800),(1120,3150),(1121,3150),(1122,15600),(1123,12300),(1124,24300),(1125,48900),(1126,52500),(1127,0),(1130,0),(1131,14700),(1132,4650),(1133,0),(1134,9900),(1135,21900),(1136,33300),(1137,11700),(1138,7500),(1139,49800),(1140,13800),(1141,4650),(1142,21900),(1143,15300),(1144,21900),(1145,8700),(1146,12900),(1147,19800),(1148,19800),(1149,6300),(1150,14700),(1151,18300),(1152,7200),(1153,14100),(1154,11100),(1159,7200),(1160,31500),(1164,21000),(1166,34200),(1167,3450),(1168,27600),(1169,41100),(1170,2760),(1171,2760),(1172,34200),(1173,41400),(1175,17400),(1176,11100),(1177,21000),(1178,5550),(1179,14700),(1180,5550),(1181,2220),(1182,22200),(1183,5550),(1184,9900),(1185,26100),(1186,2220),(1187,27600),(1188,6900),(1189,6900),(1190,13500),(1191,0),(1192,0),(1193,0),(1194,13500),(1195,15300),(1196,3600),(1197,14100),(1198,17400),(1199,18300),(1200,19800),(1201,19800),(1202,19800),(1203,24600),(1204,23400),(1205,27600),(1206,19800),(1218,9900),(1219,4950),(1220,19800),(1221,18900),(1222,22200),(1238,14700),(1239,14700),(1240,19800),(1241,1380),(1242,1380),(1243,1380),(1244,14700),(1245,1500),(1246,1500),(1247,1500),(1248,4350),(1249,8700),(1250,1740),(1251,4950),(1252,4950),(1253,4950),(1258,26100),(1259,2640),(1260,5850),(1261,26100),(1262,26100),(1263,0),(1264,8700),(1265,1980),(1266,5250),(1267,35100),(1268,9900),(1269,5550),(1270,22200),(1271,0),(1272,0),(1273,27600),(1274,1380),(1275,17400),(1276,11100),(1281,0),(1282,1980),(1284,9900),(1285,2340),(1286,23400),(1287,23400),(1288,2340),(1301,4950),(1302,4950),(1318,85800),(1319,1980),(1320,9900),(1321,1980),(1322,22200),(1323,11100),(1324,17400),(1338,4650),(1339,3300),(1358,6300),(1359,660),(1360,30300),(1361,4050),(1362,4050),(1363,2760),(1364,27600),(1365,24600),(1366,22800),(1367,4350),(1368,4350),(1369,17400),(1370,9900),(1371,14700),(1372,2880),(1373,22200),(1374,22200),(1375,22200),(1380,36000),(1381,36000),(1382,14700),(1383,36000),(1384,16200),(1385,14700),(1386,16200),(1387,22800),(1388,2880),(1389,19800),(1391,21600),(1392,18600),(1393,23400),(1394,31500),(1395,24900),(1396,22200),(1398,28800),(1418,9900),(1419,26100),(1420,19500),(1421,19800),(1422,0),(1423,0),(1424,37800),(1425,21600),(1426,37800),(1427,30300),(1428,33300),(1429,31800),(1430,31800),(1431,3600),(1432,7200),(1433,1740),(1434,17400),(1435,17400),(1436,17400),(1437,12900),(1438,17400),(1439,17400),(1440,21600),(1442,0),(1444,31800),(1445,61200),(1446,68400),(1447,7500),(1448,30300),(1449,15000),(1450,7500),(1451,15000),(1452,30300),(1453,8700),(1454,24900),(1455,12300),(1456,24900),(1457,18600),(1458,17400),(1459,19800),(1462,0),(1463,0),(1464,0),(1465,12900),(1466,26100),(1467,26100),(1468,0),(1469,22500),(1470,480),(1471,360),(1472,60),(1473,360),(1474,480),(1475,61200),(1476,480),(1477,8400),(1478,120),(1479,60),(1480,8700),(1481,17400),(1482,19800),(1483,2520),(1484,1740),(1485,480),(1486,11400),(1487,15000),(1488,32700),(1489,1740),(1490,720),(1491,12300),(1492,540),(1498,360),(1499,60),(1500,0),(1501,480),(1502,120),(1503,510),(1504,360),(1505,60),(1506,120),(1507,60),(1508,120),(1509,120),(1510,240),(1511,480),(1512,120),(1513,360),(1514,0),(1515,360),(1516,150),(1517,150),(1518,270),(1519,150),(1520,120),(1521,270),(1522,240),(1523,240),(1524,360),(1525,480),(1526,600),(1527,600),(1528,240),(1529,240),(1530,120),(1531,480),(1532,480),(1534,360),(1535,240),(1536,360),(1558,60),(1559,0),(1560,51000),(1578,2160),(1579,1080),(1580,2160),(1581,420),(1582,8100),(1598,480),(1599,480),(1618,6900),(1638,60),(1639,60),(1640,120),(1641,0),(1642,60),(1643,240),(1644,480),(1645,0),(1646,60),(1647,240),(1648,480),(1649,120),(1650,480),(1651,240),(1652,600),(1653,240),(1654,15600),(1655,0),(1656,60),(1657,120),(1658,480),(1661,0),(1665,240),(1666,240),(1667,510),(1678,600),(1679,60),(1680,120),(1681,780),(1682,390),(1683,480),(1684,60),(1685,240),(1686,510),(1687,60),(1688,360),(1689,360),(1690,30300),(1691,31800),(1692,240),(1693,390),(1698,960),(1699,7800),(1700,3450),(1701,13800),(1702,2640),(1703,6900),(1704,3450),(1705,13800),(1706,18300),(1707,23700),(1708,10500),(1709,18300),(1710,11100),(1711,18300),(1712,19500),(1713,19500),(1714,0),(1715,240),(1716,240),(1717,120),(1718,120),(1719,480),(1738,480),(1739,360),(1740,18300),(1758,120),(1778,120),(1779,0),(1780,120),(1781,0),(1782,20400),(1783,360),(1784,360),(1785,600),(1786,360),(1787,360),(1788,600),(1789,0),(1790,0),(1791,1500),(1792,32700),(1793,0),(1794,0),(1795,480),(1796,15300),(1798,120),(1799,26100),(1800,60),(1801,120),(1802,480),(1803,120),(1804,480),(1805,480),(1806,13200),(1818,60),(1819,480),(1820,120),(1821,780),(1822,1080),(1823,960),(1824,9300),(1825,4650),(1838,21900),(1839,7200),(1840,7200),(1841,7200),(1842,7200),(1843,11100),(1844,7200),(1845,11100),(1846,7200),(1847,11100),(1848,18300),(1858,1620),(1859,120),(1860,240),(1861,510),(1878,0),(1879,60),(1880,510),(1881,60),(1882,510),(1883,60),(1884,510),(1885,120),(1886,2460),(1898,840),(1899,840),(1918,3300),(1919,660),(1920,6900),(1921,4800),(1938,13800),(1939,6300),(1940,9600),(1941,6300),(1942,12600),(1943,1260),(1944,12600),(1945,9600),(1946,12600),(1947,2340),(1948,26100),(1949,11700),(1950,11100),(1951,39300),(1952,26100),(1953,2640),(1954,19500),(1955,19500),(1956,32700),(1957,19500),(1958,26100),(1959,660),(1960,6900),(1961,4800),(1962,6300),(1963,2460),(1978,3300),(1998,5250),(1999,9300),(2000,1740),(2018,5250),(2019,1740),(2038,6300),(2039,1620),(2040,14100),(2041,1620),(2078,6900),(2098,9300),(2118,4650),(2138,6900),(2139,8100),(2158,60),(2159,60),(2160,60),(2161,60),(2178,2160),(2198,27600),(2199,20400),(2200,43200),(2201,45300),(2202,28800),(2203,31800),(2204,47400),(2205,120),(2206,510),(2218,240),(2238,510),(2239,510),(2240,39300),(2241,240),(2242,510),(2258,24900),(2259,720),(2260,3450),(2278,54300),(2279,45300),(2280,45300),(2281,720),(2282,9300),(2283,20400),(2284,41100),(2298,720),(2299,720),(2300,720),(2318,28800),(2338,2880),(2339,47400),(2340,15600),(2341,47400),(2342,30300),(2358,10500),(2359,480),(2360,120),(2378,720),(2379,0),(2380,720),(2381,8100),(2382,720),(2383,30),(2398,2640),(2399,60),(2418,21000),(2438,240),(2439,3600),(2440,3600),(2458,360),(2459,540),(2460,60),(2478,480),(2479,240),(2480,60),(2498,60),(2499,480),(2500,24900),(2501,31800),(2518,2760),(2519,60),(2520,2160),(2521,73500),(2522,0),(2523,0),(2541,420),(2561,660),(2581,40800),(2582,0),(2583,40800),(2584,0),(2585,40800),(2586,0),(2601,40800),(2602,0),(2603,40800),(2604,0),(2605,39300),(2606,3900),(2607,0),(2608,960),(2609,6900),(2621,10200),(2622,10200),(2623,48900),(2641,39300),(2661,3900),(2662,0),(2681,65400),(2701,52500),(2702,26100),(2721,54000),(2741,36300),(2742,36300),(2743,28500),(2744,57300),(2745,1500),(2746,3750),(2747,0),(2748,0),(10471,94800),(2749,0),(2750,0),(2751,16200),(2752,16200),(2753,21000),(2754,21000),(2755,2100),(2756,26100),(2757,12900),(2758,26100),(2759,12900),(2760,26100),(2761,33300),(2762,33300),(2763,33300),(2764,24900),(2765,33300),(2766,33300),(2767,41400),(2768,54300),(2769,3450),(2770,61200),(2771,33300),(2772,33300),(2773,33300),(2781,43200),(2782,18000),(2783,39000),(2784,4050),(2801,5250),(2821,34800),(2822,34800),(2841,29700),(2842,1980),(2843,0),(2844,29400),(2845,39300),(2846,51900),(2847,16500),(2848,24900),(2849,24900),(2850,24900),(2851,24900),(2852,24900),(2853,33300),(2854,16500),(2855,24900),(2856,24900),(2857,24900),(2858,24900),(2859,24900),(2860,33300),(2861,3450),(2862,21600),(2863,22500),(2864,3300),(2865,49800),(2866,22500),(2867,15000),(2869,22500),(2870,24900),(2871,33300),(2872,3300),(2873,33300),(2874,33300),(2875,33300),(2876,41400),(2877,37800),(2878,0),(2879,40800),(2880,33300),(2881,0),(2882,0),(2902,15000),(2903,30300),(2904,21900),(2922,15900),(2923,1260),(2924,21900),(2925,1500),(2926,19800),(2927,1320),(2928,21900),(2929,29700),(2930,21900),(2931,1380),(2932,28800),(2933,30300),(2934,33300),(2935,24900),(2936,49800),(2937,73500),(2938,73500),(2939,3600),(2940,3600),(2941,9300),(2942,40800),(2943,28200),(2944,37800),(2945,0),(2946,40800),(2947,18600),(2948,0),(2949,18600),(2950,0),(2951,0),(2952,14700),(2953,0),(2954,40800),(2962,21900),(2963,4050),(2964,40800),(2965,4050),(2966,40800),(2967,4050),(2968,40800),(2969,27000),(2970,27000),(2972,45300),(2973,33300),(2974,33300),(2975,22500),(2976,41400),(2977,4050),(2978,15000),(2979,34800),(2980,31800),(2981,7500),(2982,31800),(2983,240),(2984,240),(2985,240),(2986,240),(2987,30300),(2988,33300),(2989,37800),(2990,18000),(2991,54300),(2992,9000),(2993,18000),(2994,63600),(2995,27000),(2996,120),(2997,60),(2998,120),(2999,60),(3000,120),(3001,120),(3002,18000),(3022,18000),(3042,49800),(3062,51000),(3063,30600),(3065,30),(3082,30),(3083,30),(3084,30),(3085,30),(3086,30),(3087,30),(3088,30),(3089,30),(3090,30),(3091,30),(3092,30),(3093,30),(3094,30),(3095,30),(3096,30),(3097,30),(3098,30),(3099,30),(3100,30),(3101,30),(3102,30),(3103,30),(3104,30),(3105,30),(3106,30),(3107,30),(3108,30),(3109,30),(3110,30),(3112,30),(3113,30),(3114,30),(3115,30),(3116,30),(3117,30),(3118,30),(3119,30),(3120,30),(3121,16500),(3122,8400),(3123,36300),(3124,36300),(3125,33300),(3126,40800),(3127,40800),(3128,40800),(3129,40800),(3130,3000),(3141,5250),(3161,37800),(3181,30300),(3182,30300),(3201,30300),(3221,210),(3261,840),(3281,8100),(3301,6300),(3321,61200),(3341,43200),(3361,150),(3362,40800),(3363,0),(3364,120),(3365,270),(3366,15300),(3367,34800),(3368,34800),(3369,12000),(3370,12000),(3371,34800),(3372,34800),(3373,24300),(3374,4950),(3375,0),(3376,390),(3377,4050),(3378,51000),(3379,40800),(3380,31800),(3381,18600),(3382,0),(3385,40800),(3402,40800),(3421,0),(3441,3750),(3442,37800),(3443,37800),(3444,42300),(3445,31800),(3446,63600),(3447,63600),(3448,4350),(3449,21900),(3450,4350),(3451,4350),(3452,40800),(3453,4050),(3454,40800),(3461,66000),(3462,4050),(3463,66000),(3481,4050),(3483,0),(3501,48900),(3502,0),(3503,0),(3504,22800),(3505,34200),(3506,37800),(3507,63300),(3508,27000),(3509,54000),(3510,54000),(3511,27000),(3512,36600),(3513,15300),(3514,17700),(3517,44100),(3518,21900),(3519,60),(3520,31800),(3521,210),(3522,270),(3523,2220),(3524,2460),(3525,33300),(3526,3600),(3527,54300),(3528,68400),(3541,21900),(3542,21900),(3561,21900),(3562,33000),(3563,33000),(3564,33000),(3565,33000),(3566,51900),(3567,0),(3568,21900),(3569,4350),(3570,44100),(3601,57000),(3602,67500),(3621,40500),(3625,5400),(3626,13500),(3627,71400),(3628,85800),(3629,3600),(3630,3600),(3631,60),(3632,3600),(3633,3600),(3634,3600),(3635,3600),(3636,33300),(3637,3600),(3638,3600),(3639,27000),(3640,3600),(3641,27000),(3642,3600),(3643,27000),(3644,0),(3645,0),(3646,0),(3647,0),(3661,36300),(3681,120),(3701,47400),(3702,4650),(3721,61200),(3741,8100),(3761,40800),(3762,4050),(3763,4050),(3764,40800),(3765,8700),(3781,4050),(3782,4050),(3783,37800),(3784,4050),(3785,40800),(3786,40800),(3787,10200),(3788,4050),(3789,4050),(3790,4050),(3791,40800),(3792,0),(3801,4350),(3802,66000),(3803,0),(3804,0),(3821,44100),(3822,45600),(3823,44100),(3824,45600),(3825,45600),(3841,9000),(3842,18000),(3843,36300),(3844,11100),(3845,44100),(3861,0),(3881,45600),(3882,42300),(3883,44100),(3884,30600),(3901,150),(3902,180),(3903,30),(3904,120),(3905,210),(3906,44100),(3907,75900),(3908,44100),(3909,44100),(3911,47400),(3912,44100),(3913,21900),(3914,44100),(3921,2340),(3922,6300),(3923,2040),(3924,10800),(3941,11100),(3942,47400),(3961,23400),(3962,63300),(3981,66000),(3982,70800),(4001,59100),(4002,4650),(4003,83700),(4004,85800),(4005,47400),(4021,11700),(4022,47400),(4023,47400),(4024,81000),(4041,0),(4061,70800),(4062,11700),(4063,81000),(4081,66000),(4082,70800),(4083,48900),(4084,47400),(4101,48900),(4102,48900),(4103,0),(4104,0),(4105,0),(4106,0),(4107,0),(4108,0),(4109,0),(4110,0),(4111,0),(4112,0),(4113,0),(4114,0),(4115,0),(4116,0),(4117,0),(4118,0),(4119,0),(4120,44100),(4121,67500),(4122,54000),(4123,73500),(4124,3000),(4125,22500),(4126,73500),(4127,3150),(4128,4950),(4129,3150),(4130,3150),(4131,23700),(4132,81000),(4133,4950),(4134,73500),(4135,25800),(4136,68400),(4141,44100),(4142,33000),(4143,66000),(4144,34200),(4145,44100),(4146,44100),(4147,21900),(4148,34200),(4161,390),(4181,3600),(4182,47400),(4183,35400),(4184,35400),(4185,4650),(4186,47400),(4201,70800),(4221,0),(4222,0),(4223,4650),(4224,4650),(4241,70800),(4242,47400),(4243,22800),(4244,34200),(4245,57000),(4261,63300),(4262,44100),(4263,75900),(4264,54000),(4265,34800),(4266,51900),(4267,3450),(4281,23700),(4282,81000),(4283,50700),(4284,45600),(4285,34200),(4286,75900),(4287,34200),(4288,34200),(4289,48900),(4290,45600),(4291,45600),(4292,63300),(4293,44100),(4294,50700),(4295,0),(4296,20400),(4297,36300),(4298,3750),(4300,44100),(4301,48900),(4321,4500),(4322,81000),(4324,0),(4341,83700),(4342,13800),(4343,0),(4361,55800),(4362,83700),(4363,83700),(4381,0),(4382,0),(4383,0),(10939,0),(4384,0),(4385,0),(4386,0),(4401,0),(4402,240),(4403,0),(4421,47400),(4441,47400),(4442,47400),(4443,0),(4444,0),(4445,0),(4446,0),(4447,0),(4448,0),(4449,33300),(4450,43200),(4451,45300),(4461,0),(4462,0),(4463,0),(4464,0),(4465,0),(4466,0),(4467,0),(4481,0),(4482,0),(4483,0),(4484,0),(4485,2640),(4486,2640),(4487,60),(4488,60),(4489,60),(4490,60),(4491,48900),(4492,24300),(4493,4500),(4494,4500),(4495,150),(4496,45600),(4501,48900),(4502,48900),(4503,42300),(4504,47400),(4505,47400),(4506,47400),(4507,47400),(4508,4650),(4509,4650),(4510,70800),(4511,70800),(4512,54900),(4513,59100),(4521,50700),(4542,3000),(4561,0),(4581,3600),(4601,0),(4602,0),(4603,0),(4604,0),(4605,14700),(4606,14700),(4621,85800),(4641,30),(4642,61200),(4661,0),(4681,4650),(4701,83700),(4721,55800),(4722,1620),(4723,1620),(4724,83700),(4725,3300),(4726,44100),(4727,3300),(4728,2340),(4729,83700),(4730,3450),(4731,4350),(4732,4350),(4733,4350),(4734,85800),(4735,85800),(4736,3750),(4737,3750),(4738,3750),(4739,3750),(4740,10200),(4741,54000),(4742,85800),(4743,85800),(4761,660),(4762,4800),(4763,10200),(4764,85800),(4765,57300),(4766,5700),(4767,10500),(4768,85800),(4769,5700),(4770,14100),(4771,85800),(4781,13800),(4782,9300),(4783,22200),(4784,16500),(4785,0),(4786,29400),(4787,51000),(4788,81000),(4801,0),(4802,0),(4803,0),(4804,0),(4805,0),(4806,0),(4807,0),(4808,23400),(4809,47400),(4810,23400),(4811,2340),(4812,2340),(4813,4650),(4821,12600),(4822,60),(4841,12000),(4842,50700),(4861,27900),(4862,83700),(4863,27900),(4864,55800),(4865,6300),(4866,85800),(4867,85800),(4881,13800),(4882,27900),(4883,55800),(4901,41700),(4902,52500),(4903,85800),(4904,14100),(4906,47400),(4907,5700),(4921,6900),(4941,57300),(4961,19500),(4962,19500),(4963,19500),(4964,32700),(4965,9900),(4966,13800),(4967,9900),(4968,9900),(4969,9900),(4970,0),(4971,50700),(4972,50700),(4973,0),(4974,85800),(4975,32700),(4976,12900),(4981,83700),(4982,83700),(4983,55800),(4984,35400),(4985,37800),(4986,50700),(4987,50700),(5001,83700),(5002,55800),(5021,21900),(5022,21900),(5023,21900),(5041,4650),(5042,0),(5043,0),(5044,0),(5045,0),(5046,0),(5047,57300),(5048,44100),(5049,44100),(5050,21900),(5051,47400),(5052,7500),(5054,50700),(5055,54000),(5056,71400),(5057,28500),(5058,0),(5059,0),(5060,61200),(5062,13200),(5063,0),(5064,13800),(5065,67500),(5066,4050),(5067,0),(5068,0),(5081,85800),(5082,50700),(5083,25200),(5084,37800),(5085,37800),(5086,50700),(5087,52500),(5088,13800),(5089,85800),(5090,4050),(5091,4050),(5092,44100),(5093,4050),(5094,4050),(5095,4050),(5096,45600),(5097,50700),(5098,50700),(5101,270),(5102,85800),(5103,57300),(5121,69600),(5122,0),(5123,27900),(5124,71400),(5125,85800),(5126,5700),(5127,85800),(5128,55800),(5141,36600),(5142,24300),(5143,36600),(5144,36600),(5145,36600),(5146,36600),(5147,14100),(5148,36600),(5149,24300),(5150,0),(5151,18300),(5152,25200),(5153,37800),(5154,50700),(5155,42300),(5156,59100),(5157,33000),(5158,21900),(5159,23400),(5160,57300),(5161,5700),(5162,57300),(5163,67500),(5164,5700),(5165,48900),(5166,85800),(5167,85800),(5168,50700),(5181,52500),(5201,0),(5202,48900),(5203,48900),(5204,39000),(5206,57300),(5210,25200),(5211,48900),(5212,85800),(5213,85800),(5214,85800),(5215,4500),(5216,45600),(5217,22800),(5218,0),(5219,48900),(5220,24300),(5221,0),(5222,48900),(5223,24300),(5224,0),(5225,54000),(5226,27000),(5227,0),(5228,4500),(5229,45600),(5230,22800),(5231,48900),(5232,24300),(5233,48900),(5234,24300),(5235,54000),(5236,27000),(5237,81000),(5238,81000),(5241,25200),(5242,81000),(5243,85800),(5244,5100),(5245,50700),(5246,50700),(5247,52500),(5248,40500),(5249,5100),(5250,5100),(5251,85800),(5252,40500),(5253,54000),(5261,60),(5262,85800),(5263,85800),(5264,57300),(5265,85800),(5281,57300),(5282,85800),(5283,26100),(5284,26100),(5301,26100),(5302,26100),(5305,85800),(5306,85800),(5307,85800),(5321,9300),(5341,85800),(5342,71400),(5343,85800),(5344,71400),(5361,14700),(5381,23400),(5382,85800),(5383,57300),(5384,85800),(5385,65400),(5386,16500),(5401,0),(5402,0),(5403,0),(5404,0),(5405,0),(5406,0),(5407,0),(5408,0),(5421,0),(5441,270),(5461,57300),(5462,42900),(5463,85800),(5464,71400),(5465,42900),(5466,85800),(5481,120),(5482,330),(5501,18600),(5502,120),(5503,0),(5504,57300),(5505,85800),(5507,57300),(5508,0),(5509,0),(5510,0),(5511,85800),(5513,57300),(5514,0),(5515,85800),(5517,71400),(5518,57300),(5519,0),(5521,71400),(5522,42900),(5524,71400),(5525,57300),(5526,85800),(5527,57300),(5528,0),(5529,81000),(5531,14400),(5533,4950),(5534,57000),(5535,36300),(5536,36300),(5537,39000),(5538,0),(5541,330),(5542,50700),(5543,50700),(5544,50700),(5545,480),(5561,13800),(5581,29400),(5582,0),(5601,4950),(5621,150),(5622,60),(5623,60),(5624,150),(5625,150),(5626,60),(5627,0),(5628,120),(5629,120),(5630,120),(5631,120),(5632,120),(5633,120),(5634,0),(5635,120),(5636,120),(5637,120),(5638,120),(5639,0),(5640,120),(5641,0),(5642,120),(5643,120),(5644,120),(5645,120),(5646,120),(5647,120),(5648,150),(5649,60),(5650,150),(5651,60),(5652,0),(5654,120),(5655,120),(5656,120),(5657,120),(5658,0),(5660,120),(5661,120),(5662,120),(5663,120),(5672,0),(5673,120),(5674,120),(5675,120),(5676,0),(5677,120),(5678,120),(5679,0),(5680,0),(5713,6300),(5721,71400),(5722,5250),(5723,9600),(5724,10500),(5725,10500),(5726,2160),(5727,1080),(5728,10500),(5729,660),(5730,8700),(5741,17400),(5742,5100),(5761,10500),(5762,7500),(5763,7500),(5781,52500),(5801,39000),(5802,39000),(5803,42900),(10467,94800),(5804,42900),(5805,0),(5821,19800),(5841,0),(5842,0),(5843,0),(5844,0),(5845,54000),(5846,54000),(5847,0),(5848,85800),(5861,42900),(5862,57300),(5863,39300),(5881,6900),(5882,36600),(5883,36600),(5884,36600),(5885,36600),(5886,36600),(5887,36600),(5888,36600),(5889,36600),(5890,36600),(5891,36600),(5892,0),(5893,0),(5901,48900),(5902,24300),(5903,48900),(5904,24300),(5921,120),(5922,120),(5923,60),(5924,60),(5925,60),(5926,60),(5927,60),(5928,60),(5929,240),(5930,240),(5931,60),(5932,60),(5941,28500),(5942,85800),(5943,23400),(5944,85800),(5961,12600),(5981,0),(6001,480),(6002,480),(6004,50700),(6021,36600),(6022,54000),(6023,52500),(6024,57300),(6025,54000),(6026,54000),(6027,29400),(6028,21900),(6029,21900),(6030,21900),(6031,48900),(6032,48900),(6041,54000),(6042,54000),(6061,480),(6062,480),(6063,480),(6064,480),(6065,60),(6066,60),(6067,60),(6068,60),(6069,60),(6070,60),(6071,60),(6072,60),(6073,60),(6074,60),(6075,60),(6076,60),(6081,240),(6082,480),(6083,480),(6084,480),(6085,480),(6086,240),(6087,480),(6088,480),(6089,240),(6101,480),(6102,480),(6103,240),(6121,60),(6122,360),(6123,360),(6124,360),(6125,480),(6126,60),(6127,360),(6128,360),(6129,360),(6130,480),(6131,0),(6132,18600),(6133,57300),(6134,18600),(6135,57300),(6136,57300),(6141,2460),(6142,19800),(6143,21000),(6144,5700),(6145,57300),(6146,57300),(6147,28500),(6148,71400),(6161,21000),(6162,42300),(6163,85800),(6164,12300),(6181,120),(6182,5700),(6183,5700),(6184,42900),(6185,71400),(6186,57300),(6187,85800),(6221,0),(6241,0),(6261,120),(6281,240),(6282,12600),(6283,12600),(6284,9900),(6285,660),(6301,8400),(6321,120),(6322,120),(6323,240),(6324,660),(6341,120),(6342,240),(6343,660),(6344,120),(6361,120),(6362,240),(6363,120),(6364,660),(6365,120),(6381,12000),(6382,2340),(6383,0),(6384,240),(6385,120),(6386,660),(6387,120),(6388,120),(6389,48900),(6390,48900),(6391,240),(6392,660),(6393,12000),(6394,270),(6395,270),(6401,6000),(6402,5700),(6403,85800),(6421,8100),(6441,12600),(6442,8700),(6461,8700),(6462,11700),(6481,9300),(6482,14400),(6501,57300),(6502,85800),(6503,11700),(6504,21900),(6521,31500),(6522,31500),(6523,8100),(6541,900),(6542,900),(6543,10800),(6544,14400),(6545,0),(6546,0),(6547,0),(6548,8100),(6561,19800),(6562,2640),(6563,10500),(6564,7800),(6565,18900),(6566,5700),(6567,28500),(6568,42900),(6569,85800),(6570,42900),(6571,16500),(6581,0),(6582,57300),(6583,57300),(6584,57300),(6585,57300),(6601,42900),(6602,85800),(6603,5100),(6604,5550),(6605,4650),(6606,5700),(6607,33300),(6608,8400),(6609,8400),(6610,33300),(6611,8400),(6612,8400),(6621,15900),(6622,33300),(6623,8400),(6624,33300),(6625,8400),(6626,24600),(6627,1500),(6628,1500),(6629,8100),(6641,13800),(6642,0),(6643,0),(6644,0),(6645,0),(6646,0),(6661,2160),(6662,210),(6681,11700),(6701,0),(6721,60),(6722,60),(6741,0),(6761,4950),(6762,12300),(6781,0),(6801,0),(6804,37800),(6805,52500),(6821,71400),(6822,85800),(6823,85800),(6824,85800),(6825,0),(6826,0),(6827,0),(6843,0),(6844,26100),(6845,65400),(6846,0),(6847,0),(6848,0),(6861,0),(6862,0),(6881,0),(6901,0),(6921,19800),(6922,21900),(6941,0),(6942,0),(6943,0),(6961,60),(6962,120),(6963,120),(6964,60),(6981,18900),(6982,0),(6983,240),(6984,360),(6985,0),(7001,0),(7002,0),(11258,120600),(7003,37800),(7021,60),(7022,60),(7023,60),(7024,60),(7025,120),(7026,0),(7027,0),(7028,54300),(7029,54300),(7041,54300),(7042,120),(7043,240),(7044,58800),(7045,360),(7046,48900),(7061,60),(7062,60),(7063,60),(7064,63600),(7065,63600),(7066,63600),(7067,56400),(7068,43200),(7070,43200),(7081,480),(7082,480),(7101,480),(7102,132300),(7121,60),(7122,75900),(7123,60),(7124,480),(7141,720),(7142,720),(7161,480),(7162,75900),(7163,480),(7164,480),(11257,120600),(7165,600),(7166,720),(7167,720),(11256,12000),(7168,480),(7169,480),(7170,600),(11255,75900),(7171,720),(7172,720),(7181,85800),(7201,70800),(7202,85800),(7221,5700),(7222,5700),(7223,480),(7224,480),(7241,480),(7261,480),(7281,480),(7282,480),(7301,480),(7302,480),(7321,15300),(7341,0),(7342,0),(7361,57300),(7362,57300),(7363,57300),(7364,57300),(7365,57300),(7366,57300),(7367,480),(7368,480),(7381,0),(7382,0),(7383,780),(7385,0),(11254,60300),(7386,0),(7401,57300),(7402,57300),(7421,0),(7422,0),(7423,0),(7424,0),(7425,0),(7426,0),(7427,0),(7428,0),(7429,0),(7441,81000),(7461,85800),(7462,5700),(7463,720),(7481,85800),(7482,85800),(7483,0),(7484,0),(7485,0),(7486,85800),(7487,57300),(7488,78300),(7489,78300),(7490,85800),(7491,85800),(7492,13200),(7493,0),(7494,13200),(7495,85800),(7496,85800),(7497,0),(7498,85800),(7499,85800),(7500,85800),(7501,85800),(7502,85800),(7503,85800),(7504,85800),(7505,85800),(7506,85800),(7507,85800),(7508,0),(7509,85800),(7521,60),(7522,0),(7541,12900),(7562,60),(7563,600),(7564,240),(7581,720),(7582,480),(7583,480),(7601,0),(7602,480),(7603,600),(7604,57300),(7621,0),(7622,85800),(7623,480),(7624,480),(7625,480),(7626,480),(7627,480),(7628,480),(7629,720),(7630,480),(7631,720),(7632,85800),(7633,0),(7634,85800),(7635,85800),(7636,85800),(7637,0),(7638,60),(7639,60),(7640,480),(7641,60),(7642,0),(7643,720),(7644,600),(7645,0),(7646,240),(7647,720),(7648,480),(7649,85800),(7650,85800),(7651,85800),(7652,0),(7653,0),(7654,0),(7655,0),(7656,0),(7657,0),(7658,0),(7659,0),(7660,0),(7661,0),(7662,0),(7663,0),(7664,0),(7665,0),(7666,0),(7667,42900),(7668,85800),(7669,0),(7670,60),(7671,0),(7672,0),(7673,0),(7674,0),(7675,0),(7676,0),(7677,0),(11253,90600),(7678,0),(7681,120),(7682,120),(7701,40800),(7703,85800),(7721,37800),(7722,40800),(7723,39300),(7724,39300),(7725,0),(7726,0),(7727,39300),(7728,37800),(7729,37800),(7730,33300),(7731,36300),(7732,37800),(7733,37800),(7734,37800),(7735,0),(7736,0),(7737,0),(7738,0),(7741,55800),(7761,85800),(7781,85800),(7782,85800),(7783,85800),(7784,85800),(7785,0),(7786,85800),(7787,85800),(7788,12000),(7789,12000),(7791,5700),(7792,5700),(7793,14400),(7794,28500),(7795,57300),(7796,0),(7797,0),(7798,14400),(7799,28500),(7800,57300),(7801,0),(7802,5700),(7803,14400),(7804,28500),(7805,57300),(7806,0),(7807,5700),(7808,14400),(7809,28500),(7810,4950),(7811,57300),(7812,0),(7813,5700),(7814,14400),(7815,40800),(7816,37800),(7817,28500),(7818,57300),(7819,0),(7820,5700),(7821,14400),(7822,28500),(7823,57300),(7824,57300),(7825,0),(7826,5700),(7827,14400),(7828,37800),(7829,37800),(7830,37800),(7831,28500),(7832,0),(7833,5700),(7834,14400),(7835,28500),(7836,57300),(7837,0),(7838,0),(7839,37800),(7840,39300),(7841,37800),(7842,47100),(7843,51000),(7844,37800),(7845,42300),(7846,52800),(7847,42300),(7848,57300),(7849,40800),(7850,51000),(7861,52800),(7862,42300),(7863,1860),(7864,3150),(7865,7500),(7866,1860),(7867,3150),(7868,7500),(7871,19800),(7872,33300),(7873,48900),(7874,19800),(7875,33300),(7876,48900),(7877,5700),(7881,0),(7882,0),(7883,0),(7884,0),(7885,0),(7886,0),(11252,241200),(7887,0),(7888,0),(7889,0),(7890,0),(7891,0),(7892,0),(7893,0),(7894,0),(7895,0),(7896,0),(7897,0),(7898,0),(7899,0),(7900,0),(7901,0),(7902,0),(7903,0),(7905,60),(7906,0),(7907,0),(7908,4950),(7921,0),(11251,12000),(7922,0),(7923,0),(11250,152400),(7924,0),(7925,0),(7926,60),(7927,0),(7928,0),(7929,0),(7930,0),(7931,0),(7932,0),(7933,0),(7934,0),(7935,0),(7936,0),(7937,0),(7938,0),(7939,0),(7940,0),(7941,0),(7942,0),(7943,0),(7944,0),(7945,0),(7946,0),(7961,0),(7981,0),(8001,0),(11249,152400),(8002,0),(8021,0),(8023,0),(8026,0),(8041,57300),(8042,57300),(8043,57300),(8044,57300),(8045,57300),(8046,57300),(8047,57300),(8048,57300),(8049,57300),(8050,57300),(8051,57300),(8052,57300),(8053,57300),(8054,57300),(8055,57300),(8056,57300),(8057,57300),(8058,57300),(8059,57300),(8060,57300),(8061,57300),(8062,57300),(8063,57300),(8064,57300),(8065,57300),(8066,57300),(8067,57300),(8068,57300),(8069,57300),(8070,57300),(8071,57300),(8072,57300),(8073,57300),(8074,57300),(8075,57300),(8076,57300),(8077,57300),(8078,57300),(8079,57300),(8080,48900),(8081,0),(8101,57300),(8102,57300),(8103,57300),(8104,57300),(8105,48900),(8106,57300),(8107,57300),(8108,57300),(8109,57300),(8110,57300),(8111,57300),(8112,57300),(8113,57300),(8114,85800),(8115,85800),(8116,57300),(8117,57300),(8118,57300),(8119,57300),(8120,48900),(8121,85800),(8122,85800),(8123,48900),(8124,0),(11248,12000),(8141,57300),(8142,57300),(8143,57300),(8144,57300),(8145,57300),(8146,57300),(8147,57300),(8148,57300),(8149,480),(8150,480),(8151,4350),(8153,44100),(8154,33300),(8155,12000),(8156,19800),(8157,0),(11247,120600),(8158,0),(11246,120600),(8159,0),(11245,120600),(8160,33300),(8161,19800),(8162,12000),(8163,0),(8164,0),(11244,75900),(8165,0),(11243,75900),(8166,33300),(8167,19800),(8168,12000),(8169,33300),(8170,19800),(8171,12000),(8181,54000),(8182,81000),(8183,85800),(8184,0),(11241,150900),(8185,0),(11240,120600),(8186,0),(11239,120600),(8187,0),(8188,0),(11238,152400),(8189,0),(11237,121800),(8190,0),(11236,152400),(8191,0),(11235,120600),(8192,0),(11234,60300),(8193,0),(11007,0),(8194,0),(8195,0),(8196,0),(11233,150900),(8201,85800),(8221,0),(8222,0),(8223,0),(8224,0),(10460,75900),(8225,0),(8227,5700),(8228,0),(8229,0),(8230,0),(8231,44100),(8232,66000),(8233,4350),(8234,44100),(8235,44100),(8236,66000),(8238,0),(8239,0),(11232,120600),(8240,57300),(8241,0),(8242,0),(8243,0),(8246,0),(11231,120600),(8249,0),(8250,4350),(8251,44100),(8252,44100),(8253,66000),(8254,4350),(8255,44100),(8256,44100),(8257,66000),(8258,85800),(8259,0),(8260,1860),(8261,3150),(8262,7500),(8263,1860),(8264,3150),(8265,7500),(8266,5700),(11230,120600),(8267,0),(11229,30300),(8268,5700),(11228,7500),(8269,0),(8271,60),(8272,60),(8273,36300),(8275,24300),(8276,24300),(8277,48900),(8278,52500),(8279,71400),(8280,48900),(8281,52500),(8282,54000),(8283,69600),(8284,54000),(8285,41700),(8286,57300),(8287,57300),(8288,57300),(8289,0),(8290,6300),(8291,57300),(8292,0),(11227,120600),(8293,0),(8294,57300),(8295,6300),(8296,0),(8297,57300),(8298,0),(11224,120600),(8299,57300),(8300,0),(8301,57300),(8302,0),(8303,0),(8304,57300),(8305,57300),(8306,71400),(8307,26100),(8308,71400),(8309,57300),(8310,57300),(8311,7500),(8312,60),(8313,52500),(8314,42900),(8315,71400),(8316,57300),(8317,26100),(8318,57300),(8319,0),(8320,57300),(8321,57300),(8322,120),(8323,55800),(8324,0),(8325,60),(8326,150),(8327,0),(8328,30),(8329,30),(8330,210),(8331,5700),(8332,57300),(8333,0),(8334,210),(8335,330),(8336,210),(8338,210),(8339,0),(8340,0),(8341,57300),(8342,0),(8343,5700),(8344,480),(8345,210),(8346,150),(8347,30),(8348,71400),(8349,5700),(8350,60),(8351,5700),(8352,85800),(8353,0),(8354,0),(8355,0),(8356,0),(8357,0),(8358,0),(8359,0),(8360,0),(8361,57300),(8362,0),(8363,0),(8364,0),(8365,33300),(8366,33300),(8367,480),(8368,8700),(8369,71400),(8370,14100),(8371,480),(8372,8700),(8373,120),(8374,14100),(8375,71400),(8376,57300),(8377,57300),(8378,57300),(8379,57300),(8380,57300),(8381,57300),(8382,57300),(8383,0),(11221,90600),(8384,0),(8385,0),(8386,0),(11218,120600),(8387,0),(8388,0),(11202,120600),(8389,0),(8390,0),(11199,12000),(8391,0),(11190,120600),(8392,0),(8393,24900),(8394,39300),(8395,55800),(8396,57300),(8397,0),(11189,121800),(8398,0),(11188,120600),(8399,14100),(8400,24900),(8401,39300),(8402,55800),(8403,57300),(8404,0),(11187,12000),(8405,0),(11182,150900),(8406,0),(11179,120600),(8407,0),(8408,0),(11175,12000),(11176,12000),(8409,120),(8410,33000),(8411,33000),(8412,44100),(8413,66000),(8414,44100),(8415,4350),(8416,21900),(8417,4350),(8418,66000),(8419,33000),(8420,33000),(8421,44100),(8422,66000),(8423,44100),(8424,44100),(8425,66000),(8426,14100),(8427,24900),(8428,39300),(8429,55800),(8430,57300),(8431,0),(8432,0),(11170,120600),(8433,0),(8434,0),(11168,60300),(8435,0),(8436,24900),(8437,39300),(8438,55800),(8439,57300),(8440,0),(11167,120600),(8441,0),(11157,120600),(8442,0),(8443,0),(11155,120600),(8446,85800),(8447,0),(8460,37800),(8461,48900),(8462,4950),(8463,270),(8464,54000),(8465,4950),(8466,0),(8467,0),(8468,330),(8469,0),(8470,48900),(8471,50700),(8472,270),(8473,480),(8474,510),(8475,330),(8476,510),(8477,510),(8478,240),(8479,1080),(8480,390),(8481,57300),(8482,420),(8483,480),(8484,85800),(8485,85800),(8486,330),(8487,480),(8488,480),(8489,330),(8490,510),(8491,390),(8492,0),(8493,0),(8494,0),(8495,0),(8496,0),(8497,0),(8498,0),(8499,0),(8500,0),(8501,0),(8502,0),(8503,0),(8504,0),(8505,0),(8506,0),(8507,0),(8508,0),(8509,0),(8510,0),(8511,0),(8512,0),(8513,0),(8514,0),(8515,0),(8516,0),(8517,0),(8518,0),(8519,57300),(8520,0),(8521,0),(8522,0),(8523,0),(8524,0),(8525,0),(8526,0),(8527,0),(8528,0),(8529,0),(8530,0),(8532,0),(8533,0),(8534,0),(8535,0),(8536,0),(8537,0),(8538,0),(8539,0),(8540,0),(8541,0),(8542,0),(8543,0),(8544,0),(8545,0),(8546,0),(11154,120600),(8547,0),(8548,0),(8549,0),(8550,0),(11153,120600),(8551,28800),(8552,20400),(8553,2880),(8554,43200),(8555,5700),(8556,57300),(8557,57300),(8558,57300),(8559,0),(8560,0),(8561,0),(8562,0),(8563,30),(8564,30),(8565,0),(8566,0),(8567,0),(8568,0),(8569,0),(8570,0),(8572,0),(8573,28500),(8574,0),(8575,57300),(8576,5700),(8577,57300),(8578,71400),(8579,57300),(8580,0),(8581,0),(8582,0),(8583,0),(11116,114000),(8584,5700),(8585,57300),(8586,57300),(8587,57300),(8588,0),(8589,0),(236,132300),(8590,0),(8591,0),(8592,0),(8593,0),(8594,0),(8595,0),(8596,0),(8597,57300),(8598,28500),(8599,28500),(8600,0),(8601,0),(8602,0),(8603,0),(8604,0),(8605,0),(8606,57300),(8607,0),(8608,0),(8609,0),(8610,0),(8611,0),(8612,0),(8613,0),(8614,0),(8615,0),(8616,0),(8618,0),(8619,0),(8620,57300),(8621,0),(8622,0),(8623,0),(8624,0),(8625,0),(8626,0),(8627,0),(8628,0),(8629,0),(8630,0),(8631,0),(8632,0),(8633,0),(8634,0),(8635,0),(8636,0),(8637,0),(8638,0),(8639,0),(8640,0),(8641,0),(8642,0),(8643,0),(8644,0),(8645,0),(8646,0),(8647,0),(8648,0),(8649,0),(8650,0),(8651,0),(8652,0),(8653,0),(8654,0),(8655,0),(8656,0),(8657,0),(8658,0),(8659,0),(8660,0),(8661,0),(8662,0),(8663,0),(8664,0),(8665,0),(8666,0),(8667,0),(8668,0),(8669,0),(8670,0),(8671,0),(8672,0),(8673,0),(8674,0),(8675,0),(8676,0),(8677,0),(8678,0),(8679,0),(8680,0),(8681,0),(8682,0),(8683,0),(8684,0),(8685,0),(8686,0),(8687,0),(8688,0),(8689,57300),(8690,57300),(8691,57300),(8692,57300),(8693,57300),(8694,57300),(8695,57300),(8696,57300),(8697,57300),(8698,57300),(8699,57300),(8700,57300),(8701,57300),(8702,57300),(8703,57300),(8704,57300),(8705,57300),(8706,57300),(8707,57300),(8708,57300),(8709,57300),(8710,57300),(8711,57300),(8712,57300),(8713,0),(8714,0),(8715,0),(8716,0),(8717,0),(8718,0),(8719,0),(8720,0),(8721,0),(8722,0),(8723,0),(8724,0),(8725,0),(8726,0),(8727,0),(8728,57300),(8729,85800),(8730,85800),(8731,0),(8732,0),(8733,57300),(8734,14400),(8735,57300),(8736,85800),(8737,0),(8738,0),(8739,0),(8740,0),(8741,57300),(8742,85800),(8743,0),(8744,0),(8745,57300),(8746,360),(8747,57300),(8748,57300),(8749,57300),(8750,57300),(8751,85800),(8752,57300),(8753,57300),(8754,57300),(8755,57300),(8756,85800),(8757,57300),(8758,57300),(8759,57300),(8760,57300),(8761,85800),(8762,360),(8763,0),(8764,0),(8765,0),(8766,0),(8767,0),(8768,0),(8769,0),(8770,0),(8771,0),(8772,0),(8773,0),(8774,0),(8775,0),(8776,0),(8777,0),(8778,0),(8779,0),(8780,0),(8781,0),(8782,0),(8783,0),(8784,0),(8785,0),(8786,0),(8787,0),(8788,0),(8789,0),(8790,0),(8791,85800),(8792,5700),(8793,5700),(8794,5700),(8795,5700),(8796,5700),(8797,5700),(8798,0),(8799,0),(8800,0),(8801,85800),(8802,85800),(8803,0),(8804,0),(8805,0),(8806,0),(8807,0),(8808,0),(8809,0),(8810,0),(8811,0),(8812,0),(8813,0),(8814,0),(8815,0),(8816,0),(8817,0),(8818,0),(8819,0),(8820,0),(8821,0),(8822,0),(8823,0),(8824,0),(8825,0),(8826,0),(8827,60),(8828,60),(8829,0),(8830,0),(8831,0),(8832,0),(8833,0),(8834,0),(8835,0),(8836,0),(8837,0),(8838,0),(8839,0),(8840,0),(8841,0),(8842,0),(8843,0),(8844,0),(8845,0),(8846,0),(8847,0),(8848,0),(8849,0),(8850,0),(8851,0),(8852,0),(8853,0),(8854,0),(8855,0),(8856,0),(8857,85800),(8858,85800),(8859,85800),(8860,0),(8861,0),(8862,0),(8863,0),(8864,0),(8865,0),(8866,0),(8867,0),(8868,480),(8869,71400),(8870,0),(8871,0),(8872,0),(8873,0),(8874,0),(8875,0),(8876,0),(8877,0),(8878,0),(8879,0),(8880,0),(8881,0),(8882,0),(8883,13200),(8884,390),(8885,600),(8886,420),(8887,420),(8888,60),(8889,390),(8890,510),(8891,510),(8892,390),(8893,0),(8894,510),(8895,90),(8896,0),(8897,0),(8898,0),(8899,0),(8900,0),(8901,0),(8902,0),(8903,0),(8904,0),(8905,0),(8906,0),(8907,0),(8908,0),(8909,0),(8910,0),(8911,0),(8912,0),(8913,0),(8914,0),(8915,0),(8916,0),(8917,0),(8918,0),(8919,0),(8920,57300),(8921,0),(8922,57300),(8923,57300),(8924,57300),(8925,57300),(8926,85800),(8927,85800),(8928,28500),(8929,57300),(8930,57300),(8931,85800),(8932,85800),(8933,85800),(8934,85800),(8935,85800),(8936,85800),(8937,85800),(8938,85800),(8939,85800),(8940,85800),(8941,85800),(8942,85800),(8943,85800),(8944,85800),(8945,71400),(8946,57300),(8947,57300),(8948,57300),(8949,57300),(8950,57300),(8951,85800),(8952,85800),(8953,85800),(8954,85800),(8955,85800),(8956,85800),(8957,85800),(8958,85800),(8959,85800),(8960,14400),(8961,57300),(8962,57300),(8963,57300),(8964,57300),(8965,57300),(8966,71400),(8967,71400),(8968,71400),(8969,71400),(8970,57300),(8977,57300),(8978,57300),(8979,0),(8980,0),(8981,0),(8982,0),(8983,0),(8984,0),(8985,57300),(8986,57300),(8987,57300),(8988,57300),(8989,71400),(8990,71400),(8991,71400),(8992,71400),(8993,0),(8994,57300),(8995,85800),(8996,5700),(8997,5700),(8998,5700),(8999,14400),(9000,14400),(9001,14400),(9002,14400),(9003,14400),(9004,14400),(9005,14400),(9006,14400),(9007,14400),(9008,14400),(9009,14400),(9010,14400),(9011,14400),(9012,14400),(9013,14400),(9014,14400),(9015,57300),(9016,85800),(9017,85800),(9018,85800),(9019,85800),(9020,85800),(9021,85800),(9022,85800),(9023,57300),(9024,0),(9025,0),(9026,0),(9027,0),(9028,0),(9029,0),(9030,57300),(9032,14400),(9033,57300),(9034,0),(9035,30),(9036,0),(9037,0),(9038,0),(9039,0),(9040,0),(9041,0),(9042,0),(9043,0),(9044,0),(9045,0),(9046,0),(9047,0),(9048,0),(9049,0),(9050,0),(9051,44100),(9052,44100),(9053,66000),(9054,0),(9055,0),(9056,0),(9057,0),(9058,0),(9059,0),(9060,0),(9061,0),(9062,150),(9063,4350),(9064,90),(9065,60),(9066,330),(9067,480),(9068,0),(9069,0),(9070,0),(9071,0),(9072,0),(9073,0),(9074,0),(9075,0),(9076,420),(9077,0),(9078,0),(9079,0),(9080,0),(9081,0),(9082,0),(9083,0),(9084,0),(9085,0),(9086,0),(9087,0),(9088,0),(9089,0),(9090,0),(9091,0),(9092,0),(9093,0),(9094,0),(9095,0),(9096,0),(9097,0),(9098,0),(9099,0),(9100,0),(9101,0),(9102,0),(9103,0),(9104,0),(9105,0),(9106,0),(9107,0),(9108,0),(9109,0),(9110,0),(9111,0),(9112,0),(9113,0),(9114,0),(9115,0),(9116,0),(9117,0),(9118,0),(9119,270),(9120,85800),(9121,0),(9122,0),(9123,0),(9124,57300),(9125,0),(9126,57300),(9127,0),(9128,57300),(9129,0),(9130,120),(9131,57300),(9132,0),(9133,240),(9134,120),(9135,660),(9136,57300),(9137,0),(9138,510),(9139,1080),(9140,6000),(9141,28500),(9142,0),(9143,2160),(9144,240),(9145,540),(9146,540),(9147,510),(9148,240),(9149,3300),(9150,2160),(9151,4650),(9152,1080),(9153,0),(9154,0),(9155,4650),(9156,15000),(9157,2160),(9158,4650),(9159,6300),(9160,1080),(9161,6900),(9162,6900),(9163,4650),(9164,11700),(9165,0),(9166,1740),(9167,15000),(9168,11700),(9169,8700),(9170,11700),(9171,6300),(9172,6900),(9173,6300),(9174,4200),(9175,6300),(9176,11400),(9177,8100),(9178,0),(9179,0),(9180,8100),(9181,0),(9182,0),(9183,0),(9184,0),(9185,0),(9186,0),(9187,0),(9188,0),(9189,3300),(9190,0),(9191,0),(9192,4650),(9193,7500),(9194,0),(9195,0),(9196,0),(9197,0),(9198,0),(9199,7500),(9200,0),(9201,0),(9202,0),(9203,0),(9204,0),(9205,0),(9206,0),(9207,4650),(9208,0),(9209,0),(9210,0),(9211,0),(9212,7500),(9213,0),(9214,8100),(9215,11700),(9216,6900),(9217,0),(9218,8100),(9219,0),(9220,11700),(9221,0),(9222,0),(9223,0),(9224,0),(9225,0),(9226,0),(9227,0),(9228,0),(9229,57300),(9230,57300),(9232,0),(9233,0),(9234,0),(9235,0),(9236,0),(9237,0),(9238,0),(9239,0),(9240,0),(9241,0),(9242,0),(9243,0),(9244,0),(9245,0),(9246,0),(9247,60),(9248,57300),(9249,0),(9250,57300),(9251,57300),(9252,480),(9253,120),(9254,240),(9255,240),(9256,180),(9257,85800),(9258,120),(9259,0),(9260,240),(9261,390),(9262,390),(9263,390),(9264,390),(9265,330),(9266,0),(9267,0),(9268,0),(9269,85800),(9270,85800),(9271,85800),(9272,0),(9274,2160),(9275,8700),(9276,8100),(9277,8700),(9278,0),(9279,30),(9280,60),(9281,8100),(9282,3450),(9283,120),(9284,0),(9285,0),(9286,0),(9287,60),(9288,60),(9289,60),(9290,60),(9291,60),(9292,0),(9293,90),(9294,150),(9295,240),(9299,240),(9300,240),(9301,240),(9302,240),(9303,270),(9304,240),(9305,210),(9309,60),(9310,0),(9311,390),(9312,60),(9313,330),(9314,60),(9315,1080),(9317,0),(9318,0),(9319,360),(9320,0),(9321,0),(9322,240),(9323,240),(9324,360),(9325,360),(9326,360),(9327,60),(9328,4950),(9329,60),(9330,360),(9331,360),(9332,360),(9333,0),(9334,0),(9335,0),(9336,0),(9337,0),(9338,0),(9339,360),(9340,60300),(9341,0),(9342,58800),(9343,0),(9344,29100),(9345,58800),(9346,58800),(9349,58800),(9351,58800),(9352,330),(9355,58800),(9356,58800),(9357,30),(9358,60),(9359,60),(9360,1080),(9361,58800),(9362,57300),(9363,540),(9364,480),(9365,360),(9366,60300),(9367,60),(9368,60),(9369,60),(9370,60300),(9371,30),(9372,62400),(9373,58800),(9374,60300),(9375,62400),(9376,62400),(9378,0),(9380,58800),(9381,62400),(9383,62400),(9385,62400),(9386,0),(9387,62400),(9388,9000),(9389,9000),(9390,15300),(9391,60300),(9392,30),(9393,30),(9394,60),(9395,60),(9396,60300),(9397,60300),(9398,60300),(9399,62400),(9400,60300),(9401,60300),(9402,120),(9403,510),(9404,510),(9405,30000),(9406,60300),(9407,14400),(9408,5700),(9409,30),(9410,60300),(9415,0),(9416,0),(9417,62400),(9418,62400),(9419,57300),(9420,60300),(9421,60),(9422,57300),(9423,15300),(9424,62400),(9425,4650),(9426,60300),(9427,60300),(9428,4650),(9429,4650),(9430,62400),(9431,13800),(9432,4650),(9433,13800),(9434,13800),(9435,14100),(9436,18600),(9437,22200),(9438,60300),(9439,26100),(9440,23400),(9441,62400),(9442,62400),(9443,54000),(9444,67500),(9446,67500),(9447,62400),(9448,23400),(9449,360),(9450,480),(9451,600),(9452,330),(9453,30),(9454,240),(9455,270),(9456,420),(9457,26100),(9460,2160),(9461,120),(9462,120),(9463,330),(9464,480),(9465,480),(9466,77700),(9467,480),(9468,600),(9469,25800),(9470,34800),(9471,31800),(9472,75600),(9473,420),(9474,54000),(9475,43200),(9476,34800),(9483,0),(9484,480),(9485,480),(9486,480),(9487,6900),(9488,6900),(9489,270),(9490,77700),(9491,8100),(9492,151800),(9493,151800),(9494,151800),(9495,151800),(9496,151800),(9498,6000),(9499,6000),(9500,120),(9501,480),(9502,120),(9503,480),(9504,480),(9505,330),(9506,390),(9508,480),(9509,720),(9510,60300),(9511,0),(9512,270),(9513,420),(9514,30),(9515,510),(9516,14700),(9517,13800),(9518,13800),(9519,13200),(9520,7200),(9521,3000),(9522,20100),(9523,420),(9524,114000),(9525,114000),(9526,14700),(9527,510),(9528,510),(9529,480),(9530,120),(9531,360),(9532,510),(9533,6000),(9534,14700),(9535,7200),(9536,20100),(9537,480),(9538,30),(9539,60),(9540,60),(9541,60),(9542,60),(9543,6300),(9544,780),(9545,77700),(9547,120),(9548,7500),(9549,7500),(9550,6900),(9551,120),(9552,480),(9553,120),(9554,600),(9555,120),(9556,42900),(9557,6900),(9558,6000),(9559,120),(9560,510),(9561,0),(9562,510),(9563,60300),(9564,1080),(9565,390),(9566,390),(9567,4650),(9568,6300),(9569,8100),(9570,2760),(9571,60),(9572,120600),(9573,1080),(9574,4650),(9575,120600),(9576,2160),(9578,8100),(9579,8100),(9580,6900),(9581,1080),(9582,510),(9584,4650),(9585,8100),(9586,270),(9587,120600),(9588,120600),(9589,124800),(9590,124800),(9591,480),(9592,480),(9593,480),(9594,4650),(9595,1080),(9598,240),(9600,480),(9601,4350),(9602,120),(9603,240),(9604,240),(9605,240),(9606,510),(9607,124800),(9608,124800),(9609,5550),(9610,37800),(9612,330),(9616,390),(9617,60),(9618,510),(9619,480),(9620,4650),(9621,4950),(9622,780),(9623,120),(9624,2160),(9625,270),(9626,9900),(9627,15000),(9628,4650),(9629,3300),(9630,0),(9631,37500),(9632,4800),(9633,6300),(9634,1080),(9635,57300),(9636,57300),(9637,75900),(9638,7500),(9639,7500),(9640,75900),(9641,6300),(9642,0),(9643,6300),(9644,75900),(9645,75900),(9646,7500),(9647,6900),(9648,4650),(9649,8100),(9663,2160),(9664,57300),(9665,57300),(9666,3300),(9667,4200),(9668,330),(9669,8700),(9670,8700),(9671,0),(9672,2040),(9673,240),(9674,8100),(9675,240),(9676,30),(9677,60),(9678,480),(9680,75900),(9681,240),(9682,8100),(9683,8700),(9684,240),(9685,600),(9686,480),(9687,8100),(9688,8700),(9689,9900),(9690,120),(9691,240),(9692,16500),(9693,660),(9694,6300),(9696,720),(9697,31500),(9698,6900),(9699,1740),(9700,6900),(9701,62400),(9702,64500),(9703,7500),(9704,60),(9705,120),(9706,6000),(9707,5550),(9708,62400),(9709,80100),(9710,0),(9711,8100),(9712,0),(9713,0),(9714,0),(9715,132000),(9716,62400),(9717,132000),(9718,46800),(9719,132000),(9720,80100),(9721,60),(9722,0),(9723,240),(9724,32400),(9725,600),(9726,64500),(9727,0),(9728,80100),(9729,82500),(9730,80100),(9731,62400),(9732,62400),(9733,32400),(9734,31500),(9735,600),(9736,360),(9737,720),(9738,132000),(9739,62400),(9740,8100),(9741,6000),(9742,0),(9743,64500),(9744,0),(9746,8100),(9747,60300),(9748,8100),(9749,8700),(9750,0),(9751,2040),(9752,62400),(9753,960),(9756,6900),(9757,60),(9758,60),(9759,14100),(9760,2340),(9761,11700),(9762,0),(9763,151800),(9764,75900),(9765,151800),(9766,0),(9767,75900),(9769,60300),(9770,60300),(9771,60300),(9772,60300),(9773,58800),(9774,60300),(9775,15300),(9776,15900),(9777,60300),(9778,6600),(9779,6900),(9780,60300),(9781,60300),(9782,60300),(9783,60300),(9784,0),(9785,32400),(9786,60300),(9787,60300),(9788,60300),(9789,67800),(9790,60300),(9791,60300),(9792,15900),(9793,15300),(9794,16200),(9795,16200),(9796,15300),(9797,15900),(9798,270),(9799,150),(9800,66000),(9801,60300),(9802,62400),(9803,75600),(9804,66000),(9805,66000),(9806,64500),(9807,0),(9808,64500),(9809,0),(9810,67800),(9811,4950),(9812,4950),(9813,9900),(9814,64500),(9815,67800),(9816,64500),(9817,77700),(9818,0),(9819,66000),(9820,80100),(9821,67800),(9822,64500),(9823,80100),(9824,75900),(9825,75900),(9826,37500),(9827,60300),(9828,60300),(9829,37500),(9830,64500),(9831,151800),(9832,151800),(9833,64500),(9834,64500),(9835,64500),(9836,151800),(9837,114000),(9838,37500),(9839,80100),(9840,75900),(9841,64500),(9842,64500),(9843,75900),(9844,75900),(9845,64500),(9846,60300),(9847,64500),(9848,64500),(9849,104700),(9850,69900),(9851,87600),(9852,107700),(9853,104700),(9854,66000),(9855,69900),(9856,87600),(9857,66000),(9858,67800),(9859,84900),(9860,114000),(9861,69900),(9862,69900),(9863,67800),(9864,17400),(9865,69900),(9866,0),(9867,69900),(9868,87600),(9869,17100),(9870,17100),(9871,69900),(9872,69900),(9873,69900),(9874,69900),(9875,0),(9876,6600),(9877,2340),(9878,69900),(9879,87600),(9882,67800),(9883,0),(9884,0),(9885,0),(9886,0),(9887,0),(9888,16200),(9889,66000),(9890,6600),(9891,16200),(9892,0),(9893,69900),(9894,60300),(9895,75600),(9896,60300),(9897,66000),(9898,60300),(9899,60300),(9900,69900),(9901,60300),(9902,64500),(9903,64500),(9904,64500),(9905,64500),(9906,66000),(9907,84900),(9910,66000),(9911,64500),(9912,6000),(9913,6900),(9914,67800),(9915,0),(9916,67800),(9917,66000),(9918,66000),(9919,64500),(9920,0),(9921,66000),(9922,84900),(9923,66000),(9924,67800),(9925,67800),(9926,0),(9927,67800),(9928,67800),(9929,62400),(9930,62400),(9931,67800),(9932,67800),(9933,84900),(9934,84900),(9935,67800),(9936,67800),(9937,104700),(9938,104700),(9939,67800),(9940,67800),(9941,62400),(9942,62400),(9943,15900),(9944,6900),(9945,69900),(9946,87600),(9947,15900),(9948,69900),(9949,64500),(9950,64500),(9951,80100),(9952,16200),(9953,16200),(9954,69900),(9955,87600),(9956,69900),(9957,15600),(9958,49500),(9959,49500),(9960,15600),(9961,15600),(9962,104700),(9963,16200),(9964,16200),(9965,66000),(9966,66000),(9967,104700),(9968,62400),(9969,66000),(9970,104700),(9971,62400),(9972,104700),(9973,104700),(9974,66000),(9975,66000),(9976,49500),(9977,107700),(9978,62400),(9979,31500),(9980,99000),(9981,99000),(9982,7200),(9983,7200),(9984,66000),(9985,66000),(9986,64500),(9987,64500),(9988,66000),(9989,66000),(9990,64500),(9991,18300),(9992,62400),(9993,62400),(9994,32400),(9995,32400),(9996,64500),(9997,64500),(9998,62400),(9999,72000),(10000,62400),(10001,72000),(10002,64500),(10003,64500),(10004,72000),(10005,93300),(10006,93300),(10007,64500),(10008,64500),(10009,72000),(10010,36000),(10011,107700),(10012,64500),(10013,64500),(10014,64500),(10015,64500),(10016,64500),(10017,64500),(10018,64500),(10019,0),(10020,80100),(10021,64500),(10022,80100),(10023,80100),(10024,66000),(10025,0),(10026,64500),(10027,64500),(10028,62400),(10029,33000),(10030,66000),(10031,66000),(10033,66000),(10034,66000),(10035,82500),(10036,82500),(10037,64500),(10038,15900),(10039,15900),(10040,66000),(10041,66000),(10042,82500),(10043,82500),(10044,7200),(10045,89700),(10046,28500),(10047,58800),(10048,64500),(10049,64500),(10050,58800),(10051,80100),(10052,80100),(10053,58800),(10054,58800),(10055,58800),(10056,58800),(10057,58800),(10058,58800),(10059,58800),(10060,58800),(10061,58800),(10062,58800),(10063,1920),(10064,840),(10065,7500),(10066,10200),(10067,8700),(10068,0),(10069,0),(10070,0),(10071,0),(10072,0),(10073,0),(10074,69900),(10075,52500),(10076,69900),(10077,52500),(10078,58800),(10079,58800),(10081,7200),(10082,72000),(10084,88200),(10085,72000),(10086,58800),(10087,58800),(10088,58800),(10089,73200),(10090,73200),(10091,151800),(10092,88200),(10093,15600),(10094,151800),(10095,151800),(10096,60300),(10097,147600),(10098,147600),(10099,58800),(10100,58800),(10101,72000),(10102,72000),(10103,14400),(10104,15300),(10105,15300),(10106,42900),(10107,51300),(10108,51300),(10109,67800),(10110,42900),(10111,84900),(10112,64500),(10113,6600),(10114,6600),(10115,64500),(10116,64500),(10117,64500),(10118,64500),(10119,14400),(10120,14400),(10121,5850),(10122,58800),(10123,58800),(10124,5850),(10125,60300),(10126,58800),(10127,60300),(10128,58800),(10129,75600),(10130,58800),(10131,58800),(10132,77700),(10133,75600),(10134,31500),(10135,6000),(10136,93300),(10137,58800),(10138,58800),(10139,75600),(10140,14400),(10141,5850),(10142,58800),(10143,5850),(10144,60300),(10145,60300),(10146,75600),(10147,75600),(10148,6000),(10149,93300),(10150,58800),(10151,58800),(10152,58800),(10153,58800),(10154,58800),(10155,58800),(10156,58800),(10157,75600),(10158,58800),(10159,62400),(10160,14400),(10161,58800),(10162,60300),(10163,60300),(10164,139800),(10165,135600),(10166,510),(10167,144000),(10168,89700),(10169,33000),(10170,7200),(10171,7200),(10172,18300),(10173,72000),(10174,18300),(10175,72000),(10176,72000),(10177,57000),(10178,151800),(10179,18300),(10180,18600),(10182,72000),(10183,18300),(10184,72000),(10185,72000),(10186,72000),(10187,18600),(10188,73800),(10189,72000),(10190,72000),(10191,89700),(10192,73800),(10193,72000),(10194,7200),(10195,0),(10196,0),(10197,72000),(10198,54000),(10199,72000),(10200,7200),(10201,49500),(10202,37500),(10203,73800),(10204,72000),(10205,73800),(10206,72000),(10207,5850),(10208,60300),(10209,73800),(10210,33000),(10211,33000),(10212,0),(10213,14400),(10214,58800),(10216,135600),(10218,135600),(10219,0),(10220,58800),(10221,72000),(10222,73800),(10223,73800),(10224,72000),(10225,7200),(10226,72000),(10227,6900),(10228,17400),(10229,5850),(10230,58800),(10231,69900),(10232,73800),(10233,73800),(10234,73800),(10235,73800),(10236,58800),(10237,18600),(10238,58800),(10239,73800),(10240,73800),(10241,72000),(10242,14400),(10243,72000),(10244,73800),(10245,72000),(10246,72000),(10247,7500),(10248,73800),(10249,110700),(10250,58800),(10251,34800),(10252,69900),(10253,104700),(10254,5700),(10255,62400),(10256,73800),(10257,151800),(10258,58800),(10259,57300),(10260,18300),(10261,72000),(10262,72000),(10263,7200),(10264,7200),(10265,73800),(10266,18600),(10267,73800),(10268,36900),(10269,73800),(10270,75900),(10271,75900),(10272,75900),(10273,75900),(10274,94800),(10275,75900),(10276,75900),(10277,7200),(10278,58800),(10279,6900),(10280,114000),(10281,18900),(10282,7200),(10283,144000),(10284,144000),(10285,7200),(10286,45600),(10287,30000),(10288,14400),(10289,14400),(10290,75900),(10291,28500),(10292,73800),(10293,73800),(10294,58800),(10295,62400),(10296,7500),(10297,151800),(10298,7500),(10299,72000),(10300,73800),(10301,73800),(10302,90),(10303,210),(10304,120),(10305,73800),(10306,73800),(10307,73800),(10308,0),(10309,72000),(10310,94800),(10311,7500),(10312,73800),(10313,72000),(10314,73800),(10315,75900),(10316,73800),(10317,75900),(10318,75900),(10319,73800),(10320,92400),(10321,73800),(10322,75900),(10323,75900),(10324,330),(10325,66000),(10326,0),(10327,0),(10328,75900),(10329,72000),(10330,73800),(10331,73800),(10332,73800),(10333,7500),(10334,55500),(10335,75900),(10336,75900),(10337,73800),(10338,75900),(10339,75900),(10340,5700),(10341,75900),(10342,72000),(10343,18600),(10344,5700),(10345,75900),(10346,0),(10347,0),(10348,73800),(10349,6300),(10350,240),(10351,77700),(10352,5700),(10353,75900),(10354,14400),(10355,60300),(10356,28500),(10357,57300),(10358,0),(10359,5700),(10360,14400),(10361,28500),(10362,57300),(10363,0),(10364,60),(10365,75900),(10366,60),(10367,60300),(10368,60300),(10369,75600),(10370,0),(10371,960),(10372,720),(10373,4050),(10374,4050),(10375,0),(10376,0),(10377,0),(10378,0),(10379,0),(10380,75900),(10381,57000),(10382,5850),(10383,0),(10384,37500),(10385,75900),(10386,5850),(10387,5850),(10388,5850),(10389,58800),(10390,58800),(10391,58800),(10392,58800),(10393,29100),(10394,58800),(10395,29100),(10396,58800),(10397,58800),(10398,58800),(10399,58800),(10400,93300),(10401,93300),(10403,15300),(10404,94800),(10405,75900),(10406,75900),(10407,94800),(10408,114000),(10409,114000),(10410,57000),(10411,75900),(10412,66000),(10413,94800),(10414,0),(10415,0),(10416,94800),(10417,36000),(10418,72000),(10419,0),(10420,94800),(10421,0),(10422,75900),(10423,7500),(10424,55500),(10425,75900),(10426,73800),(10427,92400),(10428,240),(10429,73800),(10430,7500),(10431,18900),(10432,75900),(10433,73800),(10434,7500),(10435,73800),(10436,73800),(10437,75900),(10438,75900),(10439,114000),(10440,18600),(10441,7500),(10442,5850),(10443,5850),(10444,6600),(10445,114000),(10446,82500),(10447,82500),(10448,6600),(10449,14400),(10450,57300),(10451,94800),(10454,0),(10455,67800),(10456,67800),(10457,67800),(10458,75900),(10459,75900),(10474,94800),(10476,69900),(10477,0),(10478,0),(10479,69900),(10480,75900),(10481,75900),(10482,54000),(10483,13500),(10484,54000),(10485,57300),(10486,67800),(10487,67800),(10488,67800),(10489,67800),(10490,120),(10491,120),(10492,57300),(10493,57300),(10494,85800),(10495,85800),(10496,85800),(10497,85800),(10498,14400),(10499,14400),(10500,5700),(10501,5700),(10502,67800),(10503,84900),(10504,67800),(10505,67800),(10506,67800),(10507,114000),(10508,94800),(10509,57000),(10510,67800),(10511,67800),(10512,67800),(10513,7500),(10514,75900),(10515,75900),(10516,67800),(10517,69900),(10518,87600),(10519,7500),(10520,4050),(10521,7500),(10522,94800),(10523,18900),(10524,67800),(10525,51300),(10526,87600),(10527,37500),(10528,57000),(10529,60),(10530,60),(10531,48900),(10532,75900),(10533,0),(10534,60),(10535,75900),(10536,0),(10537,75900),(10538,57300),(10539,60),(10540,94800),(10541,37500),(10542,67800),(10543,69900),(10544,84900),(10545,67800),(10546,18900),(10547,75900),(10548,8100),(10550,18900),(10551,0),(10552,0),(10553,6600),(10554,6600),(10555,67800),(10556,51300),(10557,15900),(10558,75900),(10559,0),(10560,75900),(10561,75900),(10562,73800),(10563,73800),(10564,73800),(10565,33900),(10567,67800),(10568,75900),(10569,73800),(10570,57000),(10571,75900),(10572,73800),(10573,7500),(10574,75900),(10575,37500),(10576,75900),(10577,57000),(10578,75900),(10579,37500),(10580,17400),(10581,17400),(10582,73800),(10583,73800),(10584,69900),(10585,73800),(10586,73800),(10587,75900),(10588,0),(10589,73800),(10590,44100),(10592,21900),(10593,66000),(10594,69900),(10595,73800),(10596,73800),(10597,73800),(10598,73800),(10599,7500),(10600,73800),(10601,73800),(10602,73800),(10603,73800),(10604,73800),(10605,60),(10606,73800),(10607,72000),(10608,69900),(10609,69900),(10610,0),(10611,73800),(10612,92400),(10613,92400),(10614,6900),(10615,15900),(10617,67800),(10618,66000),(10619,75900),(10620,69900),(10621,55500),(10622,0),(10623,55500),(10624,73800),(10625,73800),(10626,73800),(10627,73800),(10628,18900),(10629,58800),(10630,58800),(10632,69900),(10633,37500),(10634,114000),(10635,75900),(10636,75900),(10637,75900),(10639,0),(10640,37500),(10641,75900),(10642,73800),(10643,73800),(10644,37500),(10645,0),(10646,37500),(10647,94800),(10648,94800),(10649,151800),(10650,37500),(10651,114000),(10652,7500),(10653,75900),(10654,0),(10655,0),(10656,75900),(10657,69900),(10658,0),(10659,0),(10660,73800),(10661,73800),(10662,7500),(10663,7500),(10664,55500),(10665,147600),(10666,147600),(10667,151800),(10668,75900),(10669,75900),(10670,151800),(10671,69900),(10672,73800),(10673,75900),(10674,69900),(10675,89700),(10676,7500),(10677,73800),(10678,75900),(10679,94800),(10680,18900),(10681,18900),(10682,69900),(10683,75900),(10684,75900),(10685,75900),(10686,37500),(10687,75900),(10688,75900),(10689,37500),(10690,67800),(10691,37500),(10692,114000),(10693,0),(10694,0),(10695,0),(10696,0),(10697,0),(10698,0),(10699,0),(10700,0),(10701,72000),(10702,73800),(10703,73800),(10704,151800),(10705,151800),(10706,57000),(10707,114000),(10708,114000),(10709,17400),(10710,32400),(10711,32400),(10712,32400),(10713,69900),(10714,69900),(10715,69900),(10716,80100),(10717,69900),(10718,6900),(10719,6900),(10720,69900),(10721,69900),(10722,72000),(10723,72000),(10724,69900),(10725,94800),(10726,94800),(10727,94800),(10728,94800),(10729,75900),(10730,75900),(10731,75900),(10732,75900),(10733,94800),(10734,94800),(10735,94800),(10736,94800),(10737,94800),(10738,94800),(10739,94800),(10740,94800),(10741,94800),(10742,114000),(10744,94800),(10745,94800),(10747,72000),(10748,89700),(10749,6900),(10750,57000),(10751,94800),(10752,6900),(10753,52500),(10754,75900),(10755,75900),(10756,18900),(10757,75900),(10758,94800),(10759,7500),(10760,73800),(10761,7500),(10762,18900),(10763,75900),(10764,94800),(10765,94800),(10766,7500),(10767,7500),(10768,94800),(10769,114000),(10770,69900),(10771,69900),(10772,57000),(10773,94800),(10774,94800),(10775,94800),(10776,114000),(10777,73800),(10778,73800),(10779,60),(10780,73800),(10781,114000),(10782,73800),(10783,17400),(10784,69900),(10785,6900),(10786,89700),(10788,60),(10789,60),(10790,60),(10791,6600),(10792,58800),(10793,57000),(10794,1200),(10795,69900),(10796,69900),(10797,6900),(10798,6900),(10799,69900),(10800,69900),(10801,6900),(10802,89700),(10803,72000),(10804,75900),(10805,87600),(10806,114000),(10807,75900),(10808,92400),(10809,57300),(10810,18300),(10811,18900),(10812,18300),(10813,30000),(10814,18900),(10815,57000),(10816,75900),(10817,75900),(10818,6900),(10819,72000),(10820,54000),(10821,72000),(10822,0),(10823,0),(10824,75900),(10825,7200),(10826,75900),(10827,0),(10828,0),(10829,7200),(10830,89700),(10831,57000),(10832,57000),(10833,57000),(10834,75600),(10835,14400),(10836,75900),(10837,75900),(10838,73200),(10839,64500),(10840,66000),(10841,0),(10842,82500),(10843,72000),(10844,72000),(10845,72000),(10846,69900),(10847,60300),(10848,64500),(10849,15600),(10850,0),(10851,69900),(10852,64500),(10853,69900),(10854,75900),(10855,73800),(10856,73800),(10857,92400),(10858,18900),(10859,69900),(10860,69900),(10861,64500),(10862,62400),(10863,62400),(10864,58800),(10865,7200),(10866,114000),(10867,89700),(10868,60300),(10869,60300),(10870,0),(10871,0),(10872,114000),(10873,66000),(10874,66000),(10875,14400),(10876,77700),(10877,67800),(10878,62400),(10879,99000),(10880,32400),(10881,80100),(10882,151800),(10883,7500),(10884,114000),(10885,114000),(10886,114000),(10887,64500),(10888,114000),(10889,49500),(10891,30600),(10892,30600),(10893,69900),(10894,6900),(10895,71400),(10896,66000),(10897,151800),(10898,82500),(10899,75900),(10900,0),(10901,114000),(10902,151800),(10903,29100),(10904,72000),(10905,7500),(10906,7500),(10907,7500),(10908,6300),(10909,58800),(10470,94800),(10910,72000),(10911,72000),(10912,107700),(10913,66000),(10914,66000),(10915,66000),(10916,29100),(10917,66000),(10918,0),(10919,0),(10920,66000),(10921,66000),(10922,66000),(10923,66000),(10924,73800),(10925,0),(10926,49500),(10927,66000),(10928,66000),(10929,66000),(10930,82500),(10931,0),(10932,0),(10933,0),(10934,0),(10935,73200),(10936,5850),(10937,75600),(993,4650),(10944,94800),(10946,114000),(10947,114000),(10466,94800),(10948,37500),(10949,57000),(10985,75900),(10958,94800),(10462,75900),(10957,114000),(10959,114000),(10566,67800),(1289,2340),(1390,60),(10955,60),(10961,480),(10964,60),(10965,480),(10978,60),(10979,60),(10980,480),(10986,60),(10987,0),(10988,480),(10990,480),(10991,480),(10992,480),(10993,60),(10994,480),(11001,720),(2361,47400),(3482,1980),(5659,120),(9382,62400),(11048,6900),(11038,6900),(11047,6900),(10983,18900),(10984,7500),(10995,114000),(10996,114000),(10997,114000),(11037,6900),(11096,75900),(9599,2160),(11002,114000),(11003,114000),(11022,0),(11009,18900),(11025,75900),(11058,75900),(11080,57000),(11091,7500),(11031,0),(11032,0),(11033,0),(11034,0),(10998,114000),(11000,151800),(10940,0),(11076,94800),(11075,37500),(11054,75900),(11055,75900),(11107,0),(11092,75900),(11018,75900),(11017,75900),(11016,75900),(11015,75900),(11053,75900),(11084,75900),(11108,114000),(11120,0),(11431,0),(11442,0),(11409,0),(11318,0),(11117,0),(10941,0),(11098,7500),(10989,7500),(11404,60),(11356,7500),(11360,0),(11357,7500),(11131,480),(11361,0),(11439,0),(11440,0),(11449,0),(11450,0),(10938,0),(10475,94800),(10465,94800),(10469,94800),(10473,94800),(10463,75900),(10464,94800),(10468,94800),(10472,94800),(11021,37500),(11024,37500),(11028,37500),(11041,75900),(11081,75900),(11082,75900),(11400,0),(11419,0),(11123,1980),(11124,1980),(11126,19800),(11128,19800),(11130,7500),(11132,94800),(11133,19800),(11134,27600),(11136,2100),(11137,22200),(11138,2220),(11139,22200),(11140,22200),(11141,2220),(11142,27600),(11143,2340),(11144,23400),(11145,22200),(11146,22200),(11147,22200),(11148,23400),(11149,2460),(11150,24900),(11151,2460),(11152,30900),(11156,24900),(11158,24900),(11159,27600),(11160,24900),(11161,24900),(11162,34200),(11163,114000),(11164,94800),(11165,94800),(11166,114000),(11169,23400),(11171,0),(11172,2640),(11173,24900),(11174,26100),(11177,2100),(11178,0),(11180,21000),(11181,21000),(11183,26100),(11184,24900),(11185,23400),(11186,23400),(11191,1980),(11192,19800),(11193,1980),(11194,2100),(11195,0),(11196,94800),(11198,26100),(11200,22200),(11201,23400),(11203,2220),(11204,2340),(11205,24900),(11206,30900),(11207,24900),(11208,2460),(11209,22200),(11210,2220),(11211,2460),(11212,2220),(11213,2220),(11214,2460),(11215,2460),(11216,7500),(11217,26100),(11222,2220),(11223,27600),(11225,2100),(11335,480),(11336,480),(11337,480),(11338,480),(11339,480),(11340,480),(11341,480),(11342,480),(11354,114000),(11362,114000),(11363,114000),(11364,75900),(11368,114000),(11369,114000),(11370,114000),(11371,75900),(11372,114000),(11373,114000),(11374,114000),(11375,114000),(11376,75900),(11377,75900),(11378,114000),(11379,75900),(11380,75900),(11381,75900),(11382,114000),(11383,75900),(11384,114000),(11385,75900),(11386,114000),(11387,75900),(11388,114000),(11389,75900),(11425,0),(11451,37500),(11497,7500),(11498,7500),(11528,0),(11531,75900),(11558,0),(11004,75900),(10942,0),(10943,0),(10945,480),(10950,480),(10951,480),(10952,480),(10953,480),(10954,480),(10956,240),(10960,480),(10962,480),(10963,480),(10966,480),(10967,480),(10968,240),(10969,7500),(10970,75900),(10971,75900),(10972,0),(10973,75900),(10974,114000),(10976,114000),(10977,114000),(11005,75900),(11008,75900),(11010,75900),(11011,0),(11013,7500),(11014,0),(11020,75900),(11023,75900),(11026,75900),(11029,57000),(11030,75900),(11035,75900),(11036,6900),(11039,6900),(11040,6900),(11042,6900),(11043,6900),(11044,6900),(11045,6900),(11046,6900),(11049,94800),(11051,75900),(11052,114000),(11056,37500),(11057,0),(11059,114000),(11061,75900),(11062,7500),(11064,75900),(11065,75900),(11066,75900),(11067,75900),(11068,94800),(11069,94800),(11070,94800),(11071,114000),(11072,94800),(11073,114000),(11074,0),(11077,75900),(11078,114000),(11079,114000),(11083,75900),(11085,57000),(11086,75900),(11089,75900),(11090,75900),(11093,75900),(11094,75900),(11095,0),(11097,94800),(11099,75900),(11100,0),(11101,94800),(11102,75900),(11118,0),(11119,7500),(11122,0),(11129,390),(11135,75900),(11219,480),(11220,75900),(11242,600),(11293,0),(11294,0),(11321,0),(11401,60),(11403,600),(11405,60),(11407,0),(11408,0),(11412,0),(11413,0),(11441,0),(11446,0),(11454,0),(11486,0),(11487,0),(11006,0),(11063,0),(11109,0),(11110,0),(11111,0),(11112,0),(11113,0),(11114,0),(11012,0),(11019,0),(11050,0),(11060,7500),(11027,7500),(10461,75900),(10638,60),(10975,0),(10981,0),(10982,114000),(11103,0),(11104,0),(11105,0),(11106,0),(11392,7500),(11481,7500),(11482,7500),(11488,151800),(11490,75900),(11492,151800),(11496,57000),(11499,114000),(11500,75900),(11502,75900),(11503,75900),(11505,480),(11506,480),(11513,57000),(11514,57000),(11515,75900),(11516,57000),(11517,7500),(11518,0),(11520,57000),(11521,94800),(11523,57000),(11524,57000),(11525,57000),(11526,57000),(11532,57000),(11533,57000),(11534,7500),(11535,75900),(11536,75900),(11537,57000),(11538,57000),(11539,75900),(11540,75900),(11541,75900),(11542,75900),(11543,75900),(11544,94800),(11545,0),(11546,75900),(11547,75900),(11548,0),(11549,0),(11550,18900),(11554,0),(11555,0),(11556,0),(11557,0),(11577,0),(11580,480),(11581,480),(11583,240),(11584,240),(11657,480),(11665,0),(11666,0),(11667,0),(11668,0),(11669,0),(11691,75900),(11696,7500),(11731,480),(11732,480),(11734,480),(11735,480),(11736,480),(11737,480),(11738,480),(11739,480),(11740,480),(11741,480),(11742,480),(11743,480),(11744,480),(11745,480),(11746,480),(11747,480),(11748,480),(11749,480),(11750,480),(11751,480),(11752,480),(11753,480),(11754,480),(11755,480),(11756,480),(11757,480),(11758,480),(11759,480),(11760,480),(11761,480),(11762,480),(11763,480),(11764,480),(11765,480),(11766,480),(11767,480),(11768,480),(11769,480),(11770,480),(11771,480),(11772,480),(11773,480),(11774,480),(11775,480),(11776,480),(11777,480),(11778,480),(11779,480),(11780,480),(11781,480),(11782,480),(11783,480),(11784,480),(11785,480),(11786,480),(11787,480),(11799,480),(11800,480),(11801,480),(11802,480),(11803,480),(11804,240),(11805,240),(11806,240),(11807,240),(11808,240),(11809,240),(11810,240),(11811,240),(11812,240),(11813,240),(11814,240),(11815,240),(11816,240),(11817,240),(11818,240),(11819,240),(11820,240),(11821,240),(11822,240),(11823,240),(11824,240),(11825,240),(11826,240),(11827,240),(11828,240),(11829,240),(11830,240),(11831,240),(11832,240),(11833,240),(11834,240),(11835,240),(11836,240),(11837,240),(11838,240),(11839,240),(11840,240),(11841,240),(11842,240),(11843,240),(11844,240),(11845,240),(11846,240),(11847,240),(11848,240),(11849,240),(11850,240),(11851,240),(11852,240),(11853,240),(11854,240),(11855,240),(11856,240),(11857,240),(11858,240),(11859,240),(11860,240),(11861,240),(11862,240),(11863,240),(11874,0),(11875,75900),(11877,57000),(11880,57000),(11882,60),(11883,60),(11885,94800),(11886,480),(11891,480),(11915,60),(11917,10500),(11921,480),(11922,480),(11923,480),(11924,480),(11925,480),(11926,480),(11933,360),(11935,360),(11937,0),(11947,16200),(11948,30300),(11952,42300),(11953,57300),(11954,69900),(11955,37500),(11964,60),(11966,60),(11970,60),(11971,60),(11972,480),(11975,480),(11976,480),(12012,240),(12515,72000),(12513,72000),(12020,0),(12022,0),(12318,60),(12193,0),(12062,0),(12491,480),(11447,0),(12191,0),(12492,480),(12194,0),(11259,120600),(11260,152400),(11261,152400),(11262,241200),(11263,120600),(11264,152400),(11265,120600),(11266,121800),(11267,152400),(11268,120600),(11269,120600),(11270,120600),(11271,120600),(11272,180900),(11273,18900),(11274,18900),(11275,120600),(11276,57000),(11277,120600),(11278,30300),(11279,120600),(11280,120600),(11281,120600),(11282,120600),(11283,150900),(11284,120600),(11285,90600),(11286,120600),(11287,12000),(11288,120600),(11289,60300),(11290,75900),(11291,18900),(11292,75900),(11295,12000),(11296,121800),(11297,12000),(11298,120600),(11299,12000),(11300,120600),(11301,120600),(11302,7500),(11303,150900),(11304,12000),(11305,120600),(11306,90600),(11307,120600),(11308,30300),(11309,120600),(11310,150900),(11311,120600),(11312,12000),(11313,120600),(11314,120600),(11315,120600),(11316,120600),(11317,120600),(11319,120600),(11322,120600),(11323,120600),(11324,150900),(11325,120600),(11326,150900),(11327,120600),(11328,12000),(11329,75900),(11330,60300),(11331,12000),(11332,150900),(11333,120600),(11343,120600),(11344,120600),(11346,120600),(11348,120600),(11349,120600),(11350,120600),(11351,120600),(11352,120600),(11355,121800),(11358,121800),(11359,152400),(11365,121800),(11366,121800),(11367,152400),(11390,120600),(11391,120600),(11393,12000),(11394,120600),(11395,12000),(11396,150900),(11397,120600),(11398,12000),(11399,150900),(11402,18300),(11406,7500),(11410,120600),(11411,7500),(11414,120600),(11415,120600),(11416,120600),(11417,120600),(11418,57000),(11420,120600),(11421,150900),(11422,120600),(11423,120600),(11424,120600),(11426,120600),(11427,12000),(11428,150900),(11429,120600),(11430,120600),(11432,120600),(11433,120600),(11434,120600),(11436,12000),(11443,120600),(11448,12000),(11452,152400),(11453,152400),(11455,120600),(11456,120600),(11457,120600),(11458,120600),(11459,60300),(11460,120600),(11461,0),(11464,90600),(11465,120600),(11466,90600),(11467,150900),(11468,120600),(11469,120600),(11470,150900),(11471,150900),(11472,0),(11473,30300),(11474,12000),(11475,120600),(11476,30300),(11477,75900),(11478,30300),(11479,150900),(11480,30300),(11483,120600),(11484,120600),(11485,12000),(11489,12000),(11491,12000),(11494,150900),(11495,150900),(11501,12000),(11504,120600),(11507,60300),(11508,12000),(11509,30300),(11510,120600),(11511,120600),(11512,120600),(11519,90600),(11527,90600),(11529,90600),(11530,120600),(11559,120600),(11560,120600),(11561,120600),(11562,12000),(11563,120600),(11564,120600),(11565,12000),(11566,152400),(11567,120600),(11568,120600),(11569,120600),(11570,120600),(11571,120600),(11572,180900),(11573,30300),(11574,60300),(11575,60300),(11576,90600),(11578,330),(11579,330),(11582,90600),(11585,12000),(11586,12000),(11587,120600),(11590,120600),(11591,12000),(11592,152400),(11593,120600),(11594,120600),(11595,12000),(11596,12000),(11597,12000),(11598,120600),(11599,60300),(11600,90600),(11601,60300),(11602,120600),(11603,90600),(11604,30300),(11605,121800),(11606,120600),(11607,121800),(11608,120600),(11609,121800),(11610,152400),(11611,120600),(11612,121800),(11613,150900),(11614,30300),(11615,30300),(11616,30300),(11617,121800),(11618,30300),(11619,120600),(11620,90600),(11621,0),(11622,90600),(11623,121800),(11624,12000),(11625,120600),(11626,180900),(11627,121800),(11628,121800),(11629,12000),(11630,121800),(11631,12000),(11632,120600),(11633,121800),(11634,12000),(11635,120600),(11636,12000),(11637,121800),(11638,150900),(11639,120600),(11640,121800),(11641,121800),(11642,12000),(11643,120600),(11644,120600),(11645,120600),(11646,30300),(11647,121800),(11648,90600),(11649,120600),(11650,120600),(11651,30300),(11652,180900),(11653,120600),(11654,91500),(11655,120600),(11656,120600),(11658,120600),(11659,121800),(11660,120600),(11661,120600),(11662,120600),(11663,12000),(11664,150900),(11670,152400),(11671,120600),(11672,12000),(11673,152400),(11674,12000),(11675,120600),(11676,120600),(11677,120600),(11678,120600),(11679,0),(11680,12000),(11681,120600),(11682,60300),(11683,120600),(11684,120600),(11685,120600),(11686,120600),(11687,121800),(11688,120600),(11689,150900),(11690,120600),(11692,12000),(11693,120600),(11694,120600),(11695,120600),(11697,120600),(11698,120600),(11699,121800),(11700,12000),(11701,150900),(11702,12000),(11703,12000),(11704,12000),(11705,180900),(11706,150900),(11707,12000),(11708,12000),(11709,12000),(11710,120600),(11711,90600),(11712,120600),(11713,120600),(11714,120600),(11715,120600),(11716,120600),(11717,120600),(11718,120600),(11719,12000),(11720,12000),(11721,120600),(11722,90600),(11723,150900),(11724,120600),(11725,12000),(11726,120600),(11727,12000),(11728,120600),(11729,12000),(11730,150900),(11733,90600),(11788,150900),(11789,90600),(11790,60300),(11791,12000),(11792,120600),(11793,30300),(11794,120600),(11795,120600),(11796,120600),(11797,120600),(11798,152400),(11864,12300),(11865,121800),(11866,121800),(11867,0),(11868,121800),(11869,121800),(11870,12300),(11871,121800),(11872,121800),(11873,150900),(11876,121800),(11878,91500),(11879,152400),(11881,120600),(11884,152400),(11887,120600),(11888,12000),(11889,120600),(11890,120600),(11892,182700),(11893,120600),(11894,150900),(11895,120600),(11896,120600),(11897,120600),(11898,150900),(11899,120600),(11900,120600),(11901,90600),(11902,60300),(11903,120600),(11904,120600),(11905,241200),(11906,120600),(11907,150900),(11908,90600),(11909,152400),(11910,120600),(11911,241200),(11912,120600),(11913,120600),(11914,120600),(11916,180900),(11918,120600),(11919,120600),(11920,60300),(11927,12000),(11928,12000),(11929,12300),(11930,121800),(11931,120600),(11932,60300),(11936,120600),(11938,121800),(11939,0),(11940,120600),(11941,120600),(11942,121800),(11943,120600),(11944,121800),(11945,121800),(11946,12000),(11949,121800),(11950,121800),(11951,120600),(11956,120600),(11957,120600),(11958,121800),(11959,153900),(11960,121800),(11961,91500),(11962,30300),(11963,30300),(11965,120600),(11967,60300),(11968,120600),(11969,120600),(11973,241200),(11977,12300),(11978,121800),(11979,12300),(11980,121800),(11981,12600),(11982,125700),(11983,91500),(11984,124500),(11985,125700),(11986,125700),(11988,125700),(11989,61500),(11990,124500),(11991,124500),(11993,125700),(11994,0),(11995,12300),(11996,12300),(11997,12600),(11998,125700),(11999,121800),(12000,121800),(12002,125700),(12003,125700),(12004,153900),(12005,153900),(12006,121800),(12007,124500),(12008,91500),(12009,121800),(12010,94200),(12011,12300),(12013,153900),(12014,157200),(12015,60300),(12016,121800),(12017,153900),(12019,182700),(12021,123000),(12023,123000),(12026,125700),(12027,124500),(12028,121800),(12029,124500),(12030,121800),(12031,121800),(12032,152400),(12033,91500),(12034,12300),(12035,120600),(12036,121800),(12037,249000),(12038,121800),(12039,121800),(12040,121800),(12041,91500),(12042,124500),(12043,124500),(12044,124500),(12045,124500),(12046,124500),(12047,124500),(12048,121800),(12049,124500),(12050,124500),(12051,124500),(12052,155700),(12053,121800),(12054,125700),(12055,60900),(12056,121800),(12057,121800),(12058,125700),(12059,60900),(12060,121800),(12061,121800),(12063,91500),(12064,121800),(12065,121800),(12066,121800),(12067,121800),(12068,125700),(12069,184500),(12070,125700),(12071,12300),(12072,121800),(12073,125700),(12074,12600),(12075,124500),(12076,124500),(12077,124500),(12078,124500),(12079,124500),(12080,186900),(12081,12600),(12082,125700),(12083,121800),(12084,121800),(12085,121800),(12086,121800),(12087,121800),(12088,30600),(12089,155700),(12090,155700),(12091,155700),(12092,121800),(12093,125700),(12094,125700),(12095,12600),(12096,121800),(12097,188700),(12098,121800),(12099,157200),(12100,121800),(12101,12300),(12102,123000),(12103,124500),(12104,12300),(12105,62400),(12106,121800),(12107,152400),(12108,124500),(12109,31200),(12110,152400),(12111,123000),(12112,93300),(12113,94200),(12114,125700),(12115,12300),(12116,157200),(12117,12300),(12118,12300),(12119,30600),(12120,125700),(12121,125700),(12122,30600),(12123,12600),(12124,12600),(12125,123000),(12126,153900),(12127,123000),(12128,12600),(12129,125700),(12130,125700),(12131,125700),(12132,123000),(12133,0),(12134,125700),(12135,480),(12136,184500),(12137,157200),(12138,125700),(12139,480),(12140,123000),(12141,12000),(12142,123000),(12143,123000),(12144,123000),(12145,123000),(12146,123000),(12147,123000),(12148,123000),(12149,123000),(12150,155700),(12151,186900),(12152,125700),(12153,157200),(12154,125700),(12155,0),(12156,124500),(12157,30600),(12158,12600),(12159,125700),(12160,31500),(12161,31500),(12162,0),(12163,0),(12164,188700),(12165,125700),(12166,121800),(12167,121800),(12168,12300),(12169,152400),(12170,124500),(12171,12300),(12172,123000),(12173,123000),(12174,12300),(12175,124500),(12176,124500),(12177,62400),(12178,62400),(12179,66000),(12180,125700),(12181,12300),(12182,12300),(12183,125700),(12184,125700),(12185,125700),(12186,0),(12187,0),(12188,121800),(12189,30600),(12190,124500),(12192,0),(12195,125700),(12196,125700),(12197,125700),(12198,125700),(12199,157200),(12200,121800),(12201,125700),(12202,125700),(12203,125700),(12204,94200),(12205,121800),(12206,12300),(12207,124500),(12208,31200),(12209,121800),(12210,92400),(12211,121800),(12212,124500),(12213,124500),(12214,121800),(12215,93300),(12216,124500),(12217,124500),(12218,121800),(12219,124500),(12220,124500),(12221,91500),(12222,124500),(12223,124500),(12224,30900),(12225,30900),(12226,123000),(12227,92400),(12228,0),(12229,155700),(12230,121800),(12231,94200),(12232,121800),(12233,0),(12234,121800),(12235,12300),(12236,188700),(12237,121800),(12238,188700),(12239,121800),(12240,121800),(12241,125700),(12242,124500),(12243,121800),(12244,124500),(12245,121800),(12246,155700),(12247,94200),(12248,125700),(12249,188700),(12250,125700),(12251,12300),(12252,121800),(12253,121800),(12254,121800),(12255,124500),(12256,124500),(12257,124500),(12258,121800),(12259,124500),(12260,121800),(12261,124500),(12262,124500),(12263,124500),(12264,124500),(12265,124500),(12266,12600),(12267,157200),(12268,124500),(12269,121800),(12270,124500),(12271,60900),(12272,121800),(12273,153900),(12274,123000),(12275,0),(12276,121800),(12277,152400),(12278,0),(12279,125700),(12280,124500),(12281,12300),(12282,121800),(12283,121800),(12284,124500),(12285,153900),(12286,240),(12287,30600),(12288,124500),(12289,124500),(12290,121800),(12291,121800),(12292,124500),(12293,31200),(12294,31200),(12295,62400),(12296,124500),(12297,12300),(12298,12300),(12299,124500),(12300,93300),(12301,182700),(12302,93300),(12303,121800),(12304,121800),(12305,30600),(12306,0),(12307,124500),(12308,124500),(12309,12300),(12310,124500),(12311,121800),(12312,30900),(12313,60),(12314,124500),(12315,124500),(12316,124500),(12317,124500),(12319,12300),(12320,12300),(12321,123000),(12323,124500),(12324,124500),(12325,30900),(12326,153900),(12327,63000),(12328,125700),(12329,31500),(12330,94200),(12331,240),(12332,240),(12333,240),(12334,240),(12335,240),(12336,240),(12337,240),(12338,240),(12339,240),(12340,240),(12341,240),(12342,240),(12343,240),(12344,240),(12345,240),(12346,240),(12347,240),(12348,240),(12349,240),(12350,240),(12351,240),(12352,240),(12353,240),(12354,240),(12355,240),(12356,240),(12357,240),(12358,240),(12359,240),(12360,240),(12361,240),(12362,240),(12363,240),(12364,240),(12365,240),(12366,240),(12367,240),(12368,240),(12369,240),(12370,240),(12371,240),(12372,124500),(12373,240),(12374,240),(12375,240),(12376,240),(12377,240),(12378,240),(12379,240),(12380,240),(12381,240),(12382,240),(12383,240),(12384,240),(12385,240),(12386,240),(12387,240),(12388,240),(12389,240),(12390,240),(12391,240),(12392,240),(12393,240),(12394,240),(12395,240),(12396,240),(12397,240),(12398,240),(12399,240),(12400,240),(12401,240),(12402,240),(12403,240),(12404,240),(12405,240),(12406,240),(12407,240),(12408,240),(12409,240),(12410,240),(12411,63000),(12412,125700),(12413,124500),(12414,125700),(12415,125700),(12416,124500),(12417,124500),(12418,157200),(12419,31500),(12420,0),(12421,0),(12422,31200),(12423,62400),(12424,62400),(12425,31500),(12426,31500),(12427,155700),(12428,155700),(12429,155700),(12430,188700),(12431,188700),(12432,124500),(12433,124500),(12434,0),(12435,12600),(12436,124500),(12437,124500),(12438,155700),(12439,12300),(12440,12300),(12441,155700),(12442,155700),(12443,124500),(12444,124500),(12446,0),(12447,12600),(12448,124500),(12449,124500),(12450,157200),(12451,31200),(12452,0),(12453,93300),(12454,124500),(12455,123000),(12456,155700),(12457,153900),(12458,124500),(12459,186900),(12460,12600),(12461,12600),(12462,123000),(12463,61500),(12464,153900),(12465,123000),(12466,30900),(12467,153900),(12468,31200),(12469,12600),(12470,157200),(12471,90600),(12472,12300),(12473,123000),(12474,184500),(12475,123000),(12476,123000),(12477,123000),(12478,153900),(12479,0),(12480,7500),(12481,150900),(12482,120600),(12483,125700),(12484,31200),(12485,0),(12486,12000),(12487,12600),(12488,12600),(12489,63600),(12490,150900),(12493,480),(12494,0),(12495,12600),(12496,12600),(12497,0),(12498,155700),(12499,186900),(12500,186900),(12501,126900),(12502,31800),(12503,126900),(12504,126900),(12505,12600),(12506,126900),(12507,31800),(12508,126900),(12509,31800),(12510,126900),(12511,30900),(12512,126900),(12514,126900),(12516,158700),(12517,0),(12518,0),(12519,31800),(12520,126900),(12521,12600),(12522,95100),(12523,126900),(12524,126900),(12525,126900),(12526,12600),(12527,126900),(12528,32100),(12529,128400),(12530,128400),(12531,128400),(12532,128400),(12533,128400),(12534,128400),(12535,128400),(12536,32100),(12537,128400),(12538,128400),(12539,128400),(12540,128400),(12541,31800),(12542,31200),(12543,126900),(12544,95100),(12545,124500),(12546,194400),(12547,129600),(12548,129600),(12549,126900),(12550,126900),(12551,126900),(12552,126900),(12553,126900),(12554,158700),(12555,126900),(12556,158700),(12557,12600),(12558,126900),(12559,96300),(12560,126900),(12561,160500),(12562,126900),(12563,126900),(12564,31800),(12565,126900),(12566,12000),(12567,0),(12568,31800),(12569,126900),(12570,128400),(12571,128400),(12572,128400),(12573,128400),(12574,64200),(12575,128400),(12576,128400),(12577,64200),(12578,64200),(12579,128400),(12580,128400),(12581,192600),(12582,64200),(12583,126900),(12584,126900),(12585,31800),(12586,0),(12587,126900),(12588,31800),(12589,12600),(12590,0),(12591,31800),(12592,158700),(12593,4950),(12594,31800),(12595,12900),(12596,126900),(12597,31800),(12598,31800),(12599,31800),(12600,0),(12601,31800),(12602,31800),(12603,128400),(12604,190500),(12605,128400),(12606,126900),(12607,96300),(12608,97200),(12609,126900),(12610,126900),(12611,128400),(12612,64200),(12613,128400),(12614,160500),(12615,128400),(12616,0),(12617,128400),(12618,0),(12619,98100),(12620,96300),(12621,12900),(12622,128400),(12623,12900),(12624,190500),(12625,4950),(12627,128400),(12628,64200),(12629,125700),(12630,125700),(12631,94200),(12632,128400),(12633,94200),(12634,126900),(12635,128400),(12636,4950),(12637,63000),(12638,63000),(12639,128400),(12640,128400),(12641,73500),(12642,64200),(12643,125700),(12644,95100),(12645,158700),(12646,128400),(12647,160500),(12648,94200),(12649,94200),(12650,128400),(12651,12900),(12652,125700),(12653,64200),(12654,126900),(12655,128400),(12656,0),(12657,73500),(12658,128400),(12659,128400),(12660,128400),(12661,125700),(12662,128400),(12663,0),(12664,0),(12665,128400),(12666,128400),(12667,64200),(12668,128400),(12669,125700),(12670,4950),(12671,128400),(12672,128400),(12673,125700),(12674,160500),(12675,64200),(12676,125700),(12677,125700),(12678,73500),(12679,73500),(12680,73500),(12681,128400),(12682,95100),(12683,128400),(12684,128400),(12685,160500),(12686,63000),(12687,98100),(12688,126900),(12689,64200),(12690,125700),(12691,129600),(12692,64200),(12693,0),(12694,0),(12695,64200),(12696,32100),(12697,4950),(12698,73500),(12699,128400),(12700,4950),(12701,98100),(12702,128400),(12703,162000),(12704,128400),(12705,162000),(12706,98100),(12707,128400),(12708,128400),(12709,128400),(12710,63000),(12711,4950),(12712,160500),(12713,190500),(12714,4950),(12715,4950),(12716,73500),(12717,73500),(12718,0),(12719,73500),(12720,73500),(12721,160500),(12722,73500),(12723,4950),(12724,73500),(12725,73500),(12726,132300),(12727,98100),(12728,150900),(12729,160500),(12730,194400),(12732,132300),(12733,73500),(12734,132300),(12735,132300),(12736,132300),(12737,132300),(12738,4950),(12739,73500),(12740,126900),(12741,132300),(12742,73500),(12743,73500),(12744,73500),(12745,73500),(12746,73500),(12747,73500),(12748,73500),(12749,73500),(12750,73500),(12751,73500),(12752,60),(12753,60),(12754,73500),(12755,73500),(12756,73500),(12757,98100),(12758,132300),(12759,162000),(12760,162000),(12761,162000),(12762,162000),(12763,12600),(12764,0),(12765,0),(12766,12300),(12767,12300),(12768,12600),(12769,12600),(12770,12600),(12771,240),(12772,60),(12773,240),(12774,240),(12775,60),(12776,240),(12777,60),(12778,4950),(12779,98100),(12780,12600),(12781,0),(12782,60),(12783,60),(12784,60),(12785,240),(12786,240),(12787,240),(12788,240),(12789,12600),(12790,12600),(12791,12600),(12792,12600),(12793,12600),(12794,12600),(12795,12600),(12796,12600),(12797,97200),(12798,0),(12799,125700),(12800,4950),(12801,98100),(12802,124500),(12803,12900),(12804,126900),(12805,128400),(12806,13200),(12807,13200),(12808,60),(12809,240),(12810,132300),(12811,60),(12812,240),(12813,132300),(12814,132300),(12815,132300),(12816,390),(12817,390),(12818,129600),(12819,129600),(12820,129600),(12821,129600),(12822,129600),(12823,129600),(12824,12900),(12825,0),(12826,12900),(12827,129600),(12828,129600),(12829,129600),(12830,129600),(12831,129600),(12832,129600),(12833,129600),(12834,0),(12835,0),(12836,129600),(12837,0),(12838,132300),(12839,132300),(12840,132300),(12841,130800),(12842,73500),(12843,130800),(12844,130800),(12845,0),(12846,64800),(12847,165300),(12848,73500),(12849,73500),(12850,4950),(12851,132300),(12852,165300),(12853,12900),(12854,132300),(12855,132300),(12856,132300),(12857,157200),(12858,132300),(12859,125700),(12860,132300),(12861,125700),(12862,12900),(12863,12900),(12864,129600),(12865,129600),(12866,129600),(12867,129600),(12868,162000),(12869,129600),(12870,129600),(12871,13200),(12872,132300),(12873,13200),(12874,132300),(12875,132300),(12876,132300),(12877,132300),(12878,132300),(12879,132300),(12880,13200),(12881,0),(12882,129600),(12883,125700),(12884,31500),(12885,13200),(12886,165300),(12887,132300),(12888,132300),(12889,99300),(12890,0),(12891,132300),(12892,132300),(12893,165300),(12894,31500),(12895,132300),(12896,165300),(12897,165300),(12898,13200),(12899,13200),(12900,132300),(12901,126900),(12902,94200),(12903,126900),(12904,158700),(12905,13200),(12906,65400),(12907,65400),(12908,32700),(12909,13200),(12910,132300),(12911,66300),(12912,12600),(12913,13200),(12914,126900),(12915,132300),(12916,63600),(12917,132300),(12918,240),(12919,190500),(12920,99300),(12921,13200),(12922,132300),(12924,132300),(12925,132300),(12926,132300),(12927,132300),(12928,132300),(12929,13200),(12930,132300),(12931,132300),(12932,192600),(12933,192600),(12934,192600),(12935,192600),(12936,192600),(12937,132300),(12938,13200),(12939,132300),(12940,240),(12941,240),(12942,132300),(12943,132300),(12944,240),(12945,240),(12946,240),(12947,240),(12948,194400),(12949,132300),(12950,240),(12951,33000),(12952,240),(12953,99300),(12954,192600),(12955,132300),(12956,99300),(12957,132300),(12958,480),(12959,480),(12960,480),(12961,480),(12962,480),(12963,480),(12964,132300),(12965,132300),(12966,0),(12967,132300),(12968,99300),(12969,66300),(12970,13200),(12971,132300),(12972,66300),(12973,198600),(12974,12900),(12975,132300),(12976,66300),(12977,132300),(12978,132300),(12979,132300),(12980,132300),(12981,132300),(12982,132300),(12983,132300),(12984,165300),(12985,132300),(12986,132300),(12987,33000),(12988,132300),(12989,132300),(12990,0),(12991,132300),(12992,132300),(12993,132300),(12994,132300),(12995,132300),(12996,99300),(12997,132300),(12998,132300),(12999,13200),(13000,130800),(13001,132300),(13002,240),(13003,165300),(13004,240),(13005,165300),(13006,132300),(13007,198600),(13008,129600),(13009,132300),(13010,165300),(13011,132300),(13012,0),(13013,0),(13014,0),(13015,0),(13016,0),(13017,0),(13018,0),(13019,0),(13020,0),(13021,0),(13022,0),(13023,0),(13024,0),(13025,0),(13026,0),(13027,0),(13028,0),(13029,0),(13030,0),(13031,0),(13032,0),(13033,0),(13034,132300),(13035,132300),(13036,12900),(13037,132300),(13038,132300),(13039,129600),(13040,129600),(13041,240),(13042,132300),(13043,165300),(13044,12900),(13045,162000),(13046,132300),(13047,198600),(13048,132300),(13049,132300),(13050,132300),(13051,66300),(13052,32100),(13053,128400),(13054,66300),(13055,132300),(13056,132300),(13057,66300),(13058,165300),(13059,165300),(13060,12900),(13061,13200),(13062,33000),(13063,66300),(13064,99300),(13065,0),(13066,0),(13067,0),(13068,13200),(13069,132300),(13070,12900),(13071,132300),(13072,132300),(13073,99300),(13074,132300),(13075,132300),(13076,0),(13077,99300),(13078,132300),(13079,132300),(13080,13200),(13081,99300),(13082,132300),(13083,198600),(13084,132300),(13085,13200),(13086,194400),(13087,240),(13088,240),(13089,240),(13090,240),(13091,132300),(13092,132300),(13093,0),(13094,241200),(13095,241200),(13096,259200),(13097,64800),(13098,259200),(13099,64800),(13100,360),(13101,360),(13102,360),(13103,360),(13104,12900),(13105,12900),(13106,13200),(13107,360),(13108,264600),(13109,264600),(13110,129600),(13111,259200),(13112,360),(13113,360),(13114,360),(13115,360),(13116,360),(13117,99300),(13118,129600),(13119,132300),(13120,132300),(13121,132300),(13122,129600),(13123,0),(13124,264600),(13125,196200),(13126,264600),(13127,264600),(13128,264600),(13129,249000),(13130,130800),(13131,264600),(13132,264600),(13133,132300),(13134,132300),(13135,130800),(13136,132300),(13137,165300),(13138,132300),(13139,130800),(13140,132300),(13141,130800),(13142,198600),(13143,132300),(13144,132300),(13145,132300),(13146,132300),(13147,132300),(13148,0),(13149,264600),(13150,0),(13151,264600),(13152,132300),(13153,132300),(13154,132300),(13155,66300),(13156,132300),(13157,196200),(13158,12900),(13159,256800),(13160,132300),(13161,165300),(13162,165300),(13163,165300),(13164,198600),(13165,4950),(13166,73500),(13167,249000),(13168,13200),(13169,132300),(13170,132300),(13171,132300),(13172,132300),(13173,0),(13174,132300),(13175,0),(13176,0),(13177,132300),(13178,132300),(13179,132300),(13180,132300),(13181,132300),(13182,249000),(13183,132300),(13184,0),(13185,132300),(13186,132300),(13187,253800),(13188,73500),(13189,0),(13190,198600),(13191,132300),(13192,132300),(13193,132300),(13194,132300),(13195,132300),(13196,132300),(13197,132300),(13198,132300),(13199,132300),(13200,132300),(13201,132300),(13202,132300),(13204,253800),(13205,241200),(13206,241200),(13207,259200),(13210,0),(13211,132300),(13212,132300),(13213,13200),(13214,198600),(13215,198600),(13216,198600),(13217,198600),(13218,198600),(13219,198600),(13220,132300),(13221,132300),(13222,132300),(13223,132300),(13224,32700),(13225,32700),(13226,32400),(13227,32400),(13228,132300),(13229,132300),(13230,132300),(13231,132300),(13232,132300),(13233,132300),(13234,132300),(13235,165300),(13236,165300),(13237,132300),(13238,13200),(13239,132300),(13240,198600),(13241,198600),(13242,186900),(13243,198600),(13244,198600),(13245,264600),(13246,264600),(13247,264600),(13248,264600),(13249,264600),(13250,264600),(13251,264600),(13252,264600),(13253,264600),(13254,264600),(13255,264600),(13256,264600),(13257,124500),(13258,66300),(13259,132300),(13260,13200),(13261,132300),(13262,13200),(13263,13200),(13264,132300),(13265,60),(13266,12600),(13267,249000),(13268,60),(13269,60),(13270,60),(13271,13200),(13272,60),(13273,132300),(13274,132300),(13275,132300),(13276,132300),(13277,165300),(13278,165300),(13279,132300),(13280,132300),(13281,198600),(13282,66300),(13283,132300),(13284,132300),(13285,165300),(13286,13200),(13287,132300),(13288,132300),(13289,132300),(13290,13200),(13291,132300),(13292,132300),(13293,13200),(13294,165300),(13295,132300),(13296,13200),(13297,198600),(13298,198600),(13299,0),(13300,132300),(13301,132300),(13302,132300),(13304,132300),(13305,132300),(13306,132300),(13307,132300),(13308,165300),(13309,132300),(13310,132300),(13311,0),(13312,165300),(13313,132300),(13314,132300),(13315,99300),(13316,165300),(13317,0),(13318,132300),(13319,132300),(13320,132300),(13321,132300),(13322,132300),(13323,132300),(13324,0),(13325,0),(13326,0),(13327,0),(13328,165300),(13329,132300),(13330,132300),(13331,132300),(13332,132300),(13333,132300),(13334,132300),(13335,132300),(13336,132300),(13337,165300),(13338,165300),(13339,165300),(13340,33000),(13341,33000),(13342,132300),(13343,165300),(13344,132300),(13345,132300),(13346,198600),(13347,186900),(13348,66300),(13349,132300),(13350,198600),(13351,99300),(13352,132300),(13353,132300),(13354,132300),(13355,132300),(13356,132300),(13357,132300),(13358,132300),(13359,132300),(13360,33000),(13361,165300),(13362,66300),(13363,99300),(13364,198600),(13365,132300),(13366,132300),(13367,198600),(13368,198600),(13369,124500),(13370,124500),(13371,12600),(13372,198600),(13373,132300),(13374,132300),(13375,264600),(13376,165300),(13377,249000),(13378,13200),(13379,13200),(13380,132300),(13381,132300),(13382,165300),(13383,13200),(13384,198600),(13385,264600),(13386,66300),(13387,132300),(13388,13200),(13389,13200),(13390,13200),(13391,132300),(13392,66300),(13393,132300),(13394,132300),(13395,165300),(13396,66300),(13397,132300),(13398,132300),(13399,33000),(13400,165300),(13401,66300),(13402,99300),(13403,198600),(13404,132300),(13405,480),(13406,132300),(13407,480),(13408,42900),(13409,42900),(13410,42900),(13411,42900),(13412,33000),(13413,165300),(13414,132300),(13415,66300),(13416,66300),(13417,198600),(13418,33000),(13419,33000),(13420,128400),(13421,0),(13422,98100),(13423,132300),(13424,132300),(13425,132300),(13426,13200),(13427,480),(13428,480),(13429,75900),(13430,114000),(13431,114000),(13432,114000),(13475,0),(13476,480),(13477,0),(13478,480),(13481,132300),(13482,132300),(13203,0),(13538,132300),(13539,132300),(13549,128400),(13556,128400),(13559,0),(13571,0),(13932,0),(13463,66300),(13433,240),(13434,240),(13435,240),(13436,240),(13437,240),(13438,240),(13439,240),(13440,480),(13441,480),(13442,480),(13443,480),(13444,480),(13445,480),(13446,480),(13447,480),(13448,240),(13449,480),(13450,480),(13451,480),(13452,240),(13453,480),(13454,480),(13455,480),(13456,240),(13457,480),(13458,480),(13459,240),(13460,240),(13461,240),(13462,240),(13464,240),(13465,240),(13466,240),(13467,240),(13468,240),(13469,240),(13470,240),(13471,240),(13472,240),(13473,240),(13474,240),(13479,480),(13480,480),(13483,0),(13484,60),(13485,240),(13486,240),(13487,240),(13488,240),(13489,240),(13490,240),(13491,240),(13492,240),(13493,240),(13494,240),(13495,240),(13496,240),(13497,240),(13498,240),(13499,240),(13500,240),(13501,240),(13502,480),(13503,480),(13524,124500),(13548,240),(13592,132300),(13593,13200),(13600,132300),(13603,132300),(13604,198600),(13606,264600),(13607,165300),(13609,264600),(13610,264600),(13611,264600),(13614,264600),(13616,132300),(13622,0),(13625,132300),(13627,132300),(13629,198600),(13631,264600),(13633,132300),(13634,132300),(13641,132300),(13643,132300),(13649,0),(13654,132300),(13662,0),(13663,132300),(13664,165300),(13665,132300),(13666,132300),(13667,13200),(13668,13200),(13669,132300),(13670,132300),(13671,132300),(13672,13200),(13673,132300),(13674,132300),(13675,132300),(13676,132300),(13677,132300),(13678,13200),(13679,132300),(13680,132300),(13681,132300),(13682,132300),(13684,13200),(13685,13200),(13686,0),(13687,0),(13688,13200),(13689,13200),(13690,13200),(13691,13200),(13692,132300),(13693,13200),(13694,13200),(13695,13200),(13696,13200),(13697,132300),(13699,132300),(13700,0),(13701,0),(13702,165300),(13703,13200),(13704,13200),(13705,13200),(13706,13200),(13707,13200),(13708,13200),(13709,13200),(13710,13200),(13711,13200),(13713,132300),(13714,132300),(13715,132300),(13716,132300),(13717,132300),(13718,132300),(13719,132300),(13720,132300),(13721,132300),(13722,132300),(13723,132300),(13724,132300),(13725,132300),(13726,132300),(13727,132300),(13728,132300),(13729,132300),(13731,132300),(13732,165300),(13733,165300),(13734,165300),(13735,165300),(13736,165300),(13737,165300),(13738,165300),(13739,165300),(13740,165300),(13741,132300),(13742,132300),(13743,132300),(13744,132300),(13745,132300),(13746,132300),(13747,132300),(13748,132300),(13749,132300),(13750,132300),(13752,132300),(13753,132300),(13754,132300),(13755,132300),(13756,132300),(13757,132300),(13758,132300),(13759,132300),(13760,132300),(13761,132300),(13762,132300),(13763,132300),(13764,132300),(13765,132300),(13767,132300),(13768,132300),(13769,132300),(13770,132300),(13771,132300),(13772,132300),(13773,132300),(13774,132300),(13775,132300),(13776,132300),(13777,132300),(13778,132300),(13779,132300),(13780,132300),(13781,132300),(13782,132300),(13783,132300),(13784,132300),(13785,132300),(13786,132300),(13787,132300),(13788,132300),(13789,132300),(13790,132300),(13791,132300),(13793,132300),(13794,13200),(13795,13200),(13807,0),(13809,132300),(13810,132300),(13811,132300),(13812,132300),(13813,132300),(13814,132300),(13816,165300),(13817,198600),(13818,264600),(13819,264600),(13820,13200),(13821,264600),(13822,264600),(13823,264600),(13824,264600),(13825,0),(13826,0),(13828,66300),(13829,66300),(13830,0),(13832,0),(13833,0),(13834,0),(13835,66300),(13836,0),(13837,66300),(13838,66300),(13839,66300),(13843,0),(13845,132300),(13846,0),(13847,132300),(13850,45600),(13851,132300),(13852,132300),(13854,132300),(13855,132300),(13856,132300),(13857,132300),(13858,132300),(13859,132300),(13860,132300),(13861,132300),(13862,132300),(13863,132300),(13864,132300)
ON DUPLICATE KEY UPDATE
`entry`=VALUES(`entry`),
`RewMoneyMaxLevel`=VALUES(`RewMoneyMaxLevel`);

-- Reset some fields whose values were out of range in previous updatepacks
UPDATE `item_template` SET `Flags`=-2147483648 WHERE `entry` IN (23614,40652,42782);
UPDATE `item_template` SET `Buyprice`=-2147483648 WHERE `entry` IN (45992);
UPDATE `quest_template` SET `RewSpellCast`=-1 WHERE `entry`=13833;

-- Remove KIl'rek from creature_linked_respawn
DELETE FROM `creature_linked_respawn` WHERE `guid`=135515 AND `linkedGUID`=135473;

-- Delete obsolete Pet Trainer spells
DELETE FROM `npc_trainer` WHERE `spell` IN (1853,14922,14923,14924,14925,14926,14927,24441,24463,24464,24476,24477,24478,24511,24512,24513,24514,24515,24516,27344,27351,27352,27353,27354);

-- Move spell_script_target data to more proper item_required_target table
DELETE FROM `spell_script_target` WHERE `entry` IN (14247,45504,53326,47005,48046,48603,48679);
DELETE FROM `item_required_target` WHERE `entry` IN (11170,11522,34711,37045,37125,37314,37381,35121);
INSERT INTO `item_required_target` (`entry`,`type`,`targetEntry`) VALUES 
(11170,1,9376),
(11522,1,9376),
(34711,1,25321),
(34711,1,25322),
(37045,2,26408),
(37125,2,26408),
(37314,1,27209),
(37381,1,27202),
(35121,1,25791);

-- Delete obsolete non-working spells from spell_script_target
DELETE FROM `spell_script_target` WHERE `entry` IN (33909,45770,46589,48714,62374,62427);



-- -------------
-- -- Cleanup --
-- -------------

UPDATE `item_template` SET StatsCount = upper(stat_value1/(stat_value1+1)) + upper(stat_value2/(stat_value2+1)) + upper(stat_value3/(stat_value3+1)) + upper(stat_value4/(stat_value4+1)) + upper(stat_value5/(stat_value5+1)) + upper(stat_value6/(stat_value6+1)) + upper(stat_value7/(stat_value7+1)) + upper(stat_value8/(stat_value8+1)) + upper(stat_value9/(stat_value9+1)) + upper(stat_value10/(stat_value10+1));
UPDATE `gameobject` SET `state`=0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type`=0 AND `data0`=1);
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~2056 WHERE `unit_flags`&2048=2048 OR `unit_flags`&8=8;
UPDATE creature_template SET unit_flags=unit_flags&~2048 WHERE unit_flags&2048=2048;
UPDATE creature_template SET unit_flags=unit_flags&~524288 WHERE unit_flags&524288=524288;
UPDATE creature_template SET unit_flags=unit_flags&~67108864 WHERE unit_flags&67108864=67108864;
UPDATE creature_template SET unit_flags=unit_flags&~8388608 WHERE unit_flags&8388608=8388608;
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`&~2;
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`&~4;
UPDATE creature_template SET npcflag = npcflag&~16777216; -- UNIT_NPC_FLAG_SPELLCLICK
UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
UPDATE `creature` SET `MovementType`=0 WHERE `spawndist`=0 AND `MovementType`=1;
UPDATE `creature` SET `spawndist`=0 WHERE `MovementType`=0;
UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|1 WHERE `QuestFlags`=`QuestFlags`|4096;
DELETE FROM go,gt USING `gameobject` go LEFT JOIN `gameobject_template` gt ON go.`id`=gt.`entry` WHERE gt.`entry` IS NULL;
DELETE FROM gi,gt USING `gameobject_involvedrelation` gi LEFT JOIN `gameobject_template` gt ON gi.`id`=gt.`entry` WHERE gt.`entry` IS NULL;
DELETE FROM gqr,gt USING `gameobject_questrelation` gqr LEFT JOIN `gameobject_template` gt ON gqr.`id`=gt.`entry` WHERE gt.`entry` IS NULL;
DELETE FROM ge,go USING `game_event_gameobject` ge LEFT JOIN `gameobject` go ON ge.`guid`=go.`guid` WHERE go.`guid` IS NULL;
DELETE FROM `gameobject_scripts` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `gameobject_scripts` WHERE `command` in (11, 12) and `datalong` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `npc_gossip` WHERE `npc_guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_questrelation` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_questrelation` UNION SELECT `id` FROM `creature_involvedrelation`);
DELETE FROM `version`;
INSERT INTO `version` (`core_version`, `core_revision`, `db_version`, `script_version`,`cache_id`) VALUES
('Trinity Core', '7304', 'TDB 322.7.25', 'ACID 3.0.2 - Full Release for Trinity (3.1.3 and 3.2.2a Clients)',0);
