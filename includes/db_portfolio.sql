-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 07, 2018 at 12:43 AM
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
  `vid_genre` varchar(50) NOT NULL,
  `portfolio_thumb` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `img_name`, `img_path`, `img_desc`, `vid_genre`, `portfolio_thumb`) VALUES
(1, 'Mello', 'mello-large.jpg', 'cntower.html', 'Mello is a water bottle that I designed', 'mello.jpg'),
(2, 'London Squash and Fitness Club', 'lsfc.jpg', 'lsfc.html', '2', 'lsfc.jpg'),
(3, 'Engage Designs', 'engage.jpg', 'engage.html', '3', 'engage.jpg'),
(4, 'LuxStory Media', 'luxstory.jpg', 'lux.html\r\n', '0', 'luxstory.jpg'),
(5, 'Mustangs Graphic Designer', 'western.jpg', 'western.html', '0', 'western.jpg'),
(6, 'CN Tower', 'cn-tower.jpg', 'contact.html', '0', 'cn-tower.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reel`
--

CREATE TABLE `reel` (
  `id` int(11) NOT NULL,
  `vid_reel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reel`
--

INSERT INTO `reel` (`id`, `vid_reel`) VALUES
(1, 'cntower.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(5) NOT NULL,
  `img_names` varchar(30) NOT NULL,
  `img_paths` varchar(50) NOT NULL,
  `img_descs` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `img_names`, `img_paths`, `img_descs`) VALUES
(1, 'Photography', 'photography.png', 'I am passionate about taking photos and capturing the moment. I have experience in shooting photography for websites and events, and I am also experienced in food styling.'),
(2, 'Designing', 'pencil.png', 'Design comes easiest to me. From logo and website design to event invitations and everything in-between, I love working with clients to complete a piece of beautiful work that we are both proud of.'),
(3, 'Branding', 'branding.png', 'Paired with research, my creative thinking is suitable for helping establish brands and position them apart from the rest.'),
(4, 'Developing', 'develop.png', 'I am proficient in HTML and CSS, and can build a website for your brand.');

-- --------------------------------------------------------

--
-- Table structure for table `suitpiece`
--

CREATE TABLE `suitpiece` (
  `id` int(11) NOT NULL,
  `section` varchar(10) NOT NULL,
  `modelName` varchar(20) NOT NULL,
  `modelDetails` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suitpiece`
--

INSERT INTO `suitpiece` (`id`, `section`, `modelName`, `modelDetails`) VALUES
(0, 'photograph', 'Photography', 'I am passionate about taking photos and capturing the moment. I have experience in shooting photography for websites and events, and I am also experienced in food styling.'),
(2, 'design', 'Design', 'Design comes easiest to me. From logo and website design to event invitations and everything in-between, I love working with clients to complete a piece of beautiful work that we are both proud of.'),
(3, 'branding', 'Branding', 'Paired with research, my creative thinking is suitable for helping establish brands and position them apart from the rest.'),
(4, 'developing', 'Developing', 'I am proficient in HTML and CSS, and can build a website for your brand.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reel`
--
ALTER TABLE `reel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suitpiece`
--
ALTER TABLE `suitpiece`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `model` (`section`),
  ADD UNIQUE KEY `modelDesc` (`modelName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reel`
--
ALTER TABLE `reel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `suitpiece`
--
ALTER TABLE `suitpiece`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
