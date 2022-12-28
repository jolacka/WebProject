-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2022 at 02:05 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `g00387921`
--
CREATE DATABASE IF NOT EXISTS `g00387921` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `g00387921`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_img` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `total_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_img`, `product_name`, `product_quantity`, `product_price`, `user`, `total_amount`) VALUES
(1, 'images/p1.jpg', 'gujgyi', 1, 20, 'Jolita Budre', 20),
(6, 'images/f6.jpg', 'Small Long-Legged Cat\r\n', 4, 20, 'Jolita Budre', 80),
(7, 'images/p2.jpg', 'CROCHET DINO TOY', 3, 36, 'Jolita Budre', 108),
(101, 'images/f1.jpg', 'Baby Bunny Amigurumi \r\n', 1, 10, 'la', 10),
(104, 'images/f6.jpg', 'Small Long-Legged Cat\r\n', 2, 20, 'Anna', 40),
(105, 'images/f8.png', 'Snowman Friends Crochet Toy', 3, 30, 'Anna', 90);

-- --------------------------------------------------------

--
-- Table structure for table `index_products`
--

CREATE TABLE `index_products` (
  `id` int(11) NOT NULL,
  `product_img` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `index_products`
--

INSERT INTO `index_products` (`id`, `product_img`, `product_name`, `product_price`) VALUES
(1, 'images/f1.jpg', 'Baby Bunny Amigurumi \r\n', 10),
(2, 'images/f2.jpg', 'Mrs Fox Crochet Toy\r\n', 50),
(3, 'images/f3.jpg', 'Cube Piggy Pig Amigurumi\r\n', 15),
(4, 'images/f4.jpg', 'A Yummy Carrot Toy\r\n', 10),
(5, 'images/f5.jpg', 'Ragdoll Lamb crochet Toy\r\n', 15),
(6, 'images/f6.jpg', 'Small Long-Legged Cat\r\n', 20),
(7, 'images/f7.jpg', 'Itty Bitty Crochet Kitty \r\n', 10),
(8, 'images/f8.png', 'Snowman Friends Crochet Toy', 30);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_img` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_img`, `product_name`, `price`) VALUES
(1, 'images/p1.jpg', 'ENCHANTING UNICORN', 20),
(2, 'images/p2.jpg', 'CROCHET DINO TOY', 35),
(3, 'images/p3.jpg', 'DRAGON CROCHET TOY', 15),
(4, 'images/p4.jpg', 'VALENTINE CROCHET BEAR', 45),
(5, 'images/p5.jpg', 'BERNAT MUSHROOM ', 10),
(6, 'images/p6.jpg', 'SAURAS CROCHET DINO TOY', 30),
(7, 'images/p7.jpg', 'LADYBUG/ CATERPILLAR', 10),
(8, 'images/p8.jpg', 'HEART CROCHET CAT', 15);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `contact` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `full_name`, `contact`, `username`, `pass`) VALUES
(1, 'Jolita Budre', 123, 'paske@gmail.com', '0000'),
(2, 'Tom', 85777772, 'tomas0449@gmail.com', '123'),
(3, 'Ada', 555555, 'ada@gmail.com', '123'),
(4, '123', 5555, '123@gmail.com', '123'),
(5, 'Eddi', 55555, 'eddi@gmail.com', '000'),
(6, 'Ava', 159753, 'ava@gmail.com', '123'),
(7, 'Jolita', 555, 'tomas0449@gmail.com', '123'),
(8, '', 0, 'tomas0449@gmail.com', '123'),
(9, 'Jolita', 123, 'tomas0449@gmail.com', '123'),
(10, 'Jolita', 123, 'tomas0449@gmail.com', '123'),
(11, 'Jolita', 211, 'tomas0449@gmail.com', '123'),
(12, 'Jolita', -1, 'tomas0449@gmail.com', '123'),
(13, 'Jolita', 5555, 'paskeviciute@gmail.com', '123'),
(14, 'Jolita', 5555, 'paskeviciute@gmail.com', '123'),
(15, 'John', 12345, 'paskeviciute@gmail.com', '154'),
(16, 'la', 125, 'la@gmail.com', '123'),
(17, 'Anna', 123, 'ana@gmail.com', '1234'),
(18, 'Jolita', 123, 'paskeviciute@gmail.com', '1235'),
(19, 'Jolita', 123, 'g00387921@atu.ie', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `index_products`
--
ALTER TABLE `index_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `index_products`
--
ALTER TABLE `index_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
