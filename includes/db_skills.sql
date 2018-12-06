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
-- Database: `db_skills`
--

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
-- AUTO_INCREMENT for table `suitpiece`
--
ALTER TABLE `suitpiece`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;