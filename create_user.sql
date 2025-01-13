CREATE USER monster_hunter_manager
  IDENTIFIED BY "12345678"
  DEFAULT TABLESPACE USERS
  QUOTA UNLIMITED ON users
;
GRANT CREATE SESSION TO monster_hunter_manager;
GRANT CREATE TABLE TO monster_hunter_manager;
GRANT CREATE VIEW TO monster_hunter_manager;
GRANT CREATE SEQUENCE TO monster_hunter_manager;
GRANT CREATE PROCEDURE TO monster_hunter_manager;
GRANT CREATE TRIGGER TO monster_hunter_manager;
GRANT CREATE TYPE TO monster_hunter_manager;
GRANT EXECUTE ANY PROCEDURE TO monster_hunter_manager;
