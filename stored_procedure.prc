CREATE OR REPLACE PROCEDURE add_new_monster(p_name     VARCHAR2
                                           ,p_type     VARCHAR2
                                           ,p_weakness VARCHAR2) IS
BEGIN
    INSERT INTO monsters (monster_id, name, type, weakness)
    VALUES (monster_id_seq.NEXTVAL, p_name, p_type, p_weakness);
END add_new_monster;
/
