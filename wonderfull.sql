-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 01 déc. 2020 à 09:50
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wonderfull`
--

-- --------------------------------------------------------

--
-- Structure de la table `caroussel`
--

CREATE TABLE `caroussel` (
  `idCar` int(11) NOT NULL,
  `path_img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_add` datetime NOT NULL DEFAULT current_timestamp(),
  `etat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `feeds`
--

CREATE TABLE `feeds` (
  `_idFeed` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text DEFAULT NULL,
  `path_media` varchar(255) NOT NULL,
  `date_add` datetime NOT NULL DEFAULT current_timestamp(),
  `date_print` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `caroussel`
--
ALTER TABLE `caroussel`
  ADD PRIMARY KEY (`idCar`);

--
-- Index pour la table `feeds`
--
ALTER TABLE `feeds`
  ADD PRIMARY KEY (`_idFeed`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `caroussel`
--
ALTER TABLE `caroussel`
  MODIFY `idCar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `feeds`
--
ALTER TABLE `feeds`
  MODIFY `_idFeed` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
