<?php
require_once('header_op.php');


// Si je n'ai pas de variable id, je redirige vers l'accueil
    if(!isset($_GET['id_arc'])){
        header('Location:index_op.php');die;
    }

    // Suppression des clés étrangères de mon arc
    $arcDelete = $bdd->prepare('DELETE FROM arc_personnage WHERE personnage_id = ?');
    $arcDelete->execute([$_GET['id_personnage']]);

    //Suppression de l'arc
    $arcDelete = $bdd->prepare('DELETE FROM arc WHERE id = ?');
    $arcDelete->execute([$_GET['id_arc']]);

    header('Location:index_op.php');die;
?>