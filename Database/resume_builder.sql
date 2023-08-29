-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2023 at 01:11 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resume_builder`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic`
--

CREATE TABLE `academic` (
  `email` varchar(20) NOT NULL,
  `board_university` varchar(20) NOT NULL,
  `school_college` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL,
  `yop` varchar(5) NOT NULL,
  `per_cgpa` varchar(5) NOT NULL,
  `divison` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `academic`
--

INSERT INTO `academic` (`email`, `board_university`, `school_college`, `course`, `yop`, `per_cgpa`, `divison`) VALUES
('yash@gmail.com', 'CBSE', 'Amrapali Institute', 'BCA', '2023-', '70', 'A'),
('yash@gmail.com', 'Cbse', 'amrapali', 'bca', '2023-', '70', 'A'),
('yash@gmail.com', 'Cbse', 'amrapali', 'bca', '2023-', '70', 'A'),
('vishwajeet@gmail.com', 'CBSE', 'Amrapali', 'BCA', '2023-', '80', 'A+');

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE `contact_info` (
  `email` varchar(20) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `house_no` varchar(20) NOT NULL,
  `street` varchar(20) NOT NULL,
  `pin_code` varchar(10) NOT NULL,
  `postoffice` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `date_of_entry` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_info`
--

INSERT INTO `contact_info` (`email`, `contact_no`, `house_no`, `street`, `pin_code`, `postoffice`, `city`, `district`, `state`, `country`, `date_of_entry`) VALUES
('yash@gmail.com', '123456789', '1234', 'Samta Ashram Gali', '263139', 'Bareilly Road', 'Haldwani', 'Nainital', 'Uttrakhand', 'India', ''),
('yash@gmail.com', '12345678', '1234', 'Samta Ashram Gali', '263139', 'blypostoffice', 'Haldwani', 'Nainital', 'Uttrakhand', 'India', ''),
('yash@gmail.com', '1234567', '1234', 'Samta Ashram Gali', '263139', 'blypostoffice', 'Haldwani', 'Nainital', 'Uttrakhand', 'India', ''),
('yash@gmail.com', '1234567', '1234', 'Samta Ashram Gali', '263139', 'blypostoffice', 'Haldwani', 'Nainital', 'Uttrakhand', 'India', ''),
('yash@gmail.com', '1234567', '1234', 'Samta Ashram Gali', '263139', 'blypostoffice', 'Haldwani', 'Nainital', 'Uttrakhand', 'India', ''),
('vishwajeet@gmail.com', '1234567', '2345', 'myStreet', 'MyPincode', 'MyPostOffice', 'Pta nahi bhai', 'no', 'Odisha', 'India', '');

-- --------------------------------------------------------

--
-- Table structure for table `full_info`
--

CREATE TABLE `full_info` (
  `email` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `maritial_status` varchar(11) NOT NULL,
  `nationality` varchar(21) NOT NULL,
  `father_name` varchar(20) NOT NULL,
  `mother_name` varchar(20) NOT NULL,
  `date_of_entry` varchar(11) NOT NULL,
  `contact_no` varchar(11) NOT NULL,
  `house_no` varchar(30) NOT NULL,
  `street` varchar(30) NOT NULL,
  `pin_code` varchar(11) NOT NULL,
  `postoffice` varchar(11) NOT NULL,
  `city` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `board_university` varchar(21) NOT NULL,
  `school_college` varchar(21) NOT NULL,
  `course` varchar(21) NOT NULL,
  `yop` varchar(20) NOT NULL,
  `percentage` varchar(20) NOT NULL,
  `division` varchar(20) NOT NULL,
  `company_name` varchar(20) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `date_of_joining` varchar(20) NOT NULL,
  `date_of_leaving` varchar(20) NOT NULL,
  `responsibilities` varchar(20) NOT NULL,
  `objectives` varchar(20) NOT NULL,
  `career_growth` varchar(20) NOT NULL,
  `declearation` varchar(20) NOT NULL,
  `strength` varchar(20) NOT NULL,
  `key_skills` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `full_info`
--

INSERT INTO `full_info` (`email`, `fname`, `mname`, `lname`, `dob`, `gender`, `maritial_status`, `nationality`, `father_name`, `mother_name`, `date_of_entry`, `contact_no`, `house_no`, `street`, `pin_code`, `postoffice`, `city`, `district`, `state`, `country`, `board_university`, `school_college`, `course`, `yop`, `percentage`, `division`, `company_name`, `designation`, `date_of_joining`, `date_of_leaving`, `responsibilities`, `objectives`, `career_growth`, `declearation`, `strength`, `key_skills`) VALUES
('yash@gmail.com', 'yash', 'kumar', 'sharma', '2002-02-06', 'male', 'single', 'Indian', 'Kishan Kumar Sharma', 'Savita Sharma', '2023-07-24', '1234567', '1234', 'Samta Ashram Gali', '263139', 'blypostoffi', 'Haldwani', 'Nainital', 'Uttrakhand', 'India', 'Cbse', 'amrapali', 'bca', '2023-10-01', '70', 'A', 'RoseFort INC', 'developer', '2020-04-12', '2023-07-11', 'development & design', 'experience increase', 'yes', 'no', 'many', 'coding,development,designing'),
('vishwajeet@gmail.com', 'Vishwajeet', 'singh', 'Prashar', '2002-08-07', 'Male', 'Single', 'Indian', 'mr Prashar', 'Mrs Prashar', '2023-07-23', '1234567', '2345', 'myStreet', 'MyPincode', 'MyPostOffic', 'Pta nahi bhai', 'no', 'Odisha', 'India', 'CBSE', 'Amrapali', 'BCA', '2023-12-12', '80', 'A+', 'VishwajeetInc', 'CEO', '2020-05-05', '0001-01-01', 'handle everything', 'become an expert', 'No1 comapnu', 'to be best', 'bhut saari h ', 'management,');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`, `contact`) VALUES
('aditya@gmail.com', 'adi123', '9876543'),
('vishwa@gmail.com', 'vishwa', '2345'),
('vishwajeet@gmail.com', 'vishwa123', '123456789'),
('yash@gmail.com', 'yash123', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `personal_info`
--

CREATE TABLE `personal_info` (
  `fname` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `maritial_status` varchar(10) NOT NULL,
  `nationality` varchar(15) NOT NULL,
  `father_name` varchar(20) NOT NULL,
  `mother_name` varchar(20) NOT NULL,
  `date_of_entry` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personal_info`
--

INSERT INTO `personal_info` (`fname`, `email`, `mname`, `lname`, `dob`, `gender`, `maritial_status`, `nationality`, `father_name`, `mother_name`, `date_of_entry`) VALUES
('yash', 'yash@gmail.com', 'kumar', 'sharma', '2002-02-06', 'male', 'single', 'Indian', 'Kishan Sharma', 'Savita Sharma', '2023-07-24'),
('yash', 'yash@gmail.com', 'kumar', 'sharma', '2002-02-06', 'male', 'single', 'Indian', 'Kishan Kumar Sharma', 'Savita Sharma', '2023-07-24'),
('Vishwajeet', 'vishwajeet@gmail.com', 'singh', 'Prashar', '2002-08-07', 'Male', 'Single', 'Indian', 'mr Prashar', 'Mrs Prashar', '2023-07-23');

-- --------------------------------------------------------

--
-- Table structure for table `professional_info`
--

CREATE TABLE `professional_info` (
  `email` varchar(20) NOT NULL,
  `company_name` varchar(20) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `date_of_joining` varchar(20) NOT NULL,
  `date_of_leaving` varchar(20) NOT NULL,
  `responsibilities` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `professional_info`
--

INSERT INTO `professional_info` (`email`, `company_name`, `designation`, `date_of_joining`, `date_of_leaving`, `responsibilities`) VALUES
('yash@gmail.com', 'YashInc', 'manager', '2020-04-20', '2023-04-15', 'manage all the staff'),
('yash@gmail.com', 'YashInc', 'ceo', '2023-07-07', '2023-07-09', 'handle everything'),
('vishwajeet@gmail.com', 'VishwajeetInc', 'CEO', '2020-05-05', '0001-01-01', 'handle everything'),
('yash@gmail.com', 'RoseFort INC', 'developer', '2020-04-12', '2023-07-11', 'development & design');

-- --------------------------------------------------------

--
-- Table structure for table `resume_info`
--

CREATE TABLE `resume_info` (
  `email` varchar(100) NOT NULL,
  `objectives` varchar(100) NOT NULL,
  `career_growth` varchar(50) NOT NULL,
  `declearation` varchar(50) NOT NULL,
  `strength` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resume_info`
--

INSERT INTO `resume_info` (`email`, `objectives`, `career_growth`, `declearation`, `strength`) VALUES
('yash@gmail.com', 'increase Experience', 'yes', 'no', 'many'),
('yash@gmail.com', 'experience increase', 'yes', 'no', 'many'),
('vishwajeet@gmail.com', 'become an expert', 'No1 comapnu', 'to be best', 'bhut saari h ');

-- --------------------------------------------------------

--
-- Table structure for table `skill_info`
--

CREATE TABLE `skill_info` (
  `email` varchar(20) NOT NULL,
  `key_skills` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skill_info`
--

INSERT INTO `skill_info` (`email`, `key_skills`) VALUES
('yash@gmail.com', 'so many'),
('yash@gmail.com', 'so many'),
('vishwajeet@gmail.com', 'management,'),
('yash@gmail.com', 'management'),
('yash@gmail.com', 'coding,development,designing');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
