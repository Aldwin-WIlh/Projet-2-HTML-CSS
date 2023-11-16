<?php
$dsn = 'mysql:host=mysql-tim.alwaysdata.net;dbname=tim_test';
$user = 'tim';
$password = 'Tim&Clara42700';
$pdo = new PDO($dsn, $user, $password);


// Script pour la modif d emot de passe
$token = bin2hex(random_bytes(32));
$query = $pdo->prepare("INSERT INTO reset_tokens (users_id,token) VALUES (,$token);
$query->execute();
$question = $query->fetchAll();

$to = "Mail de l'utilisateur";
$subject = "Sujet de l'e-mail";
$message = "Lien de la page de modification de mot de passe <a 
href=''>Modification de mot de passe</a>";
// En-têtes pour spécifier le format de l'e-mail
$headers = "From: quiz@alwaysdata.net\r\n";
$headers .= "Reply-To: Mail de l'utilisateur\r\n";
// $headers .= "Content-Type: text/plain; charset=UTF-8\r\n";
$headers .= "Content-type: text/html; charset=UTF-8" . "\r\n";
// Envoyer l'e-mail
$mailSent=mail($to, $subject, $message, $headers);








?>
