-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 09, 2023 at 02:36 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `photoshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(20) NOT NULL,
  `post_id` int(20) NOT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `image` varchar(255) DEFAULT NULL,
  `userid` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `post_id`, `is_deleted`, `created_at`, `updated_at`, `image`, `userid`) VALUES
(1, 139, b'0', '2023-05-05 11:00:12', '2023-05-05 11:00:12', 'image/general.png', NULL),
(2, 140, b'0', '2023-05-05 11:00:37', '2023-05-05 11:00:37', 'image/jethalal.jpg', NULL),
(3, 140, b'0', '2023-05-05 11:00:37', '2023-05-05 11:00:37', 'image/images.jpeg', NULL),
(4, 140, b'0', '2023-05-05 11:00:37', '2023-05-05 11:00:37', 'image/general.png', NULL),
(5, 140, b'0', '2023-05-05 11:00:38', '2023-05-05 11:00:38', 'image/gallery filter time period .png', NULL),
(6, 140, b'0', '2023-05-05 11:00:38', '2023-05-05 11:00:38', 'image/from vs.png', NULL),
(7, 140, b'0', '2023-05-05 11:00:38', '2023-05-05 11:00:38', 'image/formop.png', NULL),
(8, 140, b'0', '2023-05-05 11:00:38', '2023-05-05 11:00:38', 'image/error.png', NULL),
(9, 140, b'0', '2023-05-05 11:00:38', '2023-05-05 11:00:38', 'image/dr_hathi_1.webp', NULL),
(10, 140, b'0', '2023-05-05 11:00:38', '2023-05-05 11:00:38', 'image/datta.jpeg', NULL),
(11, 140, b'0', '2023-05-05 11:00:38', '2023-05-05 11:00:38', 'image/chat.png', NULL),
(12, 140, b'0', '2023-05-05 11:00:38', '2023-05-05 11:00:38', 'image/bagha.jpeg', NULL),
(13, 141, b'0', '2023-05-05 11:01:34', '2023-05-05 11:01:34', 'image/jethalal.jpg', NULL),
(14, 141, b'0', '2023-05-05 11:01:34', '2023-05-05 11:01:34', 'image/images.jpeg', NULL),
(15, 141, b'0', '2023-05-05 11:01:34', '2023-05-05 11:01:34', 'image/general.png', NULL),
(16, 141, b'0', '2023-05-05 11:01:34', '2023-05-05 11:01:34', 'image/gallery filter time period .png', NULL),
(17, 141, b'0', '2023-05-05 11:01:34', '2023-05-05 11:01:34', 'image/from vs.png', NULL),
(18, 141, b'0', '2023-05-05 11:01:34', '2023-05-05 11:01:34', 'image/formop.png', NULL),
(19, 141, b'0', '2023-05-05 11:01:34', '2023-05-05 11:01:34', 'image/error.png', NULL),
(20, 141, b'0', '2023-05-05 11:01:34', '2023-05-05 11:01:34', 'image/dr_hathi_1.webp', NULL),
(21, 141, b'0', '2023-05-05 11:01:34', '2023-05-05 11:01:34', 'image/datta.jpeg', NULL),
(22, 141, b'0', '2023-05-05 11:01:34', '2023-05-05 11:01:34', 'image/chat.png', NULL),
(23, 141, b'0', '2023-05-05 11:01:34', '2023-05-05 11:01:34', 'image/bagha.jpeg', NULL),
(24, 142, b'0', '2023-05-05 12:03:49', '2023-05-05 12:03:49', 'image/Screenshot from 2023-04-24 14-34-43.png', NULL),
(25, 142, b'0', '2023-05-05 12:03:49', '2023-05-05 12:03:49', 'image/Screenshot from 2023-04-18 17-34-12.png', NULL),
(26, 142, b'0', '2023-05-05 12:03:49', '2023-05-05 12:03:49', 'image/Screenshot from 2023-04-18 17-32-45.png', NULL),
(27, 142, b'0', '2023-05-05 12:03:49', '2023-05-05 12:03:49', 'image/Screenshot from 2023-04-18 14-43-19.png', NULL),
(28, 142, b'0', '2023-05-05 12:03:49', '2023-05-05 12:03:49', 'image/Screenshot from 2023-04-17 15-17-11.png', NULL),
(29, 142, b'0', '2023-05-05 12:03:49', '2023-05-05 12:03:49', 'image/Screenshot from 2023-04-11 16-01-34.png', NULL),
(30, 143, b'0', '2023-05-05 12:05:02', '2023-05-05 12:05:02', 'image/Screenshot from 2023-04-24 14-34-43.png', 49),
(31, 143, b'0', '2023-05-05 12:05:02', '2023-05-05 12:05:02', 'image/Screenshot from 2023-04-18 17-34-12.png', 49),
(32, 143, b'0', '2023-05-05 12:05:02', '2023-05-05 12:05:02', 'image/Screenshot from 2023-04-18 17-32-45.png', 49),
(33, 143, b'0', '2023-05-05 12:05:02', '2023-05-05 12:05:02', 'image/Screenshot from 2023-04-18 14-43-19.png', 49),
(34, 143, b'0', '2023-05-05 12:05:02', '2023-05-05 12:05:02', 'image/Screenshot from 2023-04-17 15-17-11.png', 49),
(35, 143, b'0', '2023-05-05 12:05:02', '2023-05-05 12:05:02', 'image/Screenshot from 2023-04-11 16-01-34.png', 49),
(36, 144, b'0', '2023-05-05 12:07:58', '2023-05-05 12:07:58', 'image/Screenshot from 2023-04-24 14-34-43.png', 49),
(37, 144, b'0', '2023-05-05 12:07:58', '2023-05-05 12:07:58', 'image/Screenshot from 2023-04-18 17-34-12.png', 49),
(38, 144, b'0', '2023-05-05 12:07:58', '2023-05-05 12:07:58', 'image/Screenshot from 2023-04-18 17-32-45.png', 49),
(39, 144, b'0', '2023-05-05 12:07:58', '2023-05-05 12:07:58', 'image/Screenshot from 2023-04-18 14-43-19.png', 49),
(40, 144, b'0', '2023-05-05 12:07:58', '2023-05-05 12:07:58', 'image/Screenshot from 2023-04-17 15-17-11.png', 49),
(41, 144, b'0', '2023-05-05 12:07:58', '2023-05-05 12:07:58', 'image/Screenshot from 2023-04-11 16-01-34.png', 49),
(42, 144, b'0', '2023-05-05 12:09:25', '2023-05-05 12:09:25', 'image/Screenshot from 2023-04-11 16-01-34.png', 49),
(43, 145, b'0', '2023-05-05 12:17:46', '2023-05-05 12:17:46', 'image/Screenshot from 2023-04-24 14-34-43.png', 49),
(44, 145, b'0', '2023-05-05 12:17:46', '2023-05-05 12:17:46', 'image/Screenshot from 2023-04-18 17-34-12.png', 49),
(45, 145, b'0', '2023-05-05 12:17:46', '2023-05-05 12:17:46', 'image/Screenshot from 2023-04-18 17-32-45.png', 49),
(46, 145, b'0', '2023-05-05 12:17:46', '2023-05-05 12:17:46', 'image/Screenshot from 2023-04-18 14-43-19.png', 49),
(47, 145, b'0', '2023-05-05 12:17:46', '2023-05-05 12:17:46', 'image/Screenshot from 2023-04-17 15-17-11.png', 49),
(48, 145, b'0', '2023-05-05 12:17:46', '2023-05-05 12:17:46', 'image/Screenshot from 2023-04-11 16-01-34.png', 49),
(49, 146, b'0', '2023-05-05 12:59:14', '2023-05-05 12:59:14', 'image/Screenshot from 2023-05-01 16-55-29.png', 50),
(50, 146, b'0', '2023-05-05 12:59:14', '2023-05-05 12:59:14', 'image/Screenshot from 2023-04-24 14-34-43.png', 50),
(51, 146, b'0', '2023-05-05 12:59:14', '2023-05-05 12:59:14', 'image/Screenshot from 2023-04-18 17-34-12.png', 50),
(52, 146, b'0', '2023-05-05 12:59:14', '2023-05-05 12:59:14', 'image/Screenshot from 2023-04-18 17-32-45.png', 50),
(53, 146, b'0', '2023-05-05 12:59:14', '2023-05-05 12:59:14', 'image/Screenshot from 2023-04-18 14-43-19.png', 50),
(54, 146, b'0', '2023-05-05 12:59:14', '2023-05-05 12:59:14', 'image/Screenshot from 2023-04-17 15-17-11.png', 50),
(55, 146, b'0', '2023-05-05 12:59:14', '2023-05-05 12:59:14', 'image/Screenshot from 2023-04-11 16-01-34.png', 50),
(56, 146, b'0', '2023-05-05 12:59:14', '2023-05-05 12:59:14', 'image/Screenshot from 2023-04-11 10-32-33.png', 50),
(57, 146, b'0', '2023-05-05 12:59:14', '2023-05-05 12:59:14', 'image/Screenshot from 2023-04-11 10-31-22.png', 50),
(58, 146, b'0', '2023-05-05 12:59:14', '2023-05-05 12:59:14', 'image/Screenshot from 2023-04-03 09-01-16.png', 50),
(59, 146, b'0', '2023-05-05 12:59:14', '2023-05-05 12:59:14', 'image/Screenshot from 2023-03-23 18-25-38.png', 50),
(60, 146, b'0', '2023-05-05 12:59:14', '2023-05-05 12:59:14', 'image/Screenshot from 2023-03-22 18-52-20.png', 50),
(61, 147, b'0', '2023-05-05 13:00:53', '2023-05-05 13:00:53', 'image/general.png', 50),
(62, 147, b'0', '2023-05-05 13:00:53', '2023-05-05 13:00:53', 'image/gallery filter time period .png', 50),
(63, 147, b'0', '2023-05-05 13:00:53', '2023-05-05 13:00:53', 'image/from vs.png', 50),
(64, 147, b'0', '2023-05-05 13:00:53', '2023-05-05 13:00:53', 'image/formop.png', 50),
(65, 148, b'0', '2023-05-08 04:02:59', '2023-05-08 04:02:59', 'image/Screenshot from 2023-04-24 14-34-43.png', 53),
(66, 148, b'0', '2023-05-08 04:02:59', '2023-05-08 04:02:59', 'image/Screenshot from 2023-04-18 17-34-12.png', 53),
(67, 148, b'0', '2023-05-08 04:02:59', '2023-05-08 04:02:59', 'image/Screenshot from 2023-04-18 17-32-45.png', 53),
(68, 148, b'0', '2023-05-08 04:02:59', '2023-05-08 04:02:59', 'image/Screenshot from 2023-04-18 14-43-19.png', 53),
(69, 148, b'0', '2023-05-08 04:02:59', '2023-05-08 04:02:59', 'image/Screenshot from 2023-04-17 15-17-11.png', 53),
(70, 148, b'0', '2023-05-08 04:02:59', '2023-05-08 04:02:59', 'image/Screenshot from 2023-04-11 16-01-34.png', 53),
(71, 148, b'0', '2023-05-08 04:02:59', '2023-05-08 04:02:59', 'image/Screenshot from 2023-04-11 10-32-33.png', 53),
(72, 148, b'0', '2023-05-08 04:02:59', '2023-05-08 04:02:59', 'image/Screenshot from 2023-04-11 10-31-22.png', 53),
(73, 148, b'0', '2023-05-08 04:02:59', '2023-05-08 04:02:59', 'image/Screenshot from 2023-04-03 09-01-16.png', 53),
(74, 148, b'0', '2023-05-08 04:02:59', '2023-05-08 04:02:59', 'image/Screenshot from 2023-03-23 18-25-38.png', 53),
(75, 148, b'0', '2023-05-08 04:02:59', '2023-05-08 04:02:59', 'image/Screenshot from 2023-03-22 18-52-20.png', 53),
(76, 151, b'0', '2023-05-08 06:31:27', '2023-05-08 06:31:27', 'image/Screenshot from 2023-04-18 17-34-12.png', 53),
(77, 151, b'0', '2023-05-08 06:31:27', '2023-05-08 06:31:27', 'image/Screenshot from 2023-04-18 17-32-45.png', 53),
(78, 151, b'0', '2023-05-08 06:31:27', '2023-05-08 06:31:27', 'image/Screenshot from 2023-04-18 14-43-19.png', 53),
(79, 151, b'0', '2023-05-08 06:31:27', '2023-05-08 06:31:27', 'image/Screenshot from 2023-04-17 15-17-11.png', 53),
(80, 151, b'0', '2023-05-08 06:31:27', '2023-05-08 06:31:27', 'image/Screenshot from 2023-04-11 16-01-34.png', 53),
(81, 151, b'0', '2023-05-08 06:31:27', '2023-05-08 06:31:27', 'image/Screenshot from 2023-04-11 10-32-33.png', 53),
(82, 151, b'0', '2023-05-08 06:31:27', '2023-05-08 06:31:27', 'image/Screenshot from 2023-04-11 10-31-22.png', 53),
(83, 151, b'0', '2023-05-08 06:31:27', '2023-05-08 06:31:27', 'image/Screenshot from 2023-04-03 09-01-16.png', 53),
(84, 151, b'0', '2023-05-08 06:31:27', '2023-05-08 06:31:27', 'image/Screenshot from 2023-03-23 18-25-38.png', 53),
(85, 151, b'0', '2023-05-08 06:31:27', '2023-05-08 06:31:27', 'image/Screenshot from 2023-03-22 18-52-20.png', 53),
(86, 151, b'0', '2023-05-08 06:31:27', '2023-05-08 06:31:27', 'image/Screenshot from 2023-03-21 14-08-04.png', 53),
(87, 151, b'0', '2023-05-08 06:31:27', '2023-05-08 06:31:27', 'image/Screenshot from 2023-03-18 09-10-15.png', 53),
(88, 154, b'0', '2023-05-08 06:32:11', '2023-05-08 06:32:11', 'image/Screenshot from 2023-04-18 17-34-12.png', 54),
(89, 154, b'0', '2023-05-08 06:32:11', '2023-05-08 06:32:11', 'image/Screenshot from 2023-04-18 17-32-45.png', 54),
(90, 154, b'0', '2023-05-08 06:32:11', '2023-05-08 06:32:11', 'image/Screenshot from 2023-04-18 14-43-19.png', 54),
(91, 154, b'0', '2023-05-08 06:32:11', '2023-05-08 06:32:11', 'image/Screenshot from 2023-04-17 15-17-11.png', 54),
(92, 154, b'0', '2023-05-08 06:32:11', '2023-05-08 06:32:11', 'image/Screenshot from 2023-04-11 16-01-34.png', 54),
(93, 154, b'0', '2023-05-08 06:32:11', '2023-05-08 06:32:11', 'image/Screenshot from 2023-04-11 10-32-33.png', 54),
(94, 154, b'0', '2023-05-08 06:32:11', '2023-05-08 06:32:11', 'image/Screenshot from 2023-04-11 10-31-22.png', 54),
(95, 154, b'0', '2023-05-08 06:32:11', '2023-05-08 06:32:11', 'image/Screenshot from 2023-04-03 09-01-16.png', 54),
(96, 154, b'0', '2023-05-08 06:32:11', '2023-05-08 06:32:11', 'image/Screenshot from 2023-03-23 18-25-38.png', 54),
(97, 154, b'0', '2023-05-08 06:32:11', '2023-05-08 06:32:11', 'image/Screenshot from 2023-03-22 18-52-20.png', 54),
(98, 154, b'0', '2023-05-08 06:32:11', '2023-05-08 06:32:11', 'image/Screenshot from 2023-03-21 14-08-04.png', 54),
(99, 154, b'0', '2023-05-08 06:32:11', '2023-05-08 06:32:11', 'image/Screenshot from 2023-03-18 09-10-15.png', 54),
(100, 155, b'0', '2023-05-08 06:32:28', '2023-05-08 06:32:28', 'image/Screenshot from 2023-04-18 17-34-12.png', 54),
(101, 155, b'0', '2023-05-08 06:32:28', '2023-05-08 06:32:28', 'image/Screenshot from 2023-04-18 17-32-45.png', 54),
(102, 155, b'0', '2023-05-08 06:32:28', '2023-05-08 06:32:28', 'image/Screenshot from 2023-04-18 14-43-19.png', 54),
(103, 155, b'0', '2023-05-08 06:32:28', '2023-05-08 06:32:28', 'image/Screenshot from 2023-04-17 15-17-11.png', 54),
(104, 155, b'0', '2023-05-08 06:32:28', '2023-05-08 06:32:28', 'image/Screenshot from 2023-04-11 16-01-34.png', 54),
(105, 155, b'0', '2023-05-08 06:32:28', '2023-05-08 06:32:28', 'image/Screenshot from 2023-04-11 10-32-33.png', 54),
(106, 155, b'0', '2023-05-08 06:32:28', '2023-05-08 06:32:28', 'image/Screenshot from 2023-04-11 10-31-22.png', 54),
(107, 155, b'0', '2023-05-08 06:32:28', '2023-05-08 06:32:28', 'image/Screenshot from 2023-04-03 09-01-16.png', 54),
(108, 155, b'0', '2023-05-08 06:32:28', '2023-05-08 06:32:28', 'image/Screenshot from 2023-03-23 18-25-38.png', 54),
(109, 155, b'0', '2023-05-08 06:32:28', '2023-05-08 06:32:28', 'image/Screenshot from 2023-03-22 18-52-20.png', 54),
(110, 155, b'0', '2023-05-08 06:32:28', '2023-05-08 06:32:28', 'image/Screenshot from 2023-03-21 14-08-04.png', 54),
(111, 155, b'0', '2023-05-08 06:32:28', '2023-05-08 06:32:28', 'image/Screenshot from 2023-03-18 09-10-15.png', 54),
(112, 156, b'0', '2023-05-08 06:32:44', '2023-05-08 06:32:44', 'image/Screenshot from 2023-04-18 17-34-12.png', 54),
(113, 156, b'0', '2023-05-08 06:32:44', '2023-05-08 06:32:44', 'image/Screenshot from 2023-04-18 17-32-45.png', 54),
(114, 156, b'0', '2023-05-08 06:32:44', '2023-05-08 06:32:44', 'image/Screenshot from 2023-04-18 14-43-19.png', 54),
(115, 156, b'0', '2023-05-08 06:32:44', '2023-05-08 06:32:44', 'image/Screenshot from 2023-04-17 15-17-11.png', 54),
(116, 156, b'0', '2023-05-08 06:32:44', '2023-05-08 06:32:44', 'image/Screenshot from 2023-04-11 16-01-34.png', 54),
(117, 156, b'0', '2023-05-08 06:32:44', '2023-05-08 06:32:44', 'image/Screenshot from 2023-04-11 10-32-33.png', 54),
(118, 156, b'0', '2023-05-08 06:32:44', '2023-05-08 06:32:44', 'image/Screenshot from 2023-04-11 10-31-22.png', 54),
(119, 156, b'0', '2023-05-08 06:32:44', '2023-05-08 06:32:44', 'image/Screenshot from 2023-04-03 09-01-16.png', 54),
(120, 156, b'0', '2023-05-08 06:32:44', '2023-05-08 06:32:44', 'image/Screenshot from 2023-03-23 18-25-38.png', 54),
(121, 156, b'0', '2023-05-08 06:32:44', '2023-05-08 06:32:44', 'image/Screenshot from 2023-03-22 18-52-20.png', 54),
(122, 156, b'0', '2023-05-08 06:32:44', '2023-05-08 06:32:44', 'image/Screenshot from 2023-03-21 14-08-04.png', 54),
(123, 156, b'0', '2023-05-08 06:32:44', '2023-05-08 06:32:44', 'image/Screenshot from 2023-03-18 09-10-15.png', 54),
(124, 157, b'1', '2023-05-08 06:37:04', '2023-05-08 06:37:04', 'image/nature.jpg', 54),
(125, 157, b'1', '2023-05-08 06:37:04', '2023-05-08 06:37:04', 'image/jethalal.jpg', 54),
(126, 157, b'1', '2023-05-08 06:37:04', '2023-05-08 06:37:04', 'image/images.jpeg', 54),
(127, 157, b'1', '2023-05-08 06:37:04', '2023-05-08 06:37:04', 'image/general.png', 54),
(128, 157, b'1', '2023-05-08 06:37:04', '2023-05-09 12:06:33', 'image/gallery filter time period .png', 54),
(129, 157, b'0', '2023-05-08 06:37:04', '2023-05-08 06:37:04', 'image/from vs.png', 54),
(130, 157, b'0', '2023-05-08 06:37:04', '2023-05-08 06:37:04', 'image/formop.png', 54),
(131, 157, b'0', '2023-05-08 06:37:04', '2023-05-08 06:37:04', 'image/error.png', 54),
(132, 157, b'0', '2023-05-08 06:37:04', '2023-05-08 06:37:04', 'image/dr_hathi_1.webp', 54),
(133, 157, b'1', '2023-05-08 06:37:04', '2023-05-08 06:37:04', 'image/datta.jpeg', 54),
(134, 157, b'1', '2023-05-08 06:37:04', '2023-05-08 06:37:04', 'image/chat.png', 54),
(135, 157, b'1', '2023-05-08 06:37:04', '2023-05-08 06:37:04', 'image/bagha.jpeg', 54),
(136, 158, b'0', '2023-05-08 08:23:31', '2023-05-08 08:23:31', 'image/nature.jpg', 50),
(137, 160, b'1', '2023-05-08 08:35:12', '2023-05-08 08:35:12', 'image/Screenshot from 2023-04-24 14-34-43.png', 56),
(138, 160, b'0', '2023-05-08 08:35:12', '2023-05-08 08:35:12', 'image/Screenshot from 2023-04-18 17-34-12.png', 56),
(139, 160, b'1', '2023-05-08 08:35:12', '2023-05-08 08:35:12', 'image/Screenshot from 2023-04-18 17-32-45.png', 56),
(140, 160, b'1', '2023-05-08 08:35:12', '2023-05-08 08:35:12', 'image/Screenshot from 2023-04-18 14-43-19.png', 56),
(141, 161, b'0', '2023-05-09 06:53:59', '2023-05-09 06:53:59', 'image/formop.png', 54),
(142, 162, b'1', '2023-05-09 11:20:40', '2023-05-09 11:37:48', 'image/Screenshot from 2023-04-24 14-34-43.png', 56),
(143, 162, b'1', '2023-05-09 11:20:40', '2023-05-09 11:37:48', 'image/Screenshot from 2023-04-18 17-34-12.png', 56),
(144, 162, b'0', '2023-05-09 11:20:40', '2023-05-09 11:20:40', 'image/Screenshot from 2023-04-18 17-32-45.png', 56),
(145, 162, b'0', '2023-05-09 11:20:40', '2023-05-09 11:20:40', 'image/Screenshot from 2023-04-18 14-43-19.png', 56),
(146, 162, b'0', '2023-05-09 11:20:40', '2023-05-09 11:20:40', 'image/Screenshot from 2023-04-17 15-17-11.png', 56),
(147, 162, b'0', '2023-05-09 11:20:40', '2023-05-09 11:20:40', 'image/Screenshot from 2023-04-11 16-01-34.png', 56),
(148, 162, b'0', '2023-05-09 11:20:40', '2023-05-09 11:20:40', 'image/Screenshot from 2023-04-11 10-32-33.png', 56),
(149, 162, b'0', '2023-05-09 11:20:40', '2023-05-09 11:20:40', 'image/Screenshot from 2023-04-11 10-31-22.png', 56),
(150, 162, b'0', '2023-05-09 11:20:40', '2023-05-09 11:20:40', 'image/Screenshot from 2023-04-03 09-01-16.png', 56),
(151, 162, b'0', '2023-05-09 11:20:40', '2023-05-09 11:20:40', 'image/Screenshot from 2023-03-23 18-25-38.png', 56),
(152, 162, b'0', '2023-05-09 11:20:40', '2023-05-09 11:20:40', 'image/Screenshot from 2023-03-22 18-52-20.png', 56),
(153, 162, b'0', '2023-05-09 11:20:40', '2023-05-09 11:20:40', 'image/Screenshot from 2023-03-21 14-08-04.png', 56),
(154, 162, b'0', '2023-05-09 11:20:40', '2023-05-09 11:20:40', 'image/Screenshot from 2023-03-18 09-10-15.png', 56),
(155, 163, b'0', '2023-05-09 11:20:49', '2023-05-09 11:20:49', 'image/Screenshot from 2023-04-24 14-34-43.png', 56),
(156, 163, b'0', '2023-05-09 11:20:49', '2023-05-09 11:20:49', 'image/Screenshot from 2023-04-18 17-34-12.png', 56),
(157, 163, b'0', '2023-05-09 11:20:49', '2023-05-09 11:20:49', 'image/Screenshot from 2023-04-18 17-32-45.png', 56),
(158, 163, b'0', '2023-05-09 11:20:49', '2023-05-09 11:20:49', 'image/Screenshot from 2023-04-18 14-43-19.png', 56),
(159, 163, b'0', '2023-05-09 11:20:49', '2023-05-09 11:20:49', 'image/Screenshot from 2023-04-17 15-17-11.png', 56),
(160, 163, b'0', '2023-05-09 11:20:49', '2023-05-09 11:20:49', 'image/Screenshot from 2023-04-11 16-01-34.png', 56),
(161, 163, b'0', '2023-05-09 11:20:49', '2023-05-09 11:20:49', 'image/Screenshot from 2023-04-11 10-32-33.png', 56),
(162, 163, b'0', '2023-05-09 11:20:49', '2023-05-09 11:20:49', 'image/Screenshot from 2023-04-11 10-31-22.png', 56),
(163, 163, b'0', '2023-05-09 11:20:49', '2023-05-09 11:20:49', 'image/Screenshot from 2023-04-03 09-01-16.png', 56),
(164, 163, b'0', '2023-05-09 11:20:49', '2023-05-09 11:20:49', 'image/Screenshot from 2023-03-23 18-25-38.png', 56),
(165, 163, b'0', '2023-05-09 11:20:49', '2023-05-09 11:20:49', 'image/Screenshot from 2023-03-22 18-52-20.png', 56),
(166, 163, b'0', '2023-05-09 11:20:49', '2023-05-09 11:20:49', 'image/Screenshot from 2023-03-21 14-08-04.png', 56),
(167, 163, b'0', '2023-05-09 11:20:49', '2023-05-09 11:20:49', 'image/Screenshot from 2023-03-18 09-10-15.png', 56);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(5) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `created_at`) VALUES
(1, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(2, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(3, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(4, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(5, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(6, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(7, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(8, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(9, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(10, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(11, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(12, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(13, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(14, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(15, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(16, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(17, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(18, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(19, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(20, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(21, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(22, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(23, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(24, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(25, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(26, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(27, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(28, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 11:28:49'),
(29, 'deeppandya1996@gmail.com', '123@Deep', '2023-05-03 11:31:55'),
(30, 'digvijaygohil656@gmail.com', 'Jadiyo@123', '2023-05-03 11:57:53'),
(31, 'digvijaygohil656@gmail.com', 'Jadiyo@123', '2023-05-03 11:58:32'),
(32, 'digvijaygohil656@gmail.com', 'Jadiyo@123', '2023-05-03 11:58:50'),
(33, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(34, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(35, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(36, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(37, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(38, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(39, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(40, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(41, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(42, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(43, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(44, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(45, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(46, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(47, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(48, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(49, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(50, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(51, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(52, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(53, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(54, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(55, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(56, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(57, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(58, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(59, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(60, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:12:27'),
(61, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(62, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(63, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(64, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(65, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(66, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(67, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(68, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(69, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(70, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(71, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(72, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(73, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(74, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(75, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(76, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(77, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(78, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(79, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(80, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(81, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(82, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(83, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(84, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(85, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(86, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(87, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(88, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:17:33'),
(89, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(90, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(91, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(92, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(93, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(94, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(95, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(96, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(97, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(98, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(99, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(100, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(101, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(102, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(103, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(104, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(105, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(106, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(107, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(108, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(109, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(110, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(111, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(112, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(113, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(114, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(115, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(116, 'dattap0509@gmail.com', '123@Datta', '2023-05-03 13:23:48'),
(117, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:30'),
(118, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:30'),
(119, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:30'),
(120, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:30'),
(121, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:30'),
(122, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:30'),
(123, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:30'),
(124, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:30'),
(125, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:30'),
(126, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:30'),
(127, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:30'),
(128, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:30'),
(129, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:30'),
(130, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:30'),
(131, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:30'),
(132, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:30'),
(133, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:30'),
(134, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:31'),
(135, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:31'),
(136, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:31'),
(137, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:31'),
(138, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:31'),
(139, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:31'),
(140, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:31'),
(141, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:31'),
(142, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:31'),
(143, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:31'),
(144, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 04:13:31'),
(145, 'yashbhatt@gmail.com', '123@Yash', '2023-05-04 05:28:07'),
(146, 'yashbhatt@gmail.com', '123@Yash', '2023-05-04 05:28:07'),
(147, 'yashbhatt@gmail.com', '123@Yash', '2023-05-04 05:28:07'),
(148, 'sjkfgs@sdgf.hwsdgf', '123@Pratuik', '2023-05-04 06:28:48'),
(149, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 06:34:36'),
(150, 'sjkfgs@sdgf.hwsdgf', '123@Pratuik', '2023-05-04 08:41:17'),
(151, 'yashbhatt@gmail.com', '123@Yash', '2023-05-04 08:55:44'),
(152, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 13:05:11'),
(153, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 13:17:38'),
(154, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 13:21:11'),
(155, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 13:22:44'),
(156, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 13:29:11'),
(157, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 13:30:22'),
(158, 'dattap0509@gmail.com', '123@Datta', '2023-05-04 13:48:15'),
(159, 'dattap0509@gmail.com', '123@Datta', '2023-05-05 03:42:10'),
(160, 'yashbhatt@gmail.com', '123@Yash', '2023-05-05 12:58:41'),
(161, 'dattap0509@gmail.com', '9da9476a42966c70ddfc72fd2ce0fb0f', '2023-05-08 03:57:58'),
(162, 'dattap0509@gmail.com', '9da9476a42966c70ddfc72fd2ce0fb0f', '2023-05-08 03:57:58'),
(163, 'dattap0509@gmail.com', '9da9476a42966c70ddfc72fd2ce0fb0f', '2023-05-08 06:09:27'),
(164, 'dattap0509@gmail.com', '9da9476a42966c70ddfc72fd2ce0fb0f', '2023-05-08 06:10:08'),
(165, 'dattap0509@gmail.com', '9da9476a42966c70ddfc72fd2ce0fb0f', '2023-05-08 06:10:08'),
(166, 'dattap0509@gmail.com', '9da9476a42966c70ddfc72fd2ce0fb0f', '2023-05-08 08:15:27'),
(167, 'yashbhatt@gmail.com', '908a7ccfcd5b6e37d9b43f7ad9674b00', '2023-05-08 08:22:50'),
(168, 'dattap0509@gmail.com', '9da9476a42966c70ddfc72fd2ce0fb0f', '2023-05-08 09:22:41'),
(169, 'dattap0509@gmail.com', '9da9476a42966c70ddfc72fd2ce0fb0f', '2023-05-09 03:47:10'),
(170, 'dattap0509@gmail.com', '9da9476a42966c70ddfc72fd2ce0fb0f', '2023-05-09 06:53:10'),
(171, 'dattap0509@gmail.com', '9da9476a42966c70ddfc72fd2ce0fb0f', '2023-05-09 10:53:24'),
(172, 'yashbhatt@gmail.com', '908a7ccfcd5b6e37d9b43f7ad9674b00', '2023-05-09 10:53:52'),
(173, 'dattap0509@gmail.com', '9da9476a42966c70ddfc72fd2ce0fb0f', '2023-05-09 11:54:49'),
(174, 'dattap0509@gmail.com', '9da9476a42966c70ddfc72fd2ce0fb0f', '2023-05-09 11:55:17'),
(175, 'dattap0509@gmail.com', '9da9476a42966c70ddfc72fd2ce0fb0f', '2023-05-09 12:05:41');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(50) NOT NULL,
  `title` varchar(5000) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `description` varchar(5000) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `created_at`, `updated_at`, `description`, `user_id`, `is_deleted`) VALUES
(157, 'edited ', '2023-05-08 06:37:04', '2023-05-09 10:40:37', 'tarak mehta ka ooltah chashma (tmkoc)', '54', b'0'),
(158, 'hey there', '2023-05-08 08:23:31', '2023-05-08 08:23:31', 'i am not using any social media platform', '50', b'0'),
(159, 'hey there', '2023-05-08 08:23:31', '2023-05-08 08:23:31', 'i am not using any social media platform', '56', b'1'),
(160, 'Hello', '2023-05-08 08:35:12', '2023-05-08 09:22:13', 'hi how are you? Hope you are good', '56', b'0'),
(161, 'second post', '2023-05-09 06:53:59', '2023-05-09 06:53:59', 'checking if other content is showing or not', '54', b'0'),
(162, 'random text', '2023-05-09 11:20:40', '2023-05-09 11:37:48', 'fghfghdfghdfghdfghdfg', '56', b'0'),
(163, 'ghcfghfgh', '2023-05-09 11:20:49', '2023-05-09 11:20:49', 'fghfghdfghdfghdfghdfg', '56', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `registeration`
--

CREATE TABLE `registeration` (
  `id` int(3) NOT NULL,
  `name` varchar(20) NOT NULL,
  `surname` varchar(10) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `password` varchar(500) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `birthdate` date NOT NULL,
  `profile` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registeration`
--

INSERT INTO `registeration` (`id`, `name`, `surname`, `mail`, `password`, `contact`, `birthdate`, `profile`, `created_at`, `updated_at`) VALUES
(52, 'nisha', 'bhatt', 'nisha70@gmail.com', '849aefcdec32f872085fe7732bd6d61f', '9428991347', '2023-05-02', 'image/', '2023-05-04 13:13:45', '2023-05-04 13:13:45'),
(54, 'datta', 'Pandya', 'dattap0509@gmail.com', '9da9476a42966c70ddfc72fd2ce0fb0f', '1234567890', '2023-05-11', 'image/Screenshot from 2023-03-23 18-25-38.png', '2023-05-05 13:23:12', '2023-05-05 13:23:12'),
(56, 'yash', 'bhatt', 'yashbhatt@gmail.com', '908a7ccfcd5b6e37d9b43f7ad9674b00', '6355223386', '2023-05-18', 'image/Screenshot from 2023-03-22 18-52-20.png', '2023-05-08 08:22:36', '2023-05-08 08:22:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registeration`
--
ALTER TABLE `registeration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `registeration`
--
ALTER TABLE `registeration`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
