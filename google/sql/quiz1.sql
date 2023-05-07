-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2023 at 07:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`, `email`, `phone`) VALUES
(1, 'shivam', '123', 'shivam@gmail.com', 123),
(2, 'admin', '123', 'admin@gmail.com', 1325435),
(3, 'jass', '123', 'ijaspreetsiingh@gmail.com', 2147483647),
(4, 'mohit', '123', 'mohit@gmail.com', 2147483647),
(5, 'nn', '123', 'fff@gmail.com', 123),
(6, 'jassddd', '123', 'ee@gmail.com', 123),
(7, 'nn', '123', 'fff@gmail.com', 123),
(8, 'j', '123', 'ee@gmail.com', 111);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `question_number` int(255) NOT NULL,
  `is_correct` tinyint(11) NOT NULL DEFAULT 0,
  `coption` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_number`, `is_correct`, `coption`) VALUES
(28, 1, 0, 'HyperText                       '),
(29, 1, 1, 'HyperText markup language                       '),
(30, 1, 0, 'India    '),
(31, 1, 0, 'All of the ABOVE            '),
(32, 2, 0, 'COMPUTER SCIENCE              '),
(33, 2, 1, 'COMPUTER SCIENCE ENGINEERING              '),
(34, 2, 0, 'COMPUTER Eng.              '),
(35, 2, 0, 'option 2 '),
(36, 3, 0, '35     '),
(37, 3, 0, '43     '),
(38, 3, 1, '3     '),
(39, 3, 0, 'all of these '),
(40, 4, 0, '    Open Space Interconnection  '),
(41, 4, 1, '    Open System Interconnection  '),
(42, 4, 0, '    Operation System Internet  '),
(43, 4, 0, 'option 2 '),
(44, 5, 0, 'Elon Musk            '),
(45, 5, 1, 'Jassi          '),
(46, 5, 0, 'mohit  '),
(47, 5, 0, 'you   '),
(69, 7, 1, 'redme'),
(70, 7, 0, 'one plus'),
(71, 7, 0, 'iphone'),
(72, 7, 0, 'motorola'),
(81, 8, 1, 'Good Boy '),
(82, 8, 0, 'Cool Boy '),
(83, 8, 0, 'All of these '),
(84, 8, 0, 'none of THESE '),
(85, 6, 1, 'Delhi  '),
(86, 6, 0, 'Hariyana  '),
(87, 6, 0, 'Punjab  '),
(88, 6, 0, 'none of these '),
(89, 9, 0, 'GOOD    '),
(90, 9, 1, 'VERY GOOD    '),
(91, 9, 0, 'NOT GOOD    '),
(92, 9, 0, 'no ');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_number` int(255) NOT NULL,
  `question_text` varchar(255) NOT NULL,
  `id` int(255) NOT NULL,
  `sub` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_number`, `question_text`, `id`, `sub`) VALUES
(1, 'What is the full form of Html ', 1, 'hindi'),
(2, 'what is CSE?              ', 2, 'hindi'),
(3, ' What is the port number of PoP?    ', 3, 'hindi'),
(4, 'The full form of OSI is?  ', 4, 'english'),
(5, 'Who is Jaspreet Singh    ', 5, 'english'),
(7, 'Which smartphone do you have?', 6, 'gk'),
(8, 'Who is Jaspreet Singh ?', 12, 'gk'),
(6, 'In which Location Jaspreet Live?  ', 13, 'english'),
(9, 'HOW ARE YOU BRO?    ', 14, 'gk');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `role`, `sc`, `total`, `date`) VALUES
(63, 'jassi', '123', '1', '9', '0000-00-00'),
(65, 'jassi', '123', '1', '9', '0000-00-00'),
(66, 'jassi', '123', '', '9', '0000-00-00'),
(68, 'jassi', '123', '1', '9', '0000-00-00'),
(69, 'jassi', '123', '', '9', '0000-00-00'),
(70, 'jassi', '123', '1', '9', '0000-00-00'),
(73, 'jassi', '123', '', '9', '0000-00-00'),
(74, 'jassi', '123', '', '9', '0000-00-00'),
(82, 'jassi', '123', '', '9', '0000-00-00'),
(83, 'jassi', '123', '1', '9', '0000-00-00');

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
-- Indexes for table `questions`
--
ALTER TABLE `questions`
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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
