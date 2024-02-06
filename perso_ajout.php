<?php
require_once('header_op.php');

if((isset($_POST['nom_p']) && $_POST['nom_p'] != '' ) && (isset($_POST['prenom_p']) && $_POST['prenom_p'] != '' )){
    $voire = 'image_op'.$_FILES['personnage_img']["name"];
    move_uploaded_file($_FILES['personnage_img']["tmp_name"],$voire);
    
    $insertArc = $bdd->prepare('INSERT INTO personnage (nom_p, prenom_p, age, apparition_manga, apparition_anime, description, personnage_img) VALUES (:nom_p, :prenom_p, :age, :apparition_manga, :apparition_anime, :description, :personnage_img)');
    $insertArc->execute([
            "nom_p" => $_POST['nom_p'],
            "prenom_p" => $_POST['prenom_p'],
            "age" => $_POST['age'],
            "apparition_manga" => $_POST['apparition_manga'],
            "apparition_anime" => $_POST['apparition_anime'],
            "description" => $_POST['descritpion'],
            "personnage_img" => $voire,
    ]);

    // rediriger vers la page d'accueil après ajout.
    header('Location:index_op.php');die;
}
?>

<a href="index_op.php">< Accueil</a>
<h1>Ajout d'un Personnage</h1>



<form action="" method="POST">
        <div>
            <label for="" class="col">Nom du Personnage</label>
            <input type="text" name="nom_p">
        </div>
        <div>
            <label for="" class="">Image</label>
            <input type="file" name="personnage_img">
        </div>
        <div>
            <label for="" class="col">Prénom du Personnage</label>
            <input type="text" name="prenom_p">
        </div>
        <div>
            <label for="" class="col">Age du Personnage</label>
            <input type="text" name="age">
        </div>
        <div>
            <label for="" class="col">Chapitre de l'apparition du Personnage</label>
            <input type="text" name="apparition_manga">
        </div>
        <div>
            <label for="" class="col">Episode de l'apparition du Personnage</label>
            <input type="text" name="apparition_anime">
        </div>
        <div>
            <label for="" class="col">Description</label>
            <input type="text" name="description">
        </div>
        <input type="submit" class="btn btn-primary">
    </form>