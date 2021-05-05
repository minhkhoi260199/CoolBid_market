-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 05, 2021 at 08:58 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `amount_time`
--

CREATE TABLE `amount_time` (
  `id` int(11) NOT NULL,
  `amount_time` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `amount_time`
--

INSERT INTO `amount_time` (`id`, `amount_time`) VALUES
(1, 1200),
(2, 2400),
(3, 12000),
(4, 720000),
(5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `auction`
--

CREATE TABLE `auction` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` double DEFAULT 0,
  `user_id` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(11, 'Bikes'),
(14, 'Mobile devices'),
(15, 'Laptop'),
(16, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `notify`
--

CREATE TABLE `notify` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notify`
--

INSERT INTO `notify` (`id`, `user_id`, `content`, `status`) VALUES
(26, 9, 'You got the product Product 11 for 9000000.0$', 10);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `start_price` double DEFAULT 0,
  `gap` double DEFAULT 0,
  `amount_time_id` int(11) DEFAULT 0,
  `status_id` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `seller_id`, `description`, `image`, `category_id`, `start_price`, `gap`, `amount_time_id`, `status_id`, `start_time`) VALUES
(16, 'Suzuki GSX 150R', 12, 'Version 2019\r\nODO 10.000 km\r\n150cc bike\r\nFull custom\r\nCome check out before buying', 'prd01.jpg', 11, 3000, 100, 1, 1, NULL),
(17, 'Kawasaki Z 150', 12, 'ODO 20.000 km\r\n150cc version 2017\r\nCome by', 'prd02.jpg', 11, 2000, 50, 1, 1, NULL),
(18, 'GPX legend 150fi', 12, 'Cafe racer\r\nODO 5000 km\r\nversion 2020\r\nCome', 'prd03.jpg', 11, 2000, 200, 2, 1, NULL),
(19, 'GPX legend 250 twin', 12, 'Twin engine 250cc\r\nVersion 2021\r\nODO 200 km\r\n', 'prd04.jpg', 11, 3500, 100, 3, 1, NULL),
(20, 'Apple Watch', 12, 'Luxury devide, buy for doing notthing.\r\nYou buy it because you have a lot of money', 'prd05.jpg', 14, 1000, 50, 3, 1, NULL),
(21, 'iPhone 11', 12, 'Apps that access your local network can collect information about nearby devices in order to determine which networks you join and when. This information could be used to create a profile of you. With iOS 14 and iPadOS 14, any app that wants to interact with devices on your network must ask for permission the first time it tries to browse your local network.', 'prd06.jpg', 14, 750, 10, 3, 1, NULL),
(22, 'Samsung Galaxy s10+', 12, 'Apps that access your local network can collect information about nearby devices in order to determine which networks you join and when. This information could be used to create a profile of you. With iOS 14 and iPadOS 14, any app that wants to interact with devices on your network must ask for permission the first time it tries to browse your local network.', 'prd07.jpg', 14, 500, 10, 3, 1, NULL),
(23, 'Air pod 2', 12, 'Apps that access your local network can collect information about nearby devices in order to determine which networks you join and when. This information could be used to create a profile of you. With iOS 14 and iPadOS 14, any app that wants to interact with devices on your network must ask for permission the first time it tries to browse your local network.', 'prd08.jpg', 14, 100, 10, 3, 1, NULL),
(24, 'Dell XPS', 12, 'Apps that access your local network can collect information about nearby devices in order to determine which networks you join and when. This information could be used to create a profile of you. With iOS 14 and iPadOS 14, any app that wants to interact with devices on your network must ask for permission the first time it tries to browse your local network.', 'prd09.jpg', 15, 2000, 10, 3, 1, NULL),
(25, 'Macbook Air', 12, 'Apps that access your local network can collect information about nearby devices in order to determine which networks you join and when. This information could be used to create a profile of you. With iOS 14 and iPadOS 14, any app that wants to interact with devices on your network must ask for permission the first time it tries to browse your local network.', 'prd10.jpg', 15, 2000, 50, 3, 1, NULL),
(26, 'BitCoin', 12, '$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$', 'prd15.jpeg', 16, 55000, 1000, 4, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_CUSTOMER');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Denied'),
(3, 'Cancel'),
(4, 'On Auction'),
(5, 'Sold'),
(6, 'Paid'),
(7, 'Activated'),
(8, 'Banned'),
(9, 'Final Price'),
(10, 'Sent'),
(11, 'Received'),
(12, 'Read');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `address`, `phone`, `email`, `role_id`, `status`) VALUES
(5, 'long', '$2a$10$wLBPZkigi/PSzXgLNMDu5.mwPcpGREEOpN81.ETMfDG.yVzV1h2WO', 'Long Nguyen', '135 L?y Bán Bích ph??ng Tân Th?i Hòa', '0898512680', 'ddragon163@gmail.com', 2, 7),
(8, 'long12', '$2a$10$wLBPZkigi/PSzXgLNMDu5.mwPcpGREEOpN81.ETMfDG.yVzV1h2WO', 'Long Nguyen12', '135 L?y Bán Bích ph??ng Tân Th?i Hòa', '0898512680', 'ddragon163@gmail.com', 2, 7),
(9, 'long01', '$2a$10$wLBPZkigi/PSzXgLNMDu5.mwPcpGREEOpN81.ETMfDG.yVzV1h2WO', 'Long Nguyen01', '135 L?y Bán Bích ph??ng Tân Th?i Hòa', '0898512680', 'ddragon163@gmail.com', 2, 7),
(10, 'admin', '$2a$10$zKlUA774wrzRyeTBfinAxuxJL7XX0ck289gTsgayJzG0hmW3v2ge6', 'Petter Pan', '212-214 Nguyen Dinh Chieu', '123456789', 'khoi.nm203@aptechlearning.edu.vn', 1, 7),
(12, 'seller01', '$2a$10$dHdanqmRVhgphDzp2N3x5uBlSOytVnsRLNYbAr0RVWXtR2d.btSBK', 'Petter Pan', '212-214 Nguyen Dinh Chieu', '123456789', 'khoi.nm203@aptechlearning.edu.vn', 2, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amount_time`
--
ALTER TABLE `amount_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auction`
--
ALTER TABLE `auction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notify`
--
ALTER TABLE `notify`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seller_id` (`seller_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `amount_time_id` (`amount_time_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `status` (`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amount_time`
--
ALTER TABLE `amount_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auction`
--
ALTER TABLE `auction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notify`
--
ALTER TABLE `notify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auction`
--
ALTER TABLE `auction`
  ADD CONSTRAINT `auction_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auction_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auction_ibfk_3` FOREIGN KEY (`status`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notify`
--
ALTER TABLE `notify`
  ADD CONSTRAINT `notify_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notify_ibfk_2` FOREIGN KEY (`status`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`amount_time_id`) REFERENCES `amount_time` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_4` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`status`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
