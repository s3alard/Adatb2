CREATE OR REPLACE TRIGGER monsters_id_trg
BEFORE INSERT ON monster
FOR EACH ROW
BEGIN
    IF :NEW.monster_id IS NULL THEN
        :NEW.monster_id := monster_id_seq.NEXTVAL;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'Failed to assign monster_id: ' || SQLERRM
        );
END;
/

CREATE OR REPLACE TRIGGER areas_id_trg
BEFORE INSERT ON area
FOR EACH ROW
BEGIN
    IF :NEW.area_id IS NULL THEN
        :NEW.area_id := area_id_seq.NEXTVAL;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(
            -20002,
            'Failed to assign area_id: ' || SQLERRM
        );
END;
/

CREATE OR REPLACE TRIGGER weapons_id_trg
BEFORE INSERT ON hunter_weapon
FOR EACH ROW
BEGIN
    IF :NEW.weapon_id IS NULL THEN
        :NEW.weapon_id := weapon_id_seq.NEXTVAL;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(
            -20003,
            'Failed to assign weapon_id: ' || SQLERRM
        );
END;
/

CREATE OR REPLACE TRIGGER armor_id_trg
BEFORE INSERT ON hunter_armor
FOR EACH ROW
BEGIN
    IF :NEW.armor_id IS NULL THEN
        :NEW.armor_id := armor_id_seq.NEXTVAL;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(
            -20004,
            'Failed to assign armor_id: ' || SQLERRM
        );
END;
/

CREATE OR REPLACE TRIGGER hunters_id_trg
BEFORE INSERT ON hunter
FOR EACH ROW
BEGIN
    IF :NEW.hunter_id IS NULL THEN
        :NEW.hunter_id := hunter_id_seq.NEXTVAL;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(
            -20005,
            'Failed to assign hunter_id: ' || SQLERRM
        );
END;
/

