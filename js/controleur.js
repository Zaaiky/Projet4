$(document).ready(function(){
	if($("#gabarit").length > 0){
		$("#gabarit").load("./vue/gabarit.html", function(){
		loadListeAlbums();
	});
	}else if($("#gabaritPanier").length > 0){
		$("#gabaritPanier").load("./vue/gabaritPanier.html", function(){
			loadPanier();
		});
	}else
		$("#gabaritCheckout").load("./vue/gabaritCheckout.html", function(){
			loadPanier();
		});
});

function loadListeAlbums(){
	let requete = new RequeteAjax("./php/getListeProduit.php");
	let modeleInventaire = new ahuntsic_modele("templateItem");
	requete.getJSON(data => {modeleInventaire.applyTemplate_toAll(data, "gabarit-modele");});
}

function loadPanier(){
	let requete = new RequeteAjax("./php/");
	let modeleInventaire = new ahuntsic_modele("templatePanier");
	requete.getJSON(data => {modeleInventaire.applyTemplate_toAll(data, "gabarit-modele");});
}