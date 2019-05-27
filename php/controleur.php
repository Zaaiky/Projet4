<?php

// Inclure les modèles
require_once '../modele/Inventaire.php';
require_once '../modele/Panier.php';

session_start();

if(!isset($_GET["action"])){
  $action = "getItems";
} else {
  $action = $_GET["action"];
}

if($action == "getItems"){
  $inventaire = new Inventaire();
  echo $inventaire->getItems();
}
else if($action == "ajouterPanier"){
  $panier = new Panier();
  $panier->ajouterArticle($_GET["noArticle"],$_GET["qteProduit"],$_GET["prixProduit"]);
  echo $_GET["noArticle"];
}
else if($action == "getPanier"){
  $panier = new Panier();
  echo $panier->affPanier();
}

else if($action == "supprimerArticle"){
	$panier = new Panier();
	$panier->supprimerArticle($_GET["libelleProduit"]);
}

?>
