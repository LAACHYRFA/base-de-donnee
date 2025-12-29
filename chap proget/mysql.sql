CREATE DATABASE projet;
USE projet;
-- table employe
CREATE TABLE employe (
    id_emp INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    role VARCHAR(50)
);

-- table projet
CREATE TABLE projet (
    id_projet INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100),
    date_deb DATETIME ,
    date_fin DATETIME,
    description TEXT NOT NULL,
    status ENUM('en_cours','termine') NOT NULL,
    id_chef int not null,
    FOREIGN KEY (id_chef) REFERENCES employe(id)
);


-- table tache
CREATE TABLE tache (
    id_tache INT AUTO_INCREMENT PRIMARY KEY,
    description TEXT,
    datelimite DATETIME,
    etat ENUM ('commencé' 'termine') NOT NULL,
    id_employe INT,
    id_proget INT,
    FOREIGN KEY (id_projet) REFERENCES projet(id_projet),
    FOREIGN KEY (id_employe) REFERENCES employe(id_employe)
);
