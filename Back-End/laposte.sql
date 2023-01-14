-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 06 mai 2022 à 08:45
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `laposte`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Formation Employés'),
(2, 'Formation Seigneurs'),
(3, 'Département 1'),
(4, 'Département 33');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210926154526', '2021-09-26 15:56:56', 48),
('DoctrineMigrations\\Version20210927122133', '2021-09-27 15:24:02', 65),
('DoctrineMigrations\\Version20210928052931', '2021-09-28 05:30:27', 56),
('DoctrineMigrations\\Version20210928055904', '2021-09-28 05:59:47', 106);

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

DROP TABLE IF EXISTS `formation`;
CREATE TABLE IF NOT EXISTS `formation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `illustration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_404021BF12469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`id`, `category_id`, `name`, `slug`, `illustration`, `subtitle`, `description`, `date`) VALUES
(2, 2, 'Formation Seigneurs', '123', 'efba1c97ed2bf61ba24afa2c72a2f907d0ababf4.jpg', 'Formation pour les Seigneurs', 'Quisque bibendum leo leo. Suspendisse malesuada malesuada ante, in porta est lacinia non. Integer feugiat elementum varius. Suspendisse potenti. Vestibulum placerat posuere ultricies. Suspendisse at iaculis dui, molestie laoreet erat. Nunc vel ligula risus. Donec in congue nunc. Nam porttitor luctus dictum.', '20/09/2021'),
(3, 1, 'java 8 training', 'java-8', '2044add53e578d82cbe65030bd3dccc41fbc5474.jpg', 'Training for employees', 'dummy text description ... suscipit porttitor lorem. Aliquam accumsan rhoncus nisi at iaculis. In lobortis facilisis faucibus. Duis ac sollicitudin turpis. Sed tincidunt accumsan elit, sit amet iaculis mauris pretium vitae. Praesent malesuada nibh non quam maximus facilisis.', '29/09/2021'),
(4, 1, 'Formation des employés', 'formation-des-employes', 'd3dc6c40851ed2f3bac35bb369503207b3c97252.jpg', 'Formation pour les employés', 'Phasellus varius, metus non tincidunt pulvinar, urna sem ultricies ipsum, vitae tincidunt mi mi vel mi. Nullam quis fermentum tellus, quis consectetur libero. In sed blandit odio. Sed et porttitor purus, sit amet consequat erat. Nam erat arcu, laoreet et libero eget, tristique scelerisque lacus. Sed sagittis erat eget enim ornare, ac congue lacus accumsan.', '19/09/2021'),
(5, 2, 'formation 2', 'formation-2', '486e12c1085b95bbd946d1db8a9c5d94381adedf.png', 'formation 2', 'Praesent pulvinar volutpat ligula, eget accumsan ligula posuere ut. Vivamus vel turpis sagittis, elementum nunc sed, posuere justo. Aenean quis erat nibh. Phasellus risus justo, vehicula eu semper non, ultrices quis lectus. Pellentesque augue nisl, tempor a maximus eu, tincidunt in mauris. Curabitur commodo purus eu euismod lacinia. Phasellus malesuada pellentesque lobortis. Praesent vehicula risus sed hendrerit mollis.', '20/09/2021'),
(6, 3, 'formation 3', 'formation-3', 'd8c8c5b3218d13a74a4589fb177d4810bcad2934.jpg', 'formation 3', 'Curabitur commodo purus eu euismod lacinia. Phasellus malesuada pellentesque lobortis. Praesent vehicula risus sed hendrerit mollis. Nam laoreet pulvinar dolor gravida pulvinar. Etiam rutrum faucibus ante, a molestie quam luctus id. Quisque nisl eros, imperdiet sit amet felis et, suscipit porttitor lorem. Aliquam accumsan rhoncus nisi at iaculis. In lobortis facilisis faucibus. Duis ac sollicitudin turpis. Sed tincidunt accumsan elit, sit amet iaculis mauris pretium vitae. Praesent malesuada nibh non quam maximus facilisis.', '02/08/2021'),
(7, 2, 'symfony 4', 'symfony4-day123', '1cc59dbb6ec9c3b156618c9538922ac1b5b53294.jpg', 'symfony 4 - Day 1', 'description de formation', '12/3/2021'),
(8, 4, 'symfony3', 'symfony3', '428069a66e1e611c5608db4608e7d0e95737cdb9.png', 'java 8 training for employees', 'suscipit porttitor lorem. Aliquam accumsan rhoncus nisi at iaculis. In lobortis facilisis faucibus. Duis ac sollicitudin turpis. Sed tincidunt accumsan elit, sit amet iaculis mauris pretium vitae. Praesent malesuada nibh non quam maximus facilisis.', '21/03/2021'),
(10, 2, 'symfony 5 training for postman IT Departement', 'symfony-5-training-for-postman-it-departement', 'f1ea2bf85452ec229243562d7ded405840bf67d8.png', 'post office  IT Departement training for next week', 'Pellentesque augue nisl, tempor a maximus eu, tincidunt in mauris. Curabitur commodo purus eu euismod lacinia. Phasellus malesuada pellentesque lobortis. Praesent vehicula risus sed hendrerit mollis.', '20/09/2021');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `firstname`, `lastname`) VALUES
(3, 'root@gmail.com', '[]', '$2y$13$fwH/x4I63w7r9AVtyP9LPeDMr9dBZmf/LdC58R4UDG2HYAum3okq.', 'admin11', 'ben taieb'),
(6, 'aminebt@gmail.com', '[]', '$2y$13$fwH/x4I63w7r9AVtyP9LPeDMr9dBZmf/LdC58R4UDG2HYAum3okq.', 'amine', 'ben taieb'),
(7, 'admin@gmail.com', '[]', '$2y$13$Og8SPfqUbYpbHWTECUTNmewOlRD6ArxxNoSszH22I.6xXRVTI0RSi', 'Mohamed amine 1', 'taieb');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `formation`
--
ALTER TABLE `formation`
  ADD CONSTRAINT `FK_404021BF12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
