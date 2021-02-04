-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 04 fév. 2021 à 16:19
-- Version du serveur :  8.0.23-0ubuntu0.20.04.1
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `checkpoint4`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_article` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_article` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `date`, `summary`, `text_article`, `slug_article`) VALUES
(3, 'L’intelligence artificielle appliquée à la médecine', '2016-01-01 00:00:00', 'Il s’agit d’avoir une petit idée des applications possibles et des expériences réalisées.', 'Le machine learning en quelques mots :\r\n\r\nL’apprentissage automatique ou machine learning en anglais est une science moderne permettant de découvrir des répétitions (des patterns) dans un ou plusieurs flux de données et d’en tirer des prédictions en se basant sur des statistiques. En clair, le Machine Learning se base sur le forage de données, permettant la reconnaissance de patterns pour fournir des analyses prédictives.\r\n\r\nL’aide au diagnostic : la lecture d’imagerie.\r\nEn analysant et en interprétant d’énormes volumes de données, l’IA accompagne le médecin dans la lecture d’imageries.\r\n\r\nLe machine learning permet de favoriser les bons diagnostics et de lutter contre les erreurs médicales en générant des diagnostics différentiels et suggérant des examens complémentaires.\r\n\r\nPar exemple :  une équipe de chercheurs du MIT s’est appuyée sur le machine learning pour trouver comment gagner du temps pour l’analyse d’imagerie médicale par rapport aux techniques traditionnelles comme les rayons X ou les scans IRM. L’algorithme d’apprentissage automatique développé permet d’analyser les images 1000 fois plus rapidement que les humains.', 'test'),
(4, 'Blockchain et élections', '2016-01-01 00:00:00', 'Sur fond de crise de coronavirus, on a beaucoup entendu parler d’élections cette année : \r\n- récemment aux Etats Unis, avec les difficultés de comptabiliser les votes par correspondance,\r\n- ou plus tôt cette année , avec les polémiques autour du vote des municipales en France qui se sont tenues en plein pic épidémique\r\nAvec tout ça, l’idée d’utiliser la blockchain dans le mode électoral fait doucement son chemin.', '1) La blockchain c’est quoi ?\r\n\r\nIl existe de nombreuses définitions de la blockchain. Parmi celles-ci, on peut citer la définition suivante :\r\n\r\n« La blockchain (qu’on peut traduire par « chaîne de blocs ») est une technologie de stockage et de transmission d’informations, transparente, sécurisée, et fonctionnant sans organe central de contrôle »\r\n\r\n\r\nSes caractéristiques :\r\n- comparable à une base de données\r\n- contient l’historique de tous les échanges effectués entre les utilisateurs depuis sa création\r\n- la blockchain est hébergée par une partie des utilisateur, sans intermédiaire ; on dit qu’elle est distribuée (les utilisateurs qui peuvent vérifier la validité de la chaîne)\r\n- les informations contenues dans les blocks sont protégées par procédé cryptographique qui empêche les utilisateurs de les modifier à postériori\r\n\r\nOn peut se demander, pourquoi utiliser la blockchain, alors que le vote électronique existe déjà ? oui mais il présente des limites :\r\n\r\n2) Le vote électronique et ses limites\r\n\r\nIl est possible de diffuser un malware, par exemple pour favoriser un candidat.\r\n\r\nPour pirater une borne de vote électronique, il n’est pas nécessaire que la borne soit connectée à internet. Il suffirait de raccorder une clé USB, un téléphone. \r\nCertains avocats et scientifiques estiment que c’est ce qui a permis l’élection de Trump en 2016. \r\n\r\n3) La blockchain, solution pour corriger les défaillances du vote électronique ?\r\nCertains se sont demandé si l’utilisation des blockchain pouvait sécuriser le vote et apporter des solutions au manque de sécurité du vote électronique traditionnel.\r\nDéroulement d’un vote par blockchain : exemple d’Ethereum, système développé par BELEM https://belem.io/fr/ (expert blockchain français)\r\n- le votant reçoit un mail avec un lien web sécurisé\r\n- l’électeur vote\r\n- le vote est enregistré de façon anonyme : les données affichées sont l’heure et la date de la transaction et le choix du participant. Le vote dispose d’un numéro d’identification lorsqu’il est ajouté à un bloc. Une fois le vote enregistré, il est impossible de le supprimer ou de le changer. Chaque vote est lié au précédent, c’est la base de la blockchain.\r\n- le votant reçoit un e-mail de confirmation avec l’immatriculation du vote sur la chaîne de blocs (l’électeur peut vérifier que son vote a bien été pris en comte ; cette BDD est accessible à tous les votants).\r\n\r\nLe registre distribué garde une trace immuable, transparente et infalsifiable de tous les votes. \r\n\r\n4) Mais il y a un mais…\r\nLe système de vote par blockchain n’est pas encore parfait, il existe des failles, par exemple :\r\n- la possibilité de s’emparer des clés privées du système grâce aux clés publiques, pour obtenir l’identité des votants.\r\n\r\nPar ailleurs, dans une étude du MIT datée du 6 novembre 2020, les chercheurs expliquent que l’utilisation des blockchain n’est pas adapté à des élections de grande ampleur, notamment parce que les fraudes seraient indétectables à une échelle nationale et elles induiraient des facteurs de risques supplémentaires par rapport au vote électronique traditionnel.\r\n\r\n\r\nEn conclusion,\r\nl’utilisation des blockchain offre une piste alternative au vote électronique, mais cette solution n’en est encore qu’à ses début. De nombreux points restent à améliorer et à appréhender, comme la sécurisation des données, l’utilisation à grande échelle, le coût, les dimensions éthique et démocratique.', 'blockchain-et-elections');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id` int NOT NULL,
  `article_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pseudo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `article_id`, `title`, `text_comment`, `pseudo`, `date`) VALUES
(5, 3, 'Dum apud Persas, ut supra narravimus, perfidia regis motus', 'Dum apud Persas, ut supra narravimus, perfidia regis motus\r\nDum apud Persas, ut supra narravimus, perfidia regis motus agitat insperatos, et in eois tractibus bella rediviva consurgunt, anno sexto decimo et eo diutius post Nepotiani exitium, saeviens per urbem aeternam urebat cuncta Bellona, ex primordiis minimis ad clades excita luctuosas, quas obliterasset utinam iuge silentium! ne forte paria quandoque temptentur, plus exemplis generalibus nocitura quam delictis.', 'Untel', '2016-01-01 00:00:00'),
(6, 3, 'Sed fruatur sane hoc solacio atque hanc insignem ignominiam', 'Sed fruatur sane hoc solacio atque hanc insignem ignominiam, quoniam uni praeter se inusta sit, putet esse leviorem, dum modo, cuius exemplo se consolatur, eius exitum expectet, praesertim cum in Albucio nec Pisonis libidines nec audacia Gabini fuerit ac tamen hac una plaga conciderit, ignominia senatus.', 'Moi', '2016-01-01 00:00:00'),
(7, 3, 'ryqr-u', 'dtoyo', 'ypfèçp', '2016-01-01 00:00:00'),
(8, 3, 'tsjyrkkx', 'ymiuoyukuyluiom', 'yuo', '2016-01-01 00:00:00'),
(9, 4, 'rht', 'ktdlyi', 'fympiuù', '2016-01-01 00:00:00'),
(10, 4, 'z\"t\'YH', 'RSJTYK', 'YFLIUM', '2016-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `society` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` int NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `name`, `first_name`, `society`, `phonenumber`, `message`, `email`) VALUES
(1, 'hhjsdge', 'ehrteh', 'qehyr', 652325587, 'zerhtjq\'-', 'hfhg@gmail.com'),
(2, 'hhjsdge', 'ehrteh', 'qehyr', 652325587, 'zerhtjq\'-', 'hfhg@gmail.com'),
(3, 'setyrt', 'ehrteh', 'qehyr', 230253698, 'trsuryu', 'hfhg@gmail.com'),
(4, 'hhjsdge', 'ehrteh', 'qehyr', 369632598, 'test', 'hfhg@gmail.com'),
(5, 'eryr-', 'dt', 'qehyr', 321569856, 'contact', 'hfhg@gmail.com'),
(6, 'eryr-', 'dt', 'qehyr', 321569856, 'contact', 'hfhg@gmail.com'),
(7, 'y-i', 'dt', 'detèio', 159875236, 'strjytk', 'hfhg@gmail.com'),
(8, 'hhjsdge', 'ehrteh', 'qehyr', 236985456, 'jhgijethjh', 'hfhg@gmail.com'),
(9, 'eryr-', 'dt', 'detèio', 0, 'ertyirzioku', 'hfhg@gmail.com'),
(10, 'yqu', 'sr-i', 'rsi', 203020102, 'ryq-u', 'hfhg@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210203100659', '2021-02-03 11:07:13', 1782),
('DoctrineMigrations\\Version20210203130447', '2021-02-03 14:04:56', 1030),
('DoctrineMigrations\\Version20210203135919', '2021-02-03 14:59:31', 938),
('DoctrineMigrations\\Version20210203170132', '2021-02-03 18:01:47', 532),
('DoctrineMigrations\\Version20210203181512', '2021-02-03 19:15:24', 452),
('DoctrineMigrations\\Version20210204061014', '2021-02-04 07:10:22', 1402),
('DoctrineMigrations\\Version20210204074137', '2021-02-04 08:41:53', 1786),
('DoctrineMigrations\\Version20210204074513', '2021-02-04 08:45:19', 2878),
('DoctrineMigrations\\Version20210204093709', '2021-02-04 10:37:16', 438);

-- --------------------------------------------------------

--
-- Structure de la table `experience`
--

CREATE TABLE `experience` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `employer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `experience`
--

INSERT INTO `experience` (`id`, `title`, `start_date`, `end_date`, `employer`, `description`) VALUES
(1, 'Ergothérapeute', '2016-08-31', '2020-05-05', 'Exercice salarié', 'Rééducation et réadaptation au sein d\'une équipe pluridisciplinaire - Spécialité gériatrie'),
(2, 'Wildeuse', '2020-09-14', '2021-02-12', 'Wild code school', 'Formation Web développement');

-- --------------------------------------------------------

--
-- Structure de la table `hard_skills`
--

CREATE TABLE `hard_skills` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `hard_skills`
--

INSERT INTO `hard_skills` (`id`, `name`, `description`) VALUES
(1, 'HTML', 'Bonne maîtrise'),
(2, 'CSS', 'Bonne maîtrise des bases'),
(3, 'Bootstrap', 'Utilisation à plusieurs reprises de templates Bootstrap. Bonne connaissance des classes Bootstrap.'),
(4, 'PHP', 'Bonne compréhension des bases. Réalisation de CRUD, utilisation de PDO.'),
(5, 'MVC', 'Application du modèle.'),
(6, 'Symfony', 'En cours d\'acquisition. Création det utilisation de services. Mailer. Fixtures. Internationalisation.'),
(7, 'MySQL', 'Réalisation de requêtes simples et jointures.'),
(8, 'Github', 'Bonne maîtrise des basiques.'),
(9, 'Méthode Agile', 'Appliquée sur les projets Wild Code School');

-- --------------------------------------------------------

--
-- Structure de la table `project`
--

CREATE TABLE `project` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link1` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link2` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug_project` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `project`
--

INSERT INTO `project` (`id`, `title`, `description`, `duration`, `link1`, `link2`, `slug_project`, `url`) VALUES
(3, 'Projet (fictif) - CV', 'Création d\'un CV en ligne pour un personnage fictif - Initiation à la méthodologie Agile -  Utilisation de HTML et CSS -  PHP procédural', '2 semaines', 'https://github.com/JeremyMordo/Projet-CV-Hackerman', NULL, 'projet-fictif---cv', NULL),
(4, 'Projet (fictif) - Plateforme d\'entraide communautaire', 'Création d\'un site d\'échange de services pour une association avec : espace membre - espace administrateur -   moteur de recherche - classement des annonces - formulaire de contact - intégration du MVC - POO - CRUD - mise en place des sprint', '6 semaines', 'https://github.com/caroww/strashelp/blob/master/README.md', NULL, 'projet-fictif---plateforme-d-entraide-communautaire', NULL),
(5, 'Hackathon 1', 'Création d\'un site répondant à une problématique rencontrée dans le passé et utilisant une API - Projet réalisé en 28h - Mise en place de CRUD - session utilisateur et administrateur', '28h', 'https://github.com/caroww/GladiamaxHackathon/blob/master/README.md', NULL, 'hackathon-1', NULL),
(6, 'Projet Client - Site vitrine événementiel et traiteur', 'Refonte d\'un site d\'événementiel et ajout d\'une partie traiteur - Formulaire de demande de devis - Partie administrateur - Méthode Agile - Utilisation de Symfony - SCSS', '8 semaines', 'https://github.com/WildCodeSchool/strasbourg-php-202009-project-klassevent', 'https://github.com/caroww/KlassEventNotes', 'projet-client---site-vitrine-evenementiel-et-traiteur', NULL),
(7, 'Hackathon 2 : Gotham Reconstruction Corp.', 'Créer un site innovant en utilisant l\'API SuperHero. Création d\'un site mettant en vente les autographes des superHéros, dont les fonds sont destinés à participer à la reconstruction des villes détruites par les superVilains.', '48h', 'https://github.com/caroww/Hackathon2_GothamReconstructionCorp/blob/master/README.md', 'https://gothamreconstructioncorporation.000webhostapp.com/search.php?universe=MARVEL', 'hackathon-2-gotham-reconstruction-corp', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1, 'admin@monsite.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$HS8K5YqKaxfZ2aq8EGGsRw$ZZgCXvDDkNG6mu/OPflMbShYpK1+TKYZKRqm1my2X0Q');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526C7294869C` (`article_id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `hard_skills`
--
ALTER TABLE `hard_skills`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `hard_skills`
--
ALTER TABLE `hard_skills`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `project`
--
ALTER TABLE `project`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
