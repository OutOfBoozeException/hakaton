-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2019 at 07:52 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leafsaver`
--

-- --------------------------------------------------------

--
-- Table structure for table `cure`
--

CREATE TABLE `cure` (
  `diseaseId` int(11) NOT NULL,
  `drugId` int(11) NOT NULL,
  `instructions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cure`
--

INSERT INTO `cure` (`diseaseId`, `drugId`, `instructions`) VALUES
(7, 16, NULL),
(7, 17, 'proba123123'),
(7, 28, NULL),
(9, 18, 'U 500ml izvorske vode rastvoriti 100ml leka hehe.'),
(9, 28, 'U 1500ml izvorske vode rastvoriti 1020ml leka hehe.');

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `nice_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`id`, `name`, `nice_name`) VALUES
(1, 'Apple Leaf Counts', NULL),
(2, 'Apple_Cedar Apple Rust', NULL),
(3, 'Apple Leaf Counts', NULL),
(4, 'Apple_Cedar Apple Rust', NULL),
(5, 'Apple_Frogeye Spot', NULL),
(6, 'Apple_Healthy', NULL),
(7, 'Apple_Scab', 'Apple Scab'),
(8, 'Blueberry Leaf Counts', NULL),
(9, 'Blueberry_Healthy', NULL),
(10, 'Cherry Leaf Counts', NULL),
(11, 'Cherry_Healthy', NULL),
(12, 'Cherry_Powdery Mildew', NULL),
(13, 'Citrus Leaf Counts', NULL),
(14, 'Citrus_Citrus Greening June', NULL),
(15, 'Citrus_Citrus Greening Oct.', NULL),
(16, 'Grape Leaf Counts', NULL),
(17, 'Grape_Black Measles Fungus', NULL),
(18, 'Grape_Black Rot Fungus', NULL),
(19, 'Grape_Leaf Blight Fungus', NULL),
(20, 'Peach Leaf Counts', NULL),
(21, 'Peach_Bacterial Spot', NULL),
(22, 'Peach_Healthy', NULL),
(23, 'Pepper Leaf Counts', NULL),
(24, 'Pepper_Bac spot NREC', NULL),
(25, 'Pepper_Bacterial Spot JR', NULL),
(26, 'Pepper_Healthy', NULL),
(27, 'Potato Leaf Counts', NULL),
(28, 'Potato_Early Blight Fungus', NULL),
(29, 'Potato_Healthy Potato', NULL),
(30, 'Potato_Late Blight Fungus', NULL),
(31, 'Raspberry Leaf Counts', NULL),
(32, 'Raspberry_Sheet1', NULL),
(33, 'Soy Leaf Counts', NULL),
(34, 'Soy_Sheet1', NULL),
(35, 'Strawberry Leaf Counts', NULL),
(36, 'Strawberry_Healthy', NULL),
(37, 'Strawberry_Scorch', NULL),
(38, 'Tomato Leaf Counts', NULL),
(39, 'Tomato_Bacterial Spot Bacteria', NULL),
(40, 'Tomato_Early Blight Fungus', NULL),
(41, 'Tomato_Healthy', NULL),
(42, 'Tomato_Late Blight Water Mold', NULL),
(43, 'Tomato_Leaf Mold Fungus', NULL),
(44, 'Tomato_Septoria Leaf Spot Fungus', NULL),
(45, 'Tomato_Spider Mite Damage Insect', NULL),
(46, 'Tomato_Target Spot Bacteria', NULL),
(47, 'Tomato_YLCV Virus', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `drug`
--

CREATE TABLE `drug` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `producerId` int(11) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drug`
--

INSERT INTO `drug` (`id`, `name`, `producerId`, `description`) VALUES
(1, 'Benfuracarb', 1, NULL),
(2, 'Cyflumetofen', 1, NULL),
(3, 'Flutianil', 1, NULL),
(4, 'Kaligreen', 1, NULL),
(5, 'Acaritouch', 1, NULL),
(6, 'Benzofenap', 1, NULL),
(7, 'Benfuresate', 1, NULL),
(8, 'Amistar Extra 280 SC', 2, NULL),
(9, 'Artea 330 EC', 2, NULL),
(10, 'Bravo 720 SC', 2, NULL),
(11, 'Certicor 050 FS', 2, NULL),
(12, 'Cherokee 487,5 SE', 2, NULL),
(13, 'Chorus 50 WG', 2, NULL),
(14, 'Dividend M 030 FS', 2, NULL),
(15, 'Folio Gold 537.5 SC', 2, NULL),
(16, 'Acceleron™', 3, NULL),
(17, 'Adengo™', 3, NULL),
(18, 'Alion™', 3, NULL),
(19, 'Belt™', 3, NULL),
(20, 'Confidor™', 3, NULL),
(21, 'Harness™ Branded Herbicides', 3, NULL),
(22, 'Prosaro™', 3, NULL),
(23, 'Roundup™', 4, NULL),
(24, 'Stratego™', 4, NULL),
(25, 'Warrant™ Herbicide', 4, NULL),
(26, 'Xpro™', 4, NULL),
(27, 'Acephate', 5, NULL),
(28, 'Dichlorvos', 5, NULL),
(29, 'Methomyl', 5, NULL),
(30, 'Pyridaben', 6, NULL),
(31, 'Imidacloprid', 6, NULL),
(32, 'Esfenvalerate', 6, NULL),
(33, 'Dicofol', 7, NULL),
(34, 'Diflubenzuron', 7, NULL),
(35, 'Metolachlor', 8, NULL),
(36, 'Oxyfluorfen', 8, NULL),
(37, 'Propazine', 8, NULL),
(38, 'Pendimethalin', 8, NULL),
(39, 'Aldicarb sulfoxide', 8, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `producer`
--

CREATE TABLE `producer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producer`
--

INSERT INTO `producer` (`id`, `name`) VALUES
(1, 'OAT Agrio'),
(2, 'Syngenta'),
(3, 'Bayer AG'),
(4, 'DowDupont'),
(5, 'BASF'),
(6, 'Chaitra Agri Organics'),
(7, 'Camson Bio Technologies Ltd.'),
(8, 'Bonageri Crop Science');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `username`, `password`, `register_date`) VALUES
(3, 'Danilo', 'Sarovic', 'syndra11@gmail.com', 'share', '85e47ac07ac9d6416168a97e33fa969a', '2019-11-09 19:32:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cure`
--
ALTER TABLE `cure`
  ADD PRIMARY KEY (`diseaseId`,`drugId`),
  ADD KEY `drugId` (`drugId`);

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drug`
--
ALTER TABLE `drug`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producerId` (`producerId`);

--
-- Indexes for table `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `disease`
--
ALTER TABLE `disease`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `drug`
--
ALTER TABLE `drug`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `producer`
--
ALTER TABLE `producer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cure`
--
ALTER TABLE `cure`
  ADD CONSTRAINT `cure_ibfk_1` FOREIGN KEY (`diseaseId`) REFERENCES `disease` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cure_ibfk_2` FOREIGN KEY (`drugId`) REFERENCES `drug` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `drug`
--
ALTER TABLE `drug`
  ADD CONSTRAINT `drug_ibfk_1` FOREIGN KEY (`producerId`) REFERENCES `producer` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
