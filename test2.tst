PL/SQL Developer Test script 3.0
36
BEGIN
INSERT INTO hunters
  (name
  ,weapon_id
  ,armor_id
  ,monsters_hunted)
VALUES
  ('Hunter K'
  ,1002
  ,2002
  ,3);

  DECLARE
    var_hunter_count    NUMBER;
    var_monsters_hunted NUMBER;
  BEGIN
    SELECT COUNT(*)
          ,monsters_hunted
      INTO var_hunter_count
          ,var_monsters_hunted
      FROM hunters
     WHERE NAME = 'Hunter K';
  
    IF var_hunter_count = 1
    THEN
      IF var_monsters_hunted = 3
      THEN
        dbms_output.put_line('Test 2 passed.');
      ELSE
        dbms_output.put_line('Test 2 did not pass, incorrect count.');
      END IF;
    ELSE
      dbms_output.put_line('Test 2 did not pass, hunter not found.');
    END IF;
  END;
END;
0
0
