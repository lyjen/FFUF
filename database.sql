-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2015 at 03:07 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ffuf-fwork`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `message`, `date_posted`, `user_id`) VALUES
(1, 'First to post :)', '2015-04-12 06:28:50', 1),
(2, 'M E A N', '2015-04-12 09:45:32', 5),
(3, 'glad to share \r\nhttp://jsfiddle.net/lyjen/fch9j1mz/12/', '2015-04-12 09:59:10', 1),
(5, 'To you our beloved creatures we proffer our praise;\r\nWith honor and disciplined children we acclaim\r\nTo bring and keep the beauty and joys of out days\r\nTo reserve the world from ruin\r\nThis is Z-CArtEL''s Mission', '2015-04-12 11:13:37', 1),
(6, 'Hello World :D', '2015-04-12 11:46:42', 6),
(7, 'Wow, try to hover your profile image...', '2015-04-12 11:49:00', 6),
(8, 'it''s a freedom wall, SHOUT OUT... N)', '2015-04-12 11:51:22', 4),
(9, 'random post on the dashboard', '2015-04-12 12:38:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE IF NOT EXISTS `replies` (
`id` int(11) NOT NULL,
  `reply_message` int(255) NOT NULL,
  `reply_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(25) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_registered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `address`, `email`, `password`, `date_registered`) VALUES
(1, 'Lyjen Lovendino', 'lyjen', 'Calamba, Laguna', 'mslyjen.lyj@gmail.com', '17fa7b718a61895977d54c961eba91fa', '2015-04-12 10:47:07'),
(4, 'Yjean Love', 'ynjean', 'Makiling', 'ynjean@yahoo.com', '0dcc7651b87d208d5d640d9e6813e3a9', '2015-04-12 11:57:35'),
(5, 'Mean Alta', 'mean', NULL, 'mean@yahoo.com', 'b93db188572fc4d76cce5660f3823b0a', '2015-04-12 09:44:39'),
(6, 'Jeanette', 'jeanette', NULL, 'jeanette@yahoo.com', 'c8b6664921a91e0266faa476dac34f75', '2015-04-12 11:46:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
