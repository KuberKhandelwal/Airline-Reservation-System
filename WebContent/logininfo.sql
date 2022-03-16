-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Dec 05, 2020 at 06:47 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logininfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookdetails`
--

CREATE TABLE `bookdetails` (
  `Fcode` varchar(50) NOT NULL,
  `Fpassport` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Card Details` bigint(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookdetails`
--

INSERT INTO `bookdetails` (`Fcode`, `Fpassport`, `firstName`, `lastName`, `Gender`, `Card Details`) VALUES
('DP102', 'J12463496', 'Meena', 'Rawat', 'female', 1234),
('MP102', 'J123933456', 'Rahul', 'Rawat', 'male', 1234),
('', '', '', '', '', 1234),
('DM101', 'J12463496', 'Kuber', 'Khandelwal', 'male', 1234),
('DM101', 'J12463496', 'Kuber', 'Khandelwal', 'male', 1234),
('DM101', 'J123933456', 'Meena', 'Rawat', 'female', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `flightdetails`
--

CREATE TABLE `flightdetails` (
  `FlightCode` varchar(32) NOT NULL,
  `from` varchar(32) NOT NULL,
  `to` varchar(32) NOT NULL,
  `Date` date NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flightdetails`
--

INSERT INTO `flightdetails` (`FlightCode`, `from`, `to`, `Date`, `Price`) VALUES
('', '', '', '0000-00-00', 0),
('DM101', 'Delhi', 'Mumbai', '2020-12-03', 15000),
('DP102', 'Delhi', 'Patna', '2020-12-03', 17000),
('DC103', 'Delhi', 'Chennai', '2020-12-02', 22000),
('DR104', 'Delhi', 'Rajasthan', '2020-12-03', 5000),
('MD101', 'Mumbai', 'Delhi', '2020-12-02', 15000),
('MP102', 'Mumbai', 'Patna', '2020-12-03', 17000),
('MC103', 'Mumbai', 'Chennai', '2020-12-04', 15000),
('MR104', 'Mumbai', 'Rajasthan', '2020-12-05', 5000),
('PD101', 'Patna', 'Delhi', '2020-12-04', 15000),
('PM102', 'Patna', 'Mumbai', '2020-12-04', 17000),
('PC103', 'Patna', 'Chennai', '2020-12-05', 22000),
('PR104', 'Patna', 'Rajasthan', '2020-12-07', 10000),
('CD101', 'Chennai', 'Dehli', '2020-12-08', 22000),
('CM102', 'Chennai', 'Mumbai', '2020-12-04', 22000),
('CP103', 'Chennai', 'Patna', '2020-12-04', 25000),
('CR104', 'Chennai', 'Rajasthan', '2020-12-05', 20000),
('RD101', 'Rajasthan', 'Dehli', '2020-12-03', 5000),
('RM102', 'Rajasthan', 'Mumbai', '2020-12-07', 2000),
('RP103', 'Rajasthan', 'Patna', '2020-12-04', 10000),
('RC104', 'Rajasthan', 'Chennai', '2020-12-06', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `login_page`
--

CREATE TABLE `login_page` (
  `username` text NOT NULL,
  `password` text NOT NULL,
  `firstName` text NOT NULL,
  `lastName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_page`
--

INSERT INTO `login_page` (`username`, `password`, `firstName`, `lastName`) VALUES
('admin', 'Rahul', 'admin', 'admin'),
('Kuber123', 'Kuber@123', 'Kuber', 'Khandelwal'),
('Rahul123', '98765', 'Rahul', 'Sharma'),
('tarun123', '12345', 'Tarun', 'Mahajan');

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

CREATE TABLE `pay` (
  `Cnumber` bigint(16) NOT NULL,
  `Cname` varchar(50) NOT NULL,
  `Cdate` date NOT NULL,
  `Cvv` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pay`
--

INSERT INTO `pay` (`Cnumber`, `Cname`, `Cdate`, `Cvv`) VALUES
(1234567890123456, 'Kuber', '2020-12-03', 123),
(1234567890987654, 'Rahul sharma', '2020-12-27', 435),
(987654321098765, 'Rahul sharma', '2020-12-27', 567),
(123456789098765, 'Rahul sharma', '2020-12-06', 567),
(1234567890123456, 'Kuber', '2020-12-05', 987);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
