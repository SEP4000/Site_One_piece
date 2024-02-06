<?php
    require_once('header_op.php');
// on se connecte à la table utilisateur de notre bdd pour pouvoir envoyer les données et s'inscrire
$message = "";
if(isset($_POST['prenom_u'])){
    $insert = $bdd->prepare('INSERT INTO utilisateur (nom_u, prenom_u, pseudo, mdp) VALUES(:nom_u, :prenom_u, :pseudo, :mdp)');
    $insert->execute([
            'nom_u' => $_POST['nom_u'],
            'prenom_u' => $_POST['prenom_u'],
            'pseudo' => $_POST['pseudo'],
            'mdp' => password_hash($_POST['mdp'], PASSWORD_DEFAULT),
            // encrypté le mot de passe
    ]);
    header('Location:connexion.php?message=inscriptionReussi');die;
}
?>

<section class="sign-up">
    <div>
        <form action="register.php" method="POST">
            <div class="register">
                <h1>S'inscrire</h1>
                <p> Remplissez ce formulaire afin de pouvoir vous créer un compte sur le site</p>
                <hr>

                <input type="text" required placeholder="Entrer votre prénom" name="prenom_u" value="<?php if($message !== ""){echo $_POST['prenom_u'];} ?>"><br>
                <input type="text" required placeholder="Entrer votre nom" name="nom_u" value="<?php if($message !== ""){echo $_POST['nom_u'];} ?>" ><br>
                <input type="text" required placeholder="Entrer un  Pseudo" name="pseudo" value="<?php if($message !== ""){echo $_POST['pseudo'];} ?>"><br>
                <input type="password" required placeholder="Enter un mot de passse" name="mdp" value="<?php if($message !== ""){echo $_POST['mdp'];} ?>">

                <hr>
                <input class="btn" value="S'inscrire" type="submit" name="submit">
            </div>
            <div class="container signin">
                <p>Déjà un compte ? <a class="btn" href="connexion.php">Connecter vous</a></p>
            </div>
        </form>
    </div>
</section>