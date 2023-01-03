-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: Jan 03, 2023 at 10:46 AM
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
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_address`
--

CREATE TABLE `tb_address` (
  `address_id` int(11) NOT NULL,
  `address_village` varchar(100) DEFAULT NULL,
  `address_number` varchar(100) DEFAULT NULL,
  `address_alley` varchar(100) DEFAULT NULL,
  `address_group` varchar(100) DEFAULT NULL,
  `address_road` varchar(100) DEFAULT NULL,
  `address_district` varchar(100) DEFAULT NULL,
  `address_amphoe` varchar(100) DEFAULT NULL,
  `address_province` varchar(100) DEFAULT NULL,
  `address_zipcode` varchar(100) DEFAULT NULL,
  `address_homephone` varchar(100) DEFAULT NULL,
  `address_phonenumber` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_address`
--

INSERT INTO `tb_address` (`address_id`, `address_village`, `address_number`, `address_alley`, `address_group`, `address_road`, `address_district`, `address_amphoe`, `address_province`, `address_zipcode`, `address_homephone`, `address_phonenumber`) VALUES
(99, '-', '-', '', '', '-', '-', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_user` varchar(20) NOT NULL,
  `admin_pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_user`, `admin_pass`) VALUES
(99, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL,
  `user_idcard` varchar(13) NOT NULL,
  `user_prefix` varchar(10) DEFAULT NULL,
  `user_firstname` varchar(100) DEFAULT NULL,
  `user_surname` varchar(100) DEFAULT NULL,
  `user_birthday` date DEFAULT NULL,
  `user_age` varchar(3) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `user_idcard`, `user_prefix`, `user_firstname`, `user_surname`, `user_birthday`, `user_age`, `user_email`) VALUES
(99, '-', '-', '0', '0', '0000-00-00', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_usermaster`
--

CREATE TABLE `tb_usermaster` (
  `usermaster_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_usermaster`
--

INSERT INTO `tb_usermaster` (`usermaster_id`, `user_id`, `address_id`) VALUES
(99, 99, 99);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_address`
--
ALTER TABLE `tb_address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tb_usermaster`
--
ALTER TABLE `tb_usermaster`
  ADD PRIMARY KEY (`usermaster_id`),
  ADD KEY `user_id` (`user_id`,`address_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
