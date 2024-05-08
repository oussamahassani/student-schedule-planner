-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 08 mai 2024 à 18:34
-- Version du serveur : 5.7.36
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `emploidetemps`
--

-- --------------------------------------------------------

--
-- Structure de la table `emploi_du_temps`
--

DROP TABLE IF EXISTS `emploi_du_temps`;
CREATE TABLE IF NOT EXISTS `emploi_du_temps` (
  `id_emploi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `jour` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hdebut` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hfin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enseignant` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `filiere` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filiere_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_emploi`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `emploi_du_temps`
--

INSERT INTO `emploi_du_temps` (`id_emploi`, `jour`, `hdebut`, `hfin`, `type`, `module`, `salle`, `enseignant`, `created_at`, `updated_at`, `filiere`, `filiere_id`) VALUES
(1, '1', '08:00', '10:00', 'TD', 'Architecture des microprocesseurs et microcontroleurs', 'S17', 'Abassi Aziz', '2024-04-22 22:17:04', '2024-04-22 22:17:04', 'licence resaux', 1),
(2, '2', '08:00', '10:30', 'CT', 'Algèbre 2', 'S2', 'Aoun Yacoubi', '2024-04-22 22:17:37', '2024-04-22 22:17:37', 'licence resaux', 1),
(3, '3', '09:00', '13:00', 'CT', 'Architecture des ordinateurs', 'S2', 'Aoun Yacoubi', '2024-04-22 22:17:37', '2024-04-22 22:17:37', 'licence resaux', 1),
(4, '4', '10:00', '11:30', 'CT', 'Apprentissage profond', 'S2', 'Aoun Yacoubi', '2024-04-22 22:17:37', '2024-04-22 22:17:37', 'licence resaux', 1),
(5, '4', '14:30', '16:00', 'CT', 'Architecture des ordinateurs', 'S2', 'Aoun Yacoubi', '2024-04-22 22:17:37', '2024-04-22 22:17:37', 'licence resaux', 1),
(6, '5', '08:00', '09:30', 'CT', 'Architecture des ordinateurs', 'S2', 'Aoun Yacoubi', '2024-04-22 22:17:37', '2024-04-22 22:17:37', 'licence resaux', 1),
(7, '5', '08:00', '09:30', 'CT', 'Architecture des ordinateurs', 'S2', 'Aoun Yacoubi', '2024-04-22 22:17:37', '2024-04-22 22:17:37', 'genie logiciel', 2);

-- --------------------------------------------------------

--
-- Structure de la table `enseignants`
--

DROP TABLE IF EXISTS `enseignants`;
CREATE TABLE IF NOT EXISTS `enseignants` (
  `id_ens` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `codeenseignant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenoms` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialite` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `iu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statut` int(11) DEFAULT NULL,
  `alias` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ncin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sexe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codedepartement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xcasier` int(11) NOT NULL DEFAULT '0',
  `ycasier` int(11) NOT NULL DEFAULT '0',
  `nomar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenomar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_ens`)
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `enseignants`
--

INSERT INTO `enseignants` (`id_ens`, `codeenseignant`, `nom`, `prenoms`, `email`, `tel`, `specialite`, `created_at`, `updated_at`, `iu`, `statut`, `alias`, `ncin`, `Sexe`, `codedepartement`, `xcasier`, `ycasier`, `nomar`, `prenomar`, `password`) VALUES
(1, 'Abassi Aziz', 'Abassi', 'Aziz', 'azizabbasi@gmail.com', NULL, 'Assistant', NULL, '2024-04-30 19:28:24', NULL, 0, NULL, NULL, 'M', 'Sciences', 5, 10, NULL, NULL, '$2y$10$DcLuEl.vmfbZRO9kTkBdlOQFkjI8hs0yplnpFGsxcP6H9qOjefQGa'),
(2, 'Abassi Aziz,Abbassi Khader', '', '', '', '', '?', NULL, NULL, NULL, 0, '', '', 'E', '?', 0, 0, NULL, NULL, NULL),
(3, 'Abbassi Khader', 'Abbassi', 'Khader', NULL, NULL, 'Assistant', NULL, NULL, NULL, 1, NULL, NULL, 'F', 'Techniques', 7, 8, NULL, NULL, NULL),
(4, 'Abbes Khalil', 'Abbes', 'Khalil', NULL, NULL, 'Assistant', NULL, NULL, NULL, 2, NULL, NULL, 'M', 'Techniques', 7, 7, NULL, NULL, NULL),
(5, 'Abid Ezzeddine', 'Abid', 'Ezzeddine', NULL, NULL, 'Assistant', NULL, NULL, NULL, 0, NULL, NULL, 'F', 'Techniques', 7, 6, NULL, NULL, NULL),
(6, 'Abidi Benali', 'Abidi', 'Benali', NULL, NULL, 'Expert', NULL, NULL, NULL, 1, NULL, NULL, 'M', 'Sciences', 1, 12, NULL, NULL, NULL),
(7, 'Achour Bensaid', 'Achour', 'Bensaid', NULL, NULL, 'Expert', NULL, NULL, NULL, 2, NULL, NULL, 'F', 'Sciences', 3, 12, NULL, NULL, NULL),
(8, 'Ajmi Taleb', 'Ajmi', 'Taleb', NULL, NULL, 'Expert', NULL, NULL, NULL, 0, NULL, NULL, 'M', 'Sciences', 6, 10, NULL, NULL, NULL),
(9, 'Alawi Mohamed', 'Alawi', 'Mohamed', NULL, NULL, 'Expert', NULL, NULL, NULL, 1, NULL, NULL, 'F', 'Sciences', 3, 1, NULL, NULL, NULL),
(10, 'Alaya Limam', 'Alaya', 'Limam', NULL, NULL, 'PES', NULL, NULL, NULL, 2, NULL, NULL, 'M', 'Sciences', 7, 3, NULL, NULL, NULL),
(11, 'Aloui Bahloul', 'Aloui', 'Bahloul', NULL, NULL, 'PES', NULL, NULL, NULL, 0, NULL, NULL, 'F', 'Techniques', 7, 2, NULL, NULL, NULL),
(12, 'Amara Ismail', 'Amara', 'Ismail', NULL, NULL, 'PES', NULL, NULL, NULL, 1, NULL, NULL, 'M', 'Techniques', 7, 9, NULL, NULL, NULL),
(13, 'Ammar Amer', 'Ammar', 'Amer', NULL, NULL, 'PES', NULL, NULL, NULL, 2, NULL, NULL, 'F', 'Techniques', 8, 10, NULL, NULL, NULL),
(14, 'Amri Shalaby', 'Amri', 'Shalaby', NULL, NULL, 'PES', NULL, NULL, NULL, 0, NULL, NULL, 'M', 'Sciences', 5, 7, NULL, NULL, NULL),
(15, 'Aouadi Aissaoui', 'Aouadi', 'Aissaoui', NULL, NULL, 'Maitre assistant', NULL, NULL, NULL, 1, NULL, NULL, 'F', 'Sciences', 5, 8, NULL, NULL, NULL),
(16, 'Aoun Yacoubi', 'Aoun', 'Yacoubi', NULL, NULL, 'Maitre assistant', NULL, NULL, NULL, 2, NULL, NULL, 'M', 'Sciences', 6, 5, NULL, NULL, NULL),
(17, 'Arfaoui Mohamedi', 'Arfaoui', 'Mohamedi', NULL, NULL, 'Maitre assistant', NULL, NULL, NULL, 0, NULL, NULL, 'F', 'Techniques', 8, 9, NULL, NULL, NULL),
(18, 'Ashour Naji', 'Ashour', 'Naji', NULL, NULL, 'Maitre assistant', NULL, NULL, NULL, 1, NULL, NULL, 'M', 'Techniques', 3, 7, NULL, NULL, NULL),
(19, 'Attia Oussama', 'Attia', 'Oussama', NULL, NULL, 'Maitre de conférences', NULL, NULL, NULL, 2, NULL, NULL, 'F', 'Sciences', 6, 4, NULL, NULL, NULL),
(20, 'Ayachi Yahia', 'Ayachi', 'Yahia', NULL, NULL, 'Maitre de conférences', NULL, NULL, NULL, 0, NULL, NULL, 'M', 'Sciences', 6, 8, NULL, NULL, NULL),
(21, 'Ayadi Hamed', 'Ayadi', 'Hamed', NULL, NULL, 'Maitre de conférences', NULL, NULL, NULL, 1, NULL, NULL, 'F', 'Sciences', 8, 3, NULL, NULL, NULL),
(22, 'Ayari Bakkar', 'Ayari', 'Bakkar', NULL, NULL, 'Maitre de conférences', NULL, NULL, NULL, 2, NULL, NULL, 'M', 'Sciences', 3, 6, NULL, NULL, NULL),
(23, 'Ayed Ameur', 'Ayed', 'Ameur', NULL, NULL, 'Maitre de conférences', NULL, NULL, NULL, 0, NULL, NULL, 'F', 'Sciences', 3, 8, NULL, NULL, NULL),
(24, 'Azizi Malek', 'Azizi', 'Malek', NULL, NULL, 'PES', NULL, NULL, NULL, 1, NULL, NULL, 'M', 'Sciences', 7, 12, NULL, NULL, NULL),
(25, 'Azzouz Salah', 'Azzouz', 'Salah', NULL, NULL, 'PES', NULL, NULL, NULL, 2, NULL, NULL, 'F', 'Techniques', 6, 3, NULL, NULL, NULL),
(26, 'Bahri Chaibi', 'Bahri', 'Chaibi', NULL, NULL, 'Assistant', NULL, NULL, NULL, 0, NULL, NULL, 'M', 'Techniques', 6, 6, NULL, NULL, NULL),
(27, 'Barhoumi Hamadi', 'Barhoumi', 'Hamadi', NULL, NULL, 'Assistant', NULL, NULL, NULL, 1, NULL, NULL, 'F', 'Techniques', 6, 7, NULL, NULL, NULL),
(28, 'Bedoui Mahjoub', 'Bedoui', 'Mahjoub', NULL, NULL, 'Assistant', NULL, NULL, NULL, 2, NULL, NULL, 'M', 'Techniques', 0, 0, NULL, NULL, NULL),
(29, 'Belaid Ezzine', 'Belaid', 'Ezzine', NULL, NULL, 'Assistant', NULL, NULL, NULL, 0, NULL, NULL, 'F', 'Sciences', 5, 4, NULL, NULL, NULL),
(30, 'Belhadj Amel', 'Belhadj', 'Amel', NULL, NULL, 'Expert', NULL, NULL, NULL, 1, NULL, NULL, 'M', 'Sciences', 3, 9, NULL, NULL, NULL),
(31, 'Belhaj Hanen', 'Belhaj', 'Hanen', NULL, NULL, 'Expert', NULL, NULL, NULL, 2, NULL, NULL, 'F', 'Techniques', 0, 0, NULL, NULL, NULL),
(32, 'Bennour Taktak', 'Bennour', 'Taktak', NULL, NULL, 'Expert', NULL, NULL, NULL, 0, NULL, NULL, 'M', 'Techniques', 3, 4, NULL, NULL, NULL),
(33, 'Bensalem Rabhi', 'Bensalem', 'Rabhi', NULL, NULL, 'Expert', NULL, NULL, NULL, 1, NULL, NULL, 'F', 'Techniques', 1, 9, NULL, NULL, NULL),
(34, 'Bouaziz Hosni', 'Bouaziz', 'Hosni', NULL, NULL, 'Professeur', NULL, NULL, NULL, 2, NULL, NULL, 'M', 'Techniques', 6, 9, NULL, NULL, NULL),
(35, 'Boukhris Ghali', 'Boukhris', 'Ghali', NULL, NULL, 'Professeur', NULL, NULL, NULL, 0, NULL, NULL, 'F', 'Sciences', 5, 9, NULL, NULL, NULL),
(36, 'Bouslama Benmansour', 'Bouslama', 'Benmansour', NULL, NULL, 'Professeur', NULL, NULL, NULL, 1, NULL, NULL, 'M', 'Sciences', 4, 5, NULL, NULL, NULL),
(37, 'Bouzid Yahya', 'Bouzid', 'Yahya', NULL, NULL, 'Maitre assistant', NULL, NULL, NULL, 2, NULL, NULL, 'F', 'Techniques', 0, 0, NULL, NULL, NULL),
(38, 'Bouzidi Aissa', 'Bouzidi', 'Aissa', NULL, NULL, 'Maitre assistant', NULL, NULL, NULL, 0, NULL, NULL, 'M', 'Sciences', 1, 3, NULL, NULL, NULL),
(39, 'Braham Eddine', 'Braham', 'Eddine', NULL, NULL, 'Maitre assistant', NULL, NULL, NULL, 1, NULL, NULL, 'F', 'Sciences', 3, 2, NULL, NULL, NULL),
(40, 'Brahmi Kamel', 'Brahmi', 'Kamel', NULL, NULL, 'Maitre de conférences', NULL, NULL, NULL, 2, NULL, NULL, 'M', 'Sciences', 3, 11, NULL, NULL, NULL),
(41, 'Chaabani Jabri', 'Chaabani', 'Jabri', NULL, NULL, 'Maitre de conférences', NULL, NULL, NULL, 0, NULL, NULL, 'F', 'Sciences', 7, 11, NULL, NULL, NULL),
(42, 'Chaari Hamza', 'Chaari', 'Hamza', NULL, NULL, 'Maitre de conférences', NULL, NULL, NULL, 1, NULL, NULL, 'M', 'Sciences', 1, 4, NULL, NULL, NULL),
(43, 'Chakroun Asma', 'Chakroun', 'Asma', NULL, NULL, 'Maitre de conférences', NULL, NULL, NULL, 2, NULL, NULL, 'F', 'Sciences', 5, 2, NULL, NULL, NULL),
(44, 'Chaouch Cheikh', 'Chaouch', 'Cheikh', NULL, NULL, 'PES', NULL, NULL, NULL, 0, NULL, NULL, 'M', 'Sciences', 4, 4, NULL, NULL, NULL),
(45, 'Cherif Abbas', 'Cherif', 'Abbas', NULL, NULL, 'PES', NULL, NULL, NULL, 1, NULL, NULL, 'F', 'Sciences', 8, 1, NULL, NULL, NULL),
(46, 'Cherni Ali', 'Cherni', 'Ali', NULL, NULL, 'PES', NULL, NULL, NULL, 2, NULL, NULL, 'M', 'Sciences', 1, 7, NULL, NULL, NULL),
(47, 'Daoud Amery', 'Daoud', 'Amery', NULL, NULL, 'Assistant', NULL, NULL, NULL, 0, NULL, NULL, 'F', 'Techniques', 5, 3, NULL, NULL, NULL),
(48, 'Dawood Meriem', 'Dawood', 'Meriem', NULL, NULL, 'Assistant', NULL, NULL, NULL, 1, NULL, NULL, 'M', 'Techniques', 5, 11, NULL, NULL, NULL),
(49, 'Dridi Habib', 'Dridi', 'Habib', NULL, NULL, 'Assistant', NULL, NULL, NULL, 2, NULL, NULL, 'F', 'Techniques', 6, 2, NULL, NULL, NULL),
(50, 'Gasmi Thabet', 'Gasmi', 'Thabet', NULL, NULL, 'Assistant', NULL, NULL, NULL, 0, NULL, NULL, 'M', 'Sciences', 4, 9, NULL, NULL, NULL),
(51, 'Ghanmi Belgacem', 'Ghanmi', 'Belgacem', NULL, NULL, 'Assistant', NULL, NULL, NULL, 1, NULL, NULL, 'F', 'Sciences', 2, 9, NULL, NULL, NULL),
(52, 'Gharbi Abbasi', 'Gharbi', 'Abbasi', NULL, NULL, 'Expert', NULL, NULL, NULL, 2, NULL, NULL, 'M', 'Sciences', 6, 1, NULL, NULL, NULL),
(53, 'Ghazouani Mehdi', 'Ghazouani', 'Mehdi', NULL, NULL, 'Expert', NULL, NULL, NULL, 0, NULL, NULL, 'F', 'Sciences', 0, 0, NULL, NULL, NULL),
(54, 'Ghribi Hilal', 'Ghribi', 'Hilal', NULL, NULL, 'Expert', NULL, NULL, NULL, 1, NULL, NULL, 'M', 'Sciences', 7, 1, NULL, NULL, NULL),
(55, 'Haddad Abdallah', 'Haddad', 'Abdallah', NULL, NULL, 'Professeur', NULL, NULL, NULL, 2, NULL, NULL, 'F', 'Sciences', 4, 1, NULL, NULL, NULL),
(56, 'Haji Hussein', 'Haji', 'Hussein', NULL, NULL, 'Professeur', NULL, NULL, NULL, 0, NULL, NULL, 'M', 'Sciences', 1, 11, NULL, NULL, NULL),
(57, 'Hajji Rahal', 'Hajji', 'Rahal', NULL, NULL, 'Professeur', NULL, NULL, NULL, 1, NULL, NULL, 'F', 'Sciences', 0, 0, NULL, NULL, NULL),
(58, 'Hajri Amin', 'Hajri', 'Amin', NULL, NULL, 'Professeur', NULL, NULL, NULL, 2, NULL, NULL, 'M', 'Sciences', 1, 10, NULL, NULL, NULL),
(59, 'Hamida Ayoub', 'Hamida', 'Ayoub', NULL, NULL, 'Professeur', NULL, NULL, NULL, 0, NULL, NULL, 'F', 'Sciences', 2, 1, NULL, NULL, NULL),
(60, 'Hammami Houssem', 'Hammami', 'Houssem', NULL, NULL, 'Maitre assistant', NULL, NULL, NULL, 1, NULL, NULL, 'M', 'Sciences', 1, 8, NULL, NULL, NULL),
(61, 'Hamouda Amal', 'Hamouda', 'Amal', NULL, NULL, 'Maitre assistant', NULL, NULL, NULL, 2, NULL, NULL, 'F', 'Sciences', 2, 2, NULL, NULL, NULL),
(62, 'Hamzaoui Taieb', 'Hamzaoui', 'Taieb', NULL, NULL, 'Maitre assistant', NULL, NULL, NULL, 0, NULL, NULL, 'M', 'Sciences', 1, 5, NULL, NULL, NULL),
(63, 'Issaoui Mahjoubi', 'Issaoui', 'Mahjoubi', NULL, NULL, 'Maitre de conférences', NULL, NULL, NULL, 1, NULL, NULL, 'F', 'Sciences', 1, 1, NULL, NULL, NULL),
(64, 'Jaouadi Bouziane', 'Jaouadi', 'Bouziane', NULL, NULL, 'Maitre de conférences', NULL, NULL, NULL, 2, NULL, NULL, 'M', 'Sciences', 1, 6, NULL, NULL, NULL),
(65, 'Kacem Najah', 'Kacem', 'Najah', NULL, NULL, 'Maitre de conférences', NULL, NULL, NULL, 0, NULL, NULL, 'F', 'Sciences', 2, 7, NULL, NULL, NULL),
(66, 'Karoui Omrani', 'Karoui', 'Omrani', NULL, NULL, 'PES', NULL, NULL, NULL, 1, NULL, NULL, 'M', 'Sciences', 2, 6, NULL, NULL, NULL),
(67, 'Khadraoui Milad', 'Khadraoui', 'Milad', NULL, NULL, 'PES', NULL, NULL, NULL, 2, NULL, NULL, 'F', 'Sciences', 5, 1, NULL, NULL, NULL),
(68, 'Khalifa Sami', 'Khalifa', 'Sami', NULL, NULL, 'Assistant', NULL, NULL, NULL, 0, NULL, NULL, 'M', 'Sciences', 4, 12, NULL, NULL, NULL),
(69, 'Khalifi Briki', 'Khalifi', 'Briki', NULL, NULL, 'Assistant', NULL, NULL, NULL, 1, NULL, NULL, 'F', 'Sciences', 3, 3, NULL, NULL, NULL),
(70, 'Kharrat Badri', 'Kharrat', 'Badri', NULL, NULL, 'Assistant', NULL, NULL, NULL, 2, NULL, NULL, 'M', 'Sciences', 7, 10, NULL, NULL, NULL),
(71, 'Khelifi Laribi', 'Khelifi', 'Laribi', NULL, NULL, 'Expert', NULL, NULL, NULL, 0, NULL, NULL, 'F', 'Sciences', 8, 8, NULL, NULL, NULL),
(72, 'Khlifi Lakhal', 'Khlifi', 'Lakhal', NULL, NULL, 'Expert', NULL, NULL, NULL, 1, NULL, NULL, 'M', 'Sciences', 0, 0, NULL, NULL, NULL),
(73, 'Kilani Saoudi', 'Kilani', 'Saoudi', NULL, NULL, 'Expert', NULL, NULL, NULL, 2, NULL, NULL, 'F', 'Sciences', 8, 6, NULL, NULL, NULL),
(74, 'Koubaa Zouaghi', 'Koubaa', 'Zouaghi', NULL, NULL, 'Professeur', NULL, NULL, NULL, 0, NULL, NULL, 'M', 'Techniques', 6, 12, NULL, NULL, NULL),
(75, 'Labidi Massoud', 'Labidi', 'Massoud', NULL, NULL, 'Professeur', NULL, NULL, NULL, 1, NULL, NULL, 'F', 'Techniques', 8, 7, NULL, NULL, NULL),
(76, 'Lahmar Khaled', 'Lahmar', 'Khaled', NULL, NULL, 'Professeur', NULL, NULL, NULL, 2, NULL, NULL, 'M', 'Sciences', 1, 2, NULL, NULL, NULL),
(77, 'Mabrouk Brik', 'Mabrouk', 'Brik', NULL, NULL, 'PES', NULL, NULL, NULL, 0, NULL, NULL, 'F', 'Sciences', 4, 10, NULL, NULL, NULL),
(78, 'Mabrouki Murad', 'Mabrouki', 'Murad', NULL, NULL, 'PES', NULL, NULL, NULL, 1, NULL, NULL, 'M', 'Sciences', 4, 7, NULL, NULL, NULL),
(79, 'Mahmoudi Mahmoud', 'Mahmoudi', 'Mahmoud', NULL, NULL, 'PES', NULL, NULL, NULL, 2, NULL, NULL, 'F', 'Sciences', 2, 8, NULL, NULL, NULL),
(80, 'Makhlouf Amari', 'Makhlouf', 'Amari', NULL, NULL, 'Assistant', NULL, NULL, NULL, 0, NULL, NULL, 'M', 'Sciences', 4, 8, NULL, NULL, NULL),
(81, 'Mansouri Maaroufi', 'Mansouri', 'Maaroufi', NULL, NULL, 'Assistant', NULL, NULL, NULL, 1, NULL, NULL, 'F', 'Sciences', 2, 5, NULL, NULL, NULL),
(82, 'Marzouk Najar', 'Marzouk', 'Najar', NULL, NULL, 'Assistant', NULL, NULL, NULL, 2, NULL, NULL, 'M', 'Sciences', 2, 3, NULL, NULL, NULL),
(83, 'Marzouki Karim', 'Marzouki', 'Karim', NULL, NULL, 'Expert', NULL, NULL, NULL, 0, NULL, NULL, 'F', 'Sciences', 8, 5, NULL, NULL, NULL),
(84, 'Masmoudi Hammadi', 'Masmoudi', 'Hammadi', NULL, NULL, 'Expert', NULL, NULL, NULL, 1, NULL, NULL, 'M', 'Techniques', 4, 11, NULL, NULL, NULL),
(85, 'Massoudi Saadaoui', 'Massoudi', 'Saadaoui', NULL, NULL, 'Expert', NULL, NULL, NULL, 2, NULL, NULL, 'F', 'Techniques', 8, 4, NULL, NULL, NULL),
(86, 'Mbarek Derouiche', 'Mbarek', 'Derouiche', NULL, NULL, 'Expert', NULL, NULL, NULL, 0, NULL, NULL, 'M', 'Techniques', 3, 5, NULL, NULL, NULL),
(87, 'Mbarki Sarra', 'Mbarki', 'Sarra', NULL, NULL, 'Professeur', NULL, NULL, NULL, 1, NULL, NULL, 'F', 'Sciences', 2, 10, NULL, NULL, NULL),
(88, 'Melki Marouani', 'Melki', 'Marouani', NULL, NULL, 'Professeur', NULL, NULL, NULL, 2, NULL, NULL, 'M', 'Sciences', 5, 5, NULL, NULL, NULL),
(89, 'Messaoudi Jaafar', 'Messaoudi', 'Jaafar', NULL, NULL, 'Professeur', NULL, NULL, NULL, 0, NULL, NULL, 'F', 'Sciences', 4, 6, NULL, NULL, NULL),
(90, 'Mhamdi Amira', 'Mhamdi', 'Amira', NULL, NULL, 'Maitre assistant', NULL, NULL, NULL, 1, NULL, NULL, 'M', 'Techniques', 2, 11, NULL, NULL, NULL),
(91, 'Missaoui Hammouda', 'Missaoui', 'Hammouda', NULL, NULL, 'Maitre assistant', NULL, NULL, NULL, 2, NULL, NULL, 'F', 'Techniques', 2, 12, NULL, NULL, NULL),
(92, 'Mousa Yakoubi', 'Mousa', 'Yakoubi', NULL, NULL, 'Maitre de conférences', NULL, NULL, NULL, 0, NULL, NULL, 'M', 'Techniques', 8, 2, NULL, NULL, NULL),
(93, 'Moussa Nouri', 'Moussa', 'Nouri', NULL, NULL, 'Maitre de conférences', NULL, NULL, NULL, 1, NULL, NULL, 'F', 'Sciences', 3, 10, NULL, NULL, NULL),
(94, 'Mrabet Saeed', 'Mrabet', 'Saeed', NULL, NULL, 'Maitre de conférences', NULL, NULL, NULL, 2, NULL, NULL, 'M', 'Sciences', 4, 3, NULL, NULL, NULL),
(95, 'Najjar Saad', 'Najjar', 'Saad', NULL, NULL, 'PES', NULL, NULL, NULL, 0, NULL, NULL, 'F', 'Sciences', 6, 11, NULL, NULL, NULL),
(96, 'Nasr Boussetta', 'Nasr', 'Boussetta', NULL, NULL, 'PES', NULL, NULL, NULL, 1, NULL, NULL, 'M', 'Sciences', 5, 6, NULL, NULL, NULL),
(97, 'Nasri Rais', 'Nasri', 'Rais', NULL, NULL, 'PES', NULL, NULL, NULL, 2, NULL, NULL, 'F', 'Sciences', 7, 4, NULL, NULL, NULL),
(98, 'Obaid Beldi', 'Obaid', 'Beldi', NULL, NULL, 'Assistant', NULL, NULL, NULL, 0, NULL, NULL, 'M', 'Sciences', 2, 4, NULL, NULL, NULL),
(99, 'Omri Slim', 'Omri', 'Slim', NULL, NULL, 'Assistant', NULL, NULL, NULL, 1, NULL, NULL, 'F', 'Sciences', 5, 12, NULL, NULL, NULL),
(100, 'Othmani Zairi', 'Othmani', 'Zairi', NULL, NULL, 'Assistant', NULL, NULL, NULL, 2, NULL, NULL, 'M', 'Sciences', 7, 5, NULL, NULL, NULL),
(101, 'Qasim Ibrahim', 'Qasim', 'Ibrahim', NULL, NULL, 'Assistant', NULL, NULL, NULL, 0, NULL, NULL, 'F', 'Sciences', 4, 2, NULL, NULL, NULL),
(102, 'Rahmouni Omar', 'Rahmouni', 'Omar', NULL, NULL, 'Expert', NULL, NULL, NULL, 1, NULL, NULL, 'M', 'Sciences', 0, 0, NULL, NULL, NULL),
(103, 'Rebai Hmidi', 'Rebai', 'Hmidi', NULL, NULL, 'Expert', NULL, NULL, NULL, 2, NULL, NULL, 'F', 'Sciences', 0, 0, NULL, NULL, NULL),
(104, 'Rezgui Basbas', 'Rezgui', 'Basbas', NULL, NULL, 'Expert', NULL, NULL, NULL, 0, NULL, NULL, 'M', 'Sciences', 0, 0, NULL, NULL, NULL),
(105, 'Riahi Hasni', 'Riahi', 'Hasni', NULL, NULL, 'Professeur', NULL, NULL, NULL, 1, NULL, NULL, 'F', 'Sciences', 0, 0, NULL, NULL, NULL),
(106, 'Saadi Mouna', 'Saadi', 'Mouna', NULL, NULL, 'Professeur', NULL, NULL, NULL, 2, NULL, NULL, 'M', 'Sciences', 0, 0, NULL, NULL, NULL),
(107, 'Sahli Brahim', 'Sahli', 'Brahim', NULL, NULL, 'Professeur', NULL, NULL, NULL, 0, NULL, NULL, 'F', 'Sciences', 0, 0, NULL, NULL, NULL),
(108, 'Sahnoun Manel', 'Sahnoun', 'Manel', NULL, NULL, 'Professeur', NULL, NULL, NULL, 1, NULL, NULL, 'M', 'Sciences', 0, 0, NULL, NULL, NULL),
(109, 'Saidani Slimani', 'Saidani', 'Slimani', NULL, NULL, 'Maitre assistant', NULL, NULL, NULL, 2, NULL, NULL, 'F', 'Sciences', 0, 0, NULL, NULL, NULL),
(110, 'Saidi Abdelli', 'Saidi', 'Abdelli', NULL, NULL, 'Maitre assistant', NULL, NULL, NULL, 0, NULL, NULL, 'M', 'Sciences', 0, 0, NULL, NULL, NULL),
(111, 'Salama Hassine', 'Salama', 'Hassine', NULL, NULL, 'Maitre assistant', NULL, NULL, NULL, 1, NULL, NULL, 'F', 'Sciences', 0, 0, NULL, NULL, NULL),
(112, 'Salhi Fathi', 'Salhi', 'Fathi', NULL, NULL, 'Maitre de conférences', NULL, NULL, NULL, 2, NULL, NULL, 'M', 'Sciences', 0, 0, NULL, NULL, NULL),
(113, 'Salmi Faraj', 'Salmi', 'Faraj', NULL, NULL, 'Maitre de conférences', NULL, NULL, NULL, 0, NULL, NULL, 'F', 'Sciences', 0, 0, NULL, NULL, NULL),
(114, 'Sassi Amamou', 'Sassi', 'Amamou', NULL, NULL, 'Maitre de conférences', NULL, NULL, NULL, 1, NULL, NULL, 'M', 'Sciences', 0, 0, NULL, NULL, NULL),
(115, 'Sellami Dali', 'Sellami', 'Dali', NULL, NULL, 'Maitre de conférences', NULL, NULL, NULL, 2, NULL, NULL, 'F', 'Sciences', 0, 0, NULL, NULL, NULL),
(116, 'Selmi Yassine', 'Selmi', 'Yassine', NULL, NULL, 'PES', NULL, NULL, NULL, 0, NULL, NULL, 'M', 'Sciences', 0, 0, NULL, NULL, NULL),
(117, 'Sfar Chatti', 'Sfar', 'Chatti', NULL, NULL, 'PES', NULL, NULL, NULL, 1, NULL, NULL, 'F', 'Sciences', 0, 0, NULL, NULL, NULL),
(118, 'Shaaban Majdoub', 'Shaaban', 'Majdoub', NULL, NULL, 'PES', NULL, NULL, NULL, 2, NULL, NULL, 'M', 'Sciences', 0, 0, NULL, NULL, NULL),
(119, 'Slama Zayani', 'Slama', 'Zayani', NULL, NULL, 'PES', NULL, NULL, NULL, 0, NULL, NULL, 'F', 'Sciences', 0, 0, NULL, NULL, NULL),
(120, 'Smida Olfa', 'Smida', 'Olfa', NULL, NULL, 'Assistant', NULL, NULL, NULL, 1, NULL, NULL, 'M', 'Sciences', 0, 0, NULL, NULL, NULL),
(121, 'Snoussi Laroussi', 'Snoussi', 'Laroussi', NULL, NULL, 'Assistant', NULL, NULL, NULL, 2, NULL, NULL, 'F', 'Sciences', 0, 0, NULL, NULL, NULL),
(122, 'Soltani Trad', 'Soltani', 'Trad', NULL, NULL, 'Expert', NULL, NULL, NULL, 0, NULL, NULL, 'M', 'Sciences', 0, 0, NULL, NULL, NULL),
(123, 'Souissi Safa', 'Souissi', 'Safa', NULL, NULL, 'Expert', NULL, NULL, NULL, 1, NULL, NULL, 'F', 'Sciences', 0, 0, NULL, NULL, NULL),
(124, 'Soussi Mesbah', 'Soussi', 'Mesbah', NULL, NULL, 'Expert', NULL, NULL, NULL, 2, NULL, NULL, 'M', 'Sciences', 0, 0, NULL, NULL, NULL),
(125, 'Talbi Salem', 'Talbi', 'Salem', NULL, NULL, 'Expert', NULL, NULL, NULL, 0, NULL, NULL, 'F', 'Sciences', 0, 0, NULL, NULL, NULL),
(126, 'Touati Med', 'Touati', 'Med', NULL, NULL, 'Professeur', NULL, NULL, NULL, 1, NULL, NULL, 'M', 'Sciences', 0, 0, NULL, NULL, NULL),
(127, 'Toumi Tahri', 'Toumi', 'Tahri', NULL, NULL, 'Professeur', NULL, NULL, NULL, 2, NULL, NULL, 'F', 'Techniques', 0, 0, NULL, NULL, NULL),
(128, 'Tounsi Farhat', 'Tounsi', 'Farhat', NULL, NULL, 'Assistant', NULL, NULL, NULL, 0, NULL, NULL, 'M', 'Techniques', 0, 0, NULL, NULL, NULL),
(129, 'Triki Fares', 'Triki', 'Fares', NULL, NULL, 'Assistant', NULL, NULL, NULL, 1, NULL, NULL, 'F', 'Sciences', 0, 0, NULL, NULL, NULL),
(130, 'Wali Kadri', 'Wali', 'Kadri', NULL, NULL, 'Assistant', NULL, NULL, NULL, 2, NULL, NULL, 'M', 'Sciences', 0, 0, NULL, NULL, NULL),
(131, 'Yahyaoui Houda', 'Yahyaoui', 'Houda', NULL, NULL, 'Assistant', NULL, NULL, NULL, 0, NULL, NULL, 'F', 'Sciences', 0, 0, NULL, NULL, NULL),
(132, 'Yousfi Hajer', 'Yousfi', 'Hajer', NULL, NULL, 'Expert', NULL, NULL, NULL, 1, NULL, NULL, 'M', 'Sciences', 0, 0, NULL, NULL, NULL),
(133, 'Zaidi Farah', 'Zaidi', 'Farah', NULL, NULL, 'Expert', NULL, NULL, NULL, 2, NULL, NULL, 'F', 'Sciences', 0, 0, NULL, NULL, NULL),
(134, 'Zarrouk Marzougui', 'Zarrouk', 'Marzougui', NULL, NULL, 'Expert', NULL, NULL, NULL, 0, NULL, NULL, 'M', 'Techniques', 0, 0, NULL, NULL, NULL),
(135, 'Zidi Hassan', 'Zidi', 'Hassan', NULL, NULL, 'Expert', NULL, NULL, NULL, 1, NULL, NULL, 'F', 'Techniques', 0, 0, NULL, NULL, NULL),
(136, 'Zitouni Boukadida', 'Zitouni', 'Boukadida', NULL, NULL, 'PES', NULL, NULL, NULL, 2, NULL, NULL, 'M', 'Sciences', 0, 0, NULL, NULL, NULL),
(137, 'Zouaoui Ramadan', 'Zouaoui', 'Ramadan', NULL, NULL, 'PES', NULL, NULL, NULL, 0, NULL, NULL, 'F', 'Sciences', 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `filieres`
--

DROP TABLE IF EXISTS `filieres`;
CREATE TABLE IF NOT EXISTS `filieres` (
  `id_filiere` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nomfil` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cycle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_filiere`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `filieres`
--

INSERT INTO `filieres` (`id_filiere`, `nomfil`, `cycle`, `created_at`, `updated_at`) VALUES
(1, 'licence resaux', 'licence', NULL, NULL),
(2, 'genie logiciel', 'ingénieur', '2024-04-01 22:30:31', '2024-04-17 22:30:31');

-- --------------------------------------------------------

--
-- Structure de la table `filiere_groupe`
--

DROP TABLE IF EXISTS `filiere_groupe`;
CREATE TABLE IF NOT EXISTS `filiere_groupe` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `filiere_id` bigint(20) UNSIGNED NOT NULL,
  `groupe_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filiere_groupe_filiere_id_foreign` (`filiere_id`),
  KEY `filiere_groupe_groupe_id_foreign` (`groupe_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `groupes`
--

DROP TABLE IF EXISTS `groupes`;
CREATE TABLE IF NOT EXISTS `groupes` (
  `id_gr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `codegroupe` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `libelle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typegroupe` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `effectif` int(11) NOT NULL DEFAULT '0',
  `x` int(11) NOT NULL DEFAULT '-1',
  `y` int(11) NOT NULL DEFAULT '-1',
  `codedepartement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codegroupew` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_gr`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `groupes`
--

INSERT INTO `groupes` (`id_gr`, `codegroupe`, `libelle`, `typegroupe`, `created_at`, `updated_at`, `effectif`, `x`, `y`, `codedepartement`, `codegroupew`) VALUES
(1, '1Ing', '1Ing', 'Section', NULL, NULL, 60, 6630, 4900, 'Techniques', NULL),
(2, '1Ing TD 1', '1Ing TD 1', 'TD', NULL, NULL, 30, 6030, 6700, 'Techniques', NULL),
(3, '1Ing TD 2', '1Ing TD 2', 'TD', NULL, NULL, 30, 7230, 6700, 'Techniques', NULL),
(4, '1Lic', '1Lic', 'Section', NULL, NULL, 240, -1, -1, 'Sciences', NULL),
(5, '1Lic Cours 1', '1Lic Cours 1', 'Cours', NULL, NULL, 120, -1, -1, 'Sciences', NULL),
(6, '1Lic Cours 1 TD 1', '1Lic Cours 1 TD 1', 'TD', NULL, NULL, 40, -1, -1, 'Sciences', NULL),
(7, '1Lic Cours 1 TD 1 TP 1', '1Lic Cours 1 TD 1 TP 1', 'TP', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(8, '1Lic Cours 1 TD 1 TP 2', '1Lic Cours 1 TD 1 TP 2', 'TP', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(9, '1Lic Cours 1 TD 2', '1Lic Cours 1 TD 2', 'TD', NULL, NULL, 40, -1, -1, 'Sciences', NULL),
(10, '1Lic Cours 1 TD 2 TP 1', '1Lic Cours 1 TD 2 TP 1', 'TP', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(11, '1Lic Cours 1 TD 2 TP 2', '1Lic Cours 1 TD 2 TP 2', 'TP', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(12, '1Lic Cours 1 TD 3', '1Lic Cours 1 TD 3', 'TD', NULL, NULL, 40, -1, -1, 'Sciences', NULL),
(13, '1Lic Cours 1 TD 3 TP 1', '1Lic Cours 1 TD 3 TP 1', 'TP', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(14, '1Lic Cours 1 TD 3 TP 2', '1Lic Cours 1 TD 3 TP 2', 'TP', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(15, '1Lic Cours 2', '1Lic Cours 2', 'Cours', NULL, NULL, 120, -1, -1, 'Sciences', NULL),
(16, '1Lic Cours 2 TD 1', '1Lic Cours 2 TD 1', 'TD', NULL, NULL, 40, -1, -1, 'Sciences', NULL),
(17, '1Lic Cours 2 TD 1 TP 1', '1Lic Cours 2 TD 1 TP 1', 'TP', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(18, '1Lic Cours 2 TD 1 TP 2', '1Lic Cours 2 TD 1 TP 2', 'TP', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(19, '1Lic Cours 2 TD 2', '1Lic Cours 2 TD 2', 'TD', NULL, NULL, 40, -1, -1, 'Sciences', NULL),
(20, '1Lic Cours 2 TD 2 TP 1', '1Lic Cours 2 TD 2 TP 1', 'TP', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(21, '1Lic Cours 2 TD 2 TP 2', '1Lic Cours 2 TD 2 TP 2', 'TP', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(22, '1Lic Cours 2 TD 3', '1Lic Cours 2 TD 3', 'TD', NULL, NULL, 40, -1, -1, 'Sciences', NULL),
(23, '1Lic Cours 2 TD 3 TP 1', '1Lic Cours 2 TD 3 TP 1', 'TP', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(24, '1Lic Cours 2 TD 3 TP 2', '1Lic Cours 2 TD 3 TP 2', 'TP', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(25, '1MP', '1MP', 'Section', NULL, NULL, 30, -1, -1, 'Sciences', NULL),
(26, '1MR', '1MR', 'Section', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(27, '2Ing', '2Ing', 'Section', NULL, NULL, 40, -1, -1, 'Techniques', NULL),
(28, '2Ing TD 1', '2Ing TD 1', 'TD', NULL, NULL, 20, -1, -1, 'Techniques', NULL),
(29, '2Ing TD 2', '2Ing TD 2', 'TD', NULL, NULL, 20, -1, -1, 'Techniques', NULL),
(30, '2Lic', '2Lic', 'Section', NULL, NULL, 210, -1, -1, 'Sciences', NULL),
(31, '2Lic TD 1', '2Lic TD 1', 'TD', NULL, NULL, 70, -1, -1, 'Sciences', NULL),
(32, '2Lic TD 1 TP 1', '2Lic TD 1 TP 1', 'TP', NULL, NULL, 35, -1, -1, 'Sciences', NULL),
(33, '2Lic TD 1 TP 2', '2Lic TD 1 TP 2', 'TP', NULL, NULL, 35, -1, -1, 'Sciences', NULL),
(34, '2Lic TD 2', '2Lic TD 2', 'TD', NULL, NULL, 70, -1, -1, 'Sciences', NULL),
(35, '2Lic TD 2 TP 1', '2Lic TD 2 TP 1', 'TP', NULL, NULL, 35, -1, -1, 'Sciences', NULL),
(36, '2Lic TD 2 TP 2', '2Lic TD 2 TP 2', 'TP', NULL, NULL, 35, -1, -1, 'Sciences', NULL),
(37, '2Lic TD 3', '2Lic TD 3', 'TD', NULL, NULL, 70, -1, -1, 'Sciences', NULL),
(38, '2Lic TD 3 TP 1', '2Lic TD 3 TP 1', 'TP', NULL, NULL, 35, -1, -1, 'Sciences', NULL),
(39, '2Lic TD 3 TP 2', '2Lic TD 3 TP 2', 'TP', NULL, NULL, 35, -1, -1, 'Sciences', NULL),
(40, '2MP', '2MP', 'Section', NULL, NULL, 15, -1, -1, 'Sciences', NULL),
(41, '2MR', '2MR', 'Section', NULL, NULL, 10, -1, -1, 'Sciences', NULL),
(42, '3Ing', '3Ing', 'Section', NULL, NULL, 30, -1, -1, 'Techniques', NULL),
(43, '3Ing TD 1', '3Ing TD 1', 'TD', NULL, NULL, 15, -1, -1, 'Techniques', NULL),
(44, '3Ing TD 2', '3Ing TD 2', 'TD', NULL, NULL, 15, -1, -1, 'Techniques', NULL),
(45, '3Lic', '3Lic', 'Section', NULL, NULL, 180, -1, -1, 'Sciences', NULL),
(46, '3Lic TD 1', '3Lic TD 1', 'TD', NULL, NULL, 60, -1, -1, 'Sciences', NULL),
(47, '3Lic TD 1 TP 1', '3Lic TD 1 TP 1', 'TP', NULL, NULL, 30, -1, -1, 'Sciences', NULL),
(48, '3Lic TD 1 TP 2', '3Lic TD 1 TP 2', 'TP', NULL, NULL, 30, -1, -1, 'Sciences', NULL),
(49, '3Lic TD 2', '3Lic TD 2', 'TD', NULL, NULL, 60, -1, -1, 'Sciences', NULL),
(50, '3Lic TD 2 TP 1', '3Lic TD 2 TP 1', 'TP', NULL, NULL, 30, -1, -1, 'Sciences', NULL),
(51, '3Lic TD 2 TP 2', '3Lic TD 2 TP 2', 'TP', NULL, NULL, 30, -1, -1, 'Sciences', NULL),
(52, '3Lic TD 3', '3Lic TD 3', 'TD', NULL, NULL, 60, -1, -1, 'Sciences', NULL),
(53, '3Lic TD 3 TP 1', '3Lic TD 3 TP 1', 'TP', NULL, NULL, 30, -1, -1, 'Sciences', NULL),
(54, '3Lic TD 3 TP 2', '3Lic TD 3 TP 2', 'TP', NULL, NULL, 30, -1, -1, 'Sciences', NULL),
(55, '1Ing', '1Ing', 'Section', NULL, NULL, 60, 6630, 4900, 'Techniques', NULL),
(56, '1Ing TD 1', '1Ing TD 1', 'TD', NULL, NULL, 30, 6030, 6700, 'Techniques', NULL),
(57, '1Ing TD 2', '1Ing TD 2', 'TD', NULL, NULL, 30, 7230, 6700, 'Techniques', NULL),
(58, '1Lic', '1Lic', 'Section', NULL, NULL, 240, -1, -1, 'Sciences', NULL),
(59, '1Lic Cours 1', '1Lic Cours 1', 'Cours', NULL, NULL, 120, -1, -1, 'Sciences', NULL),
(60, '1Lic Cours 1 TD 1', '1Lic Cours 1 TD 1', 'TD', NULL, NULL, 40, -1, -1, 'Sciences', NULL),
(61, '1Lic Cours 1 TD 1 TP 1', '1Lic Cours 1 TD 1 TP 1', 'TP', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(62, '1Lic Cours 1 TD 1 TP 2', '1Lic Cours 1 TD 1 TP 2', 'TP', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(63, '1Lic Cours 1 TD 2', '1Lic Cours 1 TD 2', 'TD', NULL, NULL, 40, -1, -1, 'Sciences', NULL),
(64, '1Lic Cours 1 TD 2 TP 1', '1Lic Cours 1 TD 2 TP 1', 'TP', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(65, '1Lic Cours 1 TD 2 TP 2', '1Lic Cours 1 TD 2 TP 2', 'TP', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(66, '1Lic Cours 1 TD 3', '1Lic Cours 1 TD 3', 'TD', NULL, NULL, 40, -1, -1, 'Sciences', NULL),
(67, '1Lic Cours 1 TD 3 TP 1', '1Lic Cours 1 TD 3 TP 1', 'TP', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(68, '1Lic Cours 1 TD 3 TP 2', '1Lic Cours 1 TD 3 TP 2', 'TP', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(69, '1Lic Cours 2', '1Lic Cours 2', 'Cours', NULL, NULL, 120, -1, -1, 'Sciences', NULL),
(70, '1Lic Cours 2 TD 1', '1Lic Cours 2 TD 1', 'TD', NULL, NULL, 40, -1, -1, 'Sciences', NULL),
(71, '1Lic Cours 2 TD 1 TP 1', '1Lic Cours 2 TD 1 TP 1', 'TP', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(72, '1Lic Cours 2 TD 1 TP 2', '1Lic Cours 2 TD 1 TP 2', 'TP', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(73, '1Lic Cours 2 TD 2', '1Lic Cours 2 TD 2', 'TD', NULL, NULL, 40, -1, -1, 'Sciences', NULL),
(74, '1Lic Cours 2 TD 2 TP 1', '1Lic Cours 2 TD 2 TP 1', 'TP', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(75, '1Lic Cours 2 TD 2 TP 2', '1Lic Cours 2 TD 2 TP 2', 'TP', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(76, '1Lic Cours 2 TD 3', '1Lic Cours 2 TD 3', 'TD', NULL, NULL, 40, -1, -1, 'Sciences', NULL),
(77, '1Lic Cours 2 TD 3 TP 1', '1Lic Cours 2 TD 3 TP 1', 'TP', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(78, '1Lic Cours 2 TD 3 TP 2', '1Lic Cours 2 TD 3 TP 2', 'TP', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(79, '1MP', '1MP', 'Section', NULL, NULL, 30, -1, -1, 'Sciences', NULL),
(80, '1MR', '1MR', 'Section', NULL, NULL, 20, -1, -1, 'Sciences', NULL),
(81, '2Ing', '2Ing', 'Section', NULL, NULL, 40, -1, -1, 'Techniques', NULL),
(82, '2Ing TD 1', '2Ing TD 1', 'TD', NULL, NULL, 20, -1, -1, 'Techniques', NULL),
(83, '2Ing TD 2', '2Ing TD 2', 'TD', NULL, NULL, 20, -1, -1, 'Techniques', NULL),
(84, '2Lic', '2Lic', 'Section', NULL, NULL, 210, -1, -1, 'Sciences', NULL),
(85, '2Lic TD 1', '2Lic TD 1', 'TD', NULL, NULL, 70, -1, -1, 'Sciences', NULL),
(86, '2Lic TD 1 TP 1', '2Lic TD 1 TP 1', 'TP', NULL, NULL, 35, -1, -1, 'Sciences', NULL),
(87, '2Lic TD 1 TP 2', '2Lic TD 1 TP 2', 'TP', NULL, NULL, 35, -1, -1, 'Sciences', NULL),
(88, '2Lic TD 2', '2Lic TD 2', 'TD', NULL, NULL, 70, -1, -1, 'Sciences', NULL),
(89, '2Lic TD 2 TP 1', '2Lic TD 2 TP 1', 'TP', NULL, NULL, 35, -1, -1, 'Sciences', NULL),
(90, '2Lic TD 2 TP 2', '2Lic TD 2 TP 2', 'TP', NULL, NULL, 35, -1, -1, 'Sciences', NULL),
(91, '2Lic TD 3', '2Lic TD 3', 'TD', NULL, NULL, 70, -1, -1, 'Sciences', NULL),
(92, '2Lic TD 3 TP 1', '2Lic TD 3 TP 1', 'TP', NULL, NULL, 35, -1, -1, 'Sciences', NULL),
(93, '2Lic TD 3 TP 2', '2Lic TD 3 TP 2', 'TP', NULL, NULL, 35, -1, -1, 'Sciences', NULL),
(94, '2MP', '2MP', 'Section', NULL, NULL, 15, -1, -1, 'Sciences', NULL),
(95, '2MR', '2MR', 'Section', NULL, NULL, 10, -1, -1, 'Sciences', NULL),
(96, '3Ing', '3Ing', 'Section', NULL, NULL, 30, -1, -1, 'Techniques', NULL),
(97, '3Ing TD 1', '3Ing TD 1', 'TD', NULL, NULL, 15, -1, -1, 'Techniques', NULL),
(98, '3Ing TD 2', '3Ing TD 2', 'TD', NULL, NULL, 15, -1, -1, 'Techniques', NULL),
(99, '3Lic', '3Lic', 'Section', NULL, NULL, 180, -1, -1, 'Sciences', NULL),
(100, '3Lic TD 1', '3Lic TD 1', 'TD', NULL, NULL, 60, -1, -1, 'Sciences', NULL),
(101, '3Lic TD 1 TP 1', '3Lic TD 1 TP 1', 'TP', NULL, NULL, 30, -1, -1, 'Sciences', NULL),
(102, '3Lic TD 1 TP 2', '3Lic TD 1 TP 2', 'TP', NULL, NULL, 30, -1, -1, 'Sciences', NULL),
(103, '3Lic TD 2', '3Lic TD 2', 'TD', NULL, NULL, 60, -1, -1, 'Sciences', NULL),
(104, '3Lic TD 2 TP 1', '3Lic TD 2 TP 1', 'TP', NULL, NULL, 30, -1, -1, 'Sciences', NULL),
(105, '3Lic TD 2 TP 2', '3Lic TD 2 TP 2', 'TP', NULL, NULL, 30, -1, -1, 'Sciences', NULL),
(106, '3Lic TD 3', '3Lic TD 3', 'TD', NULL, NULL, 60, -1, -1, 'Sciences', NULL),
(107, '3Lic TD 3 TP 1', '3Lic TD 3 TP 1', 'TP', NULL, NULL, 30, -1, -1, 'Sciences', NULL),
(108, '3Lic TD 3 TP 2', '3Lic TD 3 TP 2', 'TP', NULL, NULL, 30, -1, -1, 'Sciences', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_27_113103_create_modules_table', 1),
(6, '2023_02_27_113127_create_filieres_table', 1),
(7, '2023_02_27_113149_create_enseignants_table', 1),
(8, '2023_02_27_113208_create_salles_table', 1),
(9, '2023_03_02_161713_create_seances_table', 1),
(10, '2023_03_04_121956_create_groupes_table', 1),
(11, '2023_03_06_102209_create_emploi_du_temps_table', 1),
(12, '2023_03_07_152649_add_admin_column_to_users', 1),
(13, '2023_03_20_084828_create_pivot_table_filiere_groupe', 1);

-- --------------------------------------------------------

--
-- Structure de la table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `id_module` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `intitule` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coeff` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `vhCT` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '10',
  `vhTD` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `vhTP` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `codematiere` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_module`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `modules`
--

INSERT INTO `modules` (`id_module`, `intitule`, `coeff`, `vhCT`, `vhTD`, `vhTP`, `created_at`, `updated_at`, `codematiere`) VALUES
(1, 'Acoustique de base et ultrason', '5', '10', '5', '5', NULL, NULL, 'Acoustique de base et ultrason'),
(2, 'Activite pratique', '5', '10', '5', '5', NULL, NULL, 'Activite pratique'),
(3, 'Administration des bases de données', '5', '10', '5', '5', NULL, NULL, 'Administration des bases de données'),
(4, 'Administration des réseaux', '5', '10', '5', '5', NULL, NULL, 'Administration des réseaux'),
(5, 'Algèbre 2', '5', '10', '5', '5', NULL, NULL, 'Algèbre 2'),
(6, 'Algèbre I', '5', '10', '5', '5', NULL, NULL, 'Algèbre I'),
(7, 'Algorithmes évolutionnaires', '5', '10', '5', '5', NULL, NULL, 'Algorithmes évolutionnaires'),
(8, 'Algorithmique et complexité', '5', '10', '5', '5', NULL, NULL, 'Algorithmique et complexité'),
(9, 'Algorithmique et structure de données', '5', '10', '5', '5', NULL, NULL, 'Algorithmique et structure de données'),
(10, 'Analyse des données et Régression', '5', '10', '5', '5', NULL, NULL, 'Analyse des données et Régression'),
(11, 'Analyse physico_chimique', '5', '10', '5', '5', NULL, NULL, 'Analyse physico_chimique'),
(12, 'Anglais scientifique', '5', '10', '5', '5', NULL, NULL, 'Anglais scientifique'),
(13, 'Apprentissage automatique', '5', '10', '5', '5', NULL, NULL, 'Apprentissage automatique'),
(14, 'Apprentissage profond', '5', '10', '5', '5', NULL, NULL, 'Apprentissage profond'),
(15, 'Architecture des microprocesseurs et microcontroleurs', '5', '10', '5', '5', NULL, NULL, 'Architecture des microprocesseurs et microcontroleurs'),
(16, 'Architecture des ordinateurs', '5', '10', '5', '5', NULL, NULL, 'Architecture des ordinateurs'),
(17, 'Architecture évoluées des processeurs', '5', '10', '5', '5', NULL, NULL, 'Architecture évoluées des processeurs'),
(18, 'Architecture SOA et Web service', '5', '10', '5', '5', NULL, NULL, 'Architecture SOA et Web service'),
(19, 'Assurance non vie', '5', '10', '5', '5', NULL, NULL, 'Assurance non vie'),
(20, 'Assurance non vie et Réassurance', '5', '10', '5', '5', NULL, NULL, 'Assurance non vie et Réassurance'),
(21, 'Assurance Vie', '5', '10', '5', '5', NULL, NULL, 'Assurance Vie'),
(22, 'Atelier programmation 1', '5', '10', '5', '5', NULL, NULL, 'Atelier programmation 1'),
(23, 'Audit de sécurité', '5', '10', '5', '5', NULL, NULL, 'Audit de sécurité'),
(24, 'Audit energetique', '5', '10', '5', '5', NULL, NULL, 'Audit energetique'),
(25, 'Automatique des systemes lineaires', '5', '10', '5', '5', NULL, NULL, 'Automatique des systemes lineaires'),
(26, 'Big data', '5', '10', '5', '5', NULL, NULL, 'Big data'),
(27, 'Chaine de Markov et Processus de Poisson', '5', '10', '5', '5', NULL, NULL, 'Chaine de Markov et Processus de Poisson'),
(28, 'Chaines de Markov et File d’attente', '5', '10', '5', '5', NULL, NULL, 'Chaines de Markov et File d’attente'),
(29, 'Chimie organique generale', '5', '10', '5', '5', NULL, NULL, 'Chimie organique generale'),
(30, 'Combustion industrielle', '5', '10', '5', '5', NULL, NULL, 'Combustion industrielle'),
(31, 'Conception réseaux', '5', '10', '5', '5', NULL, NULL, 'Conception réseaux'),
(32, 'Concepts quantiques', '5', '10', '5', '5', NULL, NULL, 'Concepts quantiques'),
(33, 'Cryptographie et blockchain', '5', '10', '5', '5', NULL, NULL, 'Cryptographie et blockchain'),
(34, 'Culture et Compétences Numériques', '5', '10', '5', '5', NULL, NULL, 'Culture et Compétences Numériques'),
(35, 'Data science', '5', '10', '5', '5', NULL, NULL, 'Data science'),
(36, 'Développement Formel des algorithmes', '5', '10', '5', '5', NULL, NULL, 'Développement Formel des algorithmes'),
(37, 'Diagramme de phases', '5', '10', '5', '5', NULL, NULL, 'Diagramme de phases'),
(38, 'Economie d energie et energies renouvelables', '5', '10', '5', '5', NULL, NULL, 'Economie d energie et energies renouvelables'),
(39, 'Efficacite energetique', '5', '10', '5', '5', NULL, NULL, 'Efficacite energetique'),
(40, 'Elaboration des materiaux', '5', '10', '5', '5', NULL, NULL, 'Elaboration des materiaux'),
(41, 'Electromagnétisme', '5', '10', '5', '5', NULL, NULL, 'Electromagnétisme'),
(42, 'Electromagnetisme dans le vide', '5', '10', '5', '5', NULL, NULL, 'Electromagnetisme dans le vide'),
(43, 'Electronique', '5', '10', '5', '5', NULL, NULL, 'Electronique'),
(44, 'Electronique de puissance', '5', '10', '5', '5', NULL, NULL, 'Electronique de puissance'),
(45, 'Electronique numerique', '5', '10', '5', '5', NULL, NULL, 'Electronique numerique'),
(46, 'Electrostatique', '5', '10', '5', '5', NULL, NULL, 'Electrostatique'),
(47, 'Electrostatique et magnetostatique', '5', '10', '5', '5', NULL, NULL, 'Electrostatique et magnetostatique'),
(48, 'Electrotechnique de puissance', '5', '10', '5', '5', NULL, NULL, 'Electrotechnique de puissance'),
(49, 'Eléments finis', '5', '10', '5', '5', NULL, NULL, 'Eléments finis'),
(50, 'Energie photovoltaique', '5', '10', '5', '5', NULL, NULL, 'Energie photovoltaique'),
(51, 'Espaces de Banach lattice', '5', '10', '5', '5', NULL, NULL, 'Espaces de Banach lattice'),
(52, 'Fonctions d electronique analogique', '5', '10', '5', '5', NULL, NULL, 'Fonctions d electronique analogique'),
(53, 'Fonctions Electronique', '5', '10', '5', '5', NULL, NULL, 'Fonctions Electronique'),
(54, 'Fonctions holomorphes', '5', '10', '5', '5', NULL, NULL, 'Fonctions holomorphes'),
(55, 'Fondements de l’intelligence artificielle', '5', '10', '5', '5', NULL, NULL, 'Fondements de l’intelligence artificielle'),
(56, 'Fondements des Bases de données', '5', '10', '5', '5', NULL, NULL, 'Fondements des Bases de données'),
(57, 'Fondements des Réseaux', '5', '10', '5', '5', NULL, NULL, 'Fondements des Réseaux'),
(58, 'Framework et technologies Big Data', '5', '10', '5', '5', NULL, NULL, 'Framework et technologies Big Data'),
(59, 'Genie de connaissances', '5', '10', '5', '5', NULL, NULL, 'Genie de connaissances'),
(60, 'Graphes et optimisation', '5', '10', '5', '5', NULL, NULL, 'Graphes et optimisation'),
(61, 'Incertitude de mesure', '5', '10', '5', '5', NULL, NULL, 'Incertitude de mesure'),
(62, 'Infrastructure Data Center', '5', '10', '5', '5', NULL, NULL, 'Infrastructure Data Center'),
(63, 'Infrastructure de Datacenter', '5', '10', '5', '5', NULL, NULL, 'Infrastructure de Datacenter'),
(64, 'Ingénierie des Bases de Données', '5', '10', '5', '5', NULL, NULL, 'Ingénierie des Bases de Données'),
(65, 'Initiation Big Data', '5', '10', '5', '5', NULL, NULL, 'Initiation Big Data'),
(66, 'Instrumentation et metrologie', '5', '10', '5', '5', NULL, NULL, 'Instrumentation et metrologie'),
(67, 'Interactions ultrason-matiere', '5', '10', '5', '5', NULL, NULL, 'Interactions ultrason-matiere'),
(68, 'Logique Floue', '5', '10', '5', '5', NULL, NULL, 'Logique Floue'),
(69, 'Machine Learning', '5', '10', '5', '5', NULL, NULL, 'Machine Learning'),
(70, 'Mathématiques actuarielles', '5', '10', '5', '5', NULL, NULL, 'Mathématiques actuarielles'),
(71, 'Méthodes formelles', '5', '10', '5', '5', NULL, NULL, 'Méthodes formelles'),
(72, 'Metrologie conventionnelle', '5', '10', '5', '5', NULL, NULL, 'Metrologie conventionnelle'),
(73, 'Metrologie legale', '5', '10', '5', '5', NULL, NULL, 'Metrologie legale'),
(74, 'Metrologie scientifique', '5', '10', '5', '5', NULL, NULL, 'Metrologie scientifique'),
(75, 'Monte-carlo', '5', '10', '5', '5', NULL, NULL, 'Monte-carlo'),
(76, 'MRST BR1 Matlab', '5', '10', '5', '5', NULL, NULL, 'MRST BR1 Matlab'),
(77, 'Onde et Propagation', '5', '10', '5', '5', NULL, NULL, 'Onde et Propagation'),
(78, 'Ondes acoustiques de surface', '5', '10', '5', '5', NULL, NULL, 'Ondes acoustiques de surface'),
(79, 'Ondes et vibrations', '5', '10', '5', '5', NULL, NULL, 'Ondes et vibrations'),
(80, 'Optique geometrique et instruments', '5', '10', '5', '5', NULL, NULL, 'Optique geometrique et instruments'),
(81, 'Optique ondulatoire', '5', '10', '5', '5', NULL, NULL, 'Optique ondulatoire'),
(82, 'Outils intelligents pour l’industrie', '5', '10', '5', '5', NULL, NULL, 'Outils intelligents pour l’industrie'),
(83, 'Patrons de Conception', '5', '10', '5', '5', NULL, NULL, 'Patrons de Conception'),
(84, 'Physique atomique', '5', '10', '5', '5', NULL, NULL, 'Physique atomique'),
(85, 'Physique des semi-conducteur', '5', '10', '5', '5', NULL, NULL, 'Physique des semi-conducteur'),
(86, 'Probabilité et Statistique', '5', '10', '5', '5', NULL, NULL, 'Probabilité et Statistique'),
(87, 'Programmation Java', '5', '10', '5', '5', NULL, NULL, 'Programmation Java'),
(88, 'Programmation OO Java', '5', '10', '5', '5', NULL, NULL, 'Programmation OO Java'),
(89, 'Programmation Python', '5', '10', '5', '5', NULL, NULL, 'Programmation Python'),
(90, 'Programmation Web', '5', '10', '5', '5', NULL, NULL, 'Programmation Web'),
(91, 'Protocoles de communication dans l’industrie', '5', '10', '5', '5', NULL, NULL, 'Protocoles de communication dans l’industrie'),
(92, 'Rayonnement acoustique', '5', '10', '5', '5', NULL, NULL, 'Rayonnement acoustique'),
(93, 'Réassurance', '5', '10', '5', '5', NULL, NULL, 'Réassurance'),
(94, 'Regulation industrielle', '5', '10', '5', '5', NULL, NULL, 'Regulation industrielle'),
(95, 'Réseaux de capteurs', '5', '10', '5', '5', NULL, NULL, 'Réseaux de capteurs'),
(96, 'Réseaux IP', '5', '10', '5', '5', NULL, NULL, 'Réseaux IP'),
(97, 'Réseaux Locaux et Industriels', '5', '10', '5', '5', NULL, NULL, 'Réseaux Locaux et Industriels'),
(98, 'Schema electrique', '5', '10', '5', '5', NULL, NULL, 'Schema electrique'),
(99, 'Services des Réseaux', '5', '10', '5', '5', NULL, NULL, 'Services des Réseaux'),
(100, 'Services réseaux', '5', '10', '5', '5', NULL, NULL, 'Services réseaux'),
(101, 'Simulation numerique', '5', '10', '5', '5', NULL, NULL, 'Simulation numerique'),
(102, 'Soft skills', '5', '10', '5', '5', NULL, NULL, 'Soft skills'),
(103, 'Statistique', '5', '10', '5', '5', NULL, NULL, 'Statistique'),
(104, 'Système d’exploitation', '5', '10', '5', '5', NULL, NULL, 'Système d’exploitation'),
(105, 'Systemes intelligents et apprentissage machine', '5', '10', '5', '5', NULL, NULL, 'Systemes intelligents et apprentissage machine'),
(106, 'Systèmes Logiques', '5', '10', '5', '5', NULL, NULL, 'Systèmes Logiques'),
(107, 'Systèmes temps réel', '5', '10', '5', '5', NULL, NULL, 'Systèmes temps réel'),
(108, 'Techniques de communication 1', '5', '10', '5', '5', NULL, NULL, 'Techniques de communication 1'),
(109, 'Techniques de communication 2', '5', '10', '5', '5', NULL, NULL, 'Techniques de communication 2'),
(110, 'Technologies Multimédias', '5', '10', '5', '5', NULL, NULL, 'Technologies Multimédias'),
(111, 'Théorie de la décision', '5', '10', '5', '5', NULL, NULL, 'Théorie de la décision'),
(112, 'Thermodynamique de combustion', '5', '10', '5', '5', NULL, NULL, 'Thermodynamique de combustion'),
(113, 'Topologie', '5', '10', '5', '5', NULL, NULL, 'Topologie'),
(114, 'Topologie et Analyse fonctionnelle', '5', '10', '5', '5', NULL, NULL, 'Topologie et Analyse fonctionnelle'),
(115, 'Traitement du signal', '5', '10', '5', '5', NULL, NULL, 'Traitement du signal'),
(116, 'Transformee de Laplace', '5', '10', '5', '5', NULL, NULL, 'Transformee de Laplace'),
(117, 'Transmission de données', '5', '10', '5', '5', NULL, NULL, 'Transmission de données'),
(118, 'Ultrason et emission acoustique', '5', '10', '5', '5', NULL, NULL, 'Ultrason et emission acoustique'),
(119, 'Vidéo sur IP', '5', '10', '5', '5', NULL, NULL, 'Vidéo sur IP'),
(120, 'Virtualisation', '5', '10', '5', '5', NULL, NULL, 'Virtualisation'),
(121, 'Virtualisation des réseaux', '5', '10', '5', '5', NULL, NULL, 'Virtualisation des réseaux'),
(122, 'Virtualisation et Cloud', '5', '10', '5', '5', NULL, NULL, 'Virtualisation et Cloud'),
(123, 'Virtualisation et conteneur', '5', '10', '5', '5', NULL, NULL, 'Virtualisation et conteneur');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `salles`
--

DROP TABLE IF EXISTS `salles`;
CREATE TABLE IF NOT EXISTS `salles` (
  `id_salle` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nomsalle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacite` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `local` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_salle`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `salles`
--

INSERT INTO `salles` (`id_salle`, `nomsalle`, `capacite`, `local`, `created_at`, `updated_at`) VALUES
(1, 'Amphi', '250', '250', NULL, NULL),
(2, 'Lab1', '15', '15', NULL, NULL),
(3, 'Lab2', '15', '15', NULL, NULL),
(4, 'Lab3', '15', '15', NULL, NULL),
(5, 'Lab4', '15', '15', NULL, NULL),
(6, 'Lab5', '15', '15', NULL, NULL),
(7, 'Lab6', '15', '15', NULL, NULL),
(8, 'S1', '100', '100', NULL, NULL),
(9, 'S10', '30', '30', NULL, NULL),
(10, 'S11', '30', '30', NULL, NULL),
(11, 'S12', '30', '30', NULL, NULL),
(12, 'S13', '30', '30', NULL, NULL),
(13, 'S14', '30', '30', NULL, NULL),
(14, 'S15', '30', '30', NULL, NULL),
(15, 'S16', '30', '30', NULL, NULL),
(16, 'S17', '30', '30', NULL, NULL),
(17, 'S18', '30', '30', NULL, NULL),
(18, 'S19', '30', '30', NULL, NULL),
(19, 'S2', '100', '100', NULL, NULL),
(20, 'S20', '30', '30', NULL, NULL),
(21, 'S3', '100', '100', NULL, NULL),
(22, 'S4', '100', '100', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `id_filiere` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `admin`, `id_filiere`) VALUES
(1, 'oussama', 'admin@gmail.com', NULL, '$2y$10$DcLuEl.vmfbZRO9kTkBdlOQFkjI8hs0yplnpFGsxcP6H9qOjefQGa', NULL, '2024-04-22 21:21:08', '2024-04-22 21:21:08', 1, 1),
(2, 'sami', 'stud1@gmail.com', NULL, '$2y$10$DcLuEl.vmfbZRO9kTkBdlOQFkjI8hs0yplnpFGsxcP6H9qOjefQGa', NULL, '2024-04-23 21:22:43', '2024-04-23 21:22:43', 0, 1),
(3, 'sami', 'stud2@gmail.com', NULL, '$2y$10$DcLuEl.vmfbZRO9kTkBdlOQFkjI8hs0yplnpFGsxcP6H9qOjefQGa', NULL, '2024-04-23 21:27:28', '2024-04-23 21:27:28', 0, 1),
(4, 'test', 'ex1@gmail.com', NULL, '$2y$10$ldv5KwOy/w5tXbULJe.GcuL1VpRKh5u4eEs6CRSi0Tztm8W1pouMO', NULL, '2024-04-30 17:45:08', '2024-04-30 17:45:08', 0, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
