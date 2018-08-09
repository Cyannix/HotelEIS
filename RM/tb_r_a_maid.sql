-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2018 at 09:47 AM
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
-- Table structure for table `tb_r.a_maid`
--

CREATE TABLE `tb_r.a_maid` (
  `R.A_Maid_ID` int(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Tele_num` varchar(50) NOT NULL,
  `Maid_Supervisor` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Position` varchar(50) NOT NULL,
  `Floor_assgin` varchar(50) NOT NULL,
  `Archive` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_r.a_maid`
--

INSERT INTO `tb_r.a_maid` (`R.A_Maid_ID`, `Name`, `Tele_num`, `Maid_Supervisor`, `Address`, `Position`, `Floor_assgin`, `Archive`) VALUES
(12, 'Martin Oliva', '2445245467', 'Not Applicable', '222 East Coast', 'Manager', 'R.A 100', 'recorded'),
(13, 'Annie Bonnie', '345687353436', 'Not Applicable', '222 South Seas', 'Manager', 'R.A 200', 'recorded'),
(14, 'John Chua', '21435436769', 'Martin Oliva', '256 Brook St', 'Supervisor', 'R.A 200', 'Archived');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_r.a_maid`
--
ALTER TABLE `tb_r.a_maid`
  ADD PRIMARY KEY (`R.A_Maid_ID`),
  ADD UNIQUE KEY `R.A_Maid_ID` (`R.A_Maid_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_r.a_maid`
--
ALTER TABLE `tb_r.a_maid`
  MODIFY `R.A_Maid_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
