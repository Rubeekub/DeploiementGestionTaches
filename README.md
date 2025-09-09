# GestionTaches

## Base de données
- creer la bdd avec le fichier BDD.sqlou copier le script suivant dans microsoft serveur en tant que master
```SQL
CREATE DATABASE Taches

USE [Taches]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE dbo.TACHES(
        Id            INT IDENTITY(1,1),
        Nom           VARCHAR(15) NOT NULL,
        Description   VARCHAR(MAX) NOT NULL,
        DateCreation  DATE NOT NULL,
        DateFermeture DATE NULL
);
ALTER TABLE TACHES ADD CONSTRAINT PK_Taches PRIMARY KEY (Id);
```

## Configuration application
- remplacer les valeurs source, user ID et mot de passe  dans le fichier appsetting.json et ne pas conserver les accolades
(ne laisser pas d'espace apres noté vos informations)
``` JSON
{
  "ConnectionStrings": {
    "DefaultConnection": "Data Source={Nomduserveur};Initial Catalog=Taches;Persist Security Info=True;User ID={NomUtilisateur};Password={Mot de passe};Trust Server Certificate=True",
  }
}
```
## Lancer l'application en lance le fichier 
"GestionTaches.exe"