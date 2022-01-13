-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 12, 2022 at 10:43 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `detraja3_shubaprada`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `LoginID` int(11) NOT NULL,
  `UserType` int(11) NOT NULL,
  `FirstName` varchar(350) NOT NULL,
  `LastName` varchar(350) NOT NULL,
  `FullName` varchar(350) NOT NULL,
  `DOB` text NOT NULL,
  `Gender` varchar(350) NOT NULL,
  `AddressLine1` text NOT NULL,
  `AddressLine2` text NOT NULL,
  `PinCode` text NOT NULL,
  `City` varchar(350) NOT NULL,
  `State` varchar(350) NOT NULL,
  `Country` varchar(350) NOT NULL,
  `Phone` text NOT NULL,
  `Password` varchar(360) NOT NULL,
  `Email` varchar(350) NOT NULL,
  `ProfilePic` mediumblob NOT NULL,
  `QRCodePic` mediumblob NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` enum('ACTIVE','INACTIVE','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`LoginID`, `UserType`, `FirstName`, `LastName`, `FullName`, `DOB`, `Gender`, `AddressLine1`, `AddressLine2`, `PinCode`, `City`, `State`, `Country`, `Phone`, `Password`, `Email`, `ProfilePic`, `QRCodePic`, `CreatedAt`, `Status`) VALUES
(1, 1, 'Admin', 'Detrans', 'DtransAdmin', '28-10-1989', 'Female', 'Banglore', '', '', '', '', '', '9740313366', 'e64b78fc3bc91bcbc7dc232ba8ec59e0', 'admin@detrans.io', '', '', '2021-10-25 17:53:40', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `MemberID` int(11) NOT NULL,
  `FirstName` varchar(350) NOT NULL,
  `Lastname` varchar(350) NOT NULL,
  `FullName` varchar(350) NOT NULL,
  `DOB` varchar(350) NOT NULL,
  `Gender` varchar(350) NOT NULL,
  `AddressLine1` text NOT NULL,
  `AddressLine2` text NOT NULL,
  `PinCode` text NOT NULL,
  `City` text NOT NULL,
  `State` text NOT NULL,
  `Country` text NOT NULL,
  `Phone` varchar(350) NOT NULL,
  `Email` varchar(350) NOT NULL,
  `ProfilePic` blob NOT NULL,
  `QRCodePic` blob NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Status` enum('ACTIVE','INACTIVE') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`MemberID`, `FirstName`, `Lastname`, `FullName`, `DOB`, `Gender`, `AddressLine1`, `AddressLine2`, `PinCode`, `City`, `State`, `Country`, `Phone`, `Email`, `ProfilePic`, `QRCodePic`, `CreatedAt`, `UpdatedAt`, `Status`) VALUES
(1, 'Sanjana', 'Aradya', 'Sanjana Aradya', '2022-01-05', 'Male', 'Malavalli', 'Mandya', '571430', 'Mandya', 'Karnataka', 'India', '9108756811', 'Sanjana@gmail.com', 0x746573742e6a7067, 0x746573742e696d67, '2021-11-08 15:57:15', '2022-01-10 18:30:44', 'ACTIVE'),
(2, 'Sowmya', 'shree', 'SowmyashreeLR', '28-10-1989', 'F', 'Mysore', 'test', '123', 'Mysore', 'KA', 'INDIA', '9740313967', 'sowmya@gmail.com', '', '', '2021-11-08 16:01:09', '2022-01-10 16:42:01', 'ACTIVE'),
(3, 'Anu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-11-14 20:23:59', '2022-01-04 15:59:37', 'INACTIVE'),
(4, 'Sowmya', 'shree', 'SowmyashreeLR', '28-10-1989', 'F', 'Mysore', 'test', '123', 'Mysore', 'KA', 'INDIA', '9740313968', 'sowmya@gmail.com', '', '', '2021-11-15 08:03:58', '2022-01-08 18:27:09', 'ACTIVE'),
(5, 'Sowmya', 'shree', 'SowmyashreeLR', '28-10-1989', 'F', 'Mysore', 'test', '123', 'Mysore', 'KA', 'INDIA', '9740313968', 'sowmya@gmail.com', '', '', '2021-11-22 18:43:35', '2022-01-06 14:55:49', 'ACTIVE'),
(6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-11-24 21:25:20', '2021-12-30 10:57:39', 'ACTIVE'),
(7, 'Sowmya', 'shree', 'Sowmyashree', '28-10-1989', 'F', 'Mysore', '', '', '', '', '', '9740313366', 'sowmya@gmail.com', '', '', '2021-11-25 17:32:59', '0000-00-00 00:00:00', 'ACTIVE'),
(8, 'Sowmya', 'shree', 'Sowmyashree', '28-10-1989', 'F', 'Mysore', '', '', '', '', '', '9740313366', 'sowmya@gmail.com', '', '', '2021-11-25 17:33:02', '0000-00-00 00:00:00', 'ACTIVE'),
(9, 'Sowmya', 'shree', 'Sowmyashree', '28-10-1989', 'F', 'Mysore', '', '', '', '', '', '9740313366', 'sowmya@gmail.com', '', '', '2021-11-25 21:28:51', '0000-00-00 00:00:00', 'ACTIVE'),
(10, 'Sowmya', 'shree', 'Sowmyashree', '28-10-1989', 'F', 'Mysore', '', '', '', '', '', '9740313366', 'sowmya@gmail.com', '', '', '2021-11-25 21:32:07', '0000-00-00 00:00:00', 'ACTIVE'),
(11, 'Sowmya', 'shree', 'Sowmyashree', '28-10-1989', 'F', 'Mysore', '', '', '', '', '', '9740313366', 'sowmya@gmail.com', '', '', '2021-11-25 21:35:16', '0000-00-00 00:00:00', 'ACTIVE'),
(12, 'Sowmya', 'shree', 'Sowmyashree', '28-10-1989', 'F', 'Mysore', '', '', '', '', '', '9740313366', 'sowmya@gmail.com', '', '', '2021-12-07 13:09:18', '0000-00-00 00:00:00', 'ACTIVE'),
(13, 'Sowmya', 'shree', 'Sowmyashree', '28-10-1989', 'F', 'Mysore', '', '', '', '', '', '9740313366', 'sowmya@gmail.com', '', '', '2021-12-07 13:10:45', '0000-00-00 00:00:00', 'ACTIVE'),
(14, 'Sowmya', 'shree', 'Sowmyashree', '28-10-1989', 'F', 'Mysore', '', '', '', '', '', '9740313366', 'sowmya@gmail.com', '', '', '2021-12-07 13:31:26', '0000-00-00 00:00:00', 'ACTIVE'),
(15, 'Sowmya', 'shree', 'Sowmyashree', '28-10-1989', 'F', 'Mysore', '', '', '', '', '', '9740313366', 'sowmya@gmail.com', '', '', '2021-12-07 13:31:51', '0000-00-00 00:00:00', 'ACTIVE'),
(16, 'Sowmya', 'shree', 'Sowmyashree', '28-10-1989', 'F', 'Mysore', '', '', '', '', '', '9740313366', 'sowmya@gmail.com', '', '', '2021-12-07 13:40:12', '0000-00-00 00:00:00', 'ACTIVE'),
(17, 'Sowmya', 'shree', 'Sowmyashree', '28-10-1989', 'F', 'Mysore', '', '', '', '', '', '9740313366', 'sowmya@gmail.com', '', '', '2021-12-07 13:40:15', '0000-00-00 00:00:00', 'ACTIVE'),
(18, 'Sowmya', 'shree', 'Sowmyashree', '28-10-1989', 'F', 'Mysore', 'test', '123', 'Mysore', 'KA', 'INDIA', '9740313966', 'sowmya@gmail.com', '', '', '2021-12-07 15:48:20', '0000-00-00 00:00:00', 'ACTIVE'),
(19, 'Nanda', 'Kumar', 'Nanda Gokul', '5-06-1992', 'Male', 'Kebbehalla', 'Sunkdakatte', '560091', 'Banglore', 'Karnataka', 'India', '9986995515', 'nandagokul@gmail.com', '', '', '2021-12-07 15:50:36', '0000-00-00 00:00:00', 'ACTIVE'),
(20, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-12-07 16:30:18', '2021-12-30 14:12:50', 'ACTIVE'),
(21, 'Nanda', 'Kumar', 'Nanda Gokul', '5-06-1992', 'Male', 'Kebbehalla', 'Sunkdakatte', '560091', 'Banglore', 'Karnataka', '', '', 'nandagokul@gmail.com', '', '', '2021-12-07 16:30:27', '0000-00-00 00:00:00', 'ACTIVE'),
(22, 'Sowmya', 'shree', 'Sowmyashree', '28-10-1989', 'F', 'Mysore', 'test', '123', 'Mysore', 'KA', 'INDIA', '9740313969', 'sowmya@gmail.com', '', '', '2021-12-08 12:02:39', '0000-00-00 00:00:00', 'ACTIVE'),
(23, 'Sowmya', 'shree', 'Sowmyashree', '28-10-1989', 'F', 'Mysore', 'test', '123', 'Mysore', 'KA', 'INDIA', '9740313967', 'sowmya@gmail.com', '', '', '2021-12-08 12:03:55', '0000-00-00 00:00:00', 'ACTIVE'),
(24, 'Shivu', 'Kumar', 'Shivu Gokul', '5-06-1992', 'Male', 'Kebbehalla', 'Sunkdakatte', '560091', 'Banglore', 'Karnataka', '', '7760739932', 'nandagokul@gmail.com', '', '', '2021-12-08 12:34:22', '0000-00-00 00:00:00', 'ACTIVE'),
(25, 'Bhavana', 'B L', 'BhavanaB L', '2021-12-08', 'Female', 'Byraveshwara Nagar', 'Sunkadakatte', '560091', 'Bengaluru', 'Karnataka', 'India', '07760739933', 'bhavana@gmail.com', '', '', '2021-12-08 18:06:55', '0000-00-00 00:00:00', 'ACTIVE'),
(26, 'Shivu', 'Kumar', 'Shivu Gokul', '16-7-1995', 'Male', 'Kebbehalla', 'Sunkdakatte', '560091', 'Banglore', 'Karnataka', 'India', '7760739931', 'nandagokul@gmail.com', '', '', '2021-12-14 12:24:31', '0000-00-00 00:00:00', 'ACTIVE'),
(27, 'Bhavana', 'B L', 'BhavanaB L', '2021-12-17', 'Female', 'Byraveshwara Nagar', 'Sunkadakatte', '560091', 'Bengaluru', 'Karnataka', 'India', '0776067646', 'bhavana@gmail.com', '', '', '2021-12-17 22:15:07', '0000-00-00 00:00:00', 'ACTIVE'),
(28, 'Sowmya', 'shree', 'Sowmyashree', '28-10-1989', 'F', 'Mysore', 'test', '123', 'Mysore', 'KA', 'INDIA', '9740313968', 'sowmya@gmail.com', '', '', '2021-12-20 11:09:14', '0000-00-00 00:00:00', 'ACTIVE'),
(29, 'Gagana', 'G N', 'GaganaG N', '2021-12-23', 'Female', 'Chandravalli Thota', 'Shivamoggga', '560082', 'Bengaluru', 'Karnataka', 'India', '7760736373', 'gagana@gmail.com', '', '', '2021-12-23 12:59:08', '0000-00-00 00:00:00', 'ACTIVE'),
(30, 'Gagana', 'G N', 'Gagana G N', '2021-12-24', 'Female', 'Chandravalli Thota', 'Shivamoggga', '560082', 'Bengaluru', 'Karnataka', 'India', '07760736378', 'gagana@gmail.com', '', '', '2021-12-24 14:42:54', '0000-00-00 00:00:00', 'ACTIVE'),
(31, 'Sanjana', 'Aradhya', 'SanjanaAradhya', '18-02-2000', 'F', 'Malavalli', 'Malavalli', '571430', 'Mysore', 'KA', 'INDIA', '9538161323', 'sanjana@gmail.com', '', '', '2021-12-24 16:44:30', '0000-00-00 00:00:00', 'ACTIVE'),
(32, 'Bhavana', 'B L', 'Bhavana B L', '2021-12-27', 'Other', 'Byraveshwara Nagar', 'Sunkadakatte', '560091', 'Bengaluru', 'Karnataka', 'India', '07760739931', 'bhavana@gmail.com', '', '', '2021-12-27 13:04:29', '0000-00-00 00:00:00', 'ACTIVE'),
(33, 'Gagana', 'G N', 'Gagana G N', '2021-12-27', 'Female', 'Chandravalli Thota', 'Shivamoggga', '560082', 'Bengaluru', 'Karnataka', 'India', '07760736373', 'gagana@gmail.com', '', '', '2021-12-27 15:13:23', '0000-00-00 00:00:00', 'ACTIVE'),
(34, 'Shivu', 'Kumar', 'Shivu Gokul', '16-7-1995', 'Male', 'Kebbehalla', 'Sunkdakatte', '560091', 'Banglore', 'Karnataka', 'India', '7760739666', 'nandagokul@gmail.com', '', '', '2022-01-03 16:17:11', '0000-00-00 00:00:00', 'ACTIVE'),
(35, 'Shwetha', 'Keerthi', 'Shwetha Keerthi', '2022-01-04', 'Female', 'Yashwathpura', 'Mahalakshi Layout', '560068', 'Bengaluru', 'Karnataka', 'India', '077607678', 'shwetha@gmail.com', '', '', '2022-01-03 18:11:46', '0000-00-00 00:00:00', 'ACTIVE'),
(36, 'Bhavana', 'B L', 'Bhavana B L', '2022-01-13', 'Female', 'Byraveshwara Nagar', 'Sunkadakatte', '560091', 'Bengaluru', 'Karnataka', 'India', '0776073993345', 'bhavana@gmail.com', '', '', '2022-01-08 18:45:35', '0000-00-00 00:00:00', 'ACTIVE'),
(37, 'Shwetha', 'shree', '', '28-10-1989', 'F', 'Mysore', 'test', '123', 'Mysore', 'KA', 'INDIA', '9740313967', 'sowmya@gmail.com', '', '', '2022-01-10 15:05:14', '2022-01-10 17:10:27', 'ACTIVE'),
(38, '', 'HT', 'Latha HT', '12/1/1998', 'female', 'sbm colony', 'mathikere', '560054\n', 'bangalore', 'Karnataka', 'INDIA', '917996871676', 'latha@gmail.com', '', '', '2022-01-10 16:01:50', '0000-00-00 00:00:00', 'ACTIVE'),
(39, 'Varsha', 'Bharadwaj', 'Varsha Bharadwaj', '2022-01-11', 'Female', 'Kolar', 'kottnur', '564562', 'Kolar', 'Karnataka', 'India', '7175304305', 'varsha@detrans.io', '', '', '2022-01-11 15:07:00', '2022-01-11 15:11:43', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `scheme`
--

CREATE TABLE `scheme` (
  `schemeId` int(11) NOT NULL,
  `schemeName` varchar(350) NOT NULL,
  `description` text NOT NULL,
  `noOfEMI` varchar(350) NOT NULL,
  `schemeAmount` varchar(350) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Status` enum('ACTIVE','INACTIVE') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scheme`
--

INSERT INTO `scheme` (`schemeId`, `schemeName`, `description`, `noOfEMI`, `schemeAmount`, `CreatedAt`, `UpdatedAt`, `Status`) VALUES
(1, 'Scheme1', '20-11-2021', '15', '30000', '2021-11-15 08:27:50', '0000-00-00 00:00:00', 'ACTIVE'),
(2, 'Scheme Test', 'Test', '12', '12000', '2022-01-07 15:27:44', '2021-12-31 10:48:27', 'ACTIVE'),
(3, 'Scheme1', '20-11-2021', '15', '30000', '2021-12-24 16:21:44', '2021-12-24 16:37:46', 'INACTIVE'),
(4, 'Scheme2', '24-12-2021', '10', '40000', '2021-12-24 16:25:41', '0000-00-00 00:00:00', 'ACTIVE'),
(5, 'Scheme1', 'test', '15', '30000', '2021-12-31 08:45:38', '0000-00-00 00:00:00', 'ACTIVE'),
(6, 'Scheme1', 'test', '15', '30000', '2021-12-31 08:46:35', '0000-00-00 00:00:00', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `TypeID` int(11) NOT NULL,
  `Type` varchar(350) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` enum('ACTIVE','INACTIVE','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`TypeID`, `Type`, `CreatedAt`, `Status`) VALUES
(1, 'Admin', '2021-10-25 17:58:04', 'ACTIVE'),
(2, 'Member', '2021-10-25 17:58:04', 'ACTIVE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`LoginID`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`MemberID`);

--
-- Indexes for table `scheme`
--
ALTER TABLE `scheme`
  ADD PRIMARY KEY (`schemeId`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`TypeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `LoginID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `MemberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `scheme`
--
ALTER TABLE `scheme`
  MODIFY `schemeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `TypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
