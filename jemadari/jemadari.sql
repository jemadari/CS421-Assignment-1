-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2025 at 12:29 PM
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
-- Database: `jemadari`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `program` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `program`) VALUES
(1, 'Hancy Lancy', 'Software Engineering'),
(2, 'Lancy Hancy', 'Software Engineering'),
(3, 'Vancy Hancy', 'Software Engineering'),
(4, 'Hancy Vancy', 'Software Engineering'),
(5, 'Hancy Dancy', 'Software Engineering'),
(6, 'Dancy Hancy', 'Software Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `subject_year` int(11) NOT NULL,
  `subject_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_year`, `subject_name`) VALUES
(1, 1, 'Principles of Programming Languages(CP 111)'),
(2, 1, 'Development Perspectives(DS 102)'),
(3, 1, 'Mathematical Foundations of Information Security-(IA 112)'),
(4, 1, 'Introduction to Information Technology(IT 111)'),
(5, 1, 'Communication Skills(LG 102)'),
(6, 1, 'Discrete Mathematics for ICT(MT1111)'),
(7, 1, 'Calculus(MT 1112)'),
(8, 1, 'Linear Algebra for ICT(MT 1117)'),
(9, 1, 'Introduction to Computer Networking(CN 121)'),
(10, 1, 'Introduction to Database systems(CP 121)'),
(11, 1, 'Introduction to High Level Programming(CP 123)'),
(12, 1, 'Introduction to Software Engineering(CS 123)'),
(13, 1, 'Introduction to IT Security(IA 124)'),
(14, 1, 'Numerical Analysis for ICT(MT 1211)'),
(15, 1, 'Introduction to Probability and Statistics(ST 1210)'),
(16, 2, 'Computer Networking Protocols(CN 211)'),
(17, 2, 'Introduction To Linux/Unix Systems(CP 211)'),
(18, 2, 'Systems Analysis and Design(CP 212)'),
(19, 2, 'Data Structures and Algorithms Analysis(CP 213)'),
(20, 2, 'Computational Theory(CP 214)'),
(21, 2, 'Object Oriented Programming in Java(CP 215)'),
(22, 2, 'Industrial Practical Training I(CS 131)'),
(23, 2, 'Computer Organization and Architecture I(CT 211)'),
(24, 2, 'Internet Programming And Application I(CP 221)'),
(25, 2, 'Open Source Technologies(CP 222)'),
(26, 2, 'Object-Oriented Systems Design(CP 223)'),
(27, 2, 'Database Management Systems(CP 224)'),
(28, 2, 'Software Testing and Quality Assurance(CP 225)'),
(29, 2, 'Operating Systems(CP 226)'),
(30, 2, 'ICT Research Methods(IS 221)'),
(31, 3, 'Internet Programming and Applications II(CP 311)'),
(32, 3, 'Python Programming(CP 312)'),
(33, 3, 'Mobile Applications Development(CP 313)'),
(34, 3, 'Selected Topics in Software Engineering(CP 316)'),
(35, 3, 'Computer Graphics(CP 318)'),
(36, 3, 'Industrial Practical Training II(CS 231)'),
(37, 3, 'ICT Entrepreneurship(EME 314)'),
(38, 3, 'Mathematical Logic and Formal Semantics(MT 3111)'),
(39, 3, 'Distributed Database Systems(CP 321)'),
(40, 3, 'Data Mining and Warehousing(CP 322)'),
(41, 3, 'Web Framework Development Using Javascript(CP 323)'),
(42, 3, 'Compiler Technology(CP 324)'),
(43, 3, 'Advanced Java Programming(CS 321)'),
(44, 3, 'Information and Communication Systems Security(IA 321)'),
(45, 4, 'ICT Project Management(BT 413)'),
(46, 4, 'Distributed Computing(CP 314)'),
(47, 4, 'C# Programming(CP 412)'),
(48, 4, 'Industrial Practical Training III(CS 332)'),
(49, 4, 'Software Reverse Engineering(CS 411)'),
(50, 4, 'Software Engineering Project I(CS 431)'),
(51, 4, 'Computer Maintenance(CT 312)'),
(52, 4, 'Human Computer Interaction(IM 411)'),
(53, 4, 'Professional Ethics and Conduct Core(SI 311)'),
(54, 4, 'Software Deployment and Management(CS 421)'),
(55, 4, 'Big Data Analysis(CS 329)'),
(56, 4, 'Software Engineering Project II(CS 432)'),
(57, 4, 'Artificial Intelligence(CP 422)'),
(58, 4, 'System Administration and Management(CP 423)'),
(59, 4, 'Cloud Computing(CP 424)'),
(60, 4, 'Foundations of Data Science(CG 222)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
