<?php
session_start();

// Fonction pour générer un code de confirmation aléatoire
function generateConfirmationCode() {
    return str_pad(mt_rand(0, 999999), 6, '0', STR_PAD_LEFT);
}

// Vérifier si l'étape de confirmation est en cours
if (isset($_POST['confirm_step'])) {
    // Vérifier si le code de confirmation est correct
    if ($_POST['confirmation_code'] == $_SESSION['confirmation_code']) {
        // Traiter le formulaire de mot de passe si soumis
        if (isset($_POST['submit_passwords'])) {
            $password1 = $_POST['password1'];
            $password2 = $_POST['password2'];

            // Vérifier si les mots de passe sont identiques
            if ($password1 == $password2) {
                // Stocker le mot de passe dans la session ou la base de données
                $_SESSION['password'] = $password1;
                echo "Mot de passe enregistré avec succès!";
                
                // Rediriger vers la page connexion.php
                header('Location: connexion.php');
                exit(); // Assurez-vous de terminer le script après la redirection
            } else {
                echo "Les mots de passe ne correspondent pas.";
            }
        }
    } else {
        // Afficher le message d'erreur
        echo "<p style='color: red;'>Code de confirmation incorrect.</p>";
    }
} elseif (isset($_POST['email'])) {
    // Traitement du formulaire d'adresse e-mail
    $email = $_POST['email'];
    
    // Générer un code de confirmation
    $confirmation_code = generateConfirmationCode();

    // Stocker le code de confirmation dans la session
    $_SESSION['confirmation_code'] = $confirmation_code;

    $subject = "Code de confirmation";
    $message = "Votre code de confirmation est : $confirmation_code";
    $headers = "From: votre_email@example.com"; // Remplacez par votre adresse e-mail

    // Envoyer l'e-mail
    mail($email, $subject, $message, $headers);

    // Afficher le formulaire de confirmation
    echo "
    <!DOCTYPE html>
    <html lang='fr'>
    <head>
        <meta charset='UTF-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1.0'>
        <link rel='stylesheet' href='site.css'>
        <title>Quiz</title>
    </head>
    <body>
        <div class='container'>
            <p></p>
            <div class='header'><div class='logo-container'>
                <a href='index.html'>
                    <img src='votre-logo.png' alt='Logo' class='logo'>
                </a>
                <div class='buttons-container'>
                    <button class='header-button' onclick='window.location.href='index.html''>Accueil</button>
                    <button class='header-button' onclick='window.location.href='connexion.html''>Connexion</button>
                </div>
            </div></div>
            <form method='post'>
                <label for='confirmation_code'>Code de confirmation :</label>
                <input type='text' name='confirmation_code' id='confirmation_code' required><br>
                
                <button type='submit' name='confirm_step'>Valider</button>
            </form>
        </div>
    </body>
    </html>
    ";
} else {
    // Afficher le formulaire d'adresse e-mail
    echo "
    <!DOCTYPE html>
    <html lang='fr'>
    <head>
        <meta charset='UTF-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1.0'>
        <link rel='stylesheet' href='site.css'>
        <title>Quiz</title>
    </head>
    <body>
        <div class='container'>
            <p></p>
            <div class='header'><div class='logo-container'>
                <a href='index.html'>
                    <img src='votre-logo.png' alt='Logo' class='logo'>
                </a>
                <div class='buttons-container'>
                    <button class='header-button' onclick='window.location.href='index.html''>Accueil</button>
                    <button class='header-button' onclick='window.location.href='connexion.html''>Connexion</button>
                </div>
            </div></div>
            <form method='post'>
                <label for='email'>Adresse e-mail :</label>
                <input type='email' name='email' id='email' required><br>
                
                <button type='submit'>Valider</button>
            </form>
        </div>
    </body>
    </html>
    ";
}
?>
