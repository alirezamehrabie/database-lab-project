-- phpMyAdmin SQL Setup
-- Alireza Mehrabi
-- 00111022302019
-- Mohajer

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `venusproject`
--
CREATE DATABASE IF NOT EXISTS `venusproject` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci;
USE `venusproject`;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(110) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('new','in_progress','completed') NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` char(64) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_login` timestamp NULL DEFAULT NULL,
  `is_admin` enum('User','Admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_Id`),
  ADD KEY `idx_product_price` (`product_Price`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;
