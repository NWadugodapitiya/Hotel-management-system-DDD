-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2023 at 07:35 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Custumer_ID` int(12) NOT NULL DEFAULT 0,
  `Packages_ID` int(12) NOT NULL DEFAULT 0,
  `Date_of_Arrival` date DEFAULT NULL,
  `Date_of_Diparcher` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`Custumer_ID`, `Packages_ID`, `Date_of_Arrival`, `Date_of_Diparcher`) VALUES
(1001, 2, '2023-08-01', '2023-08-10'),
(1002, 2, '2023-07-20', '2023-07-25'),
(1005, 1, '2023-08-15', '2023-08-17');

-- --------------------------------------------------------

--
-- Table structure for table `custumers`
--

CREATE TABLE `custumers` (
  `Custumer_ID` int(12) NOT NULL DEFAULT 0,
  `Name` text DEFAULT NULL,
  `Email` varchar(55) DEFAULT NULL,
  `Phone_Number` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `custumers`
--

INSERT INTO `custumers` (`Custumer_ID`, `Name`, `Email`, `Phone_Number`) VALUES
(1001, 'Omesh Yohan', 'omesh@gmail.com', '025-468-1256'),
(1002, 'Nadun', 'nadun@gmail.com', '015-428-9635'),
(1003, 'Stafen', 'stafen@gmail.com', '074-851-2369'),
(1005, 'Been', 'been@gmail.com', '0703620555');

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `Food_ID` int(12) NOT NULL DEFAULT 0,
  `Food_Name` text DEFAULT NULL,
  `Food_Types` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`Food_ID`, `Food_Name`, `Food_Types`) VALUES
(25, 'Burger chips &  drink', NULL),
(26, 'Burger & drink', NULL),
(100, 'Rice', 'Lunch');

-- --------------------------------------------------------

--
-- Table structure for table `manage`
--

CREATE TABLE `manage` (
  `Rooms_ID` int(12) NOT NULL DEFAULT 0,
  `Servant_ID` int(12) NOT NULL DEFAULT 0,
  `Date_Time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manage`
--

INSERT INTO `manage` (`Rooms_ID`, `Servant_ID`, `Date_Time`) VALUES
(1, 3, '2023-05-06 00:00:00'),
(20, 3, '2023-07-20 14:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `Custumer_ID` int(12) NOT NULL DEFAULT 0,
  `Food_ID` int(12) NOT NULL DEFAULT 0,
  `Price` int(6) DEFAULT NULL,
  `Date_Time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`Custumer_ID`, `Food_ID`, `Price`, `Date_Time`) VALUES
(1001, 100, 456, '2023-08-02 00:00:00'),
(1002, 25, 850, '2023-07-20 14:41:04'),
(1003, 26, 1400, '2023-07-22 14:07:22');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `Packages_ID` int(12) NOT NULL DEFAULT 0,
  `Packages_Name` text DEFAULT NULL,
  `Price` text DEFAULT NULL,
  `Details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`Packages_ID`, `Packages_Name`, `Price`, `Details`) VALUES
(1, 'Gold', '4500.00', 'room'),
(2, 'Family', '4300.00', '2 roos \r\n1 Ac & 1Non Ac');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_ID` int(12) NOT NULL DEFAULT 0,
  `Date_Time` date NOT NULL,
  `Method` tinytext NOT NULL,
  `Price` int(10) NOT NULL DEFAULT 0,
  `Custumer_ID` int(12) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_ID`, `Date_Time`, `Method`, `Price`, `Custumer_ID`) VALUES
(102, '2023-08-10', 'Visa Card', 7500, 1001),
(103, '2023-07-21', 'cash', 11520, 1003),
(104, '2023-08-17', 'Visa Card', 4500, 1005);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `Rooms_ID` int(12) NOT NULL DEFAULT 0,
  `Room_Type` text DEFAULT NULL,
  `Packages_ID` int(12) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`Rooms_ID`, `Room_Type`, `Packages_ID`) VALUES
(1, 'AC', 1),
(20, 'ac', 2),
(25, 'Non AC', 2);

-- --------------------------------------------------------

--
-- Table structure for table `servant`
--

CREATE TABLE `servant` (
  `Servant_ID` int(12) NOT NULL DEFAULT 0,
  `Name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `servant`
--

INSERT INTO `servant` (`Servant_ID`, `Name`) VALUES
(1, 'ajith'),
(2, 'shanuka'),
(3, 'Kalana silva');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`Custumer_ID`),
  ADD KEY `FK_booking_packages` (`Packages_ID`);

--
-- Indexes for table `custumers`
--
ALTER TABLE `custumers`
  ADD PRIMARY KEY (`Custumer_ID`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`Food_ID`);

--
-- Indexes for table `manage`
--
ALTER TABLE `manage`
  ADD PRIMARY KEY (`Rooms_ID`),
  ADD KEY `FK_manage_servant` (`Servant_ID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`Custumer_ID`),
  ADD KEY `FK_order_foods` (`Food_ID`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`Packages_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_ID`),
  ADD KEY `FK_payment_custumers` (`Custumer_ID`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`Rooms_ID`),
  ADD KEY `FK_rooms_packages` (`Packages_ID`);

--
-- Indexes for table `servant`
--
ALTER TABLE `servant`
  ADD PRIMARY KEY (`Servant_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK_booking_custumers` FOREIGN KEY (`Custumer_ID`) REFERENCES `custumers` (`Custumer_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_booking_packages` FOREIGN KEY (`Packages_ID`) REFERENCES `packages` (`Packages_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `manage`
--
ALTER TABLE `manage`
  ADD CONSTRAINT `FK__rooms` FOREIGN KEY (`Rooms_ID`) REFERENCES `rooms` (`Rooms_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_manage_servant` FOREIGN KEY (`Servant_ID`) REFERENCES `servant` (`Servant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_order_custumers` FOREIGN KEY (`Custumer_ID`) REFERENCES `custumers` (`Custumer_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_order_foods` FOREIGN KEY (`Food_ID`) REFERENCES `foods` (`Food_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FK_payment_custumers` FOREIGN KEY (`Custumer_ID`) REFERENCES `custumers` (`Custumer_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `FK_rooms_packages` FOREIGN KEY (`Packages_ID`) REFERENCES `packages` (`Packages_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
