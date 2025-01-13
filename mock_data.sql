INSERT INTO hunter_weapons
  (NAME
  ,TYPE)
VALUES
  ('Great Sword'
  ,'Melee');
INSERT INTO hunter_weapons
  (NAME
  ,TYPE)
VALUES
  ('Long Sword'
  ,'Melee');
INSERT INTO hunter_weapons
  (NAME
  ,TYPE)
VALUES
  ('Sword and Shield'
  ,'Melee');
INSERT INTO hunter_weapons
  (NAME
  ,TYPE)
VALUES
  ('Dual Blades'
  ,'Melee');
INSERT INTO hunter_weapons
  (NAME
  ,TYPE)
VALUES
  ('Lance'
  ,'Melee');
INSERT INTO hunter_weapons
  (NAME
  ,TYPE)
VALUES
  ('Gunlance'
  ,'Melee');
INSERT INTO hunter_weapons
  (NAME
  ,TYPE)
VALUES
  ('Hammer'
  ,'Melee');
INSERT INTO hunter_weapons
  (NAME
  ,TYPE)
VALUES
  ('Hunting Horn'
  ,'Melee');
INSERT INTO hunter_weapons
  (NAME
  ,TYPE)
VALUES
  ('Bow'
  ,'Ranged');
INSERT INTO hunter_weapons
  (NAME
  ,TYPE)
VALUES
  ('Heavy Bowgun'
  ,'Ranged');

INSERT INTO hunter_armor
  (NAME
  ,monster_id)
VALUES
  ('Banbaro Armor'
  ,100);
INSERT INTO hunter_armor
  (NAME
  ,monster_id)
VALUES
  ('Beotodus Armor'
  ,101);
INSERT INTO hunter_armor
  (NAME
  ,monster_id)
VALUES
  ('Nargacuga Armor'
  ,102);
INSERT INTO hunter_armor
  (NAME
  ,monster_id)
VALUES
  ('Velkhana Armor'
  ,103);
INSERT INTO hunter_armor
  (NAME
  ,monster_id)
VALUES
  ('Tigrex Armor'
  ,104);
INSERT INTO hunter_armor
  (NAME
  ,monster_id)
VALUES
  ('Legiana Armor'
  ,105);

INSERT INTO monsters
  (NAME
  ,TYPE
  ,weakness)
VALUES
  ('Banbaro'
  ,'Brute Wyvern'
  ,'Dragon');
INSERT INTO monsters
  (NAME
  ,TYPE
  ,weakness)
VALUES
  ('Beotodus'
  ,'Piscine Wyvern'
  ,'Fire');
INSERT INTO monsters
  (NAME
  ,TYPE
  ,weakness)
VALUES
  ('Nargacuga'
  ,'Flying Wyvern'
  ,'Thunder');
INSERT INTO monsters
  (NAME
  ,TYPE
  ,weakness)
VALUES
  ('Velkhana'
  ,'Elder Dragon'
  ,'Fire');
INSERT INTO monsters
  (NAME
  ,TYPE
  ,weakness)
VALUES
  ('Tigrex'
  ,'Brute Wyvern'
  ,'Thunder');
INSERT INTO monsters
  (NAME
  ,TYPE
  ,weakness)
VALUES
  ('Legiana'
  ,'Flying Wyvern'
  ,'Fire');

INSERT INTO areas
  (NAME
  ,monster_id)
VALUES
  ('Ancient Forest'
  ,103);
INSERT INTO areas
  (NAME
  ,monster_id)
VALUES
  ('Wildspire Waste'
  ,101);
INSERT INTO areas
  (NAME
  ,monster_id)
VALUES
  ('Coral Highlands'
  ,102);
INSERT INTO areas
  (NAME
  ,monster_id)
VALUES
  ('Hoarfrost Reach'
  ,103);
INSERT INTO areas
  (NAME
  ,monster_id)
VALUES
  ('Elder’s Recess'
  ,104);
INSERT INTO areas
  (NAME
  ,monster_id)
VALUES
  ('Rotten Vale'
  ,100);

INSERT INTO hunters
  (NAME
  ,weapon_id
  ,armor_id
  ,monsters_hunted)
VALUES
  ('Hunter A'
  ,1000
  ,2000
  ,5);
INSERT INTO hunters
  (NAME
  ,weapon_id
  ,armor_id
  ,monsters_hunted)
VALUES
  ('Hunter B'
  ,1001
  ,2001
  ,3);
INSERT INTO hunters
  (NAME
  ,weapon_id
  ,armor_id
  ,monsters_hunted)
VALUES
  ('Hunter C'
  ,1002
  ,2002
  ,7);
INSERT INTO hunters
  (NAME
  ,weapon_id
  ,armor_id
  ,monsters_hunted)
VALUES
  ('Hunter D'
  ,1003
  ,2003
  ,2);
INSERT INTO hunters
  (NAME
  ,weapon_id
  ,armor_id
  ,monsters_hunted)
VALUES
  ('Hunter E'
  ,1004
  ,2004
  ,9);
INSERT INTO hunters
  (NAME
  ,weapon_id
  ,armor_id
  ,monsters_hunted)
VALUES
  ('Hunter F'
  ,1005
  ,2005
  ,1);
INSERT INTO hunters
  (NAME
  ,weapon_id
  ,armor_id
  ,monsters_hunted)
VALUES
  ('Hunter G'
  ,1006
  ,2002
  ,4);
INSERT INTO hunters
  (NAME
  ,weapon_id
  ,armor_id
  ,monsters_hunted)
VALUES
  ('Hunter H'
  ,1007
  ,2003
  ,6);
INSERT INTO hunters
  (NAME
  ,weapon_id
  ,armor_id
  ,monsters_hunted)
VALUES
  ('Hunter I'
  ,1008
  ,2004
  ,8);
INSERT INTO hunters
  (NAME
  ,weapon_id
  ,armor_id
  ,monsters_hunted)
VALUES
  ('Hunter J'
  ,1009
  ,2005
  ,0);
