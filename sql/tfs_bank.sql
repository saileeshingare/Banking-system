-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2021 at 07:52 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tfs_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(5, 'Alice Whitman', 'Simon Baker', 500, '2021-05-14 22:41:39'),
(6, 'Nicole Tucker', 'Gloria Jenkins', 1500, '2021-05-14 22:42:16'),
(7, 'Peter Flores', 'Julie Gomez', 1200, '2021-05-14 22:42:43'),
(8, 'Marie Evans', 'Oliver Rivera', 3000, '2021-05-14 22:43:41'),
(9, 'Gloria Jenkins', 'Julie Gomez', 700, '2021-05-14 22:55:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`, `account_no`) VALUES
(1, 'Alice Whitman', 'alicewhitman@gmail.com', 3500, 1001),
(2, 'Gloria Jenkins', 'gloriajenkins@gmail.com', 8200, 1002),
(3, 'Peter Flores', 'peterflores@gmail.com', 9300, 1003),
(4, 'Oliver Rivera', 'oliverrivera@gmail.com', 15300, 1004),
(5, 'Nicole Tucker', 'nicoletucker@gmail.com', 6700, 1005),
(6, 'Simon Baker', 'simonbaker@gmail.com', 5400, 1006),
(7, 'Valentina Cox', 'valentinacox@gmail.com', 20000, 1007),
(8, 'Marie Evans', 'marieevans@gmail.com', 15000, 1008),
(9, 'Conner Matthews', 'connermatthews@gmail.com', 13300, 1009),
(10, 'Julie Gomez', 'juliegomez@gmail.com', 7900, 1010);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
