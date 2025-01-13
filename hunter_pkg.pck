CREATE OR REPLACE PACKAGE hunter_pkg AS

    FUNCTION get_hunter_weapon(p_hunter_id NUMBER) RETURN VARCHAR2;

    FUNCTION get_monsters_hunted(p_hunter_id NUMBER) RETURN NUMBER;

    PROCEDURE update_monsters_hunted(p_hunter_id NUMBER);

END hunter_pkg;
/
CREATE OR REPLACE PACKAGE BODY hunter_pkg AS

    FUNCTION get_hunter_weapon(p_hunter_id NUMBER) RETURN VARCHAR2 IS
        v_weapon_name VARCHAR2(255);
    BEGIN
        SELECT hw.name INTO v_weapon_name
        FROM hunters h
        JOIN hunter_weapons hw ON h.weapon_id = hw.weapon_id
        WHERE h.hunter_id = p_hunter_id;
        
        RETURN v_weapon_name;
    END get_hunter_weapon;

    FUNCTION get_monsters_hunted(p_hunter_id NUMBER) RETURN NUMBER IS
        v_monsters_hunted NUMBER;
    BEGIN
        SELECT h.monsters_hunted INTO v_monsters_hunted
        FROM hunters h
        WHERE h.hunter_id = p_hunter_id;
        
        RETURN v_monsters_hunted;
    END get_monsters_hunted;

    PROCEDURE update_monsters_hunted(p_hunter_id NUMBER) IS
        v_current_monsters_hunted NUMBER;
    BEGIN
        v_current_monsters_hunted := get_monsters_hunted(p_hunter_id);
        
        UPDATE hunters
        SET monsters_hunted = v_current_monsters_hunted + 1
        WHERE hunter_id = p_hunter_id;
    END update_monsters_hunted;

END hunter_pkg;
/
