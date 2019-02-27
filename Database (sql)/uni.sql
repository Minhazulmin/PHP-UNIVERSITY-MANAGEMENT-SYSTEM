-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2018 at 03:57 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uni`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(0, 'min', 'd8bd79cc131920d5de426f914d17405a');

-- --------------------------------------------------------

--
-- Table structure for table `attn`
--

CREATE TABLE `attn` (
  `id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `atten` varchar(50) NOT NULL,
  `at_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attn`
--

INSERT INTO `attn` (`id`, `st_id`, `atten`, `at_date`) VALUES
(218, 15103283, '', '0000-00-00'),
(219, 151000, '', '0000-00-00'),
(220, 151001, '', '0000-00-00'),
(221, 1212122, '', '0000-00-00'),
(222, 1313311, '', '0000-00-00'),
(223, 1441414, '', '0000-00-00'),
(224, 15151515, '', '0000-00-00'),
(225, 171717, '', '0000-00-00'),
(226, 1818181, '', '0000-00-00'),
(227, 14203073, '', '0000-00-00'),
(228, 15103283, 'present', '2018-04-02'),
(229, 151001, 'present', '2018-04-02'),
(230, 1212122, 'present', '2018-04-02'),
(231, 1313311, 'present', '2018-04-02'),
(232, 1441414, 'absent', '2018-04-02'),
(233, 15151515, 'present', '2018-04-02'),
(234, 171717, 'present', '2018-04-02'),
(235, 1818181, 'present', '2018-04-02'),
(236, 14203073, 'absent', '2018-04-02'),
(237, 15103283, 'present', '2018-01-22'),
(238, 151001, 'present', '2018-01-22'),
(239, 1212122, 'present', '2018-01-22'),
(240, 1313311, 'present', '2018-01-22'),
(241, 1441414, 'absent', '2018-01-22'),
(242, 15151515, 'absent', '2018-01-22'),
(243, 171717, 'absent', '2018-01-22'),
(244, 1818181, 'absent', '2018-01-22'),
(245, 14203073, 'absent', '2018-01-22');

-- --------------------------------------------------------

--
-- Table structure for table `at_student`
--

CREATE TABLE `at_student` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `st_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `at_student`
--

INSERT INTO `at_student` (`id`, `name`, `st_id`) VALUES
(30, 'Md.Minhazul Islam', 15103283),
(32, 'Jahid Munna', 151001),
(33, 'Ramisha Tasfia  Raha', 1212122),
(34, 'Fariha Tabassum Borsha', 1313311),
(35, 'Siyam', 1441414),
(36, 'Sumaya sriti', 15151515),
(37, 'Sintha Jannat sara', 171717),
(38, 'Nahiyan Abid', 1818181),
(39, 'Asma Akter Munnii', 14203073);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `education` varchar(100) DEFAULT NULL,
  `contact` int(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `username`, `password`, `name`, `email`, `birthday`, `gender`, `education`, `contact`, `address`) VALUES
(14, 'hk', 'ae4171856a75f7b67d51fc0e1f95902e', 'Humayun kabir bishwas', 'hk@gmail.com', '1990-02-21', 'Male', 'MSc in Cse from IUBAT', 1715666666, 'Uttara,Dhaka'),
(15, 'as', 'c20ad4d76fe97759aa27a0c99bff6710', 'Abhijit saha', 'as@gmail.om', '1990-01-01', 'Male', 'Phd in cse from IUBAT', 23456, 'dhaka'),
(16, '15103361', '41a60377ba920919939d83326ebee5a1', 'sadia ', 'sadia@gmail.com', '1992-01-22', 'Female', 'BSc in cse from IUBAT', 1536131401, 'dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `marks` int(5) NOT NULL,
  `sub` varchar(50) NOT NULL,
  `semester` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `st_id`, `marks`, `sub`, `semester`) VALUES
(61, 15103283, 90, 'DBMS', '1st'),
(62, 15103283, 80, 'DBMS Lab', '1st'),
(63, 15103283, 80, 'Mathematics', '1st'),
(64, 15103283, 90, 'Programming', '1st'),
(65, 1414144, 90, 'DBMS', '1st'),
(66, 1414144, 80, 'DBMS Lab', '1st'),
(67, 1414144, 70, 'Mathematics', '1st'),
(68, 1414144, 80, 'Programming', '1st'),
(69, 1414144, 90, 'Programming Lab', '1st'),
(70, 14203073, 80, 'DBMS', '1st'),
(71, 14203073, 90, 'DBMS Lab', '1st'),
(72, 15103293, 98, 'DBMS', '1st'),
(73, 15103293, 200, 'Mathematics', '1st'),
(74, 123, 90, 'DBMS', '1st'),
(75, 123, 80, 'DBMS Lab', '1st'),
(76, 123, 78, 'Programming', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `st_info`
--

CREATE TABLE `st_info` (
  `st_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `bday` date NOT NULL,
  `program` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `st_info`
--

INSERT INTO `st_info` (`st_id`, `name`, `password`, `email`, `bday`, `program`, `contact`, `gender`, `address`, `img`) VALUES
(123, 'abc', '0cc175b9c0f1b6a831c399e269772661', 'abc@gmaiil.com', '1996-01-22', 'BCSE', '097654', 'Male', 'Uttara,Dhaka', '5A1B771F-1A40-221F-B811-AAEACAC59EFE.jpg'),
(121212, 'Jahid Munna', '6f8f57715090da2632453988d9a1501b', 'munna@gmail.com', '2001-01-03', 'EEE', '01722671342', 'Male', 'Dinajpur', '79AF104F-8F72-5DCB-DB52-3874BA36E5FD.jpg'),
(1414144, 'Sintha Jannat Sara', '03c7c0ace395d80182db07ae2c30f034', 'sara@gmail.com', '2017-01-02', 'BBA', '017233333', 'Male', 'Dinajpur', 'E930EC0A-6249-232C-2A0F-BBF41CDB19D8.jpg'),
(14203073, 'asma', 'c20ad4d76fe97759aa27a0c99bff6710', 'asmunni96@gmail.com', '1996-12-24', 'BCSE', '134557', 'Female', 'savar', '94B38AB1-DD07-30E2-DFC6-7B876ED90BDC.jpg'),
(15103283, 'Md.minhazul islam', 'd8bd79cc131920d5de426f914d17405a', 'minhazul234@gmail.com', '1995-01-02', 'BCSE', '01751337061', 'Male', 'Dinajpur', 'D67AACB4-A3BF-1E44-5567-D241343C0C1D.jpg'),
(15103293, 'bickash', '81dc9bdb52d04dc20036dbd8313ed055', 'bickashn@gmail.com', '1994-06-06', 'BCSE', '01630988709', 'Male', 'mirpur', 'EC82C106-0B7D-F2C3-53D3-36111BCF1025.jpg'),
(15103362, 'sadia', '41a60377ba920919939d83326ebee5a1', 'sadia@gmail.com', '1996-01-22', 'BCSE', '01436131401', 'Female', 'dhaka', 'C3A26154-243B-E25D-5EDB-833270BCB9EE.jpg'),
(15103363, 'sadia islam', '0a58981e02446e7b2ea5dd6d522c3867', 'sadiaislam9423@gmail.com', '1996-01-23', 'BCSE', '01536131401', 'Female', 'dhaka', 'B1123FD1-04D3-449A-C435-60F53DDA467F.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attn`
--
ALTER TABLE `attn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `at_student`
--
ALTER TABLE `at_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `st_info`
--
ALTER TABLE `st_info`
  ADD PRIMARY KEY (`st_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attn`
--
ALTER TABLE `attn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;
--
-- AUTO_INCREMENT for table `at_student`
--
ALTER TABLE `at_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
