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
  idquest INTEGER NOT NULL,
  rep TEXT NOT NULL,
  FOREIGN KEY(idquest) REFERENCES question(id)
); 

CREATE TABLE feedback (
  id INTEGER PRIMARY KEY NOT NULL,
  feedback TEXT NOT NULL
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

INSERT INTO bonnerep (idquest, rep) VALUES
(1, 'Masahiro Sakurai'),
(2, '1999'),
(3, 'Pikachu'),
(4, 'Waluigi'),
(5, '82'),
(6, 'EVO'),
(7, 'Donkey Kong'),
(8, 'Mewtwo'),
(9, 'King K Rool'),
(10, 'Zelda et Sheik'),
(11, 'Captain Falcon'),
(12, 'Ness');

INSERT INTO badrep (idquest, rep) VALUES
(1, 'Marc Merril'),
(1, 'Shigeru Miyamoto'),
(1, 'Yu Suzuki'),
(2, '2008'),
(2, '2001'),
(2, '1996'),
(3, 'sonic'),
(3, 'bowser'),
(3, 'zelda'),
(4, 'snake'),
(4, 'marth'),
(4, 'cloud'),
(5, '61'),
(5, '53'),
(5, '56'),
(6, 'le Pound'),
(6, 'genesis'),
(6, 'smash summit'),
(7, 'luigi'),
(7, 'roi dadidou'),
(7, 'peach'),
(8, 'pikachu'),
(8, 'kyurem'),
(8, 'amphinobi'),
(9, 'falco'),
(9, 'corin'),
(9, 'ganondorf'),
(10, 'peach et daisy'),
(10, 'link et link enfant'),
(10, 'mario et luigi'),
(11, 'mario'),
(11, 'samus'),
(11, 'chrom'),
(12, 'lucas'),
(12, 'bowser'),
(12, 'felinferno');

INSERT INTO feedback (id, feedback) VALUES
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

