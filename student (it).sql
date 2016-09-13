-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 11, 2013 at 03:08 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `a`
--

CREATE TABLE IF NOT EXISTS `a` (
  `userid` varchar(50) DEFAULT NULL,
  `Lastname` varchar(50) DEFAULT NULL,
  `Firstname` varchar(50) DEFAULT NULL,
  `Middlename` varchar(50) DEFAULT NULL,
  `tenthresult` varchar(10) DEFAULT NULL,
  `twelthresult` varchar(10) DEFAULT NULL,
  `sem1` varchar(10) DEFAULT NULL,
  `sem2` varchar(10) DEFAULT NULL,
  `sem3` varchar(10) DEFAULT NULL,
  `sem4` varchar(10) DEFAULT NULL,
  `sem5` varchar(10) DEFAULT NULL,
  `sem6` varchar(10) DEFAULT NULL,
  `cgpa` varchar(10) DEFAULT NULL,
  `Mobileno` bigint(20) DEFAULT NULL,
  `Homeno` bigint(20) DEFAULT NULL,
  `Diplomaresult` varchar(10) DEFAULT NULL,
  `branch` varchar(10) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(25) DEFAULT NULL,
  `Guardian` text,
  `address` text,
  `year` bigint(10) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `areaofinterest` text,
  `references` text,
  `branchid` int(2) DEFAULT NULL,
  `applied` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `a`
--

INSERT INTO `a` (`userid`, `Lastname`, `Firstname`, `Middlename`, `tenthresult`, `twelthresult`, `sem1`, `sem2`, `sem3`, `sem4`, `sem5`, `sem6`, `cgpa`, `Mobileno`, `Homeno`, `Diplomaresult`, `branch`, `gender`, `DOB`, `Guardian`, `address`, `year`, `city`, `areaofinterest`, `references`, `branchid`, `applied`) VALUES
('10ce002@charusat.edu.in', 'ANANDWANI', 'HIREN', 'TEJARAMBHAI', '83.38', '75.4', '8.71', '8.43', '8.87', '8.11', '7.76', '7.69', '8.27', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce006@charusat.edu.in', 'BHATT', 'BHRUGU', 'MAHESHKUMAR', '92.77', '61.4', '8.78', '9.26', '9.4', '9.26', '9.07', '8.79', '9.1', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce008@charusat.edu.in', 'CHANDARANA', 'KAUSHA', 'DHIRENDRABHAI', '87.85', '70', '8.75', '9.36', '8.83', '8.56', '8.69', '8.79', '8.84', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce009@charusat.edu.in', 'CHAUDHARI', 'PARTHKUMAR', 'MANUBHAI', '88.62', '73.8', '7.71', '8.46', '8.57', '8.11', '7.28', '8', '8.03', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce015@charusat.edu.in', 'CHOKSI', 'MEGHAVI', 'HIMANSHUBHAI', '84', '55.8', '9.39', '9.13', '8.7', '8.44', '8.86', '8.52', '8.84', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce018@charusat.edu.in', 'DALWADI', 'ASHITKUMAR', 'NAVNITKUMAR', '85.85', '70.6', '8.67', '8.26', '8.8', '7.85', '7.34', '7.48', '8.08', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce020@charusat.edu.in', 'DAVE', 'ARPITA', 'DEVESH', '88.46', '82.15', '8.96', '9.23', '9.6', '8.85', '8.28', '8.93', '8.98', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce021@charusat.edu.in', 'DESAI', 'TANVI', 'MUKESHBHAI', '88.77', '71.08', '9.39', '9.76', '9.8', '9.7', '9.24', '9', '9.49', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce022@charusat.edu.in', 'DHANANI', 'BHADRESH', 'BABUBHAI', '86.62', '82', '8.14', '7.83', '9.43', '9.11', '8.52', '8.76', '8.63', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce024@charusat.edu.in', 'DOSHI', 'POOJA', 'RAKESHKUMAR', '92.92', '86', '8.21', '8.66', '8.9', '8.15', '8', '8.07', '8.34', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce025@charusat.edu.in', 'DUDHAT', 'CHIRANGIBEN', 'VINODRAI', '88.46', '83.2', '8.6', '9.3', '9.53', '9.52', '9.69', '9.45', '9.35', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce026@charusat.edu.in', 'GANDHI', 'MIHIR', 'RAJENDRA', '89.54', '82', '9.14', '9.26', '9.43', '9.74', '8.9', '9.24', '9.28', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce028@charusat.edu.in', 'GHOSH', 'SOURAKA', 'BARUN', '85.85', '78.6', '8.42', '9.16', '9.27', '8.56', '8.59', '8.69', '8.79', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce029@charusat.edu.in', 'GOHEL', 'ANANDI', 'VALLABHBHAI', '88.77', '70.4', '7.28', '7.96', '8.6', '8.41', '8.52', '9.07', '8.31', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce030@charusat.edu.in', 'GOHIL', 'BHAGIRATHSINH', 'BALDEVSINH', '78.15', '89', '8', '8.33', '8.83', '9.04', '8.21', '8.76', '8.53', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce032@charusat.edu.in', 'GOTHI', 'PAYAL', 'VRAJLAL', '87.38', '73.8', '8.82', '9.43', '9.57', '8.85', '9.24', '9.31', '9.21', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce034@charusat.edu.in', 'GUPTA', 'RIHA', 'SURESH', '83.38', '74.4', '8.78', '9.03', '9', '9.3', '8.34', '8.48', '8.82', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce035@charusat.edu.in', 'HEMANI', 'AMEE', 'JAYESHBHAI', '85.38', '66.8', '8.96', '8.53', '9.23', '8.78', '8.76', '9.17', '8.91', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce037@charusat.edu.in', 'JARIWALA', 'JIGAR', 'KISHORBHAI', '85.54', '81.8', '8.64', '8.83', '9.2', '8.93', '8.45', '8.69', '8.79', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce038@charusat.edu.in', 'JARIWALA', 'VAIDEHI', 'KETANKUMAR', '88', '78.8', '9.1', '9.26', '9.43', '9.52', '9.17', '9.1', '9.27', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce048@charusat.edu.in', 'KATHIRIYA', 'AKASH', 'BHARATBHAI', '90.46', '77', '8.03', '8.43', '8.8', '8.07', '7.48', '7.72', '8.1', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce049@charusat.edu.in', 'KOSTI', 'JAGRUT', 'VIJAYPAL', '87.38', '82.2', '7.82', '8.83', '9.1', '8.74', '7.9', '7.76', '8.36', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce052@charusat.edu.in', 'MAJITHIA', 'NISHIT', 'MAHENDRABHAI', '90.77', '78.8', '9.17', '9.5', '9.37', '8.63', '8.45', '8.55', '8.95', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce053@charusat.edu.in', 'MAKWANA', 'NIDHI', 'BHUPATKUMAR', '69', '74.6', '8.39', '8.16', '7.87', '8.26', '8.03', '7.93', '8.1', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce066@charusat.edu.in', 'PANDYA', 'NIRALI', 'MAHESHKUMAR', '90.31', '87.02', '9.21', '9.4', '9.83', '9.33', '9.17', '8.66', '9.27', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce067@charusat.edu.in', 'PANERI', 'KAUSHAL', 'ASHOKBHAI', '84.31', '79.60', '8.75', '7.8', '8.63', '8.48', '7.17', '7.56', '8.06', 9427571900, 2852653802, '', 'CE', 'male', '01/07/1993', 'Service', 'skdjfkjshdjfkhjhssdf', 2014, 'Junagadh', 'kjsdhkjashdkjh', 'ksdjfksjhdfkjksjdhf', 1, 1),
('10ce073@charusat.edu.in', 'PATEL', 'KOMAL', 'KISHORBHAI', '87.85', '72.6', '7.6', '7.9', '8.63', '8.78', '8.24', '8.34', '8.25', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce075@charusat.edu.in', 'PATEL', 'KUSH', 'DEVENDRABHAI', '90.77', '78.8', '9.6', '9.2', '9.47', '8.67', '8.45', '7.97', '8.9', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce078@charusat.edu.in', 'PATEL', 'NAUTAMIBEN', 'ALPESHKUMAR', '90.77', '85.2', '9.42', '9.43', '9.67', '9.67', '9.76', '9.52', '9.58', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce079@charusat.edu.in', 'PATEL', 'NEHA', 'PARSHOTTAM', '88', '75', '9.42', '9.46', '9.63', '9.11', '8.93', '9', '9.27', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce081@charusat.edu.in', 'PATEL', 'NIYATI', 'PRAKASHKUMAR', '92', '78', '8.1', '7.96', '8.37', '8.19', '8.07', '8.34', '8.17', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce083@charusat.edu.in', 'PATEL', 'PRINCE', 'DINESHBHAI', '86.77', '78', '8.71', '9.26', '9.6', '9.3', '8.86', '8.86', '9.1', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce091@charusat.edu.in', 'RAIYANI', 'TEJASKUMAR', 'ASHWINBHAI', '85.85', '80', '9.14', '8.76', '9.07', '7.96', '8.07', '8.1', '8.53', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce092@charusat.edu.in', 'SADARANI', 'VIDHI', 'BHARATKUMAR', '84', '81.8', '7.42', '9.03', '9.1', '7.52', '8.83', '8.41', '8.61', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce094@charusat.edu.in', 'SATYANI', 'PRAKASH', 'ATMARAM', '84.92', '80.4', '8.67', '8.33', '9.2', '8.78', '8.17', '7.34', '8.42', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce098@charusat.edu.in', 'SHAH', 'DHVANI', 'PRAKASH', '86.92', '81.2', '9.5', '9.2', '9.8', '9.56', '9.41', '9.41', '9.48', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce100@charusat.edu.in', 'SHAH', 'JANKI', 'SHAILESH', '82.02', '87.08', '8.5', '8.66', '9', '8.81', '7.79', '8.38', '8.53', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce102@charusat.edu.in', 'SHAH', 'SHREYA', 'ATUL', '88.62', '78.2', '8.82', '9', '9.53', '9.44', '9.1', '9.14', '9.17', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce106@charusat.edu.in', 'SOJITRA', 'POOJABEN', 'RANCHHODBHAI', '86.46', '80.2', '8.46', '8.96', '8.9', '8.74', '8.55', '8.17', '8.64', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce108@charusat.edu.in', 'SONI', 'JIMIT', 'JAYESHBHAI', '85.21', '81.6', '8.28', '8.56', '8.67', '8.37', '8.31', '8.31', '8.42', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce109@charusat.edu.in', 'SONI', 'KAVIT', 'RAKESHBHAI', '88.92', '81.2', '8.35', '8.9', '9', '8.7', '8.21', '8.55', '8.62', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce110@charusat.edu.in', 'RIDDHIBEN', 'HARSUKHBHAI', 'SUDANI', '86.77', '71.4', '7.21', '7.8', '9.3', '8.78', '8.76', '8.52', '8.4', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce120@charusat.edu.in', 'VORA', 'RUSHIT', 'PRAKASHBHAI', '74.92', '77.4', '8.6', '8.16', '9', '8.41', '8.31', '8.07', '8.43', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0),
('10ce121@charusat.edu.in', 'VYAS', 'DHWANI', 'RAKESH', '90.02', '91', '8.85', '8.93', '9.5', '9.15', '9.34', '9.41', '9.2', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `abc`
--

CREATE TABLE IF NOT EXISTS `abc` (
  `Userid` varchar(50) NOT NULL,
  `Firstname` varchar(45) NOT NULL,
  `Middlename` varchar(45) NOT NULL,
  `Lastname` varchar(45) NOT NULL,
  `Year` bigint(10) NOT NULL,
  `Branch` varchar(10) NOT NULL,
  `Class` varchar(35) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` varchar(25) NOT NULL,
  `Guardian` text NOT NULL,
  `Address` text NOT NULL,
  `City` varchar(25) NOT NULL,
  `Mobileno` bigint(20) NOT NULL,
  `Homeno` bigint(20) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `Tenthresult` int(11) NOT NULL,
  `Twelthresult` int(11) NOT NULL,
  `Diplomaresult` int(11) NOT NULL,
  `Sem 1` int(11) NOT NULL,
  `Sem 2` int(11) NOT NULL,
  `Sem 3` int(11) NOT NULL,
  `Sem 4` int(11) NOT NULL,
  `Sem 5` int(11) NOT NULL,
  `Sem 6` int(11) NOT NULL,
  `Sem 7` int(11) NOT NULL,
  `Sem 8` int(11) NOT NULL,
  `CGPA` float NOT NULL,
  `Areaofinterest` text NOT NULL,
  `References` text NOT NULL,
  `branch_id` int(2) DEFAULT NULL,
  `applied` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abc`
--

INSERT INTO `abc` (`Userid`, `Firstname`, `Middlename`, `Lastname`, `Year`, `Branch`, `Class`, `Gender`, `DOB`, `Guardian`, `Address`, `City`, `Mobileno`, `Homeno`, `Email`, `Tenthresult`, `Twelthresult`, `Diplomaresult`, `Sem 1`, `Sem 2`, `Sem 3`, `Sem 4`, `Sem 5`, `Sem 6`, `Sem 7`, `Sem 8`, `CGPA`, `Areaofinterest`, `References`, `branch_id`, `applied`) VALUES
('09ce006@charusat.edu.in', 'Ankur', 'Jagdishbhai', 'Lakhani', 2013, 'CE', '7th CE', 'male', '01/08/2003', 'serviceman', 'Maharaj Baug,"Shri Govind Krupa",Porbandar', 'Porbandar', 2147483647, 2147483647, 'ankurlakhani35@gmail.com', 93, 87, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 'Java', 'Mr.Chirag Radia TCS', 1, 0),
('09ce007@charusat.edu.in', 'Aru', 'Pankaj', 'Thanki', 2013, 'CE', '8th CE', 'male', '03/18/2013', 'chef', 'Maharaj Baug,"Shri Govind Krupa",porbandar', 'Porbandar', 2147483647, 2147483647, 'aryanthanki@gmail.com', 93, 80, 0, 9, 9, 9, 9, 9, 9, 9, 9, 9, 'Web development', 'Mr.Ashish Patel', 1, 0),
('10ce067@charusat.edu.in', 'Kaushal', 'Ashokbhai', 'Paneri', 2013, 'CE', '1', 'male', '06/04/2013', 'service', 'askjdnlkajndskljn', 'Junagadh', 99999999999, 9999999999, 'kapaneri@gmail.com', 88, 88, 88, 8, 8, 8, 8, 8, 8, 8, 8, 8, 'kajhsdkjaksjhd', 'uiasudkjadh', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `branch_ID` int(2) NOT NULL DEFAULT '0',
  `branch_name` varchar(5) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`branch_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_ID`, `branch_name`) VALUES
(1, 'CE'),
(2, 'IT'),
(3, 'EC'),
(4, 'ME'),
(5, 'EE'),
(6, 'CL'),
(7, 'MCA'),
(8, 'MSCIT');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `Date` varchar(25) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `Details` text NOT NULL,
  `Criteria` int(25) NOT NULL,
  `Deadline` varchar(10) NOT NULL,
  `userid` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(60) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`Date`, `Name`, `Details`, `Criteria`, `Deadline`, `userid`, `password`, `email`) VALUES
('08/17/2013', 'asdasd', 'asdasd', 8, '08/22/2013', 'a', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'a@a.com'),
('06/25/2013', 'abc', 'asjdkajshd', 8, '07/15/2013', 'abc', 'a9993e364706816aba3e25717850c26c9cd0d89d', NULL),
('06/26/2013', 'kap', 'aksjdkajshd', 8, '06/30/2013', 'kap', '592c9f89cf2cf49b41d7b6b616599e14929ce5dc', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_list`
--

CREATE TABLE IF NOT EXISTS `company_list` (
  `c_id` int(4) NOT NULL,
  `c_name` varchar(100) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_list`
--

INSERT INTO `company_list` (`c_id`, `c_name`) VALUES
(1, '(N)CODE SOLUTIONS,GNFC'),
(2, '360 Degree Technosoft'),
(3, 'ACCESS POINT'),
(4, 'ADVENT INFOTECH'),
(5, 'Alian Software'),
(6, 'Animatronicks'),
(7, 'Apex Global Solutions'),
(8, 'APTECH EDUCATION'),
(9, 'Argusoft'),
(10, 'Arraycom'),
(11, 'Artoon Solutions Pvt. Ltd.'),
(12, 'ASPIRATION SOLUTION'),
(13, 'Avi Web Solutions'),
(14, 'avisun'),
(15, 'Bhavya Technologies'),
(16, 'bidderboy.com'),
(17, 'BISAG'),
(18, 'Bliss Computers Pvt. Ltd.'),
(19, 'BSNL'),
(20, 'Byteware Software'),
(21, 'CALLIDUS SOFTZ'),
(22, 'Capital Technosys'),
(23, 'Civic Infotech'),
(24, 'compindia technologies'),
(25, 'COMPUBRAIN'),
(26, 'CONCOTECH TECHNOLOGY PVT. LTD.'),
(27, 'Connections Corporation'),
(28, 'COSMOS'),
(29, 'C_SAM'),
(30, 'CYGNET-INFOTECH PVVT. LTD.'),
(31, 'Dexter consultancy'),
(32, 'Dotsncoms'),
(33, 'DRC'),
(34, 'ECS INFOTECH'),
(35, 'E-Infochip'),
(36, 'ELECON INFORMATION TECH. LTD.'),
(37, 'ELECTROTHERM'),
(38, 'ELITECH SYSTEMS PVT. LTD.'),
(39, 'Elitecore Technologies'),
(40, 'elsner technologies'),
(41, 'epuIT services Pvt. Ltd.'),
(42, 'ESPIRITE SOLUTIONS'),
(43, 'Gateway Technolabs'),
(44, 'GLOBALTECH INDIA PVT. LTD.'),
(45, 'FinLogic,NJ Center'),
(46, 'GAP SERVICES'),
(47, 'GNFC Ltd.'),
(48, 'GUJARAT INFORMATICS LIMITED'),
(49, 'HOMELY HOMES LIVING ASSISTANCE'),
(50, 'iCoderz'),
(51, 'IDEAL SYSTEM PVT. LTD.'),
(52, 'IFFCO'),
(53, 'IIIT-H'),
(54, 'IIT Gandhinagar'),
(55, 'Image Software'),
(56, 'Implicit Solution'),
(57, 'INDAATA'),
(58, 'INDUSA'),
(59, 'Infostrech'),
(60, 'Infoweb Solutions'),
(61, 'ISRO'),
(62, 'IT India'),
(63, 'IT SOULS'),
(64, 'itfuturz'),
(65, 'iView Labs Pvt. Ltd.'),
(66, 'Jemes Multitech Consultancy'),
(67, 'Kintu'),
(68, 'KSF Internationals'),
(69, 'L & T,Chiyoda'),
(70, 'L&T'),
(71, 'Lamp Technologies Pvt. Ltd.'),
(72, 'LARSEN &TUBRO LTD.'),
(73, 'Mahindra Satyam'),
(74, 'MANTISSA INFOTECH PVT. LTD.'),
(75, 'Meditab'),
(76, 'MEGHANA INFOTECH  PVT. LTD.'),
(77, 'MICRATECH SOLUTIONS'),
(78, 'Mind Zone'),
(79, 'MINDROIT'),
(80, 'msinfotech'),
(81, 'MUDRA COMMUNICATION PVT. LTD.'),
(82, 'Narayan Krupa Info Pvt. Ltd.'),
(83, 'Nascent Info Tech'),
(84, 'National Institute of Fashion Technology'),
(85, 'Nestol IT Solutions Pvt. Std.'),
(86, 'Novatrice'),
(87, 'OM INFO SOLUTIONS'),
(88, 'OM Software'),
(89, 'ORANGE TECHNOLAB'),
(90, 'PANAMAX'),
(91, 'PHARAMA TECHNOLOGYINDEX.COM'),
(92, 'PRAGMA INFOTECH'),
(93, 'PRL'),
(94, 'RAGINI SOFT.(I) LTD.'),
(95, 'Reliance'),
(96, 'RK FUTURE TECHNOSOFT PVT. LTD.'),
(97, 'Rootwork ltd.'),
(98, 'SAFAL INFOSOFT PVT. LTD.'),
(99, 'SAI INFOSYSTEM'),
(100, 'Saikrupa IT Software Solutions'),
(101, 'SAPIENT CORPORATION LIMITED'),
(102, 'Shah net technologies pvt. ltd.'),
(103, 'shree hans webtechnology'),
(104, 'Si-Bridge Technologies'),
(105, 'SIHL'),
(106, 'SILVER TOUCH'),
(107, 'Skill Logica'),
(108, 'Skydel Infotech'),
(109, 'Skyward Techno Solutions Pvt. Ltd.'),
(110, 'Sleex Solution'),
(111, 'SMARTEC HOUSE'),
(112, 'SmartWave Technologies'),
(113, 'SMILE HEALTHCARE'),
(114, 'Softmark Solution Pvt. Ltd.'),
(115, 'SPC PRODUCTS'),
(116, 'Sristi NGO'),
(117, 'Stallion Archisys'),
(118, 'State Water Data Center- Gandhinagar'),
(119, 'Swami Construction'),
(120, 'Synergy Info'),
(121, 'SYNERGY SOFTWARE SOLUTIONS'),
(122, 'SYSTEM LEVEL SOLUTION'),
(123, 'Tata Consultancy Services'),
(124, 'Tatvasoft'),
(125, 'Tech Publication'),
(126, 'Technobrains Solutions'),
(127, 'TECHSTURE TECHNOLOGIES'),
(128, 'TESC Project Ltd.'),
(129, 'Teque7'),
(130, 'Tiny ERP Pvt. Ltd.'),
(131, 'TTH Consulting Services'),
(132, 'Vertex Technologies Pve. Ltd.'),
(133, 'VIRTUAL HIGHT IT SOLUTION'),
(134, 'VRSSPL'),
(135, 'WEB REVOLUTION'),
(136, 'WebKing Solutions'),
(137, 'Webline'),
(138, 'WEBYUG INDIA'),
(139, 'WIPRA WORLD WIDE'),
(140, 'Wishtree Technology'),
(141, 'Zion Technology');

-- --------------------------------------------------------

--
-- Table structure for table `company_login`
--

CREATE TABLE IF NOT EXISTS `company_login` (
  `userID` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_login`
--

INSERT INTO `company_login` (`userID`, `password`) VALUES
('infochip', '842fd8298316fa9b7a6404f813c9d147f11d6bc9'),
('tcs', '71fb8a1f9c65a1194b145b0aaf448b06e6730d57');

-- --------------------------------------------------------

--
-- Table structure for table `expert`
--

CREATE TABLE IF NOT EXISTS `expert` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Date` text NOT NULL,
  `Details` text NOT NULL,
  `Feedbacke` text NOT NULL,
  `Feedbacks` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `expert`
--

INSERT INTO `expert` (`id`, `Name`, `Date`, `Details`, `Feedbacke`, `Feedbacks`) VALUES
(2, 'Collabra Technologies', '2013-03-26', 'Collabra Technologies is an international company based on Ahmedabad in gujarat and has negotiated the quality of students communication skills specially for CHARUSAT.The company is in search of new young minds in the field of mobile application development.', 'The experts have shown interest towards mobile apllication development as the key point in the 2013 placement visit to gujarat.But the experts are not happy with the performance of the students.', 2),
(3, 'Panamax', '04/23/2013', 'Panamax is a very good software company that mainly works on web development using PHP and Jsp.', 'The students are technically sound but they lack the level of communication skills that is expected out of them particularly when it comes to recruitement.', 1),
(4, 'UPSC/GPSC Guideline', '07/09/2013', 'Police department of Gujarat (Surkshasetu society) with help of DySP, Andn and Mahelav Police station	PSI organize expert talk on career development in Govt positions like GAS / IAS by appearing UPSC/GPSC civil services examination.', 'Excellent', 5);

-- --------------------------------------------------------

--
-- Table structure for table `kap`
--

CREATE TABLE IF NOT EXISTS `kap` (
  `Userid` varchar(50) NOT NULL,
  `Firstname` varchar(45) NOT NULL,
  `Middlename` varchar(45) NOT NULL,
  `Lastname` varchar(45) NOT NULL,
  `Year` bigint(10) NOT NULL,
  `Branch` varchar(10) NOT NULL,
  `Class` varchar(35) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` varchar(25) NOT NULL,
  `Guardian` text NOT NULL,
  `Address` text NOT NULL,
  `City` varchar(25) NOT NULL,
  `Mobileno` bigint(20) NOT NULL,
  `Homeno` bigint(20) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `Tenthresult` int(11) NOT NULL,
  `Twelthresult` int(11) NOT NULL,
  `Diplomaresult` int(11) NOT NULL,
  `Sem 1` int(11) NOT NULL,
  `Sem 2` int(11) NOT NULL,
  `Sem 3` int(11) NOT NULL,
  `Sem 4` int(11) NOT NULL,
  `Sem 5` int(11) NOT NULL,
  `Sem 6` int(11) NOT NULL,
  `Sem 7` int(11) NOT NULL,
  `Sem 8` int(11) NOT NULL,
  `CGPA` float NOT NULL,
  `Areaofinterest` text NOT NULL,
  `References` text NOT NULL,
  `branch_id` int(2) DEFAULT NULL,
  `applied` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kap`
--

INSERT INTO `kap` (`Userid`, `Firstname`, `Middlename`, `Lastname`, `Year`, `Branch`, `Class`, `Gender`, `DOB`, `Guardian`, `Address`, `City`, `Mobileno`, `Homeno`, `Email`, `Tenthresult`, `Twelthresult`, `Diplomaresult`, `Sem 1`, `Sem 2`, `Sem 3`, `Sem 4`, `Sem 5`, `Sem 6`, `Sem 7`, `Sem 8`, `CGPA`, `Areaofinterest`, `References`, `branch_id`, `applied`) VALUES
('09ce006@charusat.edu.in', 'Ankur', 'Jagdishbhai', 'Lakhani', 2013, 'CE', '7th CE', 'male', '01/08/2003', 'serviceman', 'Maharaj Baug,"Shri Govind Krupa",Porbandar', 'Porbandar', 2147483647, 2147483647, 'ankurlakhani35@gmail.com', 93, 87, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 'Java', 'Mr.Chirag Radia TCS', 1, 0),
('09ce007@charusat.edu.in', 'Aru', 'Pankaj', 'Thanki', 2013, 'CE', '8th CE', 'male', '03/18/2013', 'chef', 'Maharaj Baug,"Shri Govind Krupa",porbandar', 'Porbandar', 2147483647, 2147483647, 'aryanthanki@gmail.com', 93, 80, 0, 9, 9, 9, 9, 9, 9, 9, 9, 9, 'Web development', 'Mr.Ashish Patel', 1, 1),
('10ce067@charusat.edu.in', 'Kaushal', 'Ashokbhai', 'Paneri', 2013, 'CE', '1', 'male', '06/04/2013', 'service', 'askjdnlkajndskljn', 'Junagadh', 99999999999, 9999999999, 'kapaneri@gmail.com', 88, 88, 88, 8, 8, 8, 8, 8, 8, 8, 8, 8, 'kajhsdkjaksjhd', 'uiasudkjadh', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `Userid` varchar(60) NOT NULL,
  `Hashed_password` varchar(60) NOT NULL,
  PRIMARY KEY (`Userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `subject_id` int(10) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(35) NOT NULL,
  `position` int(10) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`subject_id`, `menu_name`, `position`, `visible`, `content`) VALUES
(1, 'Home', 1, 1, ''),
(2, 'Academics', 2, 1, ''),
(3, 'Recruiters', 3, 1, ''),
(4, 'Procedure', 4, 1, ''),
(5, 'Statistics', 5, 1, ''),
(6, 'Contact us', 6, 1, 'CHARUSAT');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `Title` text NOT NULL,
  `Content` text NOT NULL,
  `Date` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`Title`, `Content`, `Date`) VALUES
('1st Internal Presentation', 'The Project Presentation as first internal is held on 2/2/13.Kindly include the analysis as well as design.', '02/02/2013'),
('2nd Internal Presentation', 'The 2nd Internal Presentation of the project is held on 2/3/13.It should also include the implementation details.', '02/13/2013'),
('Panamax Campus Drive', 'There is a pool campus drive of Panamax technologies organized by the institution on the mentioned date.', '04/30/2013'),
('Cygnet Campus Drive', 'There is a campus drive of Cygnet technologies on the mentioned date and is looking for enthusiastic young freshers with thorough knowledge on sowftare engineering.\r\nSo, be prepared for the same.', '05/10/2013'),
('IT Industry Meet', 'There is an national level meet with the experts of the IT industries to have a face to face discussion between the students and the industry experts.The students are required to compulsorily attend the meeting  without fail.', '05/03/2013'),
('DRC Systems Campus Drive', 'There is a pool campus drive of DRC systems ahmedabad for the students with DOT Net background compulsorily require and they have mentioned the criteria of CGPA 7.5 & above.', '05/11/2013'),
('TCS Interview', 'Its a very good company for', '05/08/2013'),
('TCS campus drive in Sept, 2013 for 2014 batch', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `page_id` int(10) NOT NULL AUTO_INCREMENT,
  `page_subject_id` int(10) NOT NULL,
  `menu_name` varchar(30) NOT NULL,
  `position` int(10) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_subject_id`, `menu_name`, `position`, `visible`, `content`) VALUES
(1, 1, 'About Placement', 1, 1, 'Intro to placement...'),
(2, 1, 'Message from Chairman', 2, 1, 'A message from chairmans desk bfla blah');

-- --------------------------------------------------------

--
-- Table structure for table `placed_students`
--

CREATE TABLE IF NOT EXISTS `placed_students` (
  `userID` varchar(50) NOT NULL,
  `company` varchar(30) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `placed_students`
--

INSERT INTO `placed_students` (`userID`, `company`) VALUES
('09ce007@charusat.edu.in', 'kap'),
('10ce094@charusat.edu.in', 'TCS'),
('10ce095@charusat.edu.in', 'TCS');

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

CREATE TABLE IF NOT EXISTS `resume` (
  `Userid` varchar(50) NOT NULL,
  `Firstname` varchar(45) NOT NULL,
  `Middlename` varchar(45) NOT NULL,
  `Lastname` varchar(45) NOT NULL,
  `Branch` varchar(10) NOT NULL,
  `City` varchar(25) NOT NULL,
  `Mobileno` bigint(20) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `Tenthresult` int(11) NOT NULL,
  `Twelthresult` int(11) NOT NULL,
  `Diplomaresult` int(11) NOT NULL,
  `Sem 1` int(11) NOT NULL,
  `Sem 2` int(11) NOT NULL,
  `Sem 3` int(11) NOT NULL,
  `Sem 4` int(11) NOT NULL,
  `Sem 5` int(11) NOT NULL,
  `Sem 6` int(11) NOT NULL,
  `Sem 7` int(11) NOT NULL,
  `Sem 8` int(11) NOT NULL,
  `CGPA` float NOT NULL,
  `Areaofinterest` text NOT NULL,
  `branch_id` int(2) DEFAULT NULL,
  `objective` varchar(200) DEFAULT NULL,
  `project_details` varchar(1500) DEFAULT NULL,
  `co-achievement` varchar(1500) DEFAULT NULL,
  `extra-achievement` varchar(1500) DEFAULT NULL,
  `reference_2` varchar(300) DEFAULT NULL,
  `reference_1` varchar(300) DEFAULT NULL,
  `house_no` varchar(50) DEFAULT NULL,
  `Street` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`Userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_applied`
--

CREATE TABLE IF NOT EXISTS `student_applied` (
  `Userid` varchar(50) NOT NULL,
  `Branch` varchar(10) NOT NULL,
  `Class` varchar(10) NOT NULL,
  `Company` varchar(50) NOT NULL,
  `branch_id` int(2) DEFAULT NULL,
  PRIMARY KEY (`Userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_applied`
--

INSERT INTO `student_applied` (`Userid`, `Branch`, `Class`, `Company`, `branch_id`) VALUES
('09ec007@charusat.edu.in', 'EC', '7th EC', 'Collabra', 3),
('09ec008@charusat.edu.in', 'EC', '7th EC', 'Collabra', 3),
('10CE067@charusat.edu.in', 'EC', '7th EC', 'Collabra', 3);

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE IF NOT EXISTS `student_details` (
  `userid` varchar(50) DEFAULT NULL,
  `Lastname` varchar(50) DEFAULT NULL,
  `Firstname` varchar(50) DEFAULT NULL,
  `Middlename` varchar(50) DEFAULT NULL,
  `tenthresult` varchar(10) DEFAULT NULL,
  `twelthresult` varchar(10) DEFAULT NULL,
  `sem1` varchar(10) DEFAULT NULL,
  `sem2` varchar(10) DEFAULT NULL,
  `sem3` varchar(10) DEFAULT NULL,
  `sem4` varchar(10) DEFAULT NULL,
  `sem5` varchar(10) DEFAULT NULL,
  `sem6` varchar(10) DEFAULT NULL,
  `cgpa` varchar(10) DEFAULT NULL,
  `Mobileno` bigint(20) DEFAULT NULL,
  `Homeno` bigint(20) DEFAULT NULL,
  `Diplomaresult` varchar(10) DEFAULT NULL,
  `branch` varchar(10) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(25) DEFAULT NULL,
  `Guardian` text,
  `address` text,
  `year` bigint(10) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `areaofinterest` text,
  `references` text,
  `branchid` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`userid`, `Lastname`, `Firstname`, `Middlename`, `tenthresult`, `twelthresult`, `sem1`, `sem2`, `sem3`, `sem4`, `sem5`, `sem6`, `cgpa`, `Mobileno`, `Homeno`, `Diplomaresult`, `branch`, `gender`, `DOB`, `Guardian`, `address`, `year`, `city`, `areaofinterest`, `references`, `branchid`) VALUES
('09ce002@charusat.edu.in', 'AGRAWAL', 'CHINTANPRAKASH', 'VIJAYKUMAR', '68.77', '53.2', '3.03', '1.36', '1.67', '2.67', '3.62', '4.76', '4.79', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('09ce015@charusat.edu.in', 'DESAI', 'DEV', 'SHAILESH', '89.38', '84.2', '4.39', '3.8', '1.6', '3.16', '1.24', '1.32', '4.14', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('09ce040@charusat.edu.in', 'KANSARA', 'PRATIK', 'ROHITBHAI', '76.77', '60.6', '2.57', '1.46', '3.73', '4.04', '3.14', '4.55', '4.88', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('09ce046@charusat.edu.in', 'KUKADIYA', 'JECKY', 'VIJAYBHAI', '85.69', '68.2', '2.64', '2', '4.3', '3.7', '2.79', '3.93', '4.54', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce001@charusat.edu.in', 'AJUDIA', 'SUHAG', 'NARAD', '90.4', '82.4', '7.39', '7.93', '7.07', '5.74', '4.76', '7.1', '6.8', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce002@charusat.edu.in', 'ANANDWANI', 'HIREN', 'TEJARAMBHAI', '83.38', '75.4', '8.71', '8.43', '8.87', '8.11', '7.76', '7.69', '8.27', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce003@charusat.edu.in', 'ANTANI', 'CHINTAN', 'NITINBHAI', '68.77', '79.8', '7', '7.63', '7.4', '7.67', '7.03', '7.66', '7.4', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce004@charusat.edu.in', 'BADHEKA', 'SOHAM', 'JAYESHBHAI', '88.77', '70', '6.85', '7.3', '8.1', '7.22', '7.55', '7.9', '7.5', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce005@charusat.edu.in', 'BHALANI', 'RAJ', 'JITENDRABHAI', '80.62', '88', '7.5', '8.16', '7.9', '7.44', '7.1', '7.34', '7.58', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce006@charusat.edu.in', 'BHATT', 'BHRUGU', 'MAHESHKUMAR', '92.77', '61.4', '8.78', '9.26', '9.4', '9.26', '9.07', '8.79', '9.1', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce007@charusat.edu.in', 'BHATT', 'KRUTI', 'MAULESHKUMAR', '79.23', '73.2', '7.78', '8.33', '8.2', '7.81', '7.24', '7.38', '7.8', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce008@charusat.edu.in', 'CHANDARANA', 'KAUSHA', 'DHIRENDRABHAI', '87.85', '70', '8.75', '9.36', '8.83', '8.56', '8.69', '8.79', '8.84', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce009@charusat.edu.in', 'CHAUDHARI', 'PARTHKUMAR', 'MANUBHAI', '88.62', '73.8', '7.71', '8.46', '8.57', '8.11', '7.28', '8', '8.03', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce010@charusat.edu.in', 'CHAUDHARY', 'ANJANA', 'BHIKHABHAI', '86.46', '60.8', '6.64', '7.3', '8.83', '8.44', '8.14', '8.24', '7.94', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce011@charusat.edu.in', 'CHAUHAN', 'JAYSHREEBEN', 'DILIPSINH', '72.62', '77.8', '4.53', '5.1', '7.03', '6.7', '7.14', '7.14', '6.74', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce012@charusat.edu.in', 'CHAUHAN', 'PRIYANGI', 'MAHENDRABHAI', '88.77', '69.8', '7.64', '7', '7.6', '7.3', '7.28', '7.59', '7.47', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce013@charusat.edu.in', 'CHAVDA', 'ARPITABEN', 'DHAYABHAI', '74', '', '3.03', '3.1', '4.4', '5.44', '5.38', '5.41', '5.66', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce014@charusat.edu.in', 'CHAWALA', 'VAIBHAV', 'SUNILBHAI', '', '73', '6.85', '6.83', '6.5', '6.19', '6.48', '6.45', '6.55', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce015@charusat.edu.in', 'CHOKSI', 'MEGHAVI', 'HIMANSHUBHAI', '84', '55.8', '9.39', '9.13', '8.7', '8.44', '8.86', '8.52', '8.84', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce016@charusat.edu.in', 'CHUIYA', 'PUSHPABEN', 'GULABBHAI', '66.77', '63', '3.53', '4.13', '4', '5.85', '6.14', '6.52', '5.91', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce017@charusat.edu.in', 'DABHI', 'YASHKUMAR', 'RAMESHBHAI', '77.23', '76', '3.64', '4.26', '5.07', '5.52', '5.31', '6.03', '5.5', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce018@charusat.edu.in', 'DALWADI', 'ASHITKUMAR', 'NAVNITKUMAR', '85.85', '70.6', '8.67', '8.26', '8.8', '7.85', '7.34', '7.48', '8.08', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce019@charusat.edu.in', 'DARJI', 'KAUSHAL', 'MAHESHBHAI', '85.08', '83.02', '6.78', '7.36', '8.57', '7.85', '6.52', '7.66', '7.5', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce020@charusat.edu.in', 'DAVE', 'ARPITA', 'DEVESH', '88.46', '82.15', '8.96', '9.23', '9.6', '8.85', '8.28', '8.93', '8.98', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce021@charusat.edu.in', 'DESAI', 'TANVI', 'MUKESHBHAI', '88.77', '71.08', '9.39', '9.76', '9.8', '9.7', '9.24', '9', '9.49', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce022@charusat.edu.in', 'DHANANI', 'BHADRESH', 'BABUBHAI', '86.62', '82', '8.14', '7.83', '9.43', '9.11', '8.52', '8.76', '8.63', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce023@charusat.edu.in', 'DOSHI', 'HARSHIL', 'VIRALKUMAR', '86.15', '83.2', '7.6', '6.5', '7.27', '7.26', '6.41', '6.79', '6.97', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce024@charusat.edu.in', 'DOSHI', 'POOJA', 'RAKESHKUMAR', '92.92', '86', '8.21', '8.66', '8.9', '8.15', '8', '8.07', '8.34', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce025@charusat.edu.in', 'DUDHAT', 'CHIRANGIBEN', 'VINODRAI', '88.46', '83.2', '8.6', '9.3', '9.53', '9.52', '9.69', '9.45', '9.35', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce026@charusat.edu.in', 'GANDHI', 'MIHIR', 'RAJENDRA', '89.54', '82', '9.14', '9.26', '9.43', '9.74', '8.9', '9.24', '9.28', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce028@charusat.edu.in', 'GHOSH', 'SOURAKA', 'BARUN', '85.85', '78.6', '8.42', '9.16', '9.27', '8.56', '8.59', '8.69', '8.79', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce029@charusat.edu.in', 'GOHEL', 'ANANDI', 'VALLABHBHAI', '88.77', '70.4', '7.28', '7.96', '8.6', '8.41', '8.52', '9.07', '8.31', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce030@charusat.edu.in', 'GOHIL', 'BHAGIRATHSINH', 'BALDEVSINH', '78.15', '89', '8', '8.33', '8.83', '9.04', '8.21', '8.76', '8.53', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce031@charusat.edu.in', 'GOHIL', 'VISHVADEEPSINH', 'MAHIPATSINH', '87.38', '77.2', '7.53', '7.03', '7.7', '7.59', '7.14', '8', '7.5', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce032@charusat.edu.in', 'GOTHI', 'PAYAL', 'VRAJLAL', '87.38', '73.8', '8.82', '9.43', '9.57', '8.85', '9.24', '9.31', '9.21', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce033@charusat.edu.in', 'GUPTA', 'NIKET', 'INDRAKUMAR', '87.23', '53.45', '7.28', '6.93', '8.9', '8.3', '8.03', '7.72', '7.86', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce034@charusat.edu.in', 'GUPTA', 'RIHA', 'SURESH', '83.38', '74.4', '8.78', '9.03', '9', '9.3', '8.34', '8.48', '8.82', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce035@charusat.edu.in', 'HEMANI', 'AMEE', 'JAYESHBHAI', '85.38', '66.8', '8.96', '8.53', '9.23', '8.78', '8.76', '9.17', '8.91', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce036@charusat.edu.in', 'JANSARI', 'DIPEN', 'RAJENDRAKUMAR', '87.54', '73.6', '8.07', '8.36', '7.97', '6.89', '7.76', '7.59', '7.79', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce037@charusat.edu.in', 'JARIWALA', 'JIGAR', 'KISHORBHAI', '85.54', '81.8', '8.64', '8.83', '9.2', '8.93', '8.45', '8.69', '8.79', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce038@charusat.edu.in', 'JARIWALA', 'VAIDEHI', 'KETANKUMAR', '88', '78.8', '9.1', '9.26', '9.43', '9.52', '9.17', '9.1', '9.27', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce039@charusat.edu.in', 'JARIWALA', 'VINAY', 'KAMLESHBHAI', '86.15', '76.2', '8.28', '8.56', '8.17', '8.41', '7.31', '7', '7.95', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce040@charusat.edu.in', 'JETHVA', 'MAULIK', 'MANSUKHBHAI', '84.46', '56.08', '7.57', '8.2', '8.23', '7.74', '7.55', '7.83', '7.86', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce041@charusat.edu.in', 'JIVNANI', 'DIPTI', 'ASHOK', '67.38', '79', '4.67', '5.56', '6.57', '6.96', '7.34', '7.41', '6.61', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce042@charusat.edu.in', 'JODHANI', 'MAULIKKUMAR', 'JAYSUKHBHAI', '89.08', '77.8', '5.89', '3.66', '7.17', '5.85', '6.59', '7.69', '6.54', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce043@charusat.edu.in', 'JOSHI', 'MEET', 'ASHOKKUMAR', '89.08', '71.6', '6.78', '7.53', '8.07', '7.7', '7.59', '7.93', '7.61', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce044@charusat.edu.in', 'KADIA', 'URVISH', 'PINAKIN', '83.08', '80.4', '7.1', '7', '8.07', '7.85', '7.24', '6.59', '7.31', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce045@charusat.edu.in', 'KALSARIYA', 'MAYURKUMAR', 'MANUBHAI', '77.23', '70.4', '4.78', '5.76', '5.13', '6.26', '5.52', '5.69', '5.73', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce046@charusat.edu.in', 'KALYANI', 'DIVYANSH', 'HARDAYAL', '86.31', '65.8', '7.42', '6.9', '7.63', '7.52', '6.97', '7.93', '7.48', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce047@charusat.edu.in', 'KARAVADARA', 'VEJA', 'KESHU', '76.46', '87.6', '6.71', '6.5', '6.7', '6.96', '6.24', '6.69', '6.63', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce048@charusat.edu.in', 'KATHIRIYA', 'AKASH', 'BHARATBHAI', '90.46', '77', '8.03', '8.43', '8.8', '8.07', '7.48', '7.72', '8.1', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce049@charusat.edu.in', 'KOSTI', 'JAGRUT', 'VIJAYPAL', '87.38', '82.2', '7.82', '8.83', '9.1', '8.74', '7.9', '7.76', '8.36', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce050@charusat.edu.in', 'LAD', 'DHAVALKUMAR', 'RATILAL', '86.62', '72', '6.64', '5.8', '7.37', '5.93', '6.1', '8.1', '6.75', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce051@charusat.edu.in', 'LAKDAWALA', 'HERIN', 'KAMLESHKUMAR', '75.4', '78.02', '7.07', '8.83', '8.47', '6.19', '7.38', '7.83', '7.66', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce052@charusat.edu.in', 'MAJITHIA', 'NISHIT', 'MAHENDRABHAI', '90.77', '78.8', '9.17', '9.5', '9.37', '8.63', '8.45', '8.55', '8.95', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce053@charusat.edu.in', 'MAKWANA', 'NIDHI', 'BHUPATKUMAR', '69', '74.6', '8.39', '8.16', '7.87', '8.26', '8.03', '7.93', '8.1', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce055@charusat.edu.in', 'MANGUKIYA', 'MOHIT', 'HIMMATBHAI', '80.15', '74.6', '0.71', '3.8', '1.5', '4.19', '4.97', '4.55', '4.89', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce056@charusat.edu.in', 'MANIAR', 'BHARGAV', 'BINDESH', '86.15', '60', '6.6', '6.46', '7.1', '6.56', '7.38', '7.72', '6.98', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce057@charusat.edu.in', 'MANSURI', 'SUHEL', 'VALIBHAI', '75.85', '80.6', '3.64', '3.1', '4.53', '5', '4.48', '3.93', '5.03', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce058@charusat.edu.in', 'MEVADA', 'NIRAVKUMAR', 'VASANTLAL', '83.2', '71', '6.46', '7.06', '6.57', '7.7', '7.45', '8.52', '7.29', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce059@charusat.edu.in', 'MEWADA', 'AKSHAY', 'NARENDRAKUMAR', '77.08', '61.08', '8.32', '8.06', '7.93', '8.11', '7.72', '7.79', '7.99', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce060@charusat.edu.in', 'MODI', 'MIHIR', 'SHAILESH', '81.69', '82.33', '5.25', '5', '6.43', '6.19', '6.83', '6.03', '5.95', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce061@charusat.edu.in', 'MUNGALPARA', 'MAYUR', 'JAYANTILAL', '74.46', '71.6', '7.07', '6.63', '8.17', '6.15', '6.14', '5.62', '6.64', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce062@charusat.edu.in', 'NAIK', 'VRUNDA', 'RAKESHKUMAR', '78.62', '67.8', '6.03', '7.06', '6.9', '6.89', '7.1', '7.72', '6.96', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce063@charusat.edu.in', 'PANARA', 'BHAVIKABAHEN', 'BHACHUBHAI', '77.85', '77', '7.25', '7.1', '7.93', '8.11', '7.59', '7.07', '7.5', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce064@charusat.edu.in', 'PANCHAL', 'NEEGAM', 'NARESH', '73.08', '79.2', '7.82', '6.83', '6.33', '6.26', '6', '6.59', '6.64', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce065@charusat.edu.in', 'PANDEY', 'KASHYAP', 'VIJAYPRAKASH', '93.08', '', '6.96', '7.8', '8.87', '8.3', '7.03', '7.55', '7.76', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce066@charusat.edu.in', 'PANDYA', 'NIRALI', 'MAHESHKUMAR', '90.31', '87.02', '9.21', '9.4', '9.83', '9.33', '9.17', '8.66', '9.27', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce067@charusat.edu.in', 'PANERI', 'KAUSHAL', 'ASHOKBHAI', '84.31', '79.60', '8.75', '7.8', '8.63', '8.48', '7.17', '7.56', '8.06', 9427571900, 2852653802, '', 'CE', 'male', '01/07/1993', 'Service', 'skdjfkjshdjfkhjhssdf', 2014, 'Junagadh', 'kjsdhkjashdkjh', 'ksdjfksjhdfkjksjdhf', 1),
('10ce068@charusat.edu.in', 'PAREKH', 'JAY', 'NAYANKUMAR', '86.23', '64.4', '5.53', '6.8', '6.6', '6.26', '6.45', '6.21', '6.41', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce069@charusat.edu.in', 'PATEL', 'BRIJESH', 'MAHENDRAKUMAR', '83.54', '75', '3.82', '3.63', '5.27', '4.81', '3.1', '5.55', '5.36', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce071@charusat.edu.in', 'PATEL', 'HIRENKUMAR', 'PRAVINBHAI', '90', '77.8', '6.67', '7.3', '7.83', '7.89', '6.59', '6.72', '7.17', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce073@charusat.edu.in', 'PATEL', 'KOMAL', 'KISHORBHAI', '87.85', '72.6', '7.6', '7.9', '8.63', '8.78', '8.24', '8.34', '8.25', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce074@charusat.edu.in', 'PATEL', 'KRUNAL', 'DHIRAJ', '66.08', '62.4', '6.75', '6.93', '7.07', '6.52', '6.93', '6.86', '6.97', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce075@charusat.edu.in', 'PATEL', 'KUSH', 'DEVENDRABHAI', '90.77', '78.8', '9.6', '9.2', '9.47', '8.67', '8.45', '7.97', '8.9', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce078@charusat.edu.in', 'PATEL', 'NAUTAMIBEN', 'ALPESHKUMAR', '90.77', '85.2', '9.42', '9.43', '9.67', '9.67', '9.76', '9.52', '9.58', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce079@charusat.edu.in', 'PATEL', 'NEHA', 'PARSHOTTAM', '88', '75', '9.42', '9.46', '9.63', '9.11', '8.93', '9', '9.27', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce080@charusat.edu.in', 'NIKHILKUMAR', 'JAYANTILAL', 'PATEL', '85.85', '75', '7.14', '6.1', '5.3', '6.37', '6.28', '5.9', '6.33', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce081@charusat.edu.in', 'PATEL', 'NIYATI', 'PRAKASHKUMAR', '92', '78', '8.1', '7.96', '8.37', '8.19', '8.07', '8.34', '8.17', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce082@charusat.edu.in', 'PATEL', 'PRATIK', 'ARVINDBHAI', '77.54', '51.6', '4.35', '3.03', '4.4', '5.07', '5.31', '5', '5.08', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce083@charusat.edu.in', 'PATEL', 'PRINCE', 'DINESHBHAI', '86.77', '78', '8.71', '9.26', '9.6', '9.3', '8.86', '8.86', '9.1', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce085@charusat.edu.in', 'PATEL', 'ROMIT', 'SHAILESH', '89', '65.58', '6.21', '6.5', '4.67', '6.3', '5.59', '6.62', '6.06', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce086@charusat.edu.in', 'PATEL', 'SACHIN', 'DILIPBHAI', '79.38', '74.91', '4.46', '5.03', '6.47', '5.19', '5.76', '5.38', '5.68', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce087@charusat.edu.in', 'PATEL', 'SUDIP', 'DIPESH', '82.92', '61.4', '3.71', '3.33', '6.1', '5.56', '5.59', '6.86', '6.18', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce088@charusat.edu.in', 'PATEL', 'UTSAVKUMAR', 'DHARMENDRABHAI', '79.38', '81', '4.82', '4.76', '6.3', '5.63', '6.48', '6.69', '6.13', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce089@charusat.edu.in', 'PAVAGADHI', 'SHREY', 'JAYPRAKASH', '78.31', '72.4', '7.21', '8.06', '8.97', '7.22', '6.41', '7.45', '7.57', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce090@charusat.edu.in', 'PUTTOO', 'RINCHEN', 'RAMESHCHANDER', '90.08', '78', '5.42', '3.86', '6.97', '6.81', '6.86', '6', '6.42', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce091@charusat.edu.in', 'RAIYANI', 'TEJASKUMAR', 'ASHWINBHAI', '85.85', '80', '9.14', '8.76', '9.07', '7.96', '8.07', '8.1', '8.53', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce092@charusat.edu.in', 'SADARANI', 'VIDHI', 'BHARATKUMAR', '84', '81.8', '7.42', '9.03', '9.1', '7.52', '8.83', '8.41', '8.61', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce093@charusat.edu.in', 'SAGAR', 'KRUNALKUMAR', 'GAUTAMBHAI', '75.38', '43.8', '2.82', '2.83', '5.27', '6.41', '6.07', '6.62', '5.75', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce094@charusat.edu.in', 'SATYANI', 'PRAKASH', 'ATMARAM', '84.92', '80.4', '8.67', '8.33', '9.2', '8.78', '8.17', '7.34', '8.42', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce095@charusat.edu.in', 'SHAH', 'ADIT', 'RAKESH', '87.69', '76.2', '8.1', '6.73', '8.33', '8.04', '7.52', '7.52', '7.7', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce096@charusat.edu.in', 'SHAH', 'ADITI', 'KETANBHAI', '95', '87', '8.35', '7.96', '8.6', '8.04', '7.21', '7.55', '7.95', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce098@charusat.edu.in', 'SHAH', 'DHVANI', 'PRAKASH', '86.92', '81.2', '9.5', '9.2', '9.8', '9.56', '9.41', '9.41', '9.48', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce099@charusat.edu.in', 'SHAH', 'HELI', 'MANZIL', '84.77', '60.66', '7.71', '6.1', '7.23', '5.96', '5.66', '6.21', '6.66', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce100@charusat.edu.in', 'SHAH', 'JANKI', 'SHAILESH', '82.02', '87.08', '8.5', '8.66', '9', '8.81', '7.79', '8.38', '8.53', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce101@charusat.edu.in', 'SHAH', 'RUMIN', 'MAYUR', '87.54', '78.4', '8.39', '8.06', '7.43', '7.33', '6.07', '5.97', '7.21', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce102@charusat.edu.in', 'SHAH', 'SHREYA', 'ATUL', '88.62', '78.2', '8.82', '9', '9.53', '9.44', '9.1', '9.14', '9.17', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce103@charusat.edu.in', 'SHAH', 'SNEH', 'AMITKUMAR', '76.92', '64.8', '5.57', '4.6', '6.5', '6.48', '6.17', '6.55', '6.25', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce104@charusat.edu.in', 'SHILU', 'DEVAL', 'NARENDRA', '83.54', '70', '7.46', '7.76', '6.87', '6.96', '6.48', '7.59', '7.19', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce105@charusat.edu.in', 'SITWALA', 'KULIN', 'ARUN', '75.54', '79', '8.25', '8.2', '7.47', '7.19', '6.9', '7.03', '7.51', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce106@charusat.edu.in', 'SOJITRA', 'POOJABEN', 'RANCHHODBHAI', '86.46', '80.2', '8.46', '8.96', '8.9', '8.74', '8.55', '8.17', '8.64', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce107@charusat.edu.in', 'SONEJI', 'KEYUR', 'RAJESHKUMAR', '81.23', '84', '8.1', '8.16', '8.77', '7.74', '7.14', '7.14', '7.85', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce108@charusat.edu.in', 'SONI', 'JIMIT', 'JAYESHBHAI', '85.21', '81.6', '8.28', '8.56', '8.67', '8.37', '8.31', '8.31', '8.42', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce109@charusat.edu.in', 'SONI', 'KAVIT', 'RAKESHBHAI', '88.92', '81.2', '8.35', '8.9', '9', '8.7', '8.21', '8.55', '8.62', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce110@charusat.edu.in', 'RIDDHIBEN', 'HARSUKHBHAI', 'SUDANI', '86.77', '71.4', '7.21', '7.8', '9.3', '8.78', '8.76', '8.52', '8.4', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce111@charusat.edu.in', 'SUTHAR', 'JIGAR', 'ARVINDBHAI', '70.15', '61.8', '2.6', '2.56', '3.83', '4.26', '5.34', '5.9', '5.27', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce112@charusat.edu.in', 'THAKKAR', 'HARSH', 'RASHMINBHAI', '84.15', '67.2', '3.6', '4.16', '5.13', '5.59', '5.52', '5.52', '5.71', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce113@charusat.edu.in', 'THULA', 'HRISHIKESH', 'CHAITANYA', '89.23', '87', '7.75', '7.03', '8.03', '6.78', '7.17', '6.83', '7.27', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce114@charusat.edu.in', 'TOPIWALA', 'HARDIK', 'SHAILESHBHAI', '88.62', '70.4', '8.28', '7.83', '8.33', '7.59', '7.97', '7.45', '7.91', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce115@charusat.edu.in', 'TRIVEDI', 'LALKRISHNA', 'HARSHADRAY', '81.54', '76.06', '5.85', '5.03', '6.8', '6.59', '6.03', '6.21', '6.13', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce116@charusat.edu.in', 'VADUKIA', 'SAURABH', 'CHANDUBHAI', '87.85', '81.4', '7.5', '6.63', '8.1', '6.37', '6.1', '6', '6.79', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce117@charusat.edu.in', 'VAGHELA', 'HARSH', 'PRAKASH', '88.46', '70.8', '7.07', '6.5', '6.9', '6.07', '5.31', '5.21', '6.18', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce118@charusat.edu.in', 'VAJA', 'DHAVAL', 'DHIRAJLAL', '80', '70', '5', '5.43', '6.1', '5.89', '5.52', '5.34', '5.66', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce119@charusat.edu.in', 'VAYADA', 'NILAY', 'VASUDEV', '90.92', '80', '8.39', '6.4', '7.33', '6.74', '6.59', '6.45', '6.98', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce120@charusat.edu.in', 'VORA', 'RUSHIT', 'PRAKASHBHAI', '74.92', '77.4', '8.6', '8.16', '9', '8.41', '8.31', '8.07', '8.43', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('10ce121@charusat.edu.in', 'VYAS', 'DHWANI', 'RAKESH', '90.02', '91', '8.85', '8.93', '9.5', '9.15', '9.34', '9.41', '9.2', NULL, NULL, NULL, 'CE', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 1),
('d11ce122@charusat.edu.in', 'PATEL', 'PRANAV', 'CHATURBHAI', '', '', '', '', '8.8', '8.59', '7.72', '7.41', '8.13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ce123@charusat.edu.in', 'SONI', 'AXIT', 'DHANESHKUMAR', '87.23', '', '', '', '9.37', '9.33', '9.17', '8.17', '9.01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ce124@charusat.edu.in', 'CHUDASAMA', 'VICKYKUMAR', 'BHARATBHAI', '75.76', '62.56', '', '', '3.4', '3.22', '3.62', '2.76', '4.24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ce125@charusat.edu.in', 'PATEL', 'RAJ', 'JITENDRAKUMAR', '', '', '', '', '7.7', '7.81', '7.31', '7.72', '7.63', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ce126@charusat.edu.in', 'BHATT', 'PRATIK', 'JITENDRA', '', '', '', '', '6.17', '6.59', '6.48', '5.52', '6.18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ce127@charusat.edu.in', 'PATEL', 'RUCHI', 'SHAILESHBHAI', '90.71', '56.8', '', '', '6.03', '7.37', '6.69', '6.62', '6.66', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ce128@charusat.edu.in', 'SHAH', 'PANKTI', 'PRATIKBHAI', '86', '', '', '', '7.13', '7.07', '6.97', '7.38', '7.14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ce129@charusat.edu.in', 'PATEL', 'DEVAL', 'SHAILESHBHAI', '', '', '', '', '2.17', '3.19', '4.21', '4', '4.45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ce130@charusat.edu.in', 'PATEL', 'SAGAR', 'JOGESHBHAI', '71.69', '', '', '', '7.77', '7.89', '7.38', '6.69', '7.43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ce131@charusat.edu.in', 'BRAHMBHATT', 'PARTH', 'JIGNESHKUMAR', '82.28', '53.4', '', '', '7.87', '8.11', '6.97', '7.38', '7.57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ce132@charusat.edu.in', 'SHAH', 'NILESHKUMAR', 'PRAVINCHANDRA', '80', '', '', '', '3.87', '6', '4.79', '4.79', '5.43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ce133@charusat.edu.in', 'PANCHAL', 'SWETA', 'SHAILESHBHAI', '80.31', '', '', '', '6.8', '7.22', '7.1', '7.07', '7.04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ce134@charusat.edu.in', 'PARMAR', 'CHHAYA', 'NAGJIBHAI', '74.14', '', '', '', '7.37', '6.26', '6.34', '6.45', '6.62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ce135@charusat.edu.in', 'KATHROTIYA', 'ASHISH', 'HARESHBHAI', '', '', '', '', '8.33', '7.26', '7.72', '7.28', '7.66', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ce136@charusat.edu.in', 'PATIL', 'CHETAN', 'ULHAS', '74.31', '', '', '', '6.8', '6.52', '6.9', '5.62', '6.46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ce137@charusat.edu.in', 'PATEL', 'MINAL', 'VISHNUBHAI', '86.86', '', '', '', '8.07', '7.44', '7.38', '7.41', '7.58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ce138@charusat.edu.in', 'TALSANIA', 'ANSHITA', 'KANTILAL', '76.14', '', '', '', '6.27', '6.7', '6.24', '6.52', '6.43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ce139@charusat.edu.in', 'DHEBAR', 'BHAUMIK', 'DEVANSHU', '64.43', '', '', '', '2.67', '3.37', '4.76', '3.69', '4.66', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ce140@charusat.edu.in', 'KOTHARI', 'BRIJESH', 'JASHAVANTBHAI', '90.62', '', '', '', '8.77', '9.22', '7.62', '7.55', '8.28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ce141@charusat.edu.in', 'PRAJAPATI', 'APURVA', 'RAJESHKUMAR', '83.23', '', '', '', '8.53', '8.07', '6.55', '7.55', '7.68', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ce142@charusat.edu.in', 'MAKWANA', 'HARDIPKUMAR', 'RAJESHKUMAR', '', '', '', '', '7.53', '6.44', '4.76', '5.79', '6.32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ce144@charusat.edu.in', 'NAVADIYA', 'JIGAR', 'BABUBHAI', '83.43', '58', '', '', '8.17', '8.63', '8.66', '8.69', '8.53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ce145@charusat.edu.in', 'DHAKECHA', 'JAYESH', 'GABHARUBHAI', '84.57', '75', '', '', '7.33', '8.26', '7.55', '7.21', '7.57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ce146@charusat.edu.in', 'DHAMECHA', 'SURAJBHAI', 'BHAGVANBHAI', '75.08', '', '', '', '6.2', '6.81', '5.83', '5.62', '6.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('10ec001@charusat.edu.in', 'BANDAI', 'HARDEEPSINGH', 'SURJEETSINGH', '84.15', '75.6', '8.3', '9.03', '8.33', '9.13', '8.86', '9.55', '8.86', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec002@charusat.edu.in', 'BARIA', 'DHARMENDRA', '', '80.8', '59.8', '6.26', '6.21', '5.63', '4.73', '5.07', '5.97', '5.82', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec003@charusat.edu.in', 'BATHIA', 'CHINTAN', 'JAYESHKUMAR', '86.31', '80.8', '9.16', '9.5', '9.47', '9.87', '9.38', '9.72', '9.52', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec004@charusat.edu.in', 'BHANDARI', 'TITHAL', 'PINAKINBHAI', '73.38', '74.4', '5.36', '7.85', '7.9', '8.53', '8.59', '8.52', '7.78', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec005@charusat.edu.in', 'BHANSARI', 'SUPAN', 'ASHOKKUMAR', '87.08', '79.6', '8.33', '8.82', '7.83', '7.57', '7.86', '8.34', '8.12', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec006@charusat.edu.in', 'BHATT', 'HITARTH', 'RAJENDRA', '83.85', '80', '8.03', '8.64', '7.93', '8.1', '7.9', '8.83', '8.23', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec007@charusat.edu.in', 'BHESANIYA', 'AYUSH', 'MAGANBHAI', '82', '80.4', '7.96', '8.6', '8.63', '8.67', '8.69', '8.86', '8.57', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec008@charusat.edu.in', 'BHORWANI', 'AMAN', 'JAGDISH', '84.77', '82.2', '8.53', '8.67', '8.43', '8.4', '8.55', '9', '8.6', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec009@charusat.edu.in', 'BIYANI', 'ADARSH', 'MAHAVEERPRASAD', '84.62', '77.2', '7.86', '8.32', '8.17', '8.93', '8.55', '9.59', '8.57', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec010@charusat.edu.in', 'CHAUDHARI', 'KHUSHBUKUMARI', 'BHULABHAI', '77.08', '55.9', '3.86', '5.17', '4.27', '7.07', '6.28', '8.07', '6.39', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec011@charusat.edu.in', 'CHAUHAN', 'SOHAN', 'NIRANJAN', '78', '54.8', '5.36', '6.39', '5.7', '6.7', '5.86', '6.17', '6.1', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec013@charusat.edu.in', 'DARJI', 'ACHAL', 'VIJAYKUMAR', '', '', '2.43', '4.14', '5.2', '5.77', '5.72', '6.93', '5.67', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec014@charusat.edu.in', 'DARJI', 'CHIRAGKUMAR', 'LALJIBHAI', '81.4', '80.6', '7.73', '7.5', '7.83', '8.43', '7.86', '8.72', '8.02', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec015@charusat.edu.in', 'DARJI', 'SHEFAL', 'DILIPBHAI', '75.38', '67.8', '5.2', '6.82', '5.6', '6.63', '5.97', '6.69', '6.23', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec016@charusat.edu.in', 'DAVE', 'AARSH', 'NARENDRABHAI', '79.54', '73.6', '7.96', '8.67', '8.73', '8.03', '8.41', '8.97', '8.46', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec017@charusat.edu.in', 'DESAI', 'AJAY', 'HIMMATBHAI', '80.31', '76.2', '7.96', '8.1', '7.7', '8.13', '6.79', '8.07', '7.8', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec018@charusat.edu.in', 'DESAI', 'ANERI', 'HIREN', '89.69', '78', '7.83', '8.96', '7.9', '7.87', '7.72', '8.41', '8.11', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec019@charusat.edu.in', 'DOSHI', 'AAGAM', 'ALPESHBHAI', '85.38', '77.2', '6.6', '7.35', '8.13', '8.37', '7.48', '8.76', '7.78', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec020@charusat.edu.in', 'FERWANI', 'VISHAL', 'VIJAYKUMAR', '83.54', '75.2', '6.93', '7.75', '7.5', '7.5', '7.03', '7.72', '7.4', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec021@charusat.edu.in', 'GANDHI', 'ANUJ', 'UMESH', '84.46', '65', '6.83', '7.64', '7.73', '7.57', '5.62', '7.45', '7.26', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec022@charusat.edu.in', 'GAUDANA', 'JAYMIN', 'VINODBHAI', '82.46', '75.8', '6.3', '7.25', '6.2', '7.13', '5.83', '7.45', '6.76', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec023@charusat.edu.in', 'GOSWAMI', 'JAYBHARTHI', 'BIPINBHARTHI', '77', '74', '6.16', '6.78', '6.63', '7', '7.17', '8.21', '7.17', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec024@charusat.edu.in', 'GOSWAMI', 'RIDDHIBEN', 'DUSHYANTGIRI', '83.85', '76.02', '7.73', '8.71', '9.03', '9.07', '8.69', '9.24', '8.74', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec025@charusat.edu.in', 'GOSWAMI', 'SANKETGIRI', 'KHODGIRI', '78.77', '70.6', '3.83', '6.07', '5.93', '6.27', '6.31', '6.9', '6.21', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec026@charusat.edu.in', 'HANSALIYA', 'HERIT', 'SHAILESHBHAI', '88.92', '86.2', '7.96', '8.39', '8.13', '9', '8', '9.41', '8.48', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec027@charusat.edu.in', 'JOSHI', 'ADWAIT', 'KAMLESH', '80.31', '79.6', '7.66', '8.28', '7.7', '7.73', '8', '8.45', '7.97', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec028@charusat.edu.in', 'JOSHI', 'AVANIBEN', 'GAUTAMLAL', '86.66', '71.06', '7.13', '8.03', '7.1', '7.97', '7.59', '8.93', '7.78', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec029@charusat.edu.in', 'KAKADIYA', 'NIKITABEN', 'RAMESHBHAI', '75.38', '82.8', '5.9', '8.67', '8.63', '9.07', '7.72', '8.97', '8.15', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec030@charusat.edu.in', 'KALAVADIA', 'KISHANKUMAR', 'KUNDANBHAI', '89.54', '79.6', '7.86', '7.6', '7.57', '7.6', '8.1', '8.66', '7.9', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec031@charusat.edu.in', 'KAMANI', 'KELVINKUMAR', 'MANHARBHAI', '74.62', '63.4', '6.13', '6.89', '5.97', '5.9', '6.76', '6.76', '6.53', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec032@charusat.edu.in', 'KAMANI', 'KEYUR', 'HARSUKHLAL', '86.46', '75.8', '7.36', '8.42', '7.8', '8.8', '8.52', '8.69', '8.26', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec033@charusat.edu.in', 'KAPADIA', 'KEVAL', 'BIREN', '89.69', '81.6', '9.6', '9.6', '9.73', '9.33', '9.38', '9.45', '9.52', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec035@charusat.edu.in', 'KARAGTHIYA', 'BHASHKAR', 'RAJSINHBHAI', '84.31', '75.8', '4.83', '6.46', '7.83', '7.73', '7.69', '7.41', '7.13', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec036@charusat.edu.in', 'KATARIYA', 'JAYESH', 'BHAVANBHAI', '87.08', '68.4', '6.43', '7.1', '6.93', '7.23', '7.07', '7.45', '7.03', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec037@charusat.edu.in', 'KATARIYA', 'VATSAL', 'KHUSHALBHAI', '86.62', '62.2', '6.13', '6.89', '7.37', '7.47', '7.28', '8.14', '7.21', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec038@charusat.edu.in', 'KELAIYA', 'ANJURI', 'PRADIPBHAI', '91.85', '77.6', '7.46', '7.57', '7.47', '8.67', '8.79', '9.45', '8.23', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec039@charusat.edu.in', 'KHARADI', 'RAHIL', 'PARIMALBHAI', '82.77', '71', '5.2', '6.17', '6.47', '6.6', '6.48', '7.31', '6.48', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec040@charusat.edu.in', 'ANMOLKUMAR', 'KOSTA', 'PANNALAL', '91', '89.02', '7.33', '8.67', '8.2', '8.33', '7.86', '8.31', '8.11', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec041@charusat.edu.in', 'KOTAK', 'NIMESH', 'KISHORBHAI', '87.54', '85.4', '7.5', '8.67', '8.47', '7.8', '8', '8.45', '8.14', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec042@charusat.edu.in', 'KRUTARTH', 'GORDHANBHAI', 'KIKANI', '71.23', '64.2', '7.1', '8.96', '8.03', '8.4', '7.31', '8.83', '8.1', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec043@charusat.edu.in', 'KUKADIYA', 'NEERAVKUMAR', 'VAJUBHAI', '90.46', '86.4', '7.63', '7.78', '8.2', '8.8', '8.38', '8.93', '8.29', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec044@charusat.edu.in', 'LUNAGARIYA', 'KEYUR', 'VINODBHAI', '84', '85', '7.43', '8.53', '9.17', '8.37', '8.48', '8.31', '8.38', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec045@charusat.edu.in', 'MAHESHWARY', 'ANUBHAV', 'KAMALKISHORE', '85.85', '72.6', '8.03', '8.92', '8.6', '8.37', '8.48', '8.93', '8.55', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec046@charusat.edu.in', 'MAKWANA', 'KAJALBEN', 'DURLABHJIBHAI', '91.08', '81', '8.26', '8.96', '8.3', '8.5', '8.38', '9.17', '8.59', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec047@charusat.edu.in', 'MANIAR', 'NAITIK', 'HASIT', '87.69', '80.02', '6.9', '8.64', '7.97', '7.9', '7.9', '9.21', '8.14', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec048@charusat.edu.in', 'MEHTA', 'ABHI', 'ANILKUMAR', '88.15', '71.2', '7.06', '7.53', '8.07', '8.1', '7.72', '8.21', '7.78', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec050@charusat.edu.in', 'MEHTA', 'JAY', 'CHETANBHAI', '87.08', '80.2', '8.3', '8.53', '8.87', '8.1', '8.52', '8.55', '8.48', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec052@charusat.edu.in', 'MISTRY', 'DRISTI', 'GIRISHKUMAR', '85.54', '53.2', '3.56', '6.5', '6.17', '7.4', '6.52', '7.03', '6.47', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec053@charusat.edu.in', 'MUNGRA', 'RUSHI', 'SHANTILAL', '74.8', '84.31', '8.43', '9.17', '9.23', '9.07', '9.28', '9.48', '9.11', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec054@charusat.edu.in', 'PADIYA', 'HITEN', 'SUMANLAL', '75.54', '81.6', '6.36', '7.67', '8.1', '8.13', '7.21', '8.07', '7.59', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec055@charusat.edu.in', 'PANCHAL', 'CHINKAL', 'NAVNITBHAI', '82', '64.6', '5.9', '6.67', '7', '6.27', '6.38', '7.62', '6.64', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec056@charusat.edu.in', 'PANCHAL', 'SACHINKUMAR', 'SURESHBHAI', '87.08', '72', '6.73', '8.6', '8.27', '7.47', '8', '8.45', '7.91', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec057@charusat.edu.in', 'HIREN', 'MAHESHBHAI', 'PANJWANI', '82.08', '71', '7.8', '8', '7.5', '7.97', '7.69', '8', '7.82', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec058@charusat.edu.in', 'PAREKH', 'SANKETKUMAR', 'KIRITBHAI', '81.38', '65.02', '3.2', '6.5', '6.27', '7.17', '6.52', '7.38', '6.45', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec059@charusat.edu.in', 'PARMAR', 'HIMANSHUKUMAR', 'BHAGWANBHAI', '76.92', '64.2', '4.43', '5.53', '5.9', '6.33', '6.07', '7.59', '6.13', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec060@charusat.edu.in', 'PARMAR', 'HIRENKUMAR', 'DINESHBHAI', '81.54', '56.2', '6.1', '8.21', '8.2', '8.2', '7.69', '7.86', '7.7', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec061@charusat.edu.in', 'PATEL', 'AKASHKUMAR', 'HARESHBHAI', '66.62', '76', '3.86', '5.67', '5.43', '4.8', '5.45', '5.45', '5.56', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec062@charusat.edu.in', 'PATEL', 'ANAND', 'KAMLESHBHAI', '90.46', '82.6', '8.26', '9.42', '8.9', '8.43', '8.55', '8.66', '8.7', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec063@charusat.edu.in', 'PATEL', 'ARTH', 'MUKESHBHAI', '82.31', '78.2', '8.66', '8.78', '8.7', '8.33', '7.07', '8.14', '8.28', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec065@charusat.edu.in', 'PATEL', 'DARSHANKUMAR', 'DINESHBHAI', '85.69', '76.2', '7.63', '7.75', '6.63', '6.97', '6.83', '7.79', '7.26', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec066@charusat.edu.in', 'PATEL', 'DAX', 'JAYANTBHAI', '59.63', '59', '4', '6.03', '5.07', '5.27', '5.97', '7.31', '6.26', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec067@charusat.edu.in', 'PATEL', 'GHANSHYAMBHAI', 'KIRITBHAI', '', '', '3.13', '5.28', '5.4', '4.93', '3.97', '6.1', '5.52', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec068@charusat.edu.in', 'PATEL', 'KAUSHAL', 'PINAKIN', '74', '58.4', '4.9', '6.17', '5.6', '4.4', '5.07', '5.66', '5.76', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec069@charusat.edu.in', 'PATEL', 'KEYURBHAI', 'MAHESHBHAI', '88.15', '69', '4.83', '6.42', '6.73', '6.6', '6.9', '8.48', '6.72', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec070@charusat.edu.in', 'PATEL', 'KISHAN', 'JAYESHBHAI', '45.6', '52.6', '3.96', '5.78', '5.13', '2.87', '3.28', '4.21', '4.99', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec071@charusat.edu.in', 'PATEL', 'KRUSHITKUMAR', 'SURESHBHAI', '', '', '8.5', '9.17', '9.07', '8.3', '7.62', '8.07', '8.45', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec072@charusat.edu.in', 'PATEL', 'KUNJAN', 'JANAKKUMAR', '85.23', '75.2', '4.7', '6.46', '5.93', '6.8', '5.52', '6.14', '6.12', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec073@charusat.edu.in', 'PATEL', 'MANAN', 'RAJANBHAI', '92.62', '83.8', '8.76', '9.35', '9.17', '8.87', '8.24', '8.9', '8.88', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec074@charusat.edu.in', 'PATEL', 'MARMIK', 'DINESHKUMAR', '86.46', '83.8', '8.76', '8.96', '9.57', '9.3', '9.17', '9.45', '9.2', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec075@charusat.edu.in', 'PATEL', 'NAISARGI', 'PARESHKUMAR', '86.31', '69', '3.73', '5.78', '6.47', '6.13', '7.14', '7.93', '6.44', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec076@charusat.edu.in', 'PATEL', 'NIDHI', 'JAYANTILAL', '79.23', '77', '7.83', '8.85', '9.37', '9.07', '8.62', '9.24', '8.83', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec077@charusat.edu.in', 'PATEL', 'NIRALI', 'VINODBHAI', '50', '55', '6.93', '6.25', '7.6', '7', '7.34', '8', '7.26', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec078@charusat.edu.in', 'PATEL', 'NISHANT', 'DILIPBHAI', '85.69', '78.4', '8.03', '8.35', '8.57', '7.77', '7.48', '7.93', '8.02', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec079@charusat.edu.in', 'PATEL', 'PINAL', 'NARESHBHAI', '81.85', '80.4', '8.06', '8.78', '8.37', '8.87', '8.07', '9.52', '8.61', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec080@charusat.edu.in', 'PATEL', 'POOJABAHEN', 'NAROTTAMDAS', '88.31', '75.4', '8.8', '8.89', '9.3', '9.33', '9.21', '9.72', '9.21', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec081@charusat.edu.in', 'PATEL', 'PRAGNESHKUMAR', 'VIJAYBHAI', '89.38', '81', '9.33', '9.67', '9.57', '9.17', '9', '9.97', '9.45', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec082@charusat.edu.in', 'PATEL', 'PRASHANTKUMAR', 'AMBALAL', '89.08', '71.4', '6.2', '6.25', '4.93', '6.6', '6.72', '7.45', '6.48', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec083@charusat.edu.in', 'PATEL', 'PRITESHKUMAR', 'BHARATBHAI', '83.69', '77.2', '8.76', '8.85', '8.5', '8.43', '8.1', '8.83', '8.58', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec084@charusat.edu.in', 'PATEL', 'RINKU', 'AKSHAY', '91.23', '78.6', '8.9', '9.89', '10', '9.87', '10', '10', '9.77', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec085@charusat.edu.in', 'PATEL', 'RONAK', 'UMESHBHAI', '74.77', '65.2', '7.4', '8.64', '8', '8.7', '8.62', '9.03', '8.39', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec086@charusat.edu.in', 'PATEL', 'RONAKKUMAR', 'RAMESHBHAI', '84.92', '77.7', '2.96', '5', '5.47', '5.6', '4.72', '6.1', '5.51', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec087@charusat.edu.in', 'PATEL', 'RUTUL', 'YOGESHBHAI', '75.38', '69.2', '8', '9.32', '9.1', '9.13', '9.38', '9.55', '9.14', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec088@charusat.edu.in', 'PATEL', 'SIDDHARTHKUMAR', 'KANUBHAI', '85.23', '79.06', '7.4', '7.5', '7.8', '8.5', '8.34', '8.76', '8.12', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec089@charusat.edu.in', 'PATEL', 'UTKARSH', 'MANHARLAL', '79.69', '76.2', '3.73', '6.71', '5.23', '5.83', '4.69', '5.83', '5.69', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec091@charusat.edu.in', 'PATEL', 'VIKAS', 'NARAYANBHAI', '86.46', '72.6', '7.3', '9.07', '8.07', '8.17', '8.38', '8.34', '8.21', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec092@charusat.edu.in', 'PHULWARIA', 'JIGNESH', 'NANDKISHOR', '77.08', '72', '7.46', '8.71', '8.27', '8.47', '7.79', '8.45', '8.19', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec093@charusat.edu.in', 'PRAJAPATI', 'BRIJESHBHAI', 'JAYANTIBHAI', '84.92', '66.8', '7.4', '7.67', '8.13', '8.17', '8.17', '8.41', '8.06', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec094@charusat.edu.in', 'PUNADIYA', 'NILESHKUMAR', 'CHHAGANLAL', '76.69', '62.8', '6.4', '6.32', '6.1', '5.5', '4.9', '5.93', '6.02', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec095@charusat.edu.in', 'RAJPUT', 'NEERAJKUMAR', 'RAJKUMAR', '82.5', '77', '6.83', '7.67', '7.43', '7.8', '7.86', '8.62', '7.77', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec096@charusat.edu.in', 'RANDERWALA', 'SURBHI', 'BHARATKUMAR', '90.15', '75.4', '7.06', '7.71', '6.93', '8.57', '7.69', '8.55', '7.75', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec097@charusat.edu.in', 'SACHDEV', 'RUSHIT', 'YOGESHBHAI', '91.85', '81.4', '8.76', '9.14', '8.77', '8.43', '7.93', '8.55', '8.6', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec098@charusat.edu.in', 'SAVALIYA', 'CHIRAG', 'ASHOKBHAI', '87.54', '78', '6.83', '7.71', '8.37', '8.3', '7.83', '8.52', '7.93', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec099@charusat.edu.in', 'SEJPAL', 'RINKI', 'DIPAKBHAI', '87.54', '81.8', '9', '9.32', '9.23', '9.3', '8.28', '9.45', '9.1', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec100@charusat.edu.in', 'SHAH', 'ADITI', 'ASHWINKUMAR', '88.92', '81', '8.96', '9.71', '9.83', '9.57', '9.1', '10', '9.53', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec101@charusat.edu.in', 'SHAH', 'HITESH', 'HARAKCHAND', '89.69', '82.4', '7.86', '8.25', '7.37', '7.77', '6.31', '7.76', '7.55', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec103@charusat.edu.in', 'SHAH', 'NISARG', 'DEVENDRAKUMAR', '89.08', '76', '9.03', '8.6', '9.43', '8.77', '8.17', '9', '8.84', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec104@charusat.edu.in', 'SHAH', 'YESHA', 'HITESH', '91.85', '84.05', '9.2', '9.25', '9.07', '9.53', '8.62', '9.72', '9.23', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec105@charusat.edu.in', 'SHARMA', 'PARTH', 'RAJESHKUMAR', '90.46', '76.2', '7.16', '8.25', '9.17', '8.97', '9', '9.07', '8.7', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec106@charusat.edu.in', 'SHARMA', 'RIJUN', 'ANIL', '63.38', '51.6', '5.63', '6', '6.23', '5.43', '4.69', '5.97', '6', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3);
INSERT INTO `student_details` (`userid`, `Lastname`, `Firstname`, `Middlename`, `tenthresult`, `twelthresult`, `sem1`, `sem2`, `sem3`, `sem4`, `sem5`, `sem6`, `cgpa`, `Mobileno`, `Homeno`, `Diplomaresult`, `branch`, `gender`, `DOB`, `Guardian`, `address`, `year`, `city`, `areaofinterest`, `references`, `branchid`) VALUES
('10ec107@charusat.edu.in', 'SHARMA', 'SHREYAS', 'KAMLESH', '90', '88.4', '9.06', '9.42', '9.13', '9.47', '8.97', '9.45', '9.25', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec108@charusat.edu.in', 'SHETA', 'SAJAG', 'VINODBHAI', '89.08', '88.6', '8', '8.1', '6.87', '6.47', '7.45', '8.07', '7.48', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec109@charusat.edu.in', 'SINGH', 'MOHINI', 'MANOJ', '85.04', '68.8', '6.86', '7.57', '5.77', '6.97', '6.03', '6.41', '6.66', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec110@charusat.edu.in', 'SOLANKI', 'BAKUL', 'MANUBHAI', '74.92', '60', '6.96', '7.1', '5.97', '6.4', '3.07', '4.1', '6.06', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec111@charusat.edu.in', 'SUTHAR', 'BHOOMIKABEN', 'MAHENDRAKUMAR', '84.92', '63.6', '8.2', '9.1', '8.5', '8.57', '8.24', '9.07', '8.61', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec112@charusat.edu.in', 'SUVAGIYA', 'SHARADKUMAR', 'JAYANTIBHAI', '88.46', '76.8', '6.6', '7.42', '7.57', '8.57', '7.93', '8.76', '7.81', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec113@charusat.edu.in', 'T', 'MOUNIKA', 'BALASUBRAMANYAM', '89.8', '91', '8.1', '8.85', '8.6', '8.9', '8.17', '8.83', '8.57', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec115@charusat.edu.in', 'TALATI', 'ASHNABEN', 'JAYESHKUMAR', '84.77', '81', '8.5', '8.85', '7.03', '8.37', '6.83', '8.34', '8.12', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec116@charusat.edu.in', 'THAKKAR', 'NISHIT', 'JAGDISHBHAI', '87.69', '74.2', '5.86', '6.25', '6.43', '6.73', '7.14', '8.14', '6.82', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec117@charusat.edu.in', 'THUMBER', 'NEHABEN', 'RAJKUMAR', '86.77', '77', '7', '7.82', '7.93', '8.8', '8.45', '9.07', '8.24', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec118@charusat.edu.in', 'TRIVEDI', 'KHYATI', 'VIMAL', '81.85', '73.4', '9.3', '9.1', '9.43', '8.77', '8.24', '9.38', '9.04', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec119@charusat.edu.in', 'VAGHAMSHI', 'ATMANKUMAR', 'MANGALBHAI', '77.54', '67.4', '5.9', '5.1', '7.57', '7.67', '7.76', '8.21', '7.27', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec120@charusat.edu.in', 'VAGHASIYA', 'ARUNKUMAR', 'VINUBHAI', '79.08', '76.2', '5.53', '4.64', '6.2', '5.63', '5.45', '7.17', '6.05', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('10ec121@charusat.edu.in', 'VANK', 'YASHPAL', 'HARESHBHAI', '77.38', '61.8', '7.33', '8.07', '7.33', '7.83', '6.93', '8.28', '7.63', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('d11ec123@charusat.edu.in', 'MIRZA', 'MOHAMMAD', 'VASIM', '66.46', '', '', '', '6.37', '7.13', '6.59', '7.31', '6.85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ec124@charusat.edu.in', 'PARMAR', 'DHRUV', 'RAJENDRABHAI', '86.46', '', '', '', '8.23', '8.37', '8', '8.69', '8.32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ec125@charusat.edu.in', 'NAIK', 'DATTIKA', 'KENESHBHAI', '73.08', '', '', '', '6.27', '6.67', '6.24', '7.17', '6.58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ec126@charusat.edu.in', 'PATEL', 'RUCHITA', 'PRAVINBHAI', '83.54', '', '', '', '6.17', '7.03', '6.76', '7.69', '7.11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ec127@charusat.edu.in', 'GAJJAR', 'PARTH', 'PARESHBHAI', '72.71', '', '', '', '4.37', '5.5', '4.41', '6.38', '6.11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ec129@charusat.edu.in', 'SEDANI', 'SOHIL', 'HASMUKHBHAI', '79.43', '63', '', '', '8.13', '8.53', '7.41', '8.45', '8.14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ec130@charusat.edu.in', 'RAJ', 'MRUNALSINH', 'JITENDRASINH', '75.23', '', '', '', '3.63', '4.17', '3.28', '4.41', '4.69', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ec131@charusat.edu.in', 'GUSAI', 'JIGARGAR', 'KISHORGAR', '82.43', '52.8', '', '', '6.67', '6.6', '5.76', '6.52', '6.39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ec132@charusat.edu.in', 'SIDDHAPURA', 'SUNNYKUMAR', 'PARESHKUMAR', '52.29', '', '', '', '3.43', '5.23', '4.28', '6.1', '5.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ec133@charusat.edu.in', 'PANCHAL', 'BINDI', 'RAJESHKUMAR', '81.54', '', '', '', '4.37', '7.8', '6.72', '7.93', '7.07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ec134@charusat.edu.in', 'PATEL', 'CHIRAG', 'GHANSHYAMBHAI', '', '', '', '', '6.5', '8.27', '6.28', '5.62', '6.68', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ec136@charusat.edu.in', 'SHAH', 'RUSHABH', 'SHAILESH', '88.86', '53', '', '', '7.4', '6.87', '7.72', '7.76', '7.43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ec137@charusat.edu.in', 'PATEL', 'JAIMIN', 'JAYANTIBHAI', '81', '65.8', '', '', '6.93', '7.87', '7.17', '7.55', '7.38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ec138@charusat.edu.in', 'FULETRA', 'JAYKUMAR', 'KANTILAL', '75.29', '', '', '', '7.87', '8.4', '6.97', '8.48', '7.93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ec139@charusat.edu.in', 'PRAJAPATI', 'UMESHBHAI', 'KANTIBHAI', '79.14', '50.8', '', '', '7', '8.27', '6.86', '7.48', '7.41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ec140@charusat.edu.in', 'PIPALIYA', 'BHAVIK', 'KALUBHAI', '75.85', '', '', '', '8.03', '7.9', '7.28', '7.9', '7.78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ec141@charusat.edu.in', 'SUVAGIYA', 'NIKUNJKUMAR', 'JAYSUKHABHAI', '75.71', '56', '', '', '8.13', '8.33', '7.03', '8.38', '7.97', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ec142@charusat.edu.in', 'RATHOD', 'REKHA', 'AMRUTLAL', '71.57', '44.6', '', '', '3.9', '5.5', '5.45', '6.17', '5.58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ec143@charusat.edu.in', 'BHUT', 'DHARMENDRA', 'PREMJIBHAI', '73.43', '51.6', '', '', '7.4', '7.13', '7.24', '6.97', '7.19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ec144@charusat.edu.in', 'DOBARIYA', 'ANILKUMAR', 'PRAVINBHAI', '71', '', '', '', '7.4', '7.3', '6.45', '7.97', '7.28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ec145@charusat.edu.in', 'ZARMARIYA', 'DAMODARBHAI', 'MATHURBHAI', '63.08', '', '', '', '6.57', '5.6', '5.79', '7.14', '6.41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ec146@charusat.edu.in', 'CHANDALIA', 'SAGAR', 'SANJIVKUMAR', '76.92', '', '', '', '7.17', '7.23', '7.34', '7.9', '7.41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ec147@charusat.edu.in', 'ASAMADI', 'ABBASALI', 'VALIMAHAMAD', '77.54', '', '', '', '7.43', '7.83', '7.03', '7.76', '7.52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('d11ec148@charusat.edu.in', 'PAREKH', 'SHRUTI', 'JAYANTILAL', '71.42', '', '', '', '4.1', '6.57', '6.1', '6.41', '6.23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, NULL),
('08ec056@charusat.edu.in', 'PATEL', 'BIRENKUMAR', 'SURESHBHAI', '76.29', '60', '', '', '4.67', '6.1', '5.9', '7.28', '5.62', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('08ec059@charusat.edu.in', 'PATEL', 'DHRUVKUMAR', 'NARESHBHAI', '', '', '', '', '1.3', '3.37', '3.76', '5.48', '4.83', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('09ec117@charusat.edu.in', 'SOLANKI', 'JIGAR', 'RAMESHBHAI', '', '', '', '', '', '4', '1.8', '2.27', '4.23', NULL, NULL, NULL, 'EC', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 3),
('09IT097@charusat.edu.in', 'VARAVARIYA ', 'JAYESH', 'KARSHANBHAI', '', '', '5.5', '4.1', '5.0', '6.7', '4.9', '2.7', '5.51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('09IT111@charusat.edu.in', 'PATEL', 'DHAVAL', 'JITENDRABHAI', '77.5', '51.8', '5.1', '5.0', '4.1', '5.3', '5.7', '6.0', '5.60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('09IT112@charusat.edu.in', 'PATEL', 'KAUSHAL', 'SIDDHARTHKUMAR', '', '', '', '', '3.4', '3.9', '3.5', '5.3', '4.64', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('09IT117@charusat.edu.in', 'VALAND', 'SHREYAS', 'ARVINDBHAI', '59.2', '59', '5.0', '5.1', '5.0', '5.2', '4.9', '5.4', '5.14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT001@charusat.edu.in', 'ADODARIYA', 'SHRADDHA', 'AMRUTLAL', '89.6', '78.6', '6.6', '7.7', '8.4', '8.2', '8.2', '8.4', '7.97', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT002@charusat.edu.in', 'AGARWAL', 'GAURAV', 'SURENDRA', '80', '66.2', '5.7', '7.6', '7.0', '7.8', '7.4', '7.7', '7.39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT003@charusat.edu.in', 'AGARWAL', 'SAURAV', 'SURENDRA', '82', '71.4', '7.1', '7.8', '6.7', '7.3', '8.1', '8.1', '7.59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT004@charusat.edu.in', 'AGARWAL', 'SURBHI', 'LALITKUMAR', '80', '71', '8.7', '8.3', '9.2', '9.5', '9.5', '9.3', '9.13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT005@charusat.edu.in', 'AGRAWAL', 'HARSH', 'JAGDISHBHAI', '63.2', '72', '5.6', '4.9', '6.8', '7.2', '7.4', '5.6', '6.50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT006@charusat.edu.in', 'AGRAWAL', 'HARSHIT', 'RAJUBHAI', '83.5', '64.6', '6.7', '4.6', '5.8', '6.0', '6.6', '6.9', '6.22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT008@charusat.edu.in', 'BHADIYADRA', 'RAVI', 'PRAKASHKUMAR', '78.3', '73.4', '5.2', '5.6', '5.5', '5.3', '6.2', '5.2', '5.72', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT009@charusat.edu.in', 'BHIKADIYA', 'BRIJESH', 'BHIMJIBHAI', '86.3', '80.6', '5.4', '5.9', '7.3', '7.6', '7.3', '7.7', '6.93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT010@charusat.edu.in', 'BHINDI', 'MAYUR', 'AJAYKUMAR', '84', '69.6', '6.8', '4.3', '5.4', '5.3', '6.0', '5.9', '5.76', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT011@charusat.edu.in', 'CHAHWALA', 'EKTA', 'JATINKUMAR', '85.3', '66.8', '7.0', '7.3', '7.7', '8.1', '8.5', '8.0', '7.80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT013@charusat.edu.in', 'CHAUHAN', 'NILESH', 'RABHABHAI', '77.8', '59.6', '6.4', '4.7', '6.7', '6.4', '7.5', '6.7', '6.70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT014@charusat.edu.in', 'CHOKSHI', 'PANKTI', 'SUNILBHAI', '89.5', '77.4', '7.0', '6.6', '7.1', '7.6', '7.6', '6.5', '7.10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT015@charusat.edu.in', 'CHORARIA', 'SAURABH', 'DILIPKUMAR', '89.5', '77.4', '8.9', '8.5', '9.0', '8.7', '7.9', '7.9', '8.52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT016@charusat.edu.in', 'DAVE', 'NISARG', 'MADHUKARBHAI', '90.7', '68.6', '6.0', '4.9', '7.4', '8.6', '8.6', '8.9', '7.80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT017@charusat.edu.in', 'DESAI', 'HEMISHA', 'HIMMATBHAI', '84.6', '75.4', '4.0', '4.2', '2.8', '6.0', '5.8', '5.2', '5.51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT018@charusat.edu.in', 'DESAI', 'PAYAL', 'DHARMENDRABHAI', '82', '69.6', '6.4', '6.8', '7.9', '7.6', '8.5', '8.9', '7.79', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT019@charusat.edu.in', 'DHIMMAR', 'TEJASVINI', 'DHANSUKHLAL', '86', '71.0', '6.9', '7.6', '7.7', '8.3', '8.0', '7.7', '7.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT020@charusat.edu.in', 'DUDHAGARA', 'MAHIPAL', 'RAMJIBHAI', '88', '70.8', '7.0', '7.5', '7.1', '7.1', '7.9', '8.2', '7.51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT021@charusat.edu.in', 'DUNGRANI', 'HARDIK', 'RAVIBHAI', '78', '73', '5.4', '6.2', '7.2', '7.2', '7.1', '7.3', '6.86', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT022@charusat.edu.in', 'GOHEL', 'BHARGAV', 'MAHENDRAKUMAR', '56.3', '42', '2.6', '2.8', '3.8', '5.4', '5.4', '5.4', '5.09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT023@charusat.edu.in', 'GOHIL ', 'MAYUR', 'BHIKHABHAI', '82.9', '50.4', '4.0', '3.2', '6.0', '6.6', '6.2', '6.7', '5.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT024@charusat.edu.in', 'GOSWAMI', 'DEVANG', 'UMESHPURI', '85.5', '60.6', '6.2', '5.0', '7.4', '7.6', '7.4', '7.9', '7.05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT025@charusat.edu.in', 'GOSWAMI ', 'VISHWAS', 'CHIMANPURI ', '71.0', '66.8', '6.6', '4.2', '5.6', '6.2', '5.5', '5.2', '5.74', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT026@charusat.edu.in', 'GOTI', 'ADITYA', 'DHIRUBHAI', '80.9', '59.0', '5.1', '4.7', '6.3', '6.3', '6.5', '7.0', '6.37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT029@charusat.edu.in', 'JALORA', 'JATIN', 'BHARATBHAI', '76.4', '58.0', '5.0', '4.3', '5.8', '6.6', '7.1', '6.7', '6.16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT030@charusat.edu.in', 'JARIWALA', 'RUJAL', 'PRATIKKUMAR', '85.3', '68.8', '6.3', '7.4', '6.6', '7.7', '8.5', '8.2', '7.48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT032@charusat.edu.in', 'JULASANA', 'NIRAV', 'CHINLAL', '82.4', '77.4', '7.6', '6.7', '6.1', '6.6', '6.7', '6.9', '6.88', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT036@charusat.edu.in', 'KHAIRNAR', 'VYOMESH', 'SURESHBHAI', '79.0', '50.8', '7.4', '6.4', '6.4', '6.4', '6.3', '5.5', '6.47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT037@charusat.edu.in', 'KHANAPARA', 'BHOOMI', 'MANSUKHBHAI', '86.1', '66.4', '7.6', '7.3', '8.5', '8.3', '8.1', '7.7', '7.97', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT038@charusat.edu.in', 'KHATANA', 'SHAKTI', 'KARASHANBHAI', '74.1', '64', '4.8', '5.4', '5.7', '6.1', '5.4', '5.9', '5.69', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT039@charusat.edu.in', 'KHATRI', 'FAIZAL', 'MUSTUFA', '82.8', '78.8', '8.8', '8.2', '7.9', '9.0', '8.1', '8.0', '8.35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT041@charusat.edu.in', 'KOTHARI', 'SANKEY', 'AILESHBHAI', '81.3', '69.8', '7.0', '7.3', '7.3', '7.4', '7.5', '7.8', '7.41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT042@charusat.edu.in', 'KUMAR', 'UTSAV', 'SATISHCHANDRA', '85.2', '71.2', '7.6', '6.7', '7.7', '8.4', '8.7', '8.3', '8.01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT044@charusat.edu.in', 'MASHRUWALA', 'DHAVAL', 'NITINBHAI', '84.2', '71.8', '8.8', '7.3', '8.5', '8.7', '8.8', '8.5', '8.48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT045@charusat.edu.in', 'MAVANI', 'DIVYESH', 'NATAVARLAL', '86.9', '77', '5.7', '5.4', '6.0', '6.0', '6.4', '5.9', '6.09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT047@charusat.edu.in', 'MEHTA', 'CHIRAG', 'BHANUBHAI', '76.4', '76.6', '8.5', '7.2', '8.3', '9.3', '9.0', '9.1', '8.58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT049@charusat.edu.in', 'MISTRY', 'SHREEDA', 'DEEEAKBHAI', '80.3', '66', '5.9', '5.9', '6.3', '6.9', '7.2', '6.5', '6.48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT050@charusat.edu.in', 'MODI', 'DEZI', 'VINAYKUMAR', '73.6', '74.6', '5.5', '3.3', '6.0', '5.1', '3.7', '4.8', '5.57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT052@charusat.edu.in', 'MODI', 'KEYUR', 'RAJESHKUMAR', '86.1', '67.0', '7.0', '4.8', '6.2', '7.4', '7.2', '6.7', '6.70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT054@charusat.edu.in', 'OZA', 'DEVAL', 'YOGESHBHAI', '67.0', '73.8', '5.2', '4.7', '6.0', '5.9', '6.0', '6.1', '5.84', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT056@charusat.edu.in', 'PANJWANI', 'NITESH', 'PAVANKUMAR', '85.3', '78', '8.3', '8.4', '7.8', '8.6', '7.6', '7.8', '8.11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT058@charusat.edu.in', 'PANSURIA', 'ANKIT', 'VINODBHAI', '86.3', '77%', '7.4', '5.5', '5.5', '6.9', '6.5', '6.4', '6.52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT059@charusat.edu.in', 'PARMAR', 'DIPA', 'SHAILESHBHAI', '82.3', '64.6', '5.8', '6.4', '6.5', '7.3', '6.8', '6.7', '6.63', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT062@charusat.edu.in', 'PATEL', 'CHANDANI', 'RAMANIKLAL', '83.5', '68.4', '7.1', '7.5', '7.1', '7.4', '7.6', '6.6', '7.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT063@charusat.edu.in', 'PATEL', 'EKTA', 'CHANDRAKANTH', '89.6', '71.4', '5.1', '7.2', '6.9', '7.9', '8.1', '7.6', '7.29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT066@charusat.edu.in', 'PATEL', 'JAY', 'AMRUTBHAI', '74.3', '59.4', '8.0', '8.2', '8.6', '8.0', '8.3', '7.1', '8.06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT071@charusat.edu.in', 'PATEL', 'MEET', 'JAGDISHBHAI', '84.1', '73.4', '8.3', '8.4', '6.9', '7.3', '6.3', '7.9', '7.56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT072@charusat.edu.in', 'PATEL', 'MEHUL', 'VASANTBHAI', '79.5', '68', '5.6', '4.9', '6.5', '7.3', '6.8', '6.3', '6.37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT073@charusat.edu.in', 'PATEL', 'NISHANT', 'HARISHBHAI', '79.8', '70.2', '7.1', '6.8', '5.3', '7.3', '2.9', '5.4', '6.15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT074@charusat.edu.in', 'PATEL', 'PANKAJ', 'GIRISHBHAI', '74.0', '73', '7.5', '6.8', '6.2', '6.5', '6.9', '7.0', '6.83', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT075@charusat.edu.in', 'PATEL', 'PARTH', 'SARJUBHAI', '79.4', '88', '8.8', '8.2', '8.1', '8.9', '8.9', '8.4', '8.59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT082@charusat.edu.in', 'PATHAK', 'NILAM', 'VIPUL', '93', '83.4', '9.0', '9.5', '8.2', '9.1', '8.8', '7.8', '8.76', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT083@charusat.edu.in', 'PAVAGADHI', 'SIDDHARTH', 'ASHOKBHAI', '88.7', '79', '8.7', '7.1', '8.0', '6.7', '7.7', '7.7', '7.77', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT084@charusat.edu.in', 'PRAJAPATI', 'RAVI', 'VISHNUBHAI', '78.3', '66.6', '6.8', '7.0', '7.1', '8.0', '6.9', '7.0', '7.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT087@charusat.edu.in', 'RANA', 'ALPA', 'GHANSHYAMBHAI', '74', '67.4', '7.4', '7.5', '6.5', '7.5', '8.1', '7.4', '7.43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT090@charusat.edu.in', 'SANGANI', 'RUCHI', 'KANTIBHAI', '76.4', '66.4', '7.3', '6.2', '6.6', '7.6', '6.5', '6.8', '6.86', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT097@charusat.edu.in', 'SHAH', 'LISHITA', 'SUNILKUMAR', '84.6', '72', '8.8', '9.7', '9.4', '9.2', '8.7', '9.3', '9.24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT100@charusat.edu.in', 'SHAH', 'SIDDDHARTH', 'PRADEEPBHAI', '90', '66.2', '7.6', '7.7', '8.3', '8.7', '7.6', '8.4', '8.09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT102@charusat.edu.in', 'SHAIKH', 'ANIS', 'ANWAR', '84.9', '81', '5.8', '5.6', '5.4', '6.9', '6.9', '6.9', '6.52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT103@charusat.edu.in', 'SHARMA', 'MANISHA', 'PRADEEP', '79.5', '67', '6.7', '6.2', '6.6', '7.5', '7.2', '5.9', '6.84', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT104@charusat.edu.in', 'SOJITRA', 'BHAKTI', 'PRAFULKUMAR', '84.1', '75.2', '7.2', '8.0', '8.3', '8.3', '7.6', '6.6', '7.72', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT105@charusat.edu.in', 'SOLANKI', 'PRASHANT', 'BABUBHAI', '81.0', '51', '5.0', '6.4', '5.8', '6.7', '5.6', '6.1', '6.07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT106@charusat.edu.in', 'SUTARIYA', 'DILIP', 'LALLUBHAI', '77.5', '67.6', '6.6', '6.9', '6.7', '7.7', '6.6', '7.4', '7.02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT108@charusat.edu.in', 'TAKHTANI', 'HITESH', 'KANAIYALAL', '79', '76', '5.9', '6.3', '5.9', '6.6', '6.6', '6.8', '6.43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT109@charusat.edu.in', 'TRIVEDI', 'KANDARP', 'TARUNKUMAR', '78.9', '60', '5.1', '4.9', '6.3', '6.3', '6.2', '6.6', '6.16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT111@charusat.edu.in', 'TRIVEDI', 'PARANTAP', 'BIMALBHAI', '82', '82', '8.9', '7.4', '6.1', '7.7', '5.0', '5.8', '6.94', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT113@charusat.edu.in', 'TULSANI', 'KARAN', 'LADHARAM', '76.1', '77.6', '7.4', '8.0', '8.6', '9.4', '8.6', '7.7', '8.33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT114@charusat.edu.in', 'UNDHAD', 'BHAVESH', 'CHHAGANBHAI', '74.6', '72.2', '5.7', '5.8', '6.0', '6.4', '5.6', '5.9', '6.01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT115@charusat.edu.in', 'VACHHANI', 'POOJA', 'DHARMSHIBHAI', '88.3', '74.6', '7.0', '7.6', '8.5', '9.0', '8.3', '8.6', '8.20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT116@charusat.edu.in', 'VADHVANA', 'SHREYANG', 'KANIYALAL', '72.7', '62.6', '3.7', '3.9', '4.0', '6.2', '6.7', '6.7', '5.84', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT117@charusat.edu.in', 'VAJARIA', 'VISHW', 'HEMENDRABHAI', '85.8', '65', '5.9', '5.6', '5.5', '6.8', '6.7', '6.0', '6.19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT118@charusat.edu.in', 'VARIA', 'JAY', 'BHARATBHAI', '82.6', '68.8', '5.5', '5.1', '4.5', '7.1', '5.8', '7.0', '6.22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT119@charusat.edu.in', 'VARSANI', 'DAXA', 'KUNVARJIBHAI', '85.6', '82.1', '7.8', '8.5', '8.8', '9.7', '9.4', '8.9', '8.90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT121@charusat.edu.in', 'VIRADIYA', 'SANDEEP', 'PRAVINBHAI', '80', '72', '7.2', '7.8', '8.1', '8.5', '8.3', '8.2', '8.07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10IT122@charusat.edu.in', 'VORA', 'ALAY', 'KETANBHAI', '80.0', '85.2', '9.0', '8.6', '8.6', '9.0', '8.6', '8.5', '8.77', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('D11IT123@charusat.edu.in', 'PATEL', 'HIMANI', 'ARUNBHAI', '89.5', '', '', '', '7.8', '8.7', '8.7', '4.6', '8.23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('D11IT124@charusat.edu.in', 'GUSWAMI', 'DILIP', 'BHIKHAGAR', '76.4', '41.6', '', '', '5.7', '5.7', '6.3', '7.5', '6.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('D11IT125@charusat.edu.in', 'SUKHIYAJIWALA', 'SAGARKUMAR', 'HARISHKUMAR', '84.7', '', '', '', '7.6', '8.0', '8.1', '7.7', '7.90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('D11IT127@charusat.edu.in', 'ACHARYA', 'JAIMIN', 'TUSHAR', '81.2', '42.8', '', '', '6.9', '6.7', '6.3', '7.9', '6.83', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('D11IT128@charusat.edu.in', 'PATEL', 'NIYATI', 'KAMLESHBHAI', '88', '', '', '', '6.2', '7.2', '6.9', '7.2', '7.09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('D11IT129@charusat.edu.in', 'PATEL', 'PALAK', 'RAMESHBHAI', '82.1', '', '', '', '6.3', '7.7', '6.9', '8.0', '7.23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('D11IT131@charusat.edu.in', 'PANCHAL', 'DHRUV', 'RAMESHBHAI', '65.8', '', '', '', '5.3', '7.8', '7.4', '6.1', '7.07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('D11IT132@charusat.edu.in', 'BRAHMBHATT', 'HEMADRI', 'BHUPENDRABHAI', '83.1', '52.6', '', '', '6.3', '6.9', '7.2', '7.1', '6.97', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('D11IT133@charusat.edu.in', 'BHIMANI', 'RAJNIKANT', 'BHAVESHBHAI', '88.1', '59', '', '', '6.7', '8.2', '8.2', '7.4', '7.78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('D11IT134@charusat.edu.in', 'PATEL', 'MEET', 'GHANSHYAMBHAI', '77.7', '', '', '', '6.3', '8.3', '7.1', '7.9', '7.22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('D11IT135@charusat.edu.in', 'GUPTA', 'ROZY', 'ANILKUMAR', '89.4', '48.6', '', '', '7.7', '7.9', '7.2', '7.1', '7.63', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('D11IT136@charusat.edu.in', 'GOJIYA ', 'JAYSHREE', 'JETHABHAI', '79.8', '', '', '', '3.5', '4.5', '4.6', '7.5', '5.52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('D11IT137@charusat.edu.in', '        PATHAN', 'MAHMMADMOINRAJA', 'ATIKURRAHEMAN', '77.1', '39.4', '', '', '6.4', '7.3', '7.0', '6.1', '6.83', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('D11IT138@charusat.edu.in', 'RAYMANGIYA', 'PIYUSH', 'RASIKBHAI', '80.6', '', '', '', '7.0', '7.6', '7.7', '6.4', '1/7/1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('D11IT140@charusat.edu.in', 'MOMIN', 'MANJURAEHMAD', 'ANVARALI', '82.2', '52', '', '', '6.5', '8.6', '7.8', '7.4', '7.72', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('D11IT141@\ncharusat.edu.in', 'SHUKLA', 'NISARG', 'YOGESHKUMAR', '80', '', '', '', '6.9', '7.4', '7.4', '7.7', '7.37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('D11IT142@charusat.edu.in', 'OAD', 'AJAY', 'GOVINDBHAI', '74', '', '', '', '5.2', '5.4', '5.5', '6.2', '5.61', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('D11IT143@charusat.edu.in', 'SHARMA', 'ASHOK', 'RAJKUMAR', '66.4', '', '', '', '3.5', '5.8', '4.3', '5.7', '5.76', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('D11IT144@charusat.edu.in', 'UMARIYA', 'DIVYESH', 'ASHWINBHAI', '72.6', '', '', '', '6.4', '7.0', '6.1', '5.7', '6.33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('D11IT145@charusat.edu.in', 'PADHARE', 'PAPESH', 'KISNA', '87.8', '52', '', '', '7.8', '9.0', '7.9', '8.0', '8.21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('D11IT146@charusat.edu.in', 'SHARMA', 'TUSHAR', 'ASHOKBHAI', '81.4', '42.4', '', '', '5.3', '5.4', '5.5', '5.8', '5.55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('D11IT147@charusat.edu.in', 'PANDYA', 'DEVANGI', 'BHARATKUMAR', '79.0', '', '', '', '6.5', '8.0', '7.9', '8.1', '7.66', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_details_temp`
--

CREATE TABLE IF NOT EXISTS `student_details_temp` (
  `Userid` varchar(50) NOT NULL,
  `Firstname` varchar(45) NOT NULL,
  `Middlename` varchar(45) NOT NULL,
  `Lastname` varchar(45) NOT NULL,
  `Year` bigint(10) NOT NULL,
  `Branch` varchar(10) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` varchar(25) NOT NULL,
  `Guardian` text NOT NULL,
  `Address` text NOT NULL,
  `City` varchar(25) NOT NULL,
  `Mobileno` bigint(20) NOT NULL,
  `Homeno` bigint(20) NOT NULL,
  `Tenthresult` int(11) NOT NULL,
  `Twelthresult` int(11) NOT NULL,
  `Diplomaresult` int(11) NOT NULL,
  `Sem 1` int(11) NOT NULL,
  `Sem 2` int(11) NOT NULL,
  `Sem 3` int(11) NOT NULL,
  `Sem 4` int(11) NOT NULL,
  `Sem 5` int(11) NOT NULL,
  `Sem 6` int(11) NOT NULL,
  `Sem 7` int(11) NOT NULL,
  `Sem 8` int(11) NOT NULL,
  `CGPA` float NOT NULL,
  `Areaofinterest` text NOT NULL,
  `References` text NOT NULL,
  `branch_id` int(2) DEFAULT NULL,
  PRIMARY KEY (`Userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_details_temp`
--

INSERT INTO `student_details_temp` (`Userid`, `Firstname`, `Middlename`, `Lastname`, `Year`, `Branch`, `Gender`, `DOB`, `Guardian`, `Address`, `City`, `Mobileno`, `Homeno`, `Tenthresult`, `Twelthresult`, `Diplomaresult`, `Sem 1`, `Sem 2`, `Sem 3`, `Sem 4`, `Sem 5`, `Sem 6`, `Sem 7`, `Sem 8`, `CGPA`, `Areaofinterest`, `References`, `branch_id`) VALUES
('09ce006@charusat.edu.in', 'Ankur', 'Jagdishbhai', 'Lakhani', 2013, 'CE', 'male', '01/08/2003', 'serviceman', 'Maharaj Baug,"Shri Govind Krupa",Porbandar', 'Porbandar', 2147483647, 2147483647, 93, 87, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 'Java', 'Mr.Chirag Radia TCS', 1),
('09ce007@charusat.edu.in', 'Aru', 'Pankaj', 'Thanki', 2013, 'CE', 'male', '03/18/2013', 'chef', 'Maharaj Baug,"Shri Govind Krupa",porbandar', 'Porbandar', 2147483647, 2147483647, 93, 80, 0, 9, 9, 9, 9, 9, 9, 9, 9, 9, 'Web development', 'Mr.Ashish Patel', 1),
('09ce008@charusat.edu.in', '', '', '', 0, '', 'male', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, '', '', 1),
('09ec006@charusat.edu.in', 'Jay', 'Ramniklal', 'Lakhani', 2013, 'EC', 'male', '05/01/2003', 'business man', '104,Rupali road,porbandar', 'Porbandar', 9426992584, 9429775514, 80, 90, 0, 9, 9, 9, 9, 9, 9, 9, 9, 9, 'PHP and web designing', 'Mr.Shrikanth Eswarrappa', 3),
('09ec007@charusat.edu.in', 'Vivek', 'Ramesh', 'Bhatt', 2013, 'EC', 'male', '02/20/2003', 'business man', '266,ring road,rajkot', 'Rajkot', 94946522523, 94267913556, 7, 7, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 'Java', '', 3),
('09ec008@charusat.edu.in', '', '', '', 0, 'EC', 'male', '', '', '', '', 0, 0, 0, 0, 0, 9, 9, 9, 9, 9, 9, 9, 9, 9, '', '', 3),
('10ce067@charusat.edu.in', 'Kaushal', 'Ashokbhai', 'Paneri', 2013, 'CE', 'male', '06/04/2013', 'service', 'askjdnlkajndskljn', 'Junagadh', 99999999999, 9999999999, 88, 88, 88, 8, 8, 8, 8, 8, 8, 8, 8, 8, 'kajhsdkjaksjhd', 'uiasudkjadh', 1),
('11ce091@charusat.edu.in', 'Yash', 'J', 'Patel', 2015, 'CE', 'male', '12/12/1993', 'jeam', 'dcvnzsl8', 'vado', 7878788787, 0, 82, 82, 0, 9, 9, 9, 9, 9, 9, 9, 9, 9, 'java', 'hnwodj', 1),
('11ce121@charusat.edu.in', '', '', '', 2015, 'CE', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `table 23`
--

CREATE TABLE IF NOT EXISTS `table 23` (
  `col 1` varchar(50) DEFAULT NULL,
  `COL 2` varchar(14) DEFAULT NULL,
  `COL 3` varchar(15) DEFAULT NULL,
  `COL 4` varchar(14) DEFAULT NULL,
  `COL 5` varchar(4) DEFAULT NULL,
  `COL 6` varchar(4) DEFAULT NULL,
  `COL 7` varchar(3) DEFAULT NULL,
  `COL 8` varchar(3) DEFAULT NULL,
  `COL 9` varchar(3) DEFAULT NULL,
  `COL 10` varchar(3) DEFAULT NULL,
  `COL 11` varchar(3) DEFAULT NULL,
  `COL 12` varchar(3) DEFAULT NULL,
  `COL 13` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table 23`
--

INSERT INTO `table 23` (`col 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`, `COL 10`, `COL 11`, `COL 12`, `COL 13`) VALUES
('09IT097@charusat.edu.in', 'VARAVARIYA ', 'JAYESH', 'KARSHANBHAI', '', '', '5.5', '4.1', '5.0', '6.7', '4.9', '2.7', '5.51'),
('09IT111@charusat.edu.in', 'PATEL', 'DHAVAL', 'JITENDRABHAI', '77.5', '51.8', '5.1', '5.0', '4.1', '5.3', '5.7', '6.0', '5.60'),
('09IT112@charusat.edu.in', 'PATEL', 'KAUSHAL', 'SIDDHARTHKUMAR', '', '', '', '', '3.4', '3.9', '3.5', '5.3', '4.64'),
('09IT117@charusat.edu.in', 'VALAND', 'SHREYAS', 'ARVINDBHAI', '59.2', '59', '5.0', '5.1', '5.0', '5.2', '4.9', '5.4', '5.14'),
('10IT001@charusat.edu.in', 'ADODARIYA', 'SHRADDHA', 'AMRUTLAL', '89.6', '78.6', '6.6', '7.7', '8.4', '8.2', '8.2', '8.4', '7.97'),
('10IT002@charusat.edu.in', 'AGARWAL', 'GAURAV', 'SURENDRA', '80', '66.2', '5.7', '7.6', '7.0', '7.8', '7.4', '7.7', '7.39'),
('10IT003@charusat.edu.in', 'AGARWAL', 'SAURAV', 'SURENDRA', '82', '71.4', '7.1', '7.8', '6.7', '7.3', '8.1', '8.1', '7.59'),
('10IT004@charusat.edu.in', 'AGARWAL', 'SURBHI', 'LALITKUMAR', '80', '71', '8.7', '8.3', '9.2', '9.5', '9.5', '9.3', '9.13'),
('10IT005@charusat.edu.in', 'AGRAWAL', 'HARSH', 'JAGDISHBHAI', '63.2', '72', '5.6', '4.9', '6.8', '7.2', '7.4', '5.6', '6.50'),
('10IT006@charusat.edu.in', 'AGRAWAL', 'HARSHIT', 'RAJUBHAI', '83.5', '64.6', '6.7', '4.6', '5.8', '6.0', '6.6', '6.9', '6.22'),
('10IT008@charusat.edu.in', 'BHADIYADRA', 'RAVI', 'PRAKASHKUMAR', '78.3', '73.4', '5.2', '5.6', '5.5', '5.3', '6.2', '5.2', '5.72'),
('10IT009@charusat.edu.in', 'BHIKADIYA', 'BRIJESH', 'BHIMJIBHAI', '86.3', '80.6', '5.4', '5.9', '7.3', '7.6', '7.3', '7.7', '6.93'),
('10IT010@charusat.edu.in', 'BHINDI', 'MAYUR', 'AJAYKUMAR', '84', '69.6', '6.8', '4.3', '5.4', '5.3', '6.0', '5.9', '5.76'),
('10IT011@charusat.edu.in', 'CHAHWALA', 'EKTA', 'JATINKUMAR', '85.3', '66.8', '7.0', '7.3', '7.7', '8.1', '8.5', '8.0', '7.80'),
('10IT013@charusat.edu.in', 'CHAUHAN', 'NILESH', 'RABHABHAI', '77.8', '59.6', '6.4', '4.7', '6.7', '6.4', '7.5', '6.7', '6.70'),
('10IT014@charusat.edu.in', 'CHOKSHI', 'PANKTI', 'SUNILBHAI', '89.5', '77.4', '7.0', '6.6', '7.1', '7.6', '7.6', '6.5', '7.10'),
('10IT015@charusat.edu.in', 'CHORARIA', 'SAURABH', 'DILIPKUMAR', '89.5', '77.4', '8.9', '8.5', '9.0', '8.7', '7.9', '7.9', '8.52'),
('10IT016@charusat.edu.in', 'DAVE', 'NISARG', 'MADHUKARBHAI', '90.7', '68.6', '6.0', '4.9', '7.4', '8.6', '8.6', '8.9', '7.80'),
('10IT017@charusat.edu.in', 'DESAI', 'HEMISHA', 'HIMMATBHAI', '84.6', '75.4', '4.0', '4.2', '2.8', '6.0', '5.8', '5.2', '5.51'),
('10IT018@charusat.edu.in', 'DESAI', 'PAYAL', 'DHARMENDRABHAI', '82', '69.6', '6.4', '6.8', '7.9', '7.6', '8.5', '8.9', '7.79'),
('10IT019@charusat.edu.in', 'DHIMMAR', 'TEJASVINI', 'DHANSUKHLAL', '86', '71.0', '6.9', '7.6', '7.7', '8.3', '8.0', '7.7', '7.75'),
('10IT020@charusat.edu.in', 'DUDHAGARA', 'MAHIPAL', 'RAMJIBHAI', '88', '70.8', '7.0', '7.5', '7.1', '7.1', '7.9', '8.2', '7.51'),
('10IT021@charusat.edu.in', 'DUNGRANI', 'HARDIK', 'RAVIBHAI', '78', '73', '5.4', '6.2', '7.2', '7.2', '7.1', '7.3', '6.86'),
('10IT022@charusat.edu.in', 'GOHEL', 'BHARGAV', 'MAHENDRAKUMAR', '56.3', '42', '2.6', '2.8', '3.8', '5.4', '5.4', '5.4', '5.09'),
('10IT023@charusat.edu.in', 'GOHIL ', 'MAYUR', 'BHIKHABHAI', '82.9', '50.4', '4.0', '3.2', '6.0', '6.6', '6.2', '6.7', '5.99'),
('10IT024@charusat.edu.in', 'GOSWAMI', 'DEVANG', 'UMESHPURI', '85.5', '60.6', '6.2', '5.0', '7.4', '7.6', '7.4', '7.9', '7.05'),
('10IT025@charusat.edu.in', 'GOSWAMI ', 'VISHWAS', 'CHIMANPURI ', '71.0', '66.8', '6.6', '4.2', '5.6', '6.2', '5.5', '5.2', '5.74'),
('10IT026@charusat.edu.in', 'GOTI', 'ADITYA', 'DHIRUBHAI', '80.9', '59.0', '5.1', '4.7', '6.3', '6.3', '6.5', '7.0', '6.37'),
('10IT029@charusat.edu.in', 'JALORA', 'JATIN', 'BHARATBHAI', '76.4', '58.0', '5.0', '4.3', '5.8', '6.6', '7.1', '6.7', '6.16'),
('10IT030@charusat.edu.in', 'JARIWALA', 'RUJAL', 'PRATIKKUMAR', '85.3', '68.8', '6.3', '7.4', '6.6', '7.7', '8.5', '8.2', '7.48'),
('10IT032@charusat.edu.in', 'JULASANA', 'NIRAV', 'CHINLAL', '82.4', '77.4', '7.6', '6.7', '6.1', '6.6', '6.7', '6.9', '6.88'),
('10IT036@charusat.edu.in', 'KHAIRNAR', 'VYOMESH', 'SURESHBHAI', '79.0', '50.8', '7.4', '6.4', '6.4', '6.4', '6.3', '5.5', '6.47'),
('10IT037@charusat.edu.in', 'KHANAPARA', 'BHOOMI', 'MANSUKHBHAI', '86.1', '66.4', '7.6', '7.3', '8.5', '8.3', '8.1', '7.7', '7.97'),
('10IT038@charusat.edu.in', 'KHATANA', 'SHAKTI', 'KARASHANBHAI', '74.1', '64', '4.8', '5.4', '5.7', '6.1', '5.4', '5.9', '5.69'),
('10IT039@charusat.edu.in', 'KHATRI', 'FAIZAL', 'MUSTUFA', '82.8', '78.8', '8.8', '8.2', '7.9', '9.0', '8.1', '8.0', '8.35'),
('10IT041@charusat.edu.in', 'KOTHARI', 'SANKEY', 'AILESHBHAI', '81.3', '69.8', '7.0', '7.3', '7.3', '7.4', '7.5', '7.8', '7.41'),
('10IT042@charusat.edu.in', 'KUMAR', 'UTSAV', 'SATISHCHANDRA', '85.2', '71.2', '7.6', '6.7', '7.7', '8.4', '8.7', '8.3', '8.01'),
('10IT044@charusat.edu.in', 'MASHRUWALA', 'DHAVAL', 'NITINBHAI', '84.2', '71.8', '8.8', '7.3', '8.5', '8.7', '8.8', '8.5', '8.48'),
('10IT045@charusat.edu.in', 'MAVANI', 'DIVYESH', 'NATAVARLAL', '86.9', '77', '5.7', '5.4', '6.0', '6.0', '6.4', '5.9', '6.09'),
('10IT047@charusat.edu.in', 'MEHTA', 'CHIRAG', 'BHANUBHAI', '76.4', '76.6', '8.5', '7.2', '8.3', '9.3', '9.0', '9.1', '8.58'),
('10IT049@charusat.edu.in', 'MISTRY', 'SHREEDA', 'DEEEAKBHAI', '80.3', '66', '5.9', '5.9', '6.3', '6.9', '7.2', '6.5', '6.48'),
('10IT050@charusat.edu.in', 'MODI', 'DEZI', 'VINAYKUMAR', '73.6', '74.6', '5.5', '3.3', '6.0', '5.1', '3.7', '4.8', '5.57'),
('10IT052@charusat.edu.in', 'MODI', 'KEYUR', 'RAJESHKUMAR', '86.1', '67.0', '7.0', '4.8', '6.2', '7.4', '7.2', '6.7', '6.70'),
('10IT054@charusat.edu.in', 'OZA', 'DEVAL', 'YOGESHBHAI', '67.0', '73.8', '5.2', '4.7', '6.0', '5.9', '6.0', '6.1', '5.84'),
('10IT056@charusat.edu.in', 'PANJWANI', 'NITESH', 'PAVANKUMAR', '85.3', '78', '8.3', '8.4', '7.8', '8.6', '7.6', '7.8', '8.11'),
('10IT058@charusat.edu.in', 'PANSURIA', 'ANKIT', 'VINODBHAI', '86.3', '77%', '7.4', '5.5', '5.5', '6.9', '6.5', '6.4', '6.52'),
('10IT059@charusat.edu.in', 'PARMAR', 'DIPA', 'SHAILESHBHAI', '82.3', '64.6', '5.8', '6.4', '6.5', '7.3', '6.8', '6.7', '6.63'),
('10IT062@charusat.edu.in', 'PATEL', 'CHANDANI', 'RAMANIKLAL', '83.5', '68.4', '7.1', '7.5', '7.1', '7.4', '7.6', '6.6', '7.25'),
('10IT063@charusat.edu.in', 'PATEL', 'EKTA', 'CHANDRAKANTH', '89.6', '71.4', '5.1', '7.2', '6.9', '7.9', '8.1', '7.6', '7.29'),
('10IT066@charusat.edu.in', 'PATEL', 'JAY', 'AMRUTBHAI', '74.3', '59.4', '8.0', '8.2', '8.6', '8.0', '8.3', '7.1', '8.06'),
('10IT071@charusat.edu.in', 'PATEL', 'MEET', 'JAGDISHBHAI', '84.1', '73.4', '8.3', '8.4', '6.9', '7.3', '6.3', '7.9', '7.56'),
('10IT072@charusat.edu.in', 'PATEL', 'MEHUL', 'VASANTBHAI', '79.5', '68', '5.6', '4.9', '6.5', '7.3', '6.8', '6.3', '6.37'),
('10IT073@charusat.edu.in', 'PATEL', 'NISHANT', 'HARISHBHAI', '79.8', '70.2', '7.1', '6.8', '5.3', '7.3', '2.9', '5.4', '6.15'),
('10IT074@charusat.edu.in', 'PATEL', 'PANKAJ', 'GIRISHBHAI', '74.0', '73', '7.5', '6.8', '6.2', '6.5', '6.9', '7.0', '6.83'),
('10IT075@charusat.edu.in', 'PATEL', 'PARTH', 'SARJUBHAI', '79.4', '88', '8.8', '8.2', '8.1', '8.9', '8.9', '8.4', '8.59'),
('10IT082@charusat.edu.in', 'PATHAK', 'NILAM', 'VIPUL', '93', '83.4', '9.0', '9.5', '8.2', '9.1', '8.8', '7.8', '8.76'),
('10IT083@charusat.edu.in', 'PAVAGADHI', 'SIDDHARTH', 'ASHOKBHAI', '88.7', '79', '8.7', '7.1', '8.0', '6.7', '7.7', '7.7', '7.77'),
('10IT084@charusat.edu.in', 'PRAJAPATI', 'RAVI', 'VISHNUBHAI', '78.3', '66.6', '6.8', '7.0', '7.1', '8.0', '6.9', '7.0', '7.25'),
('10IT087@charusat.edu.in', 'RANA', 'ALPA', 'GHANSHYAMBHAI', '74', '67.4', '7.4', '7.5', '6.5', '7.5', '8.1', '7.4', '7.43'),
('10IT090@charusat.edu.in', 'SANGANI', 'RUCHI', 'KANTIBHAI', '76.4', '66.4', '7.3', '6.2', '6.6', '7.6', '6.5', '6.8', '6.86'),
('10IT097@charusat.edu.in', 'SHAH', 'LISHITA', 'SUNILKUMAR', '84.6', '72', '8.8', '9.7', '9.4', '9.2', '8.7', '9.3', '9.24'),
('10IT100@charusat.edu.in', 'SHAH', 'SIDDDHARTH', 'PRADEEPBHAI', '90', '66.2', '7.6', '7.7', '8.3', '8.7', '7.6', '8.4', '8.09'),
('10IT102@charusat.edu.in', 'SHAIKH', 'ANIS', 'ANWAR', '84.9', '81', '5.8', '5.6', '5.4', '6.9', '6.9', '6.9', '6.52'),
('10IT103@charusat.edu.in', 'SHARMA', 'MANISHA', 'PRADEEP', '79.5', '67', '6.7', '6.2', '6.6', '7.5', '7.2', '5.9', '6.84'),
('10IT104@charusat.edu.in', 'SOJITRA', 'BHAKTI', 'PRAFULKUMAR', '84.1', '75.2', '7.2', '8.0', '8.3', '8.3', '7.6', '6.6', '7.72'),
('10IT105@charusat.edu.in', 'SOLANKI', 'PRASHANT', 'BABUBHAI', '81.0', '51', '5.0', '6.4', '5.8', '6.7', '5.6', '6.1', '6.07'),
('10IT106@charusat.edu.in', 'SUTARIYA', 'DILIP', 'LALLUBHAI', '77.5', '67.6', '6.6', '6.9', '6.7', '7.7', '6.6', '7.4', '7.02'),
('10IT108@charusat.edu.in', 'TAKHTANI', 'HITESH', 'KANAIYALAL', '79', '76', '5.9', '6.3', '5.9', '6.6', '6.6', '6.8', '6.43'),
('10IT109@charusat.edu.in', 'TRIVEDI', 'KANDARP', 'TARUNKUMAR', '78.9', '60', '5.1', '4.9', '6.3', '6.3', '6.2', '6.6', '6.16'),
('10IT111@charusat.edu.in', 'TRIVEDI', 'PARANTAP', 'BIMALBHAI', '82', '82', '8.9', '7.4', '6.1', '7.7', '5.0', '5.8', '6.94'),
('10IT113@charusat.edu.in', 'TULSANI', 'KARAN', 'LADHARAM', '76.1', '77.6', '7.4', '8.0', '8.6', '9.4', '8.6', '7.7', '8.33'),
('10IT114@charusat.edu.in', 'UNDHAD', 'BHAVESH', 'CHHAGANBHAI', '74.6', '72.2', '5.7', '5.8', '6.0', '6.4', '5.6', '5.9', '6.01'),
('10IT115@charusat.edu.in', 'VACHHANI', 'POOJA', 'DHARMSHIBHAI', '88.3', '74.6', '7.0', '7.6', '8.5', '9.0', '8.3', '8.6', '8.20'),
('10IT116@charusat.edu.in', 'VADHVANA', 'SHREYANG', 'KANIYALAL', '72.7', '62.6', '3.7', '3.9', '4.0', '6.2', '6.7', '6.7', '5.84'),
('10IT117@charusat.edu.in', 'VAJARIA', 'VISHW', 'HEMENDRABHAI', '85.8', '65', '5.9', '5.6', '5.5', '6.8', '6.7', '6.0', '6.19'),
('10IT118@charusat.edu.in', 'VARIA', 'JAY', 'BHARATBHAI', '82.6', '68.8', '5.5', '5.1', '4.5', '7.1', '5.8', '7.0', '6.22'),
('10IT119@charusat.edu.in', 'VARSANI', 'DAXA', 'KUNVARJIBHAI', '85.6', '82.1', '7.8', '8.5', '8.8', '9.7', '9.4', '8.9', '8.90'),
('10IT121@charusat.edu.in', 'VIRADIYA', 'SANDEEP', 'PRAVINBHAI', '80', '72', '7.2', '7.8', '8.1', '8.5', '8.3', '8.2', '8.07'),
('10IT122@charusat.edu.in', 'VORA', 'ALAY', 'KETANBHAI', '80.0', '85.2', '9.0', '8.6', '8.6', '9.0', '8.6', '8.5', '8.77'),
('D11IT123@charusat.edu.in', 'PATEL', 'HIMANI', 'ARUNBHAI', '89.5', '', '', '', '7.8', '8.7', '8.7', '4.6', '8.23'),
('D11IT124@charusat.edu.in', 'GUSWAMI', 'DILIP', 'BHIKHAGAR', '76.4', '41.6', '', '', '5.7', '5.7', '6.3', '7.5', '6.44'),
('D11IT125@charusat.edu.in', 'SUKHIYAJIWALA', 'SAGARKUMAR', 'HARISHKUMAR', '84.7', '', '', '', '7.6', '8.0', '8.1', '7.7', '7.90'),
('D11IT127@charusat.edu.in', 'ACHARYA', 'JAIMIN', 'TUSHAR', '81.2', '42.8', '', '', '6.9', '6.7', '6.3', '7.9', '6.83'),
('D11IT128@charusat.edu.in', 'PATEL', 'NIYATI', 'KAMLESHBHAI', '88', '', '', '', '6.2', '7.2', '6.9', '7.2', '7.09'),
('D11IT129@charusat.edu.in', 'PATEL', 'PALAK', 'RAMESHBHAI', '82.1', '', '', '', '6.3', '7.7', '6.9', '8.0', '7.23'),
('D11IT131@charusat.edu.in', 'PANCHAL', 'DHRUV', 'RAMESHBHAI', '65.8', '', '', '', '5.3', '7.8', '7.4', '6.1', '7.07'),
('D11IT132@charusat.edu.in', 'BRAHMBHATT', 'HEMADRI', 'BHUPENDRABHAI', '83.1', '52.6', '', '', '6.3', '6.9', '7.2', '7.1', '6.97'),
('D11IT133@charusat.edu.in', 'BHIMANI', 'RAJNIKANT', 'BHAVESHBHAI', '88.1', '59', '', '', '6.7', '8.2', '8.2', '7.4', '7.78'),
('D11IT134@charusat.edu.in', 'PATEL', 'MEET', 'GHANSHYAMBHAI', '77.7', '', '', '', '6.3', '8.3', '7.1', '7.9', '7.22'),
('D11IT135@charusat.edu.in', 'GUPTA', 'ROZY', 'ANILKUMAR', '89.4', '48.6', '', '', '7.7', '7.9', '7.2', '7.1', '7.63'),
('D11IT136@charusat.edu.in', 'GOJIYA ', 'JAYSHREE', 'JETHABHAI', '79.8', '', '', '', '3.5', '4.5', '4.6', '7.5', '5.52'),
('D11IT137@charusat.edu.in', '        PATHAN', 'MAHMMADMOINRAJA', 'ATIKURRAHEMAN', '77.1', '39.4', '', '', '6.4', '7.3', '7.0', '6.1', '6.83'),
('D11IT138@charusat.edu.in', 'RAYMANGIYA', 'PIYUSH', 'RASIKBHAI', '80.6', '', '', '', '7.0', '7.6', '7.7', '6.4', '1/7/1900'),
('D11IT140@charusat.edu.in', 'MOMIN', 'MANJURAEHMAD', 'ANVARALI', '82.2', '52', '', '', '6.5', '8.6', '7.8', '7.4', '7.72'),
('D11IT141@\ncharusat.edu.in', 'SHUKLA', 'NISARG', 'YOGESHKUMAR', '80', '', '', '', '6.9', '7.4', '7.4', '7.7', '7.37'),
('D11IT142@charusat.edu.in', 'OAD', 'AJAY', 'GOVINDBHAI', '74', '', '', '', '5.2', '5.4', '5.5', '6.2', '5.61'),
('D11IT143@charusat.edu.in', 'SHARMA', 'ASHOK', 'RAJKUMAR', '66.4', '', '', '', '3.5', '5.8', '4.3', '5.7', '5.76'),
('D11IT144@charusat.edu.in', 'UMARIYA', 'DIVYESH', 'ASHWINBHAI', '72.6', '', '', '', '6.4', '7.0', '6.1', '5.7', '6.33'),
('D11IT145@charusat.edu.in', 'PADHARE', 'PAPESH', 'KISNA', '87.8', '52', '', '', '7.8', '9.0', '7.9', '8.0', '8.21'),
('D11IT146@charusat.edu.in', 'SHARMA', 'TUSHAR', 'ASHOKBHAI', '81.4', '42.4', '', '', '5.3', '5.4', '5.5', '5.8', '5.55'),
('D11IT147@charusat.edu.in', 'PANDYA', 'DEVANGI', 'BHARATKUMAR', '79.0', '', '', '', '6.5', '8.0', '7.9', '8.1', '7.66');

-- --------------------------------------------------------

--
-- Table structure for table `tnp_emailid`
--

CREATE TABLE IF NOT EXISTS `tnp_emailid` (
  `userid` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tnp_emailid`
--

INSERT INTO `tnp_emailid` (`userid`, `password`) VALUES
('noreply_tnp@charusat.edu.in', 'studentstudentt&p');

-- --------------------------------------------------------

--
-- Table structure for table `tpo`
--

CREATE TABLE IF NOT EXISTS `tpo` (
  `userid` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tpo`
--

INSERT INTO `tpo` (`userid`, `password`) VALUES
('tpo', '5302db1d1b4af0553753102838063473ec2715cc');

-- --------------------------------------------------------

--
-- Table structure for table `tpr`
--

CREATE TABLE IF NOT EXISTS `tpr` (
  `userID` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `branch_id` int(2) DEFAULT NULL,
  KEY `branch_id` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tpr`
--

INSERT INTO `tpr` (`userID`, `password`, `branch_id`) VALUES
('tpr_ce', 'bda4e54569a40487c4bba388633b7a75ce7263d3', 1),
('tpr_cl', 'd5dad07214bde2518fa7095c347b1be4bccf0224', 6),
('tpr_ec', '603e9a1266686b0d7ec994370e84e48b413fcd17', 3),
('tpr_ee', '3776b116e4552d9bc338e439d2715875618ee640', 5),
('tpr_it', '45ab5f13484b5a3394a40d7447a00023ecd00d3a', 2),
('tpr_mca', 'be33df8cd457b199d224981510e9ec8ee1e31337', 7),
('tpr_me', '2bff5758fc79c34606fec0759cbb37aa7416c129', 4),
('tpr_mscit', '66148b79149c7d281756901458ef9fd417795b95', 8);

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE IF NOT EXISTS `training` (
  `Project_id` varchar(25) NOT NULL,
  `Userid` varchar(50) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Tools` varchar(50) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Name1` varchar(20) NOT NULL,
  `Designation` varchar(50) NOT NULL,
  `Mobileno` bigint(15) NOT NULL,
  `Email1` varchar(50) NOT NULL,
  `Name2` varchar(15) NOT NULL,
  `City` varchar(15) NOT NULL,
  `Address` text NOT NULL,
  `Contact` bigint(15) NOT NULL,
  `Fax` bigint(50) NOT NULL,
  `Email2` varchar(50) NOT NULL,
  `Url` varchar(50) NOT NULL,
  PRIMARY KEY (`Userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `training`
--

INSERT INTO `training` (`Project_id`, `Userid`, `Title`, `Tools`, `Category`, `Name1`, `Designation`, `Mobileno`, `Email1`, `Name2`, `City`, `Address`, `Contact`, `Fax`, `Email2`, `Url`) VALUES
('', '09ce006@charusat.edu.in', 'T&P Cell ', 'PHP-MYSQL', 'Major', 'Mr.Ashish Patel', 'Assistant Professor', 9429775514, 'ashishpatel@gmail.com', 'Gateway', 'Ahmedabad', '266,park road,Ahmedabad', 9426778596, 1125223354548748, 'gt@gshrey.in', 'www.charusat.ac.in'),
('PRJ/2013/CE/4', '09ce007@charusat.edu.in', 'RSS Feed App', 'java', 'Major', 'Mr.Ashish Patel', 'Assistant Professor', 9429775514, 'ashishpatel@gmail.com', 'DRC systems', 'Ahmedabad', '266,park road,Ahmedabad', 9425754564, 8264281135, 'gt@gshrey.in', 'www.charusat.ac.in'),
('', '09ec006@charusat.edu.in', 'Student management system', 'JSP', 'Major', 'Mr.Ashish Patel', 'Assistant Professor', 9487511124, 'ashishpatel@gmail.com', 'TCS', 'Ahmedabad', '266, park road,Ahmedabad', 88575112345, 44545646546787664, 'ankurlakhani35@ymail.com', 'www.charusat.ac.in'),
('', '09ec007@charusat.edu.in', 'Wordpress Plugin', 'PHP-MYSQL', 'Major', 'Mr.Ashish Patel', 'Assistant Professor', 9444564578, 'ashishpatel@gmail.com', 'TCS', 'Ahmedabad', '266,park road,Ahmedabad', 9498782121, 8451120345, 'ankurlakhani35@ymail.com', 'www.charusat.ac.in');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `Userid` varchar(50) NOT NULL,
  `Hashed_password` varchar(60) NOT NULL,
  `Branch` varchar(10) NOT NULL,
  `Answer` text NOT NULL,
  `Activated` tinyint(1) NOT NULL,
  `branch_id` int(2) DEFAULT NULL,
  `email_verified` int(1) DEFAULT NULL,
  `random_no` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`Userid`),
  KEY `branch_id` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tpr`
--
ALTER TABLE `tpr`
  ADD CONSTRAINT `tpr_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_ID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `branch_id` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
