-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2023 at 05:24 AM
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
-- Table structure for table `chapters`
--

CREATE TABLE `chapters` (
  `id` int(11) NOT NULL,
  `topicId` int(11) NOT NULL,
  `subTopicId` int(11) NOT NULL,
  `courseId` int(11) NOT NULL,
  `chapterName` varchar(255) NOT NULL,
  `uploadFile` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `createdOn` datetime NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(11) NOT NULL,
  `modifiedOn` datetime NOT NULL,
  `modifiedBy` int(11) NOT NULL,
  `isActive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chapters`
--

INSERT INTO `chapters` (`id`, `topicId`, `subTopicId`, `courseId`, `chapterName`, `uploadFile`, `video`, `createdOn`, `createdBy`, `modifiedOn`, `modifiedBy`, `isActive`) VALUES
(1, 5, 10, 8, 'Array', 'students (1).sql', 'whatsapp-status-Naruto-sad.mp4', '2023-11-14 16:30:54', 0, '0000-00-00 00:00:00', 0, b'1'),
(2, 5, 10, 9, 'React Hooks', 'students (1).sql', 'whatsapp-status-Naruto-sad.mp4', '2023-11-15 09:59:30', 0, '2023-11-15 07:09:37', 0, b'0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
