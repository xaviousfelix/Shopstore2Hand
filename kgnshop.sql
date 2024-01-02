-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2023 at 06:56 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kgnshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `accountID` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(8) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `types` varchar(20) NOT NULL,
  `cmID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`accountID`, `username`, `password`, `tel`, `types`, `cmID`) VALUES
(1, 'admink', '1234', '0943718956', 'admin', 1),
(13, 'userk', '123', '', 'customer', 10),
(14, 'wakim', '1910', '', 'customer', 11),
(16, 'usern', '1234', '', 'customer', 12),
(17, 'notty', '1234', '', 'customer', 13),
(18, 'userg', '1234', '', 'customer', 14);

-- --------------------------------------------------------

--
-- Table structure for table `customer_member`
--

CREATE TABLE `customer_member` (
  `cmID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_member`
--

INSERT INTO `customer_member` (`cmID`, `name`, `lastname`, `address`, `tel`, `email`) VALUES
(1, 'สุรพัศ', 'วงศรี', 'หอ infinity Place 108 109 ม.1 ซอย คลองหกตะวันออก 16 คลองหก', '0943718956', 'khimk635@gmail.com'),
(10, 'สุรพัศ', 'วงศรี', 'หอ infinity Place 108 109 ม.1 ซอย คลองหกตะวันออก 16 คลองหก', '0943718345', 'khimk635@gmail.com'),
(11, 'สุรพัศ', 'วงศรี', 'หอ infinity Place 108 109 ม.1 ซอย คลองหกตะวันออก 16 คลองหก', '0943715666', 'khimk635@gmail.com'),
(12, 'asdjouiq', 'iaisoduoi', '123', '09126375', 'nokt2@gmail.com'),
(13, 'Nonthawat', 'wattanawiwatwach', '94/72 THE RUX Soi7', '09126375', 'nonthawat2554963@gmail.com'),
(14, 'asdiou', 'asoiv', '123ida', '123-456-7890', 'sdf2@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `login_log`
--

CREATE TABLE `login_log` (
  `id` int(11) NOT NULL,
  `logUsername` varchar(255) DEFAULT NULL,
  `logPassword` varchar(255) DEFAULT NULL,
  `logTime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_log`
--

INSERT INTO `login_log` (`id`, `logUsername`, `logPassword`, `logTime`) VALUES
(90, 'usern', '1234', '2023-09-22 03:44:48'),
(91, 'usern', '1234', '2023-09-22 03:56:12'),
(92, 'userg', '1234', '2023-09-22 04:01:00'),
(93, 'userg', '1234', '2023-09-22 04:26:57'),
(94, 'userg', '1234', '2023-09-22 04:28:06'),
(95, 'userg', '1234', '2023-09-22 04:31:09'),
(96, 'userg', '1234', '2023-09-22 04:33:55'),
(97, 'userg', '1234', '2023-09-22 04:37:12'),
(98, 'usern', '1234', '2023-09-22 04:39:06'),
(99, 'userg', '1234', '2023-09-22 04:44:43'),
(100, 'usern', '1234', '2023-09-22 04:46:16'),
(101, 'usern', '1234', '2023-09-22 04:47:03'),
(102, 'userg', '1234', '2023-09-22 04:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ProductID` int(11) NOT NULL,
  `cmID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `SubTotalPrice` double NOT NULL,
  `TotalAll` int(11) NOT NULL,
  `orderDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ProductID`, `cmID`, `Quantity`, `SubTotalPrice`, `TotalAll`, `orderDate`) VALUES
(2, 12, 1, 2, 2550, '2023-09-22 10:58:28'),
(2, 14, 1, 5, 5000, '2023-09-22 11:03:47'),
(2, 14, 2, 10, 10000, '2023-09-22 11:04:19'),
(2, 14, 2, 10, 5000, '2023-09-22 11:06:11'),
(19, 14, 1, 200, 750, '2023-09-22 11:10:14'),
(21, 14, 1, 550, 750, '2023-09-22 11:10:14'),
(2, 14, 1, 2, 2550, '2023-09-22 11:27:00'),
(2, 14, 1, 2, 2550, '2023-09-22 11:27:59'),
(2, 14, 1, 2, 2550, '2023-09-22 11:28:09'),
(2, 14, 1, 2, 2550, '2023-09-22 11:28:31'),
(2, 14, 1, 5, 550, '2023-09-22 11:31:12'),
(2, 14, 1, 5, 550, '2023-09-22 11:31:55'),
(2, 14, 1, 5, 550, '2023-09-22 11:33:44'),
(2, 14, 1, 5, 5000, '2023-09-22 11:33:58'),
(2, 14, 1, 5, 5000, '2023-09-22 11:35:23'),
(1, 14, 1, 2, 200, '2023-09-22 11:35:34'),
(1, 14, 1, 2, 200, '2023-09-22 11:36:56'),
(1, 14, 1, 2, 200, '2023-09-22 11:37:17'),
(1, 14, 1, 2, 200, '2023-09-22 11:38:34'),
(2, 12, 1, 5, 550, '2023-09-22 11:39:12'),
(2, 12, 1, 5, 550, '2023-09-22 11:40:40'),
(2, 14, 1, 2, 2550, '2023-09-22 11:45:03'),
(2, 12, 1, 2, 2550, '2023-09-22 11:46:19'),
(2, 12, 1, 2, 2550, '2023-09-22 11:46:37'),
(2, 12, 1, 2, 2550, '2023-09-22 11:46:49'),
(19, 12, 1, 200, 3300, '2023-09-22 11:47:08'),
(21, 12, 1, 550, 3300, '2023-09-22 11:47:08'),
(22, 12, 1, 2550, 3300, '2023-09-22 11:47:08'),
(19, 14, 1, 200, 3300, '2023-09-22 11:52:01'),
(21, 14, 1, 550, 3300, '2023-09-22 11:52:01'),
(22, 14, 1, 2550, 3300, '2023-09-22 11:52:01');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PaymentID` int(20) NOT NULL,
  `TotalAll` int(11) NOT NULL,
  `PayName` varchar(20) NOT NULL,
  `SlipPayment` varchar(20) NOT NULL,
  `PayAddress` text NOT NULL,
  `cmID` int(11) NOT NULL,
  `PayTel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PaymentID`, `TotalAll`, `PayName`, `SlipPayment`, `PayAddress`, `cmID`, `PayTel`) VALUES
(0, 3300, 'ธนดล ไหมสมบุญ', 'f24c1b1abdc1723ab332', 'มอกรุงเทพ', 14, '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(40) NOT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `ProductPrice` decimal(10,2) DEFAULT 0.00,
  `UnitsInStock` smallint(5) DEFAULT 0,
  `Description` varchar(255) NOT NULL,
  `ManufactureYear` smallint(5) NOT NULL,
  `Image` varchar(500) NOT NULL,
  `ProductSlug` varchar(50) NOT NULL,
  `Feature` tinyint(1) NOT NULL DEFAULT 0,
  `oldImage` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `CategoryID`, `ProductPrice`, `UnitsInStock`, `Description`, `ManufactureYear`, `Image`, `ProductSlug`, `Feature`, `oldImage`) VALUES
(19, 'Uniqlo T-Shirt', NULL, '200.00', 97, 'Uniqlo T-Shirt ใส่สบายราคาดีเนื้อผ้ามีคุณภาพ', 0, '13.jpg', '', 0, ''),
(21, 'H&M SWEATERS', NULL, '550.00', 97, 'เสื้อแขนยาว H&M', 2023, '12.jpg', '23', 0, ''),
(22, 'Stussy x Nike Icon Knit Sweater Natural', NULL, '2550.00', 98, 'Uniqlo T-Shirt 1', 0, 'image-1692906657285.png', '', 0, ''),
(23, 'Carhartt double knee pants', NULL, '5000.00', 100, '', 0, 'image-1692906491591.webp', '', 0, ''),
(24, 'Stussy 8 Ball Jacket G', NULL, '2630.00', 100, '', 0, '20.jpg', '', 0, ''),
(25, 'ADIDAS MANCHESTER UNITED 88/90 JERSEY - ', NULL, '1500.00', 100, '', 0, 'image-1692906041309.jpg', '', 0, ''),
(26, 'STUSSY FLIPPED TEE', NULL, '1490.00', 100, '', 0, 'image-1692906587615.webp', '', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`accountID`),
  ADD KEY `cmID` (`cmID`);

--
-- Indexes for table `customer_member`
--
ALTER TABLE `customer_member`
  ADD PRIMARY KEY (`cmID`);

--
-- Indexes for table `login_log`
--
ALTER TABLE `login_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `accountID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `customer_member`
--
ALTER TABLE `customer_member`
  MODIFY `cmID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `login_log`
--
ALTER TABLE `login_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`cmID`) REFERENCES `customer_member` (`cmID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
