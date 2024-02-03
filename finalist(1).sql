-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2024 at 10:46 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalist`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `ClassID` int(3) NOT NULL,
  `Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`ClassID`, `Name`) VALUES
(1, 'BENG21 COE'),
(2, 'BENG21 ETE'),
(3, 'BENG21 CE'),
(4, 'BENG21 ME'),
(5, 'BENG21 EE');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`) VALUES
(1, 'basso@gmail.com', 'silo123');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `ProjectID` int(11) NOT NULL,
  `Project_Name` varchar(250) NOT NULL,
  `SupervisorID` int(3) NOT NULL,
  `StudentID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`ProjectID`, `Project_Name`, `SupervisorID`, `StudentID`) VALUES
(1, 'Password Cracking', 6, 4),
(6, 'DOS detection', 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentID` int(5) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Middle_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Registration_No` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `ClassID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentID`, `First_Name`, `Middle_Name`, `Last_Name`, `Registration_No`, `Email`, `ClassID`) VALUES
(2, 'George', 'Maduka', 'Nyanda', '2102302229465', 'georgemaduka92@gmail.com', 1),
(3, 'Bashiri', 'Idd', 'Nenga', '2102302219987', 'bashiriidd@gmail.com', 1),
(4, 'Michael', 'Paul', 'Mtoi', '2102302227816', 'michal190@gmail.com', 1),
(5, 'Jonathan', 'Meris', 'kipangula', '2102302224532', 'jonakp@gmail.com', 5),
(6, 'Fatuma', 'Mohamed', 'Jarufu', '2102202234672', 'fetty@gmail.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `student_project`
--

CREATE TABLE `student_project` (
  `id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `middle_name` varchar(200) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `registration_no` int(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `tittle` varchar(200) NOT NULL,
  `documentation` varchar(200) NOT NULL,
  `superviser_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_project`
--

INSERT INTO `student_project` (`id`, `first_name`, `middle_name`, `surname`, `registration_no`, `email`, `tittle`, `documentation`, `superviser_id`) VALUES
(1, 'test', 'test', 'test', 237434, 'test@gmail.com', 'testing', 'Kingxley(1)(1).pdf', 1),
(2, 'sillo', 'basso', 'sulle', 1297847, 'sillo@gmail.com', 'sample', 'Kingxley(1)(1).pdf', 1),
(3, 'george', 'maduka', 'geroge', 283467634, 'maduka@gmail.com', 'finalist', 'Kingxley(1)(1).pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supervisors`
--

CREATE TABLE `supervisors` (
  `SupervisorID` int(3) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Middle_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone_No` varchar(20) NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supervisors`
--

INSERT INTO `supervisors` (`SupervisorID`, `First_Name`, `Middle_Name`, `Last_Name`, `Email`, `Phone_No`, `Status`) VALUES
(1, 'Gustav', 'Leonard', 'Sanga', 'gustsanga@gmail.com', '+255789354600', 'Dr.'),
(6, 'Seth', 'Richard', 'Mpando', 'sethmp@gmail.com', '+255712354631', 'Dr.'),
(7, 'Mazunde', 'Engbert', 'Mapunda', 'mazunde123@gmail.com', '+255656310320', 'Prof.'),
(8, 'George', 'Wella', 'Tarimo', 'tarimo100@gmail.com', '+255756700234', 'Prof.'),
(9, 'agnes', 'Anthony', 'Missigaro', 'misigaagnes@gmail.com', '+255652090507', 'Dr.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(10) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Middle_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `First_Name`, `Middle_Name`, `Last_Name`, `Role`) VALUES
(1, 'George', 'Maduka', 'Nyanda', 'Student'),
(2, 'Judith', 'Anthony', 'Missigaro', 'Student'),
(3, 'Helena', 'Abel', 'Mussa', 'Lecturer'),
(4, 'Jessalyn', 'George', 'Maduka', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`ClassID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`ProjectID`),
  ADD KEY `projects_ibfk_1` (`SupervisorID`),
  ADD KEY `projects_ibfk_2` (`StudentID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentID`),
  ADD KEY `ClassID` (`ClassID`);

--
-- Indexes for table `student_project`
--
ALTER TABLE `student_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supervisors`
--
ALTER TABLE `supervisors`
  ADD PRIMARY KEY (`SupervisorID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `ClassID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `ProjectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `StudentID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_project`
--
ALTER TABLE `student_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supervisors`
--
ALTER TABLE `supervisors`
  MODIFY `SupervisorID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`SupervisorID`) REFERENCES `supervisors` (`SupervisorID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_ibfk_2` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`ClassID`) REFERENCES `classes` (`ClassID`),
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`ClassID`) REFERENCES `classes` (`ClassID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
