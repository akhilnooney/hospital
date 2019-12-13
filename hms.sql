-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2019 at 05:26 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'admin', '07-11-2019 11:42:05 AM'),
(2, 'Jhon', 'Jhon@admin', '07-11-2019 09:42:44 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` varchar(10) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorid` varchar(10) DEFAULT NULL,
  `userid` varchar(10) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorid`, `userid`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
('10', 'General Physician', 'DOO3', '10', 250, '12/1/2019', '4:30 PM', '2019-11-30 16:55:43', 1, 1, '2019-12-12 21:49:01'),
('21', 'Bones Specialist demo', 'DOO12', '16', 360, '12/3/2019', '4:00PM', '2019-12-02 20:00:36', 1, 1, '2019-12-03 01:37:00'),
('22', 'Ear-Nose-Throat (Ent) Specialist', 'DOO22', '39', 300, '12/3/2019', '4:00PM', '2019-11-02 20:34:56', 1, 1, '2019-12-12 21:48:01'),
('3', 'Demo test', 'DOO7', '6', 200, '11/25/2019', '9:15 AM', '2019-11-24 18:31:28', 1, 1, '2019-12-12 21:48:16'),
('4', 'Ayurveda', 'DOO5', '5', 300, '11/25/2019', '1:00 PM', '2019-11-24 11:28:54', 1, 1, '2019-12-12 21:48:23'),
('5', 'Dermatologist', 'DOO9', '7', 500, '11/26/2019', '5:30 PM', '2019-11-25 18:41:34', 1, 1, '2019-12-12 21:48:49'),
('6', 'Dermatologist', 'DOO9', '2', 500, '11/27/2019', '1:00 PM', '2019-11-26 22:18:01', 1, 1, '2019-12-12 21:48:45'),
('7', 'Ayurveda', 'DOO5', '8', 300, '11/27/2019', '1:00 PM', '2019-11-26 21:23:00', 1, 1, '2019-12-13 01:39:40'),
('8', 'Ayurveda', 'DOO5', '49', 300, '11/29/2019', '3:30 PM', '2019-11-28 21:54:09', 1, 1, '2019-12-13 01:39:48'),
('9', 'General Physician', 'DOO3', '2', 250, '12/1/2019', '11:30 AM', '2019-12-01 04:46:44', 1, 1, '2019-12-13 01:39:05');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` varchar(10) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
('DOO10', 'General Physician', 'Deepak', 'Houston', '250', 9282631234, 'Deepaksaipaty@gmail.com', '498b5924adc469aa7b660f457e0fc7e5', '2019-12-04 04:56:05', '2019-12-12 21:50:01'),
('DOO11', 'Dentist', 'Suraj ', 'Denton', '150', 9282633247, 'suraj@gmail.com', '4dd49f4f84e4d6945e3bc6d14812004e', '2019-12-12 02:58:49', '2019-12-12 21:50:08'),
('DOO12', 'Bones Specialist demo', 'Tokyo', 'Austin', '360', 7676456789, 'Tokyo@gmail.com', 'dfc3be9ec93ee1aaac492925ef4e8924', '2019-12-12 21:52:27', '2019-12-12 21:52:58'),
('DOO21', 'Dentist', 'Macy', '425 I O O F St Apt 1516, The Oaks Of Denton', '150', 8786748504, 'Macy@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2019-12-12 21:15:55', '2019-12-12 21:50:17'),
('DOO22', 'Ear-Nose-Throat (Ent) Specialist', 'Nancy', 'Irving', '300', 8784563256, 'Nancy@gmail.com', '6ebe76c9fb411be97b3b0d48b791a7c9', '2019-12-12 21:19:35', '2019-12-12 21:50:23'),
('DOO4', 'Homeopath', 'Bradly', 'Irving', '700', 7865839030, 'Bradly@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:45:09', '2019-12-12 21:50:29'),
('DOO5', 'Dermatologist', 'Gabe', 'Dallas', '500', 8465739809, 'Gabe@yahoo.com', 'f925916e2754e5e03f75dd58a5733251', '2019-11-10 18:37:47', '2019-12-12 21:50:34'),
('DOO6', 'General Physician', 'Amrita', 'Frisco', '250', 8888845555, 'amrita@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:52:50', '2019-12-12 21:50:40'),
('DOO7', 'Ayurveda', 'Jack', 'Denton', '300', 7986546589, 'Jack@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:47:07', '2019-12-12 21:50:44'),
('DOO9', 'General Physician', 'Ashok Kumar', 'Denton', '250', 8523767678, 'Ashok@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:43:35', '2019-12-12 21:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` varchar(10) NOT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `inc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `loginTime`, `logout`, `status`, `inc`) VALUES
('DOO21', '28', 'Macy', '2019-12-03 18:26:18', '2019-12-04 01:00:45AM', 1, 1),
('DOO22', '39', 'Nancy', '2019-12-03 17:00:00', '2019-12-03 10:47:31PM', 1, 2),
('DOO10', '13', 'Deepak', '2019-12-03 14:17:50', '2019-12-03 12:54:29 PM', 1, 3),
('DOO10', '3', 'Deepak', '2019-12-10 13:22:53', '2019-12-10 07:52:38 PM', 1, 4),
('DOO11', '5', 'Suraj', '2019-12-11 11:25:55', '2019-12-11 05:44:45PM', 1, 5),
('DOO12', '16', ' Tokyo', '2019-11-28 22:26:12', '2019-11-28 8:00:37AM', 1, 6),
('DOO5', '49', 'Gabe', '2019-12-10 04:11:12', '2019-12-10 09:41:36 AM', 1, 7),
('DOO6', '30', 'Amrita', '2019-12-11 18:49:41', '2019-12-11 11:34:56PM', 1, 8),
('DOO7', '6', 'Jack', '2019-12-07 16:48:17', '2019-12-07 9:00:45 PM', 1, 9),
('DOO9', '28', 'Ashok Murar', '2019-12-08 08:50:18', '2019-12-08 08:22:03 PM', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` varchar(10) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
('10', 'Bones Specialist demo', '2017-01-07 08:07:53', '0000-00-00 00:00:00'),
('12', 'Dermatologist', '2019-11-10 18:36:36', '2019-11-10 18:36:50'),
('2', 'General Physician', '2016-12-28 06:38:12', '0000-00-00 00:00:00'),
('3', 'Dermatologist', '2016-12-28 06:38:48', '0000-00-00 00:00:00'),
('5', 'Ayurveda', '2016-12-28 06:39:51', '0000-00-00 00:00:00'),
('6', 'Dentist', '2016-12-28 06:40:08', '0000-00-00 00:00:00'),
('7', 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `equipment_id` varchar(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `year_of_manufacture` date NOT NULL,
  `price_of_equipment` double NOT NULL,
  `Quantity` int(10) NOT NULL,
  `Dealer` varchar(50) NOT NULL,
  `Used_for` varchar(40) NOT NULL,
  `checkedDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedtime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`equipment_id`, `Name`, `year_of_manufacture`, `price_of_equipment`, `Quantity`, `Dealer`, `Used_for`, `checkedDate`, `updatedtime`) VALUES
('2', 'Anesthesia Machine', '2018-09-11', 2000, 15, 'Reddy Labs pvt ltd', 'maintains anesthesia levels', '0000-00-00 00:00:00', '2019-11-25 01:14:15'),
('3', 'ECG machine', '2017-07-13', 20750, 3, ' Fando pharmacy pvt ltd', 'ECG Check', '0000-00-00 00:00:00', '2019-11-25 01:14:15'),
('4', 'Stretchers', '2019-08-06', 10000, 23, 'Neuland pharma pvt ltd', 'Patient Transport', '0000-00-00 00:00:00', '2019-11-25 01:14:15'),
('5', 'Surgical knifes', '2019-11-22', 70, 120, 'James pharmacy pvt ltd', 'Regular surgery usage', '0000-00-00 00:00:00', '2019-11-25 01:14:15'),
('6', 'Insulin pumps', '2019-11-14', 500, 25, 'Reddy Labs pvt ltd', 'insulin inject to patient', '0000-00-00 00:00:00', '2019-11-25 01:14:15'),
('7', 'Portable oxygen tanks', '2019-07-08', 1220, 5, 'stratz pharma pvt ltd', 'emergency usage', '0000-00-00 00:00:00', '2019-11-25 01:14:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` varchar(10) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
('1', 'Jeenal', 'Jeenal@yahoo.com', 8767676765, 'Not good Treatment', '2019-11-24 22:43:23', 'We will look into it', '2019-11-24 22:47:06', NULL),
('10', 'Sai', 'Aweswome Care to my mother', 9896486383, 'Thanks!!', '2019-12-11 19:00:00', NULL, '2019-12-12 02:00:00', 1),
('2', 'Alexa', 'Alexa@gmail.com', 8988479038, ' Unable to book appointment', '2019-11-25 20:03:08', 'We will look into it', '2019-11-25 22:42:44', 1),
('3', 'Adna', 'Adna@gmail.com', 9867483987, 'Great medication!!', '2019-11-30 14:06:50', 'Thanks!!', '2019-11-30 22:43:01', 1),
('4', 'Akhil', 'akhil@unt.edu', 9808766547, 'Good', '2019-12-01 23:08:38', 'thank you', '2019-12-01 23:40:04', 1),
('5', 'Jordan', 'Jordan@gmail.com', 8787878656, 'Not Satisfied', '2019-12-02 14:08:18', 'We will look into it', '2019-12-02 20:20:00', 1),
('6', 'Jasica', 'Jasica@gmail.com', 9866379822, 'Good Treatment!!', '2019-12-03 14:40:00', 'Very Thanks!!', '2019-12-12 23:26:20', 1),
('7', 'Lilly', 'Lilly@gmail.com', 7673979570, 'I Appriciate your service!!', '2019-12-04 18:42:00', 'Thanks!!!', '2019-12-04 19:40:00', 1),
('8', 'Sammy', 'Sammy@hotmail.com', 8345290873, 'Very Bad Treatment!!', '2019-12-05 17:00:41', 'Sorry,for inconveniance. We will look into it.', '2019-12-06 17:00:00', 1),
('9', 'Johnson', 'Johnson@gmail.com', 8798989890, 'Very Good!!!', '2019-12-08 17:00:00', 'Thanks!!', '2019-12-09 15:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `id` varchar(15) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`id`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
('1', 10, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2019-12-01 15:10:31'),
('10', 89, '120', '90', '78', '98', 'Fever', '2019-12-11 15:00:00'),
('2', 2, '120/180', '67', '56 Kg', '98', 'Skin Allergy', '2019-12-13 01:25:05'),
('3', 16, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', '2019-12-13 01:24:56'),
('4', 39, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', '2019-12-13 01:25:14'),
('5', 6, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', '2019-12-13 01:25:20'),
('6', 5, '90/120', '120', '56 Kg', '98 F', '#blood sugar high\r\n#Asthma problem', '2019-11-26 01:19:21'),
('7', 7, '80/120', '120', '85 Kg', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', '2019-12-13 01:25:37'),
('8', 8, '78', '119', '67', '98', 'Skin problem', '2019-11-28 01:00:00'),
('9', 48, '117', '98', '67', '98', 'Back Pain', '2019-11-29 13:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `id` varchar(15) NOT NULL,
  `docid` varchar(15) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`id`, `docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
('10', 'DOO9', 'Tim', 8453199998, 'Tim@gmail.com', 'Male', 'Denton', 26, 'No', '2019-11-27 16:34:31', '2019-12-13 02:19:58'),
('16', 'DOO12', 'Mansi', 9878978798, 'jk@gmail.com', 'Female', 'Denton', 46, 'No', '2019-12-03 10:49:41', '2019-12-13 02:17:05'),
('2', 'DOO9', 'Jessi', 8745267290, 'Jessi@gmail.com', 'Female', 'Denton', 28, 'Blood Pressur High', '2019-11-25 12:00:00', '2019-12-13 02:21:09'),
('21', 'DOO3', 'joshua', 8688965859, 'joshua@gmail.com', 'Female', 'Houston', 26, 'She is diabetic patient', '2019-12-01 21:38:06', '2019-12-13 02:21:07'),
('39', 'DOO22', 'Manav Sharma', 9888988989, 'sharma@gmail.com', 'Male', 'Irving', 45, 'He is long suffered by asthma', '2019-12-03 14:33:54', '2019-12-13 02:17:15'),
('49', 'DOO5', 'Raghu', 9797977979, 'raghu@gmail.com', 'Male', 'ABC Apartment Mayur Vihar Ph-1 New Delhi', 39, 'No', '2019-11-25 10:40:13', '2019-12-13 02:18:08'),
('6', 'DOO7', 'John', 8764687689, 'john@test.com', 'male', 'Denton', 25, 'No', '2019-11-25 18:49:24', '2019-12-13 02:17:45'),
('7', 'DOO9', 'Lwis', 8978648950, 'Lwis@gmail.com', 'Male', 'Denton', 40, 'No', '2019-11-26 16:00:00', '2019-11-27 01:38:00'),
('8', 'DOO5', 'Samanta', 8762918791, 'Samanta@gmail.com', 'Female', 'Denton', 28, 'No', '2019-11-30 00:23:00', '2019-12-30 01:25:23'),
('9', 'DOO3', 'Kallis', 9898989678, 'Kallis@gmail.com', 'Male', 'Dallas', 37, 'High Suger', '2019-12-01 17:20:39', '2019-12-01 17:13:00');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` varchar(15) NOT NULL,
  `uid` varchar(15) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` timestamp(6) NULL DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `loginTime`, `logout`, `status`) VALUES
('1', '10', 'tim', '2019-12-12 10:25:16', '2019-12-12 10:25:16.000000', 1),
('10', '9', 'paul', '2019-12-12 14:28:19', '2019-12-12 12:23:14.000000', 1),
('2', '3', 'rajesh', '2019-12-12 12:00:15', '2019-12-12 21:32:29.000000', 1),
('21', '23', 'Santhosh', '2019-12-12 14:22:35', '2019-12-12 14:35:34.000000', NULL),
('3', '5', 'macy', '2019-12-12 18:29:21', '2019-12-12 16:21:33.374000', 1),
('31', '33', 'zack', '2019-12-12 08:10:17', '2019-12-12 15:29:35.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(15) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
('', 'Rajesh', 'jubliee hills', 'hyderabad', 'male', 'rajesh@gmail.com', 'e360bc13bcba071f4746adbb334cd78e', '2019-12-13 02:52:43', NULL),
('10', 'tim', 'oaks', 'Denton', 'male', 'Tim@gmail.com', '46fc7c774102f7d68ced3356e3688336', '2019-12-13 02:26:16', '2019-12-13 02:26:55'),
('16', 'Mansi', 'stella', 'Denton', 'female', 'jk@gmail.com', '482c107652ef005f2243568a5dfa8f8b', '2019-12-13 02:00:00', '2019-12-13 02:21:53'),
('2', 'Jessi', 'Charlotte', 'Denton', 'female', 'Jessi@gmail.com', 'd2c2330ce09767951b886b94ed165eef', '2019-12-13 02:23:54', '2019-12-13 02:24:40'),
('21', 'joshua', 'Oaks', 'Denton', 'female', 'joshua@gmail.com', '18275a3df7a93d896d3179c612d92fe1', '2019-12-13 01:51:40', '2019-12-13 02:26:49'),
('39', 'Manav Sharma', 'Irving', 'Irving', 'male', 'sharma@gmail.com', '2e365d4b9f340e446a3a1e84433ccf8c', '2019-12-13 02:27:59', '2019-12-13 02:28:14'),
('49', 'Raghu', 'ABC Apartment Mayur Vihar Ph-1 New Delhi', 'Delhi', 'male', 'raghu@gmail.com', '6676026589ff202c5fb5cf4d3a054a80', '2019-12-13 02:30:14', '2019-12-13 02:32:10'),
('6', 'John', 'Stella', 'Denton', 'male', 'john@test.com', 'fa97a82a6dc57592a6a2419989859e46', '2019-12-13 02:34:15', '2019-12-13 02:34:29'),
('7', 'Lwis', 'Oaks', 'Denton', 'male', 'Lwis@gmail.com', 'b59516cb3727afa858ba1605652425ce', '2019-12-13 02:35:43', '2019-12-13 02:35:56'),
('8', 'Samantha', 'Oaks', 'Denton', 'female', 'Samanta@gmail.com', '6da219e8f676b2507b03d9fb751b4252', '2019-12-13 02:38:02', '2019-12-13 02:38:21'),
('9', 'kallis', 'oaks', 'Denton', 'male', 'Kallis@gmail.com', '906228e9aa11cf48918bb28fa1b0e477', '2019-12-13 02:40:18', '2019-12-13 02:40:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`inc`),
  ADD KEY `id` (`id`,`uid`),
  ADD KEY `id_2` (`id`,`uid`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`equipment_id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `inc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
