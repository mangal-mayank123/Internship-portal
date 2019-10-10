-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2017 at 02:47 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbtektons`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `address_id` int(11) NOT NULL,
  `line1` varchar(255) NOT NULL,
  `line2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `line1`, `line2`, `city`, `zip`, `state`) VALUES
(1, 'IIIT ALLAHABAD', 'ALLAHABAD', 'ALLAHABAD', '244001', 'UTTAR PRADESH'),
(2, 'kuch bhi', 'hai', 'MORADABAD', '244555', 'Uttar Pradesh'),
(3, '46A/4,deputy gunj chowk,batra nursing home lane,moradabad', '244001', 'MORADABAD', '24400', 'batra  nursing home'),
(4, '', '', '', '', ''),
(5, '46A/4,deputy gunj chowk,batra nursing home lane,moradabad', '244001', 'MORADABAD', '24400', 'batra  nursing home'),
(6, '46A/4,deputy gunj chowk,batra nursing home lane,moradabad', '244001', 'MORADABAD', '24400', 'batra  nursing home'),
(7, '', '', '', '', ''),
(8, 'IIIT MAIN ROAD', '244001', 'MORADABAD', '05971', 'Uttar Pradesh'),
(9, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE IF NOT EXISTS `application` (
  `internship_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `val` int(11) NOT NULL,
  `kuch` varchar(255) DEFAULT NULL,
  `app_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`internship_id`, `student_id`, `val`, `kuch`, `app_status`) VALUES
(1, 2, 0, '', 'N'),
(1, 1, 0, '', ''),
(2, 1, 0, '', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE IF NOT EXISTS `business` (
  `business_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `approved` varchar(255) NOT NULL,
  `business_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`business_id`, `person_id`, `approved`, `business_name`) VALUES
(1, 6, 'Y', 'APPic'),
(2, 3, '', ''),
(3, 4, 'Y', 'Internshala'),
(4, 5, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `internship_oppurtunities`
--

CREATE TABLE IF NOT EXISTS `internship_oppurtunities` (
  `internship_id` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `supervisor_fname` varchar(255) NOT NULL,
  `supervisor_mname` varchar(255) DEFAULT NULL,
  `supervisor_lname` varchar(255) NOT NULL,
  `supervisor_contact` varchar(255) NOT NULL,
  `pay` double NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `weekly_hours` int(11) NOT NULL,
  `job_description` varchar(255) NOT NULL,
  `internship_type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `no_of_positions` int(11) NOT NULL,
  `internship_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `internship_oppurtunities`
--

INSERT INTO `internship_oppurtunities` (`internship_id`, `business_id`, `supervisor_fname`, `supervisor_mname`, `supervisor_lname`, `supervisor_contact`, `pay`, `start_date`, `end_date`, `weekly_hours`, `job_description`, `internship_type`, `status`, `no_of_positions`, `internship_name`) VALUES
(1, 1, 'Akshat', '', 'Mathur', '8604973547', 500, '26/02/2017', '26/03/2017', 2, ' This is for Internshala Demo ', 'paid', 'open', 5, 'Internshala'),
(2, 1, 'Akshat', '', 'Mathur', '9529038999', 100, '2017-02-22', '2017-10-28', 20, '  This is for testing app demo', 'paid', 'open', 5, 'Viral Tricks'),
(3, 3, 'Internshala', '', 'Team', '9584652478', 0, '2017-02-22', '2017-03-28', 29, '  This is for Internshala web development assignment', 'unpaid', 'open', 6, 'Web Development'),
(4, 3, 'Rohan ', '', 'Agarwal', '9564789565', 0, '2017-02-28', '2017-03-28', 30, ' This is for Internshala assignment   ', 'unpaid', 'open', 6, 'Internshala Testing'),
(5, 1, 'Rohan', '', 'Agarwal', '9564789565', 0, '2017-02-23', '2017-02-28', 20, 'This is for Internshala Assignment  ', 'unpaid', 'open', 7, 'Internshala Test');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `person_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`person_id`, `user_name`, `password`) VALUES
(1, 'manisoni28', '8439462877'),
(2, 'rit2014032@iiita.ac.in', 'manisoni28@');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `person_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `type` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `address_id`, `first_name`, `middle_name`, `last_name`, `email`, `phone`, `type`) VALUES
(1, 1, 'Mani', '', 'Soni', 'manisoni28@gmail.com', '8604973547', 'S'),
(2, 2, 'nitin', 'kumar', 'ji', 'rit2014032@iiita.ac.in', '8963456784', 'S'),
(3, 7, '', '', '', '', '', 'B'),
(4, 8, 'Rohan', '', 'Agarwal', 'rit2014078@iiita.ac.in', '9564789565', 'B'),
(5, 9, '', '', '', '', '', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE IF NOT EXISTS `skill` (
  `skill_id` int(11) NOT NULL,
  `skill_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`skill_id`, `skill_name`) VALUES
(1, 'Android'),
(2, 'Html'),
(3, 'Css'),
(4, 'JavaScript'),
(5, 'J-Query'),
(6, 'Ajax'),
(7, 'Xml'),
(8, 'C'),
(9, 'C++'),
(10, 'JAVA'),
(11, 'Ruby'),
(12, 'Pearl');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `person_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_level` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`person_id`, `student_id`, `student_level`, `major`) VALUES
(1, 1, 'BTECH', 'IT'),
(2, 2, 'Btech', 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `student_skill_mapping`
--

CREATE TABLE IF NOT EXISTS `student_skill_mapping` (
  `skill_id` int(11) NOT NULL,
  `student_skill_mpg_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_skill_mapping`
--

INSERT INTO `student_skill_mapping` (`skill_id`, `student_skill_mpg_id`, `student_id`) VALUES
(3, 0, 1),
(4, 0, 1),
(8, 0, 1),
(10, 0, 1),
(3, 0, 2),
(8, 0, 2),
(9, 0, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
