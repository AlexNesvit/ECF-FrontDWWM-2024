-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 01 mars 2024 à 08:50
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

-- --------------------------------------------------------

--
-- Structure de la table `trajet`
--

DROP TABLE IF EXISTS `trajet`;
CREATE TABLE IF NOT EXISTS `trajet` (
  `idtrajet` int NOT NULL AUTO_INCREMENT,
  `trajet nom` varchar(45) DEFAULT NULL,
  `gravity` varchar(45) DEFAULT NULL,
  `oxygen` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtrajet`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `trajet`
--

INSERT INTO `trajet` (`idtrajet`, `trajet nom`, `gravity`, `oxygen`) VALUES
(1, 'Désert de Cristals', '0.6 G', '21%'),
(2, 'Sables Dorés', '1 G', '21%'),
(3, 'Mers Scintillantes', '1.2 G', '25%');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int NOT NULL AUTO_INCREMENT,
  `user nom` varchar(45) NOT NULL,
  `user prenom` varchar(45) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`iduser`, `user nom`, `user prenom`, `password`) VALUES
(1, 'toto', 'franco', 'azerty'),
(2, 'aaaa', 'zzzz', 'qqq'),
(3, 'test', 'aqz', 'aaa'),
(4, 'test', 'aqz', 'aaa'),
(5, 'test', 'aqz', 'aaa'),
(6, 'Franco', 'Kardachiant', 'aze'),
(7, 'Franco', 'Kardachiant', 'qsdf'),
(8, 'Franco', 'Kardachiant', 'qsdf'),
(9, 'micha', 'deluev', 'mlk'),
(10, 'micha', 'deluev', 'mlk'),
(11, 'Bobo', 'Hobo', 'polo'),
(12, 'Frero', 'Nico', 'wqa'),
(13, 'Frero', 'Nico', 'wqa'),
(14, 'Sant', 'Qavf', 'bnbn'),
(15, 'Sant', 'Qavf', 'bnbn'),
(16, 'Dodo', 'Metelas', 'dodo'),
(17, 'fant', 'hato', 'oiu'),
(18, 'Coucou', 'Boucou', 'tre'),
(19, 'Coucou', 'Boucou', 'tre'),
(20, 'Coucou', 'Boucou', 'tre'),
(21, 'Coucou', 'Boucou', 'tre'),
(22, 'rez', 'tez', 'ytr'),
(23, 'Nilo', 'Kilo', 'trez'),
(24, 'Jojo', 'Kilo', 'xsz'),
(25, 'Bobo', 'Momo', 'azer'),
(26, 'kiki', 'lolo', 'azer'),
(27, 'kiki', 'lofe', 'azer'),
(28, 'kiki', 'lofe', 'azer'),
(29, 'Bolo', 'Moca', 'azer'),
(30, 'Bolo', 'Moca', 'azer'),
(31, 'Kaka', 'Moca', 'azer'),
(32, 'Milo', 'Moca', 'ert'),
(33, 'Bobo', 'Topo', 'azer');

-- --------------------------------------------------------

--
-- Structure de la table `voyage`
--

DROP TABLE IF EXISTS `voyage`;
CREATE TABLE IF NOT EXISTS `voyage` (
  `idvoyage` int NOT NULL AUTO_INCREMENT,
  `user_iduser` int NOT NULL,
  `trajet_idtrajet` int NOT NULL,
  `pilote_idpilote` int NOT NULL,
  `date voyage` date DEFAULT NULL,
  PRIMARY KEY (`idvoyage`),
  KEY `fk_voyage_user_idx` (`user_iduser`),
  KEY `fk_voyage_trajet1_idx` (`trajet_idtrajet`),
  KEY `fk_voyage_pilote1_idx` (`pilote_idpilote`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `voyage`
--

INSERT INTO `voyage` (`idvoyage`, `user_iduser`, `trajet_idtrajet`, `pilote_idpilote`, `date voyage`) VALUES
(1, 2, 1, 1, '2024-02-02'),
(2, 5, 1, 2, '2024-02-02'),
(7, 6, 3, 3, '2024-02-28'),
(8, 6, 1, 1, '2024-03-06'),
(9, 10, 2, 3, '2024-02-23'),
(10, 10, 2, 3, '2024-02-23'),
(11, 11, 2, 3, '2024-02-29'),
(12, 14, 2, 3, '2024-02-15'),
(13, 15, 2, 2, '2024-03-07'),
(14, 16, 2, 2, '2024-03-02'),
(15, 16, 2, 2, '2024-03-02'),
(16, 17, 2, 3, '2024-03-09'),
(17, 17, 2, 3, '2024-03-09'),
(18, 18, 2, 3, '2024-02-16'),
(19, 19, 2, 3, '2024-02-23'),
(20, 19, 2, 3, '2024-02-23'),
(21, 20, 2, 3, '2024-02-09'),
(22, 20, 2, 3, '2024-02-09'),
(23, 20, 2, 3, '2024-02-09'),
(24, 20, 2, 3, '2024-02-09'),
(25, 21, 2, 2, '2024-07-30'),
(26, 22, 1, 1, '2024-02-15'),
(27, 23, 1, 1, '2024-03-22'),
(28, 23, 1, 1, '2024-03-22'),
(29, 23, 1, 1, '2024-03-22'),
(30, 23, 1, 1, '2024-03-22'),
(31, 23, 1, 1, '2024-03-22'),
(32, 23, 1, 1, '2024-03-22'),
(33, 24, 2, 1, '2024-02-16'),
(34, 24, 2, 1, '2024-02-16'),
(35, 25, 2, 2, '2024-02-08'),
(36, 25, 2, 2, '2024-02-08'),
(37, 25, 2, 2, '2024-02-08'),
(38, 25, 2, 2, '2024-02-08'),
(39, 26, 2, 3, '2024-02-22'),
(40, 26, 2, 3, '2024-02-22'),
(41, 28, 1, 1, '2024-02-08'),
(42, 28, 1, 1, '2024-02-08'),
(43, 28, 1, 1, '2024-02-08'),
(44, 28, 1, 1, '2024-02-08'),
(45, 28, 1, 1, '2024-02-09'),
(46, 28, 1, 1, '2024-02-09'),
(47, 28, 1, 1, '2024-02-08'),
(48, 28, 1, 1, '2024-02-08'),
(49, 32, 1, 1, '2024-02-23'),
(50, 32, 1, 1, '2024-02-23'),
(51, 32, 1, 1, '2024-02-23'),
(52, 32, 1, 1, '2024-02-23'),
(53, 32, 1, 1, '2024-02-23'),
(54, 32, 1, 1, '2024-02-23'),
(55, 32, 1, 1, '2024-02-16'),
(56, 32, 1, 1, '2024-02-16'),
(57, 33, 2, 2, '2024-02-17'),
(58, 33, 2, 2, '2024-02-17');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `voyage`
--
ALTER TABLE `voyage`
  ADD CONSTRAINT `fk_voyage_pilote1` FOREIGN KEY (`pilote_idpilote`) REFERENCES `pilote` (`idpilote`),
  ADD CONSTRAINT `fk_voyage_trajet1` FOREIGN KEY (`trajet_idtrajet`) REFERENCES `trajet` (`idtrajet`),
  ADD CONSTRAINT `fk_voyage_user` FOREIGN KEY (`user_iduser`) REFERENCES `user` (`iduser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
