-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2022 at 06:00 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_database`
--

CREATE TABLE `admin_database` (
  `admin_id` varchar(50) NOT NULL,
  `admin_name` varchar(50) DEFAULT NULL,
  `admin_password` varchar(50) DEFAULT NULL,
  `admin_phone` varchar(50) DEFAULT NULL,
  `admin_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_database`
--

INSERT INTO `admin_database` (`admin_id`, `admin_name`, `admin_password`, `admin_phone`, `admin_email`) VALUES
('01', 'Ali', '00', '0312', 'abc@123'),
('02', 'asasd', '111', '000', 'asa@gmail.com'),
('123', 'ali', '12345', '030000000', 'abc@123'),
('191', 'Umair', '786', '031256762', 'umair@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_database`
--

CREATE TABLE `medicine_database` (
  `medicine_name` varchar(50) DEFAULT NULL,
  `quanity` varchar(50) DEFAULT NULL,
  `expiry_date` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist_database`
--

CREATE TABLE `pharmacist_database` (
  `pharmacist_id` varchar(50) NOT NULL,
  `pharmacist_name` varchar(50) DEFAULT NULL,
  `pharmacist_password` varchar(50) DEFAULT NULL,
  `pharmacist_address` varchar(50) DEFAULT NULL,
  `pharmacist_phone` varchar(50) DEFAULT NULL,
  `pharmacist_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pharmacist_database`
--

INSERT INTO `pharmacist_database` (`pharmacist_id`, `pharmacist_name`, `pharmacist_password`, `pharmacist_address`, `pharmacist_phone`, `pharmacist_email`) VALUES
('12345', 'ali', '123', NULL, '030000000', 'Ali@gmail.com'),
('191', 'umair', '0101', NULL, '0328908907', 'umairishtiaq04@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_password` varchar(50) DEFAULT NULL,
  `user_phone` varchar(50) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_password`, `user_phone`, `user_email`) VALUES
('12345', 'Ali', '000', '12345', 'abcdef@gmail');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_database`
--
ALTER TABLE `admin_database`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `pharmacist_database`
--
ALTER TABLE `pharmacist_database`
  ADD PRIMARY KEY (`pharmacist_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
