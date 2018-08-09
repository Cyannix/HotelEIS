-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2018 at 09:48 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_housekeeping`
--

CREATE TABLE `t_housekeeping` (
  `pk_housekeeping` int(200) NOT NULL,
  `R.A_Maid` varchar(200) NOT NULL,
  `Cleaning_Status` varchar(200) NOT NULL,
  `Room Condition` varchar(200) NOT NULL,
  `Repair Status` varchar(100) NOT NULL,
  `Archive` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_housekeeping`
--

INSERT INTO `t_housekeeping` (`pk_housekeeping`, `R.A_Maid`, `Cleaning_Status`, `Room Condition`, `Repair Status`, `Archive`) VALUES
(1, 'R.A 102', 'Ongoing', 'Good', 'Not Started', 'recorded'),
(2, 'R.A 103', 'null', 'Finished', 'Finished', 'archived'),
(3, 'R.A 201', 'Ongoing', 'Good', 'Not Started', 'recorded'),
(4, 'R.A 101', 'Finished', 'Moderate', 'Not Started', 'recorded'),
(5, 'R.A 101', 'Cleaning', 'Good', 'Not Started', 'recorded'),
(6, 'R.A 301', 'Canceled', 'Out of Order', 'Not Started', 'archived'),
(7, 'R.A 301', 'Finished', 'Moderate', 'Not Started', 'archived'),
(8, 'R.A 301', 'Canceled', 'Out of Order', 'Started', 'archived'),
(9, 'R.A 201', 'Cleaning', 'Bad', 'Not Started', 'archived'),
(10, 'R.A 301', 'Canceled', 'Out of Order', 'Not Started', 'archived'),
(11, 'R.A 101', 'Cleaning', 'Good', 'Not Started', 'archived'),
(12, 'R.A 301', 'Cleaning', 'Good', 'Not Started', 'recorded'),
(13, 'null', 'Canceled', 'null', 'null', 'archived'),
(14, 'R.A 101', 'Cancel', 'Out of Order', 'Not Started', 'archived'),
(16, 'R.A 401', 'null', 'null', 'Not Started', 'archived'),
(17, 'R.A 401', 'Not Started', 'Out of Order', 'Not Started', 'archived'),
(18, 'null', 'Not Started', 'null', 'null', 'archived'),
(19, 'null', 'Not Started', 'null', 'null', 'archived'),
(20, 'R.A 101', 'Cleaning', 'Good', 'Not Started', 'archived'),
(21, 'R.A 201', 'Cleaning', 'Moderate', 'Not Started', 'archived'),
(22, 'R.A 101', 'Cleaning', 'Good', 'Not Started', 'archived'),
(27, 'R.A 101', 'Not Started', 'Out of Order', 'Not Started', 'recorded'),
(28, 'R.A 320', 'Cancel', 'Out of Order', 'Not Started', 'archived'),
(29, 'R.A 301', 'Not Started', 'Out of Order', 'Not Started', 'recorded');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_housekeeping`
--
ALTER TABLE `t_housekeeping`
  ADD PRIMARY KEY (`pk_housekeeping`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_housekeeping`
--
ALTER TABLE `t_housekeeping`
  MODIFY `pk_housekeeping` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
