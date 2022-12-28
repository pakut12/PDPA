-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: Dec 28, 2022 at 07:19 AM
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
  `address_village` varchar(100) NOT NULL,
  `address_number` varchar(100) NOT NULL,
  `address_alley` varchar(100) NOT NULL,
  `address_group` varchar(100) NOT NULL,
  `address_road` varchar(100) NOT NULL,
  `address_district` varchar(100) NOT NULL,
  `address_amphoe` varchar(100) NOT NULL,
  `address_province` varchar(100) NOT NULL,
  `address_zipcode` varchar(100) NOT NULL,
  `address_homephone` varchar(100) NOT NULL,
  `address_phonenumber` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_address`
--

INSERT INTO `tb_address` (`address_id`, `address_village`, `address_number`, `address_alley`, `address_group`, `address_road`, `address_district`, `address_amphoe`, `address_province`, `address_zipcode`, `address_homephone`, `address_phonenumber`) VALUES
(99, '-', '-', '', '', '-', '-', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL,
  `user_idcard` varchar(13) NOT NULL,
  `user_prefix` varchar(10) NOT NULL,
  `user_firstname` varchar(100) NOT NULL,
  `user_surname` varchar(100) NOT NULL,
  `user_birthday` date NOT NULL,
  `user_age` varchar(3) NOT NULL,
  `user_email` varchar(50) NOT NULL
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
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tb_usermaster`
--
ALTER TABLE `tb_usermaster`
  ADD PRIMARY KEY (`usermaster_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
