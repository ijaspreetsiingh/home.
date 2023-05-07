-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2023 at 11:18 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`, `email`, `phone`) VALUES
(1, 'shivam', '123', 'shivam@gmail.com', 123),
(2, 'nkk', '123', 'nk@gmail.com', 1325435);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `question_number` int(255) NOT NULL,
  `is_correct` tinyint(11) NOT NULL DEFAULT 0,
  `coption` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_number`, `is_correct`, `coption`) VALUES
(28, 1, 0, '                 h7 '),
(29, 1, 1, '                 h7 '),
(30, 1, 0, '                 h7 '),
(31, 1, 0, '                 h7 '),
(32, 2, 0, '         4   name  '),
(33, 2, 1, '         4   name  '),
(34, 2, 0, '         4   name  '),
(35, 2, 0, '         4   name  '),
(36, 3, 0, '         4   name  '),
(37, 3, 0, '         4   name  '),
(38, 3, 1, '         4   name  '),
(39, 3, 0, '         4   name  '),
(40, 4, 0, '         4   name  '),
(41, 4, 1, '         4   name  '),
(42, 4, 0, '         4   name  '),
(43, 4, 0, '         4   name  '),
(44, 5, 0, '         4   name  '),
(45, 5, 1, '         4   name  '),
(46, 5, 0, '         4   name  '),
(47, 5, 0, '         4   name  '),
(48, 6, 1, '         4   name  '),
(49, 6, 0, '         4   name  '),
(50, 6, 0, '         4   name  '),
(51, 6, 0, '         4   name  ');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_number` int(255) NOT NULL,
  `question_text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_number`, `question_text`) VALUES
(1, 'What is the full form of html ?                       '),
(2, 'CSE?   '),
(3, ' What is the port number of PoP?'),
(4, 'The full form of OSI is?'),
(5, 'Who hacked Google?'),
(6, 'Full form of NS?');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `sc` text NOT NULL,
  `total` varchar(255) NOT NULL,
  `date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `role`, `sc`, `total`, `date`) VALUES
(1, 'aa', '', '0000-00-00', '', '0000-00-00'),
(2, 'jass', '121', '0000-00-00', '', '0000-00-00'),
(3, 'jass', '121', '', '', '0000-00-00'),
(4, 'jass', '121', '', '', '0000-00-00'),
(5, 'jass', '121', '', '', '0000-00-00'),
(6, 'jass', '121', '', '', '0000-00-00'),
(7, 'jass', '121', '', '', '0000-00-00'),
(8, 'jass', '121', '', '', '0000-00-00'),
(9, 'jass', '121', '', '', '0000-00-00'),
(10, 'jass', '121', '', '', '0000-00-00'),
(11, 'mohit', '154', '', '', '0000-00-00'),
(12, 'mohit', '154', '1', '', '0000-00-00'),
(13, 'mohit', '154', '0', '', '0000-00-00'),
(14, 'mohit', '154', '0', '', '0000-00-00'),
(15, 'mohit', '154', '', '', '0000-00-00'),
(16, 'mohit', '154', '0', '6', '0000-00-00'),
(17, 'mohit', '154', '', '6', '0000-00-00'),
(18, 'mohit', '154', '0', '6', '0000-00-00'),
(19, 'nk', '11', '0', '6', '0000-00-00'),
(20, 'sh', '342', '0', '6', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
