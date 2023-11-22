-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2023 at 11:25 AM
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
-- Database: `saburi_lms_live`
--

-- --------------------------------------------------------

--
-- Table structure for table `affiliates`
--

CREATE TABLE `affiliates` (
  `id` int(11) NOT NULL,
  `companyName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `details` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `contactDetail` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `contactPerson` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `modifiedBy` int(11) DEFAULT NULL,
  `modifiedOn` datetime DEFAULT NULL,
  `isActive` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `affiliates`
--

INSERT INTO `affiliates` (`id`, `companyName`, `details`, `contactDetail`, `contactPerson`, `address`, `createdBy`, `createdOn`, `modifiedBy`, `modifiedOn`, `isActive`) VALUES
(1, 'Glansa', '', '8569857458', 'Naresh Sir', 'Hyderabad', NULL, NULL, NULL, NULL, NULL),
(2, 'TCS', 'software company', '8898985868', 'TATA', 'Hyderabad', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `blogTitle` varchar(100) DEFAULT NULL,
  `writer` varchar(255) NOT NULL,
  `description` varchar(600) DEFAULT NULL,
  `bannerImage` varchar(50) DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `modifiedBy` int(11) DEFAULT NULL,
  `modifiedOn` datetime DEFAULT NULL,
  `isActive` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blogTitle`, `writer`, `description`, `bannerImage`, `createdBy`, `createdOn`, `modifiedBy`, `modifiedOn`, `isActive`) VALUES
(2, 'Blog', 'First Blog', '<p>Welcome to My First Blog</p>', ' ', NULL, NULL, NULL, NULL, NULL),
(3, 'Blog 2', 'pk', '<p>Welcome to Blog 2</p>', ' ', NULL, NULL, NULL, NULL, NULL),
(4, 'Blog 3', 'SK', '<p>Welcome to Blog 3</p>', ' ', NULL, NULL, NULL, NULL, NULL),
(5, 'adv java', 'pk', '<p>Welcome to pk</p>', 'WhatsApp Image 2023-09-04 at 7.03.14 AM.jpeg ', NULL, NULL, NULL, NULL, NULL),
(6, 'blog 0', 'nana patekar', '<ul>\n<li>Hi my name is pradip&nbsp;</li>\n<li>i am from india&nbsp;</li>\n<li>i want to go home&nbsp;</li>\n</ul>', '3S (1).png ', NULL, NULL, NULL, NULL, NULL),
(7, 'vikas', 'pradip', '<ul class=\"tox-checklist\">\n<li>Hi my name is nana</li>\n<li>i am from India</li>\n</ul>', 'biodata (1).png ', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `Id` int(11) NOT NULL,
  `Title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Experience` int(11) DEFAULT NULL,
  `Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`Id`, `Title`, `Experience`, `Description`, `CreatedBy`, `CreatedOn`, `ModifiedBy`, `ModifiedOn`, `IsActive`) VALUES
(1, 'java', 2, '<p>Welcome to java</p>', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `careersapplications`
--

CREATE TABLE `careersapplications` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Attachment` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CareerId` int(11) DEFAULT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `companyName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `contactName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `companyPhone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `district` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `state` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pincode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `idProof` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `idProofDetails` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `modifiedBy` int(11) DEFAULT NULL,
  `modifiedOn` datetime DEFAULT NULL,
  `isActive` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companyusers`
--

CREATE TABLE `companyusers` (
  `id` int(11) NOT NULL,
  `UserId` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `CourseId` int(11) DEFAULT NULL,
  `ValidTill` date DEFAULT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `corporategovernance`
--

CREATE TABLE `corporategovernance` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdBy` int(11) NOT NULL,
  `createdOn` datetime NOT NULL,
  `modifiedBy` int(11) NOT NULL,
  `modifiedOn` datetime NOT NULL,
  `isActive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `corporategovernance`
--

INSERT INTO `corporategovernance` (`id`, `title`, `image`, `name`, `createdBy`, `createdOn`, `modifiedBy`, `modifiedOn`, `isActive`) VALUES
(1, 'CEO', 'logo-1.png', 'Pradip', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', b'0');

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
(5, 4, 6, 'javascript', 549, '<p>Welcome to JavaScript</p>', '', '', '', 'javascript.webp', 'saburi_lms_live (1).sql', 'Gmail - Google Chrome 2023-09-18 15-13-38.mp4', NULL, NULL, NULL, NULL, NULL),
(6, 5, 9, 'React', 9999, '<p>Welcome to Saburi LMS</p>', '', '', 'kkkk\r\nppp\r\n', '344431282_658158216155231_3701909582556454848_n.jp', 'bank invoice.pdf', 'Gmail - Google Chrome 2023-09-18 15-13-38.mp4', NULL, NULL, NULL, NULL, NULL),
(7, 0, 0, '', 0, '<p>Welcome to Saburi LMS</p>', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL),
(8, 0, 0, '', 0, '<p>Welcome to Saburi LMS</p>', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL),
(9, 0, 0, '', 0, '<p>Welcome to Saburi LMS</p>', '', '', 'jj\r\njj\r\n', '', '', '', NULL, NULL, NULL, NULL, NULL),
(10, 4, 0, '', 0, '<p>Welcome to Saburi LMS</p>', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL),
(11, 0, 0, '', 0, '<p>Welcome to Saburi LMS</p>', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL),
(12, 0, 0, '', 0, '<p>Welcome to Saburi LMS</p>', 'hjgh,jhghs', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coursescontent`
--

CREATE TABLE `coursescontent` (
  `id` int(11) NOT NULL,
  `CourseID` int(11) DEFAULT NULL,
  `Heading` varchar(50) DEFAULT NULL,
  `Content` longtext DEFAULT NULL,
  `Video` varchar(50) DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `modifiedBy` int(11) DEFAULT NULL,
  `modifiedOn` datetime DEFAULT NULL,
  `isActive` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `freeresources`
--

CREATE TABLE `freeresources` (
  `id` int(11) NOT NULL,
  `resourcesName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bannerImage` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `modifiedBy` int(11) DEFAULT NULL,
  `modifiedOn` datetime DEFAULT NULL,
  `isActive` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `freeresources`
--

INSERT INTO `freeresources` (`id`, `resourcesName`, `title`, `bannerImage`, `description`, `createdBy`, `createdOn`, `modifiedBy`, `modifiedOn`, `isActive`) VALUES
(1, 'only today', 'php', '', '<p>Welcome to PHP</p>', NULL, NULL, NULL, NULL, NULL),
(2, 'only today', '.net', '', '<p>Welcome to . Net</p>', NULL, NULL, NULL, NULL, NULL),
(3, 'Free Free Free', 'wordpress', '', '<p>Welcome to Saburi LMS</p>', NULL, NULL, NULL, NULL, NULL),
(4, 'Free Free Free', 'php', '', '<p>Welcome to PHP</p>', NULL, NULL, NULL, NULL, NULL),
(5, 'Free Free Free', 'img', 'WhatsApp Image 2023-09-04 at 7.03.14 AM.jpeg', '<p>Welcome to img</p>', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `Title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DOB` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `district` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `state` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pincode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gender` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phoneNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `idProof` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `idProofDetails` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `modifiedBy` int(11) DEFAULT NULL,
  `modifiedOn` datetime DEFAULT NULL,
  `isActive` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribedcourses`
--

CREATE TABLE `subscribedcourses` (
  `id` int(11) NOT NULL,
  `CourseId` int(11) DEFAULT NULL,
  `SubscriptionId` int(11) DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `Duration` int(11) DEFAULT NULL,
  `ByUser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `By` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `SubscriberId` int(11) DEFAULT NULL,
  `SubscribedDate` datetime DEFAULT NULL,
  `AmountPaid` int(11) DEFAULT NULL,
  `PmtTransactionId` varchar(50) DEFAULT NULL,
  `PmtTransactionDate` date DEFAULT NULL,
  `PmtDetails` varchar(500) DEFAULT NULL,
  `PaymentStatus` varchar(50) DEFAULT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions_1`
--

CREATE TABLE `subscriptions_1` (
  `id` int(11) NOT NULL,
  `subscription` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `duration` int(11) NOT NULL,
  `courseName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscriptions_1`
--

INSERT INTO `subscriptions_1` (`id`, `subscription`, `type`, `price`, `duration`, `courseName`) VALUES
(1, 'JAVA', 'Gold', 9999, 4, 'core java');

-- --------------------------------------------------------

--
-- Table structure for table `subtopics`
--

CREATE TABLE `subtopics` (
  `id` int(11) NOT NULL,
  `topicId` int(11) DEFAULT NULL,
  `subTopicName` varchar(100) DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `modifiedBy` int(11) DEFAULT NULL,
  `modifiedOn` datetime DEFAULT NULL,
  `isActive` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subtopics`
--

INSERT INTO `subtopics` (`id`, `topicId`, `subTopicName`, `createdBy`, `createdOn`, `modifiedBy`, `modifiedOn`, `isActive`) VALUES
(6, 5, 'Web Development', NULL, '2023-10-20 15:49:36', NULL, NULL, NULL),
(7, 6, 'F', NULL, '2023-10-20 15:50:04', NULL, NULL, NULL),
(8, 4, 'Mobile  development', NULL, '2023-10-20 15:50:26', NULL, NULL, NULL),
(9, 5, 'Entrepreneurship', NULL, '2023-10-20 15:51:16', NULL, NULL, NULL),
(10, 5, 'Commnucation', NULL, '2023-10-20 15:51:37', NULL, NULL, NULL),
(11, 5, 'Management', NULL, '2023-10-20 15:51:59', NULL, NULL, NULL),
(12, 5, 'Sales', NULL, '2023-10-20 15:52:18', NULL, NULL, NULL),
(13, 6, ' Accounting & Bookkeeping', NULL, '2023-10-20 15:52:56', NULL, NULL, NULL),
(14, 6, 'Compliance', NULL, '2023-10-20 15:53:19', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `Id` int(11) NOT NULL,
  `topicName` varchar(200) DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `modifiedBy` int(11) DEFAULT NULL,
  `modifiedOn` datetime DEFAULT NULL,
  `isActive` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`Id`, `topicName`, `createdBy`, `createdOn`, `modifiedBy`, `modifiedOn`, `isActive`) VALUES
(4, 'Development ', NULL, '2023-10-20 15:47:34', NULL, NULL, NULL),
(5, 'Business ', NULL, '2023-10-20 15:48:32', NULL, NULL, NULL),
(6, 'Finance', NULL, '2023-10-20 15:48:57', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `UserType` varchar(50) NOT NULL,
  `UserId` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `CreatedBy` int(100) NOT NULL,
  `CreatedOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ModifiedBy` int(100) NOT NULL,
  `ModifiedOn` datetime NOT NULL DEFAULT current_timestamp(),
  `IsActive` bit(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Name`, `Email`, `Phone`, `Address`, `UserType`, `UserId`, `Password`, `CreatedBy`, `CreatedOn`, `ModifiedBy`, `ModifiedOn`, `IsActive`) VALUES
(1, 'vishal', 'vishal.glansa@gmail.com', '7780290335', '<p>Address</p>', 'student', '7780290335', '', 0, '2023-10-16 17:54:21', 0, '2023-10-16 23:24:05', b'0000000000'),
(8, 'vishal', 'vishal.glansa@gmail.com', '7780290335', ' ;lkjgfchjkl;ioguyftg', 'admin', '546546tydctrs', '', 0, '2023-10-18 04:57:55', 0, '2023-10-18 10:27:55', b'0000000000'),
(9, 'Anita', 'shashi.glansa@gmail.com', '8519998738', ' kjguaygsjda', 'admin', 'jhgsiyxgsx146549684', '', 0, '2023-10-18 04:59:16', 0, '2023-10-18 10:29:16', b'0000000000'),
(10, 'Anita123', 'harish.glansa@gmail.com', '9100258573', ' vibajsgdiaysgfd', 'admin', 'vishal123', '', 0, '2023-10-18 05:01:12', 0, '2023-10-18 10:31:12', b'0000000000'),
(11, 'Gullu', 'vishal.kattera28@gmail.com', '9100258573', ' asdsd297321', 'admin', 'jviygkh as12313', 'ragnarlothbruk', 0, '2023-10-18 05:02:39', 0, '2023-10-18 10:32:39', b'0000000000'),
(12, 'Pradip', 'pradip.glansa@gmail.com', '8668275307', ' India', 'admin', 'pradip@25', 'pradip@25', 0, '2023-10-21 05:27:40', 0, '2023-10-21 10:57:40', b'0000000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `affiliates`
--
ALTER TABLE `affiliates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `careersapplications`
--
ALTER TABLE `careersapplications`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companyusers`
--
ALTER TABLE `companyusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `corporategovernance`
--
ALTER TABLE `corporategovernance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topicID` (`topicID`),
  ADD KEY `subTopicId` (`subTopicId`);

--
-- Indexes for table `coursescontent`
--
ALTER TABLE `coursescontent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `freeresources`
--
ALTER TABLE `freeresources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribedcourses`
--
ALTER TABLE `subscribedcourses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions_1`
--
ALTER TABLE `subscriptions_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subtopics`
--
ALTER TABLE `subtopics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topicId` (`topicId`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `affiliates`
--
ALTER TABLE `affiliates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `careersapplications`
--
ALTER TABLE `careersapplications`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companyusers`
--
ALTER TABLE `companyusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `corporategovernance`
--
ALTER TABLE `corporategovernance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `coursescontent`
--
ALTER TABLE `coursescontent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `freeresources`
--
ALTER TABLE `freeresources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribedcourses`
--
ALTER TABLE `subscribedcourses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions_1`
--
ALTER TABLE `subscriptions_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subtopics`
--
ALTER TABLE `subtopics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
