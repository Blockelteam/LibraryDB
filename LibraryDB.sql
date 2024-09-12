-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2024 at 07:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE DATABASE librarydb ;
use librarydb
--
-- Database: `librarydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `author_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `birth_year` int(11) DEFAULT NULL,
  `death_year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_id`, `name`, `birth_year`, `death_year`) VALUES
(1, 'Ibn Kathir', 1301, 1373),
(2, 'Al-Dhahabi', 1274, 1348),
(3, 'Agatha Christie', 1890, 1976),
(4, 'Sultan Al-Mousa', NULL, NULL),
(5, 'Sami Al-Mughlooth', 1962, NULL),
(6, 'Ibn Al-Kalbi', 787, 819),
(7, 'Aedh Al-Qahtani', NULL, NULL),
(8, 'Ibn Hazm Al-Andalusi', 994, 1064),
(9, 'William Shakespeare', 1564, 1616),
(10, 'Maurice Croizat', 1908, 2004),
(11, 'Jane Austen', 1775, 1817),
(12, 'J.K. Rowling', 1965, NULL),
(13, 'George Orwell', 1903, 1950),
(14, 'Homer', -800, -700),
(15, 'Leo Tolstoy', 1828, 1910),
(16, 'F. Scott Fitzgerald', 1896, 1940),
(17, 'Ernest Hemingway', 1899, 1961),
(18, 'J.R.R. Tolkien', 1892, 1973),
(19, 'Mark Twain', 1835, 1910),
(20, 'Charles Dickens', 1812, 1870),
(21, 'H.G. Wells', 1866, 1946),
(22, 'Aldous Huxley', 1894, 1963),
(23, 'Isaac Asimov', 1920, 1992),
(24, 'Arthur C. Clarke', 1917, 2008),
(25, 'Philip K. Dick', 1928, 1982),
(26, 'Ray Bradbury', 1920, 2012),
(27, 'Margaret Atwood', 1939, NULL),
(28, 'Stephen King', 1947, NULL),
(29, 'Tolkien', 1892, 1973),
(30, 'J.D. Salinger', 1919, 2010),
(31, 'Chinua Achebe', 1930, 2013),
(32, 'Gabriel Garcia Marquez', 1927, 2014),
(33, 'John Steinbeck', 1902, 1968),
(34, 'James Joyce', 1882, 1941),
(35, 'Kurt Vonnegut', 1922, 2007),
(36, 'Sylvia Plath', 1932, 1963),
(37, 'T.S. Eliot', 1888, 1965),
(38, 'William Faulkner', 1897, 1962),
(39, 'Hermann Hesse', 1877, 1962),
(40, 'Gustave Flaubert', 1821, 1880),
(41, 'Thomas Hardy', 1840, 1928),
(42, 'D.H. Lawrence', 1885, 1930),
(43, 'George Eliot', 1819, 1880),
(44, 'Oscar Wilde', 1854, 1900),
(45, 'Edith Wharton', 1862, 1937),
(46, 'William Butler Yeats', 1865, 1939),
(47, 'Langston Hughes', 1902, 1967),
(48, 'Zora Neale Hurston', 1891, 1960),
(49, 'Alice Walker', 1944, NULL),
(50, 'Toni Morrison', 1931, 2019);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `publication_year` int(11) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `available_copies` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `title`, `author_id`, `publication_year`, `genre`, `available_copies`) VALUES
(101, 'Al-Bidayah wa-an-Nihayah', 1, 2000, 'History', 10),
(102, 'Siyar Alam al-Nubala', 2, 1999, 'History', 8),
(103, 'The Mysterious Affair at Styles', 3, 1934, 'Mystery', 12),
(104, 'Aqoom Qeela', 4, 2021, 'Novel', 7),
(105, 'Atlas of the Umayyad State', 5, 2005, 'History', 6),
(106, 'Nasab Maad w Alyemen alkabeer', 6, 2000, 'History', 5),
(107, 'Kashkool Al-Hob', 7, 2015, 'Romance', 9),
(108, 'The Ring of the Dove', 8, 1000, 'Literature', 4),
(109, 'Hamlet', 9, 1600, 'Play', 11),
(110, 'General History of Civilizations', 10, 2008, 'History', 8),
(111, 'The Dawn of Islam', 1, 2000, 'History', 10),
(112, 'The Book of the Bayān and the Tabīn', 2, 900, 'Literature', 5),
(113, 'Life of Muhammad', 1, 1935, 'History', 8),
(114, 'The Proofs of the Quranic Sciences', 2, 1440, 'Religion', 7),
(115, 'Chapters from History', 3, 2012, 'History', 6),
(116, 'Principles of Syntax', 4, 1000, 'Language', 5),
(117, 'Artificial Intelligence', 11, 2018, 'Technology', 9),
(118, 'Programming in Python', 12, 2019, 'Programming', 15),
(119, 'Fundamentals of Mathematics', 13, 2010, 'Mathematics', 14),
(120, 'Academic Writing', 14, 2017, 'Literature', 11),
(121, 'Human Geography', 15, 2016, 'Geography', 13),
(122, 'Java Programming Fundamentals', 12, 2019, 'Programming', 10),
(123, 'Arabic Alphabet', 16, 2002, 'Language', 6),
(124, 'Travel Literature', 17, 2004, 'Literature', 8),
(125, 'The War of the Worlds', 18, 1898, 'Science Fiction', 10),
(126, 'Quantum Physics', 19, 2019, 'Science', 7),
(127, 'Economic Geography', 20, 2018, 'Geography', 9),
(128, 'Science and Religion', 21, 2015, 'Philosophy', 6),
(129, 'The Muqaddimah', 1, 1377, 'History', 12),
(130, 'The Story of Civilization', 22, 1935, 'History', 11),
(131, 'Islamic History', 1, 1950, 'History', 10),
(132, 'Arabic Literature', 23, 2012, 'Literature', 13),
(133, 'Energy and Environment', 24, 2018, 'Science', 7),
(134, 'Arab Genealogies', 25, 2006, 'History', 8),
(135, 'Symbolism in Literature', 26, 2019, 'Literature', 6),
(136, 'Database Fundamentals', 27, 2020, 'Programming', 12),
(137, 'Earth Sciences', 28, 2015, 'Science', 9),
(138, 'Modern Mathematics', 29, 2017, 'Mathematics', 10),
(139, 'Educational Reform', 30, 2018, 'Education', 8),
(140, 'Sacred Books', 31, 2016, 'Religion', 7),
(141, 'The Future of Technology', 32, 2020, 'Technology', 10),
(142, 'Natural History', 33, 1859, 'Science', 9),
(143, 'The Digital World', 34, 2021, 'Technology', 12),
(144, 'Scientific Foundations of Medicine', 35, 2018, 'Medicine', 6),
(145, 'The World of Space', 36, 2020, 'Science', 8),
(146, 'Object-Oriented Programming', 37, 2021, 'Programming', 11),
(147, 'History of Philosophy', 38, 2020, 'Philosophy', 7),
(148, 'Contemporary Arab Thought', 39, 2018, 'Thought', 9),
(149, 'Programming in the Age of Big Data', 40, 2021, 'Programming', 12),
(150, 'Basics of Astrology', 41, 2020, 'Philosophy', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;