-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Client :  localhost
-- Généré le :  Mer 14 Juin 2017 à 09:59
-- Version du serveur :  5.7.17-0ubuntu0.16.04.1
-- Version de PHP :  7.1.1-1+deb.sury.org~xenial+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ec_library`
--

-- --------------------------------------------------------

--
-- Structure de la table `account_type`
--

CREATE TABLE `account_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `account_type`
--

INSERT INTO `account_type` (`id`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'client', '2017-06-11 15:21:44', '2017-06-11 15:21:44', NULL),
(2, 'admin', '2017-06-11 15:46:43', '2017-06-12 12:18:36', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `datebirth` date DEFAULT NULL,
  `datedeath` date DEFAULT NULL,
  `bio` text CHARACTER SET utf8mb4,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `authors`
--

INSERT INTO `authors` (`id`, `last_name`, `first_name`, `photo`, `datebirth`, `datedeath`, `bio`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Goetter', 'Raphaël', 'assets/img/authors/1.jpg', '1974-06-15', NULL, 'Webdesigner de profession (chez Alsacréations), je cumule deux passions créatives : la conception Web et la Photographie. Créateur et administrateur du site Alsacreations.com, communauté d’apprentissage web dont le trafic quotidien dépassait les 20000 visites uniques en 2010.', '2017-06-11 15:56:42', '2017-06-12 09:47:03', NULL),
(2, 'Levy', 'Marc', 'assets/img/authors/2.jpg', '1961-10-16', NULL, 'Marc Levy, parfois orthographié Marc Lévy, est un auteur français né le 16 octobre 1961 à Boulogne-Billancourt et rendu célèbre dès son premier roman, Et si c\'était vrai..., adapté au cinéma en 2005.', '2017-06-11 16:01:59', '2017-06-12 09:47:03', NULL),
(3, 'Sarraute', 'Nathalie', 'assets/img/authors/3.jpg', '1900-07-18', '1999-10-19', 'Nathalie Sarraute, Natalia Tcherniak née à Ivanovo-Voznessensk en Russie, le 5 juillet 1900, morte à Paris le 19 octobre 1999, est une femme de lettres française d\'origine russe.', '2017-06-11 16:05:23', '2017-06-12 09:47:03', NULL),
(4, 'Musso', 'Guilaume', 'assets/img/authors/4.jpg', '1974-06-06', NULL, 'Guillaume Musso commence à écrire alors qu’il est étudiant. À l’âge de 19 ans, fasciné par les États-Unis, il séjourne quelques mois à New York où il travaille comme vendeur de crèmes glacées. En rentrant des États-Unis, il passe une licence de sciences économiques à l\'Université de Nice, poursuit ses études à Montpellier et passe le CAPES de sciences économiques et sociales. De 1999 à 2003, il est professeur de sciences économiques et sociales au lycée Erckmann-Chatrian de Phalsbourg et formateur à l’IUFM de Lorraine. En septembre 2003, il intègre le Centre international de Valbonne où il enseignera au lycée les sciences économiques et Sociales pendant cinq ans.', '2017-06-11 16:11:25', '2017-06-12 09:47:03', NULL),
(5, 'Rimelé', 'Rodolphe ', 'assets/img/authors/5.jpg', NULL, NULL, 'Rodolphe Rimelé est l\'un des deux fondateurs de l\'agence web Alsacréations.fr, ainsi qu\'administrateur, développeur et rédacteur pour la communauté Alsacreations.com', '2017-06-11 17:08:24', '2017-06-12 09:47:03', NULL),
(6, 'Boucher', 'Amélie', 'assets/img/authors/6.jpg', NULL, NULL, 'Amélie Boucher est experte en UX design. Elle pratique depuis 12 ans l\'expérience utilisateur web et mobile pour des missions variées : e-commerce, éditorial, réseaux sociaux, logiciels et applications métier... En 2003, son master d\'ergonomie en poche, elle lance le site www.ergolab.net, précurseur de l\'essor de la discipline en France. Avec cette même volonté de faire connaître l\'UX à tous ceux qui créent des sites web, elle écrit l\'ouvrage Ergonomie web ainsi qu\'un ouvrage d\'études de cas, Ergonomie web illustrée, tous deux parus aux éditions Eyrolles. Amélie intervient régulièrement dans des conférences pour porter la voix de l\'expérience utilisateur et diffuser ses bonnes pratiques.', '2017-06-11 17:11:15', '2017-06-12 09:47:03', NULL),
(7, 'James', 'Erika Leonard', 'assets/img/authors/7.jpg', '1963-03-07', NULL, 'Erika Leonard, dite E. L. James, née le 7 mars 1963 à Londres, est une romancière britannique, auteur de la romance érotique Cinquante nuances de Grey, grand succès en librairie des années 2010.', '2017-06-11 17:17:59', '2017-06-12 09:47:03', NULL),
(8, 'Bouchery', 'Sébastien', 'assets/img/authors/8.jpg', '1975-11-22', NULL, 'Sébastien Bouchery est né en 1975 au Chambon-Feugerolles, dans la Loire. Mauvais élève au collège et au lycée, il passe le plus clair de son temps à rêver au fond de la classe; passionné de cinéma et de bandes dessinées, il s\'imagine des histoires, petites nouvelles ou scénarii qu\'il note ou dessine au coin de feuilles éparpillées sur son bureau. En 1997, il écrit son premier vrai scénario \"Sans états d\'âme\": Un histoire de gangsters et de repentis.', '2017-06-11 17:52:54', '2017-06-12 09:47:03', NULL),
(10, 'Stine', 'Robert Lawrence', 'assets/img/authors/10.jpg', '1943-10-08', NULL, 'Robert Lawrence Stine, connu sous le nom de R. L. Stine, né le 8 octobre 1943 à Columbus en Ohio, est un écrivain américain.', '2017-06-12 08:49:28', '2017-06-12 10:26:53', NULL),
(11, 'Closquet', 'Cindy', 'assets/img/authors/11.jpg', '1988-12-17', NULL, 'Cindy est née dans caravane et a grandit avec des singes qui lui ont tout appris sauf l\'écriture qui lui a été enseignée par un cochon bleu.', '2017-06-12 10:26:53', '2017-06-12 10:26:53', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `front_cover` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `summary` text CHARACTER SET utf8mb4,
  `isbn` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `npage` int(10) NOT NULL,
  `datepub` date DEFAULT NULL,
  `language_id` int(10) UNSIGNED DEFAULT NULL,
  `genre_id` int(10) UNSIGNED DEFAULT NULL,
  `location_id` int(10) UNSIGNED DEFAULT NULL,
  `editor_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `books`
--

INSERT INTO `books` (`id`, `title`, `front_cover`, `summary`, `isbn`, `npage`, `datepub`, `language_id`, `genre_id`, `location_id`, `editor_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Cadran', 'assets/img/cover/1.jpg', 'Imaginez : du jour au lendemain, votre femme, vos parents, vos collègues voient en vous un parfait inconnu... Et pourtant leur vie est entre vos mains. Bienvenue en enfer. Alors qu\'il assiste aux funérailles de son frère, Tony Stovac, assureur sans histoires, reçoit le coup de fil d\'un client important qui lui réclame un dossier. Il accepte de faire un crochet jusqu\'à son agence... Si ce n\'est que sur place, aucun de ses collègues ne semble le reconnaître. Pire, il est violemment expulsé par la sécurité. Ses parents, son meilleur ami, sa femme... il n\'existe plus pour personne. Chez lui, c\'est un parfait inconnu qui répond au nom de Tony Stovac. Plongé dans ce cauchemar absurde, il reçoit l\'appel d\'un mystérieux interlocuteur. Tony a en sa possession quelque chose que celui-ci convoite. Il a 24 heures pour lui remettre cet objet dont il ne sait rien, avant que l\'homme ne s\'en prenne à ses proches.', '978-2-298-11888-9', 336, '2016-10-14', 1, 1, 1, 2, '2017-06-11 18:41:37', '2017-06-13 10:18:50', NULL),
(2, 'Elle et lui', 'assets/img/cover/2.jpg', 'Un site de rencontres les a réunis. Ils ne sont pas devenus amants, mais amis. Et ils comptent bien en rester là… ', '978-2-221-15783-1', 385, '2015-02-15', 1, 2, 2, 3, '2017-06-11 19:35:43', '2017-06-13 10:18:50', NULL),
(3, 'Cinquante nuances plus claires', 'assets/img/cover/3.jpg', 'Plus heureux que jamais, Anastasia et Christian forment désormais un couple solide. Cependant, leur bonheur est troublé par Jack Hyde, l\'ancien patron d\'Ana et par une nouvelle qui pourrait détruire leur relation.', '978-2-709-64254-5', 600, '2012-04-17', 1, 4, 3, 1, '2017-06-11 19:46:00', '2017-06-13 10:18:50', NULL),
(4, 'CSS 3 Flexbox', 'assets/img/cover/4.jpg', 'Pour répondre à une problématique de responsive web design : un outil indispensable !', '978-2-212-14363-8	', 132, '2016-02-18', 1, 3, 4, 4, '2017-06-11 19:54:54', '2017-06-13 10:18:50', NULL),
(5, 'Cinquante nuances de Grey', 'assets/img/cover/5.jpg', 'Anastasia Steele accepte de remplacer sa colocataire malade, Katherine, pour interviewer l\'homme d\'affaires et milliardaire Christian Grey. Jeune PDG séduisant et mystérieux, ce dernier l\'intimide. À sa grande surprise, Christian Grey vient la voir au magasin où elle travaille, prétextant des achats. Très attirée par lui, elle se verra rapidement devenir sa soumise. Pour cela un contrat va être rédigé pour permettre de définir les règles de ce jeu dangereux. Cependant, ce contrat devient souvent un sujet tabou et sera changé sans cesse.', '978-2-709-64252-1', 560, '2012-10-17', 1, 4, 5, 1, '2017-06-11 20:03:29', '2017-06-13 10:18:50', NULL),
(6, 'Ergonomie web', 'assets/img/cover/6.jpg', 'Dépliant one page sur l\'ergonomie web.', '978-2-212-13735-4', 1, '2013-05-15', 1, 3, 6, 4, '2017-06-11 20:12:46', '2017-06-13 10:18:50', NULL),
(7, 'HTML 5 : Une référence pour le développeur web', 'assets/img/cover/7.jpg', 'HTML 5 intègre enfin dans sa conception l\'architecture à trois piliers qu\'est HTML pour la structure, CSS 3 pour l\'apparence et JavaScript pour l\'interactivité avec de nombreuses API nouvelles pour concevoir des applications web. Le développeur-intégrateur pourra ainsi découvrir et exploiter les standards du web pour proposer au sein de sites performants et accessibles des contenus tant multimédias (animations, audio et vidéo) qu\'interactifs (nouveaux formulaires, glisser-déposer, etc.).', '978-2-212-00921-7', 680, '2013-02-28', 1, 3, 7, 4, '2017-06-11 20:24:44', '2017-06-13 10:18:50', NULL),
(8, 'Seras-tu là?', 'assets/img/cover/8.jpg', ' Elliott, installé à San Francisco, est un chirurgien réputé. Il nagerait dans le bonheur le plus total si Ilena, la femme de sa vie, n\'était pas morte trente ans auparavant. Mais, un jour, il fait une rencontre étrange : un homme lui donne l\'opportunité de revenir en arrière.', '978-2-266-27622-1', 448, '2017-01-05', 1, 2, 8, 5, '2017-06-11 20:37:05', '2017-06-13 10:18:50', NULL),
(9, 'Le Silence', 'assets/img/cover/9.jpg', 'Six personnages ne peuvent poursuivre un dialogue normal à cause du silence d\'un septième. L\'existence de vide au cœur de l\'échange traditionnel fait naître une spirale infernale où chacun est entraîné jusqu\'à la destruction de toute vérité, de tout langage. Mais cette cantate à six voix en contient pourtant une septième, celle de l\'humour.', '978-2-070-38669-7', 96, '1993-03-16', 1, 5, 1, 6, '2017-06-11 20:53:32', '2017-06-13 10:18:50', NULL),
(10, 'Terreur sous l\'évier', 'assets/img/cover/10.jpg', 'Cat et son frère, Daniel, viennent juste d\'emménager dans une grande maison qui leur plaît beaucoup. Mais leur nouvelle vie tourne vite au cauchemar. Il y a quelque chose de terrifiant, de laid et dégoûtant sous l’évier. Quelque chose qui va empoisonner leur existence…', '978-2-227-72930-8', 139, '1996-10-15', 1, 6, 2, 7, '2017-06-12 09:09:24', '2017-06-13 10:18:50', NULL),
(11, 'Did you take the bus?', 'assets/img/cover/11.jpg', 'It was a day like the others for Franck, he took a bus but the destination was not the one he thought.', '978-2-229-72940-1', 246, '2017-06-12', 2, 1, 3, 2, '2017-06-12 09:20:32', '2017-06-13 10:18:50', NULL),
(12, 'Behind the closet', 'assets/img/cover/12.jpg', 'This closet was not like the others, it was a door to a world filled with strange creatures.', '978-2-249-72940-1', 110, '2017-06-10', 2, 6, 4, 7, '2017-06-12 09:30:58', '2017-06-13 10:18:50', NULL),
(13, '3 friends', 'assets/img/cover/13.jpg', 'Three men meet meet in Paris and become great friends but what they do not know is that they are brothers.', '978-2-249-72941-1', 329, '1975-05-14', 2, 5, 5, 3, '2017-06-12 09:39:20', '2017-06-13 10:18:50', NULL),
(14, 'Terminaporc', 'assets/img/cover/14.jpg', 'Un porc du future vient pour sauver Chicken Conor, un poulet qui sauvera son espèce de l\'extinction lors du jugement dernier.', '978-2-249-72942-1', 834, '2017-05-15', 1, 2, 6, 1, '2017-06-12 10:07:55', '2017-06-13 10:18:50', NULL),
(16, 'La peste', 'assets/img/cover/16.jpg', 'Dans une ville portuaire de Mauricius, un alien répend une maladie ressemblant à la peste, mais les malades se tranforme en aliens.', '978-2-249-72943-1', 554, '2008-05-03', 1, 1, 7, 6, '2017-06-12 10:13:38', '2017-06-13 10:18:50', NULL),
(17, 'Le renard de Fliber', 'assets/img/cover/17.jpg', 'Cette histoire se passe dans les fagnes, monsieur Alain de Fliber est un ministre qui n\'a pas sa langue dans sa poche et mechant avec les personnes âgées. Une sorcière lui jette un sort et le voilà transformé en un renard à deux queues.', '978-2-249-72944-1', 188, '2006-12-17', 1, 7, 8, 5, '2017-06-12 10:23:41', '2017-06-13 10:18:50', NULL),
(18, 'Papou le bonhomme de neige', 'assets/img/cover/18.jpg', 'Un genti bonhomme de neige arrive en fin de vie en ce mois de janvier mais lorceque tous ses camarades se mirent à fondre, lui de fondit pas et se transformat en un petit garçon.', '978-2-249-72945-1', 254, '2000-02-14', 1, 7, 1, 5, '2017-06-12 10:32:00', '2017-06-13 10:18:50', NULL),
(19, 'Alice au pays des mouettes', 'assets/img/cover/19.jpg', 'Une mouette se baladait tranquillement quand elle tomba nez à nez avec une fille sans bras qui lui demanda un morceau de chocolat.', '978-2-249-72946-1', 456, '2016-06-29', 1, 7, 2, 5, '2017-06-12 10:35:22', '2017-06-13 10:18:50', NULL),
(22, 'Tom le castor', 'assets/img/cover/22.jpg', 'Un castor magique fait la rencontre d\'un caillous pas comme les autres.', '978-2-249-72947-1', 214, '2014-07-30', 1, 7, 3, 1, '2017-06-12 10:42:11', '2017-06-13 10:18:50', NULL),
(23, 'CSS 4', 'assets/img/cover/23.jpg', 'Cet ouvrage vous permettre d\'utiler ces nouvelles technologies en moins d\'une semaine.', '978-2-249-72951-1', 129, '2017-06-30', 1, 3, 4, 4, '2017-06-12 10:45:48', '2017-06-13 10:18:50', NULL),
(24, 'JavaScript ECMA2017', 'assets/img/cover/24.jpg', 'Toutes les nouveauté qu\'apporte ce standard.', '978-2-249-72952-1', 477, '2017-05-25', 1, 3, 5, 4, '2017-06-12 10:48:37', '2017-06-13 10:18:50', NULL),
(25, 'Saw 42', 'assets/img/cover/25.jpg', 'Ils se réveillent tous dans une sale, ils ont 30 minutes pour en sortir vivant mais un sacrifice doit être fait.', '978-2-249-72962-1', 322, '2008-05-03', 1, 6, 6, 7, '2017-06-12 10:52:33', '2017-06-13 10:18:50', NULL),
(26, 'Bastein l\'enfant possédé', 'assets/img/cover/26.jpg', 'Bastien, un petit enfant âgé de 17 mois terrorise ses parents et se transforme en démon quand on essaie de le nourire.', '978-2-249-72963-1', 900, '2017-06-12', 1, 6, 7, 7, '2017-06-12 11:35:29', '2017-06-13 10:18:50', NULL),
(27, 'Mauricette, la vieille au cheveux gris', 'assets/img/cover/27.jpg', 'C\'est l\'histoire d\'une personne âgée qui dédestait se voir vieillir alors elle invoqua un démon avec lequel elle passa un pact afin de retrouver sa jeunesse et ses cheveux noir, mais elle ne connaissait pas le prix à payer.', '978-2-249-72964-1', 651, '2017-06-12', 1, 2, 8, 2, '2017-06-12 11:44:46', '2017-06-13 10:18:50', NULL),
(28, 'Oui Oui', 'assets/img/cover/28.jpg', 'Oui OUI, un Jeune dealer de drogue se retrouve coincé dans une voiture jaune et rouge.', '978-2-249-72965-1', 417, '2006-12-17', 1, 3, 1, 1, '2017-06-12 11:47:30', '2017-06-13 10:18:50', NULL),
(29, 'Hary Ploteur', 'assets/img/cover/29.jpg', 'Dans une ville perdue de la Belgique, un vieux pervers plote les mannequins en plastique qui posent dans les magasins de vêtement.', '978-2-249-72966-1', 854, '2005-11-14', 1, 4, 1, 2, '2017-06-12 11:50:54', '2017-06-13 10:18:50', NULL),
(30, 'Burger man', 'assets/img/cover/30.jpg', 'Pour répondre à un besoin croissant de gras, Billy se tranforme en super héros et parcours le monde pour vivre des avantures pleines de burger.', '978-2-249-12064-1', 68, '2016-02-18', 1, 5, 1, 5, '2017-06-12 11:55:01', '2017-06-13 10:18:50', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `book_author`
--

CREATE TABLE `book_author` (
  `book_id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `book_author`
--

INSERT INTO `book_author` (`book_id`, `author_id`) VALUES
(1, 8),
(2, 2),
(3, 7),
(4, 1),
(5, 7),
(6, 6),
(7, 1),
(7, 5),
(8, 4),
(9, 3),
(10, 10),
(11, 1),
(12, 10),
(13, 8),
(14, 7),
(16, 4),
(17, 11),
(18, 11),
(22, 11),
(23, 5),
(24, 5),
(25, 10),
(26, 2),
(27, 2),
(28, 3),
(29, 3),
(30, 4);

-- --------------------------------------------------------

--
-- Structure de la table `book_instances`
--

CREATE TABLE `book_instances` (
  `uuid` varchar(36) CHARACTER SET utf8mb4 NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `available` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `book_instances`
--

INSERT INTO `book_instances` (`uuid`, `book_id`, `available`, `created_at`, `updated_at`, `deleted_at`) VALUES
('450d6d82-4f80-11e7-83af-080027c30a85', 2, 0, '2017-06-12 15:03:19', '2017-06-12 15:50:17', NULL),
('450dee43-4f80-11e7-83af-080027c30a85', 2, 0, '2017-06-12 15:03:19', '2017-06-12 15:57:23', NULL),
('450f63bf-4f80-11e7-83af-080027c30a85', 2, 0, '2017-06-12 15:03:19', '2017-06-12 15:58:54', NULL),
('451144bb-4f80-11e7-83af-080027c30a85', 2, 0, '2017-06-12 15:03:19', '2017-06-12 16:00:21', NULL),
('4511a0af-4f80-11e7-83af-080027c30a85', 2, 0, '2017-06-12 15:03:19', '2017-06-12 16:01:38', NULL),
('45120ca7-4f80-11e7-83af-080027c30a85', 3, 0, '2017-06-12 15:03:19', '2017-06-12 15:50:17', NULL),
('45125729-4f80-11e7-83af-080027c30a85', 3, 0, '2017-06-12 15:03:19', '2017-06-12 15:57:23', NULL),
('4512bcb7-4f80-11e7-83af-080027c30a85', 3, 1, '2017-06-12 15:03:19', '2017-06-12 19:41:11', NULL),
('45132cf6-4f80-11e7-83af-080027c30a85', 3, 0, '2017-06-12 15:03:19', '2017-06-12 16:00:21', NULL),
('451386c7-4f80-11e7-83af-080027c30a85', 3, 0, '2017-06-12 15:03:19', '2017-06-12 16:01:38', NULL),
('4513cbd9-4f80-11e7-83af-080027c30a85', 4, 0, '2017-06-12 15:03:19', '2017-06-12 15:57:23', NULL),
('4514549c-4f80-11e7-83af-080027c30a85', 4, 0, '2017-06-12 15:03:19', '2017-06-12 15:51:08', NULL),
('4514bff5-4f80-11e7-83af-080027c30a85', 4, 0, '2017-06-12 15:03:19', '2017-06-12 15:58:54', NULL),
('45150cd0-4f80-11e7-83af-080027c30a85', 4, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45155829-4f80-11e7-83af-080027c30a85', 4, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4515b432-4f80-11e7-83af-080027c30a85', 5, 0, '2017-06-12 15:03:19', '2017-06-12 15:57:23', NULL),
('4515ef41-4f80-11e7-83af-080027c30a85', 5, 0, '2017-06-12 15:03:19', '2017-06-12 15:52:46', NULL),
('45162b02-4f80-11e7-83af-080027c30a85', 5, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('451695fd-4f80-11e7-83af-080027c30a85', 5, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4516d878-4f80-11e7-83af-080027c30a85', 5, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45174187-4f80-11e7-83af-080027c30a85', 6, 0, '2017-06-12 15:03:19', '2017-06-12 15:52:46', NULL),
('45178655-4f80-11e7-83af-080027c30a85', 6, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4517c755-4f80-11e7-83af-080027c30a85', 6, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45180864-4f80-11e7-83af-080027c30a85', 6, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45185fc2-4f80-11e7-83af-080027c30a85', 6, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4519125e-4f80-11e7-83af-080027c30a85', 7, 0, '2017-06-12 15:03:19', '2017-06-12 18:42:04', NULL),
('45197620-4f80-11e7-83af-080027c30a85', 7, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4519c085-4f80-11e7-83af-080027c30a85', 7, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('451a032b-4f80-11e7-83af-080027c30a85', 7, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('451a4a91-4f80-11e7-83af-080027c30a85', 7, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('451aa889-4f80-11e7-83af-080027c30a85', 8, 0, '2017-06-12 15:03:19', '2017-06-12 18:42:04', NULL),
('451af37b-4f80-11e7-83af-080027c30a85', 8, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('451b27f8-4f80-11e7-83af-080027c30a85', 8, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('451b5d5c-4f80-11e7-83af-080027c30a85', 8, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('451ba676-4f80-11e7-83af-080027c30a85', 8, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('451bfe3c-4f80-11e7-83af-080027c30a85', 9, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('451c3d41-4f80-11e7-83af-080027c30a85', 9, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('451c6d57-4f80-11e7-83af-080027c30a85', 9, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('451d3b72-4f80-11e7-83af-080027c30a85', 9, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('451d80ab-4f80-11e7-83af-080027c30a85', 9, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('451de0dd-4f80-11e7-83af-080027c30a85', 10, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('451e2f3d-4f80-11e7-83af-080027c30a85', 10, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('451e8697-4f80-11e7-83af-080027c30a85', 10, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('451ed706-4f80-11e7-83af-080027c30a85', 10, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('451f2c65-4f80-11e7-83af-080027c30a85', 10, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('451f8fbf-4f80-11e7-83af-080027c30a85', 11, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('451fe313-4f80-11e7-83af-080027c30a85', 11, 0, '2017-06-12 15:03:19', '2017-06-12 16:04:13', NULL),
('452035a6-4f80-11e7-83af-080027c30a85', 11, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4520a028-4f80-11e7-83af-080027c30a85', 11, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4520fa62-4f80-11e7-83af-080027c30a85', 11, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45214e51-4f80-11e7-83af-080027c30a85', 11, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45220048-4f80-11e7-83af-080027c30a85', 12, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45224fce-4f80-11e7-83af-080027c30a85', 12, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45229626-4f80-11e7-83af-080027c30a85', 12, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4522e0be-4f80-11e7-83af-080027c30a85', 12, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45233fa5-4f80-11e7-83af-080027c30a85', 12, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('452391a1-4f80-11e7-83af-080027c30a85', 13, 0, '2017-06-12 15:03:19', '2017-06-12 18:42:04', NULL),
('4523fe9f-4f80-11e7-83af-080027c30a85', 13, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45245fbd-4f80-11e7-83af-080027c30a85', 13, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4524aab8-4f80-11e7-83af-080027c30a85', 13, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4524ee1c-4f80-11e7-83af-080027c30a85', 13, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('452546f0-4f80-11e7-83af-080027c30a85', 14, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45259115-4f80-11e7-83af-080027c30a85', 14, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4525e64f-4f80-11e7-83af-080027c30a85', 14, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45263f08-4f80-11e7-83af-080027c30a85', 14, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4526be5c-4f80-11e7-83af-080027c30a85', 14, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45271554-4f80-11e7-83af-080027c30a85', 16, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45275808-4f80-11e7-83af-080027c30a85', 16, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4527a6d9-4f80-11e7-83af-080027c30a85', 16, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4527fa8e-4f80-11e7-83af-080027c30a85', 16, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('452855d9-4f80-11e7-83af-080027c30a85', 16, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45289db5-4f80-11e7-83af-080027c30a85', 17, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4528fe1e-4f80-11e7-83af-080027c30a85', 17, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('452946a4-4f80-11e7-83af-080027c30a85', 17, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4529b01b-4f80-11e7-83af-080027c30a85', 17, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('452a07ac-4f80-11e7-83af-080027c30a85', 17, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('452a6a41-4f80-11e7-83af-080027c30a85', 18, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('452aba48-4f80-11e7-83af-080027c30a85', 18, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('452b40e8-4f80-11e7-83af-080027c30a85', 18, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('452b82e6-4f80-11e7-83af-080027c30a85', 18, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('452bdde3-4f80-11e7-83af-080027c30a85', 18, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('452c3079-4f80-11e7-83af-080027c30a85', 19, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('452c9644-4f80-11e7-83af-080027c30a85', 19, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('452cf5c8-4f80-11e7-83af-080027c30a85', 19, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('452d5844-4f80-11e7-83af-080027c30a85', 19, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('452dc5a9-4f80-11e7-83af-080027c30a85', 19, 0, '2017-06-12 15:03:19', '2017-06-12 16:04:13', NULL),
('452e2fb1-4f80-11e7-83af-080027c30a85', 22, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('452e8637-4f80-11e7-83af-080027c30a85', 22, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('452ecd68-4f80-11e7-83af-080027c30a85', 22, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('452f129b-4f80-11e7-83af-080027c30a85', 22, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('452f73d9-4f80-11e7-83af-080027c30a85', 22, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45301028-4f80-11e7-83af-080027c30a85', 23, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('453068a0-4f80-11e7-83af-080027c30a85', 23, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4530aef6-4f80-11e7-83af-080027c30a85', 23, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45310e69-4f80-11e7-83af-080027c30a85', 23, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45316d55-4f80-11e7-83af-080027c30a85', 23, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4531ada6-4f80-11e7-83af-080027c30a85', 24, 0, '2017-06-12 15:03:19', '2017-06-12 18:40:00', NULL),
('4531f765-4f80-11e7-83af-080027c30a85', 24, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45324e6d-4f80-11e7-83af-080027c30a85', 24, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45329e36-4f80-11e7-83af-080027c30a85', 24, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4532f741-4f80-11e7-83af-080027c30a85', 24, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45334751-4f80-11e7-83af-080027c30a85', 25, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4533a02e-4f80-11e7-83af-080027c30a85', 25, 0, '2017-06-12 15:03:19', '2017-06-12 16:04:13', NULL),
('4533fabe-4f80-11e7-83af-080027c30a85', 25, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4534a7b7-4f80-11e7-83af-080027c30a85', 25, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45352d91-4f80-11e7-83af-080027c30a85', 25, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45358985-4f80-11e7-83af-080027c30a85', 26, 0, '2017-06-12 15:03:19', '2017-06-12 18:40:00', NULL),
('4535e5b0-4f80-11e7-83af-080027c30a85', 26, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45364037-4f80-11e7-83af-080027c30a85', 26, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('453686b4-4f80-11e7-83af-080027c30a85', 26, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4536dfb5-4f80-11e7-83af-080027c30a85', 26, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45372774-4f80-11e7-83af-080027c30a85', 27, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45378ce7-4f80-11e7-83af-080027c30a85', 27, 0, '2017-06-12 15:03:19', '2017-06-12 16:04:13', NULL),
('4537d513-4f80-11e7-83af-080027c30a85', 27, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('45381e64-4f80-11e7-83af-080027c30a85', 27, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4538635c-4f80-11e7-83af-080027c30a85', 27, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4538ae3d-4f80-11e7-83af-080027c30a85', 28, 0, '2017-06-12 15:03:19', '2017-06-12 18:40:00', NULL),
('4539551d-4f80-11e7-83af-080027c30a85', 28, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('4539a9b6-4f80-11e7-83af-080027c30a85', 28, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('453a09f7-4f80-11e7-83af-080027c30a85', 28, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('453a4ce4-4f80-11e7-83af-080027c30a85', 28, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('453aaf08-4f80-11e7-83af-080027c30a85', 29, 0, '2017-06-12 15:03:19', '2017-06-12 18:40:00', NULL),
('453af99c-4f80-11e7-83af-080027c30a85', 29, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('453b4401-4f80-11e7-83af-080027c30a85', 29, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('453b84e5-4f80-11e7-83af-080027c30a85', 29, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('453bd5c0-4f80-11e7-83af-080027c30a85', 29, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('453c212d-4f80-11e7-83af-080027c30a85', 30, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('453c7c7b-4f80-11e7-83af-080027c30a85', 30, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('453cd600-4f80-11e7-83af-080027c30a85', 30, 1, '2017-06-12 15:03:19', '2017-06-12 15:03:19', NULL),
('453d2677-4f80-11e7-83af-080027c30a85', 30, 0, '2017-06-12 15:03:19', '2017-06-12 16:05:49', NULL),
('453d7e73-4f80-11e7-83af-080027c30a85', 30, 0, '2017-06-12 15:03:19', '2017-06-12 16:02:30', NULL),
('60a7c3f4-4f7f-11e7-83af-080027c30a85', 1, 0, '2017-06-12 14:56:55', '2017-06-12 15:54:19', NULL),
('d3a4ba1d-4f7f-11e7-83af-080027c30a85', 1, 1, '2017-06-12 15:00:08', '2017-06-12 15:00:08', NULL),
('d3a51b9f-4f7f-11e7-83af-080027c30a85', 1, 1, '2017-06-12 15:00:08', '2017-06-12 15:00:08', NULL),
('d3a5699b-4f7f-11e7-83af-080027c30a85', 1, 1, '2017-06-12 15:00:08', '2017-06-12 15:00:08', NULL),
('d3a8152a-4f7f-11e7-83af-080027c30a85', 1, 1, '2017-06-12 15:00:08', '2017-06-12 15:00:08', NULL);

--
-- Déclencheurs `book_instances`
--
DELIMITER $$
CREATE TRIGGER `book_instances_BEFORE_INSERT` BEFORE INSERT ON `book_instances` FOR EACH ROW BEGIN
SET new.uuid = uuid();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `book_rating`
--

CREATE TABLE `book_rating` (
  `book_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `book_rating`
--

INSERT INTO `book_rating` (`book_id`, `user_id`, `comment`, `created_at`) VALUES
(2, 17, 'Trop bien, je le loue à nouveau pour ma femme.', '2017-06-14 14:11:14'),
(2, 20, 'J\'ai pas aimé le début mais après c\'est mieux.', '2017-06-13 14:11:45'),
(3, 5, 'Bof, j\'ai pas trop aimé mais bon, chacun ses goûts.', '2017-06-12 14:11:44'),
(3, 6, 'Trop hérotique pour moi.', '2017-06-11 14:11:47'),
(3, 8, 'Exelent.', '2017-06-10 14:11:14'),
(3, 18, 'Je n\'ai rien compris.', '2017-06-15 14:11:11'),
(3, 19, 'J\'ai perdu une heure de ma vie.', '2017-06-16 14:11:22'),
(3, 20, 'C\'est toride ce livre, je suis accro.', '2017-06-17 14:11:44'),
(4, 13, 'Pas mal comme cale porte.', '2017-06-18 14:10:44'),
(4, 16, 'Pas eu le temps de le finir mais je le recommande, je vais surement l\'acheter.', '2017-06-19 10:10:00'),
(4, 17, 'Flexbox c\'est la vie !', '2017-07-13 09:00:01'),
(4, 18, 'Super, maintenant je sais faire du CSS.', '2017-05-22 08:16:33'),
(5, 14, 'Du cul en veux-tu en voilà, null.', '2017-06-02 12:11:44'),
(5, 15, 'Belle histoir d\'amour lol.', '2016-01-01 22:33:14'),
(6, 13, 'Il est vraiment complet, avec des exemples illustrés, un must.', '2014-06-01 22:17:17'),
(6, 14, 'Waw c\'est du lourd ce livre, depuis que je l\'ai lu, mon site est beaucoup plus ergonomique.', '2015-03-04 20:38:27'),
(7, 5, 'Je ne suis pas un pro mais un utilisateur avancé. Si je pense connaître les anciennes balises, il me tardait de connaître les nouvelles et apprendre à les utiliser. Comme dit dans d\'autres commentaires il s\'agit d\'un livre très bien fait, complet, accesible et agréable à lire... mais qui pour certains points n\'est pas exhaustif. Il faudra donc, comme commenté antérieurement, faire appel à Google par exemple pour tirer le meilleur profit des balises brièvement expliquées dans l\'ouvrage.', '2015-03-02 22:35:24'),
(7, 6, 'Cet ouvrage donne toutes les références utiles aux développeurs HTML modernes.', '2015-03-04 10:38:27'),
(7, 7, 'HTML4 a été amélioré par HTML5, dont toutes les innovations ne me paraissent pas toujours opportunes ou utiles, mais Rodolphe Rimelé n\'est pas responsable des imperfections de HTML5 qu\'il présente d\'une façon très claire, immédiatement utilisables même pour un informaticien non professionnel comme moi. J\'ai ce livre dans ma bibliothèque tout près de mon ordinateur et je m\'y réfère très souvent. C\'est un excellent ouvrage tant professionnel que de vulgarisation, il me semble.', '2015-03-04 15:28:27'),
(7, 8, 'OUPS, vous ne l\'avez pas encore lu, ... vous allez regretter de ne pas l\'avoir depuis longtemps, le mien est déjà blindé de repères mais hélas les jours n\'ont que 24 h, 80 h mini serait super pour tester tous les codes.', '2015-03-02 10:48:37'),
(7, 9, 'C\'est le livre parfait pour comprendre HTML5. L\'auteur du livre est aussi actif sur le site alsacreations.com qui est une référence. Ce livre est très bien écrit, contient toutes les infos nécessaires pour bien démarrer son projet et fait référence à de nombreux sites ou ouvrages lorsque cela est nécessaire.', '2015-03-02 17:48:37'),
(7, 10, 'A la manière d\'une encyclopédie ce livre survole toutes les balises html de la même manière, avec une pastille \"NOUVEAU\" pour les nouveaux attributs de HTML5. Par exemple la nouvelle balise \"Input type=search\", on n\'y apprends que le strict minimum, il faudra donc aller sur google pour découvrir qu\'on peut utiliser un champs \"placeholder\" pour le texte par défaut, que la taille s\'ajuste automatiquement en fonction du font-size défini ou encore qu\'on ne peut pas styler cet élément en css sans forcer le webkit. Sinon c\'est un livre agréable à survoler pour avoir un aperçu des nouveautés proposées par HTML5. Mais ce n\'est pas un livre de support pour travailler, il faudra user de Google pour découvrir en détails les balises ou fonctions.', '2015-03-02 11:44:39'),
(7, 11, 'Bon livre, on y trouve des infos détaillées sur HTML5 et les APIs liées que personnellement je n\'avais pas dénichées ailleurs.', '2015-09-02 11:38:24'),
(7, 12, 'Très complet, je le conseil.', '2015-09-02 11:44:25'),
(7, 13, 'Je l\'ai parcouru à 100%, il est aussi bien adapté pour un novice  que pour un pro.', '2015-09-02 10:30:21'),
(7, 14, 'Je n\'ai rien appris de nouveau.', '2015-09-01 06:39:44'),
(7, 15, 'Une réference dans le monde du web francophone.', '2015-08-01 04:35:40'),
(7, 16, 'J\'aurais aimé plus de contenu sur js.', '2014-07-30 07:33:17'),
(7, 17, 'Je n\'y connaissais rien, et maintenant bah c\'est pareil.', '2014-07-30 07:22:10'),
(7, 18, 'Très bien pensé, je l\'utilise pour mes études.', '2016-06-28 08:44:45'),
(7, 19, 'Que dire de ce livre qui ne soit pas résumé dans le titre ? Tout d\'abord, même si certains trouveront des choses à redire, ce livre garde et mérite ses 5 étoiles ne serait-ce que par le travail de recherche et d\'écriture qu\'a du nécessiter ce dernier. Je souligne rarement ce point, mais je pense qu\'ici il est important de le remarquer : ce livre vous évitera très souvent (pour ne pas dire tout le temps) de plonger le nez dans les recommandations officielles ! Allons-y, les chapitres 4 et 5 présentant les éléments et attributs et les formulaires html 5 sont sans aucun doute arides, rébarbatifs et parfois un peu confus, mais ils sont complets. Toutefois, je ne pense pas que l\'auteur ait écrit cet ouvrage dans le but de tout faire retenir aux lecteurs à la première lecture, mais plutôt d\'avoir sous le coude une documentation quasi exhaustive de ce qu\'il faut savoir sur html 5 : vous avez un doute sur un élément ? il vous manque le nom d\'un attribut ou sa valeur ? à quoi sert ce nouvel attribut ? comment marche ce nouvel élément de formulaire ? ... Bref, ouvrez le livre et la réponse vous attend. De plus, avec une table des matières de 8 pages sur deux colonnes, seule la mauvaise foi pourra vous faire dire que vous ne trouvez pas rapidement l\'information que vous cherchez. Quant aux chapitres suivant, couvrant l\'audio et la vidéo, le canvas, la géolocalisation et bien d\'autres... ils sont les plus détaillés que j\'ai pu lire en français parmi la \"concurrence\" papier ou virtuelle.', '2016-10-22 09:26:02'),
(7, 20, 'Ce livre n\'a pas été rédigé pour des débutants. Cet ouvrage s\'adresse plutôt à des lecteurs ayant des notions en JavaScript et en Php. Pour conclure je vous conseil ce livre qui m\'a beaucoup plus.', '2017-06-12 16:51:46'),
(8, 5, 'J\'ai adoré.', '2017-05-21 21:58:20'),
(8, 6, 'Un peu déçu.', '2017-05-21 21:33:35'),
(8, 7, 'J\'ai pas compris.', '2017-05-21 11:27:11'),
(9, 8, 'Waw, ça change un homme.', '2017-05-21 10:10:11'),
(10, 9, 'C\'est honteux de faire lire ça à des enfants, mon fils de 32 ne dort plus de la nuit et refait pipi dans son lit. Mon pauvre petit Tenguy', '2017-05-21 11:27:23'),
(12, 10, 'Zut, pas vu que c\'était en Anglais haha.', '2017-04-21 21:59:59'),
(13, 11, 'Quelle drôle d\'histoire.', '2017-04-21 20:43:31'),
(13, 12, 'La fin est triste, ils sont tous morts.', '2017-04-21 23:32:30'),
(14, 13, 'Ma fille raffole ce genre de livres à suspens et les trouvent toujours sur Amazon plutôt qu\'en grandes surfaces et pour moins cher. Toutefois, attention aux plus jeunes enfants qui savent déjà lire et qui sont sensibles. C\'est aux parents de juger.', '2017-04-21 11:11:41'),
(14, 14, 'Mon fils a beaucoup apprécié et ça poir un enfant qui n aime pas lire et qui n aime pas les livres long.', '2017-04-21 03:02:03'),
(14, 15, 'J\'ai voulu essayer, depuis le temps que j\'en entends parler. Mais je reste perplexe. On ne peut pas dire que ce soit mal écrit, d\'ailleurs, vu la minceur de l\'intrigue, c\'est drôlement bien écrit pour que j\'ai réussi à tenir tout le bouquin avec une intrigue qui se résume à : ce soir j\'ai mangé de la pizza avec mon père. On a regardé la télé. Hier à la cantine j\'ai aperçu XXX (désolée, je ne me souviens même pas du nom du héros). Je crois que ce week-end je vais aller nager avec les copains. Mais je n\'ai pas de maillot. il faut que j\'aille en acheter un. Ce soir on a regardé la télé avec mon père. On a mangé un sandwich au fromage.....?????', '2017-04-21 04:05:06'),
(14, 16, 'Qu\'est-ce que c\'est que ce truc pouri.', '2017-03-15 13:30:02'),
(16, 17, 'Un vrai travail bibliographique et scientifique écrit comme un roman - passionnant ! Cette histoire de la peste est aisément transposable dans le contexte actuel où les craintes de pandémies sont grandes dans un contexte mondialisé où les échanges s\'intensifient.', '2017-03-15 04:22:30'),
(16, 18, 'J\'ai perdu mon vélo.', '2017-03-15 14:33:21'),
(16, 19, 'Merci pour ce superbe livre, je l\'ai lu 7 fois et je ne m\'en lasse pas.', '2017-03-15 09:09:09'),
(16, 20, 'Je vais prendre un menu géant avec une mayo et un coca, le tout à emporter, bien vite chez moi, j\'ai trop faim.', '2017-06-13 14:11:40'),
(17, 5, 'J\'ai écrit un commentaire.', '2017-06-13 14:11:39'),
(17, 6, 'Moi j\'aime bien.', '2017-06-13 14:11:38'),
(18, 7, 'Livre émouvant et terrible à la fois, et en cette journée de la femme ce que l\'on ressent est encore plus fort!! pour ces femmes afghanes privées de liberté, à la merci de ces hommes, j\'ai senti ma révolte tout au long du livre........je le conseille vivement', '2017-06-13 14:11:37'),
(18, 8, 'Au moment de rédiger un commentaire sur ce roman bouleversant qui a été inspiré par des personnages ayant réellement existé, même si c’est une œuvre de fiction, je relis avec beaucoup d’émotion le texte de remerciement de l’auteure, au début du livre. Déjà ce texte m’avait frappée avant la lecture du roman, et d’ordinaire, le plus souvent, les remerciements sont présentés à la fin. Je comprends l’intérêt de les placer avant pour ce livre, même s’il est bon de les revisiter ensuite.', '2017-06-13 14:11:36'),
(18, 9, 'Livre très bien traduit (je suppose) qui nous en apprend beaucoup sur la vie en Afghanistan. L\'interaction entre l\'histoire de l\'arrière-grand-mère et celle de la jeune fille rend le récit palpitant.', '2017-06-13 14:10:22'),
(19, 10, 'Très bien écrit, très facile à lire et à comprendre, c\'est une description très réaliste de la condition féminine en Afghanistan. Si certaines se battent pour acquérir un minimum d\'instruction, d\'autres acceptent leur triste condition d\'esclavage : Inshallah ! Dieu le veut !', '2017-06-13 14:01:40'),
(22, 11, 'Emouvant et entraînant!! Je n\'avais aucune envie que l\'histoire se termine! Deux personnages principaux auxquelles on s\'attache forcément.', '2017-03-14 13:24:57'),
(23, 12, 'Magnifique roman sur les femmes afghanes qui vous trotte encore dans la tête un petit moment après l\'avoir terminé... Quelle vie pour ces femmes !!!!', '2017-03-14 13:24:58'),
(23, 13, 'C\'est un livre incroyable sur une époque qui n\'est plus mais dont il doit rester quelques traces. Un livre émouvant, un témoignage !', '2017-03-14 13:24:40'),
(24, 14, 'Un livre complet et accessible (aux personnes non spécialistes) du code. Il y a des exercices, des explications claires. Vraiment didactique et le livre aborde même l\'angular et le node avec les bases de données mongo.', '2017-06-13 14:11:01'),
(24, 15, 'Je suis formateur JS , Node-JS , Angulars 2-4 , J\'ai acheté ce livre afin de voir si il pourrait faire un bon support pour mes élèves. ce livre fraîchement revu pour sa deuxième édition ,je me disais que j\'allais pas trouver des choses archaïques vu qu\'il à été récemment mis à jour ! Toutes la première partie du livre aurait pu être écrit il y a 10 ans. La seconde pourrait être intéressant, mais l\'écrivain nous fait juste une démonstration de ce qu\'il sait faire. La police est trop grosse pour les exemple, qui sont très souvent accompagné de la structure minimal html du coup un exemple tiens sur plusieurs page, difficile de comprendre le code de cet façon, les commentaires qui viennent avec ne sont pas du tous pédagogue . \"Tiens , c\'est ça , et c\'est comme ça , pas besoin de savoir le pourquoi du comment, puis on va pas approfondir \".', '2017-03-14 13:24:11'),
(24, 16, 'Je n ai pas aimé du tout l approche pour apprendre la logarithmique. La premiere approche des tableau avec l information du debut d un tableau et initialisee a 1 pour moi n est pas top.', '2017-06-01 12:10:23'),
(24, 17, 'Tres bon livre j,ai appris beaucoup de chose avec ce livre et les tutoriel de youtube j,apprend des chose formidable', '2017-06-01 12:55:45'),
(25, 18, 'remière approche de Paulo Coelho que l\'on m\'a fortement recommandé en particulier ce livre, étant sensible à certains aspects du livre j\'y ai retrouvé des enseignements connus et reconnus. Un magnifique conte plein de poésie et de douceur qui se lit simplement. Tout le monde y trouvera son dû car les messages de Paulo Coelho ne laissent pas insensible et s\'adressent à l\'humanité toute entière.', '2017-06-01 12:01:02'),
(25, 19, 'Moi j\'aime bien.', '2017-06-01 12:07:22'),
(26, 8, 'Trop de pages. beurk.', '2017-06-01 12:09:55'),
(26, 9, 'Ce livre est pour moi un incontournable, il faut l\'avoir lu au moins une fois dans sa vie. Je le considère comme un chef d\'oeuvre littéraire, il est formidablement bien écrit et l\'histoire est très belle. Je le conseille à tous ceux qui aiment rêver!', '2017-06-01 12:10:44'),
(26, 10, 'Ceci est un conte philosophique, facile à lire, à relire, étourdissant de pureté, comme une randonnée en altitude Ce jeune berger andalou renonce au \" métier \" que lui avait destiné son père : être prêtre . Il est à la recherche de sa\" vérité \" formule très ambitieuse pour cet être , humble et bon, qui fait le choix d\'être berger . Il aime ses moutons qui lui apportent une paix intérieure .', '2017-06-01 12:00:01'),
(26, 11, 'MAGNIFIQUE ! Écouter son cœur toujours. Une philosophie de Vie qui montre combien il est important de suivre sa légende personnelle. Je me suis reconnue à 100% dans ce livre et je souhaite qu\'il en soit de même pour ceux qui ne le connaissent pas encore !', '2017-06-01 12:19:19'),
(26, 12, 'Si la démarche d\'évaluation peut viser à mesurer, quantifier (usage de méthodes statistiques) et caractériser une situation, une entité, un résultat ou une performance, de nature complexe et donc a priori difficilement mesurable. Selon l\'objet ciblé, la démarche d\'évaluation fait appel à des méthodes ou outils très variés en fonction de leurs présupposés théoriques - et politiques - de leurs buts, de leurs techniques.', '2017-03-01 12:01:12'),
(26, 13, 'Plus généralement, l\'évaluation est un processus mental de l\'agir humain. l\'action est adossée à des processus d\'évaluation qui sont tantôt des vérifications de la conformité de nos actes, tantôt de l\'auto questionnement ( quand on s\'interroge sur une décision, qu\'on a besoin d\'y penser pour rendre intelligible ce qui ne va pas de soi).', '2017-03-01 12:16:41'),
(26, 14, 'Selon Michel Vial, 1 l\'évaluation est le rapport que l\'on entretient avec la valeur. L\'homme est porteurs de valeurs qu\'il a reçu plus ou moins consciemment, qu\'il convoque pour mesurer la valeur d\'objets ou de produits, pour contrôler les procédures ( vérifier leur conformité) ou encore interroger (rendre intelligible) le sens de ses pratiques : s\'interroger sur la valeur, rendre intelligible les pratiques au moyen de l\'évaluation située.', '2017-02-01 12:12:11'),
(26, 15, 'Lecture douce et facile. Une histoire touchante et révélatrice pour ceux qui ont besoin d\'un peu de lumière. Un ouvrage qu\'on devrait tous avoir.', '2017-02-01 09:11:13'),
(26, 16, 'Tout a été dit sur ce livre qui fait partie selon moi du patrimoine mondiale littéraire.... A lire une fois dans sa vie car l\'histoire racontée dans ce livre et surtout les questions que ce pose le personnage sont des questions que chacun se pose un jour de son vivant....', '2017-02-01 09:59:55'),
(26, 17, 'Je ne connaissais pas ce livre (que de nom). C\'est une histoire simple, pleine de bon sens avec une dose d\'onirisme.', '2017-02-01 09:55:01'),
(26, 18, 'Achetez ce livre.', '2017-02-01 09:13:33'),
(26, 19, 'Comment vivre une magnifique envolée tout en restant sous sa couette ?', '2017-02-01 09:02:02'),
(26, 20, 'je l\'avais , je l\'ai lu 3 ou 4 fois , et trouvé des réponses , bonne introspection personnelle. je l\'ai prêté et re prêté , et puis je l\'ai perdu , alors recommandé pour l\'avoir toujours à portée de lecture.', '2017-02-01 09:03:04'),
(27, 20, 'Magnifique conte, à la fois simple et très bien écrit. Il raconte l\'histoire d\'un jeune berger andalou qui a renoncé à son destin que lui avait recommandé son père : être prêtre. Par l\'amour des voyages, il préférera garder des moutons.', '2017-02-23 10:23:31'),
(28, 19, 'Très belle histoire généreuse en leçons de vie, pleine de vérités, à recommander ou à offrir à tous vos amis qui vous sont chers.', '2017-02-23 10:11:11'),
(29, 18, 'A mon sens, tout entrepreneur apprendrait à lire ce livre. Cette histoire peut aider à trouver la force de mener son projet, d\'oser le changement et d\'affronter la difficulté que l\'on met trop souvent sur le registre du contexte économique en crise.', '2017-02-23 10:00:01'),
(30, 17, 'Depuis le temps que j\'entendais parler de ce livre...quel magnifique conte, quelle leçon de simplicité, d\'humilité, de bonheur absolu !!!', '2017-02-23 10:05:05');

-- --------------------------------------------------------

--
-- Structure de la table `borrowing_history`
--

CREATE TABLE `borrowing_history` (
  `uuid` varchar(36) CHARACTER SET utf8mb4 NOT NULL,
  `book_instance_uuid` varchar(36) CHARACTER SET utf8mb4 NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `borrowed_since` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gave_back_since` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `borrowing_history`
--

INSERT INTO `borrowing_history` (`uuid`, `book_instance_uuid`, `user_id`, `borrowed_since`, `gave_back_since`, `deleted_at`) VALUES
('061c34a2-4f88-11e7-83af-080027c30a85', '450f63bf-4f80-11e7-83af-080027c30a85', 17, '2017-05-12 15:58:49', '2017-06-11 15:58:49', NULL),
('061cf1ea-4f88-11e7-83af-080027c30a85', '4512bcb7-4f80-11e7-83af-080027c30a85', 17, '2017-04-12 15:58:49', '2017-05-10 15:58:49', NULL),
('061f2dbb-4f88-11e7-83af-080027c30a85', '4514bff5-4f80-11e7-83af-080027c30a85', 17, '2017-06-12 15:58:49', NULL, NULL),
('0d35994d-4fa7-11e7-83af-080027c30a85', '4515ef41-4f80-11e7-83af-080027c30a85', 14, '2017-03-16 16:05:43', '2017-04-16 16:05:43', NULL),
('269e95ad-4fa2-11e7-83af-080027c30a85', '4514bff5-4f80-11e7-83af-080027c30a85', 13, '2017-01-01 16:05:43', '2017-02-03 16:05:43', NULL),
('27121be5-4f87-11e7-83af-080027c30a85', '4515ef41-4f80-11e7-83af-080027c30a85', 19, '2017-06-12 15:52:35', NULL, NULL),
('2712a6dd-4f87-11e7-83af-080027c30a85', '45174187-4f80-11e7-83af-080027c30a85', 19, '2017-06-12 15:52:35', NULL, NULL),
('3a28f2a4-4f88-11e7-83af-080027c30a85', '451144bb-4f80-11e7-83af-080027c30a85', 16, '2017-06-12 16:00:16', NULL, NULL),
('3a29b7df-4f88-11e7-83af-080027c30a85', '45132cf6-4f80-11e7-83af-080027c30a85', 16, '2017-06-12 16:00:16', NULL, NULL),
('52d4c8f8-4fa0-11e7-83af-080027c30a85', '450f63bf-4f80-11e7-83af-080027c30a85', 17, '2017-06-12 18:52:46', NULL, NULL),
('5b8c0830-4f87-11e7-83af-080027c30a85', '60a7c3f4-4f7f-11e7-83af-080027c30a85', 19, '2017-06-12 15:54:03', NULL, NULL),
('6de469f5-4f88-11e7-83af-080027c30a85', '4511a0af-4f80-11e7-83af-080027c30a85', 15, '2017-06-12 16:01:43', NULL, NULL),
('6de4c63b-4f88-11e7-83af-080027c30a85', '451386c7-4f80-11e7-83af-080027c30a85', 15, '2017-06-12 16:01:43', NULL, NULL),
('82f737b3-4f88-11e7-83af-080027c30a85', '453d7e73-4f80-11e7-83af-080027c30a85', 14, '2017-06-12 16:02:18', NULL, NULL),
('860ad190-4f9e-11e7-83af-080027c30a85', '453aaf08-4f80-11e7-83af-080027c30a85', 11, '2017-06-12 18:39:53', NULL, NULL),
('860ba111-4f9e-11e7-83af-080027c30a85', '4538ae3d-4f80-11e7-83af-080027c30a85', 11, '2017-06-12 18:39:53', NULL, NULL),
('860c96e9-4f9e-11e7-83af-080027c30a85', '45358985-4f80-11e7-83af-080027c30a85', 11, '2017-06-12 18:39:53', NULL, NULL),
('860d8e02-4f9e-11e7-83af-080027c30a85', '4531ada6-4f80-11e7-83af-080027c30a85', 10, '2017-06-12 18:39:53', NULL, NULL),
('a9eb6e37-4fa1-11e7-83af-080027c30a85', '4512bcb7-4f80-11e7-83af-080027c30a85', 8, '2017-06-01 19:02:21', '2017-06-11 17:02:21', NULL),
('aebb4856-4f86-11e7-83af-080027c30a85', '450d6d82-4f80-11e7-83af-080027c30a85', 20, '2017-06-12 15:49:13', NULL, NULL),
('c4759564-4f88-11e7-83af-080027c30a85', '451fe313-4f80-11e7-83af-080027c30a85', 13, '2017-06-12 16:04:08', NULL, NULL),
('c4760ae0-4f88-11e7-83af-080027c30a85', '452dc5a9-4f80-11e7-83af-080027c30a85', 13, '2017-06-12 16:04:08', NULL, NULL),
('c47682c8-4f88-11e7-83af-080027c30a85', '4533a02e-4f80-11e7-83af-080027c30a85', 13, '2017-06-12 16:04:08', NULL, NULL),
('c476ff41-4f88-11e7-83af-080027c30a85', '45378ce7-4f80-11e7-83af-080027c30a85', 13, '2017-06-12 16:04:08', NULL, NULL),
('cfe9adb7-4f86-11e7-83af-080027c30a85', '45120ca7-4f80-11e7-83af-080027c30a85', 20, '2017-06-12 15:50:09', NULL, NULL),
('d0acc426-4f87-11e7-83af-080027c30a85', '450dee43-4f80-11e7-83af-080027c30a85', 18, '2017-06-12 15:57:19', NULL, NULL),
('d0ad2e66-4f87-11e7-83af-080027c30a85', '45125729-4f80-11e7-83af-080027c30a85', 18, '2017-06-12 15:57:19', NULL, NULL),
('d0ad7725-4f87-11e7-83af-080027c30a85', '4513cbd9-4f80-11e7-83af-080027c30a85', 18, '2017-06-12 15:57:19', NULL, NULL),
('d0b00581-4f87-11e7-83af-080027c30a85', '4515b432-4f80-11e7-83af-080027c30a85', 18, '2017-06-12 15:57:19', NULL, NULL),
('d0b2febe-4f9e-11e7-83af-080027c30a85', '4519125e-4f80-11e7-83af-080027c30a85', 9, '2017-06-12 18:41:58', NULL, NULL),
('d0b367a0-4f9e-11e7-83af-080027c30a85', '451aa889-4f80-11e7-83af-080027c30a85', 9, '2017-06-12 18:41:58', NULL, NULL),
('d0b40208-4f9e-11e7-83af-080027c30a85', '451bfe3c-4f80-11e7-83af-080027c30a85', 9, '2017-06-12 18:41:58', NULL, NULL),
('d0b4751c-4f9e-11e7-83af-080027c30a85', '452391a1-4f80-11e7-83af-080027c30a85', 9, '2017-06-12 18:41:58', NULL, NULL),
('fbaa2c18-4f86-11e7-83af-080027c30a85', '4514549c-4f80-11e7-83af-080027c30a85', 19, '2017-06-12 15:51:22', NULL, NULL),
('fca7391b-4f88-11e7-83af-080027c30a85', '453d2677-4f80-11e7-83af-080027c30a85', 12, '2017-06-12 16:05:43', NULL, NULL);

--
-- Déclencheurs `borrowing_history`
--
DELIMITER $$
CREATE TRIGGER `borrowing_history_BEFORE_INSERT` BEFORE INSERT ON `borrowing_history` FOR EACH ROW BEGIN
SET new.uuid = uuid();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `editors`
--

CREATE TABLE `editors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `editors`
--

INSERT INTO `editors` (`id`, `name`, `website`, `logo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'JC Lattès', 'http://www.editions-jclattes.fr', 'assets/img/editors/1.jpg', '2017-06-11 17:46:24', '2017-06-12 09:45:24', NULL),
(2, 'Nouvelles Plumes', 'http://www.nouvellesplumes.com', 'assets/img/editors/2.jpg', '2017-06-11 17:56:45', '2017-06-12 09:45:24', NULL),
(3, 'Robert Laffont', 'http://www.laffont.fr', 'assets/img/editors/3.jpg', '2017-06-11 19:35:27', '2017-06-12 09:45:24', NULL),
(4, 'Eyrolles', 'http://www.eyrolles.com', 'assets/img/editors/4.jpg', '2017-06-11 19:47:47', '2017-06-12 09:45:45', NULL),
(5, 'Pocket', 'https://www.pocket.fr', 'assets/img/editors/5.jpg', '2017-06-11 20:36:46', '2017-06-12 09:45:24', NULL),
(6, 'Gallimard', 'http://www.gallimard.fr', 'assets/img/editors/6.jpg', '2017-06-11 20:49:58', '2017-06-12 09:45:24', NULL),
(7, 'Bayard et Milan', 'http://www.bayardmilan.be', 'assets/img/editors/7.jpg', '2017-06-12 07:26:09', '2017-06-12 09:45:24', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

CREATE TABLE `genres` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'thriller', '2017-06-11 18:14:27', '2017-06-11 18:39:50', NULL),
(2, 'romantique', '2017-06-11 18:15:02', '2017-06-11 18:15:02', NULL),
(3, 'apprentissage', '2017-06-11 18:17:35', '2017-06-11 18:17:35', NULL),
(4, 'romance érotique', '2017-06-11 19:44:30', '2017-06-11 19:44:30', NULL),
(5, 'théâtre', '2017-06-11 20:52:29', '2017-06-11 20:52:29', NULL),
(6, 'peur et frissons pour enfants', '2017-06-12 07:16:59', '2017-06-12 10:16:31', NULL),
(7, 'fantastique', '2017-06-12 10:16:31', '2017-06-12 10:16:31', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `languages`
--

INSERT INTO `languages` (`id`, `code`, `full_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'fr', 'français', '2017-06-11 18:25:30', '2017-06-11 18:25:30', NULL),
(2, 'en', 'english', '2017-06-11 18:25:44', '2017-06-11 18:25:44', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='	';

--
-- Contenu de la table `locations`
--

INSERT INTO `locations` (`id`, `code`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'a-a-1', 'pièce a, rangée a, étagère 1', '2017-06-11 18:32:31', '2017-06-13 10:17:07', NULL),
(2, 'a-a-2', 'pièce a, rangée a, étagère 2', '2017-06-11 18:32:31', '2017-06-13 10:17:07', NULL),
(3, 'a-b-1', 'pièce a, rangée b, étagère 1', '2017-06-11 18:32:31', '2017-06-13 10:17:07', NULL),
(4, 'a-b-2', 'pièce a, rangée b, étagère 2', '2017-06-11 18:32:31', '2017-06-13 10:17:07', NULL),
(5, 'b-a-1', 'pièce b, rangée a, étagère 1', '2017-06-13 10:17:07', '2017-06-13 10:17:07', NULL),
(6, 'b-a-2', 'pièce b, rangée a, étagère 2', '2017-06-13 10:17:07', '2017-06-13 10:17:07', NULL),
(7, 'b-b-1', 'pièce b, rangée b, étagère 1', '2017-06-13 10:17:07', '2017-06-13 10:17:07', NULL),
(8, 'b-b-2', 'pièce b, rangée b, étagère 2', '2017-06-13 10:17:07', '2017-06-13 10:17:07', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `account_type_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `confirmed_email` tinyint(1) DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `datebirth` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `account_type_id`, `email`, `confirmed_email`, `city`, `address`, `datebirth`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Eric', 'Closquet', 2, 'closquet.eric@live.be', 1, 'Seraing', 'impasse Collard 2', '1985-05-15', '2017-06-11 15:21:49', '2017-06-12 12:21:36', NULL),
(3, 'Vilain', 'Dominique', 2, 'dominique.vilain@hepl.be', 1, 'Huy', 'rue Plop 17', '1967-01-14', '2017-06-12 12:21:36', '2017-06-12 12:22:58', NULL),
(4, 'Myriam', 'Dupont', 2, 'myriam.dupont@hepl.be', 1, 'Huy', 'rue Plop 17', '1968-03-04', '2017-06-12 12:24:25', '2017-06-12 12:24:25', NULL),
(5, 'Marie', 'Bertrand', 1, 'marie.bertrand@student.hepl.be', 1, 'Liège', 'avenue Placard 129', '1995-04-12', '2017-06-12 12:27:02', '2017-06-12 12:27:02', NULL),
(6, 'Frédéric', 'Closquet', 1, 'fredo.lol@hotmail.com', NULL, 'Seraing', 'rue Heintz 46', '1990-03-18', '2017-06-12 12:28:35', '2017-06-12 12:28:35', NULL),
(7, 'Mauricette', 'Mercier', 1, 'mauri.m@live.be', NULL, 'Seraing', 'rue Montana 22', '1975-08-28', '2017-06-12 12:31:55', '2017-06-12 12:31:55', NULL),
(8, 'Alain', 'Leclaire', 1, 'alin.l@jojonet.com', NULL, 'Seraing', 'rue Montana 22', '1974-01-01', '2017-06-12 12:33:11', '2017-06-12 12:33:11', NULL),
(9, 'Tom', 'Cruise', 1, 'tomy_bubul@webrox.us', 1, 'Seraing', 'place des Verriers 88', '1928-09-14', '2017-06-12 12:39:29', '2017-06-12 12:39:29', NULL),
(10, 'Béatrice', 'Closquet', 1, 'béa4488@voo.be', 1, 'Seraing', 'place des Verriers 86', '1983-09-17', '2017-06-12 12:39:29', '2017-06-12 12:39:29', NULL),
(11, 'Jimmy', 'Neutron', 1, 'Jimmy.neuneu@hotmail.com', 1, 'Namur', 'rue Oulala 412', '2001-05-22', '2017-06-12 12:39:29', '2017-06-12 12:39:29', NULL),
(12, 'Mike', 'Patoche', 1, 'mike.mike@hotmail.com', 1, 'Namur', 'rue des Cerisiers 18', '1991-02-01', '2017-06-12 12:44:30', '2017-06-12 12:44:30', NULL),
(13, 'Bob', 'Sponge', 1, 'bob.sponge@thesea.fr', NULL, 'Namur', 'rue de la vague 66', '2002-07-19', '2017-06-12 12:44:30', '2017-06-12 12:44:30', NULL),
(14, 'Tony', 'Montana', 1, 'toto1414@bubulles.com', NULL, 'Liège', 'rue panpan 324', '1970-04-22', '2017-06-12 12:44:30', '2017-06-12 12:44:30', NULL),
(15, 'Sophie', 'Galak', 1, 'sophie.soso@live.be', NULL, 'Liège', 'rue Lavigne 47', '1985-04-15', '2017-06-12 13:06:34', '2017-06-12 13:06:34', NULL),
(16, 'Brenda', 'Lacour', 1, 'Brenda.lc@hotmail.fr', 1, 'Liège', 'place de la Choppette 78', '1989-12-12', '2017-06-12 13:06:34', '2017-06-12 13:06:34', NULL),
(17, 'Jérémy', 'Laclac', 1, 'jerem.lefou@flopp.fr', 1, 'Liège', 'avenue Louis 456', '1944-06-02', '2017-06-12 13:06:34', '2017-06-12 13:06:34', NULL),
(18, 'Gerda', 'Schmidt', 1, 'gerda.schmidt@voo.be', 1, 'Huy', 'avenue Lapaire 93', '1963-01-06', '2017-06-12 13:06:34', '2017-06-12 13:06:34', NULL),
(19, 'Philippe', 'Closquet', 1, 'philippe010101@live.be', 1, 'Huy', 'avenue Lapaire 93', '1964-01-06', '2017-06-12 13:06:34', '2017-06-12 13:06:34', NULL),
(20, 'Jean-Claude', 'Van Dam', 1, 'claudi.jean@voo.be', 1, 'Esneux', 'rue de la Rivière 87', '1961-02-02', '2017-06-12 13:08:50', '2017-06-12 13:08:50', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `account_type`
--
ALTER TABLE `account_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_UNIQUE` (`type`);

--
-- Index pour la table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_isbn_unique` (`isbn`),
  ADD KEY `books_languages_id_foreign` (`language_id`),
  ADD KEY `books_genre_id_foreign` (`genre_id`),
  ADD KEY `books_location_id_foreign` (`location_id`),
  ADD KEY `books_editor_id_foreign` (`editor_id`);

--
-- Index pour la table `book_author`
--
ALTER TABLE `book_author`
  ADD KEY `book_author_books_id` (`book_id`),
  ADD KEY `book_author_authors_id` (`author_id`);

--
-- Index pour la table `book_instances`
--
ALTER TABLE `book_instances`
  ADD PRIMARY KEY (`uuid`),
  ADD UNIQUE KEY `uuid_UNIQUE` (`uuid`),
  ADD KEY `book_instances_book_id` (`book_id`);

--
-- Index pour la table `book_rating`
--
ALTER TABLE `book_rating`
  ADD UNIQUE KEY `book_rating_book_id_user_id` (`book_id`,`user_id`),
  ADD KEY `book_rating_user_id` (`user_id`),
  ADD KEY `book_rating_book_id` (`book_id`);

--
-- Index pour la table `borrowing_history`
--
ALTER TABLE `borrowing_history`
  ADD PRIMARY KEY (`uuid`),
  ADD UNIQUE KEY `id_UNIQUE` (`uuid`),
  ADD KEY `borrowing_history_user_id` (`user_id`),
  ADD KEY `borrowing_history_book_instance_uuid` (`book_instance_uuid`);

--
-- Index pour la table `editors`
--
ALTER TABLE `editors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `users_account_type_id` (`account_type_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `account_type`
--
ALTER TABLE `account_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `editors`
--
ALTER TABLE `editors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_edithor_id` FOREIGN KEY (`editor_id`) REFERENCES `editors` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `books_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `books_language_id` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `books_location_id` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Contraintes pour la table `book_author`
--
ALTER TABLE `book_author`
  ADD CONSTRAINT `book_author_authors_id` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `book_author_books_id` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `book_instances`
--
ALTER TABLE `book_instances`
  ADD CONSTRAINT `book_instances_book_id` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `book_rating`
--
ALTER TABLE `book_rating`
  ADD CONSTRAINT `book_rating_book_id` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `book_rating_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `borrowing_history`
--
ALTER TABLE `borrowing_history`
  ADD CONSTRAINT `borrowing_history_book_instance_uuid` FOREIGN KEY (`book_instance_uuid`) REFERENCES `book_instances` (`uuid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `borrowing_history_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_account_type_id` FOREIGN KEY (`account_type_id`) REFERENCES `account_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
