-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 09, 2021 at 10:14 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `object_oriented`
--

-- --------------------------------------------------------

--
-- Table structure for table `Courses_Ref`
--

CREATE TABLE `Courses_Ref` (
  `course` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Courses_Ref`
--

INSERT INTO `Courses_Ref` (`course`) VALUES
('BET-COET'),
('BET-ESET'),
('BET-MT'),
('BET-PPT'),
('BSCE'),
('BSEE'),
('BSIE'),
('BSME'),
('BTTE');

-- --------------------------------------------------------

--
-- Table structure for table `Gender_Ref`
--

CREATE TABLE `Gender_Ref` (
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Gender_Ref`
--

INSERT INTO `Gender_Ref` (`gender`) VALUES
('Female'),
('Male');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(20) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `birtdate` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `course` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `first_name`, `middle_name`, `last_name`, `birtdate`, `gender`, `course`) VALUES
(16, 'fname', 'mname', 'lname', '2013-06-05', 'Female', 'BET-COET'),
(17, 'fname', 'mname', 'lname', '2001-10-30', 'Female', 'BET-COET'),
(18, 'fname', 'mname', 'lname', '2001-10-31', 'Female', 'BET-COET'),
(19, 'fname', 'mname', 'lname', '2000-04-15', 'Female', 'BET-COET'),
(20, 'fname', 'mname', 'lname', '1999-04-05', 'Female', 'BET-COET'),
(21, 'fname', 'mname', 'lname', '1999-07-12', 'Female', 'BET-COET'),
(22, 'fname', 'mname', 'lname', '1999-07-21', 'Female', 'BET-COET'),
(23, 'fname', 'mname', 'lname', '1004-07-12', 'Female', 'BET-COET'),
(24, 'fnames', 'mname', 'lname', '2001-12-12', 'Female', 'BET-COET'),
(25, 'yonoda', 'mname', 'lname', '1001-09-21', 'Female', 'BET-COET'),
(27, 'leif', 'vill', 'gio', '2000-12-12', 'Female', 'BET-COET'),
(28, 'fname', 'mname', 'lname', '1445-02-14', 'Female', 'BET-COET'),
(29, 'fname', 'mname', 'lname', '1445-02-14', 'Female', 'BET-COET'),
(30, 'fname', 'mname', 'lname', '1445-02-14', 'Female', 'BET-COET'),
(31, 'fname', 'mname', 'lname', '1445-02-14', 'Female', 'BET-COET'),
(32, 'fname', 'mname', 'lname', '1445-02-14', 'Female', 'BET-COET'),
(33, 'fname', 'mname', 'lname', '1999-04-05', 'Female', 'BET-COET');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Courses_Ref`
--
ALTER TABLE `Courses_Ref`
  ADD PRIMARY KEY (`course`);

--
-- Indexes for table `Gender_Ref`
--
ALTER TABLE `Gender_Ref`
  ADD PRIMARY KEY (`gender`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gender` (`gender`),
  ADD KEY `course` (`course`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`gender`) REFERENCES `Gender_Ref` (`gender`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`course`) REFERENCES `Courses_Ref` (`course`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
