<?php
require_once('header_op.php');
?>

<?php
// Si je n'ai pas de variable id, je redirige vers l'accueil
if(!isset($_GET['id_arc'])){
    header('Location:index_op.php');die;
}


if(isset($_POST['nom_a'])){
    if($_FILES['arc_img']['name'] != ""){
        $voir = 'image_op'.$_FILES['arc_img']["name"];
        move_uploaded_file($_FILES['arc_image']["tmp_name"],$voir );
        // on choisit ce que l'on veut modifier, avec l'image ou pas

    $arcUpdate = $bdd->prepare('UPDATE arc SET  nom_a = :nom_a, nbr_chap= :nbr_chap, nbr_anime = :nbr_anime, desription = :desription,  arc_img = :arc_img WHERE id_arc=:id_arc');
    $arcUpdate->execute([
        "nom_a" => $_POST['nom_a'],
        "nbr_chap" => $_POST['nbr_chap'],
        "nbr_anime" => $_POST['nbr_anime'],
        "desription" => $_POST['desription'],
        'id_arc' => $_GET['id_arc'],
        "arc_img" => $voir,
    ]);
}else{
    $arcUpdate = $bdd->prepare('UPDATE arc SET  nom_a = :nom_a, nbr_chap= :nbr_chap, nbr_anime = :nbr_anime, desription = :desription, WHERE id_arc=:id_arc');
    $arcUpdate->execute([
        "nom_a" => $_POST['nom_a'],
        "nbr_chap" => $_POST['nbr_chap'],
        "nbr_anime" => $_POST['nbr_anime'],
        "desription" => $_POST['desription'],
        'id_arc' => $_GET['id_arc'],
    ]);
}
// on peut supprimer la liaison ds personnages et de l'arc

    $deletePersonnages = $bdd->prepare('DELETE FROM arc_personnage WHERE arc_id = ?');
    $deletePersonnages->execute([$_GET['id_personnage']]);

    if(count($_POST['personnages'])){
        foreach ($_POST['personnages'] as $personnage) {
            $insertPersonnages = $bdd->prepare('INSERT INTO `arc_personnage`(`arc_id`, `personnage_id`) VALUES (?,?)');
            $insertPersonnages->execute([$_GET['id_personnage'], $personnage]);
        }
    }
}

 //Requête préparée
 $arcObj = $bdd->prepare('SELECT * FROM arc a WHERE a.id_arc = ?');
 $arcObj->execute([$_GET['id_arc']]);

 // Je récupère la première ligne du résultat (Je fais ça car je sélectionne par rapport à l'id)
 $arc = $arcObj->fetch();

 // Si ça ne correspond pas à un arc existant, je redirige vers l'accueil
 if($arc == null){
     header('Location:index_op.php');die;
 }
 // on modifie
?>
<h1>Modifier l'Arc</h1>
    <form action="" method="POST">
        <div>
            <label for="" class="col">Nom de l'Arc</label>
            <input value="<?= $arc['nom_a'] ?>" type="text" name="nom_a">
        </div>
        <div>
            <label for="" class="">Image</label>
            <input  type="file" name="arc_img">
            <em>Image actuelle :</em>
            <img src="<?= $arc['arc_img'] ?>" alt="">
        </div>
        <div>
            <label for="" class="col">Nombre de chapitres</label>
            <input value="<?= $arc['nbr_chap'] ?>" type="text" name="nbr_chap">
        </div>
        <div>
            <label for="" class="col">Nombre d'épisodes</label>
            <input value="<?= $arc['nbr_anime'] ?>" type="text" name="nbr_anime">
        </div>
        <div>
            <label for="" class="col">Description</label>
            <input value="<?= $arc['desription'] ?>" type="text" name="nbr_anime">
        </div>
        <br>
        <h2>Les personnages apparus</h2>
        <div>
            <?php
                // Récupére la liste de tous les méchants
                $personnagesRq = $bdd->query("SELECT * FROM personnage");
                $personnages = $personnagesRq->fetchAll();

                // Récupérer les méchants associés à mon héro
                $lierRq = $bdd->prepare('SELECT * FROM arc_personnage WHERE arc_id=?');
                $lierRq->execute([$_GET['id_arc']]);
                $liers = $lierRq->fetchAll();

                $personnagesId = [];

                // Si le héro a des méchants associés
                if($liers){
                    foreach ($liers as $lier){
                        $personnagesId[] = $lier['personnage_id'];
                    }
                }
                foreach ($personnages as $personnage){
                    ?>
                    <div class="form-check">
                        <input class="col" type="checkbox" value="<?= $personnage['id_personnage'] ?>" id="flexCheckDefault" name="personnage"
                            <?php
                            if(in_array($personnage['id_personnage'], $personnagesId)){
                                echo 'checked';
                            }
                            ?>
                        >
                        <label class="col" for="flexCheckDefault">
                            <?= $personnage['nom_p'] ." ". $personnage['prenom_p'] ?>
                        </label>
                    </div>
                    <?php
                }
            ?>
        </div>
        <br><br>
        <input type="submit" class="btn btn-primary">
    </form>