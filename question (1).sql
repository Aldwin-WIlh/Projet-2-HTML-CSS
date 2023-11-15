CREATE TABLE question (
  id INTEGER PRIMARY KEY NOT NULL,
  enoncer TEXT NOT NULL
); 

CREATE TABLE feedback (
    id INT PRIMARY KEY,
    good_feedback VARCHAR(255),
    bad_feedback VARCHAR(255)
);


CREATE TABLE rep (
  ID INTEGER PRIMARY KEY NOT NULL,
  idquest INTEGER NOT NULL,
  idfeed INTEGER NOT NULL,
  rep VARCHAR(255) NOT NULL,
  resultat BOOLEAN NOT NULL,
  FOREIGN KEY(idquest) REFERENCES question(id)
); 


CREATE TABLE login (
  id INT PRIMARY KEY NOT NULL,
  login VARCHAR(255) NOT NULL,
  mdp VARCHAR(255) NOT NULL
);

CREATE TABLE users (
    ID INT PRIMARY KEY,
    admin BOOLEAN NOT NULL,
    mail VARCHAR(150) NOT NULL,
    username TEXT NOT NULL,
    mdp VARCHAR(255) NOT NULL
);

CREATE TABLE score (
  id INT PRIMARY KEY NOT NULL,
  id_utilisateur INT NOT NULL,
  point INT CHECK (point BETWEEN 0 AND 12),
  FOREIGN KEY(id_utilisateur) REFERENCES users(id)
);

CREATE TABLE leaderboard (
  place INT PRIMARY KEY NOT NULL,
  nom varchar(35),
  iduser INT, 
  score INT,
  FOREIGN KEY(iduser) REFERENCES users(id)
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

INSERT INTO rep (id, idquest, rep, resultat) VALUES
(1, 1, 'Masahiro Sakurai', TRUE),
(2, 2, '1999', TRUE),
(3, 3, 'Pikachu', TRUE),
(4, 4, 'Waluigi', TRUE),
(5, 5, '82', TRUE),
(6, 6, 'EVO', TRUE),
(7, 7, 'Donkey Kong', TRUE),
(8, 8, 'Mewtwo', TRUE),
(9, 9, 'King K Rool', TRUE),
(10, 10,'Zelda et Sheik', TRUE),
(11, 11,'Captain Falcon', TRUE),
(12, 12,'Ness', TRUE),
(13, 1,'Marc Merril', FALSE),
(14, 1,'Shigeru Miyamoto', FALSE),
(15, 1,'Yu Suzuki', FALSE),
(16, 2,'2008', FALSE),
(17, 2,'2001', FALSE),
(18, 2,'1996', FALSE),
(19, 3,'sonic', FALSE),
(20, 3,'bowser', FALSE),
(21 ,3 ,'zelda' ,FALSE ),
(22,4, 'snake',FALSE),
(23,4, 'marth',FALSE),
(24,4, 'cloud',FALSE),
(25,5, '61',FALSE),
(26,5, '53',FALSE),
(27,5, '56',FALSE),
(28,6, 'le Pound',FALSE),
(29,6, 'genesis',FALSE),
(30 ,6 ,'smash summit' ,FALSE ),
(31 ,7 ,'luigi' ,FALSE ),
(32 ,7 ,'roi dadidou' ,FALSE ),
(33 ,7 ,'peach' ,FALSE ),
(34 ,8 ,'pikachu' ,FALSE ),
(35 ,8 ,'kyurem' ,FALSE ),
(36 ,8 ,'amphinobi' ,FALSE ),
(37 ,9 ,'falco' ,FALSE ),
(38 ,9 ,'corin' ,FALSE ),
(39 ,9 ,'ganondorf' ,FALSE ),
(40 ,10 ,'peach et daisy' ,FALSE ),
(41 ,10 ,'link et link enfant' ,FALSE ),
(42 ,10 ,'mario et luigi' ,FALSE ),
(43 ,11 ,'mario' ,FALSE ),
(44 ,11 ,'samus' ,FALSE ),
(45 ,11 ,'chrom' ,FALSE ),
(46 ,12 ,'lucas' ,FALSE ),
(47 ,12 ,'bowser' ,FALSE ),
(48 ,12 ,'felinferno' ,FALSE );

INSERT INTO feedback (id, good_feedback, bad_feedback) VALUES
(1, "bonne reponse le createur de super smash bros est bien Masahiro Sakurai", "le créateur est Masahiro Sakurai"),
(2, "effectivement c'est en 1999 que le jeu fu créée", "le jeu super smash bros 64 est sortie sur Nintendo64 en 1999"),
(3, "bien joué pikachui était déjà présent dans le premier opus", "Il n'est pas possible de jouer ce personnage sur Super Smash Bros 64, le seul qui puisse être joué parmi ces quatre-là est Pikachu."),
(4, "petite larme pour le frère de Wario qui lui est jouable", "Parmi ces quatre-là, seul Waluigi n'est pas jouable dans le dernier opus, tandis que ce personnage est jouable."),
(5, "Ça commence à faire beaucoup de personnage", "aujourd'hui il y a 82 personnage jouable avec les derniers dlc"),
(6, "L'Evo est le plus grand tournoi de jeux de combat et est aussi le tournoi regroupant le plus de joueur de super smash bros", "l'EVO est le plus grand tournoi de jeux de combat c'est donc egalement le cas pour super smash bros (melee et ultimate)"),
(7, "le personnage iconique donkey kong est un gorille", "non le personnage qui est un gorille est donkey kong"),
(8, "bien joué mewtwo est le seul pokémon légendaire jouable dans super smash bros", "le seul pokemon legendaire jouable est mewtwo"),
(9, "effectivement c'est bien king k Rool, il est aussi le méchant dans les jeux donkey Kong", "le personnage ressemblant a un crocodile est king k rool il est aussi le mechant dans les jeux donkey kong"),
(10, "C'est seulement depuis le précédent opus que Zelda et Cheik sont deux personnage distinct", "non ces deux personnages ont toujours été deux personnages jouables séparément"),
(11, "c est du jeux peu connue F-zero que viens captain falcon", "le personnage dont la première apparition vient d'un jeu de courses est captain falcon"),
(12, "l attaque pk fire qui a fait rager de nombreuses personnes sur le online est une attaque de ness", "non cette attaque quelque peut agaçant viens du personnage de ness");






