-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02. Apr, 2020 00:43 AM
-- Tjener-versjon: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dragon`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `characters`
--

CREATE TABLE `characters` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `title` varchar(40) NOT NULL,
  `class` varchar(40) NOT NULL,
  `age` int(6) DEFAULT NULL,
  `height` varchar(10) DEFAULT NULL,
  `race` varchar(20) DEFAULT NULL,
  `prifaction` varchar(40) NOT NULL,
  `prirank` varchar(40) NOT NULL,
  `secfaction` varchar(40) NOT NULL,
  `secrank` varchar(40) NOT NULL,
  `description` varchar(300) NOT NULL,
  `lore` varchar(1000) DEFAULT NULL,
  `arc` varchar(40) NOT NULL,
  `haircolor` varchar(20) DEFAULT NULL,
  `eyecolor` varchar(20) DEFAULT NULL,
  `skincolor` varchar(20) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `alive` tinyint(1) DEFAULT NULL,
  `dateable` tinyint(1) NOT NULL,
  `sexuality` varchar(40) NOT NULL,
  `likes` varchar(40) NOT NULL,
  `dislikes` varchar(40) NOT NULL,
  `status` varchar(40) NOT NULL,
  `lookingfor` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `characters`
--

INSERT INTO `characters` (`id`, `name`, `lastname`, `title`, `class`, `age`, `height`, `race`, `prifaction`, `prirank`, `secfaction`, `secrank`, `description`, `lore`, `arc`, `haircolor`, `eyecolor`, `skincolor`, `type`, `alive`, `dateable`, `sexuality`, `likes`, `dislikes`, `status`, `lookingfor`) VALUES
(1, 'Bulwark', 'the Indomitable', '', 'Barbarian', 20, '6\'6\'\'', 'Half-orc', 'Dragon\'s Shadow', 'Expert', '', '', 'Big and strong, but soft ', 'Bulwark is a Bulwark', '1', 'Black', 'Black', 'Grey', 'PC', 1, 1, 'Bisexual', 'Authority', 'Snobs/nobles', 'Single', 'Hot High Inquisitor'),
(2, 'Sear', '', '', 'Fighter', 21, '6\'5\'\'', 'Half-orc', 'Dragon\'s Shadow', '', '', '', 'Kind of an ass', 'Sear lost an eye', '1', 'Black', 'Black', 'Grey', 'RNPC', 0, 0, '', '', '', '', ''),
(3, 'Enthayen', 'Brightbow', 'Low Priest', 'Ranger/Cleric', 23, '5\'11\'\'', 'Human', 'Dragon\'s Shadow', 'Expert', 'Church of the Priestess', 'Low Priest', 'Cold on the outside, but has a warm side', 'Enthayen has a bow', '1', 'Brown', 'Green', 'Pale', 'PC', 1, 1, 'Bisexual', '', '', 'In a relationship', ''),
(4, 'Kin\'Low', '', '', 'Monk', 21, '6\'1\'\'', 'Human', 'Dragon\'s Shadow', 'Expert', 'Monks', 'Master', 'Tranquil and calm, moral compass', 'Kin\'Low is fastTM', '1', 'Bald', 'Brown', 'Tan', 'PC', 1, 1, 'Asexual', '', '', 'Single', ''),
(5, 'Eladrin', '', '', 'Wizard', 25, '6\'0\'\'', 'Half-elf', 'Necromancers', '', '', '', 'Rude, but intelligent', 'Eladrin died and came back', '1', 'Blonde', 'Brown', 'Pale', 'FPC', 1, 1, '', '', '', '', ''),
(6, 'Elaine', 'Starlight', 'Duchess', 'Sorcerer', 21, '5\'8\'\'', 'Half-elf', 'Nobility', 'Duchess', 'Dragon\'s Shadow', 'Journeyman', 'Bubbly and charming, but will fight for what she believes in', 'Elaine is love', '6', 'Blonde', 'Purple', 'Pale', 'PC', 1, 1, 'Straight', 'Funny/charming men', 'Bad hygiene', 'In a relationship', ''),
(7, 'Willaker', 'Stormborn', 'Knight', 'Sorcerer', 25, '5\'11\'\'', 'Human', 'Dragon\'s Shadow', 'Expert', 'Nobility', 'Knight', 'Charming and funny, but has experienced a bit too much', 'Willaker is a slut', '1', 'White', 'Blue', 'Pale', 'RNPC', 1, 1, 'Bisexual', '', '', 'In a relationship', 'My girlfriend, she often gets lost'),
(8, 'Akello', '', '', 'Bard', 23, '6\'2\'\'', 'Human', 'Demons', '', 'Dragon\'s Shadow', '', 'Used to be happy and energetic', 'Akello deserved better', '1', 'Black', 'Blue', 'Ebony', 'RNPC', 1, 0, '', '', '', '', ''),
(9, 'Sofson', '', '', 'Rogue', 23, '4\'3\'\'', 'Gnome', 'Assassins', '', '', '', 'Lonesome and mysterious', 'Sofson is gone now', '', 'Bald', 'Green', 'Tan', 'RNPC', 1, 0, '', '', '', '', ''),
(10, 'Ethul', 'the Clipper of Wings', '', 'Ranger', 30, '5\'8\'\'', 'Human', 'Dragon\'s Shadow', 'Master', '', '', 'Instructor under the Dragon\'s Shadow', 'Instructor', '', 'Brown', 'Green', 'Pale', 'RNPC', 1, 0, '', '', '', '', ''),
(11, 'Jill', '', '', 'Rogue', 30, '3\'3\'\'', 'Halfling', 'Dragon\'s Shadow', '', '', '', 'Instructor under the Dragon\'s Shadow', 'Instructor', '', 'Black', 'Blue', 'Ebony', 'RNPC', 1, 0, '', '', '', '', ''),
(12, 'Kallem', '', '', 'Barbarian', 30, '6\'8\'\'', 'Goliath', 'Dragon\'s Shadow', '', '', '', '', 'Instructor', '', 'Black', 'Black', 'Grey', 'RNPC', 0, 0, '', '', '', '', ''),
(13, 'Laurenticus', 'Waiden', '', 'Wizard', 30, '5\'11\'\'', 'Human', 'Dragon\'s Shadow', 'Master', '', '', 'Instructor', 'Instructor', '', 'Blond', 'Blue', 'Tan', 'RNPC', 1, 0, '', '', '', '', ''),
(14, 'Highwance', 'Bloomrose', 'High Inquisitor', '', 45, '6\'3\'\'', 'Human', 'Church of the Priestess', 'High Inquisitor', 'Nobility', 'Member', '', NULL, '4', 'White', 'Brown', 'Pale', 'RNPC', 1, 0, '', '', '', '', ''),
(15, 'Lawrence', 'Bloomrose', '', '', 50, '6\'1\'\'', 'Human', 'Church of the Priestess', 'Pending', 'Nobility', 'Earl', '', NULL, '5', 'Dark silver', 'Faded blue', 'Pale', 'RNPC', 1, 0, '', '', '', '', ''),
(16, 'Tonshen', 'Floren', '', 'Fighter', 30, '', 'Human', 'King\'s Council', '', '', '', '', NULL, '', 'Black', 'Blue', 'Pale', 'FPC', 1, 1, '', '', '', '', ''),
(17, 'Shalakh', '', '', 'Fighter', 30, '5\'6\'\'', 'Human', 'King\'s Council', '', '', '', '', NULL, '2', 'Black', 'Brown', 'Black', 'RNPC', 1, 0, 'Straight', 'Believers, Uniqueness', 'Liars', 'Single', 'demons to kill'),
(18, 'Frederick', 'Gallwance', 'Duke', 'Fighter', 30, NULL, 'Human', 'Nobility', '', '', '', '', '', '9', 'Brown', 'Green', 'Pale', 'RNPC', 0, 0, '', '', '', '', ''),
(19, 'De\'Vaan', 'Everglade', 'Viceroy', 'Wizard', 23, NULL, 'Human', 'Nobility', '', '', '', '', NULL, '9', 'Black', 'Blue', 'Tan', 'RNPC', 1, 1, '', '', '', '', ''),
(20, 'Liss', 'Everglade', 'Viceroy', '', 12, NULL, 'Human', 'Nobility', '', '', '', '', NULL, '9', 'Black', 'Light blue', 'Tan', 'RNPC', 1, 0, '', '', '', '', ''),
(21, 'Saronite', 'Vink Laik Deathwalker Sent', '', 'Wizard', NULL, NULL, 'Elf', 'Necromancers', '', '', '', '', NULL, '2', 'Black', 'Green', 'Pale', 'RNPC', 1, 0, '', '', '', '', ''),
(22, 'Klaxximos', '', '', 'Wizard', NULL, '5\'4\'\'', 'Orc', 'Necromancers', 'Deathwalker', 'Dragon\'s Shadow', 'Journeyman', '', NULL, '3', 'Gray', 'Black', 'Green', 'RNPC', 1, 0, 'You dont wanna know', 'Necromancy, Being Alive', 'Dying, Saronite', 'Alive & Groovy', 'A way to stay alive'),
(23, 'Kirin', '', '', 'Fighter', 27, NULL, 'Half-elf', 'Dragon\'s Shadow', '', '', '', '', NULL, '', 'Black', 'Green', 'Pale', 'RNPC', 0, 0, '', '', '', '', ''),
(24, 'Kiin', 'Lightface', '', 'Bard', NULL, '3\'8\'\'', 'Halfling', 'The Sigil', 'Diplomat', '', '', '', 'First appeared in arc 1', '1', 'Blond', 'Blue', 'Pale', 'RNPC', 0, 0, 'Bisexual', 'Tricking people', 'Being caught', '', ''),
(25, 'Storm', '', '', 'Druid', 20, NULL, 'Half-elf', 'Druid', '', '', '', '', NULL, '', 'Black', 'Blue', 'Pale', 'FPC', 1, 1, '', '', '', '', ''),
(26, 'Garen', 'Boomer', '', 'Wizard/Fighter', 23, '6\'3\'\'', 'Human', 'Nobility', 'Knight', '', '', '', NULL, '', NULL, NULL, NULL, 'NPC', 1, 1, '', '', '', '', ''),
(27, 'Daramo', 'Greenheart', '', 'Bard', 220, '4\'9\'\'', 'Dwarf', 'The Sigil', 'Researcher', '', '', '', NULL, '11', NULL, NULL, NULL, 'PC', 1, 1, '', '', '', '', ''),
(29, 'Zepheriel', 'Scarlet', 'Breaker of Suns', '', NULL, '6\'5\'\'', 'Human', 'Dragon\'s Shadow', 'Supreme', '', '', '', NULL, '', 'Black', 'Red', 'Fair', 'RNPC', 1, 0, '', '', '', '', ''),
(30, 'Daagen', 'Wilfrey', 'Lord', '', 27, '6\'0\'\'', 'Human', 'Nobility', 'Lord', '', '', '', 'Appeared in arc 4', '4', 'Black', 'Green', 'Tan', 'NRNPC', 0, 0, 'Straight', 'Boobs, Power', 'Children', '', ''),
(31, 'Hilden', 'Deathbane', '', '', NULL, NULL, NULL, 'King\'s Council', '', '', '', '', NULL, '', NULL, NULL, NULL, 'FPC', 1, 0, '', '', '', '', ''),
(32, 'Hol\'Sar', '', '', '', NULL, NULL, 'Human', 'Dragon\'s Shadow', '', 'Monks', 'Master', '', NULL, '', NULL, NULL, NULL, 'RNPC', 1, 0, '', '', '', '', ''),
(33, 'Hol\'Thu', '', '', 'Monk', NULL, NULL, 'Human', 'Dragon\'s Shadow', 'Master', '', '', '', NULL, '', NULL, NULL, NULL, 'RNPC', 1, 0, '', '', '', '', ''),
(34, 'Kiran', '', '', 'Fighter', NULL, NULL, 'Human', 'Mercenary', '', '', '', '', 'Appeared in arc 1', '', NULL, NULL, NULL, 'NRNPC', 1, 0, '', '', '', '', ''),
(35, 'Luxana', '', '', '', NULL, NULL, 'Human', 'Mercenary', '', '', '', '', 'Appeared in arc 1', '', NULL, NULL, NULL, 'NRNPC', 1, 0, '', '', '', '', ''),
(36, 'Minstra', '', '', 'Druid', NULL, NULL, 'Elf', 'Druid', '', '', '', '', 'Appeared in arc 1', '', NULL, NULL, NULL, 'NRNPC', 1, 0, '', '', '', '', ''),
(37, 'Kled', '', '', 'Rogue', NULL, NULL, NULL, 'Assassins', '', '', '', '', 'Appeared in arc 2', '', NULL, NULL, NULL, 'NRNPC', 0, 0, '', '', '', '', ''),
(38, 'Kelsua', '', 'Low Delequor', 'Cleric', NULL, NULL, 'Human', 'Church of the Priestess', 'Low Delequor', 'Dragon\'s Shadow', 'Priest', '', NULL, '', NULL, NULL, NULL, 'RNPC', 1, 0, '', '', '', '', ''),
(39, 'Liseroth', '', '', 'Wizard', NULL, NULL, NULL, 'Unknown', '', '', '', '', 'Appeared in arc 3', '', NULL, NULL, NULL, 'NRNPC', 1, 0, '', '', '', '', ''),
(40, 'Helemen', '', 'High Priest', '', NULL, NULL, NULL, 'Church of the Priestess', 'High Priest', '', '', '', '', '3', NULL, NULL, NULL, 'NRNPC', 0, 0, '', '', '', '', ''),
(41, 'Ruben', '', '', '', NULL, NULL, 'Human', 'The Sigil', 'Member', '', '', '', '', '3', NULL, NULL, NULL, 'NRNPC', 0, 0, '', '', '', '', ''),
(42, 'Josark', '', '', '', NULL, NULL, 'Human', 'Nobility', '', '', '', '', 'Appeared in arc 4', '', NULL, NULL, NULL, 'NRNPC', 0, 0, '', '', '', '', ''),
(43, 'Aural', '', '', '', NULL, NULL, NULL, 'Nobility', '', '', '', '', 'Appeared in arc 4', '', NULL, NULL, NULL, 'NRNPC', 0, 0, '', '', '', '', ''),
(44, 'En\'Fer', '', '', '', NULL, NULL, NULL, 'Church of the Priestess', '', 'Dragon\'s Shadow', '', '', NULL, '', NULL, NULL, NULL, 'RNPC', 1, 0, '', '', '', '', ''),
(45, 'Cla\'Ser', '', '', '', NULL, NULL, NULL, 'Church of the Priestess', 'Inquisitor', 'Dragon\'s Shadow', '', '', NULL, '', NULL, NULL, NULL, 'RNPC', 1, 1, '', '', '', '', ''),
(46, 'Sparrow', '', '', '', NULL, NULL, 'Orc', 'Unknown', '', '', '', '', '', '6', NULL, NULL, NULL, 'NRNPC', 1, 1, '', '', '', '', ''),
(47, 'Dendi', '', '', '', NULL, NULL, NULL, 'Unknown', '', '', '', '', '', '4', NULL, NULL, NULL, 'NRNPC', 0, 0, '', '', '', '', ''),
(48, 'Dawn', '', 'Town Elder', 'Fighter', 58, '5\'10\'\'', 'Human', '', '', '', '', '', NULL, '1', 'White', 'Blue', 'Fair', 'NRNPC', 1, 1, 'Straight', '', '', '', ''),
(49, 'Firran', 'Deephelm', 'Dwarven King', '', 310, '4\'6\'\'', 'Dwarf', 'Dwarven Kingdom', 'King', '', '', '', NULL, '9', 'Black', 'Black', 'Maroon', 'NPC', 1, 1, 'Straight', 'Gems', 'Disobediance', 'Married', 'a way forward'),
(50, 'Uillan', 'Deephelm', 'Dwarven Queen', '', 300, '4\'3\'\'', 'Dwarf', 'Dwarven Kingdom', 'Queen', '', '', '', NULL, '9', 'Black', 'Green', 'Maroon', 'NPC', 1, 1, 'Straight', 'Gems, Integrity', 'Flying', 'Married', ''),
(51, 'Loss', 'Emeraldeyes', 'Dwarven Archmage', 'Wizard', 260, '4\'4\'\'', 'Dwarf', 'Dwarven Kingdom', 'Archmage', '', '', '', NULL, '9', 'Faded Blue', 'Shiny Green', 'Fair', 'NPC', 1, 1, 'Asexual', 'Magic', 'Martial', 'Married to their job', 'More Power'),
(52, 'Kan', 'Gnickforge', 'Dwarven High Knight', 'Fighter', 180, '4\'9\'\'', 'Dwarf', 'Dwarven Kingdom', 'High Knight', '', '', '', NULL, '9', 'Auburn', 'Yellow', 'Tan', 'NPC', 1, 1, 'Bisexual', 'Strength, Reliability', 'Spontaneity, Humans', 'Dating', 'A way to protect the king'),
(53, 'Shalendra', 'Morzeiros Winddancer', 'Foreign Contact Point', 'Rogue', 420, '6\'3\'\'', 'Elf', 'Elven Council', 'Foreign Contact Point', '', '', '', NULL, '9', 'Blond', 'Light Blue', 'Pale', 'NPC', 0, 1, 'Pan & Poly', 'Music, Rowdy', 'Quiet, Planning', 'Single', 'A way to be alive again'),
(54, 'Amarille', 'Balzana Juil Laik Wreathbearer', 'Magical Advisor', 'Wizard', 520, '6\'1\'\'', 'Elf', 'Elven Council ', 'Magical Advisor', '', '', '', NULL, '9', 'Faded Purple', 'Red', 'Dark', 'NPC', 0, 1, 'Bisexual, non-committed', 'New Experiences', 'Non-magical people', 'Single', 'A way to time travel'),
(55, 'William', 'Liondance', 'Duke', '', 48, '5\'10\'\'', 'Human', 'Nobility', 'Duke', '', '', '', NULL, '9', 'Bald', 'Brown', 'Fair', 'NPC', 1, 1, 'Straight', 'Respect, Influence', 'Chaos', 'Married', 'More Power'),
(56, 'Catherine', 'Liondance', 'Duchess', '', 40, '5\'7\'\'', 'Human', 'Nobility', 'Duchess', '', '', '', NULL, '9', 'Blonde', 'Blue', 'Fair', 'NPC', 1, 1, 'Bored', 'Adventure', 'Repetition', 'Unhappily Married', 'Something new...'),
(57, 'Matthew', 'Liondance', 'Heir', 'Fighter', 21, '6\'3\'\'', 'Human', 'Nobility', 'Viceroy', '', '', '', NULL, '9', 'Blond', 'Brown', 'Fair', 'NPC', 1, 1, 'Straight', 'Authority, Control', 'Commoners, Fruit', 'Married', 'Lovers on the side'),
(58, 'Laurence', 'Gallwance', 'Disgraced Duke', '', 51, '5\'10\'\'', 'Human', 'Nobility', 'Previous Duke', '', '', 'In jail, betrayed by son.', NULL, '9', 'Brown', 'Brown', 'Fair', 'NPC', 1, 1, 'Straight', 'Art, Fencing', 'Drama, Religion', 'Married', 'A way out of jail'),
(59, 'Koilan', 'Everglade', 'Duke', '', NULL, NULL, 'Human', 'Nobility', 'Duke', '', '', '', NULL, '', 'Black', 'Blue', 'Tan', 'NRNPC', 1, 0, '', '', '', '', ''),
(60, 'Yonwin', 'Press', '', 'Bard', NULL, NULL, 'Human', 'King\'s Council', 'Member', '', '', '', NULL, '', 'Black', NULL, 'Tan', 'FPC', 0, 0, '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
