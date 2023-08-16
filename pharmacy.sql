-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jan 10, 2023 at 05:27 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `customer_id` int(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `medicine_id` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `price` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_id`, `type`, `medicine_id`, `brand`, `productName`, `quantity`, `price`, `date`) VALUES
(12, 1, 'Metformin', '2', 'ljljmk', 'jkjml', 2, 4, '2023-01-09'),
(13, 1, 'Metformin', '1', 'Abortt', 'hfvhfv', 2, 2000000, '2023-01-09'),
(14, 2, 'Metformin', '2', 'ljljmk', 'jkjml', 3, 6, '2023-01-09'),
(15, 3, 'Hydrocodone', '3', 'ljljmk', 'jkjml', 6, 12, '2023-01-09'),
(16, 4, 'Metformin', '2', 'ljljmk', 'jkjml', 4, 8, '2023-01-09'),
(17, 4, 'Metformin', '2', 'ljljmk', 'jkjml', 3, 6, '2023-01-09'),
(18, 5, 'Antibiotics', '5', 'fdxcc', 'hfvbh', 1, 0, '2023-01-09'),
(19, 5, 'Metformin', '2', 'ljljmk', 'jkjml', 1, 2, '2023-01-09');

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `id` int(11) NOT NULL,
  `customer_id` int(100) NOT NULL,
  `total` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`id`, `customer_id`, `total`, `date`) VALUES
(1, 1, 2000004, '2023-01-09'),
(2, 2, 6, '2023-01-09'),
(3, 3, 12, '2023-01-09'),
(4, 4, 14, '2023-01-09'),
(5, 5, 2, '2023-01-09');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(11) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `image` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `medicine_id`, `brand`, `productName`, `type`, `status`, `price`, `image`, `date`) VALUES
(4, 2, 'ljljmk', 'jkjml', 'Metformin', 'Available', 2, 'C:\\Users\\Junaid\\OneDrive\\Pictures\\facebook-350x350.png', '2022-12-30'),
(5, 1, 'Abortt', 'hfvhfv', 'Metformin', 'Available', 1000000, 'C:\\\\Users\\\\Junaid\\\\OneDrive\\\\Pictures\\\\facebook-350x350.png', '2022-12-30'),
(6, 3, 'ljljmk', 'jkjml', 'Hydrocodone', 'Available', 2, 'C:\\\\Users\\\\Junaid\\\\OneDrive\\\\Pictures\\\\facebook-350x350.png', '2022-12-30'),
(7, 5, 'fdxcc', 'hfvbh', 'Antibiotics', 'Not Available', 0, 'C:\\\\Users\\\\Junaid\\\\OneDrive\\\\Pictures\\\\facebook-350x350.png', '2022-12-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
