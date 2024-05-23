-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 23 mai 2024 à 10:04
-- Version du serveur : 8.0.31
-- Version de PHP : 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `itsafecampus`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id_contact` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id_contact`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

DROP TABLE IF EXISTS `cours`;
CREATE TABLE IF NOT EXISTS `cours` (
  `id_cours` int NOT NULL AUTO_INCREMENT,
  `id_formation` int NOT NULL,
  `chap_1` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `chap_2` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `chap_3` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `chap_4` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `chap_5` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `chap_6` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description_1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description_2` longtext NOT NULL,
  `description_3` longtext NOT NULL,
  `description_4` longtext NOT NULL,
  `description_5` longtext NOT NULL,
  `description_6` longtext NOT NULL,
  PRIMARY KEY (`id_cours`),
  KEY `id_formation` (`id_formation`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`id_cours`, `id_formation`, `chap_1`, `chap_2`, `chap_3`, `chap_4`, `chap_5`, `chap_6`, `description_1`, `description_2`, `description_3`, `description_4`, `description_5`, `description_6`) VALUES
(1, 1, 'Introduction', 'Qu\'est-ce qu\'un mot de passe ?', 'L\'importance de mots de passe ', 'Caractéristiques d\'un bon mot ', 'Bonnes pratiques pour la gesti', 'Conclusion', 'Les mots de passe sont des éléments fondamentaux de la sécurité informatique. Ils servent à protéger l\'accès à des informations sensibles telles que des comptes en ligne, des données personnelles ou des réseaux informatiques. Comprendre comment créer et gérer des mots de passe efficaces est crucial pour maintenir la sécurité de vos informations numériques. ', 'Un mot de passe est une séquence de caractères utilisée pour authentifier l\'identité d\'un utilisateur et lui permettre l\'accès à un système, un service ou des données spécifiques. Les mots de passe peuvent être composés de lettres (majuscules et minuscules), de chiffres, de symboles ou d\'une combinaison de ceux-ci. ', 'Un mot de passe fort est essentiel pour prévenir les attaques de force brute et les piratages. Voici quelques raisons pour lesquelles il est crucial d\'avoir un mot de passe solide : \r\n\r\nProtection des données personnelles : Un mot de passe fort protège vos informations confidentielles contre les accès non autorisés. \r\n\r\nPrévention des piratages : Des mots de passe faibles sont facilement devinés par des algorithmes automatisés, ce qui rend vos comptes vulnérables aux piratages. \r\n\r\nConfidentialité : Un mot de passe robuste garantit la confidentialité de vos communications et de vos données stockées. ', 'Pour être considéré comme fort, un mot de passe doit posséder les caractéristiques suivantes : \r\n\r\nLongueur : Plus le mot de passe est long, plus il est difficile à deviner. Un bon mot de passe doit contenir au moins 12 caractères. \r\n\r\nComplexité : Il doit inclure une combinaison de lettres majuscules et minuscules, de chiffres et de caractères spéciaux (comme !, @, #, $, %, etc.). \r\n\r\nUnicité : Utilisez des mots de passe différents pour chaque compte afin de limiter les dommages en cas de compromission d\'un seul compte. ', 'Ne partagez pas vos mots de passe : Gardez vos mots de passe confidentiels et ne les partagez jamais avec quiconque, même si cette personne prétend être un représentant du service en question. \r\n\r\nChangez régulièrement vos mots de passe : Il est recommandé de changer vos mots de passe périodiquement, au moins tous les trois à six mois, pour renforcer la sécurité de vos comptes. \r\n\r\nUtilisez un gestionnaire de mots de passe : Les gestionnaires de mots de passe sont des outils pratiques qui stockent de manière sécurisée vos identifiants de connexion et génèrent des mots de passe forts pour vous. \r\n\r\nActivez l\'authentification à deux facteurs (2FA) : L\'ajout d\'une couche supplémentaire de sécurité, comme un code envoyé sur votre téléphone portable, renforce la protection de vos comptes. ', 'Les mots de passe jouent un rôle crucial dans la protection de vos informations personnelles et professionnelles en ligne. En choisissant des mots de passe forts et en suivant les bonnes pratiques de gestion des mots de passe, vous pouvez réduire considérablement les risques de compromission de vos comptes et préserver votre sécurité numérique. '),
(2, 2, 'Introduction ', 'Fonctionnalités des Gestionnaires de Mots de Passe', 'Avantages des Gestionnaires de Mots de Passe', 'Principaux Gestionnaires de Mot de passe', '', 'Conclusion', 'Les gestionnaires de mots de passe sont des outils logiciels conçus pour stocker de manière sécurisée les identifiants de connexion et les mots de passe des utilisateurs. Ils offrent une solution pratique pour gérer efficacement un grand nombre de comptes en ligne tout en renforçant la sécurité et la confidentialité des informations personnelles.', 'Stockage sécurisé : Les gestionnaires de mots de passe utilisent un cryptage puissant pour stocker en toute sécurité les identifiants de connexion et les mots de passe des utilisateurs. Ces informations sont généralement protégées par un mot de passe maître, le seul mot de passe que vous devez retenir. \r\n\r\nGénération de mots de passe forts : Ils proposent souvent des outils de génération de mots de passe qui créent automatiquement des mots de passe robustes et uniques pour chaque compte. \r\n\r\nRemplissage automatique : Les gestionnaires de mots de passe peuvent remplir automatiquement les champs de connexion sur les sites web, ce qui simplifie le processus d\'authentification et vous évite de saisir manuellement vos identifiants à chaque fois. \r\n\r\nSynchronisation entre les appareils : Ils permettent de synchroniser vos mots de passe sur différents appareils (ordinateurs, smartphones, tablettes), ce qui vous donne un accès sécurisé à vos comptes partout où vous en avez besoin. \r\n\r\nAudit de sécurité : Certains gestionnaires de mots de passe offrent des fonctionnalités d\'audit de sécurité qui analysent la force de vos mots de passe et identifient les comptes présentant des risques de sécurité. \r\n\r\nPartage sécurisé des mots de passe : Ils permettent de partager en toute sécurité des mots de passe avec d\'autres utilisateurs, comme des membres de la famille ou des collègues de travail, sans compromettre la confidentialité des informations. \r\n', 'Sécurité renforcée : En utilisant un gestionnaire de mots de passe, vous pouvez créer des mots de passe forts et uniques pour chaque compte, ce qui réduit considérablement les risques de piratage. \r\n\r\nSimplicité d\'utilisation : Ils simplifient la gestion des mots de passe en automatisant les tâches telles que la saisie et le stockage des identifiants de connexion. \r\n\r\nGain de temps : Le remplissage automatique des champs de connexion permet de gagner du temps lors de l\'accès à vos comptes en ligne. \r\n\r\nProtection multi-appareils : La synchronisation entre les appareils garantit que vos mots de passe sont accessibles en toute sécurité depuis n\'importe quel appareil connecté. ', 'LastPass : Offre une gamme complète de fonctionnalités de gestion de mots de passe et de sécurité. \r\n\r\n1Password : Propose une interface conviviale et des fonctionnalités avancées de sécurité. \r\n\r\nDashlane : Connue pour sa simplicité d\'utilisation et ses fonctionnalités de sécurité robustes. \r\n\r\nBitwarden : Open source et gratuit, il offre des fonctionnalités de base solides pour la gestion des mots de passe. \r\n\r\nKeeper : Met l\'accent sur la sécurité avec un cryptage de bout en bout et des fonctionnalités avancées de gestion des mots de passe. \r\n', '', 'Les gestionnaires de mots de passe sont des outils essentiels pour renforcer la sécurité de vos comptes en ligne tout en simplifiant la gestion des mots de passe. En choisissant le bon gestionnaire de mots de passe et en adoptant les bonnes pratiques de sécurité, vous pouvez protéger efficacement vos informations personnelles et professionnelles contre les menaces en ligne. '),
(3, 3, 'Introduction ', 'Fondamentaux de la Cybersécurité ', 'Principales Menaces en Cybersécurité ', 'Principes de Base de la Cybersécurité ', 'Bonnes Pratiques en Cybersécurité ', 'Conclusion ', 'La cybersécurité est un domaine crucial dans notre ère numérique où les menaces en ligne sont omniprésentes. Ce cours d\'initiation vise à fournir les bases nécessaires pour comprendre les principes fondamentaux de la cybersécurité et les meilleures pratiques pour se protéger contre les menaces en ligne. \r\n', '1.1. Définition de la Cybersécurité - La cybersécurité englobe un ensemble de technologies, de processus et de pratiques conçus pour protéger les systèmes informatiques, les réseaux et les données contre les menaces en ligne, telles que les logiciels malveillants, les attaques par déni de service (DDoS), les violations de données et les tentatives de piratage. \r\n\r\n1.2. Importance de la Cybersécurité - Dans un monde de plus en plus interconnecté, où les données sont échangées à une vitesse vertigineuse, la cybersécurité est cruciale pour assurer la confidentialité, l\'intégrité et la disponibilité des informations. Les attaques informatiques peuvent avoir des conséquences désastreuses sur les entreprises, les gouvernements et les individus, allant de la perte de réputation à des pertes financières importantes, voire à des atteintes à la sécurité nationale. ', '2.1. Malware - Les logiciels malveillants, ou malware, sont des programmes conçus pour causer des dommages à un système informatique, voler des données ou perturber son fonctionnement. Les types de malware les plus courants incluent les virus, les vers, les chevaux de Troie, les ransomwares et les spywares. Les logiciels malveillants peuvent être distribués via des sites Web infectés, des pièces jointes de courrier électronique, des périphériques USB infectés ou des téléchargements malveillants. \r\n\r\n2.2. Piratage - Le piratage informatique, ou hacking, implique l\'exploitation de vulnérabilités dans les systèmes informatiques pour accéder à des informations sensibles, perturber les opérations ou causer des dommages. Les pirates informatiques utilisent diverses techniques, telles que l\'ingénierie sociale, l\'exploitation de failles de sécurité, le sniffing de réseau et les attaques par force brute pour compromettre les systèmes. Les motivations des pirates informatiques peuvent être financières, politiques ou simplement malveillantes. \r\n\r\n2.3. Phishing - Le phishing est une technique d\'ingénierie sociale utilisée par les cybercriminels pour tromper les utilisateurs et leur faire divulguer des informations personnelles ou financières sensibles, telles que des mots de passe, des numéros de carte de crédit ou des informations d\'identification. Les attaquants envoient souvent des e-mails, des messages texte ou des messages instantanés frauduleux prétendant être d\'entreprises légitimes, des institutions financières ou des organisations gouvernementales pour inciter les victimes à cliquer sur des liens malveillants ou à télécharger des pièces jointes infectées. \r\n', '3.1. Mise à Jour des Logiciels - La mise à jour régulière des logiciels et des systèmes d\'exploitation est essentielle pour corriger les vulnérabilités de sécurité connues et empêcher les attaquants d\'exploiter ces failles pour compromettre les systèmes. Les fabricants de logiciels publient régulièrement des correctifs de sécurité pour combler les failles de sécurité découvertes, il est donc important de maintenir vos logiciels à jour pour bénéficier des dernières protections. \r\n\r\n3.2. Utilisation de Mots de Passe Forts - Les mots de passe forts sont essentiels pour sécuriser les comptes en ligne et empêcher les attaquants d\'accéder à vos informations. Un mot de passe fort doit être long, complexe et unique pour chaque compte. Il est recommandé d\'utiliser une combinaison de lettres majuscules et minuscules, de chiffres et de caractères spéciaux, et d\'éviter les mots de passe faciles à deviner comme les dates de naissance ou les noms d\'animaux de compagnie. \r\n\r\n3.3. Authentification à Deux Facteurs (2FA) - L\'authentification à deux facteurs ajoute une couche supplémentaire de sécurité en exigeant une deuxième forme d\'identification au-delà du simple mot de passe. Cette deuxième forme d\'identification peut être un code unique envoyé à votre téléphone portable via un SMS ou une application d\'authentification, une empreinte digitale ou un scan facial. L\'activation de l\'authentification à deux facteurs rend plus difficile pour les attaquants d\'accéder à vos comptes même s\'ils parviennent à deviner ou à voler votre mot de passe. \r\n', '4.1. Sensibilisation à la Cybersécurité - Être conscient des menaces en ligne et des techniques d\'attaque peut vous aider à identifier et à éviter les risques potentiels. La sensibilisation à la cybersécurité implique de rester informé des dernières tendances en matière de sécurité, de participer à des programmes de formation à la sécurité informatique et de partager les connaissances avec vos collègues, amis et famille. \r\n\r\n4.2. Sauvegarde Régulière des Données - Les sauvegardes régulières de vos données sont essentielles pour vous protéger contre la perte de données en cas d\'attaque informatique, de défaillance matérielle ou de catastrophe naturelle. Assurez-vous de sauvegarder vos fichiers importants sur des supports de stockage externes sécurisés, tels que des disques durs externes ou des services de stockage cloud fiables, et de tester régulièrement vos sauvegardes pour vous assurer qu\'elles sont récupérables en cas de besoin. \r\n', 'La cybersécurité est un défi continu dans notre monde numérique en constante évolution. En comprenant les principes fondamentaux de la cybersécurité et en adoptant des bonnes pratiques, vous pouvez réduire les risques d\'attaques en ligne, protéger vos informations personnelles et professionnelles, et contribuer à rendre l\'internet plus sûr pour tous. '),
(4, 4, 'Introduction ', 'Méthodes courantes de l\'Authentification à Deux Facteurs', 'Avantages de l\'Authentification à Deux Facteurs ', 'Mise en Œuvre de l\'Authentification à Deux Facteur', '[value-7]', 'Conclusion ', 'L\'authentification à deux facteurs (2FA) est une méthode de sécurité qui ajoute une couche supplémentaire de protection à vos comptes en ligne. En plus de votre nom d\'utilisateur et de votre mot de passe, la 2FA nécessite une preuve supplémentaire de votre identité, généralement sous la forme d\'un code unique envoyé sur votre appareil mobile. Cette approche renforce considérablement la sécurité des comptes en réduisant les risques d\'accès non autorisé. ', 'SMS (Message Texte) : Vous recevez un code de vérification par SMS sur votre téléphone portable. Vous saisissez ce code lors de la connexion pour confirmer votre identité. \r\n\r\nApplications d\'Authentification : Vous utilisez une application mobile dédiée, telle que Google Authenticator ou Authy, pour générer des codes de vérification à usage unique. \r\n\r\nClés de Sécurité : Des dispositifs matériels, tels que des clés USB de sécurité ou des cartes à puce, sont utilisés pour générer des codes de vérification ou effectuer des transactions sécurisées. \r\n\r\nBiométrie : Certains services permettent l\'utilisation de la biométrie, telle que la reconnaissance d\'empreintes digitales ou faciales, comme méthode de vérification supplémentaire. ', 'Sécurité Améliorée : La 2FA réduit considérablement les risques d\'accès non autorisé en ajoutant une couche de sécurité supplémentaire à vos comptes en ligne. \r\n\r\nProtection en Cas de Fuite de Mots de Passe : Même si vos identifiants de connexion sont compromis, un attaquant ne pourra pas accéder à votre compte sans le deuxième facteur d\'authentification. \r\n\r\nRéduction des Risques de Phishing : La 2FA rend les tentatives de phishing plus difficiles, car les attaquants ont besoin de plus que des identifiants de connexion pour accéder à votre compte. \r\n\r\nCompatibilité Multi-plateforme : De nombreux services en ligne prennent désormais en charge l\'authentification à deux facteurs, offrant ainsi une protection uniforme sur différents sites et applications. ', 'Activer la 2FA : Accédez aux paramètres de sécurité de votre compte et activez l\'authentification à deux facteurs, si elle est proposée. \r\n\r\nChoisir la Méthode de Vérification : Sélectionnez la méthode de vérification qui convient le mieux à vos besoins et à votre confort, qu\'il s\'agisse d\'une application d\'authentification, de SMS ou de clés de sécurité. \r\n\r\nConfiguration : Suivez les instructions fournies pour configurer la 2FA sur votre compte. Vous devrez peut-être scanner un code QR ou associer votre numéro de téléphone portable. \r\n\r\nUtilisation Quotidienne : Lorsque vous vous connectez à votre compte, vous serez invité à entrer le code de vérification généré par votre méthode choisie. \r\n', '[value-13]', 'L\'authentification à deux facteurs est une stratégie efficace pour renforcer la sécurité de vos comptes en ligne. En ajoutant une couche supplémentaire de vérification à votre processus de connexion, vous réduisez considérablement les risques de compromission de vos informations personnelles et professionnelles. En adoptant la 2FA et en encourageant son utilisation généralisée, nous pouvons tous contribuer à créer un environnement en ligne plus sûr et plus sécurisé.'),
(5, 5, 'Introduction', 'Types de Malwares', 'Méthodes de Propagation', 'Protection contre les Malwares', '[value-7]', 'Conclusion', 'Les malwares, ou logiciels malveillants, sont des programmes informatiques conçus dans le but de causer des dommages, voler des données, ou d\'autres activités malveillantes sur un système informatique. Ils peuvent prendre diverses formes, telles que des virus, des vers, des chevaux de Troie, des ransomwares, des spywares, etc. ', 'Virus : Les virus sont des programmes malveillants qui s\'attachent à des fichiers exécutables et se propagent en infectant d\'autres fichiers lorsqu\'ils sont exécutés. \r\n\r\nVers (Worms) : Les vers sont des programmes autonomes qui se propagent d\'un système à un autre via des réseaux informatiques, sans nécessiter d\'hôte. \r\n\r\nChevaux de Troie (Trojans) : Les chevaux de Troie se présentent comme des logiciels légitimes mais contiennent des fonctionnalités malveillantes. Ils peuvent être utilisés pour voler des données, contrôler à distance un système, ouvrir des portes dérobées, etc. \r\n\r\nRansomwares : Les ransomwares chiffrent les fichiers de la victime et exigent le paiement d\'une rançon pour restaurer l\'accès à ces fichiers. \r\n\r\nSpywares : Les spywares sont conçus pour espionner les activités de l\'utilisateur, collecter des informations personnelles ou surveiller l\'utilisation de l\'ordinateur. \r\n\r\nAdwares : Les adwares affichent des publicités non désirées sur l\'ordinateur de l\'utilisateur, généralement dans le but de générer des revenus pour les auteurs du malware. ', 'Les malwares peuvent se propager de différentes manières : \r\n\r\nE-mails Phishing : Les malwares peuvent être dissimulés dans des e-mails de phishing, incitant les utilisateurs à cliquer sur des liens ou à télécharger des pièces jointes infectées. \r\n\r\nTéléchargements Malveillants : Les malwares peuvent être téléchargés à partir de sites web infectés ou de sources non sécurisées. \r\n\r\nExploitation de Vulnérabilités : Les malwares peuvent exploiter des failles de sécurité dans les logiciels ou les systèmes d\'exploitation pour infecter un système. \r\n\r\nDispositifs USB Infectés : Les malwares peuvent être distribués via des dispositifs USB infectés, qui sont ensuite connectés à d\'autres ordinateurs. ', 'Pour se protéger contre les malwares, il est recommandé de prendre les mesures suivantes : \r\n\r\nUtiliser des Logiciels de Sécurité : Installer et maintenir à jour des logiciels antivirus et antimalwares sur tous les appareils. \r\n\r\nMettre à Jour les Logiciels : Maintenir à jour tous les logiciels et systèmes d\'exploitation pour corriger les failles de sécurité connues. \r\n\r\nÊtre Prudent en Ligne : Éviter de cliquer sur des liens suspects ou de télécharger des fichiers à partir de sources non fiables, et être vigilant face aux e-mails de phishing. \r\n\r\nUtiliser des Pare-feux : Configurer des pare-feux pour contrôler le trafic réseau entrant et sortant et bloquer les communications non autorisées. \r\n\r\nSauvegarder Régulièrement les Données : Effectuer des sauvegardes régulières des données importantes afin de pouvoir les restaurer en cas d\'infection par un ransomware ou toute autre forme de malware. ', '[value-13]', 'La menace des malwares est omniprésente dans l\'environnement informatique moderne. En comprenant les différents types de malwares et en mettant en œuvre des mesures de protection appropriées, les utilisateurs peuvent réduire les risques d\'infection et protéger leurs systèmes et leurs données contre les attaques malveillantes. '),
(6, 6, 'Introduction', 'Types de Piratage Informatique', 'Techniques de Piratage Informatique', 'Conséquences du Piratage Informatique', 'Prévention du Piratage Informatique', 'Conclusion', 'Le piratage informatique, également connu sous le nom de hacking, est une pratique consistant à exploiter les vulnérabilités des systèmes informatiques pour obtenir un accès non autorisé à des données, des réseaux ou des systèmes. Cette activité peut avoir des motivations diverses, allant du simple défi technique à des objectifs plus malveillants tels que le vol d\'informations sensibles ou le sabotage. ', '1. Piratage des Réseaux : Cela implique de contourner les systèmes de sécurité d\'un réseau pour accéder à des données ou à des ressources qui ne sont pas normalement accessibles. \r\n\r\n2. Piratage des Systèmes : Les pirates informatiques peuvent compromettre des systèmes individuels, tels que des ordinateurs ou des serveurs, en exploitant des failles de sécurité pour accéder à des informations ou les corrompre. \r\n\r\n3. Piratage des Applications Web : Les applications Web sont souvent la cible de pirates qui exploitent des vulnérabilités telles que les injections SQL ou les failles de gestion des sessions pour accéder à des données sensibles. \r\n\r\n4. Piratage par Ingénierie Sociale : Cette technique consiste à manipuler les individus pour obtenir des informations confidentielles, telles que des identifiants de connexion, par le biais de techniques de persuasion ou de tromperie. ', '1. Exploitation de Vulnérabilités : Les pirates informatiques recherchent et exploitent des vulnérabilités dans les logiciels, les systèmes d\'exploitation ou les protocoles réseau pour compromettre un système. \r\n\r\n2. Ingénierie Inverse : Cette technique consiste à analyser un programme ou un système pour comprendre son fonctionnement interne et trouver des moyens de le manipuler. \r\n\r\n3. Attaques par Force Brute : Les pirates tentent de deviner les identifiants de connexion en essayant différentes combinaisons de mots de passe jusqu\'à ce qu\'ils trouvent la bonne. \r\n\r\n4. Phishing : Les attaques de phishing utilisent des courriels ou des messages trompeurs pour inciter les utilisateurs à divulguer des informations sensibles telles que des identifiants de connexion ou des informations de carte de crédit. ', '1. Perte de Données Sensibles : Les attaques de piratage peuvent entraîner la perte ou le vol de données sensibles, ce qui peut avoir des conséquences financières et juridiques importantes pour les entreprises et les individus. \r\n\r\n \r\n2. Sabotage des Systèmes : Les pirates informatiques peuvent également utiliser le piratage pour corrompre ou saboter des systèmes, ce qui peut entraîner des perturbations importantes dans les opérations commerciales ou les services en ligne. \r\n\r\n3. Violation de la Confidentialité : Les violations de données résultant de piratages informatiques peuvent compromettre la confidentialité des informations personnelles des individus, entraînant des problèmes de confidentialité et de confiance. \r\n\r\n4. Conséquences Légales : Le piratage informatique est généralement illégal et peut entraîner des poursuites judiciaires, des amendes et des peines de prison pour les personnes impliquées. ', '1. Mise à Jour des Logiciels : Maintenir les logiciels et les systèmes à jour avec les derniers correctifs de sécurité peut aider à réduire les risques d\'exploitation de vulnérabilités. \r\n\r\n2. Utilisation de Mots de Passe Forts : Encourager l\'utilisation de mots de passe forts et complexes peut rendre plus difficile pour les pirates de deviner les identifiants de connexion. \r\n\r\n3. Formation en Sécurité Informatique : Sensibiliser les utilisateurs aux techniques de piratage et aux bonnes pratiques de sécurité informatique peut aider à prévenir les attaques par ingénierie sociale. \r\n\r\n4. Mise en Place de Pare-feu et de Logiciels de Sécurité : Utiliser des pare-feu, des logiciels antivirus et d\'autres outils de sécurité informatique peut aider à détecter et à prévenir les attaques de piratage. ', 'Le piratage informatique représente une menace sérieuse pour la sécurité des systèmes informatiques et la confidentialité des données. En comprenant les techniques utilisées par les pirates et en mettant en œuvre des mesures de sécurité appropriées, les organisations et les individus peuvent réduire les risques d\'attaques de piratage et protéger leurs informations sensibles. '),
(7, 7, 'Introduction', 'Principes Psychologiques Fondamentaux', 'Techniques d\'Ingénierie Sociale', 'Implications Éthiques', 'Prévention et Contre-mesures', 'Conclusion', 'Définition:\r\nL\'ingénierie sociale est l\'art de manipuler les individus afin de les inciter à divulguer des informations confidentielles ou à effectuer des actions qui compromettent la sécurité d\'un système.\r\n\r\nHistorique:\r\nOrigines dans les domaines de la psychologie sociale et de la manipulation mentale.\r\nÉvolution avec l\'avènement de la technologie et de la sécurité informatique.\r\n\r\nObjectifs:\r\nObtenir des informations sensibles.\r\nContourner les mesures de sécurité.\r\nInfluencer les comportements pour obtenir un avantage.\r\n', 'Autorité:\r\nLes gens ont tendance à obéir à une figure d\'autorité.\r\n\r\nEngagement et Consistance:\r\nLes individus ont tendance à respecter leurs engagements antérieurs, même s\'ils deviennent incohérents avec leurs valeurs actuelles.\r\n\r\nRéciprocité:\r\nLes individus sont enclins à retourner les faveurs qu\'ils reçoivent.\r\n\r\nPreuve Sociale:\r\nLes gens ont tendance à suivre les comportements des autres dans des situations sociales ambiguës.\r\n\r\nSympathie:\r\nLes individus sont plus susceptibles d\'être influencés par ceux qu\'ils aiment ou admirent.', 'Phishing:\r\nUtilisation d\'e-mails, de messages instantanés ou de sites Web frauduleux pour inciter les utilisateurs à divulguer des informations personnelles ou à installer des logiciels malveillants.\r\n\r\nIngénierie inverse:\r\nAnalyse des informations publiques pour obtenir des renseignements sur une cible, puis utilisation de ces informations pour manipuler la cible.\r\n\r\nAttaques par Téléphone:\r\nUtilisation de l\'ingénierie sociale par téléphone pour obtenir des informations sensibles ou pour inciter les victimes à effectuer certaines actions.\r\n\r\nIngénierie sociale physique:\r\nUtilisation de la manipulation en face-à-face pour obtenir un accès physique à des locaux ou à des informations sensibles.', 'Vie Privée:\r\nViolation de la vie privée des individus en manipulant leurs informations personnelles.\r\n\r\nSécurité:\r\nRisque accru pour la sécurité des données et des systèmes d\'information.\r\n\r\nConfiance:\r\nÉrosion de la confiance entre les individus et les institutions.', 'Sensibilisation:\r\nÉducation des individus sur les techniques d\'ingénierie sociale et les signes révélateurs.\r\n\r\nPolitiques de Sécurité:\r\nMise en place de politiques strictes de gestion des informations sensibles.\r\n\r\nFormation:\r\nFormation régulière du personnel sur les bonnes pratiques en matière de sécurité et de protection des données.\r\n\r\nTechnologies de Sécurité:\r\nUtilisation de technologies telles que les pare-feu, les antivirus et les outils de détection de phishing pour renforcer la sécurité des systèmes.', 'L\'ingénierie sociale manipule les individus pour obtenir des informations sensibles ou contourner la sécurité des systèmes. Basée sur des principes psychologiques, elle utilise des techniques telles que le phishing ou les attaques téléphoniques. Ces pratiques posent des défis éthiques et menacent la vie privée, la sécurité et la confiance. Pour contrer ces menaces, la sensibilisation, les politiques de sécurité strictes, la formation et l\'utilisation de technologies de sécurité sont essentielles. En adoptant ces mesures, les organisations et les individus peuvent mieux se protéger contre les attaques d\'ingénierie sociale, renforçant ainsi la sécurité de leurs données et systèmes.'),
(8, 8, 'Introduction', 'Méthodes de Phishing', 'Techniques de Prévention', 'D\'autre Techniques de Prévention', '[value-7]', 'Conclusion ', 'Le phishing, également connu sous le nom d\'hameçonnage, est une technique utilisée par les cybercriminels pour obtenir des informations confidentielles telles que des mots de passe, des informations de carte de crédit ou d\'autres données sensibles. Cette méthode implique généralement l\'envoi de courriels, de messages texte ou la création de sites web frauduleux qui imitent des entreprises légitimes afin de tromper les utilisateurs et de les inciter à divulguer leurs informations personnelles. \r\n', 'Phishing par Courriel (Email Phishing) : Les cybercriminels envoient des courriels frauduleux prétendant être de grandes entreprises, des institutions financières ou des organismes gouvernementaux. Ces courriels contiennent souvent des liens vers des sites web falsifiés ou des pièces jointes malveillantes. \r\n\r\nPhishing par SMS (Smishing) : Cette méthode implique l\'envoi de messages texte frauduleux contenant des liens vers des sites web falsifiés ou demandant aux destinataires de répondre avec des informations sensibles. \r\n\r\nPhishing par Téléphone (Vishing) : Les cybercriminels utilisent des appels téléphoniques pour se faire passer pour des représentants d\'entreprises légitimes et inciter les victimes à divulguer des informations personnelles ou financières. \r\n\r\nPhishing sur les Réseaux Sociaux (Social Media Phishing) : Les fraudeurs utilisent des réseaux sociaux pour créer de faux profils ou des pages d\'entreprise afin de piéger les utilisateurs en leur demandant de partager des informations sensibles ou en cliquant sur des liens malveillants. ', 'Éducation et Sensibilisation : Sensibiliser les utilisateurs aux techniques de phishing et leur apprendre à identifier les signes d\'une tentative d\'hameçonnage peut aider à réduire les risques. \r\n\r\nVérification de l\'Authenticité : Avant de répondre à un courriel, un message texte ou un appel téléphonique demandant des informations sensibles, il est important de vérifier l\'authenticité de l\'expéditeur ou de l\'appelant en utilisant des méthodes indépendantes. \r\n\r\nMise à Jour des Logiciels et des Antivirus : Maintenir à jour les logiciels et utiliser des programmes antivirus peut aider à détecter et à bloquer les tentatives de phishing. ', 'Utilisation de l\'Authentification à Deux Facteurs (2FA) : Activer l\'authentification à deux facteurs sur les comptes en ligne peut ajouter une couche de sécurité supplémentaire en demandant aux utilisateurs de fournir une preuve supplémentaire de leur identité. \r\n\r\nSurveillance des Comptes et des Activités Suspectes : Surveiller régulièrement les comptes en ligne pour repérer toute activité suspecte ou non autorisée peut permettre de réagir rapidement en cas de compromission. ', '[value-13]', 'Le phishing reste l\'une des principales menaces pour la sécurité en ligne. En comprenant les techniques utilisées par les cybercriminels et en adoptant des mesures de prévention appropriées, les utilisateurs peuvent réduire considérablement les risques de devenir victimes de cette forme d\'attaque.');

-- --------------------------------------------------------

--
-- Structure de la table `formations`
--

DROP TABLE IF EXISTS `formations`;
CREATE TABLE IF NOT EXISTS `formations` (
  `id_formation` int NOT NULL AUTO_INCREMENT,
  `id_thematique` int NOT NULL,
  `nom_formation` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` longtext NOT NULL,
  `URL` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_formation`),
  KEY `id_thematique` (`id_thematique`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `formations`
--

INSERT INTO `formations` (`id_formation`, `id_thematique`, `nom_formation`, `description`, `URL`) VALUES
(1, 2, 'Mot de passe', 'Les mots de passe sont cruciaux pour la sécurité informatique, protégeant l\'accès à des informations sensibles. Ils doivent être longs (au moins 12 caractères), complexes (lettres, chiffres, symboles) et uniques pour chaque compte. Pour les gérer, ne les partagez jamais, changez-les régulièrement, utilisez un gestionnaire de mots de passe et activez l\'authentification à deux facteurs (2FA). En suivant ces bonnes pratiques, vous réduisez les risques de compromission de vos comptes et renforcez votre sécurité numérique.', 'mot_de_passe.png'),
(2, 2, 'Gestionnaire de mot de passe', 'Les gestionnaires de mots de passe stockent et gèrent en toute sécurité vos identifiants de connexion grâce à un cryptage puissant, protégeant ces informations avec un mot de passe maître. Ils génèrent des mots de passe forts, remplissent automatiquement les champs de connexion, synchronisent les mots de passe entre différents appareils et offrent des audits de sécurité. Les avantages incluent une sécurité renforcée, une gestion simplifiée des mots de passe, un gain de temps et une protection multi-appareils. Des gestionnaires populaires comme LastPass, 1Password, Dashlane, Bitwarden et Keeper offrent diverses fonctionnalités pour répondre à vos besoins en matière de sécurité. Utiliser un gestionnaire de mots de passe aide à protéger vos informations personnelles et professionnelles contre les menaces en ligne.', 'gestionnaire_de_mdp.png'),
(3, 5, 'Initiation Cyber', 'La cybersécurité est essentielle pour protéger les systèmes informatiques et les données contre les menaces en ligne. Ce cours couvre les bases de la cybersécurité, les menaces principales et les bonnes pratiques. La cybersécurité protège contre les malwares, les attaques DDoS et les piratages, et assure la confidentialité et l\'intégrité des informations. Les menaces incluent les malwares diffusés via des sites infectés ou des emails, le piratage exploitant des vulnérabilités, et le phishing visant à voler des informations personnelles. Les principes de base comprennent la mise à jour des logiciels pour corriger les failles de sécurité, l\'utilisation de mots de passe forts et uniques, et l\'authentification à deux facteurs pour ajouter une couche de sécurité. Les bonnes pratiques incluent la sensibilisation aux menaces et la sauvegarde régulière des données sur des supports externes sécurisés. En appliquant ces principes, vous pouvez réduire les risques d\'attaques et protéger vos informations.', 'cyber.png'),
(4, 2, 'L\'Authentification à Deux Facteurs', 'L\'authentification à deux facteurs (2FA) ajoute une couche de sécurité à vos comptes en ligne en demandant un code unique en plus de votre mot de passe. Les méthodes incluent SMS, applications d\'authentification, clés de sécurité et biométrie. La 2FA réduit les risques d\'accès non autorisé, protège en cas de fuite de mots de passe et rend les tentatives de phishing plus difficiles. Pour l\'activer, allez dans les paramètres de sécurité de votre compte, choisissez une méthode de vérification et suivez les instructions. Utilisez la 2FA pour chaque connexion pour renforcer la sécurité de vos informations en ligne.', '2FA.png'),
(5, 5, 'Malware', 'Les malwares sont des programmes conçus pour causer des dommages ou voler des données, incluant virus, vers, chevaux de Troie, ransomwares, spywares et adwares. Ils se propagent par e-mails de phishing, téléchargements malveillants, failles de sécurité et dispositifs USB infectés. Pour se protéger, utilisez des logiciels de sécurité, mettez à jour vos logiciels, soyez prudent en ligne, utilisez des pare-feux et sauvegardez vos données. Comprendre les malwares et prendre des mesures de protection réduit les risques d\'infection et protège vos systèmes et données.', 'malware.png'),
(6, 5, 'Piratage', 'Le piratage informatique exploite les failles des systèmes pour accéder illégalement à des données. Les types incluent le piratage de réseaux, de systèmes, d\'applications web et par ingénierie sociale. Les techniques incluent l\'exploitation de vulnérabilités, l\'ingénierie inverse, les attaques par force brute et le phishing. Conséquences : perte de données, sabotage de systèmes, violation de confidentialité, poursuites légales. Pour prévenir : mettre à jour les logiciels, utiliser des mots de passe forts, former en sécurité informatique, et utiliser des pare-feu et logiciels de sécurité. Ces mesures réduisent les risques d\'attaques.', 'piratage.png'),
(7, 5, 'Ingenierie sociale', 'L\'ingénierie sociale manipule les individus pour obtenir des informations sensibles ou contourner la sécurité des systèmes. Basée sur des principes psychologiques, elle utilise des techniques telles que le phishing ou les attaques téléphoniques. Ces pratiques posent des défis éthiques et menacent la vie privée, la sécurité et la confiance. Pour contrer ces menaces, la sensibilisation, les politiques de sécurité strictes, la formation et l\'utilisation de technologies de sécurité sont essentielles. En adoptant ces mesures, les organisations et les individus peuvent mieux se protéger contre les attaques d\'ingénierie sociale, renforçant ainsi la sécurité de leurs données et systèmes.', 'ingenierie_sociale.png'),
(8, 5, 'Phishing', 'Le phishing, une tactique d\'escroquerie en ligne, vise à voler des informations personnelles ou financières en imitant des entreprises légitimes. Utilisant des courriels, des SMS, des appels téléphoniques ou des réseaux sociaux, les fraudeurs incitent les utilisateurs à divulguer leurs données sensibles. Pour se protéger, l\'éducation des utilisateurs, la vérification de l\'authenticité des demandes, les mises à jour logicielles, l\'utilisation de l\'authentification à deux facteurs et la surveillance des activités suspectes sont essentielles. En comprenant les techniques de phishing et en adoptant des mesures préventives, les utilisateurs peuvent réduire efficacement les risques d\'être victimes de cette forme d\'attaque en ligne.', 'phishing.png');

-- --------------------------------------------------------

--
-- Structure de la table `mes_formations`
--

DROP TABLE IF EXISTS `mes_formations`;
CREATE TABLE IF NOT EXISTS `mes_formations` (
  `id_formation` int NOT NULL,
  `id_utilisateur` int NOT NULL,
  KEY `id_formation` (`id_formation`),
  KEY `id_utilisateur` (`id_utilisateur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `mes_formations`
--

INSERT INTO `mes_formations` (`id_formation`, `id_utilisateur`) VALUES
(1, 1),
(1, 4),
(2, 4);

-- --------------------------------------------------------

--
-- Structure de la table `quizz`
--

DROP TABLE IF EXISTS `quizz`;
CREATE TABLE IF NOT EXISTS `quizz` (
  `id_quizz` int NOT NULL AUTO_INCREMENT,
  `id_formation` int NOT NULL,
  `question1` varchar(30) NOT NULL,
  `question2` varchar(30) NOT NULL,
  `question3` varchar(30) NOT NULL,
  `question4` varchar(30) NOT NULL,
  `question5` varchar(30) NOT NULL,
  `question6` varchar(30) NOT NULL,
  `question7` varchar(30) NOT NULL,
  `question8` varchar(30) NOT NULL,
  `question9` varchar(30) NOT NULL,
  `question10` varchar(30) NOT NULL,
  `reponse1` varchar(30) NOT NULL,
  `reponse2` varchar(30) NOT NULL,
  `reponse3` varchar(30) NOT NULL,
  `reponse4` varchar(30) NOT NULL,
  `reponse5` varchar(30) NOT NULL,
  `reponse6` varchar(30) NOT NULL,
  `reponse7` varchar(30) NOT NULL,
  `reponse8` varchar(30) NOT NULL,
  `reponse9` varchar(30) NOT NULL,
  `reponse10` varchar(30) NOT NULL,
  PRIMARY KEY (`id_quizz`),
  UNIQUE KEY `id_formation` (`id_formation`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `quizz`
--

INSERT INTO `quizz` (`id_quizz`, `id_formation`, `question1`, `question2`, `question3`, `question4`, `question5`, `question6`, `question7`, `question8`, `question9`, `question10`, `reponse1`, `reponse2`, `reponse3`, `reponse4`, `reponse5`, `reponse6`, `reponse7`, `reponse8`, `reponse9`, `reponse10`) VALUES
(1, 1, 'question1', 'question2', 'question3', 'question4', 'question5', 'question6', 'question7', 'question8', 'question9', 'question10', 'reponse1', 'reponse2', 'reponse3', 'reponse4', 'reponse5', 'reponse6', 'reponse7', 'reponse8', 'reponse9', 'reponse10');

-- --------------------------------------------------------

--
-- Structure de la table `quizz_question`
--

DROP TABLE IF EXISTS `quizz_question`;
CREATE TABLE IF NOT EXISTS `quizz_question` (
  `id_question` int NOT NULL AUTO_INCREMENT,
  `id_formation` int NOT NULL,
  `libelleQ` varchar(50) NOT NULL,
  `niveau` int NOT NULL,
  PRIMARY KEY (`id_question`),
  KEY `id_formation` (`id_formation`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `quizz_question`
--

INSERT INTO `quizz_question` (`id_question`, `id_formation`, `libelleQ`, `niveau`) VALUES
(1, 1, 'Que fait 1 + 1 ?', 0),
(2, 1, 'c est quoi la cyber', 0);

-- --------------------------------------------------------

--
-- Structure de la table `quizz_reponse`
--

DROP TABLE IF EXISTS `quizz_reponse`;
CREATE TABLE IF NOT EXISTS `quizz_reponse` (
  `id_reponse` int NOT NULL AUTO_INCREMENT,
  `id_question` int NOT NULL,
  `libelleR` varchar(50) NOT NULL,
  `verite` int NOT NULL,
  PRIMARY KEY (`id_reponse`),
  KEY `id_question` (`id_question`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `quizz_reponse`
--

INSERT INTO `quizz_reponse` (`id_reponse`, `id_question`, `libelleR`, `verite`) VALUES
(1, 1, '2', 1),
(2, 1, '5', 0),
(3, 1, '7', 0),
(4, 1, '8', 0);

-- --------------------------------------------------------

--
-- Structure de la table `thematique`
--

DROP TABLE IF EXISTS `thematique`;
CREATE TABLE IF NOT EXISTS `thematique` (
  `id_thematique` int NOT NULL AUTO_INCREMENT,
  `nom_thematique` varchar(30) NOT NULL,
  `description` longtext NOT NULL,
  `URL` varchar(30) NOT NULL,
  `disposition` int NOT NULL,
  PRIMARY KEY (`id_thematique`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `thematique`
--

INSERT INTO `thematique` (`id_thematique`, `nom_thematique`, `description`, `URL`, `disposition`) VALUES
(2, 'Bonne pratique', 'Adopter de bonnes pratiques en matière de gestion des mots de passe et d\'authentification réduit les risques de cyberattaques. Apprenez à créer des mots de passe robustes en utilisant des combinaisons de lettres, de chiffres et de caractères spéciaux. Utilisez des gestionnaires de mots de passe comme LastPass pour stocker et gérer vos mots de passe en toute sécurité. Activez l\'authentification à deux facteurs (2FA) sur vos comptes importants en utilisant des applications de génération de codes comme Google Authenticator pour une protection supplémentaire.', 'bonne_pratique.png', 0),
(5, 'Menaces', 'Se former aux menaces numériques est essentiel pour protéger les informations sensibles. Apprenez les bases de la cybersécurité pour comprendre les principales menaces. Comprenez les logiciels malveillants (malwares) comme les virus et les ransomwares, et comment les identifier et les prévenir. Explorez les techniques de piratage et les bonnes pratiques pour sécuriser les réseaux. Découvrez comment l\'ingénierie sociale manipule les individus pour obtenir des informations sensibles et comment se protéger. Apprenez à reconnaître et à prévenir les attaques de phishing pour éviter le vol d\'informations personnelles.', 'menaces.png', 0);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_utilisateur` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mdp` varchar(30) NOT NULL,
  `mdp_verif` varchar(30) NOT NULL,
  `date_naissance` date NOT NULL,
  `niveau_etude` varchar(30) NOT NULL,
  PRIMARY KEY (`id_utilisateur`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `nom`, `prenom`, `email`, `mdp`, `mdp_verif`, `date_naissance`, `niveau_etude`) VALUES
(4, 'Pasquer', 'Marianne', 'veyrat.marine@gmail.com', '123', '123', '2024-04-25', 'jsp');

--
-- Déclencheurs `utilisateur`
--
DROP TRIGGER IF EXISTS `verifMdp`;
DELIMITER $$
CREATE TRIGGER `verifMdp` BEFORE INSERT ON `utilisateur` FOR EACH ROW BEGIN

   if (new.mdp) <> (new.mdp_verif) 
        then signal sqlstate '45000'
        set message_text = 'Mot de passe non identiques';
    end if;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE IF NOT EXISTS `video` (
  `id_video` int NOT NULL AUTO_INCREMENT,
  `id_formation` int NOT NULL,
  `url` longtext NOT NULL,
  PRIMARY KEY (`id_video`),
  KEY `id_formation` (`id_formation`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `video`
--

INSERT INTO `video` (`id_video`, `id_formation`, `url`) VALUES
(1, 1, 'https://www.youtube.com/embed/kDehTEEoFnE');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `vue_cours`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `vue_cours`;
CREATE TABLE IF NOT EXISTS `vue_cours` (
`nom_formation` varchar(60)
,`id_formation` int
,`id_cours` int
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `vue_formations`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `vue_formations`;
CREATE TABLE IF NOT EXISTS `vue_formations` (
`nom_formation` varchar(60)
,`id_formation` int
,`id_utilisateur` int
);

-- --------------------------------------------------------

--
-- Structure de la vue `vue_cours`
--
DROP TABLE IF EXISTS `vue_cours`;

DROP VIEW IF EXISTS `vue_cours`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vue_cours`  AS SELECT `f`.`nom_formation` AS `nom_formation`, `f`.`id_formation` AS `id_formation`, `c`.`id_cours` AS `id_cours` FROM (`formations` `f` join `cours` `c`) WHERE (`f`.`id_formation` = `c`.`id_formation`)  ;

-- --------------------------------------------------------

--
-- Structure de la vue `vue_formations`
--
DROP TABLE IF EXISTS `vue_formations`;

DROP VIEW IF EXISTS `vue_formations`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vue_formations`  AS SELECT `f`.`nom_formation` AS `nom_formation`, `m`.`id_formation` AS `id_formation`, `m`.`id_utilisateur` AS `id_utilisateur` FROM (`formations` `f` join `mes_formations` `m`) WHERE (`f`.`id_formation` = `m`.`id_formation`)  ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
