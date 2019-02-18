-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2019 at 11:05 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shout_it`
--

-- --------------------------------------------------------

--
-- Table structure for table `shouts`
--

CREATE TABLE `shouts` (
  `id` int(11) NOT NULL,
  `users` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shouts`
--

INSERT INTO `shouts` (`id`, `users`, `message`, `time`) VALUES
(1, 'Mayank', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Rerum quae cum placeat assumenda repellendus blanditiis?', '01:29:00'),
(2, 'Aayushi', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam accusantium officia illum modi? Voluptates, dolores?', '01:55:00'),
(3, 'Sagar', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero consectetur eum architecto corporis aut!', '02:05:00'),
(4, 'Lakshya', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Error earum illo at.', '02:06:00'),
(5, 'Shiwangee', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae magnam provident a ipsa!', '02:07:00'),
(6, 'Mayank', 'Hello Everyone!', '03:18:10'),
(7, 'Aayu', 'Hi', '03:20:30'),
(8, 'Sagar', 'Haan Bhai log?', '03:20:52'),
(9, 'Mayank', 'Haan?', '03:22:21'),
(10, 'Lakshya', 'HAHHAHAH', '03:22:40'),
(11, 'Fayeza', 'yesh', '03:26:28'),
(12, 'Faraz', 'Pagal', '03:34:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shouts`
--
ALTER TABLE `shouts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shouts`
--
ALTER TABLE `shouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
