-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2024 at 09:51 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brain`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `student ID` int(5) NOT NULL,
  `student name` varchar(40) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `Mathametics` tinyint(1) NOT NULL,
  `English` tinyint(1) NOT NULL,
  `Science` tinyint(1) NOT NULL,
  `I.C.T` tinyint(1) NOT NULL,
  `Contact` int(10) NOT NULL,
  `Address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`student ID`, `student name`, `Email`, `grade`, `Mathametics`, `English`, `Science`, `I.C.T`, `Contact`, `Address`) VALUES
(15, 'Jeny maren', 'jeni@gmail.com', '10 grade', 1, 1, 1, 1, 896756890, 'Colombo'),
(40, 'Vishaka sewmini', 'vishaka@gmail.com', '10 grade', 1, 1, 0, 1, 765890456, 'Nittabuwa'),
(44, 'Marry Sanel', 'mary@gmail.com', '10 grade', 1, 0, 0, 1, 785634566, 'Malkaduwawa'),
(55, 'jhon doe', 'jhon@gmail.com', '11 grade', 1, 0, 0, 1, 824567890, 'Kurunegala'),
(56, 'Shehani abesekara', 'sheni@gmail.com', '10 grade', 1, 1, 0, 1, 761966807, 'Kuliyapitiya'),
(67, 'Kushalya Arawindini', 'kushi@gmail.com', '9 grade', 1, 1, 1, 1, 714182581, 'Kurunegala'),
(69, 'Alex marry', 'alex@gmail.com', '11 grade', 1, 0, 1, 0, 965789456, 'Gampaha'),
(74, 'Jonny doile', 'jony@gmail.com', '10 grade', 1, 1, 1, 0, 789045678, 'Colombo'),
(77, 'subashini disasekara', 'suba@gmail.com', '11 grade', 1, 1, 1, 1, 706678900, 'Kurunegala'),
(78, 'Hasari chathurika', 'hasari@gmail.com', '11 grade', 1, 1, 0, 1, 74567890, 'Mathale'),
(89, 'malsha nirmani', 'nirma@gmail.com', '10 grade', 1, 1, 1, 1, 789078567, 'keglle'),
(100, 'Marry Anjala', 'Marry@gmail.com', '11 grade', 1, 1, 0, 1, 978956777, 'Colombo'),
(105, 'Anjala Marsy', 'anjal@gmail.com', '11 grade', 1, 1, 1, 1, 687945678, 'Kurunegala'),
(345, 'Norry isabela', 'nori@gmail.com', '11 grade', 1, 0, 0, 1, 567889700, 'Keggle');

-- --------------------------------------------------------

--
-- Table structure for table `studentsaddregister`
--

CREATE TABLE `studentsaddregister` (
  `student ID` int(5) NOT NULL,
  `student name` varchar(40) NOT NULL,
  `Email` int(35) NOT NULL,
  `grade` int(10) NOT NULL,
  `Mathametics` tinyint(1) NOT NULL,
  `English` tinyint(1) NOT NULL,
  `Science` tinyint(1) NOT NULL,
  `I.C.T` tinyint(1) NOT NULL,
  `Contact` varchar(10) NOT NULL,
  `Address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `Teacher id` int(5) NOT NULL,
  `Teacher Name` varchar(40) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `Day` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`Teacher id`, `Teacher Name`, `Subject`, `Day`) VALUES
(78, '', 'Science', 'monday'),
(80, 'yut', 'Mathametics', 'monday'),
(90, 'yyyyyy', 'English', 'tuesday');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `subject code` varchar(5) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `Teacher` varchar(40) NOT NULL,
  `Time` time NOT NULL,
  `Day` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`subject code`, `subject`, `grade`, `Teacher`, `Time`, `Day`) VALUES
('10-E', 'English', 'grade 10', 'Miss. Anjela', '05:00:00', 'Staturday'),
('10-IC', 'ICT', 'grade 10', 'Mr. A.K.K. Fenando', '06:30:00', 'Sunday'),
('10-M', 'Mathametics', 'grade 10', 'Mrs.Umasha Udayangani', '08:00:00', 'Staturday'),
('10-S', 'Science', 'grade 10', 'MS.A.D.Jayawardhane', '12:00:00', 'Staturday'),
('9-M', 'Mathametics', 'grade 9', 'Mrs.Umasha Udayangani', '03:00:00', 'Wensday'),
('9-S', 'English', 'grade 9', 'Ms. Anjala fernando', '02:00:00', 'Tuesday'),
('E-10', 'English', 'grade 10', 'Ms. Anjala fernando', '10:30:00', 'Sunday');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`student ID`);

--
-- Indexes for table `studentsaddregister`
--
ALTER TABLE `studentsaddregister`
  ADD PRIMARY KEY (`student ID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`Teacher id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`subject code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `student ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT for table `studentsaddregister`
--
ALTER TABLE `studentsaddregister`
  MODIFY `student ID` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `Teacher id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
