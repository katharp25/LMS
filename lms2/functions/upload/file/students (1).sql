-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2023 at 11:33 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

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
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DOB` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `country` varchar(1000) NOT NULL,
  `address` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `district` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `state` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pincode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gender` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phoneNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `idProof` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `idProofDetails` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `activationcode` varchar(1000) NOT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `modifiedBy` int(11) DEFAULT NULL,
  `modifiedOn` datetime DEFAULT NULL,
  `isActive` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `DOB`, `country`, `address`, `district`, `state`, `pincode`, `gender`, `phoneNumber`, `email`, `idProof`, `idProofDetails`, `activationcode`, `createdBy`, `createdOn`, `modifiedBy`, `modifiedOn`, `isActive`) VALUES
(1, 'vishal', '2023-07-01', '101', NULL, 'Hyderabad', '36', '500001', 'male', '7780290335', 'vishal@glansa.in', 'Aadhar Card', '684687136786', '931f679e036d395c132ce4326cec81b1', NULL, '2023-11-14 06:47:20', NULL, NULL, b'0'),
(2, 'vishal', '1998-10-09', '101', NULL, 'Hyderabad', '36', '500001', 'male', '7780290335', 'vishal@glansa.in', 'Aadhar Card', '658565856585', 'kMWyCFuZwYVXIJG5', NULL, '2023-11-14 07:10:58', NULL, NULL, b'0'),
(3, 'vishal', '1998-10-09', '101', NULL, 'hyder', '36', '', 'male', '7780290335', 'vishal@glansa.in', 'Aadhar Card', '', 'w3D6bUOPucdiTHeG', NULL, '2023-11-14 07:14:10', NULL, NULL, b'0'),
(4, 'vishal', '2023-10-09', '101', NULL, 'Hyderabad', '36', '500001', 'male', '7780290335', 'vishal@glansa.in', 'Aadhar Card', '656565656565', 'jUiVhDOgtyGmQNcb', NULL, '2023-11-14 07:18:00', NULL, NULL, b'0'),
(5, 'vishal', '2023-08-07', '101', NULL, 'Hyderabad', '36', '500001', 'male', '7780290335', 'vishal@glansa.in', 'Aadhar Card', '56565856856', 'kCi5Iyn9TLro1DtU', NULL, '2023-11-14 07:45:23', NULL, NULL, b'0'),
(6, 'vishal', '1998-10-09', '101', NULL, 'Hyderabad', '36', '500001', 'male', '7780290335', 'vishal@glansa.in', 'Aadhar Card', '656565656565', 'Xzh6zP9f8ypJbUwY', NULL, '2023-11-14 07:46:26', NULL, NULL, b'0'),
(7, 'vishal', '2023-10-09', '101', NULL, 'Hyderabad', '36', '500001', 'male', '7780290335', 'vishal@glansa.in', 'Aadhar Card', '656565656565', 'R2Lz71BUlHjX6E8G', NULL, '2023-11-14 07:50:35', NULL, NULL, b'0'),
(8, 'Soumya', '2001-02-07', '101', NULL, 'hyderabad', '36', '500001', 'male', '7780290335', 'soumya@glansa.in', 'Aadhar Card', '6565656565', '9m5UZG6XiVKodqkw', NULL, '2023-11-14 07:55:28', NULL, NULL, b'0'),
(9, 'Soumya', '2001-02-07', '101', NULL, 'hyderabad', '36', '500001', 'male', '7780290335', 'soumya@glansa.in', 'Aadhar Card', '6565656565', 'HYIoir3BSKZtG76s', NULL, '2023-11-14 07:56:06', NULL, NULL, b'0'),
(10, 'Soumya', '2000-02-01', '101', NULL, 'hyderabad', '36', '500001', 'male', '8519998738', 'soumya@glansa.in', 'Aadhar Card', '6565656565', '8MWmEj02BX5baVzr', NULL, '2023-11-14 07:57:18', NULL, NULL, b'0'),
(11, 'Soumya', '2000-02-01', '101', NULL, 'hyderabad', '36', '500001', 'male', '8519998738', 'soumya@glansa.in', 'Aadhar Card', '6565656565', '4SKLpasXMmzJEeNV', NULL, '2023-11-14 08:05:45', NULL, NULL, b'0'),
(12, 'Soumya', '2000-02-01', '101', NULL, 'hyderabad', '36', '500001', 'male', '8519998738', 'soumya@glansa.in', 'Aadhar Card', '6565656565', 'qWoX0SAINfkLvrm1', NULL, '2023-11-14 08:27:38', NULL, NULL, b'0'),
(13, 'Soumya', '2000-02-01', '101', NULL, 'hyderabad', '36', '500001', 'male', '7780290335', 'soumya@glansa.in', 'Aadhar Card', '6565656565', 'rJkOuBEqgvlSfp6I', NULL, '2023-11-14 08:29:30', NULL, NULL, b'0'),
(14, 'Soumya', '2000-02-01', '101', NULL, 'hyderabad', '36', '500001', 'male', '7780290335', 'soumya@glansa.in', 'Aadhar Card', '6565656565', 'FGcYyfZQljnIdLOa', NULL, '2023-11-14 08:38:59', NULL, NULL, b'0'),
(15, 'Soumya', '2000-02-01', '101', NULL, 'hyderabad', '', '500001', 'male', '7780290335', 'soumya@glansa.in', 'Aadhar Card', '6565656565', 'yX3KY16ZBwlFv7im', NULL, '2023-11-14 08:39:29', NULL, NULL, b'0'),
(16, 'Soumya', '2000-02-01', '101', NULL, 'hyderabad', '-1', '500001', 'male', '7780290335', 'soumya@glansa.in', 'Aadhar Card', '6565656565', '1Lceaputb4zV3Ogy', NULL, '2023-11-14 08:40:24', NULL, NULL, b'0'),
(17, 'Soumya', '2000-02-01', '101', NULL, 'hyderabad', '-1', '500001', 'male', '7780290335', 'soumya@glansa.in', 'Aadhar Card', '6565656565', '4UkubLEOfzPCNeJq', NULL, '2023-11-14 08:40:52', NULL, NULL, b'0'),
(18, 'soumya', '2000-01-01', '101', NULL, 'hyderabad', '36', '500001', 'male', '7780290335', 'vishal@glansa.in', 'Aadhar Card', '65656565656', 'm8nj2hRG5gUzNDBi', NULL, '2023-11-14 08:41:52', NULL, NULL, b'0'),
(19, 'vishal', '1998-10-09', '101', NULL, 'Hyderabad', '36', '500001', 'male', '7780290335', 'vishal@glansa.in', 'Aadhar Card', '656565656565', 'nIzU6fXHF70zlVgd', NULL, '2023-11-14 09:38:33', NULL, NULL, b'0'),
(20, 'vishal', '1998-10-09', '101', NULL, 'Hyderabad', '', '500001', 'male', '7780290335', 'vishal@glansa.in', 'Aadhar Card', '656565656565', '1qwKyQTzZ37WSbY8', NULL, '2023-11-14 09:39:11', NULL, NULL, b'0'),
(21, 'Soumya', '2023-02-01', '101', NULL, 'Hyderabad', '36', '500001', 'male', '7780290335', 'soumya@glansa.in', 'Aadhar Card', '6565656565', 'ehrj4WKZVLTb2RBQ', NULL, '2023-11-14 10:39:56', NULL, NULL, b'0'),
(22, 'vishal', '1998-10-09', '101', NULL, 'Hyderabad', '36', '500001', 'male', '7780290335', 'vishal@glansa.in', 'Aadhar Card', '656565656565', 'INCJShO0gQ5zPrBy', NULL, '2023-11-14 10:42:01', NULL, NULL, b'0'),
(23, 'vishal', '2000-12-02', '101', NULL, 'Hyderabad', '36', '500001', 'male', '7780290335', 'vishal@glansa.in', 'Aadhar Card', '65656565', 'CRBnvDr9qjh76Fu3', NULL, '2023-11-14 10:47:01', NULL, NULL, b'0'),
(24, 'vishal', '2023-10-09', '100', NULL, 'Hyderabad', '1657', '500001', 'male', '7780290335', 'vishal@glansa.in', 'Aadhar Card', '6565656565', 'QNnaRcgWrimtBzHl', NULL, '2023-11-14 11:13:50', NULL, NULL, b'0'),
(25, 'Renuka', '2000-03-19', '101', NULL, 'Hyderabad', '36', '500001', 'female', '7993169534', 'renuka@glansa.in', 'Aadhar Card', '6565656565', 'f1PvzcU5Eth30Hn2', NULL, '2023-11-14 11:21:13', NULL, NULL, b'0'),
(26, 'Vishal', '1998-10-09', '101', NULL, 'Hyderabad', '36', '500001', 'male', '7780290335', 'vishal@glansa.in', 'Aadhar Card', '65656565', 'mpSwXgBDLvM9Gq34', NULL, '2023-11-14 11:23:41', NULL, NULL, b'0'),
(27, 'Anita', '1998-10-09', '101', NULL, 'Hyderabad', '36', '500001', 'female', '7780290335', 'anita@glansa.in', 'Aadhar Card', '656565656565', 'PGc3tKhwE1JfqagV', NULL, '2023-11-14 11:26:29', NULL, NULL, b'0'),
(28, 'Soumya', '1998-02-01', '101', NULL, 'Hyderabad', '36', '500001', 'male', '7780290335', 'soumya@glansa.in', 'Aadhar Card', '656565656565', 'Rj13hBeLaKCMAPnr', NULL, '2023-11-14 11:29:17', NULL, NULL, b'0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
