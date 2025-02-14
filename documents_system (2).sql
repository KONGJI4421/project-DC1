-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 14, 2025 at 03:33 AM
-- Server version: 8.0.35
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `documents_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int NOT NULL,
  `dept_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `dept_description` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int NOT NULL,
  `sender_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `upload_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `document_content` text COLLATE utf8mb4_general_ci,
  `deadline` datetime DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `approval_status` enum('pending','approved','rejected') COLLATE utf8mb4_general_ci DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `sender_name`, `file_name`, `department`, `upload_date`, `document_content`, `deadline`, `isActive`, `approval_status`) VALUES
(24, 'กิตติศักดิ์ พุ่มต่อ', '66710357-week10.pdf', 'ฝ่ายไอที', '2024-11-17 10:28:22', 'งาน', '2024-11-17 17:28:00', 1, 'pending'),
(25, 'ก้อง', '66710357-week10.pdf', 'PD1', '2024-11-17 11:01:01', 'ทดลอง', '2024-11-18 18:00:00', 1, 'pending'),
(26, 'kong', '66710357-week10.pdf', 'PD2', '2024-11-17 11:35:30', 'งงงงงงงง', '2024-11-19 18:35:00', 1, 'approved'),
(27, 'adsasd', '66714453 ฐิติภรณ์ ฐานเจริญ.pdf', 'ฝ่ายไอที', '2024-11-18 08:17:46', 'adsadsads', '2024-11-02 15:17:00', 1, 'pending'),
(28, 'weq', '66701858 (1) (1).pdf', 'ฝ่ายไอที', '2024-11-18 08:24:45', 'eqw', '2024-11-18 17:24:00', 1, 'pending'),
(31, '2', 'Edugether Examination - แบบทดสอบ212.pdf', 'ช่าง', '2024-11-18 09:31:55', 'test', '2024-11-30 16:31:00', 1, 'pending'),
(32, '2', 'Edugether Examination - แบบทดสอบ212.pdf', 'PD1', '2024-11-18 09:33:18', 'tt', '2024-11-30 16:32:00', 1, 'pending'),
(33, '2', '66701858 (1) (1).pdf', 'PD1', '2024-11-18 10:10:35', 'asdadsasdads', '2024-11-16 17:10:00', 0, 'pending'),
(34, '2', '66701858 (1).pdf', 'ช่าง', '2024-11-18 10:10:46', 'asdasdasdasd', '2024-11-20 17:10:00', 0, 'pending'),
(35, '2', '66701858 (1) (1).pdf', 'ฝ่ายไอที', '2024-11-18 10:34:47', 'asd', '2024-11-11 17:34:00', 0, 'pending'),
(38, '3', 'การบ้านชิ้นที่ 2_compressed.pdf', 'PD2', '2024-11-19 14:44:00', 'hbcskjbf', '2024-11-20 21:43:00', 1, 'approved'),
(39, '2', '66710357.pdf', 'PD2', '2024-11-20 19:12:15', 'asassas', '2024-11-21 02:12:00', 1, 'approved'),
(69, '1', 'COOP.01-ICT66-กิตติศักดิ์.pdf', 'ฝ่ายบัญชี', '2025-02-11 23:51:25', 'เทสสสส', '2025-01-22 09:14:00', 1, 'approved'),
(70, '1', 'COOP.01-ICT66-กิตติศักดิ์.pdf', 'ฝ่ายบัญชี', '2025-02-11 23:51:25', 'เทสสสส', '2025-01-22 09:14:00', 1, 'rejected'),
(71, '2', 'coop-08.pdf', 'PD1', '2025-02-12 00:06:44', 'sjjwd', '2025-01-27 16:09:00', 1, 'rejected'),
(73, '2', 'coop-08.pdf', 'ฝ่ายไอที', '2025-02-12 00:06:44', 'เทสล่าสุด', '2025-01-27 16:02:00', 1, 'rejected'),
(75, '1', '66701858.pdf', 'PD1', '2025-02-03 08:56:00', 'เทส.', '2025-02-03 15:55:00', 1, 'approved'),
(76, '3', 'ICT310-02.pdf', 'ฝ่ายไอที', '2025-02-05 02:54:42', 'เทส01', '2025-02-05 09:49:00', 1, 'rejected'),
(77, '4', 'ICT310-02.pdf', 'ฝ่ายไอที', '2025-02-05 02:55:29', 'เทส01', '2025-02-05 09:55:00', 1, 'approved'),
(79, '1', 'coop-08.pdf', 'ฝ่ายบัญชี', '2025-02-13 02:01:13', 'ลองเทสระบบ', '2025-02-13 16:01:00', 1, 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ชื่อ',
  `last_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'นามสกุล',
  `user_address` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_phone` int DEFAULT NULL,
  `dept_id` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_roles` enum('user','manager','admin','') COLLATE utf8mb4_general_ci NOT NULL COMMENT 'สิทธิ์',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `user_address`, `user_phone`, `dept_id`, `username`, `password`, `email`, `user_roles`, `created_at`, `is_active`) VALUES
(1, 'กิตติศักดิ์', 'พุ่มต่อ', NULL, NULL, 0, 'adminkong', '$2y$10$cYwAqYIKWCCVcK4UwI3y1u2tCl4fTOheR3XHc6OBcdr.Zo./Zb3me', '', 'manager', '2024-11-11 04:39:08', 1),
(2, 'อนุวัติ', 'จำกัด', NULL, NULL, 0, 'purchasing', '$2y$10$cYwAqYIKWCCVcK4UwI3y1u2tCl4fTOheR3XHc6OBcdr.Zo./Zb3me', '', 'user', '2024-11-11 04:39:08', 1),
(3, 'จบที่เรา', 'เบาที่สุด', NULL, NULL, 0, 'test2', '$2y$10$cYwAqYIKWCCVcK4UwI3y1u2tCl4fTOheR3XHc6OBcdr.Zo./Zb3me', '', 'user', '2024-11-11 04:39:08', 1),
(4, 'วิทยา', 'อภิปรัชญาชล', NULL, NULL, 0, 'test3', '$2y$10$cYwAqYIKWCCVcK4UwI3y1u2tCl4fTOheR3XHc6OBcdr.Zo./Zb3me', '', 'user', '2024-11-11 04:39:08', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
