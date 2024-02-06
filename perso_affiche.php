<?php
require_once('header_op.php');

// Si je n'ai pas de variable id, je redirige vers l'accueil
if(!isset($_GET['id_personnage'])){
    header('Location:index_op.php');die;
}

//Requête préparée
$personnageObj = $bdd->prepare('SELECT p.* FROM personnage p
                            WHERE p.id_personnage = ?' );
$personnageObj->execute([$_GET['id_personnage']]);
// Je récupère la première ligne du résultat (Je fais ça car je sélectionne par rapport à l'id)
$personnage = $personnageObj->fetch();

// Si ça ne correspond pas à un arc existant, je redirige vers l'accueil
if($personnage == null){
header('Location:index_op.php');die;
}
?>

<a class="btn" href="index_op.php">Retour à la liste des arcs</a>
<div>
    <h1><?= $personnage['nom_p'].' '.$personnage['prenom_p'] ?></h1>
</div>
<div> <img src="<?= $personnage['personnage_img'] ?>"> </div>
<div><b>Nom: </b>
<?php 
// si on a pas de nom ou age dans la base de de donnée n affiche "Inconnue"
        if($personnage['nom_p'] != ''){
            echo $personnage['nom_p'];
        }else{
            echo "Inconnue";
        }
?></div>
<div><b class="col">Prénom: </b><?= $personnage['prenom_p'] ?></div>
<div><b class="col">Age: </b>
<?php 
        if($personnage['age'] !=''){
            echo $personnage['age'];
        }else{
            echo "Inconnue";
        }
?></div>
<div><b class="col">Première apparition dans le manga: </b><?= $personnage['apparition_manga'] ?></div>
<div><b class="col">Première apparition dans l'anime : </b><?= $personnage['apparition_anime'] ?></div>
<div><b class="col">Description : </b><?= $personnage['description'] ?></div>

        <div>
        <?php
            if($_SESSION['role']){
                // si on est admin on peut supprimer ou modifier la base de donnée pour effacer ou changerun epage
            ?>
                <a class="btn" href="perso_modif.php?id_personnage=<?= $_GET['id_personnage'] ?>">Modifier le Personnage></a><br><br>
                <a class="btn" href="perso_supp.php?id_personnage=<?= $_GET['id_personnage'] ?>">Suppression du Personnage( attention la suppression est définitive)></a>
            <?php
            }
        ?>
        </div>