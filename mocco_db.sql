-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2026 at 02:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mocco_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(180) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `name`, `password`, `type`) VALUES
(1, 'admin', 'Stanvic', '$2y$12$00okYWM2YmE3MjA3YjBjZ.h3wSfyYvzZRa78S7jAq2wltiVBX1ala', 'superadmin');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `exam` varchar(100) NOT NULL,
  `exam_year` varchar(100) NOT NULL,
  `attendance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `card_expire_date`
--

CREATE TABLE `card_expire_date` (
  `id` int(11) NOT NULL,
  `expire_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `card_usage_limit`
--

CREATE TABLE `card_usage_limit` (
  `id` int(11) NOT NULL,
  `card_limit` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `class_numeric` int(11) NOT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `note` text NOT NULL,
  `show_position` varchar(10) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `class_numeric`, `teacher_name`, `note`, `show_position`) VALUES
(1, 'JS 1', 1, 'Mr Donatus', '', 'yes'),
(2, 'JS 2', 2, 'Mr Donatus', '', 'yes'),
(3, 'JS 3', 3, 'Mr Donatus', '', 'yes'),
(4, 'SS 1', 4, 'Mr Donatus', '', 'yes'),
(5, 'SS 2', 5, 'Mr Donatus', '', 'yes'),
(6, 'SS 3', 6, 'Mr Donatus', '', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `exam` varchar(100) NOT NULL,
  `exam_year` varchar(100) NOT NULL,
  `class_teacher_comment` mediumtext NOT NULL,
  `principal_comment` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `date`) VALUES
(1, '1st Term', '2025-02-17');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `school_tagline` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `footer` varchar(255) NOT NULL,
  `next_term_begins` varchar(255) NOT NULL,
  `current_school_session` varchar(200) NOT NULL,
  `no_times_school_open` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `admin_login_bg` varchar(255) NOT NULL,
  `student_login_bg` varchar(255) NOT NULL,
  `teacher_login_bg` varchar(255) NOT NULL,
  `main_url` varchar(255) NOT NULL,
  `reg_no_prefix` varchar(10) NOT NULL,
  `terminal_report_bg_image` varchar(255) NOT NULL,
  `school_website` varchar(255) NOT NULL,
  `school_stamp` varchar(255) NOT NULL,
  `principal_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `school_tagline`, `school_name`, `phone_no`, `email`, `address`, `footer`, `next_term_begins`, `current_school_session`, `no_times_school_open`, `logo`, `admin_login_bg`, `student_login_bg`, `teacher_login_bg`, `main_url`, `reg_no_prefix`, `terminal_report_bg_image`, `school_website`, `school_stamp`, `principal_name`) VALUES
(1, 'Sound Education Is The Ultimate Goal', 'Model Commercial College', '07016777864', 'mocco@gmail.com', 'Besides Union Bank, Field Base road, Suleja Niger State.', 'Model Commercial College', '2026-01-12', '2025/2026', 100, 'pci_logo.png', 'school-banner.jpg', '1.jpg', 'badagry.jpg', 'http://localhost/mocco', 'mocco', 'bg-logo.png', 'https://mocco.com.ng', 'stamp.png', 'Mr. Ambrose');

-- --------------------------------------------------------

--
-- Table structure for table `generated_pins`
--

CREATE TABLE `generated_pins` (
  `id` int(11) NOT NULL,
  `pin` varchar(255) NOT NULL,
  `date_generated` date NOT NULL,
  `expired_date` date NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `generated_pins`
--

INSERT INTO `generated_pins` (`id`, `pin`, `date_generated`, `expired_date`, `status`) VALUES
(1, '1944097922', '2026-01-06', '0000-00-00', 'open'),
(2, '1335994277', '2026-01-06', '0000-00-00', 'open'),
(3, '4899195478', '2026-01-06', '0000-00-00', 'open'),
(4, '7185693629', '2026-01-06', '0000-00-00', 'open'),
(5, '9268491006', '2026-01-06', '0000-00-00', 'open'),
(6, '6056891065', '2026-01-06', '0000-00-00', 'open'),
(7, '8031793617', '2026-01-06', '0000-00-00', 'open'),
(8, '9907597676', '2026-01-06', '0000-00-00', 'open'),
(9, '7925390305', '2026-01-06', '0000-00-00', 'open'),
(10, '7084998735', '2026-01-06', '0000-00-00', 'open'),
(11, '7784297761', '2026-01-06', '0000-00-00', 'open'),
(12, '9180693459', '2026-01-06', '0000-00-00', 'open'),
(13, '7593393602', '2026-01-06', '0000-00-00', 'open'),
(14, '6361696490', '2026-01-06', '0000-00-00', 'open'),
(15, '5831599580', '2026-01-06', '0000-00-00', 'open'),
(16, '3657693577', '2026-01-06', '0000-00-00', 'open'),
(17, '5480495616', '2026-01-06', '0000-00-00', 'open'),
(18, '4466796888', '2026-01-06', '0000-00-00', 'open'),
(19, '2763698471', '2026-01-06', '0000-00-00', 'open'),
(20, '7439992027', '2026-01-06', '0000-00-00', 'open'),
(21, '5924394663', '2026-01-06', '0000-00-00', 'open'),
(22, '2775495931', '2026-01-06', '0000-00-00', 'open'),
(23, '5684294690', '2026-01-06', '0000-00-00', 'open'),
(24, '6380599944', '2026-01-06', '0000-00-00', 'open'),
(25, '9852694742', '2026-01-06', '0000-00-00', 'open'),
(26, '7506598450', '2026-01-06', '0000-00-00', 'open'),
(27, '5092198533', '2026-01-06', '0000-00-00', 'open'),
(28, '9878198710', '2026-01-06', '0000-00-00', 'open'),
(29, '6533295202', '2026-01-06', '0000-00-00', 'open'),
(30, '5788692890', '2026-01-06', '0000-00-00', 'open'),
(31, '8093697925', '2026-01-06', '0000-00-00', 'open'),
(32, '9207990522', '2026-01-06', '0000-00-00', 'open'),
(33, '2264998665', '2026-01-06', '0000-00-00', 'open'),
(34, '8720296605', '2026-01-06', '0000-00-00', 'open'),
(35, '9748291404', '2026-01-06', '0000-00-00', 'open'),
(36, '2730898022', '2026-01-06', '0000-00-00', 'open'),
(37, '8280790769', '2026-01-06', '0000-00-00', 'open'),
(38, '9020292438', '2026-01-06', '0000-00-00', 'open'),
(39, '1355698376', '2026-01-06', '0000-00-00', 'open'),
(40, '5187191308', '2026-01-06', '0000-00-00', 'open'),
(41, '1533797176', '2026-01-06', '0000-00-00', 'open'),
(42, '6153391773', '2026-01-06', '0000-00-00', 'open'),
(43, '7863799717', '2026-01-06', '0000-00-00', 'open'),
(44, '7539295083', '2026-01-06', '0000-00-00', 'open'),
(45, '5610797149', '2026-01-06', '0000-00-00', 'open'),
(46, '5550097131', '2026-01-06', '0000-00-00', 'open'),
(47, '5432690893', '2026-01-06', '0000-00-00', 'open'),
(48, '5881395519', '2026-01-06', '0000-00-00', 'open'),
(49, '9336491797', '2026-01-06', '0000-00-00', 'open'),
(50, '6429194095', '2026-01-06', '0000-00-00', 'open'),
(51, '5452297954', '2026-01-06', '0000-00-00', 'open'),
(52, '1627696859', '2026-01-06', '0000-00-00', 'open'),
(53, '9973196211', '2026-01-06', '0000-00-00', 'open'),
(54, '7225499163', '2026-01-06', '0000-00-00', 'open'),
(55, '3361697100', '2026-01-06', '0000-00-00', 'open'),
(56, '1870693145', '2026-01-06', '0000-00-00', 'open'),
(57, '3357891740', '2026-01-06', '0000-00-00', 'open'),
(58, '4499599258', '2026-01-06', '0000-00-00', 'open'),
(59, '1594092732', '2026-01-06', '0000-00-00', 'open'),
(60, '6139992857', '2026-01-06', '0000-00-00', 'open'),
(61, '9327497757', '2026-01-06', '0000-00-00', 'open'),
(62, '6804993855', '2026-01-06', '0000-00-00', 'open'),
(63, '3513291265', '2026-01-06', '0000-00-00', 'open'),
(64, '7961497317', '2026-01-06', '0000-00-00', 'open'),
(65, '9545291083', '2026-01-06', '0000-00-00', 'open'),
(66, '7772290259', '2026-01-06', '0000-00-00', 'open'),
(67, '6295895552', '2026-01-06', '0000-00-00', 'open'),
(68, '8108292651', '2026-01-06', '0000-00-00', 'open'),
(69, '7704090921', '2026-01-06', '0000-00-00', 'open'),
(70, '7989999120', '2026-01-06', '0000-00-00', 'open'),
(71, '4060095549', '2026-01-06', '0000-00-00', 'open'),
(72, '1873994531', '2026-01-06', '0000-00-00', 'open'),
(73, '2415690733', '2026-01-06', '0000-00-00', 'open'),
(74, '7596393750', '2026-01-06', '0000-00-00', 'open'),
(75, '6413592905', '2026-01-06', '0000-00-00', 'open'),
(76, '4992293970', '2026-01-06', '0000-00-00', 'open'),
(77, '8743291145', '2026-01-06', '0000-00-00', 'open'),
(78, '6360294096', '2026-01-06', '0000-00-00', 'open'),
(79, '7928190579', '2026-01-06', '0000-00-00', 'open'),
(80, '7240099384', '2026-01-06', '0000-00-00', 'open'),
(81, '3016590916', '2026-01-06', '0000-00-00', 'open'),
(82, '4484190058', '2026-01-06', '0000-00-00', 'open'),
(83, '8024497887', '2026-01-06', '0000-00-00', 'open'),
(84, '9507290475', '2026-01-06', '0000-00-00', 'open'),
(85, '8745092106', '2026-01-06', '0000-00-00', 'open'),
(86, '4428093961', '2026-01-06', '0000-00-00', 'open'),
(87, '9185192023', '2026-01-06', '0000-00-00', 'open'),
(88, '1515691201', '2026-01-06', '0000-00-00', 'open'),
(89, '4719998964', '2026-01-06', '0000-00-00', 'open'),
(90, '4466094046', '2026-01-06', '0000-00-00', 'open'),
(91, '6651694344', '2026-01-06', '0000-00-00', 'open'),
(92, '4174896924', '2026-01-06', '0000-00-00', 'open'),
(93, '1933096718', '2026-01-06', '0000-00-00', 'open'),
(94, '3915398924', '2026-01-06', '0000-00-00', 'open'),
(95, '2007190836', '2026-01-06', '0000-00-00', 'open'),
(96, '1698797993', '2026-01-06', '0000-00-00', 'open'),
(97, '2543793219', '2026-01-06', '0000-00-00', 'open'),
(98, '8610395989', '2026-01-06', '0000-00-00', 'open'),
(99, '9815890271', '2026-01-06', '0000-00-00', 'open'),
(100, '6074690449', '2026-01-06', '0000-00-00', 'open'),
(101, '3808791613', '2026-01-06', '0000-00-00', 'open'),
(102, '7928295967', '2026-01-06', '0000-00-00', 'open'),
(103, '5035491232', '2026-01-06', '0000-00-00', 'open'),
(104, '6221898565', '2026-01-06', '0000-00-00', 'open'),
(105, '8769894732', '2026-01-06', '0000-00-00', 'open'),
(106, '3371797895', '2026-01-06', '0000-00-00', 'open'),
(107, '8512894011', '2026-01-06', '0000-00-00', 'open'),
(108, '6449097211', '2026-01-06', '0000-00-00', 'open'),
(109, '7061290740', '2026-01-06', '0000-00-00', 'open'),
(110, '5458991273', '2026-01-06', '0000-00-00', 'open'),
(111, '5264496184', '2026-01-06', '0000-00-00', 'open'),
(112, '9873798330', '2026-01-06', '0000-00-00', 'open'),
(113, '8566498266', '2026-01-06', '0000-00-00', 'open'),
(114, '5228991361', '2026-01-06', '0000-00-00', 'open'),
(115, '3636492526', '2026-01-06', '0000-00-00', 'open'),
(116, '3460395809', '2026-01-06', '0000-00-00', 'open'),
(117, '8047390482', '2026-01-06', '0000-00-00', 'open'),
(118, '2219891676', '2026-01-06', '0000-00-00', 'open'),
(119, '5041996704', '2026-01-06', '0000-00-00', 'open'),
(120, '8877694891', '2026-01-06', '0000-00-00', 'open'),
(121, '5396099075', '2026-01-06', '0000-00-00', 'open'),
(122, '5102499606', '2026-01-06', '0000-00-00', 'open'),
(123, '4197994717', '2026-01-06', '0000-00-00', 'open'),
(124, '6889994412', '2026-01-06', '0000-00-00', 'open'),
(125, '8359999936', '2026-01-06', '0000-00-00', 'open'),
(126, '1313293275', '2026-01-06', '0000-00-00', 'open'),
(127, '2435791453', '2026-01-06', '0000-00-00', 'open'),
(128, '7483798252', '2026-01-06', '0000-00-00', 'open'),
(129, '7995694674', '2026-01-06', '0000-00-00', 'open'),
(130, '8292394211', '2026-01-06', '0000-00-00', 'open'),
(131, '3158991531', '2026-01-06', '0000-00-00', 'open'),
(132, '1997494517', '2026-01-06', '0000-00-00', 'open'),
(133, '6517792400', '2026-01-06', '0000-00-00', 'open'),
(134, '2048390403', '2026-01-06', '0000-00-00', 'open'),
(135, '1716295937', '2026-01-06', '0000-00-00', 'open'),
(136, '6589790455', '2026-01-06', '0000-00-00', 'open'),
(137, '9073197555', '2026-01-06', '0000-00-00', 'open'),
(138, '5102892952', '2026-01-06', '0000-00-00', 'open'),
(139, '3416793979', '2026-01-06', '0000-00-00', 'open'),
(140, '6238995876', '2026-01-06', '0000-00-00', 'open'),
(141, '3114397998', '2026-01-06', '0000-00-00', 'open'),
(142, '8465894810', '2026-01-06', '0000-00-00', 'open'),
(143, '9755390461', '2026-01-06', '0000-00-00', 'open'),
(144, '1713591050', '2026-01-06', '0000-00-00', 'open'),
(145, '1832594392', '2026-01-06', '0000-00-00', 'open'),
(146, '5848893397', '2026-01-06', '0000-00-00', 'open'),
(147, '9643297859', '2026-01-06', '0000-00-00', 'open'),
(148, '5289096433', '2026-01-06', '0000-00-00', 'open'),
(149, '4037099502', '2026-01-06', '0000-00-00', 'open'),
(150, '3261494253', '2026-01-06', '0000-00-00', 'open'),
(151, '9322198758', '2026-01-06', '0000-00-00', 'open'),
(152, '4155193385', '2026-01-06', '0000-00-00', 'open'),
(153, '1920194088', '2026-01-06', '0000-00-00', 'open'),
(154, '3235991193', '2026-01-06', '0000-00-00', 'open'),
(155, '7259990370', '2026-01-06', '0000-00-00', 'open'),
(156, '5696299421', '2026-01-06', '0000-00-00', 'open'),
(157, '6509091633', '2026-01-06', '0000-00-00', 'open'),
(158, '7870093333', '2026-01-06', '0000-00-00', 'open'),
(159, '5274696135', '2026-01-06', '0000-00-00', 'open'),
(160, '5755597967', '2026-01-06', '0000-00-00', 'open'),
(161, '4285895119', '2026-01-06', '0000-00-00', 'open'),
(162, '5651194011', '2026-01-06', '0000-00-00', 'open'),
(163, '2120590688', '2026-01-06', '0000-00-00', 'open'),
(164, '9147597176', '2026-01-06', '0000-00-00', 'open'),
(165, '6000693534', '2026-01-06', '0000-00-00', 'open'),
(166, '5812897344', '2026-01-06', '0000-00-00', 'open'),
(167, '2559395688', '2026-01-06', '0000-00-00', 'open'),
(168, '7833793787', '2026-01-06', '0000-00-00', 'open'),
(169, '1259497987', '2026-01-06', '0000-00-00', 'open'),
(170, '6216497929', '2026-01-06', '0000-00-00', 'open'),
(171, '7009299553', '2026-01-06', '0000-00-00', 'open'),
(172, '9716295576', '2026-01-06', '0000-00-00', 'open'),
(173, '6891496998', '2026-01-06', '0000-00-00', 'open'),
(174, '5425796260', '2026-01-06', '0000-00-00', 'open'),
(175, '1626897954', '2026-01-06', '0000-00-00', 'open'),
(176, '9026195005', '2026-01-06', '0000-00-00', 'open'),
(177, '8875692008', '2026-01-06', '0000-00-00', 'open'),
(178, '5731397956', '2026-01-06', '0000-00-00', 'open'),
(179, '9013595173', '2026-01-06', '0000-00-00', 'open'),
(180, '4268091896', '2026-01-06', '0000-00-00', 'open'),
(181, '4075498364', '2026-01-06', '0000-00-00', 'open'),
(182, '6286198387', '2026-01-06', '0000-00-00', 'open'),
(183, '1072694127', '2026-01-06', '0000-00-00', 'open'),
(184, '8935096019', '2026-01-06', '0000-00-00', 'open'),
(185, '2658092231', '2026-01-06', '0000-00-00', 'open'),
(186, '5406491529', '2026-01-06', '0000-00-00', 'open'),
(187, '6920299131', '2026-01-06', '0000-00-00', 'open'),
(188, '2402893792', '2026-01-06', '0000-00-00', 'open'),
(189, '3572293794', '2026-01-06', '0000-00-00', 'open'),
(190, '7960593786', '2026-01-06', '0000-00-00', 'open'),
(191, '8079496616', '2026-01-06', '0000-00-00', 'open'),
(192, '7981497910', '2026-01-06', '0000-00-00', 'open'),
(193, '4068599570', '2026-01-06', '0000-00-00', 'open'),
(194, '3538794216', '2026-01-06', '0000-00-00', 'open'),
(195, '7344692894', '2026-01-06', '0000-00-00', 'open'),
(196, '7465891998', '2026-01-06', '0000-00-00', 'open'),
(197, '3788396536', '2026-01-06', '0000-00-00', 'open'),
(198, '2909094933', '2026-01-06', '0000-00-00', 'open'),
(199, '6890796303', '2026-01-06', '0000-00-00', 'open'),
(200, '4947098585', '2026-01-06', '0000-00-00', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `id` int(11) NOT NULL,
  `grade_name` varchar(20) NOT NULL,
  `grade_point` varchar(11) NOT NULL,
  `mark_from` int(11) NOT NULL,
  `mark_upto` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pins`
--

CREATE TABLE `pins` (
  `id` int(11) NOT NULL,
  `pin_code` varchar(100) NOT NULL,
  `expire_date` date NOT NULL,
  `date_issued` date NOT NULL,
  `used_by` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `card_usage` int(10) NOT NULL,
  `card_availability` varchar(50) NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `name_of_student` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `exam` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `first_ca` int(11) NOT NULL,
  `second_ca` int(11) NOT NULL,
  `exam_score` int(11) NOT NULL,
  `school_year` varchar(100) NOT NULL,
  `current_school_session` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `name_of_student`, `class`, `exam`, `section`, `subject`, `first_ca`, `second_ca`, `exam_score`, `school_year`, `current_school_session`) VALUES
(1, 'Abubakar Fatima ', 'JSS 1', '1st Term', 'JSS 1A', 'Physical & Health Education', 15, 12, 51, '2026', '2025/2026'),
(2, 'Ahmad Habib ', 'JSS 1', '1st Term', 'JSS 1A', 'Physical & Health Education', 6, 15, 21, '2026', '2025/2026'),
(3, 'Gaddafi Aisha ', 'JSS 1', '1st Term', 'JSS 1A', 'Physical & Health Education', 4, 8, 43, '2026', '2025/2026'),
(4, 'Gaddafi Sani ', 'JSS 1', '1st Term', 'JSS 1A', 'Physical & Health Education', 4, 5, 32, '2026', '2025/2026'),
(5, 'Haruna Hauwau ', 'JSS 1', '1st Term', 'JSS 1A', 'Physical & Health Education', 12, 16, 51, '2026', '2025/2026'),
(6, 'Jibrin Hussaina ', 'JSS 1', '1st Term', 'JSS 1A', 'Physical & Health Education', 2, 12, 17, '2026', '2025/2026'),
(7, 'Jubrin Hassana ', 'JSS 1', '1st Term', 'JSS 1A', 'Physical & Health Education', 10, 12, 15, '2026', '2025/2026'),
(8, 'Nuraddeen Yakubu ', 'JSS 1', '1st Term', 'JSS 1A', 'Physical & Health Education', 4, 9, 19, '2026', '2025/2026'),
(9, 'Suleman Ummulkhairi ', 'JSS 1', '1st Term', 'JSS 1A', 'Physical & Health Education', 7, 13, 41, '2026', '2025/2026'),
(10, 'Usman Adam ', 'JSS 1', '1st Term', 'JSS 1A', 'Physical & Health Education', 4, 10, 34, '2026', '2025/2026'),
(11, 'Usman Hajara ', 'JSS 1', '1st Term', 'JSS 1A', 'Physical & Health Education', 12, 18, 58, '2026', '2025/2026'),
(12, 'Abubakar Fatima ', 'JSS 1', '1st Term', 'JSS 1A', 'Social studies', 10, 6, 53, '2026', '2025/2026'),
(13, 'Ahmad Habib ', 'JSS 1', '1st Term', 'JSS 1A', 'Social studies', 5, 10, 16, '2026', '2025/2026'),
(14, 'Gaddafi Aisha ', 'JSS 1', '1st Term', 'JSS 1A', 'Social studies', 2, 5, 21, '2026', '2025/2026'),
(15, 'Gaddafi Sani ', 'JSS 1', '1st Term', 'JSS 1A', 'Social studies', 3, 2, 12, '2026', '2025/2026'),
(16, 'Haruna Hauwau ', 'JSS 1', '1st Term', 'JSS 1A', 'Social studies', 10, 6, 54, '2026', '2025/2026'),
(17, 'Jibrin Hussaina ', 'JSS 1', '1st Term', 'JSS 1A', 'Social studies', 5, 10, 30, '2026', '2025/2026'),
(18, 'Jubrin Hassana ', 'JSS 1', '1st Term', 'JSS 1A', 'Social studies', 10, 5, 35, '2026', '2025/2026'),
(19, 'Nuraddeen Yakubu ', 'JSS 1', '1st Term', 'JSS 1A', 'Social studies', 5, 5, 15, '2026', '2025/2026'),
(20, 'Suleman Ummulkhairi ', 'JSS 1', '1st Term', 'JSS 1A', 'Social studies', 10, 10, 40, '2026', '2025/2026'),
(21, 'Usman Adam ', 'JSS 1', '1st Term', 'JSS 1A', 'Social studies', 4, 15, 14, '2026', '2025/2026'),
(22, 'Usman Hajara ', 'JSS 1', '1st Term', 'JSS 1A', 'Social studies', 10, 10, 50, '2026', '2025/2026'),
(23, 'Abubakar Fatima ', 'JSS 1', '1st Term', 'JSS 1A', 'Cultural & creative arts', 14, 15, 34, '2026', '2025/2026'),
(24, 'Ahmad Habib ', 'JSS 1', '1st Term', 'JSS 1A', 'Cultural & creative arts', 5, 15, 23, '2026', '2025/2026'),
(25, 'Gaddafi Aisha ', 'JSS 1', '1st Term', 'JSS 1A', 'Cultural & creative arts', 8, 15, 22, '2026', '2025/2026'),
(26, 'Gaddafi Sani ', 'JSS 1', '1st Term', 'JSS 1A', 'Cultural & creative arts', 10, 15, 15, '2026', '2025/2026'),
(27, 'Haruna Hauwau ', 'JSS 1', '1st Term', 'JSS 1A', 'Cultural & creative arts', 13, 15, 36, '2026', '2025/2026'),
(28, 'Jibrin Hussaina ', 'JSS 1', '1st Term', 'JSS 1A', 'Cultural & creative arts', 8, 15, 20, '2026', '2025/2026'),
(29, 'Jubrin Hassana ', 'JSS 1', '1st Term', 'JSS 1A', 'Cultural & creative arts', 12, 15, 22, '2026', '2025/2026'),
(30, 'Nuraddeen Yakubu ', 'JSS 1', '1st Term', 'JSS 1A', 'Cultural & creative arts', 13, 15, 22, '2026', '2025/2026'),
(31, 'Suleman Ummulkhairi ', 'JSS 1', '1st Term', 'JSS 1A', 'Cultural & creative arts', 13, 15, 32, '2026', '2025/2026'),
(32, 'Usman Adam ', 'JSS 1', '1st Term', 'JSS 1A', 'Cultural & creative arts', 10, 15, 15, '2026', '2025/2026'),
(33, 'Usman Hajara ', 'JSS 1', '1st Term', 'JSS 1A', 'Cultural & creative arts', 13, 15, 29, '2026', '2025/2026'),
(34, 'Abubakar Fatima ', 'JSS 1', '1st Term', 'JSS 1A', 'Basic Technology', 10, 10, 60, '2026', '2025/2026'),
(35, 'Ahmad Habib ', 'JSS 1', '1st Term', 'JSS 1A', 'Basic Technology', 10, 10, 57, '2026', '2025/2026'),
(36, 'Gaddafi Aisha ', 'JSS 1', '1st Term', 'JSS 1A', 'Basic Technology', 10, 10, 57, '2026', '2025/2026'),
(37, 'Gaddafi Sani ', 'JSS 1', '1st Term', 'JSS 1A', 'Basic Technology', 10, 10, 56, '2026', '2025/2026'),
(38, 'Haruna Hauwau ', 'JSS 1', '1st Term', 'JSS 1A', 'Basic Technology', 10, 10, 60, '2026', '2025/2026'),
(39, 'Jibrin Hussaina ', 'JSS 1', '1st Term', 'JSS 1A', 'Basic Technology', 10, 10, 59, '2026', '2025/2026'),
(40, 'Jubrin Hassana ', 'JSS 1', '1st Term', 'JSS 1A', 'Basic Technology', 10, 10, 59, '2026', '2025/2026'),
(41, 'Nuraddeen Yakubu ', 'JSS 1', '1st Term', 'JSS 1A', 'Basic Technology', 10, 10, 56, '2026', '2025/2026'),
(42, 'Suleman Ummulkhairi ', 'JSS 1', '1st Term', 'JSS 1A', 'Basic Technology', 10, 10, 59, '2026', '2025/2026'),
(43, 'Usman Adam ', 'JSS 1', '1st Term', 'JSS 1A', 'Basic Technology', 10, 10, 58, '2026', '2025/2026'),
(44, 'Usman Hajara ', 'JSS 1', '1st Term', 'JSS 1A', 'Basic Technology', 10, 10, 60, '2026', '2025/2026'),
(45, 'Abubakar Fatima ', 'JSS 1', '1st Term', 'JSS 1A', 'English Language', 11, 10, 32, '2026', '2025/2026'),
(46, 'Ahmad Habib ', 'JSS 1', '1st Term', 'JSS 1A', 'English Language', 4, 10, 22, '2026', '2025/2026'),
(47, 'Gaddafi Aisha ', 'JSS 1', '1st Term', 'JSS 1A', 'English Language', 7, 10, 15, '2026', '2025/2026'),
(48, 'Gaddafi Sani ', 'JSS 1', '1st Term', 'JSS 1A', 'English Language', 2, 10, 23, '2026', '2025/2026'),
(49, 'Haruna Hauwau ', 'JSS 1', '1st Term', 'JSS 1A', 'English Language', 11, 10, 16, '2026', '2025/2026'),
(50, 'Jibrin Hussaina ', 'JSS 1', '1st Term', 'JSS 1A', 'English Language', 6, 10, 6, '2026', '2025/2026'),
(51, 'Jubrin Hassana ', 'JSS 1', '1st Term', 'JSS 1A', 'English Language', 10, 4, 36, '2026', '2025/2026'),
(52, 'Nuraddeen Yakubu ', 'JSS 1', '1st Term', 'JSS 1A', 'English Language', 2, 10, 7, '2026', '2025/2026'),
(53, 'Suleman Ummulkhairi ', 'JSS 1', '1st Term', 'JSS 1A', 'English Language', 10, 4, 27, '2026', '2025/2026'),
(54, 'Usman Adam ', 'JSS 1', '1st Term', 'JSS 1A', 'English Language', 10, 9, 29, '2026', '2025/2026'),
(55, 'Usman Hajara ', 'JSS 1', '1st Term', 'JSS 1A', 'English Language', 6, 10, 31, '2026', '2025/2026'),
(56, 'Abubakar Fatima ', 'JSS 1', '1st Term', 'JSS 1A', 'Islamic Studies', 10, 15, 38, '2026', '2025/2026'),
(57, 'Ahmad Habib ', 'JSS 1', '1st Term', 'JSS 1A', 'Islamic Studies', 10, 15, 38, '2026', '2025/2026'),
(58, 'Gaddafi Aisha ', 'JSS 1', '1st Term', 'JSS 1A', 'Islamic Studies', 10, 15, 20, '2026', '2025/2026'),
(59, 'Gaddafi Sani ', 'JSS 1', '1st Term', 'JSS 1A', 'Islamic Studies', 5, 10, 20, '2026', '2025/2026'),
(60, 'Haruna Hauwau ', 'JSS 1', '1st Term', 'JSS 1A', 'Islamic Studies', 10, 15, 47, '2026', '2025/2026'),
(61, 'Jibrin Hussaina ', 'JSS 1', '1st Term', 'JSS 1A', 'Islamic Studies', 10, 14, 20, '2026', '2025/2026'),
(62, 'Jubrin Hassana ', 'JSS 1', '1st Term', 'JSS 1A', 'Islamic Studies', 10, 14, 20, '2026', '2025/2026'),
(63, 'Nuraddeen Yakubu ', 'JSS 1', '1st Term', 'JSS 1A', 'Islamic Studies', 10, 13, 20, '2026', '2025/2026'),
(64, 'Suleman Ummulkhairi ', 'JSS 1', '1st Term', 'JSS 1A', 'Islamic Studies', 10, 15, 23, '2026', '2025/2026'),
(65, 'Usman Adam ', 'JSS 1', '1st Term', 'JSS 1A', 'Islamic Studies', 10, 15, 20, '2026', '2025/2026'),
(66, 'Usman Hajara ', 'JSS 1', '1st Term', 'JSS 1A', 'Islamic Studies', 10, 15, 39, '2026', '2025/2026'),
(67, 'Abubakar Fatima ', 'JSS 1', '1st Term', 'JSS 1A', 'Home Economics', 20, 15, 41, '2026', '2025/2026'),
(68, 'Ahmad Habib ', 'JSS 1', '1st Term', 'JSS 1A', 'Home Economics', 15, 20, 16, '2026', '2025/2026'),
(69, 'Gaddafi Aisha ', 'JSS 1', '1st Term', 'JSS 1A', 'Home Economics', 15, 20, 8, '2026', '2025/2026'),
(70, 'Gaddafi Sani ', 'JSS 1', '1st Term', 'JSS 1A', 'Home Economics', 20, 15, 16, '2026', '2025/2026'),
(71, 'Haruna Hauwau ', 'JSS 1', '1st Term', 'JSS 1A', 'Home Economics', 15, 20, 42, '2026', '2025/2026'),
(72, 'Jibrin Hussaina ', 'JSS 1', '1st Term', 'JSS 1A', 'Home Economics', 20, 15, 27, '2026', '2025/2026'),
(73, 'Jubrin Hassana ', 'JSS 1', '1st Term', 'JSS 1A', 'Home Economics', 20, 15, 27, '2026', '2025/2026'),
(74, 'Nuraddeen Yakubu ', 'JSS 1', '1st Term', 'JSS 1A', 'Home Economics', 15, 20, 4, '2026', '2025/2026'),
(75, 'Suleman Ummulkhairi ', 'JSS 1', '1st Term', 'JSS 1A', 'Home Economics', 15, 20, 35, '2026', '2025/2026'),
(76, 'Usman Adam ', 'JSS 1', '1st Term', 'JSS 1A', 'Home Economics', 20, 15, 16, '2026', '2025/2026'),
(77, 'Usman Hajara ', 'JSS 1', '1st Term', 'JSS 1A', 'Home Economics', 15, 20, 55, '2026', '2025/2026'),
(78, 'Abubakar Fatima ', 'JSS 1', '1st Term', 'JSS 1A', 'Huasa Language', 20, 20, 49, '2026', '2025/2026'),
(79, 'Ahmad Habib ', 'JSS 1', '1st Term', 'JSS 1A', 'Huasa Language', 20, 7, 13, '2026', '2025/2026'),
(80, 'Gaddafi Aisha ', 'JSS 1', '1st Term', 'JSS 1A', 'Huasa Language', 18, 20, 23, '2026', '2025/2026'),
(81, 'Gaddafi Sani ', 'JSS 1', '1st Term', 'JSS 1A', 'Huasa Language', 20, 20, 28, '2026', '2025/2026'),
(82, 'Haruna Hauwau ', 'JSS 1', '1st Term', 'JSS 1A', 'Huasa Language', 20, 20, 46, '2026', '2025/2026'),
(83, 'Jibrin Hussaina ', 'JSS 1', '1st Term', 'JSS 1A', 'Huasa Language', 20, 16, 21, '2026', '2025/2026'),
(84, 'Jubrin Hassana ', 'JSS 1', '1st Term', 'JSS 1A', 'Huasa Language', 20, 16, 28, '2026', '2025/2026'),
(85, 'Nuraddeen Yakubu ', 'JSS 1', '1st Term', 'JSS 1A', 'Huasa Language', 20, 10, 13, '2026', '2025/2026'),
(86, 'Suleman Ummulkhairi ', 'JSS 1', '1st Term', 'JSS 1A', 'Huasa Language', 20, 13, 41, '2026', '2025/2026'),
(87, 'Usman Adam ', 'JSS 1', '1st Term', 'JSS 1A', 'Huasa Language', 20, 20, 37, '2026', '2025/2026'),
(88, 'Usman Hajara ', 'JSS 1', '1st Term', 'JSS 1A', 'Huasa Language', 15, 20, 56, '2026', '2025/2026'),
(89, 'Abubakar Fatima ', 'JSS 1', '1st Term', 'JSS 1A', 'Business Studies', 14, 12, 48, '2026', '2025/2026'),
(90, 'Ahmad Habib ', 'JSS 1', '1st Term', 'JSS 1A', 'Business Studies', 18, 10, 32, '2026', '2025/2026'),
(91, 'Gaddafi Aisha ', 'JSS 1', '1st Term', 'JSS 1A', 'Business Studies', 14, 10, 49, '2026', '2025/2026'),
(92, 'Gaddafi Sani ', 'JSS 1', '1st Term', 'JSS 1A', 'Business Studies', 17, 18, 30, '2026', '2025/2026'),
(93, 'Haruna Hauwau ', 'JSS 1', '1st Term', 'JSS 1A', 'Business Studies', 15, 13, 48, '2026', '2025/2026'),
(94, 'Jibrin Hussaina ', 'JSS 1', '1st Term', 'JSS 1A', 'Business Studies', 16, 11, 20, '2026', '2025/2026'),
(95, 'Jubrin Hassana ', 'JSS 1', '1st Term', 'JSS 1A', 'Business Studies', 0, 0, 0, '2026', '2025/2026'),
(96, 'Nuraddeen Yakubu ', 'JSS 1', '1st Term', 'JSS 1A', 'Business Studies', 11, 18, 25, '2026', '2025/2026'),
(97, 'Suleman Ummulkhairi ', 'JSS 1', '1st Term', 'JSS 1A', 'Business Studies', 15, 15, 30, '2026', '2025/2026'),
(98, 'Usman Adam ', 'JSS 1', '1st Term', 'JSS 1A', 'Business Studies', 16, 9, 30, '2026', '2025/2026'),
(99, 'Usman Hajara ', 'JSS 1', '1st Term', 'JSS 1A', 'Business Studies', 18, 10, 57, '2026', '2025/2026'),
(100, 'Abdullahi Aminu ', 'JSS 2', '1st Term', 'JSS 2A', 'Physical & Health Education', 6, 8, 26, '2026', '2025/2026'),
(101, 'Abida Habib ', 'JSS 2', '1st Term', 'JSS 2A', 'Physical & Health Education', 3, 15, 14, '2026', '2025/2026'),
(102, 'Abubakar Ladan ', 'JSS 2', '1st Term', 'JSS 2A', 'Physical & Health Education', 12, 15, 33, '2026', '2025/2026'),
(103, 'Auwal Hafisat ', 'JSS 2', '1st Term', 'JSS 2A', 'Physical & Health Education', 6, 8, 6, '2026', '2025/2026'),
(104, 'Emmanuel Melody ', 'JSS 2', '1st Term', 'JSS 2A', 'Physical & Health Education', 10, 15, 33, '2026', '2025/2026'),
(105, 'Hassan Habib ', 'JSS 2', '1st Term', 'JSS 2A', 'Physical & Health Education', 10, 15, 26, '2026', '2025/2026'),
(106, 'Idris Rukayya ', 'JSS 2', '1st Term', 'JSS 2A', 'Physical & Health Education', 2, 15, 17, '2026', '2025/2026'),
(107, 'Muhammad Sabir ', 'JSS 2', '1st Term', 'JSS 2A', 'Physical & Health Education', 12, 12, 19, '2026', '2025/2026'),
(108, 'Muhammad Sumayya ', 'JSS 2', '1st Term', 'JSS 2A', 'Physical & Health Education', 11, 15, 37, '2026', '2025/2026'),
(109, 'Saheed Zainab ', 'JSS 2', '1st Term', 'JSS 2A', 'Physical & Health Education', 2, 15, 16, '2026', '2025/2026'),
(110, 'Ummulkhairi Yusuf ', 'JSS 2', '1st Term', 'JSS 2A', 'Physical & Health Education', 13, 15, 36, '2026', '2025/2026'),
(111, 'Usman Rabiu ', 'JSS 2', '1st Term', 'JSS 2A', 'Physical & Health Education', 13, 12, 38, '2026', '2025/2026'),
(112, 'Abdurrahman Sani ', 'JSS 3', '1st Term', 'JSS 3A', 'Cultural & creative arts', 10, 15, 27, '2026', '2025/2026'),
(113, 'Danjuma Jabir ', 'JSS 3', '1st Term', 'JSS 3A', 'Cultural & creative arts', 14, 15, 0, '2026', '2025/2026'),
(114, 'Muhammad Yahaya ', 'JSS 3', '1st Term', 'JSS 3A', 'Cultural & creative arts', 14, 15, 55, '2026', '2025/2026'),
(115, 'Muhammad Yasir ', 'JSS 3', '1st Term', 'JSS 3A', 'Cultural & creative arts', 10, 10, 25, '2026', '2025/2026'),
(116, 'Owolabi Khairat ', 'JSS 3', '1st Term', 'JSS 3A', 'Cultural & creative arts', 14, 15, 34, '2026', '2025/2026'),
(117, 'Sharafadeen Nafisat ', 'JSS 3', '1st Term', 'JSS 3A', 'Cultural & creative arts', 10, 15, 34, '2026', '2025/2026'),
(118, 'Suleman Abdullahi ', 'JSS 3', '1st Term', 'JSS 3A', 'Cultural & creative arts', 10, 10, 30, '2026', '2025/2026'),
(119, 'Suleman Hauwau ', 'JSS 3', '1st Term', 'JSS 3A', 'Cultural & creative arts', 14, 15, 39, '2026', '2025/2026'),
(120, 'Ummus Salma Fadlu', 'JSS 3', '1st Term', 'JSS 3A', 'Cultural & creative arts', 10, 10, 39, '2026', '2025/2026'),
(121, 'Zakari Jabrin ', 'JSS 3', '1st Term', 'JSS 3A', 'Cultural & creative arts', 10, 15, 26, '2026', '2025/2026'),
(122, 'Abdurrahman Sani ', 'JSS 3', '1st Term', 'JSS 3A', 'Civic Education', 10, 10, 48, '2026', '2025/2026'),
(123, 'Danjuma Jabir ', 'JSS 3', '1st Term', 'JSS 3A', 'Civic Education', 10, 5, 0, '2026', '2025/2026'),
(124, 'Muhammad Yahaya ', 'JSS 3', '1st Term', 'JSS 3A', 'Civic Education', 10, 10, 38, '2026', '2025/2026'),
(125, 'Muhammad Yasir ', 'JSS 3', '1st Term', 'JSS 3A', 'Civic Education', 5, 5, 30, '2026', '2025/2026'),
(126, 'Owolabi Khairat ', 'JSS 3', '1st Term', 'JSS 3A', 'Civic Education', 10, 10, 50, '2026', '2025/2026'),
(127, 'Sharafadeen Nafisat ', 'JSS 3', '1st Term', 'JSS 3A', 'Civic Education', 5, 10, 50, '2026', '2025/2026'),
(128, 'Suleman Abdullahi ', 'JSS 3', '1st Term', 'JSS 3A', 'Civic Education', 10, 5, 22, '2026', '2025/2026'),
(129, 'Suleman Hauwau ', 'JSS 3', '1st Term', 'JSS 3A', 'Civic Education', 5, 5, 41, '2026', '2025/2026'),
(130, 'Ummus Salma Fadlu', 'JSS 3', '1st Term', 'JSS 3A', 'Civic Education', 8, 5, 40, '2026', '2025/2026'),
(131, 'Zakari Jabrin ', 'JSS 3', '1st Term', 'JSS 3A', 'Civic Education', 5, 5, 14, '2026', '2025/2026'),
(132, 'Yasir Abdullahi ', 'JSS 3', '1st Term', 'JSS 3A', 'Civic Education', 5, 5, 12, '2026', '2025/2026'),
(133, 'Yasir Abdullahi ', 'JSS 3', '1st Term', 'JSS 3A', 'Cultural & creative arts', 10, 10, 25, '2026', '2025/2026'),
(134, 'Abdurrahman Sani ', 'JSS 3', '1st Term', 'JSS 3A', 'Basic Tecnology', 13, 15, 40, '2026', '2025/2026'),
(135, 'Danjuma Jabir ', 'JSS 3', '1st Term', 'JSS 3A', 'Basic Tecnology', 11, 15, 0, '2026', '2025/2026'),
(136, 'Muhammad Yahaya ', 'JSS 3', '1st Term', 'JSS 3A', 'Basic Tecnology', 10, 15, 18, '2026', '2025/2026'),
(137, 'Muhammad Yasir ', 'JSS 3', '1st Term', 'JSS 3A', 'Basic Tecnology', 0, 0, 0, '2026', '2025/2026'),
(138, 'Owolabi Khairat ', 'JSS 3', '1st Term', 'JSS 3A', 'Basic Tecnology', 13, 15, 50, '2026', '2025/2026'),
(139, 'Sharafadeen Nafisat ', 'JSS 3', '1st Term', 'JSS 3A', 'Basic Tecnology', 15, 15, 42, '2026', '2025/2026'),
(140, 'Suleman Abdullahi ', 'JSS 3', '1st Term', 'JSS 3A', 'Basic Tecnology', 10, 15, 22, '2026', '2025/2026'),
(141, 'Suleman Hauwau ', 'JSS 3', '1st Term', 'JSS 3A', 'Basic Tecnology', 13, 15, 50, '2026', '2025/2026'),
(142, 'Ummus Salma Fadlu', 'JSS 3', '1st Term', 'JSS 3A', 'Basic Tecnology', 12, 15, 50, '2026', '2025/2026'),
(143, 'Yasir Abdullahi ', 'JSS 3', '1st Term', 'JSS 3A', 'Basic Tecnology', 10, 15, 27, '2026', '2025/2026'),
(144, 'Zakari Jabrin ', 'JSS 3', '1st Term', 'JSS 3A', 'Basic Tecnology', 7, 15, 20, '2026', '2025/2026'),
(145, 'Abdurrahman Sani ', 'JSS 3', '1st Term', 'JSS 3A', 'Social studies', 5, 10, 48, '2026', '2025/2026'),
(146, 'Danjuma Jabir ', 'JSS 3', '1st Term', 'JSS 3A', 'Social studies', 8, 5, 0, '2026', '2025/2026'),
(147, 'Muhammad Yahaya ', 'JSS 3', '1st Term', 'JSS 3A', 'Social studies', 10, 5, 34, '2026', '2025/2026'),
(148, 'Muhammad Yasir ', 'JSS 3', '1st Term', 'JSS 3A', 'Social studies', 5, 5, 34, '2026', '2025/2026'),
(149, 'Owolabi Khairat ', 'JSS 3', '1st Term', 'JSS 3A', 'Social studies', 10, 10, 26, '2026', '2025/2026'),
(150, 'Sharafadeen Nafisat ', 'JSS 3', '1st Term', 'JSS 3A', 'Social studies', 10, 5, 52, '2026', '2025/2026'),
(151, 'Suleman Abdullahi ', 'JSS 3', '1st Term', 'JSS 3A', 'Social studies', 10, 5, 18, '2026', '2025/2026'),
(152, 'Suleman Hauwau ', 'JSS 3', '1st Term', 'JSS 3A', 'Social studies', 10, 10, 49, '2026', '2025/2026'),
(153, 'Ummus Salma Fadlu', 'JSS 3', '1st Term', 'JSS 3A', 'Social studies', 10, 5, 52, '2026', '2025/2026'),
(154, 'Yasir Abdullahi ', 'JSS 3', '1st Term', 'JSS 3A', 'Social studies', 5, 5, 12, '2026', '2025/2026'),
(155, 'Zakari Jabrin ', 'JSS 3', '1st Term', 'JSS 3A', 'Social studies', 2, 5, 15, '2026', '2025/2026'),
(156, 'Abdurrahman Sani ', 'JSS 3', '1st Term', 'JSS 3A', 'Physical & Health Education', 12, 17, 24, '2026', '2025/2026'),
(157, 'Danjuma Jabir ', 'JSS 3', '1st Term', 'JSS 3A', 'Physical & Health Education', 14, 9, 0, '2026', '2025/2026'),
(158, 'Muhammad Yahaya ', 'JSS 3', '1st Term', 'JSS 3A', 'Physical & Health Education', 17, 11, 43, '2026', '2025/2026'),
(159, 'Muhammad Yasir ', 'JSS 3', '1st Term', 'JSS 3A', 'Physical & Health Education', 4, 8, 10, '2026', '2025/2026'),
(160, 'Owolabi Khairat ', 'JSS 3', '1st Term', 'JSS 3A', 'Physical & Health Education', 12, 15, 51, '2026', '2025/2026'),
(161, 'Sharafadeen Nafisat ', 'JSS 3', '1st Term', 'JSS 3A', 'Physical & Health Education', 5, 15, 40, '2026', '2025/2026'),
(162, 'Suleman Abdullahi ', 'JSS 3', '1st Term', 'JSS 3A', 'Physical & Health Education', 3, 11, 22, '2026', '2025/2026'),
(163, 'Suleman Hauwau ', 'JSS 3', '1st Term', 'JSS 3A', 'Physical & Health Education', 8, 15, 28, '2026', '2025/2026'),
(164, 'Ummus Salma Fadlu', 'JSS 3', '1st Term', 'JSS 3A', 'Physical & Health Education', 14, 15, 41, '2026', '2025/2026'),
(165, 'Yasir Abdullahi ', 'JSS 3', '1st Term', 'JSS 3A', 'Physical & Health Education', 0, 0, 0, '2026', '2025/2026'),
(166, 'Zakari Jabrin ', 'JSS 3', '1st Term', 'JSS 3A', 'Physical & Health Education', 2, 11, 12, '2026', '2025/2026'),
(167, 'Abdullahi Aminu ', 'JSS 2', '1st Term', 'JSS 2A', 'Basic Tecnology', 9, 17, 27, '2026', '2025/2026'),
(168, 'Abida Habib ', 'JSS 2', '1st Term', 'JSS 2A', 'Basic Tecnology', 10, 15, 15, '2026', '2025/2026'),
(169, 'Abubakar Ladan ', 'JSS 2', '1st Term', 'JSS 2A', 'Basic Tecnology', 9, 17, 40, '2026', '2025/2026'),
(170, 'Auwal Hafisat ', 'JSS 2', '1st Term', 'JSS 2A', 'Basic Tecnology', 4, 15, 25, '2026', '2025/2026'),
(171, 'Emmanuel Melody ', 'JSS 2', '1st Term', 'JSS 2A', 'Basic Tecnology', 9, 17, 20, '2026', '2025/2026'),
(172, 'Hassan Habib ', 'JSS 2', '1st Term', 'JSS 2A', 'Basic Tecnology', 4, 17, 24, '2026', '2025/2026'),
(173, 'Idris Rukayya ', 'JSS 2', '1st Term', 'JSS 2A', 'Basic Tecnology', 7, 13, 15, '2026', '2025/2026'),
(174, 'Muhammad Sabir ', 'JSS 2', '1st Term', 'JSS 2A', 'Basic Tecnology', 8, 17, 35, '2026', '2025/2026'),
(175, 'Muhammad Sumayya ', 'JSS 2', '1st Term', 'JSS 2A', 'Basic Tecnology', 10, 17, 46, '2026', '2025/2026'),
(176, 'Saheed Zainab ', 'JSS 2', '1st Term', 'JSS 2A', 'Basic Tecnology', 4, 17, 25, '2026', '2025/2026'),
(177, 'Ummulkhairi Yusuf ', 'JSS 2', '1st Term', 'JSS 2A', 'Basic Tecnology', 4, 17, 30, '2026', '2025/2026'),
(178, 'Usman Rabiu ', 'JSS 2', '1st Term', 'JSS 2A', 'Basic Tecnology', 6, 17, 30, '2026', '2025/2026'),
(179, 'Abdullahi Aminu ', 'JSS 2', '1st Term', 'JSS 2A', 'Cultural & creative arts', 10, 14, 33, '2026', '2025/2026'),
(180, 'Abida Habib ', 'JSS 2', '1st Term', 'JSS 2A', 'Cultural & creative arts', 10, 12, 37, '2026', '2025/2026'),
(181, 'Abubakar Ladan ', 'JSS 2', '1st Term', 'JSS 2A', 'Cultural & creative arts', 15, 15, 38, '2026', '2025/2026'),
(182, 'Auwal Hafisat ', 'JSS 2', '1st Term', 'JSS 2A', 'Cultural & creative arts', 10, 13, 40, '2026', '2025/2026'),
(183, 'Emmanuel Melody ', 'JSS 2', '1st Term', 'JSS 2A', 'Cultural & creative arts', 10, 15, 42, '2026', '2025/2026'),
(184, 'Hassan Habib ', 'JSS 2', '1st Term', 'JSS 2A', 'Cultural & creative arts', 8, 13, 30, '2026', '2025/2026'),
(185, 'Idris Rukayya ', 'JSS 2', '1st Term', 'JSS 2A', 'Cultural & creative arts', 10, 13, 38, '2026', '2025/2026'),
(186, 'Muhammad Sabir ', 'JSS 2', '1st Term', 'JSS 2A', 'Cultural & creative arts', 15, 13, 33, '2026', '2025/2026'),
(187, 'Muhammad Sumayya ', 'JSS 2', '1st Term', 'JSS 2A', 'Cultural & creative arts', 15, 15, 40, '2026', '2025/2026'),
(188, 'Saheed Zainab ', 'JSS 2', '1st Term', 'JSS 2A', 'Cultural & creative arts', 15, 15, 40, '2026', '2025/2026'),
(189, 'Ummulkhairi Yusuf ', 'JSS 2', '1st Term', 'JSS 2A', 'Cultural & creative arts', 15, 15, 35, '2026', '2025/2026'),
(190, 'Usman Rabiu ', 'JSS 2', '1st Term', 'JSS 2A', 'Cultural & creative arts', 15, 14, 32, '2026', '2025/2026'),
(191, 'Abdullahi Aminu ', 'JSS 2', '1st Term', 'JSS 2A', 'English Language', 13, 14, 18, '2026', '2025/2026'),
(192, 'Abida Habib ', 'JSS 2', '1st Term', 'JSS 2A', 'English Language', 9, 10, 41, '2026', '2025/2026'),
(193, 'Abubakar Ladan ', 'JSS 2', '1st Term', 'JSS 2A', 'English Language', 12, 10, 43, '2026', '2025/2026'),
(194, 'Auwal Hafisat ', 'JSS 2', '1st Term', 'JSS 2A', 'English Language', 5, 5, 48, '2026', '2025/2026'),
(195, 'Emmanuel Melody ', 'JSS 2', '1st Term', 'JSS 2A', 'English Language', 10, 9, 20, '2026', '2025/2026'),
(196, 'Hassan Habib ', 'JSS 2', '1st Term', 'JSS 2A', 'English Language', 7, 10, 32, '2026', '2025/2026'),
(197, 'Idris Rukayya ', 'JSS 2', '1st Term', 'JSS 2A', 'English Language', 10, 10, 48, '2026', '2025/2026'),
(198, 'Muhammad Sabir ', 'JSS 2', '1st Term', 'JSS 2A', 'English Language', 11, 12, 18, '2026', '2025/2026'),
(199, 'Muhammad Sumayya ', 'JSS 2', '1st Term', 'JSS 2A', 'English Language', 13, 0, 0, '2026', '2025/2026'),
(200, 'Saheed Zainab ', 'JSS 2', '1st Term', 'JSS 2A', 'English Language', 10, 9, 26, '2026', '2025/2026'),
(201, 'Ummulkhairi Yusuf ', 'JSS 2', '1st Term', 'JSS 2A', 'English Language', 12, 10, 48, '2026', '2025/2026'),
(202, 'Usman Rabiu ', 'JSS 2', '1st Term', 'JSS 2A', 'English Language', 0, 0, 0, '2026', '2025/2026'),
(203, 'Abdullahi Aminu ', 'JSS 2', '1st Term', 'JSS 2A', 'Islamic Studies', 10, 10, 35, '2026', '2025/2026'),
(204, 'Abida Habib ', 'JSS 2', '1st Term', 'JSS 2A', 'Islamic Studies', 10, 15, 25, '2026', '2025/2026'),
(205, 'Abubakar Ladan ', 'JSS 2', '1st Term', 'JSS 2A', 'Islamic Studies', 15, 10, 55, '2026', '2025/2026'),
(206, 'Auwal Hafisat ', 'JSS 2', '1st Term', 'JSS 2A', 'Islamic Studies', 10, 10, 30, '2026', '2025/2026'),
(207, 'Emmanuel Melody ', 'JSS 2', '1st Term', 'JSS 2A', 'Islamic Studies', 0, 0, 0, '2026', '2025/2026'),
(208, 'Hassan Habib ', 'JSS 2', '1st Term', 'JSS 2A', 'Islamic Studies', 15, 14, 50, '2026', '2025/2026'),
(209, 'Idris Rukayya ', 'JSS 2', '1st Term', 'JSS 2A', 'Islamic Studies', 10, 15, 25, '2026', '2025/2026'),
(210, 'Muhammad Sabir ', 'JSS 2', '1st Term', 'JSS 2A', 'Islamic Studies', 15, 13, 50, '2026', '2025/2026'),
(211, 'Muhammad Sumayya ', 'JSS 2', '1st Term', 'JSS 2A', 'Islamic Studies', 10, 12, 55, '2026', '2025/2026'),
(212, 'Saheed Zainab ', 'JSS 2', '1st Term', 'JSS 2A', 'Islamic Studies', 10, 10, 45, '2026', '2025/2026'),
(213, 'Ummulkhairi Yusuf ', 'JSS 2', '1st Term', 'JSS 2A', 'Islamic Studies', 10, 15, 55, '2026', '2025/2026'),
(214, 'Usman Rabiu ', 'JSS 2', '1st Term', 'JSS 2A', 'Islamic Studies', 15, 15, 50, '2026', '2025/2026'),
(215, 'Abdullahi Aminu ', 'JSS 2', '1st Term', 'JSS 2A', 'Business Studies', 8, 18, 31, '2026', '2025/2026'),
(216, 'Abida Habib ', 'JSS 2', '1st Term', 'JSS 2A', 'Business Studies', 13, 11, 45, '2026', '2025/2026'),
(217, 'Abubakar Ladan ', 'JSS 2', '1st Term', 'JSS 2A', 'Business Studies', 1, 1, 1, '2026', '2025/2026'),
(218, 'Auwal Hafisat ', 'JSS 2', '1st Term', 'JSS 2A', 'Business Studies', 12, 10, 42, '2026', '2025/2026'),
(219, 'Emmanuel Melody ', 'JSS 2', '1st Term', 'JSS 2A', 'Business Studies', 16, 12, 48, '2026', '2025/2026'),
(220, 'Hassan Habib ', 'JSS 2', '1st Term', 'JSS 2A', 'Business Studies', 10, 16, 45, '2026', '2025/2026'),
(221, 'Idris Rukayya ', 'JSS 2', '1st Term', 'JSS 2A', 'Business Studies', 14, 14, 48, '2026', '2025/2026'),
(222, 'Muhammad Sabir ', 'JSS 2', '1st Term', 'JSS 2A', 'Business Studies', 1, 1, 1, '2026', '2025/2026'),
(223, 'Muhammad Sumayya ', 'JSS 2', '1st Term', 'JSS 2A', 'Business Studies', 12, 14, 60, '2026', '2025/2026'),
(224, 'Saheed Zainab ', 'JSS 2', '1st Term', 'JSS 2A', 'Business Studies', 16, 11, 48, '2026', '2025/2026'),
(225, 'Ummulkhairi Yusuf ', 'JSS 2', '1st Term', 'JSS 2A', 'Business Studies', 14, 15, 48, '2026', '2025/2026'),
(226, 'Usman Rabiu ', 'JSS 2', '1st Term', 'JSS 2A', 'Business Studies', 10, 17, 54, '2026', '2025/2026'),
(227, 'Abdurrahman Sani ', 'JSS 3', '1st Term', 'JSS 3A', 'English Language', 10, 10, 17, '2026', '2025/2026'),
(228, 'Danjuma Jabir ', 'JSS 3', '1st Term', 'JSS 3A', 'English Language', 12, 10, 0, '2026', '2025/2026'),
(229, 'Muhammad Yahaya ', 'JSS 3', '1st Term', 'JSS 3A', 'English Language', 12, 10, 21, '2026', '2025/2026'),
(230, 'Owolabi Khairat ', 'JSS 3', '1st Term', 'JSS 3A', 'English Language', 6, 10, 25, '2026', '2025/2026'),
(231, 'Sharafadeen Nafisat ', 'JSS 3', '1st Term', 'JSS 3A', 'English Language', 11, 10, 22, '2026', '2025/2026'),
(232, 'Suleman Abdullahi ', 'JSS 3', '1st Term', 'JSS 3A', 'English Language', 13, 10, 18, '2026', '2025/2026'),
(233, 'Suleman Hauwau ', 'JSS 3', '1st Term', 'JSS 3A', 'English Language', 8, 10, 26, '2026', '2025/2026'),
(234, 'Ummus Salma Fadlu', 'JSS 3', '1st Term', 'JSS 3A', 'English Language', 10, 10, 37, '2026', '2025/2026'),
(235, 'Yasir Abdullahi ', 'JSS 3', '1st Term', 'JSS 3A', 'English Language', 8, 10, 14, '2026', '2025/2026'),
(236, 'Zakari Jabrin ', 'JSS 3', '1st Term', 'JSS 3A', 'English Language', 8, 10, 14, '2026', '2025/2026'),
(237, 'Abdurrahman Sani ', 'JSS 3', '1st Term', 'JSS 3A', 'Business Studies', 10, 10, 52, '2026', '2025/2026'),
(238, 'Danjuma Jabir ', 'JSS 3', '1st Term', 'JSS 3A', 'Business Studies', 1, 1, 1, '2026', '2025/2026'),
(239, 'Muhammad Yahaya ', 'JSS 3', '1st Term', 'JSS 3A', 'Business Studies', 13, 10, 51, '2026', '2025/2026'),
(240, 'Owolabi Khairat ', 'JSS 3', '1st Term', 'JSS 3A', 'Business Studies', 16, 15, 49, '2026', '2025/2026'),
(241, 'Sharafadeen Nafisat ', 'JSS 3', '1st Term', 'JSS 3A', 'Business Studies', 11, 14, 54, '2026', '2025/2026'),
(242, 'Suleman Abdullahi ', 'JSS 3', '1st Term', 'JSS 3A', 'Business Studies', 14, 11, 42, '2026', '2025/2026'),
(243, 'Suleman Hauwau ', 'JSS 3', '1st Term', 'JSS 3A', 'Business Studies', 14, 10, 49, '2026', '2025/2026'),
(244, 'Ummus Salma Fadlu', 'JSS 3', '1st Term', 'JSS 3A', 'Business Studies', 11, 16, 43, '2026', '2025/2026'),
(245, 'Yasir Abdullahi ', 'JSS 3', '1st Term', 'JSS 3A', 'Business Studies', 8, 9, 32, '2026', '2025/2026'),
(246, 'Zakari Jabrin ', 'JSS 3', '1st Term', 'JSS 3A', 'Business Studies', 13, 9, 43, '2026', '2025/2026'),
(247, 'Abdurrahman Sani ', 'JSS 3', '1st Term', 'JSS 3A', 'Islamic Studies', 15, 15, 55, '2026', '2025/2026'),
(248, 'Danjuma Jabir ', 'JSS 3', '1st Term', 'JSS 3A', 'Islamic Studies', 15, 10, 55, '2026', '2025/2026'),
(249, 'Muhammad Yahaya ', 'JSS 3', '1st Term', 'JSS 3A', 'Islamic Studies', 20, 20, 55, '2026', '2025/2026'),
(250, 'Owolabi Khairat ', 'JSS 3', '1st Term', 'JSS 3A', 'Islamic Studies', 10, 10, 55, '2026', '2025/2026'),
(251, 'Sharafadeen Nafisat ', 'JSS 3', '1st Term', 'JSS 3A', 'Islamic Studies', 20, 15, 55, '2026', '2025/2026'),
(252, 'Suleman Abdullahi ', 'JSS 3', '1st Term', 'JSS 3A', 'Islamic Studies', 15, 15, 55, '2026', '2025/2026'),
(253, 'Suleman Hauwau ', 'JSS 3', '1st Term', 'JSS 3A', 'Islamic Studies', 20, 20, 55, '2026', '2025/2026'),
(254, 'Ummus Salma Fadlu', 'JSS 3', '1st Term', 'JSS 3A', 'Islamic Studies', 20, 17, 55, '2026', '2025/2026'),
(255, 'Yasir Abdullahi ', 'JSS 3', '1st Term', 'JSS 3A', 'Islamic Studies', 0, 0, 0, '2026', '2025/2026'),
(256, 'Zakari Jabrin ', 'JSS 3', '1st Term', 'JSS 3A', 'Islamic Studies', 10, 10, 55, '2026', '2025/2026'),
(257, 'Abdullahi Aminu ', 'JSS 2', '1st Term', 'JSS 2A', 'C. R. S', 0, 0, 0, '2026', '2025/2026'),
(258, 'Abida Habib ', 'JSS 2', '1st Term', 'JSS 2A', 'C. R. S', 0, 0, 0, '2026', '2025/2026'),
(259, 'Abubakar Ladan ', 'JSS 2', '1st Term', 'JSS 2A', 'C. R. S', 0, 0, 0, '2026', '2025/2026'),
(260, 'Auwal Hafisat ', 'JSS 2', '1st Term', 'JSS 2A', 'C. R. S', 0, 0, 0, '2026', '2025/2026'),
(261, 'Emmanuel Melody ', 'JSS 2', '1st Term', 'JSS 2A', 'C. R. S', 10, 10, 25, '2026', '2025/2026'),
(262, 'Hassan Habib ', 'JSS 2', '1st Term', 'JSS 2A', 'C. R. S', 0, 0, 0, '2026', '2025/2026'),
(263, 'Idris Rukayya ', 'JSS 2', '1st Term', 'JSS 2A', 'C. R. S', 0, 0, 0, '2026', '2025/2026'),
(264, 'Muhammad Sabir ', 'JSS 2', '1st Term', 'JSS 2A', 'C. R. S', 0, 0, 0, '2026', '2025/2026'),
(265, 'Muhammad Sumayya ', 'JSS 2', '1st Term', 'JSS 2A', 'C. R. S', 0, 0, 0, '2026', '2025/2026'),
(266, 'Saheed Zainab ', 'JSS 2', '1st Term', 'JSS 2A', 'C. R. S', 0, 0, 0, '2026', '2025/2026'),
(267, 'Ummulkhairi Yusuf ', 'JSS 2', '1st Term', 'JSS 2A', 'C. R. S', 0, 0, 0, '2026', '2025/2026'),
(268, 'Usman Rabiu ', 'JSS 2', '1st Term', 'JSS 2A', 'C. R. S', 0, 0, 0, '2026', '2025/2026'),
(269, 'Abubakar Fatima ', 'JSS 1', '1st Term', 'JSS 1A', 'Civic Education', 10, 5, 54, '2026', '2025/2026'),
(270, 'Ahmad Habib ', 'JSS 1', '1st Term', 'JSS 1A', 'Civic Education', 5, 5, 42, '2026', '2025/2026'),
(271, 'Gaddafi Aisha ', 'JSS 1', '1st Term', 'JSS 1A', 'Civic Education', 5, 4, 46, '2026', '2025/2026'),
(272, 'Gaddafi Sani ', 'JSS 1', '1st Term', 'JSS 1A', 'Civic Education', 5, 2, 26, '2026', '2025/2026'),
(273, 'Haruna Hauwau ', 'JSS 1', '1st Term', 'JSS 1A', 'Civic Education', 10, 4, 56, '2026', '2025/2026'),
(274, 'Jibrin Hussaina ', 'JSS 1', '1st Term', 'JSS 1A', 'Civic Education', 5, 10, 48, '2026', '2025/2026'),
(275, 'Jubrin Hassana ', 'JSS 1', '1st Term', 'JSS 1A', 'Civic Education', 5, 10, 48, '2026', '2025/2026'),
(276, 'Nuraddeen Yakubu ', 'JSS 1', '1st Term', 'JSS 1A', 'Civic Education', 5, 5, 15, '2026', '2025/2026'),
(277, 'Suleman Ummulkhairi ', 'JSS 1', '1st Term', 'JSS 1A', 'Civic Education', 10, 10, 46, '2026', '2025/2026'),
(278, 'Usman Adam ', 'JSS 1', '1st Term', 'JSS 1A', 'Civic Education', 5, 3, 28, '2026', '2025/2026'),
(279, 'Usman Hajara ', 'JSS 1', '1st Term', 'JSS 1A', 'Civic Education', 5, 5, 58, '2026', '2025/2026'),
(280, 'Abdurrahman Sani ', 'JSS 3', '1st Term', 'JSS 3A', 'Computer', 13, 15, 40, '2026', '2025/2026'),
(281, 'Danjuma Jabir ', 'JSS 3', '1st Term', 'JSS 3A', 'Computer', 11, 15, 1, '2026', '2025/2026'),
(282, 'Muhammad Yahaya ', 'JSS 3', '1st Term', 'JSS 3A', 'Computer', 10, 15, 18, '2026', '2025/2026'),
(283, 'Owolabi Khairat ', 'JSS 3', '1st Term', 'JSS 3A', 'Computer', 13, 15, 50, '2026', '2025/2026'),
(284, 'Sharafadeen Nafisat ', 'JSS 3', '1st Term', 'JSS 3A', 'Computer', 15, 15, 42, '2026', '2025/2026'),
(285, 'Suleman Abdullahi ', 'JSS 3', '1st Term', 'JSS 3A', 'Computer', 10, 15, 22, '2026', '2025/2026'),
(286, 'Suleman Hauwau ', 'JSS 3', '1st Term', 'JSS 3A', 'Computer', 13, 15, 50, '2026', '2025/2026'),
(287, 'Ummus Salma Fadlu', 'JSS 3', '1st Term', 'JSS 3A', 'Computer', 12, 15, 50, '2026', '2025/2026'),
(288, 'Yasir Abdullahi ', 'JSS 3', '1st Term', 'JSS 3A', 'Computer', 10, 15, 27, '2026', '2025/2026'),
(289, 'Zakari Jabrin ', 'JSS 3', '1st Term', 'JSS 3A', 'Computer', 7, 15, 20, '2026', '2025/2026'),
(290, 'Abdurrahman Sani ', 'JSS 3', '1st Term', 'JSS 3A', 'Home Economics', 20, 15, 18, '2026', '2025/2026'),
(291, 'Danjuma Jabir ', 'JSS 3', '1st Term', 'JSS 3A', 'Home Economics', 0, 0, 0, '2026', '2025/2026'),
(292, 'Muhammad Yahaya ', 'JSS 3', '1st Term', 'JSS 3A', 'Home Economics', 15, 20, 12, '2026', '2025/2026'),
(293, 'Owolabi Khairat ', 'JSS 3', '1st Term', 'JSS 3A', 'Home Economics', 15, 20, 15, '2026', '2025/2026'),
(294, 'Sharafadeen Nafisat ', 'JSS 3', '1st Term', 'JSS 3A', 'Home Economics', 20, 20, 18, '2026', '2025/2026'),
(295, 'Suleman Abdullahi ', 'JSS 3', '1st Term', 'JSS 3A', 'Home Economics', 15, 20, 10, '2026', '2025/2026'),
(296, 'Suleman Hauwau ', 'JSS 3', '1st Term', 'JSS 3A', 'Home Economics', 15, 20, 14, '2026', '2025/2026'),
(297, 'Ummus Salma Fadlu', 'JSS 3', '1st Term', 'JSS 3A', 'Home Economics', 20, 15, 18, '2026', '2025/2026'),
(298, 'Yasir Abdullahi ', 'JSS 3', '1st Term', 'JSS 3A', 'Home Economics', 20, 15, 10, '2026', '2025/2026'),
(299, 'Zakari Jabrin ', 'JSS 3', '1st Term', 'JSS 3A', 'Home Economics', 15, 20, 12, '2026', '2025/2026'),
(300, 'Abdullahi Aminu ', 'JSS 2', '1st Term', 'JSS 2A', 'Home Economics', 10, 15, 22, '2026', '2025/2026'),
(301, 'Abida Habib ', 'JSS 2', '1st Term', 'JSS 2A', 'Home Economics', 10, 15, 27, '2026', '2025/2026'),
(302, 'Abubakar Ladan ', 'JSS 2', '1st Term', 'JSS 2A', 'Home Economics', 10, 15, 26, '2026', '2025/2026'),
(303, 'Auwal Hafisat ', 'JSS 2', '1st Term', 'JSS 2A', 'Home Economics', 15, 10, 28, '2026', '2025/2026'),
(304, 'Emmanuel Melody ', 'JSS 2', '1st Term', 'JSS 2A', 'Home Economics', 10, 15, 26, '2026', '2025/2026'),
(305, 'Hassan Habib ', 'JSS 2', '1st Term', 'JSS 2A', 'Home Economics', 15, 10, 24, '2026', '2025/2026'),
(306, 'Idris Rukayya ', 'JSS 2', '1st Term', 'JSS 2A', 'Home Economics', 15, 10, 24, '2026', '2025/2026'),
(307, 'Muhammad Sabir ', 'JSS 2', '1st Term', 'JSS 2A', 'Home Economics', 15, 10, 22, '2026', '2025/2026'),
(308, 'Muhammad Sumayya ', 'JSS 2', '1st Term', 'JSS 2A', 'Home Economics', 15, 10, 44, '2026', '2025/2026'),
(309, 'Saheed Zainab ', 'JSS 2', '1st Term', 'JSS 2A', 'Home Economics', 15, 10, 24, '2026', '2025/2026'),
(310, 'Ummulkhairi Yusuf ', 'JSS 2', '1st Term', 'JSS 2A', 'Home Economics', 10, 15, 44, '2026', '2025/2026'),
(311, 'Usman Rabiu ', 'JSS 2', '1st Term', 'JSS 2A', 'Home Economics', 10, 15, 24, '2026', '2025/2026'),
(312, 'Abdullahi Aminu ', 'JSS 2', '1st Term', 'JSS 2A', 'Computer', 9, 17, 27, '2026', '2025/2026'),
(313, 'Abida Habib ', 'JSS 2', '1st Term', 'JSS 2A', 'Computer', 10, 15, 15, '2026', '2025/2026'),
(314, 'Abubakar Ladan ', 'JSS 2', '1st Term', 'JSS 2A', 'Computer', 9, 17, 40, '2026', '2025/2026'),
(315, 'Auwal Hafisat ', 'JSS 2', '1st Term', 'JSS 2A', 'Computer', 4, 15, 25, '2026', '2025/2026'),
(316, 'Emmanuel Melody ', 'JSS 2', '1st Term', 'JSS 2A', 'Computer', 9, 17, 20, '2026', '2025/2026'),
(317, 'Hassan Habib ', 'JSS 2', '1st Term', 'JSS 2A', 'Computer', 4, 17, 24, '2026', '2025/2026'),
(318, 'Idris Rukayya ', 'JSS 2', '1st Term', 'JSS 2A', 'Computer', 7, 13, 15, '2026', '2025/2026'),
(319, 'Muhammad Sabir ', 'JSS 2', '1st Term', 'JSS 2A', 'Computer', 8, 17, 35, '2026', '2025/2026'),
(320, 'Muhammad Sumayya ', 'JSS 2', '1st Term', 'JSS 2A', 'Computer', 10, 17, 46, '2026', '2025/2026'),
(321, 'Saheed Zainab ', 'JSS 2', '1st Term', 'JSS 2A', 'Computer', 4, 17, 25, '2026', '2025/2026'),
(322, 'Ummulkhairi Yusuf ', 'JSS 2', '1st Term', 'JSS 2A', 'Computer', 4, 17, 30, '2026', '2025/2026'),
(323, 'Usman Rabiu ', 'JSS 2', '1st Term', 'JSS 2A', 'Computer', 6, 17, 30, '2026', '2025/2026'),
(324, 'Abdullahi Aminu ', 'JSS 2', '1st Term', 'JSS 2A', 'Huasa Language', 5, 5, 20, '2026', '2025/2026'),
(325, 'Abida Habib ', 'JSS 2', '1st Term', 'JSS 2A', 'Huasa Language', 10, 10, 12, '2026', '2025/2026'),
(326, 'Abubakar Ladan ', 'JSS 2', '1st Term', 'JSS 2A', 'Huasa Language', 10, 20, 38, '2026', '2025/2026'),
(327, 'Auwal Hafisat ', 'JSS 2', '1st Term', 'JSS 2A', 'Huasa Language', 5, 10, 27, '2026', '2025/2026'),
(328, 'Emmanuel Melody ', 'JSS 2', '1st Term', 'JSS 2A', 'Huasa Language', 0, 0, 0, '2026', '2025/2026'),
(329, 'Hassan Habib ', 'JSS 2', '1st Term', 'JSS 2A', 'Huasa Language', 10, 7, 31, '2026', '2025/2026'),
(330, 'Idris Rukayya ', 'JSS 2', '1st Term', 'JSS 2A', 'Huasa Language', 10, 5, 20, '2026', '2025/2026'),
(331, 'Muhammad Sabir ', 'JSS 2', '1st Term', 'JSS 2A', 'Huasa Language', 10, 18, 25, '2026', '2025/2026'),
(332, 'Muhammad Sumayya ', 'JSS 2', '1st Term', 'JSS 2A', 'Huasa Language', 15, 15, 29, '2026', '2025/2026'),
(333, 'Saheed Zainab ', 'JSS 2', '1st Term', 'JSS 2A', 'Huasa Language', 5, 10, 10, '2026', '2025/2026'),
(334, 'Ummulkhairi Yusuf ', 'JSS 2', '1st Term', 'JSS 2A', 'Huasa Language', 10, 5, 28, '2026', '2025/2026'),
(335, 'Usman Rabiu ', 'JSS 2', '1st Term', 'JSS 2A', 'Huasa Language', 15, 20, 35, '2026', '2025/2026'),
(336, 'Abdurrahman Sani ', 'JSS 3', '1st Term', 'JSS 3A', 'Huasa Language', 14, 11, 34, '2026', '2025/2026'),
(337, 'Danjuma Jabir ', 'JSS 3', '1st Term', 'JSS 3A', 'Huasa Language', 5, 5, 1, '2026', '2025/2026'),
(338, 'Muhammad Yahaya ', 'JSS 3', '1st Term', 'JSS 3A', 'Huasa Language', 11, 10, 26, '2026', '2025/2026'),
(339, 'Owolabi Khairat ', 'JSS 3', '1st Term', 'JSS 3A', 'Huasa Language', 11, 13, 20, '2026', '2025/2026'),
(340, 'Sharafadeen Nafisat ', 'JSS 3', '1st Term', 'JSS 3A', 'Huasa Language', 15, 11, 28, '2026', '2025/2026'),
(341, 'Suleman Abdullahi ', 'JSS 3', '1st Term', 'JSS 3A', 'Huasa Language', 5, 5, 28, '2026', '2025/2026'),
(342, 'Suleman Hauwau ', 'JSS 3', '1st Term', 'JSS 3A', 'Huasa Language', 11, 10, 20, '2026', '2025/2026'),
(343, 'Ummus Salma Fadlu', 'JSS 3', '1st Term', 'JSS 3A', 'Huasa Language', 11, 12, 42, '2026', '2025/2026'),
(344, 'Yasir Abdullahi ', 'JSS 3', '1st Term', 'JSS 3A', 'Huasa Language', 10, 12, 26, '2026', '2025/2026'),
(345, 'Zakari Jabrin ', 'JSS 3', '1st Term', 'JSS 3A', 'Huasa Language', 5, 5, 23, '2026', '2025/2026'),
(346, 'Abdurrahman Sani ', 'JSS 3', '1st Term', 'JSS 3A', 'Basic Technology', 0, 0, 0, '2026', '2025/2026'),
(347, 'Danjuma Jabir ', 'JSS 3', '1st Term', 'JSS 3A', 'Basic Technology', 0, 0, 0, '2026', '2025/2026'),
(348, 'Muhammad Yahaya ', 'JSS 3', '1st Term', 'JSS 3A', 'Basic Technology', 10, 10, 59, '2026', '2025/2026'),
(349, 'Owolabi Khairat ', 'JSS 3', '1st Term', 'JSS 3A', 'Basic Technology', 10, 10, 59, '2026', '2025/2026'),
(350, 'Sharafadeen Nafisat ', 'JSS 3', '1st Term', 'JSS 3A', 'Basic Technology', 10, 10, 59, '2026', '2025/2026'),
(351, 'Suleman Abdullahi ', 'JSS 3', '1st Term', 'JSS 3A', 'Basic Technology', 10, 10, 59, '2026', '2025/2026'),
(352, 'Suleman Hauwau ', 'JSS 3', '1st Term', 'JSS 3A', 'Basic Technology', 10, 10, 58, '2026', '2025/2026'),
(353, 'Ummus Salma Fadlu', 'JSS 3', '1st Term', 'JSS 3A', 'Basic Technology', 10, 10, 58, '2026', '2025/2026'),
(354, 'Yasir Abdullahi ', 'JSS 3', '1st Term', 'JSS 3A', 'Basic Technology', 10, 10, 30, '2026', '2025/2026'),
(355, 'Zakari Jabrin ', 'JSS 3', '1st Term', 'JSS 3A', 'Basic Technology', 10, 10, 56, '2026', '2025/2026'),
(356, 'Abdulazeez Maryam ', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 15, 15, 20, '2026', '2025/2026'),
(357, 'Abdullahi Khadijat ', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 15, 15, 35, '2026', '2025/2026'),
(358, 'Abdullahi Rukayya ', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 10, 15, 15, '2026', '2025/2026'),
(359, 'Abdulmalik Aliyu ', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 15, 10, 15, '2026', '2025/2026'),
(360, 'Abubakar Abbas ', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 10, 20, 40, '2026', '2025/2026'),
(361, 'Abubakar Awwa ', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 10, 10, 20, '2026', '2025/2026'),
(362, 'Abuwauab Ibrahim ', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 10, 10, 15, '2026', '2025/2026'),
(363, 'Alhassan Fatima ', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 15, 15, 30, '2026', '2025/2026'),
(364, 'Aliyu Hamidu ', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 15, 10, 30, '2026', '2025/2026'),
(365, 'Aliyu Mustapha ', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 15, 15, 20, '2026', '2025/2026'),
(366, 'Bala Asmau ', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 10, 15, 20, '2026', '2025/2026'),
(367, 'Bala Regina ', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 20, 15, 40, '2026', '2025/2026'),
(368, 'Gamco Fatima Awwal', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 10, 10, 20, '2026', '2025/2026'),
(369, 'Ibrahim Ibrahim ', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 20, 10, 15, '2026', '2025/2026'),
(370, 'Ibrahim Sekinat ', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 20, 20, 35, '2026', '2025/2026'),
(371, 'Ikilima Haruna ', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 10, 10, 10, '2026', '2025/2026'),
(372, 'Isaq Muhammad ', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 10, 10, 15, '2026', '2025/2026'),
(373, 'Isaq Rayyanu ', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 10, 10, 10, '2026', '2025/2026'),
(374, 'Kolo Ruth ', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 20, 15, 40, '2026', '2025/2026'),
(375, 'Mainazari Isha Farida', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 15, 10, 20, '2026', '2025/2026'),
(376, 'Muhammad Abdullahi ', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 5, 15, 30, '2026', '2025/2026'),
(377, 'Muhammad Khadija ', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 20, 15, 30, '2026', '2025/2026'),
(378, 'Muhammad Sani Ahmed', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 10, 10, 15, '2026', '2025/2026'),
(379, 'Musa Salisu ', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 10, 10, 25, '2026', '2025/2026'),
(380, 'Naufi Rashida ', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 10, 10, 25, '2026', '2025/2026'),
(381, 'Saidu Mamuna Sabo', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 15, 10, 20, '2026', '2025/2026'),
(382, 'Yasir Abubakar ', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 10, 10, 25, '2026', '2025/2026'),
(383, 'Yasir Ali ', 'SS 2', '1st Term', 'SS2A', 'Mathematics', 5, 10, 15, '2026', '2025/2026'),
(384, 'Abdulazeez Maryam ', 'SS 2', '1st Term', 'SS2A', 'Computer', 15, 20, 15, '2026', '2025/2026'),
(385, 'Abdullahi Khadijat ', 'SS 2', '1st Term', 'SS2A', 'Computer', 20, 15, 15, '2026', '2025/2026'),
(386, 'Abdullahi Rukayya ', 'SS 2', '1st Term', 'SS2A', 'Computer', 15, 15, 15, '2026', '2025/2026'),
(387, 'Abdulmalik Aliyu ', 'SS 2', '1st Term', 'SS2A', 'Computer', 10, 15, 15, '2026', '2025/2026'),
(388, 'Abubakar Abbas ', 'SS 2', '1st Term', 'SS2A', 'Computer', 15, 20, 15, '2026', '2025/2026'),
(389, 'Abubakar Awwa ', 'SS 2', '1st Term', 'SS2A', 'Computer', 20, 15, 15, '2026', '2025/2026'),
(390, 'Abuwauab Ibrahim ', 'SS 2', '1st Term', 'SS2A', 'Computer', 15, 15, 20, '2026', '2025/2026'),
(391, 'Alhassan Fatima ', 'SS 2', '1st Term', 'SS2A', 'Computer', 20, 20, 30, '2026', '2025/2026'),
(392, 'Aliyu Hamidu ', 'SS 2', '1st Term', 'SS2A', 'Computer', 20, 20, 30, '2026', '2025/2026'),
(393, 'Aliyu Mustapha ', 'SS 2', '1st Term', 'SS2A', 'Computer', 15, 15, 15, '2026', '2025/2026'),
(394, 'Bala Asmau ', 'SS 2', '1st Term', 'SS2A', 'Computer', 20, 15, 15, '2026', '2025/2026'),
(395, 'Bala Regina ', 'SS 2', '1st Term', 'SS2A', 'Computer', 20, 20, 30, '2026', '2025/2026'),
(396, 'Gamco Fatima Awwal', 'SS 2', '1st Term', 'SS2A', 'Computer', 15, 20, 25, '2026', '2025/2026'),
(397, 'Ibrahim Ibrahim ', 'SS 2', '1st Term', 'SS2A', 'Computer', 15, 15, 20, '2026', '2025/2026'),
(398, 'Ibrahim Sekinat ', 'SS 2', '1st Term', 'SS2A', 'Computer', 20, 20, 30, '2026', '2025/2026'),
(399, 'Ikilima Haruna ', 'SS 2', '1st Term', 'SS2A', 'Computer', 20, 15, 15, '2026', '2025/2026'),
(400, 'Isaq Muhammad ', 'SS 2', '1st Term', 'SS2A', 'Computer', 20, 15, 15, '2026', '2025/2026'),
(401, 'Isaq Rayyanu ', 'SS 2', '1st Term', 'SS2A', 'Computer', 15, 15, 15, '2026', '2025/2026'),
(402, 'Kolo Ruth ', 'SS 2', '1st Term', 'SS2A', 'Computer', 20, 20, 30, '2026', '2025/2026'),
(403, 'Mainazari Isha Farida', 'SS 2', '1st Term', 'SS2A', 'Computer', 20, 15, 15, '2026', '2025/2026'),
(404, 'Muhammad Abdullahi ', 'SS 2', '1st Term', 'SS2A', 'Computer', 15, 15, 15, '2026', '2025/2026'),
(405, 'Muhammad Khadija ', 'SS 2', '1st Term', 'SS2A', 'Computer', 15, 15, 20, '2026', '2025/2026'),
(406, 'Muhammad Sani Ahmed', 'SS 2', '1st Term', 'SS2A', 'Computer', 15, 15, 15, '2026', '2025/2026'),
(407, 'Musa Salisu ', 'SS 2', '1st Term', 'SS2A', 'Computer', 15, 15, 15, '2026', '2025/2026'),
(408, 'Naufi Rashida ', 'SS 2', '1st Term', 'SS2A', 'Computer', 20, 15, 15, '2026', '2025/2026'),
(409, 'Saidu Mamuna Sabo', 'SS 2', '1st Term', 'SS2A', 'Computer', 15, 15, 20, '2026', '2025/2026'),
(410, 'Yasir Abubakar ', 'SS 2', '1st Term', 'SS2A', 'Computer', 15, 15, 15, '2026', '2025/2026'),
(411, 'Yasir Ali ', 'SS 2', '1st Term', 'SS2A', 'Computer', 20, 20, 15, '2026', '2025/2026'),
(412, 'Abdulazeez Maryam ', 'SS 2', '1st Term', 'SS2A', 'Physics', 10, 10, 15, '2026', '2025/2026'),
(413, 'Abdullahi Khadijat ', 'SS 2', '1st Term', 'SS2A', 'Physics', 0, 0, 0, '2026', '2025/2026'),
(414, 'Abdullahi Rukayya ', 'SS 2', '1st Term', 'SS2A', 'Physics', 15, 10, 15, '2026', '2025/2026'),
(415, 'Abdulmalik Aliyu ', 'SS 2', '1st Term', 'SS2A', 'Physics', 0, 0, 0, '2026', '2025/2026'),
(416, 'Abubakar Abbas ', 'SS 2', '1st Term', 'SS2A', 'Physics', 20, 20, 30, '2026', '2025/2026'),
(417, 'Abubakar Awwa ', 'SS 2', '1st Term', 'SS2A', 'Physics', 10, 10, 10, '2026', '2025/2026'),
(418, 'Abuwauab Ibrahim ', 'SS 2', '1st Term', 'SS2A', 'Physics', 10, 15, 15, '2026', '2025/2026'),
(419, 'Alhassan Fatima ', 'SS 2', '1st Term', 'SS2A', 'Physics', 20, 15, 30, '2026', '2025/2026'),
(420, 'Aliyu Hamidu ', 'SS 2', '1st Term', 'SS2A', 'Physics', 10, 10, 20, '2026', '2025/2026'),
(421, 'Aliyu Mustapha ', 'SS 2', '1st Term', 'SS2A', 'Physics', 0, 0, 0, '2026', '2025/2026'),
(422, 'Bala Asmau ', 'SS 2', '1st Term', 'SS2A', 'Physics', 15, 15, 10, '2026', '2025/2026'),
(423, 'Bala Regina ', 'SS 2', '1st Term', 'SS2A', 'Physics', 20, 20, 35, '2026', '2025/2026'),
(424, 'Gamco Fatima Awwal', 'SS 2', '1st Term', 'SS2A', 'Physics', 15, 15, 15, '2026', '2025/2026'),
(425, 'Ibrahim Ibrahim ', 'SS 2', '1st Term', 'SS2A', 'Physics', 15, 10, 15, '2026', '2025/2026'),
(426, 'Ibrahim Sekinat ', 'SS 2', '1st Term', 'SS2A', 'Physics', 20, 20, 35, '2026', '2025/2026'),
(427, 'Ikilima Haruna ', 'SS 2', '1st Term', 'SS2A', 'Physics', 15, 10, 10, '2026', '2025/2026'),
(428, 'Isaq Muhammad ', 'SS 2', '1st Term', 'SS2A', 'Physics', 10, 10, 20, '2026', '2025/2026'),
(429, 'Isaq Rayyanu ', 'SS 2', '1st Term', 'SS2A', 'Physics', 15, 15, 10, '2026', '2025/2026'),
(430, 'Kolo Ruth ', 'SS 2', '1st Term', 'SS2A', 'Physics', 20, 20, 35, '2026', '2025/2026'),
(431, 'Mainazari Isha Farida', 'SS 2', '1st Term', 'SS2A', 'Physics', 10, 15, 15, '2026', '2025/2026'),
(432, 'Muhammad Abdullahi ', 'SS 2', '1st Term', 'SS2A', 'Physics', 10, 10, 20, '2026', '2025/2026'),
(433, 'Muhammad Khadija ', 'SS 2', '1st Term', 'SS2A', 'Physics', 15, 10, 10, '2026', '2025/2026'),
(434, 'Muhammad Sani Ahmed', 'SS 2', '1st Term', 'SS2A', 'Physics', 0, 0, 0, '2026', '2025/2026'),
(435, 'Musa Salisu ', 'SS 2', '1st Term', 'SS2A', 'Physics', 15, 15, 15, '2026', '2025/2026'),
(436, 'Naufi Rashida ', 'SS 2', '1st Term', 'SS2A', 'Physics', 10, 15, 15, '2026', '2025/2026'),
(437, 'Saidu Mamuna Sabo', 'SS 2', '1st Term', 'SS2A', 'Physics', 10, 15, 15, '2026', '2025/2026'),
(438, 'Yasir Abubakar ', 'SS 2', '1st Term', 'SS2A', 'Physics', 15, 15, 20, '2026', '2025/2026'),
(439, 'Yasir Ali ', 'SS 2', '1st Term', 'SS2A', 'Physics', 15, 15, 20, '2026', '2025/2026'),
(440, 'Abdulrazak Kudirat ', 'SS 3', '1st Term', 'SS3A', 'Physics', 15, 15, 10, '2026', '2025/2026'),
(441, 'Baraatu Usman ', 'SS 3', '1st Term', 'SS3A', 'Physics', 15, 15, 15, '2026', '2025/2026'),
(442, 'Haruna Farida ', 'SS 3', '1st Term', 'SS3A', 'Physics', 20, 15, 20, '2026', '2025/2026'),
(443, 'Ibrahim Hafsat ', 'SS 3', '1st Term', 'SS3A', 'Physics', 15, 15, 20, '2026', '2025/2026'),
(444, 'Jhasim Abubakar ', 'SS 3', '1st Term', 'SS3A', 'Physics', 20, 15, 30, '2026', '2025/2026'),
(445, 'Khalifa Alhassan ', 'SS 3', '1st Term', 'SS3A', 'Physics', 20, 15, 15, '2026', '2025/2026'),
(446, 'Nura Jawad ', 'SS 3', '1st Term', 'SS3A', 'Physics', 15, 15, 10, '2026', '2025/2026'),
(447, 'Nura Kausar', 'SS 3', '1st Term', 'SS3A', 'Physics', 10, 10, 15, '2026', '2025/2026'),
(448, 'Yaujaafar Rukayya ', 'SS 3', '1st Term', 'SS3A', 'Physics', 20, 15, 20, '2026', '2025/2026'),
(449, 'Abdullahi Musa ', 'SS 1', '1st Term', 'SS1A', 'Computer', 15, 15, 15, '2026', '2025/2026'),
(450, 'Abubakar Habiba ', 'SS 1', '1st Term', 'SS1A', 'Computer', 20, 15, 20, '2026', '2025/2026'),
(451, 'Abubakar Hassana ', 'SS 1', '1st Term', 'SS1A', 'Computer', 10, 10, 30, '2026', '2025/2026'),
(452, 'Abubakar Hussani', 'SS 1', '1st Term', 'SS1A', 'Computer', 10, 10, 30, '2026', '2025/2026'),
(453, 'Abubakar Jamana ', 'SS 1', '1st Term', 'SS1A', 'Computer', 15, 10, 30, '2026', '2025/2026'),
(454, 'Adamu Bilikisu ', 'SS 1', '1st Term', 'SS1A', 'Computer', 15, 15, 20, '2026', '2025/2026'),
(455, 'Aliyu Murjanatu ', 'SS 1', '1st Term', 'SS1A', 'Computer', 20, 20, 30, '2026', '2025/2026'),
(456, 'Anas Usman ', 'SS 1', '1st Term', 'SS1A', 'Computer', 15, 15, 20, '2026', '2025/2026'),
(457, 'Ekwere Happiness ', 'SS 1', '1st Term', 'SS1A', 'Computer', 20, 20, 40, '2026', '2025/2026'),
(458, 'Gaddafi Bilikisu ', 'SS 1', '1st Term', 'SS1A', 'Computer', 15, 15, 15, '2026', '2025/2026'),
(459, 'Habib Haiadar ', 'SS 1', '1st Term', 'SS1A', 'Computer', 10, 10, 20, '2026', '2025/2026'),
(460, 'Hajara Auwal ', 'SS 1', '1st Term', 'SS1A', 'Computer', 15, 20, 20, '2026', '2025/2026'),
(461, 'Ibrahim Rukayya ', 'SS 1', '1st Term', 'SS1A', 'Computer', 20, 15, 20, '2026', '2025/2026'),
(462, 'Muhammad Haruna ', 'SS 1', '1st Term', 'SS1A', 'Computer', 10, 15, 15, '2026', '2025/2026'),
(463, 'Muhammad Ishaqu ', 'SS 1', '1st Term', 'SS1A', 'Computer', 15, 10, 20, '2026', '2025/2026'),
(464, 'Muhammad Mahadi ', 'SS 1', '1st Term', 'SS1A', 'Computer', 15, 15, 15, '2026', '2025/2026'),
(465, 'Muhammad Mustapha', 'SS 1', '1st Term', 'SS1A', 'Computer', 15, 15, 15, '2026', '2025/2026'),
(466, 'Muktar Kabir ', 'SS 1', '1st Term', 'SS1A', 'Computer', 10, 15, 15, '2026', '2025/2026'),
(467, 'Salisu Abdulrazaq ', 'SS 1', '1st Term', 'SS1A', 'Computer', 15, 15, 15, '2026', '2025/2026'),
(468, 'Salisu Khadija ', 'SS 1', '1st Term', 'SS1A', 'Computer', 15, 10, 15, '2026', '2025/2026'),
(469, 'Salisu Maimuna ', 'SS 1', '1st Term', 'SS1A', 'Computer', 15, 15, 20, '2026', '2025/2026'),
(470, 'Yahaya Aliyu ', 'SS 1', '1st Term', 'SS1A', 'Computer', 20, 20, 40, '2026', '2025/2026'),
(471, 'Yahaya Sa', 'SS 1', '1st Term', 'SS1A', 'Computer', 15, 15, 40, '2026', '2025/2026'),
(472, 'Zikirullah Abdul-Aziz ', 'SS 1', '1st Term', 'SS1A', 'Computer', 15, 10, 15, '2026', '2025/2026'),
(473, 'Abdullahi Musa ', 'SS 1', '1st Term', 'SS1A', 'Mathematics', 5, 20, 15, '2026', '2025/2026'),
(474, 'Abubakar Habiba ', 'SS 1', '1st Term', 'SS1A', 'Mathematics', 5, 15, 15, '2026', '2025/2026');
INSERT INTO `results` (`id`, `name_of_student`, `class`, `exam`, `section`, `subject`, `first_ca`, `second_ca`, `exam_score`, `school_year`, `current_school_session`) VALUES
(475, 'Abubakar Hassana ', 'SS 1', '1st Term', 'SS1A', 'Mathematics', 8, 15, 20, '2026', '2025/2026'),
(476, 'Abubakar Hussani', 'SS 1', '1st Term', 'SS1A', 'Mathematics', 20, 10, 20, '2026', '2025/2026'),
(477, 'Abubakar Jamana ', 'SS 1', '1st Term', 'SS1A', 'Mathematics', 2, 15, 20, '2026', '2025/2026'),
(478, 'Adamu Bilikisu ', 'SS 1', '1st Term', 'SS1A', 'Mathematics', 2, 20, 30, '2026', '2025/2026'),
(479, 'Aliyu Murjanatu ', 'SS 1', '1st Term', 'SS1A', 'Mathematics', 8, 15, 20, '2026', '2025/2026'),
(480, 'Anas Usman ', 'SS 1', '1st Term', 'SS1A', 'Mathematics', 20, 15, 20, '2026', '2025/2026'),
(481, 'Ekwere Happiness ', 'SS 1', '1st Term', 'SS1A', 'Mathematics', 15, 20, 35, '2026', '2025/2026'),
(482, 'Gaddafi Bilikisu ', 'SS 1', '1st Term', 'SS1A', 'Mathematics', 15, 10, 15, '2026', '2025/2026'),
(483, 'Habib Haiadar ', 'SS 1', '1st Term', 'SS1A', 'Mathematics', 10, 15, 15, '2026', '2025/2026'),
(484, 'Hajara Auwal ', 'SS 1', '1st Term', 'SS1A', 'Mathematics', 15, 15, 15, '2026', '2025/2026'),
(485, 'Ibrahim Rukayya ', 'SS 1', '1st Term', 'SS1A', 'Mathematics', 15, 20, 20, '2026', '2025/2026'),
(486, 'Muhammad Haruna ', 'SS 1', '1st Term', 'SS1A', 'Mathematics', 10, 15, 15, '2026', '2025/2026'),
(487, 'Muhammad Ishaqu ', 'SS 1', '1st Term', 'SS1A', 'Mathematics', 15, 15, 10, '2026', '2025/2026'),
(488, 'Muhammad Mahadi ', 'SS 1', '1st Term', 'SS1A', 'Mathematics', 15, 15, 10, '2026', '2025/2026'),
(489, 'Muhammad Mustapha', 'SS 1', '1st Term', 'SS1A', 'Mathematics', 15, 10, 10, '2026', '2025/2026'),
(490, 'Muktar Kabir ', 'SS 1', '1st Term', 'SS1A', 'Mathematics', 10, 15, 15, '2026', '2025/2026'),
(491, 'Salisu Abdulrazaq ', 'SS 1', '1st Term', 'SS1A', 'Mathematics', 10, 15, 15, '2026', '2025/2026'),
(492, 'Salisu Khadija ', 'SS 1', '1st Term', 'SS1A', 'Mathematics', 15, 10, 15, '2026', '2025/2026'),
(493, 'Salisu Maimuna ', 'SS 1', '1st Term', 'SS1A', 'Mathematics', 15, 15, 15, '2026', '2025/2026'),
(494, 'Yahaya Sa', 'SS 1', '1st Term', 'SS1A', 'Mathematics', 15, 15, 30, '2026', '2025/2026'),
(495, 'Yahaya Sa', 'SS 1', '1st Term', 'SS1A', 'Mathematics', 10, 10, 15, '2026', '2025/2026'),
(496, 'Zikirullah Abdul-Aziz ', 'SS 1', '1st Term', 'SS1A', 'Mathematics', 10, 10, 10, '2026', '2025/2026'),
(497, 'Abdullahi Musa ', 'SS 1', '1st Term', 'SS1A', 'Physics', 15, 15, 30, '2026', '2025/2026'),
(498, 'Abubakar Habiba ', 'SS 1', '1st Term', 'SS1A', 'Physics', 15, 15, 20, '2026', '2025/2026'),
(499, 'Abubakar Hassana ', 'SS 1', '1st Term', 'SS1A', 'Physics', 10, 10, 10, '2026', '2025/2026'),
(500, 'Abubakar Hussani', 'SS 1', '1st Term', 'SS1A', 'Physics', 10, 10, 10, '2026', '2025/2026'),
(501, 'Abubakar Jamana ', 'SS 1', '1st Term', 'SS1A', 'Physics', 10, 10, 15, '2026', '2025/2026'),
(502, 'Adamu Bilikisu ', 'SS 1', '1st Term', 'SS1A', 'Physics', 15, 15, 15, '2026', '2025/2026'),
(503, 'Aliyu Murjanatu ', 'SS 1', '1st Term', 'SS1A', 'Physics', 15, 15, 20, '2026', '2025/2026'),
(504, 'Anas Usman ', 'SS 1', '1st Term', 'SS1A', 'Physics', 15, 15, 20, '2026', '2025/2026'),
(505, 'Ekwere Happiness ', 'SS 1', '1st Term', 'SS1A', 'Physics', 15, 20, 35, '2026', '2025/2026'),
(506, 'Gaddafi Bilikisu ', 'SS 1', '1st Term', 'SS1A', 'Physics', 15, 10, 15, '2026', '2025/2026'),
(507, 'Habib Haiadar ', 'SS 1', '1st Term', 'SS1A', 'Physics', 10, 15, 15, '2026', '2025/2026'),
(508, 'Hajara Auwal ', 'SS 1', '1st Term', 'SS1A', 'Physics', 15, 15, 15, '2026', '2025/2026'),
(509, 'Ibrahim Rukayya ', 'SS 1', '1st Term', 'SS1A', 'Physics', 15, 20, 20, '2026', '2025/2026'),
(510, 'Muhammad Haruna ', 'SS 1', '1st Term', 'SS1A', 'Physics', 10, 15, 15, '2026', '2025/2026'),
(511, 'Muhammad Ishaqu ', 'SS 1', '1st Term', 'SS1A', 'Physics', 15, 15, 10, '2026', '2025/2026'),
(512, 'Muhammad Mahadi ', 'SS 1', '1st Term', 'SS1A', 'Physics', 15, 15, 10, '2026', '2025/2026'),
(513, 'Muhammad Mustapha', 'SS 1', '1st Term', 'SS1A', 'Physics', 15, 10, 10, '2026', '2025/2026'),
(514, 'Muktar Kabir ', 'SS 1', '1st Term', 'SS1A', 'Physics', 10, 15, 15, '2026', '2025/2026'),
(515, 'Salisu Abdulrazaq ', 'SS 1', '1st Term', 'SS1A', 'Physics', 10, 15, 15, '2026', '2025/2026'),
(516, 'Salisu Khadija ', 'SS 1', '1st Term', 'SS1A', 'Physics', 15, 10, 15, '2026', '2025/2026'),
(517, 'Salisu Maimuna ', 'SS 1', '1st Term', 'SS1A', 'Physics', 15, 15, 15, '2026', '2025/2026'),
(518, 'Yahaya Aliyu ', 'SS 1', '1st Term', 'SS1A', 'Physics', 15, 15, 30, '2026', '2025/2026'),
(519, 'Yahaya Sa', 'SS 1', '1st Term', 'SS1A', 'Physics', 10, 10, 15, '2026', '2025/2026'),
(520, 'Zikirullah Abdul-Aziz ', 'SS 1', '1st Term', 'SS1A', 'Physics', 10, 10, 10, '2026', '2025/2026'),
(521, 'Abdulrazak Kudirat ', 'SS 3', '1st Term', 'SS3A', 'English Language', 0, 0, 0, '2026', '2025/2026'),
(522, 'Baraatu Usman ', 'SS 3', '1st Term', 'SS3A', 'English Language', 10, 15, 40, '2026', '2025/2026'),
(523, 'Haruna Farida ', 'SS 3', '1st Term', 'SS3A', 'English Language', 10, 15, 41, '2026', '2025/2026'),
(524, 'Ibrahim Hafsat ', 'SS 3', '1st Term', 'SS3A', 'English Language', 0, 0, 0, '2026', '2025/2026'),
(525, 'Jhasim Abubakar ', 'SS 3', '1st Term', 'SS3A', 'English Language', 10, 15, 38, '2026', '2025/2026'),
(526, 'Khalifa Alhassan ', 'SS 3', '1st Term', 'SS3A', 'English Language', 10, 15, 29, '2026', '2025/2026'),
(527, 'Nura Jawad ', 'SS 3', '1st Term', 'SS3A', 'English Language', 10, 15, 30, '2026', '2025/2026'),
(528, 'Nura Kausar', 'SS 3', '1st Term', 'SS3A', 'English Language', 10, 15, 41, '2026', '2025/2026'),
(529, 'Yaujaafar Rukayya ', 'SS 3', '1st Term', 'SS3A', 'English Language', 0, 0, 0, '2026', '2025/2026'),
(530, 'Musa Muhammad ', 'SS 3', '1st Term', 'SS3A', 'English Language', 10, 15, 35, '2026', '2025/2026'),
(531, 'Abdullahi Musa ', 'SS 1', '1st Term', 'SS1A', 'Islamic Studies', 20, 20, 22, '2026', '2025/2026'),
(532, 'Abubakar Habiba ', 'SS 1', '1st Term', 'SS1A', 'Islamic Studies', 20, 5, 20, '2026', '2025/2026'),
(533, 'Abubakar Hassana ', 'SS 1', '1st Term', 'SS1A', 'Islamic Studies', 20, 5, 30, '2026', '2025/2026'),
(534, 'Abubakar Hussani', 'SS 1', '1st Term', 'SS1A', 'Islamic Studies', 20, 5, 25, '2026', '2025/2026'),
(535, 'Abubakar Jamana ', 'SS 1', '1st Term', 'SS1A', 'Islamic Studies', 20, 20, 15, '2026', '2025/2026'),
(536, 'Adamu Bilikisu ', 'SS 1', '1st Term', 'SS1A', 'Islamic Studies', 10, 5, 35, '2026', '2025/2026'),
(537, 'Aliyu Murjanatu ', 'SS 1', '1st Term', 'SS1A', 'Islamic Studies', 20, 5, 15, '2026', '2025/2026'),
(538, 'Anas Usman ', 'SS 1', '1st Term', 'SS1A', 'Islamic Studies', 20, 5, 15, '2026', '2025/2026'),
(539, 'Ekwere Happiness ', 'SS 1', '1st Term', 'SS1A', 'Islamic Studies', 20, 20, 21, '2026', '2025/2026'),
(540, 'Gaddafi Bilikisu ', 'SS 1', '1st Term', 'SS1A', 'Islamic Studies', 10, 15, 16, '2026', '2025/2026'),
(541, 'Habib Haiadar ', 'SS 1', '1st Term', 'SS1A', 'Islamic Studies', 20, 5, 20, '2026', '2025/2026'),
(542, 'Hajara Auwal ', 'SS 1', '1st Term', 'SS1A', 'Islamic Studies', 10, 10, 15, '2026', '2025/2026'),
(543, 'Ibrahim Rukayya ', 'SS 1', '1st Term', 'SS1A', 'Islamic Studies', 0, 0, 0, '2026', '2025/2026'),
(544, 'Muhammad Haruna ', 'SS 1', '1st Term', 'SS1A', 'Islamic Studies', 15, 5, 33, '2026', '2025/2026'),
(545, 'Muhammad Ishaqu ', 'SS 1', '1st Term', 'SS1A', 'Islamic Studies', 15, 5, 25, '2026', '2025/2026'),
(546, 'Muhammad Mahadi ', 'SS 1', '1st Term', 'SS1A', 'Islamic Studies', 0, 0, 0, '2026', '2025/2026'),
(547, 'Muhammad Mustapha', 'SS 1', '1st Term', 'SS1A', 'Islamic Studies', 0, 0, 0, '2026', '2025/2026'),
(548, 'Muktar Kabir ', 'SS 1', '1st Term', 'SS1A', 'Islamic Studies', 0, 0, 0, '2026', '2025/2026'),
(549, 'Salisu Abdulrazaq ', 'SS 1', '1st Term', 'SS1A', 'Islamic Studies', 20, 5, 25, '2026', '2025/2026'),
(550, 'Salisu Khadija ', 'SS 1', '1st Term', 'SS1A', 'Islamic Studies', 0, 0, 0, '2026', '2025/2026'),
(551, 'Salisu Maimuna ', 'SS 1', '1st Term', 'SS1A', 'Islamic Studies', 20, 20, 25, '2026', '2025/2026'),
(552, 'Yahaya Aliyu ', 'SS 1', '1st Term', 'SS1A', 'Islamic Studies', 10, 5, 35, '2026', '2025/2026'),
(553, 'Yahaya Sa', 'SS 1', '1st Term', 'SS1A', 'Islamic Studies', 10, 10, 25, '2026', '2025/2026'),
(554, 'Zikirullah Abdul-Aziz ', 'SS 1', '1st Term', 'SS1A', 'Islamic Studies', 0, 0, 0, '2026', '2025/2026'),
(555, 'Abdulrazak Kudirat ', 'SS 3', '1st Term', 'SS3A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(556, 'Baraatu Usman ', 'SS 3', '1st Term', 'SS3A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(557, 'Haruna Farida ', 'SS 3', '1st Term', 'SS3A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(558, 'Ibrahim Hafsat ', 'SS 3', '1st Term', 'SS3A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(559, 'Jhasim Abubakar ', 'SS 3', '1st Term', 'SS3A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(560, 'Khalifa Alhassan ', 'SS 3', '1st Term', 'SS3A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(561, 'Musa Muhammad ', 'SS 3', '1st Term', 'SS3A', 'Economics', 20, 20, 52, '2026', '2025/2026'),
(562, 'Nura Jawad ', 'SS 3', '1st Term', 'SS3A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(563, 'Nura Kausar', 'SS 3', '1st Term', 'SS3A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(564, 'Yaujaafar Rukayya ', 'SS 3', '1st Term', 'SS3A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(565, 'Abdulazeez Maryam ', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(566, 'Abdullahi Khadijat ', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(567, 'Abdullahi Rukayya ', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(568, 'Abdulmalik Aliyu ', 'SS 2', '1st Term', 'SS2A', 'Economics', 20, 10, 57, '2026', '2025/2026'),
(569, 'Abubakar Abbas ', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(570, 'Abubakar Awwa ', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(571, 'Abuwauab Ibrahim ', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(572, 'Alhassan Fatima ', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(573, 'Aliyu Hamidu ', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(574, 'Aliyu Mustapha ', 'SS 2', '1st Term', 'SS2A', 'Economics', 10, 15, 52, '2026', '2025/2026'),
(575, 'Bala Asmau ', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(576, 'Bala Regina ', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(577, 'Gamco Fatima Awwal', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(578, 'Ibrahim Ibrahim ', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(579, 'Ibrahim Sekinat ', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(580, 'Ikilima Haruna ', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(581, 'Isaq Muhammad ', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(582, 'Isaq Rayyanu ', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(583, 'Kolo Ruth ', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(584, 'Mainazari Isha Farida', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(585, 'Muhammad Abdullahi ', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(586, 'Muhammad Khadija ', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(587, 'Muhammad Sani Ahmed', 'SS 2', '1st Term', 'SS2A', 'Economics', 16, 18, 57, '2026', '2025/2026'),
(588, 'Musa Salisu ', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(589, 'Nafizi Rashida ', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(590, 'Saidu Mamuna Sabo', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(591, 'Yasir Abubakar ', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(592, 'Yasir Ali ', 'SS 2', '1st Term', 'SS2A', 'Economics', 0, 0, 0, '2026', '2025/2026'),
(593, 'Abdullahi Musa ', 'SS 1', '1st Term', 'SS1A', 'Geography', 3, 8, 0, '2026', '2025/2026'),
(594, 'Abubakar Habiba ', 'SS 1', '1st Term', 'SS1A', 'Geography', 5, 13, 37, '2026', '2025/2026'),
(595, 'Abubakar Hassana ', 'SS 1', '1st Term', 'SS1A', 'Geography', 0, 0, 0, '2026', '2025/2026'),
(596, 'Abubakar Hussani', 'SS 1', '1st Term', 'SS1A', 'Geography', 11, 15, 30, '2026', '2025/2026'),
(597, 'Abubakar Jamana ', 'SS 1', '1st Term', 'SS1A', 'Geography', 3, 6, 11, '2026', '2025/2026'),
(598, 'Adamu Bilikisu ', 'SS 1', '1st Term', 'SS1A', 'Geography', 8, 15, 39, '2026', '2025/2026'),
(599, 'Aliyu Murjanatu ', 'SS 1', '1st Term', 'SS1A', 'Geography', 2, 10, 0, '2026', '2025/2026'),
(600, 'Anas Usman ', 'SS 1', '1st Term', 'SS1A', 'Geography', 17, 10, 33, '2026', '2025/2026'),
(601, 'Ekwere Happiness ', 'SS 1', '1st Term', 'SS1A', 'Geography', 5, 15, 37, '2026', '2025/2026'),
(602, 'Gaddafi Bilikisu ', 'SS 1', '1st Term', 'SS1A', 'Geography', 4, 8, 21, '2026', '2025/2026'),
(603, 'Habib Haiadar ', 'SS 1', '1st Term', 'SS1A', 'Geography', 7, 4, 5, '2026', '2025/2026'),
(604, 'Hajara Auwal ', 'SS 1', '1st Term', 'SS1A', 'Geography', 4, 10, 35, '2026', '2025/2026'),
(605, 'Ibrahim Rukayya ', 'SS 1', '1st Term', 'SS1A', 'Geography', 0, 0, 0, '2026', '2025/2026'),
(606, 'Muhammad Haruna ', 'SS 1', '1st Term', 'SS1A', 'Geography', 0, 0, 0, '2026', '2025/2026'),
(607, 'Muhammad Ishaqu ', 'SS 1', '1st Term', 'SS1A', 'Geography', 0, 0, 0, '2026', '2025/2026'),
(608, 'Muhammad Mahadi ', 'SS 1', '1st Term', 'SS1A', 'Geography', 0, 0, 0, '2026', '2025/2026'),
(609, 'Muhammad Mustapha', 'SS 1', '1st Term', 'SS1A', 'Geography', 0, 0, 0, '2026', '2025/2026'),
(610, 'Muktar Kabir ', 'SS 1', '1st Term', 'SS1A', 'Geography', 0, 0, 0, '2026', '2025/2026'),
(611, 'Salisu Abdulrazaq ', 'SS 1', '1st Term', 'SS1A', 'Geography', 0, 0, 0, '2026', '2025/2026'),
(612, 'Salisu Khadija ', 'SS 1', '1st Term', 'SS1A', 'Geography', 0, 0, 0, '2026', '2025/2026'),
(613, 'Salisu Maimuna ', 'SS 1', '1st Term', 'SS1A', 'Geography', 0, 0, 0, '2026', '2025/2026'),
(614, 'Yahaya Sa', 'SS 1', '1st Term', 'SS1A', 'Geography', 17, 15, 34, '2026', '2025/2026'),
(615, 'Yahaya Sa', 'SS 1', '1st Term', 'SS1A', 'Geography', 0, 0, 0, '2026', '2025/2026'),
(616, 'Zikirullah Abdul-Aziz ', 'SS 1', '1st Term', 'SS1A', 'Geography', 0, 0, 0, '2026', '2025/2026'),
(617, 'Abubakar Hassan ', 'SS 1', '1st Term', 'SS1A', 'Geography', 9, 15, 33, '2026', '2025/2026');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category` varchar(100) NOT NULL,
  `capacity` varchar(50) NOT NULL,
  `class` varchar(40) NOT NULL,
  `teacher_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `category`, `capacity`, `class`, `teacher_name`) VALUES
(1, 'JSS 1A', 'Junior', '60', '1', 'Mr Donatus'),
(2, 'JSS 2A', 'Junior', '60', '2', 'Mr Donatus'),
(3, 'JSS 3A', 'Junior', '60', '3', 'Mr Donatus'),
(4, 'SS1A', 'Senior secondary', '60', '4', 'Mr Donatus'),
(5, 'SS2A', 'Senior secondary', '60', '5', 'Mr Donatus'),
(6, 'SS3A', 'Senior secondary', '60', '6', 'Mr Donatus');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentID` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `classesID` int(11) NOT NULL,
  `registerNO` varchar(40) NOT NULL,
  `username` varchar(60) NOT NULL,
  `exam_pin` int(11) NOT NULL,
  `card_serial_no` varchar(255) NOT NULL,
  `sectionid` varchar(10) NOT NULL,
  `country` varchar(100) NOT NULL,
  `dob` varchar(40) NOT NULL,
  `phone` varchar(70) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `state` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'on',
  `height` varchar(11) NOT NULL,
  `weight` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentID`, `name`, `password`, `sex`, `classesID`, `registerNO`, `username`, `exam_pin`, `card_serial_no`, `sectionid`, `country`, `dob`, `phone`, `religion`, `email`, `address`, `state`, `photo`, `status`, `height`, `weight`) VALUES
(25, 'Abdurrahman Sani ', '$2y$12$00okYjY4OTRiOGY2OWQxYeMehn2z48PdlM4W4hlKD7wp16kISM/q2', 'male', 3, 'mocco/2026_2025', 'sani', 39557, '', '3', '', '', '', '', '', '', '', '', 'on', '', ''),
(26, 'Owolabi Khairat ', '$2y$12$00okZDgwYmVhNjJmZTk4NOnLVxqY2k64JkNSjhlvB.dNBpd/o7QK6', 'female', 3, 'mocco/2026_9302', 'Khairat', 44366, '', '3', '', '', '', '', '', '', '', '', 'on', '', ''),
(27, 'Danjuma Jabir ', '$2y$12$00okMGJmMDRhZjBhNmM1Yese7quCOEpGaU94xEDXG0NowRCdQ30lC', 'male', 3, 'mocco/2026_9533', 'Jabir', 11746, '', '3', '', '', '', '', '', '', '', '', 'on', '', ''),
(28, 'Muhammad Yahaya ', '$2y$12$00okMGY2YTE4YTk1YzE4O.U.fozEjtAqxi9.xKHL0VfSVYkFj848C', 'male', 3, 'mocco/2026_7227', 'yahaya', 36033, '', '3', '', '', '', '', '', '', '', '', 'on', '', ''),
(29, 'Ummus Salma Fadlu', '$2y$12$00okM2RiNDk4MTdlNDRmZ.5fqpxtSZG4CisaCMeF/4RqO5XGhVTqG', 'female', 3, 'mocco/2026_7358', 'salma', 48482, '', '3', '', '', '', '', '', '', '', '', 'on', '', ''),
(30, 'Zakari Jabrin ', '$2y$12$00okMDMzYjc4NjlhNmIxNuxn3RYBt6BOdKbILvefBmiBKZwBMM4vm', 'male', 3, 'mocco/2026_9600', 'jabrin', 29015, '', '3', '', '', '', '', '', '', '', '', 'on', '', ''),
(31, 'Suleman Hauwau ', '$2y$12$00okYWE1OTgzOGFjNmFjMuBpnTW8WpPioZomnYND13xQeKPVIYEgK', 'female', 3, 'mocco/2026_8312', 'hauwau', 23847, '', '3', '', '', '', '', '', '', '', '', 'on', '', ''),
(32, 'Suleman Abdullahi ', '$2y$12$00okNTc3MDI2ZGZhNjgwMuf03ooxSxyzmojW383yUiQPJMt1UmTq2', 'male', 3, 'mocco/2026_7302', 'abdullahi', 56206, '', '3', '', '', '', '', '', '', '', '', 'on', '', ''),
(33, 'Sharafadeen Nafisat ', '$2y$12$00okYzc1MmM1Y2ZmODBlM.yPFKP66jQschv0MXbGbm66jwKkgYGLu', 'female', 3, 'mocco/2026_8925', 'nafisat', 51456, '', '3', '', '', '', '', '', '', '', '', 'on', '', ''),
(35, 'Jubrin Hassana ', '$2y$12$00okOTg0OTk2ZjdlNWMyZe3tbmY0q9XHQpACmWAloK5eSOqcRP3pe', 'female', 1, 'mocco/2026_6924', 'hassana', 59303, '', '1', '', '', '', '', '', '', '', '', 'on', '', ''),
(36, 'Haruna Hauwau ', '$2y$12$00okMWI2MjQ2YTBiYmQzYu7SBKLX4A5dEtrqN2FlXG/CDS04Wilfi', 'female', 1, 'mocco/2026_708', 'hauwau', 71457, '', '1', '', '', '', '', '', '', '', '', 'on', '', ''),
(37, 'Suleman Ummulkhairi ', '$2y$12$00okZDc4NDUyNjJlOWQ0NOrSbjIM4RHCLcWIruUv1kLg072b882l.', 'male', 1, 'mocco/2026_7132', 'suleman', 86650, '', '1', '', '', '', '', '', '', '', '', 'on', '', ''),
(38, 'Abubakar Fatima ', '$2y$12$00okOTIwMzNlN2YzNzM5MunEMSU85pypjARRJuVBOVi8vVycp2STu', 'female', 1, 'mocco/2026_9623', 'fatima', 31968, '', '1', '', '', '', '', '', '', '', '', 'on', '', ''),
(39, 'Usman Hajara ', '$2y$12$00okZWE0YzdiZWU3YWYwZ.Amz0BQR6TavRtetfG05iPI9xrJn2jxK', 'female', 1, 'mocco/2026_3128', 'hajara', 37400, '', '1', '', '', '', '', '', '', '', '', 'on', '', ''),
(40, 'Gaddafi Aisha ', '$2y$12$00okYTY0OThkYzE1NTI2Me5j3FoM1ZicBFROmdepI6xmo/34uyhAe', 'female', 1, 'mocco/2026_4525', 'aisha', 56429, '', '1', '', '', '', '', '', '', '', '', 'on', '', ''),
(41, 'Gaddafi Sani ', '$2y$12$00okYTViNTVkODUzMDVlO.7NpXWJsgngfqZQ4WbKMDBWIX44DOcpm', 'male', 1, 'mocco/2026_9614', 'sani', 50173, '', '1', '', '', '', '', '', '', '', '', 'on', '', ''),
(42, 'Ahmad Habib ', '$2y$12$00okMzA5NjRiN2YyYjM3O.y8kGcZteBrl1qTCWH8Xo1TKoY/5v2eW', 'female', 1, 'mocco/2026_4004', 'habib', 46334, '', '1', '', '', '', '', '', '', '', '', 'on', '', ''),
(43, 'Nuraddeen Yakubu ', '$2y$12$00okN2MwOGM5MzBkMzI1ZehEHAJgpyz2HI6k3NNHWQyDmUfous9MW', 'male', 1, 'mocco/2026_2046', 'yakubu', 48855, '', '1', '', '', '', '', '', '', '', '', 'on', '', ''),
(44, 'Abdullahi Aminu ', '$2y$12$00okYjcyNGVkNTcxZjEzZOkucCZNx/E7bFg0t0byw.Ugfhnl1Lakm', 'male', 2, 'mocco/2026_7152', 'aminu', 39699, '', '2', '', '', '', '', '', '', '', '', 'on', '', ''),
(45, 'Abubakar Ladan ', '$2y$12$00okMjUxMjM5YjdkMjRlNOf0Xbv63yeqcoQaC3jEBMkA.p9uZzFtu', 'male', 2, 'mocco/2026_8321', 'ladan', 58855, '', '2', '', '', '', '', '', '', '', '', 'on', '', ''),
(46, 'Usman Rabiu ', '$2y$12$00okNzY0OTRmOGY4ODI2YeQFfYdnCTZNlZdMygKCJ59zSQaIdX5Hq', 'male', 2, 'mocco/2026_530', 'rabiu', 12192, '', '2', '', '', '', '', '', '', '', '', 'on', '', ''),
(47, 'Ummulkhairi Yusuf ', '$2y$12$00okYzVmZWMxYmNiNjIxYuCw6sAScb.YyP63Sq8QSG.3/aO8EcFma', 'male', 2, 'mocco/2026_3949', 'yusuf', 27253, '', '2', '', '', '', '', '', '', '', '', 'on', '', ''),
(48, 'Muhammad Sumayya ', '$2y$12$00okNzFiYmIyOTA1YmEyMuXiA/t/k0LFdaGw3FMJXY8kLID1L8eMK', 'female', 2, 'mocco/2026_5532', 'sumayya', 80239, '', '2', '', '', '', '', '', '', '', '', 'on', '', ''),
(49, 'Muhammad Sabir ', '$2y$12$00okMTZmYzQ1ZTQyYzIxZ.od1wPU0CZHTA27qqHtXeNEsgjeFmmsK', 'male', 2, 'mocco/2026_7033', 'sabir', 12075, '', '2', '', '', '', '', '', '', '', '', 'on', '', ''),
(50, 'Hassan Habib ', '$2y$12$00okNTBhMzAxOGM5ZDljZelzab9xlKKrwWbWCxQmPrOHAKQjhfbIu', 'female', 2, 'mocco/2026_3924', 'habib', 78220, '', '2', '', '', '', '', '', '', '', '', 'on', '', ''),
(51, 'Auwal Hafisat ', '$2y$12$00okNGEwN2M0NTg3ZmZjNuwejhPJKvBIwXS/V6lfn3aCjJc23FZNW', 'female', 2, 'mocco/2026_5112', 'auwal', 59504, '', '2', '', '', '', '', '', '', '', '', 'on', '', ''),
(52, 'Emmanuel Melody ', '$2y$12$00okYmQyZjAxMTVhODQ5MeRSSK0I661JZaAylPk6RCb4jE9mNBvtW', 'male', 2, 'mocco/2026_9832', 'melody', 31838, '', '2', '', '', '', '', '', '', '', '', 'on', '', ''),
(53, 'Abida Habib ', '$2y$12$00okNDQ3NDc2MDY0ZjM3M.9.CZbkM8IHs.lb6BgDJEdfmSalsQ7EK', 'female', 2, 'mocco/2026_5413', 'abida', 54078, '', '2', '', '', '', '', '', '', '', '', 'on', '', ''),
(54, 'Saheed Zainab ', '$2y$12$00okOWY5MzNhNTBlMzJmNuZZMfnUgJZRrQhjBTymmDBjA03pKEGe.', 'female', 2, 'mocco/2026_911', 'zainab', 33091, '', '2', '', '', '', '', '', '', '', '', 'on', '', ''),
(55, 'Idris Rukayya ', '$2y$12$00okNDkyNGExYmNjMzQzYOAOjGK0JO76HXHAEKwwVsX4K0sETle1W', 'female', 2, 'mocco/2026_1424', 'idris', 78788, '', '2', '', '', '', '', '', '', '', '', 'on', '', ''),
(56, 'Usman Adam ', '$2y$12$00okMmZmMTA0NWU4Y2MzMebGBSPuRSdZ4yTSMXKvj0mIqlT.SVM4e', 'male', 1, 'mocco/2026_6630', 'adam', 98754, '', '1', '', '', '', '', '', '', '', '', 'on', '', ''),
(57, 'Jibrin Hussaina ', '$2y$12$00okOGZmODdiYWUyYWMyZeUsCfXdkeHZgubXvjrhRGZafqKwN3Wz6', 'female', 1, 'mocco/2026_6340', 'jibrin', 27503, '', '1', '', '', '', '', '', '', '', '', 'on', '', ''),
(59, 'Yasir Abdullahi ', '$2y$12$00okOTk5NDhkODYxYWVkNeXZUcXOyRcP4MWuFrv3RmyGVcAj1gAai', 'male', 3, 'mocco/2026_128', 'yasir', 59793, '', '3', '', '', '', '', '', '', '', '', 'on', '', ''),
(60, 'Abubakar Abbas ', '$2y$12$00okZjMwZTVlN2I1MmY1YuHDzxpgccxAVgOsqbkVOm4W8vHPRF0Z.', 'male', 5, 'mocco/2026_10011', 'Abbas', 94629, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(61, 'Abdulmalik Aliyu ', '$2y$12$00okOGQ1N2ViMjIzMjZmYeg5gJShMSBieL4FwmrHvjL8mfeZmZhne', 'male', 5, 'mocco/2026_2112', 'Aliyu', 86965, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(62, 'Abubakar Awwa ', '$2y$12$00okMDQyMDdlMTlhMDM2NuOlbCxqScWVYwlgYo51fK9OKjpt1pkVu', 'female', 5, 'mocco/2026_4611', 'awwa', 21112, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(63, 'Muhammad Abdullahi ', '$2y$12$00okNzUzNDBlZGUwNzIwNOAkqgjDdAUUv3vi1zDOiGnkbLnSbkcGq', 'male', 5, 'mocco/2026_2325', 'Abdul', 53394, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(64, 'Musa Salisu ', '$2y$12$00okMWY0ZmNhYzRjNGZhOOiHvDLmmM/8tqL06v1RiemX3Bo5qFLGO', 'male', 5, 'mocco/2026_3321', 'musa', 27468, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(65, 'Yasir Ali ', '$2y$12$00okM2Q3NGNlNWQ5NmRiMOhKI59kU90j77x8OHMM7Qd5/ywRqzha6', 'male', 5, 'mocco/2026_2626', 'ali', 14215, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(66, 'Yasir Abubakar ', '$2y$12$00okMmQxNTc2NjBhMjg3YOUTmFWvQqpbsLH2wrYLZMXjJXtYxcwlW', 'male', 5, 'mocco/2026_5803', 'yasir', 10796, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(67, 'Aliyu Hamidu ', '$2y$12$00okMzQ1N2RlNjk0ZTQxYOK.ne3lWB/83cWAD.PmBA9Tlg4ue2ZRG', 'male', 5, 'mocco/2026_7550', 'hamidu', 16481, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(68, 'Abuwauab Ibrahim ', '$2y$12$00okNzhjZWM0YTQzMjYwYOI0jQd/LNiJFaE7fbhHW6swNbZXAaLti', 'male', 5, 'mocco/2026_6801', 'ibrahim', 94631, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(69, 'Kolo Ruth ', '$2y$12$00okZTBjYjdmYWIwZTk1O.YsOSSHcjC/KDwR0LvYkwoWvu5eB2P6m', 'female', 5, 'mocco/2026_2755', 'ruth', 47168, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(70, 'Alhassan Fatima ', '$2y$12$00okYzI2OTA2NTc4MWRiZ.o4UjZURQDYKA0CtuTCiyH/rmS0BNwfS', 'female', 5, 'mocco/2026_5637', 'fatima', 32948, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(71, 'Ibrahim Sekinat ', '$2y$12$00okOWZkODljMjM3YzlmN.DgNY9wUqMqwAyvXdGdEcKQA71inQrtu', 'female', 5, 'mocco/2026_2359', 'sekinat', 21190, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(72, 'Abdullahi Rukayya ', '$2y$12$00okNmRkYTRiM2E2YThkMOEQxk40lvPbD9PsYXE4voo3XRwurpHJ2', 'female', 5, 'mocco/2026_4239', 'rukayya', 69357, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(73, 'Nafizi Rashida ', '$2y$12$00okNTM2OWJhNWRhMzAxMOUzBNMVRk23.ji0iqalZG.xWlEBLgcoy', 'female', 5, 'mocco/2026_8552', 'naufi', 55935, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(74, 'Gamco Fatima Awwal', '$2y$12$00okMjEwMjQ4YzFlY2IyZO1lljIKuncjq/GUaD8bO1.KKTxLTn5u.', 'female', 5, 'mocco/2026_2852', 'fatima', 78144, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(75, 'Saidu Mamuna Sabo', '$2y$12$00okZjE5MTQ0NmRmMmI2Yewql5ElUVs1wAZgcZ/Z4pOHmlXZmV6gu', 'female', 5, 'mocco/2026_2548', 'mamuna', 47991, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(76, 'Muhammad Khadija ', '$2y$12$00okMWM4YjBjODhiODI5YughmqaZncVKbQMBsFofCsee7CcRbATsy', 'female', 5, 'mocco/2026_3320', 'khadija', 88605, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(77, 'Bala Asmau ', '$2y$12$00okYTQ1MGZkYTY5Njc0OOwNJ0.1FzI.0dAF1OGrJKJZ11E4AnEzm', 'female', 5, 'mocco/2026_3812', 'Asmau', 39428, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(78, 'Mainazari Isha Farida', '$2y$12$00okNTA4NGYyYTUyNGM4ZeRxo3ScHnPRV/G7gFIck3J7xTgDIEwai', 'female', 5, 'mocco/2026_6748', 'Isha', 75314, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(79, 'Abdulazeez Maryam ', '$2y$12$00okZDMzNDM3NGZhMjhkNevgt./cYd7a6wS6PJ/z5iejdNwALaIz6', 'female', 5, 'mocco/2026_9148', 'Maryam', 33240, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(80, 'Abdullahi Khadijat ', '$2y$12$00okOGQwZmIwMTJlOTEzYucgC8f7LpQDF4S7DCs3oqjHHHTxdit3q', 'female', 5, 'mocco/2026_5248', 'khadijat', 92584, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(81, 'Aliyu Mustapha ', '$2y$12$00okYTc2ZmQ1ZmJkNmI3YOxXVuBFYiB/1o3HUsTgRM1C.nAb/hF.2', 'male', 5, 'mocco/2026_929', 'Aliyu', 20561, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(82, 'Muhammad Sani Ahmed', '$2y$12$00okYzBmNDMxZGViODM4N.SxbZzedtWxiiJF8WdrIWe0aCjZGf14e', 'male', 5, 'mocco/2026_3029', 'Sani', 36799, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(83, 'Bala Regina ', '$2y$12$00okNjE0ODczMjdiNDM4YeErRyeurnIpyWVZ1nQqniVGFjeZ0A4vK', 'female', 5, 'mocco/2026_1925', 'regina', 14730, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(84, 'Ibrahim Ibrahim ', '$2y$12$00okZjM2NGMxODRmYTgwNu7h9CHH90U6joA7YqgPiYFicq0wKM.8e', 'male', 5, 'mocco/2026_4756', 'ibrahim', 95640, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(85, 'Ikilima Haruna ', '$2y$12$00okNjA2NzJmMTA0ZGQ2O.TFcAWQ8Kfnz7P4yK2WMwxrG151lEYui', 'female', 5, 'mocco/2026_9103', 'ikilima', 31397, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(88, 'Isaq Muhammad ', '$2y$12$00okY2VkMjFiYWY2YjcyZOdN3P0yaRiOzJA7UxNeueiqZGRUfC5Bi', 'male', 5, 'mocco/2026_6321', 'Isaq', 24332, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(89, 'Isaq Rayyanu ', '$2y$12$00okOGQ1Yzg3YmE1N2Y1OOUmT6lNWZbDEAOScNKZQSX6jMByHYZd6', 'female', 5, 'mocco/2026_6804', 'Rayyanu', 90069, '', '5', '', '', '', '', '', '', '', '', 'on', '', ''),
(90, 'Abubakar Hussani', '$2y$12$00okOWQyMThjNzUwY2I1ZeHOyJi6oZJm27aD2nTMRO0jveFcJrkb6', 'male', 4, 'mocco/2026_9031', 'Hussani', 13347, '', '4', '', '', '', '', '', '', '', '', 'on', '', ''),
(91, 'Yahaya Sa\'adatu', '$2y$12$00okNWY4ZjM2ZTM5ZjBmMuONYMlfCjdfQ6LoYEks773TJAq/wDX/O', 'female', 4, 'mocco/2026_2335', 'Saadatu', 47952, '', '4', '', '', '', '', '', '', '', '', 'on', '', ''),
(92, 'Abubakar Hassan ', '$2y$12$00okNmI3MmMzZTFjMzU5MuATsmhR3RbSeSGkGONLYQjKfpnXSF38C', 'male', 4, 'mocco/2026_1012', 'Hassan', 91596, '', '4', '', '', '', '', '', '', '', '', 'on', '', ''),
(93, 'Yahaya Aliyu ', '$2y$12$00okMDZiZDA0NjgwZjViMOc0J/ZxnQYGr8HBQzmX5i/kzmwVFqrPS', 'male', 4, 'mocco/2026_9115', 'Aliyu', 77709, '', '4', '', '', '', '', '', '', '', '', 'on', '', ''),
(94, 'Abubakar Jamana ', '$2y$12$00okOGVmYTdmMmIwMDUyMe2XdNRAFUwHIvC5AWRIAJMrpktp/kPza', 'female', 4, 'mocco/2026_8829', 'Jamana', 10578, '', '4', '', '', '', '', '', '', '', '', 'on', '', ''),
(95, 'Ekwere Happiness ', '$2y$12$00okYmRlOTQ3YWMzY2EyZeXTVhbfup0rl8L3fkimsAoRnPxM1ynUK', 'female', 4, 'mocco/2026_1203', 'Happiness', 30102, '', '4', '', '', '', '', '', '', '', '', 'on', '', ''),
(96, 'Aliyu Murjanatu ', '$2y$12$00okNmI0NmM1ZWQzNzhlMuOdPcadJiUplzdqYPirjv5z65me4CWt6', 'female', 4, 'mocco/2026_1853', 'Murjanatu', 95828, '', '4', '', '', '', '', '', '', '', '', 'on', '', ''),
(97, 'Hajara Auwal ', '$2y$12$00okNTk2NzUzMTBiMzZkZOX5KejvWNWc9f.BajcFmz4EvrI/a5C5y', 'female', 4, 'mocco/2026_5955', 'Auwal', 79814, '', '4', '', '', '', '', '', '', '', '', 'on', '', ''),
(98, 'Abdullahi Musa ', '$2y$12$00okNjkzOTNlMDc5NjE5Ne18i5rbDCGX8ylLriLzkF/jT2wWkfogi', 'male', 4, 'mocco/2026_6625', 'Musa', 47667, '', '4', '', '', '', '', '', '', '', '', 'on', '', ''),
(99, 'Abubakar Habiba ', '$2y$12$00okZGJmN2FlZjRiN2FlMeAMMa34401rkWUCGufbG9aNzemHyd9E.', 'female', 4, 'mocco/2026_9215', 'Habiba', 13341, '', '4', '', '', '', '', '', '', '', '', 'on', '', ''),
(100, 'Anas Usman ', '$2y$12$00okM2Q2Zjg5OWNlMjFmZOceXzRB8NTzhJkNXV6Oe0qcgmj0Ay/6y', 'male', 4, 'mocco/2026_159', 'Anas', 73883, '', '4', '', '', '', '', '', '', '', '', 'on', '', ''),
(101, 'Muhammad Haruna ', '$2y$12$00okNzNmN2RiODA3OGYzN.6LY8M2GDNJ0dzzw5dBpVcCH723Q4/H6', 'male', 4, 'mocco/2026_3458', 'Haruna', 38347, '', '4', '', '', '', '', '', '', '', '', 'on', '', ''),
(102, 'Gaddafi Bilikisu ', '$2y$12$00okMGZlNTcyZjg4NWI0O.y1WMg5bFcc/64IVVbClr22.dNa1x8Y2', 'female', 4, 'mocco/2026_2905', 'Bilikisu', 82191, '', '4', '', '', '', '', '', '', '', '', 'on', '', ''),
(103, 'Habib Haiadar ', '$2y$12$00okZGQ0MjM2MDZkYTY3O.yQzyvQfuWkD4OCoVNmYVTsczwV5gwNa', 'female', 4, 'mocco/2026_3750', 'Haiadar', 91920, '', '4', '', '', '', '', '', '', '', '', 'on', '', ''),
(104, 'Muhammad Ishaqu ', '$2y$12$00okZTNhNzQ1NGExM2NhZOVLL6TsRA3oxvj.nvQl01MdvR.S34ScO', 'male', 4, 'mocco/2026_6855', 'Ishaqu', 76588, '', '4', '', '', '', '', '', '', '', '', 'on', '', ''),
(105, 'Salisu Maimuna ', '$2y$12$00okODBkODUyZjAyZjkyMejU6bdI7kKyGn98ScRN77RW/nTBC60Jm', 'female', 4, 'mocco/2026_3246', 'Salisu', 56342, '', '4', '', '', '', '', '', '', '', '', 'on', '', ''),
(106, 'Muktar Kabir ', '$2y$12$00okNmNkYzZlYWQ0YzFhYe4TaQHSgZ/XphGcL5.WfohOTDkjltjA.', 'male', 4, 'mocco/2026_540', 'Kabir', 12736, '', '4', '', '', '', '', '', '', '', '', 'on', '', ''),
(107, 'Muhammad Mahadi ', '$2y$12$00okMTk5NmY5MDAyMjlmMetV1VXUchQnv3mXH5WlZyIgJf9nHwoay', 'male', 4, 'mocco/2026_6515', 'Mahadi', 51889, '', '4', '', '', '', '', '', '', '', '', 'on', '', ''),
(108, 'Ibrahim Rukayya ', '$2y$12$00okMGY1OTE3YTcxMzEwNeXdq6oVvZumMLXGZgnuPqBYF3hQ6azfG', 'female', 4, 'mocco/2026_5250', 'Rukayya', 15766, '', '4', '', '', '', '', '', '', '', '', 'on', '', ''),
(109, 'Zikirullah Abdul-Aziz ', '$2y$12$00okMTExMjQ4ZjI1NzQ0ZeYwpEZ88MqafCf33XtCLmDFSjkoxUvjC', 'male', 4, 'mocco/2026_1742', 'abdul', 63219, '', '4', '', '', '', '', '', '', '', '', 'on', '', ''),
(110, 'Muhammad Mustapha', '$2y$12$00okYWM2ZTA2NDUyMWYzO.bhbM2waDtnb8nT6inQmUPe5G2cCviJq', 'male', 4, 'mocco/2026_204', 'Mustapha', 28725, '', '4', '', '', '', '', '', '', '', '', 'on', '', ''),
(111, 'Salisu Khadija ', '$2y$12$00okOTExMjU5ZmVhZDI4OO0wS8vWoZt87fxgW01MYh4aTKdp9QsIW', 'female', 4, 'mocco/2026_7059', 'khadija', 13958, '', '4', '', '', '', '', '', '', '', '', 'on', '', ''),
(112, 'Adamu Bilikisu ', '$2y$12$00okNmVhODhiZmYyMGQ0MuKXppYY9AfoN6r6E8DDuoW10/cxbxVPC', 'female', 4, 'mocco/2026_2240', 'Adamu', 27957, '', '4', '', '', '', '', '', '', '', '', 'on', '', ''),
(113, 'Salisu Abdulrazaq ', '$2y$12$00okM2ZmNWUxY2FjMDNlNO1Kp8aEz69SfofxTn.yJnyCt6Qfbdywu', 'male', 4, 'mocco/2026_3922', 'Abdulrazaq', 28927, '', '4', '', '', '', '', '', '', '', '', 'on', '', ''),
(114, 'Haruna Farida ', '$2y$12$00okMWE0YzEyMmViMDA0NeirYrFU6rLCPeBgOJqKF3GA58NwuYNhi', 'female', 6, 'mocco/2026_9540', 'Farida', 63823, '', '6', '', '', '', '', '', '', '', '', 'on', '', ''),
(115, 'Baraatu Usman ', '$2y$12$00okNTk3Y2VmYTEyNjk3O.2VvGa/.UKlBeFnwh6rtSZMnMGjdYPba', 'male', 6, 'mocco/2026_637', 'usman', 53897, '', '6', '', '', '', '', '', '', '', '', 'on', '', ''),
(116, 'Nura Kausar', '$2y$12$00okOWY0ODBhOTUzZDU1M.ttI6ko3kE/Xw.v/vf0R/VIEsJ.bXwIO', 'male', 6, 'mocco/2026_4737', 'Nura', 57351, '', '6', '', '', '', '', '', '', '', '', 'on', '', ''),
(117, 'Jhasim Abubakar ', '$2y$12$00okNzBiZjFkN2U3ZWI0NuNPwEFUsbJg0fQs2KkQlVcUMpXe4AOQ2', 'male', 6, 'mocco/2026_7517', 'Jhasim', 55566, '', '6', '', '', '', '', '', '', '', '', 'on', '', ''),
(118, 'Khalifa Alhassan ', '$2y$12$00okMmQyNzI3MmNiOWNlMe3J3vY5ajbaAGu4BUtkJgjmL/POsUZE2', 'male', 6, 'mocco/2026_9824', 'Khalifa', 24903, '', '6', '', '', '', '', '', '', '', '', 'on', '', ''),
(119, 'Nura Jawad ', '$2y$12$00okNzNlNGM3MDgxMGI2NOSYjgDlpCkGvzCucgQhB1tlwFWUVTcQe', 'male', 6, 'mocco/2026_7603', 'Jawad', 97664, '', '6', '', '', '', '', '', '', '', '', 'on', '', ''),
(120, 'Abdulrazak Kudirat ', '$2y$12$00okZGU0MWZhOTI4NTkwNujk1WR06GTtnfESzxO4IcEV/QErsMzl2', 'female', 6, 'mocco/2026_6815', 'Kudirat', 56640, '', '6', '', '', '', '', '', '', '', '', 'on', '', ''),
(121, 'Yaujaafar Rukayya ', '$2y$12$00okMTgyM2YxNTVmNzY0Nu7PRdKca24HFJKungXCeUxFUy8/DkxjS', 'female', 6, 'mocco/2026_9404', 'Rukayya', 72117, '', '6', '', '', '', '', '', '', '', '', 'on', '', ''),
(122, 'Ibrahim Hafsat ', '$2y$12$00okZTdiNWZlZGQxZDE0Z.NgydJyuTSdHP4fgid8mgiKMxvU96oG6', 'female', 6, 'mocco/2026_8926', 'Hafsat', 15600, '', '6', '', '', '', '', '', '', '', '', 'on', '', ''),
(123, 'Musa Muhammad ', '$2y$12$00okMjlkY2YxNGI0NWIxO.QPWRw74kWUGY1DO9J2kRQW5kiLr8TPC', 'male', 6, 'mocco/2026_10035', 'musa', 21327, '', '6', '', '', '', '', '', '', '', '', 'on', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_positions`
--

CREATE TABLE `student_class_positions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `reg_no` varchar(150) NOT NULL,
  `class` varchar(60) NOT NULL,
  `section` varchar(60) NOT NULL,
  `exam` varchar(50) NOT NULL,
  `exam_year` varchar(100) NOT NULL,
  `marks_obtained` int(11) NOT NULL,
  `position` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_class_positions`
--

INSERT INTO `student_class_positions` (`id`, `name`, `reg_no`, `class`, `section`, `exam`, `exam_year`, `marks_obtained`, `position`) VALUES
(1, 'Abubakar Fatima ', 'mocco/2026_9623', 'JSS 1', 'JSS 1A', '1st Term', '2026', 714, '2nd'),
(2, 'Ahmad Habib ', 'mocco/2026_4004', 'JSS 1', 'JSS 1A', '1st Term', '2026', 495, '8th'),
(3, 'Gaddafi Aisha ', 'mocco/2026_4525', 'JSS 1', 'JSS 1A', '1st Term', '2026', 514, '5th'),
(4, 'Gaddafi Sani ', 'mocco/2026_9614', 'JSS 1', 'JSS 1A', '1st Term', '2026', 461, '10th'),
(5, 'Haruna Hauwau ', 'mocco/2026_708', 'JSS 1', 'JSS 1A', '1st Term', '2026', 711, '3rd'),
(6, 'Jibrin Hussaina ', 'mocco/2026_6340', 'JSS 1', 'JSS 1A', '1st Term', '2026', 493, '9th'),
(7, 'Jubrin Hassana ', 'mocco/2026_6924', 'JSS 1', 'JSS 1A', '1st Term', '2026', 498, '7th'),
(8, 'Nuraddeen Yakubu ', 'mocco/2026_2046', 'JSS 1', 'JSS 1A', '1st Term', '2026', 406, '11th'),
(9, 'Suleman Ummulkhairi ', 'mocco/2026_7132', 'JSS 1', 'JSS 1A', '1st Term', '2026', 619, '4th'),
(10, 'Usman Adam ', 'mocco/2026_6630', 'JSS 1', 'JSS 1A', '1st Term', '2026', 511, '6th'),
(11, 'Usman Hajara ', 'mocco/2026_3128', 'JSS 1', 'JSS 1A', '1st Term', '2026', 740, '1st'),
(12, 'Abdullahi Aminu ', 'mocco/2026_7152', 'JSS 2', 'JSS 2A', '1st Term', '2026', 437, '9th'),
(13, 'Abida Habib ', 'mocco/2026_5413', 'JSS 2', 'JSS 2A', '1st Term', '2026', 434, '10th'),
(14, 'Abubakar Ladan ', 'mocco/2026_8321', 'JSS 2', 'JSS 2A', '1st Term', '2026', 527, '2nd'),
(15, 'Auwal Hafisat ', 'mocco/2026_5112', 'JSS 2', 'JSS 2A', '1st Term', '2026', 438, '8th'),
(16, 'Emmanuel Melody ', 'mocco/2026_9832', 'JSS 2', 'JSS 2A', '1st Term', '2026', 428, '11th'),
(17, 'Hassan Habib ', 'mocco/2026_3924', 'JSS 2', 'JSS 2A', '1st Term', '2026', 488, '4th'),
(18, 'Idris Rukayya ', 'mocco/2026_1424', 'JSS 2', 'JSS 2A', '1st Term', '2026', 443, '7th'),
(19, 'Muhammad Sabir ', 'mocco/2026_7033', 'JSS 2', 'JSS 2A', '1st Term', '2026', 446, '6th'),
(20, 'Muhammad Sumayya ', 'mocco/2026_5532', 'JSS 2', 'JSS 2A', '1st Term', '2026', 570, '1st'),
(21, 'Saheed Zainab ', 'mocco/2026_911', 'JSS 2', 'JSS 2A', '1st Term', '2026', 454, '5th'),
(22, 'Ummulkhairi Yusuf ', 'mocco/2026_3949', 'JSS 2', 'JSS 2A', '1st Term', '2026', 570, '1st'),
(23, 'Usman Rabiu ', 'mocco/2026_530', 'JSS 2', 'JSS 2A', '1st Term', '2026', 510, '3rd'),
(24, 'Abdurrahman Sani ', 'mocco/2026_2025', 'JSS 3', 'JSS 3A', '1st Term', '2026', 678, '6th'),
(25, 'Danjuma Jabir ', 'mocco/2026_9533', 'JSS 3', 'JSS 3A', '1st Term', '2026', 121, '12th'),
(26, 'Muhammad Yahaya ', 'mocco/2026_7227', 'JSS 3', 'JSS 3A', '1st Term', '2026', 733, '5th'),
(27, 'Muhammad Yasir ', 'mocco/2026_9626', 'JSS 3', 'JSS 3A', '1st Term', '2026', 151, '10th'),
(28, 'Owolabi Khairat ', 'mocco/2026_9302', 'JSS 3', 'JSS 3A', '1st Term', '2026', 782, '3rd'),
(29, 'Sharafadeen Nafisat ', 'mocco/2026_8925', 'JSS 3', 'JSS 3A', '1st Term', '2026', 798, '2nd'),
(30, 'Suleman Abdullahi ', 'mocco/2026_7302', 'JSS 3', 'JSS 3A', '1st Term', '2026', 605, '7th'),
(31, 'Suleman Hauwau ', 'mocco/2026_8312', 'JSS 3', 'JSS 3A', '1st Term', '2026', 775, '4th'),
(32, 'Ummus Salma Fadlu', 'mocco/2026_7358', 'JSS 3', 'JSS 3A', '1st Term', '2026', 818, '1st'),
(33, 'Zakari Jabrin ', 'mocco/2026_9600', 'JSS 3', 'JSS 3A', '1st Term', '2026', 534, '8th'),
(34, 'Yasir Abdullahi ', 'mocco/2026_6118', 'JSS 3', 'JSS 3A', '1st Term', '2026', 141, '11th'),
(35, 'Yasir Abdullahi ', 'mocco/2026_128', 'JSS 3', 'JSS 3A', '1st Term', '2026', 417, '9th'),
(36, 'Abdulazeez Maryam ', 'mocco/2026_9148', 'SS 2', 'SS2A', '1st Term', '2026', 135, '11th'),
(37, 'Abdullahi Khadijat ', 'mocco/2026_5248', 'SS 2', 'SS2A', '1st Term', '2026', 115, '14th'),
(38, 'Abdullahi Rukayya ', 'mocco/2026_4239', 'SS 2', 'SS2A', '1st Term', '2026', 125, '12th'),
(39, 'Abdulmalik Aliyu ', 'mocco/2026_2112', 'SS 2', 'SS2A', '1st Term', '2026', 167, '6th'),
(40, 'Abubakar Abbas ', 'mocco/2026_10011', 'SS 2', 'SS2A', '1st Term', '2026', 190, '3rd'),
(41, 'Abubakar Awwa ', 'mocco/2026_4611', 'SS 2', 'SS2A', '1st Term', '2026', 120, '13th'),
(42, 'Abuwauab Ibrahim ', 'mocco/2026_6801', 'SS 2', 'SS2A', '1st Term', '2026', 125, '12th'),
(43, 'Alhassan Fatima ', 'mocco/2026_5637', 'SS 2', 'SS2A', '1st Term', '2026', 195, '2nd'),
(44, 'Aliyu Hamidu ', 'mocco/2026_7550', 'SS 2', 'SS2A', '1st Term', '2026', 165, '7th'),
(45, 'Aliyu Mustapha ', 'mocco/2026_929', 'SS 2', 'SS2A', '1st Term', '2026', 172, '4th'),
(46, 'Bala Asmau ', 'mocco/2026_3812', 'SS 2', 'SS2A', '1st Term', '2026', 135, '11th'),
(47, 'Bala Regina ', 'mocco/2026_1925', 'SS 2', 'SS2A', '1st Term', '2026', 220, '1st'),
(48, 'Gamco Fatima Awwal', 'mocco/2026_2852', 'SS 2', 'SS2A', '1st Term', '2026', 145, '9th'),
(49, 'Ibrahim Ibrahim ', 'mocco/2026_4756', 'SS 2', 'SS2A', '1st Term', '2026', 135, '11th'),
(50, 'Ibrahim Sekinat ', 'mocco/2026_2359', 'SS 2', 'SS2A', '1st Term', '2026', 220, '1st'),
(51, 'Ikilima Haruna ', 'mocco/2026_9103', 'SS 2', 'SS2A', '1st Term', '2026', 115, '14th'),
(52, 'Isaq Muhammad ', 'mocco/2026_6321', 'SS 2', 'SS2A', '1st Term', '2026', 125, '12th'),
(53, 'Isaq Rayyanu ', 'mocco/2026_6804', 'SS 2', 'SS2A', '1st Term', '2026', 115, '14th'),
(54, 'Kolo Ruth ', 'mocco/2026_2755', 'SS 2', 'SS2A', '1st Term', '2026', 220, '1st'),
(55, 'Mainazari Isha Farida', 'mocco/2026_6748', 'SS 2', 'SS2A', '1st Term', '2026', 135, '11th'),
(56, 'Muhammad Abdullahi ', 'mocco/2026_2325', 'SS 2', 'SS2A', '1st Term', '2026', 135, '11th'),
(57, 'Muhammad Khadija ', 'mocco/2026_3320', 'SS 2', 'SS2A', '1st Term', '2026', 150, '8th'),
(58, 'Muhammad Sani Ahmed', 'mocco/2026_3029', 'SS 2', 'SS2A', '1st Term', '2026', 171, '5th'),
(59, 'Musa Salisu ', 'mocco/2026_3321', 'SS 2', 'SS2A', '1st Term', '2026', 135, '11th'),
(60, 'Naufi Rashida ', 'mocco/2026_8552', 'SS 2', 'SS2A', '1st Term', '2026', 135, '11th'),
(61, 'Saidu Mamuna Sabo', 'mocco/2026_2548', 'SS 2', 'SS2A', '1st Term', '2026', 135, '11th'),
(62, 'Yasir Abubakar ', 'mocco/2026_5803', 'SS 2', 'SS2A', '1st Term', '2026', 140, '10th'),
(63, 'Yasir Ali ', 'mocco/2026_2626', 'SS 2', 'SS2A', '1st Term', '2026', 135, '11th'),
(64, 'Abdulrazak Kudirat ', 'mocco/2026_6815', 'SS 3', 'SS3A', '1st Term', '2026', 40, '10th'),
(65, 'Baraatu Usman ', 'mocco/2026_637', 'SS 3', 'SS3A', '1st Term', '2026', 110, '4th'),
(66, 'Haruna Farida ', 'mocco/2026_9540', 'SS 3', 'SS3A', '1st Term', '2026', 121, '3rd'),
(67, 'Ibrahim Hafsat ', 'mocco/2026_8926', 'SS 3', 'SS3A', '1st Term', '2026', 50, '9th'),
(68, 'Jhasim Abubakar ', 'mocco/2026_7517', 'SS 3', 'SS3A', '1st Term', '2026', 128, '2nd'),
(69, 'Khalifa Alhassan ', 'mocco/2026_9824', 'SS 3', 'SS3A', '1st Term', '2026', 104, '5th'),
(70, 'Nura Jawad ', 'mocco/2026_7603', 'SS 3', 'SS3A', '1st Term', '2026', 95, '7th'),
(71, 'Nura Kausar', 'mocco/2026_4737', 'SS 3', 'SS3A', '1st Term', '2026', 101, '6th'),
(72, 'Yaujaafar Rukayya ', 'mocco/2026_9404', 'SS 3', 'SS3A', '1st Term', '2026', 55, '8th'),
(73, 'Abdullahi Musa ', 'mocco/2026_6625', 'SS 1', 'SS1A', '1st Term', '2026', 207, '9th'),
(74, 'Abubakar Habiba ', 'mocco/2026_9215', 'SS 1', 'SS1A', '1st Term', '2026', 240, '6th'),
(75, 'Abubakar Hassana ', 'mocco/2026_1012', 'SS 1', 'SS1A', '1st Term', '2026', 178, '15th'),
(76, 'Abubakar Hussani', 'mocco/2026_9031', 'SS 1', 'SS1A', '1st Term', '2026', 236, '7th'),
(77, 'Abubakar Jamana ', 'mocco/2026_8829', 'SS 1', 'SS1A', '1st Term', '2026', 202, '12th'),
(78, 'Adamu Bilikisu ', 'mocco/2026_2240', 'SS 1', 'SS1A', '1st Term', '2026', 259, '3rd'),
(79, 'Aliyu Murjanatu ', 'mocco/2026_1853', 'SS 1', 'SS1A', '1st Term', '2026', 203, '11th'),
(80, 'Anas Usman ', 'mocco/2026_159', 'SS 1', 'SS1A', '1st Term', '2026', 255, '5th'),
(81, 'Ekwere Happiness ', 'mocco/2026_1203', 'SS 1', 'SS1A', '1st Term', '2026', 338, '1st'),
(82, 'Gaddafi Bilikisu ', 'mocco/2026_2905', 'SS 1', 'SS1A', '1st Term', '2026', 199, '13th'),
(83, 'Habib Haiadar ', 'mocco/2026_3750', 'SS 1', 'SS1A', '1st Term', '2026', 181, '14th'),
(84, 'Hajara Auwal ', 'mocco/2026_5955', 'SS 1', 'SS1A', '1st Term', '2026', 229, '8th'),
(85, 'Ibrahim Rukayya ', 'mocco/2026_5250', 'SS 1', 'SS1A', '1st Term', '2026', 165, '19th'),
(86, 'Muhammad Haruna ', 'mocco/2026_3458', 'SS 1', 'SS1A', '1st Term', '2026', 173, '17th'),
(87, 'Muhammad Ishaqu ', 'mocco/2026_6855', 'SS 1', 'SS1A', '1st Term', '2026', 170, '18th'),
(88, 'Muhammad Mahadi ', 'mocco/2026_6515', 'SS 1', 'SS1A', '1st Term', '2026', 125, '20th'),
(89, 'Muhammad Mustapha', 'mocco/2026_204', 'SS 1', 'SS1A', '1st Term', '2026', 115, '22nd'),
(90, 'Muktar Kabir ', 'mocco/2026_540', 'SS 1', 'SS1A', '1st Term', '2026', 120, '21st'),
(91, 'Salisu Abdulrazaq ', 'mocco/2026_3922', 'SS 1', 'SS1A', '1st Term', '2026', 175, '16th'),
(92, 'Salisu Khadija ', 'mocco/2026_7059', 'SS 1', 'SS1A', '1st Term', '2026', 120, '21st'),
(93, 'Salisu Maimuna ', 'mocco/2026_3246', 'SS 1', 'SS1A', '1st Term', '2026', 205, '10th'),
(94, 'Yahaya Aliyu ', 'mocco/2026_9115', 'SS 1', 'SS1A', '1st Term', '2026', 256, '4th'),
(95, 'Yahaya Sa', 'mocco/2026_2335', 'SS 1', 'SS1A', '1st Term', '2026', 311, '2nd'),
(96, 'Zikirullah Abdul-Aziz ', 'mocco/2026_1742', 'SS 1', 'SS1A', '1st Term', '2026', 100, '23rd'),
(97, 'Musa Muhammad ', 'mocco/2026_10035', 'SS 3', 'SS3A', '1st Term', '2026', 152, '1st'),
(98, 'Nafizi Rashida ', 'mocco/2026_8552', 'SS 2', 'SS2A', '1st Term', '2026', 0, '15th'),
(99, 'Abubakar Hassan ', 'mocco/2026_1012', 'SS 1', 'SS1A', '1st Term', '2026', 57, '24th');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `pass_mark` varchar(20) NOT NULL,
  `final_mark` varchar(20) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `subject_author` varchar(100) NOT NULL,
  `subject_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `class_id`, `teacher_name`, `pass_mark`, `final_mark`, `subject_name`, `subject_author`, `subject_code`) VALUES
(1, 1, 'Mr Donatus', '40', '100', 'Business Studies', '', 'B101'),
(2, 1, 'Mr Donatus', '40', '100', 'Huasa Language', '', 'H101'),
(3, 1, 'Mr Donatus', '40', '100', 'Basic Technology', '', 'BT101'),
(4, 1, 'Mr Donatus', '40', '100', 'English Language', '', 'Eng101'),
(5, 1, 'Mr Donatus', '40', '100', 'Mathematics', '', 'Maths101'),
(6, 1, 'Mr Donatus', '40', '100', 'Islamic Studies', '', 'Is101'),
(7, 2, 'Mr Donatus', '40', '100', 'English Language', '', 'Eng102'),
(8, 2, 'Mr Donatus', '40', '100', 'Mathematics', '', 'Maths102'),
(9, 2, 'Mr Donatus', '40', '100', 'Islamic Studies', '', 'Is102'),
(10, 2, 'Mr Donatus', '40', '100', 'Business Studies', '', 'bus102'),
(11, 2, 'Mr Donatus', '40', '100', 'Basic Tecnology', '', 'tec101'),
(12, 2, 'Mr Donatus', '40', '100', 'Huasa Language', '', 'H102'),
(13, 3, 'Mr Donatus', '40', '100', 'Huasa Language', '', 'H103'),
(14, 3, 'Mr Donatus', '40', '100', 'Basic Technology', '', 'tec103'),
(15, 3, 'Mr Donatus', '40', '100', 'Business Studies', '', 'bus103'),
(16, 3, 'Mr Donatus', '40', '100', 'Mathematics', '', 'Maths103'),
(17, 3, 'Mr Donatus', '40', '100', 'English Language', '', 'Eng103'),
(18, 3, 'Mr Donatus', '40', '100', 'Islamic Studies', '', 'Is103'),
(19, 1, 'Mr Donatus', '40', '100', 'Physical & Health Education', '', 'PHE'),
(20, 2, 'Mr Donatus', '40', '100', 'Physical & Health Education', '', 'PHE2'),
(21, 3, 'Mr Donatus', '40', '100', 'Physical & Health Education', '', 'PHE3'),
(22, 1, 'Mr Donatus', '40', '100', 'Social studies', '', 'Sos101'),
(23, 1, 'Mr Donatus', '40', '100', 'Cultural & creative arts', '', 'Cca101'),
(24, 1, 'Mr Donatus', '40', '100', 'Home Economics', '', 'HE101'),
(25, 2, 'Mr Donatus', '40', '100', 'Civic Education', '', 'civic101'),
(26, 3, 'Mr Donatus', '40', '100', 'Cultural & Creative Arts', '', 'Cca102'),
(27, 3, 'Mr Donatus', '40', '100', 'Civic Education', '', 'civic102'),
(28, 3, 'Mr Donatus', '40', '100', 'Social studies', '', 'Sos102'),
(29, 2, 'Mr Donatus', '40', '100', 'Cultural & creative arts', '', 'Cca103'),
(30, 1, 'Mr Donatus', '40', '100', 'Agric Science', '', 'AG101'),
(31, 1, 'Mr Donatus', '40', '100', 'Civic Education', '', 'CV101'),
(32, 1, 'Mr Donatus', '40', '100', 'Basic Science', '', 'BS101'),
(33, 1, 'Mr Donatus', '40', '100', 'Computer', '', 'COM101'),
(34, 1, 'Mr Donatus', '40', '100', 'C. R. S', '', 'CRS101'),
(35, 2, 'Mr Donatus', '40', '100', 'Basic Science', '', 'BS102'),
(36, 2, 'Mr Donatus', '40', '100', 'Computer', '', 'COM102'),
(37, 2, 'Mr Donatus', '40', '100', 'Home Economics', '', 'HE102'),
(38, 2, 'Mr Donatus', '40', '100', 'Agric Science', '', 'AG102'),
(39, 2, 'Mr Donatus', '40', '100', 'C. R. S', '', 'CRS102'),
(40, 2, 'Mr Donatus', '40', '100', 'Social Studies', '', 'Sos104'),
(41, 3, 'Mr Donatus', '40', '100', 'Agric Science', '', 'AG103'),
(42, 3, 'Mr Donatus', '40', '100', 'Computer', '', 'COM103'),
(43, 3, 'Mr Donatus', '40', '100', 'C. R. S', '', 'CRS103'),
(44, 3, 'Mr Donatus', '40', '100', 'Basic Science', '', 'BS103'),
(45, 3, 'Mr Donatus', '40', '100', 'Home Economics', '', 'homec3'),
(46, 4, 'Mr Donatus', '40', '100', 'English Language', '', 'Eng104'),
(47, 4, 'Mr Donatus', '40', '100', 'Mathematics', '', 'maths104'),
(48, 4, 'Mr Donatus', '40', '100', 'Civic Education', '', 'civic104'),
(49, 4, 'Mr Donatus', '40', '100', 'Marketing', '', 'mark101'),
(50, 4, 'Mr Donatus', '40', '100', 'Economics', '', 'Econs101'),
(51, 4, 'Mr Donatus', '40', '100', 'Chemistry', '', 'Chem101'),
(52, 4, 'Mr Donatus', '40', '100', 'Biology', '', 'Bio101'),
(53, 4, 'Mr Donatus', '40', '100', 'Physics', '', 'Phy101'),
(54, 4, 'Mr Donatus', '40', '100', 'Geography', '', 'Geo101'),
(55, 4, 'Mr Donatus', '40', '100', 'Commerce', '', 'Com104'),
(56, 4, 'Mr Donatus', '40', '100', 'Government', '', 'Gov101'),
(57, 4, 'Mr Donatus', '40', '100', 'Islamic Studies', '', 'Irs101'),
(58, 4, 'Mr Donatus', '40', '100', 'C.R.S', '', 'Crs104'),
(59, 4, 'Mr Donatus', '40', '100', 'Literature', '', 'lite101'),
(60, 4, 'Mr Donatus', '40', '100', 'Computer', '', 'Comp101'),
(61, 4, 'Mr Donatus', '40', '100', 'Agric Science', '', 'agric101'),
(62, 5, 'Mr Donatus', '40', '100', 'English Language', '', 'Eng105'),
(63, 5, 'Mr Donatus', '40', '100', 'Mathematics', '', 'maths105'),
(64, 5, 'Mr Donatus', '40', '100', 'Civic Education', '', 'civic105'),
(65, 5, 'Mr Donatus', '40', '100', 'Marketing', '', 'mark102'),
(66, 5, 'Mr Donatus', '40', '100', 'Economics', '', 'Econs102'),
(67, 5, 'Mr Donatus', '40', '100', 'Chemistry', '', 'Chem102'),
(68, 5, 'Mr Donatus', '40', '100', 'Biology', '', 'Bio102'),
(69, 6, 'Mr Donatus', '40', '100', 'Physics', '', 'phy102'),
(70, 6, 'Mr Donatus', '40', '100', 'Geography', '', 'Geo102'),
(71, 5, 'Mr Donatus', '40', '100', 'Physics', '', 'Phy103'),
(72, 5, 'Mr Donatus', '40', '100', 'Geography', '', 'Geo103'),
(73, 5, 'Mr Donatus', '40', '100', 'Commerce', '', 'Com105'),
(74, 5, 'Mr Donatus', '40', '100', 'Government', '', 'Gov102'),
(75, 5, 'Mr Donatus', '40', '100', 'Islamic Studies', '', 'Irs104'),
(76, 5, 'Mr Donatus', '40', '100', 'C. R. S', '', 'crs105'),
(77, 5, 'Mr Donatus', '40', '100', 'Literature', '', 'lite102'),
(78, 5, 'Mr Donatus', '40', '100', 'Computer', '', 'Comp102'),
(79, 5, 'Mr Donatus', '40', '100', 'Agric Science', '', 'Agric102'),
(80, 6, 'Mr Donatus', '40', '100', 'English Language', '', 'Eng106'),
(81, 6, 'Mr Donatus', '40', '100', 'Mathematics', '', 'maths106'),
(82, 6, 'Mr Donatus', '40', '100', 'Civic Education', '', 'civic103'),
(83, 6, 'Mr Donatus', '40', '100', 'Marketing', '', 'mark103'),
(84, 6, 'Mr Donatus', '40', '100', 'Economics', '', 'Econs103'),
(85, 6, 'Mr Donatus', '40', '100', 'Chemistry', '', 'Chem103'),
(86, 6, 'Mr Donatus', '40', '100', 'Biology', '', 'Bio103'),
(87, 6, 'Mr Donatus', '40', '100', 'Commerce', '', 'Com106'),
(88, 6, 'Mr Donatus', '40', '100', 'Government', '', 'Gov103'),
(89, 6, 'Mr Donatus', '40', '100', 'Islamic Studies', '', 'Irs105'),
(90, 6, 'Mr Donatus', '40', '100', 'C. R. S', '', 'Crs106'),
(91, 6, 'Mr Donatus', '40', '100', 'Literature', '', 'lite103'),
(92, 6, 'Mr Donatus', '40', '100', 'Computer', '', 'Comp103'),
(93, 6, 'Mr Donatus', '40', '100', 'Agric Science', '', 'Agric103');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(40) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `joining_date` date NOT NULL,
  `photo` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'on'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `designation`, `dob`, `gender`, `religion`, `email`, `phone`, `address`, `joining_date`, `photo`, `username`, `password`, `status`) VALUES
(1, 'Mr Donatus', 'Admin', '2026-02-01', 'male', '', 'xuhyqysed@mailinator.com', '', '', '2026-02-01', '', 'donatus', '$2y$12$00okZDZiNDZkMGQ2NzVhO.lF74yWq9TOjVnEVYmrSsafOFeQRtG42', 'on');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_expire_date`
--
ALTER TABLE `card_expire_date`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_usage_limit`
--
ALTER TABLE `card_usage_limit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generated_pins`
--
ALTER TABLE `generated_pins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pins`
--
ALTER TABLE `pins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`);

--
-- Indexes for table `student_class_positions`
--
ALTER TABLE `student_class_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `card_expire_date`
--
ALTER TABLE `card_expire_date`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `card_usage_limit`
--
ALTER TABLE `card_usage_limit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `generated_pins`
--
ALTER TABLE `generated_pins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pins`
--
ALTER TABLE `pins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=618;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `student_class_positions`
--
ALTER TABLE `student_class_positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
