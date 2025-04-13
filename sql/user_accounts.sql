-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2025 at 02:15 PM
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
-- Database: `user_accounts`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `folder_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `folder_id`) VALUES
(1, 'bharati', 'bharati@gmail.com', '$2y$10$8h8orf9XXE957bl9LNSJI.u7FHMDnxt9h8X90atL51jJSjrnpLyVe', '0'),
(2, 'kartik', 'kartik@gmail.com', '$2y$10$fecdHd23hZsrXk66hVrcqONAfZ.x66laZfQExU0w0RwtdNE3mIceC', '0'),
(3, 'Rajat', 'Rajat@gmail.com', '$2y$10$DfvRie8XkInMK2PMVGXuou/mVqN53tKwaPNtoMqFzaxbYkAa5SR2C', '0'),
(4, 'shivam', 'shivam@gmail.com', '$2y$10$2hl.YLdqKx/ifIOQ3ebyI.3l3mhPe.nSHVtLJck4nMpQx/mqMw4OC', '0'),
(5, 'Daman', 'Daman@gmail.com', '$2y$10$lYoQEHiFakIwg2Jl18THUu.vfDukmaBmJMiqe6MSP2wzC6CB8EHN2', '0'),
(6, 'Dipika', 'Dipika@gmail.com', '$2y$10$LKz0/HJlBJC1nWxL3F1x9e9sLDXIdJmFmyE3r1nD3ydZKuDDsdo.e', '0'),
(10, 'abhay', 'abhay@gmail.com', '$2y$10$dCHlToqtg3UmC6OacwZyO.5QBDlVWe.yDWnKWn486UGUBZrkSICdW', '0'),
(11, 'abhay1', 'abhay1@gmail.com', '$2y$10$ysL4W8dlg1eRqD0hFQgoHuc4yzSm0w9tGojZYRt5Khf3oXGeyo6Au', '0'),
(12, 'rajat', 'Rajat2@gmail.com', '$2y$10$m0SZkq08PMxnf2X5xaqxYO9tfHGjSGpKJM1NCcq5z96IirBPdOZM2', '0'),
(13, 'Bharati Raja Swami', 'bharati123@gmail.com', '$2y$10$wXLv2F01ua28tUB9Ouz6K.xVW8HvHV7BTIpAwrpe288O9zx0W.Rda', 'user_zKlXMg1X'),
(14, 'Bharati Raja Swami', 'bharati1234@gmail.com', '$2y$10$NVVpBUTE1Pl3kWtQhSyaXenG4ZFdVGdtEJ1cG.7FjCZbS0mbU3E5.', 'user_OmOY5N3d'),
(16, 'Bhumi', 'Bhumi@gmail.com', '$2y$10$Q3IwH0I6Fob67Gz9ykJp7.r42a8X3Q8AJOK4wZ74HIy/ESs2TfU02', 'user_KKtvHHIm'),
(17, 'jagnoor', 'jagnoor@gmail.com', '$2y$10$hQkgSoYrUfnpL2lpXl65duCalbxeSYOIY2PcGtEgb7nVn9TJWzlsm', 'user_jXyPFSEx'),
(21, 'Raman', 'Raman@gmail.com', '$2y$10$AOw4as5mv3EqmSzoZEl1iui5dYvi3uRGLBg5Dfzh7gz7.K4Dv9A1u', 'user_pCZxyEfJ'),
(22, 'Anjali', 'Anjali@gmail.com', '$2y$10$byPfJKBpRV3hQPtkpPqu7uGCa5s16mbGzpAjoHEEdnltvUotRf.Ue', 'user_azafaBbC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
