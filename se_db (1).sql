-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 02, 2023 at 03:23 PM
-- Server version: 8.0.23
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `se_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `icon` int NOT NULL,
  `point` int NOT NULL,
  `expirePoint` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `firstname`, `lastname`, `email`, `username`, `password`, `phone`, `icon`, `point`, `expirePoint`) VALUES
(1, 'เกวลิน', 'สุขใจ', 'kevalin1@hotmail.com', 'PLoyza', 'Kitty2566', '123', 16, 0, '21/3/2566'),
(3, 'JohnWick', 'กลิ่นสไว', 'Nanon@hotmail.com', 'Imposter', 'Kitty2568', '0893366441', 16, 100, '21/3/2568'),
(4, 'ธีรภัทร', 'มาลาอบ', 'anzlnwza007@gmail.com', 'Anzlnwza007', 'Anz31135!', '0805930144', 0, 0, ''),
(6, 'Qwe', 'Qwe', 'Qwe', 'Qwe', 'Qwe1234!', 'Qwe', 0, 0, ''),
(8, 'B', 'B', 'B', 'B', 'Bbb12345', 'B', 0, 0, ''),
(9, 'R', 'R', 'R', 'R', 'Rrr12345', 'R', 0, 0, ''),
(10, 'Abeck', 'Namis', 'Emailsz', 'Abz', 'Abz123456', 'Sss', 0, 0, ''),
(11, 'Baaa', 'Naaa', 'Naaa', 'Bababa', 'Banana256y', 'Babanaa', 0, 0, ''),
(12, 'Qqqq', 'Qqqq', 'Qqqq', 'Qqqq', 'Qqqq1234', 'Qqqq', 0, 0, ''),
(13, 'Jj', 'Jj', 'Jj', 'Jj', 'Jj12345678', 'Jj', 0, 0, ''),
(14, 'Hijk', 'Abcefg', 'Hijk', 'Anzzzzz', 'Anz31135!', 'Anz', 0, 0, ''),
(16, 'สมชาย', 'ไข่ดาว', 'Som', 'Somchai', 'Anz31135!', 'Do hjhgg', 0, 0, ''),
(17, 'Abcdef', 'Higjkl', 'Abdhkdjdid', 'Hohohoho', 'Anz31135!', 'Hdjdjdej', 0, 0, ''),
(21, 'aaaa', 'aaaa', 'aaaa@a.com', 'a123', 'Anz1234567', '0123', 0, 0, ''),
(22, 'aaa', 'aaa', 'a@a.a', 'aaaa', 'Aa1234567', '0', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `id` int NOT NULL,
  `stationName` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `review` float NOT NULL,
  `time` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` mediumblob NOT NULL,
  `userid` int NOT NULL,
  `stationID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `id` int NOT NULL,
  `brand1` int NOT NULL,
  `model1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `regis1` varchar(255) NOT NULL,
  `brand2` int NOT NULL,
  `model2` varchar(255) NOT NULL,
  `regis2` varchar(255) NOT NULL,
  `brand3` int NOT NULL,
  `model3` varchar(255) NOT NULL,
  `regis3` varchar(255) NOT NULL,
  `numcar` int NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `brand1`, `model1`, `regis1`, `brand2`, `model2`, `regis2`, `brand3`, `model3`, `regis3`, `numcar`, `username`) VALUES
(1, 31, 'Funky Cat', 'กน 5857 กรุงเทพมหานคร', 0, 'e-tron GT quattro', 'กง 8888 กรุงเทพมหานคร', 0, '', '', 2, 'PLoyza'),
(2, 44, 'Model 3 Performance', 'จด 1401 กรุงเทพมหานคร', 26, 'MG4 EV LR', 'ซว 1717 กรุงเทพมหานคร', 0, '', '', 2, 'Juneee'),
(3, 2, 'Atto 3 SR', 'ดง 1270 กรุงเทพมหานคร', 0, '', '', 0, '', '', 1, 'Imposter'),
(4, 27, 'Cooper SE', 'มส 7854 กรุงเทพมหานคร', 0, '', '', 0, '', '', 1, 'Anzlnwza007'),
(5, 3, 'Cadillac Lyriq RWD', 'AN 2345', 0, '', '', 0, '', '', 1, 'wow'),
(7, 2, 'Atto 4 Performance ', 'Asd', 0, '', '', 0, '', '', 1, 'B'),
(8, 0, 'SQ8 50 e-tron quattro', 'Haj', 0, '', '', 0, '', '', 1, 'R'),
(9, 4, 'Chevrolet Equinox EV AWD', 'Hsh', 0, '', '', 0, '', '', 1, 'Abz'),
(10, 0, 'SQ8 50 e-tron quattro', 'Sss', 0, '', '', 0, '', '', 1, 'Bababa'),
(11, 3, 'Cadillac Celestiq', 'Eieii', 2, 'Atto 4 Performance ', 'Jdjsj', 0, '', '', 2, 'Qqqq'),
(12, 0, 'Q8 Sportback 50 e-tron quattro ', 'Hhhs', 0, '', '', 0, '', '', 1, 'Jj'),
(13, 2, 'Atto 3 SR ', 'Vhzzh', 0, 'SQ8 50 e-tron quattro', 'Jjdjd', 0, '', '', 2, 'Anzzzzz'),
(15, 3, 'Cadillac Celestiq', '-+(6', 0, 'SQ8 50 e-tron quattro', 'Ftyuu', 0, '', '', 2, 'Somchai'),
(16, 3, 'Cadillac Lyriq AWD', 'Jxsjzxjjx', 0, 'Q8 Sportback 50 e-tron quattro ', 'Hfjddj', 0, '', '', 2, 'Hohohoho'),
(23, 0, 'SQ8 50 e-tron quattro', 'aaaa', 0, 'SQ8 50 e-tron quattro', '2222', 0, '', '', 2, 'a123'),
(24, 0, 'Q8 50 e-tron quattro', 'assa', 0, '', '', 0, '', '', 1, 'aaaa');

-- --------------------------------------------------------

--
-- Table structure for table `hoho`
--

CREATE TABLE `hoho` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hoho`
--

INSERT INTO `hoho` (`id`, `name`) VALUES
(1, 'jotaro'),
(3, 'JohnWick'),
(6, '้า้า');

-- --------------------------------------------------------

--
-- Table structure for table `plug`
--

CREATE TABLE `plug` (
  `id` int NOT NULL,
  `plug0` int NOT NULL,
  `plug1` int NOT NULL,
  `plug2` int NOT NULL,
  `plug3` int NOT NULL,
  `plug4` int NOT NULL,
  `plug5` int NOT NULL,
  `plug6` int NOT NULL,
  `plug7` int NOT NULL,
  `plug8` int NOT NULL,
  `plug9` int NOT NULL,
  `plug10` int NOT NULL,
  `plug11` int NOT NULL,
  `plug12` int NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `plug`
--

INSERT INTO `plug` (`id`, `plug0`, `plug1`, `plug2`, `plug3`, `plug4`, `plug5`, `plug6`, `plug7`, `plug8`, `plug9`, `plug10`, `plug11`, `plug12`, `username`) VALUES
(1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Anzlnwza007'),
(2, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wow'),
(4, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'B'),
(5, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'R'),
(6, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Abz'),
(7, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'Bababa'),
(8, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 'Qqqq'),
(9, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'Jj'),
(10, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'Anzzzzz'),
(12, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 'Somchai'),
(13, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'Hohohoho'),
(14, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 'PLoyza'),
(21, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'a123'),
(22, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'aaaa');

-- --------------------------------------------------------

--
-- Table structure for table `plugall`
--

CREATE TABLE `plugall` (
  `id` int NOT NULL,
  `brand` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Plug1` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Plug2` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Plug3` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Plug4` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Plug5` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plugall`
--

INSERT INTO `plugall` (`id`, `brand`, `model`, `Plug1`, `Plug2`, `Plug3`, `Plug4`, `Plug5`) VALUES
(1, 'AUDI', 'Q8 50 e-tron quattro ', 'Type2', 'CCS', '', '', ''),
(2, 'AUDI', 'Q8 55 e-tron quattro', 'Type2', 'CCS', '', '', ''),
(3, 'AUDI', 'SQ8 50 e-tron quattro', 'Type2', 'CCS', '', '', ''),
(4, 'AUDI', 'Q8 Sportback 50 e-tron quattro ', 'Type2', 'CCS', '', '', ''),
(5, 'AUDI', 'SQ8 Sportback e-tron quattro', 'Type2', 'CCS', '', '', ''),
(6, 'AUDI', 'A6 Avant e-tron ', 'Type2', 'CCS', '', '', ''),
(7, 'AUDI', 'e-tron GT quattro ', 'Type2', 'CCS', '', '', ''),
(8, 'AUDI', 'RS e-tron GT ', 'Type2', 'CCS', '', '', ''),
(9, 'AUDI', 'Q4 e-tron 35 ', 'Type2', 'CCS', '', '', ''),
(10, 'AUDI', 'Q4 e-tron 40 ', 'Type2', 'CCS', '', '', ''),
(11, 'AUDI', 'e-tron 45 quattro Sportback ', 'Type2', 'CCS', '', '', ''),
(12, 'AUDI', 'e-tron 50 quattro Sportback ', 'Type2', 'CCS', '', '', ''),
(13, 'AUDI', 'e-tron 55 quattro Sportback ', 'Type2', 'CCS', '', '', ''),
(14, 'AUDI', 'e-tron S ', 'Type2', 'CCS', '', '', ''),
(15, 'AUDI', 'e-tron 50 quattro ', 'Type2', 'CCS', '', '', ''),
(16, 'AUDI', 'e-tron 55 quattro ', 'Type2', 'CCS', '', '', ''),
(17, 'BMW', 'i4 eDrive35 ', 'Type2', 'CCS', '', '', ''),
(18, 'BMW', 'iX1 xDrive30 ', 'Type2', 'CCS', '', '', ''),
(19, 'BMW', 'i7 xDrive60 ', 'Type2', 'CCS', '', '', ''),
(20, 'BMW', 'i7 M70 xDrive ', 'Type2', 'CCS', '', '', ''),
(21, 'BMW', 'iX M60 ', 'Type2', 'CCS', '', '', ''),
(22, 'BMW', 'iX3 ', 'Type2', 'CCS', '', '', ''),
(23, 'BMW', 'i4 eDrive40 ', 'Type2', 'CCS', '', '', ''),
(24, 'BMW', 'i4 M50 ', 'Type2', 'CCS', '', '', ''),
(25, 'BMW', 'iX xDrive40 ', 'Type2', 'CCS', '', '', ''),
(26, 'BMW', 'iX xDrive50 ', 'Type2', 'CCS', '', '', ''),
(27, 'BMW', 'iX3 ', 'Type2', 'CCS', '', '', ''),
(28, 'BMW', 'i3 ', 'Type2', 'CCS', '', '', ''),
(29, 'BMW', 'i3s ', 'Type2', 'CCS', '', '', ''),
(30, 'BYD', 'Atto 4 SR ', 'Type2', 'CCS', '', '', ''),
(31, 'BYD', 'Atto 4 LR ', 'Type2', 'CCS', '', '', ''),
(32, 'BYD', 'Atto 4 Performance ', 'Type2', 'CCS', '', '', ''),
(33, 'BYD', 'Atto 3 SR ', 'Type2', 'CCS', '', '', ''),
(34, 'BYD', 'Atto 3 LR ', 'Type2', 'CCS', '', '', ''),
(35, 'BYD', 'Han ', 'Type2', 'CCS', '', '', ''),
(36, 'BYD', 'Tang ', 'Type2', 'CCS', '', '', ''),
(37, 'Cadillac', 'Cadillac Lyriq RWD', 'Type2', 'CCS', '', '', ''),
(38, 'Cadillac', 'Cadillac Celestiq', 'Type2', 'CCS', '', '', ''),
(39, 'Cadillac', 'Cadillac Lyriq AWD', 'Type2', 'CCS', '', '', ''),
(40, 'Chevrolet', 'Chevrolet Equinox EV 1LT FWD', 'Type2', 'CCS', '', '', ''),
(41, 'Chevrolet', 'Chevrolet Equinox EV FWD', 'Type2', 'CCS', '', '', ''),
(42, 'Chevrolet', 'Chevrolet Equinox EV AWD', 'Type2', 'CCS', '', '', ''),
(43, 'Chevrolet', 'Chevrolet Blazer EV 1LT', 'Type2', 'CCS', '', '', ''),
(44, 'Chevrolet', 'Chevrolet Blazer EV 2LT FWD', 'Type2', 'CCS', '', '', ''),
(45, 'Chevrolet', 'Chevrolet Blazer EV 2LT AWD', 'Type2', 'CCS', '', '', ''),
(46, 'Chevrolet', 'Chevrolet Blazer EV RS FWD', 'Type2', 'CCS', '', '', ''),
(47, 'Chevrolet', 'Chevrolet Blazer EV RS RWD', 'Type2', 'CCS', '', '', ''),
(48, 'Chevrolet', 'Chevrolet Blazer EV RS/SS AWD', 'Type2', 'CCS', '', '', ''),
(49, 'Citroen', 'Citroen e-C3', '', 'CCS', '', '', ''),
(50, 'Citroen', 'Citroen e-C4 X', 'Type2', 'CCS', '', '', ''),
(51, 'Citroen', 'Citroen e-C4', 'Type2', 'CCS', '', '', ''),
(52, 'Citroen', 'Citroen C-Zero', 'Type2', 'CCS', '', '', ''),
(53, 'Cupra', 'Cupra Born', 'Type2', 'CCS', '', '', ''),
(54, 'Dacia', 'Dacia Spring Electric ', 'Type2', 'CCS', '', '', ''),
(55, 'Dongfeng', 'DongFeng Seres 5', 'Type2', 'CCS', '', '', ''),
(56, 'Dongfeng', 'DongFeng Seres 3', 'Type2', 'CCS', '', '', ''),
(57, 'DS', 'DS 3 E-Tense', 'Type2', 'CCS', '', '', ''),
(58, 'DS', 'DS 3 Crossback E-Tense', 'Type2', 'CCS', '', '', ''),
(59, 'Fiat', 'Fiat New Abarth 500e', 'Type2', 'CCS', '', '', ''),
(60, 'Fiat', 'Fiat New 500 ', 'Type2', 'CCS', '', '', ''),
(61, 'Fiat', 'Fiat 500e', 'Type2', 'CCS', '', '', ''),
(62, 'Ford', 'Ford Mustang Mach-E GT', 'Type2', 'CCS', '', '', ''),
(63, 'Ford', 'Ford Mustang Mach-E SR', 'Type2', 'CCS', '', '', ''),
(64, 'Ford', 'Ford Mustang Mach-E SR AWD', 'Type2', 'CCS', '', '', ''),
(65, 'Ford', 'Ford Mustang Mach-E ER', 'Type2', 'CCS', '', '', ''),
(66, 'Ford', 'Ford Mustang Mach-E ER AWD', 'Type2', 'CCS', '', '', ''),
(67, 'Genesis', 'GV70 AWD', 'Type2', 'CCS', '', '', ''),
(68, 'Genesis', 'GV60 RWD', 'Type2', 'CCS', '', '', ''),
(69, 'Genesis', 'GV60 AWD', 'Type2', 'CCS', '', '', ''),
(70, 'Genesis', 'GV60 Performance AWD', 'Type2', 'CCS', '', '', ''),
(71, 'Genesis', 'G80 AWD', 'Type2', 'CCS', '', '', ''),
(72, 'GMC', 'Hummer EV SUV EV2', '', 'CCS', '', '', ''),
(73, 'GMC', 'Hummer EV SUV EV2x', '', 'CCS', '', '', ''),
(74, 'GMC', 'Hummer EV SUV Edition 1', '', 'CCS', '', '', ''),
(75, 'GMC', 'Hummer EV Pickup EV2', '', 'CCS', '', '', ''),
(76, 'GMC', 'Hummer EV Pickup EV2x', '', 'CCS', '', '', ''),
(77, 'GMC', 'Hummer EV Pickup EV3x', '', 'CCS', '', '', ''),
(78, 'GMC', 'Hummer EV Pickup Edition 1', '', 'CCS', '', '', ''),
(79, 'Honda', 'Honda e', 'Type2', 'CCS', '', '', ''),
(80, 'Honda', 'Honda e Advance', 'Type2', 'CCS', '', '', ''),
(81, 'Hongqi', 'E-HS9', 'Type2', 'CCS', '', '', ''),
(82, 'Hyundai', 'Kona Electric', 'Type2', 'CCS', '', '', ''),
(83, 'Hyundai', 'Ioniq 6 SR RWD', 'Type2', 'CCS', '', '', ''),
(84, 'Hyundai', 'Ioniq 6 LR RWD', 'Type2', 'CCS', '', '', ''),
(85, 'Hyundai', 'Ioniq 6 LR AWD', 'Type2', 'CCS', '', '', ''),
(86, 'Hyundai', 'Ioniq 5 LR RWD ', 'Type2', 'CCS', '', '', ''),
(87, 'Hyundai', 'Ioniq 5 LR AWD ', 'Type2', 'CCS', '', '', ''),
(88, 'Hyundai', 'Ioniq 5 SR RWD', 'Type2', 'CCS', '', '', ''),
(89, 'Hyundai', 'Ioniq 5 LR RWD', 'Type2', 'CCS', '', '', ''),
(90, 'Hyundai', 'Ioniq 5 SR AWD', 'Type2', 'CCS', '', '', ''),
(91, 'Hyundai', 'Ioniq 5 LR AWD', 'Type2', 'CCS', '', '', ''),
(92, 'Hyundai', 'Ioniq 5 LR RWD USA', 'Type2', 'CCS', '', '', ''),
(93, 'Hyundai', 'Ioniq 5 LR AWD USA', 'Type2', 'CCS', '', '', ''),
(94, 'Hyundai', 'Kona Electric ', 'Type2', 'CCS', '', '', ''),
(95, 'Hyundai', 'Ioniq Electric ', 'Type2', 'CCS', '', '', ''),
(96, 'Jaguar', 'Jaguar I-Pace', 'Type2', 'CCS', '', '', ''),
(97, 'Jaguar', 'Jaguar I-Pace EV320', 'Type2', 'CCS', '', '', ''),
(98, 'Jaguar', 'Jaguar I-Pace EV400', 'Type2', 'CCS', '', '', ''),
(99, 'Jeep', 'Jeep Avenger', 'Type2', 'CCS', '', '', ''),
(100, 'Kia', 'Kia EV9 GT', 'Type2', 'CCS', '', '', ''),
(101, 'Kia', 'Kia EV6 SR RWD', 'Type2', 'CCS', '', '', ''),
(102, 'Kia', 'Kia EV6 SR AWD', 'Type2', 'CCS', '', '', ''),
(103, 'Kia', 'Kia EV6 LR RWD', 'Type2', 'CCS', '', '', ''),
(104, 'Kia', 'Kia EV6 LR AWD', 'Type2', 'CCS', '', '', ''),
(105, 'Kia', 'Kia EV6 GT', 'Type2', 'CCS', '', '', ''),
(106, 'Kia', 'Kia Niro EV', 'Type2', 'CCS', '', '', ''),
(107, 'Kia', 'Kia e-Niro ', 'Type2', 'CCS', '', '', ''),
(108, 'Kia', 'Kia e-Soul ', 'Type2', 'CCS', '', '', ''),
(109, 'Lexus', 'Lexus RZ 450e', 'Type2', 'CCS', '', '', ''),
(110, 'Lexus', 'Lexus UX 300e ', 'Type2', 'CCS', 'CHAdeMO', '', ''),
(111, 'Lotus', 'Lotus Eletre', 'Type2', 'CCS', '', '', ''),
(112, 'Lotus', 'Lotus Eletre R', 'Type2', 'CCS', '', '', ''),
(113, 'Lucid', 'Lucid Air Pure', 'Type2', 'CCS', '', '', ''),
(114, 'Lucid', 'Lucid Air Touring', 'Type2', 'CCS', '', '', ''),
(115, 'Lucid', 'Lucid Air Grand Touring', 'Type2', 'CCS', '', '', ''),
(116, 'Lucid', 'Lucid Air Grand Touring Performance', 'Type2', 'CCS', '', '', ''),
(117, 'Lucid', 'Lucid Air Dream Edition Range', 'Type2', 'CCS', '', '', ''),
(118, 'Lucid', 'Lucid Air Dream Edition Performance', 'Type2', 'CCS', '', '', ''),
(119, 'Lucid', 'Lucid Air Sapphire', 'Type2', 'CCS', '', '', ''),
(120, 'Maserati', 'Maserati GranTurismo Folgore', 'Type2', 'CCS', '', '', ''),
(121, 'Maserati', 'Maserati Grecale Folgore', 'Type2', 'CCS', '', '', ''),
(122, 'Mazda', 'Mazda MX-30', 'Type2', 'CCS', '', '', ''),
(123, 'Mercedes', 'AMG EQE 53 4MATIC+ SUV', 'Type2', 'CCS', '', '', ''),
(124, 'Mercedes', 'AMG EQE 53 4MATIC+ SUV', 'Type2', 'CCS', '', '', ''),
(125, 'Mercedes', 'AMG EQE 43 4MATIC SUV', 'Type2', 'CCS', '', '', ''),
(126, 'Mercedes', 'EQE SUV 500 4MATIC', 'Type2', 'CCS', '', '', ''),
(127, 'Mercedes', 'EQE SUV 350 4MATIC', 'Type2', 'CCS', '', '', ''),
(128, 'Mercedes', 'EQE SUV 350+', 'Type2', 'CCS', '', '', ''),
(129, 'Mercedes', 'EQE 300', 'Type2', 'CCS', '', '', ''),
(130, 'Mercedes', 'EQE 350 4MATIC', 'Type2', 'CCS', '', '', ''),
(131, 'Mercedes', 'EQS SUV 450+', 'Type2', 'CCS', '', '', ''),
(132, 'Mercedes', 'EQS SUV 450 4MATIC', 'Type2', 'CCS', '', '', ''),
(133, 'Mercedes', 'EQE SUV 580 4MATIC', 'Type2', 'CCS', '', '', ''),
(134, 'Mercedes', 'EQE 500 4MATIC', 'Type2', 'CCS', '', '', ''),
(135, 'Mercedes', 'EQS 450 4MATIC', 'Type2', 'CCS', '', '', ''),
(136, 'Mercedes', 'EQS 500 4MATIC', 'Type2', 'CCS', '', '', ''),
(137, 'Mercedes', 'AMG EQE 43 4MATIC', 'Type2', 'CCS', '', '', ''),
(138, 'Mercedes', 'AMG EQE 53 4MATIC+', 'Type2', 'CCS', '', '', ''),
(139, 'Mercedes', 'AMG EQE 53 4MATIC+ AMG ', 'Type2', 'CCS', '', '', ''),
(140, 'Mercedes', 'EQE 350+ 90.6kWh', 'Type2', 'CCS', '', '', ''),
(141, 'Mercedes', 'EQS 350', 'Type2', 'CCS', '', '', ''),
(142, 'Mercedes', 'EQB 300 4MATIC', 'Type2', 'CCS', '', '', ''),
(143, 'Mercedes', 'AMG EQS 53 4MATIC+', 'Type2', 'CCS', '', '', ''),
(144, 'Mercedes', 'AMG EQS 53 4MATIC+ AMG ', 'Type2', 'CCS', '', '', ''),
(145, 'Mercedes', 'EQA 300 4MATIC', 'Type2', 'CCS', '', '', ''),
(146, 'Mercedes', 'EQA 350 4MATIC', 'Type2', 'CCS', '', '', ''),
(147, 'Mercedes', 'EQB 250', 'Type2', 'CCS', '', '', ''),
(148, 'Mercedes', 'EQB 350 4MATIC', 'Type2', 'CCS', '', '', ''),
(149, 'Mercedes', 'EQS 450+', 'Type2', 'CCS', '', '', ''),
(150, 'Mercedes', 'EQS 580 4MATIC', 'Type2', 'CCS', '', '', ''),
(151, 'Mercedes', 'EQC 400 4MATIC', 'Type2', 'CCS', '', '', ''),
(152, 'Mercedes', 'EQA 250', 'Type2', 'CCS', '', '', ''),
(153, 'Mercedes', 'EQV 250 Long', 'Type2', 'CCS', '', '', ''),
(154, 'Mercedes', 'EQV 250 Extra Long', 'Type2', 'CCS', '', '', ''),
(155, 'Mercedes', 'EQV 300 Long', 'Type2', 'CCS', '', '', ''),
(156, 'Mercedes', 'EQV 300 Extra Long', 'Type2', 'CCS', '', '', ''),
(157, 'MG', 'MG4 EV LR ', 'Type2', 'CCS', '', '', ''),
(158, 'MG', 'MG4 EV SR ', 'Type2', 'CCS', '', '', ''),
(159, 'MG', 'Marvel R RWD ', 'Type2', 'CCS', '', '', ''),
(160, 'MG', 'Marvel R AWD ', 'Type2', 'CCS', '', '', ''),
(161, 'MG', 'MG5 LR ', 'Type2', 'CCS', '', '', ''),
(162, 'MG', 'MG5 SR ', 'Type2', 'CCS', '', '', ''),
(163, 'MG', 'MG5 EV LR', 'Type2', 'CCS', '', '', ''),
(164, 'MG', 'ZS EV SR ', 'Type2', 'CCS', '', '', ''),
(165, 'MG', 'ZS EV LR', 'Type2', 'CCS', '', '', ''),
(166, 'Mini', 'Cooper SE ', 'Type2', 'CCS', '', '', ''),
(167, 'Nio', 'Nio ES8 150kWh', 'Type2', 'CCS', '', '', ''),
(168, 'Nio', 'ES8 ', 'Type2', 'CCS', '', '', ''),
(169, 'Nio', 'EC7 ', 'Type2', 'CCS', '', '', ''),
(170, 'Nio', 'EL7 ', 'Type2', 'CCS', '', '', ''),
(171, 'Nio', 'EC6', '', 'CCS', '', '', ''),
(172, 'Nio', 'ET5 ', 'Type2', 'CCS', '', '', ''),
(173, 'Nio', 'ET7', 'Type2', 'CCS', '', '', ''),
(174, 'Nio', 'Nio ET7', 'Type2', 'CCS', '', '', ''),
(175, 'Nio', 'ES6', '', 'CCS', '', '', ''),
(176, 'Nissan', 'Ariya ', 'Type2', 'CCS', '', '', ''),
(177, 'Nissan', 'Ariya e-4ORCE ', 'Type2', 'CCS', '', '', ''),
(178, 'Nissan', 'Ariya e-4ORCE  Performance', 'Type2', 'CCS', '', '', ''),
(179, 'Nissan', 'Leaf ', 'Type2', 'CCS', 'CHAdeMO', '', ''),
(180, 'Opel', 'Mokka Electric ', 'Type2', 'CCS', '', '', ''),
(181, 'Opel', 'Astra Electric ', 'Type2', 'CCS', '', '', ''),
(182, 'Opel', 'Astra Sports Tourer Electric ', 'Type2', 'CCS', '', '', ''),
(183, 'Opel', 'Mokka-e ', 'Type2', 'CCS', '', '', ''),
(184, 'Opel', 'Corsa-e ', 'Type2', 'CCS', '', '', ''),
(185, 'Ora', 'Funky Cat ', 'Type2', 'CCS', '', '', ''),
(186, 'Ora', 'Cat 48kWh ', '', 'CCS', '', '', ''),
(187, 'Ora', 'Cat 63kWh ', 'Type2', 'CCS', '', '', ''),
(188, 'Peugeot', 'e-208 ', 'Type2', 'CCS', '', '', ''),
(189, 'Peugeot', 'e-308 ', 'Type2', 'CCS', '', '', ''),
(190, 'Peugeot', 'e-2008 SUV', 'Type2', 'CCS', '', '', ''),
(191, 'Peugeot', 'e-208 ', 'Type2', 'CCS', '', '', ''),
(192, 'Peugeot', '2 SR', 'Type2', 'CCS', '', '', ''),
(193, 'Peugeot', 'LR ', 'Type2', 'CCS', '', '', ''),
(194, 'Peugeot', 'LR AWD ', 'Type2', 'CCS', '', '', ''),
(195, 'Peugeot', '2 Performance ', 'Type2', 'CCS', '', '', ''),
(196, 'Peugeot', '3 LR', 'Type2', 'CCS', '', '', ''),
(197, 'Peugeot', '3 Performance', 'Type2', 'CCS', '', '', ''),
(198, 'Peugeot', '2 LR ', 'Type2', 'CCS', '', '', ''),
(199, 'Peugeot', '2 LR AWD ', 'Type2', 'CCS', '', '', ''),
(200, 'Porsche', 'Taycan Sport Turismo', 'Type2', 'CCS', '', '', ''),
(201, 'Porsche', 'Taycan Plus Sport Turismo', 'Type2', 'CCS', '', '', ''),
(202, 'Porsche', 'Taycan 4S Sport Turismo', 'Type2', 'CCS', '', '', ''),
(203, 'Porsche', 'Taycan 4S Plus Sport Turismo', 'Type2', 'CCS', '', '', ''),
(204, 'Porsche', 'Taycan GTS Sport Turismo', 'Type2', 'CCS', '', '', ''),
(205, 'Porsche', 'Taycan Turbo Sport Turismo', 'Type2', 'CCS', '', '', ''),
(206, 'Porsche', ' Taycan Turbo S Sport Turismo', 'Type2', 'CCS', '', '', ''),
(207, 'Porsche', ' Taycan GTS', 'Type2', 'CCS', '', '', ''),
(208, 'Porsche', 'Taycan 4 Cross Turismo', 'Type2', 'CCS', '', '', ''),
(209, 'Porsche', 'Taycan 4S Cross Turismo', 'Type2', 'CCS', '', '', ''),
(210, 'Porsche', 'Taycan Turbo Cross Turismo', 'Type2', 'CCS', '', '', ''),
(211, 'Porsche', 'Taycan Turbo S Cross Turismo', 'Type2', 'CCS', '', '', ''),
(212, 'Porsche', 'Porsche Taycan', 'Type2', 'CCS', '', '', ''),
(213, 'Porsche', 'Taycan 4S', 'Type2', 'CCS', '', '', ''),
(214, 'Porsche', ' Taycan 4S Plus', 'Type2', 'CCS', '', '', ''),
(215, 'Porsche', 'Taycan Turbo', 'Type2', 'CCS', '', '', ''),
(216, 'Porsche', 'Taycan Turbo S', 'Type2', 'CCS', '', '', ''),
(217, 'Renault', 'Megane E-Tech', 'Type2', 'CCS', '', '', ''),
(218, 'Renault', 'Twingo Electric ', 'Type2', '', '', '', ''),
(219, 'Renault', 'Zoe R110 Z.E. 40 ', 'Type2', 'CCS', '', '', ''),
(220, 'Renault', 'Zoe R110 Z.E. 50 ', 'Type2', 'CCS', '', '', ''),
(221, 'Renault', 'Zoe R135 Z.E. 50 ', 'Type2', 'CCS', '', '', ''),
(222, 'Renault', 'Fluence Z.E. ', 'Type2', 'CCS', '', '', ''),
(223, 'Renault', 'Zoe R240 ', 'Type2', '', '', '', ''),
(224, 'Renault', 'Zoe Q210 ', 'Type2', '', '', '', ''),
(225, 'Renault', 'Fluence Z.E. ', 'Type2', '', '', '', ''),
(226, 'Rimac', 'Nevera ', 'Type2', 'CCS', '', '', ''),
(227, 'Rivian', 'Rivian R1S Dual Motor Standard Pack', '', 'CCS', '', 'J-1772', ''),
(228, 'Rivian', 'Rivian R1S Dual Motor Large Pack', '', 'CCS', '', 'J-1772', ''),
(229, 'Rivian', 'Rivian R1T Dual Motor Standard Pack', '', 'CCS', '', 'J-1772', ''),
(230, 'Rivian', 'Rivian R1T Dual Motor Large Pack', '', 'CCS', '', 'J-1772', ''),
(231, 'Rivian', 'Rivian R1T Dual Motor Max Pack', '', 'CCS', '', 'J-1772', ''),
(232, 'Rivian', 'Rivian R1T Quad Motor Max Pack', '', 'CCS', '', 'J-1772', ''),
(233, 'Rivian', 'Rivian R1T Quad Motor Large Pack', '', 'CCS', '', 'J-1772', ''),
(234, 'Rivian', 'Rivian R1S Quad Motor Large Pack', '', 'CCS', '', 'J-1772', ''),
(235, 'Rolls-royce', 'Rolls-Royce Spectre ', 'Type2', 'CCS', '', '', ''),
(236, 'Seat', 'Electric ', 'Type2', 'CCS', '', '', ''),
(237, 'Skoda', 'Skoda Enyaq Coupe iV 60', 'Type2', 'CCS', '', '', ''),
(238, 'Skoda', 'Skoda Enyaq Coupe iV 80', 'Type2', 'CCS', '', '', ''),
(239, 'Skoda', 'Skoda Enyaq Coupe iV 80X', 'Type2', 'CCS', '', '', ''),
(240, 'Skoda', 'Skoda Enyaq Coupe RS iV', 'Type2', 'CCS', '', '', ''),
(241, 'Skoda', 'Skoda Enyaq iV 50', 'Type2', 'CCS', '', '', ''),
(242, 'Skoda', 'Skoda Enyaq iV 60', 'Type2', 'CCS', '', '', ''),
(243, 'Skoda', 'Skoda Enyaq iV 80', 'Type2', 'CCS', '', '', ''),
(244, 'Skoda', 'Skoda Enyaq iV 80X', 'Type2', 'CCS', '', '', ''),
(245, 'Skoda', 'Skoda Enyaq iV RS', 'Type2', 'CCS', '', '', ''),
(246, 'Skoda', 'Skoda Citigo-e iV', 'Type2', 'CCS', '', '', ''),
(247, 'Skoda', 'Smart EQ forfour', 'Type2', 'CCS', '', '', ''),
(248, 'Skoda', 'Smart EQ fortwo Cabrio', 'Type2', 'CCS', '', '', ''),
(249, 'Subaru', 'Subaru Solterra', 'Type2', 'CCS', '', '', ''),
(250, 'Tata motors', 'Tata Motors Tiago.ev LR', 'Type2', 'CCS', '', '', ''),
(251, 'Tata motors', 'Tata Motors Nexon EV Max', 'Type2', 'CCS', '', '', ''),
(252, 'Tata motors', 'Tata Motors Tigor EV', '', 'CCS', '', '', ''),
(253, 'Tata motors', 'Tata Motors Nexon EV', '', 'CCS', '', '', ''),
(254, 'Tesla', 'Model Y SR+ RWD ', 'Type2', 'CCS', '', '', 'Tesla (Fast)'),
(255, 'Tesla', 'Model S LR ', 'Type2', 'CCS', '', '', 'Tesla (Fast)'),
(256, 'Tesla', 'Model S Plaid ', 'Type2', 'CCS', '', '', 'Tesla (Fast)'),
(257, 'Tesla', 'Model X LR+', 'Type2', 'CCS', '', '', 'Tesla (Fast)'),
(258, 'Tesla', 'Model X Plaid ', 'Type2', 'CCS', '', '', 'Tesla (Fast)'),
(259, 'Tesla', 'Model 3 SR+ RWD ', 'Type2', 'CCS', '', '', 'Tesla (Fast)'),
(260, 'Tesla', 'Model 3 LR AWD', 'Type2', 'CCS', '', '', 'Tesla (Fast)'),
(261, 'Tesla', 'Model 3 LR AWD ', 'Type2', 'CCS', '', '', 'Tesla (Fast)'),
(262, 'Tesla', 'Model 3 Performance ', 'Type2', 'CCS', '', '', 'Tesla (Fast)'),
(263, 'Tesla', 'Model 3 SR+ MIC', 'Type2', 'CCS', '', '', 'Tesla (Fast)'),
(264, 'Tesla', 'Model S LR+ ', 'Type2', 'CCS', '', '', 'Tesla (Fast)'),
(265, 'Tesla', 'Model Y SR ', 'Type2', 'CCS', '', '', 'Tesla (Fast)'),
(266, 'Tesla', 'Model Y LR AWD ', 'Type2', 'CCS', '', '', 'Tesla (Fast)'),
(267, 'Tesla', 'Model Y LR AWD ', 'Type2', 'CCS', '', '', 'Tesla (Fast)'),
(268, 'Tesla', 'Model Y Performance', 'Type2', 'CCS', '', '', 'Tesla (Fast)'),
(269, 'Tesla', 'Model 3 SR', 'Type2', 'CCS', '', '', 'Tesla (Fast)'),
(270, 'Tesla', 'Model S SR', 'Type2', 'CCS', '', '', 'Tesla (Fast)'),
(271, 'Tesla', 'Model 3 SR+ ', 'Type2', 'CCS', '', '', 'Tesla (Fast)'),
(272, 'Tesla', 'Model S LR ', 'Type2', 'CCS', '', '', 'Tesla (Fast)'),
(273, 'Tesla', 'Model S Performance', 'Type2', 'CCS', '', '', 'Tesla (Fast)'),
(274, 'Tesla', 'Model 3 MR ', 'Type2', 'CCS', '', '', 'Tesla (Fast)'),
(275, 'Tesla', 'Model 3 LR AWD ', 'Type2', 'CCS', '', '', 'Tesla (Fast)'),
(276, 'Tesla', 'Model 3 Performance ', 'Type2', 'CCS', '', '', 'Tesla (Fast)'),
(277, 'Tesla', 'Model 3 LR RWD ', 'Type2', 'CCS', '', '', 'Tesla (Fast)'),
(278, 'Togg', 'Togg C-SUV SR', 'Type2', 'CCS', '', '', ''),
(279, 'Togg', 'Togg C-SUV LR', 'Type2', 'CCS', '', '', ''),
(280, 'Toyota', 'Toyota bZ3', '', 'CCS', '', '', ''),
(281, 'Toyota', 'Toyota bZ4X FWD', 'Type2', 'CCS', '', '', ''),
(282, 'Toyota', 'Toyota bZ4X AWD (USA)', 'Type2', 'CCS', '', '', ''),
(283, 'Toyota', 'Toyota bZ4X AWD', 'Type2', 'CCS', '', '', ''),
(284, 'Vinfast', 'VinFast VF6 Eco', '', 'CCS', '', '', ''),
(285, 'Vinfast', 'VinFast VF6 Plus', '', 'CCS', '', '', ''),
(286, 'Vinfast', 'VinFast VF7 Eco', '', 'CCS', '', '', ''),
(287, 'Vinfast', 'VinFast VF7 Plus', '', 'CCS', '', '', ''),
(288, 'Vinfast', 'VinFast VF8 Eco SR', '', 'CCS', '', '', ''),
(289, 'Vinfast', 'VinFast VF8 Eco LR', '', 'CCS', '', '', ''),
(290, 'Vinfast', 'VinFast VF8 Plus SR', '', 'CCS', '', '', ''),
(291, 'Vinfast', 'VinFast VF8 Plus LR', '', 'CCS', '', '', ''),
(292, 'Vinfast', 'VinFast VF9 Eco SR', '', 'CCS', '', '', ''),
(293, 'Vinfast', 'VinFast VF9 Eco LR', '', 'CCS', '', '', ''),
(294, 'Vinfast', 'VinFast VF9 Plus SR', '', 'CCS', '', '', ''),
(295, 'Vinfast', 'VinFast VF9 Plus LR', '', 'CCS', '', '', ''),
(296, 'Volkswagen', 'ID.7 Pro ', 'Type2', 'CCS', '', '', ''),
(297, 'Volkswagen', 'ID.4 Standard', 'Type2', '', '', '', ''),
(298, 'Volkswagen', 'ID.Aero ', 'Type2', 'CCS', '', '', ''),
(299, 'Volkswagen', 'ID.4 Pro 4Motion ', 'Type2', 'CCS', '', '', ''),
(300, 'Volkswagen', 'ID. Buzz GTX', 'Type2', 'CCS', '', '', ''),
(301, 'Volkswagen', 'ID. Buzz Pro ', 'Type2', 'CCS', '', '', ''),
(302, 'Volkswagen', 'ID. Buzz Cargo ', 'Type2', 'CCS', '', '', ''),
(303, 'Volkswagen', 'ID.5 Pro ', 'Type2', 'CCS', '', '', ''),
(304, 'Volkswagen', 'ID.5 Pro Performance', 'Type2', 'CCS', '', '', ''),
(305, 'Volkswagen', 'ID.5 GTX ', 'Type2', 'CCS', '', '', ''),
(306, 'Volkswagen', 'ID.4 GTX ', 'Type2', 'CCS', '', '', ''),
(307, 'Volkswagen', 'ID.4 Pure', 'Type2', 'CCS', '', '', ''),
(308, 'Volkswagen', 'ID.4 Pure Performance', 'Type2', 'CCS', '', '', ''),
(309, 'Volkswagen', 'ID.4 Pro (USA) ', 'Type2', 'CCS', '', '', ''),
(310, 'Volkswagen', 'ID.4 AWD Pro (USA)', 'Type2', 'CCS', '', '', ''),
(311, 'Volkswagen', 'ID.3 Pure Performance', 'Type2', 'CCS', '', '', ''),
(312, 'Volkswagen', 'ID.3 Pro ', 'Type2', 'CCS', '', '', ''),
(313, 'Volkswagen', 'ID.3 Pro Performance', 'Type2', 'CCS', '', '', ''),
(314, 'Volkswagen', 'ID.3 Pro S ', 'Type2', 'CCS', '', '', ''),
(315, 'Volovo', 'XC40 Recharge Performance', 'Type2', 'CCS', '', '', ''),
(316, 'Volovo', 'C40 Recharge Performance ', 'Type2', 'CCS', '', '', ''),
(317, 'Volovo', 'XC40 Recharge LR', 'Type2', 'CCS', '', '', ''),
(318, 'Volovo', 'XC40 Recharge SR RWD', 'Type2', 'CCS', '', '', ''),
(319, 'Volovo', 'C40 Recharge SR RWD', 'Type2', 'CCS', '', '', ''),
(320, 'Volovo', 'C40 Recharge LR', 'Type2', 'CCS', '', '', ''),
(321, 'Volovo', 'EX90 LR', 'Type2', 'CCS', '', '', ''),
(322, 'Volovo', 'EX90 Performance', 'Type2', 'CCS', '', '', ''),
(323, 'Volovo', 'XC40 Recharge SR FWD', 'Type2', 'CCS', '', '', ''),
(324, 'Volovo', 'XC40 Recharge Performance ', 'Type2', 'CCS', '', '', ''),
(325, 'Volovo', 'C40 Recharge SR FWD', 'Type2', 'CCS', '', '', ''),
(326, 'Volovo', 'C40 Recharge Performance', 'Type2', 'CCS', '', '', ''),
(327, 'Volovo', 'XC40 Recharge LR', 'Type2', 'CCS', '', '', ''),
(328, 'Volovo', 'XC40 Recharge Performance', 'Type2', 'CCS', '', '', ''),
(329, 'Voyah', 'Free', 'Type2', 'CCS', '', '', ''),
(330, 'Xpeng', 'G9 SR', 'Type2', 'CCS', '', '', ''),
(331, 'Xpeng', 'G9 LR', 'Type2', 'CCS', '', '', ''),
(332, 'Xpeng', 'G9 Performance', 'Type2', 'CCS', '', '', ''),
(333, 'Xpeng', 'P5', 'Type2', 'CCS', '', '', ''),
(334, 'Xpeng', 'P7 RWD', 'Type2', 'CCS', '', '', ''),
(335, 'Xpeng', 'P7 AWD', 'Type2', 'CCS', '', '', ''),
(336, 'Xpeng', 'P7 Wing Edition AWD', 'Type2', 'CCS', '', '', ''),
(337, 'Xpeng', 'G3 520i Smart', 'Type2', 'CCS', '', '', ''),
(338, 'Xpeng', 'G3 520i Premium', 'Type2', 'CCS', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int NOT NULL,
  `Q` varchar(350) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `A` varchar(350) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `Q`, `A`) VALUES
(1, 'ทำไมไม่สามารถชาร์จหัวปลั๊กนี้ได้', 'สาเหตุที่ไม่สามารถชาร์จได้อาจมีสาเหตุดังนี้\n1. สัญญาณอินเทอร์เน็ตมือถือของท่านไม่เสถียร\n2. หัวปลั๊กกำลังใช้งานอยู่\n3.หัวปลี๊กพังกำลังดำเนินการซ่อมเเซม'),
(2, 'อัตราค่าบริการคิดอย่างไร', 'อัตราค่าบริการแต่ละสถานีชาร์จจะไม่เท่ากัน โดยสามารถตรวจสอบผ่านทางเเต่ละสถานีชาร์จเเต่ละที่ได้'),
(3, 'มีระบบเติมเงินเข้าแอพไหม', 'ทางแอพพิเคชั่น Plugmood ยังไม่มีระบบเติมเงินเข้าแอพ'),
(4, 'ลงทะเบียนใช้งานแอพอย่างไร', 'ชั้นตอน \n1.คลิกที่ \"ลงทะเบียน\"\n2.กรอกข้อมูลให้ครบถ้วนและทำการกดการยินยอม\n3.เลือกยี่ห้อรถของคุณ\n4.เลือกหัวปลั๊กเพิ่มเติม\n5.ตรวจสอบข้อมูล\n6.คลิกที่ \"เสร็จสิ้น\" ถือเป็นการดำเนินการเสร็จสิ้น'),
(5, 'สามารถลบบัญชีแล้วสมัครใหม่ได้ไหม', 'สามารถสมัครใหม่ได้'),
(6, 'สามารถบุ๊คมาร์คสถานที่ชาร์จได้สูงสุดเท่าไร', 'ได้สูงสุด 20 ที่'),
(7, 'สามารถแลกของยังไง', 'ขั้นตอน \n1. เข้าไปที่หน้าแลกของ \n2.ในหน้าแลกของจะมีของให้แลกอยู่ 2 หมวด คือ คูปองและสิ่งของ\n3. หากเลือกที่จะแลกคูปองสามารถกดดูคูปองทั้งหมดโดยกดไปที่ View All \n4. ในหน้านั้นจะมีทั้งจำนวนแต้มที่ใช้แลก สามารถกดเข้าไปและกดยืนยันจะเป็นการเลือกคูปองเสร็จสิ้น \n5.หากเลือกที่จะแลกของที่เป็นสิ่งของสามารถกดดูสิ่งของทั้งหมดโดยกดไปที่ View All \n6.ในหน้านั้นจะมี'),
(8, 'สามารถเพิ่มจำนวนรถยนต์เข้าแอพได้กี่คัน', 'จำนวนรถสามารถมีได้สูงสุดคือ 3 คัน ต่อ 1 บัญชี'),
(9, 'ในสถานที่ปั๊มชาร์จรู้ชื่อเจ้าของปั๊มหรือไม่', 'ไม่สามารถทราบได้เพราะเป็นข้อมูส่วนตัว'),
(10, 'ถ้าหากไม่สามารถจ่ายเงินได้ทันเวลาตามระยะเวลาที่กำหนดจะแก้ยังไง', 'หน้าจ่ายเงินจะเปลี่ยนไปแจ้งเตือนที่หน้าแจ้งเตือน และเมื่อกดเข้าไปจะย้อนกลับเข้าไปยังหน้าจ่ายเงินหน้าเดิม หากผู้ใช้งานไม่จ่ายเงินเลย ทางแอพพิเคชั่นจะทำ\nการดำเนินการถึงโรงพัก เเละทำการแบนบัญชี'),
(11, 'สามารถแก้ไขที่อยู่ในระบบแลกของไหม', 'สามารถแก้ไขได้ตลอดเพราะหน้าที่กรอกที่อยู่นั้นจะรีเซ็ทค่าใหม่ทุกครั้ง'),
(12, 'สามารถแก้ไขหัวชาร์จของรถยนต์ของเราได้หรือไม่', 'สามารถแก้ไขได้จากคลิกไปที่ \"ตั้งค่า\" เเล้วคลิกไปที่ \" เพิ่มรถ \" จากนั้นกดไปที่คันที่ต้องการจะทำการเปลี่ยน'),
(13, 'แจ้งปัญหาทางปั๊มได้ที่ไหน', 'ส่งข้อความทางเมลให้แอดมินได้ที่อีเมลล์ allforsofteng@gmail.com'),
(14, 'ระยะเวลาในการลบบัญชีระบบใช้เวลากี่วัน', 'ใช้เวลาประมาณ 2 วัน'),
(15, 'คูปองส่วนลดสามารถใช้ได้ครั้งละกี่อัน', 'คูปองส่วนลดสามารถใช้ได้ครั้งละ 1 คูปอง'),
(16, 'หากทำการชำระเงินแล้วแอปค้างควรทำอย่างไร', 'ไม่มีปัญหาเนื่องจากได้ทำการชำระเงินเสร็จสิ้นแล้ว ข้อมูลในการชำระเงินนั้นจะถูกส่งไปยังแอดมิน ถือว่าเป็นการชำระเงินที่เสร็จสิ้น\nแล้ว'),
(17, 'แต้มใช้แลกของมีอายุเท่าไหร่', 'ไม่มีวันหมดอายุ'),
(18, 'เมื่อชาร์จเสร็จแล้วสามารถเอารถค้างที่ปั๊มได้กี่นาที', 'นานสูงสุด 10-15 นาที และถ้าหากเกินเวลาจะขอทำการเก็บค่าปรับ'),
(19, 'สามารถนำคูปองแลกเป็นเงินสดได้หรือไม่', 'ไม่สามารถนำไปแลกได้');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int NOT NULL,
  `reviewid` int NOT NULL,
  `userid` int NOT NULL,
  `review` float NOT NULL,
  `stationid` int NOT NULL,
  `detail` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `score` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`, `pass`, `score`) VALUES
(1, 'บ็อบบี้', 'Agent1150!', 75),
(2, 'BigSmoke', 'BigSmoke555', 82),
(3, 'ABC', 'Hondakun!s2', 52),
(4, 'Mike', 'Tailon15', 78);

-- --------------------------------------------------------

--
-- Table structure for table `test02`
--

CREATE TABLE `test02` (
  `id` int NOT NULL,
  `aaaaaaa` varchar(255) NOT NULL,
  `bbbb` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `test02`
--

INSERT INTO `test02` (`id`, `aaaaaaa`, `bbbb`) VALUES
(1, 'abcdef', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userstation`
--

CREATE TABLE `userstation` (
  `statationID` int NOT NULL,
  `userID` int DEFAULT NULL,
  `stationName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` decimal(11,7) DEFAULT NULL,
  `longitude` decimal(11,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userstation`
--

INSERT INTO `userstation` (`statationID`, `userID`, `stationName`, `latitude`, `longitude`) VALUES
(1, 101, 'EV ศรีราชา', '13.1821300', '101.0008730'),
(2, 102, 'เอิทอีวี', '13.1167200', '100.9766720'),
(3, 103, 'สถานีชาตรถไฟฟ้า', '13.1214080', '100.9027328'),
(4, 104, 'จุดเติมEV', '13.0864000', '100.8949966'),
(5, 105, 'EV Charging Station', '13.1541004', '100.9919968'),
(6, 106, 'จุดชาร์จEV', '13.0980997', '101.0059967'),
(7, 107, 'แวะมาชาร์จ', '13.0445995', '101.0279999'),
(8, 108, 'Car ชาร์จ', '13.1766996', '100.9700012'),
(9, 109, 'รถอีวีรวมตัว', '12.9736004', '100.9749985'),
(10, 110, 'มาชาร์จกันเถอะ', '13.0279999', '100.9300003'),
(11, 111, 'Point Charging', '13.0600004', '100.9639969'),
(12, 112, 'แบ่งบันกันชาร์จ', '13.0597000', '100.9229965'),
(13, 113, 'EV E-JAI', '13.1455002', '100.9369965'),
(14, 114, 'car car ev', '13.1555004', '100.9130020'),
(15, 115, 'เช็คอิน EV', '13.1082001', '100.9250031');

-- --------------------------------------------------------

--
-- Table structure for table `userstation_plug`
--

CREATE TABLE `userstation_plug` (
  `id` int NOT NULL,
  `plug0` int NOT NULL,
  `plug1` int NOT NULL,
  `plug2` int NOT NULL,
  `plug3` int NOT NULL,
  `plug4` int NOT NULL,
  `plug5` int NOT NULL,
  `plug6` int NOT NULL,
  `plug7` int NOT NULL,
  `plug8` int NOT NULL,
  `plug9` int NOT NULL,
  `plug10` int NOT NULL,
  `plug11` int NOT NULL,
  `plug12` int NOT NULL,
  `stationName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `userstation_plug`
--

INSERT INTO `userstation_plug` (`id`, `plug0`, `plug1`, `plug2`, `plug3`, `plug4`, `plug5`, `plug6`, `plug7`, `plug8`, `plug9`, `plug10`, `plug11`, `plug12`, `stationName`) VALUES
(1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EV ศรีราชา'),
(2, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'เอิทอีวี'),
(3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'สถานีชาตรถไฟฟ้า'),
(4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'จุดเติมEV'),
(5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EV Charging Station'),
(6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'จุดชาร์จEV'),
(7, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'แวะมาชาร์จ'),
(8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Car ชาร์จ'),
(9, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'รถอีวีรวมตัว'),
(10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'มาชาร์จกันเถอะ'),
(11, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Point Charging'),
(12, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'แบ่งบันกันชาร์จ'),
(13, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EV E-JAI'),
(14, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'car car ev'),
(15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'เช็คอิน EV');

-- --------------------------------------------------------

--
-- Table structure for table `userstation_review`
--

CREATE TABLE `userstation_review` (
  `id` int NOT NULL,
  `review` float NOT NULL,
  `stationName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `userstation_review`
--

INSERT INTO `userstation_review` (`id`, `review`, `stationName`) VALUES
(1, 4.2, 'EV ศรีราชา'),
(2, 3.8, 'เอิทอีวี'),
(3, 4.2, 'สถานีชาตรถไฟฟ้า'),
(4, 4.7, 'จุดเติมEV'),
(5, 4.6, 'EV Charging Station'),
(6, 4.5, 'จุดชาร์จEV'),
(7, 4.4, 'แวะมาชาร์จ'),
(8, 4.8, 'Car ชาร์จ'),
(9, 1, 'รถอีวีรวมตัว'),
(10, 2.2, 'มาชาร์จกันเถอะ'),
(11, 2.5, 'Point Charging'),
(12, 4, 'แบ่งบันกันชาร์จ'),
(13, 3, 'EV E-JAI'),
(14, 3.6, 'car car ev'),
(15, 3.5, 'เช็คอิน EV');

-- --------------------------------------------------------

--
-- Table structure for table `userstation_type`
--

CREATE TABLE `userstation_type` (
  `id` int NOT NULL,
  `type` varchar(255) NOT NULL,
  `stationName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `userstation_type`
--

INSERT INTO `userstation_type` (`id`, `type`, `stationName`) VALUES
(1, 'station', 'EV ศรีราชา'),
(2, 'house', 'เอิทอีวี'),
(3, 'station', 'สถานีชาตรถไฟฟ้า'),
(4, 'station', 'จุดเติมEV'),
(5, 'station', 'EV Charging Station'),
(6, 'station', 'จุดชาร์จEV'),
(7, 'house', 'แวะมาชาร์จ'),
(8, 'station', 'Car ชาร์จ'),
(9, 'house', 'รถอีวีรวมตัว'),
(10, 'house', 'มาชาร์จกันเถอะ'),
(11, 'station', 'Point Charging'),
(12, 'house', 'แบ่งบันกันชาร์จ'),
(13, 'house', 'EV E-JAI'),
(14, 'station', 'car car ev'),
(15, 'station', 'เช็คอิน EV');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookmark`
--
ALTER TABLE `bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoho`
--
ALTER TABLE `hoho`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plug`
--
ALTER TABLE `plug`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plugall`
--
ALTER TABLE `plugall`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test02`
--
ALTER TABLE `test02`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userstation`
--
ALTER TABLE `userstation`
  ADD PRIMARY KEY (`statationID`);

--
-- Indexes for table `userstation_plug`
--
ALTER TABLE `userstation_plug`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userstation_review`
--
ALTER TABLE `userstation_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userstation_type`
--
ALTER TABLE `userstation_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `bookmark`
--
ALTER TABLE `bookmark`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `hoho`
--
ALTER TABLE `hoho`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `plug`
--
ALTER TABLE `plug`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `plugall`
--
ALTER TABLE `plugall`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `test02`
--
ALTER TABLE `test02`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userstation`
--
ALTER TABLE `userstation`
  MODIFY `statationID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `userstation_plug`
--
ALTER TABLE `userstation_plug`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `userstation_review`
--
ALTER TABLE `userstation_review`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `userstation_type`
--
ALTER TABLE `userstation_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
