-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2018 at 11:15 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus_booking_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(11) NOT NULL,
  `Fname` varchar(200) NOT NULL,
  `Lname` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `Fname`, `Lname`, `Email`, `Username`, `Password`) VALUES
(1, 'Ramya', 'Boppana', 'ramyasusanth@gmail.com', 'ramya', 'd1051c4d4d2c9fff63cac2907ecc0c8c3881e603');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Booking_id` int(11) NOT NULL,
  `user` varchar(200) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Bus_id` int(11) NOT NULL,
  `Seats_no` int(11) NOT NULL,
  `Total_fare` double NOT NULL,
  `Bank` varchar(200) NOT NULL,
  `Payment_method` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`Booking_id`, `user`, `Date`, `Bus_id`, `Seats_no`, `Total_fare`, `Bank`, `Payment_method`) VALUES
(3, 'sai', '2015-11-04 07:34:38', 15, 2, 2200, 'SBH', 'Net Banking'),
(4, 'sai', '2015-11-05 00:03:02', 18, 1, 350, 'SBH', 'Net Banking'),
(5, 'sai', '2015-11-05 02:52:06', 18, 1, 350, 'SBH', 'Net Banking'),
(6, 'sai', '2015-11-06 02:37:32', 10, 2, 2000, 'SBH', 'Debit card');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Origin` varchar(200) NOT NULL,
  `Destination` varchar(200) NOT NULL,
  `Seats` int(11) NOT NULL,
  `Arrival_time` time NOT NULL,
  `Departure_time` time NOT NULL,
  `Date` date NOT NULL,
  `Fare` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`Id`, `Name`, `Origin`, `Destination`, `Seats`, `Arrival_time`, `Departure_time`, `Date`, `Fare`) VALUES
(1, '2017-9-10 travels', 'Pkr', 'Ktm', 8, '10:00:00', '16:00:00', '0000-00-00', 800),
(2, 'ABC travels', 'Pkr', 'Ktm', 18, '10:00:00', '16:00:00', '2015-10-17', 800),
(3, 'ABC travels', 'Pkr', 'Ktm', 22, '10:00:00', '16:00:00', '2015-10-18', 800),
(4, 'Sr travels', 'Pkr', 'Ktm', 11, '12:00:00', '19:00:00', '0000-00-00', 850),
(5, 'Sr travels', 'Pkr', 'Ktm', 12, '12:00:00', '19:00:00', '2015-10-17', 850),
(6, 'Sr travels', 'Pkr', 'Ktm', 20, '12:00:00', '19:00:00', '2015-10-18', 850),
(7, 'Rocky travels', 'Pkr', 'Ktm', 12, '14:00:00', '21:00:00', '2015-10-17', 900),
(8, 'Rocky travels', 'Pkr', 'Ktm', 16, '14:00:00', '21:00:00', '2015-10-18', 900),
(9, 'lolly travels', 'Pkr', 'Btl', 10, '09:00:00', '18:00:00', '2017-09-10', 1000),
(10, 'lolly travels', 'Pkr', 'Btl', 12, '09:00:00', '18:00:00', '2015-10-17', 1000),
(11, 'lolly travels', 'Pkr', 'Btl', 23, '09:00:00', '18:00:00', '2015-10-18', 1000),
(12, 'Patel travels', 'Pkr', 'Btl', 8, '07:00:00', '16:00:00', '2017-09-10', 1200),
(13, 'Patel travels', 'Pkr', 'Btl', 11, '07:00:00', '16:00:00', '2015-10-18', 1200),
(14, 'Sbt travels', 'Pkr', 'Btl', 7, '14:00:00', '23:00:00', '2017-09-10', 1100),
(15, 'Sbt travels', 'Pkr', 'Btl', 14, '14:00:00', '23:00:00', '2015-10-17', 1100),
(16, 'Sbt travels', 'Pkr', 'Btl', 25, '14:00:00', '23:00:00', '2015-10-18', 1100),
(18, 'Vijaya travels', 'Pkr', 'Dar', 8, '09:00:00', '04:00:00', '2017-09-10', 350),
(19, 'ABC travels', 'Ktm', 'Pkr', 10, '04:00:00', '10:00:00', '2017-09-10', 800),
(20, 'ABC travels', 'Ktm', 'Pkr', 11, '04:00:00', '10:00:00', '2015-10-17', 800),
(21, 'ABC travels', 'Ktm', 'Pkr', 12, '04:00:00', '10:00:00', '2015-10-18', 800),
(22, 'Sr travels', 'Ktm', 'Pkr', 9, '03:00:00', '09:00:00', '2017-09-10', 850),
(23, 'Sr travels', 'Ktm', 'Pkr', 10, '03:00:00', '09:00:00', '2015-10-17', 850),
(24, 'Sr travels', 'Ktm', 'Pkr', 12, '03:00:00', '09:00:00', '2015-10-18', 850),
(25, 'lolly travels', 'Btl', 'Pkr', 5, '01:00:00', '08:00:00', '2017-09-10', 1000),
(26, 'lolly travels', 'Btl', 'Pkr', 11, '01:00:00', '08:00:00', '2015-10-17', 1000),
(27, 'lolly travels', 'Btl', 'Pkr', 20, '01:00:00', '08:00:00', '2015-10-18', 1000),
(28, 'lolly travels', 'Dar', 'Pkr', 10, '02:00:00', '07:00:00', '2017-09-10', 350),
(29, 'lolly travels', 'Dar', 'Pkr', 20, '02:00:00', '07:00:00', '2015-10-17', 350),
(30, 'lolly travels', 'Dar', 'Pkr', 24, '02:00:00', '07:00:00', '2015-10-18', 350);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_code` varchar(50) NOT NULL,
  `city_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_code`, `city_name`) VALUES
(1, 'Pkr', 'Pokar'),
(2, 'Ktm', 'Katam'),
(3, 'Btl', 'Battle'),
(4, 'Dar', 'Dadar');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `Fname` varchar(200) DEFAULT NULL,
  `Lname` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Username` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Security` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `Fname`, `Lname`, `Email`, `Username`, `Password`, `Timestamp`, `Security`) VALUES
(2, 'sai', 'boppana', 'sai@gmail.com', 'sai', 'f0488e300067bc295f044886b296f8cefbe08029', '2015-10-14 18:28:12', 'Challapalli'),
(3, 'ramya', 'boppana', 'ramyasusanth@gmail.com', 'ramya', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2017-09-10 05:12:14', 'Challapalli'),
(4, 'Ramya Sree', 'Boppana', 'ramyasusanth@gmail.com', 'Ramya Sree Boppana', '48be96eebb964cd9b885296a815b06e201e6f782', '2017-09-10 05:28:01', 'Challapalli'),
(5, 'Susanth', 'Boppana', 'susanthboppana@gmail.com', 'Susanth Boppana', 'bf2203c3d945b7bb81092db307bfedbf3765d48d', '2017-09-10 05:29:31', 'Challapalli'),
(6, 'Mani', 'Boppana', 'mani@gmail.com', 'mani', 'c29222e98de6437a383e8d946a9b202298e0aa3a', '2017-09-10 06:12:54', 'Challapalli'),
(7, 'Srinu', 'Boppana', 'srinu@gmail.com', 'srinu', '0d29204fc6676ae4c8e5d4efd45c50ea583bb804', '2017-09-10 06:13:52', 'Challapalli'),
(8, 'Ram', '', 'ram@gmail.com', 'ram', '77c7960e890deddebb7ff2e55e340d2ed1708368', '2017-09-10 06:15:08', 'Dar'),
(9, 'sita', '', 'sita@gmail.com', 'sita', 'da3ffa02d0505ada3490157e6d1f800f5d484930', '2017-09-10 07:11:33', 'Dar'),
(10, 'Susanth', 'Chowdary', 'boppanasusanth29@gmail.com', 'susanth29', '2a1fcf5856d9ffd2f2b815c9967fe51e2c5b39cc', '2015-10-18 03:16:16', 'Pkr'),
(12, 'githa', '', 'githa@gmail.com', 'githa', '32ef949c28f99c02d41a19897e3a624548445e8f', '2015-11-04 01:10:34', 'Pkr'),
(13, 'venkat', 'boppana', 'venky@gmail.com', 'venkat', '5803ef16bb1b95f4966c74bd695ca564481afdac', '2015-11-06 03:14:28', 'Pkr'),
(14, 'Piyush', 'Bhatia ', 'bhatia@gmail.com', '123', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2018-07-27 06:43:52', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`Booking_id`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD UNIQUE KEY `city_code` (`city_code`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `Booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
