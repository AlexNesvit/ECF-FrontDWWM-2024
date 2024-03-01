-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 01 mars 2024 à 08:42
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `spacetravel`
--

-- --------------------------------------------------------

--
-- Structure de la table `pilote`
--

DROP TABLE IF EXISTS `pilote`;
CREATE TABLE IF NOT EXISTS `pilote` (
  `idpilote` int NOT NULL AUTO_INCREMENT,
  `nom pilote` varchar(45) DEFAULT NULL,
  `age pilote` varchar(45) DEFAULT NULL,
  `caracthere pilote` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpilote`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `pilote`
--

INSERT INTO `pilote` (`idpilote`, `nom pilote`, `age pilote`, `caracthere pilote`) VALUES
(1, 'Fizzle McZapzap', '375 ans', 'Zapinator'),
(2, 'Quibble Snootsnort', '247 ans', 'Quibzorp'),
(3, 'Snorfle Bloopblaster', '138 ans', 'Snorflerupt');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
