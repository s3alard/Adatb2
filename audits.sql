CREATE OR REPLACE TRIGGER trg_area_updated_at
BEFORE INSERT OR UPDATE ON area
FOR EACH ROW
BEGIN
    :NEW.updated_at := SYSDATE;
END;
/

CREATE OR REPLACE TRIGGER trg_monster_updated_at
BEFORE INSERT OR UPDATE ON monster
FOR EACH ROW
BEGIN
    :NEW.updated_at := SYSDATE;
END;
/

CREATE OR REPLACE TRIGGER trg_hunter_weapon_updated_at
BEFORE INSERT OR UPDATE ON hunter_weapon
FOR EACH ROW
BEGIN
    :NEW.updated_at := SYSDATE;
END;
/

CREATE OR REPLACE TRIGGER trg_hunter_armor_updated_at
BEFORE INSERT OR UPDATE ON hunter_armor
FOR EACH ROW
BEGIN
    :NEW.updated_at := SYSDATE;
END;
/

CREATE OR REPLACE TRIGGER trg_hunter_updated_at
BEFORE INSERT OR UPDATE ON hunter
FOR EACH ROW
BEGIN
    :NEW.updated_at := SYSDATE;
END;
/
