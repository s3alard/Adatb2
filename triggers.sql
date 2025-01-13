CREATE OR REPLACE TRIGGER update_monsters_hunted
  AFTER INSERT ON hunters
  FOR EACH ROW
BEGIN
  UPDATE hunters
     SET monsters_hunted = monsters_hunted + 1
   WHERE hunter_id = :new.hunter_id;
END;
/

CREATE OR REPLACE TRIGGER monsters_id_trg
BEFORE INSERT ON monsters
  FOR EACH ROW
BEGIN
  IF :new.monster_id IS NULL THEN
     :new.monster_id := monster_id_seq.nextval;
  END IF;
END monsters_id_trg;
/

CREATE OR REPLACE TRIGGER areas_id_trg
BEFORE INSERT ON areas
  FOR EACH ROW
BEGIN
  IF :new.area_id IS NULL THEN
     :new.area_id := area_id_seq.nextval;
  END IF;
END maps_id_trg;
/

CREATE OR REPLACE TRIGGER weapons_id_trg
BEFORE INSERT ON hunter_weapons
  FOR EACH ROW
BEGIN
  IF :new.weapon_id IS NULL THEN
     :new.weapon_id := weapon_id_seq.nextval;
  END IF;
END weapons_id_trg;
/

CREATE OR REPLACE TRIGGER armor_id_trg
BEFORE INSERT ON hunter_armor
  FOR EACH ROW
BEGIN
  IF :new.armor_id IS NULL THEN
     :new.armor_id := armor_id_seq.nextval;
  END IF;
END armor_id_trg;
/

CREATE OR REPLACE TRIGGER hunters_id_trg
BEFORE INSERT ON hunters
  FOR EACH ROW
BEGIN
  IF :new.hunter_id IS NULL THEN
     :new.hunter_id := hunter_id_seq.nextval;
  END IF;
END hunters_id_trg;
/
