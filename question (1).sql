CREATE TABLE question (
  id INTEGER PRIMARY KEY NOT NULL,
  enoncer TEXT NOT NULL
); 

CREATE TABLE bonnerep (
  id INTEGER PRIMARY KEY NOT NULL,
  rep TEXT NOT NULL
  FOREIGN KEY(idquest) REFERENCES question(id)
); 

CREATE TABLE badrep (
  id INTEGER PRIMARY KEY NOT NULL,
  idquest INTEGER NOT NULL,
  rep TEXT NOT NULL,
  FOREIGN KEY(idquest) REFERENCES question(id)
); 

CREATE TABLE goodfeedback (
  id INTEGER PRIMARY KEY NOT NULL,
  idrep INTEGER NOT NULL
  feedback TEXT NOT NULL
  FOREIGN KEY(idrep) REFERENCES bonnerep(id)
); 

CREATE TABLE badfeedback (
  id INTEGER PRIMARY KEY NOT NULL,
  idrep INTEGER NOT NULL
  feedback TEXT NOT NULL
  FOREIGN KEY(idrep) REFERENCES badrep(id)
); 


INSERT INTO question (id, enoncer) VALUES
(1, 'Qui est le créateur du jeu ?'),
(2, 'En quelle année a été créé le premier Smash Bros ?'),
(3, 'Lequel de ces personnages est dans le premier Super Smash Bros (Super Smash Bros 64) ?'),
(4, 'Lequel de ces personnages n’apparaît pas dans le jeu, tous opus confondus ?'),
(5, 'Combien y a-t-il de personnages sur le dernier opus ?'),
(6, 'À quel endroit se déroule le plus grand tournoi Super Smash Bros ?'),
(7, 'Quel est le personnage qui ressemble à un gros singe ?'),
(8, 'Quel est le seul Pokémon légendaire dans le jeu ?'),
(9, 'Quel est le personnage qui ressemble à un crocodile ?'),
(10, 'Quels sont les deux personnages qui, dans les jeux précédents, étaient le même personnage ?'),
(11, 'Quel personnage ci-dessous vient d’un jeu de course ?'),
(12, 'Quel personnage utilise le célèbre ‘PK Fire’ ?');

INSERT INTO bonnerep (id,idquest, rep) VALUES
(1,1, 'Masahiro Sakurai'),
(2,2, '1999'),
(3,3, 'Pikachu'),
(4,4, 'Waluigi'),
(5,5, '82'),
(6,6, 'EVO'),
(7,7, 'Donkey Kong'),
(8,8, 'Mewtwo'),
(9,9, 'King K Rool'),
(10,10, 'Zelda et Sheik'),
(11,11, 'Captain Falcon'),
(12,12, 'Ness');

INSERT INTO badrep (id,idquest, rep) VALUES
(1,1, 'Marc Merril'),
(2,1, 'Shigeru Miyamoto'),
(3,1, 'Yu Suzuki'),
(4,2, '2008'),
(5,2, '2001'),
(6,2, '1996'),
(7,3, 'sonic'),
(8,3, 'bowser'),
(9,3, 'zelda'),
(10,4, 'snake'),
(11,4, 'marth'),
(12,4, 'cloud'),
(13,5, '61'),
(14,5, '53'),
(15,5, '56'),
(16,6, 'le Pound'),
(17,6, 'genesis'),
(18,6, 'smash summit'),
(19,7, 'luigi'),
(20,7, 'roi dadidou'),
(21,7, 'peach'),
(22,8, 'pikachu'),
(23,8, 'kyurem'),
(24,8, 'amphinobi'),
(25,9, 'falco'),
(26,9, 'corin'),
(27,9, 'ganondorf'),
(28,10, 'peach et daisy'),
(29,10, 'link et link enfant'),
(30,10, 'mario et luigi'),
(31,11, 'mario'),
(32,11, 'samus'),
(33,11, 'chrom'),
(34,12, 'lucas'),
(35,12, 'bowser'),
(36,12, 'felinferno');

INSERT INTO goodfeedback (id, feedback) VALUES
(1,  'le créateur de super smash bros est Masahiro Sakurai'),
(2,  'le premier jeux super smash bros a ete créé en 1999'),
(3,  'le personnage present dans le premier opus est Pikachu'),
(4,  'waluigi contrairement a son confrère wario n est pas jouable'),
(5,  'Il y a 82 personnage jouable avec les dlc'),
(6,  'L EVO est le plus grand tournois de jeux de combat et est aussi le tournoi regroupant le plus de joueur de super smash bros'),
(7,  'le personnage iconique donkey kong est un gorille'),
(8,  'le seul pokemon legendaire jouable est mewtwo'),
(9,  'le personnage ressemblant a un crocodile est king k rool il est aussi le mechant dans les jeux donkey kong'),
(10,  'c est seulement depuis le precedent opus que zelda et sheik sont deux personnage distinct'),
(11,  "c est du jeux peu connue F-zero que viens captain falcon"),
(12,  'l attaque pk fire qui a fait rager de nombreuses personnes sur le online est une attaque de ness');




