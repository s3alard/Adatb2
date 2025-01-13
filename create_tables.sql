CREATE TABLE monsters (
    monster_id NUMBER PRIMARY KEY,
    name VARCHAR2(255) NOT NULL,
    type VARCHAR2(255) NOT NULL,
    weakness VARCHAR2(255) NOT NULL
);

CREATE TABLE areas (
    area_id NUMBER PRIMARY KEY,
    name VARCHAR2(255) NOT NULL,
    monster_id NUMBER,
    FOREIGN KEY (monster_id) REFERENCES monsters(monster_id)
);

CREATE TABLE hunter_weapons (
    weapon_id NUMBER PRIMARY KEY,
    name VARCHAR2(255) NOT NULL,
    type VARCHAR2(255) NOT NULL
);

CREATE TABLE hunter_armor (
    armor_id NUMBER PRIMARY KEY,
    name VARCHAR2(255) NOT NULL,
    monster_id NUMBER,
    FOREIGN KEY (monster_id) REFERENCES monsters(monster_id)
);

CREATE TABLE hunters (
    hunter_id NUMBER PRIMARY KEY,
    name VARCHAR2(255) NOT NULL,
    weapon_id NUMBER,
    armor_id NUMBER,
    monsters_hunted NUMBER,
    FOREIGN KEY (weapon_id) REFERENCES hunter_weapons(weapon_id),
    FOREIGN KEY (armor_id) REFERENCES hunter_armor(armor_id)
);
