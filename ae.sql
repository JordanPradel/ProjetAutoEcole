-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 17 Mai 2016 à 19:27
-- Version du serveur :  5.6.20-log
-- Version de PHP :  5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `ae`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
`cliNum` int(11) NOT NULL,
  `cliNom` varchar(25) NOT NULL,
  `cliPrenom` varchar(25) NOT NULL,
  `cliAdr` varchar(100) NOT NULL,
  `cliCP` char(5) NOT NULL,
  `cliVille` varchar(100) NOT NULL,
  `cliTelFixe` varchar(10) NOT NULL,
  `cliTelMob` varchar(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=ascii AUTO_INCREMENT=10 ;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`cliNum`, `cliNom`, `cliPrenom`, `cliAdr`, `cliCP`, `cliVille`, `cliTelFixe`, `cliTelMob`) VALUES
(1, 'Pradel', 'Jordan', '42 Boulevard Paul Ramadier', '12000', 'Rodez', '0565422104', '0633922807'),
(2, 'Menz', 'Jan-OIe', '12 Avenue du Colibri', '12000', 'Rodez', '0565452145', '0635457481'),
(3, 'Serene', 'Guilhem', '20 Rue du Flamand Rose', '12000', 'Rodez', '0565421457', '0632147854'),
(4, 'Salandini', 'Steven', '21 Rue des flaques nuageuses', '12000', 'Rodez', '0565414245', '0652451457'),
(5, 'Peremarty', 'Colin', '45 Avenue du general Pixou', '12000', 'Le monastere', '0565451425', '0654145214'),
(6, 'Naipasgrand', 'Kirikou', '07 Rue des gamins badass', '12100', 'Druelle', '0565451454', '0652898745'),
(7, 'Thuron', 'Alexandre', '32 Avenue Tarayre', '12000', 'Rodez', '0565424785', '0652454784'),
(8, 'Lacaze', 'Charlie', '23 Rue de la drague', '12000', 'Rodez', '0565232142', '0652547895'),
(9, 'Mathou', 'Bastien', '10 Avenue de Bourran', '12000', 'Rodez', '0565421454', '0632547854');

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

CREATE TABLE IF NOT EXISTS `eleve` (
`eleveNum` int(6) NOT NULL,
  `eleveNom` varchar(25) NOT NULL,
  `elevePrenom` varchar(25) NOT NULL,
  `eleveAdr` varchar(100) NOT NULL,
  `eleveCP` char(5) NOT NULL,
  `eleveVille` varchar(100) NOT NULL,
  `eleveNaiss` date NOT NULL,
  `eleveTelFixe` varchar(10) NOT NULL,
  `eleveTelMob` varchar(10) NOT NULL,
  `eleveNbTickets` int(11) NOT NULL,
  `cliNum` int(11) NOT NULL,
  `moniNum` int(11) NOT NULL,
  `formNum` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=ascii AUTO_INCREMENT=13 ;

--
-- Contenu de la table `eleve`
--

INSERT INTO `eleve` (`eleveNum`, `eleveNom`, `elevePrenom`, `eleveAdr`, `eleveCP`, `eleveVille`, `eleveNaiss`, `eleveTelFixe`, `eleveTelMob`, `eleveNbTickets`, `cliNum`, `moniNum`, `formNum`) VALUES
(2, 'Lacaze', 'Charlie', '23 Rue de la drague', '12000', 'Rodez', '1993-04-30', '0565232142', '0652547895', 0, 8, 1, 1),
(3, 'Mathou', 'Bastien', '10 Avenue de Bourran', '12000', 'Rodez', '1992-04-21', '0565421454', '0632547854', 0, 9, 2, 2),
(4, 'Zamburger', 'Michel', '04 Rue du barbare mangeable', '12000', 'Rodez', '1920-01-01', '0565478954', '0632547895', 0, 1, 1, 3),
(5, 'Leonheart', 'Squall', '13e chambre', '00005', 'BGU', '1997-01-24', '0565457458', '0632145689', 0, 1, 2, 2),
(6, 'Dintch', 'Zell', 'Chez sa mere', '00005', 'Balamb city', '1997-02-14', '0565241478', '0632541254', 0, 1, 4, 2),
(7, 'Germany', 'Friedriechdorf', '4e maison', '01210', 'German Village', '1994-05-21', '0565414521', '0632545789', 0, 2, 5, 1),
(8, 'Cheyenne', 'Prostida', '1e appartement', '12000', 'Rodez', '1993-05-20', '0565245784', '0633254789', 0, 3, 6, 3),
(9, 'Kam', 'Asutra', '1e trou', '12000', 'Derriere', '1992-01-21', '0565421454', '0635988777', 0, 4, 7, 2),
(10, 'Kam', 'Amber', '1e trou', '12000', 'Derriere', '1992-01-20', '0565414578', '0322255444', 0, 4, 6, 2),
(11, 'Time', 'Vincent', 'Rue de l''oseille', '12000', 'Pascher', '1994-02-21', '0565477778', '0622255477', 0, 5, 4, 3),
(12, 'Naipasgrand', 'Kirikou', '07 Rue des gamins badass', '12100', 'Druelle', '1979-01-24', '0565451454', '0652898745', 0, 6, 5, 3);

-- --------------------------------------------------------

--
-- Structure de la table `examen`
--

CREATE TABLE IF NOT EXISTS `examen` (
`examNum` int(11) NOT NULL,
  `examDate` date NOT NULL,
  `examType` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=ascii AUTO_INCREMENT=3 ;

--
-- Contenu de la table `examen`
--

INSERT INTO `examen` (`examNum`, `examDate`, `examType`) VALUES
(1, '2016-05-30', 'Permis B'),
(2, '2016-06-22', 'Examen du code');

-- --------------------------------------------------------

--
-- Structure de la table `formule`
--

CREATE TABLE IF NOT EXISTS `formule` (
`formNum` int(11) NOT NULL,
  `formForfait` int(11) NOT NULL,
  `formNbTickets` int(11) NOT NULL,
  `formPrixUnitaireTicket` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=ascii AUTO_INCREMENT=4 ;

--
-- Contenu de la table `formule`
--

INSERT INTO `formule` (`formNum`, `formForfait`, `formNbTickets`, `formPrixUnitaireTicket`) VALUES
(1, 400, 0, 50),
(2, 1200, 20, 45),
(3, 1600, 30, 45);

-- --------------------------------------------------------

--
-- Structure de la table `inscription_examen`
--

CREATE TABLE IF NOT EXISTS `inscription_examen` (
`inscExamNum` int(11) NOT NULL,
  `eleveNum` int(11) NOT NULL,
  `examNum` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=ascii AUTO_INCREMENT=16 ;

--
-- Contenu de la table `inscription_examen`
--

INSERT INTO `inscription_examen` (`inscExamNum`, `eleveNum`, `examNum`) VALUES
(5, 2, 2),
(6, 3, 2),
(7, 4, 1),
(8, 5, 1),
(9, 6, 1),
(10, 7, 2),
(11, 8, 2),
(12, 9, 2),
(13, 10, 1),
(14, 11, 1),
(15, 12, 1);

-- --------------------------------------------------------

--
-- Structure de la table `lecon_code`
--

CREATE TABLE IF NOT EXISTS `lecon_code` (
`codeNum` int(11) NOT NULL,
  `codeDate` date NOT NULL,
  `codeHeure` time NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=ascii AUTO_INCREMENT=17 ;

--
-- Contenu de la table `lecon_code`
--

INSERT INTO `lecon_code` (`codeNum`, `codeDate`, `codeHeure`) VALUES
(1, '2016-04-04', '17:00:00'),
(2, '2016-04-05', '17:00:00'),
(3, '2016-04-06', '17:00:00'),
(4, '2016-04-07', '17:00:00'),
(5, '2016-04-08', '17:00:00'),
(6, '2016-04-09', '14:00:00'),
(7, '0000-00-00', '00:00:00'),
(8, '2016-05-13', '08:00:00'),
(9, '2016-05-13', '09:00:00'),
(10, '2016-05-13', '10:00:00'),
(11, '2016-05-13', '14:00:00'),
(12, '2016-05-13', '15:00:00'),
(13, '2016-05-13', '16:00:00'),
(14, '2016-05-14', '14:00:00'),
(15, '2016-05-14', '15:00:00'),
(16, '2016-05-14', '16:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `lecon_conduite`
--

CREATE TABLE IF NOT EXISTS `lecon_conduite` (
`leconNum` int(11) NOT NULL,
  `leconDate` date NOT NULL,
  `leconHeure` time NOT NULL,
  `eleveNum` int(11) NOT NULL,
  `moniNum` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=ascii AUTO_INCREMENT=2 ;

--
-- Contenu de la table `lecon_conduite`
--

INSERT INTO `lecon_conduite` (`leconNum`, `leconDate`, `leconHeure`, `eleveNum`, `moniNum`) VALUES
(1, '2016-05-12', '08:30:00', 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE IF NOT EXISTS `marque` (
`marqueNum` int(11) NOT NULL,
  `marqueNom` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=ascii AUTO_INCREMENT=2 ;

--
-- Contenu de la table `marque`
--

INSERT INTO `marque` (`marqueNum`, `marqueNom`) VALUES
(1, 'Peugeot');

-- --------------------------------------------------------

--
-- Structure de la table `modele`
--

CREATE TABLE IF NOT EXISTS `modele` (
`modeleNum` int(11) NOT NULL,
  `modeleNom` varchar(50) NOT NULL,
  `marqueNum` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=ascii AUTO_INCREMENT=2 ;

--
-- Contenu de la table `modele`
--

INSERT INTO `modele` (`modeleNum`, `modeleNom`, `marqueNum`) VALUES
(1, '206', 1);

-- --------------------------------------------------------

--
-- Structure de la table `moniteur`
--

CREATE TABLE IF NOT EXISTS `moniteur` (
`moniNum` int(11) NOT NULL,
  `moniNom` varchar(25) NOT NULL,
  `moniPrenom` varchar(25) NOT NULL,
  `moniAdr` varchar(100) NOT NULL,
  `moniCP` char(5) NOT NULL,
  `moniVille` varchar(100) NOT NULL,
  `moniTelFixe` varchar(10) NOT NULL,
  `moniTelMob` varchar(10) NOT NULL,
  `voitNum` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=ascii AUTO_INCREMENT=8 ;

--
-- Contenu de la table `moniteur`
--

INSERT INTO `moniteur` (`moniNum`, `moniNom`, `moniPrenom`, `moniAdr`, `moniCP`, `moniVille`, `moniTelFixe`, `moniTelMob`, `voitNum`) VALUES
(1, 'Kenobi', 'Obiwan', 'Quelque part dans l''espace', '00000', 'Laville', '0565412414', '0632547854', 1),
(2, 'Sparrow', 'Jack', 'Sous l''ocean', '00000', 'Laville', '0565687856', '0654898498', 2),
(3, 'Lanister', 'Jamie', 'Le chateau', '00001', 'Port Real', '0565485684', '0687498954', 3),
(4, 'Jones', 'Indiana', 'Dans la jungle, terrible jungle', '00000', 'Laville', '0565456487', '0632578955', 4),
(5, 'Kent', 'Clark', 'Partout en quelques secondes', '00002', 'Partout en quelques secondes', '0565321215', '0645652416', 5),
(6, 'Willis', 'Bruce', 'Ipikai', '00004', 'Povkon', '0565456878', '0612354321', 6),
(7, 'Smith', 'Will', 'Il est une legende', '00000', 'Toutseul', '0565213857', '0621565511', 7);

-- --------------------------------------------------------

--
-- Structure de la table `resultat_examen`
--

CREATE TABLE IF NOT EXISTS `resultat_examen` (
  `eleveNum` int(11) NOT NULL,
  `examNum` int(11) NOT NULL,
  `resultat` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

-- --------------------------------------------------------

--
-- Structure de la table `secretaire`
--

CREATE TABLE IF NOT EXISTS `secretaire` (
`secretNum` int(11) NOT NULL,
  `secretNom` varchar(25) NOT NULL,
  `secretPrenom` varchar(25) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `secretaire`
--

INSERT INTO `secretaire` (`secretNum`, `secretNom`, `secretPrenom`) VALUES
(1, 'Scarlett', 'Johansson');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
`utilNum` int(11) NOT NULL,
  `login` varchar(25) NOT NULL,
  `mdp` varchar(25) NOT NULL,
  `profil` varchar(50) NOT NULL,
  `identifiant` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=ascii AUTO_INCREMENT=4 ;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`utilNum`, `login`, `mdp`, `profil`, `identifiant`) VALUES
(1, 'eleve2', 'eleve2', 'eleve', 2),
(2, 'secretaire1', 'secretaire1', 'secretaire', 1),
(3, 'moniteur1', 'moniteur1', 'moniteur', 1);

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE IF NOT EXISTS `voiture` (
`voitNum` int(11) NOT NULL,
  `voitImmat` char(7) NOT NULL,
  `voitKm` int(7) NOT NULL,
  `modeleNum` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=ascii AUTO_INCREMENT=8 ;

--
-- Contenu de la table `voiture`
--

INSERT INTO `voiture` (`voitNum`, `voitImmat`, `voitKm`, `modeleNum`) VALUES
(1, 'AA111AA', 25453, 1),
(2, 'BB222BB', 34521, 1),
(3, 'CC333CC', 42104, 1),
(4, 'DD444DD', 85654, 1),
(5, 'EE555EE', 62354, 1),
(6, 'FF666FF', 12454, 1),
(7, 'GG777GG', 32149, 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
 ADD PRIMARY KEY (`cliNum`);

--
-- Index pour la table `eleve`
--
ALTER TABLE `eleve`
 ADD PRIMARY KEY (`eleveNum`), ADD KEY `cliNum` (`cliNum`), ADD KEY `moniNum` (`moniNum`), ADD KEY `formNum` (`formNum`), ADD KEY `formNum_2` (`formNum`), ADD KEY `moniNum_2` (`moniNum`), ADD KEY `cliNum_2` (`cliNum`);

--
-- Index pour la table `examen`
--
ALTER TABLE `examen`
 ADD PRIMARY KEY (`examNum`);

--
-- Index pour la table `formule`
--
ALTER TABLE `formule`
 ADD PRIMARY KEY (`formNum`);

--
-- Index pour la table `inscription_examen`
--
ALTER TABLE `inscription_examen`
 ADD PRIMARY KEY (`inscExamNum`), ADD KEY `eleveNum` (`eleveNum`), ADD KEY `examNum` (`examNum`);

--
-- Index pour la table `lecon_code`
--
ALTER TABLE `lecon_code`
 ADD PRIMARY KEY (`codeNum`);

--
-- Index pour la table `lecon_conduite`
--
ALTER TABLE `lecon_conduite`
 ADD PRIMARY KEY (`leconNum`), ADD KEY `eleveNum` (`eleveNum`), ADD KEY `moniNum` (`moniNum`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
 ADD PRIMARY KEY (`marqueNum`);

--
-- Index pour la table `modele`
--
ALTER TABLE `modele`
 ADD PRIMARY KEY (`modeleNum`), ADD KEY `marqueNom` (`marqueNum`);

--
-- Index pour la table `moniteur`
--
ALTER TABLE `moniteur`
 ADD PRIMARY KEY (`moniNum`), ADD KEY `voitNum` (`voitNum`);

--
-- Index pour la table `resultat_examen`
--
ALTER TABLE `resultat_examen`
 ADD KEY `examType` (`examNum`), ADD KEY `eleveNum` (`eleveNum`);

--
-- Index pour la table `secretaire`
--
ALTER TABLE `secretaire`
 ADD PRIMARY KEY (`secretNum`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
 ADD PRIMARY KEY (`utilNum`);

--
-- Index pour la table `voiture`
--
ALTER TABLE `voiture`
 ADD PRIMARY KEY (`voitNum`), ADD KEY `modeleNom` (`modeleNum`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
MODIFY `cliNum` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `eleve`
--
ALTER TABLE `eleve`
MODIFY `eleveNum` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `examen`
--
ALTER TABLE `examen`
MODIFY `examNum` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `formule`
--
ALTER TABLE `formule`
MODIFY `formNum` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `inscription_examen`
--
ALTER TABLE `inscription_examen`
MODIFY `inscExamNum` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `lecon_code`
--
ALTER TABLE `lecon_code`
MODIFY `codeNum` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `lecon_conduite`
--
ALTER TABLE `lecon_conduite`
MODIFY `leconNum` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `marque`
--
ALTER TABLE `marque`
MODIFY `marqueNum` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `modele`
--
ALTER TABLE `modele`
MODIFY `modeleNum` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `moniteur`
--
ALTER TABLE `moniteur`
MODIFY `moniNum` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `secretaire`
--
ALTER TABLE `secretaire`
MODIFY `secretNum` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
MODIFY `utilNum` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `voiture`
--
ALTER TABLE `voiture`
MODIFY `voitNum` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
