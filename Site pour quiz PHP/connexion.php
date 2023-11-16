<?php
session_start();

// Vérifier si le formulaire de connexion a été soumis
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Récupérer les informations d'identification depuis le formulaire
    $email = $_POST["email"];
    $password = $_POST["password"];

    // Ici, vous devrez vous connecter à votre base de données et vérifier les informations d'identification
    // Remplacez les lignes ci-dessous par votre logique de connexion à la base de données
    $servername = "votre_serveur";
    $username = "votre_utilisateur";
    $dbpassword = "votre_mot_de_passe";
    $dbname = "votre_base_de_donnees";

    // Créer une connexion
    $conn = new mysqli($servername, $username, $dbpassword, $dbname);

    // Vérifier la connexion
    if ($conn->connect_error) {
        die("La connexion à la base de données a échoué : " . $conn->connect_error);
    }

    // Échapper les données pour éviter les injections SQL (utilisez des déclarations préparées pour une sécurité maximale)
    $email = $conn->real_escape_string($email);
    $password = $conn->real_escape_string($password);

    // Hasher le mot de passe (vous devriez utiliser une méthode de hachage sécurisée comme bcrypt)
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    // Requête SQL pour vérifier les informations d'identification
    $sql = "SELECT * FROM users WHERE email='$email'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Utilisateur trouvé, vérifier le mot de passe
        $row = $result->fetch_assoc();
        if (password_verify($password, $row["password"])) {
            // Mot de passe correct, enregistrez des informations dans la session si nécessaire
            $_SESSION["user_id"] = $row["id"];
            $_SESSION["user_email"] = $row["email"];

            // Rediriger l'utilisateur vers la page d'accueil ou une autre page protégée
            header("Location: accueil.php");
            exit();
        } else {
            $error_message = "Mot de passe incorrect.";
        }
    } else {
        $error_message = "Aucun utilisateur trouvé avec cet e-mail.";
    }

    // Fermer la connexion à la base de données
    $conn->close();
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="site.css">
    <title>Quiz</title>
</head>
<body>
    <div class="header">
        <div class="logo-container">
            <a href="index.html">
                <img src="votre-logo.png" alt="Logo" class="logo">
            </a>
            <div class="buttons-container">
                <button class="header-button" onclick="window.location.href='index.html'">Accueil</button>
            </div>
        </div>
    </div>
    <div class= "connexion-box">
        <b>
            <h2>Connexion</h2>
            <?php
            // Afficher un message d'erreur s'il y a une erreur
            if (isset($error_message)) {
                echo "<p style='color: red;'>$error_message</p>";
            }
            ?>
            <form action="connexion.php" method="post">
                <label for="email">Email :</label>
                <input type="email" id="email" name="email" required>
                <label></label>
    
                <label for="password">Mot de passe :</label>
                <div class="password-container">
                    <input type="password" id="password" name="password" required> 
    
                <label> <a href="motdepasseoublie.html">Mot de passe oublié ?</a></label>
                <input type="checkbox" id="showPassword" onclick="togglePassword()"> Afficher le mot de passe                        
                <label><button type="submit">Connexion</button></label>
            </form>
    
            <p>Vous n'avez pas de compte ? <a href="inscription.html">Inscription</a></p>
        </div>
    </div>
    <script>
        function togglePassword() {
            var passwordInput = document.getElementById("password");
            var showPasswordCheckbox = document.getElementById("showPassword");

            if (showPasswordCheckbox.checked) {
                passwordInput.type = "text";
            } else {
                passwordInput.type = "password";
            }
        }
    </script>
</body>
</html>
