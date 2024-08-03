-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2024 at 03:54 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customer table`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `femail` varchar(50) NOT NULL,
  `fphone` int(8) NOT NULL,
  `faddress` varchar(50) NOT NULL,
  `fpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fname`, `femail`, `fphone`, `faddress`, `fpassword`) VALUES
(1, 'Bhimalsing Degnarain', 'bhimalsingn@gmail.com', 52597094, 'camp de masque pave', '1234323'),
(2, 'Bhimalsing Degnarain', 'bhimslin@gmail.com', 52597094, 'camp de masque pave', '241534'),
(3, 'Bhimalsing Degnarain', 'bhimslin@gmail.com', 52597094, 'camp de masque pave', '241534'),
(4, 'bon bon', '', 0, '', 'sd24434'),
(5, 'kritisha', 'bonbon@gmail.com', 1324354, 'trou aux biche', 'dgffdf'),
(6, 'Bhimalsing Degnarain', 'bhimslin@gmail.com', 52597094, 'camp de masque pave', 'cddfdf'),
(7, 'Dolan Trump', 'shotonear@gmail.com', 12345652, 'Merica', 'missear'),
(8, 'Alien Arpan', 'Arpan@gmail.com', 69696969, 'Mars', 'ufo'),
(9, 'kaka', 'kaka@gmail.com', 12345678, 'kaka', 'kaka');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
