-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2019 at 10:27 PM
-- Server version: 5.5.39
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `logistic`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
`id` int(11) NOT NULL,
  `codename` varchar(15) NOT NULL,
  `password` varchar(80) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `codename`, `password`, `fname`, `lname`) VALUES
(1, 'Cardo', 'asd', 'Cardo', 'Dela Cruz');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
`id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `contact`, `address`) VALUES
(1, 'Mesa', 'mesa@gmail.com', '09342345323', 'Eastwood, Quezon City'),
(2, 'Jollibee', 'jlf@gmail.com', '09324352312', 'Metro Manila');

-- --------------------------------------------------------

--
-- Table structure for table `notify`
--

CREATE TABLE IF NOT EXISTS `notify` (
`id` int(11) NOT NULL,
  `vihicles_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `data_book` date NOT NULL,
  `deliver_date` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `notify`
--

INSERT INTO `notify` (`id`, `vihicles_id`, `client_id`, `data_book`, `deliver_date`) VALUES
(1, 1, 1, '2019-11-24', '2019-11-29'),
(2, 1, 2, '2019-11-24', '2019-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE IF NOT EXISTS `vehicles` (
`id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1=ondeliver, 2=onpark'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `name`, `status`) VALUES
(1, 'Track 1', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notify`
--
ALTER TABLE `notify`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `notify`
--
ALTER TABLE `notify`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
