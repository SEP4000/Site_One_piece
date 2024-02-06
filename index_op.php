<?php
    require_once('header_op.php');
   

    if(isset($_SESSION["pseudo"]))
    {
        echo"<p> Bienvenue" .$_SESSION["pseudo"]."</p>";
    }
    // affichage de tout les arcs
?>

<h1>Liste des Arcs de One Piece</h1>
    <a href="arc_ajout.php" class="btn ">Ajouter un Arc</a>
    <a href="perso_ajout.php" class="btn ">Ajouter un Personnage</a>
    <table class="table">
    <tbody>
<?php
 // Requête qui récupère les données des arcs
 $arcsObj = $bdd->query("SELECT id_arc, nom_a FROM arc");
 // Met les résultats dans un tableau
 $arcs = $arcsObj->fetchAll();
 foreach($arcs as $arc){
     ?>
     <tr>
         <td class="arc"><a class="a" href="arc_affiche.php?id_arc=<?= $arc['id_arc'] ?>"><?= $arc['nom_a'] ?></a></td>
     </tr>
     <?php
 }
?>
    </tbody>
    </table>