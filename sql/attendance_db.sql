-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2024 at 03:25 AM
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
-- Database: `attendance_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_details`
--

CREATE TABLE `attendance_details` (
  `faculty_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `on_date` date NOT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_details`
--

INSERT INTO `attendance_details` (`faculty_id`, `course_id`, `session_id`, `student_id`, `on_date`, `status`) VALUES
(1, 1, 2, 2, '2024-05-27', 'YES'),
(1, 1, 2, 2, '2024-05-30', 'NO'),
(1, 1, 2, 2, '2024-05-31', 'NO'),
(1, 1, 2, 3, '2024-05-27', 'YES'),
(1, 1, 2, 3, '2024-05-30', 'NO'),
(1, 1, 2, 3, '2024-05-31', 'NO'),
(1, 1, 2, 4, '2024-05-27', 'YES'),
(1, 1, 2, 4, '2024-05-30', 'NO'),
(1, 1, 2, 4, '2024-05-31', 'NO'),
(1, 1, 2, 5, '2024-05-27', 'YES'),
(1, 1, 2, 5, '2024-05-30', 'NO'),
(1, 1, 2, 5, '2024-05-31', 'NO'),
(1, 1, 2, 6, '2024-05-27', 'YES'),
(1, 1, 2, 6, '2024-05-31', 'NO'),
(1, 1, 2, 7, '2024-05-27', 'YES'),
(1, 1, 2, 7, '2024-05-31', 'NO'),
(1, 1, 2, 8, '2024-05-31', 'NO'),
(1, 1, 2, 10, '2024-05-31', 'NO'),
(1, 1, 2, 11, '2024-05-29', 'NO'),
(1, 1, 2, 11, '2024-05-30', 'NO'),
(1, 1, 2, 11, '2024-05-31', 'NO'),
(1, 1, 2, 13, '2024-05-30', 'NO'),
(1, 1, 2, 13, '2024-05-31', 'NO'),
(1, 1, 2, 14, '2024-05-30', 'NO'),
(1, 1, 2, 14, '2024-05-31', 'NO'),
(1, 1, 2, 15, '2024-05-30', 'NO'),
(1, 1, 2, 15, '2024-05-31', 'NO'),
(1, 2, 2, 1, '2024-05-29', 'NO'),
(1, 4, 1, 5, '2024-05-27', 'YES'),
(1, 4, 1, 6, '2024-05-27', 'YES'),
(1, 4, 1, 7, '2024-05-27', 'YES'),
(1, 4, 1, 8, '2024-05-27', 'YES'),
(1, 4, 1, 9, '2024-05-27', 'YES'),
(1, 4, 1, 10, '2024-05-27', 'YES'),
(1, 4, 1, 15, '2024-05-27', 'YES'),
(1, 7, 1, 4, '2024-05-29', 'NO'),
(1, 8, 1, 1, '2024-05-27', 'YES'),
(1, 8, 1, 3, '2024-05-27', 'YES'),
(1, 8, 1, 4, '2024-05-27', 'YES'),
(1, 8, 1, 5, '2024-05-27', 'YES'),
(1, 8, 1, 6, '2024-05-27', 'YES'),
(1, 8, 1, 7, '2024-05-27', 'YES'),
(1, 8, 1, 12, '2024-05-27', 'YES'),
(1, 8, 1, 13, '2024-05-27', 'YES'),
(2, 4, 2, 5, '2024-05-29', 'NO'),
(2, 8, 2, 15, '2024-05-29', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `course_allotment`
--

CREATE TABLE `course_allotment` (
  `faculty_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_allotment`
--

INSERT INTO `course_allotment` (`faculty_id`, `course_id`, `session_id`) VALUES
(1, 1, 2),
(1, 2, 2),
(1, 4, 1),
(1, 6, 2),
(1, 7, 1),
(1, 8, 1),
(2, 3, 1),
(2, 4, 1),
(2, 4, 2),
(2, 6, 1),
(2, 8, 1),
(2, 8, 2),
(3, 2, 1),
(3, 3, 1),
(3, 4, 1),
(3, 4, 2),
(3, 5, 2),
(3, 7, 2),
(4, 4, 2),
(4, 6, 1),
(4, 6, 2),
(4, 7, 1),
(4, 7, 2),
(4, 8, 1),
(4, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `course_details`
--

CREATE TABLE `course_details` (
  `id` int(11) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_details`
--

INSERT INTO `course_details` (`id`, `code`, `title`, `credit`) VALUES
(1, 'CMSC126', 'Web-based System Development', 3),
(2, 'STAT1', 'Elementary Statistics', 3),
(3, 'CMSC18', 'Computer Programming I', 3),
(4, 'CMSC56', 'Discrete Mathematical Structures in Computer Scien', 3),
(5, 'CMSC57', 'Discrete Mathematical Structures in Computer Scien', 3),
(6, 'CMSC28', 'Computer Programming II', 3),
(7, 'MATH26', 'Analytic Geometry and Calculus I', 3),
(8, 'CMSC130', 'Logic Design and Digital Computer Circuits', 3);

-- --------------------------------------------------------

--
-- Table structure for table `course_registration`
--

CREATE TABLE `course_registration` (
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_registration`
--

INSERT INTO `course_registration` (`student_id`, `course_id`, `session_id`) VALUES
(1, 1, 1),
(1, 2, 2),
(1, 3, 2),
(1, 4, 2),
(1, 5, 1),
(1, 5, 2),
(1, 6, 1),
(1, 7, 2),
(1, 8, 1),
(1, 8, 2),
(2, 1, 1),
(2, 1, 2),
(2, 2, 2),
(2, 3, 1),
(2, 4, 2),
(2, 6, 1),
(2, 6, 2),
(3, 1, 2),
(3, 3, 1),
(3, 3, 2),
(3, 5, 1),
(3, 5, 2),
(3, 6, 1),
(3, 6, 2),
(3, 8, 1),
(4, 1, 1),
(4, 1, 2),
(4, 2, 2),
(4, 3, 2),
(4, 4, 2),
(4, 5, 2),
(4, 6, 1),
(4, 7, 1),
(4, 7, 2),
(4, 8, 1),
(5, 1, 2),
(5, 2, 1),
(5, 2, 2),
(5, 4, 1),
(5, 4, 2),
(5, 5, 1),
(5, 6, 1),
(5, 8, 1),
(5, 8, 2),
(6, 1, 1),
(6, 1, 2),
(6, 3, 2),
(6, 4, 1),
(6, 5, 2),
(6, 6, 1),
(6, 6, 2),
(6, 7, 1),
(6, 8, 1),
(6, 8, 2),
(7, 1, 2),
(7, 2, 1),
(7, 2, 2),
(7, 3, 1),
(7, 4, 1),
(7, 4, 2),
(7, 5, 1),
(7, 7, 2),
(7, 8, 1),
(8, 1, 2),
(8, 2, 1),
(8, 2, 2),
(8, 3, 1),
(8, 4, 1),
(8, 5, 1),
(8, 5, 2),
(8, 7, 2),
(8, 8, 2),
(9, 2, 1),
(9, 3, 1),
(9, 4, 1),
(9, 4, 2),
(9, 5, 2),
(9, 7, 1),
(9, 7, 2),
(9, 8, 2),
(10, 1, 1),
(10, 1, 2),
(10, 2, 1),
(10, 3, 1),
(10, 3, 2),
(10, 4, 1),
(10, 4, 2),
(10, 5, 2),
(10, 6, 1),
(10, 7, 2),
(10, 8, 2),
(11, 1, 2),
(11, 2, 1),
(11, 3, 1),
(11, 5, 2),
(11, 6, 1),
(11, 6, 2),
(11, 8, 2),
(12, 1, 1),
(12, 2, 1),
(12, 2, 2),
(12, 3, 1),
(12, 4, 2),
(12, 5, 1),
(12, 6, 2),
(12, 8, 1),
(12, 8, 2),
(13, 1, 1),
(13, 1, 2),
(13, 2, 1),
(13, 2, 2),
(13, 3, 2),
(13, 5, 1),
(13, 5, 2),
(13, 7, 1),
(13, 8, 1),
(14, 1, 1),
(14, 1, 2),
(14, 2, 1),
(14, 2, 2),
(14, 3, 2),
(14, 5, 1),
(14, 6, 1),
(14, 8, 1),
(14, 8, 2),
(15, 1, 1),
(15, 1, 2),
(15, 2, 1),
(15, 2, 2),
(15, 3, 1),
(15, 3, 2),
(15, 4, 1),
(15, 4, 2),
(15, 5, 1),
(15, 5, 2),
(15, 6, 1),
(15, 6, 2),
(15, 7, 1),
(15, 7, 2),
(15, 8, 1),
(15, 8, 2),
(17, 1, 1),
(18, 7, 1),
(20, 8, 2),
(21, 8, 2),
(22, 1, 2),
(23, 1, 2),
(25, 1, 2),
(26, 1, 2),
(32, 1, 2),
(33, 1, 2),
(34, 1, 2),
(35, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_details`
--

CREATE TABLE `faculty_details` (
  `id` int(11) NOT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_details`
--

INSERT INTO `faculty_details` (`id`, `user_name`, `name`, `password`) VALUES
(1, 'vbcalag', 'Vicente Calag', '12345'),
(2, 'jmcatane', 'Jose Ricardo Catane', '12345'),
(3, 'amsatina', 'Armacheska Satina', '12345'),
(4, 'hllimpag', 'Hannah Mae Limpag', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `session_details`
--

CREATE TABLE `session_details` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `term` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session_details`
--

INSERT INTO `session_details` (`id`, `year`, `term`) VALUES
(1, 2023, 'FIRST SEMESTER'),
(2, 2024, 'SECOND SEMESTER');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `id` int(11) NOT NULL,
  `roll_no` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`id`, `roll_no`, `name`) VALUES
(1, '2023-09123', 'Mark Cenat'),
(2, '2023-01127', 'Carl Raymund Suello'),
(3, '2023-19153', 'Rommel Rutherford Yong'),
(4, '2023-41639', 'Lance Andrei Recla'),
(5, '2023-89823', 'Mark Jaily Pena'),
(6, '2023-21223', 'Reigh Sean Veras'),
(7, '2023-01520', 'Errol James Minguez'),
(8, '2023-18121', 'Yldevier John Magpusao'),
(9, '2023-69323', 'Maxwell Gazo'),
(10, '2023-99113', 'Gabriel Duhaylungsod'),
(11, '2023-09233', 'Justine Veloso'),
(12, '2023-81423', 'Aaron Gamad'),
(13, '2023-00223', 'John Andrei Manalo'),
(14, '2023-99183', 'Deniel Dave Natividad'),
(15, '2023-11029', 'Dagohoy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_details`
--
ALTER TABLE `attendance_details`
  ADD PRIMARY KEY (`faculty_id`,`course_id`,`session_id`,`student_id`,`on_date`);

--
-- Indexes for table `course_allotment`
--
ALTER TABLE `course_allotment`
  ADD PRIMARY KEY (`faculty_id`,`course_id`,`session_id`);

--
-- Indexes for table `course_details`
--
ALTER TABLE `course_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `course_registration`
--
ALTER TABLE `course_registration`
  ADD PRIMARY KEY (`student_id`,`course_id`,`session_id`);

--
-- Indexes for table `faculty_details`
--
ALTER TABLE `faculty_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `session_details`
--
ALTER TABLE `session_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `year` (`year`,`term`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roll_no` (`roll_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_details`
--
ALTER TABLE `course_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `faculty_details`
--
ALTER TABLE `faculty_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `session_details`
--
ALTER TABLE `session_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
