-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 04 fév. 2021 à 22:11
-- Version du serveur :  5.5.35
-- Version de PHP : 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `myschool`
--

-- --------------------------------------------------------

--
-- Structure de la table `absent`
--

CREATE TABLE `absent` (
  `id` bigint(20) NOT NULL,
  `class_id` bigint(20) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `prof_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  `time_finish` varchar(255) DEFAULT NULL,
  `time_start` varchar(255) DEFAULT NULL,
  `unity_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL,
  `affectation_prof_id` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `token_notification` varchar(255) DEFAULT NULL,
  `school_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `affectation_prof_id`, `email`, `first_name`, `is_valid`, `last_name`, `password`, `phone`, `photo`, `token_notification`, `school_code`) VALUES
(1, NULL, 'walidrachad@gmail.com', 'walidrachad', b'1', 'walidrachad', 'walidrachad', 'walidrachad', 'walidrachad', '', '123456789'),
(2, NULL, 'abdellah.eddaif@gmail.com', 'abdellah', b'1', 'eddaif', '0674293947', '0674293947', 'string', 'string', '123456789'),
(3, NULL, 'mohamed.benjrad@gmail.com', 'mohamed', b'1', 'benjrad', '0661613352', '0661613352', 'string', 'string', '123456789'),
(5, NULL, 'abdesslam001@gmail.com', 'abdesllam', b'1', 'bonConcept', '0605090393', '0605090393', 'string', 'string', '123456789');

-- --------------------------------------------------------

--
-- Structure de la table `affectation_attachment`
--

CREATE TABLE `affectation_attachment` (
  `id` bigint(20) NOT NULL,
  `attachment_id` bigint(20) DEFAULT NULL,
  `message_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `affectation_prof`
--

CREATE TABLE `affectation_prof` (
  `id` bigint(20) NOT NULL,
  `prof_id` bigint(20) DEFAULT NULL,
  `unity_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `affectation_role`
--

CREATE TABLE `affectation_role` (
  `id` bigint(20) NOT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `affectation_role`
--

INSERT INTO `affectation_role` (`id`, `role_id`, `user_id`) VALUES
(1, 4, 6),
(606, 3, 764),
(607, 3, 765),
(608, 3, 766),
(609, 3, 767),
(610, 3, 768);

-- --------------------------------------------------------

--
-- Structure de la table `affictation_message`
--

CREATE TABLE `affictation_message` (
  `id` bigint(20) NOT NULL,
  `favorite` bit(1) DEFAULT NULL,
  `is_seen` bit(1) DEFAULT NULL,
  `message_id` bigint(20) DEFAULT NULL,
  `recipient_id` bigint(20) DEFAULT NULL,
  `recipient_role` varchar(255) DEFAULT NULL,
  `sender_id` bigint(20) DEFAULT NULL,
  `sender_role` varchar(255) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `attachment`
--

CREATE TABLE `attachment` (
  `id` bigint(20) NOT NULL,
  `download_url` varchar(255) DEFAULT NULL,
  `message_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `id` bigint(20) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `nivaux_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`id`, `label`, `nivaux_id`) VALUES
(1, 'PS-A', 5),
(2, 'PS-B', 5),
(3, 'PS-C', 5),
(4, 'MS-A', 6),
(5, 'MS-B', 6),
(6, 'MS-C', 6),
(7, 'GS-A', 7),
(8, 'GS-B', 7),
(9, 'GS-C', 7),
(10, '1AEP-A', 8),
(11, '1AEP-B', 8),
(12, '1AEP-C', 8),
(13, '2AEP-A', 9),
(14, '2AEP-B', 9),
(15, '2AEP-C', 9),
(16, '3AEP-A', 10),
(17, '3AEP-B', 10),
(18, '3AEP-C', 10),
(19, '4AEP-A', 11),
(20, '4AEP-B', 11),
(21, '4AEP-C', 11),
(22, '5AEP-A', 12),
(23, '5AEP-B', 12),
(24, '5AEP-C', 12),
(25, '6AEP-A', 13),
(26, '6AEP-B', 13),
(27, '6AEP-C', 13),
(28, '1APIC-A', 14),
(29, '1APIC-B', 14),
(30, '1APIC-B', 14),
(31, '1APIC-C', 14),
(32, '2APIC-A', 15),
(33, '2APIC-B', 15),
(34, '2APIC-C', 15),
(35, '3APIC-A', 16),
(36, '3APIC-B', 16),
(37, '3APIC-C', 16),
(38, '3APIC-C', 16),
(39, 'TC-A', 17),
(40, 'TC-B', 17),
(41, 'TC-C', 17),
(42, '1BAC-A', 18),
(43, '1BAC-B', 18),
(44, '1BAC-C', 18),
(45, '2BAC-A', 19),
(46, '2BAC-B', 19),
(47, '2BAC-C', 19);

-- --------------------------------------------------------

--
-- Structure de la table `cycle`
--

CREATE TABLE `cycle` (
  `id` bigint(20) NOT NULL,
  `label` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cycle`
--

INSERT INTO `cycle` (`id`, `label`) VALUES
(1, 'PRESCOLAIRE'),
(2, 'PREMAIRE'),
(3, 'COLLEGE'),
(4, 'LYCEE');

-- --------------------------------------------------------

--
-- Structure de la table `days`
--

CREATE TABLE `days` (
  `id` bigint(20) NOT NULL,
  `day` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `days`
--

INSERT INTO `days` (`id`, `day`) VALUES
(1, 'lundi'),
(2, 'mardi'),
(3, 'mercredi'),
(4, 'jeudi'),
(5, 'vendredi'),
(6, 'samedi');

-- --------------------------------------------------------

--
-- Structure de la table `event`
--

CREATE TABLE `event` (
  `id` bigint(20) NOT NULL,
  `class_id` bigint(20) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `description` text,
  `img` varchar(255) DEFAULT NULL,
  `poster_first_name` varchar(255) DEFAULT NULL,
  `poster_id` bigint(20) DEFAULT NULL,
  `poster_last_name` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id` bigint(20) NOT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `message` text,
  `sender_id` bigint(20) DEFAULT NULL,
  `sender_role` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `message_recipient`
--

CREATE TABLE `message_recipient` (
  `id` bigint(20) NOT NULL,
  `class_id` bigint(20) DEFAULT NULL,
  `message_id` bigint(20) DEFAULT NULL,
  `message_to` varchar(255) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `description` text,
  `first_name` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `poster_id` bigint(20) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`id`, `date`, `description`, `first_name`, `image_url`, `is_valid`, `last_name`, `poster_id`, `role_name`, `time`, `title`) VALUES
(1, '29/01/2021', 'Test Desription', 'walidrachad', 'http://localhost:5000/downloadFile/1160ff24-0945-45c2-90f4-635b78625a91pp.jpg', b'1', 'walidrachad', 1, 'Administration', '10:25', 'actualité Test'),
(2, '29/01/2021', 'ok', 'walidrachad', 'http://localhost:5000/downloadFile/aa3f771c-0719-4a9a-ad7e-329b47df7cc5avatar-01.jpg', b'1', 'walidrachad', 1, 'Administration', '10:44', 'test');

-- --------------------------------------------------------

--
-- Structure de la table `nivaux`
--

CREATE TABLE `nivaux` (
  `id` bigint(20) NOT NULL,
  `cycle_id` bigint(20) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `nivaux`
--

INSERT INTO `nivaux` (`id`, `cycle_id`, `label`) VALUES
(5, 1, 'PS'),
(6, 1, 'MS'),
(7, 1, 'GS'),
(8, 2, '1AEP'),
(9, 2, '2AEP'),
(10, 2, '3AEP'),
(11, 2, '4AEP'),
(12, 2, '5AEP'),
(13, 2, '6AEP'),
(14, 3, '1APIC'),
(15, 3, '2APIC'),
(16, 3, '3APIC'),
(17, 4, 'TC'),
(18, 4, '1BAC'),
(19, 4, '2BAC');

-- --------------------------------------------------------

--
-- Structure de la table `parent`
--

CREATE TABLE `parent` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `token_notification` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `parent_relation`
--

CREATE TABLE `parent_relation` (
  `id` bigint(20) NOT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `parent` bigint(20) DEFAULT NULL,
  `student` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `parent_relation`
--

INSERT INTO `parent_relation` (`id`, `is_valid`, `parent`, `student`) VALUES
(1, NULL, NULL, 1),
(2, NULL, NULL, 2),
(3, NULL, NULL, 3),
(4, NULL, NULL, 4),
(5, NULL, NULL, 5);

-- --------------------------------------------------------

--
-- Structure de la table `prof`
--

CREATE TABLE `prof` (
  `id` bigint(20) NOT NULL,
  `affectation_prof_id` bigint(20) DEFAULT NULL,
  `auto_send` bit(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `token_notification` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `request`
--

CREATE TABLE `request` (
  `id` bigint(20) NOT NULL,
  `code_massar` varchar(255) DEFAULT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `request_category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `request_category`
--

CREATE TABLE `request_category` (
  `id` bigint(20) NOT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `request` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `request_category`
--

INSERT INTO `request_category` (`id`, `is_active`, `request`) VALUES
(1, NULL, 'Attestaion Scolaire'),
(2, NULL, 'Relevé De Note');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `name` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `student`
--

CREATE TABLE `student` (
  `id` bigint(20) NOT NULL,
  `class_id` bigint(20) DEFAULT NULL,
  `code_massar` varchar(255) DEFAULT NULL,
  `date_of_brits` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `token_notification` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `student`
--

INSERT INTO `student` (`id`, `class_id`, `code_massar`, `date_of_brits`, `email`, `first_name`, `last_name`, `photo`, `role_id`, `token_notification`) VALUES
(1, 1, 'az2930484', 'az29304840', 'ettazi.karim@gmail.com', 'karim', 'ettazi', 'string', 3, 'string'),
(2, 1, 'az29304444', 'az29304444', 'fathi.oussama@gmail.com', 'oussama', 'fathi', 'string', 3, 'string'),
(3, 1, 'az2930sddfff', 'az2930sddf', 'daoudi.wafae@gmail.com', 'wafae', 'daoudi', 'string', 3, 'string'),
(4, 1, 'az2930434344', 'az29304343', 'kadiri.asmaa@gmail.com', 'asmaa', 'kadiri', 'string', 3, 'string'),
(5, 3, '6677', '$2a$10$aP/G8i2W/I2.DcyLSdrBU.fXnFgsS4xH6wLDZtZfBWoivEq8HmiJi', 'khadiri.meryem@gmail.com', 'meryama', 'fathi', NULL, 3, '');

-- --------------------------------------------------------

--
-- Structure de la table `time_table`
--

CREATE TABLE `time_table` (
  `id` bigint(20) NOT NULL,
  `class_id` bigint(20) DEFAULT NULL,
  `days_id` bigint(20) DEFAULT NULL,
  `prof_id` bigint(20) DEFAULT NULL,
  `time_finish` varchar(255) DEFAULT NULL,
  `time_start` varchar(255) DEFAULT NULL,
  `unity_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `unity`
--

CREATE TABLE `unity` (
  `id` bigint(20) NOT NULL,
  `class_id` bigint(20) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `prof_id` bigint(20) DEFAULT NULL,
  `unity_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `unity_list`
--

CREATE TABLE `unity_list` (
  `id` bigint(20) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `unity_list`
--

INSERT INTO `unity_list` (`id`, `color`, `name`) VALUES
(1, 'arabe', '#F6CECE'),
(2, 'français', 'FF0000'),
(3, 'anglais', '80FF00'),
(4, 'mathématique', '#8181F7'),
(5, 'physique chimie', '#0040FF'),
(6, 'historique géographie', '#BDBDBD'),
(7, 'philosophie', '#00FFFF'),
(8, 'éducation islamique', '#088A08'),
(9, 'SVT', '#FFFF00'),
(10, 'informatique', '#2EFEF7'),
(11, 'éducation physique', '#F6CED8'),
(12, 'traduction', '#173B0B'),
(13, 'comptabilité', '#5858FA'),
(14, 'économie', '#F6CED8'),
(15, 'DROIT_ORGANISATION', '#F7F8E0'),
(16, 'ECONOMIE_GENERAL', '#6E6E6E');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `username` varchar(15) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `last_name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `username`, `role_id`, `last_name`) VALUES
(6, 'walidrachad@gmail.com', 'walid', '$2a$10$5aIiVLpiIQglCg1u5bxSCOoBV6ckBsKxmiIvmsCNpSsKUZwGnyHQG', 'walidrachad', 4, 'rachad'),
(764, 'ettazi.karim@gmail.com', 'karim', '$2a$10$j4YmGT09eLsEas9CbCHYxu8IR2hJoSG2qBxsfQwa9lNF1r.5B75Ke', 'az2930484', 3, 'ettazi'),
(765, 'fathi.oussama@gmail.com', 'oussama', '$2a$10$dP.z.qvQEER4bay7zkO.6OqJiUG/KNUJIjwAxrnbqqiSe2kel/FOy', 'az29304444', 3, 'fathi'),
(766, 'daoudi.wafae@gmail.com', 'wafae', '$2a$10$8hAmJsTFSNnXlShCXXc/8Og6NurkrkupbPVfZVEIhPXRYF6Zb6USq', 'az2930sddfff', 3, 'daoudi'),
(767, 'kadiri.asmaa@gmail.com', 'asmaa', '$2a$10$GVGke2t2wGu1yR/LalDYKucBuXnqlyaQd3RJKkV0Kw412Y3ySdkiO', 'az2930434344', 3, 'kadiri'),
(768, 'khadiri.meryem@gmail.com', 'meryama', '$2a$10$g0XqsopQoru.hQ0fM0TfNOCvkKr4DZ0opaHQYxyniwFVNgxQszgHK', '1887', 3, 'fathi');

-- --------------------------------------------------------

--
-- Structure de la table `user_role`
--

CREATE TABLE `user_role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user_role`
--

INSERT INTO `user_role` (`id`, `name`) VALUES
(1, 'Prof'),
(2, 'Parent'),
(3, 'Student'),
(4, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `absent`
--
ALTER TABLE `absent`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `affectation_attachment`
--
ALTER TABLE `affectation_attachment`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `affectation_prof`
--
ALTER TABLE `affectation_prof`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `affectation_role`
--
ALTER TABLE `affectation_role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `affictation_message`
--
ALTER TABLE `affictation_message`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cycle`
--
ALTER TABLE `cycle`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `message_recipient`
--
ALTER TABLE `message_recipient`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `nivaux`
--
ALTER TABLE `nivaux`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `parent_relation`
--
ALTER TABLE `parent_relation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prof`
--
ALTER TABLE `prof`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `request_category`
--
ALTER TABLE `request_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `unity`
--
ALTER TABLE `unity`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `unity_list`
--
ALTER TABLE `unity_list`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_sx468g52bpetvlad2j9y0lptc` (`email`);

--
-- Index pour la table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `absent`
--
ALTER TABLE `absent`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `affectation_attachment`
--
ALTER TABLE `affectation_attachment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `affectation_prof`
--
ALTER TABLE `affectation_prof`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `affectation_role`
--
ALTER TABLE `affectation_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=611;

--
-- AUTO_INCREMENT pour la table `affictation_message`
--
ALTER TABLE `affictation_message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `attachment`
--
ALTER TABLE `attachment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `classe`
--
ALTER TABLE `classe`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT pour la table `cycle`
--
ALTER TABLE `cycle`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `days`
--
ALTER TABLE `days`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `event`
--
ALTER TABLE `event`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `message_recipient`
--
ALTER TABLE `message_recipient`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `nivaux`
--
ALTER TABLE `nivaux`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `parent`
--
ALTER TABLE `parent`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `parent_relation`
--
ALTER TABLE `parent_relation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `prof`
--
ALTER TABLE `prof`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `request`
--
ALTER TABLE `request`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `request_category`
--
ALTER TABLE `request_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `student`
--
ALTER TABLE `student`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `unity`
--
ALTER TABLE `unity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `unity_list`
--
ALTER TABLE `unity_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=769;

--
-- AUTO_INCREMENT pour la table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
