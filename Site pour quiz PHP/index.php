<?php
$dsn = 'mysql:host=mysql-tim.alwaysdata.net;dbname=tim_test';
$user = 'tim';
$password = 'Tim&Clara42700';
$pdo = new PDO($dsn, $user, $password);
$query = $pdo->prepare("SELECT * FROM question");
$query->execute();
$question = $query->fetchAll();






foreach ($question as $quest) {
    echo $quest["id"].  " " . $quest["enoncé"] . "<br>";

}



?>
