-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 20 oct. 2020 à 14:32
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `restau`
--

-- --------------------------------------------------------

--
-- Structure de la table `food`
--

DROP TABLE IF EXISTS `food`;
CREATE TABLE IF NOT EXISTS `food` (
  `id_food` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `ingredient` varchar(255) NOT NULL,
  `prix` decimal(6,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id_food`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `food`
--

INSERT INTO `food` (`id_food`, `nom`, `description`, `ingredient`, `prix`, `image`) VALUES
(1, 'Pizza margherita', 'Le choix dans les produits agricoles employés (fromages, huile d\'olive, légumes, farines de céréales…) ont une influence certaine sur la qualité gustative de nos pizzas. ', 'tomates,Huile d\'olive , basilic frais , thym , Poivre , sel , Sirop de sucre de canne', '9.00', 'pizza.jpg'),
(2, 'Burger', 'Le hamburger a pour origine le steak de Hambourg, spécialité culinaire notamment servie dans du pain brioché comme plat roboratif des ouvriers dans les cantines allemandes.', 'Oignons , Tomates fraîches , Coriandre fraîche , Pousses d\'épinards , Cheddar en tranches , Viande de boeuf hâchée ', '16.00', 'burger.png'),
(3, 'Wok de porc, crevettes et langoustines', 'Un wok terre-mer façon cuisine vietnamienne', '2 côtes de porc - 4 jeunes courgettes - 3 gousses d\'ail - 1 oignon - 1 dizaine d\'oignons nouveaux - 9 langoustines crues - 9 gambas crues', '22.00', 'wok.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
