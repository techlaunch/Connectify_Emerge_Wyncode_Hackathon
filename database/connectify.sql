-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 27, 2019 at 09:19 PM
-- Server version: 5.7.25-0ubuntu0.16.04.2
-- PHP Version: 7.2.15-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ddddd`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `used` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `used`) VALUES
(1, 'Fishing', 0),
(2, 'Water-Sports', 0),
(3, 'Traveling', 0),
(4, 'Working Out', 0),
(5, 'Gym Partner', 0),
(6, 'Conference Events', 0),
(7, 'Brainstorming Sessio', 0),
(8, 'Gaming', 0),
(9, 'Dog Walking', 0),
(10, 'Outdoor', 0),
(11, 'Museum Hopping', 0),
(12, 'Dancing', 0),
(13, 'Sports', 0),
(14, 'Programming', 0),
(15, 'Book Club', 0),
(16, 'Car Talk', 0),
(17, 'Conferences &  Event', 0),
(18, 'Classes & Workshops', 0),
(19, 'Build Software', 0),
(20, 'Tech Support', 0),
(21, 'Web Design', 0),
(22, 'Space Technology', 0),
(23, '2020 Families & Beyo', 0),
(24, 'Space Technology', 0),
(25, 'Product Design', 0),
(26, 'Ford Trucks', 0),
(27, 'GE Aircraft Engines', 0),
(28, 'Climate Change', 0),
(29, 'Robot Combating', 0),
(30, 'Bird Watching', 0),
(31, 'Web Design & Develop', 0),
(32, 'Bicycling', 0),
(33, 'Canoeing', 0),
(34, 'Photo & Video', 0),
(35, 'Breakdancing', 0),
(36, 'Astrology ', 0),
(37, 'Skateboarding', 0),
(38, 'Real Estate', 0),
(39, 'Paintball', 0),
(40, 'Running & Marathons', 0),
(41, 'Maps & Geography', 0),
(42, 'Lingerie & Undergarm', 0),
(43, 'Sports ', 0),
(44, 'Coupons & Rebates', 0),
(45, 'Parties & Special Oc', 0),
(46, 'Metal Detection', 0),
(47, 'Comic Books', 0),
(48, 'Martial Arts', 0),
(49, 'Ghost Hunting', 0),
(50, 'Gardening', 0),
(51, 'Lego Building', 0),
(52, '3D Printing', 0),
(53, 'Watersports', 0);

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

--
-- Dumping data for table `Comments`
--

INSERT INTO `Comments` (`id`, `Text`, `PersonId`, `InviteID`, `DateTime`) VALUES
(1, 'Looking for a Water-skiing Partner for Sunday.', 1, 1, '2019-04-27 05:17:12'),
(1, 'I want to accept your invitation to your invite of water - skiing', 2, 1, '2019-04-27 11:00:00'),
(3, 'I want to enjoy a day of fishing with some fishing mates.', 3, 1, '2019-05-04 06:00:00'),
(4, 'I would like to join the fun.\r\nplease count me in.', 1, 3, '2019-04-27 14:00:00'),
(5, 'I want to also join the fishing Party', 2, 3, '2019-04-27 15:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Invites`
--

CREATE TABLE `Invites` (
  `ID` int(11) NOT NULL,
  `EventAddress` varchar(80) NOT NULL,
  `DateTime` datetime NOT NULL,
  `PictureName` varchar(50) NOT NULL,
  `Description` varchar(400) NOT NULL,
  `PersonID` int(11) NOT NULL,
  `Category1` varchar(30) NOT NULL,
  `Category2` varchar(39) NOT NULL,
  `Category3` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Invites`
--

INSERT INTO `Invites` (`ID`, `EventAddress`, `DateTime`, `PictureName`, `Description`, `PersonID`, `Category1`, `Category2`, `Category3`) VALUES
(1, 'Key West, FL', '2019-04-28 08:30:04', 'watersports.jpg', 'The Official 2019 Miami Flag Day Water Fête Jet Ski\'s and Boat Party\r\nWe Bringing To You THE BIGGEST WATER PARTY\r\nYacht, Jet Ski\'s, Water Float, Boats, Life Rafts, Life Vest are all available for rent.\r\nFREE EARLY BIRD tickets w/ RSVP!!!!!\r\nSingle or Couples Boat/Yacht seating tickets are also available for PURCHASE!!! (Read ticket description below for options)\r\n\r\n\r\n\r\n', 1, 'Outdoor', 'Water-Sports', 'OUTDOOR'),
(2, '120 NW 50th street\r\nBascketball crt 2', '2019-04-29 18:00:00', 'sports.jpg', 'Nike Spring Showdown Big Time Exposure Event (2019)\r\nby UM BasketballMiami, July 20-22', 1, 'Outdoor', 'Sports', 'Sports'),
(3, 'Miami Beach', '2019-04-27 07:30:00', 'webdevelopment.jpg', 'We kick off SATURDAY, April 27th! Please arrive between 7:00AM-7:30AM, opening remarks and Hackathon walk through begin at 7:30am! Breakfast, Lunch, Dinner and Snacks will be served along with swag for all!!!\r\n\r\nTheme: #ConnectingMiami to the World - Build technology that connects and transcends borders. Collaborating with other ecosystems and individuals.', 2, 'Web Design', 'Product Design', 'Conferences & Events'),
(4, 'Boca Raton', '2019-04-30 06:15:23', 'Fishing.jpg', 'Spanish River\'s  Father\'s Day Fishing Tournament is a fun and educational "catch and release" tournament held every year on the Saturday before Father\'s Day. This event is open to everyone. Participate in casting skill contests in addition to the outstanding fishing. Prizes are awarded. Join us at Royal Sea for the Father\'s Day Fishing Tournament.\r\n', 3, 'Outdoor', 'Sports', 'Fishing');

-- --------------------------------------------------------

--
-- Table structure for table `Person`
--

CREATE TABLE `Person` (
  `id` int(2) NOT NULL,
  `PictureName` varchar(80) NOT NULL,
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
-- Dumping data for table `Person`
--

INSERT INTO `Person` (`id`, `PictureName`, `Name`, `Description`, `DateofBirth`, `ZipCode`, `Category1`, `Category2`, `Category3`, `Email`, `Password`) VALUES
(1, 'Roberto.jpg', 'Roberto Espinosa', '21/MALE looking for someone that likes to jet-ski in thE warm waters of KEY WEST.', '1995-10-17', '33138', 'Sports', 'Water-Sports', 'Sports', 'respinoza@techlaunch.io', 'admin'),
(2, 'Salvi.jpg', 'Salvi  Pascual', 'Male/ Single', '1983-04-08', '33334', 'SkateBoarding', 'Sports', 'Comic Books', 'sPasqual@techlaunch.io', '1234'),
(3, 'Julio.jpg', 'Julio Alfara', 'Male/ Slim /25', '1996-07-11', '33174', 'Web Design', 'Martial Arts', 'Lingarea ', 'Jalfara@techlaunch.io', '5678'),
(4, 'Maurice.jpg', 'Maurice Oliveros', 'Male/ 5\'6" / Single /Hispanic', '1972-11-12', '11292', 'Dog Walking', 'Bicycling', 'Tech', 'Moliveros@techlaunch.io', 'moli');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `Invites`
--
ALTER TABLE `Invites`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Person`
--
ALTER TABLE `Person`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
