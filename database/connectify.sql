-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 27, 2019 at 02:54 PM
-- Server version: 5.7.25-0ubuntu0.16.04.2
-- PHP Version: 7.2.15-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `InvitesYou`
--

-- --------------------------------------------------------

--
-- Table structure for table `Comments`
--

CREATE TABLE `Comments` (
  `id` int(11) NOT NULL,
  `Text` varchar(200) NOT NULL,
  `PersonId` int(11) NOT NULL,
  `InviteID` int(11) NOT NULL,
  `DateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Invites`
--

CREATE TABLE `Invites` (
  `ID` int(11) NOT NULL,
  `EventAdress` varchar(80) NOT NULL,
  `DateTime` datetime NOT NULL,
  `PictureName` varchar(50) NOT NULL,
  `Description` varchar(400) NOT NULL,
  `PersonID` int(11) NOT NULL,
  `Category1` varchar(30) NOT NULL,
  `Category2` varchar(39) NOT NULL,
  `Category3` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Person`
--

CREATE TABLE `Person` (
  `id` int(11) NOT NULL,
  `PictureName` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `DateofBirth` date NOT NULL,
  `ZipCode` varchar(10) NOT NULL,
  `Category1` varchar(30) NOT NULL,
  `Category2` varchar(30) NOT NULL,
  `Category3` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Comments`
--
ALTER TABLE `Comments`
  ADD KEY `PersonId` (`PersonId`),
  ADD KEY `InviteID` (`InviteID`);

--
-- Indexes for table `Invites`
--
ALTER TABLE `Invites`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PersonID` (`PersonID`);

--
-- Indexes for table `Person`
--
ALTER TABLE `Person`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Invites`
--
ALTER TABLE `Invites`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Person`
--
ALTER TABLE `Person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
