-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2024 at 08:35 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_dealers`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `id` int(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `original_price` varchar(50) NOT NULL DEFAULT '0',
  `user_id` int(50) NOT NULL,
  `availability` varchar(50) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `model`, `brand`, `status`, `original_price`, `user_id`, `availability`, `date`) VALUES
(1, 'BMW 3 Series', 'BMW', 'Brand New', '90000', 1, 'Available', NULL),
(2, 'Honda Civic', 'Honda', 'Used', '20000', 1, 'Available', NULL),
(3, 'Ford Mustang', 'Ford', 'Brand New', '350000', 1, 'Sold', '2024-05-07'),
(4, 'Chevrolet Cruze', 'Chevrolet', 'Sold', '250000', 4, 'Rented', NULL),
(5, 'BMW 3 Series', 'BMW', 'Brand New', '400000', 1, 'Sold', '2024-05-09'),
(6, 'Audi A4', 'Audi', 'Used', '350000', 1, 'Rented', NULL),
(7, 'Mercedes-Benz E-Class', 'Mercedes-Benz', 'Brand New', '500000', 1, 'Rented', NULL),
(8, 'Volkswagen Golf', 'Volkswagen', 'Used', '300000', 8, 'Available', NULL),
(9, 'Hyundai Sonata', 'Hyundai', 'Used', '280000', 9, 'Sold', NULL),
(10, 'Kia Optima', 'Kia', 'Brand New', '320000', 10, 'Sold', NULL),
(21, 'GT-2', 'Ford', 'Used', '300000', 1, 'Available', NULL),
(150, 'Toyota Corolla', 'Toyota', 'Used', '230000', 1, 'Sold', '2021-06-15'),
(151, 'Nissan Sunny', 'Nissan', 'Brand New', '320000', 1, 'Sold', '2019-09-20'),
(152, 'Mazda 3', 'Mazda', 'Used', '280000', 1, 'Sold', '2020-07-10'),
(153, 'Lexus IS', 'Lexus', 'Brand New', '450000', 1, 'Sold', '2018-03-25'),
(154, 'Subaru Impreza', 'Subaru', 'Used', '32000', 1, 'Sold', '2017-12-05'),
(155, 'Infiniti Q50', 'Infiniti', 'Brand New', '500000', 1, 'Sold', '2023-10-30'),
(156, 'Acura TLX', 'Acura', 'Used', '38000', 1, 'Sold', '2022-08-18'),
(157, 'Jaguar XE', 'Jaguar', 'Brand New', '600000', 1, 'Sold', '2024-01-12'),
(158, 'Volvo S60', 'Volvo', 'Used', '4200', 1, 'Sold', '2023-05-08'),
(159, 'Porsche Panamera', 'Porsche', 'Brand New', '70000', 1, 'Sold', '2017-11-20'),
(160, 'Mini Cooper', 'Mini', 'Used', '38000', 1, 'Sold', '2019-04-16'),
(161, 'Fiat 500', 'Fiat', 'Brand New', '22000', 1, 'Sold', '2020-02-22'),
(162, 'Smart Fortwo', 'Smart', 'Used', '20000', 1, 'Sold', '2018-09-13'),
(163, 'Tesla Model 3', 'Tesla', 'Brand New', '66000', 1, 'Sold', '2023-03-05'),
(164, 'Mitsubishi Lancer', 'Mitsubishi', 'Used', '2800', 1, 'Sold', '2021-08-29'),
(165, 'Chrysler 300', 'Chrysler', 'Brand New', '550000', 1, 'Sold', '2022-12-17'),
(166, 'Lincoln MKZ', 'Lincoln', 'Used', '450000', 1, 'Sold', '2019-10-14'),
(167, 'Buick Regal', 'Buick', 'Brand New', '480000', 1, 'Sold', '2020-06-27'),
(168, 'Cadillac ATS', 'Cadillac', 'Used', '40000', 1, 'Sold', '2018-04-08'),
(169, 'Genesis G70', 'Genesis', 'Brand New', '530000', 1, 'Sold', '2024-04-02'),
(170, 'Koenigsegg Agera', 'Koenigsegg', 'Used', '25000', 1, 'Sold', '2017-08-11'),
(171, 'McLaren 720S', 'McLaren', 'Brand New', '850000', 1, 'Sold', '2023-07-19'),
(172, 'Ferrari 488', 'Ferrari', 'Used', '75000', 1, 'Sold', '2021-11-23'),
(173, 'Lamborghini Huracan', 'Lamborghini', 'Brand New', '90000', 1, 'Sold', '2018-05-14'),
(174, 'Bugatti Chiron', 'Bugatti', 'Used', '150000', 1, 'Sold', '2020-09-06'),
(175, 'Pagani Huayra', 'Pagani', 'Brand New', '180000', 1, 'Sold', '2022-02-28'),
(176, 'Aston Martin DB11', 'Aston Martin', 'Used', '13000', 1, 'Sold', '2019-12-30'),
(177, 'Rolls-Royce Ghost', 'Rolls-Royce', 'Brand New', '22000', 1, 'Sold', '2023-09-11'),
(179, 'Tes', 'Tes', 'Brand New', '20000', 11, 'Available', NULL),
(180, 'Toyota', 'Test Y', 'Used', '10000', 1, 'Available', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `car_request`
--

CREATE TABLE `car_request` (
  `id` int(50) NOT NULL,
  `car_id` int(50) NOT NULL,
  `seller_id` int(50) NOT NULL,
  `customer_id` int(50) NOT NULL,
  `date` varchar(50) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `request_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_request`
--

INSERT INTO `car_request` (`id`, `car_id`, `seller_id`, `customer_id`, `date`, `status`, `request_type`) VALUES
(1, 3, 1, 1, NULL, 'Pending', 'Purchase'),
(2, 6, 1, 2, NULL, 'Accepted', 'Rent'),
(3, 5, 1, 3, NULL, 'Pending', 'Purchase'),
(4, 4, 4, 4, NULL, 'Accepted', 'Purchase'),
(5, 2, 1, 5, NULL, 'Rejected', 'Rent'),
(6, 8, 8, 5, NULL, 'Accepted', 'Rent'),
(7, 1, 1, 6, NULL, 'Rejected', 'Rent'),
(8, 22, 2, 7, NULL, 'Pending', 'Purchase'),
(9, 10, 10, 8, NULL, 'Pending', 'Purchase'),
(10, 7, 4, 9, NULL, 'Rejected', 'Rent'),
(21, 5, 1, 2, '2024-05-09 17:10:38', 'Accepted', 'Purchase'),
(22, 7, 1, 2, '2024-05-07 00:43:51', 'Accepted', 'Purchase'),
(23, 3, 1, 2, '2024-05-07 08:45:50', 'Accepted', 'Purchase');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(50) NOT NULL,
  `message` varchar(120) NOT NULL,
  `date` varchar(50) NOT NULL,
  `seller_id` int(50) NOT NULL,
  `customer_id` int(50) NOT NULL,
  `car_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `message`, `date`, `seller_id`, `customer_id`, `car_id`) VALUES
(1, 'It took too much time for delivery', '2024-05-15', 1, 3, 152);

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `user_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`id`, `name`, `phone`, `user_id`) VALUES
(1, 'John Doe', '123-456-7890', 1),
(2, 'Jane Smith', '987-654-3210', 2),
(3, 'Michael Johnson', '555-555-5555', 3),
(4, 'Emily Davis', '111-222-3333', 4),
(5, 'David Brown', '999-888-7777', 5),
(6, 'Sarah Wilson', '444-333-2222', 6),
(7, 'James Taylor', '777-888-9999', 7),
(8, 'Jennifer Martinez', '666-777-8888', 8),
(9, 'Christopher Anderson', '222-111-0000', 9),
(10, 'Elizabeth Garcia', '888-999-0000', 10),
(11, 'Test 1 seller', '01912311234', 11),
(12, 'Test 2 seller', '01912311214', 12),
(13, 'Test 3 seller', '01912311244', 13),
(14, 'Test 4 seller', '01912231244', 14),
(15, 'Test 5seller', '0191411244', 15),
(16, 'Test 6 seller', '019132131244', 16),
(17, 'Test 7seller', '01912311244', 17);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `type`) VALUES
(1, 'test1@gmail.com', '$2y$10$2TEcRkNZVPr4R/MpUYn0B.QDXHlqOAO7HPl8Qz1IZV8/4pSU8ghuy', 'Seller'),
(2, 'test2@gmail.com', '$2y$10$2TEcRkNZVPr4R/MpUYn0B.QDXHlqOAO7HPl8Qz1IZV8/4pSU8ghuy', 'Admin'),
(3, 'test3@gmail.com', '$2y$10$2TEcRkNZVPr4R/MpUYn0B.QDXHlqOAO7HPl8Qz1IZV8/4pSU8ghuy', 'Customer'),
(4, 'test4@gmail.com', '$2y$10$2TEcRkNZVPr4R/MpUYn0B.QDXHlqOAO7HPl8Qz1IZV8/4pSU8ghuy', 'Seller'),
(5, 'test5@gmail.com', '$2y$10$2TEcRkNZVPr4R/MpUYn0B.QDXHlqOAO7HPl8Qz1IZV8/4pSU8ghuy', 'Seller'),
(6, 'test6@gmail.com', '$2y$10$2TEcRkNZVPr4R/MpUYn0B.QDXHlqOAO7HPl8Qz1IZV8/4pSU8ghuy', 'Seller'),
(7, 'test7@gmail.com', '$2y$10$2TEcRkNZVPr4R/MpUYn0B.QDXHlqOAO7HPl8Qz1IZV8/4pSU8ghuy', 'Seller'),
(8, 'test8@gmail.com', '$2y$10$2TEcRkNZVPr4R/MpUYn0B.QDXHlqOAO7HPl8Qz1IZV8/4pSU8ghuy', 'Seller'),
(9, 'test9@gmail.com', '$2y$10$2TEcRkNZVPr4R/MpUYn0B.QDXHlqOAO7HPl8Qz1IZV8/4pSU8ghuy', 'Seller'),
(10, 'test10@gmail.com', '$2y$10$2TEcRkNZVPr4R/MpUYn0B.QDXHlqOAO7HPl8Qz1IZV8/4pSU8ghuy', 'Seller'),
(11, 'testx1@gmail.com', '$2y$10$2TEcRkNZVPr4R/MpUYn0B.QDXHlqOAO7HPl8Qz1IZV8/4pSU8ghuy', 'Seller'),
(12, 'testx2@gmail.com', '$2y$10$2TEcRkNZVPr4R/MpUYn0B.QDXHlqOAO7HPl8Qz1IZV8/4pSU8ghuy', 'Seller'),
(13, 'testx3@gmail.com', '$2y$10$2TEcRkNZVPr4R/MpUYn0B.QDXHlqOAO7HPl8Qz1IZV8/4pSU8ghuy', 'Seller'),
(14, 'testx4@gmail.com', '$2y$10$2TEcRkNZVPr4R/MpUYn0B.QDXHlqOAO7HPl8Qz1IZV8/4pSU8ghuy', 'Seller'),
(15, 'testx5@gmail.com', '$2y$10$2TEcRkNZVPr4R/MpUYn0B.QDXHlqOAO7HPl8Qz1IZV8/4pSU8ghuy', 'Seller'),
(16, 'testx6@gmail.com', '$2y$10$2TEcRkNZVPr4R/MpUYn0B.QDXHlqOAO7HPl8Qz1IZV8/4pSU8ghuy', 'Seller'),
(17, 'test7@gmail.com', '$2y$10$x3/LcCxdbUk3MTQGCeDhb.KMCIJRw8AuAgMd3z2PbwuTokUysDJCq', 'Seller');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_request`
--
ALTER TABLE `car_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
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
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `car_request`
--
ALTER TABLE `car_request`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
