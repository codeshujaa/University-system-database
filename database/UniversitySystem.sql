-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 25, 2025 at 07:24 PM
-- Server version: 8.0.42-0ubuntu0.24.04.1
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `UniversitySystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `crs_code` char(7) NOT NULL,
  `crs_name` varchar(50) DEFAULT NULL,
  `cred_hrs` int DEFAULT NULL,
  `cont_hrs` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`crs_code`, `crs_name`, `cred_hrs`, `cont_hrs`) VALUES
('BIO 100', 'Intro to Biology', 3, 4),
('BUS 101', 'Management', 3, 3),
('BUS 105', 'Marketing', 3, 3),
('BUS 106', 'Accounting 1', 3, 3),
('COM 100', 'Intro to Computing', 3, 3),
('COM 105', 'Programming Principles', 3, 3),
('ENG 122', 'Composition', 3, 3),
('ENG 124', 'Literature', 3, 3),
('MTH 109', 'College Algebra', 3, 3),
('MTH 121', 'Calculus 1', 3, 3),
('PHY 121', 'Principles of Physics', 4, 4),
('SOC 111', 'Intro to Sociology', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `fac_id` char(3) NOT NULL,
  `fac_first_name` varchar(50) DEFAULT NULL,
  `fac_last_name` varchar(50) DEFAULT NULL,
  `fac_phone` char(12) DEFAULT NULL,
  `fac_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`fac_id`, `fac_first_name`, `fac_last_name`, `fac_phone`, `fac_email`) VALUES
('203', 'Mary', 'Smith', '663-456-7890', 'smithm@gmail.com'),
('204', 'Al', 'Burton', '663-456-1357', 'burtona@gmail.com'),
('205', 'Dave', 'Woodman', '663-456-2468', 'woodmand@gmail.com'),
('206', 'Claude', 'Roy', '663-456-3303', 'royc@gmail.com'),
('207', 'Faye', 'Steinmetz', '663-456-2451', 'steinmetzf@gmail.com'),
('208', 'Connor', 'Bedard', '663-456-6098', 'bedardc@gmail.com'),
('209', 'Aloysius', 'Campbell', '663-456-4872', 'campbella@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `maj_id` char(3) NOT NULL,
  `maj_name` varchar(50) DEFAULT NULL,
  `maj_size` int DEFAULT NULL,
  `fac_id` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`maj_id`, `maj_name`, `maj_size`, `fac_id`) VALUES
('BIO', 'Biology', 40, '208'),
('BUS', 'Business', 60, '203'),
('COM', 'Computing', 30, '204'),
('ENG', 'English', 40, '209'),
('MTH', 'Math', 20, '205'),
('PHY', 'Physics', 20, '207'),
('PSY', 'Psychology', 50, '203'),
('SOC', 'Sociology', 50, '206');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `reg_id` int NOT NULL,
  `s_id` char(6) DEFAULT NULL,
  `crn` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`reg_id`, `s_id`, `crn`) VALUES
(1, '100001', 101),
(2, '100001', 108),
(3, '100001', 111),
(4, '100002', 107),
(5, '100002', 112),
(6, '100002', 117),
(7, '100002', 109),
(8, '100003', 101),
(9, '100003', 108),
(10, '100003', 114),
(11, '100003', 120),
(25, '100007', 109),
(26, '100007', 111);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `crn` int NOT NULL,
  `sec_num` int DEFAULT NULL,
  `days` char(3) DEFAULT NULL,
  `times` varchar(12) DEFAULT NULL,
  `room` char(3) DEFAULT NULL,
  `crs_code` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`crn`, `sec_num`, `days`, `times`, `room`, `crs_code`) VALUES
(101, 1, 'MWF', '9:00-10:00', '165', 'BIO 100'),
(102, 2, 'TTH', '9:00-10:30', '158', 'BIO 100'),
(105, 1, 'MWF', '1:00-2:00', '188', 'PHY 121'),
(106, 1, 'MWF', '2:00-3:00', '155', 'COM 100'),
(107, 1, 'MWF', '9:00-10:00', '188', 'COM 105'),
(108, 2, 'TTH', '9:00-10:30', '173', 'COM 105'),
(109, 3, 'TTH', '2:00-3:30', '165', 'COM 105'),
(110, 1, 'MWF', '9:00-10:00', '173', 'BUS 101'),
(111, 2, 'TTH', '3:30-5:00', '165', 'BUS 101'),
(112, 1, 'MWF', '10:00-11:00', '188', 'BUS 105'),
(113, 1, 'MWF', '11:00-12:00', '165', 'BUS 106'),
(114, 1, 'MWF', '1:00-2:00', '173', 'ENG 122'),
(115, 2, 'TTH', '1:00-2:30', '173', 'ENG 122'),
(116, 1, 'MWF', '11:00-12:00', '158', 'ENG 124'),
(117, 1, 'MWF', '2:00-3:00', '188', 'SOC 111'),
(118, 2, 'TTH', '9:00-10:30', '188', 'SOC 111'),
(119, 1, 'TTH', '1:00-2:30', '165', 'MTH 109'),
(120, 1, 'MWF', '11:00-12:00', '173', 'MTH 121');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s_id` char(6) NOT NULL,
  `s_first_name` varchar(50) DEFAULT NULL,
  `s_last_name` varchar(50) DEFAULT NULL,
  `s_street` varchar(100) DEFAULT NULL,
  `s_city` varchar(50) DEFAULT NULL,
  `s_state` char(2) DEFAULT NULL,
  `s_zipcode` char(5) DEFAULT NULL,
  `s_phone` char(12) DEFAULT NULL,
  `s_email` varchar(100) DEFAULT NULL,
  `maj_id` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_id`, `s_first_name`, `s_last_name`, `s_street`, `s_city`, `s_state`, `s_zipcode`, `s_phone`, `s_email`, `maj_id`) VALUES
('100001', 'John', 'Amos', '27 Main Street', 'Dallas', 'TX', '45613', '414-599-3421', 'AmosJ@gmail.com', 'BUS'),
('100002', 'Mary', 'Smith', '104 Jefferson Street', 'Dubuque', 'IA', '51013', '365-822-9482', 'smithm@gmail.com', 'COM'),
('100003', 'Ahmed', 'Mohamed', '287 Jones Street', 'Rockford', 'IL', '49301', '588-904-1265', 'mohameda@gmail.com', 'MTH'),
('100004', 'John', 'Thomas', '33 Fifth Street', 'Apple Valley', 'MN', '45678', '156-862-8573', 'thomasj@gmail.com', 'BUS'),
('100005', 'Avery', 'Stevens', '406 King Street', 'Ottumwa', 'IA', '53444', '582-743-4379', 'stevensa@gmail.com', 'COM'),
('100006', 'Susan', 'Jacobs', '291 Younge Road', 'Dog River', 'WA', '97851', '392-771-5483', 'jacobss@gmail.com', NULL),
('100007', 'George', 'Fleck', '912 Prospect Avenue', 'Guthrie', 'OK', '50208', '622-490-1473', 'fleckg@gmail.com', 'PHY'),
('100008', 'David', 'Graham', '45 Maine Street', 'Columbia', 'KY', '45821', '825-432-8671', 'grahamd@gmail.com', 'BUS'),
('100009', 'Wanda', 'Koncz', '851 King Street', 'Columbia', 'KY', '45821', '825-431-5629', 'konczw@gmail.com', 'BIO'),
('100010', 'Brent', 'Morris', '234 Clifton Street', 'Dallas', 'TX', '45613', '772-836-8274', 'morrisb@gmail.com', 'ENG'),
('100011', 'Hank', 'Yarbo', '456 Port Street', 'Milwaukee', 'WI', '50402', '145-844-9274', 'yarboh@gmail.com', 'BUS'),
('100012', 'Shirley', 'Jones', '28 Brentwood Avenue', 'Rochester', 'MN', '56281', '204-569-9925', 'joness@gmail.com', 'SOC'),
('100013', 'Jeremy', 'Clarkson', '456 Topcliffe Road', 'Ida', 'OK', '54923', '516-734-8216', 'clarksonj@gmail.com', 'PSY'),
('100014', 'Adele', 'Roberts', '1984 Bridge Street', 'Minneapolis', 'MN', '61002', '885-357-0781', 'robertsa@gmail.com', 'BUS'),
('100015', 'Jane', 'Doe', '123 College Road', 'Springfield', 'IL', '62701', '217-555-1234', 'janedoe@gmail.com', 'ENG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`crs_code`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`fac_id`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`maj_id`),
  ADD KEY `fk_major_faculty` (`fac_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`reg_id`),
  ADD KEY `fk_registration_student` (`s_id`),
  ADD KEY `fk_registration_section` (`crn`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`crn`),
  ADD KEY `fk_section_course` (`crs_code`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `fk_student_major` (`maj_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `major`
--
ALTER TABLE `major`
  ADD CONSTRAINT `fk_major_faculty` FOREIGN KEY (`fac_id`) REFERENCES `faculty` (`fac_id`);

--
-- Constraints for table `registration`
--
ALTER TABLE `registration`
  ADD CONSTRAINT `fk_registration_section` FOREIGN KEY (`crn`) REFERENCES `section` (`crn`),
  ADD CONSTRAINT `fk_registration_student` FOREIGN KEY (`s_id`) REFERENCES `student` (`s_id`),
  ADD CONSTRAINT `registration_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `student` (`s_id`),
  ADD CONSTRAINT `registration_ibfk_2` FOREIGN KEY (`crn`) REFERENCES `section` (`crn`);

--
-- Constraints for table `section`
--
ALTER TABLE `section`
  ADD CONSTRAINT `fk_section_course` FOREIGN KEY (`crs_code`) REFERENCES `course` (`crs_code`),
  ADD CONSTRAINT `section_ibfk_1` FOREIGN KEY (`crs_code`) REFERENCES `course` (`crs_code`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_student_major` FOREIGN KEY (`maj_id`) REFERENCES `major` (`maj_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
