-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2022 at 03:43 PM
-- Server version: 5.5.10
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `location`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `ncin` varchar(8) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `tel` varchar(8) NOT NULL,
  PRIMARY KEY (`ncin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`ncin`, `nom`, `prenom`, `tel`) VALUES
('11111111', 'abidi', 'anis', '99999999'),
('11111122', 'louiz', 'radhia', '88888888');

-- --------------------------------------------------------

--
-- Table structure for table `louer`
--

CREATE TABLE IF NOT EXISTS `louer` (
  `ncin` varchar(8) NOT NULL,
  `imat` varchar(9) NOT NULL,
  `dateloc` datetime NOT NULL,
  `dateret` datetime NOT NULL,
  PRIMARY KEY (`dateloc`),
  KEY `ncin` (`ncin`,`imat`),
  KEY `imat` (`imat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `louer`
--

INSERT INTO `louer` (`ncin`, `imat`, `dateloc`, `dateret`) VALUES
('11111111', '250TU3998', '2021-05-01 00:00:00', '2021-05-04 00:00:00'),
('11111111', '251TU8721', '2022-01-13 00:00:00', '2000-01-01 00:00:00'),
('11111122', '254TU352', '2022-01-14 00:00:00', '2000-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `voiteur`
--

CREATE TABLE IF NOT EXISTS `voiteur` (
  `imat` varchar(9) NOT NULL,
  `model` varchar(20) NOT NULL,
  `prixloc` int(11) NOT NULL,
  `disponible` enum('D','N') NOT NULL,
  PRIMARY KEY (`imat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voiteur`
--

INSERT INTO `voiteur` (`imat`, `model`, `prixloc`, `disponible`) VALUES
('250TU3998', 'clio', 90, 'D'),
('251TU8721', 'Q8', 300, 'N'),
('254TU352', 'RIO', 100, 'N');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `louer`
--
ALTER TABLE `louer`
  ADD CONSTRAINT `louer_ibfk_2` FOREIGN KEY (`ncin`) REFERENCES `client` (`ncin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `louer_ibfk_1` FOREIGN KEY (`imat`) REFERENCES `voiteur` (`imat`) ON DELETE CASCADE ON UPDATE CASCADE;
