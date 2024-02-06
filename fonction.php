<?php
// si on est utilisateur ou admin en role
function verifConnect($role = 0){
    if(isset($_SESSION['pseudo'])){
        if($role == 1 && $_SESSION['role'] == 0){
            header('Location: index_op.php');die;
        }
    }else{
        header('Location: connexion.php');die;
    }
}