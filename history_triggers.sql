CREATE OR REPLACE TRIGGER trg_monster_history
AFTER INSERT OR UPDATE OR DELETE ON monster
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO monster_history
        VALUES (monster_history_seq.NEXTVAL,
                :NEW.monster_id, :NEW.name, :NEW.type, :NEW.weakness,
                'INSERT', SYSDATE);
    ELSIF UPDATING THEN
        INSERT INTO monster_history
        VALUES (monster_history_seq.NEXTVAL,
                :OLD.monster_id, :OLD.name, :OLD.type, :OLD.weakness,
                'UPDATE', SYSDATE);
    ELSE
        INSERT INTO monster_history
        VALUES (monster_history_seq.NEXTVAL,
                :OLD.monster_id, :OLD.name, :OLD.type, :OLD.weakness,
                'DELETE', SYSDATE);
    END IF;
END;
/


CREATE OR REPLACE TRIGGER trg_area_history
AFTER INSERT OR UPDATE OR DELETE ON area
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO area_history
        VALUES (area_history_seq.NEXTVAL,
                :NEW.area_id, :NEW.name, :NEW.monster_id,
                'INSERT', SYSDATE);
    ELSIF UPDATING THEN
        INSERT INTO area_history
        VALUES (area_history_seq.NEXTVAL,
                :OLD.area_id, :OLD.name, :OLD.monster_id,
                'UPDATE', SYSDATE);
    ELSE
        INSERT INTO area_history
        VALUES (area_history_seq.NEXTVAL,
                :OLD.area_id, :OLD.name, :OLD.monster_id,
                'DELETE', SYSDATE);
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_hunter_weapon_history
AFTER INSERT OR UPDATE OR DELETE ON hunter_weapon
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO hunter_weapon_history
        VALUES (hunter_weapon_history_seq.NEXTVAL,
                :NEW.weapon_id, :NEW.name, :NEW.type,
                'INSERT', SYSDATE);
    ELSIF UPDATING THEN
        INSERT INTO hunter_weapon_history
        VALUES (hunter_weapon_history_seq.NEXTVAL,
                :OLD.weapon_id, :OLD.name, :OLD.type,
                'UPDATE', SYSDATE);
    ELSE
        INSERT INTO hunter_weapon_history
        VALUES (hunter_weapon_history_seq.NEXTVAL,
                :OLD.weapon_id, :OLD.name, :OLD.type,
                'DELETE', SYSDATE);
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_hunter_armor_history
AFTER INSERT OR UPDATE OR DELETE ON hunter_armor
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO hunter_armor_history
        VALUES (hunter_armor_history_seq.NEXTVAL,
                :NEW.armor_id, :NEW.name, :NEW.monster_id,
                'INSERT', SYSDATE);
    ELSIF UPDATING THEN
        INSERT INTO hunter_armor_history
        VALUES (hunter_armor_history_seq.NEXTVAL,
                :OLD.armor_id, :OLD.name, :OLD.monster_id,
                'UPDATE', SYSDATE);
    ELSE
        INSERT INTO hunter_armor_history
        VALUES (hunter_armor_history_seq.NEXTVAL,
                :OLD.armor_id, :OLD.name, :OLD.monster_id,
                'DELETE', SYSDATE);
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_hunter_history
AFTER INSERT OR UPDATE OR DELETE ON hunter
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO hunter_history
        VALUES (hunter_history_seq.NEXTVAL,
                :NEW.hunter_id, :NEW.name, :NEW.weapon_id,
                :NEW.armor_id, :NEW.monsters_hunted,
                'INSERT', SYSDATE);
    ELSIF UPDATING THEN
        INSERT INTO hunter_history
        VALUES (hunter_history_seq.NEXTVAL,
                :OLD.hunter_id, :OLD.name, :OLD.weapon_id,
                :OLD.armor_id, :OLD.monsters_hunted,
                'UPDATE', SYSDATE);
    ELSE
        INSERT INTO hunter_history
        VALUES (hunter_history_seq.NEXTVAL,
                :OLD.hunter_id, :OLD.name, :OLD.weapon_id,
                :OLD.armor_id, :OLD.monsters_hunted,
                'DELETE', SYSDATE);
    END IF;
END;
/
