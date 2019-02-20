-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2019 at 02:56 PM
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
-- Table structure for table `asyncinterviews`
--

CREATE TABLE `asyncinterviews` (
  `id` int(11) NOT NULL,
  `InterviewId` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `link` text,
  `pin` int(11) DEFAULT NULL,
  `status` enum('Available','Verified','Submitted','Completed','Reviewed') DEFAULT NULL,
  `paymentstatus` enum('Pending','Success') DEFAULT NULL,
  `packageType` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `unvId` int(10) NOT NULL,
  `createdBy` int(10) NOT NULL,
  `discount` float NOT NULL,
  `domain` int(10) NOT NULL,
  `subdomain` int(10) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asyncinterviews`
--

INSERT INTO `asyncinterviews` (`id`, `InterviewId`, `email`, `link`, `pin`, `status`, `paymentstatus`, `packageType`, `price`, `unvId`, `createdBy`, `discount`, `domain`, `subdomain`, `createdAt`, `updatedAt`) VALUES
(1, 1000, 'braj@gmail.com', 'http://abc.com', 1122, 'Submitted', 'Success', '1', 5, 1, 111, 0, 1, 1, '0000-00-00 00:00:00', '2019-02-06 10:24:47'),
(2, 1001, 'braj@gmail.com', 'http://abc.com', 1123, 'Submitted', 'Success', '1', 5, 1, 111, 0, 1, 1, '0000-00-00 00:00:00', '2019-02-03 18:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `asyncmocks`
--

CREATE TABLE `asyncmocks` (
  `id` int(11) NOT NULL,
  `InterviewId` int(11) DEFAULT NULL,
  `q_title` varchar(255) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `videoURL` text NOT NULL,
  `q_time` int(10) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `max_count` int(11) DEFAULT NULL,
  `time_taken` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asyncmocks`
--

INSERT INTO `asyncmocks` (`id`, `InterviewId`, `q_title`, `ano`, `uid`, `answer`, `videoURL`, `q_time`, `userId`, `email`, `status`, `max_count`, `time_taken`, `createdAt`, `updatedAt`) VALUES
(1, 1000, 'Hello, How are you. Tell me About yourself?', 1, 'v-3fd8d9a7-5a45-41f0-8654-d1ea06a8c2fe', 'hello new test ', '', 60, 0, '', 0, 4, ' (1:56)', '0000-00-00 00:00:00', '2019-01-31 09:42:17'),
(2, 1000, 'What are your special skills?', 2, 'v-db9dc188-f1d4-48ba-9ef2-d05c3172a6f1', 'hello new test ', '', 60, 0, '', 0, 4, ' (1:54)', '0000-00-00 00:00:00', '2019-01-31 09:42:47'),
(3, 1000, 'How to insert data ?', 3, 'v-d3d05caa-6ea1-47ca-91b3-8cbd63c9e3ea', 'hello new test ', '', 60, 0, '', 0, 4, ' (1:57)', '0000-00-00 00:00:00', '2019-01-31 09:45:02'),
(4, 1000, 'What is the diff between java and .net?', 4, 'v-bda20dc0-7c7c-4363-9145-85d1d5fa466b', 'hello new test ', '', 60, 0, '', 0, 4, ' (1:55)', '0000-00-00 00:00:00', '2019-01-31 09:45:31');

-- --------------------------------------------------------

--
-- Table structure for table `asynctests`
--

CREATE TABLE `asynctests` (
  `id` int(11) NOT NULL,
  `InterviewId` int(10) NOT NULL,
  `q_title` varchar(255) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `answer` text,
  `videoURL` text NOT NULL,
  `q_time` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `max_count` int(10) NOT NULL,
  `time_taken` varchar(10) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asynctests`
--

INSERT INTO `asynctests` (`id`, `InterviewId`, `q_title`, `ano`, `uid`, `answer`, `videoURL`, `q_time`, `userId`, `email`, `status`, `max_count`, `time_taken`, `createdAt`, `updatedAt`) VALUES
(12, 1000, 'Hello Good Morning. Describe yourself?', 1, 'v-1f935d00-aac2-4a83-9b31-8a7278508b6b', 'this is first person', '//www.cameratag.com/assets/v-1f935d00-aac2-4a83-9b31-8a7278508b6b/mp4.mp4', 60, 1, 'braj@gmail.com', 1, 4, ' (29)', '0000-00-00 00:00:00', '2019-02-03 18:28:09'),
(13, 1000, 'What are your special skills?', 2, 'v-a6473630-711c-47f5-abb9-f858b0743ba8', 'no skills I have', '//www.cameratag.com/assets/v-a6473630-711c-47f5-abb9-f858b0743ba8/mp4.mp4', 40, 1, 'braj@gmail.com', 1, 4, ' (33)', '0000-00-00 00:00:00', '2019-02-03 18:28:35'),
(14, 1000, 'How to insert data ?', 3, 'v-ea77c700-961b-4ada-8c70-bde05cbd3b0f', 'write SQL command', '//www.cameratag.com/assets/v-ea77c700-961b-4ada-8c70-bde05cbd3b0f/mp4.mp4', 20, 1, 'braj@gmail.com', 1, 4, ' (29)', '0000-00-00 00:00:00', '2019-02-03 18:29:03'),
(15, 1000, 'What is the diff between java and dot net?', 4, 'v-0fafc7ad-0a5f-417a-910b-e43ee282653b', 'Jarvis free.net is not free dotnet is not free', '//www.cameratag.com/assets/v-0fafc7ad-0a5f-417a-910b-e43ee282653b/mp4.mp4', 60, 1, 'braj@gmail.com', 1, 4, ' (17)', '0000-00-00 00:00:00', '2019-02-03 18:29:43'),
(16, 1001, 'What do you know about Oops Concepts?', 1, 'v-89535d47-4768-4b59-ab8f-84441268cbd9', 'I know nothing about OOPS concept and this is only for test', '//www.cameratag.com/assets/v-89535d47-4768-4b59-ab8f-84441268cbd9/mp4.mp4', 60, 1, 'braj@gmail.com', 1, 3, ' (0)', '0000-00-00 00:00:00', '2019-02-03 18:39:05'),
(17, 1001, 'What is Machine Learning ?', 2, 'v-006c4ca6-6cae-4f80-aec1-d8f014766026', '', '//www.cameratag.com/assets/v-006c4ca6-6cae-4f80-aec1-d8f014766026/mp4.mp4', 60, 1, 'braj@gmail.com', 0, 3, ' (19)', '0000-00-00 00:00:00', '2019-02-03 18:18:42'),
(18, 1001, 'What is automation testing and manual testing?', 3, 'v-11a24186-5052-4c8f-b3d7-6369f04ca975', '', '//www.cameratag.com/assets/v-11a24186-5052-4c8f-b3d7-6369f04ca975/mp4.mp4', 20, 1, 'braj@gmail.com', 0, 3, ' (27)', '0000-00-00 00:00:00', '2019-02-03 18:19:12');

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

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `type`, `code`, `discount`, `expDate`, `status`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, '', '2C1Umg', 10, '2019-02-01 00:00:00', 'generated', 3, '2019-02-09 05:47:51', '2019-02-09 05:47:51'),
(2, '', 'WKPSdI', 23, '2019-02-08 00:00:00', 'generated', 1, '2019-02-12 13:16:00', '2019-02-12 13:16:00'),
(3, '', 'TxLQlr', 23, '2019-02-08 00:00:00', 'generated', 1, '2019-02-12 13:16:00', '2019-02-12 13:16:00');

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

--
-- Dumping data for table `domain`
--

INSERT INTO `domain` (`id`, `domainName`, `createdAt`, `updatedAt`, `status`) VALUES
(1, 'IT', '2019-02-07 06:18:02', '2019-02-07 06:18:02', 'active'),
(2, 'angular', '2019-02-09 05:44:09', '2019-02-09 05:44:09', 'active');

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

--
-- Dumping data for table `exp_level`
--

INSERT INTO `exp_level` (`id`, `experiance`, `createdAt`, `updatedAt`, `organizationId`, `userId`) VALUES
(1, '0-2', '2019-02-07 07:28:25', '2019-02-07 07:28:25', NULL, 1),
(2, '2-4', '2019-02-07 07:28:34', '2019-02-07 07:28:34', NULL, 1),
(3, '4-6', '2019-02-07 07:28:39', '2019-02-07 07:28:39', NULL, 1),
(4, '6-8', '2019-02-07 07:28:52', '2019-02-07 07:28:52', NULL, 1),
(5, '8-10', '2019-02-07 07:28:56', '2019-02-08 11:54:26', NULL, 1),
(6, '10-12', '2019-02-08 11:12:16', '2019-02-08 11:56:21', NULL, 3),
(7, '1-3', '2019-02-09 05:42:08', '2019-02-09 05:42:22', NULL, 3);

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

--
-- Dumping data for table `interview`
--

INSERT INTO `interview` (`id`, `type`, `domainId`, `subDomainId`, `expLevelId`, `interviewId`, `start_date`, `end_date`, `duration`, `questionCount`, `organizationId`, `userId`, `createdAt`, `updatedAt`) VALUES
(3, 'async', 1, 1, 1, 'AI01001-000001', '2019-02-07 00:00:00', '2019-02-15 00:00:00', 30, 10, 1, 3, '2019-02-07 12:31:11', '2019-02-07 12:31:11'),
(4, 'async', 1, 1, 1, 'AI01001-000002', '2019-02-08 00:00:00', '2019-02-15 00:00:00', 5, 10, 1, 1, '2019-02-08 09:48:12', '2019-02-08 09:48:12'),
(5, 'async', 1, 1, 1, 'AI01001-000003', '2019-02-08 00:00:00', '2019-02-15 00:00:00', 5, 10, 1, 1, '2019-02-08 09:48:14', '2019-02-08 09:48:14'),
(6, 'async', 1, 1, 1, 'AI01001-000004', '2019-02-12 00:00:00', '2019-02-28 00:00:00', 30, 4, 1, 3, '2019-02-12 13:44:12', '2019-02-12 13:44:12');

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

--
-- Dumping data for table `interview_experts`
--

INSERT INTO `interview_experts` (`id`, `interviewUserId`, `expertId`, `feedback`, `status`, `createdAt`, `updatedAt`) VALUES
(2, 46, 3, 'overall performance good', 'completed', '0000-00-00 00:00:00', '2019-02-11 18:21:39'),
(3, 47, 3, NULL, 'open', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 48, 4, NULL, 'open', '2019-02-12 10:16:11', '2019-02-12 10:16:11'),
(5, 48, 4, NULL, 'open', '2019-02-12 10:16:28', '2019-02-12 10:16:28');

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

--
-- Dumping data for table `interview_experts_feedback`
--

INSERT INTO `interview_experts_feedback` (`id`, `interviewExpertId`, `interviewUserQuestionId`, `review`, `rating`, `createdAt`, `updatedAt`) VALUES
(11, 2, 85, 'good', '4', '2019-02-10 16:34:12', '2019-02-12 07:09:16'),
(12, 2, 86, NULL, NULL, '2019-02-10 16:34:12', '2019-02-10 16:34:12'),
(13, 2, 87, NULL, NULL, '2019-02-10 16:34:12', '2019-02-10 16:34:12'),
(14, 2, 88, NULL, NULL, '2019-02-10 16:34:12', '2019-02-10 16:34:12'),
(15, 2, 89, NULL, NULL, '2019-02-10 16:34:12', '2019-02-10 16:34:12'),
(16, 2, 90, NULL, NULL, '2019-02-10 16:34:12', '2019-02-10 16:34:12'),
(17, 2, 91, NULL, NULL, '2019-02-10 16:34:12', '2019-02-10 16:34:12'),
(18, 2, 92, NULL, NULL, '2019-02-10 16:34:12', '2019-02-10 16:34:12'),
(19, 2, 93, NULL, NULL, '2019-02-10 16:34:12', '2019-02-10 16:34:12'),
(20, 2, 94, NULL, NULL, '2019-02-10 16:34:12', '2019-02-10 16:34:12'),
(21, 3, 95, NULL, NULL, '2019-02-11 10:45:24', '2019-02-11 10:45:24'),
(22, 3, 96, NULL, NULL, '2019-02-11 10:45:24', '2019-02-11 10:45:24'),
(23, 3, 97, NULL, NULL, '2019-02-11 10:45:24', '2019-02-11 10:45:24'),
(24, 3, 98, NULL, NULL, '2019-02-11 10:45:24', '2019-02-11 10:45:24'),
(25, 3, 99, NULL, NULL, '2019-02-11 10:45:24', '2019-02-11 10:45:24'),
(26, 3, 100, NULL, NULL, '2019-02-11 10:45:24', '2019-02-11 10:45:24'),
(27, 3, 101, NULL, NULL, '2019-02-11 10:45:24', '2019-02-11 10:45:24'),
(28, 3, 102, NULL, NULL, '2019-02-11 10:45:24', '2019-02-11 10:45:24'),
(29, 3, 103, NULL, NULL, '2019-02-11 10:45:24', '2019-02-11 10:45:24'),
(30, 3, 104, NULL, NULL, '2019-02-11 10:45:24', '2019-02-11 10:45:24'),
(31, 4, 105, NULL, NULL, '2019-02-12 10:16:11', '2019-02-12 10:16:11'),
(32, 4, 106, NULL, NULL, '2019-02-12 10:16:11', '2019-02-12 10:16:11'),
(33, 4, 107, NULL, NULL, '2019-02-12 10:16:11', '2019-02-12 10:16:11'),
(34, 4, 108, NULL, NULL, '2019-02-12 10:16:11', '2019-02-12 10:16:11'),
(35, 5, 105, NULL, NULL, '2019-02-12 10:16:28', '2019-02-12 10:16:28'),
(36, 5, 106, NULL, NULL, '2019-02-12 10:16:28', '2019-02-12 10:16:28'),
(37, 5, 107, NULL, NULL, '2019-02-12 10:16:28', '2019-02-12 10:16:28'),
(38, 5, 108, NULL, NULL, '2019-02-12 10:16:28', '2019-02-12 10:16:28');

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

--
-- Dumping data for table `interview_expert_overall_feedback`
--

INSERT INTO `interview_expert_overall_feedback` (`id`, `reportPerameterId`, `interviewExpertId`, `review`, `rating`, `createdAt`, `updatedAt`) VALUES
(1, 1, 2, 'good yes', 9, '2019-02-11 18:20:59', '2019-02-11 18:20:59'),
(2, 2, 2, 'goo', 8, '2019-02-11 18:20:59', '2019-02-11 18:20:59'),
(3, 1, 2, 'good yes', 9, '2019-02-11 18:21:39', '2019-02-11 18:21:39'),
(4, 2, 2, 'goo', 8, '2019-02-11 18:21:39', '2019-02-11 18:21:39');

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

--
-- Dumping data for table `interview_fixed_questions`
--

INSERT INTO `interview_fixed_questions` (`id`, `interviewId`, `questionId`, `createdAt`, `updatedAt`) VALUES
(1, 3, 1, '0000-00-00 00:00:00.0', '0000-00-00 00:00:00.0'),
(2, 4, 1, '2019-02-08 09:48:12.0', '2019-02-08 09:48:12.0'),
(3, 4, 2, '2019-02-08 09:48:12.0', '2019-02-08 09:48:12.0'),
(4, 4, 16, '2019-02-08 09:48:12.0', '2019-02-08 09:48:12.0'),
(5, 5, 1, '2019-02-08 09:48:14.0', '2019-02-08 09:48:14.0'),
(6, 5, 2, '2019-02-08 09:48:14.0', '2019-02-08 09:48:14.0'),
(7, 5, 16, '2019-02-08 09:48:14.0', '2019-02-08 09:48:14.0'),
(8, 6, 16, '2019-02-12 13:44:12.0', '2019-02-12 13:44:12.0');

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

--
-- Dumping data for table `interview_users`
--

INSERT INTO `interview_users` (`id`, `interviewId`, `email`, `status`, `paymentstatus`, `link`, `pin`, `createdAt`, `updatedAt`) VALUES
(46, 3, 'tchandu@schemaxtech.com', 'Completed', 'Success', 'none', 76063, '2019-02-09 09:56:59', '2019-02-11 18:21:39'),
(47, 3, 'tchandu@schemaxtech.com', '', 'Success', 'none', 9493, '2019-02-09 09:56:59', '2019-02-11 10:45:24'),
(48, 3, 'suryakumari@schemaxtech.com', '', 'Success', 'none', 21719, '2019-02-09 09:56:59', '2019-02-12 10:16:28'),
(49, 3, 'swathi@gmail.com', 'Submitted', 'Success', 'none', 85327, '2019-02-09 09:56:59', '2019-02-12 12:41:02'),
(50, 3, 'santosh.vanjala@schemaxtech.com', '', 'Success', 'none', 26587, '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(51, 3, 'iamcha3ndu@mk.com', '', 'Success', 'none', 95121, '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(52, 3, 'iam56chan3du@pk.com', '', 'Success', 'none', 39434, '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(53, 3, 'pekavl6567ey@goriga3v.com', '', 'Success', 'none', 27404, '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(54, 3, 'pekavl66567ey@goriga3v.com', '', 'Success', 'none', 5916, '2019-02-09 09:59:01', '2019-02-09 09:59:01'),
(55, 3, 'iam56hchan3du@pk.com', '', 'Success', 'none', 17730, '2019-02-09 10:03:28', '2019-02-09 10:03:28'),
(56, 3, 'iam56hchanh3du@pk.com', '', 'Success', 'none', 30959, '2019-02-09 10:04:38', '2019-02-09 10:04:38'),
(57, 3, 'iam56hchanh3du@pk.com', '', 'Success', 'none', 44116, '2019-02-09 10:04:38', '2019-02-09 10:04:38'),
(58, 3, 'iamcha3nduf@mk.com', '', 'Success', 'none', 36978, '2019-02-09 10:05:18', '2019-02-09 10:05:18'),
(59, 3, 'pekavl6fgh6567ey@goriga3v.com', '', 'Success', 'none', 5673, '2019-02-09 10:09:57', '2019-02-09 10:09:57'),
(62, 3, 'iamfgchnb56hchanh3du@pk.com', '', 'Success', 'none', 10024, '2019-02-09 10:20:22', '2019-02-09 10:20:22'),
(63, 3, 'pekavl6fgh6567ey@gorvfdiga3v.com', '', 'Success', 'none', 66433, '2019-02-09 10:20:22', '2019-02-09 10:20:22'),
(64, 3, 'iamcha3nduf@mk.cfdhom', '', 'Success', 'none', 70792, '2019-02-09 10:25:10', '2019-02-09 10:25:10'),
(65, 3, 'tchandu@schemaxtech.com', '', 'Success', 'none', 91098, '2019-02-09 10:30:23', '2019-02-10 07:21:03'),
(66, 6, 'bhagyalakshmi.technologies@gmail.com', 'Available', 'Success', 'none', 86792, '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(67, 6, 'ravitejamunna111@gmail.com', 'Available', 'Success', 'none', 22799, '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(68, 6, 'suryakumari@schemaxtech.com', 'Available', 'Success', 'none', 23746, '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(69, 6, 'jyothianumulapudi@gmail.com ', 'Available', 'Success', 'none', 10314, '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(70, 6, 'santosh.vanjala@schemaxtech.com', 'Available', 'Success', 'none', 61751, '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(71, 6, 'swathi@gmail.com', 'Submitted', 'Success', 'none', 762, '2019-02-12 13:48:45', '2019-02-12 13:49:37');

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

--
-- Dumping data for table `interview_user_questions`
--

INSERT INTO `interview_user_questions` (`id`, `type`, `interviewUserId`, `questionId`, `questionTitle`, `answerLink`, `answerText`, `ano`, `uid`, `qTime`, `status`, `maxCount`, `timeTaken`, `createdAt`, `updatedAt`) VALUES
(85, 'fixed', 46, 1, 'hello how are you', 'google.com', 'my own answer', 1, 'xvhbxvnb', 30, 1, 10, '', '2019-02-09 09:56:59', '2019-02-09 18:25:17'),
(86, 'random', 46, 13, 'hello how are you', '', '', 2, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(87, 'random', 46, 9, 'hello how are you', '', '', 3, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(88, 'random', 46, 27, 'hello how are you', '', '', 4, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(89, 'random', 46, 14, 'hello how are you', '', '', 5, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(90, 'random', 46, 10, 'hello how are you', '', '', 6, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(91, 'random', 46, 15, 'hello how are you', '', '', 7, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(92, 'random', 46, 28, 'hello how are you', '', '', 8, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(93, 'random', 46, 16, 'hello how are you', '', '', 9, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(94, 'random', 46, 26, 'hello how are you', '', '', 10, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(95, 'fixed', 47, 1, NULL, '', '', 1, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(96, 'random', 47, 7, NULL, '', '', 2, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(97, 'random', 47, 23, NULL, '', '', 3, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(98, 'random', 47, 17, NULL, '', '', 4, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(99, 'random', 47, 19, NULL, '', '', 5, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(100, 'random', 47, 6, NULL, '', '', 6, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(101, 'random', 47, 3, NULL, '', '', 7, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(102, 'random', 47, 11, NULL, '', '', 8, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(103, 'random', 47, 21, NULL, '', '', 9, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(104, 'random', 47, 24, NULL, '', '', 10, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(105, 'fixed', 48, 1, NULL, '', '', 1, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(106, 'random', 48, 8, NULL, '', '', 2, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(107, 'random', 48, 20, NULL, '', '', 3, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(108, 'random', 48, 25, 'hello how are you', '', '', 4, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(109, 'fixed', 49, 1, 'hello how are you', '//www.cameratag.com/assets/v-0cfe699d-16c2-4380-aab3-02269a852ce3/mp4.mp4', '', 1, 'v-0cfe699d-16c2-4380-aab3-02269a852ce3', 30, 1, 10, '', '2019-02-09 09:56:59', '2019-02-12 13:31:52'),
(110, 'random', 49, 18, 'hello how are you', '//www.cameratag.com/assets/v-6f5cc3f6-1e4b-4463-811a-70d50cc25054/mp4.mp4', '', 2, 'v-6f5cc3f6-1e4b-4463-811a-70d50cc25054', 30, 1, 10, ' (36)', '2019-02-09 09:56:59', '2019-02-12 13:39:26'),
(111, 'random', 49, 5, 'hello how are you', '//www.cameratag.com/assets/v-01383e16-d5d5-4769-baf8-4f7e75e57357/mp4.mp4', '', 3, 'v-01383e16-d5d5-4769-baf8-4f7e75e57357', 30, 1, 10, ' (28)', '2019-02-09 09:56:59', '2019-02-12 13:42:57'),
(112, 'random', 49, 30, NULL, '//www.cameratag.com/assets/v-06103259-c940-4cfd-9d9a-31c45cce12ff/mp4.mp4', '', 4, 'v-06103259-c940-4cfd-9d9a-31c45cce12ff', 30, 1, 10, '', '2019-02-09 09:56:59', '2019-02-12 13:37:51'),
(113, 'fixed', 50, 1, NULL, '', '', 1, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(114, 'random', 50, 22, NULL, '', '', 2, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(115, 'random', 50, 4, NULL, '', '', 3, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(116, 'random', 50, 29, NULL, '', '', 4, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(117, 'fixed', 51, 1, NULL, '', '', 1, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(118, 'random', 51, 12, NULL, '', '', 2, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(119, 'random', 51, 2, NULL, '', '', 3, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(120, 'fixed', 52, 1, NULL, '', '', 1, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(121, 'fixed', 53, 1, NULL, '', '', 1, '', 30, 0, 10, '', '2019-02-09 09:56:59', '2019-02-09 09:56:59'),
(122, 'fixed', 54, 1, NULL, '', '', 1, '', 30, 0, 10, '', '2019-02-09 09:59:01', '2019-02-09 09:59:01'),
(123, 'random', 54, 5, NULL, '', '', 2, '', 30, 0, 10, '', '2019-02-09 09:59:01', '2019-02-09 09:59:01'),
(124, 'random', 54, 4, NULL, '', '', 3, '', 30, 0, 10, '', '2019-02-09 09:59:01', '2019-02-09 09:59:01'),
(125, 'random', 54, 13, NULL, '', '', 4, '', 30, 0, 10, '', '2019-02-09 09:59:01', '2019-02-09 09:59:01'),
(126, 'random', 54, 10, NULL, '', '', 5, '', 30, 0, 10, '', '2019-02-09 09:59:01', '2019-02-09 09:59:01'),
(127, 'random', 54, 6, NULL, '', '', 6, '', 30, 0, 10, '', '2019-02-09 09:59:01', '2019-02-09 09:59:01'),
(128, 'random', 54, 15, NULL, '', '', 7, '', 30, 0, 10, '', '2019-02-09 09:59:01', '2019-02-09 09:59:01'),
(129, 'random', 54, 28, NULL, '', '', 8, '', 30, 0, 10, '', '2019-02-09 09:59:01', '2019-02-09 09:59:01'),
(130, 'random', 54, 24, NULL, '', '', 9, '', 30, 0, 10, '', '2019-02-09 09:59:01', '2019-02-09 09:59:01'),
(131, 'random', 54, 21, NULL, '', '', 10, '', 30, 0, 10, '', '2019-02-09 09:59:01', '2019-02-09 09:59:01'),
(132, 'fixed', 55, 1, NULL, '', '', 1, '', 30, 0, 10, '', '2019-02-09 10:03:28', '2019-02-09 10:03:28'),
(133, 'random', 55, 12, NULL, '', '', 2, '', 30, 0, 10, '', '2019-02-09 10:03:28', '2019-02-09 10:03:28'),
(134, 'random', 55, 22, NULL, '', '', 3, '', 30, 0, 10, '', '2019-02-09 10:03:28', '2019-02-09 10:03:28'),
(135, 'random', 55, 25, NULL, '', '', 4, '', 30, 0, 10, '', '2019-02-09 10:03:28', '2019-02-09 10:03:28'),
(136, 'random', 55, 6, NULL, '', '', 5, '', 30, 0, 10, '', '2019-02-09 10:03:28', '2019-02-09 10:03:28'),
(137, 'random', 55, 19, NULL, '', '', 6, '', 30, 0, 10, '', '2019-02-09 10:03:28', '2019-02-09 10:03:28'),
(138, 'random', 55, 10, NULL, '', '', 7, '', 30, 0, 10, '', '2019-02-09 10:03:28', '2019-02-09 10:03:28'),
(139, 'random', 55, 11, NULL, '', '', 8, '', 30, 0, 10, '', '2019-02-09 10:03:28', '2019-02-09 10:03:28'),
(140, 'random', 55, 16, NULL, '', '', 9, '', 30, 0, 10, '', '2019-02-09 10:03:28', '2019-02-09 10:03:28'),
(141, 'random', 55, 21, NULL, '', '', 10, '', 30, 0, 10, '', '2019-02-09 10:03:28', '2019-02-09 10:03:28'),
(142, 'fixed', 56, 1, NULL, '', '', 1, '', 30, 0, 10, '', '2019-02-09 10:04:38', '2019-02-09 10:04:38'),
(143, 'random', 56, 5, NULL, '', '', 2, '', 30, 0, 10, '', '2019-02-09 10:04:38', '2019-02-09 10:04:38'),
(144, 'random', 56, 23, NULL, '', '', 3, '', 30, 0, 10, '', '2019-02-09 10:04:38', '2019-02-09 10:04:38'),
(145, 'random', 56, 20, NULL, '', '', 4, '', 30, 0, 10, '', '2019-02-09 10:04:38', '2019-02-09 10:04:38'),
(146, 'random', 56, 14, NULL, '', '', 5, '', 30, 0, 10, '', '2019-02-09 10:04:38', '2019-02-09 10:04:38'),
(147, 'random', 56, 3, NULL, '', '', 6, '', 30, 0, 10, '', '2019-02-09 10:04:38', '2019-02-09 10:04:38'),
(148, 'random', 56, 6, NULL, '', '', 7, '', 30, 0, 10, '', '2019-02-09 10:04:38', '2019-02-09 10:04:38'),
(149, 'random', 56, 11, NULL, '', '', 8, '', 30, 0, 10, '', '2019-02-09 10:04:38', '2019-02-09 10:04:38'),
(150, 'random', 56, 26, NULL, '', '', 9, '', 30, 0, 10, '', '2019-02-09 10:04:38', '2019-02-09 10:04:38'),
(151, 'random', 56, 24, NULL, '', '', 10, '', 30, 0, 10, '', '2019-02-09 10:04:38', '2019-02-09 10:04:38'),
(152, 'fixed', 57, 1, NULL, '', '', 1, '', 30, 0, 10, '', '2019-02-09 10:04:38', '2019-02-09 10:04:38'),
(153, 'random', 57, 8, NULL, '', '', 2, '', 30, 0, 10, '', '2019-02-09 10:04:38', '2019-02-09 10:04:38'),
(154, 'random', 57, 20, NULL, '', '', 3, '', 30, 0, 10, '', '2019-02-09 10:04:38', '2019-02-09 10:04:38'),
(155, 'random', 57, 13, NULL, '', '', 4, '', 30, 0, 10, '', '2019-02-09 10:04:38', '2019-02-09 10:04:38'),
(156, 'random', 57, 3, NULL, '', '', 5, '', 30, 0, 10, '', '2019-02-09 10:04:38', '2019-02-09 10:04:38'),
(157, 'random', 57, 19, NULL, '', '', 6, '', 30, 0, 10, '', '2019-02-09 10:04:38', '2019-02-09 10:04:38'),
(158, 'random', 57, 6, NULL, '', '', 7, '', 30, 0, 10, '', '2019-02-09 10:04:38', '2019-02-09 10:04:38'),
(159, 'random', 57, 11, NULL, '', '', 8, '', 30, 0, 10, '', '2019-02-09 10:04:38', '2019-02-09 10:04:38'),
(160, 'random', 57, 16, NULL, '', '', 9, '', 30, 0, 10, '', '2019-02-09 10:04:38', '2019-02-09 10:04:38'),
(161, 'random', 57, 21, NULL, '', '', 10, '', 30, 0, 10, '', '2019-02-09 10:04:38', '2019-02-09 10:04:38'),
(162, 'fixed', 58, 1, NULL, '', '', 1, '', 30, 0, 10, '', '2019-02-09 10:05:18', '2019-02-09 10:05:18'),
(163, 'random', 58, 20, NULL, '', '', 2, '', 30, 0, 10, '', '2019-02-09 10:05:18', '2019-02-09 10:05:18'),
(164, 'random', 58, 12, NULL, '', '', 3, '', 30, 0, 10, '', '2019-02-09 10:05:18', '2019-02-09 10:05:18'),
(165, 'random', 58, 7, NULL, '', '', 4, '', 30, 0, 10, '', '2019-02-09 10:05:18', '2019-02-09 10:05:18'),
(166, 'random', 58, 3, NULL, '', '', 5, '', 30, 0, 10, '', '2019-02-09 10:05:18', '2019-02-09 10:05:18'),
(167, 'random', 58, 14, NULL, '', '', 6, '', 30, 0, 10, '', '2019-02-09 10:05:18', '2019-02-09 10:05:18'),
(168, 'random', 58, 6, NULL, '', '', 7, '', 30, 0, 10, '', '2019-02-09 10:05:18', '2019-02-09 10:05:18'),
(169, 'random', 58, 26, NULL, '', '', 8, '', 30, 0, 10, '', '2019-02-09 10:05:18', '2019-02-09 10:05:18'),
(170, 'random', 58, 21, NULL, '', '', 9, '', 30, 0, 10, '', '2019-02-09 10:05:18', '2019-02-09 10:05:18'),
(171, 'random', 58, 28, NULL, '', '', 10, '', 30, 0, 10, '', '2019-02-09 10:05:18', '2019-02-09 10:05:18'),
(172, 'fixed', 59, 1, NULL, '', '', 1, '', 30, 0, 10, '', '2019-02-09 10:09:57', '2019-02-09 10:09:57'),
(173, 'random', 59, 30, NULL, '', '', 2, '', 30, 0, 10, '', '2019-02-09 10:09:57', '2019-02-09 10:09:57'),
(174, 'random', 59, 7, NULL, '', '', 3, '', 30, 0, 10, '', '2019-02-09 10:09:57', '2019-02-09 10:09:57'),
(175, 'random', 59, 29, NULL, '', '', 4, '', 30, 0, 10, '', '2019-02-09 10:09:57', '2019-02-09 10:09:57'),
(176, 'random', 59, 6, NULL, '', '', 5, '', 30, 0, 10, '', '2019-02-09 10:09:57', '2019-02-09 10:09:57'),
(177, 'random', 59, 3, NULL, '', '', 6, '', 30, 0, 10, '', '2019-02-09 10:09:57', '2019-02-09 10:09:57'),
(178, 'random', 59, 19, NULL, '', '', 7, '', 30, 0, 10, '', '2019-02-09 10:09:57', '2019-02-09 10:09:57'),
(179, 'random', 59, 28, NULL, '', '', 8, '', 30, 0, 10, '', '2019-02-09 10:09:57', '2019-02-09 10:09:57'),
(180, 'random', 59, 26, NULL, '', '', 9, '', 30, 0, 10, '', '2019-02-09 10:09:57', '2019-02-09 10:09:57'),
(181, 'random', 59, 21, NULL, '', '', 10, '', 30, 0, 10, '', '2019-02-09 10:09:57', '2019-02-09 10:09:57'),
(182, 'fixed', 62, 1, NULL, '', '', 1, '', 30, 0, 10, '', '2019-02-09 10:20:22', '2019-02-09 10:20:22'),
(183, 'random', 62, 13, NULL, '', '', 2, '', 30, 0, 10, '', '2019-02-09 10:20:22', '2019-02-09 10:20:22'),
(184, 'random', 62, 18, NULL, '', '', 3, '', 30, 0, 10, '', '2019-02-09 10:20:22', '2019-02-09 10:20:22'),
(185, 'random', 62, 23, NULL, '', '', 4, '', 30, 0, 10, '', '2019-02-09 10:20:22', '2019-02-09 10:20:22'),
(186, 'random', 62, 15, NULL, '', '', 5, '', 30, 0, 10, '', '2019-02-09 10:20:22', '2019-02-09 10:20:22'),
(187, 'random', 62, 3, NULL, '', '', 6, '', 30, 0, 10, '', '2019-02-09 10:20:22', '2019-02-09 10:20:22'),
(188, 'random', 62, 19, NULL, '', '', 7, '', 30, 0, 10, '', '2019-02-09 10:20:22', '2019-02-09 10:20:22'),
(189, 'random', 62, 26, NULL, '', '', 8, '', 30, 0, 10, '', '2019-02-09 10:20:22', '2019-02-09 10:20:22'),
(190, 'random', 62, 24, NULL, '', '', 9, '', 30, 0, 10, '', '2019-02-09 10:20:22', '2019-02-09 10:20:22'),
(191, 'random', 62, 28, NULL, '', '', 10, '', 30, 0, 10, '', '2019-02-09 10:20:22', '2019-02-09 10:20:22'),
(192, 'fixed', 63, 1, NULL, '', '', 1, '', 30, 0, 10, '', '2019-02-09 10:20:22', '2019-02-09 10:20:22'),
(193, 'random', 63, 7, NULL, '', '', 2, '', 30, 0, 10, '', '2019-02-09 10:20:22', '2019-02-09 10:20:22'),
(194, 'random', 63, 12, NULL, '', '', 3, '', 30, 0, 10, '', '2019-02-09 10:20:22', '2019-02-09 10:20:22'),
(195, 'random', 63, 27, NULL, '', '', 4, '', 30, 0, 10, '', '2019-02-09 10:20:22', '2019-02-09 10:20:22'),
(196, 'random', 63, 6, NULL, '', '', 5, '', 30, 0, 10, '', '2019-02-09 10:20:22', '2019-02-09 10:20:22'),
(197, 'random', 63, 10, NULL, '', '', 6, '', 30, 0, 10, '', '2019-02-09 10:20:22', '2019-02-09 10:20:22'),
(198, 'random', 63, 14, NULL, '', '', 7, '', 30, 0, 10, '', '2019-02-09 10:20:22', '2019-02-09 10:20:22'),
(199, 'random', 63, 11, NULL, '', '', 8, '', 30, 0, 10, '', '2019-02-09 10:20:22', '2019-02-09 10:20:22'),
(200, 'random', 63, 16, NULL, '', '', 9, '', 30, 0, 10, '', '2019-02-09 10:20:22', '2019-02-09 10:20:22'),
(201, 'random', 63, 21, NULL, '', '', 10, '', 30, 0, 10, '', '2019-02-09 10:20:22', '2019-02-09 10:20:22'),
(202, 'fixed', 64, 1, NULL, '', '', 1, '', 30, 0, 10, '', '2019-02-09 10:25:10', '2019-02-09 10:25:10'),
(203, 'random', 64, 25, NULL, '', '', 2, '', 30, 0, 10, '', '2019-02-09 10:25:10', '2019-02-09 10:25:10'),
(204, 'random', 64, 20, NULL, '', '', 3, '', 30, 0, 10, '', '2019-02-09 10:25:10', '2019-02-09 10:25:10'),
(205, 'random', 64, 2, NULL, '', '', 4, '', 30, 0, 10, '', '2019-02-09 10:25:10', '2019-02-09 10:25:10'),
(206, 'random', 64, 14, NULL, '', '', 5, '', 30, 0, 10, '', '2019-02-09 10:25:10', '2019-02-09 10:25:10'),
(207, 'random', 64, 15, NULL, '', '', 6, '', 30, 0, 10, '', '2019-02-09 10:25:10', '2019-02-09 10:25:10'),
(208, 'random', 64, 19, NULL, '', '', 7, '', 30, 0, 10, '', '2019-02-09 10:25:10', '2019-02-09 10:25:10'),
(209, 'random', 64, 11, NULL, '', '', 8, '', 30, 0, 10, '', '2019-02-09 10:25:10', '2019-02-09 10:25:10'),
(210, 'random', 64, 28, NULL, '', '', 9, '', 30, 0, 10, '', '2019-02-09 10:25:10', '2019-02-09 10:25:10'),
(211, 'random', 64, 16, NULL, '', '', 10, '', 30, 0, 10, '', '2019-02-09 10:25:10', '2019-02-09 10:25:10'),
(212, 'fixed', 65, 1, 'Can you tell me a little about your  yourself?', 'google.com', 'my own answer', 1, 'xvhbxvnb', 30, 1, 10, '', '2019-02-09 10:30:23', '2019-02-09 18:26:00'),
(213, 'random', 65, 12, 'why java is a plat form independent?', '', '', 2, '', 30, 0, 10, '', '2019-02-09 10:30:23', '2019-02-09 10:30:23'),
(214, 'random', 65, 17, 'what is abstract classes', '', '', 3, '', 30, 0, 10, '', '2019-02-09 10:30:23', '2019-02-09 10:30:23'),
(215, 'random', 65, 9, 'name the buildindg blocks of angular', '', '', 4, '', 30, 0, 10, '', '2019-02-09 10:30:23', '2019-02-09 10:30:23'),
(216, 'random', 65, 3, 'how to make an ajax call using angular js?', '', '', 5, '', 30, 0, 10, '', '2019-02-09 10:30:23', '2019-02-09 10:30:23'),
(217, 'random', 65, 15, 'what is polymorphism?', '', '', 6, '', 30, 0, 10, '', '2019-02-09 10:30:23', '2019-02-09 10:30:23'),
(218, 'random', 65, 19, 'what is association?', '', '', 7, '', 30, 0, 10, '', '2019-02-09 10:30:23', '2019-02-09 10:30:23'),
(219, 'random', 65, 16, 'expalian about interfaces?', '', '', 8, '', 30, 0, 10, '', '2019-02-09 10:30:23', '2019-02-09 10:30:23'),
(220, 'random', 65, 21, 'explain threads?', '', '', 9, '', 30, 0, 10, '', '2019-02-09 10:30:23', '2019-02-09 10:30:23'),
(221, 'random', 65, 24, 'How memory is managed in Python?', '', '', 10, '', 30, 0, 10, '', '2019-02-09 10:30:23', '2019-02-09 10:30:23'),
(222, 'fixed', 66, 16, 'expalian about interfaces?', '', '', 1, '', 30, 0, 4, '', '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(223, 'random', 66, 12, 'why java is a plat form independent?', '', '', 2, '', 30, 0, 4, '', '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(224, 'random', 66, 15, 'what is polymorphism?', '', '', 3, '', 30, 0, 4, '', '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(225, 'random', 66, 21, 'explain threads?', '', '', 4, '', 30, 0, 4, '', '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(226, 'fixed', 67, 16, 'expalian about interfaces?', '', '', 1, '', 30, 0, 4, '', '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(227, 'random', 67, 2, 'What was your technical and logical experience?', '', '', 2, '', 30, 0, 4, '', '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(228, 'random', 67, 19, 'what is association?', '', '', 3, '', 30, 0, 4, '', '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(229, 'random', 67, 24, 'How memory is managed in Python?', '', '', 4, '', 30, 0, 4, '', '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(230, 'fixed', 68, 16, 'expalian about interfaces?', '', '', 1, '', 30, 0, 4, '', '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(231, 'random', 68, 25, 'What are Python decorators?', '', '', 2, '', 30, 0, 4, '', '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(232, 'random', 68, 3, 'how to make an ajax call using angular js?', '', '', 3, '', 30, 0, 4, '', '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(233, 'random', 68, 26, 'How Python is interpreted?', '', '', 4, '', 30, 0, 4, '', '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(234, 'fixed', 69, 16, 'expalian about interfaces?', '', '', 1, '', 30, 0, 4, '', '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(235, 'random', 69, 18, 'what is method over loading', '', '', 2, '', 30, 0, 4, '', '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(236, 'random', 69, 14, 'what is constructors?', '', '', 3, '', 30, 0, 4, '', '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(237, 'random', 69, 11, 'what is view encapsulation?', '', '', 4, '', 30, 0, 4, '', '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(238, 'fixed', 70, 16, 'expalian about interfaces?', '', '', 1, '', 30, 0, 4, '', '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(239, 'random', 70, 1, 'Can you tell me a little about your  yourself?', '', '', 2, '', 30, 0, 4, '', '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(240, 'random', 70, 10, 'what ois transpling in angular?', '', '', 3, '', 30, 0, 4, '', '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(241, 'random', 70, 28, 'What is lambda in Python?', '', '', 4, '', 30, 0, 4, '', '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(242, 'fixed', 71, 16, 'expalian about interfaces?', '//www.cameratag.com/assets/v-de4a33f5-ea64-4ef2-a20f-2394153e87be/mp4.mp4', '', 1, 'v-de4a33f5-ea64-4ef2-a20f-2394153e87be', 30, 1, 4, ' (58)', '2019-02-12 13:48:45', '2019-02-12 13:50:09'),
(243, 'random', 71, 30, 'What is unittest in Python?', '//www.cameratag.com/assets/v-89a1cb63-3abc-4946-aa2e-0c0f3244acf8/mp4.mp4', 'exportingBuddha constituted mandatory? General questions', 2, 'v-89a1cb63-3abc-4946-aa2e-0c0f3244acf8', 30, 1, 4, ' (24)', '2019-02-12 13:48:45', '2019-02-12 13:50:26'),
(244, 'random', 71, 6, 'Expalian ng-init directive', '//www.cameratag.com/assets/v-7c640a3e-7370-4c4c-b7ab-e731b4cd0fb4/mp4.mp4', '', 3, 'v-7c640a3e-7370-4c4c-b7ab-e731b4cd0fb4', 30, 1, 4, ' (0)', '2019-02-12 13:48:45', '2019-02-12 13:55:13');

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

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `tableName`, `action`, `remarks`, `respectiveId`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, 'interview_experts', 'insert', '{\"id\":4,\"interviewUserId\":48,\"expertId\":4,\"status\":\"open\",\"updatedAt\":\"2019-02-12T10:16:11.084Z\",\"createdAt\":\"2019-02-12T10:16:11.084Z\"}', '4', 3, '2019-02-12 10:16:11', '2019-02-12 10:16:11'),
(2, 'interview_users', 'update', '{\"where\":{\"id\":48},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"status\",\"updatedAt\"],\"attributes\":{\"status\":\"expertreview\",\"updatedAt\":\"2019-02-12T10:16:11.097Z\"},\"auth\":3}', '{\"id\":48}', 3, '2019-02-12 10:16:11', '2019-02-12 10:16:11'),
(3, 'interview_experts', 'insert', '{\"id\":5,\"interviewUserId\":48,\"expertId\":4,\"status\":\"open\",\"updatedAt\":\"2019-02-12T10:16:28.522Z\",\"createdAt\":\"2019-02-12T10:16:28.522Z\"}', '5', 3, '2019-02-12 10:16:28', '2019-02-12 10:16:28'),
(4, 'interview_users', 'update', '{\"where\":{\"id\":48},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"status\",\"updatedAt\"],\"attributes\":{\"status\":\"expertreview\",\"updatedAt\":\"2019-02-12T10:16:28.550Z\"},\"auth\":3}', '{\"id\":48}', 3, '2019-02-12 10:16:28', '2019-02-12 10:16:28'),
(5, 'interview_users', 'update', '{\"where\":{\"pin\":85327,\"email\":\"swathi@gmail.com\"},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"status\",\"updatedAt\"],\"attributes\":{\"status\":\"attended\",\"updatedAt\":\"2019-02-12T11:09:01.075Z\"},\"auth\":7}', '{\"pin\":85327,\"email\":\"swathi@gmail.com\"}', 7, '2019-02-12 11:09:01', '2019-02-12 11:09:01'),
(6, 'interview_users', 'update', '{\"where\":{\"pin\":85327,\"email\":\"swathi@gmail.com\"},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"status\",\"updatedAt\"],\"attributes\":{\"status\":\"submited\",\"updatedAt\":\"2019-02-12T11:09:15.536Z\"},\"auth\":7}', '{\"pin\":85327,\"email\":\"swathi@gmail.com\"}', 7, '2019-02-12 11:09:15', '2019-02-12 11:09:15'),
(7, 'interview_users', 'update', '{\"where\":{\"pin\":85327,\"email\":\"swathi@gmail.com\"},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"status\",\"updatedAt\"],\"attributes\":{\"status\":\"attended\",\"updatedAt\":\"2019-02-12T11:14:57.414Z\"},\"auth\":7}', '{\"pin\":85327,\"email\":\"swathi@gmail.com\"}', 7, '2019-02-12 11:14:57', '2019-02-12 11:14:57'),
(8, 'interview_users', 'update', '{\"where\":{\"pin\":85327,\"email\":\"swathi@gmail.com\"},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"status\",\"updatedAt\"],\"attributes\":{\"status\":\"submited\",\"updatedAt\":\"2019-02-12T11:16:48.784Z\"},\"auth\":7}', '{\"pin\":85327,\"email\":\"swathi@gmail.com\"}', 7, '2019-02-12 11:16:48', '2019-02-12 11:16:48'),
(9, 'interview_users', 'update', '{\"where\":{\"pin\":85327,\"email\":\"swathi@gmail.com\"},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"status\",\"updatedAt\"],\"attributes\":{\"status\":\"attended\",\"updatedAt\":\"2019-02-12T11:19:00.006Z\"},\"auth\":7}', '{\"pin\":85327,\"email\":\"swathi@gmail.com\"}', 7, '2019-02-12 11:19:00', '2019-02-12 11:19:00'),
(10, 'interview_users', 'update', '{\"where\":{\"pin\":85327,\"email\":\"swathi@gmail.com\"},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"status\",\"updatedAt\"],\"attributes\":{\"status\":\"submited\",\"updatedAt\":\"2019-02-12T11:19:09.174Z\"},\"auth\":7}', '{\"pin\":85327,\"email\":\"swathi@gmail.com\"}', 7, '2019-02-12 11:19:09', '2019-02-12 11:19:09'),
(11, 'interview_users', 'update', '{\"where\":{\"pin\":85327,\"email\":\"swathi@gmail.com\"},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"status\",\"updatedAt\"],\"attributes\":{\"status\":\"attended\",\"updatedAt\":\"2019-02-12T11:31:45.232Z\"},\"auth\":7}', '{\"pin\":85327,\"email\":\"swathi@gmail.com\"}', 7, '2019-02-12 11:31:45', '2019-02-12 11:31:45'),
(12, 'interview_users', 'update', '{\"where\":{\"pin\":85327,\"email\":\"swathi@gmail.com\"},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"status\",\"updatedAt\"],\"attributes\":{\"status\":\"Submitted\",\"updatedAt\":\"2019-02-12T11:31:55.324Z\"},\"auth\":7}', '{\"pin\":85327,\"email\":\"swathi@gmail.com\"}', 7, '2019-02-12 11:31:55', '2019-02-12 11:31:55'),
(13, 'interview_users', 'update', '{\"where\":{\"pin\":85327,\"email\":\"swathi@gmail.com\"},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"status\",\"updatedAt\"],\"attributes\":{\"status\":\"Verified\",\"updatedAt\":\"2019-02-12T12:12:09.665Z\"},\"auth\":7}', '{\"pin\":85327,\"email\":\"swathi@gmail.com\"}', 7, '2019-02-12 12:12:09', '2019-02-12 12:12:09'),
(14, 'interview_users', 'update', '{\"where\":{\"pin\":85327,\"email\":\"swathi@gmail.com\"},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"status\",\"updatedAt\"],\"attributes\":{\"status\":\"Submitted\",\"updatedAt\":\"2019-02-12T12:12:44.781Z\"},\"auth\":7}', '{\"pin\":85327,\"email\":\"swathi@gmail.com\"}', 7, '2019-02-12 12:12:44', '2019-02-12 12:12:44'),
(15, 'interview_users', 'update', '{\"where\":{\"pin\":85327,\"email\":\"swathi@gmail.com\"},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"status\",\"updatedAt\"],\"attributes\":{\"status\":\"Verified\",\"updatedAt\":\"2019-02-12T12:40:49.956Z\"},\"auth\":7}', '{\"pin\":85327,\"email\":\"swathi@gmail.com\"}', 7, '2019-02-12 12:40:49', '2019-02-12 12:40:49'),
(16, 'interview_users', 'update', '{\"where\":{\"pin\":85327,\"email\":\"swathi@gmail.com\"},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"status\",\"updatedAt\"],\"attributes\":{\"status\":\"Submitted\",\"updatedAt\":\"2019-02-12T12:41:02.234Z\"},\"auth\":7}', '{\"pin\":85327,\"email\":\"swathi@gmail.com\"}', 7, '2019-02-12 12:41:02', '2019-02-12 12:41:02'),
(17, 'interview_user_questions', 'update', '{\"where\":{\"id\":109},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"uid\",\"answerText\",\"answerLink\",\"status\",\"updatedAt\",\"time_taken\"],\"attributes\":{\"uid\":\"v-0cfe699d-16c2-4380-aab3-02269a852ce3\",\"answerText\":\"\",\"answerLink\":\"//www.cameratag.com/assets/v-0cfe699d-16c2-4380-aab3-02269a852ce3/mp4.mp4\",\"status\":1,\"updatedAt\":\"2019-02-12T13:31:52.494Z\"},\"auth\":7}', '{\"id\":109}', 7, '2019-02-12 13:31:52', '2019-02-12 13:31:52'),
(18, 'interview_user_questions', 'update', '{\"where\":{\"id\":110},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"uid\",\"answerText\",\"answerLink\",\"status\",\"updatedAt\",\"time_taken\"],\"attributes\":{\"uid\":\"v-42675ba2-a609-4622-a027-fd4d6021769a\",\"answerText\":\"TV9 channel\",\"answerLink\":\"//www.cameratag.com/assets/v-42675ba2-a609-4622-a027-fd4d6021769a/mp4.mp4\",\"status\":1,\"updatedAt\":\"2019-02-12T13:33:24.477Z\"},\"auth\":7}', '{\"id\":110}', 7, '2019-02-12 13:33:24', '2019-02-12 13:33:24'),
(19, 'interview_user_questions', 'update', '{\"where\":{\"id\":111},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"uid\",\"answerText\",\"answerLink\",\"status\",\"updatedAt\",\"time_taken\"],\"attributes\":{\"uid\":\"v-af3bd75e-9718-4b3c-8486-15f456ee1cb1\",\"answerText\":\"everytime Indus contact number\",\"answerLink\":\"//www.cameratag.com/assets/v-af3bd75e-9718-4b3c-8486-15f456ee1cb1/mp4.mp4\",\"status\":1,\"updatedAt\":\"2019-02-12T13:37:07.388Z\"},\"auth\":7}', '{\"id\":111}', 7, '2019-02-12 13:37:07', '2019-02-12 13:37:07'),
(20, 'interview_user_questions', 'update', '{\"where\":{\"id\":112},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"uid\",\"answerText\",\"answerLink\",\"status\",\"updatedAt\",\"time_taken\"],\"attributes\":{\"uid\":\"v-06103259-c940-4cfd-9d9a-31c45cce12ff\",\"answerText\":\"\",\"answerLink\":\"//www.cameratag.com/assets/v-06103259-c940-4cfd-9d9a-31c45cce12ff/mp4.mp4\",\"status\":1,\"updatedAt\":\"2019-02-12T13:37:51.318Z\"},\"auth\":7}', '{\"id\":112}', 7, '2019-02-12 13:37:51', '2019-02-12 13:37:51'),
(21, 'interview_user_questions', 'update', '{\"where\":{\"id\":110},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"uid\",\"answerText\",\"answerLink\",\"status\",\"timeTaken\",\"updatedAt\"],\"attributes\":{\"uid\":\"v-6f5cc3f6-1e4b-4463-811a-70d50cc25054\",\"answerText\":\"\",\"answerLink\":\"//www.cameratag.com/assets/v-6f5cc3f6-1e4b-4463-811a-70d50cc25054/mp4.mp4\",\"status\":1,\"timeTaken\":\" (36)\",\"updatedAt\":\"2019-02-12T13:39:26.322Z\"},\"auth\":7}', '{\"id\":110}', 7, '2019-02-12 13:39:26', '2019-02-12 13:39:26'),
(22, 'interview_user_questions', 'update', '{\"where\":{\"id\":111},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"uid\",\"answerText\",\"answerLink\",\"status\",\"timeTaken\",\"updatedAt\"],\"attributes\":{\"uid\":\"v-01383e16-d5d5-4769-baf8-4f7e75e57357\",\"answerText\":\"\",\"answerLink\":\"//www.cameratag.com/assets/v-01383e16-d5d5-4769-baf8-4f7e75e57357/mp4.mp4\",\"status\":1,\"timeTaken\":\" (28)\",\"updatedAt\":\"2019-02-12T13:42:57.600Z\"},\"auth\":7}', '{\"id\":111}', 7, '2019-02-12 13:42:57', '2019-02-12 13:42:57'),
(23, 'interview', 'insert', '{\"id\":6,\"type\":\"async\",\"domainId\":1,\"interviewId\":\"AI01001-000004\",\"subDomainId\":1,\"expLevelId\":1,\"start_date\":\"2019-02-12T00:00:00.000Z\",\"end_date\":\"2019-02-28T00:00:00.000Z\",\"duration\":\"30\",\"questionCount\":\"4\",\"organizationId\":1,\"userId\":3,\"updatedAt\":\"2019-02-12T13:44:12.539Z\",\"createdAt\":\"2019-02-12T13:44:12.539Z\"}', '6', 3, '2019-02-12 13:44:12', '2019-02-12 13:44:12'),
(24, 'interview_fixed_questions', 'insert', '{\"validate\":false,\"hooks\":true,\"individualHooks\":false,\"ignoreDuplicates\":false,\"transaction\":{\"sequelize\":{\"options\":{\"dialect\":\"mysql\",\"dialectModulePath\":null,\"host\":\"127.0.0.1\",\"protocol\":\"tcp\",\"define\":{},\"query\":{},\"sync\":{},\"timezone\":\"+00:00\",\"omitNull\":false,\"native\":false,\"replication\":false,\"pool\":{},\"quoteIdentifiers\":true,\"hooks\":{\"afterCreate\":[null],\"afterUpdate\":[null],\"afterBulkUpdate\":[null],\"afterBulkCreate\":[null]},\"retry\":{\"max\":5,\"match\":[\"SQLITE_BUSY: database is locked\"]},\"transactionType\":\"DEFERRED\",\"isolationLevel\":null,\"databaseVersion\":\"10.1.37-MariaDB\",\"typeValidation\":false,\"benchmark\":false,\"operatorsAliases\":false,\"username\":\"root\",\"password\":null,\"database\":\"interview_buddy\"},\"config\":{\"database\":\"interview_buddy\",\"username\":\"root\",\"password\":null,\"host\":\"127.0.0.1\",\"port\":3306,\"pool\":\"~transaction~sequelize~options~pool\",\"protocol\":\"tcp\",\"native\":false,\"replication\":false,\"dialectModulePath\":null},\"dialect\":{\"sequelize\":\"~transaction~sequelize\",\"connectionManager\":{\"sequelize\":\"~transaction~sequelize\",\"config\":{\"database\":\"interview_buddy\",\"username\":\"root\",\"password\":null,\"host\":\"127.0.0.1\",\"pool\":{\"max\":5,\"min\":0,\"idle\":10000,\"acquire\":10000,\"evict\":10000,\"handleDisconnects\":true},\"protocol\":\"tcp\",\"native\":false,\"replication\":false,\"dialectModulePath\":null},\"dialect\":\"~transaction~sequelize~dialect\",\"versionPromise\":null,\"dialectName\":\"mysql\",\"pool\":{\"_events\":{},\"_eventsCount\":0,\"_config\":{\"fifo\":true,\"priorityRange\":1,\"testOnBorrow\":true,\"testOnReturn\":false,\"autostart\":false,\"acquireTimeoutMillis\":10000,\"max\":5,\"min\":0,\"evictionRunIntervalMillis\":10000,\"numTestsPerEvictionRun\":3,\"softIdleTimeoutMillis\":-1,\"idleTimeoutMillis\":10000},\"_factory\":{},\"_draining\":false,\"_started\":true,\"_waitingClientsQueue\":{\"_size\":1,\"_slots\":[{\"_list\":{\"head\":null,\"tail\":null,\"length\":0}}]},\"_factoryCreateOperations\":{},\"_factoryDestroyOperations\":{},\"_availableObjects\":{\"_list\":{\"head\":{\"prev\":null,\"next\":null,\"data\":{\"creationTime\":1549979052537,\"lastReturnTime\":1549979052552,\"lastBorrowTime\":1549979052547,\"lastIdleTime\":1549979052552,\"obj\":{\"_events\":{},\"_eventsCount\":1,\"config\":{\"host\":\"127.0.0.1\",\"port\":3306,\"user\":\"root\",\"database\":\"interview_buddy\",\"connectTimeout\":10000,\"insecureAuth\":false,\"supportBigNumbers\":true,\"bigNumberStrings\":false,\"decimalNumbers\":false,\"dateStrings\":false,\"trace\":true,\"stringifyObjects\":false,\"timezone\":\"+00:00\",\"ssl\":false,\"multipleStatements\":false,\"rowsAsArray\":false,\"namedPlaceholders\":false,\"maxPacketSize\":0,\"charsetNumber\":224,\"compress\":false,\"clientFlags\":8582093,\"maxPreparedStatements\":16000},\"stream\":{\"connecting\":false,\"_hadError\":false,\"_handle\":{\"reading\":true,\"onconnection\":null},\"_parent\":null,\"_host\":null,\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"buffer\":{\"head\":null,\"tail\":null,\"length\":0},\"length\":0,\"pipes\":null,\"pipesCount\":0,\"flowing\":true,\"ended\":false,\"endEmitted\":false,\"reading\":true,\"sync\":false,\"needReadable\":true,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"paused\":false,\"emitClose\":false,\"autoDestroy\":false,\"destroyed\":false,\"defaultEncoding\":\"utf8\",\"awaitDrain\":0,\"readingMore\":false,\"decoder\":null,\"encoding\":null},\"readable\":true,\"_events\":{},\"_eventsCount\":4,\"_writableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"finalCalled\":false,\"needDrain\":false,\"ending\":false,\"ended\":false,\"finished\":false,\"destroyed\":false,\"decodeStrings\":false,\"defaultEncoding\":\"utf8\",\"length\":0,\"writing\":false,\"corked\":0,\"sync\":false,\"bufferProcessing\":false,\"writecb\":null,\"writelen\":0,\"bufferedRequest\":null,\"lastBufferedRequest\":null,\"pendingcb\":0,\"prefinished\":false,\"errorEmitted\":false,\"emitClose\":false,\"autoDestroy\":false,\"bufferedRequestCount\":0,\"corkedRequestsFree\":{\"next\":null,\"entry\":null}},\"writable\":true,\"allowHalfOpen\":false,\"_sockname\":null,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"server\":null,\"_server\":null},\"_internalId\":18,\"_commands\":{\"_head\":0,\"_tail\":0,\"_capacityMask\":3,\"_list\":[null,null,null,null]},\"_paused\":false,\"_paused_packets\":{\"_head\":0,\"_tail\":0,\"_capacityMask\":3,\"_list\":[null,null,null,null]},\"_statements\":{},\"serverCapabilityFlags\":2688546815,\"authorized\":true,\"sequenceId\":2,\"compressedSequenceId\":0,\"threadId\":1589,\"_handshakePacket\":{\"protocolVersion\":10,\"serverVersion\":\"5.5.5-10.1.37-MariaDB\",\"capabilityFlags\":2688546815,\"connectionId\":1589,\"authPluginData1\":{\"type\":\"Buffer\",\"data\":[94,64,97,72,39,40,51,103]},\"authPluginData2\":{\"type\":\"Buffer\",\"data\":[48,87,70,57,43,105,79,51,76,103,67,88]},\"characterSet\":8,\"statusFlags\":2},\"_fatalError\":null,\"_protocolError\":null,\"_outOfOrderPackets\":[],\"clientEncoding\":\"utf8\",\"packetParser\":{\"buffer\":[],\"bufferLength\":0,\"packetHeaderLength\":4,\"headerLen\":0,\"length\":7,\"largePacketParts\":[],\"firstPacketSequenceId\":0},\"serverEncoding\":\"latin1\",\"connectTimeout\":null,\"connectionId\":1589},\"state\":\"IDLE\"}},\"tail\":\"~transaction~sequelize~dialect~connectionManager~pool~_availableObjects~_list~head\",\"length\":1}},\"_testOnBorrowResources\":{},\"_testOnReturnResources\":{},\"_validationOperations\":{},\"_allObjects\":{},\"_resourceLoans\":{},\"_evictionIterator\":{\"_list\":\"~transaction~sequelize~dialect~connectionManager~pool~_availableObjects~_list\",\"_direction\":\"next\",\"_startPosition\":\"head\",\"_started\":true,\"_cursor\":{\"prev\":null,\"next\":null,\"data\":{\"creationTime\":1549979021737,\"lastReturnTime\":1549979022292,\"lastBorrowTime\":1549979022289,\"lastIdleTime\":1549979022292,\"obj\":{\"_events\":{},\"_eventsCount\":1,\"config\":{\"host\":\"127.0.0.1\",\"port\":3306,\"user\":\"root\",\"database\":\"interview_buddy\",\"connectTimeout\":10000,\"insecureAuth\":false,\"supportBigNumbers\":true,\"bigNumberStrings\":false,\"decimalNumbers\":false,\"dateStrings\":false,\"trace\":true,\"stringifyObjects\":false,\"timezone\":\"+00:00\",\"ssl\":false,\"multipleStatements\":false,\"rowsAsArray\":false,\"namedPlaceholders\":false,\"maxPacketSize\":0,\"charsetNumber\":224,\"compress\":false,\"clientFlags\":8582093,\"maxPreparedStatements\":16000},\"stream\":{\"connecting\":false,\"_hadError\":false,\"_handle\":null,\"_parent\":null,\"_host\":null,\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"buffer\":{\"head\":null,\"tail\":null,\"length\":0},\"length\":0,\"pipes\":null,\"pipesCount\":0,\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"paused\":false,\"emitClose\":false,\"autoDestroy\":false,\"destroyed\":true,\"defaultEncoding\":\"utf8\",\"awaitDrain\":0,\"readingMore\":false,\"decoder\":null,\"encoding\":null},\"readable\":false,\"_events\":{},\"_eventsCount\":5,\"_writableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"finalCalled\":true,\"needDrain\":false,\"ending\":true,\"ended\":true,\"finished\":false,\"destroyed\":true,\"decodeStrings\":false,\"defaultEncoding\":\"utf8\",\"length\":0,\"writing\":false,\"corked\":0,\"sync\":false,\"bufferProcessing\":false,\"writecb\":null,\"writelen\":0,\"bufferedRequest\":null,\"lastBufferedRequest\":null,\"pendingcb\":1,\"prefinished\":false,\"errorEmitted\":false,\"emitClose\":false,\"autoDestroy\":false,\"bufferedRequestCount\":0,\"corkedRequestsFree\":{\"next\":null,\"entry\":null}},\"writable\":false,\"allowHalfOpen\":false,\"_sockname\":null,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"server\":null,\"_server\":null},\"_internalId\":15,\"_commands\":{\"_head\":0,\"_tail\":0,\"_capacityMask\":3,\"_list\":[null,null,null,null]},\"_paused\":false,\"_paused_packets\":{\"_head\":0,\"_tail\":0,\"_capacityMask\":3,\"_list\":[null,null,null,null]},\"_statements\":{},\"serverCapabilityFlags\":2688546815,\"authorized\":true,\"sequenceId\":1,\"compressedSequenceId\":0,\"threadId\":1586,\"_handshakePacket\":{\"protocolVersion\":10,\"serverVersion\":\"5.5.5-10.1.37-MariaDB\",\"capabilityFlags\":2688546815,\"connectionId\":1586,\"authPluginData1\":{\"type\":\"Buffer\",\"data\":[114,78,109,93,102,108,105,75]},\"authPluginData2\":{\"type\":\"Buffer\",\"data\":[123,77,74,108,98,38,52,112,92,90,46,117]},\"characterSet\":8,\"statusFlags\":2},\"_fatalError\":null,\"_protocolError\":null,\"_outOfOrderPackets\":[],\"clientEncoding\":\"utf8\",\"packetParser\":{\"buffer\":[],\"bufferLength\":0,\"packetHeaderLength\":4,\"headerLen\":0,\"length\":5,\"largePacketParts\":[],\"firstPacketSequenceId\":0},\"serverEncoding\":\"latin1\",\"connectTimeout\":null,\"connectionId\":1586,\"_closing\":true},\"state\":\"INVALID\"}},\"_done\":false},\"_evictor\":{},\"_scheduledEviction\":{\"_idleTimeout\":10000,\"_idlePrev\":{\"_idleNext\":\"~transaction~sequelize~dialect~connectionManager~pool~_scheduledEviction\",\"_idlePrev\":\"~transaction~sequelize~dialect~connectionManager~pool~_scheduledEviction\",\"expiry\":360341,\"id\":-9007199254740903,\"msecs\":10000,\"priorityQueuePosition\":3},\"_idleNext\":\"~transaction~sequelize~dialect~connectionManager~pool~_scheduledEviction~_idlePrev\",\"_idleStart\":350341,\"_repeat\":null,\"_destroyed\":false}},\"lib\":{\"Types\":{\"DECIMAL\":0,\"TINY\":1,\"SHORT\":2,\"LONG\":3,\"FLOAT\":4,\"DOUBLE\":5,\"NULL\":6,\"TIMESTAMP\":7,\"LONGLONG\":8,\"INT24\":9,\"DATE\":10,\"TIME\":11,\"DATETIME\":12,\"YEAR\":13,\"NEWDATE\":14,\"VARCHAR\":15,\"BIT\":16,\"JSON\":245,\"NEWDECIMAL\":246,\"ENUM\":247,\"SET\":248,\"TINY_BLOB\":249,\"MEDIUM_BLOB\":250,\"LONG_BLOB\":251,\"BLOB\":252,\"VAR_STRING\":253,\"STRING\":254,\"GEOMETRY\":255},\"Charsets\":{\"BIG5_CHINESE_CI\":1,\"LATIN2_CZECH_CS\":2,\"DEC8_SWEDISH_CI\":3,\"CP850_GENERAL_CI\":4,\"LATIN1_GERMAN1_CI\":5,\"HP8_ENGLISH_CI\":6,\"KOI8R_GENERAL_CI\":7,\"LATIN1_SWEDISH_CI\":8,\"LATIN2_GENERAL_CI\":9,\"SWE7_SWEDISH_CI\":10,\"ASCII_GENERAL_CI\":11,\"UJIS_JAPANESE_CI\":12,\"SJIS_JAPANESE_CI\":13,\"CP1251_BULGARIAN_CI\":14,\"LATIN1_DANISH_CI\":15,\"HEBREW_GENERAL_CI\":16,\"TIS620_THAI_CI\":18,\"EUCKR_KOREAN_CI\":19,\"LATIN7_ESTONIAN_CS\":20,\"LATIN2_HUNGARIAN_CI\":21,\"KOI8U_GENERAL_CI\":22,\"CP1251_UKRAINIAN_CI\":23,\"GB2312_CHINESE_CI\":24,\"GREEK_GENERAL_CI\":25,\"CP1250_GENERAL_CI\":26,\"LATIN2_CROATIAN_CI\":27,\"GBK_CHINESE_CI\":28,\"CP1257_LITHUANIAN_CI\":29,\"LATIN5_TURKISH_CI\":30,\"LATIN1_GERMAN2_CI\":31,\"ARMSCII8_GENERAL_CI\":32,\"UTF8_GENERAL_CI\":33,\"CP1250_CZECH_CS\":34,\"UCS2_GENERAL_CI\":35,\"CP866_GENERAL_CI\":36,\"KEYBCS2_GENERAL_CI\":37,\"MACCE_GENERAL_CI\":38,\"MACROMAN_GENERAL_CI\":39,\"CP852_GENERAL_CI\":40,\"LATIN7_GENERAL_CI\":41,\"LATIN7_GENERAL_CS\":42,\"MACCE_BIN\":43,\"CP1250_CROATIAN_CI\":44,\"UTF8MB4_GENERAL_CI\":45,\"UTF8MB4_BIN\":46,\"LATIN1_BIN\":47,\"LATIN1_GENERAL_CI\":48,\"LATIN1_GENERAL_CS\":49,\"CP1251_BIN\":50,\"CP1251_GENERAL_CI\":51,\"CP1251_GENERAL_CS\":52,\"MACROMAN_BIN\":53,\"UTF16_GENERAL_CI\":54,\"UTF16_BIN\":55,\"UTF16LE_GENERAL_CI\":56,\"CP1256_GENERAL_CI\":57,\"CP1257_BIN\":58,\"CP1257_GENERAL_CI\":59,\"UTF32_GENERAL_CI\":60,\"UTF32_BIN\":61,\"UTF16LE_BIN\":62,\"BINARY\":63,\"ARMSCII8_BIN\":64,\"ASCII_BIN\":65,\"CP1250_BIN\":66,\"CP1256_BIN\":67,\"CP866_BIN\":68,\"DEC8_BIN\":69,\"GREEK_BIN\":70,\"HEBREW_BIN\":71,\"HP8_BIN\":72,\"KEYBCS2_BIN\":73,\"KOI8R_BIN\":74,\"KOI8U_BIN\":75,\"UTF8_TOLOWER_CI\":76,\"LATIN2_BIN\":77,\"LATIN5_BIN\":78,\"LATIN7_BIN\":79,\"CP850_BIN\":80,\"CP852_BIN\":81,\"SWE7_BIN\":82,\"UTF8_BIN\":83,\"BIG5_BIN\":84,\"EUCKR_BIN\":85,\"GB2312_BIN\":86,\"GBK_BIN\":87,\"SJIS_BIN\":88,\"TIS620_BIN\":89,\"UCS2_BIN\":90,\"UJIS_BIN\":91,\"GEOSTD8_GENERAL_CI\":92,\"GEOSTD8_BIN\":93,\"LATIN1_SPANISH_CI\":94,\"CP932_JAPANESE_CI\":95,\"CP932_BIN\":96,\"EUCJPMS_JAPANESE_CI\":97,\"EUCJPMS_BIN\":98,\"CP1250_POLISH_CI\":99,\"UTF16_UNICODE_CI\":101,\"UTF16_ICELANDIC_CI\":102,\"UTF16_LATVIAN_CI\":103,\"UTF16_ROMANIAN_CI\":104,\"UTF16_SLOVENIAN_CI\":105,\"UTF16_POLISH_CI\":106,\"UTF16_ESTONIAN_CI\":107,\"UTF16_SPANISH_CI\":108,\"UTF16_SWEDISH_CI\":109,\"UTF16_TURKISH_CI\":110,\"UTF16_CZECH_CI\":111,\"UTF16_DANISH_CI\":112,\"UTF16_LITHUANIAN_CI\":113,\"UTF16_SLOVAK_CI\":114,\"UTF16_SPANISH2_CI\":115,\"UTF16_ROMAN_CI\":116,\"UTF16_PERSIAN_CI\":117,\"UTF16_ESPERANTO_CI\":118,\"UTF16_HUNGARIAN_CI\":119,\"UTF16_SINHALA_CI\":120,\"UTF16_GERMAN2_CI\":121,\"UTF16_CROATIAN_CI\":122,\"UTF16_UNICODE_520_CI\":123,\"UTF16_VIETNAMESE_CI\":124,\"UCS2_UNICODE_CI\":128,\"UCS2_ICELANDIC_CI\":129,\"UCS2_LATVIAN_CI\":130,\"UCS2_ROMANIAN_CI\":131,\"UCS2_SLOVENIAN_CI\":132,\"UCS2_POLISH_CI\":133,\"UCS2_ESTONIAN_CI\":134,\"UCS2_SPANISH_CI\":135,\"UCS2_SWEDISH_CI\":136,\"UCS2_TURKISH_CI\":137,\"UCS2_CZECH_CI\":138,\"UCS2_DANISH_CI\":139,\"UCS2_LITHUANIAN_CI\":140,\"UCS2_SLOVAK_CI\":141,\"UCS2_SPANISH2_CI\":142,\"UCS2_ROMAN_CI\":143,\"UCS2_PERSIAN_CI\":144,\"UCS2_ESPERANTO_CI\":145,\"UCS2_HUNGARIAN_CI\":146,\"UCS2_SINHALA_CI\":147,\"UCS2_GERMAN2_CI\":148,\"UCS2_CROATIAN_CI\":149,\"UCS2_UNICODE_520_CI\":150,\"UCS2_VIETNAMESE_CI\":151,\"UCS2_GENERAL_MYSQL500_CI\":159,\"UTF32_UNICODE_CI\":160,\"UTF32_ICELANDIC_CI\":161,\"UTF32_LATVIAN_CI\":162,\"UTF32_ROMANIAN_CI\":163,\"UTF32_SLOVENIAN_CI\":164,\"UTF32_POLISH_CI\":165,\"UTF32_ESTONIAN_CI\":166,\"UTF32_SPANISH_CI\":167,\"UTF32_SWEDISH_CI\":168,\"UTF32_TURKISH_CI\":169,\"UTF32_CZECH_CI\":170,\"UTF32_DANISH_CI\":171,\"UTF32_LITHUANIAN_CI\":172,\"UTF32_SLOVAK_CI\":173,\"UTF32_SPANISH2_CI\":174,\"UTF32_ROMAN_CI\":175,\"UTF32_PERSIAN_CI\":176,\"UTF32_ESPERANTO_CI\":177,\"UTF32_HUNGARIAN_CI\":178,\"UTF32_SINHALA_CI\":179,\"UTF32_GERMAN2_CI\":180,\"UTF32_CROATIAN_CI\":181,\"UTF32_UNICODE_520_CI\":182,\"UTF32_VIETNAMESE_CI\":183,\"UTF8_UNICODE_CI\":192,\"UTF8_ICELANDIC_CI\":193,\"UTF8_LATVIAN_CI\":194,\"UTF8_ROMANIAN_CI\":195,\"UTF8_SLOVENIAN_CI\":196,\"UTF8_POLISH_CI\":197,\"UTF8_ESTONIAN_CI\":198,\"UTF8_SPANISH_CI\":199,\"UTF8_SWEDISH_CI\":200,\"UTF8_TURKISH_CI\":201,\"UTF8_CZECH_CI\":202,\"UTF8_DANISH_CI\":203,\"UTF8_LITHUANIAN_CI\":204,\"UTF8_SLOVAK_CI\":205,\"UTF8_SPANISH2_CI\":206,\"UTF8_ROMAN_CI\":207,\"UTF8_PERSIAN_CI\":208,\"UTF8_ESPERANTO_CI\":209,\"UTF8_HUNGARIAN_CI\":210,\"UTF8_SINHALA_CI\":211,\"UTF8_GERMAN2_CI\":212,\"UTF8_CROATIAN_CI\":213,\"UTF8_UNICODE_520_CI\":214,\"UTF8_VIETNAMESE_CI\":215,\"UTF8_GENERAL_MYSQL500_CI\":223,\"UTF8MB4_UNICODE_CI\":224,\"UTF8MB4_ICELANDIC_CI\":225,\"UTF8MB4_LATVIAN_CI\":226,\"UTF8MB4_ROMANIAN_CI\":227,\"UTF8MB4_SLOVENIAN_CI\":228,\"UTF8MB4_POLISH_CI\":229,\"UTF8MB4_ESTONIAN_CI\":230,\"UTF8MB4_SPANISH_CI\":231,\"UTF8MB4_SWEDISH_CI\":232,\"UTF8MB4_TURKISH_CI\":233,\"UTF8MB4_CZECH_CI\":234,\"UTF8MB4_DANISH_CI\":235,\"UTF8MB4_LITHUANIAN_CI\":236,\"UTF8MB4_SLOVAK_CI\":237,\"UTF8MB4_SPANISH2_CI\":238,\"UTF8MB4_ROMAN_CI\":239,\"UTF8MB4_PERSIAN_CI\":240,\"UTF8MB4_ESPERANTO_CI\":241,\"UTF8MB4_HUNGARIAN_CI\":242,\"UTF8MB4_SINHALA_CI\":243,\"UTF8MB4_GERMAN2_CI\":244,\"UTF8MB4_CROATIAN_CI\":245,\"UTF8MB4_UNICODE_520_CI\":246,\"UTF8MB4_VIETNAMESE_CI\":247,\"GB18030_CHINESE_CI\":248,\"GB18030_BIN\":249,\"GB18030_UNICODE_520_CI\":250,\"UTF8_GENERAL50_CI\":253,\"UTF8MB4_0900_AI_CI\":255,\"UTF8MB4_CS_0900_AI_CI\":266,\"UTF8MB4_DA_0900_AI_CI\":267,\"UTF8MB4_DE_PB_0900_AI_CI\":256,\"UTF8MB4_EO_0900_AI_CI\":273,\"UTF8MB4_ES_0900_AI_CI\":263,\"UTF8MB4_ES_TRAD_0900_AI_CI\":270,\"UTF8MB4_ET_0900_AI_CI\":262,\"UTF8MB4_HR_0900_AI_CI\":275,\"UTF8MB4_HU_0900_AI_CI\":274,\"UTF8MB4_IS_0900_AI_CI\":257,\"UTF8MB4_LA_0900_AI_CI\":271,\"UTF8MB4_LT_0900_AI_CI\":268,\"UTF8MB4_LV_0900_AI_CI\":258,\"UTF8MB4_PL_0900_AI_CI\":261,\"UTF8MB4_RO_0900_AI_CI\":259,\"UTF8MB4_SK_0900_AI_CI\":269,\"UTF8MB4_SL_0900_AI_CI\":260,\"UTF8MB4_SV_0900_AI_CI\":264,\"UTF8MB4_TR_0900_AI_CI\":265,\"UTF8MB4_VI_0900_AI_CI\":277,\"BIG5\":1,\"DEC8\":3,\"CP850\":4,\"HP8\":6,\"KOI8R\":7,\"LATIN1\":8,\"LATIN2\":9,\"SWE7\":10,\"ASCII\":11,\"UJIS\":12,\"SJIS\":13,\"HEBREW\":16,\"TIS620\":18,\"EUCKR\":19,\"KOI8U\":22,\"GB2312\":24,\"GREEK\":25,\"CP1250\":26,\"GBK\":28,\"LATIN5\":30,\"ARMSCII8\":32,\"UTF8\":33,\"UCS2\":35,\"CP866\":36,\"KEYBCS2\":37,\"MACCE\":38,\"MACROMAN\":39,\"CP852\":40,\"LATIN7\":41,\"UTF8MB4\":45,\"CP1251\":51,\"UTF16\":54,\"UTF16LE\":56,\"CP1256\":57,\"CP1257\":59,\"UTF32\":60,\"CP932\":95,\"EUCJPMS\":97,\"GB18030\":248,\"GEOSTD8\":92},\"CharsetToEncoding\":[\"utf8\",\"big5\",\"latin2\",\"dec8\",\"cp850\",\"latin1\",\"hp8\",\"koi8r\",\"latin1\",\"latin2\",\"swe7\",\"ascii\",\"eucjp\",\"sjis\",\"cp1251\",\"latin1\",\"hebrew\",\"utf8\",\"tis620\",\"euckr\",\"latin7\",\"latin2\",\"koi8u\",\"cp1251\",\"gb2312\",\"greek\",\"cp1250\",\"latin2\",\"gbk\",\"cp1257\",\"latin5\",\"latin1\",\"armscii8\",\"cesu8\",\"cp1250\",\"ucs2\",\"cp866\",\"keybcs2\",\"macintosh\",\"macroman\",\"cp852\",\"latin7\",\"latin7\",\"macintosh\",\"cp1250\",\"utf8\",\"utf8\",\"latin1\",\"latin1\",\"latin1\",\"cp1251\",\"cp1251\",\"cp1251\",\"macroman\",\"utf16\",\"utf16\",\"utf16-le\",\"cp1256\",\"cp1257\",\"cp1257\",\"utf32\",\"utf32\",\"utf16-le\",\"binary\",\"armscii8\",\"ascii\",\"cp1250\",\"cp1256\",\"cp866\",\"dec8\",\"greek\",\"hebrew\",\"hp8\",\"keybcs2\",\"koi8r\",\"koi8u\",\"cesu8\",\"latin2\",\"latin5\",\"latin7\",\"cp850\",\"cp852\",\"swe7\",\"cesu8\",\"big5\",\"euckr\",\"gb2312\",\"gbk\",\"sjis\",\"tis620\",\"ucs2\",\"eucjp\",\"geostd8\",\"geostd8\",\"latin1\",\"cp932\",\"cp932\",\"eucjpms\",\"eucjpms\",\"cp1250\",\"utf8\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf8\",\"utf8\",\"utf8\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"ucs2\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"cesu8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"gb18030\",\"gb18030\",\"gb18030\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\"]}},\"QueryGenerator\":{\"dialect\":\"mysql\",\"OperatorMap\":{},\"_templateSettings\":{\"escape\":{},\"evaluate\":{},\"interpolate\":{},\"variable\":\"\",\"imports\":{}},\"options\":\"~transaction~sequelize~options\",\"OperatorsAliasMap\":false,\"_dialect\":\"~transaction~sequelize~dialect\",\"sequelize\":\"~transaction~sequelize\"}},\"queryInterface\":{\"sequelize\":\"~transaction~sequelize\",\"QueryGenerator\":\"~transaction~sequelize~dialect~QueryGenerator\"},\"models\":{},\"modelManager\":{\"models\":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],\"sequelize\":\"~transaction~sequelize\"},\"connectionManager\":\"~transaction~sequelize~dialect~connectionManager\",\"importCache\":{},\"test\":{\"_trackRunningQueries\":false,\"_runningQueries\":0}},\"savepoints\":[],\"_afterCommitHooks\":[],\"options\":{\"autocommit\":null,\"type\":\"DEFERRED\",\"isolationLevel\":null,\"readOnly\":false},\"id\":\"f7578968-e68e-4e8d-92e2-5ad92522aa70\",\"connection\":{\"_events\":{},\"_eventsCount\":1,\"config\":{\"host\":\"127.0.0.1\",\"port\":3306,\"user\":\"root\",\"database\":\"interview_buddy\",\"connectTimeout\":10000,\"insecureAuth\":false,\"supportBigNumbers\":true,\"bigNumberStrings\":false,\"decimalNumbers\":false,\"dateStrings\":false,\"trace\":true,\"stringifyObjects\":false,\"timezone\":\"+00:00\",\"ssl\":false,\"multipleStatements\":false,\"rowsAsArray\":false,\"namedPlaceholders\":false,\"maxPacketSize\":0,\"charsetNumber\":224,\"compress\":false,\"clientFlags\":8582093,\"maxPreparedStatements\":16000},\"stream\":{\"connecting\":false,\"_hadError\":false,\"_handle\":{\"reading\":true,\"onconnection\":null},\"_parent\":null,\"_host\":null,\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"buffer\":{\"head\":null,\"tail\":null,\"length\":0},\"length\":0,\"pipes\":null,\"pipesCount\":0,\"flowing\":true,\"ended\":false,\"endEmitted\":false,\"reading\":true,\"sync\":false,\"needReadable\":true,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"paused\":false,\"emitClose\":false,\"autoDestroy\":false,\"destroyed\":false,\"defaultEncoding\":\"utf8\",\"awaitDrain\":0,\"readingMore\":false,\"decoder\":null,\"encoding\":null},\"readable\":true,\"_events\":{},\"_eventsCount\":4,\"_writableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"finalCalled\":false,\"needDrain\":false,\"ending\":false,\"ended\":false,\"finished\":false,\"destroyed\":false,\"decodeStrings\":false,\"defaultEncoding\":\"utf8\",\"length\":0,\"writing\":false,\"corked\":0,\"sync\":false,\"bufferProcessing\":false,\"writecb\":null,\"writelen\":0,\"bufferedRequest\":null,\"lastBufferedRequest\":null,\"pendingcb\":0,\"prefinished\":false,\"errorEmitted\":false,\"emitClose\":false,\"autoDestroy\":false,\"bufferedRequestCount\":0,\"corkedRequestsFree\":{\"next\":null,\"entry\":null}},\"writable\":true,\"allowHalfOpen\":false,\"_sockname\":null,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"server\":null,\"_server\":null},\"_internalId\":17,\"_commands\":{\"_head\":0,\"_tail\":0,\"_capacityMask\":3,\"_list\":[null,null,null,null]},\"_paused\":false,\"_paused_packets\":{\"_head\":0,\"_tail\":0,\"_capacityMask\":3,\"_list\":[null,null,null,null]},\"_statements\":{},\"serverCapabilityFlags\":2688546815,\"authorized\":true,\"sequenceId\":2,\"compressedSequenceId\":0,\"threadId\":1588,\"_handshakePacket\":{\"protocolVersion\":10,\"serverVersion\":\"5.5.5-10.1.37-MariaDB\",\"capabilityFlags\":2688546815,\"connectionId\":1588,\"authPluginData1\":{\"type\":\"Buffer\",\"data\":[104,34,109,35,95,56,56,82]},\"authPluginData2\":{\"type\":\"Buffer\",\"data\":[114,104,53,107,64,58,67,34,126,117,82,118]},\"characterSet\":8,\"statusFlags\":2},\"_fatalError\":null,\"_protocolError\":null,\"_outOfOrderPackets\":[],\"clientEncoding\":\"utf8\",\"packetParser\":{\"buffer\":[],\"bufferLength\":0,\"packetHeaderLength\":4,\"headerLen\":0,\"length\":7,\"largePacketParts\":[],\"firstPacketSequenceId\":0},\"serverEncoding\":\"latin1\",\"connectTimeout\":null,\"connectionId\":1588,\"uuid\":\"f7578968-e68e-4e8d-92e2-5ad92522aa70\"}},\"fields\":[\"id\",\"interviewId\",\"questionId\",\"createdAt\",\"updatedAt\"],\"auth\":3}', '[8]', 3, '2019-02-12 13:44:12', '2019-02-12 13:44:12');
INSERT INTO `logs` (`id`, `tableName`, `action`, `remarks`, `respectiveId`, `userId`, `createdAt`, `updatedAt`) VALUES
(25, 'interview_users', 'insert', '{\"validate\":false,\"hooks\":true,\"individualHooks\":false,\"ignoreDuplicates\":false,\"transaction\":{\"sequelize\":{\"options\":{\"dialect\":\"mysql\",\"dialectModulePath\":null,\"host\":\"127.0.0.1\",\"protocol\":\"tcp\",\"define\":{},\"query\":{},\"sync\":{},\"timezone\":\"+00:00\",\"omitNull\":false,\"native\":false,\"replication\":false,\"pool\":{},\"quoteIdentifiers\":true,\"hooks\":{\"afterCreate\":[null],\"afterUpdate\":[null],\"afterBulkUpdate\":[null],\"afterBulkCreate\":[null]},\"retry\":{\"max\":5,\"match\":[\"SQLITE_BUSY: database is locked\"]},\"transactionType\":\"DEFERRED\",\"isolationLevel\":null,\"databaseVersion\":\"10.1.37-MariaDB\",\"typeValidation\":false,\"benchmark\":false,\"operatorsAliases\":false,\"username\":\"root\",\"password\":null,\"database\":\"interview_buddy\"},\"config\":{\"database\":\"interview_buddy\",\"username\":\"root\",\"password\":null,\"host\":\"127.0.0.1\",\"port\":3306,\"pool\":\"~transaction~sequelize~options~pool\",\"protocol\":\"tcp\",\"native\":false,\"replication\":false,\"dialectModulePath\":null},\"dialect\":{\"sequelize\":\"~transaction~sequelize\",\"connectionManager\":{\"sequelize\":\"~transaction~sequelize\",\"config\":{\"database\":\"interview_buddy\",\"username\":\"root\",\"password\":null,\"host\":\"127.0.0.1\",\"pool\":{\"max\":5,\"min\":0,\"idle\":10000,\"acquire\":10000,\"evict\":10000,\"handleDisconnects\":true},\"protocol\":\"tcp\",\"native\":false,\"replication\":false,\"dialectModulePath\":null},\"dialect\":\"~transaction~sequelize~dialect\",\"versionPromise\":null,\"dialectName\":\"mysql\",\"pool\":{\"_events\":{},\"_eventsCount\":0,\"_config\":{\"fifo\":true,\"priorityRange\":1,\"testOnBorrow\":true,\"testOnReturn\":false,\"autostart\":false,\"acquireTimeoutMillis\":10000,\"max\":5,\"min\":0,\"evictionRunIntervalMillis\":10000,\"numTestsPerEvictionRun\":3,\"softIdleTimeoutMillis\":-1,\"idleTimeoutMillis\":10000},\"_factory\":{},\"_draining\":false,\"_started\":true,\"_waitingClientsQueue\":{\"_size\":1,\"_slots\":[{\"_list\":{\"head\":null,\"tail\":null,\"length\":0}}]},\"_factoryCreateOperations\":{},\"_factoryDestroyOperations\":{},\"_availableObjects\":{\"_list\":{\"head\":null,\"tail\":null,\"length\":0}},\"_testOnBorrowResources\":{},\"_testOnReturnResources\":{},\"_validationOperations\":{},\"_allObjects\":{},\"_resourceLoans\":{},\"_evictionIterator\":{\"_list\":\"~transaction~sequelize~dialect~connectionManager~pool~_availableObjects~_list\",\"_direction\":\"next\",\"_startPosition\":\"head\",\"_started\":false,\"_cursor\":null,\"_done\":false},\"_evictor\":{},\"_scheduledEviction\":{\"_idleTimeout\":10000,\"_idlePrev\":{\"_idleNext\":\"~transaction~sequelize~dialect~connectionManager~pool~_scheduledEviction\",\"_idlePrev\":\"~transaction~sequelize~dialect~connectionManager~pool~_scheduledEviction\",\"expiry\":630357,\"id\":-9007199254740833,\"msecs\":10000,\"priorityQueuePosition\":3},\"_idleNext\":\"~transaction~sequelize~dialect~connectionManager~pool~_scheduledEviction~_idlePrev\",\"_idleStart\":620357,\"_repeat\":null,\"_destroyed\":false}},\"lib\":{\"Types\":{\"DECIMAL\":0,\"TINY\":1,\"SHORT\":2,\"LONG\":3,\"FLOAT\":4,\"DOUBLE\":5,\"NULL\":6,\"TIMESTAMP\":7,\"LONGLONG\":8,\"INT24\":9,\"DATE\":10,\"TIME\":11,\"DATETIME\":12,\"YEAR\":13,\"NEWDATE\":14,\"VARCHAR\":15,\"BIT\":16,\"JSON\":245,\"NEWDECIMAL\":246,\"ENUM\":247,\"SET\":248,\"TINY_BLOB\":249,\"MEDIUM_BLOB\":250,\"LONG_BLOB\":251,\"BLOB\":252,\"VAR_STRING\":253,\"STRING\":254,\"GEOMETRY\":255},\"Charsets\":{\"BIG5_CHINESE_CI\":1,\"LATIN2_CZECH_CS\":2,\"DEC8_SWEDISH_CI\":3,\"CP850_GENERAL_CI\":4,\"LATIN1_GERMAN1_CI\":5,\"HP8_ENGLISH_CI\":6,\"KOI8R_GENERAL_CI\":7,\"LATIN1_SWEDISH_CI\":8,\"LATIN2_GENERAL_CI\":9,\"SWE7_SWEDISH_CI\":10,\"ASCII_GENERAL_CI\":11,\"UJIS_JAPANESE_CI\":12,\"SJIS_JAPANESE_CI\":13,\"CP1251_BULGARIAN_CI\":14,\"LATIN1_DANISH_CI\":15,\"HEBREW_GENERAL_CI\":16,\"TIS620_THAI_CI\":18,\"EUCKR_KOREAN_CI\":19,\"LATIN7_ESTONIAN_CS\":20,\"LATIN2_HUNGARIAN_CI\":21,\"KOI8U_GENERAL_CI\":22,\"CP1251_UKRAINIAN_CI\":23,\"GB2312_CHINESE_CI\":24,\"GREEK_GENERAL_CI\":25,\"CP1250_GENERAL_CI\":26,\"LATIN2_CROATIAN_CI\":27,\"GBK_CHINESE_CI\":28,\"CP1257_LITHUANIAN_CI\":29,\"LATIN5_TURKISH_CI\":30,\"LATIN1_GERMAN2_CI\":31,\"ARMSCII8_GENERAL_CI\":32,\"UTF8_GENERAL_CI\":33,\"CP1250_CZECH_CS\":34,\"UCS2_GENERAL_CI\":35,\"CP866_GENERAL_CI\":36,\"KEYBCS2_GENERAL_CI\":37,\"MACCE_GENERAL_CI\":38,\"MACROMAN_GENERAL_CI\":39,\"CP852_GENERAL_CI\":40,\"LATIN7_GENERAL_CI\":41,\"LATIN7_GENERAL_CS\":42,\"MACCE_BIN\":43,\"CP1250_CROATIAN_CI\":44,\"UTF8MB4_GENERAL_CI\":45,\"UTF8MB4_BIN\":46,\"LATIN1_BIN\":47,\"LATIN1_GENERAL_CI\":48,\"LATIN1_GENERAL_CS\":49,\"CP1251_BIN\":50,\"CP1251_GENERAL_CI\":51,\"CP1251_GENERAL_CS\":52,\"MACROMAN_BIN\":53,\"UTF16_GENERAL_CI\":54,\"UTF16_BIN\":55,\"UTF16LE_GENERAL_CI\":56,\"CP1256_GENERAL_CI\":57,\"CP1257_BIN\":58,\"CP1257_GENERAL_CI\":59,\"UTF32_GENERAL_CI\":60,\"UTF32_BIN\":61,\"UTF16LE_BIN\":62,\"BINARY\":63,\"ARMSCII8_BIN\":64,\"ASCII_BIN\":65,\"CP1250_BIN\":66,\"CP1256_BIN\":67,\"CP866_BIN\":68,\"DEC8_BIN\":69,\"GREEK_BIN\":70,\"HEBREW_BIN\":71,\"HP8_BIN\":72,\"KEYBCS2_BIN\":73,\"KOI8R_BIN\":74,\"KOI8U_BIN\":75,\"UTF8_TOLOWER_CI\":76,\"LATIN2_BIN\":77,\"LATIN5_BIN\":78,\"LATIN7_BIN\":79,\"CP850_BIN\":80,\"CP852_BIN\":81,\"SWE7_BIN\":82,\"UTF8_BIN\":83,\"BIG5_BIN\":84,\"EUCKR_BIN\":85,\"GB2312_BIN\":86,\"GBK_BIN\":87,\"SJIS_BIN\":88,\"TIS620_BIN\":89,\"UCS2_BIN\":90,\"UJIS_BIN\":91,\"GEOSTD8_GENERAL_CI\":92,\"GEOSTD8_BIN\":93,\"LATIN1_SPANISH_CI\":94,\"CP932_JAPANESE_CI\":95,\"CP932_BIN\":96,\"EUCJPMS_JAPANESE_CI\":97,\"EUCJPMS_BIN\":98,\"CP1250_POLISH_CI\":99,\"UTF16_UNICODE_CI\":101,\"UTF16_ICELANDIC_CI\":102,\"UTF16_LATVIAN_CI\":103,\"UTF16_ROMANIAN_CI\":104,\"UTF16_SLOVENIAN_CI\":105,\"UTF16_POLISH_CI\":106,\"UTF16_ESTONIAN_CI\":107,\"UTF16_SPANISH_CI\":108,\"UTF16_SWEDISH_CI\":109,\"UTF16_TURKISH_CI\":110,\"UTF16_CZECH_CI\":111,\"UTF16_DANISH_CI\":112,\"UTF16_LITHUANIAN_CI\":113,\"UTF16_SLOVAK_CI\":114,\"UTF16_SPANISH2_CI\":115,\"UTF16_ROMAN_CI\":116,\"UTF16_PERSIAN_CI\":117,\"UTF16_ESPERANTO_CI\":118,\"UTF16_HUNGARIAN_CI\":119,\"UTF16_SINHALA_CI\":120,\"UTF16_GERMAN2_CI\":121,\"UTF16_CROATIAN_CI\":122,\"UTF16_UNICODE_520_CI\":123,\"UTF16_VIETNAMESE_CI\":124,\"UCS2_UNICODE_CI\":128,\"UCS2_ICELANDIC_CI\":129,\"UCS2_LATVIAN_CI\":130,\"UCS2_ROMANIAN_CI\":131,\"UCS2_SLOVENIAN_CI\":132,\"UCS2_POLISH_CI\":133,\"UCS2_ESTONIAN_CI\":134,\"UCS2_SPANISH_CI\":135,\"UCS2_SWEDISH_CI\":136,\"UCS2_TURKISH_CI\":137,\"UCS2_CZECH_CI\":138,\"UCS2_DANISH_CI\":139,\"UCS2_LITHUANIAN_CI\":140,\"UCS2_SLOVAK_CI\":141,\"UCS2_SPANISH2_CI\":142,\"UCS2_ROMAN_CI\":143,\"UCS2_PERSIAN_CI\":144,\"UCS2_ESPERANTO_CI\":145,\"UCS2_HUNGARIAN_CI\":146,\"UCS2_SINHALA_CI\":147,\"UCS2_GERMAN2_CI\":148,\"UCS2_CROATIAN_CI\":149,\"UCS2_UNICODE_520_CI\":150,\"UCS2_VIETNAMESE_CI\":151,\"UCS2_GENERAL_MYSQL500_CI\":159,\"UTF32_UNICODE_CI\":160,\"UTF32_ICELANDIC_CI\":161,\"UTF32_LATVIAN_CI\":162,\"UTF32_ROMANIAN_CI\":163,\"UTF32_SLOVENIAN_CI\":164,\"UTF32_POLISH_CI\":165,\"UTF32_ESTONIAN_CI\":166,\"UTF32_SPANISH_CI\":167,\"UTF32_SWEDISH_CI\":168,\"UTF32_TURKISH_CI\":169,\"UTF32_CZECH_CI\":170,\"UTF32_DANISH_CI\":171,\"UTF32_LITHUANIAN_CI\":172,\"UTF32_SLOVAK_CI\":173,\"UTF32_SPANISH2_CI\":174,\"UTF32_ROMAN_CI\":175,\"UTF32_PERSIAN_CI\":176,\"UTF32_ESPERANTO_CI\":177,\"UTF32_HUNGARIAN_CI\":178,\"UTF32_SINHALA_CI\":179,\"UTF32_GERMAN2_CI\":180,\"UTF32_CROATIAN_CI\":181,\"UTF32_UNICODE_520_CI\":182,\"UTF32_VIETNAMESE_CI\":183,\"UTF8_UNICODE_CI\":192,\"UTF8_ICELANDIC_CI\":193,\"UTF8_LATVIAN_CI\":194,\"UTF8_ROMANIAN_CI\":195,\"UTF8_SLOVENIAN_CI\":196,\"UTF8_POLISH_CI\":197,\"UTF8_ESTONIAN_CI\":198,\"UTF8_SPANISH_CI\":199,\"UTF8_SWEDISH_CI\":200,\"UTF8_TURKISH_CI\":201,\"UTF8_CZECH_CI\":202,\"UTF8_DANISH_CI\":203,\"UTF8_LITHUANIAN_CI\":204,\"UTF8_SLOVAK_CI\":205,\"UTF8_SPANISH2_CI\":206,\"UTF8_ROMAN_CI\":207,\"UTF8_PERSIAN_CI\":208,\"UTF8_ESPERANTO_CI\":209,\"UTF8_HUNGARIAN_CI\":210,\"UTF8_SINHALA_CI\":211,\"UTF8_GERMAN2_CI\":212,\"UTF8_CROATIAN_CI\":213,\"UTF8_UNICODE_520_CI\":214,\"UTF8_VIETNAMESE_CI\":215,\"UTF8_GENERAL_MYSQL500_CI\":223,\"UTF8MB4_UNICODE_CI\":224,\"UTF8MB4_ICELANDIC_CI\":225,\"UTF8MB4_LATVIAN_CI\":226,\"UTF8MB4_ROMANIAN_CI\":227,\"UTF8MB4_SLOVENIAN_CI\":228,\"UTF8MB4_POLISH_CI\":229,\"UTF8MB4_ESTONIAN_CI\":230,\"UTF8MB4_SPANISH_CI\":231,\"UTF8MB4_SWEDISH_CI\":232,\"UTF8MB4_TURKISH_CI\":233,\"UTF8MB4_CZECH_CI\":234,\"UTF8MB4_DANISH_CI\":235,\"UTF8MB4_LITHUANIAN_CI\":236,\"UTF8MB4_SLOVAK_CI\":237,\"UTF8MB4_SPANISH2_CI\":238,\"UTF8MB4_ROMAN_CI\":239,\"UTF8MB4_PERSIAN_CI\":240,\"UTF8MB4_ESPERANTO_CI\":241,\"UTF8MB4_HUNGARIAN_CI\":242,\"UTF8MB4_SINHALA_CI\":243,\"UTF8MB4_GERMAN2_CI\":244,\"UTF8MB4_CROATIAN_CI\":245,\"UTF8MB4_UNICODE_520_CI\":246,\"UTF8MB4_VIETNAMESE_CI\":247,\"GB18030_CHINESE_CI\":248,\"GB18030_BIN\":249,\"GB18030_UNICODE_520_CI\":250,\"UTF8_GENERAL50_CI\":253,\"UTF8MB4_0900_AI_CI\":255,\"UTF8MB4_CS_0900_AI_CI\":266,\"UTF8MB4_DA_0900_AI_CI\":267,\"UTF8MB4_DE_PB_0900_AI_CI\":256,\"UTF8MB4_EO_0900_AI_CI\":273,\"UTF8MB4_ES_0900_AI_CI\":263,\"UTF8MB4_ES_TRAD_0900_AI_CI\":270,\"UTF8MB4_ET_0900_AI_CI\":262,\"UTF8MB4_HR_0900_AI_CI\":275,\"UTF8MB4_HU_0900_AI_CI\":274,\"UTF8MB4_IS_0900_AI_CI\":257,\"UTF8MB4_LA_0900_AI_CI\":271,\"UTF8MB4_LT_0900_AI_CI\":268,\"UTF8MB4_LV_0900_AI_CI\":258,\"UTF8MB4_PL_0900_AI_CI\":261,\"UTF8MB4_RO_0900_AI_CI\":259,\"UTF8MB4_SK_0900_AI_CI\":269,\"UTF8MB4_SL_0900_AI_CI\":260,\"UTF8MB4_SV_0900_AI_CI\":264,\"UTF8MB4_TR_0900_AI_CI\":265,\"UTF8MB4_VI_0900_AI_CI\":277,\"BIG5\":1,\"DEC8\":3,\"CP850\":4,\"HP8\":6,\"KOI8R\":7,\"LATIN1\":8,\"LATIN2\":9,\"SWE7\":10,\"ASCII\":11,\"UJIS\":12,\"SJIS\":13,\"HEBREW\":16,\"TIS620\":18,\"EUCKR\":19,\"KOI8U\":22,\"GB2312\":24,\"GREEK\":25,\"CP1250\":26,\"GBK\":28,\"LATIN5\":30,\"ARMSCII8\":32,\"UTF8\":33,\"UCS2\":35,\"CP866\":36,\"KEYBCS2\":37,\"MACCE\":38,\"MACROMAN\":39,\"CP852\":40,\"LATIN7\":41,\"UTF8MB4\":45,\"CP1251\":51,\"UTF16\":54,\"UTF16LE\":56,\"CP1256\":57,\"CP1257\":59,\"UTF32\":60,\"CP932\":95,\"EUCJPMS\":97,\"GB18030\":248,\"GEOSTD8\":92},\"CharsetToEncoding\":[\"utf8\",\"big5\",\"latin2\",\"dec8\",\"cp850\",\"latin1\",\"hp8\",\"koi8r\",\"latin1\",\"latin2\",\"swe7\",\"ascii\",\"eucjp\",\"sjis\",\"cp1251\",\"latin1\",\"hebrew\",\"utf8\",\"tis620\",\"euckr\",\"latin7\",\"latin2\",\"koi8u\",\"cp1251\",\"gb2312\",\"greek\",\"cp1250\",\"latin2\",\"gbk\",\"cp1257\",\"latin5\",\"latin1\",\"armscii8\",\"cesu8\",\"cp1250\",\"ucs2\",\"cp866\",\"keybcs2\",\"macintosh\",\"macroman\",\"cp852\",\"latin7\",\"latin7\",\"macintosh\",\"cp1250\",\"utf8\",\"utf8\",\"latin1\",\"latin1\",\"latin1\",\"cp1251\",\"cp1251\",\"cp1251\",\"macroman\",\"utf16\",\"utf16\",\"utf16-le\",\"cp1256\",\"cp1257\",\"cp1257\",\"utf32\",\"utf32\",\"utf16-le\",\"binary\",\"armscii8\",\"ascii\",\"cp1250\",\"cp1256\",\"cp866\",\"dec8\",\"greek\",\"hebrew\",\"hp8\",\"keybcs2\",\"koi8r\",\"koi8u\",\"cesu8\",\"latin2\",\"latin5\",\"latin7\",\"cp850\",\"cp852\",\"swe7\",\"cesu8\",\"big5\",\"euckr\",\"gb2312\",\"gbk\",\"sjis\",\"tis620\",\"ucs2\",\"eucjp\",\"geostd8\",\"geostd8\",\"latin1\",\"cp932\",\"cp932\",\"eucjpms\",\"eucjpms\",\"cp1250\",\"utf8\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf16\",\"utf8\",\"utf8\",\"utf8\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"ucs2\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"ucs2\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf32\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"cesu8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"cesu8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"gb18030\",\"gb18030\",\"gb18030\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\",\"utf8\"]}},\"QueryGenerator\":{\"dialect\":\"mysql\",\"OperatorMap\":{},\"_templateSettings\":{\"escape\":{},\"evaluate\":{},\"interpolate\":{},\"variable\":\"\",\"imports\":{}},\"options\":\"~transaction~sequelize~options\",\"OperatorsAliasMap\":false,\"_dialect\":\"~transaction~sequelize~dialect\",\"sequelize\":\"~transaction~sequelize\"}},\"queryInterface\":{\"sequelize\":\"~transaction~sequelize\",\"QueryGenerator\":\"~transaction~sequelize~dialect~QueryGenerator\"},\"models\":{},\"modelManager\":{\"models\":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],\"sequelize\":\"~transaction~sequelize\"},\"connectionManager\":\"~transaction~sequelize~dialect~connectionManager\",\"importCache\":{},\"test\":{\"_trackRunningQueries\":false,\"_runningQueries\":0}},\"savepoints\":[],\"_afterCommitHooks\":[],\"options\":{\"autocommit\":null,\"type\":\"DEFERRED\",\"isolationLevel\":null,\"readOnly\":false},\"id\":\"2c6a75c9-f0b1-4390-aa5e-8d08368833a0\",\"connection\":{\"_events\":{},\"_eventsCount\":1,\"config\":{\"host\":\"127.0.0.1\",\"port\":3306,\"user\":\"root\",\"database\":\"interview_buddy\",\"connectTimeout\":10000,\"insecureAuth\":false,\"supportBigNumbers\":true,\"bigNumberStrings\":false,\"decimalNumbers\":false,\"dateStrings\":false,\"trace\":true,\"stringifyObjects\":false,\"timezone\":\"+00:00\",\"ssl\":false,\"multipleStatements\":false,\"rowsAsArray\":false,\"namedPlaceholders\":false,\"maxPacketSize\":0,\"charsetNumber\":224,\"compress\":false,\"clientFlags\":8582093,\"maxPreparedStatements\":16000},\"stream\":{\"connecting\":false,\"_hadError\":false,\"_handle\":{\"reading\":true,\"onconnection\":null},\"_parent\":null,\"_host\":null,\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"buffer\":{\"head\":null,\"tail\":null,\"length\":0},\"length\":0,\"pipes\":null,\"pipesCount\":0,\"flowing\":true,\"ended\":false,\"endEmitted\":false,\"reading\":true,\"sync\":false,\"needReadable\":true,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"paused\":false,\"emitClose\":false,\"autoDestroy\":false,\"destroyed\":false,\"defaultEncoding\":\"utf8\",\"awaitDrain\":0,\"readingMore\":false,\"decoder\":null,\"encoding\":null},\"readable\":true,\"_events\":{},\"_eventsCount\":4,\"_writableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"finalCalled\":false,\"needDrain\":false,\"ending\":false,\"ended\":false,\"finished\":false,\"destroyed\":false,\"decodeStrings\":false,\"defaultEncoding\":\"utf8\",\"length\":0,\"writing\":false,\"corked\":0,\"sync\":false,\"bufferProcessing\":false,\"writecb\":null,\"writelen\":0,\"bufferedRequest\":null,\"lastBufferedRequest\":null,\"pendingcb\":0,\"prefinished\":false,\"errorEmitted\":false,\"emitClose\":false,\"autoDestroy\":false,\"bufferedRequestCount\":0,\"corkedRequestsFree\":{\"next\":null,\"entry\":null}},\"writable\":true,\"allowHalfOpen\":false,\"_sockname\":null,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"server\":null,\"_server\":null},\"_internalId\":29,\"_commands\":{\"_head\":0,\"_tail\":0,\"_capacityMask\":3,\"_list\":[null,null,null,null]},\"_paused\":false,\"_paused_packets\":{\"_head\":0,\"_tail\":0,\"_capacityMask\":3,\"_list\":[null,null,null,null]},\"_statements\":{},\"serverCapabilityFlags\":2688546815,\"authorized\":true,\"sequenceId\":2,\"compressedSequenceId\":0,\"threadId\":1604,\"_handshakePacket\":{\"protocolVersion\":10,\"serverVersion\":\"5.5.5-10.1.37-MariaDB\",\"capabilityFlags\":2688546815,\"connectionId\":1604,\"authPluginData1\":{\"type\":\"Buffer\",\"data\":[123,44,99,51,114,101,35,123]},\"authPluginData2\":{\"type\":\"Buffer\",\"data\":[101,103,85,83,37,88,108,55,109,63,52,37]},\"characterSet\":8,\"statusFlags\":2},\"_fatalError\":null,\"_protocolError\":null,\"_outOfOrderPackets\":[],\"clientEncoding\":\"utf8\",\"packetParser\":{\"buffer\":[],\"bufferLength\":0,\"packetHeaderLength\":4,\"headerLen\":0,\"length\":46,\"largePacketParts\":[],\"firstPacketSequenceId\":0},\"serverEncoding\":\"latin1\",\"connectTimeout\":null,\"connectionId\":1604,\"uuid\":\"2c6a75c9-f0b1-4390-aa5e-8d08368833a0\"}},\"fields\":[\"id\",\"interviewId\",\"email\",\"status\",\"link\",\"pin\",\"paymentstatus\",\"createdAt\",\"updatedAt\"],\"auth\":3}', '[66,67,68,69,70,71]', 3, '2019-02-12 13:48:45', '2019-02-12 13:48:45'),
(26, 'interview_users', 'update', '{\"where\":{\"pin\":762,\"email\":\"swathi@gmail.com\"},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"status\",\"updatedAt\"],\"attributes\":{\"status\":\"Verified\",\"updatedAt\":\"2019-02-12T13:49:22.600Z\"},\"auth\":7}', '{\"pin\":762,\"email\":\"swathi@gmail.com\"}', 7, '2019-02-12 13:49:22', '2019-02-12 13:49:22'),
(27, 'interview_users', 'update', '{\"where\":{\"pin\":762,\"email\":\"swathi@gmail.com\"},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"status\",\"updatedAt\"],\"attributes\":{\"status\":\"Submitted\",\"updatedAt\":\"2019-02-12T13:49:37.492Z\"},\"auth\":7}', '{\"pin\":762,\"email\":\"swathi@gmail.com\"}', 7, '2019-02-12 13:49:37', '2019-02-12 13:49:37'),
(28, 'interview_user_questions', 'update', '{\"where\":{\"id\":242},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"uid\",\"answerText\",\"answerLink\",\"status\",\"timeTaken\",\"updatedAt\"],\"attributes\":{\"uid\":\"v-de4a33f5-ea64-4ef2-a20f-2394153e87be\",\"answerText\":\"\",\"answerLink\":\"//www.cameratag.com/assets/v-de4a33f5-ea64-4ef2-a20f-2394153e87be/mp4.mp4\",\"status\":1,\"timeTaken\":\" (58)\",\"updatedAt\":\"2019-02-12T13:50:09.133Z\"},\"auth\":7}', '{\"id\":242}', 7, '2019-02-12 13:50:09', '2019-02-12 13:50:09'),
(29, 'interview_user_questions', 'update', '{\"where\":{\"id\":243},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"uid\",\"answerText\",\"answerLink\",\"status\",\"timeTaken\",\"updatedAt\"],\"attributes\":{\"uid\":\"v-89a1cb63-3abc-4946-aa2e-0c0f3244acf8\",\"answerText\":\"exportingBuddha constituted mandatory? General questions\",\"answerLink\":\"//www.cameratag.com/assets/v-89a1cb63-3abc-4946-aa2e-0c0f3244acf8/mp4.mp4\",\"status\":1,\"timeTaken\":\" (24)\",\"updatedAt\":\"2019-02-12T13:50:26.807Z\"},\"auth\":7}', '{\"id\":243}', 7, '2019-02-12 13:50:26', '2019-02-12 13:50:26'),
(30, 'interview_user_questions', 'update', '{\"where\":{\"id\":244},\"validate\":true,\"hooks\":true,\"individualHooks\":false,\"returning\":false,\"force\":false,\"sideEffects\":true,\"type\":\"BULKUPDATE\",\"fields\":[\"uid\",\"answerText\",\"answerLink\",\"status\",\"timeTaken\",\"updatedAt\"],\"attributes\":{\"uid\":\"v-7c640a3e-7370-4c4c-b7ab-e731b4cd0fb4\",\"answerText\":\"\",\"answerLink\":\"//www.cameratag.com/assets/v-7c640a3e-7370-4c4c-b7ab-e731b4cd0fb4/mp4.mp4\",\"status\":1,\"timeTaken\":\" (0)\",\"updatedAt\":\"2019-02-12T13:55:13.344Z\"},\"auth\":7}', '{\"id\":244}', 7, '2019-02-12 13:55:13', '2019-02-12 13:55:13');

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

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`id`, `name`, `type`, `url`, `email`, `createdAt`, `updatedAt`) VALUES
(1, 'Gitam', 'corporate', 'www.gitam.org', 'sudheerkumar121@gmail.com', '2019-02-07 05:55:35', '2019-02-09 05:42:52');

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

--
-- Dumping data for table `organization_campus`
--

INSERT INTO `organization_campus` (`id`, `branchName`, `organizationId`, `address`, `city`, `pincode`, `url`, `contactPerson`, `contactPersonEmail`, `contactPersonPhone`, `contactPersonDesgination`, `createdAt`, `updatedAt`, `status`) VALUES
(1, 'ANiTS', 1, 'Vizag', 'Vizag', '530002', 'www.anits.org', 'chandu', 'tchandu@schemaxtech.com', '9533104848', 'Pricipal', '2019-02-07 05:55:35', '2019-02-09 05:42:52', 'active'),
(2, 'MVGR', 1, 'Vizianagaram', 'vizianagaram', '530000', 'mvgr.org', 'Kalyan', 'kalyan@schemaxtech.com', '8795462310', 'Principal', '2019-02-07 05:55:35', '2019-02-09 05:42:52', 'active');

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

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer`, `expLevelId`, `difficulty`, `mandatory`, `global`, `domainId`, `subDomainId`, `keywords`, `status`, `organizationId`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, 'Can you tell me a little about your  yourself?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'low', 1, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(2, 'What was your technical and logical experience?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'low', 1, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(3, 'how to make an ajax call using angular js?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'medium', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(4, 'what is service method?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'low', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(5, 'what are angular js expression?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'low', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(6, 'Expalian ng-init directive', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'medium', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(7, 'How to validate data in angular js?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'low', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(8, 'what is angular and why angular?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'low', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(9, 'name the buildindg blocks of angular', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'low', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(10, 'what ois transpling in angular?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'medium', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(11, 'what is view encapsulation?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'high', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(12, 'why java is a plat form independent?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'low', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(13, 'what is jdk?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'low', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(14, 'what is constructors?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'medium', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(15, 'what is polymorphism?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'medium', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(16, 'expalian about interfaces?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'high', 1, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(17, 'what is abstract classes', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'low', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(18, 'what is method over loading', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'low', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(19, 'what is association?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'medium', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(20, 'what is servelets?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'low', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(21, 'explain threads?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'high', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(22, 'What is PEP 8?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'low', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(23, 'What is pickling and unpickling?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'low', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(24, 'How memory is managed in Python?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'high', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(25, 'What are Python decorators?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'low', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(26, 'How Python is interpreted?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'high', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(27, 'What is namespace in Python?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'low', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(28, 'What is lambda in Python?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'high', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(29, 'In Python what are iterators?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'low', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49'),
(30, 'What is unittest in Python?', 'This question seems simple, so many people fail to prepare for it, but it\'s crucial. ', 1, 'low', 0, 1, 1, 1, 'simple,specific accomplishments ,experiences', 'active', NULL, 1, '2019-02-07 10:20:49', '2019-02-07 10:20:49');

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

--
-- Dumping data for table `report_perameters`
--

INSERT INTO `report_perameters` (`id`, `name`, `createdAt`, `updatedAt`, `organizationId`, `status`) VALUES
(1, '0', '2019-01-25 06:46:45', '2019-01-25 06:46:45', 1, 'active'),
(2, 'Communications', '2019-01-25 06:48:45', '2019-02-09 05:55:12', 1, 'active'),
(3, '  ', '2019-02-05 10:22:49', '2019-02-05 10:22:49', 67, 'active'),
(4, 'comm', '2019-02-09 05:55:27', '2019-02-09 05:55:27', 1, 'active');

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

--
-- Dumping data for table `sub_domains`
--

INSERT INTO `sub_domains` (`id`, `domainId`, `subDomainName`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Angular', 'active', '2019-02-07 06:18:02', '2019-02-07 06:18:02'),
(2, 1, 'Python', 'active', '2019-02-07 06:18:02', '2019-02-07 06:18:02'),
(3, 1, 'JAVA', 'active', '2019-02-07 06:18:02', '2019-02-07 06:18:02'),
(4, 2, 'laravel', 'active', '2019-02-09 05:44:09', '2019-02-09 05:44:09');

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
(1, 'Sudheer', 'B', 'Kumar', 'sudheerkumar121@gmail.com', '52916c2191e4ed8842054f7b2b81924b', '9533104866', 'male', 1, 'active', '2019-02-07 13:25:05', '2019-02-07 13:25:05', 1),
(2, 'ravi', 'm', 'teja', 'ravitejamunna111@gmail.com', 'e58cc3fe4b3387c893c8fc9dd43a829a', '8974521110', 'male', NULL, 'active', '2019-02-07 13:26:38', '2019-02-07 13:26:38', 3),
(3, 'chandu', 'm', 'teja', 'tchandu@schemaxtech.com', '591dc55635d26afa8131a2745473f3b5', '8974521110', 'male', 1, 'active', '2019-02-07 13:27:09', '2019-02-07 13:27:09', 4),
(4, 'Kumari', 'm', 'teja', 'suryakumari@schemaxtech.com', '591dc55635d26afa8131a2745473f3b5', '8974521110', 'male', NULL, 'active', '2019-02-07 13:27:38', '2019-02-07 13:27:38', 3),
(5, 'Jyothi', 'm', 'teja', 'jyothianumulapudi@gmail.com ', '12e1bb8ae27fa6b161464387b1bb0ba6', '8974521110', 'male', NULL, 'active', '2019-02-07 13:28:15', '2019-02-07 13:28:15', 3),
(6, 'Madhu', 'm', 'teja', 'santosh.vanjala@schemaxtech.com', '7229008ccfc31360b735a62bddddeed4', '8974521110', 'male', NULL, 'active', '2019-02-07 13:28:48', '2019-02-07 13:28:48', 5),
(7, 'Swathi', 'm', 'teja', 'swathi@gmail.com', '591dc55635d26afa8131a2745473f3b5', '8974521110', 'male', NULL, 'active', '2019-02-07 13:29:16', '2019-02-07 13:29:16', 5),
(8, 'Rajesh', 'kumar', 'Ch', 'rajeshraj@gmail.com', '8d959ed6e0109c03635b45921f9b17d9', '9522154545', 'male', NULL, 'active', '2019-02-08 07:06:45', '2019-02-08 07:06:45', 5),
(9, 'hemanth', 'V', 'varma', 'bhagyalakshmi.technologies@gmail.com', '735fcd196eeefe8b2d21cd2c134d3961', '9959939549', 'male', NULL, 'active', '2019-02-08 07:09:34', '2019-02-08 07:09:34', 5),
(10, 'hemanth', 'V', 'varma', 'bhagyalakshm123i.technologies@gmail.com', '785527c521e4f616b73166b348ce722b', '9959939549', 'male', NULL, 'active', '2019-02-08 07:11:00', '2019-02-08 07:11:00', 5),
(11, 'hemanth', 'V', 'varma', 'bhagyalakshmi.123technologies@gmail.com', 'c47bd80b7e057384d0c02505777bdf7c', '9959939549', 'male', NULL, 'active', '2019-02-08 07:20:22', '2019-02-08 07:20:22', 5),
(12, 'bnb', 'nb', 'nbnb', 'inb@fv.c', 'e17f3d1462aa07698b09333fab9f8c95', '7867jkh', 'male', NULL, 'active', '2019-02-08 07:38:43', '2019-02-08 07:38:43', 5);

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

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `groupName`, `organizationId`, `createdAt`, `updatedAt`) VALUES
(1, 'EEE', 1, '2019-02-07 06:15:44', '2019-02-07 06:15:44'),
(2, 'MECH', 1, '2019-02-07 06:15:55', '2019-02-07 06:15:55'),
(3, 'IT', 1, '2019-02-07 06:16:08', '2019-02-07 06:16:08'),
(4, 'CSE', 1, '2019-02-07 06:16:18', '2019-02-07 06:16:18');

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

--
-- Dumping data for table `user_groups_map`
--

INSERT INTO `user_groups_map` (`id`, `userId`, `groupId`, `createdAt`, `updatedAt`) VALUES
(1, 9, 3, '2019-02-07 07:26:44', '2019-02-07 07:26:44'),
(2, 2, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 2, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 4, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 4, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 6, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
(1, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5ODY2NTU3LCJleHAiOjE1NDk5NTI5NTd9.lOv0p8h78Vft2IkkxYLQcp8kl-_DmitXCzkObZGFrU0', '{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"authorization\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm9yZ2FuaXphdGlvbiI6MTAsInJvbGUiOjEsImlhdCI6MTU0NzAxOTk5MSwiZXhwIjoxNTQ3MTA2MzkxfQ.cQMO2TGZrSUuOeZvQRJCEbJSoHlYjmotktsaL5m8e5A\",\"postman-token\":\"5d24047d-e8fd-09aa-178c-5f18f6f3adc2\",\"cache-control\":\"no-cache\",\"origin\":\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\",\"content-type\":\"application/json\",\"accept\":\"*/*\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\"}', '2019-02-11 06:29:17', '2019-02-11 06:29:17'),
(2, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5ODY3NTQ0LCJleHAiOjE1NDk5NTM5NDR9.nRwLBCoHEVnMavxL60dcKgHc6xiRx6E0mYb-jdJC_r4', '{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\"}', '2019-02-11 06:45:44', '2019-02-11 06:45:44'),
(3, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5ODgxMzU3LCJleHAiOjE1NDk5Njc3NTd9.YdlSB0RbHzZcWhOFoTQrxWob7rPt-kzdU4n71VDlVVg', '{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"authorization\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5ODY3NTQ0LCJleHAiOjE1NDk5NTM5NDR9.nRwLBCoHEVnMavxL60dcKgHc6xiRx6E0mYb-jdJC_r4\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\"}', '2019-02-11 10:35:57', '2019-02-11 10:35:57'),
(4, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTUwMjk5LCJleHAiOjE1NTAwMzY2OTl9.7V2lj0fRRc4DLKvR8h3l2mHCxjyXRfqllYluuymJ0hE', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"authorization\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6bnVsbCwicm9sZSI6Miwicm9sZUxldmVsIjoyLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5ODg2MjUxLCJleHAiOjE1NDk5NzI2NTF9.fxzBQYnf5YD6abzZmO3vbuimAZLFRHwcaajQ49nDFE8\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\"}', '2019-02-12 05:44:59', '2019-02-12 05:44:59'),
(5, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTUwMzc1LCJleHAiOjE1NTAwMzY3NzV9.66sU57Uf8j5yTO_IcBFnEXXKKGPLcCFkRExTxwZeVMA', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"authorization\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6bnVsbCwicm9sZSI6Miwicm9sZUxldmVsIjoyLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5ODY1NDc1LCJleHAiOjE1NDk5NTE4NzV9.ta9TeGYvmowx-KlhVTm5Lp9qzSb2GGklcDlQdxZsn3o\",\"user-agent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-IN,en-GB;q=0.9,en-US;q=0.8,en;q=0.7\"}', '2019-02-12 05:46:15', '2019-02-12 05:46:15'),
(6, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InN1ZGhlZXJrdW1hcjEyMUBnbWFpbC5jb20iLCJpYXQiOjE1NDk5NTAzOTUsImV4cCI6MTU1MDAzNjc5NX0.QiiimZFOO6VpvxGfdPyd4HdcOOoe1iB2lX1WQOqQNsw', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"60\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"authorization\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InN1ZGhlZXJrdW1hcjEyMUBnbWFpbC5jb20iLCJpYXQiOjE1NDk5MDc4MDYsImV4cCI6MTU0OTk5NDIwNn0.2Ltl12M_absCaw9G0rCxYK64YfsUJrBoK1u95zm-9rE\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-GB,en-US;q=0.9,en;q=0.8,te;q=0.7\"}', '2019-02-12 05:46:35', '2019-02-12 05:46:35'),
(7, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTUwNDcwLCJleHAiOjE1NTAwMzY4NzB9.m5ohEfcBvIF_S40kWqhnizmtaLA-U1nkXnBSc2mweAI', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login?returnUrl=%2Fmain%2Fdashboard\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-IN,en-GB;q=0.9,en-US;q=0.8,en;q=0.7\"}', '2019-02-12 05:47:50', '2019-02-12 05:47:50'),
(8, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTUwOTAyLCJleHAiOjE1NTAwMzczMDJ9.M6RitGAPg79bkC9QIaiD3GBJb0Hsg5XG1amv4srTMKg', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"authorization\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6bnVsbCwicm9sZSI6Miwicm9sZUxldmVsIjoyLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5ODkwMjE1LCJleHAiOjE1NDk5NzY2MTV9.d3CxcntlaKqOKyGt8DkjhA2_rWZNSM7HQGXJpgRR-gU\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-GB,en-US;q=0.9,en;q=0.8\"}', '2019-02-12 05:55:02', '2019-02-12 05:55:02'),
(9, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTUxMTUxLCJleHAiOjE1NTAwMzc1NTF9.r8_zOOClvToq9Q5Ylk3ULJV_ni28cV88YyaGUzSN7gk', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login?returnUrl=%2Fmain%2Finterviewtype\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-IN,en-GB;q=0.9,en-US;q=0.8,en;q=0.7\"}', '2019-02-12 05:59:11', '2019-02-12 05:59:11'),
(10, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTUxOTU1LCJleHAiOjE1NTAwMzgzNTV9.waQ9lNyFi5IDs3s0VHMeIzlryKQAo5Su1FA_8ARcQOk', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login?returnUrl=%2Fmain%2Fdashboard\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-IN,en-GB;q=0.9,en-US;q=0.8,en;q=0.7\"}', '2019-02-12 06:12:35', '2019-02-12 06:12:35'),
(11, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTUxOTU1LCJleHAiOjE1NTAwMzgzNTV9.waQ9lNyFi5IDs3s0VHMeIzlryKQAo5Su1FA_8ARcQOk', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login?returnUrl=%2Fmain%2Fdashboard\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-IN,en-GB;q=0.9,en-US;q=0.8,en;q=0.7\"}', '2019-02-12 06:12:35', '2019-02-12 06:12:35'),
(12, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTUxOTU1LCJleHAiOjE1NTAwMzgzNTV9.waQ9lNyFi5IDs3s0VHMeIzlryKQAo5Su1FA_8ARcQOk', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login?returnUrl=%2Fmain%2Fdashboard\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-IN,en-GB;q=0.9,en-US;q=0.8,en;q=0.7\"}', '2019-02-12 06:12:35', '2019-02-12 06:12:35'),
(13, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTUyMDE1LCJleHAiOjE1NTAwMzg0MTV9.1yHTCJtJJzYdD3SDbzxalXCzScK1FrlHN33Sb-JUiLM', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login?returnUrl=%2Fmain%2Freviewskills\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-IN,en-GB;q=0.9,en-US;q=0.8,en;q=0.7\"}', '2019-02-12 06:13:35', '2019-02-12 06:13:35'),
(14, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTUyMTMzLCJleHAiOjE1NTAwMzg1MzN9.KWKDXaof_YA1CjSQOZsvb_XbvNxmwZTP33qCrwoy4fw', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login?returnUrl=%2Fmain%2Fdashboard\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-IN,en-GB;q=0.9,en-US;q=0.8,en;q=0.7\"}', '2019-02-12 06:15:33', '2019-02-12 06:15:33'),
(15, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTU0NjAxLCJleHAiOjE1NTAwNDEwMDF9.rDuI1W60d_FbKO84QtAVjLlVLxs127MlcBDhhCBY1D0', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login?returnUrl=%2Fmain%2Freviewskills\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-IN,en-GB;q=0.9,en-US;q=0.8,en;q=0.7\"}', '2019-02-12 06:56:41', '2019-02-12 06:56:41'),
(16, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InN1ZGhlZXJrdW1hcjEyMUBnbWFpbC5jb20iLCJpYXQiOjE1NDk5NTQ2NjgsImV4cCI6MTU1MDA0MTA2OH0.QypkJLxA5RRmh3MnxAVk9txDF0DAERFYRvJ3SEOXmK8', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"60\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login?returnUrl=%2Fmain%2Fdashboard\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-IN,en-GB;q=0.9,en-US;q=0.8,en;q=0.7\"}', '2019-02-12 06:57:48', '2019-02-12 06:57:48'),
(17, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6MSwicm9sZUxldmVsIjoxLCJlbWFpbCI6InN1ZGhlZXJrdW1hcjEyMUBnbWFpbC5jb20iLCJpYXQiOjE1NDk5NTQ3MTUsImV4cCI6MTU1MDA0MTExNX0.bqLafx5PSy8FLSGr4CHGBprvuOG5Ngz_wCzg5QskpVA', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"60\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login?returnUrl=%2Fmain%2Fdashboard\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-IN,en-GB;q=0.9,en-US;q=0.8,en;q=0.7\"}', '2019-02-12 06:58:35', '2019-02-12 06:58:35'),
(18, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6MSwicm9sZUxldmVsIjoxLCJlbWFpbCI6InN1ZGhlZXJrdW1hcjEyMUBnbWFpbC5jb20iLCJpYXQiOjE1NDk5NTQ4MjMsImV4cCI6MTU1MDA0MTIyM30.B2Stil8XzDuoo41IX6hR_R3p6nu5VGCy5V4MUyQyEEg', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"60\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login?returnUrl=%2Fmain%2Fuserdomainmap\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-GB,en-US;q=0.9,en;q=0.8,te;q=0.7\"}', '2019-02-12 07:00:23', '2019-02-12 07:00:23'),
(19, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTU0ODUxLCJleHAiOjE1NTAwNDEyNTF9.zIjB9bM2XSpGuI8NR9QHxYtQydsJvm7cUkJcNZinQZU', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login?returnUrl=%2Fmain%2Fuserinterview\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-GB,en-US;q=0.9,en;q=0.8,te;q=0.7\"}', '2019-02-12 07:00:51', '2019-02-12 07:00:51'),
(20, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTU1MTI5LCJleHAiOjE1NTAwNDE1Mjl9.Bjl47j3f5LIJ0-ErzdCMRl_YFh1bdc-42M6xd7uf12g', '{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"authorization\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm9yZ2FuaXphdGlvbiI6MTAsInJvbGUiOjEsImlhdCI6MTU0NzAxOTk5MSwiZXhwIjoxNTQ3MTA2MzkxfQ.cQMO2TGZrSUuOeZvQRJCEbJSoHlYjmotktsaL5m8e5A\",\"postman-token\":\"7e4916b2-6b83-6fd6-039b-05203b774d99\",\"cache-control\":\"no-cache\",\"origin\":\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\",\"content-type\":\"application/json\",\"accept\":\"*/*\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\"}', '2019-02-12 07:05:29', '2019-02-12 07:05:29'),
(21, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTY0MTI3LCJleHAiOjE1NTAwNTA1Mjd9.bI16z5bVnr5kHASEP7ghYzmBr369DBkowDC2HLq1jK4', '{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"authorization\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5ODgxMzU3LCJleHAiOjE1NDk5Njc3NTd9.YdlSB0RbHzZcWhOFoTQrxWob7rPt-kzdU4n71VDlVVg\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\"}', '2019-02-12 09:35:27', '2019-02-12 09:35:27'),
(22, 7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm9yZ2FuaXphdGlvbiI6bnVsbCwicm9sZSI6NSwicm9sZUxldmVsIjo0LCJlbWFpbCI6InN3YXRoaUBnbWFpbC5jb20iLCJpYXQiOjE1NDk5NjU4OTcsImV4cCI6MTU1MDA1MjI5N30.7dBIh02xluYKLMZNVaVUYE9Kk_iu65iz4GQ942K9DgM', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"52\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-GB,en-US;q=0.9,en;q=0.8,te;q=0.7\"}', '2019-02-12 10:04:57', '2019-02-12 10:04:57'),
(23, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6MSwicm9sZUxldmVsIjoxLCJlbWFpbCI6InN1ZGhlZXJrdW1hcjEyMUBnbWFpbC5jb20iLCJpYXQiOjE1NDk5NjU5NDAsImV4cCI6MTU1MDA1MjM0MH0.4ovWOFzirAlibvwv-ZnKZPtSfE22eYR7rINzKGdK6Eo', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"60\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login?returnUrl=%2Fmain%2Fusergroup\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-GB,en-US;q=0.9,en;q=0.8\"}', '2019-02-12 10:05:40', '2019-02-12 10:05:40'),
(24, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTY2MzA0LCJleHAiOjE1NTAwNTI3MDR9.qQKKTEJcrU64vW9dXWMsnmIxtsVTYln68TF0XsPp0XM', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-GB,en-US;q=0.9,en;q=0.8\"}', '2019-02-12 10:11:44', '2019-02-12 10:11:44'),
(25, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTY3Mzc3LCJleHAiOjE1NTAwNTM3Nzd9.GWC7o5oN0rTtJ6kWugGcDX9-Q-chU1TtWo16eBmrvmc', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login?returnUrl=%2Fmain%2Forganization\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-IN,en-GB;q=0.9,en-US;q=0.8,en;q=0.7\"}', '2019-02-12 10:29:37', '2019-02-12 10:29:37'),
(26, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTY4NDQwLCJleHAiOjE1NTAwNTQ4NDB9.AyZ4VAHgK0mSDwA1ruzkn7gOTLsDzAn7ilTQzmBaKYI', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-GB,en-US;q=0.9,en;q=0.8\"}', '2019-02-12 10:47:20', '2019-02-12 10:47:20'),
(27, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTY5MTU4LCJleHAiOjE1NTAwNTU1NTh9.gFIS1_DxSSGTb3qNaSPydnIDlCvUBDzE5kEBYwYkUIw', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"authorization\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTY3Mzc3LCJleHAiOjE1NTAwNTM3Nzd9.GWC7o5oN0rTtJ6kWugGcDX9-Q-chU1TtWo16eBmrvmc\",\"user-agent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-IN,en-GB;q=0.9,en-US;q=0.8,en;q=0.7\"}', '2019-02-12 10:59:18', '2019-02-12 10:59:18'),
(28, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTcyOTQ3LCJleHAiOjE1NTAwNTkzNDd9.2ryIHl_DoYbigare0aJsHrMPgkTftXPJLjuBmu9xbsM', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-GB,en-US;q=0.9,en;q=0.8\"}', '2019-02-12 12:02:27', '2019-02-12 12:02:27'),
(29, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTcyOTQ3LCJleHAiOjE1NTAwNTkzNDd9.2ryIHl_DoYbigare0aJsHrMPgkTftXPJLjuBmu9xbsM', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-GB,en-US;q=0.9,en;q=0.8\"}', '2019-02-12 12:02:27', '2019-02-12 12:02:27'),
(30, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6MSwicm9sZUxldmVsIjoxLCJlbWFpbCI6InN1ZGhlZXJrdW1hcjEyMUBnbWFpbC5jb20iLCJpYXQiOjE1NDk5NzMzMzksImV4cCI6MTU1MDA1OTczOX0.pcuty6NGudIYz5YnAyK1MUXFSXJ_rj4nqN9WqKxmsDU', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"60\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-GB,en-US;q=0.9,en;q=0.8\"}', '2019-02-12 12:08:59', '2019-02-12 12:08:59'),
(31, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTczMzcwLCJleHAiOjE1NTAwNTk3NzB9.euDt0HozmKaWetJfNmqtCTs6TPVbfxBjvZ7uovA2d_U', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login?returnUrl=%2Fmain%2Fdashboard\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-GB,en-US;q=0.9,en;q=0.8\"}', '2019-02-12 12:09:30', '2019-02-12 12:09:30'),
(32, 4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQsIm9yZ2FuaXphdGlvbiI6bnVsbCwicm9sZSI6Mywicm9sZUxldmVsIjozLCJlbWFpbCI6InN1cnlha3VtYXJpQHNjaGVtYXh0ZWNoLmNvbSIsImlhdCI6MTU0OTk3MzUwMywiZXhwIjoxNTUwMDU5OTAzfQ.BzVSf0cJVNlPotZuKMgun45rzWG-96Sh3oj9uTgzkXA', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"63\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-GB,en-US;q=0.9,en;q=0.8\"}', '2019-02-12 12:11:43', '2019-02-12 12:11:43'),
(33, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6MSwicm9sZUxldmVsIjoxLCJlbWFpbCI6InN1ZGhlZXJrdW1hcjEyMUBnbWFpbC5jb20iLCJpYXQiOjE1NDk5NzM3OTUsImV4cCI6MTU1MDA2MDE5NX0.7JCb7rDQIDiNM9ISXIESgvdS8_9eML7LM8ho5zDaTBU', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"60\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"authorization\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQsIm9yZ2FuaXphdGlvbiI6bnVsbCwicm9sZSI6Mywicm9sZUxldmVsIjozLCJlbWFpbCI6InN1cnlha3VtYXJpQHNjaGVtYXh0ZWNoLmNvbSIsImlhdCI6MTU0OTk3MzUwMywiZXhwIjoxNTUwMDU5OTAzfQ.BzVSf0cJVNlPotZuKMgun45rzWG-96Sh3oj9uTgzkXA\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-GB,en-US;q=0.9,en;q=0.8\"}', '2019-02-12 12:16:35', '2019-02-12 12:16:35'),
(34, 4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQsIm9yZ2FuaXphdGlvbiI6bnVsbCwicm9sZSI6Mywicm9sZUxldmVsIjozLCJlbWFpbCI6InN1cnlha3VtYXJpQHNjaGVtYXh0ZWNoLmNvbSIsImlhdCI6MTU0OTk3NzQzNywiZXhwIjoxNTUwMDYzODM3fQ.LbNy2n-MKHx7j85KmwrCaaW8L3KAWu-uZWu9X9H3Y0w', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"63\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login?returnUrl=%2Fmain%2Fchequemgmt\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-GB,en-US;q=0.9,en;q=0.8\"}', '2019-02-12 13:17:17', '2019-02-12 13:17:17'),
(35, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTc4OTc0LCJleHAiOjE1NTAwNjUzNzR9.deuFW1bjfGptq_dgFqNHEf_QAQRCcGRMzmTfXouPgC4', '{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"59\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"authorization\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm9yZ2FuaXphdGlvbiI6MSwicm9sZSI6NCwicm9sZUxldmVsIjozLCJlbWFpbCI6InRjaGFuZHVAc2NoZW1heHRlY2guY29tIiwiaWF0IjoxNTQ5OTY0MTI3LCJleHAiOjE1NTAwNTA1Mjd9.bI16z5bVnr5kHASEP7ghYzmBr369DBkowDC2HLq1jK4\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\"}', '2019-02-12 13:42:54', '2019-02-12 13:42:54'),
(36, 7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm9yZ2FuaXphdGlvbiI6bnVsbCwicm9sZSI6NSwicm9sZUxldmVsIjo0LCJlbWFpbCI6InN3YXRoaUBnbWFpbC5jb20iLCJpYXQiOjE1NDk5NzkzNTEsImV4cCI6MTU1MDA2NTc1MX0.RzXuv6NJGFXUIBGd_tjFvt6CuHDuOB1O542wFZ0v5Pg', '{\"host\":\"192.168.0.126:3000\",\"connection\":\"keep-alive\",\"content-length\":\"52\",\"accept\":\"application/json, text/plain, */*\",\"origin\":\"http://localhost:4200\",\"authorization\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm9yZ2FuaXphdGlvbiI6bnVsbCwicm9sZSI6NSwicm9sZUxldmVsIjo0LCJlbWFpbCI6InN3YXRoaUBnbWFpbC5jb20iLCJpYXQiOjE1NDk5NjU4OTcsImV4cCI6MTU1MDA1MjI5N30.7dBIh02xluYKLMZNVaVUYE9Kk_iu65iz4GQ942K9DgM\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\",\"content-type\":\"application/json\",\"referer\":\"http://localhost:4200/login\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-GB,en-US;q=0.9,en;q=0.8,te;q=0.7\"}', '2019-02-12 13:49:11', '2019-02-12 13:49:11');

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

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `userId`, `about`, `adress`, `pincode`, `linkedinId`, `resume`, `createdAt`, `updatedAt`) VALUES
(2, 3, '4+ Years Exp in it as fullstack developer.', '52-11-16/1,Resapuvanipalem', '530013', 'http://linkedin.com', NULL, '2019-02-11 08:03:46', '2019-02-11 08:03:46');

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

--
-- Dumping data for table `user_profile_edu`
--

INSERT INTO `user_profile_edu` (`id`, `userProfileId`, `education`, `university`, `courseFrom`, `courseTo`, `specilization`, `grade`, `createdAt`, `updatedAt`) VALUES
(11, 2, 'B.Tcech', 'AU', 2009, 2013, 'CSE', 'A+', '2019-02-11 08:04:54', '2019-02-11 08:04:54'),
(12, 2, 'M.Tcech', 'AU', 2013, 2015, 'CSE', 'C+', '2019-02-11 08:04:54', '2019-02-11 08:04:54');

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

--
-- Dumping data for table `user_profile_exp`
--

INSERT INTO `user_profile_exp` (`id`, `userProfileId`, `organizationName`, `desgination`, `joinedDate`, `relivedDate`, `createdAt`, `updatedAt`) VALUES
(9, 2, 'Schemax', 'Developer', '2014-04-01', '2016-04-05', '2019-02-12 05:45:48', '2019-02-12 05:45:48'),
(10, 2, 'SchemaY', 'Sr.Developer', '2016-04-06', '0000-00-00', '2019-02-12 05:45:48', '2019-02-12 05:45:48');

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
-- Dumping data for table `user_profile_subdomains`
--

INSERT INTO `user_profile_subdomains` (`id`, `userId`, `userSkills`, `createdAt`, `updatedAt`) VALUES
(1, 4, 1, '2019-02-07 07:02:38', '2019-02-07 07:02:38'),
(2, 4, 2, '2019-02-07 07:02:38', '2019-02-07 07:02:38'),
(3, 5, 1, '2019-02-07 07:02:38', '2019-02-07 07:02:38'),
(4, 5, 2, '2019-02-07 07:02:38', '2019-02-07 07:02:38'),
(5, 5, 3, '2019-02-07 07:02:38', '2019-02-07 07:02:38'),
(6, 6, 3, '2019-02-07 07:02:38', '2019-02-07 07:02:38'),
(9, 9, 2, '2019-02-07 07:26:44', '2019-02-07 07:26:44'),
(10, 9, 3, '2019-02-07 07:26:44', '2019-02-07 07:26:44');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `domain`
--
ALTER TABLE `domain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exp_level`
--
ALTER TABLE `exp_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `interview`
--
ALTER TABLE `interview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `interview_experts`
--
ALTER TABLE `interview_experts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `interview_experts_feedback`
--
ALTER TABLE `interview_experts_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `interview_expert_overall_feedback`
--
ALTER TABLE `interview_expert_overall_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `interview_fixed_questions`
--
ALTER TABLE `interview_fixed_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `interview_user_questions`
--
ALTER TABLE `interview_user_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `organization_campus`
--
ALTER TABLE `organization_campus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `report_perameters`
--
ALTER TABLE `report_perameters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_domains`
--
ALTER TABLE `sub_domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_groups_map`
--
ALTER TABLE `user_groups_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_login_logs`
--
ALTER TABLE `user_login_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_profile_edu`
--
ALTER TABLE `user_profile_edu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_profile_exp`
--
ALTER TABLE `user_profile_exp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_profile_subdomains`
--
ALTER TABLE `user_profile_subdomains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
