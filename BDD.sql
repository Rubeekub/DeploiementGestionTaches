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

/*
-- Insertion de données de test (optionnel)
INSERT INTO TACHES (Nom, Description, DateCreation) VALUES 
('Test Tâche 1', 'Première tâche de test pour vérifier le fonctionnement', GETDATE()),
('Test Tâche 2', 'Deuxième tâche de test', GETDATE()-1);

-- Vérification des données
SELECT * FROM TACHES;

GO
*/