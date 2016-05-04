-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Machine: 127.0.0.1
-- Gegenereerd op: 04 mei 2016 om 12:13
-- Serverversie: 5.6.17
-- PHP-versie: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `digivet`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `table_animals`
--

CREATE TABLE IF NOT EXISTS `table_animals` (
  `id_animal` int(11) NOT NULL AUTO_INCREMENT,
  `animal_type` text NOT NULL,
  PRIMARY KEY (`id_animal`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Gegevens worden geëxporteerd voor tabel `table_animals`
--

INSERT INTO `table_animals` (`id_animal`, `animal_type`) VALUES
(1, 'cow'),
(2, 'sheep'),
(3, 'goat'),
(4, 'pig'),
(5, 'dog');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `table_animal_diseases`
--

CREATE TABLE IF NOT EXISTS `table_animal_diseases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_animal` int(11) NOT NULL,
  `animal_type` text NOT NULL,
  `disease` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Gegevens worden geëxporteerd voor tabel `table_animal_diseases`
--

INSERT INTO `table_animal_diseases` (`id`, `id_animal`, `animal_type`, `disease`) VALUES
(1, 1, 'cow', 'Plastic_bag'),
(2, 1, 'cow', 'Tetanus'),
(3, 1, 'cow', 'Tickborne'),
(4, 1, 'cow', 'Brucellosis'),
(5, 1, 'cow', 'Anthrax'),
(6, 1, 'cow', 'CBPP'),
(7, 1, 'cow', 'Black_leg'),
(8, 1, 'cow', 'Foot-and-mouth'),
(9, 1, 'cow', 'Dehydration'),
(10, 1, 'cow', 'Bovine_tuberculosis'),
(11, 1, 'cow', 'Pneumonia'),
(12, 2, 'sheep', 'PPR'),
(13, 2, 'sheep', 'Plastic_bag'),
(14, 2, 'sheep', 'Tetanus'),
(15, 2, 'sheep', 'Tickborne'),
(16, 2, 'sheep', 'Brucellosis'),
(17, 2, 'sheep', 'Anthrax'),
(18, 2, 'sheep', 'Black_leg'),
(19, 2, 'sheep', 'Foot-and-mouth'),
(20, 2, 'sheep', 'Dehydration'),
(21, 2, 'sheep', 'Bovine_tuberculosis'),
(22, 2, 'sheep', 'Pneumonia'),
(23, 3, 'goat', 'PPR'),
(24, 3, 'goat', 'Plastic_bag'),
(25, 3, 'goat', 'Tetanus'),
(26, 3, 'goat', 'Tickborne'),
(27, 3, 'goat', 'Brucellosis'),
(28, 3, 'goat', 'Foot-and-mouth'),
(29, 3, 'goat', 'Dehydration'),
(30, 3, 'goat', 'Bovine_tuberculosis'),
(31, 3, 'goat', 'Pneumonia'),
(32, 4, 'pig', 'Tetanus'),
(33, 4, 'pig', 'Tickborne'),
(34, 4, 'pig', 'Brucellosis'),
(35, 4, 'pig', 'Anthrax'),
(36, 4, 'pig', 'Foot-and-mouth'),
(37, 4, 'pig', 'Dehydration'),
(38, 4, 'pig', 'Bovine_tuberculosis'),
(39, 4, 'pig', 'Pneumonia'),
(40, 5, 'dog', 'Tetanus'),
(41, 5, 'dog', 'Tickborne'),
(42, 5, 'dog', 'Brucellosis'),
(43, 5, 'dog', 'Rabies'),
(44, 5, 'dog', 'Dehydration'),
(45, 5, 'dog', 'Bovine_tuberculosis'),
(46, 5, 'dog', 'Pneumonia');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `table_cow`
--

CREATE TABLE IF NOT EXISTS `table_cow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_general_question` int(11) NOT NULL,
  `question` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Gegevens worden geëxporteerd voor tabel `table_cow`
--

INSERT INTO `table_cow` (`id`, `id_general_question`, `question`) VALUES
(1, 3, 'Does your animal appear to have a hard ball in its stomach?'),
(2, 4, 'Does your animal suffer from spasms?'),
(3, 5, 'Does your animal shows signs of fatigue?'),
(4, 6, 'Did your animal give birth recently?'),
(5, 7, 'Does your animal have swollen testicles?'),
(6, 8, 'Does your animal suffer from convulsions?'),
(7, 9, 'Does your animal isolate itself from the herd?'),
(8, 10, 'Does your animal have a swelling on the thigh?'),
(9, 11, 'Does your animal have blisters on its feet?'),
(10, 12, 'Are the eyes of your animal sunken into the orbit?'),
(11, 13, 'Is your animal extremely thin?'),
(12, 14, 'Does your animal drop its head?');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `table_dog`
--

CREATE TABLE IF NOT EXISTS `table_dog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_general_question` int(11) NOT NULL,
  `question` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Gegevens worden geëxporteerd voor tabel `table_dog`
--

INSERT INTO `table_dog` (`id`, `id_general_question`, `question`) VALUES
(1, 4, 'Does your animal suffer from spasms?'),
(2, 5, 'Does your animal show signs of fatigue?'),
(3, 6, 'Did your animal give birth recently?'),
(4, 7, 'Does your animal have swollen testicles?'),
(5, 12, 'Are the eyes of your animal sunken into the orbit?'),
(6, 13, 'Is your animal extremely thin?'),
(7, 14, 'Does your animal drop its head?'),
(8, 15, 'Does your animal suffer from seizures?');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `table_general_question`
--

CREATE TABLE IF NOT EXISTS `table_general_question` (
  `id_general_question` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `audiofile` text NOT NULL,
  `symptom` text NOT NULL,
  `use_table` text NOT NULL,
  `disease` text NOT NULL,
  PRIMARY KEY (`id_general_question`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Gegevens worden geëxporteerd voor tabel `table_general_question`
--

INSERT INTO `table_general_question` (`id_general_question`, `question`, `audiofile`, `symptom`, `use_table`, `disease`) VALUES
(1, 'What kind of animal do you have?', 'sounds/animal_type.mp3', '', '', ''),
(2, 'Does your animal show signs of depression?', 'sounds/depression.mp3', 'depression', 'table_non_urgent_ppr', 'PPR'),
(3, 'Does your animal appear to have a hard ball in its stomach?', 'sounds/hardBallInStomach.mp3', 'hardBallInStomach', 'table_non_urgent_plastic_bag', 'Plastic_bag'),
(4, 'Does your animal suffer from spasms?', 'sounds/spasm.mp3', 'spasm', 'table_non_urgent_tetanus', 'Tetanus'),
(5, 'Does your animal shows signs of fatigue?', 'sounds/fatigue.mp3', 'fatigue', 'table_non_urgent_tickborne', 'Tickborne'),
(6, 'Did your animal give birth recently?', 'sounds/recent_birth.mp3', 'recent_birth', 'table_non_urgent_brucellosis', 'Brucellosis'),
(7, 'Does your animal have swollen testicles?', 'sounds/swollenTesticles.mp3', 'swollenTesticles', 'table_non_urgent_brucellosis', 'Brucellosis'),
(8, 'Does your animal suffer from convulsions?', 'sounds/convulsions.mp3', 'convulsions', 'table_non_urgent_anthrax', 'Anthrax'),
(9, 'Does your animal isolate itself from the herd?', 'sounds/isolateFromHerd.mp3', 'isolateFromHerd', 'table_non_urgent_cbpp', 'CBPP'),
(10, 'Does your animal have a swelling on the thigh?', 'sounds/swellingThigh.mp3', 'swellingThigh', 'table_non_urgent_black_leg', 'Black_leg'),
(11, 'Does your animal have blisters on its feet?', 'sounds/blistersFeet.mp3', 'blistersFeet', 'table_non_urgent_foot_mouth', 'Foot-and-mouth'),
(12, 'Are the eyes of your animals sunken into the orbit?', 'sounds/eyesInOrbit.mp3', 'eyesInOrbit', 'table_non_urgent_dehydration', 'Dehydration'),
(13, 'Is your animal extremely thin?', 'sounds/extremelyThin.mp3', 'extremelyThin', 'table_non_urgent_bovine_tuberculosis', 'Bovine_tuberculosis'),
(14, 'Does your animal drop its head?', 'sounds/dropHead.mp3', 'dropHead', 'table_non_urgent_pneumonia', 'Pneumonia'),
(15, 'Does your animal suffer from seizures?', 'sounds/seizures.mp3', 'seizures', 'table_non_urgent_rabies', 'Rabies');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `table_goat`
--

CREATE TABLE IF NOT EXISTS `table_goat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_general_question` int(11) NOT NULL,
  `question` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Gegevens worden geëxporteerd voor tabel `table_goat`
--

INSERT INTO `table_goat` (`id`, `id_general_question`, `question`) VALUES
(1, 2, 'Does your animal show signs of depression?'),
(2, 3, 'Does your animal appear to have a hard ball in its stomach?'),
(3, 4, 'Does your animal suffer from spasms?'),
(4, 5, 'Does your animal show signs of fatigue?'),
(5, 6, 'Did your animal give birth recently?'),
(6, 7, 'Does your animal have swollen testicles?'),
(7, 11, 'Does your animal have blisters on its feet?'),
(8, 12, 'Are the eyes of your animal sunken into the orbit?'),
(9, 13, 'Is your animal extremely thin?'),
(10, 14, 'Does your animal drop its head?');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `table_non_urgent_anthrax`
--

CREATE TABLE IF NOT EXISTS `table_non_urgent_anthrax` (
  `id_general_question` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `audiofile` text NOT NULL,
  `symptom` text NOT NULL,
  PRIMARY KEY (`id_general_question`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Gegevens worden geëxporteerd voor tabel `table_non_urgent_anthrax`
--

INSERT INTO `table_non_urgent_anthrax` (`id_general_question`, `question`, `audiofile`, `symptom`) VALUES
(1, 'Is your animal trembling more than usual?', 'sounds/trembling.mp3', 'trembling'),
(2, 'Does your animal have breathing difficulties?', 'sounds/difficultBreathing.mp3', 'difficultBreathing'),
(3, 'Did you observe blood coming out of the animal after its death?', 'sounds/bloodFromOpeningsAfterDeath.mp3', 'bloodFromOpeningsAfterDeath'),
(4, 'Does your animal have a higher temperature than usual?', 'sounds/highTemperature.mp3', 'highTemperature'),
(5, 'Did your animal die suddenly?', 'sounds/suddenDeath.mp3', 'suddenDeath'),
(6, 'Did your animal collapse in the past couple of days?', 'sounds/collapse.mp3', 'collapse');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `table_non_urgent_black_leg`
--

CREATE TABLE IF NOT EXISTS `table_non_urgent_black_leg` (
  `id_general_question` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `audiofile` text NOT NULL,
  `symptom` text NOT NULL,
  PRIMARY KEY (`id_general_question`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Gegevens worden geëxporteerd voor tabel `table_non_urgent_black_leg`
--

INSERT INTO `table_non_urgent_black_leg` (`id_general_question`, `question`, `audiofile`, `symptom`) VALUES
(1, 'Is your animal unwilling to move?', 'sounds/unwillingnessToMove.mp3', 'unwillingnessToMove'),
(2, 'Is your animal breathing more rapidly than usual?', 'sounds/rapidBreathing.mp3', 'rapidBreathing'),
(3, 'Do you observe signs of lameness in your animal?', 'sounds/lameness.mp3', 'lameness'),
(4, 'Does your animal have loss of appetite?', 'sounds/appetiteLoss.mp3', 'appetiteLoss'),
(5, 'Does your animal have a fever?', 'sounds/fever.mp3', 'fever');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `table_non_urgent_bovine_tuberculosis`
--

CREATE TABLE IF NOT EXISTS `table_non_urgent_bovine_tuberculosis` (
  `id_general_question` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `audiofile` text NOT NULL,
  `symptom` text NOT NULL,
  PRIMARY KEY (`id_general_question`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Gegevens worden geëxporteerd voor tabel `table_non_urgent_bovine_tuberculosis`
--

INSERT INTO `table_non_urgent_bovine_tuberculosis` (`id_general_question`, `question`, `audiofile`, `symptom`) VALUES
(1, 'Does your animal have swollen lymph nodes?', 'sounds/swollenLymphNodes.mp3', 'swollenLymphNodes'),
(2, 'Does your animal cough?', 'sounds/cough.mp3', 'cough'),
(3, 'Does your animal have a fever?', 'sounds/fever.mp3', 'fever'),
(4, 'Does your animal have loss of appetite?', 'sounds/appetiteLoss.mp3', 'appetiteLoss');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `table_non_urgent_brucellosis`
--

CREATE TABLE IF NOT EXISTS `table_non_urgent_brucellosis` (
  `id_general_question` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `audiofile` text NOT NULL,
  `symptom` text NOT NULL,
  PRIMARY KEY (`id_general_question`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Gegevens worden geëxporteerd voor tabel `table_non_urgent_brucellosis`
--

INSERT INTO `table_non_urgent_brucellosis` (`id_general_question`, `question`, `audiofile`, `symptom`) VALUES
(1, 'Did your animal have an abortion recently?', 'sounds/abortion.mp3', 'abortion'),
(2, 'Did your animal give birth to a weak calf recently?', 'sounds/weakCalfBorn.mp3', 'weakCalfBorn'),
(3, 'Did your animal give birth to a stillborn recently?', 'sounds/stillBorn.mp3', 'stillBorn'),
(4, 'Does your animal have a fever?', 'sounds/fever.mp3', 'fever'),
(5, 'Does your animal show signs of nervousness?', 'sounds/nervousness.mp3', 'nervousness'),
(6, 'Did you observe retention of the membranes after your animal gave birth?', 'sounds/retentionMembranes.mp3', 'retentionMembranes'),
(7, 'Did you observe infection of the membranes after your animal gave birth?', 'sounds/infectionMembranes.mp3', 'infectionMembranes');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `table_non_urgent_cbpp`
--

CREATE TABLE IF NOT EXISTS `table_non_urgent_cbpp` (
  `id_general_question` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `audiofile` text NOT NULL,
  `symptom` text NOT NULL,
  PRIMARY KEY (`id_general_question`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Gegevens worden geëxporteerd voor tabel `table_non_urgent_cbpp`
--

INSERT INTO `table_non_urgent_cbpp` (`id_general_question`, `question`, `audiofile`, `symptom`) VALUES
(1, 'Does your animal have breathing difficulties?', 'sounds/difficultBreathing.mp3', 'difficultBreathing'),
(2, 'Do you observe a loss in condition in your animal?', 'sounds/lossCondition.mp3', 'lossCondition'),
(3, 'Does your animal have a fever?', 'sounds/fever.mp3', 'fever'),
(4, 'Is your animal unwilling to move?', 'sounds/unwillingnessToMove.mp3', 'unwillingnessToMove'),
(5, 'Is there snot coming out of the nose of your animal?', 'sounds/snot.mp3', 'snot'),
(6, 'Does your animal have loss of appetite?', 'sounds/appetiteLoss.mp3', 'appetiteLoss');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `table_non_urgent_dehydration`
--

CREATE TABLE IF NOT EXISTS `table_non_urgent_dehydration` (
  `id_general_question` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `audiofile` text NOT NULL,
  `symptom` text NOT NULL,
  PRIMARY KEY (`id_general_question`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Gegevens worden geëxporteerd voor tabel `table_non_urgent_dehydration`
--

INSERT INTO `table_non_urgent_dehydration` (`id_general_question`, `question`, `audiofile`, `symptom`) VALUES
(1, 'Does your animal suffer from diarrhea?', 'sounds/diarrhea.mp3', 'diarrhea'),
(2, 'Does your animal drink less water than usual?', 'sounds/drinksLittle.mp3', 'drinksLittle'),
(3, 'Does your animal suffer from weight loss?', 'sounds/weightLoss.mp3', 'weightLoss');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `table_non_urgent_foot_mouth`
--

CREATE TABLE IF NOT EXISTS `table_non_urgent_foot_mouth` (
  `id_general_question` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `audiofile` text NOT NULL,
  `symptom` text NOT NULL,
  PRIMARY KEY (`id_general_question`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Gegevens worden geëxporteerd voor tabel `table_non_urgent_foot_mouth`
--

INSERT INTO `table_non_urgent_foot_mouth` (`id_general_question`, `question`, `audiofile`, `symptom`) VALUES
(1, 'Does your animal have quivering lips and a frothing mouth?', 'sounds/quiveringLipsAndFrothingMouth.mp3', 'quiveringLipsAndFrothingMouth'),
(2, 'Does your animal have blisters on its teats?', 'sounds/blistersTeats.mp3', 'blistersTeats'),
(3, 'Does your animal have blisters in its mouth?', 'sounds/blistersMouth.mp3', 'blistersMouth'),
(4, 'Does your animal suffer from weight loss?', 'sounds/weightLoss.mp3', 'weightLoss'),
(5, 'Do you observe signs of lameness in your animal?', 'sounds/lameness.mp3', 'lameness'),
(6, 'Did you observe a drop in the milk production?', 'sounds/dropMilkProduction.mp3', 'dropMilkProduction'),
(7, 'Does your animal have a fever?', 'sounds/fever.mp3', 'fever'),
(8, 'Does your animal have loss of appetite?', 'sounds/appetiteLoss.mp3', 'appetiteLoss');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `table_non_urgent_plastic_bag`
--

CREATE TABLE IF NOT EXISTS `table_non_urgent_plastic_bag` (
  `id_general_question` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `audiofile` text NOT NULL,
  `symptom` text NOT NULL,
  PRIMARY KEY (`id_general_question`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Gegevens worden geëxporteerd voor tabel `table_non_urgent_plastic_bag`
--

INSERT INTO `table_non_urgent_plastic_bag` (`id_general_question`, `question`, `audiofile`, `symptom`) VALUES
(1, 'Does your animal appear bloated?', 'sounds/bloat.mp3', 'bloat'),
(2, 'Does your animal drink more water than usual?', 'sounds/drinkingLotsOfWater.mp3', 'drinkingLotsOfWater'),
(3, 'Do you observe a loss in condition in your animal?', 'sounds/lossCondition.mp3', 'lossCondition'),
(4, 'Does your animal suffer from diarrhea?', 'sounds/diarrhea.mp3', 'diarrhea'),
(5, 'Does your animal show signs of fatigue?', 'sounds/fatigue.mp3', 'fatigue'),
(6, 'Does your animal suffer from weight loss?', 'sounds/weightLoss.mp3', 'weightLoss');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `table_non_urgent_pneumonia`
--

CREATE TABLE IF NOT EXISTS `table_non_urgent_pneumonia` (
  `id_general_question` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `audiofile` text NOT NULL,
  `symptom` text NOT NULL,
  PRIMARY KEY (`id_general_question`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Gegevens worden geëxporteerd voor tabel `table_non_urgent_pneumonia`
--

INSERT INTO `table_non_urgent_pneumonia` (`id_general_question`, `question`, `audiofile`, `symptom`) VALUES
(1, 'Does your animal cough?', 'sounds/cough.mp3', 'cough'),
(2, 'Is there snot coming out of the nose of your animal?', 'sounds/snot.mp3', 'snot'),
(3, 'Is your animal breathing more rapidly than usual?', 'sounds/rapidBreathing.mp3', 'rapidBreathing'),
(4, 'Does your animal have loss of appetite?', 'sounds/appetiteLoss.mp3', 'appetiteLoss');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `table_non_urgent_ppr`
--

CREATE TABLE IF NOT EXISTS `table_non_urgent_ppr` (
  `id_general_question` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `audiofile` text NOT NULL,
  `symptom` text NOT NULL,
  PRIMARY KEY (`id_general_question`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Gegevens worden geëxporteerd voor tabel `table_non_urgent_ppr`
--

INSERT INTO `table_non_urgent_ppr` (`id_general_question`, `question`, `audiofile`, `symptom`) VALUES
(1, 'Does your animal have blisters in its mouth?', 'sounds/blistersMouth.mp3', 'blistersMouth'),
(2, 'Does your animal suffer from diarrhea?', 'sounds/diarrhea.mp3', 'diarrhea'),
(3, 'Is there snot coming out of the nose of your animal?', 'sounds/snot.mp3', 'snot'),
(4, 'Did your animal die suddenly?', 'sounds/suddenDeath.mp3', 'suddenDeath');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `table_non_urgent_rabies`
--

CREATE TABLE IF NOT EXISTS `table_non_urgent_rabies` (
  `id_general_question` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `audiofile` text NOT NULL,
  `symptom` text NOT NULL,
  PRIMARY KEY (`id_general_question`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Gegevens worden geëxporteerd voor tabel `table_non_urgent_rabies`
--

INSERT INTO `table_non_urgent_rabies` (`id_general_question`, `question`, `audiofile`, `symptom`) VALUES
(1, 'Does your animal have swallowing difficulties?', 'sounds/difficultSwallowing.mp3', 'difficultSwallowing'),
(2, 'Does your animal have an altered voice?', 'sounds/alteredVocalisation.mp3', 'alteredVocalisation'),
(3, 'Does your animal show aggressive behavior?', 'sounds/aggressive.mp3', 'aggressive'),
(4, 'Does your animal make exaggerated movements?', 'sounds/exaggeratedMovements.mp3', 'exaggeratedMovements'),
(5, 'Does your animal show an increase in sexual activities?', 'sounds/increaseSexualActivity.mp3', 'increaseSexualActivity'),
(6, 'Did you observe a drop in the milk production?', 'sounds/dropMilkProduction.mp3', 'dropMilkProduction'),
(7, 'Does your animal have loss of appetite?', 'sounds/appetiteLoss.mp3', 'appetiteLoss');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `table_non_urgent_tetanus`
--

CREATE TABLE IF NOT EXISTS `table_non_urgent_tetanus` (
  `id_general_question` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `audiofile` text NOT NULL,
  `symptom` text NOT NULL,
  PRIMARY KEY (`id_general_question`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Gegevens worden geëxporteerd voor tabel `table_non_urgent_tetanus`
--

INSERT INTO `table_non_urgent_tetanus` (`id_general_question`, `question`, `audiofile`, `symptom`) VALUES
(1, 'Are the muscles of the animal twitching?', 'sounds/twitchingMuscles.mp3', 'twitchingMuscles'),
(2, 'Do you observe signs of stiffness in your animal?', 'sounds/stiffness.mp3', 'stiffness'),
(3, 'Do you observe a pink mass in the eye of your animal?', 'sounds/pinkMassEye.mp3', 'pinkMassEye'),
(4, 'Does your animal have one or multiple wounds?', 'sounds/wound.mp3', 'wound'),
(5, 'Do you observe that your animal is anxious and easily excited?', 'sounds/anxiousAndEasilyExcited.mp3', 'anxiousAndEasilyExcited'),
(6, 'Did your animal collapse in the past couple of days?', 'sounds/collapse.mp3', 'collapse');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `table_non_urgent_tickborne`
--

CREATE TABLE IF NOT EXISTS `table_non_urgent_tickborne` (
  `id_general_question` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `audiofile` text NOT NULL,
  `symptom` text NOT NULL,
  PRIMARY KEY (`id_general_question`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Gegevens worden geëxporteerd voor tabel `table_non_urgent_tickborne`
--

INSERT INTO `table_non_urgent_tickborne` (`id_general_question`, `question`, `audiofile`, `symptom`) VALUES
(1, 'Does your animal have a fever?', 'sounds/fever.mp3', 'fever'),
(2, 'Does your animal have loss of appetite?', 'sounds/appetiteLoss.mp3', 'appetiteLoss'),
(3, 'Did your animal have an abortion recently?', 'sounds/abortion.mp3', 'abortion');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `table_pig`
--

CREATE TABLE IF NOT EXISTS `table_pig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_general_question` int(11) NOT NULL,
  `question` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Gegevens worden geëxporteerd voor tabel `table_pig`
--

INSERT INTO `table_pig` (`id`, `id_general_question`, `question`) VALUES
(1, 4, 'Does your animal suffer from spasms?'),
(2, 5, 'Does your animal show signs of fatigue?'),
(3, 6, 'Did your animal give birth recently?'),
(4, 7, 'Does your animal have swollen testicles?'),
(5, 8, 'Does your animal suffer from convulsions?'),
(6, 11, 'Does your animal have blisters on its feet?'),
(7, 12, 'Are the eyes of your animal sunken into the orbit?'),
(8, 13, 'Is your animal extremely thin?'),
(9, 14, 'Does your animal drop its head?');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `table_sheep`
--

CREATE TABLE IF NOT EXISTS `table_sheep` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_general_question` int(11) NOT NULL,
  `question` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Gegevens worden geëxporteerd voor tabel `table_sheep`
--

INSERT INTO `table_sheep` (`id`, `id_general_question`, `question`) VALUES
(1, 2, 'Does your animal show signs of depression?'),
(2, 3, 'Does your animal appear to have a hard ball in its stomach?'),
(3, 4, 'Does your animal suffer from spasms?'),
(4, 5, 'Does your animal show signs of fatigue?'),
(5, 6, 'Did your animal give birth recently?'),
(6, 7, 'Does your animal have swollen testicles?'),
(7, 8, 'Does your animal suffer from convulsions?'),
(8, 10, 'Does your animal have a swelling on the thigh?'),
(9, 11, 'Does your animal have blisters on its feet?'),
(10, 12, 'Are the eyes of your animal sunken into the orbit?'),
(11, 13, 'Is your animal extremely thin?'),
(12, 14, 'Does your animal drop its head?');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `variables_diseases`
--

CREATE TABLE IF NOT EXISTS `variables_diseases` (
  `PPR_disease` int(11) NOT NULL,
  `Plastic_bags_disease` int(11) NOT NULL,
  `Tetanus_disease` int(11) NOT NULL,
  `Tickborne_disease` int(11) NOT NULL,
  `Brucellosis_disease` int(11) NOT NULL,
  `Anthrax_disease` int(11) NOT NULL,
  `CBPP_disease` int(11) NOT NULL,
  `Black_leg_disease` int(11) NOT NULL,
  `Foot_and_mouth_disease` int(11) NOT NULL,
  `Rabies_disease` int(11) NOT NULL,
  `Dehydration` int(11) NOT NULL,
  `Pneumonia` int(11) NOT NULL,
  `BovineTuberculosis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `variables_diseases`
--

INSERT INTO `variables_diseases` (`PPR_disease`, `Plastic_bags_disease`, `Tetanus_disease`, `Tickborne_disease`, `Brucellosis_disease`, `Anthrax_disease`, `CBPP_disease`, `Black_leg_disease`, `Foot_and_mouth_disease`, `Rabies_disease`, `Dehydration`, `Pneumonia`, `BovineTuberculosis`) VALUES
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `variables_general`
--

CREATE TABLE IF NOT EXISTS `variables_general` (
  `question_id` int(11) NOT NULL,
  `general_id` int(11) NOT NULL,
  `use_table` text NOT NULL,
  `kind_of_animal` text NOT NULL,
  `urgent` int(11) NOT NULL,
  `notUrgent` int(11) NOT NULL,
  `decision` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `first` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `variables_general`
--

INSERT INTO `variables_general` (`question_id`, `general_id`, `use_table`, `kind_of_animal`, `urgent`, `notUrgent`, `decision`, `id`, `first`) VALUES
(1, 1, 'table_cow', 'cow', 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `variables_not_urgent`
--

CREATE TABLE IF NOT EXISTS `variables_not_urgent` (
  `wound` int(1) NOT NULL,
  `dropMilkProduction` int(1) NOT NULL,
  `rapidBreathing` int(1) NOT NULL,
  `lossCondition` int(1) NOT NULL,
  `trembling` int(1) NOT NULL,
  `swellingThigh` int(1) NOT NULL,
  `convulsions` int(1) NOT NULL,
  `abortion` int(1) NOT NULL,
  `stillborn` int(1) NOT NULL,
  `weakCalfBorn` int(1) NOT NULL,
  `retentionMembranes` int(1) NOT NULL,
  `fatigue` int(1) NOT NULL,
  `twitchingMuscles` int(1) NOT NULL,
  `anxiousAndEasilyExcited` int(1) NOT NULL,
  `bloat` int(1) NOT NULL,
  `diarrhea` int(1) NOT NULL,
  `drinkingLotsOfWater` int(1) NOT NULL,
  `insects` int(1) NOT NULL,
  `notEnoughFood` int(1) NOT NULL,
  `drinksLitte` int(1) NOT NULL,
  `swollenLymphNodes` int(1) NOT NULL,
  `alteredVocalisation` int(1) NOT NULL,
  `exaggeratedMovements` int(1) NOT NULL,
  `increaseSexualActivity` int(1) NOT NULL,
  `depression` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `variables_not_urgent`
--

INSERT INTO `variables_not_urgent` (`wound`, `dropMilkProduction`, `rapidBreathing`, `lossCondition`, `trembling`, `swellingThigh`, `convulsions`, `abortion`, `stillborn`, `weakCalfBorn`, `retentionMembranes`, `fatigue`, `twitchingMuscles`, `anxiousAndEasilyExcited`, `bloat`, `diarrhea`, `drinkingLotsOfWater`, `insects`, `notEnoughFood`, `drinksLitte`, `swollenLymphNodes`, `alteredVocalisation`, `exaggeratedMovements`, `increaseSexualActivity`, `depression`) VALUES
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `variables_urgent`
--

CREATE TABLE IF NOT EXISTS `variables_urgent` (
  `fever` int(11) NOT NULL,
  `highTemperature` int(11) NOT NULL,
  `eyesInOrbid` int(11) NOT NULL,
  `extremelyThin` int(11) NOT NULL,
  `dropHead` int(11) NOT NULL,
  `isolatedFromHerd` int(11) NOT NULL,
  `weightLoss` int(11) NOT NULL,
  `unwillingnessToMove` int(11) NOT NULL,
  `appetiteLoss` int(11) NOT NULL,
  `quiveringLipsAndFrothingMouth` int(11) NOT NULL,
  `blistersTeath` int(11) NOT NULL,
  `lameness` int(11) NOT NULL,
  `difficultBreathing` int(11) NOT NULL,
  `suddenDeath` int(11) NOT NULL,
  `bloodFromOpeningsAfterDeath` int(11) NOT NULL,
  `collapse` int(11) NOT NULL,
  `infectionMembranes` int(11) NOT NULL,
  `swollenTesticles` int(11) NOT NULL,
  `protrudingEyelid` int(11) NOT NULL,
  `spasm` int(11) NOT NULL,
  `hardBallInStomach` int(11) NOT NULL,
  `cough` int(11) NOT NULL,
  `snot` int(11) NOT NULL,
  `aggressive` int(11) NOT NULL,
  `weirdNoises` int(11) NOT NULL,
  `limping` int(11) NOT NULL,
  `bleeding` int(11) NOT NULL,
  `difficultSwallowing` int(11) NOT NULL,
  `blistersMouth` int(11) NOT NULL,
  `blistersFeet` int(11) NOT NULL,
  `seizures` int(11) NOT NULL,
  `pinkMassEye` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `variables_urgent`
--

INSERT INTO `variables_urgent` (`fever`, `highTemperature`, `eyesInOrbid`, `extremelyThin`, `dropHead`, `isolatedFromHerd`, `weightLoss`, `unwillingnessToMove`, `appetiteLoss`, `quiveringLipsAndFrothingMouth`, `blistersTeath`, `lameness`, `difficultBreathing`, `suddenDeath`, `bloodFromOpeningsAfterDeath`, `collapse`, `infectionMembranes`, `swollenTesticles`, `protrudingEyelid`, `spasm`, `hardBallInStomach`, `cough`, `snot`, `aggressive`, `weirdNoises`, `limping`, `bleeding`, `difficultSwallowing`, `blistersMouth`, `blistersFeet`, `seizures`, `pinkMassEye`) VALUES
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
