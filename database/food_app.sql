-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2025 at 07:43 PM
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
-- Database: `food_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `cafes`
--

CREATE TABLE `cafes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cafes`
--

INSERT INTO `cafes` (`id`, `name`) VALUES
(1, 'MUNCHIES'),
(2, 'BISTRO BITES'),
(3, 'GRILL AND CHILL'),
(4, 'EAT AND MEAT');

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

CREATE TABLE `food_items` (
  `id` int(11) NOT NULL,
  `cafe_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_items`
--

INSERT INTO `food_items` (`id`, `cafe_id`, `name`, `price`) VALUES
(1, 1, 'Burger', 350.00),
(2, 1, 'Grilled Cheese Sandwich', 300.00),
(3, 1, 'Chicken Sandwich', 450.00),
(4, 1, 'Veggie Wrap', 400.00),
(5, 1, 'Latte', 325.00),
(6, 1, 'Mocha', 350.00),
(7, 1, 'Iced Tea', 375.00),
(8, 1, 'Cappuccino', 425.00),
(9, 1, 'Chocolate Muffin', 200.00),
(10, 1, 'Blueberry Muffin', 300.00),
(11, 1, 'Brownie', 300.00),
(12, 1, 'Glazed Doughnuts', 250.00),
(13, 2, 'Burger', 350.00),
(14, 2, 'Grilled Cheese Sandwich', 300.00),
(15, 2, 'Chicken Sandwich', 450.00),
(16, 2, 'Veggie Wrap', 400.00),
(17, 2, 'Latte', 325.00),
(18, 2, 'Mocha', 350.00),
(19, 2, 'Iced Tea', 375.00),
(20, 2, 'Cappuccino', 425.00),
(21, 2, 'Chocolate Muffin', 200.00),
(22, 2, 'Blueberry Muffin', 300.00),
(23, 2, 'Brownie', 300.00),
(24, 2, 'Glazed Doughnuts', 250.00),
(25, 3, 'Burger', 350.00),
(26, 3, 'Grilled Cheese Sandwich', 300.00),
(27, 3, 'Chicken Sandwich', 450.00),
(28, 3, 'Veggie Wrap', 400.00),
(29, 3, 'Latte', 325.00),
(30, 3, 'Mocha', 350.00),
(31, 3, 'Iced Tea', 375.00),
(32, 3, 'Cappuccino', 425.00),
(33, 3, 'Chocolate Muffin', 200.00),
(34, 3, 'Blueberry Muffin', 300.00),
(35, 3, 'Brownie', 300.00),
(36, 3, 'Glazed Doughnuts', 250.00),
(37, 4, 'Burger', 350.00),
(38, 4, 'Grilled Cheese Sandwich', 300.00),
(39, 4, 'Chicken Sandwich', 450.00),
(40, 4, 'Veggie Wrap', 400.00),
(41, 4, 'Latte', 325.00),
(42, 4, 'Mocha', 350.00),
(43, 4, 'Iced Tea', 375.00),
(44, 4, 'Cappuccino', 425.00),
(45, 4, 'Chocolate Muffin', 200.00),
(46, 4, 'Blueberry Muffin', 300.00),
(47, 4, 'Brownie', 300.00),
(48, 4, 'Glazed Doughnuts', 250.00);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `total`, `created_at`) VALUES
(1, 750.00, '2025-05-26 02:40:30'),
(2, 950.00, '2025-05-26 02:40:52'),
(3, 950.00, '2025-05-26 02:41:31'),
(4, 750.00, '2025-05-26 02:43:54'),
(5, 600.00, '2025-05-26 02:46:01'),
(6, 300.00, '2025-05-26 02:49:45'),
(7, 300.00, '2025-05-26 02:55:02'),
(8, 300.00, '2025-05-26 02:56:54'),
(9, 300.00, '2025-05-26 02:58:13'),
(10, 200.00, '2025-05-26 03:21:39'),
(11, 350.00, '2025-05-26 03:30:23'),
(12, 300.00, '2025-05-26 03:38:38'),
(13, 400.00, '2025-05-26 03:46:44'),
(14, 700.00, '2025-05-26 04:00:30'),
(15, 1125.00, '2025-05-26 17:33:43');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `food_id` int(11) DEFAULT NULL,
  `food_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `food_id`, `food_name`) VALUES
(1, 1, 2, NULL),
(2, 1, 3, NULL),
(3, 2, 2, NULL),
(4, 2, 3, NULL),
(5, 2, 9, NULL),
(6, 3, 2, NULL),
(7, 3, 3, NULL),
(8, 3, 9, NULL),
(9, 4, 2, NULL),
(10, 4, 3, NULL),
(11, 5, 2, NULL),
(12, 5, 2, NULL),
(13, 6, 2, NULL),
(14, 7, 2, NULL),
(15, 8, 2, 'Grilled Cheese Sandwich'),
(16, 9, 2, 'Grilled Cheese Sandwich'),
(17, 10, 9, 'Chocolate Muffin'),
(18, 11, 18, 'Mocha'),
(19, 12, 14, 'Grilled Cheese Sandwich'),
(20, 13, 33, 'Chocolate Muffin'),
(21, 13, 33, 'Chocolate Muffin'),
(22, 14, 6, 'Mocha'),
(23, 14, 6, 'Mocha'),
(24, 15, 37, 'Burger'),
(25, 15, 37, 'Burger'),
(26, 15, 44, 'Cappuccino');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('student','teacher') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`) VALUES
(1, 'atiq', 'atiqworkhub@gmail.com', '$2y$10$xTEftdAetR7AnMES4nTP0OLbQskhRH.aj7YuDZ/y4EQ.meS.a6Z16', 'student'),
(2, 'hassan', '242002@students.au.edu.pk', '$2y$10$Y3Se4n0S79U6Ixd04wi7UerzE7OwHjXHJsZRuBEujlULCwnjnJOTi', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cafes`
--
ALTER TABLE `cafes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_items`
--
ALTER TABLE `food_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cafe_id` (`cafe_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `food_id` (`food_id`);

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
-- AUTO_INCREMENT for table `cafes`
--
ALTER TABLE `cafes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `food_items`
--
ALTER TABLE `food_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food_items`
--
ALTER TABLE `food_items`
  ADD CONSTRAINT `food_items_ibfk_1` FOREIGN KEY (`cafe_id`) REFERENCES `cafes` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `food_items` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
