-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2019 at 09:33 PM
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
(48, 10, 'Put 48 ml of medicament in 10 l of water'),
(49, 5, 'Put 49 ml of medicament in 5 l of water'),
(49, 15, 'Put 49 ml of medicament in 15 l of water'),
(49, 19, 'Put 49 ml of medicament in 19 l of water'),
(50, 30, 'Put 50 ml of medicament in 30 l of water'),
(50, 36, 'Put 50 ml of medicament in 36 l of water'),
(51, 15, 'Put 51 ml of medicament in 15 l of water'),
(51, 18, 'Put 51 ml of medicament in 18 l of water'),
(51, 22, 'Put 51 ml of medicament in 22 l of water'),
(51, 26, 'Put 51 ml of medicament in 26 l of water'),
(52, 6, 'Put 52 ml of medicament in 6 l of water'),
(52, 29, 'Put 52 ml of medicament in 29 l of water'),
(52, 39, 'Put 52 ml of medicament in 39 l of water'),
(53, 20, 'Put 53 ml of medicament in 20 l of water'),
(53, 21, 'Put 53 ml of medicament in 21 l of water'),
(53, 33, 'Put 53 ml of medicament in 33 l of water'),
(54, 26, 'Put 54 ml of medicament in 26 l of water'),
(54, 36, 'Put 54 ml of medicament in 36 l of water'),
(55, 3, 'Put 55 ml of medicament in 3 l of water'),
(55, 4, 'Put 55 ml of medicament in 4 l of water'),
(55, 7, 'Put 55 ml of medicament in 7 l of water'),
(56, 6, 'Put 56 ml of medicament in 6 l of water'),
(56, 10, 'Put 56 ml of medicament in 10 l of water'),
(56, 31, 'Put 56 ml of medicament in 31 l of water'),
(57, 6, 'Put 57 ml of medicament in 6 l of water'),
(57, 18, 'Put 57 ml of medicament in 18 l of water'),
(57, 39, 'Put 57 ml of medicament in 39 l of water'),
(58, 2, 'Put 58 ml of medicament in 2 l of water'),
(58, 16, 'Put 58 ml of medicament in 16 l of water'),
(59, 21, 'Put 59 ml of medicament in 21 l of water'),
(59, 31, 'Put 59 ml of medicament in 31 l of water'),
(59, 33, 'Put 59 ml of medicament in 33 l of water'),
(60, 30, '10ml on 5l of water'),
(61, 16, 'Put 61 ml of medicament in 16 l of water'),
(61, 20, 'Put 61 ml of medicament in 20 l of water'),
(61, 31, 'Put 61 ml of medicament in 31 l of water'),
(61, 39, 'Put 61 ml of medicament in 39 l of water'),
(62, 3, 'Put 62 ml of medicament in 3 l of water'),
(62, 30, 'Put 62 ml of medicament in 30 l of water'),
(63, 20, 'Put 63 ml of medicament in 20 l of water'),
(63, 24, 'Put 63 ml of medicament in 24 l of water'),
(63, 39, 'Put 63 ml of medicament in 39 l of water'),
(64, 34, 'Put 64 ml of medicament in 34 l of water'),
(65, 16, 'Put 65 ml of medicament in 16 l of water'),
(65, 29, 'Put 65 ml of medicament in 29 l of water'),
(66, 6, 'Put 66 ml of medicament in 6 l of water'),
(66, 12, 'Put 66 ml of medicament in 12 l of water'),
(66, 14, 'Put 66 ml of medicament in 14 l of water'),
(66, 23, 'Put 66 ml of medicament in 23 l of water'),
(66, 33, 'Put 66 ml of medicament in 33 l of water'),
(67, 7, 'Put 67 ml of medicament in 7 l of water'),
(67, 30, 'Put 67 ml of medicament in 30 l of water'),
(67, 34, 'Put 67 ml of medicament in 34 l of water'),
(68, 11, 'Put 68 ml of medicament in 11 l of water'),
(68, 20, 'Put 68 ml of medicament in 20 l of water'),
(68, 21, 'Put 68 ml of medicament in 21 l of water'),
(68, 34, 'Put 68 ml of medicament in 34 l of water'),
(69, 4, 'Put 69 ml of medicament in 4 l of water'),
(69, 32, 'Put 69 ml of medicament in 32 l of water'),
(70, 8, 'Put 70 ml of medicament in 8 l of water'),
(70, 21, 'Put 70 ml of medicament in 21 l of water'),
(70, 28, 'Put 70 ml of medicament in 28 l of water'),
(71, 8, 'Put 71 ml of medicament in 8 l of water'),
(71, 14, 'Put 71 ml of medicament in 14 l of water'),
(71, 15, 'Put 71 ml of medicament in 15 l of water'),
(71, 31, 'Put 71 ml of medicament in 31 l of water'),
(71, 32, 'Put 71 ml of medicament in 32 l of water'),
(72, 19, 'Put 72 ml of medicament in 19 l of water'),
(73, 1, 'Put 73 ml of medicament in 1 l of water'),
(73, 7, 'Put 73 ml of medicament in 7 l of water'),
(73, 16, 'Put 73 ml of medicament in 16 l of water'),
(74, 16, 'Put 74 ml of medicament in 16 l of water'),
(74, 20, 'Put 74 ml of medicament in 20 l of water'),
(74, 35, 'Put 74 ml of medicament in 35 l of water'),
(75, 6, 'Put 75 ml of medicament in 6 l of water'),
(75, 8, 'Put 75 ml of medicament in 8 l of water'),
(75, 31, 'Put 75 ml of medicament in 31 l of water'),
(75, 32, 'Put 75 ml of medicament in 32 l of water'),
(76, 7, 'Put 76 ml of medicament in 7 l of water'),
(76, 22, 'Put 76 ml of medicament in 22 l of water'),
(77, 18, 'Put 77 ml of medicament in 18 l of water'),
(77, 30, 'Put 77 ml of medicament in 30 l of water'),
(78, 36, '8ml on 10l of water'),
(79, 9, 'Put 79 ml of medicament in 9 l of water'),
(79, 12, 'Put 79 ml of medicament in 12 l of water'),
(79, 18, 'Put 79 ml of medicament in 18 l of water'),
(79, 28, 'Put 79 ml of medicament in 28 l of water'),
(79, 37, 'Put 79 ml of medicament in 37 l of water'),
(80, 12, 'Put 80 ml of medicament in 12 l of water'),
(80, 31, 'Put 80 ml of medicament in 31 l of water'),
(80, 35, 'Put 80 ml of medicament in 35 l of water'),
(81, 15, 'Put 81 ml of medicament in 15 l of water'),
(82, 26, 'Put 82 ml of medicament in 26 l of water'),
(83, 9, 'Put 83 ml of medicament in 9 l of water'),
(83, 20, 'Put 83 ml of medicament in 20 l of water'),
(83, 22, 'Put 83 ml of medicament in 22 l of water'),
(83, 36, 'Put 83 ml of medicament in 36 l of water'),
(84, 12, 'Put 84 ml of medicament in 12 l of water'),
(84, 21, 'Put 84 ml of medicament in 21 l of water'),
(84, 25, 'Put 84 ml of medicament in 25 l of water'),
(84, 35, 'Put 84 ml of medicament in 35 l of water'),
(85, 29, 'Put 85 ml of medicament in 29 l of water');

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
(48, 'Blueberry___healthy', 'Blueberry healthy'),
(49, 'Apple___healthy', 'Apple healthy'),
(50, 'Apple___Black_rot', 'Black rot'),
(51, 'Tomato___Tomato_mosaic_virus', 'mosaic virus'),
(52, 'Apple___Cedar_apple_rust', 'Cedar rust'),
(53, 'Apple___Apple_scab', 'Scab'),
(54, 'Pepper,_bell___healthy', 'Bell healthy'),
(55, 'Peach___healthy', 'Peach healthy'),
(56, 'Tomato___Late_blight', 'Late blight'),
(57, 'Tomato___Septoria_leaf_spot', 'Septoria leaf spot'),
(58, 'Soybean___healthy', 'Soybean healthy'),
(59, 'Potato___healthy', 'Potato healthy'),
(60, 'Tomato___Early_blight', 'Early blight'),
(61, 'Cherry_(including_sour)___healthy', 'Sour healthy'),
(62, 'Peach___Bacterial_spot', 'Bacterial spot'),
(63, 'Pepper,_bell___Bacterial_spot', 'Bell Bacterial spot'),
(64, 'Tomato___healthy', 'Tomato healthy'),
(65, 'Tomato___Spider_mites Two-spotted_spider_mite', 'Spider mites Two spotted spider mite'),
(66, 'Tomato___Target_Spot', 'Target Spot'),
(67, 'Raspberry___healthy', 'Raspberry healthy'),
(68, 'Strawberry___healthy', 'Ealthy'),
(69, 'Orange___Haunglongbing_(Citrus_greening)', 'Haunglongbing Citrus greening'),
(70, 'Cherry_(including_sour)___Powdery_mildew', 'Sour Powdery mildew'),
(71, 'Potato___Late_blight', 'Late blight'),
(72, 'Tomato___Leaf_Mold', 'Leaf Mold'),
(73, 'Tomato___Tomato_Yellow_Leaf_Curl_Virus', 'Yellow Leaf Curl Virus'),
(74, 'Grape___Black_rot', 'Black rot'),
(75, 'Grape___healthy', 'Grape healthy'),
(76, 'Grape___Esca_(Black_Measles)', 'Esca Black Measles'),
(77, 'Strawberry___Leaf_scorch', 'Leaf scorch'),
(78, 'Corn_(maize)___Common_rust_', 'Common rust'),
(79, 'Potato___Early_blight', 'Early blight'),
(80, 'Corn_(maize)___Northern_Leaf_Blight', 'Northern Leaf Blight'),
(81, 'Tomato___Bacterial_spot', 'Bacterial spot'),
(82, 'Corn_(maize)___healthy', 'Corn maize healthy'),
(83, 'Corn_(maize)___Cercospora_leaf_spot Gray_leaf_spot', 'Cercospora leaf spot Gray leaf spot'),
(84, 'Squash___Powdery_mildew', 'Powdery mildew'),
(85, 'Grape___Leaf_blight_(Isariopsis_Leaf_Spot)', 'Leaf blight Isariopsis Leaf Spot');

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
(1, 'Benfuracarb', 1, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(2, 'Cyflumetofen', 1, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(3, 'Flutianil', 1, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(4, 'Kaligreen', 1, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(5, 'Acaritouch', 1, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(6, 'Benzofenap', 1, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(7, 'Benfuresate', 1, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(8, 'Amistar Extra 280 SC', 2, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(9, 'Artea 330 EC', 2, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(10, 'Bravo 720 SC', 2, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(11, 'Certicor 050 FS', 2, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(12, 'Cherokee 487,5 SE', 2, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(13, 'Chorus 50 WG', 2, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(14, 'Dividend M 030 FS', 2, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(15, 'Folio Gold 537.5 SC', 2, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(16, 'Acceleron™', 3, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(17, 'Adengo™', 3, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(18, 'Alion™', 3, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(19, 'Belt™', 3, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(20, 'Confidor™', 3, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(21, 'Harness™ Branded Herbicides', 3, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(22, 'Prosaro™', 3, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(23, 'Roundup™', 4, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(24, 'Stratego™', 4, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(25, 'Warrant™ Herbicide', 4, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(26, 'Xpro™', 4, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(27, 'Acephate', 5, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(28, 'Dichlorvos', 5, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(29, 'Methomyl', 5, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(30, 'Pyridaben', 6, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(31, 'Imidacloprid', 6, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(32, 'Esfenvalerate', 6, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(33, 'Dicofol', 7, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(34, 'Diflubenzuron', 7, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(35, 'Metolachlor', 8, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(36, 'Oxyfluorfen', 8, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(37, 'Propazine', 8, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(38, 'Pendimethalin', 8, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.'),
(39, 'Aldicarb sulfoxide', 8, 'Strains were previously selected for biocontrol ability from collections of >4000 bacteria. Strains 63-49 and 63-28 were tested on cucumber plants grown in rockwool in two replicatedPythium-inoculated trials conducted in British Columbia (B.C). Another inoculated, replicated trial was conducted in Quebec with all five strains. Cucumber yields (fruit number and weight) were measured over a ten-week harvest period. Strain 63-49 caused an early promotion of plant growth and increased cucumber yields at early harvests.');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

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
