
CREATE DATABASE mySQL;
USE mySQL;

--table utilisateur 
create table utilisateur (
    id_utilisateur INT AUTO_INCREMENT PRIMARY KEY ,
    nom VARCHAR (100) NOT NULL,
    email VARCHAR (100) UNIQUE NOT NULL,
    mot_de_passe varchar(255) NOT NULL,
    date_inscription DATETIME DEFAULT CURRENT_TIMESTAMP
);

--table catégorie
CREATE TABLE CATEGORIE (
id_catégorie int AUTO_INCREMENT PRIMARY KEY,
 nom VARCHAR (100) NOT NULL,
);

--table article 
CREATE TABLE article (
    id_article INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(100) NOT NULL,
    contenu TEXT NOT NULL,
    date_publication DATETIME default CURRENT_TIMESTAMP,
    statut ENUM("publie" , "brouillon") NOT NULL,
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateur (id_utilisateur),
    FOREIGN key (id_catégorie) REFERENCES catégorie(id_catégorie)
);

--table commentaire
CREATE TABLE commentaire (
    id_commentaire INT AUTO_INCREMENT PRIMARY KEY,
    contenu TEXT NOT NULL,
    date_commentaire DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_article INT,
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur),
    FOREIGN KEY (id_article) REFERENCES article(id_article)
);







