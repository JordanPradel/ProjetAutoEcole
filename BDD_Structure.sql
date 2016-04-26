-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 26 Avril 2016 à 14:25
-- Version du serveur :  5.6.16
-- Version de PHP :  5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `3sylauto`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `cliNum` int(11) NOT NULL AUTO_INCREMENT,
  `cliNom` varchar(25) NOT NULL,
  `cliPrenom` varchar(25) NOT NULL,
  `cliAdr` varchar(100) NOT NULL,
  `cliCP` char(5) NOT NULL,
  `cliVille` varchar(100) NOT NULL,
  `cliTelFixe` varchar(10) NOT NULL,
  `cliTelMob` varchar(10) NOT NULL,
  PRIMARY KEY (`cliNum`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

CREATE TABLE IF NOT EXISTS `eleve` (
  `eleveNum` int(6) NOT NULL AUTO_INCREMENT,
  `eleveNom` varchar(25) NOT NULL,
  `elevePrenom` varchar(25) NOT NULL,
  `eleveAdr` varchar(100) NOT NULL,
  `eleveCP` char(5) NOT NULL,
  `eleveVille` varchar(100) NOT NULL,
  `eleveNaiss` date NOT NULL,
  `eleveTelFixe` varchar(10) NOT NULL,
  `eleveTelMob` varchar(10) NOT NULL,
  `cliNum` int(11) NOT NULL,
  `moniNum` int(11) NOT NULL,
  `formNum` int(11) NOT NULL,
  PRIMARY KEY (`eleveNum`),
  KEY `cliNum` (`cliNum`),
  KEY `moniNum` (`moniNum`),
  KEY `formNum` (`formNum`),
  KEY `formNum_2` (`formNum`),
  KEY `moniNum_2` (`moniNum`),
  KEY `cliNum_2` (`cliNum`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `examen`
--

CREATE TABLE IF NOT EXISTS `examen` (
  `examNum` int(11) NOT NULL AUTO_INCREMENT,
  `examDate` date NOT NULL,
  `examType` varchar(50) NOT NULL,
  PRIMARY KEY (`examNum`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `formule`
--

CREATE TABLE IF NOT EXISTS `formule` (
  `formNum` int(11) NOT NULL AUTO_INCREMENT,
  `formForfait` int(11) NOT NULL,
  `formNbTickets` int(11) NOT NULL,
  `formPrixUnitaireTicket` int(11) NOT NULL,
  PRIMARY KEY (`formNum`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `inscription_examen`
--

CREATE TABLE IF NOT EXISTS `inscription_examen` (
  `eleveNum` int(11) NOT NULL,
  `examNum` int(11) NOT NULL,
  UNIQUE KEY `eleveNum_3` (`eleveNum`),
  UNIQUE KEY `examDate_3` (`examNum`),
  KEY `eleveNum` (`eleveNum`),
  KEY `examDate` (`examNum`),
  KEY `examDate_2` (`examNum`),
  KEY `eleveNum_2` (`eleveNum`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

-- --------------------------------------------------------

--
-- Structure de la table `lecon_code`
--

CREATE TABLE IF NOT EXISTS `lecon_code` (
  `codeNum` int(11) NOT NULL AUTO_INCREMENT,
  `codeDate` date NOT NULL,
  `codeHeure` time NOT NULL,
  PRIMARY KEY (`codeNum`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `lecon_conduite`
--

CREATE TABLE IF NOT EXISTS `lecon_conduite` (
  `leconNum` int(11) NOT NULL AUTO_INCREMENT,
  `leconDate` date NOT NULL,
  `leconHeure` time NOT NULL,
  `eleveNum` int(11) NOT NULL,
  `moniNum` int(11) NOT NULL,
  PRIMARY KEY (`leconNum`),
  KEY `eleveNum` (`eleveNum`),
  KEY `moniNum` (`moniNum`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE IF NOT EXISTS `marque` (
  `marqueNum` int(11) NOT NULL AUTO_INCREMENT,
  `marqueNom` varchar(50) NOT NULL,
  PRIMARY KEY (`marqueNum`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `modele`
--

CREATE TABLE IF NOT EXISTS `modele` (
  `modeleNum` int(11) NOT NULL AUTO_INCREMENT,
  `modeleNom` varchar(50) NOT NULL,
  `marqueNum` int(11) NOT NULL,
  PRIMARY KEY (`modeleNum`),
  KEY `marqueNom` (`marqueNum`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `moniteur`
--

CREATE TABLE IF NOT EXISTS `moniteur` (
  `moniNum` int(11) NOT NULL AUTO_INCREMENT,
  `moniNom` varchar(25) NOT NULL,
  `moniPrenom` varchar(25) NOT NULL,
  `moniAdr` varchar(100) NOT NULL,
  `moniCP` char(5) NOT NULL,
  `moniVille` varchar(100) NOT NULL,
  `voitNum` int(11) NOT NULL,
  PRIMARY KEY (`moniNum`),
  KEY `voitNum` (`voitNum`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `resultat_examen`
--

CREATE TABLE IF NOT EXISTS `resultat_examen` (
  `eleveNum` int(11) NOT NULL,
  `examNum` int(11) NOT NULL,
  `resultat` tinyint(1) NOT NULL,
  KEY `examType` (`examNum`),
  KEY `eleveNum` (`eleveNum`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `utilNum` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(25) NOT NULL,
  `mdp` varchar(25) NOT NULL,
  `profil` varchar(50) NOT NULL,
  PRIMARY KEY (`utilNum`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE IF NOT EXISTS `voiture` (
  `voitNum` int(11) NOT NULL AUTO_INCREMENT,
  `voitImmat` char(7) NOT NULL,
  `voitKm` int(7) NOT NULL,
  `modeleNum` int(11) NOT NULL,
  PRIMARY KEY (`voitNum`),
  KEY `modeleNom` (`modeleNum`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii AUTO_INCREMENT=1 ;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `eleve`
--
ALTER TABLE `eleve`
  ADD CONSTRAINT `fk_eleveClient` FOREIGN KEY (`cliNum`) REFERENCES `client` (`cliNum`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_eleveFormule` FOREIGN KEY (`formNum`) REFERENCES `formule` (`formNum`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_eleveMoni` FOREIGN KEY (`moniNum`) REFERENCES `moniteur` (`moniNum`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `inscription_examen`
--
ALTER TABLE `inscription_examen`
  ADD CONSTRAINT `fk_inscExamEleve` FOREIGN KEY (`eleveNum`) REFERENCES `eleve` (`eleveNum`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_inscExamExam` FOREIGN KEY (`examNum`) REFERENCES `examen` (`examNum`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `lecon_conduite`
--
ALTER TABLE `lecon_conduite`
  ADD CONSTRAINT `fk_conduiteEleve` FOREIGN KEY (`eleveNum`) REFERENCES `eleve` (`eleveNum`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_conduiteMoni` FOREIGN KEY (`moniNum`) REFERENCES `moniteur` (`moniNum`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `modele`
--
ALTER TABLE `modele`
  ADD CONSTRAINT `fk_modeleMarque` FOREIGN KEY (`marqueNum`) REFERENCES `marque` (`marqueNum`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `moniteur`
--
ALTER TABLE `moniteur`
  ADD CONSTRAINT `fk_moniVoit` FOREIGN KEY (`voitNum`) REFERENCES `voiture` (`voitNum`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `resultat_examen`
--
ALTER TABLE `resultat_examen`
  ADD CONSTRAINT `fk_eleveResExam` FOREIGN KEY (`eleveNum`) REFERENCES `eleve` (`eleveNum`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_examResExam` FOREIGN KEY (`examNum`) REFERENCES `examen` (`examNum`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `voiture`
--
ALTER TABLE `voiture`
  ADD CONSTRAINT `fk_modeleVoit` FOREIGN KEY (`modeleNum`) REFERENCES `modele` (`modeleNum`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
