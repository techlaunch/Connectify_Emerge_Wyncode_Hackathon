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
(1, 'Key West, FL', '2019-04-28 08:30:04', 'WaterSport', 'Water-Skiing\r\n', 1, 'Outdoor', 'Water-Sports', 'Sports'),
(2, '120 NW 50th street\r\nBascketball crt 2', '2019-04-29 18:00:00', 'Bascketball pic', 'Basketball Game tourney', 1, 'Outdoor', 'Sports', 'Sports'),
(3, 'Miami Beach', '2019-04-27 07:30:00', 'WEB Hacketon', 'Hack-a Web Developer ', 2, 'Web Design', 'Product Design', 'Conference Events'),
(4, 'Boca Raton', '2019-04-30 06:15:23', 'Fishing day', 'Fishing in Spanish River', 3, 'Outdoor', 'Sports', 'Fishing');

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
(1, 'RobertoPic', 'Roberto Espinosa', 'Male/23/CubanAmerican/5\'6"', '1995-10-17', '33138', 'Sports', 'Water-Sports', 'Sports', 'respinoza@techlaunch.io', 'admin'),
(2, 'Salvi PIc', 'Salvi  Pascual', 'Male/ Single', '1983-04-08', '33334', 'SkateBoarding', 'Sports', 'Comic Books', 'sPasqual@techlaunch.io', '1234'),
(3, 'Julio Pic', 'Julio Alfara', 'Male/ Slim /25', '1996-07-11', '33174', 'Web Design', 'Martial Arts', 'Lingarea ', 'Jalfara@techlaunch.io', '5678'),
(4, 'Maurice Pic', 'Maurice Oliveros', 'Male/ 5\'6" / Single /Hispanic', '1972-11-12', '11292', 'Dog Walking', 'Bicycling', 'Tech', 'Moliveros@techlaunch.io', 'moli');

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Person`
--
ALTER TABLE `Person`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
(2, 'Volunteering', 0),
(3, 'Traveling', 0),
(4, 'Working Out', 0),
(5, 'Gym Partner', 0),
(6, 'Listening to Music', 0),
(7, 'Brainstorming Sessio', 0),
(8, 'Gaming', 0),
(9, 'Dog Walking', 0),
(10, 'Cooking Meals', 0),
(11, 'Museum Hopping', 0),
(12, 'Dancing', 0),
(13, 'Write Songs ', 0),
(14, 'Programming', 0),
(15, 'Book Club', 0),
(16, 'Car Talk', 0),
(17, 'Conferences &  Event', 0),
(18, 'Classes & Workshops', 0),
(19, 'Build Software', 0),
(20, 'Tech Support', 0),
(21, 'Fashion Design', 0),
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;
