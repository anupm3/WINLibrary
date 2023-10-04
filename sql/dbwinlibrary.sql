-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 04, 2023 at 04:17 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- create user credentials
create user ASAR@'localhost' IDENTIFIED BY 'winlibrary@2023';

-- grant permission
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, ALTER
	ON *.*
	TO 'ASAR'@'localhost'
	;
--
-- Database: `dbwinlibrary`
--
CREATE DATABASE IF NOT EXISTS `dbwinlibrary` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `dbwinlibrary`;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_details`
--

DROP TABLE IF EXISTS `feedback_details`;
CREATE TABLE IF NOT EXISTS `feedback_details` (
  `feedbackID` int NOT NULL AUTO_INCREMENT,
  `studentID` int NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Message` text NOT NULL,
  PRIMARY KEY (`feedbackID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
CREATE TABLE IF NOT EXISTS `library` (
  `bookID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL,
  `Author name` varchar(100) NOT NULL,
  `Publication` varchar(100) NOT NULL,
  `Edition` varchar(100) NOT NULL,
  `ISBN` varchar(13) NOT NULL,
  `stock` int DEFAULT NULL,
  `availability` varchar(3) DEFAULT NULL,
  `URL` text NOT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`bookID`, `Title`, `Author name`, `Publication`, `Edition`, `ISBN`, `stock`, `availability`, `URL`) VALUES
(18, '404 essential tests for IELTS : academic module / by Donna Scovell, Vickie Pastellas & Max Knobel.', ' Scovell, Donna Pastellas, Vickie Knobel, Max', 'Adams & Austen Press, 2004', 'International ed.', '0975183222', 10, 'Yes', '18\r\n'),
(17, 'Collins Chinese dictionary / [Editorial team, Wu Yicheng, Xie Xi, Marianne Davidson ... et al.].', ' Wu, Yicheng Davidson, Marianne, 1977', ' Glasgow : HarperCollins Publishers, 2006', '2nd ed.', '9780007223916', 10, 'Yes', '17'),
(16, 'Check your English vocabulary for IELTS / by Rawdon Wyatt.', 'Wyatt, Rawdon', 'London : Bloomsbury, 2012', '3rd ed.', '9781408153932', 10, 'Yes', '16'),
(15, 'How to cheat in Photoshop CS4 : the art of creating realistic photomontages / Steve Caplin.', ' Caplin, Steve', ' Amsterdam ; Boston ; London : Focal Press, 2009', '5th ed.', '9780240521152', 10, 'Yes', '15'),
(14, 'History of modern art : painting, sculpture, architecture, photography / H.H. Arnason, Elizabeth C. ', ' Arnason, H. Harvard Mansfield, Elizabeth, 1965-', 'Upper Saddle River, N.J. : Pearson Prentice Hall, 2009', '6th ed', '9780136062066', 10, 'Yes', '14'),
(13, 'The graphic designer\'s guide to pricing, estimating & budgeting / by Theo Stephan Williams.', 'Williams, Theo Stephan, 1960-', 'New York : Allworth Press, c2010', 'Rev. ed., 3rd ed.', '9781581157130', 10, 'Yes', '13'),
(12, 'The technique of film and video editing : history, theory, and practice / Ken Dancyger.', 'Dancyger, Ken', 'Burlington, MA : Focal Press, c2007', '4th ed.', '9780240807652', 10, 'Yes', '12'),
(11, 'Collecting and interpreting qualitative materials / Norman K. Denzin, University of Illinois, Yvonna', ' Denzin, Norman K Lincoln, Yvonna S', ' Thousand Oaks, Calif.: Sage, c2013', '4th edition', '9781452258041', 10, 'Yes', '11'),
(10, 'Design by nature : using universal forms and principles in design / Maggie Macnab.', ' Macnab, Maggie [author.]', 'Berkeley, Calif.: New Riders, c2012', '12th edition', '9780321747761', 10, 'Yes', '10'),
(8, 'Designing a digital portfolio / Cynthia L. Baron.', 'Baron, Cynthia', ' Berkeley, Calif. : New Riders, c2010 [i.e. 2009]', '2nd ed.', '9780321637512', 10, 'Yes', '8'),
(9, 'Foundation website creation with CSS, XHTML, and JavaScript / Jonathan Lane, Meitar Moscovitz, Josep', 'Lane, Jonathan Moscovitz, Meitar Lewis, Joseph R', 'Berkeley, Calif. : Friends of ED, 2008', '1st edition ', '9781430209911', 10, 'Yes', '9'),
(6, 'Financial accounting theory / Craig Deegan.', ' Deegan, Craig Michael, 1960-', 'North Ryde, N.S.W : McGraw Hill Aust. Pty. Ltd., c2006', '2nd ed.', '9780074716717', 10, 'Yes', '6'),
(5, 'Financial accounting theory / Craig Deegan.', 'Deegan, Craig Michael', ' North Ryde, N.S.W. : McGraw Hill Education, 2014', '4th ed.', '9780071013147', 10, 'Yes', '5'),
(4, 'Crash course in accounting and financial statement analysis [electronic resource] / Matan Feldman, A', ' Feldman, Matan, 1978- Libman, Arkady, 1978- MyiLibrary', 'Hoboken, N.J. : Wiley, 2007.', '2nd ed', ' 978047004701', 10, 'Yes', '4'),
(3, 'Accounting ethics / Iris Stuart, Bruce Stuart, Lars J. T. Pedersen.', 'Stuart, Iris, 1950- Stuart, Bruce, 1947- Pedersen, Lars J. T', 'West Sussex, U.K. Wiley, c2014.\r\n', 'First Edition', '9781118542408', 10, 'Yes', '3'),
(1, 'Culture and technology / Andrew Murphie and John Potts.', 'Murphie, Andrew Potts, John, 1959-', 'New York : Palgrave, 2003', 'ix edition ', ' 978033392929', 10, 'Yes', '1\r\n'),
(2, 'Accounting / John Hoggett [et. al.]', 'Hoggett, J. R. (John Robert), 1948- [author.] Medlin, John [author.] Edwards, Lew [author.] Chalmers', 'Milton, Qld. : Wiley, c2015', '[9th ed.]', ' 978111860822', 10, 'Yes', '2\r\n'),
(19, 'JavaScript : the definitive guide / David Flanagan.', 'Flanagan, David', ' Beijing ; Farnham : O\'Reilly, c2011', '6th ed.', '9780596805524', 10, 'Yes', '19\r\n'),
(20, 'Data modeling and database design / Narayan S. Umanath, University of Cincinnati, Richard W. Scamell', 'Umanath, Narayan S Scamell, Richard W', ' Boston, Mass.: Cengage Learning, c2015', 'Second edition.', ' 978128508525', 10, 'Yes', '20\r\n'),
(21, 'An introduction to digital multimedia / T. M. Savage and K. E. Vogel.', 'Savage, Terry Michael, 1946- Vogel, Karla E', 'Burlington, Massachusetts : Jones & Bartlett Learning, c2014', 'Second edition.', '9781449688394', 10, 'Yes', '21\r\n'),
(22, 'Microsoft Visual C♯ step by step / John Sharp.', 'Sharp, John, 1964- [author.]', 'U.S.: Microsoft Press/Pearson Ed. Inc., c2018', 'Ninth edition.', ' 978150930776', 10, 'Yes', '22'),
(23, 'Microsoft Excel 2019 : data analysis and business modeling / Wayne L. Winston.', 'Winston, Wayne L [author.]', 'U.S.: Microsoft/Pearson Ed. Inc., c2019', 'Sixth edition.', '9781509305889', 10, 'Yes', '23'),
(24, 'Using the Windows 98 registry / Jerry Honeycutt ; Power Tools software written by Bernard Farrell.', 'Honeycutt, Jerry', 'Indianapolis, Ind. : Que, c1998', '5th edition', ' 0789716585', 10, 'Yes', '24'),
(25, 'Universal principles of design / William Lidwell, Kritina Holden & Jill Butler.', 'Lidwell, William Holden, Kritina Butler, Jill', 'Berverly, Mass. : Rockport, 2010c2003', '4th ed.', '9781592535873', 10, 'Yes', '25'),
(26, 'Problem solving cases in Microsoft Access & Excel / Ellen F. Monk, Joseph A. Brady, Emilio I. Mendel', 'Monk, Ellen F Brady, Joseph A Mendelsohn, Emilio I', 'Boston, Mass,: Cengage Learning c2017', '15th annual edition.', '9781337101332', 10, 'Yes', '26'),
(27, 'Motion graphic design : applied history and aesthetics / Jon Krasner.', 'Krasner, Jon S', 'Amsterdam ; Boston, MA : Focal Press, c2008', '6th edition', '9780240809892', 10, 'Yes', '27'),
(28, '1,000 music graphics : a compilation of packaging, posters, and other sound solutions / Stoltze Desi', 'Stoltze Design', 'Beverly, Mass. : Rockport Publishers, c2008', '5th ed.\r\n', '9781592534043', 10, 'Yes', '28'),
(29, 'Motion graphics with Adobe Creative Suite 5 studio techniques / Richard Harrington and Ian Robinson.', 'Harrington, Richard, 1972- Robinson, Ian', 'Berkeley, CA : Peachpit, c2011', '5th ed.', '9780321719690', 10, 'Yes', '29'),
(30, 'Digital multimedia / Nigel Chapman and Jenny Chapman.', 'Chapman, Nigel P Chapman, Jenny', 'Chichester ; New York : Wiley, c2000', '3rd ed.', ' 0471983861', 10, 'Yes', '30'),
(31, 'After Effects apprentice : real-world skills for the aspiring motion graphics artist / Trish & Chris', 'Meyer, Trish, 1961- Meyer, Chris, 1961-', 'Amsterdam ; Boston : Elsevier/Focal Press, c2009', '2nd ed.', '9780240811369', 10, 'Yes', '31'),
(32, 'Casual game design : designing play for the gamer in all of us / Gregory Trefry.', 'Trefry, Gregory', 'Burlington, Mass. : Morgan Kaufmann/Elsevier, c2010', '2nd ed.', ' 978012374953', 10, 'Yes', '32'),
(33, 'The art of game design : a book of lenses / by Jesse Schell.', 'Schell, Jesse', 'San Francisco, Calif. : Oxford : Morgan Kaufmann ; Elsevier Science [distributor], c2008', '5th ed.', ' 978012369496', 10, 'Yes', '33'),
(34, 'Chris Crawford on game design / Chris Crawford.', 'Crawford, Chris, 1950- Adams, Ernest', 'Indianapolis, Ind. : New Riders, 2003', '1st ed.', '0131460994 ', 10, 'Yes', '34'),
(35, 'David Perry on game design : a brainstorming toolbox / David Perry and Rusel DeMaria.', 'Perry, David DeMaria, Rusel, 1948-', 'Boston, MA. : Course Technology : Cengage Learning, c2009', '4th ed.', '9781584506683', 10, 'Yes', '35'),
(36, 'Level up! : the guide to great video game design / Scott Rogers.', 'Rogers, Scott', 'Chichester, U.K. : Wiley, 2010', '5th ed.', ' 978047068867', 10, 'Yes', '36'),
(37, 'Database systems : design, implementation, and management / Carlos Coronel, Steven Morris.', 'Coronel, Carlos [author.] Morris, Steven (Steven A.) [author.]', 'Boston, Mass.: Cengage, c2019', '13th ed.', '9781337627900', 10, 'Yes', '37'),
(38, 'Modern database management / Jeffrey A. Hoffer Ramesh Venkataraman, Heikki Topi.', 'Hoffer, Jeffrey A [author.] Ramesh, V. (Venkataraman) [author.] Topi, Heikki [author.]', 'Harlow, Essex: Pearson, c2016', '12th ed.', '9781292101859', 10, 'Yes', '38'),
(39, 'Concepts of database management/ Joy L. Starks, Philip J. Pratt, Mary Z. Last.', 'Starks, Joy [author.] Pratt, Philip J, 1945- [author.] Last, Mary Z [author.]', 'Boston, Mass.: Cengage, c2019', '9th ed.', '9781337093422', 10, 'Yes', '39'),
(40, 'An introduction to database systems / C.J. Date.', 'Date, C. J Kannan, A Swamynathan, S', 'Pearson, 2006', '8th ed.', '9788177585568', 10, 'Yes', '40'),
(41, 'Australia in the global economy : year 12 economics / Tim Dixon, John O\'Mahony.', 'Dixon, Tim (Tim Edwin), 1970- O\'Mahony, John', 'Sydney, N.S.W. : Leading Edge Education, c2009', '2009 ed.', '9781442507449', 10, 'Yes', '41'),
(42, 'Economics / Douglas McTaggart, Christopher Findlay, Michael Parkin.', 'McTaggart, Douglas, 1953- Findlay, Christopher Parkin, Michael, 1939-', 'Frenchs Forest, N.S.W. : Pearson, c2013', '7th ed.', '9781442550773', 10, 'Yes', '42'),
(43, 'Cambridge economics HSC / Mike Horsley ... [et. al.].', 'Horsley, Mike', 'Melbourne : Cambridge University Press, 2006', '4th ed.', '9780521694483', 10, 'Yes', '43'),
(44, 'Principles of economics / John Sloman, Keith Norris, Dean Garrett.', 'Sloman, John, 1947- [author.] Norris, Keith, 1940- [author.] Garratt, Dean, 1970- [author.]', 'Frenchs Forest, N.S.W. : Pearson Australia, c2014', '4th ed.', '9781486005581', 10, 'Yes', '44'),
(45, 'Economics / John Sloman, Alison Wride, Dean Garratt.', 'Sloman, John, 1947- Wride, Alison Garratt, Dean, 1970-', ' Harlow, England: Pearson, c2015', 'Ninth edition.', ' 978129206477', 10, 'Yes', '45'),
(46, 'Economics/ Michael Parkin.', ' Parlin, Michael', 'Harlow, England: Pearson, c2019', '[13th ed.] [Global ed.]', '9781292255460', 10, 'Yes', '46'),
(47, 'The fundamentals of creative photography / by David Prakel.', 'Prakel, David', 'Lausanne ; Worthing : AVA Academia, 2010', '5th ed.', ' 978294041113', 10, 'Yes', '47'),
(48, 'Train your gaze : a practical and theoretical introduction to portrait photography / Roswell Angier.', 'Angier, Roswell', 'Lausanne : AVA, c2007.', '4th ed.', '9782940373376', 10, 'Yes', '48'),
(49, 'The fundamentals of photography / Helen Drew.', 'Drew, Helen', 'Laussane, Switzerland : AVA, c2005.', '7th ed.', '2884790500', 10, 'Yes', '49'),
(50, 'Freelance photographer\'s handbook : success in professional digital photography / Cliff and Nancy Ho', 'Hollenbeck, Cliff Hollenbeck, Nancy', 'Buffalo, NY : Amherst Media, Inc., c2010', '2nd ed.', '9781584282662', 10, 'Yes', '50'),
(51, 'History of modern art : painting, sculpture, architecture, photography / H.H. Arnason, Elizabeth C. ', 'Arnason, H. Harvard [author.] Mansfield, Elizabeth, 1965- [author.]', 'Boston : Pearson, [2013]', 'Seventh Edition.', '9780205259472', 10, 'Yes', '51');

-- --------------------------------------------------------

--
-- Table structure for table `tblborrowbooks`
--

DROP TABLE IF EXISTS `tblborrowbooks`;
CREATE TABLE IF NOT EXISTS `tblborrowbooks` (
  `borrowID` int NOT NULL AUTO_INCREMENT,
  `studentID` int NOT NULL,
  `bookID` int NOT NULL,
  `borrowDate` date NOT NULL,
  `returnDate` date DEFAULT NULL,
  `dueDate` date DEFAULT NULL,
  `Fine` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`borrowID`),
  KEY `studentID` (`studentID`),
  KEY `bookID` (`bookID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tblborrowbooks`
--

INSERT INTO `tblborrowbooks` (`borrowID`, `studentID`, `bookID`, `borrowDate`, `returnDate`, `dueDate`, `Fine`) VALUES
(2, 984796, 9, '2023-10-02', '2023-10-02', '2023-10-16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblmemberphoto`
--

DROP TABLE IF EXISTS `tblmemberphoto`;
CREATE TABLE IF NOT EXISTS `tblmemberphoto` (
  `studentID` int NOT NULL,
  `photoID` int NOT NULL AUTO_INCREMENT,
  `photoURL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`photoID`),
  KEY `fkStudentID` (`studentID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tblmemberphoto`
--

INSERT INTO `tblmemberphoto` (`studentID`, `photoID`, `photoURL`) VALUES
(100, 9, NULL),
(984796, 10, NULL),
(111, 11, NULL),
(984797, 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblmembership`
--

DROP TABLE IF EXISTS `tblmembership`;
CREATE TABLE IF NOT EXISTS `tblmembership` (
  `studentID` int NOT NULL,
  `studentName` varchar(60) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phoneNumber` bigint NOT NULL,
  `photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`studentID`),
  UNIQUE KEY `studentID` (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tblmembership`
--

INSERT INTO `tblmembership` (`studentID`, `studentName`, `email`, `password`, `phoneNumber`, `photo`) VALUES
(100, 'hello', 'hello@test.com', '$2y$10$ke9I/o05GRxSfcaTvdr6FeBW41D7HRXo7eqWUe1Pfrz3yhs.wpsv.', 100, NULL),
(111, 'a', 'a@g.c0m', '$2y$10$ZJuaThpiXK7BvFrxTaDj/u7/RECQHw8VlhtM3q7/5Sauyg.ZS7W4e', 1, NULL),
(984796, 'Anup Maharjan', '984796@win.edu.au', '$2y$10$uzoO4/TUgpsADraSRY5OoOgrNQKYEE7B8W8N6EmNkfXMKLURIomzC', 493545884, NULL),
(984797, 'A', '984797@win.edu.au', '$2y$10$A.Y1KO0zeYTF4KkH7vjB8OOXjmFOMKxAfs5jP4g4NbiDG.zwl2mS2', 493545884, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblteam`
--

DROP TABLE IF EXISTS `tblteam`;
CREATE TABLE IF NOT EXISTS `tblteam` (
  `teamID` int NOT NULL AUTO_INCREMENT,
  `memberID` int NOT NULL,
  `memberName` varchar(128) NOT NULL,
  `role` varchar(128) NOT NULL,
  `photoURL` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `webURL` longtext,
  PRIMARY KEY (`teamID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tblteam`
--

INSERT INTO `tblteam` (`teamID`, `memberID`, `memberName`, `role`, `photoURL`, `webURL`) VALUES
(1, 983785, 'Aishwarya Reddy', 'IT Team', 'Aishwarya', NULL),
(2, 984708, 'Simranpreet Kaur', 'Cataloging Specialist', 'Simran', NULL),
(3, 984796, 'Anup Maharjan', 'Project Manager/ Leader', 'Anup', 'https://anup-maharjan.github.io/Personal/'),
(4, 984949, 'Raj Kharel', 'QA', 'Raj', 'https://kharelraj.com.np/');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblmemberphoto`
--
ALTER TABLE `tblmemberphoto`
  ADD CONSTRAINT `fkStudentID` FOREIGN KEY (`studentID`) REFERENCES `tblmembership` (`studentID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
