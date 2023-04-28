-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2023 at 02:30 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `venusproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_Id` int(11) NOT NULL,
  `product_Name` varchar(255) NOT NULL,
  `product_Description` text DEFAULT NULL,
  `product_Price` varchar(20) NOT NULL,
  `product_Quantity` int(11) DEFAULT 0,
  `product_Created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `product_Updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_Status` enum('Available','Unavailable') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_Id`, `product_Name`, `product_Description`, `product_Price`, `product_Quantity`, `product_Created_at`, `product_Updated_at`, `product_Status`) VALUES
(1, 'Mouse-xp360', 'Description Mouse-xp360', '250000', 50, '2023-03-14 10:26:58', '2023-03-14 10:26:58', 'Available'),
(2, 'Keyboard-859', 'Description Keyboard-859', '900000', 80, '2023-03-14 10:29:17', '2023-03-14 10:29:17', 'Available'),
(3, 'Speaker-Glx475', 'Description Speaker-Glx475', '783000', 90, '2023-03-14 10:30:24', '2023-03-14 10:30:24', 'Unavailable'),
(4, 'Modem Tp link-810', 'Descriptrion Modem Tp link-810', '4500000', 1010, '2023-03-14 10:31:38', '2023-03-14 10:40:15', 'Unavailable');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_Id`),
  ADD KEY `idx_product_price` (`product_Price`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
