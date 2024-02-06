<?php
session_start();
require_once("fonction.php");
require_once("bdd_op.php");

try{
    // Connexion en BDD
    $bdd = new PDO("mysql:host=$bdd_host:$bdd_port;dbname=$bdd_nom_base;charset=utf8", $bdd_user, $bdd_password,array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
}
catch(Exception $e){
    die('Erreur : '.$e->getMessage());
}
?>


<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="CSS/index.css">
    <link rel="stylesheet" href="CSS/register.css">
    <?php
    if(isset($_SESSION["prenom_u"]) && !empty($_SESSION['prenom_u']))
    {
        // un message à l'utilisateur et cequi apparaitra dans le header si il est connecté ou pas
        ?>

            Bonjour <?= $_SESSION["pseudo"]; ?> - <a href="deconnexion.php">Déconnexion</a>
        <?php
        echo"<a class='btn' href='chapitre_op.php'>  Chapitre </a>";    
        echo"<a class='btn' href='arc_affiche.php'>  Liste des arcs </a>";
        echo"<a class='btn' href='suivre.php'>  Nous suivre </a>";   
    }
    else
    {
        echo"<a class='btn' href='register.php'>  Créer votre compte </a>";
        echo"<a class='btn' href='connexion.php'>  Connecter vous à votre compte </a>";
        echo"<a class='btn' href='chapitre_op.php'>  Chapitre </a>";    
        echo"<a class='btn' href='arc_affiche.php'>  Liste des arcs </a>";   
        echo"<a class='btn' href='suivre.php'>  Nous suivre </a>"; 
    }
    ?>
</head>
<body class="container-fluid">
