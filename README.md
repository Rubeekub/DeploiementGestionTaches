# GestionTaches

## Contenu de l’archive
- Dossier release : application avec fichier.exe 
- Fichier de base de données : BDD.sql
- README.md : ce fichier explicatif.

## Prérequis
- Windows 10/11
- .NET 8 Runtime installé
- SQL Server installé sur la machine
- Visual Studio 2022 (optionnel pour modification du code source)

## Base de données
- Créer la bdd avec le fichier BDD.sql ou copier le script suivant dans microsoft serveur en tant que master
```SQL
CREATE DATABASE Taches

USE Taches
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

## Récupération de l'application

### Télécharger l'archive zip 
- Extraire le dossier release de l'archive dans un répertoire de votre choix
- Ouvrir le dossier release


### Recuperation depuis git
- créer un dossier de votre choix
- Ouvrir un terminal dans ce dossier
- Cloner le dépôt git en tapant la commande dans l'invite de commande 
``` 
 git clone https://github.com/Rubeekub/DeploiementGestionTaches.git 
```


## Configuration application
- Remplacer les valeurs source, user ID et mot de passe  dans le fichier appsettings.json et ne pas conserver les accolades
(ne laisser pas d'espace apres noté vos informations)
``` JSON
{
  "ConnectionStrings": {
    "DefaultConnection": "Data Source={Nomduserveur};Initial Catalog=Taches;Persist Security Info=True;User ID={NomUtilisateur};Password={Mot de passe};Trust Server Certificate=True",
  }
}
```

## Lancer l'application en lançant le fichier 
"GestionTaches.exe"