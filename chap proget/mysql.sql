CREATE DATABASE projet;
USE projet;

-- table projet
CREATE TABLE projet (
    id_projet INT AUTO_INCREMENT PRIMARY KEY,
    description TEXT NOT NULL,
    date_limite DATETIME,
    etat ENUM('en_cours','termine') NOT NULL,
    priorite ENUM('basse','moyenne','haute') NOT NULL
);

-- table employe
CREATE TABLE employe (
    id_emp INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    role VARCHAR(50)
);

-- table tache
CREATE TABLE tache (
    id_tache INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    description TEXT,
    date_debut DATETIME,
    date_fin DATETIME,
    statut ENUM('a_faire','en_cours','terminee') NOT NULL,
    id_projet INT,
    id_employe INT,
    FOREIGN KEY (id_projet) REFERENCES projet(id_projet),
    FOREIGN KEY (id_employe) REFERENCES employe(id_employe)
);
