-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2023 at 10:24 AM
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
-- Database: `saburi_lms_live`
--

-- --------------------------------------------------------

--
-- Table structure for table `coursetag`
--

CREATE TABLE `coursetag` (
  `id` int(50) NOT NULL,
  `blog_id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_on` date NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `modifdy_on` date NOT NULL,
  `modify_by` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `coursetag`
--

INSERT INTO `coursetag` (`id`, `blog_id`, `name`, `created_on`, `created_by`, `modifdy_on`, `modify_by`, `status`) VALUES
(1, 2, 'Web development', '0000-00-00', '', '0000-00-00', '', ''),
(2, 2, 'Design', '0000-00-00', '', '0000-00-00', '', ''),
(3, 2, 'UX', '0000-00-00', '', '0000-00-00', '', ''),
(4, 2, 'Marketing', '0000-00-00', '', '0000-00-00', '', ''),
(5, 3, 'abc', '0000-00-00', '', '0000-00-00', '', ''),
(6, 3, 'xyz', '0000-00-00', '', '0000-00-00', '', ''),
(7, 4, 'Web development', '0000-00-00', '', '0000-00-00', '', ''),
(8, 4, 'Design', '0000-00-00', '', '0000-00-00', '', ''),
(9, 4, 'UX', '0000-00-00', '', '0000-00-00', '', ''),
(10, 4, 'Marketing', '0000-00-00', '', '0000-00-00', '', ''),
(11, 5, 'a', '0000-00-00', '', '0000-00-00', '', ''),
(12, 5, 'b', '0000-00-00', '', '0000-00-00', '', ''),
(13, 5, 'c', '0000-00-00', '', '0000-00-00', '', ''),
(14, 5, 'd', '0000-00-00', '', '0000-00-00', '', ''),
(15, 5, 'e', '0000-00-00', '', '0000-00-00', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coursetag`
--
ALTER TABLE `coursetag`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coursetag`
--
ALTER TABLE `coursetag`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
