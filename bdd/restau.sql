-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 22 oct. 2020 à 14:00
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
  `cat` varchar(120) NOT NULL,
  `prix` decimal(6,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id_food`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `food`
--

INSERT INTO `food` (`id_food`, `nom`, `description`, `ingredient`, `cat`, `prix`, `image`) VALUES
(1, 'Pizza margherita', 'Le choix dans les produits agricoles employés (fromages, huile d\'olive, légumes, farines de céréales…) ont une influence certaine sur la qualité gustative de nos pizzas. ', 'tomates,Huile d\'olive , basilic frais , thym , Poivre , sel , Sirop de sucre de canne', 'repas', '8.99', 'pizza.jpg'),
(2, 'Burger', 'Le hamburger a pour origine le steak de Hambourg, spécialité culinaire notamment servie dans du pain brioché comme plat roboratif des ouvriers dans les cantines allemandes.', 'Oignons , Tomates fraîches , Coriandre fraîche , Pousses d\'épinards , Cheddar en tranches , Viande de boeuf hâchée ', 'repas', '16.99', 'burger.png'),
(3, 'Wok de porc, crevettes et langoustines', 'Un wok terre-mer façon cuisine vietnamienne', '2 côtes de porc - 4 jeunes courgettes - 3 gousses d\'ail - 1 oignon - 1 dizaine d\'oignons nouveaux - 9 langoustines crues - 9 gambas crues', 'repas', '22.99', 'wok.jpg'),
(4, 'Saint-jacques à la truffe sur crème de céleri', 'Une entrée festive qui met en valeur les saveurs terre et mer.', 'noix de saint-jacques fraîches décoquillées sans corai,crème de céleri ,suprême de truffe noire Alena', 'entree', '156.32', 'truffe.png'),
(5, 'Oeuf cocotte à la tomate', 'des œufs quoi de mieux', 'œufs extra-frais,tomate,coulis de beurre', 'entree', '4.99', 'oeuf.png'),
(6, 'Crostinis d’aubergine', 'Les crostinis d’aubergine sont des petits toasts italiens garnis de légumes et parfumés aux herbes. Croustillants et fondants, on les déguste accompagnés d’une salade verte ou en apéritif avec un verre de vin. ', 'aubergine,tomates cerises ,gousses d’ail,tranches de pain,branches de thym frais,basilic frais', 'entree', '5.99', 'crostinis.png'),
(7, 'Flan pâtissier sans pâte', 'Un flan peu sucré, vanillé et irrésistiblement gourmand.', '50 cl de lait - 25 cl de crème fleurette - 90 g de sucre - 1 sachet de sucre vanillé - 6 jaunes d\'oeufs - 50 g de maïzena.', 'dessert', '7.99', 'flan.png'),
(8, 'Mousse au miel', 'Voici une mousse au miel gourmande et légère. Véritable nuage sucré aux effluves de sapin ou châtaignier', '    150 g de miel de sapin ou de châtaignier\r\n    1 dl de crème liquide entière\r\n    4 œufs', 'dessert', '7.99', 'mousse.png');

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `rating` tinyint(1) NOT NULL,
  `submit_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `content`, `rating`, `submit_date`) VALUES
(1, 'David Deacon', 'I use this website daily, the amount of content is brilliant.', 5, '2020-01-09 20:43:02'),
(2, 'John Doe', 'Great website, great content, and great support!', 4, '2020-01-09 21:00:41'),
(3, 'Robert Billings', 'Website needs more content, good website but content is lacking.', 3, '2020-01-09 21:10:16'),
(4, 'Daniel Callaghan', 'Great!', 5, '2020-01-09 23:51:05'),
(5, 'Bobby', 'Not much content.', 2, '2020-01-14 21:54:24'),
(6, 'Joshua Kennedy', 'Fantasic website, has everything I need to know.', 5, '2020-01-16 17:34:27'),
(7, 'Johannes Hansen', 'Really like this website, helps me out a lot!', 5, '2020-01-16 17:35:12'),
(8, 'Wit Kwiatkowski', 'Please provide more quality content.', 5, '2020-01-16 17:36:03'),
(9, 'Óli Þórðarson', 'Thanks', 5, '2020-01-16 17:36:34'),
(10, 'Jaroslava Beránková', '', 5, '2020-01-16 17:37:48'),
(11, 'Naomi Holt', 'Appreciate the amount of content you guys do.', 5, '2020-01-16 17:39:17'),
(12, 'Isobel Whitehead', 'Thank you for providing a website that helps us out a lot!', 5, '2020-01-16 17:40:28'),
(13, 'Warren Mills', 'Everything is awesome!', 5, '2020-01-16 19:34:08'),
(14, 'Larry Johnson', 'Brilliant, thank you for providing quality content!', 5, '2020-01-29 18:40:36');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
