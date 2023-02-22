-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 21, 2023 at 03:53 AM
-- Server version: 8.0.27
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mis`
--

-- --------------------------------------------------------

--
-- Table structure for table `catecgory`
--

DROP TABLE IF EXISTS `catecgory`;
CREATE TABLE IF NOT EXISTS `catecgory` (
  `Cat_Id` int NOT NULL AUTO_INCREMENT,
  `Cat_Name` varchar(255) NOT NULL,
  PRIMARY KEY (`Cat_Id`)
) ;

--
-- Dumping data for table `catecgory`
--

INSERT INTO `catecgory` (`Cat_Id`, `Cat_Name`) VALUES
(3, 'Amazon St310'),
(11, 'Burger King (TTP Branch)'),
(10, 'Acha(BKK Branch)');

-- --------------------------------------------------------

--
-- Table structure for table `db_all_restaurant`
--

DROP TABLE IF EXISTS `db_all_restaurant`;
CREATE TABLE IF NOT EXISTS `db_all_restaurant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `res_title` varchar(255) NOT NULL,
  `res_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `dis` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

--
-- Dumping data for table `db_all_restaurant`
--

INSERT INTO `db_all_restaurant` (`id`, `res_title`, `res_name`, `image`, `dis`) VALUES
(12, 'Mile,Tea', 'Acha(BKK Branch)', '887-logo2.png', '60'),
(11, 'Mile,Tea', 'Amazon St310', '336-logo1.png', '80'),
(9, 'Western,Fast Food,Snack', 'Burger King (TTP Branch)', '619-logo3.png', '70');

-- --------------------------------------------------------

--
-- Table structure for table `db_banner`
--

DROP TABLE IF EXISTS `db_banner`;
CREATE TABLE IF NOT EXISTS `db_banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `db_logo`
--

DROP TABLE IF EXISTS `db_logo`;
CREATE TABLE IF NOT EXISTS `db_logo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ;

--
-- Dumping data for table `db_logo`
--

INSERT INTO `db_logo` (`id`, `image`) VALUES
(115, '240-Asset1.png');

-- --------------------------------------------------------

--
-- Table structure for table `db_restaurant`
--

DROP TABLE IF EXISTS `db_restaurant`;
CREATE TABLE IF NOT EXISTS `db_restaurant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `dis` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `office` varchar(100) NOT NULL,
  `age` int NOT NULL,
  `salary` int NOT NULL,
  `photo` varchar(150) NOT NULL
) ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `position`, `office`, `age`, `salary`, `photo`) VALUES
(1, 'Tiger Wood', 'Accountant', 'Tokyo', 36, 5689, '01.jpg'),
(2, 'Mark Oto Ednalan', 'Chief Executive Officer (CEO)', 'London', 56, 5648, '02.jpg'),
(3, 'Jacob thompson', 'Junior Technical Author', 'San Francisco', 23, 5689, '03.jpg'),
(4, 'cylde Ednalan', 'Software Engineer', 'Olongapo', 23, 54654, '04.jpg'),
(5, 'Angelica Ramos', 'Software Engineer', 'San Francisco', 26, 5465, '05.jpg'),
(6, 'Airi Satou', 'Integration Specialist', 'New York', 53, 56465, '06.jpg'),
(8, 'Tiger Nixon', 'Software Engineer', 'London', 45, 456, '07.jpg'),
(9, 'Airi Satou', 'Pre-Sales Support', 'New York', 25, 4568, '08.jpg'),
(10, 'Angelica Ramos', 'Sales Assistant', 'New York', 45, 456, '09.jpg'),
(11, 'Ashton updated', 'Senior Javascript Developer', 'Olongapo', 45, 54565, '01.jpg'),
(12, 'Bradley Greer', 'Regional Director', 'San Francisco', 27, 5485, '02.jpg'),
(13, 'Brenden Wagner', 'Javascript Developer', 'San Francisco', 38, 65468, '03.jpg'),
(14, 'Brielle Williamson', 'Personnel Lead', 'Olongapo', 56, 354685, '04.jpg'),
(15, 'Bruno Nash', 'Customer Support', 'New York', 36, 65465, '05.jpg'),
(16, 'cairocoders', 'Sales Assistant', 'Sydney', 45, 56465, '06.jpg'),
(17, 'Zorita Serrano', 'Support Engineer', 'San Francisco', 38, 6548, '07.jpg'),
(18, 'Zenaida Frank', 'Chief Operating Officer (COO)', 'San Francisco', 39, 545, '08.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `pice` int NOT NULL,
  `photo` varchar(150) NOT NULL,
  `category_id` int NOT NULL
) ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `pice`, `photo`, `category_id`) VALUES
(1, 'GreenTea Frappe 1', 12, '1.png', 0),
(2, 'GreenTea Frappe 2', 12, '1.png', 0),
(3, 'GreenTea Frappe 3', 12, '1.png', 0),
(4, 'GreenTea Frappe 14', 12, '1.png', 0),
(5, 'GreenTea Frappe 5', 12, '1.png', 0),
(6, 'GreenTea Frappe 16', 12, '1.png', 0),
(7, 'GreenTea Frappe 17', 12, '1.png', 0),
(8, 'GreenTea Frappe 18', 12, '1.png', 0),
(9, 'GreenTea Frappe 19', 12, '1.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `course` varchar(191) NOT NULL,
  PRIMARY KEY (`id`)
) ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `phone`, `course`) VALUES
(15, 'Nuon Vannak', 'duongchankoko@gmail.com', '078291385', 'design114'),
(16, 'Nuon Vannak', 'duongchankoko@gmail.com', '078291385', 'design22222');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
