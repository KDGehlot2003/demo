-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 12, 2023 at 05:48 AM
-- Server version: 8.0.32
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new`
--

-- --------------------------------------------------------

--
-- Table structure for table `early_going_info`
--

DROP TABLE IF EXISTS `early_going_info`;
CREATE TABLE IF NOT EXISTS `early_going_info` (
  `eg_id` int NOT NULL AUTO_INCREMENT,
  `em_id` int NOT NULL,
  `date_eg` date DEFAULT NULL,
  `start_time_eg` time DEFAULT NULL,
  `end_time_eg` time DEFAULT NULL,
  `location_eg` varchar(40) DEFAULT NULL,
  `reason_eg` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`eg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `early_going_info`
--

INSERT INTO `early_going_info` (`eg_id`, `em_id`, `date_eg`, `start_time_eg`, `end_time_eg`, `location_eg`, `reason_eg`) VALUES
(1, 1, NULL, '09:30:00', '16:15:00', NULL, NULL),
(2, 3, NULL, '12:30:00', '20:15:00', NULL, NULL),
(3, 1, '2023-03-10', '12:34:00', '13:35:00', 'gcjhfg', 'hgjig'),
(4, 5, '2023-05-10', '13:30:00', '14:34:00', 'fesd', 'dgsg'),
(5, 1, '2023-05-10', '10:40:00', '14:50:00', 'Kalol', 'family'),
(6, 1, '2023-05-10', '10:20:00', '13:03:00', 'Mumbai', 'family'),
(7, 1, '2023-05-10', '10:41:00', '14:42:00', 'Kalol', 'family issue');

-- --------------------------------------------------------

--
-- Table structure for table `emp_info`
--

DROP TABLE IF EXISTS `emp_info`;
CREATE TABLE IF NOT EXISTS `emp_info` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(30) NOT NULL,
  `emp_mail` varchar(30) DEFAULT NULL,
  `CL` int DEFAULT NULL,
  `PL` int DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `emp_info`
--

INSERT INTO `emp_info` (`emp_id`, `emp_name`, `emp_mail`, `CL`, `PL`) VALUES
(1, 'Kshitij Gehlot', 'kdgehlot2003@gmail.com', 30, 50),
(2, 'Piyush SIr', 'piyush@gmail.com', 13, 53),
(3, 'Vishal SIr', 'vishal@gmail.com', 9, 29),
(4, 'Mitesh Bhai', 'mitesh@gmail.com', 12, 43),
(5, 'Hardik Gehlot', 'hardik@gmail.com', 6, 17),
(6, 'Dinesh Gehlot', 'dinesh@gmail.com', 11, 55),
(7, 'Ramu', 'ramu@gmail.com', 5, 32),
(8, 'Kumar sanu', 'kumar@gmail.com', 10, 34),
(9, 'Arijit Singh', 'arijit@gmail.com', 5, 21),
(10, 'Honey Singh', 'yoyohoney@gmail.com', 3, 34);

-- --------------------------------------------------------

--
-- Table structure for table `emp_secret`
--

DROP TABLE IF EXISTS `emp_secret`;
CREATE TABLE IF NOT EXISTS `emp_secret` (
  `emp_id` int NOT NULL,
  `secret_key` varchar(10) NOT NULL,
  `Leave_apply` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`secret_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `emp_secret`
--

INSERT INTO `emp_secret` (`emp_id`, `secret_key`, `Leave_apply`) VALUES
(1, 'abc123', 1),
(10, 'cool123', 1),
(8, 'egg123', 1),
(7, 'faq123', 1),
(9, 'lego123', 1),
(5, 'pyq123', 1),
(3, 'qwert123', 1),
(6, 'uv123', 0),
(4, 'wasd123', 0),
(2, 'xyz123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `late_coming_info`
--

DROP TABLE IF EXISTS `late_coming_info`;
CREATE TABLE IF NOT EXISTS `late_coming_info` (
  `lc_id` int NOT NULL AUTO_INCREMENT,
  `emp_id` int NOT NULL,
  `date_lc` date DEFAULT NULL,
  `start_time_lc` time DEFAULT NULL,
  `end_time_lc` time DEFAULT NULL,
  `location` varchar(40) DEFAULT NULL,
  `reason_lc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`lc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `late_coming_info`
--

INSERT INTO `late_coming_info` (`lc_id`, `emp_id`, `date_lc`, `start_time_lc`, `end_time_lc`, `location`, `reason_lc`) VALUES
(1, 1, '2023-05-10', '09:30:00', '12:00:00', 'kalol', 'anthhadsfga'),
(2, 1, '2023-05-10', '10:30:00', '13:32:00', 'Kalol', 'family issu');

-- --------------------------------------------------------

--
-- Table structure for table `leave_info`
--

DROP TABLE IF EXISTS `leave_info`;
CREATE TABLE IF NOT EXISTS `leave_info` (
  `leave_id` int NOT NULL AUTO_INCREMENT,
  `emp_id` int NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `leave_apply_date` date DEFAULT NULL,
  `total_days_of_leave` int DEFAULT NULL,
  `reason_for_leave` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`leave_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `leave_info`
--

INSERT INTO `leave_info` (`leave_id`, `emp_id`, `start_date`, `end_date`, `leave_apply_date`, `total_days_of_leave`, `reason_for_leave`) VALUES
(1, 1, '2023-05-14', '2023-05-16', '2023-05-08', 2, 'issue'),
(2, 1, '2023-05-11', '2023-05-15', '2023-05-08', 4, 'Health issue'),
(3, 1, '2023-05-26', '2023-05-28', '2023-05-08', 3, 'family issue'),
(4, 1, '2023-05-09', '2023-05-09', '2023-05-08', 1, 'Health issue'),
(5, 1, '2023-05-10', '2023-05-14', '2023-05-09', 5, 'issue'),
(6, 1, '2023-05-10', '2023-05-12', '2023-05-09', 3, 'family issue'),
(7, 1, '2023-05-10', '2023-05-11', '2023-05-09', 2, 'family'),
(8, 5, '2023-05-10', '2023-05-12', '2023-05-12', 3, 'family problem');

-- --------------------------------------------------------

--
-- Table structure for table `od_only_info`
--

DROP TABLE IF EXISTS `od_only_info`;
CREATE TABLE IF NOT EXISTS `od_only_info` (
  `od_only_info` int NOT NULL AUTO_INCREMENT,
  `emp_id` int NOT NULL,
  `date_od` date DEFAULT NULL,
  `start_time_od_only` time DEFAULT NULL,
  `end_time_od_only` time DEFAULT NULL,
  `location_od_only` varchar(30) DEFAULT NULL,
  `reason_od_only` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`od_only_info`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `od_only_info`
--

INSERT INTO `od_only_info` (`od_only_info`, `emp_id`, `date_od`, `start_time_od_only`, `end_time_od_only`, `location_od_only`, `reason_od_only`) VALUES
(1, 1, '2023-05-10', '11:23:00', '15:23:00', 'Kalol', 'personal work');

-- --------------------------------------------------------

--
-- Table structure for table `od_tour_info`
--

DROP TABLE IF EXISTS `od_tour_info`;
CREATE TABLE IF NOT EXISTS `od_tour_info` (
  `od_id` int NOT NULL AUTO_INCREMENT,
  `emp_id` int NOT NULL,
  `start_date_od` date DEFAULT NULL,
  `end_date_od` date DEFAULT NULL,
  `start_time_od` time DEFAULT NULL,
  `end_time_od` time DEFAULT NULL,
  `location_od` varchar(30) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`od_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `od_tour_info`
--

INSERT INTO `od_tour_info` (`od_id`, `emp_id`, `start_date_od`, `end_date_od`, `start_time_od`, `end_time_od`, `location_od`, `reason`) VALUES
(1, 2, '2023-05-10', '2023-05-14', '10:23:00', '15:40:00', 'dfjgbdsFdghsgsdgdsg', 'gskjg'),
(2, 1, '2023-05-10', '2023-05-11', '10:40:00', '13:50:00', 'Kalol', 'work'),
(3, 1, '2023-05-10', '2023-05-13', '09:30:00', '18:30:00', 'Kalol', 'work'),
(4, 1, '2023-05-10', '2023-05-15', '14:40:00', '18:39:00', 'Kalol', 'problem');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
