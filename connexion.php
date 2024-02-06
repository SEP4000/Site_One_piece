<?php
    require_once('header_op.php');
// si on a réussi à se connectéun message doit apparaitre
$message = "";
if(isset($_GET['message']) && $_GET['message'] == "inscriptionReussi"){
    $message = [
        'type' => "success",
        'msg' => "L'inscription a été validée",
    ];
}
// si on est bien connecté avec notre pseudo
if(isset($_POST['pseudo'])){
    $connexionRs = $bdd->prepare("SELECT * FROM utilisateur WHERE pseudo = :pseudo ");
    $connexionRs->execute([
        'pseudo' => $_POST['pseudo'],           
      
    ]);
    $users = $connexionRs->fetchAll();
// toutes les informations de l'utilisateur sont bonnes avec un mot de passe encrypté
    foreach ($users as $user){
        if(password_verify($_POST['mdp'], $user['mdp'])){
            $_SESSION['pseudo'] = $user['pseudo'];
            $_SESSION['nom_u'] = $user['nom_u'];
            $_SESSION['prenom_u'] = $user['prenom_u'];
            $_SESSION['role'] = $user['role'];
            header('Location:index_op.php');die;
        }
    }
    $message = [
        'type' => "danger",
        'msg' => "Erreur lors de la connexion, veuillez retenter",
    ];
}
?>

<section>
    <div>
    <?php
            if($message != "") {
                ?>
                <div class="alert alert-<?= $message['type'] ?>" role="alert">
                    <?= $message['msg'] ?>
                </div>
                <?php
            }
            ?>
        <form action="connexion.php" method="POST">
            <div class="register">
                <h1>Connectez vous</h1>
                <p> Remplissez ce formulaire afin de pouvoir vous connectez à votre compte</p>
                <hr>
                

                <input type="text" required placeholder="Entrer votre pseudo ou email" name="pseudo" value="<?php if(isset($_POST['pseudo']) && $message !== ""){echo $_POST['pseudo'];} ?>"><br>
                <input type="password" required placeholder="Entrer votre mot de passse" name="mdp" value="<?php if(isset($_POST['pseudo']) && $message !== ""){echo $_POST['mdp'];} ?>"><br>
                
                <hr>
                <input class="btn" value="Connexion" type="submit"  name="submit">
            </div>
            <div class="container signin">
                <p>Pas de compte ? <a class="btn" href="register.php">Inscrivez vous</a></p>
            </div>
        </form>
    </div>
</section>