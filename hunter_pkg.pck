CREATE OR REPLACE PACKAGE hunter_pkg AS

  FUNCTION get_hunter_weapon(p_hunter_id NUMBER) RETURN VARCHAR2;

  FUNCTION get_monsters_hunted(p_hunter_id NUMBER) RETURN NUMBER;

  PROCEDURE update_monsters_hunted(p_hunter_id NUMBER);

  PROCEDURE add_new_monster(p_name     VARCHAR2
                           ,p_type     VARCHAR2
                           ,p_weakness VARCHAR2);

END hunter_pkg;
/
CREATE OR REPLACE PACKAGE BODY hunter_pkg AS

  FUNCTION get_hunter_weapon(p_hunter_id NUMBER) RETURN VARCHAR2 IS
    v_weapon_name VARCHAR2(255);
  BEGIN
    SELECT hw.name
      INTO v_weapon_name
      FROM hunter h
      JOIN hunter_weapon hw
        ON h.weapon_id = hw.weapon_id
     WHERE h.hunter_id = p_hunter_id;
  
    RETURN v_weapon_name;
  END get_hunter_weapon;

  FUNCTION get_monsters_hunted(p_hunter_id NUMBER) RETURN NUMBER IS
    v_monsters_hunted NUMBER;
  BEGIN
    SELECT h.monsters_hunted
      INTO v_monsters_hunted
      FROM hunter h
     WHERE h.hunter_id = p_hunter_id;
  
    RETURN v_monsters_hunted;
  END get_monsters_hunted;

  PROCEDURE update_monsters_hunted(p_hunter_id NUMBER) IS
    v_current_monsters_hunted NUMBER;
  BEGIN
    v_current_monsters_hunted := get_monsters_hunted(p_hunter_id);
  
    UPDATE hunter
       SET monsters_hunted = v_current_monsters_hunted + 1
     WHERE hunter_id = p_hunter_id;
  END update_monsters_hunted;

  PROCEDURE add_new_monster(p_name     VARCHAR2
                           ,p_type     VARCHAR2
                           ,p_weakness VARCHAR2) IS
  BEGIN
    INSERT INTO monster
      (NAME
      ,TYPE
      ,weakness)
    VALUES
      (p_name
      ,p_type
      ,p_weakness);
  END add_new_monster;
END hunter_pkg;
/
