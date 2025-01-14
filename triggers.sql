CREATE OR REPLACE TRIGGER monsters_id_trg
  BEFORE INSERT ON monster
  FOR EACH ROW
BEGIN
  IF :new.monster_id IS NULL
  THEN
    :new.monster_id := monster_id_seq.nextval;
  END IF;
END monsters_id_trg;
/

CREATE OR REPLACE TRIGGER areas_id_trg
  BEFORE INSERT ON area
  FOR EACH ROW
BEGIN
  IF :new.area_id IS NULL
  THEN
    :new.area_id := area_id_seq.nextval;
  END IF;
END areas_id_trg;
/

CREATE OR REPLACE TRIGGER weapons_id_trg
  BEFORE INSERT ON hunter_weapon
  FOR EACH ROW
BEGIN
  IF :new.weapon_id IS NULL
  THEN
    :new.weapon_id := weapon_id_seq.nextval;
  END IF;
END weapons_id_trg;
/

CREATE OR REPLACE TRIGGER armor_id_trg
  BEFORE INSERT ON hunter_armor
  FOR EACH ROW
BEGIN
  IF :new.armor_id IS NULL
  THEN
    :new.armor_id := armor_id_seq.nextval;
  END IF;
END armor_id_trg;
/

CREATE OR REPLACE TRIGGER hunters_id_trg
  BEFORE INSERT ON hunter
  FOR EACH ROW
BEGIN
  IF :new.hunter_id IS NULL
  THEN
    :new.hunter_id := hunter_id_seq.nextval;
  END IF;
END hunters_id_trg;
/


