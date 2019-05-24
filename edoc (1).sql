-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2018 at 11:56 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edoc`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dep_id` int(10) NOT NULL,
  `dep_name` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dep_id`, `dep_name`) VALUES
(1, 'สื่อสารข้อมูล'),
(2, 'กองคลัง'),
(3, 'กองช่าง');

-- --------------------------------------------------------

--
-- Table structure for table `employ`
--

CREATE TABLE `employ` (
  `id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employ`
--

INSERT INTO `employ` (`id`, `firstname`, `lastname`, `position`, `department`, `tel`, `status`, `pass`) VALUES
('', '', '', '', '0', '958468787', 'Admin', '123456'),
('100204', 'สารบรรณ', 'กองคลัง', 'ธุรการ', '2', '0991695060', 'Admin', '0991695060'),
('13409429', 'นายวัลลภ', 'อามาตย์', 'วศ.7', '001', '0862287999', 'User', '0862287999'),
('13503518', 'นายโกวิท', 'เสริมดำรงศักดิ์', 'วศ.8', '001', '0893230097', 'User', '0893230097'),
('13521213', 'นายนพดล', 'ภูตีกา', 'วศ.6', '001', '0826629690', 'User', '0826629690'),
('13607811', 'นายสมจินต์', 'กองแก้ว', 'วศ.7', '001', '0893258616', 'User', '0893258616'),
('13703244', 'นายประทีป', 'ปัญญาธรรม', 'ปช.6', '001', '0895705635', 'User', '0895705635'),
('13811472', 'นายเดชปภัช', 'กมลวัทน์', 'ปช.6', '001', '0992093311', 'User', '0992093311'),
('13814529', 'นายศุภชัย', 'กฤชกระพัน', 'วศ.5', '001', '0885611043', 'User', '0885611043'),
('13822653', 'นายขจรเกียรติ', 'สิ้นภัย', 'นช.6', '001', '0834584115', 'User', '0834584115'),
('13904885', 'นายธนากร', 'วิบูลย์อัฐพล', 'วศ.6', '001', '0898195194', 'User', '0898195194'),
('14700517', 'นายเฉลิมพล', 'ศรีสุภา', 'วศ.4', '001', '0819748693', 'User', '0819748693'),
('14700581', 'นายจีรวัฒน์', 'ไชยชิน', 'วศ.4', '001', '0836753900', 'User', '0836753900'),
('14700618', 'นายองอาจ', 'ศิริแก้ว', 'วศ.4', '001', '0930755456', 'User', '0930755456'),
('220022', 'สารบรรณ', 'กองช่าง', 'ธุรการ', '3', '0958468787', 'Admin', '0958468787'),
('22640', 'สารบรรณ', 'สื่อสารข้อมูล', 'ธุรการ', '1', '958468783', 'Admin', '123456'),
('23456789', 'Mickey', 'Mouse', 'วศ.7', '2', '0991695060', 'User', '0991695060'),
('25401061', 'นายภาคภูมิ', 'ประยูรคำ', 'วศ.', '001', '0834555030', 'User', '083455030'),
('25401073', 'นายสุกิจ', 'พลไธสง', 'วศ.', '001', '0868992793', 'User', '0868992793'),
('System', 'Admin', 'System', '-', '-', '123456', 'System', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `order_id` int(10) NOT NULL,
  `docnum` int(10) NOT NULL,
  `datetime` datetime NOT NULL,
  `topic` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `filedirec` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `statuss` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `job_dep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`order_id`, `docnum`, `datetime`, `topic`, `ID`, `filedirec`, `statuss`, `job_dep`) VALUES
(41, 2378, '2018-08-19 00:00:00', 'Tests', '13503518', './upload/content.png', 'Read', 0),
(42, 2378, '2018-08-19 00:00:00', 'Tests', '13521213', './upload/content.png', 'New', 0),
(43, 2378, '2018-08-19 00:00:00', 'Tests', '13607811', './upload/content.png', 'New', 0),
(44, 2378, '2018-08-19 00:00:00', 'Tests', '13703244', './upload/content.png', 'New', 0),
(46, 2379, '0000-00-00 00:00:00', 'Tests', '13607811', './upload/แบบลงทะเบียนรายงานตัว.pdf', 'New', 0),
(47, 2378, '0000-00-00 00:00:00', 'Tests', '13521213', './upload/TOT_LOGO.png', 'Read', 0),
(48, 2379, '2018-08-20 08:28:00', 'Tests', '25401061', './upload/TOT_LOGO.png', 'Read', 0),
(49, 2379, '2018-08-20 08:28:00', 'Tests', '25401073', './upload/TOT_LOGO.png', 'Read', 0),
(50, 2378, '2018-08-20 09:38:00', 'Tests', '13409429', './upload/Exรายชื่อผู้ลงทะเบียนประเภทวิชาการประกวด-.pdf', 'Read', 0),
(51, 2380, '2018-08-20 09:38:00', 'Tests', '13503518', './upload/aaa.pdf', 'Read', 0),
(52, 2381, '2018-08-21 17:06:00', 'Tests', '13409429', './upload/aaa.pdf', 'Read', 0),
(53, 2381, '2018-08-21 17:06:00', 'Tests', '13521213', './upload/aaa.pdf', 'New', 0),
(54, 2381, '2018-08-21 17:06:00', 'Tests', '13703244', './upload/aaa.pdf', 'New', 0),
(55, 2381, '2018-08-21 17:06:00', 'Tests', '13814529', './upload/aaa.pdf', 'New', 0),
(56, 2381, '2018-08-21 17:06:00', 'Tests', '13904885', './upload/aaa.pdf', 'New', 0),
(57, 2381, '2018-08-21 17:06:00', 'Tests', '14700581', './upload/aaa.pdf', 'New', 0),
(58, 2381, '2018-08-21 17:06:00', 'Tests', '25401061', './upload/aaa.pdf', 'New', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dep_id`);

--
-- Indexes for table `employ`
--
ALTER TABLE `employ`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
