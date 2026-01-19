CREATE TABLE monster_history (
    history_id NUMBER PRIMARY KEY,
    monster_id NUMBER,
    name VARCHAR2(255),
    type VARCHAR2(255),
    weakness VARCHAR2(255),
    change_type VARCHAR2(10),
    change_date DATE
);

CREATE TABLE area_history (
    history_id NUMBER PRIMARY KEY,
    area_id NUMBER,
    name VARCHAR2(255),
    monster_id NUMBER,
    change_type VARCHAR2(10),
    change_date DATE
);

CREATE TABLE hunter_weapon_history (
    history_id NUMBER PRIMARY KEY,
    weapon_id NUMBER,
    name VARCHAR2(255),
    type VARCHAR2(255),
    change_type VARCHAR2(10),
    change_date DATE
);

CREATE TABLE hunter_armor_history (
    history_id NUMBER PRIMARY KEY,
    armor_id NUMBER,
    name VARCHAR2(255),
    monster_id NUMBER,
    change_type VARCHAR2(10),
    change_date DATE
);

CREATE TABLE hunter_history (
    history_id NUMBER PRIMARY KEY,
    hunter_id NUMBER,
    name VARCHAR2(255),
    weapon_id NUMBER,
    armor_id NUMBER,
    monsters_hunted NUMBER,
    change_type VARCHAR2(10),
    change_date DATE
);
