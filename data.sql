-- Se connecter à PostgreSQL
psql -U postgres

-- Créer la base de données
CREATE DATABASE voitures_db;

-- Se connecter à la base de données
\c voitures_db

-- Créer la table (optionnel, Hibernate peut le faire automatiquement)
CREATE TABLE voitures (
    id BIGSERIAL PRIMARY KEY,
    marque VARCHAR(100) NOT NULL,
    modele VARCHAR(100) NOT NULL,
    annee INTEGER NOT NULL,
    prix DOUBLE PRECISION NOT NULL
);

-- Insérer des données de test
INSERT INTO voitures (marque, modele, annee, prix) VALUES 
('Renault', 'Clio', 2022, 15000.00),
('Peugeot', '208', 2023, 18000.00),
('Citroën', 'C3', 2021, 14000.00),
('Toyota', 'Yaris', 2023, 20000.00),
('Volkswagen', 'Golf', 2022, 25000.00);