CREATE VIEW monsters_in_areas AS
SELECT m.name AS monster_name,
m.type AS monster_type,
a.name AS area_name
FROM monster m
JOIN area a 
ON m.monster_id = a.monster_id;

CREATE VIEW hunter_equipment AS
SELECT h.name AS hunter_name,
hw.name AS weapon_name,
ha.name AS armor_name
FROM hunter h
JOIN hunter_weapon hw 
ON h.weapon_id = hw.weapon_id
JOIN hunter_armor ha 
ON h.armor_id = ha.armor_id;
