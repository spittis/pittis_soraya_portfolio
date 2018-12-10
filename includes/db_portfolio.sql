-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 10, 2018 at 03:21 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

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
  `vid_genre` varchar(1500) NOT NULL,
  `portfolio_thumb` varchar(45) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `img_name`, `img_path`, `img_desc`, `vid_genre`, `portfolio_thumb`, `type`) VALUES
(1, 'Reel', 'reel.mp4', 'western.html', 'This is a demo reel of my latest and best work. It includes some of my design work, my most prominent motion design projects, and some videography. It also showcases by editing skills in After Effects.', 'western.jpg', 'image'),
(2, 'London Squash and Fitness Club', 'lsfc.mp4', 'lsfc.html', 'The London Squash and Fitness Club (LSFC) is a squash and fitness focused non-profit, member-owned organization based in London, Ontario. The club reached out to us to redesign their site with the goal of making it more visually appealing and easier to use for both its members and basic users. In addition to a site revamp, the club requested strategies on how to increase and improve their social media presence. This project includes a website redesign, photography work, and marketing strategy for the London Squash and Fitness Club.', 'lsfc.jpg', 'image'),
(3, 'Engage Designs', 'engage.mp4', 'engage.html', 'Engage Designs is my own independent company. In agreement with the company’s other co-founder, we decided we wanted to refresh the brand. We needed a new look that better fit our style and reflected who we are, so we challenged ourselves to redesign our website. This project is a developed website redesign that includes logo design, photography, and other design work.', 'engage.jpg', 'image'),
(4, 'LuxStory Media', 'lux.mp4', 'lux.html', 'LuxStory Media is a Toronto based video production company with a focus on the hospitality, real estate, and lifestyle industries. Their website was initially designed and developed by Macroblu in 2015, however I have been commissioned to manage the site as of April 2018. Throughout the years, the company has produced new work that they have asked me to add to the site. They have additionally tasked me with the challenge of cleaning up areas that no longer function and/or are in need of a redesign. This work includes production work, website management, social media management, and design work.', 'luxstory.jpg', 'image'),
(5, 'Mello', 'mello.mp4', 'mello.html', 'There are huge issues regarding dehydration and plastic water bottle use in North America. In the interest of solving these problems, my partner and I have designed and marketed a water bottle that makes drinking water easier, convenient, tasty, and most importantly, easier on the planet. This is a project that includes branding, motion design, marketing strategy, and logo and poster design. ', 'mello.jpg', 'image'),
(6, 'CN Tower', 'event.mp4', 'cntower.html', 'The CN Tower is the tallest free-standing structure in the Western Hemisphere. It not only defines the Toronto skyline, but it also attracts more than two million international visitors each year. The CN Tower offers a selection of unique venues and spaces, including the recently renovated main observation level, the LookOut Level. This newly renovated event space did not have a video or photography library and needed assets for an industry event. This piece showcases my producing abilities, design work, and photography skills.', 'cn-tower.jpg', 'image');

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
(1, 'design', 'Design', 'Design comes easiest to me. From logo and website design to event invitations and everything in-between, I love working with clients to complete a piece of beautiful work that we are both proud of.'),
(2, 'branding', 'Branding', 'Paired with research, my creative thinking is suitable for helping establish brands and position them apart from the rest.'),
(3, 'developing', 'Developing', 'I am proficient in HTML and CSS, and can build a website for your brand.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `suitpiece`
--
ALTER TABLE `suitpiece`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
