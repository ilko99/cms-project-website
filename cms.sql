-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2022 at 12:25 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(10, 'Java'),
(20, 'PHP'),
(21, 'Javascript');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(21, 204, 'Patka', 'patka@abv.bg', 'adsio perhbrtjmmtymt ht', 'approved', '2022-08-19'),
(22, 213, 'jiraya', 'jiji@abv.bg', 'Men of war is cool mens :)!', 'approved', '2022-08-19');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_user` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_picture` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_picture`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(204, 10, 'Java stuff', 'Ilko', 'sexybeast', '2022-08-25', '', 'This is a Java post', '10', 3, 'published', 4),
(207, 10, 'Ahwiiiiiiiiiii', 'Ilko99', 'rico', '2022-08-25', '', 'q fw fwer gerg trhe3g', '10', 0, '', 0),
(208, 10, 'Ahwiiiiiiiiiii', 'Ilko99', '', '2022-08-18', '', '', '10', 0, 'published', 1),
(213, 20, 'Sooo many posts', 'Ilker', '', '2022-08-18', 'stuff.png', 'lorem ipsum asu;of io;wagio ;aer[bhsert j mdtymk uyj rfmm te ', '20', 1, 'published', 3),
(214, 21, 'bala', 'Nasko', '', '2022-08-18', 'служебна бележка.jpg', 'af wu getophrj]o[rwrh]\rok|{aetkbaebhaetph]\r\npjnrjopndtp[ dr', '21', 0, 'published', 0),
(229, 10, 'Sooo many posts', 'Ilker', 'test', '2022-08-25', '', 'lorem ipsum asu;of io;wagio ;aer[bhsert j mdtymk uyj rfmm te ', '20', 0, '', 0),
(230, 21, 'bala', 'Nasko', '', '2022-08-23', 'служебна бележка.jpg', 'af wu getophrj]o[rwrh]\rok|{aetkbaebhaetph]\r\npjnrjopndtp[ dr', '21', 0, 'published', 0),
(232, 10, 'Java stuff', 'Ilko', '', '2022-08-23', '', 'This is a Java post', '10', 0, 'published', 0),
(233, 10, 'Ahwiiiiiiiiiii', 'Ilko99', '', '2022-08-23', '', '', '10', 0, 'published', 0),
(234, 10, 'Ahwiiiiiiiiiii', 'Ilko99', '', '2022-08-23', '', '', '10', 0, 'published', 0),
(235, 20, 'Sooo many posts', 'Ilker', '', '2022-08-23', 'stuff.png', 'lorem ipsum asu;of io;wagio ;aer[bhsert j mdtymk uyj rfmm te ', '20', 0, 'published', 0),
(236, 21, 'bala', 'Nasko', '', '2022-08-23', 'служебна бележка.jpg', 'af wu getophrj]o[rwrh]\rok|{aetkbaebhaetph]\r\npjnrjopndtp[ dr', '21', 0, 'published', 0),
(237, 20, 'Sooo many posts', 'Ilker', '', '2022-08-23', 'stuff.png', 'lorem ipsum asu;of io;wagio ;aer[bhsert j mdtymk uyj rfmm te ', '20', 0, 'published', 0),
(238, 21, 'bala', 'Nasko', '', '2022-08-23', 'служебна бележка.jpg', 'af wu getophrj]o[rwrh]\rok|{aetkbaebhaetph]\r\npjnrjopndtp[ dr', '21', 0, 'published', 0),
(239, 10, 'Java stuff', 'Ilko', '', '2022-08-23', '', 'This is a Java post', '10', 0, 'published', 0),
(240, 10, 'Ahwiiiiiiiiiii', 'Ilko99', '', '2022-08-23', '', '', '10', 0, 'published', 0),
(241, 10, 'Ahwiiiiiiiiiii', 'Ilko99', '', '2022-08-23', '', '', '10', 0, 'published', 0),
(242, 20, 'Sooo many posts', 'Ilker', '', '2022-08-23', 'stuff.png', 'lorem ipsum asu;of io;wagio ;aer[bhsert j mdtymk uyj rfmm te ', '20', 0, 'published', 0),
(243, 21, 'bala', 'Nasko', '', '2022-08-23', 'служебна бележка.jpg', 'af wu getophrj]o[rwrh]\rok|{aetkbaebhaetph]\r\npjnrjopndtp[ dr', '21', 0, 'published', 0),
(244, 20, 'Sooo many posts', 'Ilker', '', '2022-08-23', 'stuff.png', 'lorem ipsum asu;of io;wagio ;aer[bhsert j mdtymk uyj rfmm te ', '20', 0, 'published', 0),
(245, 21, 'bala', 'Nasko', '', '2022-08-23', 'служебна бележка.jpg', 'af wu getophrj]o[rwrh]\rok|{aetkbaebhaetph]\r\npjnrjopndtp[ dr', '21', 0, 'published', 0),
(246, 10, 'Java stuff', 'Ilko', '', '2022-08-23', '', 'This is a Java post', '10', 0, 'published', 0),
(247, 10, 'Ahwiiiiiiiiiii', 'Ilko99', '', '2022-08-23', '', '', '10', 0, 'published', 0),
(248, 10, 'Ahwiiiiiiiiiii', 'Ilko99', '', '2022-08-23', '', '', '10', 0, 'published', 0),
(249, 20, 'Sooo many posts', 'Ilker', '', '2022-08-23', 'stuff.png', 'lorem ipsum asu;of io;wagio ;aer[bhsert j mdtymk uyj rfmm te ', '20', 0, 'published', 0),
(250, 21, 'bala', 'Nasko', '', '2022-08-23', 'служебна бележка.jpg', 'af wu getophrj]o[rwrh]\rok|{aetkbaebhaetph]\r\npjnrjopndtp[ dr', '21', 0, 'published', 0),
(251, 20, 'Sooo many posts', 'Ilker', '', '2022-08-23', 'stuff.png', 'lorem ipsum asu;of io;wagio ;aer[bhsert j mdtymk uyj rfmm te ', '20', 0, 'published', 0),
(252, 21, 'bala', 'Nasko', '', '2022-08-23', 'служебна бележка.jpg', 'af wu getophrj]o[rwrh]\rok|{aetkbaebhaetph]\r\npjnrjopndtp[ dr', '21', 0, 'published', 0),
(253, 20, 'testUser1', '', '', '2022-08-25', 'ahri', 'daso;f ;lweaio;fj werig aer hsrtjnsr', '20', 0, 'published', 0),
(256, 10, 'test1', '', 'stasho', '2022-08-25', 'ahri', ' a fdg fh g ty jmnt gres g rtj tyjrts', '10', 0, 'published', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(1, 'rico', '123', 'Ricoooooooooooooooooooo', 'Suave', 'ricosuave@gmail.com', '', 'Subscriber', ''),
(4, 'Ilker', '$2y$10$iusesomecrazystrings2uvgnjnDOGIE6JPA9zzq36EdPnYMUav/S', 'qwrrrrrr', 'wertwe', 'ilko99@abv.bg', '', 'Admin', ''),
(7, 'wakanka', '1234567', 'nasko', 'pasko', 'nasko@abv.bg', '', 'Subscriber', ''),
(8, 'sexybeast', '756332', 'diyan', 'deyankata', 'didaka@bg.com', '', 'subscriber', ''),
(9, 'Rickity', '1234', 'Ricky', 'Johnson', 'ricky@abv.bg', '', 'subscriber', ''),
(10, 'stasho', '12345', 'Stanislav', 'Kirilov', 'stasho@abv.bg', '', 'subscriber', ''),
(27, 'dsfsdfg', 'asfrsged', '', '', 'asda@abv.bg', '', 'subscriber', '$2y$10&iusesomecrazystrings22'),
(31, 'rico', '123', 'Ricooooooooooooooooooooooo', 'Suave', 'ricosuave@gmail.com', '', 'Subscriber', '$2y$10&iusesomecrazystrings22'),
(32, 'Osmito', '12345', 'Batan', 'Gazi', 'Batan42@abv.bg', '', 'subscriber', '$2y$10&iusesomecrazystrings22'),
(33, 'Bro', '12345', 'BO', 'Ro', 'Bro@abv.bg', '', 'subscriber', '$2y$10&iusesomecrazystrings22'),
(34, 'Mechitaro', '1234567890', 'Pecho', 'Mecho', 'mechito@abv.bg', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(35, 'asdasdadasdasdas', '12312312321321', '', '', 'adasdsasdadsa@abv.bg', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(36, 'Ahri', '12345', '', '', 'Ahwii@abv.bg', '', 'Admin', '$2y$10$iusesomecrazystrings22'),
(38, 'Sero', 'oyea', '', '', 'Serpiko@abv.bg', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(39, 'Shambala', '12345', '', '', 'shami@abv.bg', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(40, 'test', '*0', '', '', 'test@abv.bg', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(41, 'test2', '*0', '', '', 'test2@abv.bg', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(42, 'test3', '$2y$10$iusesomecrazystrings2ui1qr860E30b0c9ijNqwCSwHnHdgz.1K', '', '', 'test3@abv.bg', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(43, 'test4', '*0', '', '', 'test4@abv.bg', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(44, 'test5', '$2y$10$iusesomecrazystrings2ui1qr860E30b0c9ijNqwCSwHnHdgz.1K', '', '', 'test5@abv.bg', '', 'subscriber', '$2y$10$iusesomecrazystrings22');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(1, '6anl4t3rcba8lt4uht3tekt5dd', 1657886919),
(2, 'kg905dsv0vi667n2bbfgnfm3pn', 1657879238),
(3, 'ncob3uatmfn3lesv9n5sbuh306', 1657880168),
(4, 'abtklq1gueu9f8fj2790lagkf0', 1657881819),
(5, 'b6ceeunqb2ou5db505ps1lp5m9', 1657881867),
(6, '3rke285bb527r43bh6vrih88es', 1658322467),
(7, 'dapjibit92ih2emq7frr1d1nve', 1658412337),
(8, 'miaog7e75s1mvsmnfd76dmni5k', 1658491744),
(9, 'pspfgh1ac19dmkk51b30b9oiki', 1658744192),
(10, 'u8gu10dqqrgffg7kins4vgtetm', 1658836790),
(11, 'j510bhad4ddmnvrpausf2qnkc8', 1659096485),
(12, 're4jmgge91f1iiu9cv98ft2q40', 1659352615),
(13, '7k36jpej62fubbnchgudqtfjio', 1661255064),
(14, '784gu2em6n54fvutvm5f2i46s9', 1661339754),
(15, 'r30lpvms30m9c046lgjg3b8c9r', 1661431982),
(16, 'jtrkdabi1mjlmojj3qfi7a58s0', 1661508050);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
