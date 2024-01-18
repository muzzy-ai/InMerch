-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2024 at 07:35 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`) VALUES
(1, 'T-Shirt', 60000),
(2, 'LongSleeve', 100000),
(3, 'Coach Jacket', 150000),
(4, 'Bucket Hat', 50000),
(5, 'Cap', 40000),
(6, 'KeyChain', 15000),
(7, 'Lighter', 10000),
(8, 'Tote Bag', 25000),
(9, 'Sticker Packs', 10000),
(10, 'Bracelet', 15000),
(11, 'HandFan', 10000),
(12, 'PINK', 1200);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(1, 'Sajal', 'sajal.agrawal1997@gmail.com', '57f231b1ec41dc6641270cb09a56f897', '8899889988', 'Indore', '100 palace colony, Indore'),
(2, 'Ram', 'ram1234@xyz.com', '57f231b1ec41dc6641270cb09a56f897', '8899889989', 'Pune', '100 palace colony, Pune'),
(3, 'Shyam', 'shyam@xyz.com', '57f231b1ec41dc6641270cb09a56f897', '8899889990', 'Bangalore', '100 palace colony, Bangalore'),
(4, 'muzzy', 'muzi.ardiansah135@gmail.com', '1ee0796b148eea118f18f979c956efc3', '087787881058', 'bekasi', 'kampung sawah'),
(5, 'irul', 'irul@gmail.com', '75ccf39e745df650b193b33d26fbc805', '087787881056', 'bekasi', 'rawa bebek'),
(6, 'naufal', 'naufal@gmail.com', '1c1c6d2015ba7d08086a4bc23e57e1a8', '08767552788', 'bekasi', 'wahana'),
(7, 'apip', 'apip@gmail.com', '9eccc7e7f14d1d10b411cac6ebb34213', '0876755678', 'bekasi', 'jauh pake helm'),
(8, 'muji', 'muji123@gmail.com', '1ee0796b148eea118f18f979c956efc3', '098745784364', 'bekasi', 'jatirangon'),
(9, 'dudung', 'dudung@gmail.com', '5b27466226aa6c890631bd52b7088009', '08387287434', 'bekasi', 'keranggan'),
(10, 'dudung', 'dudung6@gmail.com', '897c8fde25c5cc5270cda61425eed3c8', '08387287434', 'bekasi', 'keranggan'),
(11, 'naufal ', 'dudung65@gmail.com', '7bceaedd63efd41b7084fb55d08a9825', '08387287434', 'bekasi', 'keranggan'),
(12, 'naufal', 'dudu6@gmail.com', 'ddc63abe494ada7ce40e09a7903eba48', '08387287434', 'bekasi', 'keranggan'),
(13, 'RAWDEA', 'SADADA@GMAIL.COM', '14e1b600b1fd579f47433b88e8d85291', '097353241341', 'GOROL', 'JATI');

-- --------------------------------------------------------

--
-- Table structure for table `users_items`
--

CREATE TABLE IF NOT EXISTS `users_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_items`
--

INSERT INTO `users_items` (`id`, `user_id`, `item_id`, `status`) VALUES
(7, 3, 3, 'Added to cart'),
(8, 3, 4, 'Added to cart'),
(9, 3, 5, 'Added to cart'),
(10, 3, 11, 'Added to cart'),
(11, 1, 9, 'Added to cart'),
(12, 1, 2, 'Added to cart'),
(13, 1, 8, 'Added to cart'),
(15, 7, 1, 'Confirmed'),
(16, 7, 3, 'Confirmed'),
(17, 7, 4, 'Confirmed'),
(18, 9, 1, 'Confirmed'),
(19, 9, 2, 'Confirmed'),
(20, 9, 3, 'Confirmed'),
(21, 11, 1, 'Confirmed'),
(22, 11, 3, 'Confirmed'),
(23, 12, 1, 'Confirmed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_items`
--
ALTER TABLE `users_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`item_id`),
  ADD KEY `item_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users_items`
--
ALTER TABLE `users_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_items`
--
ALTER TABLE `users_items`
  ADD CONSTRAINT `users_items_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
