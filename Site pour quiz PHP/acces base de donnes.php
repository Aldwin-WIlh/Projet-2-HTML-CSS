<?php
$dsn = 'mysql:host=mysql-tim.alwaysdata.net;dbname=tim_test';
$user = 'tim';
$password = 'Tim&Clara42700';
try {
    $pdo = new PDO($dsn, $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    $query = $pdo->prepare("SELECT * FROM login");
    $query->execute();
    //nombre de lignes retournées
    echo "<p>rows " . $query->rowCount() . "</p>";
    //affichage d’une colonne ligne par ligne
    while ($row = $query->fetch()) {
        echo $row['mdp'] . "<br>";
    }    
} catch (PDOException $e) {
    echo "Erreur : " . $e->getMessage();
}
?>