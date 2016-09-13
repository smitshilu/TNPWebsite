-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 24, 2013 at 10:06 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

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
('06/25/2013', 'abc', 'asjdkajshd', 8, '07/15/2013', 'abc', 'a9993e364706816aba3e25717850c26c9cd0d89d', NULL),
('06/26/2013', 'kap', 'aksjdkajshd', 8, '06/30/2013', 'kap', '592c9f89cf2cf49b41d7b6b616599e14929ce5dc', NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `expert`
--

INSERT INTO `expert` (`id`, `Name`, `Date`, `Details`, `Feedbacke`, `Feedbacks`) VALUES
(2, 'Collabra Technologies', '2013-03-26', 'Collabra Technologies is an international company based on Ahmedabad in gujarat and has negotiated the quality of students communication skills specially for CHARUSAT.The company is in search of new young minds in the field of mobile application development.', 'The experts have shown interest towards mobile apllication development as the key point in the 2013 placement visit to gujarat.But the experts are not happy with the performance of the students.', 2),
(3, 'Panamax', '04/23/2013', 'Panamax is a very good software company that mainly works on web development using PHP and Jsp.', 'The students are technically sound but they lack the level of communication skills that is expected out of them particularly when it comes to recruitement.', 1);

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
('TCS Interview', 'Its a very good company for', '05/08/2013');

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
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`Userid`, `Firstname`, `Middlename`, `Lastname`, `Year`, `Branch`, `Gender`, `DOB`, `Guardian`, `Address`, `City`, `Mobileno`, `Homeno`, `Tenthresult`, `Twelthresult`, `Diplomaresult`, `Sem 1`, `Sem 2`, `Sem 3`, `Sem 4`, `Sem 5`, `Sem 6`, `Sem 7`, `Sem 8`, `CGPA`, `Areaofinterest`, `References`, `branch_id`) VALUES
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`Userid`, `Hashed_password`, `Branch`, `Answer`, `Activated`, `branch_id`, `email_verified`, `random_no`) VALUES
('09ce006@charusat.edu.in', '15b413681404a55f914f78d651b4bcc10940f449', 'CE', 'Nobody', 1, 1, 1, NULL),
('09ce007@charusat.edu.in', '88b78dd84e3200434624feb8872fde1f6e950bd4', 'CE', 'Nobody', 1, 1, 1, NULL),
('09ce008@charusat.edu.in', '6d5d45d0e90c39097d18f4fc24b2a3ea980d984a', 'CE', 'Nobody', 1, 1, 1, NULL),
('09ce009@charusat.edu.in', '8c8d3de11deac3f29693f081930190f2f0a2eea9', 'CE', 'Nobody', 1, 1, 1, NULL),
('09ce010@charusat.edu.in', 'fc03a55feaa082d5de96f54bc9077889794b7b7a', 'CE', 'Nobody', 1, 1, 1, NULL),
('09ec006@charusat.edu.in', 'd67a85b37bd35c3fe3831c74728959eb17debc86', 'EC', 'Nobody', 1, 3, 1, NULL),
('09ec007@charusat.edu.in', '48f4ce8701fff33f85b17f296305b8a86d9c104d', 'EC', 'Nobody', 1, 3, 1, NULL),
('09ec008@charusat.edu.in', '4994d0d0171c66e97609d0bdfbe3568b7aa4ea17', 'EC', 'Nobody', 1, 3, 1, NULL),
('09ec009@charusat.edu.in', 'cd9b234afd7e52d53ce5be488dbe97b444e660e6', 'EC', 'Nobody', 1, 3, 1, NULL),
('09ec010@charusat.edu.in', '8424d3da52b49aa102b26cab78bafe6e2e661bf3', 'EC', 'Nobody', 0, 3, 1, NULL),
('09it006@charusat.edu.in', 'bf56ce06feb8d3039fb419831f219e350f812b95', 'IT', 'Nobody', 1, 2, 1, NULL),
('09it007@charusat.edu.in', 'a2000f6d27ef790fc2fafe31493b9d7a90bb73f6', 'IT', 'Nobody', 1, 2, 1, NULL),
('09it008@charusat.edu.in', '1d76f4621a2c2552b9cddc9bae72ecb23b794b86', 'IT', 'Nobody', 1, 2, 1, NULL),
('09it009@charusat.edu.in', 'ff1c634789662c2f9e20a5debe6ee6f9d2e0c12b', 'IT', 'Nobody', 0, 2, 1, NULL),
('09it010@charusat.edu.in', '4973e7e0bc067b05add29074b2b6060a2cacf154', 'IT', 'Nobody', 0, 2, 1, NULL),
('10ce067@charusat.edu.in', 'cf47498b94c130aaf392df81e51e9bb6158adffa', 'CE', 'ksjdjh', 1, 1, 1, NULL),
('10ce094@charusat.edu.in', 'bda4e54569a40487c4bba388633b7a75ce7263d3', 'CE', 'sdfkj', 0, 1, 1, NULL),
('11ce091@charusat.edu.in', '7c222fb2927d828af22f592134e8932480637c0d', 'IT', 'ipo', 1, 2, 1, 'e5a59931e76a3c847fc3965f7dfd35815d1be6e8'),
('11ce121@charusat.edu.in', '4e94e9b49daba12c8c10b05caf1c998acb7a2e92', 'CE', 'abcd', 1, 1, 1, '8b3ef2446e45a3fc13c4d615a7c664a4d9395234');

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
