<?php
require_once 'ModeleBD.php';

class AccesBD extends ModeleBD {

  function getProduits(){
        return $this->selectItems("SELECT description, cheminImage, prixUnitaire, noArticle FROM inventaire");
  }
  
  function getDetail($no){
	return $this->selectItems("SELECT description, cheminImage, prixUnitaire, noArticle, quantiteEnStock FROM inventaire WHERE noArticle = " . $no);
  }
  
  function reserve($noArticle, $quantiteDansPanier){
	  	$this->insertItem("UPDATE inventaire SET quantiteDansPanier = " . $quantiteDansPanier . " WHERE noArticle = " . $noArticle);
		$this->insertItem("UPDATE inventaire SET quantiteEnStock = quantiteEnStock-" . $quantiteDansPanier . " WHERE noArticle = " . $noArticle);
  }
  
  function getCompte(){
        return $this->selectItems("SELECT nomClient, ville, noTel, motDePasse FROM client");
  }

}

?>
