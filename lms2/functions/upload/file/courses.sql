-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2023 at 07:46 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saburi_lms_2023`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `topicID` int(11) DEFAULT NULL,
  `subTopicId` int(11) DEFAULT NULL,
  `courseName` varchar(50) DEFAULT NULL,
  `courseCost` int(11) DEFAULT NULL,
  `courseDesc` longtext DEFAULT NULL,
  `learn` varchar(1000) NOT NULL,
  `requirements` varchar(1000) NOT NULL,
  `tag` varchar(1000) NOT NULL,
  `bannerImage` varchar(50) DEFAULT NULL,
  `uploadfile` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `modifiedBy` int(11) DEFAULT NULL,
  `modifiedOn` datetime DEFAULT NULL,
  `isActive` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `topicID`, `subTopicId`, `courseName`, `courseCost`, `courseDesc`, `learn`, `requirements`, `tag`, `bannerImage`, `uploadfile`, `video`, `createdBy`, `createdOn`, `modifiedBy`, `modifiedOn`, `isActive`) VALUES
(7, 0, 0, '', 0, '<p>Welcome to Saburi LMS</p>', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL),
(8, 0, 0, '', 0, '<p>Welcome to Saburi LMS</p>', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL),
(9, 0, 0, '', 0, '<p>Welcome to Saburi LMS</p>', '', '', 'jj\r\njj\r\n', '', '', '', NULL, NULL, NULL, NULL, NULL),
(10, 4, 0, '', 0, '<p>Welcome to Saburi LMS</p>', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL),
(11, 0, 0, '', 0, '<p>Welcome to Saburi LMS</p>', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL),
(12, 0, 0, '', 0, '<p>Welcome to Saburi LMS</p>', 'hjgh,jhghs', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL),
(13, 0, 0, '', 0, '<p>Welcome to Saburi LMS</p>', 'aa,ss', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL),
(15, 4, 8, 'AI', 9, '<p>Welcome to Saburi LMS</p>', 'AI,AI robot', 'AI,AI robot', 'good\r\nnice\r\n', 'download.jfif', 'download.jfif', 'download.jfif', NULL, NULL, NULL, NULL, NULL),
(16, 4, 8, 'React', 4999, '<p>Welcome to Saburi LMS web</p>', 'add,remove', 'add,remove', 'qq\r\nww\r\n', 'logo.png', 'SQLQuery3_for_Mukundsir (1).sql', 'WhatsApp Video 2023-07-22 at 12.15.02 PM.mp4', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topicID` (`topicID`),
  ADD KEY `subTopicId` (`subTopicId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
