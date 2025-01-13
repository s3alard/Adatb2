CREATE OR REPLACE TRIGGER update_monsters_hunted
  AFTER INSERT ON hunters
  FOR EACH ROW
BEGIN
  UPDATE hunters
     SET monsters_hunted = monsters_hunted + 1
   WHERE hunter_id = :new.hunter_id;
END;
/
