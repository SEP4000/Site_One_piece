<?php
// on se déconnecte
session_start();
session_destroy();
header("location:connexion.php");die;