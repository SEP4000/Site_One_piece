<?php
require_once('header_op.php');
?>

<?php
// Si je n'ai pas de variable id, je redirige vers l'accueil
if(!isset($_GET['id_personnage'])){
    header('Location:index_op.php');die;
}


if(isset($_POST['nom_p']) && isset($_POST['prenom_p'])){
    if($_FILES['personnage_img']['name'] != ""){
        $voire = 'image_op'.$_FILES['personnage_img']["name"];
        move_uploaded_file($_FILES['personnage_img']["tmp_name"],$voire );

    $personnageUpdate = $bdd->prepare('UPDATE personnage SET  nom_p = :nom_p, prenom_p = :prenom_p, age = :age, apparition_manga= :apparition_manga, apparition_anime = :apparition_anime, descrption = :description, personnage_img: =personnage_img WHERE id_personnage=:id_personnage');
    $personnageUpdate->execute([
        "nom_p" => $_POST['nom_p'],
        "prenom_p" => $_POST['prenom_p'],
        "age" => $_POST['age'],
        "apparition_manga" => $_POST['apparition_manga'],
        "apparition_anime" => $_POST['apparition_anime'],
        "description" => $_POST['descritpion'],
        "id_personnage" => $_GET['id_personnage'],
        "personnage_img" => $voire,
    ]);
}else{
    $personnageUpdate = $bdd->prepare('UPDATE personnage SET  nom_p = :nom_p, prenom_p = :prenom_p, age = :age, apparition_manga= :apparition_manga, apparition_anime = :apparition_anime, descrption = :description, WHERE id_personnage=:id_personnage');
    $personnageUpdate->execute([
        "nom_p" => $_POST['nom_p'],
        "prenom_p" => $_POST['prenom_p'],
        "age" => $_POST['age'],
        "apparition_manga" => $_POST['apparition_manga'],
        "apparition_anime" => $_POST['apparition_anime'],
        "description" => $_POST['descritpion'],
        'id_personnage' => $_GET['id_personnage'],
    ]);
}
}

 //Requête préparée
 $personnageObj = $bdd->prepare('SELECT * FROM personnage p WHERE p.id_personnage = ?');
 $personnageObj->execute([$_GET['id_personnage']]);

 // Je récupère la première ligne du résultat (Je fais ça car je sélectionne par rapport à l'id)
 $personnage = $personnageObj->fetch();

 // Si ça ne correspond pas à un arc existant, je redirige vers l'accueil
 if($personnage == null){
     header('Location:index_op.php');die;
 }

?>

<h1>Modifier l'Arc</h1>

    <form action="" method="POST">
        <div>
            <label for="" class="col">Nom du Personnage</label>
            <input value="<?= $personnage['nom_p'] ?>" type="text" name="nom_p">
        </div>
        <div>
            <label for="" class="">Image</label>
            <input  type="file" name="personnage_img">
            <em>Image actuelle :</em>
            <img src="<?= $personnage['personnage_img'] ?>" alt="">
        </div>
        <div>
            <label for="" class="co">Prénom du Personnage</label>
            <input value="<?= $personnage['prenom_p'] ?>" type="text" name="prenom_p">
        </div>
        <div>
            <label for="" class="col">Age du Personnage</label>
            <input value="<?= $personnage['age'] ?>" type="text" name="age">
        </div>
        <div>
            <label for="" class="col">Chapitre de l'apparition du Personnage</label>
            <input value="<?= $personnage['apparition_manga'] ?>" type="text" name="apparition_manga">
        </div>
        <div>
            <label for="" class="col">Episode de l'apparition du Personnage</label>
            <input value="<?= $personnage['apparition_anime'] ?>" type="text" name="apparition_anime">
        </div>
        <div>
            <label for="" class="col-md-2">Description</label>
            <input value="<?= $personnage['description'] ?>" type="text" name="description">
        </div>


        
        <br><br>
        <input type="submit" class="btn btn-primary">
    </form>