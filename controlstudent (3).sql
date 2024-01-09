-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 09, 2024 at 03:06 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `controlstudent`
--

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `logId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `memberId` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `memberId` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `studentCode` varchar(32) NOT NULL,
  `codePass` varchar(100) DEFAULT NULL,
  `status` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`memberId`, `name`, `studentCode`, `codePass`, `status`) VALUES
(2, 'กฤษณชัย อุบลทิพย์', '65309010001', NULL, 'user'),
(3, 'นันทวัฒน์ มาศวิเศษ', '65309010005', '12345', 'admin'),
(5, 'vslv', 'vufks', NULL, 'user'),
(7, 'นายสุรชาติ ลิ้มรัตนพันธ์', '876588', NULL, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subjectId` int(11) NOT NULL,
  `numSubject` varchar(20) NOT NULL,
  `subjectName` varchar(50) NOT NULL,
  `credit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subjectId`, `numSubject`, `subjectName`, `credit`) VALUES
(1, '20000-1208', 'ภาษาอังกฤษเตรียมความพร้อมเพื่อการทำงาน', '2'),
(3, '20000-2005', 'กิจกรรมองค์การวิชาชีพ 3', '2'),
(4, '20001-1004', 'กฎหมายแรงงาน', '1'),
(5, '20204-2009', 'จริยธรรมและกฎหมายคอมพิวเตอร์', '2'),
(6, '20204-2106', 'โปรแกรมสำเร็จรูปทางสถิติ', '4'),
(7, '20204-2112', 'การพัฒนาโปรแกรมบนอุปกรณ์พกพาเบื้องต้น', '4'),
(8, '20204-8501', 'โครงงาน', '4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`logId`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`memberId`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subjectId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `logId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `memberId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subjectId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
