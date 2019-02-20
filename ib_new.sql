-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2019 at 08:15 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interview_buddy`
--

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `type` enum('prepaid','partiallypaid','discount') NOT NULL,
  `code` varchar(255) NOT NULL,
  `discount` int(11) NOT NULL,
  `expDate` datetime NOT NULL,
  `status` enum('generated','expired','used') NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `domain`
--

CREATE TABLE `domain` (
  `id` int(11) NOT NULL,
  `domainName` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exp_level`
--

CREATE TABLE `exp_level` (
  `id` int(11) NOT NULL,
  `experiance` varchar(255) NOT NULL COMMENT '1-2 Years,2-4 Years ',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `organizationId` int(11) DEFAULT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interview`
--

CREATE TABLE `interview` (
  `id` int(11) NOT NULL,
  `type` enum('async','ff') NOT NULL COMMENT 'ff-face to face',
  `domainId` int(11) NOT NULL,
  `subDomainId` int(11) NOT NULL,
  `expLevelId` int(11) NOT NULL,
  `interviewId` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `duration` int(11) NOT NULL COMMENT 'duration in minutes',
  `questionCount` int(11) NOT NULL,
  `organizationId` int(11) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interview_experts`
--

CREATE TABLE `interview_experts` (
  `id` int(11) NOT NULL,
  `interviewUserId` int(11) NOT NULL,
  `expertId` int(11) NOT NULL,
  `feedback` text,
  `status` enum('open','inprogress','completed') NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interview_experts_feedback`
--

CREATE TABLE `interview_experts_feedback` (
  `id` int(11) NOT NULL,
  `interviewExpertId` int(11) NOT NULL,
  `interviewUserQuestionId` int(11) NOT NULL,
  `review` text,
  `rating` enum('1','2','3','4','5') DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interview_expert_overall_feedback`
--

CREATE TABLE `interview_expert_overall_feedback` (
  `id` int(11) NOT NULL,
  `reportPerameterId` int(11) NOT NULL,
  `interviewExpertId` int(11) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL COMMENT 'scale 1-10',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interview_fixed_questions`
--

CREATE TABLE `interview_fixed_questions` (
  `id` int(11) NOT NULL,
  `interviewId` int(11) NOT NULL,
  `questionId` int(11) NOT NULL,
  `createdAt` datetime(1) NOT NULL,
  `updatedAt` datetime(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interview_question_template`
--

CREATE TABLE `interview_question_template` (
  `id` int(11) NOT NULL,
  `domainId` int(11) NOT NULL,
  `subDomainId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `expertLevelId` int(11) NOT NULL,
  `duration` int(11) NOT NULL COMMENT 'in mins',
  `questionCount` int(11) NOT NULL,
  `organizationId` int(11) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interview_question_template_fixed_questions`
--

CREATE TABLE `interview_question_template_fixed_questions` (
  `id` int(11) NOT NULL,
  `interviewQuestionTemplateId` int(11) NOT NULL,
  `questionId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interview_types`
--

CREATE TABLE `interview_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interview_types`
--

INSERT INTO `interview_types` (`id`, `name`, `price`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'Async', '1.00', 'active', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Expert Review', '1.00', 'active', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `interview_type_map`
--

CREATE TABLE `interview_type_map` (
  `id` int(11) NOT NULL,
  `organizationId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `interviews` int(11) NOT NULL,
  `days` int(11) NOT NULL,
  `startDate` date NOT NULL,
  `expDate` date NOT NULL,
  `maxInterviews` int(11) NOT NULL COMMENT 'Max Interviews per person',
  `paymentMode` enum('cc','dc','paypal','cheque') NOT NULL,
  `paymentStatus` enum('open','inprogress','sucess','failed') NOT NULL,
  `paymentId` int(11) DEFAULT NULL,
  `couponCode` int(11) DEFAULT NULL,
  `cost` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `status` enum('pending','active','expired') NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interview_type_map_child`
--

CREATE TABLE `interview_type_map_child` (
  `id` int(11) NOT NULL,
  `interviewTypeMapId` int(11) NOT NULL,
  `interviewTypeId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interview_users`
--

CREATE TABLE `interview_users` (
  `id` int(11) NOT NULL,
  `interviewId` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` enum('Available','Verified','Submitted','Completed','Reviewed','expertreview') NOT NULL,
  `paymentstatus` varchar(25) NOT NULL DEFAULT 'Success',
  `link` text NOT NULL,
  `pin` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interview_user_questions`
--

CREATE TABLE `interview_user_questions` (
  `id` int(11) NOT NULL,
  `type` enum('fixed','random') NOT NULL,
  `interviewUserId` int(11) NOT NULL,
  `questionId` int(11) NOT NULL,
  `questionTitle` text,
  `answerLink` text NOT NULL COMMENT 'Path to video link',
  `answerText` text NOT NULL COMMENT 'Converted text from audio',
  `ano` int(11) NOT NULL,
  `uid` text NOT NULL,
  `qTime` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0-open,1-submited',
  `maxCount` int(11) NOT NULL,
  `timeTaken` varchar(50) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `tableName` varchar(255) NOT NULL,
  `action` enum('insert','update','delete') NOT NULL,
  `remarks` text NOT NULL,
  `respectiveId` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu_access_map`
--

CREATE TABLE `menu_access_map` (
  `id` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  `addAccess` enum('1','0') NOT NULL,
  `editAccess` enum('1','0') NOT NULL COMMENT '1.Active 0.In-active',
  `gridAccess` enum('1','0') NOT NULL COMMENT '1.Active 0.In-active',
  `viewAccess` enum('1','0') NOT NULL COMMENT '1.Active 0.In-active',
  `deleteAccess` enum('1','0') NOT NULL COMMENT '1.Active 0.In-active',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_access_map`
--

INSERT INTO `menu_access_map` (`id`, `menuId`, `roleId`, `addAccess`, `editAccess`, `gridAccess`, `viewAccess`, `deleteAccess`, `createdAt`, `updatedAt`) VALUES
(2, 3, 1, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(3, 2, 4, '1', '1', '1', '1', '0', NULL, '0000-00-00 00:00:00'),
(4, 4, 1, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(5, 5, 1, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(6, 7, 1, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(7, 6, 1, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(8, 8, 4, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(9, 9, 4, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(10, 10, 1, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(11, 10, 4, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(12, 10, 4, '1', '1', '1', '1', '0', NULL, '0000-00-00 00:00:00'),
(13, 11, 1, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(14, 12, 1, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(15, 2, 1, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(16, 9, 1, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(17, 13, 3, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(18, 14, 3, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(21, 15, 1, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(22, 16, 1, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(23, 17, 1, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(24, 18, 4, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(25, 19, 4, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(26, 12, 4, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(27, 12, 4, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(28, 20, 4, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(29, 12, 3, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(30, 17, 4, '1', '1', '1', '1', '0', NULL, '0000-00-00 00:00:00'),
(31, 20, 1, '1', '1', '1', '1', '1', NULL, '0000-00-00 00:00:00'),
(32, 21, 1, '1', '1', '1', '1', '0', NULL, '0000-00-00 00:00:00'),
(33, 3, 2, '1', '1', '1', '1', '0', NULL, '0000-00-00 00:00:00'),
(34, 4, 2, '1', '1', '1', '1', '0', NULL, '0000-00-00 00:00:00'),
(35, 5, 2, '1', '1', '1', '1', '0', NULL, '0000-00-00 00:00:00'),
(36, 7, 2, '1', '1', '1', '1', '0', NULL, '0000-00-00 00:00:00'),
(37, 6, 2, '1', '1', '1', '1', '0', NULL, '0000-00-00 00:00:00'),
(38, 10, 2, '1', '1', '1', '1', '0', NULL, '0000-00-00 00:00:00'),
(39, 11, 2, '1', '1', '1', '1', '0', NULL, '0000-00-00 00:00:00'),
(40, 12, 2, '1', '1', '1', '1', '0', NULL, '0000-00-00 00:00:00'),
(41, 2, 2, '1', '1', '1', '1', '0', NULL, '0000-00-00 00:00:00'),
(42, 9, 2, '1', '1', '1', '1', '0', NULL, '0000-00-00 00:00:00'),
(43, 15, 2, '1', '1', '1', '1', '0', NULL, '0000-00-00 00:00:00'),
(44, 16, 2, '1', '1', '1', '1', '0', NULL, '0000-00-00 00:00:00'),
(45, 17, 2, '1', '1', '1', '1', '0', NULL, '0000-00-00 00:00:00'),
(46, 20, 2, '1', '1', '1', '1', '0', NULL, '0000-00-00 00:00:00'),
(47, 21, 4, '1', '1', '1', '1', '0', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `menu_master`
--

CREATE TABLE `menu_master` (
  `id` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `menuLevel` int(11) NOT NULL,
  `menuPriority` int(11) NOT NULL,
  `menuTitle` varchar(100) NOT NULL,
  `menuLink` varchar(100) NOT NULL,
  `menuStatus` enum('1','0') NOT NULL DEFAULT '1' COMMENT '1.Active 2.In-Active',
  `menuIcon` varchar(20) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_master`
--

INSERT INTO `menu_master` (`id`, `moduleId`, `menuLevel`, `menuPriority`, `menuTitle`, `menuLink`, `menuStatus`, `menuIcon`, `createdAt`, `updatedAt`) VALUES
(2, 2, 1, 1, 'Review Skills', '/main/reviewskills', '1', '', NULL, '2019-01-25 00:00:00'),
(3, 2, 1, 2, 'Organization', '/main/organization', '1', '', NULL, '2019-01-25 00:00:00'),
(4, 2, 2, 1, 'Upload Questions', '/main/bulkquestions', '1', '', NULL, '0000-00-00 00:00:00'),
(5, 6, 3, 1, 'Upload Users', '/main/bulkuser', '1', '', NULL, '0000-00-00 00:00:00'),
(6, 2, 1, 1, 'Expert Level', '/main/expertlevel', '1', '', NULL, '0000-00-00 00:00:00'),
(7, 2, 1, 1, 'Domain', '/main/domain', '1', '', NULL, '0000-00-00 00:00:00'),
(8, 2, 1, 1, 'User Group', '/main/usergroup', '1', '', NULL, '0000-00-00 00:00:00'),
(9, 2, 1, 1, 'Interview Type', '/main/interviewtype', '1', '', NULL, '0000-00-00 00:00:00'),
(10, 6, 1, 1, 'User Creation', '/main/userdomainmap', '1', '', NULL, '0000-00-00 00:00:00'),
(11, 2, 1, 1, 'Questions', '/main/questions', '1', '', NULL, '0000-00-00 00:00:00'),
(12, 1, 1, 1, 'Dashboard', '/main/dashboard', '1', '', NULL, '0000-00-00 00:00:00'),
(13, 3, 1, 1, 'ExpertView', '/main/expertview', '1', '', NULL, '0000-00-00 00:00:00'),
(14, 3, 1, 1, 'Expert Review', '/main/expertreview', '1', '', NULL, '0000-00-00 00:00:00'),
(15, 3, 1, 1, 'View Interviews', '/main/userinterview', '1', '', NULL, '0000-00-00 00:00:00'),
(16, 4, 1, 1, 'Coupon Generation', '/main/generate-coupon', '1', '', NULL, '0000-00-00 00:00:00'),
(17, 4, 1, 1, 'Subscription', '/main/paymentmgmt', '1', '', NULL, '0000-00-00 00:00:00'),
(18, 3, 1, 1, 'Assign Interview', '/main/assign-interview', '1', '', NULL, '0000-00-00 00:00:00'),
(19, 3, 1, 1, 'Process Interview', '/main/process-interview', '1', '', NULL, '0000-00-00 00:00:00'),
(20, 4, 1, 1, 'Cheque Management', '/main/chequemgmt', '1', '', NULL, '0000-00-00 00:00:00'),
(21, 3, 1, 1, 'Create Interview', '/main/create-interview', '1', '', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `menu_modules_master`
--

CREATE TABLE `menu_modules_master` (
  `id` int(11) NOT NULL,
  `menuTitle` varchar(100) NOT NULL,
  `menuLink` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1' COMMENT '1. Active 2.In-active',
  `icon` varchar(30) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_modules_master`
--

INSERT INTO `menu_modules_master` (`id`, `menuTitle`, `menuLink`, `priority`, `status`, `icon`, `createdAt`, `updatedAt`) VALUES
(1, 'Dashboards', '#', 1, '1', '', '2019-01-25 04:13:16', NULL),
(2, 'Masters', '#', 2, '1', '', NULL, NULL),
(3, 'Interview', '#', 4, '1', '', NULL, NULL),
(4, 'Accounts', '#', 5, '1', '', NULL, NULL),
(5, 'Reports', '#', 6, '1', '', NULL, NULL),
(6, 'User Management', '#', 3, '1', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` enum('university','corporate') NOT NULL,
  `url` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `organization_campus`
--

CREATE TABLE `organization_campus` (
  `id` int(11) NOT NULL,
  `branchName` varchar(50) NOT NULL,
  `organizationId` int(11) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `pincode` varchar(15) NOT NULL,
  `url` varchar(255) NOT NULL,
  `contactPerson` varchar(45) NOT NULL,
  `contactPersonEmail` varchar(45) NOT NULL,
  `contactPersonPhone` varchar(14) NOT NULL,
  `contactPersonDesgination` varchar(45) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `mode` enum('cc','dc','paypal','cheque') NOT NULL,
  `chequeNo` varchar(255) DEFAULT NULL,
  `bankName` varchar(255) DEFAULT NULL,
  `chequeImage` varchar(255) DEFAULT NULL,
  `chequeClearedDate` date DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `pgResponse` text,
  `status` enum('open','inprogress','sucess','failed','cancel') NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text,
  `expLevelId` int(11) NOT NULL,
  `difficulty` enum('low','medium','high') NOT NULL,
  `mandatory` int(11) NOT NULL COMMENT '0-not mandatory,1-mandatory',
  `global` int(11) NOT NULL COMMENT '0-private,1-public',
  `domainId` int(11) NOT NULL,
  `subDomainId` int(11) NOT NULL,
  `keywords` text NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `organizationId` int(11) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `report_perameters`
--

CREATE TABLE `report_perameters` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `organizationId` int(11) NOT NULL,
  `status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `level`, `createdAt`, `updatedAt`) VALUES
(1, 'Super User', 1, '2019-01-02 00:00:00', '2019-01-02 00:00:00'),
(2, 'Admin', 2, '2019-01-02 00:00:00', '2019-01-02 00:00:00'),
(3, 'Expert', 3, '2019-01-02 00:00:00', '2019-01-02 00:00:00'),
(4, 'Organization', 3, '2019-01-02 00:00:00', '2019-01-02 00:00:00'),
(5, 'User', 4, '2019-01-02 00:00:00', '2019-01-02 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sub_domains`
--

CREATE TABLE `sub_domains` (
  `id` int(11) NOT NULL,
  `domainId` int(11) NOT NULL,
  `subDomainName` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL COMMENT 'First Name',
  `mname` varchar(255) DEFAULT NULL COMMENT 'Middle Name',
  `lname` varchar(255) DEFAULT NULL COMMENT 'Last Name',
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `gender` enum('male','female','others') NOT NULL,
  `organizationId` int(11) DEFAULT NULL,
  `status` enum('active','inactive','suspend','') DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `mname`, `lname`, `email`, `password`, `phone`, `gender`, `organizationId`, `status`, `createdAt`, `updatedAt`, `roleId`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@test.com', 'ceb6c970658f31504a901b89dcd3e461', '888888888', 'male', NULL, 'active', '2019-02-12 19:09:37', '2019-02-12 19:09:37', 2),
(2, 'super', 'super', 'super', 'super@test.com', 'ceb6c970658f31504a901b89dcd3e461', '888888888', 'male', NULL, 'active', '2019-02-12 19:10:35', '2019-02-12 19:10:35', 1),
(3, 'expert', 'expert', 'expert', 'expert@test.com', 'ceb6c970658f31504a901b89dcd3e461', '8888888888', 'male', NULL, 'active', '2019-02-12 19:11:31', '2019-02-12 19:11:31', 3),
(4, 'user', 'user', 'user', 'user@test.com', 'ceb6c970658f31504a901b89dcd3e461', '888888888', 'male', NULL, 'active', '2019-02-12 19:12:02', '2019-02-12 19:12:02', 5);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `groupName` varchar(60) NOT NULL,
  `organizationId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_groups_map`
--

CREATE TABLE `user_groups_map` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_login_logs`
--

CREATE TABLE `user_login_logs` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` text NOT NULL,
  `agent` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login_logs`
--

INSERT INTO `user_login_logs` (`id`, `userId`, `token`, `agent`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm9yZ2FuaXphdGlvbiI6bnVsbCwicm9sZSI6Miwicm9sZUxldmVsIjoyLCJlbWFpbCI6ImFkbWluQHRlc3QuY29tIiwiaWF0IjoxNTQ5OTk4Nzg2LCJleHAiOjE1NTAwODUxODZ9.hHzJE6E4O_Z9gwsYWtaUk3fs5OkMmJvU5Qe2P7WDqvw', '{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"48\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"authorization\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTc4OTc0LCJleHAiOjE1NTAwNjUzNzR9.deuFW1bjfGptq_dgFqNHEf_QAQRCcGRMzmTfXouPgC4\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\"}', '2019-02-12 19:13:06', '2019-02-12 19:13:06'),
(2, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm9yZ2FuaXphdGlvbiI6bnVsbCwicm9sZSI6MSwicm9sZUxldmVsIjoxLCJlbWFpbCI6InN1cGVyQHRlc3QuY29tIiwiaWF0IjoxNTQ5OTk4ODE0LCJleHAiOjE1NTAwODUyMTR9.OVGaYLdJpdByclX7uPgoewmY2n21_gsMvCLSlY2XmvM', '{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"48\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login?returnUrl=%2Fmain%2Fdashboard\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\"}', '2019-02-12 19:13:34', '2019-02-12 19:13:34'),
(3, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6bnVsbCwicm9sZSI6Mywicm9sZUxldmVsIjozLCJlbWFpbCI6ImV4cGVydEB0ZXN0LmNvbSIsImlhdCI6MTU0OTk5ODgzNiwiZXhwIjoxNTUwMDg1MjM2fQ.KLvzEHDHYkPD-AzgPINWevsHGffH1w-z3ORTv7gIK9Q', '{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"49\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login?returnUrl=%2Fmain%2Fdashboard\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\"}', '2019-02-12 19:13:56', '2019-02-12 19:13:56'),
(4, 4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQsIm9yZ2FuaXphdGlvbiI6bnVsbCwicm9sZSI6NSwicm9sZUxldmVsIjo0LCJlbWFpbCI6InVzZXJAdGVzdC5jb20iLCJpYXQiOjE1NDk5OTg4NjAsImV4cCI6MTU1MDA4NTI2MH0.E1qH_FD7YVERemRjNeKhUzhruCCA8LHHIvrxMjZE3js', '{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"47\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login?returnUrl=%2Fmain%2Fdashboard\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\"}', '2019-02-12 19:14:20', '2019-02-12 19:14:20');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `about` text,
  `adress` text,
  `pincode` varchar(15) DEFAULT NULL,
  `linkedinId` varchar(255) DEFAULT NULL,
  `resume` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_profile_edu`
--

CREATE TABLE `user_profile_edu` (
  `id` int(11) NOT NULL,
  `userProfileId` int(11) NOT NULL,
  `education` varchar(255) NOT NULL,
  `university` varchar(255) NOT NULL,
  `courseFrom` int(11) NOT NULL,
  `courseTo` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_profile_exp`
--

CREATE TABLE `user_profile_exp` (
  `id` int(11) NOT NULL,
  `userProfileId` int(11) NOT NULL,
  `organizationName` varchar(255) NOT NULL,
  `desgination` varchar(255) NOT NULL,
  `joinedDate` date NOT NULL,
  `relivedDate` date DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_profile_subdomains`
--

CREATE TABLE `user_profile_subdomains` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userSkills` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `domain`
--
ALTER TABLE `domain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exp_level`
--
ALTER TABLE `exp_level`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organizationId` (`organizationId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `interview`
--
ALTER TABLE `interview`
  ADD PRIMARY KEY (`id`),
  ADD KEY `domainId` (`domainId`),
  ADD KEY `expertLevelId` (`expLevelId`),
  ADD KEY `instanceId` (`organizationId`),
  ADD KEY `subDomainId` (`subDomainId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `interview_experts`
--
ALTER TABLE `interview_experts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expertId` (`expertId`),
  ADD KEY `interviewUserId` (`interviewUserId`);

--
-- Indexes for table `interview_experts_feedback`
--
ALTER TABLE `interview_experts_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interviewExpertId` (`interviewExpertId`),
  ADD KEY `interviewUserQuestionId` (`interviewUserQuestionId`);

--
-- Indexes for table `interview_expert_overall_feedback`
--
ALTER TABLE `interview_expert_overall_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interviewExpertId` (`interviewExpertId`),
  ADD KEY `reviewskillsId` (`reportPerameterId`);

--
-- Indexes for table `interview_fixed_questions`
--
ALTER TABLE `interview_fixed_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questionId` (`questionId`),
  ADD KEY `interview_fixed_questions_ibfk_1` (`interviewId`);

--
-- Indexes for table `interview_question_template`
--
ALTER TABLE `interview_question_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `domainId` (`domainId`),
  ADD KEY `expertLevelId` (`expertLevelId`),
  ADD KEY `organizationId` (`organizationId`),
  ADD KEY `subDomainId` (`subDomainId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `interview_question_template_fixed_questions`
--
ALTER TABLE `interview_question_template_fixed_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questionId` (`questionId`),
  ADD KEY `questionTemplateId` (`interviewQuestionTemplateId`);

--
-- Indexes for table `interview_types`
--
ALTER TABLE `interview_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interview_type_map`
--
ALTER TABLE `interview_type_map`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instanceId` (`organizationId`),
  ADD KEY `paymentId` (`paymentId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `interview_type_map_child`
--
ALTER TABLE `interview_type_map_child`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interviewTypeId` (`interviewTypeId`),
  ADD KEY `interviewTypeMapId` (`interviewTypeMapId`);

--
-- Indexes for table `interview_users`
--
ALTER TABLE `interview_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interviewId` (`interviewId`);

--
-- Indexes for table `interview_user_questions`
--
ALTER TABLE `interview_user_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interviewUserId` (`interviewUserId`),
  ADD KEY `questionId` (`questionId`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `menu_access_map`
--
ALTER TABLE `menu_access_map`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_access_role_id_fk` (`roleId`),
  ADD KEY `menu_access_map_ibfk_1` (`menuId`);

--
-- Indexes for table `menu_master`
--
ALTER TABLE `menu_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_master_module_id_fk` (`moduleId`);

--
-- Indexes for table `menu_modules_master`
--
ALTER TABLE `menu_modules_master`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `module_title_unique` (`menuTitle`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization_campus`
--
ALTER TABLE `organization_campus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expertLevelId` (`expLevelId`),
  ADD KEY `instanceId` (`organizationId`),
  ADD KEY `userId` (`userId`),
  ADD KEY `domainId` (`domainId`),
  ADD KEY `subDomainId` (`subDomainId`);

--
-- Indexes for table `report_perameters`
--
ALTER TABLE `report_perameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organizationId` (`organizationId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_domains`
--
ALTER TABLE `sub_domains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `domainId` (`domainId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roleId` (`roleId`),
  ADD KEY `instanceId` (`organizationId`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organizationId` (`organizationId`);

--
-- Indexes for table `user_groups_map`
--
ALTER TABLE `user_groups_map`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `groupId` (`groupId`);

--
-- Indexes for table `user_login_logs`
--
ALTER TABLE `user_login_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `user_profile_edu`
--
ALTER TABLE `user_profile_edu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userProfileId` (`userProfileId`);

--
-- Indexes for table `user_profile_exp`
--
ALTER TABLE `user_profile_exp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userProfileId` (`userProfileId`);

--
-- Indexes for table `user_profile_subdomains`
--
ALTER TABLE `user_profile_subdomains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userProfileId` (`userId`),
  ADD KEY `userSkills` (`userSkills`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domain`
--
ALTER TABLE `domain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exp_level`
--
ALTER TABLE `exp_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interview`
--
ALTER TABLE `interview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interview_experts`
--
ALTER TABLE `interview_experts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interview_experts_feedback`
--
ALTER TABLE `interview_experts_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interview_expert_overall_feedback`
--
ALTER TABLE `interview_expert_overall_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interview_fixed_questions`
--
ALTER TABLE `interview_fixed_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interview_question_template`
--
ALTER TABLE `interview_question_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interview_question_template_fixed_questions`
--
ALTER TABLE `interview_question_template_fixed_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interview_types`
--
ALTER TABLE `interview_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `interview_type_map`
--
ALTER TABLE `interview_type_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interview_type_map_child`
--
ALTER TABLE `interview_type_map_child`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interview_users`
--
ALTER TABLE `interview_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interview_user_questions`
--
ALTER TABLE `interview_user_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_access_map`
--
ALTER TABLE `menu_access_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `menu_master`
--
ALTER TABLE `menu_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `menu_modules_master`
--
ALTER TABLE `menu_modules_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organization_campus`
--
ALTER TABLE `organization_campus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_perameters`
--
ALTER TABLE `report_perameters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_domains`
--
ALTER TABLE `sub_domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_groups_map`
--
ALTER TABLE `user_groups_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_login_logs`
--
ALTER TABLE `user_login_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_profile_edu`
--
ALTER TABLE `user_profile_edu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_profile_exp`
--
ALTER TABLE `user_profile_exp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_profile_subdomains`
--
ALTER TABLE `user_profile_subdomains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `coupons_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `exp_level`
--
ALTER TABLE `exp_level`
  ADD CONSTRAINT `exp_level_ibfk_1` FOREIGN KEY (`organizationId`) REFERENCES `organization_campus` (`id`),
  ADD CONSTRAINT `exp_level_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `interview`
--
ALTER TABLE `interview`
  ADD CONSTRAINT `interview_ibfk_1` FOREIGN KEY (`domainId`) REFERENCES `domain` (`id`),
  ADD CONSTRAINT `interview_ibfk_2` FOREIGN KEY (`expLevelId`) REFERENCES `exp_level` (`id`),
  ADD CONSTRAINT `interview_ibfk_3` FOREIGN KEY (`organizationId`) REFERENCES `organization_campus` (`id`),
  ADD CONSTRAINT `interview_ibfk_4` FOREIGN KEY (`subDomainId`) REFERENCES `sub_domains` (`id`),
  ADD CONSTRAINT `interview_ibfk_5` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `interview_experts`
--
ALTER TABLE `interview_experts`
  ADD CONSTRAINT `interview_experts_ibfk_1` FOREIGN KEY (`expertId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `interview_experts_ibfk_2` FOREIGN KEY (`interviewUserId`) REFERENCES `interview_users` (`id`);

--
-- Constraints for table `interview_experts_feedback`
--
ALTER TABLE `interview_experts_feedback`
  ADD CONSTRAINT `interview_experts_feedback_ibfk_1` FOREIGN KEY (`interviewExpertId`) REFERENCES `interview_experts` (`id`),
  ADD CONSTRAINT `interview_experts_feedback_ibfk_2` FOREIGN KEY (`interviewUserQuestionId`) REFERENCES `interview_user_questions` (`id`);

--
-- Constraints for table `interview_expert_overall_feedback`
--
ALTER TABLE `interview_expert_overall_feedback`
  ADD CONSTRAINT `interview_expert_overall_feedback_ibfk_1` FOREIGN KEY (`interviewExpertId`) REFERENCES `interview_experts` (`id`),
  ADD CONSTRAINT `interview_expert_overall_feedback_ibfk_2` FOREIGN KEY (`reportPerameterId`) REFERENCES `report_perameters` (`id`);

--
-- Constraints for table `interview_fixed_questions`
--
ALTER TABLE `interview_fixed_questions`
  ADD CONSTRAINT `interview_fixed_questions_ibfk_1` FOREIGN KEY (`interviewId`) REFERENCES `interview` (`id`),
  ADD CONSTRAINT `interview_fixed_questions_ibfk_2` FOREIGN KEY (`questionId`) REFERENCES `questions` (`id`);

--
-- Constraints for table `interview_question_template`
--
ALTER TABLE `interview_question_template`
  ADD CONSTRAINT `interview_question_template_ibfk_1` FOREIGN KEY (`domainId`) REFERENCES `domain` (`id`),
  ADD CONSTRAINT `interview_question_template_ibfk_2` FOREIGN KEY (`expertLevelId`) REFERENCES `exp_level` (`id`),
  ADD CONSTRAINT `interview_question_template_ibfk_3` FOREIGN KEY (`organizationId`) REFERENCES `interview_type_map` (`id`),
  ADD CONSTRAINT `interview_question_template_ibfk_4` FOREIGN KEY (`subDomainId`) REFERENCES `sub_domains` (`id`),
  ADD CONSTRAINT `interview_question_template_ibfk_5` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `interview_question_template_fixed_questions`
--
ALTER TABLE `interview_question_template_fixed_questions`
  ADD CONSTRAINT `interview_question_template_fixed_questions_ibfk_1` FOREIGN KEY (`questionId`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `interview_question_template_fixed_questions_ibfk_2` FOREIGN KEY (`interviewQuestionTemplateId`) REFERENCES `interview_question_template` (`id`);

--
-- Constraints for table `interview_type_map`
--
ALTER TABLE `interview_type_map`
  ADD CONSTRAINT `interview_type_map_ibfk_1` FOREIGN KEY (`organizationId`) REFERENCES `organization_campus` (`id`),
  ADD CONSTRAINT `interview_type_map_ibfk_2` FOREIGN KEY (`paymentId`) REFERENCES `payments` (`id`),
  ADD CONSTRAINT `interview_type_map_ibfk_3` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `interview_type_map_child`
--
ALTER TABLE `interview_type_map_child`
  ADD CONSTRAINT `interview_type_map_child_ibfk_1` FOREIGN KEY (`interviewTypeId`) REFERENCES `interview_types` (`id`),
  ADD CONSTRAINT `interview_type_map_child_ibfk_2` FOREIGN KEY (`interviewTypeMapId`) REFERENCES `interview_type_map` (`id`);

--
-- Constraints for table `interview_users`
--
ALTER TABLE `interview_users`
  ADD CONSTRAINT `interview_users_ibfk_1` FOREIGN KEY (`interviewId`) REFERENCES `interview` (`id`);

--
-- Constraints for table `interview_user_questions`
--
ALTER TABLE `interview_user_questions`
  ADD CONSTRAINT `interview_user_questions_ibfk_1` FOREIGN KEY (`interviewUserId`) REFERENCES `interview_users` (`id`),
  ADD CONSTRAINT `interview_user_questions_ibfk_2` FOREIGN KEY (`questionId`) REFERENCES `questions` (`id`);

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `menu_access_map`
--
ALTER TABLE `menu_access_map`
  ADD CONSTRAINT `menu_access_map_ibfk_1` FOREIGN KEY (`menuId`) REFERENCES `menu_master` (`id`),
  ADD CONSTRAINT `menu_access_map_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`);

--
-- Constraints for table `menu_master`
--
ALTER TABLE `menu_master`
  ADD CONSTRAINT `menu_master_ibfk_1` FOREIGN KEY (`moduleId`) REFERENCES `menu_modules_master` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`expLevelId`) REFERENCES `exp_level` (`id`),
  ADD CONSTRAINT `questions_ibfk_2` FOREIGN KEY (`organizationId`) REFERENCES `organization_campus` (`id`),
  ADD CONSTRAINT `questions_ibfk_3` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `questions_ibfk_4` FOREIGN KEY (`domainId`) REFERENCES `domain` (`id`),
  ADD CONSTRAINT `questions_ibfk_5` FOREIGN KEY (`subDomainId`) REFERENCES `sub_domains` (`id`);

--
-- Constraints for table `report_perameters`
--
ALTER TABLE `report_perameters`
  ADD CONSTRAINT `report_perameters_ibfk_1` FOREIGN KEY (`organizationId`) REFERENCES `organization_campus` (`id`);

--
-- Constraints for table `sub_domains`
--
ALTER TABLE `sub_domains`
  ADD CONSTRAINT `sub_domains_ibfk_1` FOREIGN KEY (`domainId`) REFERENCES `domain` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`organizationId`) REFERENCES `organization_campus` (`id`);

--
-- Constraints for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD CONSTRAINT `user_groups_ibfk_1` FOREIGN KEY (`organizationId`) REFERENCES `organization_campus` (`id`);

--
-- Constraints for table `user_groups_map`
--
ALTER TABLE `user_groups_map`
  ADD CONSTRAINT `user_groups_map_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_groups_map_ibfk_2` FOREIGN KEY (`groupId`) REFERENCES `user_groups` (`id`);

--
-- Constraints for table `user_login_logs`
--
ALTER TABLE `user_login_logs`
  ADD CONSTRAINT `user_login_logs_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD CONSTRAINT `user_profile_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_profile_edu`
--
ALTER TABLE `user_profile_edu`
  ADD CONSTRAINT `user_profile_edu_ibfk_1` FOREIGN KEY (`userProfileId`) REFERENCES `user_profile` (`id`);

--
-- Constraints for table `user_profile_exp`
--
ALTER TABLE `user_profile_exp`
  ADD CONSTRAINT `user_profile_exp_ibfk_1` FOREIGN KEY (`userProfileId`) REFERENCES `user_profile` (`id`);

--
-- Constraints for table `user_profile_subdomains`
--
ALTER TABLE `user_profile_subdomains`
  ADD CONSTRAINT `user_profile_subdomains_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_profile_subdomains_ibfk_2` FOREIGN KEY (`userSkills`) REFERENCES `sub_domains` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
