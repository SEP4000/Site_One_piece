<?php
require_once('header_op.php');
?>

<?php
// Si je n'ai pas de variable id, je redirige vers l'accueil
    if(!isset($_GET['id_personnage'])){
        header('Location:index_op.php');die;
    }

    //Suppression du personnage
    $arcDelete = $bdd->prepare('DELETE FROM personnage WHERE id = ?');
    $arcDelete->execute([$_GET['id_personnage']]);

    header('Location:index_op.php');die;

?>