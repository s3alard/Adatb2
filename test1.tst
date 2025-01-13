PL/SQL Developer Test script 3.0
20
BEGIN
    INSERT INTO monsters (name, type, weakness) 
    VALUES ('Barioth', 'Flying Wyvern', 'Fire');

    DECLARE
        var_monster_count NUMBER;
    BEGIN
        SELECT COUNT(*) INTO var_monster_count 
        FROM monsters 
        WHERE name = 'Barioth';

        IF var_monster_count = 1 THEN
            DBMS_OUTPUT.PUT_LINE('Test 1 passed.');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Test 1 did not pass.');
        END IF;
    END;
END;


0
0
