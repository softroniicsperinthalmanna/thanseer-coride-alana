-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2023 at 10:50 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `go_share`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `log_id` int(11) NOT NULL,
  `time` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `complaint_id` int(11) NOT NULL,
  `complaint` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`log_id`, `time`, `date`, `complaint_id`, `complaint`) VALUES
(1, '09:00:00', '2023-10-01', 1, 'not good'),
(1, '09:00:00', '2023-10-01', 2, 'not good'),
(1, '00:00:00', '2023-07-04', 3, 'not good'),
(1, '00:00:00', '2023-07-04', 4, 'hello'),
(1, '00:00:00', '2023-07-04', 5, 'hhhhhhh'),
(1, '00:00:00', '2023-07-04', 6, ''),
(1, '9:00am', '2023-10-01', 7, 'not good'),
(1, '12:16 PM', '2023-07-04', 8, 'toooo baaadddddd');

-- --------------------------------------------------------

--
-- Table structure for table `goods_movement`
--

CREATE TABLE `goods_movement` (
  `gm_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `starting_point` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `vehicle_no` varchar(9) NOT NULL,
  `time` varchar(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `goods_movement`
--

INSERT INTO `goods_movement` (`gm_id`, `log_id`, `starting_point`, `destination`, `vehicle_no`, `time`, `date`) VALUES
(1, 0, 'Peinthalmannna', 'kannur', 'KL53q3241', '9:30AM', '2023-10-01'),
(2, 0, 'pmna', 'calicut', 'kl53e7515', '9:00am', '0000-00-00'),
(3, 0, 'pmna', 'calicut', 'kl53e7515', '9:00am', '0000-00-00'),
(4, 0, 'pmna', 'calicut', 'kl53e7515', '9:00am', '2023-10-01'),
(5, 0, 'pmna', 'mlprm', 'kl53q3241', '10:21 AM', '2023-07-19'),
(6, 1, 'Peinthalmannna', 'Kasarkode', 'KL53q3241', '9:00am', '2023-10-01'),
(7, 1, 'perinthalmanna', 'kasarkode', 'kl53e7515', '12:50 AM', '2023-07-13');

-- --------------------------------------------------------

--
-- Table structure for table `group_trip`
--

CREATE TABLE `group_trip` (
  `gt_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `mobile_no` bigint(20) NOT NULL,
  `starting_point` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `vehicle_no` varchar(15) NOT NULL,
  `vehicle_type` varchar(20) NOT NULL,
  `group_name` varchar(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `group_trip`
--

INSERT INTO `group_trip` (`gt_id`, `log_id`, `first_name`, `last_name`, `mobile_no`, `starting_point`, `destination`, `vehicle_no`, `vehicle_type`, `group_name`, `date`) VALUES
(3, 0, 'muhammed', 'Tanseer', 9947977759, 'Peinthalmannna', 'kannur', 'KL53q3241', 'xuv', 'explore', '2023-07-01'),
(4, 0, 'muhammed', 'Tanseer', 9947977759, 'Peinthalmannna', 'kannur', 'KL53q3241', 'xuv', 'explore', '2023-07-01'),
(5, 1, 'tanseer', 'k', 0, 'pmna', 'calicut', 'kl53e7515', '', 'explorado', '2023-07-20');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `locality` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `sublocality` varchar(50) NOT NULL,
  `subadminstrative` varchar(50) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `locality`, `street`, `sublocality`, `subadminstrative`, `latitude`, `longitude`) VALUES
(1, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '', ''),
(2, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '', ''),
(3, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(4, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(5, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(6, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(7, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(8, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(9, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(10, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(11, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(12, 'Angadipuram', 'X6H3+52P', 'Chanthully Paadam', '', '10.9779707', '76.2026113'),
(13, 'Angadipuram', 'X6H3+52P', 'Chanthully Paadam', '', '10.9779707', '76.2026113'),
(14, 'Angadipuram', 'X6H3+533', 'Chanthully Paadam', '', '10.9779133', '76.2026252'),
(15, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(16, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(17, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(18, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(19, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(20, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(21, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(22, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(23, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(24, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(25, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(26, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(27, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(28, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(29, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(30, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(31, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(32, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(33, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(34, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(35, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(36, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(37, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084'),
(38, 'Mountain View', '1600 Amphitheatre Pkwy', '', 'Santa Clara County', '37.4219983', '-122.084');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `log_id` int(11) NOT NULL,
  `mobile_no` bigint(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`log_id`, `mobile_no`, `password`) VALUES
(1, 0, '0000000000'),
(2, 7788995544, '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `my_rides`
--

CREATE TABLE `my_rides` (
  `log_id` int(11) NOT NULL,
  `ride_id` int(11) NOT NULL,
  `time` varchar(10) NOT NULL,
  `date` varchar(15) NOT NULL,
  `destination` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `my_rides`
--

INSERT INTO `my_rides` (`log_id`, `ride_id`, `time`, `date`, `destination`) VALUES
(1, 6, '6:29 AM', '2023-07-05', 'pmna'),
(1, 7, '10:29 AM', '2023-07-05', 'calicut');

-- --------------------------------------------------------

--
-- Table structure for table `offer_pool`
--

CREATE TABLE `offer_pool` (
  `log_id` int(11) NOT NULL,
  `pool_id` int(11) NOT NULL,
  `starting_point` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `vehicle_no` varchar(9) NOT NULL,
  `time` varchar(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offer_pool`
--

INSERT INTO `offer_pool` (`log_id`, `pool_id`, `starting_point`, `destination`, `vehicle_no`, `time`, `date`) VALUES
(0, 1, 'perinthalmanna', 'calicut', 'kl53e7515', '10:46 AM', '2023-06-27'),
(1, 16, 'Perinthalmanna', 'Malappuram', 'kl53e7515', '6:00 PM', '2023-07-24');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `register_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`register_id`, `log_id`, `first_name`, `last_name`) VALUES
(1, 1, 'tanseer', 'k'),
(2, 2, 'peter', 'griffin');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `log_id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `review` varchar(50) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`log_id`, `review_id`, `date`, `review`, `rating`) VALUES
(1, 1, '2023-10-01 09:00:00', 'not good', 2),
(1, 2, '2023-07-04 13:40:22', '', 5),
(1, 3, '2023-07-04 13:45:34', '', 3),
(1, 4, '2023-07-04 13:47:11', 'good\n', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `goods_movement`
--
ALTER TABLE `goods_movement`
  ADD PRIMARY KEY (`gm_id`);

--
-- Indexes for table `group_trip`
--
ALTER TABLE `group_trip`
  ADD PRIMARY KEY (`gt_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `my_rides`
--
ALTER TABLE `my_rides`
  ADD PRIMARY KEY (`ride_id`);

--
-- Indexes for table `offer_pool`
--
ALTER TABLE `offer_pool`
  ADD PRIMARY KEY (`pool_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`register_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `goods_movement`
--
ALTER TABLE `goods_movement`
  MODIFY `gm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `group_trip`
--
ALTER TABLE `group_trip`
  MODIFY `gt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `my_rides`
--
ALTER TABLE `my_rides`
  MODIFY `ride_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `offer_pool`
--
ALTER TABLE `offer_pool`
  MODIFY `pool_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `register_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
