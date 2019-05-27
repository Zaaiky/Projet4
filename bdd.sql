DROP DATABASE IF EXISTS projet3;

CREATE DATABASE projet3;

USE projet3;

CREATE TABLE Client(
	nomClient VARCHAR(50), 
	ville VARCHAR(50), 
	noTel VARCHAR(15), 
	motDePasse VARCHAR(20)
);

CREATE TABLE Commande(
	noCommande INT, 
	dateCommande DATE, 
	noClient INT, 
	paypalOrderID CHAR(17)
);

CREATE TABLE ItemEnCommande(
	noItemEnCommande INT,
	noCommande INT, 
	noArticle INT, 
	quantite INT
);

CREATE TABLE Inventaire(
	noArticle INT, 
	description VARCHAR(50), 
	cheminImage VARCHAR(50), 
	prixUnitaire DECIMAL(10,2), 
	quantiteEnStock INT, 
	quantiteDansPanier INT
);

ALTER TABLE Client ADD noClient INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE Commande ADD PRIMARY KEY(noCommande);
ALTER TABLE Commande ADD FOREIGN KEY(noClient) REFERENCES Client(noClient);
ALTER TABLE Inventaire ADD PRIMARY KEY(noArticle);
ALTER TABLE ItemEnCommande ADD PRIMARY KEY(noItemEnCommande);
ALTER TABLE ItemEnCommande ADD FOREIGN KEY(noCommande) REFERENCES Commande(noCommande);
ALTER TABLE ItemEnCommande ADD FOREIGN KEY(noArticle) REFERENCES Inventaire(noArticle);

INSERT INTO Inventaire(noArticle, description, cheminImage, prixUnitaire, quantiteEnStock, quantiteDansPanier) 
VALUES (1, "Hoodie SZN", "img/Hoodie SZN.png", 9.99, 10, NULL);
INSERT INTO Inventaire(noArticle, description, cheminImage, prixUnitaire, quantiteEnStock, quantiteDansPanier) 
VALUES (2, "AstroWorld", "img/AstroWorld.jpg", 10.99, 11, NULL);
INSERT INTO Inventaire(noArticle, description, cheminImage, prixUnitaire, quantiteEnStock, quantiteDansPanier) 
VALUES (3, "Scorpion", "img/Scorpion.png", 10.99, 14, NULL);
INSERT INTO Inventaire(noArticle, description, cheminImage, prixUnitaire, quantiteEnStock, quantiteDansPanier) 
VALUES (4, "Amen", "img/Amen.jpg", 8.99, 15, NULL);
INSERT INTO Inventaire(noArticle, description, cheminImage, prixUnitaire, quantiteEnStock, quantiteDansPanier) 
VALUES (5, "Life of a Dark Rose", "img/Life of a Dark Rose.png", 8.99, 12, NULL);
INSERT INTO Inventaire(noArticle, description, cheminImage, prixUnitaire, quantiteEnStock, quantiteDansPanier) 
VALUES (6, "?", "img/xxx.jpg", 7.99, 23, NULL);
INSERT INTO Inventaire(noArticle, description, cheminImage, prixUnitaire, quantiteEnStock, quantiteDansPanier) 
VALUES (7, "KOD", "img/KOD.jpg", 10.99, 56, NULL);
INSERT INTO Inventaire(noArticle, description, cheminImage, prixUnitaire, quantiteEnStock, quantiteDansPanier) 
VALUES (8, "Head in The Clouds", "img/Heads in The Clouds.png", 6.99, 23, NULL);
INSERT INTO Inventaire(noArticle, description, cheminImage, prixUnitaire, quantiteEnStock, quantiteDansPanier) 
VALUES (9, "Goodbye & Good Riddance", "img/Goodbye & Good Riddance.jpg", 9.99, 87, NULL);
INSERT INTO Inventaire(noArticle, description, cheminImage, prixUnitaire, quantiteEnStock, quantiteDansPanier) 
VALUES (10, "Father of 4", "img/Father of 4.jpg", 4.99, 100, NULL);