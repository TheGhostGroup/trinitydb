-- this was missed in previous corepatch file
-- 5426_8416_characters_character_spell.sql
DELETE FROM character_spell WHERE spell in (
 1178,  /* Bear Form (Passive) */
 3025,  /* Cat Form (Passive) */
 5419,  /* Travel Form (Passive) */
 5420,  /* Tree of Life _passive_ */
 5421,  /* Aquatic Form (Passive) */
 7376,  /* Defensive Stance Passive */
 7381,  /* Berserker Stance Passive */
 9635,  /* Dire Bear Form (Passive) */
 21156, /* Battle Stance Passive */
 21178, /* Bear Form (Passive2) */
 24905, /* Moonkin Form (Passive) */
 34123, /* Tree of Life _pasive_ */
 33948, /* Flight Form (Passive) */
 34764, /* Flight Form (Passive) */
 40121, /* Swift Flight Form (Passive) */
 40122  /* Swift Flight Form (Passive) */
);
