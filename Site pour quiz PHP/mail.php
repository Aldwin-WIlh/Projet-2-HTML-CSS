<?php
$to = "";
$subject = "Sujet de l'e-mail";
$message = "Contenu de l'e-mail. <a 
href='https://www.w3schools.com/php/'>Tuto PHP</a>";
// En-têtes pour spécifier le format de l'e-mail
$headers = "From: timl@alwaysdata.net\r\n";
$headers .= "Reply-To: tim@alwaysdata.net\r\n";
// $headers .= "Content-Type: text/plain; charset=UTF-8\r\n";
$headers .= "Content-type: text/html; charset=UTF-8" . "\r\n";
// Envoyer l'e-mail
$mailSent=mail($to, $subject, $message, $headers);

?>