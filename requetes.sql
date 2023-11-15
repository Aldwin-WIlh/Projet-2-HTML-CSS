  <!-- Liste des questions pour les utilisateurs -->
    SELECT enoncer FROM question

  <!-- Supprimer une question -->
    DELETE FROM questions WHERE id="id de la question"

  <!-- Modifier une question -->
    UPDATE question SET enoncer = "Nv question" WHERE id="id de la question"


  <!-- Récupérer un utilisateur ayant le score maximum -->
    SELECT users.pseudo FROM score,users WHERE score.point=10 AND score.id_utilisateur=users.id


  <!-- Récupérer les scores des utilisateurs -->
    SELECT * FROM score
   

  <!-- Ajouter une question -->
    INSERT INTO question VALUES ("id","enoncer")

  <!-- Ajouter un utilisateur -->
    INSERT INTO users VALUES ("id","pseudo")

  <!-- Ajouter un auteur -->
    INSERT INTO autheurs VALUES ("id,"Prénom","Nom")

  <!-- Afficher le Top 10 du leaderboard -->
    SELECT users.username AS nom, score.point FROM users
    JOIN score ON users.id = score.id_utilisateur
    ORDER BY score.point DESC
    LIMIT 10;
