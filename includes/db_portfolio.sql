-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 06, 2018 at 04:00 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `img_name` varchar(45) NOT NULL,
  `img_path` varchar(60) NOT NULL,
  `img_desc` varchar(400) NOT NULL,
  `vid_genre` int(11) NOT NULL,
  `portfolio_thumb` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `img_name`, `img_path`, `img_desc`, `vid_genre`, `portfolio_thumb`) VALUES
(1, 'Mello', 'mello-large.jpg', 'cntower.html', 1, 'mello.jpg'),
(2, 'London Squash and Fitness Club', 'lsfc.jpg', 'lsfc.html', 2, 'lsfc.jpg'),
(3, 'Engage Designs', 'engage.jpg', 'engage.html', 3, 'engage.jpg'),
(4, 'LuxStory Media', 'luxstory.jpg', 'lux.html\r\n', 0, 'luxstory.jpg'),
(5, 'Mustangs Graphic Designer', 'western.jpg', 'western.html', 0, 'western.jpg'),
(6, 'CN Tower', 'cn-tower.jpg', 'contact.html', 0, 'cn-tower.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;