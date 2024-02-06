<?php
require_once('header_op.php');



if(isset($_POST['nom_a']) && $_POST['nom_a'] != ''){
    $voir = 'image_op'.$_FILES['arc_img']["name"];
    move_uploaded_file($_FILES['arc_img']["tmp_name"],$voir);
    // on choisit ce qu'on peut ajouter
    
    $insertArc = $bdd->prepare('INSERT INTO arc (nom_a, nbr_chap, nbr_anime, desription, arc_img) VALUES (:nom_a, :nbr_chap, :nbr_anime, :desription, :arc_img)');
    $insertArc->execute([
            "nom_a" => $_POST['nom_a'],
            "nbr_chap" => $_POST['nbr_chap'],
            "nbr_anime" => $_POST['nbr_anime'],
            "desription" => $_POST['desription'],
            "arc_img" => $voir,
    ]);

    // rediriger vers la page d'accueil après ajout.
    header('Location:index_op.php');die;
}
// on ajoute
?>

<a class="btn" href="index_op.php">< Accueil</a>
<h1>Ajout d'un Arc</h1>



<form action="" method="POST">
        <div>
            <label for="" class="col">Nom de l'Arc</label>
            <input type="text" name="nom_a">
        </div>
        <div>
            <label for="" class="">Image</label>
            <input type="file" name="arc_img">
        </div>
        <div>
            <label for="" class="col">Nombre de chapitres</label>
            <input type="text" name="nbr_chap">
        </div>
        <div>
            <label for="" class="col">Nombre d'épisodes</label>
            <input type="text" name="nbr_anime">
        </div>
        <div>
            <label for="" class="col">Description</label>
            <input type="text" name="desription">
        </div>
        <input type="submit" class="btn btn-primary">
    </form>