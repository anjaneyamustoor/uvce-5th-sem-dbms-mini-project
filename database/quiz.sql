-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 10:13 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `leaderboard` ()  NO SQL select q.quizname,s.score,s.totalscore,st.usn,st.name,s.usn
 from score s,student st,quiz q 
 where s.usn=st.usn and q.quizid=s.quizid 
 order by score DESC$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`dept_id`, `dept_name`) VALUES
(1, 'CSE'),
(2, 'ISE'),
(3, 'ECE'),
(4, 'EEE');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qs` varchar(200) NOT NULL,
  `op1` varchar(30) NOT NULL,
  `op2` varchar(30) NOT NULL,
  `op3` varchar(30) NOT NULL,
  `answer` varchar(30) NOT NULL,
  `quizid` int(11) NOT NULL,
  `question_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qs`, `op1`, `op2`, `op3`, `answer`, `quizid`, `question_id`) VALUES
(' The logical design, and the snapshot of the data at a given instant in time is known as?', 'Instance and Relation', 'Relation and Schema', 'Domain and Schema', 'Schema and Instance', 37, 49),
(' The oldest DB model is _____________', 'Physical', 'Hierarchical', 'Relational', 'Network', 37, 50),
('For designing a normal RDBMS which of the following normal form is considered adequate?', '2NF', '5NF', '4NF', '3NF', 37, 51),
('Which of the following key is required in to handle the data when the encryption is applied to the data so that the unauthorised user cannot access the data?', 'Primary Key', 'Authorized Key', 'Encryption Key', 'Decryption Key', 37, 52),
('Which of the following is the subset of SQL commands used to manipulate Oracle Structures, including tables?', 'Data Described Language', 'Data Retrieval Language', 'Data Manipulation Language', 'Data Definition Language', 37, 53),
(' _______ indicates the maximum number of entities that can be involved in a relationship.', 'ERD', 'Greater Entity Count', 'Minimum Cardinality', 'Maximum Cardinality', 37, 54),
(' Which command is used to remove a relation from an SQL?', 'Delete', 'Purge', 'Remove', 'Drop', 37, 56),
('The ability to query data, as well as insert, delete, and alter tuples, is offered by ______', 'Transaction Control Language', 'Data Control Language', 'Data Definition Language', 'Data Manipulation Language', 37, 57),
('What does an RDBMS consist of?', 'Collection of Records', 'Collection of Keys', 'Collection of Fields', 'Collection of Tables', 37, 58),
('Which of the following is known as a set of entities of the same type that share same properties, or attributes?', 'Relation Set', 'Tuples', 'Entity Relational Model', 'Entity Set', 37, 59),
('Which of the following is a component of the DBMS?', 'Data', 'Data Languages', 'Data Manager', 'All of the Above', 37, 60),
(' Which of the following is a function of the DBMS?', 'Storing Data', 'Providing multi-users access c', 'Data Integrity', 'All of the Above', 37, 61),
('Which of the following is not a function of the database?', 'Managing the stored data', 'Manipulating data', 'Security for stored data', 'Analysing code', 37, 62),
('Which of the following is a feature of the database?', 'No-backup for the data stored', 'Store Data in Multiple Locatio', 'Lack of Authentication', 'User Interface provided', 37, 63),
('Which of the following is not a type of database?', 'hierarchical', 'Network', 'Distributed', 'Decentralized', 37, 64),
('In which of the following formats data is stored in the database management system?', 'Image', 'Text', 'Graph', 'Table', 37, 65),
('Who created the first DBMS?', 'Edgar Frank Codd', 'Sharon B Codd', 'Charles Babbage', 'Charles Bachman', 37, 66),
('What is the full form of DBMS?', 'Data of binary Management Syst', 'Database Management Service', 'Data Backup Management System', 'Database Management System', 37, 67),
('Which of the following is the full form of DDL?', 'Data Derivation Language', 'Dynamic Data Language', 'Detailed Data Language', 'Data Definition Language', 37, 68),
('What is rows of a relation known as?', 'Degree', 'Entity', 'Set', 'Tuple', 37, 69),
('Who developed Python Programming Language ? ', 'Wick Van Rossum', 'Rasmus Lerdorf', 'Niene Storm', 'Guido Van Rossum', 38, 70),
('Which keyword is used for function in Python language?', 'Function', 'def', 'Fun', 'Define', 38, 71),
('Which of the following functions is a built-in function in python?', 'factorial()', 'sqrt()', 'seed()', 'print()', 38, 72),
('Which one of the following is not a keyword in Python language?', 'pass', 'assert', 'nonlocal', 'eval', 38, 73),
('Which module in the python standard library parses options received from the command line?', 'main', 'os', 'getarg', 'getopt', 38, 74),
('What are the two main types of functions in Python?', 'System Function', 'Custom Function', 'User Function', 'Built In Function & defined fu', 38, 75),
('What is the maximum possible length of an identifier?', '16', '32', '64', 'None of these above', 38, 76),
('What do we use to define a block of code in Python language?', 'key', 'Brackets', 'Flower Brackets', 'Indentation', 38, 77),
('What is the output of the following code: print(2 + 3 * 4)?', '14', '20', '11', '16', 38, 78),
('What is the correct syntax for creating a function in Python?', 'function my_function()', 'def my_function()', ' create function my_function()', 'new function my_function()', 38, 79),
('What is the output of the following code: print(len([1, 2, 3, 4]))?', '4', '1, 2, 3, 4', '[1,2,3,4]', 'None', 38, 80),
('How do you create a tuple in Python?', ' my_tuple = (1, 2, 3)', 'my_tuple = [1, 2, 3]', 'my_tuple {1, 2, 3}', ' my_tuple = \"1, 2, 3\"', 38, 81),
('What is the output of the following code: x = \"Hello\" * 3; print(x)?', 'HelloHelloHello', '\"Hello\"\"Hello\"\"Hello\"', '9', 'Error', 38, 82),
('What is the output of the following code: x = 5; print(x ** 3)?', '125', '15', '5', 'Error', 38, 83),
('What is the output of the following code: a = [1, 2, 3]; b = a; b[1] = 4; print(a) ?', '[1, 2, 3]', '(1, 2, 3)', '(1, 4, 3)', '[1, 4, 3]', 38, 84),
(' Which module in the python standard library parses options received from the command line?', 'getarg', 'os', 'main', 'getopt', 38, 85),
('What arithmetic operators cannot be used with strings in Python ? ', '*', '/', '+', '-', 38, 86),
('Which of the following statements is used to create an empty set in Python?', '()', '[]', '{}', 'set()', 38, 87),
('What is the maximum possible length of an identifier in Python?', '79', '31', '63', 'none of the mentioned', 38, 88),
('What is output of print(math.pow(3, 2))?', '10', 'None', '9', '9.0', 38, 89),
('Which of these is a standard interface for serial data transmission?', 'ASCII', '2', 'Centronics', 'RS232C', 36, 90),
('Which type of topology is best suited for large businesses which must carefully control and coordinate the operation of distributed branch outlets?', 'Ring', 'Local Area', 'Hierarchical', 'Star', 36, 91),
('Which of the following transmission directions listed is not a legitimate channel?', 'Simplex', 'Half Duplex', 'Full Duplex', 'Double Duplex', 36, 92),
('\"Parity bits\" are used for which of the following purposes?', 'Encryption of Data', 'To Transmit faster', 'To identify the user', 'To detect errors', 36, 93),
('A collection of hyperlinked documents on the internet forms the ?', 'Email System', 'Mailing List', 'HTML', 'World Wide Web', 36, 94),
('The location of a resource on the internet is given by its?', 'ICQ', 'Email Address', 'Protocolo', 'URL', 36, 95),
('A proxy server is used as the computer?', 'acting as a backup', 'performing file handling', 'accessing user permissions', 'with external access', 36, 96),
('Which software prevents the external access to a system?', 'Gateway', 'Router', 'Virus checker', 'Firewall', 36, 97),
('Which one of the following is the most common internet protocol?', 'HTML', 'NetBEUI', 'IPX/SPX', 'TCP/IP', 36, 98),
('At what speed does tele-computed refer?', 'Interface Speed', 'Cycles per second', 'Megabyte load', 'Baud Rate', 36, 99),
(' When the mail server sends mail to other mail servers it becomes ___ ?', 'Master', 'SMTP Server', 'Peer', 'SMTP Client', 36, 100),
('The length of an IPv6 address is?', '256bits', '64bits', '32bits', '128bits', 36, 101),
('The term WAN stands for?', 'Wide Area Net', 'Wide Access Network', 'Wide Access Net', 'Wide Area Network', 36, 102),
('On a simplex data link, which of the following is a possible error recovery technique?', 'Backward error correction', 'Automatic Repeat Request', 'Downward error correction', 'The use of hamming codes', 36, 103),
('The term LAN stands for ? ', 'Local Area Net', 'Local Array Network', 'Local Array Net', 'Local Area Network', 36, 104),
('POTS network works on the principle of _______', 'Telephone Switching ', 'Proxy Server', 'File System', 'Circuit System', 36, 105),
('SLIP stands for _______', 'System line internet protocol', 'Serial line internet protocol', 'signal internet protocol', 'Signal line internet protocol ', 36, 106),
('he second port is used to ____________ in the two-port network.', 'Input terminal', 'Signal Terminal', 'Bandwidth Terminal', 'Output Terminal', 36, 107),
('How many layers does the SONET contain ? ', '2 layers', '3 layers', '5 layers', '4 layers', 36, 108),
('What is the size of the destination port in the UDP protocol?', '32 bits', '8 bits', '20 bits', '16 bits', 36, 109),
('Which of the following is the branch of AI ? ', 'Cyber foresics', 'Full Stack Developer', 'Network Design', 'Machine Learning', 39, 110),
('Face Recognition system is based on which type of approach?', 'Weak AI approach', 'Cognitive AI approach', 'Strong AI approach', 'Applied AI approach', 39, 111),
('Artificial Intelligence is about _________________', 'Playing a game on computer', 'Programming on machine with yo', 'Putting your intelligence in m', 'Making a machine Intelligent ', 39, 112),
('Among the given options, which search algorithm requires less memory?', 'Optimal Search', 'Breadth First Search', 'Linear Search', 'Depth First Search', 39, 113),
('A technique that was developed to determine whether a machine could or could not demonstrate the artificial intelligence known as the___', 'Boolean Algebra ', 'Logarithm', 'Algorithm', 'Turing Test', 39, 114),
('Among the given options, which is not the required property of Knowledge representation?', 'Inferential Efficiency', 'Inferential Adequacy', 'Representational Adequacy', 'Representational Verification', 39, 115),
('An AI agent perceives and acts upon the environment using___.', 'Sensors', 'Perceiver', 'Actuators', 'Both a and c', 39, 116),
('Which agent deals with the happy and unhappy state?', 'Learning Agent', 'Goal Based Agent', 'Model Based Agent', 'Utility Based Agent', 39, 117),
('Which AI technique enables the computers to understand the associations and relationships between objects and events?', 'Heuristic Processing', 'Cognitive Science', 'Relative Symbolism', 'Pattern Matching', 39, 118),
('The maximum depth to which the alpha-beta pruning can be applied.', 'Eight States', 'Six States', 'Ten States', 'Any depth', 39, 119),
('The process of capturing the inference process as Single Inference Rule is known as:', 'Clauses', 'Ponens', 'Generalized Modus Ponens', 'Variables', 39, 120),
(' Web Crawler is an example of_____', 'Model Based Agent', 'Simple Reflex Agent ', 'Problem Solving Agent ', 'Intelligent Agent', 39, 121),
('In LISP, the addition of 5+8 is entered as_______.', '5+8', '5 add 8 ', '5 + 8 = ', '(+5 8)', 39, 122),
('An Algorithm is said as Complete algorithm if_______________', 'It contains a loop', 'It begins with a solution', 'It does not end with a solutio', 'It ends with solution', 39, 123),
('Which of the given element improve the performance of AI agent so that it can make better decisions?', 'Changing element', 'Performance Element', 'Teaching Element', 'Learning Element', 39, 124),
('How many types of Machine Learning are there?  ', '4', '2', '1', '3', 39, 125),
('The decision tree algorithm reaches its destination using_____________.  ', 'Single Test', 'No Test', ' two Test', 'Sequence of test', 39, 126),
('Which of the following is not an application of artificial intelligence?', 'Face Recognition System', 'Chatbots', 'LIDAR', 'DBMS', 39, 127),
('The total number of proposition symbols in AI are', '3', '1', '0', '2', 39, 128),
('Which of the following environment is strategic?', 'Partial', 'Stochastic', 'Rational', 'Determinstic', 39, 129),
('GUI stands for -', 'Graphics uniform interaction', 'Graphical user interaction', 'Graphical User Internet', 'Graphical User Interface', 40, 130),
('Graphics can be - ', 'Simulation', 'Drawing ', 'Movies, photographs', 'All of the above', 40, 131),
('CAD stands for ', 'Computer Art Design', 'Car art Design', 'Art Design', 'Computer Aided Design', 40, 132),
('The components of interactive computer graphics are : ', 'A monitor', 'Display controller ', 'Frame buffer', 'All of the Above', 40, 133),
('What is a pixel mask?', 'a string containing only 0 s', 'a string containing only 1 s', 'a string containing two 0 s', 'a string containing both 1 s a', 40, 134),
('Which one of the following is the primarily used output device?', 'Scanner', 'Speaker', 'Printer', 'Video Monitor', 40, 135),
('Which of the following is not the pattern of line?  Dotted line', 'Dotted line', 'Dashed line ', 'Crossed line', 'Dark line', 40, 136),
('DDA stands for ', 'Direct differential analyzer', 'Data differential analyzer', 'Direct difference analyzer', 'Digital differential analyzer', 40, 137),
('The process of positioning an object along a straight line path from one coordinate point to another is called -', 'Reflection', 'Shearing', 'Transformation', 'Translation', 40, 138),
('The Cohen-Sutherland algorithm divides the two-dimensional space in how many regions?', '4', '8', '23', '9', 40, 139),
('Which one of the following is the most commonly used and basic input device?', 'Mouse', 'Printer', 'Scanner ', 'Keyboard', 40, 140),
('Which is not the input device?', 'Trackball', 'Mouse', 'Keyboard', 'Impact printers', 40, 141),
('Which is a common device for painting or selecting the objects co-ordinate positions?', 'Touch Panel', 'Image scanner', 'Keyboard', 'Digitizer', 40, 142),
('How many phosphor color dots at each pixel position in a shadow mask CRT?', '1', '7', '2', '3', 40, 143),
('RGB color model is used for -', 'Painting', 'Sketching', 'Printing', 'Computer Display', 40, 144),
('Which of the following color will generate with the intersection of three primary RGB colors?', 'Green', 'Dark red', 'Dark blue', 'White', 40, 145),
('The process of displaying 3D into a 2D display unit is called as -', 'Transformation', 'Rasterization', 'Resolution', 'Projection', 40, 146),
('The video device with reduced volume, power consumption and weight is', 'CRT', 'Portable display', 'Horizontal display', 'Flat Panel Display', 40, 147),
('The phase of determining the appropriate pixels for representing images or graphics object is called as ', 'Translation', 'Transformation', 'Scaling', 'Rasterization', 40, 148),
('The intersection of primary colors in the CMYK color model will generate the', 'Green', 'White', 'Blue', 'Black Color', 40, 149);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quizid` int(11) NOT NULL,
  `quizname` varchar(20) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `staffid` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quizid`, `quizname`, `date_created`, `staffid`) VALUES
(36, 'computer networks', '2023-01-10 17:01:41', '104'),
(37, 'database management ', '2023-01-11 01:31:30', '103'),
(38, 'python', '2023-01-12 18:04:23', '106'),
(39, 'artificial intellige', '2023-01-14 10:46:12', '105'),
(40, 'computer graphics', '2023-01-14 11:13:09', '102');

--
-- Triggers `quiz`
--
DELIMITER $$
CREATE TRIGGER `ondeleteqs` AFTER DELETE ON `quiz` FOR EACH ROW delete from questions where questions.quizid=old.quizid
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `slno` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `quizid` int(11) NOT NULL,
  `usn` varchar(30) NOT NULL,
  `totalscore` int(11) NOT NULL,
  `remark` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`slno`, `score`, `quizid`, `usn`, `totalscore`, `remark`) VALUES
(44, 20, 38, '21GANSD001', 20, 'good');

--
-- Triggers `score`
--
DELIMITER $$
CREATE TRIGGER `remarks` BEFORE INSERT ON `score` FOR EACH ROW set NEW.remark = if(NEW.score < 5, 'bad', 'good')
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffid` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `phno` varchar(10) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `pw` varchar(200) NOT NULL,
  `dept` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffid`, `name`, `mail`, `phno`, `gender`, `DOB`, `pw`, `dept`) VALUES
('102', 'Manjula', 'manjula@gmail.com', '6543219871', 'F', '2020-02-01', 'Staff@102', 'ISE'),
('103', 'Kumaraswamy', 'kumarasway@gmail.com', '9988776655', 'M', '2011-01-01', 'Staff@103', 'ISE'),
('104', 'Sunil Kumar', 'sunilkumar@gmail.com', '8877665544', 'M', '2010-01-01', 'Staff@104', 'CSE'),
('105', 'Kiran K', 'kirank@uvce.ac.in', '9887848654', 'M', '2008-12-01', 'Staff@105', 'CSE'),
('106', 'Pushpa C N', 'pushpa@uvce.ac.in', '9988776655', 'F', '2015-01-01', 'Staff@106', 'ISE');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `usn` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `phno` varchar(10) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `pw` varchar(200) NOT NULL,
  `dept` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`usn`, `name`, `mail`, `phno`, `gender`, `DOB`, `pw`, `dept`) VALUES
('21GANSD001', 'Abhikiran', 'abhikiran@gmail.com', '9876564321', 'M', '2001-01-01', 'Student@001', 'ISE'),
('21GANSD002', 'Gajendra M', 'gajendram@gmail.com', '7975007550', 'M', '2000-01-06', 'Student@002', 'ISE'),
('21GANSD003', 'Lohith', 'lohith@gmail.com', '9876543212', 'M', '2002-02-01', 'Student@003', 'ISE'),
('21GANSD004', 'Nandeesh', 'nandi@gmail.com', '3216549875', 'M', '2003-01-01', 'Student@004', 'CSE'),
('21GANSD005', 'Venkatesh', 'venky@gmail.com', '9865324578', 'M', '2002-01-01', 'Student@005', 'ISE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`),
  ADD UNIQUE KEY `qs` (`qs`),
  ADD KEY `quizid` (`quizid`),
  ADD KEY `quizid_2` (`quizid`),
  ADD KEY `quizid_3` (`quizid`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quizid`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`slno`),
  ADD KEY `quizid` (`quizid`),
  ADD KEY `usn` (`usn`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffid`),
  ADD UNIQUE KEY `mail` (`mail`,`phno`),
  ADD UNIQUE KEY `staffid` (`staffid`),
  ADD KEY `mail_2` (`mail`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`usn`),
  ADD UNIQUE KEY `mail` (`mail`),
  ADD UNIQUE KEY `phno` (`phno`),
  ADD UNIQUE KEY `usn` (`usn`),
  ADD KEY `dept` (`dept`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quizid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `score_ibfk_1` FOREIGN KEY (`quizid`) REFERENCES `quiz` (`quizid`) ON DELETE CASCADE,
  ADD CONSTRAINT `score_ibfk_3` FOREIGN KEY (`usn`) REFERENCES `student` (`usn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
