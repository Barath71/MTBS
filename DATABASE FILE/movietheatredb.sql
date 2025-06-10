-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2022 at 05:43 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movietheatredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookings`
--

CREATE TABLE `tbl_bookings` (
  `book_id` int(11) NOT NULL,
  `ticket_id` varchar(30) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theater id',
  `user_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `no_seats` int(3) NOT NULL COMMENT 'number of seats',
  `amount` int(5) NOT NULL,
  `ticket_date` date NOT NULL,
  `date` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bookings`
--

INSERT INTO `tbl_bookings` (`book_id`, `ticket_id`, `t_id`, `user_id`, `show_id`, `screen_id`, `no_seats`, `amount`, `ticket_date`, `date`, `status`) VALUES
(12, 'BKID6369842', 4, 4, 17, 3, 1, 380, '2021-04-15', '2021-04-15', 1),
(13, 'BKID2313964', 6, 5, 21, 6, 4, 2400, '2021-04-16', '2021-04-15', 1),
(14, 'BKID1766021', 6, 5, 22, 6, 2, 1200, '2021-04-16', '2021-04-16', 1),
(15, 'BKID6391187', 15, 8, 50, 28, 1, 150, '2022-06-22', '2022-06-22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL,
  `subject` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL COMMENT 'email',
  `password` varchar(50) NOT NULL,
  `user_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `user_id`, `username`, `password`, `user_type`) VALUES
(1, 0, 'admin', 'password', 0),
(2, 3, 'theatre', 'password', 1),
(3, 4, 'theatre2', 'password', 1),
(12, 2, 'harryden@gmail.com', 'password', 2),
(15, 14, 'USR295127', 'PWD195747', 1),
(17, 4, 'bruno@gmail.com', 'password', 2),
(18, 6, 'THR760801', 'PWD649976', 1),
(19, 5, 'james@gmail.com', 'password', 2),
(20, 7, 'vetri', 'vetri123', 1),
(21, 6, 'kamaleshvar2004@gmail.com', 'kamal123', 2),
(22, 8, 'dragon', 'dragon123', 1),
(23, 9, 'THR174643', 'PWD281863', 1),
(24, 10, 'vishal', 'vishal123', 1),
(25, 7, 'shanthi@gmail.com', 'shanthi123', 2),
(26, 11, 'amirtham', 'amirtham', 1),
(27, 12, 'thangaregal', 'thangaregal', 1),
(28, 13, 'ambiga', 'ambiga', 1),
(29, 14, 'shanmuga', 'shanmuga', 1),
(30, 15, 'gopuram', 'gopuram', 1),
(31, 8, 'tnproject2022@gmail.com', 'password', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie`
--

CREATE TABLE `tbl_movie` (
  `movie_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `movie_name` varchar(255) NOT NULL,
  `cast` varchar(500) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `release_date` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0 means active '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movie`
--

INSERT INTO `tbl_movie` (`movie_id`, `t_id`, `movie_name`, `cast`, `desc`, `release_date`, `image`, `video_url`, `status`) VALUES
(23, 7, 'Vikram', 'Kamal Haasan, Fahadh Faasil, Vijay Sethupathi', 'A high-octane action film where a special investigator is assigned a case of serial Killings. As the investigation proceeds, and leading down this path is only going to end in a war between everyone involved.', '2022-06-03', 'images/vikram.avif', 'https://www.youtube.com/watch?v=OKBMCL-frPU', 0),
(24, 15, 'Jurassic World: Dominion', 'Chris Pratt, Bryce Dallas', 'Jurassic World: Dominion takes place four years after Isla Nublar has been destroyed. This determine whether human beings are to remain the apex predators on a planet', '2022-06-10', 'images/jurassic-world-dominion.avif', 'https://www.youtube.com/watch?v=KtDotsNELMM', 0),
(25, 15, 'Don', 'Sivakarthikeyan, Priyanka Arul Mohan', 'Don is a comedy movie written & directed by Cibi Chakaravarthi, starring Sivakarthikeyan in the lead role.', '2022-05-13', 'images/don.avif', 'https://www.youtube.com/watch?v=s5ak-NY6OC8', 0),
(26, 15, 'Nenjuku Needhi', 'Udhayanidhi Stalin, Tanya Ravichandran', 'Nenjuku Needhi is a Tamil movie starring Udhayanidhi Stalin, Aari and Tanya Ravichandran in lead roles.', '2022-05-20', 'images/nenjuku-needhi.avif', 'https://www.youtube.com/watch?v=IlQARz3b7z0', 0),
(27, 15, 'Top Gun: Maverick', 'Tom Cruise, Jennifer Connelly', 'After thirty years of service, Pete `Maverick` Mitchell continues to be a test pilot, actively avoiding promotions that would keep him on the ground.', '2022-05-27', 'images/top-gun-maverick.avif', 'https://www.youtube.com/watch?v=nJnJ8QOZS-4', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cast` varchar(100) NOT NULL,
  `news_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `attachment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `name`, `cast`, `news_date`, `description`, `attachment`) VALUES
(15, 'D Block', 'Arulnithi Tamilarasu', '2022-07-01', 'D Block is a drama film directed by Vijay Kumar Rajendran, featuring Arulnithi Tamilarasu in a prominent role.', 'news_images/d-block.avif'),
(16, 'Cobra', 'Vikram, Srinidhi Shetty,', '2022-08-11', 'Cobra is a Tamil movie starring Vikram in a prominent role. It is a drama directed by R. Ajay Gnanamuthu.', 'news_images/cobra.avif'),
(17, 'Black Adam', 'Dwayne Johnson', '2022-10-21', 'Nearly 5,000 years after he was bestowed with the almighty powers of the ancient gods-and imprisoned just as quickly-Black Adam (Johnson) is freed from his earthly tomb, ready to unleash his unique fo', 'news_images/black-adam.avif'),
(18, 'The Legend', 'Saravanan Arul, Urvashi Rautela', '2022-07-01', 'The Legend is a Tamil movie starring Saravanan, Urvashi Rautela, Geethika, Vivek, Nassar, Prabhu, Vijayakumar, and Yogi Babu in prominent roles. It is an action romance directed by JD and Jerry formin', 'news_images/the-legend.avif');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`user_id`, `name`, `email`, `phone`, `age`, `gender`) VALUES
(2, 'Harry Den', 'harryden@gmail.com', '1247778540', 22, 'gender'),
(4, 'Bruno', 'bruno@gmail.com', '7451112450', 30, 'gender'),
(5, 'James', 'james@gmail.com', '7124445696', 25, 'gender'),
(6, 'kamalesh', 'kamaleshvar2004@gmail.com', '7092204433', 19, 'gender'),
(7, 'shanthi', 'shanthi@gmail.com', '8568689578', 26, 'gender'),
(8, 'kamalesh', 'tnproject2022@gmail.com', '7092204433', 20, 'gender');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_screens`
--

CREATE TABLE `tbl_screens` (
  `screen_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `screen_name` varchar(110) NOT NULL,
  `seats` int(11) NOT NULL COMMENT 'number of seats',
  `charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_screens`
--

INSERT INTO `tbl_screens` (`screen_id`, `t_id`, `screen_name`, `seats`, `charge`) VALUES
(1, 3, 'Screen 1', 100, 350),
(2, 3, 'Screen 2', 150, 310),
(3, 4, 'Screen 1', 200, 380),
(5, 6, 'Demo Screen', 150, 300),
(6, 6, 'IMX Screen', 200, 600),
(7, 7, 'Screen 1', 200, 120),
(8, 7, 'Screen 2', 200, 120),
(9, 7, 'Screen 3', 200, 120),
(10, 8, 'Screen 1', 250, 130),
(11, 8, 'Screen 2', 250, 130),
(12, 8, 'Screen 3', 250, 130),
(13, 10, 'Screen 1', 200, 120),
(14, 10, 'Screen 2', 200, 120),
(15, 10, 'Screen 3', 200, 120),
(16, 11, 'screen1', 300, 140),
(17, 11, 'screen2', 300, 140),
(18, 11, 'screen3', 300, 140),
(19, 12, 'screen1', 300, 130),
(20, 12, 'screen2', 300, 130),
(21, 12, 'screen3', 300, 130),
(22, 13, 'screen1', 300, 120),
(23, 13, 'screen2', 300, 120),
(24, 13, 'screen3', 300, 120),
(25, 14, 'screen1', 250, 100),
(26, 14, 'screen2', 250, 100),
(27, 14, 'screen3', 250, 100),
(28, 15, 'screen1', 300, 150),
(29, 15, 'screen2', 300, 150),
(30, 15, 'screen3', 300, 150);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shows`
--

CREATE TABLE `tbl_shows` (
  `s_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL COMMENT 'show time id',
  `theatre_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 means show available',
  `r_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shows`
--

INSERT INTO `tbl_shows` (`s_id`, `st_id`, `theatre_id`, `movie_id`, `start_date`, `status`, `r_status`) VALUES
(50, 86, 15, 23, '2022-06-03', 1, 1),
(51, 89, 15, 23, '2022-06-03', 1, 1),
(52, 92, 15, 23, '2022-06-03', 1, 1),
(53, 87, 15, 25, '2022-05-13', 1, 1),
(54, 90, 15, 25, '2022-05-13', 1, 1),
(55, 93, 15, 25, '2022-05-13', 1, 1),
(56, 88, 15, 26, '2022-05-20', 1, 1),
(57, 91, 15, 26, '2022-05-20', 1, 1),
(58, 94, 15, 26, '2022-05-20', 1, 1),
(59, 22, 7, 23, '2022-06-03', 1, 1),
(60, 23, 7, 23, '2022-06-03', 1, 1),
(61, 24, 7, 23, '2022-06-03', 1, 1),
(62, 25, 7, 25, '2022-05-13', 1, 1),
(63, 26, 7, 25, '2022-05-13', 1, 1),
(64, 27, 7, 25, '2022-05-13', 1, 1),
(65, 28, 7, 26, '2022-05-20', 1, 1),
(66, 29, 7, 26, '2022-05-20', 1, 1),
(67, 30, 7, 26, '2022-05-20', 1, 1),
(68, 49, 11, 23, '2022-06-03', 1, 1),
(69, 50, 11, 23, '2022-06-03', 1, 1),
(70, 51, 11, 23, '2022-06-03', 1, 1),
(71, 52, 11, 25, '2022-05-13', 1, 1),
(72, 53, 11, 25, '2022-05-13', 1, 1),
(73, 54, 11, 25, '2022-05-13', 1, 1),
(74, 55, 11, 26, '2022-05-20', 1, 1),
(75, 56, 11, 26, '2022-05-20', 1, 1),
(76, 57, 11, 26, '2022-05-20', 1, 1),
(77, 58, 12, 23, '2022-06-03', 1, 1),
(78, 59, 12, 23, '2022-06-03', 1, 1),
(79, 60, 12, 23, '2022-06-03', 1, 1),
(80, 61, 12, 25, '2022-05-13', 1, 1),
(81, 62, 12, 25, '2022-05-13', 1, 1),
(82, 63, 12, 25, '2022-05-13', 1, 1),
(83, 64, 12, 27, '2022-05-27', 1, 1),
(84, 65, 12, 27, '2022-05-27', 1, 1),
(85, 67, 12, 27, '2022-05-27', 1, 1),
(86, 68, 13, 23, '2022-06-03', 1, 1),
(87, 69, 13, 23, '2022-06-03', 1, 1),
(88, 70, 13, 23, '2022-06-03', 1, 1),
(89, 71, 13, 26, '2022-05-20', 1, 1),
(90, 72, 13, 26, '2022-05-20', 1, 1),
(91, 73, 13, 26, '2022-05-20', 1, 1),
(92, 74, 13, 24, '2022-06-10', 1, 1),
(93, 75, 13, 24, '2022-06-10', 1, 1),
(94, 76, 13, 24, '2022-06-10', 1, 1),
(95, 77, 14, 23, '2022-06-03', 1, 1),
(96, 78, 14, 23, '2022-06-03', 1, 1),
(97, 79, 14, 23, '2022-06-03', 1, 1),
(98, 80, 14, 27, '2022-05-27', 1, 1),
(99, 81, 14, 27, '2022-05-27', 1, 1),
(100, 82, 14, 27, '2022-05-27', 1, 1),
(101, 83, 14, 25, '2022-05-13', 1, 1),
(102, 84, 14, 25, '2022-05-13', 1, 1),
(103, 85, 14, 25, '2022-05-13', 1, 1),
(104, 31, 8, 23, '2022-06-03', 1, 1),
(105, 32, 8, 23, '2022-06-03', 1, 1),
(106, 33, 8, 23, '2022-06-03', 1, 1),
(107, 34, 8, 27, '2022-05-27', 1, 1),
(108, 35, 8, 27, '2022-05-27', 1, 1),
(109, 36, 8, 27, '2022-05-27', 1, 1),
(110, 37, 8, 24, '2022-06-10', 1, 1),
(111, 38, 8, 24, '2022-06-10', 1, 1),
(112, 39, 8, 24, '2022-06-10', 1, 1),
(113, 40, 10, 23, '2022-06-03', 1, 1),
(114, 41, 10, 23, '2022-06-03', 1, 1),
(115, 42, 10, 23, '2022-06-03', 1, 1),
(116, 43, 10, 27, '2022-05-27', 1, 1),
(117, 44, 10, 27, '2022-05-27', 1, 1),
(118, 45, 10, 27, '2022-05-27', 1, 1),
(119, 46, 10, 24, '2022-06-10', 1, 1),
(120, 47, 10, 24, '2022-06-10', 1, 1),
(121, 48, 10, 24, '2022-06-10', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_show_time`
--

CREATE TABLE `tbl_show_time` (
  `st_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL COMMENT 'noon,second,etc',
  `start_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_show_time`
--

INSERT INTO `tbl_show_time` (`st_id`, `screen_id`, `name`, `start_time`) VALUES
(1, 1, 'Noon', '10:00:00'),
(2, 1, 'Matinee', '14:00:00'),
(3, 1, 'First', '18:00:00'),
(4, 1, 'Second', '21:00:00'),
(5, 2, 'Noon', '10:00:00'),
(6, 2, 'Matinee', '14:00:00'),
(7, 2, 'First', '18:00:00'),
(8, 2, 'Second', '21:00:00'),
(9, 3, 'Noon', '10:00:00'),
(10, 3, 'Matinee', '14:00:00'),
(11, 3, 'First', '18:00:00'),
(12, 3, 'Second', '21:00:00'),
(14, 4, 'Noon', '12:03:00'),
(15, 5, 'First', '00:08:00'),
(16, 5, 'Second', '15:10:00'),
(17, 5, 'Others', '18:10:00'),
(18, 6, 'Noon', '00:02:00'),
(19, 6, 'First', '06:35:00'),
(20, 6, 'Second', '09:18:00'),
(21, 5, 'Matinee', '20:04:00'),
(22, 7, 'First', '10:00:00'),
(23, 7, 'Noon', '13:30:00'),
(24, 7, 'Others', '17:30:00'),
(25, 8, 'First', '10:30:00'),
(26, 8, 'Noon', '14:00:00'),
(27, 8, 'Others', '18:00:00'),
(28, 9, 'First', '10:00:00'),
(29, 9, 'Noon', '13:30:00'),
(30, 9, 'Others', '17:30:00'),
(31, 10, 'First', '10:00:00'),
(32, 10, 'Second', '13:30:00'),
(33, 10, 'Others', '17:30:00'),
(34, 11, 'First', '10:15:00'),
(35, 11, 'Second', '13:30:00'),
(36, 11, 'Others', '17:30:00'),
(37, 12, 'First', '10:30:00'),
(38, 12, 'Second', '13:30:00'),
(39, 12, 'Others', '17:45:00'),
(40, 13, 'First', '10:00:00'),
(41, 13, 'Second', '13:30:00'),
(42, 13, 'Others', '17:30:00'),
(43, 14, 'First', '10:30:00'),
(44, 14, 'Second', '13:45:00'),
(45, 14, 'Others', '17:30:00'),
(46, 15, 'First', '10:15:00'),
(47, 15, 'Second', '13:30:00'),
(48, 15, 'Others', '17:45:00'),
(49, 16, 'First', '10:00:00'),
(50, 16, 'Second', '13:30:00'),
(51, 16, 'Others', '17:00:00'),
(52, 17, 'First', '10:00:00'),
(53, 17, 'Second', '13:30:00'),
(54, 17, 'Others', '17:00:00'),
(55, 18, 'First', '10:00:00'),
(56, 18, 'Second', '13:30:00'),
(57, 18, 'Others', '17:00:00'),
(58, 19, 'First', '10:00:00'),
(59, 19, 'Second', '13:30:00'),
(60, 19, 'Others', '17:00:00'),
(61, 20, 'First', '10:00:00'),
(62, 20, 'Second', '13:30:00'),
(63, 20, 'Others', '17:00:00'),
(64, 21, 'First', '10:00:00'),
(65, 21, 'Second', '13:30:00'),
(66, 20, 'Others', '17:00:00'),
(67, 21, 'Others', '17:00:00'),
(68, 22, 'First', '10:00:00'),
(69, 22, 'Second', '13:30:00'),
(70, 22, 'Matinee', '17:00:00'),
(71, 23, 'First', '10:00:00'),
(72, 23, 'Second', '13:30:00'),
(73, 23, 'Matinee', '17:00:00'),
(74, 24, 'First', '10:00:00'),
(75, 24, 'Second', '13:30:00'),
(76, 24, 'Matinee', '17:00:00'),
(77, 25, 'First', '10:00:00'),
(78, 25, 'Second', '13:30:00'),
(79, 25, 'Others', '17:00:00'),
(80, 26, 'First', '10:00:00'),
(81, 26, 'Second', '13:30:00'),
(82, 26, 'Others', '17:00:00'),
(83, 27, 'First', '10:00:00'),
(84, 27, 'Second', '13:30:00'),
(85, 27, 'Others', '17:00:00'),
(86, 28, 'First', '10:00:00'),
(87, 29, 'First', '10:00:00'),
(88, 30, 'First', '10:00:00'),
(89, 28, 'Second', '13:30:00'),
(90, 29, 'Second', '13:30:00'),
(91, 30, 'Second', '13:30:00'),
(92, 28, 'Matinee', '17:00:00'),
(93, 29, 'Matinee', '17:00:00'),
(94, 30, 'Matinee', '17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theatre`
--

CREATE TABLE `tbl_theatre` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_theatre`
--

INSERT INTO `tbl_theatre` (`id`, `name`, `address`, `place`, `state`, `pin`) VALUES
(7, 'VETRI CINEMAS', 'Avaniyapuram Main Road, Villapuram, Aruppukottai Rd, near to Rani Childrens Hospital, TNHB Colony, M', 'Madurai', 'Tamilnadu', 625003),
(8, 'DRAGON CINEMAS 4K ', 'Thirumalairayar Padithurai Road, Simmakkal, Madurai Main, Near Sivan Temple', 'Madurai', 'Tamilnadu', 625001),
(9, 'VISHAL CINE COMPLEX 4K DOLBY ATMOS', 'W4FR+J89, Gandhi Nagar, Shenoy Nagar', 'Madurai', 'Tamilnadu', 625010),
(10, 'VISHAL CINE COMPLEX 4K DOLBY ATMOS', 'W4FR+J89, Gandhi Nagar, Shenoy Nagar', 'Madurai', 'Tamilnadu', 625010),
(11, 'AMIRTHAM CINEMAS', 'W458+J5V, Bus Stop South Veli Street, behind Sappani Kovil', 'Madurai', 'Tamilnadu', 625001),
(12, 'THANGA RIGAL', '32, W Veli St, Southern Railway Colony', 'Madurai', 'Tamilnadu', 625001),
(13, 'AMBIGA CINEMAS', 'Plot no 11, 80 Feet Rd, Anna Nagar', 'Madurai', 'Tamilnadu', 625020),
(14, 'SHANMUGA CINEMAS', 'Palanganatham, 205/1, Bypass Rd, Kalavasal', 'Madurai', 'Tamilnadu', 625016),
(15, 'GOPURAM', '50 Feet Rd, Sellur', 'Madurai', 'Tamilnadu', 625002);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  ADD PRIMARY KEY (`screen_id`);

--
-- Indexes for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  MODIFY `screen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
