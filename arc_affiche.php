<?php

require_once('header_op.php');

// Si je n'ai pas de variable id, je redirige vers l'accueil
if(!isset($_GET['id_arc'])){
    header('Location:index_op.php');die;
}

//Requête préparée pour afficher tout les acs
$arcObj = $bdd->prepare('SELECT a.* FROM arc a
                            WHERE a.id_arc = ?' );
$arcObj->execute([$_GET['id_arc']]);

// Je récupère la première ligne du résultat (Je fais ça car je sélectionne par rapport à l'id)
$arc = $arcObj->fetch();

// Si ça ne correspond pas à un arc existant, je redirige vers l'accueil
if($arc == null){
header('Location:index_op.php');die;
}
// on a atterit sur une page des informations de l'arc en question que l'on a cliqué
?>

<a class="btn" href="index_op.php">Retour à la liste des arcs</a>
<div>
    <h1><?= $arc['nom_a'] ?></h1>
</div>
<div> <img src="<?= $arc['arc_img'] ?>"> </div>
<div ><b>Durée des chapitres dans le manga : </b><?= $arc['nbr_chap'] ?></div>
<div><b>Durée des épisodes dans l'anime : </b><?= $arc['nbr_anime'] ?></div>
<div><b>Description : </b><?= $arc['desription'] ?></div>

<div>
        <?php
        // on choisit les personnages liées à l'arc
            $personnageObj = $bdd->prepare('SELECT p.nom_p, p.prenom_p, p.id_personnage FROM arc_personnage ap
                                            JOIN personnage p on p.id_personnage=ap.personnage_id
                                            WHERE ap.arc_id = ?');
            $personnageObj->execute([$_GET['id_arc']]);
            $personnages = $personnageObj->fetchAll();
        ?>
        <b>Personnages :</b>
        <ul>
            <?php
            // on affiche les personnages et si on clique sur eux, cela nous redirige vers une autre page avec toutes les informations du personnage en question
                foreach($personnages as $personnage){
                    echo '<li><a href ="perso_affiche.php?id_personnage='.$personnage['id_personnage'].'"> '.$personnage['nom_p'].' '.$personnage['prenom_p'].' </a></li>';
                }  
            ?>
        </ul>
        <div>
            <?php
            // on verifie quel role on a, si on est un utilisateur ou un admin
            if($_SESSION['role']){
            ?>
        <a class="btn" href="arc_modif.php?id_arc=<?= $_GET['id_arc'] ?>">Modifier l'arc</a> <br><br>
        <a class="btn" href="arc_supp.php?id_arc=<?= $_GET['id_arc'] ?>">Suppression de l'arc( attention la suppression est définitive)</a>
        <?php
            }
        ?>
        </div>
    </div>