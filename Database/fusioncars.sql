-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2024 at 08:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fusioncars`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `car_id` int(100) NOT NULL,
  `car_name` varchar(200) NOT NULL,
  `car_price` float NOT NULL,
  `car_image` varchar(200) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `car_name`, `car_price`, `car_image`, `category`) VALUES
(1, 'Ford Mustang Roadsrtar', 7461000, '../media/mustang.png', 'ford'),
(2, 'Ford Mustang Shelby (hard-top)', 8400000, '../media/mustang-shelby.png', 'ford'),
(3, 'Ford Endeavour', 3650000, '../media/ford-endeavour.png', 'ford'),
(4, 'Ford Mustang Shelby (open-top)', 8200000, '../media/mustang-shelby3.png', 'ford'),
(5, 'Ford Ranger', 7500000, '../media/ford-ranger.png', 'ford'),
(6, 'Ford Figo', 609000, '../media/ford-figo.png', 'ford'),
(7, 'Ford Explorer', 4500000, '../media/ford-explorer.png', 'ford'),
(8, 'Ford Super Duty', 3100000, '../media/ford-super-duty.png', 'ford'),
(9, 'Chevrolet Camaro', 5025000, '../media/chevrolet-camaro.png', 'chevrolet'),
(10, 'Chevrolet Chorvette', 5065000, '../media/chevrolet-corvette.jpg', 'chevrolet'),
(11, 'Chevrolet Cruze', 1746000, '../media/chevrolet-cruze.png', 'chevrolet'),
(12, 'Chevrolet Suburban', 5670000, '../media/chevrolet-suburban.png', 'chevrolet'),
(13, 'Chevrolet Blazer EV', 4066590, '../media/chevrolet-blazer-ev.png', 'chevrolet'),
(14, 'Chevrolet Blazer', 2938400, '../media/chevrolet-blazer.png', 'chevrolet'),
(15, 'Chevrolet Tavera', 1068000, '../media/chevrolet-tavera.png', 'chevrolet'),
(16, 'Chevrolet TRAX', 950000, '../media/chevrolet-trax.png', 'chevrolet'),
(17, 'Aston Martin DBX', 46300000, '../media/aston-martin-dbx.jpeg', 'aston-martin'),
(18, 'Aston Martin DBS', 56500000, '../media/aston-martin-dbs.png', 'aston-martin'),
(19, 'Aston Martin Valiant', 45965000, '../media/aston-martin-valiant.png', 'aston-martin'),
(20, 'Aston Martin DB12 ', 51525000, '../media/aston-martin-db12.jpg', 'aston-martin'),
(21, 'Aston Martin Vantage', 39900000, '../media/aston-martin-vantage.png', 'aston-martin'),
(22, 'Aston Martin Valhalla', 33900000, '../media/aston-martin-valhalla.jpg', 'aston-martin'),
(23, 'Aston Martin Valour', 45600000, '../media/aston-martin-valour.png', 'aston-martin'),
(24, 'Aston MArtin Valkyrie', 206330000, '../media/aston-martin-valkyrie.webp', 'aston-martin'),
(25, 'Audi R8', 25400000, '../media/audi-r8.png', 'audi'),
(26, 'Audi E-tron sport', 12650000, '../media/audi-etron-sprot.jpeg', 'audi'),
(27, 'Audi Etron', 13150000, '../media/audi-etron.jpeg', 'audi'),
(28, 'Audi S5', 7732000, '../media/audi-s5.png', 'audi'),
(29, 'Audi Q8 Etron', 12700000, '../media/audi-q8-etron.png', 'audi'),
(30, 'Audi RS Q8', 22250000, '../media/audi-rs-q8.jpeg', 'audi'),
(31, 'Audi Q5', 8367000, '../media/audi-q5.png', 'audi'),
(32, 'Audi Q3', 4425000, '../media/audi-q3.png', 'audi'),
(33, 'BMW i7', 23035000, '../media/bmw-i7.jpeg', 'bmw'),
(34, 'BMW i4', 7750000, '../media/bmw-i4.png', 'bmw'),
(35, 'BMW z4', 9090000, '../media/bmw-z4.png', 'bmw'),
(36, 'BMW m340i', 7290500, '../media/bmw-m340i.jpeg', 'bmw'),
(37, 'BMW XM', 26000000, '../media/bmw-xm.png', 'bmw'),
(38, 'BMW X7', 13450000, '../media/bmw-x7.png', 'bmw'),
(39, 'BMW z4 340i', 9090900, '../media/bmw-z4-340i.png', 'bmw'),
(40, 'BMW M2', 9990250, '../media/bmw-m2.png', 'bmw'),
(41, 'Dodge SRT Hellcat', 13000000, '../media/dodge-srt-hellcat.png', 'dodge'),
(42, 'Dodge Charger', 13500000, '../media/dodge-charger.png', 'dodge'),
(43, 'Dodge R/T Hemi', 3250000, '../media/dodge-hemi.png', 'dodge'),
(44, 'Dodge Durango', 5000000, '../media/dodge-durango.jpg', 'dodge'),
(45, 'Dodge SRT Demon 170', 7997000, '../media/dodge-srt-demon.png', 'dodge'),
(46, 'Dodge Viper', 751000, '../media/dodge-viper.png', 'dodge'),
(47, 'Dodge Hornet', 2738500, '../media/dodge-hornet.png', 'dodge'),
(48, 'Dodge Ram', 498000, '../media/dodge-ram.png', 'dodge'),
(49, 'Hyundai Palisade', 4050500, '../media/hyundai-palisade.png', 'hyundai'),
(50, 'Hyundai Verna', 1742500, '../media/hyundai-verana.png', 'hyundai'),
(51, 'Hyundai Exter', 1043000, '../media/hyundai-exter.png', 'hyundai'),
(52, 'Hyundai Tucson', 3494000, '../media/hyundai-tucson.png', 'hyundai'),
(53, 'Hyundai Alcazar', 2128600, '../media/hyundai-alcazar.png', 'hyundai'),
(54, 'Hyundai ioniq', 4665500, '../media/hyundai-ioniq.png', 'hyundai'),
(55, 'Hyundai i20', 1121500, '../media/hyundai-i20.png', 'hyundai'),
(56, 'Hyundai Venue', 1348000, '../media/hyundai-venue.png', 'hyundai'),
(57, 'Mercedes-Benz Maybatch S Class', 32050000, '../media/mercedes-maybatch-s-class.png', 'mercedes'),
(58, 'Mercedes-Benz E Class', 7650000, '../media/mercedes-e-class.png', 'mercedes'),
(59, 'Mercedes-Benz A Class', 4650500, '../media/mercedes-a-class.png', 'mercedes'),
(60, 'Mercedes-Benz AMG GLC', 7690900, '../media/mercedes-GLC.avif', 'mercedes'),
(61, 'Mercedes-Benz G Class (G-Wagon)', 42590000, '../media/mercedes-G-wagon.png', 'mercedes'),
(62, 'Mercedes-Benz Maybatch GLS 600', 34000900, '../media/mercedes-maybatch-GLS-600.png', 'mercedes'),
(63, 'Mercedes-Benz AMG E43', 16300000, '../media/mercedes-e43.jpg', 'mercedes'),
(64, 'Mercedes-Benz AMG GT', 27150000, '../media/mercedes-amg-gt.png', 'mercedes'),
(65, 'Mistubishi Pajero Sport', 3030000, '../media/mistubishi-pajero-sport.png', 'mistubishi'),
(66, 'Mistubishi Lancer', 815000, '../media/mistubishi-lancer.png', 'mistubishi'),
(67, 'Mistubishi Mirage', 500000, '../media/mistubishi-mirage.png', 'mistubishi'),
(68, 'Mistubishi Xpander', 1050000, '../media/mistubishi-xpander.png', 'mistubishi'),
(69, 'Mistubishi Outlander', 1026000, '../media/mistubishi-outlander.png', 'mistubishi'),
(70, 'Mistubishi Lancer-Evolution', 5045000, '../media/mistubishi-lancer-evolution.png', 'mistubishi'),
(71, 'Mistubishi Eclipse-Cross', 1800500, '../media/mistubishi-eclipse-cross.png', 'mistubishi'),
(72, 'Mistubishi RVR', 1511000, '../media/mistubishi-RVR.jpg', 'mistubishi'),
(73, 'Nissan GTR r35', 21400000, '../media/nissan-GTR-r35.png', 'nissan'),
(74, 'Nissan skyline r34', 2583000, '../media/nissan-skyline-r34.png', 'nissan'),
(75, 'Nissan kicks', 1488000, '../media/nissan-kicks.png', 'nissan'),
(76, 'Nissan skyline GTR R33', 11200000, '../media/nissan-skyline-GTR-R33.png', 'nissan'),
(77, 'Nissan 370z', 5550000, '../media/nissan-370z.png', 'nissan'),
(78, 'Nissan cabstar', 3513000, '../media/nissan-cabstar.jpg', 'nissan'),
(79, 'Nissan magnite', 1137000, '../media/nissan-magnite.png', 'nissan'),
(80, 'Nissan Z', 5860000, '../media/nissan-z.png', 'nissan'),
(81, 'Toyota Landcruser', 24674300, '../media/toyota-landcruser.png', 'toyota'),
(82, 'Toyota Vellfire', 13350000, '../media/toyota-vellfire.png', 'toyota'),
(83, 'Toyota Innova Hycross', 3098000, '../media/toyota-innova-hycross.png', 'toyota'),
(84, 'Toyota Hyryder', 2020000, '../media/toyota-hyryder.jpg', 'toyota'),
(85, 'Toyota Fortuner Legender', 4764000, '../media/toyota-fortuner-legender.jpg', 'toyota'),
(86, 'Toyota Hilux', 3790900, '../media/toyota-hilux.png', 'toyota'),
(87, 'Toyota Innova Crysta', 2630300, '../media/toyota-innova-crysta.webp', 'toyota'),
(88, 'Toyota Camry', 4618000, '../media/toyota-camry.png', 'toyota'),
(89, 'Volvo S90', 6835000, '../media/volvo-s90.png', 'volvo'),
(90, 'Volvo S60', 4598000, '../media/volvo-s60.jpg', 'volvo'),
(91, 'Volvo V90', 6536000, '../media/volvo-v90.png', 'volvo'),
(92, 'Volvo V60', 4536000, '../media/volvo-v60.png', 'volvo'),
(93, 'Volvo xc90', 11000000, '../media/volvo-xc90.png', 'volvo'),
(94, 'Volvo xc60', 6895000, '../media/volvo-xc60.png', 'volvo'),
(95, 'Volvo xc40', 4640000, '../media/volvo-xc40.png', 'volvo'),
(96, 'Volvo c40', 6125500, '../media/volvo-c40.jpg', 'volvo');

-- --------------------------------------------------------

--
-- Table structure for table `cars_detail`
--

CREATE TABLE `cars_detail` (
  `cars_id` int(100) NOT NULL,
  `cars_name` varchar(200) NOT NULL,
  `cars_price` float NOT NULL,
  `cars_image` varchar(200) NOT NULL,
  `cars_desc` varchar(1000) NOT NULL,
  `milage` varchar(100) NOT NULL,
  `fule_type` varchar(100) NOT NULL,
  `engine` varchar(100) NOT NULL,
  `BHP` varchar(100) NOT NULL,
  `transmission` varchar(100) NOT NULL,
  `seating` varchar(100) NOT NULL,
  `bootspace` varchar(100) NOT NULL,
  `airbag` varchar(100) NOT NULL,
  `park_sence` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars_detail`
--

INSERT INTO `cars_detail` (`cars_id`, `cars_name`, `cars_price`, `cars_image`, `cars_desc`, `milage`, `fule_type`, `engine`, `BHP`, `transmission`, `seating`, `bootspace`, `airbag`, `park_sence`) VALUES
(1, 'Ford Mustang Roadsrtar', 7461000, 'media/mustang.png', 'The Ford Mustang was first shipped to the Indian market as a CBD from 2016 onwards. The iconic Mustang is a pony car or roadster with very few parallels in this part of the world. There is a single petrol variant that is sold in India for the four seater car which also offers boot space of 383 litters in all.', '8 kmpl', 'Petrol', '4951 cc', '396 bhp & 515 Nm', '6 Speed Manual', '4 Person', '338 L', '8 Airbags ', 'No'),
(2, 'Ford Mustang Shelby (hard-top)', 8400000, 'media/mustang-shelby.png', 'The Shelby Mustang is a high-performance variant of the Ford Mustang built by Shelby American from 1965 to 1967 and by the Ford Motor Company from 1968 to 1970. In 2005, Ford revived the Shelby nameplate for a high-performance model of the fifth-generation Ford Mustang.', '9 kmpl', 'Petrol / Gasoline', '5408 cc', '760hp & 625Nm', '7 Speed Automatic', '4 Person', '383 L', '8 Airbags', 'No'),
(3, 'Ford Endeavour', 3650000, 'media/ford-endeavour.png', 'Ford Endeavour is a 7 seater SUV with the last recorded price of Rs. 29.19 - 36.50 Lakh. It is available in 7 variants, 1996 to 3198 cc engine options and 2 transmission options : Manual and Automatic.', '12-14 kmpl', 'Diesel', '3198 cc', '197bhp & 470Nm', '10 Speed Automatic', '7 Person', '427 L', '8 Airbags', 'Yes'),
(4, 'Ford Mustang Shelby (open-top)', 8265000, 'media/mustang-shelby3.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(5, 'Ford Ranger', 7535000, 'media/ford-ranger.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(6, 'Ford Figo', 609000, 'media/ford-figo.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(7, 'Ford Explorer', 4500500, 'media/ford-explorer.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(8, 'Ford Super Duty', 3162000, 'media/ford-super-duty.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(9, 'Chevrolet Camaro', 5025000, 'media/chevrolet-camaro.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(10, 'Chevrolet Chorvette', 5065000, 'media/chevrolet-corvette.jpg', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(11, 'Chevrolet Cruze', 1746000, 'media/chevrolet-cruze.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(12, 'Chevrolet Suburban', 5670000, 'media/chevrolet-suburban.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(13, 'Chevrolet Blazer EV', 4066590, 'media/chevrolet-blazer-ev.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(14, 'Chevrolet Blazer', 2938400, 'media/chevrolet-blazer.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(15, 'Chevrolet Tavera', 1068000, 'media/chevrolet-tavera.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(16, 'Chevrolet TRAX', 950000, 'media/chevrolet-trax.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(17, 'Aston Martin DBX', 46300000, 'media/aston-martin-dbx.jpeg', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(18, 'Aston Martin DBS', 56500000, 'media/aston-martin-dbs.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(19, 'Aston Martin Valiant', 45965000, 'media/aston-martin-valiant.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(20, 'Aston Martin DB12', 51525000, 'media/aston-martin-db12.jpg', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(21, 'Aston Martin Vantage', 39900000, 'media/aston-martin-vantage.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(22, 'Aston Martin Valhalla', 33900000, 'media/aston-martin-valhalla.jpg', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(23, 'Aston Martin Valour', 45600000, 'media/aston-martin-valour.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(24, 'Aston MArtin Valkyrie', 206300000, 'media/aston-martin-valkyrie.webp', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(25, 'Audi R8', 25400000, 'media/audi-r8.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(26, 'Audi E-tron sport', 12650000, 'media/audi-etron-sprot.jpeg', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(27, 'Audi Etron', 13150000, 'media/audi-etron.jpeg', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(28, 'Audi S5', 7732000, 'media/audi-s5.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(29, 'Audi Q8 Etron', 12700000, 'media/audi-q8-etron.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(30, 'Audi RS Q8', 22250000, 'media/audi-rs-q8.jpeg', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(31, 'Audi Q5', 8367000, 'media/audi-q5.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(32, 'Audi Q3', 4425000, 'media/audi-q3.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(33, 'BMW i7', 23035000, 'media/bmw-i7.jpeg', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(34, 'BMW i4', 7750000, 'media/bmw-i4.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(35, 'BMW z4', 9090000, 'media/bmw-z4.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(36, 'BMW m340i', 7290500, 'media/bmw-m340i.jpeg', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(37, 'BMW XM', 26000000, 'media/bmw-xm.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(38, 'BMW X7', 13450000, 'media/bmw-x7.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(39, 'BMW z4 340i', 9090900, 'media/bmw-z4-340i.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(40, 'BMW M2', 9990250, 'media/bmw-m2.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(41, 'Dodge SRT Hellcat', 13000000, 'media/dodge-srt-hellcat.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(42, 'Dodge Charger', 13500000, 'media/dodge-charger.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(43, 'Dodge R/T Hemi', 3250000, 'media/dodge-hemi.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(44, 'Dodge Durango', 5000000, 'media/dodge-durango.jpg', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(45, 'Dodge SRT Demon 170', 7997000, 'media/dodge-srt-demon.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(46, 'Dodge Viper', 751000, 'media/dodge-viper.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(47, 'Dodge Hornet', 2738500, 'media/dodge-hornet.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(48, 'Dodge Ram', 498000, 'media/dodge-ram.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(49, 'Hyundai Palisade', 4050500, 'media/hyundai-palisade.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(50, 'Hyundai Verna', 1742500, 'media/hyundai-verana.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(51, 'Hyundai Exter', 1043000, 'media/hyundai-exter.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(52, 'Hyundai Tucson', 3494000, 'media/hyundai-tucson.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(53, 'Hyundai Alcazar', 2128600, 'media/hyundai-alcazar.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(54, 'Hyundai ioniq', 4665500, 'media/hyundai-ioniq.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(55, 'Hyundai i20', 1121500, 'media/hyundai-i20.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(56, 'Hyundai Venue', 1348000, 'media/hyundai-venue.png', 'Toyota has confirmed the waiting period for the Fortuner currently ranges between 6-10 weeks, even with its production plant working at 95 per cent of its capacity. Click here for more details.', '', '', '', '', '', '', '', '', ''),
(57, 'Mercedes-Benz Maybatch S Class', 32050000, 'media/mercedes-maybatch-s-class.png', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Non eaque sunt ducimus! Iure deserunt delectus suscipit qui eveniet sequi culpa odit eum illum et tenetur quod, excepturi dolorum possimus sunt!', '', '', '', '', '', '', '', '', ''),
(58, 'Mercedes-Benz E Class', 7650000, 'media/mercedes-e-class.png', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Non eaque sunt ducimus! Iure deserunt delectus suscipit qui eveniet sequi culpa odit eum illum et tenetur quod, excepturi dolorum possimus sunt!', '', '', '', '', '', '', '', '', ''),
(59, 'Mercedes-Benz A Class', 4650500, 'media/mercedes-a-class.png', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Non eaque sunt ducimus! Iure deserunt delectus suscipit qui eveniet sequi culpa odit eum illum et tenetur quod, excepturi dolorum possimus sunt!', '', '', '', '', '', '', '', '', ''),
(60, 'Mercedes-Benz AMG GLC', 7690900, 'media/mercedes-GLC.avif', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Non eaque sunt ducimus! Iure deserunt delectus suscipit qui eveniet sequi culpa odit eum illum et tenetur quod, excepturi dolorum possimus sunt!', '', '', '', '', '', '', '', '', ''),
(61, 'Mercedes-Benz G Class (G-Wagon)', 42590000, 'media/mercedes-G-wagon.png', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Non eaque sunt ducimus! Iure deserunt delectus suscipit qui eveniet sequi culpa odit eum illum et tenetur quod, excepturi dolorum possimus sunt!', '', '', '', '', '', '', '', '', ''),
(62, 'Mercedes-Benz Maybatch GLS 600', 34000900, 'media/mercedes-maybatch-GLS-600.png', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Non eaque sunt ducimus! Iure deserunt delectus suscipit qui eveniet sequi culpa odit eum illum et tenetur quod, excepturi dolorum possimus sunt!', '', '', '', '', '', '', '', '', ''),
(63, 'Mercedes-Benz AMG E43', 16300000, 'media/mercedes-e43.jpg', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Non eaque sunt ducimus! Iure deserunt delectus suscipit qui eveniet sequi culpa odit eum illum et tenetur quod, excepturi dolorum possimus sunt!', '', '', '', '', '', '', '', '', ''),
(64, 'Mercedes-Benz AMG GT', 27150000, 'media/mercedes-amg-gt.png', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Non eaque sunt ducimus! Iure deserunt delectus suscipit qui eveniet sequi culpa odit eum illum et tenetur quod, excepturi dolorum possimus sunt!', '', '', '', '', '', '', '', '', ''),
(65, 'Mistubishi Pajero Sport', 3030000, 'media/mistubishi-pajero-sport.png', '   Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum iusto, impedit rerum dolor libero et voluptatem dolorem corrupti cumque delectus ab voluptate asperiores accusantium optio, sit sapiente perspiciatis beatae explicabo?', '', '', '', '', '', '', '', '', ''),
(66, 'Mistubishi Lancer', 815000, 'media/mistubishi-lancer.png', '   Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum iusto, impedit rerum dolor libero et voluptatem dolorem corrupti cumque delectus ab voluptate asperiores accusantium optio, sit sapiente perspiciatis beatae explicabo?', '', '', '', '', '', '', '', '', ''),
(67, 'Mistubishi Mirage', 500000, 'media/mistubishi-mirage.png', '   Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum iusto, impedit rerum dolor libero et voluptatem dolorem corrupti cumque delectus ab voluptate asperiores accusantium optio, sit sapiente perspiciatis beatae explicabo?', '', '', '', '', '', '', '', '', ''),
(68, 'Mistubishi Xpander', 1050000, 'media/mistubishi-xpander.png', '   Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum iusto, impedit rerum dolor libero et voluptatem dolorem corrupti cumque delectus ab voluptate asperiores accusantium optio, sit sapiente perspiciatis beatae explicabo?', '', '', '', '', '', '', '', '', ''),
(69, 'Mistubishi Outlander', 1026000, 'media/mistubishi-outlander.png', '   Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum iusto, impedit rerum dolor libero et voluptatem dolorem corrupti cumque delectus ab voluptate asperiores accusantium optio, sit sapiente perspiciatis beatae explicabo?', '', '', '', '', '', '', '', '', ''),
(70, 'Mistubishi Lancer-Evolution', 5045000, 'media/mistubishi-lancer-evolution.png', '   Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum iusto, impedit rerum dolor libero et voluptatem dolorem corrupti cumque delectus ab voluptate asperiores accusantium optio, sit sapiente perspiciatis beatae explicabo?', '', '', '', '', '', '', '', '', ''),
(71, 'Mistubishi Eclipse-Cross', 1800500, 'media/mistubishi-eclipse-cross.png', '   Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum iusto, impedit rerum dolor libero et voluptatem dolorem corrupti cumque delectus ab voluptate asperiores accusantium optio, sit sapiente perspiciatis beatae explicabo?', '', '', '', '', '', '', '', '', ''),
(72, 'Mistubishi RVR', 1511000, 'media/mistubishi-RVR.jpg', '   Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum iusto, impedit rerum dolor libero et voluptatem dolorem corrupti cumque delectus ab voluptate asperiores accusantium optio, sit sapiente perspiciatis beatae explicabo?', '', '', '', '', '', '', '', '', ''),
(73, 'Nissan GTR r35', 21400000, 'media/nissan-GTR-r35.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate ratione beatae nesciunt expedita? Consectetur, exercitationem libero at corrupti dolor doloremque error. Ab inventore magni ullam deleniti laborum beatae assumenda molestias.', '', '', '', '', '', '', '', '', ''),
(74, 'Nissan skyline r34', 2583000, 'media/nissan-skyline-r34.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate ratione beatae nesciunt expedita? Consectetur, exercitationem libero at corrupti dolor doloremque error. Ab inventore magni ullam deleniti laborum beatae assumenda molestias.', '', '', '', '', '', '', '', '', ''),
(75, 'Nissan kicks', 1488000, 'media/nissan-kicks.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate ratione beatae nesciunt expedita? Consectetur, exercitationem libero at corrupti dolor doloremque error. Ab inventore magni ullam deleniti laborum beatae assumenda molestias.', '', '', '', '', '', '', '', '', ''),
(76, 'Nissan skyline GTR R33', 11200000, 'media/nissan-skyline-GTR-R33.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate ratione beatae nesciunt expedita? Consectetur, exercitationem libero at corrupti dolor doloremque error. Ab inventore magni ullam deleniti laborum beatae assumenda molestias.', '', '', '', '', '', '', '', '', ''),
(77, 'Nissan 370z', 5550000, 'media/nissan-370z.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate ratione beatae nesciunt expedita? Consectetur, exercitationem libero at corrupti dolor doloremque error. Ab inventore magni ullam deleniti laborum beatae assumenda molestias.', '', '', '', '', '', '', '', '', ''),
(78, 'Nissan cabstar', 3513000, 'media/nissan-cabstar.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate ratione beatae nesciunt expedita? Consectetur, exercitationem libero at corrupti dolor doloremque error. Ab inventore magni ullam deleniti laborum beatae assumenda molestias.', '', '', '', '', '', '', '', '', ''),
(79, 'Nissan magnite', 1137000, 'media/nissan-magnite.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate ratione beatae nesciunt expedita? Consectetur, exercitationem libero at corrupti dolor doloremque error. Ab inventore magni ullam deleniti laborum beatae assumenda molestias.', '', '', '', '', '', '', '', '', ''),
(80, 'Nissan Z', 5860000, 'media/nissan-z.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate ratione beatae nesciunt expedita? Consectetur, exercitationem libero at corrupti dolor doloremque error. Ab inventore magni ullam deleniti laborum beatae assumenda molestias.', '', '', '', '', '', '', '', '', ''),
(81, 'Toyota Landcruser', 24674300, 'media/toyota-landcruser.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos quis similique eum alias iste vel. Minus corporis possimus nulla quisquam, animi culpa ipsam maxime accusantium, commodi quis tempora doloribus repellat.', '', '', '', '', '', '', '', '', ''),
(82, 'Toyota Vellfire', 13350000, 'media/toyota-vellfire.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos quis similique eum alias iste vel. Minus corporis possimus nulla quisquam, animi culpa ipsam maxime accusantium, commodi quis tempora doloribus repellat.', '', '', '', '', '', '', '', '', ''),
(83, 'Toyota Innova Hycross', 3098000, 'media/toyota-innova-hycross.png', 'toyota', '', '', '', '', '', '', '', '', ''),
(84, 'Toyota Hyryder', 2020000, 'media/toyota-hyryder.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos quis similique eum alias iste vel. Minus corporis possimus nulla quisquam, animi culpa ipsam maxime accusantium, commodi quis tempora doloribus repellat.', '', '', '', '', '', '', '', '', ''),
(85, 'Toyota Fortuner Legender', 4764000, 'media/toyota-fortuner-legender.jpg', 'toyota', '', '', '', '', '', '', '', '', ''),
(86, 'Toyota Hilux', 3790900, 'media/toyota-hilux.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos quis similique eum alias iste vel. Minus corporis possimus nulla quisquam, animi culpa ipsam maxime accusantium, commodi quis tempora doloribus repellat.', '', '', '', '', '', '', '', '', ''),
(87, 'Toyota Innova Crysta', 2630300, 'media/toyota-innova-crysta.webp', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos quis similique eum alias iste vel. Minus corporis possimus nulla quisquam, animi culpa ipsam maxime accusantium, commodi quis tempora doloribus repellat.', '', '', '', '', '', '', '', '', ''),
(88, 'Toyota Camry', 4618000, 'media/toyota-camry.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos quis similique eum alias iste vel. Minus corporis possimus nulla quisquam, animi culpa ipsam maxime accusantium, commodi quis tempora doloribus repellat.', '', '', '', '', '', '', '', '', ''),
(89, 'Volvo S90', 6835000, 'media/volvo-s90.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab, quaerat inventore. Fugit odit officiis excepturi quis aspernatur perferendis nihil adipisci saepe consectetur, amet ratione architecto eligendi incidunt iure cupiditate blanditiis!', '', '', '', '', '', '', '', '', ''),
(90, 'Volvo S60', 4598000, 'media/volvo-s60.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab, quaerat inventore. Fugit odit officiis excepturi quis aspernatur perferendis nihil adipisci saepe consectetur, amet ratione architecto eligendi incidunt iure cupiditate blanditiis!', '', '', '', '', '', '', '', '', ''),
(91, 'Volvo V90', 6536000, 'media/volvo-v90.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab, quaerat inventore. Fugit odit officiis excepturi quis aspernatur perferendis nihil adipisci saepe consectetur, amet ratione architecto eligendi incidunt iure cupiditate blanditiis!', '', '', '', '', '', '', '', '', ''),
(92, 'Volvo V60', 4536000, 'media/volvo-v60.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab, quaerat inventore. Fugit odit officiis excepturi quis aspernatur perferendis nihil adipisci saepe consectetur, amet ratione architecto eligendi incidunt iure cupiditate blanditiis!', '', '', '', '', '', '', '', '', ''),
(93, 'Volvo xc90', 11000000, 'media/volvo-xc90.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab, quaerat inventore. Fugit odit officiis excepturi quis aspernatur perferendis nihil adipisci saepe consectetur, amet ratione architecto eligendi incidunt iure cupiditate blanditiis!', '', '', '', '', '', '', '', '', ''),
(94, 'Volvo xc60', 6895000, 'media/volvo-xc60.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab, quaerat inventore. Fugit odit officiis excepturi quis aspernatur perferendis nihil adipisci saepe consectetur, amet ratione architecto eligendi incidunt iure cupiditate blanditiis!', '', '', '', '', '', '', '', '', ''),
(95, 'Volvo xc40', 4640000, 'media/volvo-xc40.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab, quaerat inventore. Fugit odit officiis excepturi quis aspernatur perferendis nihil adipisci saepe consectetur, amet ratione architecto eligendi incidunt iure cupiditate blanditiis!', '', '', '', '', '', '', '', '', ''),
(96, 'Volvo c40', 6125500, 'media/volvo-c40.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab, quaerat inventore. Fugit odit officiis excepturi quis aspernatur perferendis nihil adipisci saepe consectetur, amet ratione architecto eligendi incidunt iure cupiditate blanditiis!', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_name` varchar(200) NOT NULL,
  `contact_email` varchar(200) NOT NULL,
  `contact_number` double DEFAULT NULL,
  `contact_msg` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_name`, `contact_email`, `contact_number`, `contact_msg`) VALUES
('dk chudasama', 'dk@gmail.com', 2147483647, 'thnx'),
('Heet Ahir', 'heet@gmail.com', 9876565434, 'thnx'),
('Darshan Chudasama', 'pallav@gmail.com', 2147483647, 'erfdsgfdgfd'),
('pallav savani', 'pallavsavani@gmail.com', 9876543210, 'thnak you supporting'),
('raj', 'raj@gmail.com', 2147483647, 'etwoiuwergfdd');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`) VALUES
('dk07@gmail.com', 'dk07'),
('dk@gmail.com', 'dk07'),
('heet@gmail.com', 'heet'),
('savanipallav@gmail.com', 'pallav@0666');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pin_code` varchar(6) NOT NULL,
  `city` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `cars_name` varchar(100) NOT NULL,
  `cars_price` float NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `name`, `mobile_number`, `state`, `pin_code`, `city`, `email`, `address`, `cars_name`, `cars_price`, `order_date`) VALUES
(176454, 'Darshan Chudasama', '9876523418', 'Gujarat', '362625', 'vadala(ghed)', 'dk@gmail.com', 'Vadala (Ghed)', 'Aston MArtin Valkyrie', 206300000, '2024-08-04 08:02:12'),
(405614, 'Heet Ahir', '9876565434', 'Gujarat', '362625', 'Aambaliya', 'heet@gmail.com', 'Matiyana', 'Mercedes-Benz G Class (G-Wagon)', 42590000, '2024-08-04 12:42:15'),
(421790, 'Darshan Chudasama', '9876523418', 'Gujarat', '362625', 'Matiyana', 'dk@gmail.com', 'Matiyana', 'Ford Mustang Shelby (hard-top)', 0, '2024-08-03 18:28:59'),
(533243, 'Darshan Chudasama', '9876523418', 'Gujarat', '362625', 'Matiyana', 'dk@gmail.com', 'Matiyana', 'Chevrolet Chorvette', 5065000, '2024-08-03 19:33:18'),
(671401, 'Darshan Chudasama', '9876523418', 'Gujarat', '362625', 'Matiyana', 'dk@gmail.com', 'Matiyana', 'Ford Endeavour', 3650000, '2024-08-04 18:54:58'),
(831765, 'Darshan Chudasama', '9876523418', 'Gujarat', '362625', 'Matiyana', 'dk@gmail.com', 'Matiyana', 'Ford Mustang Roadsrtar', 7461000, '2024-08-03 18:36:03'),
(847832, 'Savani Pallav J.', '9845627354', 'Gujarat', '362625', 'Manavadar', 'Savanipallav0666@gmail.com', 'Vadala ( Ghed )', 'Ford Endeavour', 3650000, '2024-08-05 18:30:19'),
(893947, 'Heet Ahir', '9876565434', 'Gujarat', '362625', 'Aambaliya', 'heet@gmail.com', 'Matiyana', 'Ford Figo', 609000, '2024-08-03 18:23:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `cars_detail`
--
ALTER TABLE `cars_detail`
  ADD PRIMARY KEY (`cars_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_email`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `car_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=600002;

--
-- AUTO_INCREMENT for table `cars_detail`
--
ALTER TABLE `cars_detail`
  MODIFY `cars_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=995874;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
