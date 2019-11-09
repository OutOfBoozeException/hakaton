-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2019 at 03:56 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`id`, `name`) VALUES
(1, 'Apple Leaf Counts'),
(2, 'Apple_Cedar Apple Rust'),
(3, 'Apple Leaf Counts'),
(4, 'Apple_Cedar Apple Rust'),
(5, 'Apple_Frogeye Spot'),
(6, 'Apple_Healthy'),
(7, 'Apple_Scab'),
(8, 'Blueberry Leaf Counts'),
(9, 'Blueberry_Healthy'),
(10, 'Cherry Leaf Counts'),
(11, 'Cherry_Healthy'),
(12, 'Cherry_Powdery Mildew'),
(13, 'Citrus Leaf Counts'),
(14, 'Citrus_Citrus Greening June'),
(15, 'Citrus_Citrus Greening Oct.'),
(16, 'Grape Leaf Counts'),
(17, 'Grape_Black Measles Fungus'),
(18, 'Grape_Black Rot Fungus'),
(19, 'Grape_Leaf Blight Fungus'),
(20, 'Peach Leaf Counts'),
(21, 'Peach_Bacterial Spot'),
(22, 'Peach_Healthy'),
(23, 'Pepper Leaf Counts'),
(24, 'Pepper_Bac spot NREC'),
(25, 'Pepper_Bacterial Spot JR'),
(26, 'Pepper_Healthy'),
(27, 'Potato Leaf Counts'),
(28, 'Potato_Early Blight Fungus'),
(29, 'Potato_Healthy Potato'),
(30, 'Potato_Late Blight Fungus'),
(31, 'Raspberry Leaf Counts'),
(32, 'Raspberry_Sheet1'),
(33, 'Soy Leaf Counts'),
(34, 'Soy_Sheet1'),
(35, 'Strawberry Leaf Counts'),
(36, 'Strawberry_Healthy'),
(37, 'Strawberry_Scorch'),
(38, 'Tomato Leaf Counts'),
(39, 'Tomato_Bacterial Spot Bacteria'),
(40, 'Tomato_Early Blight Fungus'),
(41, 'Tomato_Healthy'),
(42, 'Tomato_Late Blight Water Mold'),
(43, 'Tomato_Leaf Mold Fungus'),
(44, 'Tomato_Septoria Leaf Spot Fungus'),
(45, 'Tomato_Spider Mite Damage Insect'),
(46, 'Tomato_Target Spot Bacteria'),
(47, 'Tomato_YLCV Virus');

-- --------------------------------------------------------

--
-- Table structure for table `drug`
--

CREATE TABLE `drug` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `producerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`) VALUES
(1, 'pera', 'pera', 'pera@mailinator.com', 'pera', 'd8795f0d07280328f80e59b1e8414c49', '2018-10-18 23:27:27'),
(2, 'test', 'test', 'test@gmail.com', 'test', '098f6bcd4621d373cade4e832627b4f6', '2018-10-18 23:28:47');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `producer`
--
ALTER TABLE `producer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
