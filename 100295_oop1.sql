-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2018 at 09:02 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `100295_oop1`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Department Name` text NOT NULL,
  `Department ID` int(50) NOT NULL,
  `Department Job group` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeID` varchar(6) NOT NULL,
  `EmployeeName` text NOT NULL,
  `DateOfBirth` int(11) NOT NULL,
  `DepartmentID` int(11) NOT NULL,
  `NationalID` int(8) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeID`, `EmployeeName`, `DateOfBirth`, `DepartmentID`, `NationalID`, `PASSWORD`) VALUES
('A1234', 'Ron', 1997, 12345, 0, '1234oop'),
('63729', 'Juma', 1889, 73688, 112326, 'tryueio'),
('ADMIN', 'Simon', 1992, 1111, 1112123, 'none'),
('32321', 'Patrice', 1987, 12321, 1121212, 'point123'),
('373728', 'Peter', 1657, 6653, 1123234, 'terwy'),
('123987', 'James', 1999, 4454, 11111187, 'Jamey1111'),
('8976', 'Janet ', 1768, 4456, 11223212, 'Janet1234'),
('09867', 'Joan', 1999, 5545, 11281789, 'Hello123'),
('151515', 'TITUS', 1998, 3354, 11767898, 'passqwerty'),
('1234', 'Ernest', 1980, 1232, 88789765, 'ytuio');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product ID` int(50) NOT NULL,
  `Product Name` varchar(50) NOT NULL,
  `Price` int(50) NOT NULL,
  `Product Category` text NOT NULL,
  `Supplier` varchar(50) NOT NULL,
  `Supplier ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `Supplier ID` int(10) NOT NULL,
  `Supplier Name` varchar(50) NOT NULL,
  `Product Type` text NOT NULL,
  `Supplier Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Department ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`NationalID`),
  ADD KEY `Department ID` (`DepartmentID`),
  ADD KEY `NationalID` (`NationalID`),
  ADD KEY `EmployeeID` (`EmployeeID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product ID`),
  ADD KEY `Supplier ID` (`Supplier ID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`Supplier ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
