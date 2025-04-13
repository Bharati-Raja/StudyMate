-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2025 at 02:13 PM
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
-- Database: `study_mate`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` int(11) NOT NULL,
  `groupname` varchar(50) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `admin_name` varchar(50) NOT NULL,
  `group_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `groupname`, `admin_id`, `admin_name`, `group_description`) VALUES
(51, 'studyMate', 5, 'Daman', '-'),
(52, 'pdaku_group', 1, 'bharati', '-'),
(53, 'bca1', 5, 'Daman', '-'),
(54, 'bca2', 5, 'Daman', '-'),
(55, 'bca3', 5, 'Daman', '-'),
(56, 'bharatisNew_Group', 1, 'bharati', 'qwertyuiopasdfghjklzxcvbnm'),
(57, 'bca3a', 1, 'bharati', 'bca3a'),
(58, 'mygroup', 13, 'Bharati Raja Swami', '-'),
(151, 'MyNewGroup', 16, 'Bhumi', 'this is my group'),
(152, 'studyMate88', 1, 'bharati', 'this has no group name'),
(155, 'sdfgh', 17, 'jagnoor', '-');

-- --------------------------------------------------------

--
-- Table structure for table `group_status_list`
--

CREATE TABLE `group_status_list` (
  `request_id` int(11) NOT NULL,
  `user__Id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `groupname` varchar(50) NOT NULL,
  `status` enum('pending','admin','rejected','member') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `group_status_list`
--

INSERT INTO `group_status_list` (`request_id`, `user__Id`, `user_id`, `username`, `group_id`, `groupname`, `status`) VALUES
(62, 0, 5, 'Daman', 51, 'studyMate', 'admin'),
(64, 0, 1, 'bharati', 52, 'pdaku_group', 'admin'),
(65, 0, 5, 'Daman', 52, 'pdaku_group', 'pending'),
(66, 0, 5, 'Daman', 53, 'bca1', 'admin'),
(67, 0, 5, 'Daman', 54, 'bca2', 'admin'),
(68, 0, 5, 'Daman', 55, 'bca3', 'admin'),
(72, 0, 1, 'bharati', 54, 'bca2', 'pending'),
(75, 0, 1, 'bharati', 53, 'bca1', 'pending'),
(78, 0, 1, 'bharati', 56, 'bharatisNew_Group', 'admin'),
(80, 0, 12, 'rajat', 52, 'pdaku_group', 'pending'),
(81, 0, 1, 'bharati', 57, 'bca3a', 'admin'),
(82, 0, 5, 'Daman', 57, 'bca3a', 'pending'),
(83, 0, 5, 'Daman', 56, 'bharatisNew_Group', 'pending'),
(84, 0, 13, 'Bharati Raja Swami', 53, 'bca1', 'pending'),
(85, 0, 13, 'Bharati Raja Swami', 58, 'mygroup', 'admin'),
(86, 0, 13, 'Bharati Raja Swami', 51, 'studyMate', 'pending'),
(88, 0, 16, 'Bhumi', 151, 'MyNewGroup', 'admin'),
(89, 0, 1, 'bharati', 152, 'studyMate88', 'admin'),
(92, 0, 1, 'bharati', 151, 'MyNewGroup', 'pending'),
(95, 0, 100, 'a', 52, 'pdaku_group', 'pending'),
(96, 0, 101, 'a', 52, 'pdaku_group', 'pending'),
(97, 0, 102, 'a', 52, 'pdaku_group', 'pending'),
(98, 0, 103, 'a', 52, 'pdaku_group', 'pending'),
(99, 0, 15, ' ', 155, 'sdfgh', 'pending'),
(100, 0, 15, ' ', 157, 'abhisGroup', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `group_status_list`
--
ALTER TABLE `group_status_list`
  ADD PRIMARY KEY (`request_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `group_status_list`
--
ALTER TABLE `group_status_list`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
