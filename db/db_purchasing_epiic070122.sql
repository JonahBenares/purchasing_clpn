-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2022 at 05:09 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_purchasing_epiic`
--

-- --------------------------------------------------------

--
-- Table structure for table `aoq_head`
--

CREATE TABLE IF NOT EXISTS `aoq_head` (
`aoq_id` int(11) NOT NULL,
  `aoq_date` varchar(20) DEFAULT NULL,
  `pr_id` int(11) NOT NULL DEFAULT '0',
  `department` varchar(255) DEFAULT NULL,
  `purpose` text,
  `enduse` varchar(255) DEFAULT NULL,
  `requestor` varchar(255) DEFAULT NULL,
  `noted_by` varchar(255) DEFAULT NULL,
  `approved_by` varchar(255) DEFAULT NULL,
  `reviewed_by` varchar(150) DEFAULT NULL,
  `saved` int(11) NOT NULL DEFAULT '0',
  `open` int(11) NOT NULL DEFAULT '0',
  `awarded` int(11) NOT NULL DEFAULT '0',
  `refer_mnl` int(11) NOT NULL DEFAULT '0',
  `refer_date` varchar(20) DEFAULT NULL,
  `served` int(11) NOT NULL DEFAULT '0',
  `date_served` varchar(20) DEFAULT NULL,
  `cancelled` int(11) DEFAULT '0',
  `cancelled_reason` text,
  `cancel_date` varchar(20) DEFAULT NULL,
  `cancelled_by` int(11) DEFAULT '0',
  `prepared_by` int(11) NOT NULL DEFAULT '0',
  `prepared_date` varchar(20) DEFAULT NULL,
  `draft` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aoq_head`
--

INSERT INTO `aoq_head` (`aoq_id`, `aoq_date`, `pr_id`, `department`, `purpose`, `enduse`, `requestor`, `noted_by`, `approved_by`, `reviewed_by`, `saved`, `open`, `awarded`, `refer_mnl`, `refer_date`, `served`, `date_served`, `cancelled`, `cancelled_reason`, `cancel_date`, `cancelled_by`, `prepared_by`, `prepared_date`, `draft`) VALUES
(1, '2020-04-16', 1, 'Admin', 'Energreen Office Building Service Entrance and meter panel application installation', 'Common', 'Marlon G. Gunday', 'Cristina C. Young', 'Trish C. Young', 'Marlon Gunday', 1, 0, 1, 0, NULL, 0, NULL, 0, NULL, NULL, 0, 3, '2020-04-16 08:18:01', 0),
(2, '2020-07-07', 2, 'Admin', 'Materials needed to fabricate of IPRO Building Project', 'Common', 'Marlon G. Gunday', 'Cristina C. Young', 'Alberto Limuran, Jr.', 'Marlon G. Gunday', 1, 0, 1, 0, NULL, 0, NULL, 0, NULL, NULL, 0, 3, '2020-07-07 05:08:47', 0),
(3, '2020-07-07', 2, 'Admin', 'Materials needed to fabricate of IPRO Building Project', 'Common', 'Marlon G. Gunday', 'Cristina C. Young', 'Alberto Limuran, Jr.', 'Marlon G. Gunday', 1, 0, 1, 0, NULL, 0, NULL, 0, NULL, NULL, 0, 3, '2020-07-07 07:18:19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `aoq_items`
--

CREATE TABLE IF NOT EXISTS `aoq_items` (
`aoq_items_id` int(11) NOT NULL,
  `aoq_id` int(11) NOT NULL DEFAULT '0',
  `pr_details_id` int(11) NOT NULL DEFAULT '0',
  `item_description` varchar(255) NOT NULL,
  `quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `uom` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aoq_items`
--

INSERT INTO `aoq_items` (`aoq_items_id`, `aoq_id`, `pr_details_id`, `item_description`, `quantity`, `uom`) VALUES
(1, 1, 1, 'Panel box bolt on 8 holes (Kotten Brand)', '1.00', 'pc.'),
(2, 2, 17, 'Acetylene / Oxygen', '1.00', 'set'),
(3, 3, 4, 'Angle bar 1/4 x 2 x 20ft.', '23.00', 'pcs.'),
(4, 3, 8, 'Box gutter', '18.00', 'pcs.'),
(5, 3, 3, 'C. Purlims 2 x 4 x 20ft.', '67.00', 'pcs.'),
(6, 3, 23, 'Cement', '120.00', 'bags'),
(7, 3, 20, 'CHB 4"', '600.00', 'pcs.'),
(8, 3, 18, 'Cut of blade 14"', '1.00', 'pc.'),
(9, 3, 19, 'Cutting disk 4"', '10.00', 'pcs.'),
(10, 3, 28, 'CWN 2"', '2.00', 'kls.'),
(11, 3, 29, 'Cyclone wire', '4.00', 'rolls'),
(12, 3, 11, 'Epoxy primer', '3.00', 'gals.'),
(13, 3, 14, 'G.I. Pipe', '5.00', 'pcs.'),
(14, 3, 30, 'G.I. Pipe 1" x 6 meters', '11.00', 'pcs.'),
(15, 3, 22, 'Gravel', '10.00', 'cm3'),
(16, 3, 9, 'Hardi sanipa 10" x 8ft.', '27.00', 'pcs.'),
(17, 3, 25, 'I Beam 4 x 6 x 20ft.', '2.00', 'pcs.'),
(18, 3, 12, 'Lacquer thinner', '1.00', 'gal.'),
(19, 3, 27, 'Marine Plywood 3/4', '3.00', 'pcs.'),
(20, 3, 10, 'Metal texscrew 2"', '2000.00', 'pcs.'),
(21, 3, 13, 'Paint brush 2"', '2.00', 'pcs.'),
(22, 3, 7, 'Ridge roll', '9.00', 'pcs.'),
(23, 3, 24, 'RSB 10mm', '100.00', 'pcs.'),
(24, 3, 21, 'Sand', '10.00', 'cm3'),
(25, 3, 26, 'Tie wire #16', '3.00', 'kls.'),
(26, 3, 16, 'Welding rod (6011)', '1.00', 'kilo'),
(27, 3, 15, 'Welding rod (6013)', '1.00', 'kilo'),
(28, 3, 5, 'Yero 12 ft.', '58.00', 'pcs.'),
(29, 3, 6, 'Yero 9 ft.', '58.00', 'pcs.');

-- --------------------------------------------------------

--
-- Table structure for table `aoq_offers`
--

CREATE TABLE IF NOT EXISTS `aoq_offers` (
`aoq_offer_id` int(11) NOT NULL,
  `aoq_id` int(11) NOT NULL DEFAULT '0',
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `aoq_items_id` int(11) NOT NULL DEFAULT '0',
  `pr_details_id` int(11) NOT NULL DEFAULT '0',
  `offer` text,
  `unit_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `uom` varchar(50) DEFAULT NULL,
  `amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `comments` text,
  `recommended` int(11) NOT NULL DEFAULT '0',
  `currency` varchar(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aoq_offers`
--

INSERT INTO `aoq_offers` (`aoq_offer_id`, `aoq_id`, `vendor_id`, `aoq_items_id`, `pr_details_id`, `offer`, `unit_price`, `quantity`, `balance`, `uom`, `amount`, `comments`, `recommended`, `currency`) VALUES
(1, 1, 1476, 1, 1, 'Panel box bolt on 8 holes - Kotten Brand', '3500.0000', '1.00', '0.00', 'pc.', '3500.0000', 'complying', 1, 'PHP'),
(2, 1, 1482, 1, 1, 'Panel box bolt \r\non 8 holes - Kotten Brand', '3375.0000', '1.00', '1.00', 'pc.', '3375.0000', 'complying', 0, 'PHP'),
(3, 1, 387, 1, 1, 'Panel box bolt on 8 holes - GE Brand', '4200.0000', '1.00', '1.00', 'pc.', '4200.0000', 'complying', 0, 'PHP'),
(4, 2, 1491, 2, 17, 'Acetylene / Oxygen', '1430.0000', '1.00', '1.00', 'set', '1430.0000', 'complying', 1, 'PHP'),
(5, 2, 584, 2, 17, 'Acetylene / Oxygen', '1430.0000', '1.00', '1.00', 'set', '1430.0000', 'complying', 0, 'PHP'),
(6, 3, 1483, 5, 3, 'C. Purlins 2 x 4 x 20ft.', '600.0000', '67.00', '67.00', 'pcs.', '40200.0000', 'complying', 0, 'PHP'),
(7, 3, 1505, 5, 3, 'n/a', '0.0000', '67.00', '67.00', 'pcs.', '0.0000', '', 0, 'PHP'),
(8, 3, 1488, 5, 3, 'C. Purlins 2 x 4 x 20ft.', '590.0000', '67.00', '67.00', 'pcs.', '39530.0000', 'complying', 1, 'PHP'),
(9, 3, 1487, 5, 3, 'C. Purlins 2 x 4 x 20ft.', '630.0000', '67.00', '67.00', 'pcs.', '42210.0000', 'complying', 0, 'PHP'),
(10, 3, 1483, 3, 4, 'Angle bar 1/4 x 2 x 20ft.	(5mm.)', '1050.0000', '23.00', '23.00', 'pcs.', '24150.0000', 'complying', 0, 'PHP'),
(11, 3, 1505, 3, 4, 'n/a', '0.0000', '23.00', '23.00', 'pcs.', '0.0000', '', 0, 'PHP'),
(12, 3, 1488, 3, 4, 'Angle bar 1/4 x 2 x 20ft.	(5mm.)', '1090.0000', '23.00', '23.00', 'pcs.', '25070.0000', 'complying', 0, 'PHP'),
(13, 3, 1487, 3, 4, 'Angle bar 1/4 x 2 x 20ft.	(5mm.)', '840.0000', '23.00', '23.00', 'pcs.', '19320.0000', 'complying', 1, 'PHP'),
(14, 3, 1483, 28, 5, 'Yero 12 ft.', '420.0000', '58.00', '58.00', 'pcs.', '24360.0000', 'complying', 0, 'PHP'),
(15, 3, 1505, 28, 5, 'Yero 12 ft.', '480.0000', '58.00', '58.00', 'pcs.', '27840.0000', 'complying', 0, 'PHP'),
(16, 3, 1488, 28, 5, 'Yero 12 ft.', '490.0000', '58.00', '58.00', 'pcs.', '28420.0000', 'complying', 0, 'PHP'),
(17, 3, 1487, 28, 5, 'Yero 12 ft.', '384.0000', '58.00', '58.00', 'pcs.', '22272.0000', 'complying', 1, 'PHP'),
(18, 3, 1483, 29, 6, 'Yero 9 ft.', '315.0000', '58.00', '58.00', 'pcs.', '18270.0000', 'complying', 0, 'PHP'),
(19, 3, 1505, 29, 6, 'Yero 9 ft.', '360.0000', '58.00', '58.00', 'pcs.', '20880.0000', 'complying', 0, 'PHP'),
(20, 3, 1488, 29, 6, 'Yero 9 ft.', '390.0000', '58.00', '58.00', 'pcs.', '22620.0000', 'complying', 0, 'PHP'),
(21, 3, 1487, 29, 6, 'Yero 9 ft.', '280.0000', '58.00', '58.00', 'pcs.', '16240.0000', 'complying', 1, 'PHP'),
(22, 3, 1483, 22, 7, 'Ridge roll', '200.0000', '9.00', '9.00', 'pcs.', '1800.0000', 'complying', 0, 'PHP'),
(23, 3, 1505, 22, 7, 'Ridge roll', '220.0000', '9.00', '9.00', 'pcs.', '1980.0000', 'complying', 0, 'PHP'),
(24, 3, 1488, 22, 7, 'Ridge roll', '250.0000', '9.00', '9.00', 'pcs.', '2250.0000', 'complying', 0, 'PHP'),
(25, 3, 1487, 22, 7, 'Ridge roll', '200.0000', '9.00', '9.00', 'pcs.', '1800.0000', 'complying', 1, 'PHP'),
(26, 3, 1483, 4, 8, 'n/a', '0.0000', '18.00', '18.00', 'pcs.', '0.0000', '', 0, 'PHP'),
(27, 3, 1505, 4, 8, 'Box gutter', '220.0000', '18.00', '18.00', 'pcs.', '3960.0000', 'complying', 0, 'PHP'),
(28, 3, 1488, 4, 8, 'Box gutter', '230.0000', '18.00', '18.00', 'pcs.', '4140.0000', 'complying', 0, 'PHP'),
(29, 3, 1487, 4, 8, 'Box gutter', '200.0000', '18.00', '18.00', 'pcs.', '3600.0000', 'complying', 1, 'PHP'),
(30, 3, 1483, 16, 9, 'n/a', '0.0000', '27.00', '27.00', 'pcs.', '0.0000', '', 0, 'PHP'),
(31, 3, 1505, 16, 9, 'Hardi sanipa 10" x 8ft.', '360.0000', '27.00', '27.00', 'pcs.', '9720.0000', 'complying', 0, 'PHP'),
(32, 3, 1488, 16, 9, 'Hardi sanipa 10" x 8ft.', '320.0000', '27.00', '27.00', 'pcs.', '8640.0000', 'complying', 0, 'PHP'),
(33, 3, 1487, 16, 9, 'Hardi sanipa 10" x 8ft.', '250.0000', '27.00', '27.00', 'pcs.', '6750.0000', 'complying', 1, 'PHP'),
(34, 3, 1483, 20, 10, 'Metal texscrew 2"', '3.0000', '2000.00', '2000.00', 'pcs.', '6000.0000', 'complying', 0, 'PHP'),
(35, 3, 1505, 20, 10, 'Metal texscrew 2"', '2.5000', '2000.00', '2000.00', 'pcs.', '5000.0000', 'complying', 0, 'PHP'),
(36, 3, 1488, 20, 10, 'Metal texscrew 2"', '3.0000', '2000.00', '2000.00', 'pcs.', '6000.0000', 'complying', 0, 'PHP'),
(37, 3, 1487, 20, 10, 'Metal texscrew 2"', '1.5800', '2000.00', '2000.00', 'pcs.', '3160.0000', 'complying', 1, 'PHP'),
(38, 3, 1483, 12, 11, 'n/a', '0.0000', '3.00', '3.00', 'gals.', '0.0000', '', 0, 'PHP'),
(39, 3, 1505, 12, 11, 'Epoxy primer', '680.0000', '3.00', '3.00', 'gals.', '2040.0000', 'complying', 1, 'PHP'),
(40, 3, 1488, 12, 11, 'Epoxy primer', '690.0000', '3.00', '3.00', 'gals.', '2070.0000', 'complying', 0, 'PHP'),
(41, 3, 1487, 12, 11, 'Epoxy primer', '700.0000', '3.00', '3.00', 'gals.', '2100.0000', 'complying', 0, 'PHP'),
(42, 3, 1483, 18, 12, 'Lacquer thinner', '220.0000', '1.00', '1.00', 'gal.', '220.0000', 'complying', 1, 'PHP'),
(43, 3, 1505, 18, 12, 'Lacquer thinner', '280.0000', '1.00', '1.00', 'gal.', '280.0000', 'complying', 0, 'PHP'),
(44, 3, 1488, 18, 12, 'Lacquer thinner', '290.0000', '1.00', '1.00', 'gal.', '290.0000', 'complying', 0, 'PHP'),
(45, 3, 1487, 18, 12, 'Lacquer thinner', '300.0000', '1.00', '1.00', 'gal.', '300.0000', 'complying', 0, 'PHP'),
(46, 3, 1483, 21, 13, 'Paint brush 2"', '40.0000', '2.00', '2.00', 'pcs.', '80.0000', 'complying', 1, 'PHP'),
(47, 3, 1505, 21, 13, 'Paint brush 2"', '55.0000', '2.00', '2.00', 'pcs.', '110.0000', 'complying', 0, 'PHP'),
(48, 3, 1488, 21, 13, 'Paint brush 2"', '55.0000', '2.00', '2.00', 'pcs.', '110.0000', 'complying', 0, 'PHP'),
(49, 3, 1487, 21, 13, 'Paint brush 2"', '45.0000', '2.00', '2.00', 'pcs.', '90.0000', 'complying', 0, 'PHP'),
(50, 3, 1483, 13, 14, 'G.I. Pipe', '3415.0000', '5.00', '5.00', 'pcs.', '17075.0000', 'complying', 0, 'PHP'),
(51, 3, 1505, 13, 14, 'G.I. Pipe', '3900.0000', '5.00', '5.00', 'pcs.', '19500.0000', 'complying', 0, 'PHP'),
(52, 3, 1488, 13, 14, 'G.I. Pipe', '3700.0000', '5.00', '5.00', 'pcs.', '18500.0000', 'complying', 0, 'PHP'),
(53, 3, 1487, 13, 14, 'G.I. Pipe', '3412.0000', '5.00', '5.00', 'pcs.', '17060.0000', 'complying', 1, 'PHP'),
(54, 3, 1483, 27, 15, 'Welding rod (6013)', '350.0000', '1.00', '1.00', 'kilo', '350.0000', 'complying', 0, 'PHP'),
(55, 3, 1505, 27, 15, 'Welding rod (6013)', '120.0000', '1.00', '1.00', 'kilo', '120.0000', 'complying', 1, 'PHP'),
(56, 3, 1488, 27, 15, 'Welding rod (6013)', '150.0000', '1.00', '1.00', 'kilo', '150.0000', 'complying', 0, 'PHP'),
(57, 3, 1487, 27, 15, 'Welding rod (6013)', '190.0000', '1.00', '1.00', 'kilo', '190.0000', 'complying', 0, 'PHP'),
(58, 3, 1483, 26, 16, 'Welding rod (6011)', '185.0000', '1.00', '1.00', 'kilo', '185.0000', 'complying', 0, 'PHP'),
(59, 3, 1505, 26, 16, 'Welding rod (6011)', '160.0000', '1.00', '1.00', 'kilo', '160.0000', 'complying', 0, 'PHP'),
(60, 3, 1488, 26, 16, 'Welding rod (6011)', '140.0000', '1.00', '1.00', 'kilo', '140.0000', 'complying', 1, 'PHP'),
(61, 3, 1487, 26, 16, 'Welding rod (6011)', '170.0000', '1.00', '1.00', 'kilo', '170.0000', 'complying', 0, 'PHP'),
(62, 3, 1483, 8, 18, 'Cut of blade 14"', '250.0000', '1.00', '1.00', 'pc.', '250.0000', 'complying', 1, 'PHP'),
(63, 3, 1505, 8, 18, 'Cut of blade 14"', '680.0000', '1.00', '1.00', 'pc.', '680.0000', 'complying', 0, 'PHP'),
(64, 3, 1488, 8, 18, 'Cut of blade 14"', '720.0000', '1.00', '1.00', 'pc.', '720.0000', 'complying', 0, 'PHP'),
(65, 3, 1487, 8, 18, 'Cut of blade 14"', '720.0000', '1.00', '1.00', 'pc.', '720.0000', 'complying', 0, 'PHP'),
(66, 3, 1483, 9, 19, 'Cutting disk 4"', '145.0000', '10.00', '10.00', 'pcs.', '1450.0000', 'complying', 0, 'PHP'),
(67, 3, 1505, 9, 19, 'Cutting disk 4"', '120.0000', '10.00', '10.00', 'pcs.', '1200.0000', 'complying', 1, 'PHP'),
(68, 3, 1488, 9, 19, 'Cutting disk 4"', '140.0000', '10.00', '10.00', 'pcs.', '1400.0000', 'complying', 0, 'PHP'),
(69, 3, 1487, 9, 19, 'Cutting disk 4"', '145.0000', '10.00', '10.00', 'pcs.', '1450.0000', 'complying', 0, 'PHP'),
(70, 3, 1483, 7, 20, 'n/a', '0.0000', '600.00', '600.00', 'pcs.', '0.0000', '', 0, 'PHP'),
(71, 3, 1505, 7, 20, 'CHB 4"', '10.0000', '600.00', '600.00', 'pcs.', '6000.0000', 'complying', 1, 'PHP'),
(72, 3, 1488, 7, 20, 'CHB 4"', '12.0000', '600.00', '600.00', 'pcs.', '7200.0000', 'complying', 0, 'PHP'),
(73, 3, 1487, 7, 20, 'CHB 4"', '12.0000', '600.00', '600.00', 'pcs.', '7200.0000', 'complying', 0, 'PHP'),
(74, 3, 1483, 24, 21, 'n/a', '0.0000', '10.00', '10.00', 'cm3', '0.0000', '', 0, 'PHP'),
(75, 3, 1505, 24, 21, 'Sand', '350.0000', '10.00', '10.00', 'cm3', '3500.0000', 'complying', 1, 'PHP'),
(76, 3, 1488, 24, 21, 'Sand', '400.0000', '10.00', '10.00', 'cm3', '4000.0000', 'complying', 0, 'PHP'),
(77, 3, 1487, 24, 21, 'n/a', '0.0000', '10.00', '10.00', 'cm3', '0.0000', '', 0, 'PHP'),
(78, 3, 1483, 15, 22, 'n/a', '0.0000', '10.00', '10.00', 'cm3', '0.0000', '', 0, 'PHP'),
(79, 3, 1505, 15, 22, 'Gravel', '650.0000', '10.00', '10.00', 'cm3', '6500.0000', 'complying', 1, 'PHP'),
(80, 3, 1488, 15, 22, 'Gravel', '720.0000', '10.00', '10.00', 'cm3', '7200.0000', 'complying', 0, 'PHP'),
(81, 3, 1487, 15, 22, 'n/a', '0.0000', '10.00', '10.00', 'cm3', '0.0000', '', 0, 'PHP'),
(82, 3, 1483, 6, 23, 'Cement', '255.0000', '120.00', '120.00', 'bags', '30600.0000', 'complying', 0, 'PHP'),
(83, 3, 1505, 6, 23, 'Cement', '295.0000', '120.00', '120.00', 'bags', '35400.0000', 'complying', 0, 'PHP'),
(84, 3, 1488, 6, 23, 'Cement', '245.0000', '120.00', '120.00', 'bags', '29400.0000', 'complying', 1, 'PHP'),
(85, 3, 1487, 6, 23, 'Cement', '250.0000', '120.00', '120.00', 'bags', '30000.0000', 'complying', 0, 'PHP'),
(86, 3, 1483, 23, 24, 'RSB 10mm', '125.0000', '100.00', '100.00', 'pcs.', '12500.0000', 'complying', 0, 'PHP'),
(87, 3, 1505, 23, 24, 'RSB 10mm', '140.0000', '100.00', '100.00', 'pcs.', '14000.0000', 'complying', 0, 'PHP'),
(88, 3, 1488, 23, 24, 'RSB 10mm', '130.0000', '100.00', '100.00', 'pcs.', '13000.0000', 'complying', 0, 'PHP'),
(89, 3, 1487, 23, 24, 'RSB 10mm', '121.0000', '100.00', '100.00', 'pcs.', '12100.0000', 'complying', 1, 'PHP'),
(90, 3, 1483, 25, 26, 'Tie wire #16', '60.0000', '3.00', '3.00', 'kls.', '180.0000', 'complying', 1, 'PHP'),
(91, 3, 1505, 25, 26, 'Tie wire #16', '80.0000', '3.00', '3.00', 'kls.', '240.0000', 'complying', 0, 'PHP'),
(92, 3, 1488, 25, 26, 'Tie wire #16', '80.0000', '3.00', '3.00', 'kls.', '240.0000', 'complying', 0, 'PHP'),
(93, 3, 1487, 25, 26, 'Tie wire #16', '75.0000', '3.00', '3.00', 'kls.', '225.0000', 'complying', 0, 'PHP'),
(94, 3, 1483, 19, 27, 'Marine Plywood 3/4', '950.0000', '3.00', '3.00', 'pcs.', '2850.0000', 'complying', 0, 'PHP'),
(95, 3, 1505, 19, 27, 'Marine Plywood 3/4', '1150.0000', '3.00', '3.00', 'pcs.', '3450.0000', 'complying', 0, 'PHP'),
(96, 3, 1488, 19, 27, 'Marine Plywood 3/4', '1120.0000', '3.00', '3.00', 'pcs.', '3360.0000', 'complying', 0, 'PHP'),
(97, 3, 1487, 19, 27, 'Marine Plywood 3/4', '950.0000', '3.00', '3.00', 'pcs.', '2850.0000', 'complying', 1, 'PHP'),
(98, 3, 1483, 10, 28, 'CWN 2"', '60.0000', '2.00', '2.00', 'kls.', '120.0000', 'complying', 1, 'PHP'),
(99, 3, 1505, 10, 28, 'CWN 2"', '80.0000', '2.00', '2.00', 'kls.', '160.0000', 'complying', 0, 'PHP'),
(100, 3, 1488, 10, 28, 'CWN 2"', '80.0000', '2.00', '2.00', 'kls.', '160.0000', 'complying', 0, 'PHP'),
(101, 3, 1487, 10, 28, 'CWN 2"', '70.0000', '2.00', '2.00', 'kls.', '140.0000', 'complying', 0, 'PHP'),
(102, 3, 1483, 11, 29, 'n/a', '0.0000', '4.00', '4.00', 'rolls', '0.0000', '', 0, 'PHP'),
(103, 3, 1505, 11, 29, 'Cyclone wire', '800.0000', '4.00', '4.00', 'rolls', '3200.0000', 'complying', 0, 'PHP'),
(104, 3, 1488, 11, 29, 'Cyclone wire', '600.0000', '4.00', '4.00', 'rolls', '2400.0000', 'complying', 1, 'PHP'),
(105, 3, 1487, 11, 29, 'Cyclone wire', '650.0000', '4.00', '4.00', 'rolls', '2600.0000', 'complying', 0, 'PHP'),
(106, 3, 1483, 14, 30, 'G.I. Pipe 1" x 6 meters', '620.0000', '11.00', '11.00', 'pcs.', '6820.0000', 'complying', 1, 'PHP'),
(107, 3, 1505, 14, 30, 'G.I. Pipe 1" x 6 meters', '990.0000', '11.00', '11.00', 'pcs.', '10890.0000', 'complying', 0, 'PHP'),
(108, 3, 1488, 14, 30, 'G.I. Pipe 1" x 6 meters', '720.0000', '11.00', '11.00', 'pcs.', '7920.0000', 'complying', 0, 'PHP'),
(109, 3, 1487, 14, 30, 'G.I. Pipe 1" x 6 meters', '800.0000', '11.00', '11.00', 'pcs.', '8800.0000', 'complying', 0, 'PHP');

-- --------------------------------------------------------

--
-- Table structure for table `aoq_vendors`
--

CREATE TABLE IF NOT EXISTS `aoq_vendors` (
`aoq_vendors_id` int(11) NOT NULL,
  `aoq_id` int(11) NOT NULL DEFAULT '0',
  `rfq_id` int(11) NOT NULL DEFAULT '0',
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `price_validity` text,
  `payment_terms` text,
  `delivery_date` varchar(100) DEFAULT NULL,
  `item_warranty` text,
  `freight` text
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aoq_vendors`
--

INSERT INTO `aoq_vendors` (`aoq_vendors_id`, `aoq_id`, `rfq_id`, `vendor_id`, `price_validity`, `payment_terms`, `delivery_date`, `item_warranty`, `freight`) VALUES
(1, 1, 1, 1476, '30 days', '(cash to) 7 days PDC', 'pick up on stock', '', ''),
(2, 1, 2, 1482, '30 days', '30 days PDC', 'delivery 7-10 days', '', ''),
(3, 1, 3, 387, '', 'COD', 'delivery 7-10 days', '', ''),
(4, 2, 4, 1491, '30 days', '30 days', 'on stock subject to prior sale', '', ''),
(5, 2, 5, 584, '30 days', 'cash', 'on stock subject to prior sale', '', ''),
(6, 3, 6, 1483, '30 days', 'cash purchases', '3-4 days upon confirmation', '', ''),
(7, 3, 7, 1505, '30 days', '30 days PDC', '3-4 days upon confirmation', '', ''),
(8, 3, 8, 1488, '30 days', '30 days PDC', 'ex-stock subject to prior sales', '', ''),
(9, 3, 9, 1487, '30 days', 'cash purchases', 'ex-stock subject to prior sales', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
`brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
`company_id` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
`department_id` int(11) NOT NULL,
  `department_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
`employee_id` int(11) NOT NULL,
  `employee_name` varchar(255) DEFAULT NULL,
  `department_id` int(11) DEFAULT '0',
  `position` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_name`, `department_id`, `position`) VALUES
(2, 'Elaine Anne Y. dela Cruz', 0, 'Data Encoder'),
(3, 'Rochelle Joy L. Vidal', 0, 'Purchasing Asst.'),
(4, 'Enrico Brian Ani', 0, 'Plant Manager'),
(5, 'Trish C. Young', 0, ''),
(6, 'Cristina C. Young', 0, 'President'),
(7, 'Alberto Jun Limuran, Jr.', 0, 'Plant Superintendent');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
`item_id` int(11) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_specs` text,
  `brand_name` varchar(255) DEFAULT NULL,
  `part_no` varchar(100) DEFAULT NULL,
  `unit_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `offer_date` varchar(20) DEFAULT NULL,
  `pr_details_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `item_specs`, `brand_name`, `part_no`, `unit_price`, `offer_date`, `pr_details_id`) VALUES
(1, NULL, 'Panel box bolt on 8 holes - Kotten Brand', NULL, NULL, '3500.0000', '2020-04-16', 1),
(2, NULL, 'Panel box bolt \r\non 8 holes - Kotten Brand', NULL, NULL, '3375.0000', '2020-04-16', 1),
(3, NULL, 'Panel box bolt on 8 holes - GE Brand', NULL, NULL, '4200.0000', '2020-04-16', 1),
(4, NULL, 'Acetylene / Oxygen', NULL, NULL, '1430.0000', '2020-07-07', 17),
(5, NULL, 'Acetylene / Oxygen', NULL, NULL, '1430.0000', '2020-07-07', 17),
(6, NULL, 'C. Purlins 2 x 4 x 20ft.', NULL, NULL, '600.0000', '2020-07-07', 3),
(7, NULL, 'n/a', NULL, NULL, '0.0000', '2020-07-07', 3),
(8, NULL, 'C. Purlins 2 x 4 x 20ft.', NULL, NULL, '590.0000', '2020-07-07', 3),
(9, NULL, 'C. Purlins 2 x 4 x 20ft.', NULL, NULL, '630.0000', '2020-07-07', 3),
(10, NULL, 'Angle bar 1/4 x 2 x 20ft.	(5mm.)', NULL, NULL, '1050.0000', '2020-07-07', 4),
(11, NULL, 'n/a', NULL, NULL, '0.0000', '2020-07-07', 4),
(12, NULL, 'Angle bar 1/4 x 2 x 20ft.	(5mm.)', NULL, NULL, '1090.0000', '2020-07-07', 4),
(13, NULL, 'Angle bar 1/4 x 2 x 20ft.	(5mm.)', NULL, NULL, '840.0000', '2020-07-07', 4),
(14, NULL, 'Yero 12 ft.', NULL, NULL, '420.0000', '2020-07-07', 5),
(15, NULL, 'Yero 12 ft.', NULL, NULL, '480.0000', '2020-07-07', 5),
(16, NULL, 'Yero 12 ft.', NULL, NULL, '490.0000', '2020-07-07', 5),
(17, NULL, 'Yero 12 ft.', NULL, NULL, '384.0000', '2020-07-07', 5),
(18, NULL, 'Yero 9 ft.', NULL, NULL, '315.0000', '2020-07-07', 6),
(19, NULL, 'Yero 9 ft.', NULL, NULL, '360.0000', '2020-07-07', 6),
(20, NULL, 'Yero 9 ft.', NULL, NULL, '390.0000', '2020-07-07', 6),
(21, NULL, 'Yero 9 ft.', NULL, NULL, '280.0000', '2020-07-07', 6),
(22, NULL, 'Ridge roll', NULL, NULL, '200.0000', '2020-07-07', 7),
(23, NULL, 'Ridge roll', NULL, NULL, '220.0000', '2020-07-07', 7),
(24, NULL, 'Ridge roll', NULL, NULL, '250.0000', '2020-07-07', 7),
(25, NULL, 'Ridge roll', NULL, NULL, '200.0000', '2020-07-07', 7),
(26, NULL, 'n/a', NULL, NULL, '0.0000', '2020-07-07', 8),
(27, NULL, 'Box gutter', NULL, NULL, '220.0000', '2020-07-07', 8),
(28, NULL, 'Box gutter', NULL, NULL, '230.0000', '2020-07-07', 8),
(29, NULL, 'Box gutter', NULL, NULL, '200.0000', '2020-07-07', 8),
(30, NULL, 'n/a', NULL, NULL, '0.0000', '2020-07-07', 9),
(31, NULL, 'Hardi sanipa 10" x 8ft.', NULL, NULL, '360.0000', '2020-07-07', 9),
(32, NULL, 'Hardi sanipa 10" x 8ft.', NULL, NULL, '320.0000', '2020-07-07', 9),
(33, NULL, 'Hardi sanipa 10" x 8ft.', NULL, NULL, '250.0000', '2020-07-07', 9),
(34, NULL, 'Metal texscrew 2"', NULL, NULL, '3.0000', '2020-07-07', 10),
(35, NULL, 'Metal texscrew 2"', NULL, NULL, '2.5000', '2020-07-07', 10),
(36, NULL, 'Metal texscrew 2"', NULL, NULL, '3.0000', '2020-07-07', 10),
(37, NULL, 'Metal texscrew 2"', NULL, NULL, '1.5800', '2020-07-07', 10),
(38, NULL, 'n/a', NULL, NULL, '0.0000', '2020-07-07', 11),
(39, NULL, 'Epoxy primer', NULL, NULL, '680.0000', '2020-07-07', 11),
(40, NULL, 'Epoxy primer', NULL, NULL, '690.0000', '2020-07-07', 11),
(41, NULL, 'Epoxy primer', NULL, NULL, '700.0000', '2020-07-07', 11),
(42, NULL, 'Lacquer thinner', NULL, NULL, '220.0000', '2020-07-07', 12),
(43, NULL, 'Lacquer thinner', NULL, NULL, '280.0000', '2020-07-07', 12),
(44, NULL, 'Lacquer thinner', NULL, NULL, '290.0000', '2020-07-07', 12),
(45, NULL, 'Lacquer thinner', NULL, NULL, '300.0000', '2020-07-07', 12),
(46, NULL, 'Paint brush 2"', NULL, NULL, '40.0000', '2020-07-07', 13),
(47, NULL, 'Paint brush 2"', NULL, NULL, '55.0000', '2020-07-07', 13),
(48, NULL, 'Paint brush 2"', NULL, NULL, '55.0000', '2020-07-07', 13),
(49, NULL, 'Paint brush 2"', NULL, NULL, '45.0000', '2020-07-07', 13),
(50, NULL, 'G.I. Pipe', NULL, NULL, '3415.0000', '2020-07-07', 14),
(51, NULL, 'G.I. Pipe', NULL, NULL, '3900.0000', '2020-07-07', 14),
(52, NULL, 'G.I. Pipe', NULL, NULL, '3700.0000', '2020-07-07', 14),
(53, NULL, 'G.I. Pipe', NULL, NULL, '3412.0000', '2020-07-07', 14),
(54, NULL, 'Welding rod (6013)', NULL, NULL, '350.0000', '2020-07-07', 15),
(55, NULL, 'Welding rod (6013)', NULL, NULL, '120.0000', '2020-07-07', 15),
(56, NULL, 'Welding rod (6013)', NULL, NULL, '150.0000', '2020-07-07', 15),
(57, NULL, 'Welding rod (6013)', NULL, NULL, '190.0000', '2020-07-07', 15),
(58, NULL, 'Welding rod (6011)', NULL, NULL, '185.0000', '2020-07-07', 16),
(59, NULL, 'Welding rod (6011)', NULL, NULL, '160.0000', '2020-07-07', 16),
(60, NULL, 'Welding rod (6011)', NULL, NULL, '140.0000', '2020-07-07', 16),
(61, NULL, 'Welding rod (6011)', NULL, NULL, '170.0000', '2020-07-07', 16),
(62, NULL, 'Cut of blade 14"', NULL, NULL, '250.0000', '2020-07-07', 18),
(63, NULL, 'Cut of blade 14"', NULL, NULL, '680.0000', '2020-07-07', 18),
(64, NULL, 'Cut of blade 14"', NULL, NULL, '720.0000', '2020-07-07', 18),
(65, NULL, 'Cut of blade 14"', NULL, NULL, '720.0000', '2020-07-07', 18),
(66, NULL, 'Cutting disk 4"', NULL, NULL, '145.0000', '2020-07-07', 19),
(67, NULL, 'Cutting disk 4"', NULL, NULL, '120.0000', '2020-07-07', 19),
(68, NULL, 'Cutting disk 4"', NULL, NULL, '140.0000', '2020-07-07', 19),
(69, NULL, 'Cutting disk 4"', NULL, NULL, '145.0000', '2020-07-07', 19),
(70, NULL, 'n/a', NULL, NULL, '0.0000', '2020-07-07', 20),
(71, NULL, 'CHB 4"', NULL, NULL, '10.0000', '2020-07-07', 20),
(72, NULL, 'CHB 4"', NULL, NULL, '12.0000', '2020-07-07', 20),
(73, NULL, 'CHB 4"', NULL, NULL, '12.0000', '2020-07-07', 20),
(74, NULL, 'n/a', NULL, NULL, '0.0000', '2020-07-07', 21),
(75, NULL, 'Sand', NULL, NULL, '350.0000', '2020-07-07', 21),
(76, NULL, 'Sand', NULL, NULL, '400.0000', '2020-07-07', 21),
(77, NULL, 'n/a', NULL, NULL, '0.0000', '2020-07-07', 21),
(78, NULL, 'n/a', NULL, NULL, '0.0000', '2020-07-07', 22),
(79, NULL, 'Gravel', NULL, NULL, '650.0000', '2020-07-07', 22),
(80, NULL, 'Gravel', NULL, NULL, '720.0000', '2020-07-07', 22),
(81, NULL, 'n/a', NULL, NULL, '0.0000', '2020-07-07', 22),
(82, NULL, 'Cement', NULL, NULL, '255.0000', '2020-07-07', 23),
(83, NULL, 'Cement', NULL, NULL, '295.0000', '2020-07-07', 23),
(84, NULL, 'Cement', NULL, NULL, '245.0000', '2020-07-07', 23),
(85, NULL, 'Cement', NULL, NULL, '250.0000', '2020-07-07', 23),
(86, NULL, 'RSB 10mm', NULL, NULL, '125.0000', '2020-07-07', 24),
(87, NULL, 'RSB 10mm', NULL, NULL, '140.0000', '2020-07-07', 24),
(88, NULL, 'RSB 10mm', NULL, NULL, '130.0000', '2020-07-07', 24),
(89, NULL, 'RSB 10mm', NULL, NULL, '121.0000', '2020-07-07', 24),
(90, NULL, 'Tie wire #16', NULL, NULL, '60.0000', '2020-07-07', 26),
(91, NULL, 'Tie wire #16', NULL, NULL, '80.0000', '2020-07-07', 26),
(92, NULL, 'Tie wire #16', NULL, NULL, '80.0000', '2020-07-07', 26),
(93, NULL, 'Tie wire #16', NULL, NULL, '75.0000', '2020-07-07', 26),
(94, NULL, 'Marine Plywood 3/4', NULL, NULL, '950.0000', '2020-07-07', 27),
(95, NULL, 'Marine Plywood 3/4', NULL, NULL, '1150.0000', '2020-07-07', 27),
(96, NULL, 'Marine Plywood 3/4', NULL, NULL, '1120.0000', '2020-07-07', 27),
(97, NULL, 'Marine Plywood 3/4', NULL, NULL, '950.0000', '2020-07-07', 27),
(98, NULL, 'CWN 2"', NULL, NULL, '60.0000', '2020-07-07', 28),
(99, NULL, 'CWN 2"', NULL, NULL, '80.0000', '2020-07-07', 28),
(100, NULL, 'CWN 2"', NULL, NULL, '80.0000', '2020-07-07', 28),
(101, NULL, 'CWN 2"', NULL, NULL, '70.0000', '2020-07-07', 28),
(102, NULL, 'n/a', NULL, NULL, '0.0000', '2020-07-07', 29),
(103, NULL, 'Cyclone wire', NULL, NULL, '800.0000', '2020-07-07', 29),
(104, NULL, 'Cyclone wire', NULL, NULL, '600.0000', '2020-07-07', 29),
(105, NULL, 'Cyclone wire', NULL, NULL, '650.0000', '2020-07-07', 29),
(106, NULL, 'G.I. Pipe 1" x 6 meters', NULL, NULL, '620.0000', '2020-07-07', 30),
(107, NULL, 'G.I. Pipe 1" x 6 meters', NULL, NULL, '990.0000', '2020-07-07', 30),
(108, NULL, 'G.I. Pipe 1" x 6 meters', NULL, NULL, '720.0000', '2020-07-07', 30),
(109, NULL, 'G.I. Pipe 1" x 6 meters', NULL, NULL, '800.0000', '2020-07-07', 30);

-- --------------------------------------------------------

--
-- Table structure for table `jo_ar`
--

CREATE TABLE IF NOT EXISTS `jo_ar` (
`joar_id` int(11) NOT NULL,
  `jo_id` int(11) NOT NULL DEFAULT '0',
  `year` varchar(20) DEFAULT NULL,
  `series` varchar(20) DEFAULT NULL,
  `ar_date` varchar(20) DEFAULT NULL,
  `delivered_to` text,
  `address` text,
  `requested_by` varchar(50) DEFAULT NULL,
  `gatepass_no` varchar(50) DEFAULT NULL,
  `saved` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jo_details`
--

CREATE TABLE IF NOT EXISTS `jo_details` (
`jo_details_id` int(11) NOT NULL,
  `jo_id` int(11) NOT NULL DEFAULT '0',
  `scope_of_work` text,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `uom` varchar(50) DEFAULT NULL,
  `unit_cost` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_cost` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `revision_no` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jo_details_revised`
--

CREATE TABLE IF NOT EXISTS `jo_details_revised` (
  `jo_details_id` int(11) NOT NULL,
  `jo_id` int(11) NOT NULL DEFAULT '0',
  `scope_of_work` text,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `uom` varchar(50) DEFAULT NULL,
  `unit_cost` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_cost` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `revision_no` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jo_details_temp`
--

CREATE TABLE IF NOT EXISTS `jo_details_temp` (
  `jo_details_id` int(11) NOT NULL,
  `jo_id` int(11) NOT NULL DEFAULT '0',
  `scope_of_work` text,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `uom` varchar(50) DEFAULT NULL,
  `unit_cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `revision_no` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jo_dr`
--

CREATE TABLE IF NOT EXISTS `jo_dr` (
`jodr_id` int(11) NOT NULL,
  `jo_id` int(11) NOT NULL DEFAULT '0',
  `year` varchar(50) NOT NULL,
  `series` varchar(20) DEFAULT NULL,
  `dr_date` varchar(20) DEFAULT NULL,
  `delivered_to` text,
  `address` text,
  `requested_by` varchar(50) DEFAULT NULL,
  `saved` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jo_head`
--

CREATE TABLE IF NOT EXISTS `jo_head` (
`jo_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `cenpri_jo_no` varchar(100) DEFAULT NULL,
  `jo_no` varchar(100) DEFAULT NULL,
  `date_prepared` varchar(20) DEFAULT NULL,
  `project_title` text,
  `start_of_work` varchar(20) DEFAULT NULL,
  `work_completion` varchar(20) DEFAULT NULL,
  `total_cost` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `discount_percent` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `conforme` varchar(100) DEFAULT NULL,
  `prepared_by` int(11) NOT NULL DEFAULT '0',
  `approved_by` int(11) NOT NULL DEFAULT '0',
  `checked_by` int(11) NOT NULL DEFAULT '0',
  `saved` int(11) NOT NULL DEFAULT '0',
  `date_needed` varchar(20) DEFAULT NULL,
  `revised` int(11) NOT NULL DEFAULT '0',
  `revised_date` varchar(20) DEFAULT NULL,
  `revision_no` int(11) NOT NULL DEFAULT '0',
  `approve_rev_by` int(11) NOT NULL DEFAULT '0',
  `approve_rev_date` varchar(20) DEFAULT NULL,
  `cancelled` int(11) NOT NULL DEFAULT '0',
  `cancelled_by` int(11) NOT NULL DEFAULT '0',
  `cancelled_reason` text,
  `cancelled_date` varchar(20) DEFAULT NULL,
  `recommended_by` int(11) NOT NULL DEFAULT '0',
  `vat_percent` decimal(10,2) NOT NULL DEFAULT '0.00',
  `vat_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `verified_by` int(11) NOT NULL DEFAULT '0',
  `endorsed_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jo_head_revised`
--

CREATE TABLE IF NOT EXISTS `jo_head_revised` (
  `jo_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `cenpri_jo_no` varchar(100) DEFAULT NULL,
  `jo_no` varchar(100) DEFAULT NULL,
  `date_prepared` varchar(20) DEFAULT NULL,
  `project_title` text,
  `start_of_work` varchar(20) DEFAULT NULL,
  `work_completion` varchar(20) DEFAULT NULL,
  `total_cost` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `discount_percent` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `conforme` varchar(100) DEFAULT NULL,
  `prepared_by` int(11) NOT NULL DEFAULT '0',
  `approved_by` int(11) NOT NULL DEFAULT '0',
  `checked_by` int(11) NOT NULL DEFAULT '0',
  `saved` int(11) NOT NULL DEFAULT '0',
  `date_needed` varchar(20) DEFAULT NULL,
  `revised` int(11) NOT NULL DEFAULT '0',
  `revised_date` varchar(20) DEFAULT NULL,
  `revision_no` int(11) NOT NULL DEFAULT '0',
  `approve_rev_by` int(11) NOT NULL DEFAULT '0',
  `approve_rev_date` varchar(20) DEFAULT NULL,
  `cancelled` int(11) NOT NULL DEFAULT '0',
  `cancelled_by` int(11) NOT NULL DEFAULT '0',
  `cancelled_reason` text,
  `cancelled_date` varchar(20) DEFAULT NULL,
  `recommended_by` int(11) NOT NULL DEFAULT '0',
  `vat_percent` decimal(10,2) NOT NULL DEFAULT '0.00',
  `vat_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `verified_by` int(11) NOT NULL DEFAULT '0',
  `endorsed_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jo_head_temp`
--

CREATE TABLE IF NOT EXISTS `jo_head_temp` (
  `jo_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `cenpri_jo_no` varchar(100) DEFAULT NULL,
  `jo_no` varchar(100) DEFAULT NULL,
  `date_prepared` varchar(20) DEFAULT NULL,
  `project_title` text,
  `start_of_work` varchar(20) DEFAULT NULL,
  `work_completion` varchar(20) DEFAULT NULL,
  `total_cost` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `discount_percent` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `conforme` varchar(100) DEFAULT NULL,
  `prepared_by` int(11) NOT NULL DEFAULT '0',
  `approved_by` int(11) NOT NULL DEFAULT '0',
  `checked_by` int(11) NOT NULL DEFAULT '0',
  `saved` int(11) NOT NULL DEFAULT '0',
  `date_needed` varchar(20) DEFAULT NULL,
  `revised` int(11) NOT NULL DEFAULT '0',
  `revised_date` varchar(20) DEFAULT NULL,
  `revision_no` int(11) NOT NULL DEFAULT '0',
  `approve_rev_by` int(11) NOT NULL DEFAULT '0',
  `approve_rev_date` varchar(20) DEFAULT NULL,
  `cancelled` int(11) NOT NULL DEFAULT '0',
  `cancelled_by` int(11) NOT NULL DEFAULT '0',
  `cancelled_reason` text,
  `cancelled_date` varchar(20) DEFAULT NULL,
  `recommended_by` int(11) NOT NULL DEFAULT '0',
  `vat_percent` decimal(10,2) NOT NULL DEFAULT '0.00',
  `vat_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `verified_by` int(11) NOT NULL DEFAULT '0',
  `endorsed_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jo_rfd`
--

CREATE TABLE IF NOT EXISTS `jo_rfd` (
`rfd_id` int(11) NOT NULL,
  `jo_id` int(11) NOT NULL DEFAULT '0',
  `apv_no` varchar(50) DEFAULT NULL,
  `rfd_date` varchar(20) DEFAULT NULL,
  `due_date` varchar(20) DEFAULT NULL,
  `check_due` varchar(20) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `pay_to` int(11) NOT NULL DEFAULT '0',
  `check_name` varchar(255) DEFAULT NULL,
  `cash_check` int(11) NOT NULL DEFAULT '0' COMMENT '1=cash, 2= check',
  `bank_no` varchar(100) DEFAULT NULL,
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `notes` text,
  `checked_by` int(11) NOT NULL DEFAULT '0',
  `endorsed_by` int(11) NOT NULL DEFAULT '0',
  `approved_by` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `saved` int(11) NOT NULL DEFAULT '0',
  `released_by` int(11) NOT NULL DEFAULT '0',
  `received_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jo_series`
--

CREATE TABLE IF NOT EXISTS `jo_series` (
`jo_series_id` int(11) NOT NULL,
  `year` int(11) NOT NULL DEFAULT '0',
  `series` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jo_terms`
--

CREATE TABLE IF NOT EXISTS `jo_terms` (
`jo_terms_id` int(11) NOT NULL,
  `jo_id` int(11) NOT NULL DEFAULT '0',
  `terms` text,
  `revision_no` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jo_terms_revised`
--

CREATE TABLE IF NOT EXISTS `jo_terms_revised` (
  `jo_terms_id` int(11) NOT NULL,
  `jo_id` int(11) NOT NULL DEFAULT '0',
  `terms` text,
  `revision_no` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jo_terms_temp`
--

CREATE TABLE IF NOT EXISTS `jo_terms_temp` (
  `jo_terms_id` int(11) NOT NULL,
  `jo_id` int(11) NOT NULL DEFAULT '0',
  `terms` text,
  `revision_no` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `po_dr`
--

CREATE TABLE IF NOT EXISTS `po_dr` (
`dr_id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL,
  `rfd_id` int(11) NOT NULL,
  `dr_no` varchar(100) DEFAULT NULL,
  `dr_date` varchar(20) DEFAULT NULL,
  `dr_type` int(11) NOT NULL DEFAULT '0' COMMENT '0=po, 1=direct purchase, 2 = no rfd',
  `saved` int(11) NOT NULL DEFAULT '0',
  `revision_no` int(11) NOT NULL DEFAULT '0',
  `received` int(11) NOT NULL DEFAULT '0',
  `date_received` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_dr`
--

INSERT INTO `po_dr` (`dr_id`, `po_id`, `rfd_id`, `dr_no`, `dr_date`, `dr_type`, `saved`, `revision_no`, `received`, `date_received`) VALUES
(1, 1, 0, '1000', '2020-04-16', 0, 0, 0, 1, '2020-01-23'),
(2, 2, 0, '1001', '2020-07-07', 0, 0, 0, 0, NULL),
(3, 3, 0, '1002', '2020-07-07', 0, 0, 0, 0, NULL),
(4, 4, 0, '1003', '2020-07-07', 0, 0, 0, 0, NULL),
(5, 5, 0, '1004', '2020-07-07', 0, 0, 0, 0, NULL),
(6, 6, 0, '1005', '2020-07-07', 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `po_dr_details`
--

CREATE TABLE IF NOT EXISTS `po_dr_details` (
`dr_details_id` int(11) NOT NULL,
  `dr_id` int(11) NOT NULL DEFAULT '0',
  `notes` text NOT NULL,
  `purpose` text NOT NULL,
  `enduse` text NOT NULL,
  `requestor` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `po_dr_items`
--

CREATE TABLE IF NOT EXISTS `po_dr_items` (
`dr_items_id` int(11) NOT NULL,
  `po_items_id` int(11) NOT NULL DEFAULT '0',
  `dr_id` int(11) NOT NULL DEFAULT '0',
  `pr_id` int(11) NOT NULL DEFAULT '0',
  `po_id` int(11) NOT NULL DEFAULT '0',
  `aoq_offer_id` int(11) NOT NULL DEFAULT '0',
  `aoq_items_id` int(11) NOT NULL DEFAULT '0',
  `pr_details_id` int(11) NOT NULL DEFAULT '0',
  `offer` text,
  `item_id` int(11) DEFAULT '0',
  `delivered_quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `unit_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `uom` varchar(50) DEFAULT NULL,
  `amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `item_no` int(11) NOT NULL DEFAULT '0',
  `revision_no` int(11) NOT NULL DEFAULT '0',
  `currency` varchar(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_dr_items`
--

INSERT INTO `po_dr_items` (`dr_items_id`, `po_items_id`, `dr_id`, `pr_id`, `po_id`, `aoq_offer_id`, `aoq_items_id`, `pr_details_id`, `offer`, `item_id`, `delivered_quantity`, `quantity`, `unit_price`, `uom`, `amount`, `item_no`, `revision_no`, `currency`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 'Panel box bolt on 8 holes - Kotten Brand', 0, '1.00', '1.00', '3500.0000', 'pc.', '3500.0000', 1, 0, 'PHP'),
(2, 2, 2, 2, 2, 4, 2, 17, 'Acetylene / Oxygen', 0, '1.00', '0.00', '1430.0000', 'set', '1430.0000', 1, 0, 'PHP'),
(3, 3, 3, 2, 3, 42, 18, 12, 'Lacquer thinner', 0, '1.00', '0.00', '220.0000', 'gal.', '220.0000', 1, 0, 'PHP'),
(4, 4, 3, 2, 3, 46, 21, 13, 'Paint brush 2"', 0, '2.00', '0.00', '40.0000', 'pcs.', '80.0000', 2, 0, 'PHP'),
(5, 5, 3, 2, 3, 62, 8, 18, 'Cut of blade 14"', 0, '1.00', '0.00', '250.0000', 'pc.', '250.0000', 3, 0, 'PHP'),
(6, 6, 3, 2, 3, 90, 25, 26, 'Tie wire #16', 0, '3.00', '0.00', '60.0000', 'kls.', '180.0000', 4, 0, 'PHP'),
(7, 7, 3, 2, 3, 98, 10, 28, 'CWN 2"', 0, '2.00', '0.00', '60.0000', 'kls.', '120.0000', 5, 0, 'PHP'),
(8, 8, 3, 2, 3, 106, 14, 30, 'G.I. Pipe 1" x 6 meters', 0, '11.00', '0.00', '620.0000', 'pcs.', '6820.0000', 6, 0, 'PHP'),
(9, 9, 4, 2, 4, 39, 12, 11, 'Epoxy primer', 0, '3.00', '0.00', '680.0000', 'gals.', '2040.0000', 1, 0, 'PHP'),
(10, 10, 4, 2, 4, 55, 27, 15, 'Welding rod (6013)', 0, '1.00', '0.00', '120.0000', 'kilo', '120.0000', 2, 0, 'PHP'),
(11, 11, 4, 2, 4, 67, 9, 19, 'Cutting disk 4"', 0, '10.00', '0.00', '120.0000', 'pcs.', '1200.0000', 3, 0, 'PHP'),
(12, 12, 4, 2, 4, 71, 7, 20, 'CHB 4"', 0, '600.00', '0.00', '10.0000', 'pcs.', '6000.0000', 4, 0, 'PHP'),
(13, 13, 4, 2, 4, 75, 24, 21, 'Sand', 0, '10.00', '0.00', '350.0000', 'cm3', '3500.0000', 5, 0, 'PHP'),
(14, 14, 4, 2, 4, 79, 15, 22, 'Gravel', 0, '10.00', '0.00', '650.0000', 'cm3', '6500.0000', 6, 0, 'PHP'),
(15, 15, 5, 2, 5, 8, 5, 3, 'C. Purlins 2 x 4 x 20ft.', 0, '67.00', '0.00', '590.0000', 'pcs.', '39530.0000', 1, 0, 'PHP'),
(16, 16, 5, 2, 5, 60, 26, 16, 'Welding rod (6011)', 0, '1.00', '0.00', '140.0000', 'kilo', '140.0000', 2, 0, 'PHP'),
(17, 17, 5, 2, 5, 84, 6, 23, 'Cement', 0, '120.00', '0.00', '245.0000', 'bags', '29400.0000', 3, 0, 'PHP'),
(18, 18, 5, 2, 5, 104, 11, 29, 'Cyclone wire', 0, '4.00', '0.00', '600.0000', 'rolls', '2400.0000', 4, 0, 'PHP'),
(19, 19, 6, 2, 6, 13, 3, 4, 'Angle bar 1/4 x 2 x 20ft.	(5mm.)', 0, '23.00', '0.00', '840.0000', 'pcs.', '19320.0000', 1, 0, 'PHP'),
(20, 20, 6, 2, 6, 17, 28, 5, 'Yero 12 ft.', 0, '58.00', '0.00', '384.0000', 'pcs.', '22272.0000', 2, 0, 'PHP'),
(21, 21, 6, 2, 6, 21, 29, 6, 'Yero 9 ft.', 0, '58.00', '0.00', '280.0000', 'pcs.', '16240.0000', 3, 0, 'PHP'),
(22, 22, 6, 2, 6, 25, 22, 7, 'Ridge roll', 0, '9.00', '0.00', '200.0000', 'pcs.', '1800.0000', 4, 0, 'PHP'),
(23, 23, 6, 2, 6, 29, 4, 8, 'Box gutter', 0, '18.00', '0.00', '200.0000', 'pcs.', '3600.0000', 5, 0, 'PHP'),
(24, 24, 6, 2, 6, 33, 16, 9, 'Hardi sanipa 10" x 8ft.', 0, '27.00', '0.00', '250.0000', 'pcs.', '6750.0000', 6, 0, 'PHP'),
(25, 25, 6, 2, 6, 37, 20, 10, 'Metal texscrew 2"', 0, '2000.00', '0.00', '1.5800', 'pcs.', '3160.0000', 7, 0, 'PHP'),
(26, 26, 6, 2, 6, 53, 13, 14, 'G.I. Pipe', 0, '5.00', '0.00', '3412.0000', 'pcs.', '17060.0000', 8, 0, 'PHP'),
(27, 27, 6, 2, 6, 89, 23, 24, 'RSB 10mm', 0, '100.00', '0.00', '121.0000', 'pcs.', '12100.0000', 9, 0, 'PHP'),
(28, 28, 6, 2, 6, 97, 19, 27, 'Marine Plywood 3/4', 0, '3.00', '0.00', '950.0000', 'pcs.', '2850.0000', 10, 0, 'PHP');

-- --------------------------------------------------------

--
-- Table structure for table `po_dr_items_revised`
--

CREATE TABLE IF NOT EXISTS `po_dr_items_revised` (
  `dr_items_id` int(11) NOT NULL,
  `po_items_id` int(11) NOT NULL DEFAULT '0',
  `dr_id` int(11) NOT NULL DEFAULT '0',
  `pr_id` int(11) NOT NULL DEFAULT '0',
  `po_id` int(11) NOT NULL DEFAULT '0',
  `aoq_offer_id` int(11) NOT NULL DEFAULT '0',
  `aoq_items_id` int(11) NOT NULL DEFAULT '0',
  `pr_details_id` int(11) NOT NULL DEFAULT '0',
  `offer` text,
  `item_id` int(11) DEFAULT '0',
  `delivered_quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `unit_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `uom` varchar(50) DEFAULT NULL,
  `amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `item_no` int(11) NOT NULL DEFAULT '0',
  `revision_no` int(11) NOT NULL DEFAULT '0',
  `currency` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `po_dr_revised`
--

CREATE TABLE IF NOT EXISTS `po_dr_revised` (
  `dr_id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL,
  `rfd_id` int(11) NOT NULL,
  `dr_no` varchar(100) DEFAULT NULL,
  `dr_date` varchar(20) DEFAULT NULL,
  `dr_type` int(11) NOT NULL DEFAULT '0' COMMENT '0=po, 1=direct purchase, 2 = no rfd',
  `saved` int(11) NOT NULL DEFAULT '0',
  `revision_no` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `po_head`
--

CREATE TABLE IF NOT EXISTS `po_head` (
`po_id` int(11) NOT NULL,
  `po_date` varchar(20) DEFAULT NULL,
  `po_no` varchar(50) DEFAULT NULL,
  `dr_no` varchar(50) DEFAULT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `notes` text,
  `po_type` int(11) DEFAULT '0' COMMENT '0=po, 1=direct purchase, 2=repeat order',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `shipping` decimal(10,2) DEFAULT '0.00',
  `discount` decimal(10,2) DEFAULT '0.00',
  `approved_by` int(11) DEFAULT '0',
  `checked_by` int(11) NOT NULL DEFAULT '0',
  `saved` int(11) NOT NULL DEFAULT '0',
  `done_po` int(11) NOT NULL DEFAULT '0',
  `cancelled` int(11) DEFAULT '0',
  `cancelled_by` int(11) DEFAULT '0',
  `cancel_reason` text,
  `cancelled_date` varchar(20) DEFAULT NULL,
  `revised` int(11) NOT NULL DEFAULT '0',
  `date_revised` varchar(20) DEFAULT NULL,
  `revision_no` int(11) NOT NULL DEFAULT '0',
  `revise_attachment` varchar(255) DEFAULT NULL,
  `served` int(11) NOT NULL DEFAULT '0',
  `date_served` varchar(20) DEFAULT NULL,
  `served_by` int(11) NOT NULL DEFAULT '0',
  `repeat_order` int(11) NOT NULL DEFAULT '0',
  `approve_rev_by` varchar(100) DEFAULT NULL,
  `approve_rev_date` varchar(20) DEFAULT NULL,
  `draft` int(11) NOT NULL DEFAULT '0',
  `prepared_date` varchar(20) DEFAULT NULL,
  `recommended_by` int(11) NOT NULL DEFAULT '0',
  `packing_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `vat` decimal(10,2) NOT NULL DEFAULT '0.00',
  `vat_percent` int(11) NOT NULL DEFAULT '0',
  `grouping_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_head`
--

INSERT INTO `po_head` (`po_id`, `po_date`, `po_no`, `dr_no`, `vendor_id`, `notes`, `po_type`, `user_id`, `shipping`, `discount`, `approved_by`, `checked_by`, `saved`, `done_po`, `cancelled`, `cancelled_by`, `cancel_reason`, `cancelled_date`, `revised`, `date_revised`, `revision_no`, `revise_attachment`, `served`, `date_served`, `served_by`, `repeat_order`, `approve_rev_by`, `approve_rev_date`, `draft`, `prepared_date`, `recommended_by`, `packing_fee`, `vat`, `vat_percent`, `grouping_id`) VALUES
(1, '2020-04-16', 'PADE20-1000-1000', NULL, 1476, NULL, 0, 3, '0.00', '0.00', 6, 4, 1, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, 1, NULL, 3, 0, NULL, NULL, 0, '2020-04-16 14:21:40', 5, '0.00', '0.00', 0, NULL),
(2, '2020-07-07', 'PADE20-1001-1001', NULL, 1491, NULL, 0, 3, '0.00', '0.00', 6, 7, 1, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, 0, NULL, NULL, 0, '2020-07-07 11:09:50', 5, '0.00', '0.00', 0, NULL),
(3, '2020-07-07', 'PADE20-1001-1002', NULL, 1483, NULL, 0, 3, '0.00', '0.00', 6, 7, 1, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, 0, NULL, NULL, 0, '2020-07-07 13:28:59', 5, '0.00', '0.00', 0, NULL),
(4, '2020-07-07', 'PADE20-1001-1003', NULL, 1505, NULL, 0, 3, '0.00', '0.00', 6, 7, 1, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, 0, NULL, NULL, 0, '2020-07-07 13:31:02', 5, '0.00', '0.00', 0, NULL),
(5, '2020-07-07', 'PADE20-1001-1004', NULL, 1488, NULL, 0, 3, '0.00', '0.00', 6, 7, 1, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, 0, NULL, NULL, 0, '2020-07-07 13:48:06', 5, '0.00', '0.00', 0, NULL),
(6, '2020-07-07', 'PADE20-1001-1005', NULL, 1487, NULL, 0, 3, '0.00', '0.00', 6, 7, 1, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, 0, NULL, NULL, 0, '2020-07-07 13:49:30', 5, '0.00', '0.00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `po_head_revised`
--

CREATE TABLE IF NOT EXISTS `po_head_revised` (
  `po_id` int(11) NOT NULL,
  `po_date` varchar(20) DEFAULT NULL,
  `po_no` varchar(50) DEFAULT NULL,
  `dr_no` varchar(50) DEFAULT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `notes` text,
  `po_type` int(11) DEFAULT '0' COMMENT '0=po, 1=direct purchase, 2=repeat order',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `shipping` decimal(10,2) DEFAULT '0.00',
  `discount` decimal(10,2) DEFAULT '0.00',
  `approved_by` int(11) DEFAULT '0',
  `saved` int(11) NOT NULL DEFAULT '0',
  `done_po` int(11) NOT NULL DEFAULT '0',
  `cancelled` int(11) DEFAULT '0',
  `cancelled_by` int(11) DEFAULT '0',
  `checked_by` int(11) NOT NULL DEFAULT '0',
  `cancel_reason` text,
  `cancelled_date` varchar(20) DEFAULT NULL,
  `revised` int(11) NOT NULL DEFAULT '0',
  `date_revised` varchar(20) DEFAULT NULL,
  `revision_no` int(11) NOT NULL DEFAULT '0',
  `revise_attachment` varchar(255) DEFAULT NULL,
  `packing_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `vat` decimal(10,2) NOT NULL DEFAULT '0.00',
  `vat_percent` int(11) NOT NULL DEFAULT '0',
  `endorsed_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `po_head_temp`
--

CREATE TABLE IF NOT EXISTS `po_head_temp` (
  `po_id` int(11) NOT NULL,
  `po_date` varchar(20) DEFAULT NULL,
  `po_no` varchar(50) DEFAULT NULL,
  `dr_no` varchar(50) DEFAULT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `notes` text,
  `po_type` int(11) DEFAULT '0' COMMENT '0=po, 1=direct purchase, 2=repeat order',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `approved_by` int(11) DEFAULT '0',
  `checked_by` int(11) NOT NULL DEFAULT '0',
  `saved` int(11) NOT NULL DEFAULT '0',
  `draft` int(11) NOT NULL DEFAULT '0',
  `done_po` int(11) NOT NULL DEFAULT '0',
  `cancelled` int(11) DEFAULT '0',
  `cancelled_by` int(11) DEFAULT '0',
  `cancel_reason` text,
  `cancelled_date` varchar(20) DEFAULT NULL,
  `revised` int(11) NOT NULL DEFAULT '0',
  `date_revised` varchar(20) DEFAULT NULL,
  `revision_no` int(11) NOT NULL DEFAULT '0',
  `revise_attachment` varchar(255) DEFAULT NULL,
  `served` int(11) NOT NULL DEFAULT '0',
  `date_served` varchar(20) DEFAULT NULL,
  `served_by` int(11) NOT NULL DEFAULT '0',
  `repeat_order` int(11) NOT NULL DEFAULT '0',
  `approve_rev_by` varchar(100) DEFAULT NULL,
  `approve_rev_date` varchar(20) DEFAULT NULL,
  `shipping` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `packing_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `vat` decimal(10,2) NOT NULL DEFAULT '0.00',
  `vat_percent` int(11) NOT NULL DEFAULT '0',
  `endorsed_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `po_items`
--

CREATE TABLE IF NOT EXISTS `po_items` (
`po_items_id` int(11) NOT NULL,
  `pr_id` int(11) NOT NULL DEFAULT '0',
  `po_id` int(11) NOT NULL DEFAULT '0',
  `aoq_offer_id` int(11) NOT NULL DEFAULT '0',
  `aoq_items_id` int(11) NOT NULL DEFAULT '0',
  `pr_details_id` int(11) NOT NULL DEFAULT '0',
  `offer` text,
  `item_id` int(11) DEFAULT '0',
  `delivered_quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `unit_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `uom` varchar(50) DEFAULT NULL,
  `amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `item_no` int(11) DEFAULT '0',
  `source_poid` int(11) NOT NULL DEFAULT '0',
  `notes` text,
  `revision_no` int(11) NOT NULL DEFAULT '0',
  `currency` varchar(10) DEFAULT NULL,
  `cancel` int(11) NOT NULL DEFAULT '0',
  `cancelled_by` int(11) NOT NULL DEFAULT '0',
  `cancelled_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_items`
--

INSERT INTO `po_items` (`po_items_id`, `pr_id`, `po_id`, `aoq_offer_id`, `aoq_items_id`, `pr_details_id`, `offer`, `item_id`, `delivered_quantity`, `quantity`, `unit_price`, `uom`, `amount`, `item_no`, `source_poid`, `notes`, `revision_no`, `currency`, `cancel`, `cancelled_by`, `cancelled_date`) VALUES
(1, 1, 1, 1, 1, 1, 'Panel box bolt on 8 holes - Kotten Brand', 0, '1.00', '1.00', '3500.0000', 'pc.', '3500.0000', 1, 0, NULL, 0, 'PHP', 0, 0, NULL),
(2, 2, 2, 4, 2, 17, 'Acetylene / Oxygen', 0, '1.00', '0.00', '1430.0000', 'set', '1430.0000', 1, 0, NULL, 0, 'PHP', 0, 0, NULL),
(3, 2, 3, 42, 18, 12, 'Lacquer thinner', 0, '1.00', '0.00', '220.0000', 'gal.', '220.0000', 1, 0, NULL, 0, 'PHP', 0, 0, NULL),
(4, 2, 3, 46, 21, 13, 'Paint brush 2"', 0, '2.00', '0.00', '40.0000', 'pcs.', '80.0000', 2, 0, NULL, 0, 'PHP', 0, 0, NULL),
(5, 2, 3, 62, 8, 18, 'Cut of blade 14"', 0, '1.00', '0.00', '250.0000', 'pc.', '250.0000', 3, 0, NULL, 0, 'PHP', 0, 0, NULL),
(6, 2, 3, 90, 25, 26, 'Tie wire #16', 0, '3.00', '0.00', '60.0000', 'kls.', '180.0000', 4, 0, NULL, 0, 'PHP', 0, 0, NULL),
(7, 2, 3, 98, 10, 28, 'CWN 2"', 0, '2.00', '0.00', '60.0000', 'kls.', '120.0000', 5, 0, NULL, 0, 'PHP', 0, 0, NULL),
(8, 2, 3, 106, 14, 30, 'G.I. Pipe 1" x 6 meters', 0, '11.00', '0.00', '620.0000', 'pcs.', '6820.0000', 6, 0, NULL, 0, 'PHP', 0, 0, NULL),
(9, 2, 4, 39, 12, 11, 'Epoxy primer', 0, '3.00', '0.00', '680.0000', 'gals.', '2040.0000', 1, 0, NULL, 0, 'PHP', 0, 0, NULL),
(10, 2, 4, 55, 27, 15, 'Welding rod (6013)', 0, '1.00', '0.00', '120.0000', 'kilo', '120.0000', 2, 0, NULL, 0, 'PHP', 0, 0, NULL),
(11, 2, 4, 67, 9, 19, 'Cutting disk 4"', 0, '10.00', '0.00', '120.0000', 'pcs.', '1200.0000', 3, 0, NULL, 0, 'PHP', 0, 0, NULL),
(12, 2, 4, 71, 7, 20, 'CHB 4"', 0, '600.00', '0.00', '10.0000', 'pcs.', '6000.0000', 4, 0, NULL, 0, 'PHP', 0, 0, NULL),
(13, 2, 4, 75, 24, 21, 'Sand', 0, '10.00', '0.00', '350.0000', 'cm3', '3500.0000', 5, 0, NULL, 0, 'PHP', 0, 0, NULL),
(14, 2, 4, 79, 15, 22, 'Gravel', 0, '10.00', '0.00', '650.0000', 'cm3', '6500.0000', 6, 0, NULL, 0, 'PHP', 0, 0, NULL),
(15, 2, 5, 8, 5, 3, 'C. Purlins 2 x 4 x 20ft.', 0, '67.00', '0.00', '590.0000', 'pcs.', '39530.0000', 1, 0, NULL, 0, 'PHP', 0, 0, NULL),
(16, 2, 5, 60, 26, 16, 'Welding rod (6011)', 0, '1.00', '0.00', '140.0000', 'kilo', '140.0000', 2, 0, NULL, 0, 'PHP', 0, 0, NULL),
(17, 2, 5, 84, 6, 23, 'Cement', 0, '120.00', '0.00', '245.0000', 'bags', '29400.0000', 3, 0, NULL, 0, 'PHP', 0, 0, NULL),
(18, 2, 5, 104, 11, 29, 'Cyclone wire', 0, '4.00', '0.00', '600.0000', 'rolls', '2400.0000', 4, 0, NULL, 0, 'PHP', 0, 0, NULL),
(19, 2, 6, 13, 3, 4, 'Angle bar 1/4 x 2 x 20ft.	(5mm.)', 0, '23.00', '0.00', '840.0000', 'pcs.', '19320.0000', 1, 0, NULL, 0, 'PHP', 0, 0, NULL),
(20, 2, 6, 17, 28, 5, 'Yero 12 ft.', 0, '58.00', '0.00', '384.0000', 'pcs.', '22272.0000', 2, 0, NULL, 0, 'PHP', 0, 0, NULL),
(21, 2, 6, 21, 29, 6, 'Yero 9 ft.', 0, '58.00', '0.00', '280.0000', 'pcs.', '16240.0000', 3, 0, NULL, 0, 'PHP', 0, 0, NULL),
(22, 2, 6, 25, 22, 7, 'Ridge roll', 0, '9.00', '0.00', '200.0000', 'pcs.', '1800.0000', 4, 0, NULL, 0, 'PHP', 0, 0, NULL),
(23, 2, 6, 29, 4, 8, 'Box gutter', 0, '18.00', '0.00', '200.0000', 'pcs.', '3600.0000', 5, 0, NULL, 0, 'PHP', 0, 0, NULL),
(24, 2, 6, 33, 16, 9, 'Hardi sanipa 10" x 8ft.', 0, '27.00', '0.00', '250.0000', 'pcs.', '6750.0000', 6, 0, NULL, 0, 'PHP', 0, 0, NULL),
(25, 2, 6, 37, 20, 10, 'Metal texscrew 2"', 0, '2000.00', '0.00', '1.5800', 'pcs.', '3160.0000', 7, 0, NULL, 0, 'PHP', 0, 0, NULL),
(26, 2, 6, 53, 13, 14, 'G.I. Pipe', 0, '5.00', '0.00', '3412.0000', 'pcs.', '17060.0000', 8, 0, NULL, 0, 'PHP', 0, 0, NULL),
(27, 2, 6, 89, 23, 24, 'RSB 10mm', 0, '100.00', '0.00', '121.0000', 'pcs.', '12100.0000', 9, 0, NULL, 0, 'PHP', 0, 0, NULL),
(28, 2, 6, 97, 19, 27, 'Marine Plywood 3/4', 0, '3.00', '0.00', '950.0000', 'pcs.', '2850.0000', 10, 0, NULL, 0, 'PHP', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `po_items_revised`
--

CREATE TABLE IF NOT EXISTS `po_items_revised` (
  `po_items_id` int(11) NOT NULL,
  `pr_id` int(11) NOT NULL DEFAULT '0',
  `po_id` int(11) NOT NULL DEFAULT '0',
  `aoq_offer_id` int(11) NOT NULL DEFAULT '0',
  `aoq_items_id` int(11) NOT NULL DEFAULT '0',
  `pr_details_id` int(11) NOT NULL DEFAULT '0',
  `offer` text,
  `item_id` int(11) DEFAULT '0',
  `delivered_quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `unit_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `uom` varchar(50) DEFAULT NULL,
  `amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `item_no` int(11) DEFAULT '0',
  `revision_no` int(11) NOT NULL DEFAULT '0',
  `currency` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `po_items_temp`
--

CREATE TABLE IF NOT EXISTS `po_items_temp` (
`po_items_id` int(11) NOT NULL,
  `pr_id` int(11) NOT NULL DEFAULT '0',
  `po_id` int(11) NOT NULL DEFAULT '0',
  `aoq_offer_id` int(11) NOT NULL DEFAULT '0',
  `aoq_items_id` int(11) NOT NULL DEFAULT '0',
  `pr_details_id` int(11) NOT NULL DEFAULT '0',
  `offer` text,
  `item_id` int(11) DEFAULT '0',
  `delivered_quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `unit_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `uom` varchar(50) DEFAULT NULL,
  `amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `item_no` int(11) DEFAULT '0',
  `source_poid` int(11) NOT NULL DEFAULT '0',
  `notes` text,
  `currency` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `po_pr`
--

CREATE TABLE IF NOT EXISTS `po_pr` (
`po_pr_id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL DEFAULT '0',
  `pr_id` int(11) NOT NULL DEFAULT '0',
  `aoq_id` int(11) NOT NULL DEFAULT '0',
  `enduse` text,
  `purpose` text,
  `requestor` text,
  `notes` text,
  `revision_no` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_pr`
--

INSERT INTO `po_pr` (`po_pr_id`, `po_id`, `pr_id`, `aoq_id`, `enduse`, `purpose`, `requestor`, `notes`, `revision_no`) VALUES
(1, 1, 1, 1, 'Common', 'Energreen Office Building Service Entrance and meter panel application installation', 'Marlon G. Gunday', NULL, 0),
(2, 2, 2, 2, 'Common', 'Materials needed to fabricate of IPRO Building Project', 'Marlon G. Gunday', NULL, 0),
(3, 3, 2, 3, 'Common', 'Materials needed to fabricate of IPRO Building Project', 'Marlon G. Gunday', NULL, 0),
(4, 4, 2, 3, 'Common', 'Materials needed to fabricate of IPRO Building Project', 'Marlon G. Gunday', NULL, 0),
(5, 5, 2, 3, 'Common', 'Materials needed to fabricate of IPRO Building Project', 'Marlon G. Gunday', NULL, 0),
(6, 6, 2, 3, 'Common', 'Materials needed to fabricate of IPRO Building Project', 'Marlon G. Gunday', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `po_pr_revised`
--

CREATE TABLE IF NOT EXISTS `po_pr_revised` (
  `po_pr_id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL DEFAULT '0',
  `pr_id` int(11) NOT NULL DEFAULT '0',
  `aoq_id` int(11) NOT NULL DEFAULT '0',
  `enduse` text,
  `purpose` text,
  `requestor` text,
  `notes` text,
  `revision_no` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `po_series`
--

CREATE TABLE IF NOT EXISTS `po_series` (
`series_id` int(11) NOT NULL,
  `series` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_series`
--

INSERT INTO `po_series` (`series_id`, `series`) VALUES
(1, 1000),
(2, 1001),
(3, 1002),
(4, 1003),
(5, 1004),
(6, 1005);

-- --------------------------------------------------------

--
-- Table structure for table `po_tc`
--

CREATE TABLE IF NOT EXISTS `po_tc` (
`po_tc_id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL DEFAULT '0',
  `tc_desc` text,
  `notes` text,
  `revision_no` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_tc`
--

INSERT INTO `po_tc` (`po_tc_id`, `po_id`, `tc_desc`, `notes`, `revision_no`) VALUES
(1, 1, NULL, 'IMPORTANT REMINDERS:\r\nA. SUPPLIER ACKNOWLEDGMENT REQUIRED\r\n\r\nB. Delivery Instructions:\r\n1. Copy of Approved PO with supplier''s/contractor''s CONFORME must be attached on Delivery Receipts, MIRR & Invoices.\r\n2. Destination: CDPP BUILDING NAPOCOR COMPOUND STA. ISABEL, CALAPAN CITY\r\n\r\nC. NO PAYMENT will be processed for failure to comply with the above mentioned instructions.\r\n', 0);

-- --------------------------------------------------------

--
-- Table structure for table `po_tc_revised`
--

CREATE TABLE IF NOT EXISTS `po_tc_revised` (
  `po_tc_id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL DEFAULT '0',
  `tc_desc` text,
  `notes` text,
  `revision_no` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `po_tc_temp`
--

CREATE TABLE IF NOT EXISTS `po_tc_temp` (
  `po_tc_id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL DEFAULT '0',
  `tc_desc` text,
  `notes` text,
  `revision_no` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project_activity`
--

CREATE TABLE IF NOT EXISTS `project_activity` (
`proj_act_id` int(11) NOT NULL,
  `proj_activity` text,
  `c_remarks` text,
  `duration` varchar(20) DEFAULT NULL,
  `target_start_date` varchar(20) DEFAULT NULL,
  `target_completion` varchar(20) DEFAULT NULL,
  `actual_start` varchar(20) DEFAULT NULL,
  `actual_completion` varchar(20) DEFAULT NULL,
  `est_total_materials` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pr_calendar`
--

CREATE TABLE IF NOT EXISTS `pr_calendar` (
`pr_calendar_id` int(11) NOT NULL,
  `pr_id` int(11) NOT NULL DEFAULT '0',
  `pr_details_id` int(11) NOT NULL DEFAULT '0',
  `proj_act_id` int(11) NOT NULL DEFAULT '0',
  `ver_date_needed` varchar(20) DEFAULT NULL,
  `estimated_price` decimal(12,4) NOT NULL DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pr_details`
--

CREATE TABLE IF NOT EXISTS `pr_details` (
`pr_details_id` int(11) NOT NULL,
  `pr_id` int(11) NOT NULL DEFAULT '0',
  `quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `uom` varchar(100) DEFAULT NULL,
  `part_no` varchar(100) DEFAULT NULL,
  `item_description` text,
  `date_needed` varchar(20) DEFAULT NULL,
  `grouping_id` varchar(5) DEFAULT NULL,
  `wh_stocks` decimal(10,2) NOT NULL DEFAULT '0.00',
  `cancelled` int(11) NOT NULL DEFAULT '0',
  `cancelled_by` int(11) NOT NULL DEFAULT '0',
  `cancelled_reason` text NOT NULL,
  `cancelled_date` varchar(20) NOT NULL,
  `add_remarks` text,
  `remark_date` varchar(20) DEFAULT NULL,
  `remark_by` int(11) NOT NULL DEFAULT '0',
  `item_no` int(11) NOT NULL DEFAULT '0',
  `cancel_remarks` text,
  `company_id` int(11) NOT NULL DEFAULT '0',
  `date_delivered` varchar(20) DEFAULT NULL,
  `for_recom` int(11) NOT NULL DEFAULT '0',
  `fulfilled_by` int(11) NOT NULL DEFAULT '0',
  `on_hold` int(11) NOT NULL DEFAULT '0',
  `onhold_date` varchar(20) DEFAULT NULL,
  `onhold_by` int(11) NOT NULL DEFAULT '0',
  `qty_delivered` int(11) NOT NULL DEFAULT '0',
  `recom_by` int(11) NOT NULL DEFAULT '0',
  `recom_date_from` varchar(20) DEFAULT NULL,
  `recom_date_to` varchar(20) DEFAULT NULL,
  `recom_date` varchar(20) DEFAULT NULL,
  `unit_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `terms_id` int(11) NOT NULL DEFAULT '0',
  `work_duration` varchar(255) DEFAULT NULL,
  `recom_unit_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `recom_qty` decimal(12,4) NOT NULL DEFAULT '0.0000'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pr_details`
--

INSERT INTO `pr_details` (`pr_details_id`, `pr_id`, `quantity`, `uom`, `part_no`, `item_description`, `date_needed`, `grouping_id`, `wh_stocks`, `cancelled`, `cancelled_by`, `cancelled_reason`, `cancelled_date`, `add_remarks`, `remark_date`, `remark_by`, `item_no`, `cancel_remarks`, `company_id`, `date_delivered`, `for_recom`, `fulfilled_by`, `on_hold`, `onhold_date`, `onhold_by`, `qty_delivered`, `recom_by`, `recom_date_from`, `recom_date_to`, `recom_date`, `unit_price`, `vendor_id`, `terms_id`, `work_duration`, `recom_unit_price`, `recom_qty`) VALUES
(1, 1, '1.00', 'pc.', '', 'Panel box bolt on 8 holes (Kotten Brand)', '2020-01-20', 'P', '0.00', 0, 0, '', '', NULL, NULL, 0, 1, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(2, 1, '1.00', 'pc.', '', 'Carbon brush for Grinder (CB-459)', '2020-01-20', 'C', '0.00', 0, 0, '', '', NULL, NULL, 0, 2, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(3, 2, '67.00', 'pcs.', '', 'C. Purlims 2 x 4 x 20ft.', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 1, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(4, 2, '23.00', 'pcs.', '', 'Angle bar 1/4 x 2 x 20ft.', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 2, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(5, 2, '58.00', 'pcs.', '', 'Yero 12 ft.', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 3, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(6, 2, '58.00', 'pcs.', '', 'Yero 9 ft.', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 4, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(7, 2, '9.00', 'pcs.', '', 'Ridge roll', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 5, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(8, 2, '18.00', 'pcs.', '', 'Box gutter', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 6, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(9, 2, '27.00', 'pcs.', '', 'Hardi sanipa 10" x 8ft.', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 7, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(10, 2, '2000.00', 'pcs.', '', 'Metal texscrew 2"', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 8, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(11, 2, '3.00', 'gals.', '', 'Epoxy primer', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 9, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(12, 2, '1.00', 'gal.', '', 'Lacquer thinner', '2020-07-15', 'A', '3.00', 0, 0, '', '', NULL, NULL, 0, 10, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(13, 2, '2.00', 'pcs.', '', 'Paint brush 2"', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 11, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(14, 2, '5.00', 'pcs.', '', 'G.I. Pipe', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 12, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(15, 2, '1.00', 'kilo', '', 'Welding rod (6013)', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 13, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(16, 2, '1.00', 'kilo', '', 'Welding rod (6011)', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 14, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(17, 2, '1.00', 'set', '', 'Acetylene / Oxygen', '2020-07-15', 'B', '0.00', 0, 0, '', '', NULL, NULL, 0, 15, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(18, 2, '1.00', 'pc.', '', 'Cut of blade 14"', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 16, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(19, 2, '10.00', 'pcs.', '', 'Cutting disk 4"', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 17, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(20, 2, '600.00', 'pcs.', '', 'CHB 4"', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 18, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(21, 2, '10.00', 'cm3', '', 'Sand', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 19, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(22, 2, '10.00', 'cm3', '', 'Gravel', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 20, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(23, 2, '120.00', 'bags', '', 'Cement', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 21, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(24, 2, '100.00', 'pcs.', '', 'RSB 10mm', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 22, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(25, 2, '2.00', 'pcs.', '', 'I Beam 4 x 6 x 20ft.', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 23, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(26, 2, '3.00', 'kls.', '', 'Tie wire #16', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 24, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(27, 2, '3.00', 'pcs.', '', 'Marine Plywood 3/4', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 25, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(28, 2, '2.00', 'kls.', '', 'CWN 2"', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 26, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(29, 2, '4.00', 'rolls', '', 'Cyclone wire', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 27, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000'),
(30, 2, '11.00', 'pcs.', '', 'G.I. Pipe 1" x 6 meters', '2020-07-15', 'A', '0.00', 0, 0, '', '', NULL, NULL, 0, 28, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '0.0000', 0, 0, NULL, '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `pr_head`
--

CREATE TABLE IF NOT EXISTS `pr_head` (
`pr_id` int(11) NOT NULL,
  `user_pr_no` varchar(50) DEFAULT NULL,
  `pr_no` varchar(50) DEFAULT NULL,
  `purchase_request` varchar(150) DEFAULT NULL,
  `date_prepared` varchar(20) DEFAULT NULL,
  `requestor` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `enduse` varchar(255) DEFAULT NULL,
  `purpose` text,
  `urgency` int(11) NOT NULL DEFAULT '0',
  `processing_code` varchar(20) DEFAULT NULL,
  `date_imported` varchar(20) DEFAULT NULL,
  `imported_by` int(11) NOT NULL DEFAULT '0',
  `saved` int(11) NOT NULL DEFAULT '0',
  `cancelled` int(11) NOT NULL DEFAULT '0',
  `cancelled_reason` text,
  `cancelled_by` int(11) NOT NULL DEFAULT '0',
  `cancelled_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pr_head`
--

INSERT INTO `pr_head` (`pr_id`, `user_pr_no`, `pr_no`, `purchase_request`, `date_prepared`, `requestor`, `department`, `enduse`, `purpose`, `urgency`, `processing_code`, `date_imported`, `imported_by`, `saved`, `cancelled`, `cancelled_reason`, `cancelled_by`, `cancelled_date`) VALUES
(1, NULL, 'ADE20-1000', 'CALAPAN-ORIENTAL MINDORO', '2020-01-09', 'Marlon G. Gunday', 'Admin', 'Common', 'Energreen Office Building Service Entrance and meter panel application installation', 0, '', '2020-04-16 11:09:41', 3, 1, 0, NULL, 0, NULL),
(2, NULL, 'ADE20-1001', 'CALAPAN-ORIENTAL MINDORO', '2020-06-15', 'Marlon G. Gunday', 'Admin', 'Common', 'Materials needed to fabricate of IPRO Building Project', 0, '', '2020-06-19 10:40:33', 3, 1, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pr_series`
--

CREATE TABLE IF NOT EXISTS `pr_series` (
`pr_series_id` int(11) NOT NULL,
  `series_no` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pr_series`
--

INSERT INTO `pr_series` (`pr_series_id`, `series_no`) VALUES
(1, 1000),
(2, 1001);

-- --------------------------------------------------------

--
-- Table structure for table `pr_vendors`
--

CREATE TABLE IF NOT EXISTS `pr_vendors` (
`pr_vendors_id` int(11) NOT NULL,
  `pr_id` int(11) NOT NULL DEFAULT '0',
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `grouping_id` varchar(5) DEFAULT NULL,
  `due_date` varchar(20) DEFAULT NULL,
  `noted_by` int(11) NOT NULL,
  `approved_by` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pr_vendors`
--

INSERT INTO `pr_vendors` (`pr_vendors_id`, `pr_id`, `vendor_id`, `grouping_id`, `due_date`, `noted_by`, `approved_by`) VALUES
(1, 1, 1476, 'P', '', 2, 3),
(2, 1, 1482, 'P', '', 2, 3),
(3, 1, 387, 'P', '', 2, 3),
(4, 2, 1491, 'B', '', 3, 3),
(5, 2, 584, 'B', '', 3, 3),
(6, 2, 1483, 'A', '', 3, 3),
(7, 2, 1505, 'A', '', 3, 3),
(8, 2, 1488, 'A', '', 3, 3),
(9, 2, 1487, 'A', '', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `reminder`
--

CREATE TABLE IF NOT EXISTS `reminder` (
`reminder_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notes` text,
  `create_date` varchar(20) DEFAULT NULL,
  `due_date` varchar(20) DEFAULT NULL,
  `done` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rfd`
--

CREATE TABLE IF NOT EXISTS `rfd` (
`rfd_id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL DEFAULT '0',
  `apv_no` varchar(50) DEFAULT NULL,
  `rfd_date` varchar(20) DEFAULT NULL,
  `due_date` varchar(20) DEFAULT NULL,
  `check_due` varchar(20) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `pay_to` int(11) NOT NULL DEFAULT '0',
  `check_name` varchar(255) DEFAULT NULL,
  `cash_check` int(11) NOT NULL DEFAULT '0' COMMENT '1=cash, 2= check',
  `bank_no` varchar(100) DEFAULT NULL,
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `rfd_type` int(11) NOT NULL DEFAULT '0' COMMENT '0=po, 1=direct purchase',
  `notes` text,
  `checked_by` int(11) NOT NULL DEFAULT '0',
  `endorsed_by` int(11) NOT NULL DEFAULT '0',
  `approved_by` int(11) NOT NULL DEFAULT '0',
  `noted_by` int(11) DEFAULT '0',
  `received_by` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `saved` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rfd_items`
--

CREATE TABLE IF NOT EXISTS `rfd_items` (
`rfd_items_id` int(11) NOT NULL,
  `rfd_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `unit_price` decimal(12,4) NOT NULL DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rfd_purpose`
--

CREATE TABLE IF NOT EXISTS `rfd_purpose` (
`rfd_purpose_id` int(11) NOT NULL,
  `rfd_id` int(11) NOT NULL DEFAULT '0',
  `purpose` text,
  `requestor` int(11) NOT NULL DEFAULT '0',
  `enduse` text,
  `notes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rfq_details`
--

CREATE TABLE IF NOT EXISTS `rfq_details` (
`rfq_details_id` int(11) NOT NULL,
  `rfq_id` int(11) NOT NULL DEFAULT '0',
  `pr_details_id` int(11) NOT NULL DEFAULT '0',
  `pn_no` varchar(100) DEFAULT NULL,
  `item_desc` text,
  `quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `uom` varchar(50) DEFAULT NULL,
  `offer` text,
  `recommended` text,
  `unit_price` decimal(12,4) NOT NULL DEFAULT '0.0000'
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rfq_details`
--

INSERT INTO `rfq_details` (`rfq_details_id`, `rfq_id`, `pr_details_id`, `pn_no`, `item_desc`, `quantity`, `uom`, `offer`, `recommended`, `unit_price`) VALUES
(1, 1, 1, '', 'Panel box bolt on 8 holes (Kotten Brand)', '1.00', 'pc.', NULL, NULL, '0.0000'),
(2, 2, 1, '', 'Panel box bolt on 8 holes (Kotten Brand)', '1.00', 'pc.', NULL, NULL, '0.0000'),
(3, 3, 1, '', 'Panel box bolt on 8 holes (Kotten Brand)', '1.00', 'pc.', NULL, NULL, '0.0000'),
(4, 4, 17, '', 'Acetylene / Oxygen', '1.00', 'set', NULL, NULL, '0.0000'),
(5, 5, 17, '', 'Acetylene / Oxygen', '1.00', 'set', NULL, NULL, '0.0000'),
(6, 6, 3, '', 'C. Purlims 2 x 4 x 20ft.', '67.00', 'pcs.', NULL, NULL, '0.0000'),
(7, 6, 4, '', 'Angle bar 1/4 x 2 x 20ft.', '23.00', 'pcs.', NULL, NULL, '0.0000'),
(8, 6, 5, '', 'Yero 12 ft.', '58.00', 'pcs.', NULL, NULL, '0.0000'),
(9, 6, 6, '', 'Yero 9 ft.', '58.00', 'pcs.', NULL, NULL, '0.0000'),
(10, 6, 7, '', 'Ridge roll', '9.00', 'pcs.', NULL, NULL, '0.0000'),
(11, 6, 8, '', 'Box gutter', '18.00', 'pcs.', NULL, NULL, '0.0000'),
(12, 6, 9, '', 'Hardi sanipa 10" x 8ft.', '27.00', 'pcs.', NULL, NULL, '0.0000'),
(13, 6, 10, '', 'Metal texscrew 2"', '2000.00', 'pcs.', NULL, NULL, '0.0000'),
(14, 6, 11, '', 'Epoxy primer', '3.00', 'gals.', NULL, NULL, '0.0000'),
(15, 6, 12, '', 'Lacquer thinner', '1.00', 'gal.', NULL, NULL, '0.0000'),
(16, 6, 13, '', 'Paint brush 2"', '2.00', 'pcs.', NULL, NULL, '0.0000'),
(17, 6, 14, '', 'G.I. Pipe', '5.00', 'pcs.', NULL, NULL, '0.0000'),
(18, 6, 15, '', 'Welding rod (6013)', '1.00', 'kilo', NULL, NULL, '0.0000'),
(19, 6, 16, '', 'Welding rod (6011)', '1.00', 'kilo', NULL, NULL, '0.0000'),
(20, 6, 18, '', 'Cut of blade 14"', '1.00', 'pc.', NULL, NULL, '0.0000'),
(21, 6, 19, '', 'Cutting disk 4"', '10.00', 'pcs.', NULL, NULL, '0.0000'),
(22, 6, 20, '', 'CHB 4"', '600.00', 'pcs.', NULL, NULL, '0.0000'),
(23, 6, 21, '', 'Sand', '10.00', 'cm3', NULL, NULL, '0.0000'),
(24, 6, 22, '', 'Gravel', '10.00', 'cm3', NULL, NULL, '0.0000'),
(25, 6, 23, '', 'Cement', '120.00', 'bags', NULL, NULL, '0.0000'),
(26, 6, 24, '', 'RSB 10mm', '100.00', 'pcs.', NULL, NULL, '0.0000'),
(27, 6, 25, '', 'I Beam 4 x 6 x 20ft.', '2.00', 'pcs.', NULL, NULL, '0.0000'),
(28, 6, 26, '', 'Tie wire #16', '3.00', 'kls.', NULL, NULL, '0.0000'),
(29, 6, 27, '', 'Marine Plywood 3/4', '3.00', 'pcs.', NULL, NULL, '0.0000'),
(30, 6, 28, '', 'CWN 2"', '2.00', 'kls.', NULL, NULL, '0.0000'),
(31, 6, 29, '', 'Cyclone wire', '4.00', 'rolls', NULL, NULL, '0.0000'),
(32, 6, 30, '', 'G.I. Pipe 1" x 6 meters', '11.00', 'pcs.', NULL, NULL, '0.0000'),
(33, 7, 3, '', 'C. Purlims 2 x 4 x 20ft.', '67.00', 'pcs.', NULL, NULL, '0.0000'),
(34, 7, 4, '', 'Angle bar 1/4 x 2 x 20ft.', '23.00', 'pcs.', NULL, NULL, '0.0000'),
(35, 7, 5, '', 'Yero 12 ft.', '58.00', 'pcs.', NULL, NULL, '0.0000'),
(36, 7, 6, '', 'Yero 9 ft.', '58.00', 'pcs.', NULL, NULL, '0.0000'),
(37, 7, 7, '', 'Ridge roll', '9.00', 'pcs.', NULL, NULL, '0.0000'),
(38, 7, 8, '', 'Box gutter', '18.00', 'pcs.', NULL, NULL, '0.0000'),
(39, 7, 9, '', 'Hardi sanipa 10" x 8ft.', '27.00', 'pcs.', NULL, NULL, '0.0000'),
(40, 7, 10, '', 'Metal texscrew 2"', '2000.00', 'pcs.', NULL, NULL, '0.0000'),
(41, 7, 11, '', 'Epoxy primer', '3.00', 'gals.', NULL, NULL, '0.0000'),
(42, 7, 12, '', 'Lacquer thinner', '1.00', 'gal.', NULL, NULL, '0.0000'),
(43, 7, 13, '', 'Paint brush 2"', '2.00', 'pcs.', NULL, NULL, '0.0000'),
(44, 7, 14, '', 'G.I. Pipe', '5.00', 'pcs.', NULL, NULL, '0.0000'),
(45, 7, 15, '', 'Welding rod (6013)', '1.00', 'kilo', NULL, NULL, '0.0000'),
(46, 7, 16, '', 'Welding rod (6011)', '1.00', 'kilo', NULL, NULL, '0.0000'),
(47, 7, 18, '', 'Cut of blade 14"', '1.00', 'pc.', NULL, NULL, '0.0000'),
(48, 7, 19, '', 'Cutting disk 4"', '10.00', 'pcs.', NULL, NULL, '0.0000'),
(49, 7, 20, '', 'CHB 4"', '600.00', 'pcs.', NULL, NULL, '0.0000'),
(50, 7, 21, '', 'Sand', '10.00', 'cm3', NULL, NULL, '0.0000'),
(51, 7, 22, '', 'Gravel', '10.00', 'cm3', NULL, NULL, '0.0000'),
(52, 7, 23, '', 'Cement', '120.00', 'bags', NULL, NULL, '0.0000'),
(53, 7, 24, '', 'RSB 10mm', '100.00', 'pcs.', NULL, NULL, '0.0000'),
(54, 7, 25, '', 'I Beam 4 x 6 x 20ft.', '2.00', 'pcs.', NULL, NULL, '0.0000'),
(55, 7, 26, '', 'Tie wire #16', '3.00', 'kls.', NULL, NULL, '0.0000'),
(56, 7, 27, '', 'Marine Plywood 3/4', '3.00', 'pcs.', NULL, NULL, '0.0000'),
(57, 7, 28, '', 'CWN 2"', '2.00', 'kls.', NULL, NULL, '0.0000'),
(58, 7, 29, '', 'Cyclone wire', '4.00', 'rolls', NULL, NULL, '0.0000'),
(59, 7, 30, '', 'G.I. Pipe 1" x 6 meters', '11.00', 'pcs.', NULL, NULL, '0.0000'),
(60, 8, 3, '', 'C. Purlims 2 x 4 x 20ft.', '67.00', 'pcs.', NULL, NULL, '0.0000'),
(61, 8, 4, '', 'Angle bar 1/4 x 2 x 20ft.', '23.00', 'pcs.', NULL, NULL, '0.0000'),
(62, 8, 5, '', 'Yero 12 ft.', '58.00', 'pcs.', NULL, NULL, '0.0000'),
(63, 8, 6, '', 'Yero 9 ft.', '58.00', 'pcs.', NULL, NULL, '0.0000'),
(64, 8, 7, '', 'Ridge roll', '9.00', 'pcs.', NULL, NULL, '0.0000'),
(65, 8, 8, '', 'Box gutter', '18.00', 'pcs.', NULL, NULL, '0.0000'),
(66, 8, 9, '', 'Hardi sanipa 10" x 8ft.', '27.00', 'pcs.', NULL, NULL, '0.0000'),
(67, 8, 10, '', 'Metal texscrew 2"', '2000.00', 'pcs.', NULL, NULL, '0.0000'),
(68, 8, 11, '', 'Epoxy primer', '3.00', 'gals.', NULL, NULL, '0.0000'),
(69, 8, 12, '', 'Lacquer thinner', '1.00', 'gal.', NULL, NULL, '0.0000'),
(70, 8, 13, '', 'Paint brush 2"', '2.00', 'pcs.', NULL, NULL, '0.0000'),
(71, 8, 14, '', 'G.I. Pipe', '5.00', 'pcs.', NULL, NULL, '0.0000'),
(72, 8, 15, '', 'Welding rod (6013)', '1.00', 'kilo', NULL, NULL, '0.0000'),
(73, 8, 16, '', 'Welding rod (6011)', '1.00', 'kilo', NULL, NULL, '0.0000'),
(74, 8, 18, '', 'Cut of blade 14"', '1.00', 'pc.', NULL, NULL, '0.0000'),
(75, 8, 19, '', 'Cutting disk 4"', '10.00', 'pcs.', NULL, NULL, '0.0000'),
(76, 8, 20, '', 'CHB 4"', '600.00', 'pcs.', NULL, NULL, '0.0000'),
(77, 8, 21, '', 'Sand', '10.00', 'cm3', NULL, NULL, '0.0000'),
(78, 8, 22, '', 'Gravel', '10.00', 'cm3', NULL, NULL, '0.0000'),
(79, 8, 23, '', 'Cement', '120.00', 'bags', NULL, NULL, '0.0000'),
(80, 8, 24, '', 'RSB 10mm', '100.00', 'pcs.', NULL, NULL, '0.0000'),
(81, 8, 25, '', 'I Beam 4 x 6 x 20ft.', '2.00', 'pcs.', NULL, NULL, '0.0000'),
(82, 8, 26, '', 'Tie wire #16', '3.00', 'kls.', NULL, NULL, '0.0000'),
(83, 8, 27, '', 'Marine Plywood 3/4', '3.00', 'pcs.', NULL, NULL, '0.0000'),
(84, 8, 28, '', 'CWN 2"', '2.00', 'kls.', NULL, NULL, '0.0000'),
(85, 8, 29, '', 'Cyclone wire', '4.00', 'rolls', NULL, NULL, '0.0000'),
(86, 8, 30, '', 'G.I. Pipe 1" x 6 meters', '11.00', 'pcs.', NULL, NULL, '0.0000'),
(87, 9, 3, '', 'C. Purlims 2 x 4 x 20ft.', '67.00', 'pcs.', NULL, NULL, '0.0000'),
(88, 9, 4, '', 'Angle bar 1/4 x 2 x 20ft.', '23.00', 'pcs.', NULL, NULL, '0.0000'),
(89, 9, 5, '', 'Yero 12 ft.', '58.00', 'pcs.', NULL, NULL, '0.0000'),
(90, 9, 6, '', 'Yero 9 ft.', '58.00', 'pcs.', NULL, NULL, '0.0000'),
(91, 9, 7, '', 'Ridge roll', '9.00', 'pcs.', NULL, NULL, '0.0000'),
(92, 9, 8, '', 'Box gutter', '18.00', 'pcs.', NULL, NULL, '0.0000'),
(93, 9, 9, '', 'Hardi sanipa 10" x 8ft.', '27.00', 'pcs.', NULL, NULL, '0.0000'),
(94, 9, 10, '', 'Metal texscrew 2"', '2000.00', 'pcs.', NULL, NULL, '0.0000'),
(95, 9, 11, '', 'Epoxy primer', '3.00', 'gals.', NULL, NULL, '0.0000'),
(96, 9, 12, '', 'Lacquer thinner', '1.00', 'gal.', NULL, NULL, '0.0000'),
(97, 9, 13, '', 'Paint brush 2"', '2.00', 'pcs.', NULL, NULL, '0.0000'),
(98, 9, 14, '', 'G.I. Pipe', '5.00', 'pcs.', NULL, NULL, '0.0000'),
(99, 9, 15, '', 'Welding rod (6013)', '1.00', 'kilo', NULL, NULL, '0.0000'),
(100, 9, 16, '', 'Welding rod (6011)', '1.00', 'kilo', NULL, NULL, '0.0000'),
(101, 9, 18, '', 'Cut of blade 14"', '1.00', 'pc.', NULL, NULL, '0.0000'),
(102, 9, 19, '', 'Cutting disk 4"', '10.00', 'pcs.', NULL, NULL, '0.0000'),
(103, 9, 20, '', 'CHB 4"', '600.00', 'pcs.', NULL, NULL, '0.0000'),
(104, 9, 21, '', 'Sand', '10.00', 'cm3', NULL, NULL, '0.0000'),
(105, 9, 22, '', 'Gravel', '10.00', 'cm3', NULL, NULL, '0.0000'),
(106, 9, 23, '', 'Cement', '120.00', 'bags', NULL, NULL, '0.0000'),
(107, 9, 24, '', 'RSB 10mm', '100.00', 'pcs.', NULL, NULL, '0.0000'),
(108, 9, 25, '', 'I Beam 4 x 6 x 20ft.', '2.00', 'pcs.', NULL, NULL, '0.0000'),
(109, 9, 26, '', 'Tie wire #16', '3.00', 'kls.', NULL, NULL, '0.0000'),
(110, 9, 27, '', 'Marine Plywood 3/4', '3.00', 'pcs.', NULL, NULL, '0.0000'),
(111, 9, 28, '', 'CWN 2"', '2.00', 'kls.', NULL, NULL, '0.0000'),
(112, 9, 29, '', 'Cyclone wire', '4.00', 'rolls', NULL, NULL, '0.0000'),
(113, 9, 30, '', 'G.I. Pipe 1" x 6 meters', '11.00', 'pcs.', NULL, NULL, '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `rfq_head`
--

CREATE TABLE IF NOT EXISTS `rfq_head` (
`rfq_id` int(11) NOT NULL,
  `rfq_no` varchar(50) DEFAULT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `pr_id` int(11) NOT NULL DEFAULT '0',
  `grouping_id` varchar(5) DEFAULT NULL,
  `rfq_date` varchar(20) DEFAULT NULL,
  `quotation_date` varchar(20) DEFAULT NULL,
  `price_validity` varchar(100) DEFAULT NULL,
  `payment_terms` varchar(100) DEFAULT NULL,
  `delivery_date` varchar(20) DEFAULT NULL,
  `item_warranty` varchar(100) DEFAULT NULL,
  `tin` varchar(50) DEFAULT NULL,
  `vat` varchar(50) DEFAULT NULL,
  `notes` text,
  `processing_code` varchar(5) DEFAULT NULL,
  `prepared_by` int(11) NOT NULL DEFAULT '0',
  `noted_by` int(11) NOT NULL DEFAULT '0',
  `approved_by` int(11) NOT NULL DEFAULT '0',
  `create_date` varchar(20) DEFAULT NULL,
  `saved` int(11) NOT NULL DEFAULT '0',
  `completed` int(11) NOT NULL DEFAULT '0',
  `served` int(11) NOT NULL DEFAULT '0',
  `cancelled` int(11) NOT NULL DEFAULT '0',
  `cancel_reason` text,
  `cancelled_date` varchar(20) DEFAULT NULL,
  `cancelled_by` int(11) NOT NULL DEFAULT '0',
  `pn_no` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rfq_head`
--

INSERT INTO `rfq_head` (`rfq_id`, `rfq_no`, `vendor_id`, `pr_id`, `grouping_id`, `rfq_date`, `quotation_date`, `price_validity`, `payment_terms`, `delivery_date`, `item_warranty`, `tin`, `vat`, `notes`, `processing_code`, `prepared_by`, `noted_by`, `approved_by`, `create_date`, `saved`, `completed`, `served`, `cancelled`, `cancel_reason`, `cancelled_date`, `cancelled_by`, `pn_no`) VALUES
(1, '202004-1001-P', 1476, 1, 'P', '2020-04-16 14:08:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 3, 2, 3, '2020-04-16 14:08:15', 1, 1, 0, 0, NULL, NULL, 0, NULL),
(2, '202004-1002-P', 1482, 1, 'P', '2020-04-16 14:08:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 3, 2, 3, '2020-04-16 14:08:55', 1, 1, 0, 0, NULL, NULL, 0, NULL),
(3, '202004-1003-P', 387, 1, 'P', '2020-04-16 14:09:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 3, 2, 3, '2020-04-16 14:09:19', 1, 1, 0, 0, NULL, NULL, 0, NULL),
(4, '202007-1001-B', 1491, 2, 'B', '2020-07-07 11:06:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 3, 3, 3, '2020-07-07 11:06:40', 1, 1, 0, 0, NULL, NULL, 0, NULL),
(5, '202007-1004-B', 584, 2, 'B', '2020-07-07 11:07:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 3, 3, 3, '2020-07-07 11:07:03', 1, 1, 0, 0, NULL, NULL, 0, NULL),
(6, '202007-1005-A', 1483, 2, 'A', '2020-07-07 11:21:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 3, 3, 3, '2020-07-07 11:21:32', 1, 1, 0, 0, NULL, NULL, 0, NULL),
(7, '202007-1006-A', 1505, 2, 'A', '2020-07-07 11:21:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 3, 3, 3, '2020-07-07 11:21:53', 1, 1, 0, 0, NULL, NULL, 0, NULL),
(8, '202007-1007-A', 1488, 2, 'A', '2020-07-07 11:22:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 3, 3, 3, '2020-07-07 11:22:22', 1, 1, 0, 0, NULL, NULL, 0, NULL),
(9, '202007-1008-A', 1487, 2, 'A', '2020-07-07 11:22:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 3, 3, 3, '2020-07-07 11:22:44', 1, 1, 0, 0, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rfq_series`
--

CREATE TABLE IF NOT EXISTS `rfq_series` (
`rfq_series_id` int(11) NOT NULL,
  `year_month` varchar(20) DEFAULT NULL,
  `series` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rfq_series`
--

INSERT INTO `rfq_series` (`rfq_series_id`, `year_month`, `series`) VALUES
(1, '202004', 1001),
(2, '202004', 1002),
(3, '202004', 1003),
(4, '202007', 1001),
(5, '202007', 1004),
(6, '202007', 1005),
(7, '202007', 1006),
(8, '202007', 1007),
(9, '202007', 1008);

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE IF NOT EXISTS `terms` (
`terms_id` int(11) NOT NULL,
  `terms` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`terms_id`, `terms`) VALUES
(1, 'COD'),
(2, '15 days PDC'),
(3, '20 days PDC'),
(4, '30 days PDC'),
(5, '60 days PDC');

-- --------------------------------------------------------

--
-- Table structure for table `to_do_today`
--

CREATE TABLE IF NOT EXISTS `to_do_today` (
`todo_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notes` text,
  `create_date` varchar(20) DEFAULT NULL,
  `due_date` varchar(20) DEFAULT NULL,
  `done` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE IF NOT EXISTS `unit` (
`unit_id` int(11) NOT NULL,
  `unit_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(11) NOT NULL,
  `usertype_id` int(11) unsigned NOT NULL DEFAULT '0',
  `fullname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `usertype_id`, `fullname`, `username`, `password`) VALUES
(1, 1, 'Jonah Benares', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 1, 'Rochelle Laya', 'chelaya', 'de6bd9d49a9484960810a8c24079a855'),
(3, 1, 'Elaine Dela Cruz', 'elaineenergreen', 'elaine123');

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE IF NOT EXISTS `usertype` (
`usertype_id` int(11) NOT NULL,
  `usertype_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`usertype_id`, `usertype_name`) VALUES
(1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_details`
--

CREATE TABLE IF NOT EXISTS `vendor_details` (
`vendordet_id` int(11) NOT NULL,
  `vendor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_details`
--

INSERT INTO `vendor_details` (`vendordet_id`, `vendor_id`, `item_id`) VALUES
(3, 387, 3),
(5, 584, 5),
(1, 1476, 1),
(2, 1482, 2),
(6, 1483, 6),
(10, 1483, 10),
(14, 1483, 14),
(18, 1483, 18),
(22, 1483, 22),
(26, 1483, 26),
(30, 1483, 30),
(34, 1483, 34),
(38, 1483, 38),
(42, 1483, 42),
(46, 1483, 46),
(50, 1483, 50),
(54, 1483, 54),
(58, 1483, 58),
(62, 1483, 62),
(66, 1483, 66),
(70, 1483, 70),
(74, 1483, 74),
(78, 1483, 78),
(82, 1483, 82),
(86, 1483, 86),
(90, 1483, 90),
(94, 1483, 94),
(98, 1483, 98),
(102, 1483, 102),
(106, 1483, 106),
(9, 1487, 9),
(13, 1487, 13),
(17, 1487, 17),
(21, 1487, 21),
(25, 1487, 25),
(29, 1487, 29),
(33, 1487, 33),
(37, 1487, 37),
(41, 1487, 41),
(45, 1487, 45),
(49, 1487, 49),
(53, 1487, 53),
(57, 1487, 57),
(61, 1487, 61),
(65, 1487, 65),
(69, 1487, 69),
(73, 1487, 73),
(77, 1487, 77),
(81, 1487, 81),
(85, 1487, 85),
(89, 1487, 89),
(93, 1487, 93),
(97, 1487, 97),
(101, 1487, 101),
(105, 1487, 105),
(109, 1487, 109),
(8, 1488, 8),
(12, 1488, 12),
(16, 1488, 16),
(20, 1488, 20),
(24, 1488, 24),
(28, 1488, 28),
(32, 1488, 32),
(36, 1488, 36),
(40, 1488, 40),
(44, 1488, 44),
(48, 1488, 48),
(52, 1488, 52),
(56, 1488, 56),
(60, 1488, 60),
(64, 1488, 64),
(68, 1488, 68),
(72, 1488, 72),
(76, 1488, 76),
(80, 1488, 80),
(84, 1488, 84),
(88, 1488, 88),
(92, 1488, 92),
(96, 1488, 96),
(100, 1488, 100),
(104, 1488, 104),
(108, 1488, 108),
(4, 1491, 4),
(7, 1505, 7),
(11, 1505, 11),
(15, 1505, 15),
(19, 1505, 19),
(23, 1505, 23),
(27, 1505, 27),
(31, 1505, 31),
(35, 1505, 35),
(39, 1505, 39),
(43, 1505, 43),
(47, 1505, 47),
(51, 1505, 51),
(55, 1505, 55),
(59, 1505, 59),
(63, 1505, 63),
(67, 1505, 67),
(71, 1505, 71),
(75, 1505, 75),
(79, 1505, 79),
(83, 1505, 83),
(87, 1505, 87),
(91, 1505, 91),
(95, 1505, 95),
(99, 1505, 99),
(103, 1505, 103),
(107, 1505, 107);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_head`
--

CREATE TABLE IF NOT EXISTS `vendor_head` (
`vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `product_services` text,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `address` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `fax_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `terms` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `notes` text,
  `status` varchar(100) DEFAULT NULL,
  `ewt` decimal(10,2) NOT NULL DEFAULT '0.00',
  `vat` int(11) NOT NULL DEFAULT '0',
  `tin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1679 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_head`
--

INSERT INTO `vendor_head` (`vendor_id`, `vendor_name`, `product_services`, `category_id`, `address`, `phone_number`, `mobile_number`, `fax_number`, `email`, `terms`, `type`, `contact_person`, `notes`, `status`, `ewt`, `vat`, `tin`) VALUES
(1, '2GO Express, Inc.', 'Forwarder', 0, 'BREDCO, Port 2, Reclamation Area, Brgy. 10, Bacolod City', '(034) 435-4965 / 704-2039 / 704-2396', '', '', '', 'Freight Collect / Prepaid', 'Forwarder', 'Ms Apple/Ms Liza', '', 'Active', '2.00', 1, ''),
(2, '7RJ Brothers Sand & Gravel & Gen. Mdse.', 'Aggregates', 0, 'Circumferential Road, Brgy. Villamonte, Bacolod City', '(034)458-0190/213-2249', '', '', '', 'COD-Actual Quantity (delivered to site)', 'Manufacturer/Supplier', 'Ms. Tata', '', 'Active', '1.00', 1, ''),
(3, 'A.C. Parts Merchandising', '', 12, 'Gonzaga Street - Tifanny Bldg, Brgy. 24, Bacolod City', '(034) 433-2512', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(4, 'A-1 Gas Corporation', 'Industrial Gas', 0, 'Alijis, Bacolod City', '434-0708; 433-3637; 433-3638; 432-2079', '', '434-4670', 'negrosa_1gascorp@yahoo.com', 'COD', 'Manufacturer', 'Ms. Mary', '', 'Active', '1.00', 1, ''),
(5, 'AA Electrical Supply', 'Electrical Supplies', 3, 'C & L Bldg., Lacson-Luzuriaga St., BC', '435-3811; 432-3712; 708-1212', '', '434-7736', '', 'COD', '30 days PDC ', 'Sir Rene ', '', 'Active', '1.00', 1, ''),
(6, 'Ablao Enterprises', 'Aggregates', 0, 'Bago City', '461-0376', '', '', '', 'COD ', '', '', '', 'Active', '1.00', 0, ''),
(7, 'Abomar Equipment Sales Corporation', 'Heavy Equipment    ', 9, 'Lacson Ext., Cor. Goldenfield Sts. Liroville Subd, Singcang, Bacolod City', '433-1687; 432-3673', '0917-720-2153', '432-3673', 'sales@abomar.net', '', '           ', 'Danilo Palomar', '', 'Active', '1.00', 1, ''),
(9, 'Ace Hardware Philippines, Inc. - Bacolod Branch', 'Hardware, Bulbs, Tools', 0, 'SM Megamall Bldg., Cor. Edsa, Wakwak Greenhills NCR, 2nd District, Mandaluyong City, 1550', '(034) 468 0135', '', '', '', 'Cash, Check Payment subject for clearing', '', '', 'TIN Number: 200-035-311-000', 'Active', '1.00', 1, ''),
(10, 'Ace Rubber Manufacturing and Marketing Corp.', 'Rubber Fabricator', 0, 'Galo Street, Bacolod City', '(034)433-2145', '', '', '', 'COD', 'Manufacturer / Fabricator (Rubber)', 'Sir Ike/Ms. Carla', '', 'Active', '1.00', 1, ''),
(11, 'Agro Star Industrial Trading Corp', 'Welding Machine, Water Pumps', 2, 'Lacson-Luzuriaga, Bacolod City', '441-3624', '', '441-3624', '', '', '', 'Allan Lapastora/Jenny Mayuno', '', 'Active', '1.00', 1, ''),
(13, 'AIC Marketing', 'PRODUCTS 1. Kings Safety Products-Kings Safety Shoes 2. Testo Electronic Measurement 3. OMNI Lightning & Wiring Devices 4. Aircon, Auto Aircon & Refrigeration Spare parts, motor compressor  5. Installer, Dealer & Service Center of Koppel & Everest Brand Aircon 6. Installer of all type of Air Conditioing Unit 7. Danfoss Products 8. Pressure Gauges, Vacuum & Thermometers 9. Industrial, Repair and Maintenance Chemicals (LPS & Alchem Brand) 10. Safety Products: Hard Hat, Gloves, Welding Jackets and Apron, Masks & Respirators, Goggles, Visitors, Spectacles, Earplugs & Earmuff 11. Hydraulic and Industrial hoses and fittings 12. Roller chain, V-Belts, Sprockets and Conveyors, Table Yop Chain, Packings and Gaskets 13. Industrial and Laboratory Chemicals & Equipments 14. Complete Line of Fire Equipment', 4, 'Lopez Jaena St., Shopping, Bacolod City', '433-8921', '', '432-3416', '', 'COD', 'Distributor/Contractor', 'Ms. Irene', '', 'Active', '1.00', 1, ''),
(15, 'Almark Chemical Corporation', 'Chemicals', 0, 'Alijis Road, Bacolod City', '433-2864/432-3778', '', '', '', 'COD', '', 'Ms. April', '', 'Active', '1.00', 1, ''),
(16, 'AMT Computer Solutions', 'Computer Supplies and Accessories, Printers', 11, 'Door #5, Prudentialife Building, Luzuriaga St, Bacolod City', '435-1207 / 213-3607', '', '', 'Mark', 'COD', 'COD', 'Sir Mark Labanon', '', 'Active', '1.00', 0, ''),
(17, 'Andreas Hollow Blocks Enterprises', 'Aggregates', 0, 'Brgy. Bata, Bacolod City', '(034) 476-1207', '', '', '', '30 days', '', 'Ms. Jona', '', 'Active', '1.00', 1, ''),
(18, 'Ang Bata Hardware', '', 12, 'Carlos Hilado Highway, Bata, Bacolod City', '(034) 441-3141', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(19, 'Ang Design Studios , Inc.', 'Office Supplies', 0, 'Hilado Street, Barangay 17, Bacolod City', '(034) 435 0463', '', '435-0463', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(20, 'Anilthone Motor Parts & General Merchandise', '', 12, 'Lacson Street - Bacolod North Terminal, Banago, Bacolod City', '(034) 434-7539', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(21, 'A-one Industrial Sales', 'Hardware / Construction Supplies / Consumables / Electrical / Paints / Pipe Fittings / Tools / Equipment, Generator Set, Welding Machine', 2, 'Lopez Jaena St., Libertad, Bacolod', '435-7383; 432-0652; 476-1127', '', '435-7383', '', '', 'Wholesale / Retail / Distributor', 'Ms. Miles', '', 'Active', '1.00', 1, ''),
(26, 'Ap Cargo Logistics Network Corporation', 'Forwarder', 0, 'Door 2, SYC Building, Lacson Street, Bacolod City', '(034) 432 3981', '', '', '', 'COD', '', '', '', 'Active', '2.00', 1, ''),
(27, 'Apollo Machine Shop', 'Metal Fabrications', 9, 'Lacson, Bacolod', '434-9512', '', '', '', '', 'Manufacturer', '', '', 'Active', '1.00', 1, ''),
(28, 'Arising Builders Hardware and Construction Supply', 'Hardware / Construction Supplies / Consumables / Electrical / Paints / Pipe Fittings / Tools / Equipment', 4, 'Door #5 Dona Angela Bldg., Gonzaga St., Bacolod City', '435-4302', '', '708-7070', '', 'COD', 'Distributor', 'Ms. Jovelyn Macahipay', '', 'Active', '1.00', 1, ''),
(30, 'Arvin International Marketing Inc.', 'Industrial Salt', 0, 'Bredco Port 4, Bacolod City', '434-7941', '', '', '', 'COD-Cash', 'Manufacturer', '', '', 'Active', '1.00', 1, ''),
(31, 'Asco Auto Supply', 'Auto Parts', 12, 'Gonzaga Street - Tiffany Building, Barangay 24, Bacolod City', '(034) 433-8963', '', '', '', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(32, 'Assistco Energy & Industrial Corp', '', 2, 'First Ave., Bagumbayan, Taguig, Metro Manila/ Park Lane Bldg, Tindalo-Hilado Sts., Shopping, Bacolod City', '435-1605', '', '', '', '', '', 'Rey Britanico', '', 'Active', '1.00', 1, ''),
(33, 'Atlantic Auto Parts', 'Auto Parts', 12, 'Gonzaga Street, Barangay 24, Bacolod City', '(034) 435-0136', '', '', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(34, 'Atlas Industrial Hardware Inc', 'Hardware', 2, '56 Lacson St, Bacolod City', '433-8170; 476-4708; 476-8161', '', '435-0715', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(38, 'Atom Chemical Company, Inc.', 'Chemicals', 0, 'Mansilingan, Bacolod City', '(034)707-0826', '', '446-1571', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(39, 'Automation and Security Inc.', 'CCTV', 0, 'G/F Cineplex Building, Araneta St., Bacolod City', '(034) 704-1842 / 0977-732-5013', '', '', 'bacolod@asi.com.ph/ranelyn@asi.com.ph ', 'COD', '', 'Mr. Jazpe', '', 'Active', '1.00', 1, ''),
(40, 'Ava Construction Supply', 'Hardware', 5, 'Cor. Yakal-Lopez Jaena Sts., Capitol Shopping Center, Bacolod City', '434-1822; 433-0263; 435-1901; 708-3757', '', '434-6633', '', 'COD', 'COD', 'Sir Lito', '', 'Active', '1.00', 1, ''),
(41, 'B. Benedicto and Sons., Inc.', '', 0, '99-101 Plaridel St., Cebu City', '(032) 254-4624\r\n(032) 255-0941/256-2218', '', '255-2022', '', 'COD', 'Distributor', 'Fre Dagundon', '', 'Active', '1.00', 1, ''),
(42, 'B. A. Oriental Tire Supply', 'Tires', 0, 'Liroville Subdivision - D Cruz Drive, Taculing, Bacolod City', '(34)433 0780', '', '', '', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(43, 'Bacolod Canvas And Upholstery Supply', '', 0, 'Gonzaga St, Bacolod City', '(034) 434-3188', '', '', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(44, 'Bacolod Chemical Supply', 'Chemicals', 0, 'Lopez Jaena, Bacolod City, Negros Occidental', '(34)433-3141', '', '', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(45, 'Bacolod China Mart', 'Office Supplies', 0, '70 Lacson St., Bacolod City', '434-7293/434-7670', '', '435-0361', '', '', 'Distributor', 'Ms. Donna/Ms, Angela', '', 'Active', '2.00', 1, ''),
(46, 'Bacolod Erd Enterprises', '', 12, 'Rizal Street - Corner Lacson Street, Barangay 22, Bacolod City', '(034) 434-2272', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(47, 'Bacolod General Parts Marketing', '', 12, 'Lacson - Gonzaga Street, Barangay 24, Bacolod City', '(034) 433-1174', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(48, 'Bacolod Global Parts Sales', '', 12, 'Gonzaga Street - Jacman Building, Barangay 24, Bacolod City', '(034) 433-2091', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(49, 'KLS Electrical Supply', 'Electrical Supplies', 3, 'Locsin-Gonzaga Sts. , Bacolod City', '433-3807', '', '435-0243', '', '', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(50, 'Bacolod Integral Trading', 'Hardware', 2, 'Luzuriaga St., Bacolod City', '433-8170', '', '435-0715', 'bacolodintegral@yahoo.com', 'COD', 'Distributor', 'Ms. Riza', '', 'Active', '1.00', 1, ''),
(53, 'Bacolod Kingston Hardware', '', 1, 'Gonzaga, Bacolod City', '435-4734-36', '', '433-7912', '', '', '', 'May Diamante', '', 'Active', '1.00', 1, ''),
(56, 'Bacolod Marjessie Trading', '', 12, 'Cuadra Street, Barangay 21, Bacolod City', '(034) 456-2519', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(57, 'Bacolod Marton Industrial Hardware Corp', '', 2, 'Bonifacio St., Bacolod City', '434-2236-37; 435-0637', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(61, 'Bacolod Mindanao Lumber and Plywood', 'Lumber, Hardware, Construction Supplies', 1, 'BLMPC Bldg., Lopez Jaena-Malaspina Sts., Bacolod', '433-3610-12', '', '433-3611;433-7485', '', '', '', '', '', 'Active', '1.00', 1, ''),
(66, 'Bacolod National Trading', 'Hardware', 2, 'Luzuriaga St., Bacolod City', '433-2959', '0920-969-4688', '', 'bacolodnationaltrading@yahoo.com', 'COD', 'Distributor', 'Ms. Rosemary', '', 'Active', '1.00', 1, ''),
(68, 'Bacolod Office Solutions Unlimited, Inc.', 'Office Supplies', 0, 'Lacson Street, Bacolod City', '433-9636', '', '433-7710', '', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(69, 'Bacolod Oxygen Acetylene Gas Corp.', 'Industrial Gas', 0, 'Brgy. Alijis, Bacolod City', '434-1780', '', '', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(70, 'Bacolod Paint Marketing', 'Paints', 0, 'Luzuriaga St., Bacolod City', '(034) 433-2063', '', '703-2226/707-5075', '', 'COD', '', 'Ms. Angie', '', 'Active', '1.00', 1, ''),
(71, 'Republic Hardware', 'Hardware', 0, 'Bonifacio St., Bacolod City', '434-8317; 434-5125; 433-9941', '', '434-5125', 'republic_hardware@yahoo.com', 'COD', 'Distributor', 'Mr. Romie G. Li / Ms. Susan', '', 'Active', '1.00', 1, ''),
(72, 'Bacolod Steel Center Corporation', 'Structural Steels / Pipes / Welding Electrodes (Rod) / Tool Steel', 1, '#22 LM Bldg., Gonzaga St., Bacolod City', '435-2721-25', '', '434-5385', 'bscc.ph@gmail.com', 'COD', 'Wholesale / Retail', 'Ms. Pinky', '', 'Active', '1.00', 1, ''),
(73, 'Bacolod Sure Computer, Inc.', 'Computer Supplies and Accessories, Printers', 11, 'Capitol Shopping Center, Hilado St, Villamonte, Bacolod City', '(034) 435-1949', '(34) 435-1948', '435-1948', 'Ms. Vivian', 'COD', 'Distributor / Supplier', '', '', 'Active', '1.00', 1, ''),
(74, 'Bacolod Triumph Hardware', 'Structural Steels / Pipes / Welding Electrodes (Rod) / Cement', 1, 'Narra Extension, Hervias Subd., Brgy. Villamonte, Bacolod City', '433-5551/55; 709-7777', '', '433-5550', '', '30 days PDC ', 'Distributor', 'Ms. Jingle', 'Credit Limit (Php 300,000.00)', 'Active', '1.00', 1, ''),
(75, 'Bacolod Truckers Parts Corporation', '', 12, 'Gonzaga Street - Ralph Building, Barangay 24, Bacolod City', '(034) 433-3335', '', '', '', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(76, 'Bacolod Visayan Lumber', '', 4, 'No. 2725 Lopez Jaena Bacolod', '433-8888', '', '433-1572', '', '', '', '', '', 'Active', '1.00', 1, ''),
(78, 'Bangkal Movers Merchandising', 'Lumber', 0, 'Bangga Cory, Taculing, Bacolod City', '09164080028 / 0943-200-3145 / 0922-210-3206', '', '', '', 'COD', '', 'Ms. Vanessa Calugdog', '', 'Active', '1.00', 1, ''),
(79, 'BCG Computers', 'Computer Supplies and Accessories, Printers', 11, 'Lopez-Jaena St., Bacolod City', '(034) 434-2532/709-1888', '', '434-6603', '', 'COD', 'Distributor / Retailer', '', '', 'Active', '1.00', 1, ''),
(80, 'Bearing Center & Machinery Inc.', 'Bearings, PRODUCT LINES & SERVICES 1. Industrial Bearings - FAG, INA, TIMKEN, JIB, REXNORD, SEAL MASTER 2. Industrial Vee-Belts - Optibelt 3. Timing Belts - Optibelt 4. Pulleys with Taper Bushing 5. Pulleys with Plain Boring 6. Maintenance Tools for Bearings & Vee-Belts', 10, 'Door #8 G/F GGG Bldg., Hilado Ext. Capitol Shopping Center, Bacolod City', '433-8370', '', '433-8370', 'bcmi.mla@bearing.ph', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(82, 'Bens Machine Shop', '', 9, 'Lopez Jaena St., Bacolod City', '433-8990', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(83, 'Bright Summit Distribution Corporation', 'Electrical Supplies', 3, '2nd Flr. VCY Cntr. Bldg., Hilado Ext., Bacolod City', '(034) 433-7111', '', '', '', 'COD', 'Distributor', 'Mr. Carlos', '', 'Active', '1.00', 1, ''),
(84, 'B-Seg Sand And Gravel', 'Aggregates', 0, 'Prk. San Jose Circumferential Rd., Brgy. Alijis, Bacolod City', '(034) 457-1173 / 0929-6762-702', '', '', '', 'COD-Actual Quantity (delivered at site)', '', 'Mr. Benjie Garcia', '', 'Active', '1.00', 0, ''),
(85, 'C.Y. Ong Multi-Distributor', 'Tools', 4, 'Door #4 Asian Realty Bldg., Lacson St., Bacolod City', '434-4360; 709-1159', '', '434-4360', '', 'COD', 'Distributor', 'Ma''am Ping Doctora', '', 'Active', '1.00', 1, ''),
(87, 'Capitol Subdivision Inc.', '', 0, 'Homesite Subd., Bacolod City', '433-9190', '', '433-3877', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(88, 'CAR-V Industrial Sales', 'SS304 CHECKERED PLATE SS304 Plates sizes 2mm to 24mm x 4 feet x 8 feet SS316/316L Plates sizes up to 24mm x 4 feet x 8 feet SS304 Sheets SS304 Angle Bars SS304/304L & SS316/316L Butt Weld Fittings SS Thread Fittings Seamless Boiler Tubes 20 feet x 24 feet Lengths (Germany) EVER CAST Iron Valves SS304 Valves Screw End & Flange End SS316 Valves Screw End & Flange End SS304/304L , 316/316L Flanges (Slip-on & Welding Neck) Sarco Thermodynamic Steam Traps Ichigo Butterfly Valves SS304 Disc, Cast Iron Body B. I. Seamless Pipes Sch 40 & Sch 80 Forged Cast Steel Welding Flanges ASTM-A105 (Italy) SLG Cast Steel Valves  ALL STATE MAINTENANCE WELDING ALLOYS & FLUXES Alloys rods hard facing electrodes Kadomax carbon electrodes Uni-air carbon electrode torch All-star welding rod redrying Portable Oven Purox welding & cutting equipment Nkk tin base & lead base Babbitt Weld-Tech Satellite #6 U. S. Welding Rods, Bare & Flux Coated  MISCELLANEOUS PRODUCTS 1. BEARINGS all kinds 2. Motolite Batteries  OIL & LUBRICANTS 1. OIL Seals, O-rings, & V-rings  FILTERS-INDUSTRIAL & AUTOMOTIVES 1. mechanical Seals 2. Circlips 3. Industrial Hoses-Plastic & Rubber  FITTINGS - Hydraulic, brass & pneumatic valves Automotive Wires & Cables Couplings Black Rubber Conveyors Chains & Sprockets Tubings: Stainless & Copper Industrial Belts-Light & Heavy Duty Bolts & Nuts Pulleys Welding Products Tiger bronze bushings Canvass Belts Beltings Fasteners & Lacings Roller Chains Cam Clutches Speed Reducers Car Accessories Non-Asbestos Compressed Gasket Asbestos, Packings & Gaskets Teflon, Packings, Sheets, tapes Solid Rods & bushing Calcium silicate industrial heat insulation  PNEUMATIC ELECTRIC TOOLS 1. SHINANO SP AIR Pneumatic Tools-Japan 2. DEWALT Power Tools-USA/Italy 3. HILTI Power Tools-Switzerland 4. CHAMPION ROTOBRUTE Magnetic Drill-USA  MISCELLANEOUS 1. DALO Metal Markers-USA 2. TEMPILSTIK Temperature Indicator-USA 3. DISC-LOCK Vibration-Proof Locknuts & Washers-USA 4. RINGFEDER Shaft/Hub Locking Devices 5. GREENLEE Electrical Insulation Tools-USA 6. 3M Scotch Electrical Products 7. DURAFLEX Wires and Cables 8. EAGLE Wiring Devices  9. NATIONAL Wiring Devices 10. APPLETON Explosion-proof Conduit Fittings 11. CROUSE HINDS Explosion-proof Conduit Fittings 12. WHEATLAND Conduit Pipes and Fittings 13. PHILIPS Industrial Lightning Fixtures 14. WESTINGHOUSE Circuit Breakers  OTHERS 1. STANLEY Work Tools 2. CRESCENT Tools 3. RIDGID Industrial Tools 4. PROTO Industrial Tools 5. UNIOR Tools 6. FACOM Fitting, production & Professional Maintenance Tools 7. HYDROTECH Hydraulic Pumps, Equipment, Tools, Accessories 8. KWIK METAL Steel Rein Forced Putty 9. ENERPACK industrial Tools and Hydraulic Systems  ALLIED PRODUCTS WELDING CONSUMABLES 1. ALL STATE WELDING PRODUCTS - Dealer 2. KOBE ELECTRODE - Japan 3. CHOSUN ELECTRODES - Korea 4. METRODE Welding Consumables - UK 5. LOCTITE - Adhesives & Sealant  WELDING ACCESSORIES 1. BURTON Flexible Welding Cable-Australia 2. Magnaflux Dye Penetrant - UK 3. DYNAFLUX Welding Chemicals-USA 4. PHOENIX Electrode and Flux Oven-USA 5. ARCAIR Goughing Torch and Rods-USA 6. WELDCRAFT Tig Torches and Accessories-USA 7. G. A. L. Welding Gauges-USA 8. JACKSON Arc Welding Accessories-USA 9. MAKO Arc Welding Accessories-USA  WELDING MACHINES 1. MILLER Diesel Driven Welding Machine-USA 2. THERMAL ARC Diesel Driven Welding Machine-USA 3. CIGWELD Tig/Mig Welding Machine-Australia 4. OTC Mig Welding Machine-Japan  GAS WELDING AND CUTTING EQUIPMENT 1. TANAKA Thermal Cutting Machine-Japan 2. WESCOL Flowmeter/Regulator & Flashback Arrestor-UK 3. THERMOID Gas Welding Twin Hoses-USA 4. CIGWELD Cutting Outfit-Australia  SAFETY PRODUCTS 1. RED WING Industrial Safety Shoes & Coveralls-USA 2. FIBER-METAL Safety Spectacles, Faceshield, Welding 3. Mask-USA 4. JACKSON safety Spectacles, Faceshiled, Welding Mask 5. Safety Helmet-USA 6. CIGWELD Safety Helmet, Welding Mask-Australia 7. WELDAS Welding Gloves & Garments-USA 8. ACES Safety Spectacles and Faceshield  SKF PRODUCTS 1. SPECIAL LUBRICANT      A. LUBCON OIL      B. LUBCON GREASE      C. SOLUTION GREASE such as Conductive Grease, Extreme Temp. 2. OTHER SOLUTION or CUSTOMIZED PRODUCTS      A. BEVER GEAR      B. SKF BEARING UNIT for IDLER ROLLER CONVEYORS used in      mining & cement      C. CUSTOMIZATION 3. TRAININGS BEARING MAINTENANCE & TECHNOLOGY AND APPLICATION SKF BM I - Basics of Bearing Technology SKF BM II - Bearing Lubrication and Maintenance Applications SKF III - Beyond Troubleshooting: A Study of Advanced Procedural Methodologies  CENTRALIZED LUBRICATION SYSTEMS (Lubrication Solutions) 1. Grease Lubrication Systems 2. Oil Lubrication Systems (Oil Air, Oil Circulation,..) 3. Chain Lubrication (Spray, Brush, Grease Injection,…) 4. Lubrication Systems for On and Off Road Vehicles, Heavy Equipments 5. Minimum Quantity Lubrication (MQL) 6. Wheel Flange Lubrication for Rail Vehicles 7. Dry Lubrication Systems (Initially for Plastic Table Top Chain)  POWER TRANSMISSION PRODUCTS 1. BELT DRIVES: V-BELTS, SYNCHRONOUS BELTS & PULLEYS (STATICALLY BALANCE @ 6.3G OR DNAMICALLY BALANCE @ 1G) 2. CHAIN DRIVES: ROLLER CHAIN & SPROCKETS COUPLINGS 3. PULLEYS 4. SPROCKETS 5. TAPER LOCK BUSHING TECHNOLOGY AND HUBS  CONDITION MONITORING 1. Machine Condition Advisor (MCA) 2. Machine Reliability Inspection System (MARLIN) Microlog Systems (Portable Instruments) 3. OLS (On Line Systems) Condition Monitoring & Protection Systems 4. Ultrasonic Gauge (Detect Pressure & Vacuum leaks including Compressed Air, Steam Trap Inspection, Electrical inspection & General  Mechanical Inspection) 5. Motor Analysis, Test for all types of electrical rotating machinery,  on-line monitoring of power circuit issues, overall motor health, load  & performance. 6. Electrical Condition Based Maintenance with dynamic and static  technoogy for electric rotating machinery diagnostics and performance  monitoring.  MAINTENANCE PRODUCTS 1. Bearing Mounting Tools 2. Bearing Dismounting Tools 3. Bearing Heaters 4. Lubricants 5. Lubricators 6. Laser Alignment Precision Tools for Shaft & Belts (Pulleys) 7. Other Maintenance Tools, Instruments 8. Bearing Analysis Kit 9. Basic Condition Monitoring Kit  LINEAR MOTION & PRECISION TECHNOLOGIES 1. Guiding Systems: Profile, Precision Rail Guides 2. Actuating Systems: Actuators 3. Driving Systems: Ball & Roller Screws, Linear Ball Bearings, Ground Ball Screw 4. Positioning Systems: Standard and Precision Slides, Telescopic pillars 5. Precision Systems: Bolt Tensioner  Coupling Systems 1. OK Coupling for long shafts 2. Super Grip Bolts  SEALS Oil Seals, Grease Seals, Speedi Sleeve, Large Diameter Seals, Split seals, Machined Seals  BEARINGS & UNITS 1. Ball & Roller Bearings, Plain Bearings, CARB Torroidal Bearing, Slewing Bearings 2. Bearing Housings & Accessories, Plummer & Pillow blocks, Y-Units Concentra 3. Engineering Products: Stainless Steel, Insocoat, Hybrid, NoWear, Sensorized, High Temperature, Seize Resistant, ICOS, Vibratory Applications  Sealed, Composite(Corrosion & Chemical Resistant), Solid Oil, Precision  Bearings (SNFA), Sealed Spherical Roller Bearings. 4. Large Size Bearings (Greater than 420mm Outside Diameter) 5. Energy Efficient Bearings', 7, 'No. 25 Valtram Bldg., Lacson-Gonzaga Sts., BC', '434-4661; 433-3835; 708-0210', '', '434-4660', 'sales@car-v.ph / niko@car-v.ph / tramcar@car-v.ph', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(91, 'Catcom Marketing', 'Fire Suppression System', 0, 'CATCOM Building, Door 1 L2-A3 Taculing Road, Bacolod City 6100', '(034) 434 8732', '', '704-2062', 'catcommktg_rico@yahoo.com', 'COD', '', 'Mr. Rico Catalogo', '', 'Active', '1.00', 1, ''),
(92, 'Cebu Bolt And Screw Sales', 'Bolts', 0, 'Door # 30-32 Gochan Bldg., Leon Kilat St., Cebu City', '(032) 412-3561', '', '254-0062', 'sales@cebubolt.com', 'Advance Payment', 'Distributor', 'Ma"am Evelyn', '', 'Active', '1.00', 1, ''),
(93, 'Central Gas Corporation (CEGASCO)', 'Industrial Gas, Oxygen Gas, Acetylene Gas, Argon Gas', 0, 'Km7 Natl South Rd., Brgy. Pahanocoy, Bacolod City', '444-0048 / 444-1113 / 444-1109 / 444-1996 / 444-1348 / 444-1344 / 444-1348', '', '', '', 'COD', 'Manufacturer', 'Ms. Mary', '', 'Active', '1.00', 1, ''),
(94, 'Cezar Machine Shop', '', 9, '92 Rizal Estanzuela St., Iloilo City', '(033) 337-1068', '', '', 'cmsiloilo@yahoo.com', '', '', '', '', 'Active', '1.00', 1, ''),
(95, 'Char Pete General Merchandise', 'Aggregates', 0, 'Bago City', '473-0300', '', '', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(96, 'Cibba Paint Center, Inc.', 'Paints', 0, 'CEJ Building, Lopez-Jaena StreetBacolod City', '(034) 433 9291', '', '(034) 433 9291', '', 'COD', '', 'Mr. Philip', '', 'Active', '1.00', 1, ''),
(97, 'CLG Commercial Corporation', 'Hardware, Concrete Louvers', 0, 'Narra Ext., Bacolod City', '433-5329/707-0474 / 0909-260-4184 / 0925-828-1156', '', '', '', 'COD', 'Manufacturer / Distributor', 'Ms. Joan', '', 'Active', '1.00', 1, ''),
(98, 'ColorSteel System Corp.', '', 1, 'EAC Building - Pacific Home Depot,Lacson - Mandalagan St.,Brgy. Banago, Sta. Clara Subd.,Bacolod City, Bacolod', '(034) 421 2267', '', '', '', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(99, 'CORDS Industrial Sales and Services', '', 8, 'Dr. 1 SC Bldg. Libertad Ext., Mansilingan, Bacolod City', '446-2339', '', '707-8059', 'cords_indl@yahoo.com', '', '', '', '', 'Active', '1.00', 1, ''),
(100, 'Crismar Enterprises', 'Bolts, Hardware', 0, 'Cuadra St.,  Brgy. 21, Bacolod City', '434-1210', '', '707-0288', '', 'COD', 'Distributor', 'Mr. Noel', '', 'Active', '1.00', 1, ''),
(101, 'Cro-Magnon Corporation', 'HIGH DIELECTRIC INSULATING VARNISH  1. Electrical & Electronic Cleaners 2. Corrosion Inhibitors 3. Lubricants 4. Lubricating & Penetrating Oil 5. Penetratings Oils 6. Solvent Cleaners & Degreasers 7. Varnishes 8. Greases 9. Cutting Fluid', 0, '45 Gochuico Bldg., Mabini Cor. Rosario St., Bacolod City', '433-3221; 434-1416', '', '', 'cromag@eastern.com.ph', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(102, 'Crossworlds Trading and Engg Services', '', 9, 'Door 3 Zerrudo Commercial Complex (former Lopez Arcade) E. Lopez St. Jaro, Iloilo', '', '0932-883-5832; 0939-848-3037; 0917-779-1544', '', 'trading.crossworlds@yahoo.com', '', '', '', '', 'Active', '1.00', 1, ''),
(103, 'CS Sales', '', 12, 'LACSON STREET - CORNER LUZURIAGA STREET, BARANGAY 37, BACOLOD CITY', '(034) 434-5390', '', '', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(104, 'Daks Auto Supply', 'Auto Supply / Parts / Accessories', 12, 'Lopues Mandalagan - Annex Building , Mandalagan, Bacolod City', '0922-8561591', '', '', '', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(105, 'DBO Auto Parts', 'Auto Parts', 12, 'Rizal Street - Door 5 Lizlop Building, Barangay 21, Bacolod City', '(034) 435-6304', '', '', '', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(106, 'Warlen Industrial Sales Corp. (Deka Sales)', 'Air Conditioning Units', 0, ' Lot 20 Block 2, Lacson Extension, Alijis Road, Bacolod City', '(034) 435-1573', '', '', 'deka.bcd.service@yahoo.com', 'COD', '', 'Ms. Theres/Ms. Manilyn', '', 'Active', '1.00', 1, ''),
(107, 'Philippine DFC Cargo Forwarding Corp.', 'Forwarder', 13, 'LGV Building, Molave Street, Capitol Shopping Center, Bacolod City', '(034) 709-1128', '', '', '', 'COD', 'Forwarder', 'Ms. Jonah', '', 'Active', '1.00', 1, ''),
(108, 'Direct Electrix Equipment Corporation', 'Electrical Supplies, Electrical Contractor, PRODUCT & SERVICES OFFERED: 1. Servicing of Motors.Transformer 2. Complete Test Instrument 3. Rewinding AC and DC Motors 4. Rewinding of Generator 5. Servicing of Substation 6. Electrical Design & Installation 7. Transmission Line  PRODUCT LINE 1. Load Break Switch 2. CT/PT 3. Switchgear 4. Transformer 5. Capacitor 6. Motor / Generator 7. Civil Works', 3, '#28 Ramylu Drive, Tangub, Bacolod City', '(034) 444-2023 / (032) 948-0221 / (032) 942-2871 / 0916-600-3244 / 0922-853-5384', '', '(034) 444-2023 / (032) 942-0017', 'directeletrixbacolod@gmail.com / jfrotea.sales@gmail.com / deec.salesinfo@directelectrix.com', 'COD', 'Distributor/Contractor', '', 'website: www.directelectrix.com', 'Active', '1.00', 1, ''),
(111, 'DMC Industrial Supplies', '', 0, 'Mabini St., Bacolod City', '(034) 441-3621 / 0943-283-1688', '', '', '', 'COD', 'Distributor', 'Mr. Marlon Chiu', '', 'Active', '1.00', 1, ''),
(112, 'DY Home Builders, Inc.', '', 3, 'No. 2725 Lopez Jaena Bacolod', '433-2222', '', '433-6696', '', '', '', '', '', 'Active', '1.00', 1, ''),
(113, 'Dynasty Management & Devt Corporation', '', 4, 'Araneta St., Brgy. Singcang, Bacolod City', '', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(115, 'Dynasty Paint Center', 'Paints', 0, 'Lopez-Jaena Taal Sts., Bacolod city', '(034) 435-4777', '', '435-4777', '', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(116, 'Dypo Auto Parts', 'Auto Parts', 12, 'Lacson Street - Door 2 Jr Building, Barangay 21, Bacolod City', '(034) 707-7055', '', '', '', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(117, 'Ebara Benguet, Inc', 'Pumps', 2, 'Door 3 Eusebio Arcade, Lacson St., Brgy 40, Bacolod City', '435-8162', '', '', 'pumpsales@ebaraphilippines.com', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(118, 'Eduard Metal Industries', '', 9, '23rd St, Bacolod City', '432-0490', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(119, 'Enigma Technologies Inc.', 'Computer Supplies and Accessories, Printers', 11, '2F Terra Dolce Center, Hilado Ext., Bacolod City', '(034) 435 8144', '', '', '', 'COD', 'Distributor', '', '', 'Inactive', '1.00', 1, ''),
(120, 'Far Eastern Hardware & Furniture Enterprises, Inc.', '', 2, '38 Quezon St. Iloilo City', '(033) 335-0891 ; 337-2654 ; 337-2222 ; 337-5321 ; 508-4196', '', '(033) 3382996', 'feh_qzn@yahoo.com', '', '', '', '', 'Active', '1.00', 1, ''),
(124, 'Federal Johnson Engineering Works', 'Fabrication', 9, 'Circumferential Rd, Bacolod City', '441-2110; 441-0306', '', '441-0356', '', 'COD', '', '', '', 'Active', '1.00', 0, ''),
(125, 'FGV Enterprises', '', 12, 'Luzuriaga Street - Door 1 Lucias Building, Barangay 25, Bacolod City', '(034) 433-2672', '', '', '', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(126, 'Fil-Power Group and Marketing Corp', 'Generators', 9, 'St Anthony Bldg Lopez Jaena St, Bacolod City', '434-7957; 707-8035', '', '', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(127, 'Firbon Multi Sales', '', 12, 'Cuadra Street - Door 3 Rgr Building, Barangay 21, Bacolod City', '(0920)479 5919', '', '', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(128, 'Francis New Tractor Parts', '', 12, 'Lacson - Cuadra Street, Barangay 24, Bacolod City', '(034) 433-1456', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(129, 'Fuman Industries Inc.', 'Welding and Cutting Materials, pumps, valves, gauges', 8, 'Brgy. Banago, Bacolod City', '435-0973', '0916-943-1989', '', 'molinesjay@gmail.com', 'COD', '', 'Mr. Jayrud F. Molines', '', 'Active', '1.00', 1, ''),
(130, 'Gini GTB Industrial Network Inc./AsiaPhil', 'SERVICES 1. Turn Key Electrical Works. 2. Supply and Installation of Substation and Distribution Equipment 3. Supply and Installation Of Transmission Lines 4. Supply and installation of Service Entrances 5. Supply and installation of Perimeter Lightnings 6. Supply and installation of Cable Trays and Feeder Lines 7. Installation of Power Generation Equipment 8. Other Electrical Contracting Services  PRODUCTS 1. Panel Board (for AC/DC Applications), Load Center, Enclosed Circuit Breaker,  2. Compact Distribution Lightning Panel 3. Compact Distribution Panel 4. Enclosed Circuit Breakers 5. 69kv Primary Metering 6. Primary Protection 7. Medium Voltage Solution (4 feeders and 2 feeders) 8. Power Transformer 9. Substation Solution 10. 69KV  Transmission Line 11. Consignment of Utility Products 12. Systems Loss Reduction Equipment (MV Capacitors, Preventive Maintenance)  POWER QUALITY SOLUTIONS SERVICES 1. Periodic & Preventive Maintenance Services 2. Measurement & Analysis 3. Energy Savings & System Efficiency 4. Retrofitting Works 5. Testing and Commissioning 6. Emergency Services  ASIAPHIL ELECTRIC PRODUCTS 1. BEA LVSG 2. CDLP Lightning Panel (100A-Below) 3. CDP-32 (Above 250A) 4. Series-4 (250A-125A) 5. Eazybox (ECB) 6. GINI LC (Load Center) 7. VRC Capacitor Units 8. ALDO (Capacitor Bank) 9. BEA MFT (MCC Fixed Type) 10. BEA MFW (MCC Fully Withdrawable) 11. ROBIE (MVSG 7 V Indoor/Outdoor) up to 36KV 12. UNA MVA (Unitized Assembly, 15KV) 13. UNIPAL (Unitized Panel) 14. Victory Seriers (Loose Controllers) 15. EazyTrans (Transfer Switches) -E-Trans-M (MTS) -E-Trans-A (ATS), A. TRANSMISSION EQUIPMENT    a.1. Deadend Transline    a.2. Suspension Tension Transline    a.3. Post Insulator Transline    a.4. Suspension Insulator Transline    a.5. Arrester w/ Corona Ring Transline B. DISTRIBUTION EQUIPMENT     b.1. Fuse Links     b.2. Fuse Cut-outs     b.3. Arresters     b.4. Pin-post Insulator     b.5. Distribution Insulator PDI     b.6. Sectionalizers     b.7.Single Phase Recloser     b.8. Three Phase Recloser     b.9. Overhead Disconnector     b.10. Load Break Switch C. SUBSTATION EQUIPMENT     c.1. Surge Arresters with counter     c.2. Dead Tank Breakers     c.3. Power Transformer     c.4. Protective Relays     c.5. Pad Connectors     c.6. HV Instrument Transformer     c.7. Live Tank Breakers     c.8. Battery and battery charger     c.9. XLPES Cables     c.10. Tee Connectors     c.11. HV Disconnector     c.12. SF6 Gas and filling services     c.13. Grounding Rods     c.14. MV Cable Termination Kit     c.15. Bus Supports D. CIRCUIT BREAKERS AND CONTROLS     d.1. 15-34kV Vacuum circuit breakers     d.2. 630A-6300A Air Circuit Breakers     d.3. 1A-1600A,10kA Minature Circuit Breakers     d.4. Overload Relays     d.5.Capacitor cells     d.6. 24kV-36kV Load Break Switch Indoor     d.7. 160A-1600A molded case circuit breakers     d.8. Contactors     d.9. Motor Protector     d.10. PF Controllers E. PANEL BUILDERS COMPONENTS     e.1. Digital Power Meters     e.2. Circuitbreaker control switch     e.3. Indoor Instrument Transformer     e.4. Shrinkable insulator tube     e.5. Post Insulators     e.6. Analog Meters     e.7. lock-out relay     e.8. copper busbars     e.9. insulating sheets     e.10. Terminal Blocks F.CONTRACTORS PRODUCTS     f.1. Exothemic Groundings     f.2. Hand-held Tools     f.3. Wildlife covers     f.4. HV Gloves and sleeves     f.5. Lineman''s wrenches     f.6. Hotline tools     f.7. Grounding Clusters     f.8. Hoists     f.9.Ropes     f.10. Load Lookers', 0, 'Room 209, 2nd Floor Boston Finance and Investment Corp Bldg., Bacolod City', '(034) 435-6269 / 0998-844-3078', '', '435-6269', 'raymundo.manalang@asiaphil.com', 'COD', 'Distributor/Contractor', 'Mr. Raymund Manalang', '', 'Active', '1.00', 1, ''),
(131, 'GLE Sand and Gravel Enterprises', '', 0, 'GSIS Corner Medel Road Tangub Highway, Bacolod City', '444-1644', '', '444-2591', '', 'COD', '', 'Maam Grace/Ms. Bolyn', '', 'Active', '1.00', 1, ''),
(132, 'Golden Gate Hardware', 'Pipe Fittings, Hardware, Hose, Elbows, Flanges, Valves, Coupling', 4, 'Gonzaga-Lacson Sts., Bacolod City', '(034) 433-0995 / 434-6848', '', '(034) 434-6848', '', 'COD', 'Wholesale / Retail / Distributor', 'Ma''am Susan', '', 'Active', '1.00', 1, ''),
(134, 'Golden Jal Marketing', '', 4, 'Cokins Bldg, Bacolod City', '433-0698; 435-0061', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(136, 'Golden Tower Commercial', '', 4, 'Dr. 3, Emerald Bldg., Lacson St., Bacolod City', '476-8043 fax', '', '435-12068', '', '', '', '', '', 'Active', '1.00', 1, ''),
(138, 'Good Hope Enterprises', '', 4, 'Bonifacio St., Bacolod City', '434-8588-89', '', '', '', 'COD', 'COD', '', '', 'Active', '1.00', 1, ''),
(140, 'Greenlane Hardware and Construction Supply Inc', 'Hardware / Construction Supplies / Consumables / Electrical / Paints / Pipe Fittings / Tools / Equipment', 4, 'Lacson St., Bacolod City', '432-1119', '', '434-5948', '', 'COD', 'Wholesale / Retail', 'Ronaldo Lao', '', 'Active', '1.00', 1, ''),
(142, 'Highway Tire Supply', '', 0, 'Lacson Street, Barangay 38, Bacolod City', '(034) 433-1257', '', '433-1257', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(143, 'HRA Paint Center', '', 0, 'Dr # JQ Center Bldg., Lopez Jaena St., Bacolod City', '(034) 435-6684', '', '', '', 'COD', 'Distributor', 'Sir Allan', '', 'Active', '1.00', 1, ''),
(144, 'Ideal System Komponents', 'TOMOE 1. Ultimate Process Butterfly Valves 2. High Performance Butterfly Valves 3. Rotary Control Valves 4. Chemically Resistant Butterly Valves 5. Rubber Seated Valves 6. Ball Valves 7. Check Valves 8. Pneumatic Rotary Actuators 9. Electric Actuators 10. Manually Operated Actuators 11. Electro-Paneumatic Positioner  LUMEL 1. Analog Panel Meters 2. Digital Meters 3. Large Displays 4. Digital Controllers 5. Recorders 6. Power Controllers 7. Synchronizing Units 8. Measuring Transducers and Separators 9. Meters & analyzers of Power  10. Network Parameters 11. Distributed Control Systems (DCS) 12. PLC, I/O Modules & Converters 13. HMI 14. Transducers 15. Current Transformers 16. Shunts  SUMA 1. In-line Brix Monitoring (Radio Frequency) 2. Panscope 3. Nutsch Filter 4. Slurry Mil  ATAGO 1. In-line Brix Monitoring (Process Refractometer)  APISTE 1. Panel Cooling Units 2. Precision Airconditioning Units 3. Air Cooled Chillers  SAMSON 1. Control & On-Off Valves 2. Globe, Three-way and angle valves 3.  Steam Converters (Steam Conditioning Valve) 4. Diaphragm Actuators 5. Self-operated Regulator 6. Temperature Regulator 7. Pressure Regulator 8. Differential Pressure & Flow Regulator 9. Boiler Regulator, Steam Trap, Air Vent & Strainer 10. Control Valve / On-Off Valve Accessories 11. Positioner 12. Limit Switch 13. Solenoid Valve and Accessories  DANFOSS  1. Variable Frequency Drives Soft Starters  SENSETECH (HEAT-EDGE) 1. Thermocouples 2. Resistance Temperature Detector (RTD) 3. Heaters  PG POWER-GENEX 1. Electro-Pneumatic Positioner 2. Pneumatic to Pneumatic Positioner 3. Rotary Actuators 4. Limit Switch 5. Air Volume Booster 6. Lock-up Valve   NORGREN 1. Pressure Sensing 2. Actuators 3. Solenoid Valves 4. Air Filter/Regulator/Lubricator 5. Pneumatic Fitting/Tubing/Silencers  MASTER GAUGES 1. Pressure Gauges 2. Digital Pressure Gauges 3. Temperature Gauges  KROHNE 1. Flow Measurements 2. Magnetic Flowmeter 3. Variable Area Flowmeter 4. Ultrasonic Flowmeter 5. Vortex Flowmeter 6. Mass (Coriolis) Flowmeter 7. Differential Pressure Flowmeter 8. Pitot Tube Flowmeter 9. Level Measurements 10. Radar (FMCW & TDR) 11. Ultrasonic 12. Float 13. Displacer 14. Potentiometric 15. Level Switch 16. PH/ORP Measurements  HOFAMAT 1. Light Oil Burners 2. Heavy Oil Burners 3. Gas Burners  HUBA CONTROL 1. Pressure Transmitter 2. Diff. Pressure Transmitter 3. Electronic Pressure Switch 4. Mechanical Pressure Switch 5. Pressure Level Transmitter 6. Pressure Measuring Cell 7. Digital Indicator  CMO 1. Knife Gate Valve  PR ELECTRONICS 1. Thermocouple Converter 2. PT100 Converter 3. TC Converter Isolated 4. Isolated Repeater 5. Isolated Converter 6. Hart Transparent Repeater 7. Hart Transparent Driver 8. Temperature/mA Converter', 3, 'Room 4B/4F Villa Angela Metro Plaza Bldg., Araneta St. Bacolod City', '433-4224', '0917-300-6939', '708-6183', 'iskbacolod@yahoo.com; iskbacolod@gmail.com', '', '', 'Ms. Jessica A. Deang (Sales / App. Engineer) - 0998-9730-360 / 0915-952-1615', '', 'Active', '1.00', 1, ''),
(145, 'IEC Computers', 'Computer Supplies and Accessories, Printers', 11, '(034) 433 9472/708-4322', '', '', '', 'Mr. Raymund', 'COD', 'COD', '', '', 'Active', '1.00', 1, ''),
(146, 'Iloilo City Hardware, Inc.', '', 3, '105-107 Iznart St., Iloilo City', '(033) 337-2952; 337-2969 ; 338-1455; 337-5553', '', '(033) 337-4621', '', '', '', '', '', 'Active', '1.00', 1, ''),
(148, 'Iloilo National Hardware', '', 1, '', '(033) 337-0449; 509-8985 ; 337-2841 ; 509-7785', '', '(033) 337-2841/335-8377', 'nationwide888@yahoo.com', '', '', 'Jimmy', '', 'Active', '1.00', 1, ''),
(149, 'Innovative Controls Incorporated (Bacolod Branch)', 'Service & product Provider of Motor Controls and Factory & Building Automation.  PARTNERS SIEMENS, YAVUZ PANO, CARLO GAVAZZI, PHOENIX CONTACT, STEGO, LOGSTRUP, ELECTRA, PICOBOX, SOLCON POWERED, NDC TECHNOLOGIES, BETA LASERMIKE, iO2 WATER  PRODUCTS  1. SIEMENS Programmable Logic Controllers (PLC), Human Machine Interface (HMI), Variable Frequency Drives (VFD), Soft Starters, Control Gears, Circuit Breakers  2. CARLO GAVAZZI Energy Management Meters Software & Systems, Safety Devices, Dupline Field Installation Bus, Monitoring Relays, Timers, Panel Meters, PID Controllers & Counters, Solid State & Electromechanical Relays, Inductive, Capacitive, Conductive, Ultrasonic Sensors  3. YAVUZ PANO Free  Standing System Panels (FSS), Wall Mounted Enclosures (WMS), Outdoor Type Enclosures (HFSS), Console Panels, Polycarbonate Boxes & Enclosures, 19 inches Rack Cabinets  4. STEGO Filter Fans Available From 21m3/h to 550m3/h, IP54 Outdoor Filter Fans, IP55 Roof Filter Fans, Enclosure Lamps, Thermostat & Hygrostats, Airflow Monitor, Heaters  5. PHOENIX CONTACT Relay & Optocoupler Interfaces, Varioface System Cabling for Siemens, Allen-Bradley, Mitsubishi, MODICON, & Mitsubishi PLCs, Power Supplies (for Universal Use & Ex-proof for Zone 2), Signal Conditioners, Transducers, Signal Converters, Serial Interfaces (Wireless Signal Transmission), Industrial Modem, RS-232 & RS-485-Bluetooth Converter  6. SOLCON Low Voltage Soft Starters, Medium Voltage Soft Starters up to 48MW  7. LOGSTRUP Modular Type-Tested Motor Control Centers, Type-Tested Switchgears, Type-Tested Panels, Customized Enclosures  8. PICOBOX Environmental Monitoring System, Facility Monitoring Server  9. ELEKTRA Control Transformers, Medium Voltage Transformers, Isolation Transformers, Medical Transformers, High Frequency Transformers, Reactors, Filters  10. BETA LASERMIKE Precision Measurement & Control Solutions  11. i20 WATER Smart Pressure Management  SERVICES AND SOLUTIONS 1. AUTOMATION SOLUTIONS 2. SCADA SYSTEMS 3. WIRELESS TELEMETRY 4. POWER MANAGEMENT SOLUTIONS 5. DESIGN & ASSEMBLY OF TYPE-TESTED MCC''s & SWITCHGEARS 6. ENERGY SAVING SYSTEMS', 0, 'Rm. 1-10 JDI Bldg., Galo St., Bacolod City', '(034) 708-1727 / 0908-8162189', '', '(034) 708-1727', 'dianne.villareal@innovativecontrols.com.ph', 'COD', 'Distributor', 'Ms. Dianne Villareal - 0908-816-2189', 'website: www.innovativecontrols.com.ph', 'Active', '1.00', 1, ''),
(150, 'Inovadis, Inc.', '', 4, 'Rizal St, Brgy 22, Bacolod City', '435-4634-35', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(152, 'Integrated Power and Control Provider, Inc.', 'PRODUCTS 1. WOODWARD; Governors, Actuators, Engine Controllers and Power Management                                Gas and steam turbine products (retrofit) 2. L & S Hydroelectric Products & Services (Retrofit) 3. GENERATOR: Exciters, AVR''s, Meterings, Protective Relays, Synchronizers, ATs 4. ABB Unitrol 1000 5. Engine parts, filters, accessories, preventive maintenance  SERVICES 1. Service, repair & overhaul of woodward governors and diesel engines. 2. Retrofit/Upgrade of governors, exciters and switchboard for diesel engines, steam, gas & hydro turbines 3. Preventive Maintenance Program for Diesel Gensets 4. On-site Installation and Field Services for Generator-Prime Mover Controls. 5. Integration of Controls to Synchronizing Switchgear', 9, 'Unit #5 East Plaza Commercial Bldg, Suntal Phase II, Circumferential Rd., Brgy Taculing, BC', '446-7612', '', '', 'ipowerbacolod@hotmail.com', '15 days PDC', 'Distributor', 'Mr. Voltaire Piccio', '', 'Active', '1.00', 1, ''),
(153, 'Intrax Industrial Sales/ U2 Machine Shop', '', 8, 'Lot 1 Blk 4 Along Murcia Rd, Hermelinda Homes, Mansilingan, BC', '446-3268', '0917-5475996; 0922-885-8483', '708-1195', 'intraxindustrial@yahoo.com; u2machineshop@yahoo.com', '', '', 'Ronces "Bong" Ababao', '', 'Active', '1.00', 1, ''),
(155, 'ISO Industrial Sales', '', 7, 'Luzuriaga St., Bacolod City', '432-3007', '0917-301-3007', '432-3440', 'iso_boltsnuts@yahoo.com.ph', '', '', '', '', 'Active', '1.00', 1, ''),
(156, 'J. T. Oil Philippines', '', 0, 'Bacolod City', '(034) 435-2666', '', '', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(157, 'Jas''t Marketing Co.', '', 3, '#6 GGG Bldg., Capitol Shopping, Bacolod City', '434-0043', '', '434-6789', '', '30 days', '30 days', 'Samuel Takahara/ Regina Lopez', '', 'Active', '1.00', 1, ''),
(158, 'Johnson Parts Center & General Merchandise', '', 12, '6th Street Lacson - Gensoli Building, Barangay 24, Bacolod City', '(034) 433-5708', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(159, 'Jojo 4 Wheel Parts Supply', '', 12, 'Gonzaga Street - Door 1 Suntal Invst Building, Barangay 24, Bacolod City', '(034) 435-0626', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(160, 'KARL-GELSON INDUSTRIAL SALES', 'Structural Steels, Gate Valves, Check Valves, Y-Strainer, Elbows', 0, 'Araneta St., Bacolod City', '432-6318', '', '432-6318', 'kgsbacolod.rizza@yahoo.com', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(161, 'Kemras Industrial Supply', '', 0, 'Blk. 5, Lot 11 NHA ACCO Housing, Circumferential Road, Brgy. Alijis, Bacolod City', '(034) 446-3162 / 0906-1464-064 / 0936-927-9953', '', '446-3162', 'wilfredo.fardon@kemrasindustrialsupply.com', '30 days', '', 'Mr. Alden Erasmo/Ms. Maria Fatima Pillado', '', 'Active', '1.00', 1, ''),
(162, 'KLP Easy Electrical', '', 3, 'Libertad extension, 6100 Bacolod City, Negros Occidental, Philippines', '', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(164, 'Kuntel Construction', '', 0, 'Rooms 3-6, 2nd Floor, Villa Angela Arcade, Burgos Extension, Bacolod City', '434-7866', '', '434-7866', '', 'COD', '', 'Mr. Joseph Yanson', '', 'Active', '1.00', 1, ''),
(165, 'Leeleng Commercial, Inc.', '', 3, 'Bacolod City', '446-1084', '', '', 'leeleng_bacolod@yahoo.com', '', '', '', '', 'Active', '1.00', 1, ''),
(166, 'Liberty First Enterprises', '', 4, 'T. Gensoli Bldg., Lacson St., Bacolod City', '435-1530; 435-0533', '', '433-1492', '', '', '', 'Ging-ging', '', 'Active', '1.00', 1, ''),
(168, 'Linde Corporation', '', 0, 'Bago City', '213-4596/213-4594', '', '', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(169, 'Linton Incorporated', '', 1, 'For Additional Lightning in Powerhouse DG Area', '(02) 733-8800 ; 733-8810 ; 734-1059 ; 733-8817', '', '(02) 733-0493 / 733-0615', 'linton_incorporated@yahoo.com', '', '', '', '', 'Active', '1.00', 1, ''),
(170, 'LMS Electrical Supply', '', 0, 'Gonzaga Street, Bacolod City', '435-0424/434 8423', '', '435-0863', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(171, 'Loc-Seal Industrial Corporation', 'AEG POWERTOOLS 1. Rotary and Percussion Drills 2. Screwdriver 3. Magnetic Drill & Stand 4. Rotary/Combination Hammers 5. Chipping/Demolition Hammer 6. Angle Grinders 7. Die/Straight Grinders 8. Polishers 9. Cut-off Machine 10. Mini Reciprocating Saw 11. Jig Saws 12. Circular Saws 13. Router 14. Laminate Trimmer 15. Blower/Hot Airgun 16. Random/Orbit Sander 17. Planer 18. Belt Sander 19. Cordless Jigsaw 20. Cordless Drills & Drivers 21. Cordless Rotary Hammer 22. Screwdriver 23. Cordless Circular Saw 24. Cordless Reprocating Saw 25. Cordless Reprocating Saw Kit 26. Flourescent Light 27. Flashlight 28. Batteries & Charger 29. Wet & Dry Dust Extractor 30. Arc Welding Machines 31. Welding Cutting Outfit 32. Mig Transformer Welding Machines 33. Tig Inverter Welding 34. Plasma Cutters 35. Mig Welding Machines 36. DC Submerge Arc Welding 37. AC/DC Tig Inverter 38. DC Tig Arc Inverter 39. DC Tig Inverter with Pulse 40. DC Arc Weldig Machine 41. Multi Purpose Machine 42. Spot Welding 43. Battery Chargers 44. Drill Press 45. Cut-off Machine 46. Drill Bits; Wood Boring Bit, Cobalt Drill Bit, Reduced Shank Drill Bit, SDS Plus, Chisel 47. Router Bits; Router Bit Set 48. Disc, Blades & Wire Wheel Brush; Circular Saw Blade, Diamond Blade, Circular Brush, Cutting Disc, Flap Disc, Grinding Disc. 49. Air Tools; Air Hopper, Sand Blasting Gun, Spray Guns, Air Duster Guns 50. Safety Accessories; Danger & Caution Tape, Safety Spectacles, Safety Helmets, Vest, Safety Harness, Safety Shoes  CONTENDER AIR COMPRESSOR, BENCH GRINDER, DRILL PRESS  MEASURING INSTRUMENTS Digital Caliper, Digital Caliper with Round Depth Bar, Digital Caliper with Ceramic Tipped Jaws, Coolant Proof Digital Caliper, Mini Digital Caliper, Vernier Caliper, Dial Caliper, Long Jaw Vernier Caliper, Digital Inside Groove Caliper, Digital Inside Point Caliper, Digital Gear Tooth Caliper, Digital Height Gage, Dial Height Gage, Vernier Height Gage, Digital Depth Gage, Digital Double Hook Depth Gage, Vernier Depth Gage, Dial Depth Gage, Depth Micrometer, Metric Digital Outside Micrometer, Digital Outside Micrometer, Outside Micrometer, Graduation Outside Micrometer, Outside Micrometer with Interchangeable Anvils, Indicating Micrometer, Blade Micrometer, Point Micrometer, Spherical Anvil Tube Micrometer, Disk Micrometer, Screw Thread Micrometer, Measuring Tips for Screw Thread Micrometer, Can Seam Micrometer, Micrometer Stand, Inside Micrometer, Digital Inside Micrometer, Tubular Inside Micrometer, Three Points Internal Micrometer, Bore Gage for Small Holes, Long Handle, Anvil for Bore Gages, Small Hole Gage Set, Telescoping Gage Set, Digital Indicator, Setting Ring, Dial Indicator, Waterproof Dial Indicator, Precision Dial Indicator, One Revolutio Dial Indicator, Contact Point, Lug Back, Flat Back, Extension Rod, Dial Test Indicator, Styli For Dial Test Indicator, Dial Test Indicator Holder, Magnetic Stand, Dial Test Indicator Centering Holder, Magnetic Stand, Universal Magnetic Stand, Flex Arm Magnetic Stand, Internal  Dial Caliper Gage, Granite Comparator Stand, External Dial Caliper Gage, Thickness Gage, Digital Thickness Gage, Thread Ring Gage, Steel Gage Block Set, Thread Plug Gage, Block Level, Digital Level and Protractor, Digital Level and Protractor, Digital Protractor,  Combination Square Set, 90° Flat Edge Square, Machinist Square with Wide Base, 90° Beveled Edge Square, Straight Edge, Feeler Gage, Long Feeler Gage, Feeler Gage, Feeler Gage Tape, Pitch Gage, Center Gage, Angle Gage, Radius Gage, Radius Gage Set, Taper Gage, Welding Gage, Inside Spring Caliper, Outside Spring Caliper, Spring Divider, Steel Rule,  Straight Edge, Circumference Tape, Scriber, Granite Surface Plate, V-Block Set, Magnetic  V-Block, Electronic Edge Finder, Electronic Edge Finder, Centering Indicator, 2-piece Measuring Tool Set, Data Output System, Profile Projector, Video Measuring Microscope Code ISD-A100*, Portable Measuring Microscope Code ISM-PM100, Digital Microscope Code ISM-PM200, Software for Digital Microscope Code ISM-PRO, Digital Force Gage, Surface Roughness Specimen Set Code ISR-CS130-W, Roughness Tester, Coating Thickness Gage Code ISO-3500FN-W, Ultrasonic Thickness Gage Code ISU-200D*, Endoscope Code ISV-E55*, Manual Rockwell Hardness Tester Code ISH-R150, Portable Hardness Tester Code ISH-PHA*, Shore Durometer, Digital Torque Wrench, Safety Seals, PPE, Industrial Adhesives Saws & Blades, Cutting & Grinding Disc, Welding Machine & Rods, Skim Coat & Tile Adhesives, Installer of Fire Alarm System, CCTV', 4, 'Ma. Kho Apartment, Door # 2 1034, Sierra Madre St., Brgy. Villamonte, Bacolod City', '(034) 458-8592', '0932-892-4909', '(034) 458-8592', 'locsealcorp.aljeroabellana@gmail.com', 'COD', 'COD', 'Mr. Aljero ', '', 'Active', '1.00', 1, ''),
(174, 'Bacolod Luis Paint Center', 'Paints', 0, 'Gonzaga St., Bacolod City', '(034) 435-0301', '', '(034) 435-3108', '', '30 days PDC', 'Distributor / Supplier', '', '', 'Active', '1.00', 1, ''),
(175, 'Luvimar Enterprises', '', 0, 'Rizal Street corner Gatuslao Street (beside LLC), Bacolod City', '(034) 476-3612', '', '', 'luvimarfirecontrol@luvimar.com', 'COD', 'Distributor', 'Mr. Angelo Abdul', '', 'Active', '1.00', 1, ''),
(176, 'Lyfline Marketing', '', 0, 'Galo Hilado, Bacolod City', '(034) 434 6543/(34)434-2582', '', '', '', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(177, 'Macjils Refrigeration And Airconditioning Repair Shop', '', 0, 'Prk. Sto. Rosario, lacson St., Bacolod City', '(034) 707-0639 / 0919-637-0637', '', '', 'mamertoyalong@gmail.com', 'COD', 'Distributor', 'Mr. Mamerto Yalong', '', 'Active', '1.00', 1, '');
INSERT INTO `vendor_head` (`vendor_id`, `vendor_name`, `product_services`, `category_id`, `address`, `phone_number`, `mobile_number`, `fax_number`, `email`, `terms`, `type`, `contact_person`, `notes`, `status`, `ewt`, `vat`, `tin`) VALUES
(178, 'MB United Commercial', '', 1, 'Yakal St., Villamonte, Bacolod City', '435-3131; 434-7283; 709-1053', '', '435-2901', '', 'COD', 'COD', 'Ms. Melanie Alvarado', '', 'Active', '1.00', 1, ''),
(181, 'Metro Pacific Construction Supply, Inc.', '', 3, 'No. 47 Mabini Street, Iloilo City', '(033) 338-1316 ; 337-1210 ; 337-3762; 337-0815', '', '(034) 336-3279', '', '', '', '', '', 'Active', '1.00', 1, ''),
(182, 'MF Computer Solutions, Inc.', 'Computer Supplies and Accessories, Printers', 11, 'JTL Bldg. BS Aquino Drive Shopping, Bacolod City', '434-6544', '', '434-6544', 'info@mfcomputersolution.com', 'COD', 'Distributor / Retailer', 'Sir Che / Ms. Nova Oricio', '', 'Active', '1.00', 1, ''),
(184, 'MGNR Hardware & Construction Supply', '', 4, '2780 Hilado Ext., Brgy Villamonte, Bacolod City', '435-3790', '', '', '', '', '', 'Ian Paglumotan', '', 'Active', '1.00', 1, ''),
(187, 'Micro Valley', '', 0, 'Reclamation Area, Bacolod City', '(034) 704-4317', '', '', 'MVbacolod5@yahoo.com.ph', 'COD-Cash', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(189, 'Milco Malcolm Mktg', '', 3, 'M & M Aceron Bldg II, Mabini-San Sebastian Sts., BC', '433-3429; 434-2918; 434-3986', '', '433-3429', '', 'COD', 'COD', 'Romeo "Bob" Aceron', '', 'Active', '1.00', 1, ''),
(193, 'Mirola Hardware', '', 3, 'Poblacion Sur, Ivisan, Capiz', '(036) 632-0104; 632-0028 ; 632-0108', '', '(036) 632-0104', 'info@mirolahardware.com', '', '', '', '', 'Active', '1.00', 1, ''),
(195, 'Negros Bolts & General Mdse', 'Bolts', 4, '2879 Burgos Ext., BS Aquino Drive, Bacolod City', '435-2260; 708-1183', '', '', '', 'COD', 'Wholesale / Retail', '', '', 'Active', '1.00', 1, ''),
(200, 'Negros International Auto Parts', '', 12, 'Rizal Street - Corner Lacson Street - Sgo Building, Barangay 21, Bacolod City', '(034) 435-1416', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(201, 'Negros Marketing', '', 0, 'Cuadra St., Bacolod City', '(034) 435-4708', '', '', '', 'COD', '', 'Mr. Terence Sy', '', 'Active', '1.00', 1, ''),
(202, 'Negros Metal Corporation', '', 0, 'Brgy. Alijis, Bacolod City', '(034) 433-7398', '', '', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(203, 'Negros Pioneer Enterprises', '', 12, 'Gonzaga - Lacson Street, Barangay 24, Bacolod City', '(034) 433-2088', '', '', '', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(204, 'Netmax Solutions', '', 0, 'Silay City', '(034) 213-6120 / 0949-883-2535/0923-141-2611', '', '', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(205, 'New Colomatic Motor Parts', '', 12, 'Gonzaga Street - Lm Building, Barangay 25, Bacolod City', '(034) 434-5955', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(206, 'New Yutek Hardware and Industrial Supply Corporation', 'Pipe Fittings, Structural Steels, Gate Valves, Check Valves, Y-Strainer, Elbows', 7, 'Zulueta St., Cebu City, Cebu', '(032) 255-5406', '', '(032) 254-1365', '', 'COD', 'COD', 'Sir Berto', '', 'Active', '1.00', 1, ''),
(207, 'Newbridge Electrical Enterprises', '', 3, 'Lacson Ext., Cor LT Vista St. Singcang, Bacolod City', '433-9298; 433-2365; 434- 2185', '', '', 'newbridge@pldtdsl.net', 'COD', 'COD', 'Ms. Joy/Mr. Clause', '', 'Active', '1.00', 1, ''),
(208, 'Nikko Industrial Parts Center', '', 12, 'Lacson Street - Door 3 Tmg Building , Barangay 25, Bacolod City', '(034) 708-0210/(034) 433-7908/(034) 433-3835', '', '', '', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(209, 'Nippon Engineering Works', '', 2, 'Corner-Mabini Ledesma Sts., Iloilo City', '(033) 338-1122', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(211, 'Northern Iloilo Lumber & Hardware', '', 5, '24 Ledesma, Iloilo City', '(033) 337-4749', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(212, 'NS Java Industrial Supply', '', 3, 'Room 1-11 JDI Bldg, Galo St., Bacolod City', '433-0668', '0917-300-3182', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(213, 'Octagon Computer Superstore', 'Computer Supplies and Accessories, Printers', 11, 'SM City Bacolod, Rizal St., Reclamation Area, Bacolod City', '(034) 468-0205', '(034) 468-0204', '', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(214, 'Panay Negros Steel Corporation', '', 1, 'Door 2, Torres Bldg, No. 61 Burgos, Bacolod City', '434-8272', '0917-303-1680', '709-1141', 'pnscbacolod@gmail.com', '', '', '', '', 'Active', '1.00', 1, ''),
(215, 'Philippine DFC Cargo Forwarding Corp.', 'Forwarder', 0, 'Siment Warehouse, Zuellig Ave., Reclemation Area, Mandaue City', '0917-629-3024', '', '', '', 'Freight Collect', '', 'Ms. Joy', '', 'Active', '2.00', 1, ''),
(216, 'Pins Auto Supply', '', 12, 'Gonzaga Street - Purok Masinadyahon, Barangay 24, Bacolod City', '(034) 434-9349', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(217, 'Platinum Construction Supply', '', 12, 'Bugnay Road, Villamonte, Bacolod City', '(034) 433-1886', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(219, 'Power Systems, Inc', '', 9, 'AU & Sons Bldg., Sto. Nino, Bacolod City', '433-4293', '', '433-7363', '', '', '', '', '', 'Active', '1.00', 1, ''),
(220, 'Prism Import-Export, Inc.', '', 0, 'C.L. Montelibano Avenue, Bacolod City', '(034) 433-6045/708-4443/433-5327', '', '434-6433', '', '15 days', '', 'Ms. Veron/KarenJun', '', 'Active', '1.00', 1, ''),
(221, 'Procolors T-Shirts Printing', '', 0, 'Lacson St., Bacolod City', '(034) 434 3403', '', '', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(222, 'Ravson Enterprises', '', 0, 'Atrium Bldg., Gonzaga St., Bacolod City', '434-8929', '', '', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(223, 'Rc Fishing Supply', '', 0, 'Gonzaga St, Bacolod City', '(034) 434 8299', '', '', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(226, 'Richard and Zachary Woodcraft', 'Lumber, Hard Wood', 0, 'Victorina Heights, Libertad Ext., Brgy. Mansilingan', '431-5866/213-3858/0928-337-7568, 0927-325-4497, 0922-562-1005', '', '', 'rzwoodcraft_05@yahoo.com', 'COD', '', 'Mr. Richard Dulos', '', 'Active', '1.00', 1, ''),
(227, 'RTH Marketing', '', 2, 'Door 1, St. Francis Bldg., Lizares Ave.,Bacolod City', '433-1199; 433-8152', '0928-5015595', '433-1199; 433-8152', 'rthmarketing@yahoo.com', '', '', 'Ranilo "Toto" Hulleza', '', 'Active', '1.00', 1, ''),
(230, 'Sam Parts Marketing', '', 12, 'Cuadra Street, Barangay 24, Bacolod City', '(034) 434-6119', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(231, 'SGS Hardware Corporation', '', 1, 'Gatuslao Bacolod City', '435-3023-25', '', '434-6061', '', 'COD', 'COD', '', '', 'Active', '1.00', 1, ''),
(234, 'Sian Marketing', '', 5, 'Luzuriaga-Lacson Sts., Bacolod City', '431-1375', '', '', '', '', '', 'Ken Shi', '', 'Active', '1.00', 1, ''),
(235, 'Silicon Valley', '', 11, 'SM Bacolod City', '(034) 431-3251', '', '', 'Ms. Ping', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(236, 'Silver Horizon Trading Co. Inc.', '', 0, 'Julio Las Piñas St., Brgy. Villamonte, Bacolod City', '476-2590/09284495903/09296291246', '', '', '', 'COD', '', 'Ms Gelyn/Sir Carlito', '', 'Active', '1.00', 1, ''),
(238, 'Simplex Industrial Corp.', '', 0, 'Tiffany bldg., Door 8, Gonzaga St., Bacolod City', '(0932)878-8882, (0925)868-8882', '', '', 'salesbacolod@simplex.com.ph', 'COD', 'Distributor', 'Ms. Anne Golez', '', 'Active', '1.00', 1, ''),
(239, 'SKT Saturn Network, Inc.', '', 0, 'SKT Compound, Rizal St., Bacolod City', '433-2494', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(240, 'Sol Glass And Grills', '', 0, 'Rosario Heights, Libertad Ext., Brgy. Taculing, Bacolod City', '(034) 213-3935 / 0917-5039-183', '', '', '', 'COD', '', 'Mr. Karl Bryan Solinap', '', 'Active', '1.00', 1, ''),
(241, 'Specialized Bolt Center and Industrial Supply Inc.', 'BOLTS 1. Hub Bolt, Stud Bolt, Propeller Bolt, Center Bolt, Track Shoe Bolt, Plow Bolt w/ Nut, G. I. Battery Bolt w/ Wing Nut, Battery Terminal & Lug  ALLEN SOCKET SCREWS - High Tensile 1. Allen Socket Head Cap Screw, Allen Socket Head Set Screw, Allen Square Head, Alen Button Head, Allen Flat Head Socket Screw, Allen Wrench Key  U-bolt for Cars & Trucks, U-bolt for Pipe (g. I./Stainless), Copper Washer,  Plainwasher (B. I./G. I./Stainless/Brass), Lockwasher (B. I./Tetanized/Stainless) Conewasher, Plastic Tox, Drill Bit,  HARDWARE ITEMS & INDUSTRIAL TOOLS Grinding Stones, Cut-off Wheels, Depressed Center Wheels, Diamond Cutting Wheels, Carbonatum Grindings Wheels, Sanding Disks, Sand Papers, Steel Wheel Wire Brushes, Steel Wire Brushes, Cup Brush, WD-40 Penetrating Oil, Pillow Blocks,  Post Straps, Safety Helmet, Safety Googles-TW, Cotton Gloves, Cable Ties, Steel Tapes, Drill Chucks, Spark Plug Wrench, Cross Wrench, Oil Filter Wrench, Box Wrench, Open Wrench, Combination Wrench, Pipe Wrench, Adjustable Wrench, Socket Wrench, Impact Socket Wrench, Quick Ratchet Handles, Flexible Handles, Vise Grips, Combination Pliers, Diagonal Side Cutter Pliers, Putty Knife (with & without handle) Welding Machine (AC & DC), Welding Rods, Welding Lens, Welding Masks, Welding Gloves, Welding Electrode Holder, Welding Cables, Bronze Rode, Copper Tubes, Tool Bits, Twist Drill Bits, Masonry Drill Bits, End Mills, Hand Taps, Hacksaw Frames, Hacksaw Blades, Handsaw (PVC Handle)  GENERAL & INDUSTRIAL HARDWARE Tri-Squares, Aluminum Levels, Cement Trowels, Ball-Plen Hammers, Arm Pullers/ Bearing Pullers, Vital-Chain Blocks, Vital-Lever Blocks, Bench Grinders, Hole Saw Set, Tin Snips, Gate Valves, Ship Chains, Stainless Hinges, Heavy Duty Padlocks, Ordinary Padlocks, Electrical Tapes, Teflon Tapes, Masking Tapes, Packaging Tapes, Glue Guns, Water Gun Nozzles, Spray Guns, SKS-Sliding T-Handles, SKS-Drill Press Vise, SKS-Tap & Die Set, SKS- Feeler Gauge, SKS-Screw Extractor Set, SKS-Heavy Duty  Cross Vise, SKS-Hydraulic Jacks, Pioneer-Epoxy Tubes, Pioneer-Mighty Gaskets, Pioneer- Contact Bonds, Pioneer-Elastoseals, Pioneer- Marine Epoxy, Pioneer- Non Sag Epoxy, Aluminum ladders, Foldable Flatform Carts, Slotted Angle Bar Corner  Plates, Steel Footers, Plastic Footers, Caster Wheels.  PRODUCT LINES VALVES Ball Valve, Gate Valve, Check Valve, Wye Strainer, Butterfly Valve, Globe Valve,  PIPES Stainless Pipes, B. I. Seamless Pipes, Superior Pipes, G. I. Pipes, B. I. Pipes  FLANGES Stainless Slip on Flange, Stainless Blind Flange, B. I. Slip on Flange # 150 & #300 B. I. Blind Flange # 15 & #300  STEEL PLATES, SHEETS & BARS Mild Steel Plates 4''x8'' Mild Steel Plates 6''x20'' Mild Steel Plates 8''x20'' B. I. & G. I Sheets Angle Bars Flat Bars  FITTINGS Butt-Weld Elbow, Butt-Weld Concentric Reducer, Butt-Weld Tee, Welded Cap, Stub End, Elbow Threaded, Coupling Threaded, Coupling Reducer Threaded, Bushing Reducer Threaded, Bushing Reducer Threaded, Tee Threaded, Cross Tee Threaded, Hex Nipple, Nipple Threaded, Cap Threaded, Union Trhreaded, plug Threaded, "MECH" US Elbow 90 degree Threaded, Elbow 45 degree Threaded, Straight Elbow 90 degree Threaded, Tee Threaded, Caps Threaded, Elbow Reducing  Threaded, Coupling Threaded, Plugs Threaded, Plugs Threaded, Reducing Socket/ Coupling Reducer Threaded, Union Threaded, Tee Reducing Threaded, Hexagonal Bushing, B. I. Butt-Weld Sch 40 & 80, Elbow 902 degree and 40 degree Concentric Reducer Tee.  THREADED ROD Hi-Tensile Threaded Rod, Stainless Threaded Rod, Galvanized Threaded Rod  EXPANSION BOLT Bolt Anchor, Dyna Bolt, Drop in Anchor, Cut Anchor, Hit Anchor, Wedge Anchor,  FISCHER PRODUCTS Fiscer Threaded Rod, Fischer Expansion Bolt, Fischer Resin Capsules, Fischer  Sleeve Anchor, Fischer Foams & Sealants  SCAFFOLDING CLAMPS Swivel Clamp, Fixed Clamp  ALL TYPES OF SCREWS Job Screw, Hardiflex Screw, Self Tapping Screw, Gypsum (Drywall) Screw for Wood  & Steel, Teckscrew for wood & Steel, Tekscrew for stainlee steel, Metal Screw (G. I./Stainless), Wood Screw (G. I./B.I. Stainless), Confirmat Screw, Wafer Screw Tekscrew Adaptor, Hand Riveter, Screw Bit, Screw Extractor, Blind Rivets (Aluminum/ Stainless), E Clip, Internal Circlip, External C. Clip, Spring/Dowel Pin, Cutter Pin (G.I./Stainless), Hose Clamp, Shackle, Cable Clip, Turn Buckle, Eye Bolt', 7, '11 V. Sotto, Cebu City, Cebu', '(032) 2531345 / 253-1535', '', ' (032) 239-7705 / 255-7681', 'specialized_bolt@yahoo.com', 'COD', 'Distributor', 'Ms. Janeth/Mr. Ramon', '', 'Active', '1.00', 1, ''),
(242, 'State Motor Parts Company', '', 12, 'Gonzaga Street, Barangay 24, Bacolod City', '(034) 433-1683', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(243, 'Sugarland Hardware Corp.', '', 4, 'Lacson St., Bacolod City', '434-5390; 434-4549; 708-8850', '', '433-9748', '', 'COD', 'COD', '', '', 'Active', '1.00', 1, ''),
(245, 'Sunrise Marketing', '', 0, 'Bldg./Street: Hilado Extension\r\nMunicipality: Bacolod City ', '434-5746', '', '435-1067', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(246, 'Svtec Industrial Enterprises', '', 0, 'Gonzaga-Lacson St., Bacolod City', '(034) 707-7496', '', '', '', 'COD', '', 'Mr. Benjie ', '', 'Active', '1.00', 1, ''),
(247, 'Technomart', '', 11, '(034) 431-5994', '9322065585', '', 'technomart.smbacolod@yahoo.com', '', 'COD', 'COD', '', '', 'Active', '1.00', 1, ''),
(248, 'Teranova Computers', 'Computer Supplies and Accessories, Printers', 11, 'G/F Cineplex Building, Araneta St., Bacolod City', '(034) 435 - 7227 / 709 - 7737/ 0999-817-4815 / 0942-009-1433', '(034) 435 - 7227', '435 - 7227', 'teranova_computers@yahoo.com', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(250, 'Tingson Builders Mart', '', 4, '3 Gonzaga, Bacolod City', '434-1046; 707-5507', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(252, 'Alpha Titan Hardware', 'Hardware, Tools, Welding Machine', 2, '888 Chinatown Square, Gatuslao St.', '435-7496; 476-4106', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(255, 'TMVG Multi-Sales, Inc.', 'INSTITUTIONAL COMMERCIAL/INDUSTRIAL CHEMICALS Air Freshener/Deodorizer, All Purpose Liquid Cleaner, Biocide & Algaecide,  Carpet Shampoo, Deodorant Spray/Cake Liquid, Diswashing paste/Gel, Drain & Clog Openers Liquid, Food Services Degreaser, Fabric Softener, Glass Cleaner, Heavy Duty Matisurface cleaner, Hospital-Strength Disinfectant cleaner, floor wax, liquid hand soap, Marble Cleaner (Non-acid), QuatDisinfectant (Lysol), Non-acid disinfectant bathroom cleaner, Oven Grill Cleaner, Powdered Detergent Soap, Sanitizer, Spot & Stain Remover, Tile & Bowl Remover, Toilet Bowl Disinfectant cleaner, wax stripper.  JANITORIAL TOOLS/PARTS & SAFETY SHOES PRODUCTS/FIRE FIGHTING EQUIPMENTS Safety Shoes (Hi-cut, Low-cut), Face Shields, Goggles, Helmet, Aprons (Maong, Leather), Glove (Laong, Leather), Masks (Half mask/Full face), Waste Cotton/Remnants, Deck Brush, Floor mops/Rugs, Floor Brush (Wilson Universal)  LAUNDRY WASH/CLEANING CHEMICALS (WHITE WASH BRAND) Bleach Powder (Salinox), Brighter (Sourex), Chlorine, Fabric Softener (Sanisoft), Machine Wash (Laundry), Oxalic, Oxygen Bleach, Dishwashing Paste, Powder Degreaser (Breaker), Rust & Stain Remover (Vista), White Wash All Purpose (Powdered Detergent)  SWIMMING POOL CHEMICALS/EQUIPMENTS/PARTS Algaecide, PH adjuster, Filter Aid (Impt/Local), Perlite, Chlorine Table/Powder, Dry Acid, Bio-Blue (Pool Clarifier), Copper Sulfate, Telescope Handle, industrial Motor Pump (Hayward/ Purex/Challenger and parts), Filter Assembly (Titan/Hayward/Challenger & Parts), Vacuum  Head & Parts, Brush, Leaf Scope, Stainex (Anti-Scale), Aluminum, Sulfate.  AUTO/AIRCON REPAIR/PARTS/ACCESSORIES Fedders, Carrier, Koppel, Daikin, Allen Aire / Amana, Expansion Valve, Refrigerant 12/ 134A/22/410/406/141B, Auto Evaporator (Original/Local), Condenser, All Types of Filter Drier, Compressor (Window, Ceiling Mounted, Packaged type, auto aircon & other industrial type.  3M PRODUCTS/COMMERCIAL CARE CHEMICALS 3M Floor Cleaning Chemicals for Vinyl/Marble, 3M Matting/Carpet Products, 3M Electrical Products, 3M Abrasives/Grinding/Cutting Disc, 3M Safety Products, 3M Floor Pads, 3M Industrial Cleaning Pads, 3M Home Care Products  INDUSTRIAL/PROCESS CHEMICALS Acetone, Acid Descaler & Chemicals Cleaner, Ammonia Water Strong, Ammonium Bilfluoride, Ammonium Sulfate, Anti-Sealant Chemicals for Distellery, Acid Dihibitor, Benzalkonium Chloride, Biocide, Borax Powder, Blackburn Products (Antifoam), Bleaching Earth, Calcium Hypochloride 70%/65%, Carbon Tetra Chloride, Carbon & Varnish Remover, Carboxyl Methyl Cellulose, Caustic Soda Flakes/Pearl, Cetyl Alcohol, Citric Acid, Citronela oil, Cocodietthanolamine (CDEA), Cooling Tower Treatment, Copper Sulfate, Defoamer (Silicone -blackburn-UK, Ethyl Alcohol, Ethylene Glycol, Glycerine, Garratt Callahan, Glacial Acetic Acid, Hydrogen Peroxide, Hydrochloric Acid, Isopropyl Alcohol, Isophropyl Myristate,Methylene Chloride, Methanol, Naphthalene, nitric  Acidtoluence, Oxalic Acid, Paradichlorobenzene, Perchloroethylene, Phosporic Acid (Food Grade), Polyammonium Chloride, Potash Alum, Propylene Glycol, Propyl Paraben, Rhodamine, Silicon Oil,  SLES, Stearic Acid, Soda Ash, Sodium Nitrate, Sodium Phospate Dibasic, Sodium Silicate, Sodium  Tripolyphosphate, Tergitol, Titanium Dioxide, Trichloroethylene, Triethanolamine, Zinc Oxide (Tech Grade), Soluble Oil  PREVENTIVE MAINTENANCE CHEMICALS Aircraft Runaway Cleaner, Algaecide (Algae Control), Aluminum/Coil Cleaner (aircon cleaner), Anti-Seize Compound (LPS), Belt Dressing, Brand Boiler Feed Water Treatment, Bunker Fuel Oil Additive (Conditioner), Carbon Descaler, Cold Galvanizing Compound, Cold Tank Degreaser, Contact Cleaner, Cooling Tower Water Treatment, Corrosion Preventive Compound, Cutting Oil & Coolant, Demoisturizer, Descaler & Cement Remover, Emulsified Degreaser, CIP Cleaning (Acechlor), Food Grease (USA), High Temperature Grease, High Pressure Lubricant, Industial Solvent-rated first, Insulating Varnish-(Red/clear)-3m USA, Kleenkote (Phophating Conditioner), Liquid Epoxy Coating,  Ozphose, Oven/Grill Detergent Cleaner, Paint Stripper, Paint & Varnish Remover, Penetrating Oil, Poo Powder Degreaser, Battery Terminal Cleaner, Radiator Coolant/Flush, Rubber Burns Remover, Rust Converter, Rust Remover, Safety Solvent Degreaser, Silicon Mold Release, Sludge Disperant, Stainless Steel Cleaner, Steam Cleaner Additive, Stoddart Solvent, Tile Cleaner, Dynaflux Crack Check Detector, Transformer Oil, Waterless Hand Cleaner, Water Soluble Degreaser, Wire rope chain Lubricant, Stainex (Swimming Pool), Bio-Blue (Swimming), PH Adjuster (Swimming Pool).  HARDWARE TOOLS/EQUIPMENTS & OTHER SPECIALIZED TOOLS Air Tools (Uryu-Japan), Rigid-USA, Stanley USA (Original), Proto-USA, Metabo Tools (Adaptable to 3M Combi-Brush), Black  Decker.  TOOLBIT ASSAB 17 SWEDEN Round Bit, Square Bit, Cut-off Bit  PRESSURE GAUGES/THERMOMETER Weis/Weksler/Kunkle/Watts/Marsh/Ametek/Insa/Ashcroft Made in USA, Wika-Germany, NH-England  VALVES Fairbanks USA, Henry-USA, Schmidth, Fairfortune-USA, MC Rayann-USA, Armstrong   LABORATORY CHEMICALS/EQUIPMENTS Ajax-USA, Pyrex/Duran-USA, Kimax  XIV Ertalon Round Rod, Sheet, Tubular, Polycarbonate Plastics', 9, 'Dr. 2, Genito Bldg., Lopez Jaena St., Bacolod City', '(034) 708-1819 / 434-7471 / 435-6003 / 476-4355 / 435-0905', '', '(034) 434-7471;', 'chemtrustunlimiteds@yahoo.com.ph', 'COD', 'Distributor', 'Engr. Norlene A. Amagan', '', 'Active', '1.00', 1, ''),
(256, 'Tokoname Enterprises', 'Lumber, Hardware', 0, 'Hernaez St., Bacolod City', '433-3610/707-1844', '', '', '', 'COD/7 days', '', '', '', 'Active', '1.00', 1, ''),
(257, 'Tri-con Marketing Center Inc.', '', 4, 'Capitol Shopping Ctr, Bacolod City', '435-0889', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(259, 'Triumph Machinery Corporation', '', 2, 'Bacolod City', '441-0298', '', '', 'trimcorsales@trimcorph.com', '', '', '', '', 'Active', '1.00', 1, ''),
(260, 'U.S. Commercial', '', 12, 'Gatuslao Street - Purok Bagong Silang, Barangay 13, Bacolod City', '(034) 433-1174', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(261, 'Unikel Industrial Supplies and Safety Equipments', '', 8, 'Door 2 G/F Malayan Bldg, 3rd St Lacson, Bacolod City', '476-3191; 435-8677', '0917-703-9797; 0932-864-5350', '', 'unikelenterprises@yahoo.com', '', '', 'Kristel Curbilla', '', 'Active', '1.00', 1, ''),
(263, 'Union Galvasteel Corp', 'Roofing Materials', 1, 'Soliman Bldg, Bacolod', '435-7175', '', '435-7175', '', '', '', 'Jessica', '', 'Active', '1.00', 1, ''),
(264, 'United Bearing Industrial Corp', 'PRODUCTS LINE/S OR SERVICES OFFERED 1. Exclusive Distributor of: NSK Bearings Japan - All types of Bearings 2. FHY Bearings - Exclusive Distributor of Bearing Units All Types 3. Emerson Power Transmission Products (authorized distributor) 4. BEGA Maintenance Tools and Induction Heaters - Made in Holland 5. Federal Mogul Products - National Oil Seal, BCA-Bower, Champion Spark Plugs 6. UBC Bearings - Exclusive Distributor', 4, 'AP Bldg Lacson St, Bacolod City', '435-4541 / 435-4497', '', '434-1218', 'sales@unitedbearing.com', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(266, 'United Steel Technology International Corp.', '', 1, 'Door 2, Goldbest Warehouse, Guzman St., Hibao-an, Mandurriao, Iloilo City', '(033) 333-7663', '0917-811-7663', '', 'info@steeltech.com.ph', '', '', '', '', 'Active', '1.00', 1, ''),
(267, 'US Commercial Inc (Uy Sian Commercial)', '', 1, 'Gov V M Gatuslao, Bacolod City', '434-8989; 433-8017', '', '433-8015', '', '', '', '', '', 'Active', '1.00', 1, ''),
(268, 'VCY Sales Corporation', '', 0, 'Kamagong St., Brgy. Villamonte, Bacolod City', '433-7112/709-7778', '', '', 'fay.carvajal@vcygroup.com', 'COD', '', 'Ms. Fay Carvajal', '', 'Active', '1.00', 1, ''),
(269, 'Vendor 1', '', 0, 'Vendor 1 address', '1111', '', '2222', 'vendor@email.com', '', '', 'test', '', 'Active', '1.00', 1, ''),
(270, 'Visayan Construction Supply', 'Hardware / Construction Supplies / Consumables / Electrical / Paints / Pipe Fittings / Tools / Equipment', 0, 'Lacson St., Bacolod City', '434-7277 / 434-7278', '', '434-5537', '', 'COD', 'Wholesale / Retail', '', '', 'Active', '1.00', 1, ''),
(271, 'Vosco Trading ', '', 0, 'Cuadra St., Bacolod City', '(034) 435-8515', '', '', '', 'COD', '', 'Mr. Silver/Sir Jam', '', 'Active', '1.00', 1, ''),
(272, 'Wellmix Aggregates Inc', 'Ready Mix Concrete', 0, 'Ralph Townhouse, Bacolod City', '(034) 434-4704', '', '', '', '', 'Manufacturer', '', '', 'Active', '2.00', 1, ''),
(273, 'Western Hardware', '', 4, 'EH Bldg., Lacson-San Sebastian Sts., Bacolod City', '434-5305-06', '', '435-0808', '', '', '', 'Gee Belita', '', 'Active', '1.00', 1, ''),
(275, 'Westlake Furnishings Inc.', '', 0, 'Araneta St.,  Bacolod City', '(034) 433-9489/433-9498', '', '', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(276, 'Yousave Electrical Supply', 'Electrical Supplies', 3, 'Door #s 1-2 Sunstar Bldg., Hilado Ext., Bacolod City', '709-0594', '', '431-3050', 'yousave.electrical@yahoo.com.ph', 'COD', 'Wholesale / Retail / Distributor', '', '', 'Active', '1.00', 1, ''),
(277, 'Alta-Weld, Inc. / Alta (Far East) Welding Materials, Inc.', 'Welding Rod', 0, 'Sun Valley Drive KM. 15 West Service Road, South Superhighway, Parañaque City', '(02) 823-4032 / 824-2966 / 824-2988 / 0917-636-1187 / 0922-625-6397', '', '(02) 821-1782', 'altaweld@compass.com.ph / leointes@yahoo.com.ph', 'COD', 'Distributor', 'Mr. Leo C. Intes', 'Home Based Office / Some Products are Manila Stocks', 'Active', '1.00', 1, ''),
(278, 'Chokie Heavy Equipment Parts Center', 'Heavy Equipment Parts', 0, 'AGPA Bldg. Lacson St., Bacolod City', '(034) 431-5303 / 0925-866-2081 / 0942-072-6467', '', '', '', 'COD', 'Distributor', 'Arnel B. Altiche - 0995-612-1929', '', 'Active', '1.00', 1, ''),
(279, 'Hydrauking Industrial Corp.', 'PRODUCT LINES: 1. ENERPAC - Hydraulic Torque Wrenches, Jacks, Pumps, Bolt Tensioner. 2. TK SIMPLEX USA - Hydraulic Tools & Equipment (Jacks. Pumps) 3. POSI-LOCK PULLER - Hydraulic & Mechanical Puller 4. TORC LLC - Torque Wrenches (Made in USA)  SERVICES OFFERED: Bolting,/Torquing & LiftingSpecialist (on-site) Service/Repairs of Hydraulic Tools & Equipment Rentals of Jacks, Pumps, Torque Wrenches, Bolt Tensioners', 0, '4659 & 4661 Arellano St., Palanan Makati 1235', '0928-828-2878 / 0905-228-4345', '', '', 'rose@hydrauking.com / cebu@hydrauking.com', 'COD', 'Distributor', 'Ms. Mary Rose Remes', '', 'Active', '1.00', 1, ''),
(280, 'Ionic Impact One Nation Industrial Corporation', '', 0, '6-D Pearl St., Golden Acres Subd. Las Piñas City', '(02) 800-9104 / 806-2048 / 805-2959 / 0977-824-5812', '', '', 'impactonenation@gmail.com', 'COD', 'Distibutor', 'Mr. Rossano Del Castillo - 0906-758-4638', '', 'Active', '1.00', 1, ''),
(281, 'Cebu Champion Hardware and Electric Depot, Inc.', 'Industrial Control & Automation, Water System, Fire Protection System, Pnuematic, Ebara Pump & Motor, Omron, Inverter Ready, Abb, Baldor Automation Products, E. F.G. Willem Piping System, Duvalco, Dutch Valve Company, Tozen Valve/Gate/Strainer, 3M, KSB, Stainless Steel And Aluminum Products, Water Work System, Fire Protection System', 0, 'Pres. Quirino St, Cebu City, Cebu', '(032) 234 4342 / 231-7139 / 0917-632-6505', '', '(032) 234-4342', 'info@cebuchampionhardware.com / felixgzn@yahoo.com', 'Advance Payment(Bank to Bank)', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(282, 'FH Commercial Inc.', 'James Walker, Henkel Loctite MRO Products, Lamons, Teadit, Klinger, Panam Engineers ltd. , Mcallister Mills', 0, 'FH Building, #22 Anonas Rd., Potrero, Malabon City, 1475', '(02) 362-2265 / 330-2019 / 330-2021 / 366-8598 / 361-4235 / 364-3352 / 0918-922-0974', '', '(02) 361-3759 / 366-7724', 'indayaeriejoy@yahoo.com', 'COD', 'Distributor', 'Ms. Suzette A. Espera', '', 'Active', '1.00', 1, ''),
(283, 'A & M Medcare Products Distributors', 'Medical Supplies', 0, ' Door 4 & 5, Estban Building, 5 Lacson St, Barangay 17, Bacolod City', '(034) 433 5728', '', '', '', 'COD', 'Distributor', '-', '', 'Active', '1.00', 1, ''),
(284, 'Archi Glass & Aluminum Supply', 'Aluminum and Glass Supplies', 0, 'P Hernaez St Ext, Bacolod City', '(034) 433 7116', '', '', '', '50% Downpayment, 50% upon completion', 'Installer', 'Ms. Evelyn', '', 'Active', '1.00', 1, ''),
(285, 'Bacolod Electrical Supply', 'Electrical Supplies', 0, 'Gonzaga Corner Lacson St., Bacolod City', '(034) 434-0526', '', '(034) 433-7238', '', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(286, 'Morse Hydraulics System Corp.', 'Manuli Hydraulics, Rexroth, Bosch Group, Eaton Vickers, Danfoss, Hydro Control, Stauff, Kpm, Kawasaki Precision Machinery, Seal Maker, Graco, Jsg Industrial System/Muster II Fire Suppression Systems, Hy-Lok, Alfagomma Industrial Hoses, Nacol Accumulator, Poclain Hydraulics, Brevini Group, Rexpower, Whitedriveproducts, Ashun, Bva Hydraulics, Paccar Winch Division, Braden Carco, Gearmatic, Engineering Solutions, Hydraulic Trainer/Simulator, Power Unit Submerged Type, Power Unit w/ Enclosure, Power Unit With Spare Unit, Stackable-Type Power Unit, Accumulator Type Power Unit', 0, 'DMC Bldg., Narra Ext. Bacolod City', '(034) 433-1538 / 0917-633-9634', '', '(034) 435-2588', 'morsehsc@salgroupco.com', 'COD', 'Distributor', 'Ms. Jean', '', 'Active', '1.00', 1, ''),
(287, 'JHM Industrial Supplies', 'Products: Generating Sets: Brand New And Slightly Used, Generator Parts & Accessories, Synchronizing and switch gear, Automatic Transfer Switch (ATS), Automatic Voltage Regulator (AVR), Meter Water, Automatic Trickle Charger, Transformers, Hydraulic Pumps, Hydraulic & Pneumatic Tools, Heavy Equipments, Mill Supplies, Marine Parts, Chemicals. Services: Electrical Design & Installation, Preventive Maintenance & Repair, Engine Overhauling, Rewinding Generator & Electric Motor, Repair & Rewiring of Motor Control, Troubleshooting of any kind of Generator Set, Calibration of Woodward Governor, Generation Protection Relay. Others: Globe Valves, Flange, Installation of CCTV Systems', 0, 'Gov. Rafael Lacson St., Zone 12 Talisay City, Negros Occidental', '0949-846-7820 / 0923-568-3661', '', '', 'jhm_industrial@yahoo.com', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(288, 'Negros GT Group', 'Drill, Impact Drill, Cordless Screwdriver, Corded Screwdriver, Cordless Drill Driver, Cordless Impact Driver, Cordless Impact Drill, Battery with Charger, Cordless Freedom Tool (Batteries/Charger Not Included), Rotary Hammer, Demolition Hammer, Demolition Hammer Breaker, Straight Grinder, Small Angle Grinder, Large Angle Grinder, Polisher, Bench Grinder, Cutt-off Saw, Compound Mitre Saw, Sliding Mitre Saw, Jigsaw, Circular Saw, Sander, Planer, Trimmer, Plunge Router, . Table Saw/stand, Heat Gun, Blower, Wet & Dry Vaccuum Cleaner, High Pressure Cleaner, Laser Rangefinder, Line Laser, Point & Line Laser, Surface Laser, Detector, Optical Slope, Angle Measurer, Digital Inclinometer, Tripods, Levelling staff, Metal Drill Bits, Masonry Drill Bits, Chisels, Bonded Abrasives, Diamond Cutting Disc, Coated Abrasives, Jigsaw Blades, Planer Blades, Sabre Saw Blades, Screwdriver Bits, Chuck Keys, Bi-mtel Hole Saws, Router Bits-1/4', 0, '159-161 Lacson St., Bacolod City', '(034) 434-6154', '', '(034) 433-4983', '', 'COD', 'Distributor', 'Mr. Benjamin G. Sy Jr.', '', 'Active', '1.00', 1, ''),
(289, 'Powersteel Hardware', 'Structural Steels', 0, 'Coastal Road, Brgy. Banuyao, Lapaz, Iloilo City', '(033) 330-3792 | (033) 329-4484', '', '(033) 330-3867', 'sales_iloilo@powersteel.com.ph', 'Advance Payment (Bank to Bank)', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(290, 'Propmech Corporation', 'CAT MARINE POWER ENGINEERING SERVICES-Parts Supply, engine, transmission, generator & waterjet servicing, marine products-transmissions, waterjets, electric generators, marine products engineering services-install, repair, troubleshoot, automation products-control systems (dcs), programmables controllers (pcls), supervisory control, data acquisition system (scada), industrial networking solutions, motor control, field instrumentation, automation engineering services-design consultation, instrumentation detailed design, control panel design and building, plc/scada,dcs programming, industrial networking design, motor control center design & installation, upgrade/migration of control system, project management. COASTAL REFRACTORIES-Dense and Insulating Castables, Low & Ultra-low Cement Castables, No Cement Castables, Super-Duty Plastic Mouldables, Refractory and Ramming Mixes, Super Bond Mortar (Wet Type). EXLUSIVE DISTRIBUTOR OF: ACUMEN SEALS-Cartridge Single Mechanical Seals, Cartridge Double Mechanical Seals, Single Spring Mechanical Seals, Multi-Spring Mechanical Seals, Metal Bellows Mechanical Seals, Customized Mechanical Seal Design. DISTRIBUTOR OF: PSP-Zero leak Pump Technology for Sugar and Chemical Plant, Positive Displacement Pumps, Chemical Pumps, Gear Pumps. THERMAX: MULTI-FUEL CAPABLE BOILERS-Coal-Fired Boilers, Biomass Fired Boilers, Spent-Wash Fired Boilers, Gas-Fired Boilers, AFBC/CFBC Design, Travelling Grate Design. POWER DIVISION: EPC CAPABILITIES IN-Biomass Based Power Plants, Pulverized Coal-based power plants, AFBC/CFBC boiler based power plants, Waste Heat recovery boiler based power plants. AIR POLLUTION CONTROL EQUIPMENT-Electro-static Precipitators, Bag Filters, Flu De-sulphurisers, Scrubbers, Dust and Fume Extraction System, Spare Parts. CHEMICAL DIVISION-ion-Exchange Resins, Waste Water Treatment Chemicals, Boiler Water Treatment Chemicals, Cooling Tower Treatment Chemicals, Fireside Treatment Chemicals, Fuel Treatment Chemicals. OTHER SERVICES OF ASSISTCO:-Furnace lining design & installation, building and erection, Boiler & heater repair, hot & Cold Insulation for Vessels & pipelines, ceramic fiber & firemaster installation, Refractory Castables & Firebricks Installation, Civil Construction. Mechanical Seal & Pump Repair. PRODUCTS-Mechanical Seals, Insulation-Kaowool Ceramic Fiber Blanket, Mineral Wool Blankets, Calcium Silicate Blocks, ACUMEN Seals, LTD: PSP Pumps, THERMAX-Ion Exchange Resin, LARS Enviro. SERVICES-Furnace Lining Designs & Installation, Building & Erection Boiler & Heater Repair, Hot & Cold Insulation for Vessels & Pipelines, Ceramic Fiber & Firemaster Installation, Refractory Castable & Firebricks Installation, Civil Construction, Mechanical Seal & Pump Repair', 0, 'J. king Warehouse, M. Sanchez St., Alang-alang, Mandaue City, Cebu', '(032) 344-0738', '', '(032) 344-0624', '', 'COD', 'Distributor', '', 'The leading local supplier of CAT Marine Production Propulsion Systems as well as primary & auxiliary electrical power installations. We''ve supplied & supervised the installation of propulsion systems in naval, coast guard, ferry service, yachts, fishing boats and many types of work vessels Philwide. The owners/operators of these vessels have recognized the numerous advantages indealing with us as a  single-source supplier of engines, parts & services.', 'Active', '1.00', 1, ''),
(291, 'Assistco Energy & Industrial Corporation', 'Conventional Castables, Light Weight Insulating Castables, Low & Ultra Low Cement/Self Flow Castables, Silicon Carbide (sic) Low Cement Castables, Plastic Mouldables, Ramming Mixes, Bonding Mortar', 0, 'Door # 2 Parklane Building, Cor. Rizal-Tindalo Sts., Shopping Center, Bacolod City', '(034) 435-1605', '', '(034) 435-1605', '', 'COD', 'Distributor', 'Mr. Castaneda, Emmanuel Rondain', '', 'Active', '1.00', 1, ''),
(292, 'Joules Enterprise & Engineering Services', 'MAIN PRODUCT LINES: Steam boilers and accessories, DISTRIBUTORSHIP: Grundfos pumps and donaldson ih filters, HONEYWELL CONTROL INSTRUMENTATION; indicators, controller, recorders. DANFOSS PRESSURE AND TEMPERATURE SWITCHES; pressure and temperature switches. MCDONNELL & MILLER; for steam boilers, MAGNETIC ROLLER DISPLAY; kuebler/finetec, SAFETY RELIEF BULB; kunkle, STEAMTRAP FOR STEAM BOILER; tlv, spirax sarco, adca, dsc, CONTOIL; fuel oil meter, SUNTEC PUMPS; fuel oil pump, fuel solenoid valves, burner fuel pumps. JEES STEAM BOILERS, HORIZONTAL STEAM BOILER, PLATE HEAT EXCHANGER, JEES VERTICAL. STEAM BOILER, BIOMASS STEAM BOILER. PRESSURE AND TEMPERATURE GAUGES; wika, ascroft, weksler. ASCO; for steam, air and fuel. ALIA; flowmeter transmitter indicator. ADCA, TLV, SPIRAX SARCO; control valves, prv, regulators. NICE; pressure, transducers, transmitters. WARREN; electric heater. BIOMASS STEAM BOILER; olympia, dunphy. Webster, etc. DIESEL ENGINE PARTS: Pistons, piston rings, valves, bearings, fuel injection pumps, o-rings. BRANDS: Sulzer, mak, wartzila, daihatsu, caterpillar, man b & w, mitsubishi, yanmar. PLATE HEAT EXCHANGER PARTS: PLATES AND RUBBER GASKETS: Alfa-laval, apv-invensys, tranter, hisaka, fisher and others. OIL-SEALS AND O-RINGS: Oil seal and o-rings in various sizes and materials such as viton, silicon, nbr, etc. Imported Or locally fabricated. OTHERS: Chiller and air compressors, pneumatics and instrumentations, sensors, electronic flowmeters And other equipment accessories. ENGINEERING SERVICES: Insulation and aluminum cladding of engine exhaust manifold, Insulation of pipeline from fuel line to engine. MAJOR ENGINEERING SERVICES: Installation, supervision, technical expertise and commisioning of major product line, Supplied by joules enterprise. This includes comprehensive training to plant personnel, Regarding the technical aspects of the supplied equipment, products and/or spare Parts, Steam boiler fabrication, rehabilitation and installation, Pumps and piping installation and pipe insulation, Refrigeration and air-condition services. Diesel Engine Parts (Sulzer, Daihatzu, SEMT Pielstick, Mitsubishi, Yanmar, Deutz), Fabrication and Machining Services, Printing Rollers, Crankshaft and Roller Grinding, Laser Alignment, Dynamic Balancing and Gear Fabrication', 0, 'G/F Unit 4, GA Esteban Bldg., Lacson St., Bacolod City, Negros Occidental', 'Bacolod-(034) 213-8574, 0923-171-3197, Head Office-(045) 458-0848: 0918-940-7243: 0917-919-5258, Vertec Marine - +6567468575/+6567467166', '', '(045) 322-4144', 'info@joulesengineering.com / jovenruby888@yahoo.com / jjm@joulesengineering.com / eddie@vertec.com.sg', 'COD', 'Distributor', 'Ms. Ruby P. Joven (Sales & Marketing Executive-Bacolod), Mr. Joel J. Manalang (President/CEO), Vertec Marine (Mr. Eddie Lim-Director)', 'Main Office Address: Jees bldg., Blk. 6 Lot 10 Doña Juana Cor. R. A. Canlas St., Springside, Pandan, Angeles City', 'Active', '1.00', 1, ''),
(293, 'Nexus Industrial Prime Solutions Corp.', 'SMC- air preparation equipment, flow control equipment, actuators/air cylinders, electric actuators/cylinders, fittings & tubings, directional control valves/solenoid valves. KOBELCO- oil flooded compressor, oil free compressor, group controller ecomild II, OMRON- covering the complete spectrum of control components and automation controls, relays, power supply, timers, digital panel meter, sensors, temperature, controller, push buttons, counters, variable frequency drives/inverter, encoders, hmi-human machine interface. lESER- api, high performance, compact performance, clean service, critical service, modulate action. WEIGHING SCALE- pioneer series, valor series, explorer series, defender series, single load cell flatform, ckw series. WIKA- pressure gauges, pressure gauges transmitter/switch, sf6 gas, air2guide, mechanical temperature, electrical temperature, electrical temperature, thermowells, diaphragm seals, high purity/ultra, high purity (uhp), pressure transmitters, high precision & calibration test. PROCESS VALVES- angle seat valves stainless/standard, butterfly valves, mounting type, 3-piece ball valves direct  mounting type, butterfly valves w/ actuators, ball valves with actuator, 3 way ball valves, ball valves flange type, general purpose valves, gate, knife, check valves.', 0, 'Unit B, Roselindees Building, Galo-Hilado St., Bacolod City', '(034) 435-0560 / 0928-5079-9741', '', '(034) 435-0560', 'sales-ceb@nexusindustrial.com.ph', 'COD', 'Distributor', 'Ms. Maricel Gumban - Sales Engineer', 'www.nexusindustrial.com.ph', 'Active', '1.00', 1, ''),
(294, 'AGEC Engineering Supplies', '1. Supply of API std. valves up to 12 inches 2. Supply of seamless brass tubes 1/2 inch to 3/4 inch diameter 3. Supply of SS perforated screen. 4. Supply of Flexitallic gaskets. 5. Supply of packings and gaskets. 6. Supply of engineering for up grading/retrofitting of boilers. 7. Supply of engineering in the fabrication of the following:       a. Juice Screening       b. Air and Gas dampers.       c. Oil Cooler (Tubular)       d. Tubular Heaters       e. AgriculturalFarm Implements       f. Rice and Cassava Mechanical Drier 8. Mechanical equipment installation & Mechanical Fabrication. 9. Piping and Duct Works. 10. REPAIR OF OIL COOLER 11. INDUSTRIAL SCREW CONVEYOR  PRODUCTS CONTROL VALVE, GATE VALE, STEEL SWING VALVE, BUTT WELD GATE VALVE, SEAMLESS BRASS TUBES, SS PERFORATED SHEET', 0, 'American Packing Ind., Mandalagan, Bacolod City', '0947-776-8124 / 0916-300-8019', '', '', 'cepe.andres@yahoo.com', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(295, 'Sealand Industrial Supply', 'INSULATION, ENGINEERING PLASTICS, INDUSTRIAL PLASTIC CURTAINS, INJECTABLE PACKING. PRODUCT LINES 1. Packings & Gaskets 1.a Non-asbestos & Asbestos 1.b Manhole/Handhole/Tadpole, Tools 2. Engineering Plastic 2.a Nylon, UHMW, Acetal 2.b Fibra, Polycarbonate (Rod, Sheets & Fabrication) 3. PVC Curtain-Clear, Ribbed & Anti-Insect 4. Preventive Maintenance Chemicals 4.a Lubricants, Grease, Cleaners & Oils 4.b Hi Heat Paint, Epoxy Pant, Floor Ceiling & Wall Coating 5. Metal Repair System 6. Insulation-Ceramic / Rockwool Blanket 6.a Fiberglass/Asbestos Cloth, Tape, Rope 7. Neoprene Rubber - Plain, Cloth & Nylon Insertion 8. Hydraulics- O ring Kit/Rubber Fabrication 9. Air Slide Canvass/Filter Bag/ Cloth 10. Stuffing Box Sealant 11. Teflon Products (Sheet, Rod, w/ Filler) 12. Labor & Materials of Expansion Joint', 0, 'Plazamart, Araneta St., Bacolod City', '0932-9034-564', '', '', 'bacolod@sealandindustrial.com / clarisseleria15@gmail.com', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(296, 'EFRC Industrial Services & Trading Corp.', 'SERVICES OFFERED: 1. IN-Situ Machining, Crankshaft Grinding, Honing and Polishing 2. On-Situ Inspection of Ovality, Run-out, Deflection, Bend & (MPI=UV, DRY and WET  PROCESS) Magnetic Particle Inspection for Crank testing. 3. On site Straightening of Bend Crankshaft 4. In-situ Machining of Liner Seat (Landing Surface) 5. In-place Reboring & Resleeving of Bottom Liner Seat. 6. In-Place Machining of Slip Ring on Turbine for Hydro Electric Power Plant. 7. In-Place Vertical Reboring of tube sheet holes of vacuum pan for refinery & raw sugar 8. In-Place line boring of bearing saddle, rubber stalk etc. (using brand new sir mechanica-italia portable machine) 9. In Place Reboring of bearing housing for tyre roller of vertical raw mill, coal mill and shoe-slide guide of corliss engine 10. In-place Machining of Large Fillet Radius on grinding rollers for sugar mills & other similar machinery parts. 11. In-place Resizing of Dowel Bolt Hole on Coupling Falnge of Hydro Turbine & Other Machinery with Similar Job. 12. "Rotalign Ultra" Laser alignment check CRACK REPAIR BY METAL STITCHING (COLD WELD Process) 13. Cracked & Busted Engine Frame & Blco 14. Turbo Charger Casing 15. Ball Mill Trunnion Head & Large Gear 16. Cylinder Heads & Gear Boxes 17. Mill Cheek, Column, Mill Bed 18. Other Materials That are unsafe to weld OTHER SERVICES/TRADING & PARTS SUPPLY 19. Cladding 20. Casting (local) Fabrication of new cyl. Head & casing w/ warranty and fusion  welding repair  21. Stellitting of Valve Spindle and valve cage 22. Supply of Expansion Joint (Bellow) in any sizes 23. Bi-Metal & Tri-Metal Crankshaft Journal Bearing From Korea 24. Supply of new OEM/Surplus Marine Engine & Generator Engine Parts. 25. Repair & Fabrication of New Cooler, Heat Exchanger from singapore 26. Supply of ex-stock or made to order stainless & non-stainless ''ampo'' valves 27. Supply of imported vertical mill roller, table liner made by jung-won of korea that are locally distributed by union-lock ind''l & trading corp. for cement and power generation.', 0, '252 Dr. Jose Fabella St., Plainview, Mandaluyong City', '(02) 533-6673 / 0917-324-9530 / 0917-599-3366 / 0918-939-7962', '', '(02) 533-6673', 'efrcindustrial@yahoo.com', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(297, 'New Interlock Sales & Services', 'GRUNDFOS 1. SP-4 inches to 10 inches diameter Stainless-Steel Sub. Pumps 2. CR-Vertical Multi-stage centrifugal pump 3. MMS-Rewindable Submersible Motors 4. NB/NK-Horizontal Single Stage Pumps 5. SQ3 inches diameter Submersible Pumps 6. Hydro 2000-Booster Unit 7. DME/DMS-Digital Dosing 8. HS-Horizontal Split-Case Pump 9. Pressure Reducing and Control Valves 10. Soft-Starters and Variable Speed Drives 11. Electromagnetic and ultrasonic flowmeters 12. Resilient type gate valves and fittings', 0, 'Door # 3 NGS Bldg., M. J. Cuenco Avenue, Mabolo Cebu 6000', '(032) 2315-906 to 907; 412-8431; 412-8278 to 79', '', '(032) 2315-907', 'limsamben168@yahoo.com', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(298, 'Fil Generators And Services Company', 'PRODUCT LINES 1. Electric Diesel Generator Sets 2. Automatic Transfer Switch (ATS) 3. Synchronizing Panels 4. Automatic Voltage Regulator (AVR) 5. Generator Controls & Protection Devices/Gauges 6. Woodward Governors 7. Engine Lube oil, Fuel, Air & Water Separator/Filters 8. Autmatic Battery Float Charger 9. Generator Mechanical & Electrical Parts  SERVICES 1. Repair/Troubleshooting of Generator Sets 2. Electrical & Civil Works 3. Calibration/Repair of Woodward Governors 4. Generator and Motor Rewinding 5. Engine Overhauling 6. Engine Tune Up 7. Gen Set Installation & Commissioning 8. Gen Set Hauling 9. Preventive Maintenance 10. Radiator Repair/Overhauling 11. Installation & Commisioning of power generating equipments', 0, 'Door # 7, East Plaza Bldg., Circumferential Road, Brgy. Taculing, Bacolod City', '(034) 446-2674 / 0917-140-4763', '', '(034) 446-2674', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(299, 'Acster Marketing', 'SPECIALIST: Waterproofing & Retrofitting Services 1. Structural Epoxy Injection 2. Structural Re-enhancement Carbon Fiber Installation 3. Non-Shrink Structural Grout 4. Parex Davco/Lanko Putty & Waterproofing Products 5. Ultracote Industrial Epoxy, Paints & Coatings', 0, '128 Araneta St., Singcang, Bacolod City', '(034) 458-4077 / 0927-291-2209', '', '', '', 'COD', 'Contractor', 'Mr. Domingo Rodrigo Jr. (0918-784-5691; 0915-420-0971)', '', 'Active', '1.00', 1, ''),
(300, 'Mandaue Atlas Steel Fabrication Corp.', 'SERVICES 1. Steel Fabrications, Bending, Rolling, Shearing, Power Press, Machining Stainless, Aluminum, Galvanize, MS Plates, Brass 2. Tig Welding, Planer, Pipe Bending, Rolling, Dishing  1. Bending 1/2 inch capacity of steel plate (stainless or Mild Steel) 2. Cutting 1/2 inch capacity of steel plate (stainless or Mild Steel) 3. Rolling up to 2 inch capacity of steel plate (stainless or mild steel) 4. Welding using mig weld or tig weld on stainless or aluminum metals 5. Pipe Bending and Rolling up to 4 inch dia of B. I. Pipe or stainless pipe   6. Angle Bar of Flar Bar cutting and rolling 1/2 inch thickness 4', 0, 'Plaridel St, Paknaan, Mandaue City, Cebu', '(032) 505-1806 / 316-2364', '', '(032) 420-4646', 'matlas_steel@yahoo.com', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(301, 'YKG Industrial Sales Corp.', 'PRODUCTS 1. Aluminum, Brass, Copper & Stainless (Angle & Flat Bars, Shaftings, Rods, Tubes, Sheets, Pipes & Fittings) 2. Black Iron & Galvanized Iron Pipes 3. Cold Rolled and Tool Steel Shaftings (1045, 4140, 4340) 4. Channels Bars, I-Beams & H-Beams 5. Mild Steel Angle & Flat Bars 6. Mild Steel & Checkered Plates 7. Galvanized & Perforated Sheets 8. Purlins & Tubings 9. Tube & Pipe Fittings of all kinds 10. Ordinary and stainless Spring Wires 11. Bolts & nuts of all kinds 12. Welding Rods of all kinds 13. Industrial Valves', 0, '7-9 M. C. Briones St., Cebu City, 6000', '(032) 255-0870 to 73', '', '(032) 255-0873; 412-1908', 'ykgindustrial@gmail.com', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(302, 'Worldwide Steel Group, Inc.', 'PRODUCTS 1. Deformed Steel Bars, Plywood, Smartboard, Phenolic Boards, Holcim Cement, Angle Bar, Deformed Wire Rods, Steel Matting/Wire Mesh, C-Purlins, Metal Framings, Nails, Finishing Nail Wires, Corrugated Sheets, Umbrella Nails, G. I. Wire', 0, 'Sacris Road Ext., Mandaue Cebu 6014', '(032) 346-0959; 345-0458: 344-0660', '', '(032) 345-3748 to 49', '', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(303, 'Tokyu Hardware & Industrial Supply', 'STEEL ITEMS 1. BARS - deformed, angle, channel, flat, plain, square and c-purlins 2. STEEL PLATES - various sizes of mild steel, checkered, boiler, A. R. and A. B. S. plates 3. BEAMS - various sizes of wide flange, beams & I-beams 4. PIPES - B. I. & G. I., Aluminum, brass and copper 5. SHEETS - stainless, G. I., Alumuminum, Brass and Copper 6. SHAFTING - CR, tool steel and stainless 7. TUBE - B. I., stainless, square, rectangular and copper 8. FITTINGS - Sch 40 - 80, G. I.. B. I. & Stainless Fittings  INDUSTRIAL ITEMS 1. POWER TOOLS (AEG, MAKITA, POWER CRAFT) - percussion drill, rotary hammers, angle grinders, jigsaw, belt sanders, demolition hammer 2. PRECISION TOOLS - air compressors, hand chisel, REIN STAG, hot air gun, crimping tools, automotive tools, plumbing tools, CIGWELD, gas cutting outfit, LENOX 3. MACHINE TOOLS 4. TOOLING 5. CUTTING TOOLS 6. INDUSTRIAL EQUIPMENT  HARDWARE ITEMS 1. Drill Bit, Hand Tap, Tool Bit 2. Abrasive - Sand Paper, Cutting and Grinding Wheels 3. AIR COMPRESSOR - various CFM and model 4. CHAIN BLOCK - hydraulic jack, overhead hoist motor 5. HOSE - hydraulic, fire nylon, rubber and high pressure hoses 6. MOTOR - electric motors various type and model 7. WELDING ROD - Nihon Weld, Fuji, Wipweld & ferrocord 8. GASKETS - asbestos, rubber gasket, asbestos cloth, asbestos packing 9. WELDING MACHINE 10. CASTERS - various model and sizes 11. VALVES - various types and sizes  CONSTRUCTION ITEMS 1.PVC PIPES AND FITTINGS - various sizes type ATLANTA, MOLDEX, EMERALD, ESLON and NELTEX 2. V arious wires - galvanized, barb wires, cyclone wire, CW Nails and finishing nails 3. EXPANDED METAL and STEEL MATTING 4. BOLTS & NUTS - various sizes of ordinary bolt/nuts, stainless and high tensile 5. Various Paints - Dutchboy, Boysen and Island 6. Adhesives - Apollo, pioneer, rugby and vulcaseal 7. Cement, Plywood  SAFETY PRODUCTS 1. Hard Hat, Welding Mask, Dust Mask, Safety Shoes, Rubber Boots and Welders Coat 2. Safety Gloves - maong cotton, working gloves, leather, welding gloves, industrial and rubber gloves for chemicals  BRANDS CARRIED: 1. WELDING ELECTRODE - NIHONWELD, WIPWELD, FUJI and FERROCORD. 2. CUTTING OUTFIT - COMET and HARRIS brand including SMITH and WIPARC 3. Distributor of - MAKITA, DE WALT, TYROLIT, TAILIN, ULTRA, KEMMAFLEX & STARRETT 4. RIGID, STANLEY, YAMATO, KITZ, UNIOR, SKC, TONE, TAJIMA, and NICHOLSON', 0, '1175-9 Highway 77, Talamban 6000 Cebu City', '(032) 345-1500 / 345-0498 / 416-0088', '', '(032) 344-1344', 'info@tokyuhardware.com', 'COD', 'Importer, Wholesaler, Retailer', '', 'website: www.tokyuhardware.com', 'Active', '1.00', 1, '');
INSERT INTO `vendor_head` (`vendor_id`, `vendor_name`, `product_services`, `category_id`, `address`, `phone_number`, `mobile_number`, `fax_number`, `email`, `terms`, `type`, `contact_person`, `notes`, `status`, `ewt`, `vat`, `tin`) VALUES
(304, 'CJ KARR Industrial Sales And Services', 'LIST OF PRODUCT LINES, ERIKS, RANGE OF PRODUCTS EXCLUSIVE LINES (HOLLAND), Sheets Gasketing Materials, Compressed Asbestos & Non-asbestos gasket sheet, Fluid Sealing Rubber Gasket Sheet, Granulated & Rubberized cork gasket at continuous length of 45 meters, ERIK’S PRECISION O-RINGS: Nitrile Compound Heat and Oil resistant 105 deg. Cent., Maximum working temperature at continuous service, Viton Compound heat and oil resistant 230 deg. Cent., Maximum working temperature at continuous service, Silicone Compound Heat and oil resistant 230 deg. Cent., For High Temp. Fire, Oxygen, & heated water. Excellent for static application, ERIK''S, OIL SEALS AND V-RING SEAL, ENGINEERING PLASTICS, MECHANICAL SEALS, BALL VALVES, One (1) piece design, stainless steel reduced bore teflon seated, Three (3) piece design, full bore type 316 stainless steel teflon seated, 1000 PSI, SKF BALL & ROLLER BEARINGS/GREASES AND INSTRUMENTS, CROWN Chemicals (USA), Fault Finder Cleaner, Penetrant & Developer; Insulation Tester, Mold Cleaner, Gen., Purpose Silicone Mold ready release, Heavy Duty Silicone Mold Ready Release, Paintable Mold Ready Release, Zinc Stearate, Mold Release, Waterbase Cleaner/ Degreaser, Toolmaker''s Ink-blue, Kleer Kote, Battery Terminal coating, Rus Inhibitor, Penetrating Oil, Corrosion Suppressant/Formula 101, Food Safe Lubricant, Moly, Lift Truck grease, TFE Dry Film Lubricant, TFE Lubricant Permanent Film, Dry Moly Lube, Red Insulating Varnish, Prussian Blue Spot Indicator, Freon TF Degreaser, Cold Galvanizing Compound, Cutting Oil, Lithium Grease, Moly Oil, Open chain lube, HD open gear/wire rope, box-saver-tan & white, High Temp. Paint-Black & Aluminum, All 4 Moisture Displacing Lube, Welder''s Anti-Spatter Liquid, General Purpose Silicone Lube, Drive Belt Dressing, General Purpose adhesive, Heavy duty cleaner/ degreaser, electronic component cleaner, Freeze it, Anti-seize compound, tap tool Heavy Duty Cleaner, Off-line Contact Cleaner Devcon, Epoxies, Urethanes, Adhesives and Sealant Maintenance chemicals, Tig welding machines – gensiang, Expansion joints and bellows, Rnw pacific pipes (erw gi/bi pipes & fittings), Hyundai welding electrode', 0, 'Dr # 2, E & R Bldg, Hernaez Ext., Prk. Kabukiran, Taculing, Bacolod City', '(034) 709-0130 / 446-3843', '', '(034) 446-3843', 'cjkarr_bac@yahoo.com', 'COD', 'Distributor', 'Mr. Ramil Arquilola-Technical Sales Representative', '', 'Active', '1.00', 1, ''),
(305, 'Goldensteel Construction Supply', 'Wide Flange, Tubulars, Square Bar, Deformed Bars, GI/BI Pipes, Flat Bars, Light Metal Frames, C-Purlins, Round Bar, Angle Bars, Channel Bars, Pre-Painted Roofing, PVC Pipes, Cements, Pipe Fittings, Gate Valves, Check Valves', 0, 'G/Floor, Casals Building, Pagsabungan Mandaue City', '(032) 405-3262 / 0998-5394-560 / 0942-356-6747 / 0910-613-2888', '', '(032) 414-4584', '', 'Advance Payment-Bank to Bank Transaction', 'Distributor', 'Ms. Menia', '', 'Active', '1.00', 1, ''),
(306, 'RJ Spring Rubber & Metal Parts Manufacturing Corp.', 'Manufacturer of all kinds of spring, rubber, metal stamping and metal fabrication,  bended wire. SPECIALIZE in:  Compression, Torsion, Tension Springs etch, metal fabrications and engineering plastic fabrication, vulcanizing & molded rubber products.', 0, '#171National Road, Ortigas Ext., Brgy. Delapaz, Antipolo City, Rizal', '(02) 658-1951; 384-9315; 473-0433; 215-3069', '', '(02) 658-1987', 'sales@rjspringrubber.com', 'COD', 'Distributor', '', 'website: www.rjspringrubber.com', 'Active', '1.00', 1, ''),
(307, 'Moldex Products Inc.', 'O-ring Type PVC-U DWV Sanitary Piping System  PIPES  FITTINGS Bend 45 degree, Bend 87.5 degree, Single Branch Tee 87.5 degree, Double Branch Tee 87.5 degree, U-trap with plug, Single Branch Wye 45 degree, Double Branch Wye 45 degree, Double Socket, Eccentric Reducer, Clean out with plug, flat bottom o-ring, round bottom o-ring  Water Pipes and Fittings PE Fusion Pipe & Fittings All Purpose, Heavy-Duty, High Density Polyethylene Pipes PVC-U Heavy Duty Rigid Electrical Conduit PVC-U Flexible Electrical Conduit Fire Sprinkler Press System PVC Films PVC Pipe Cement Zero-toluene PVC-U Drain, Waste and Vent Sanitary Piping System', 0, 'Moldex Building., Ligaya St., Cor. West Ave., Quezon City', '(032) 373-8888 / 373-4009 / 0917-863-9237', '', '', 'sales@moldex.com.ph', 'COD', 'Distributor', 'Mr. Dennis Blanc-0917-863-9237', 'website: www.mpi.moldex.com.ph', 'Active', '1.00', 1, ''),
(308, 'Gibrosen Fire Safety Products', 'SERVICES 1. Installation Services-Contractor 2. Installation of Automatic Sprinkler System 3. Fire Alarm System 4. Fire Protection System 5. Kitchen Fire Suppression System 6. Fire Hydrant System 7. CCTV Alarm System 8. Fire Safety Products & Equipment 9. Industrial Products Equipments & Services 10. Manufacturer/Wholesaler/Retailer-GIBROSEN Fire Extinguisher', 0, 'Door # 2 Triple E''s Siasat Bldg., Burgos Ext., 4th Road, Villamonte, B. C.', '(034) 434-2881', '', '(034) 708-7299', '', 'COD', 'Contractor', '', '', 'Active', '1.00', 1, ''),
(309, 'Phil-Nippon Kyoei Corp.', 'EXCLUSIVE PRODUCT LINE 1. Boilers, Water Treatment and Chemicals 2. Fresh Water Generators 3. Pumps 4. Marine Diesel Engine 5. Industrial Valves 6. Anti-Sway Motor 7. Anchor Windlass                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        9. Heavy Equipments  GENERAL PRODUCT LINES 1. Marine Vessel and Auxiliaries 2. Diesel Generating Power Plants 3. Refrigeration Compressors, Insulating Panel and Racking System 4. Switches/Sensors 5. Pumps 6. Compressors 7. Purifiers 8. Boilers 9. Pipes & Fittings 10. Separators 11. Electrical Control 12. Turbo Chargers 13. Marathon Hose 14. Nautical Equipment  ENGINEERING SOLUTIONS & SERVICES Boiler Inspection, Analysis, Troubleshooting and repair, tube replacement, burner troubleshooting and repair, combustion control upgrade, feed water line, feed pumps, water softener, valves, steam line, safety valves repair and installation, refractory repair and replacement, chimney/flue and duct cleaning, boiler preventive maintenance.  Fresh water generator inspection, troubleshooting, repair & insstallation.  Hydraulic and Pneumatic System Design, Repair, Servicing and Installation of Hydraulic and Pneumatic Cylinders, Pumps, Motors, Power Units & Valves.  Repair and Maintenance of all equipment parts, spares and auxiliaries pertaining to power, petrochemical and marine industries.  Provide on-board performance testing using state of the art combustion analyzer to assess practical maintenance activities and replacement parts that reached service life.  Conduct a comprehensive energy audit of industrial plants and commercial building to align design and actual electrical load consumption. Corresponding practical  reccomendations will be advised the correct electrical recommendations thru workable maintenance and operations.  Repair and turn key, installation Refrigeration and Air-Conditioning Equipment.  Repair and Installation and Commisioning of Lube Oil/Fuel Oil Purifiers/Turbo Chargers/ Air Coolers  Supply, Turn Key, Installation and Commissioning of Power Plant.  OTHER PRODUCTS MECHANICAL Valves, Air Motors, Electric Chain Hoists, Hydraulic Power Units, Pressure Gauges, Flowmeters, Tachometers, Valves, Positioners, Valve Mounted, Process Controls, Control Systems, Air Filters Regulators, Lock-up Valves, Transfer Valve Regulator, Reducing, Back, Liquid Pressure and Differential Pressure Controls for Steam, Gas Services Signal Conditioning, I/P for Field Installation Switches.  INSTRUMENTATION & ELECTRICAL Level Switches, Sensors, Cables and Accessories, Temperature Transmitter Circuit Breakers, Servo Motors, Thermometers and Well Temperatures, Thermocouples, Thermo Elements, Temperature Gauges, Switches, Pressure Switches, Volumetric Flow Meters, Oxygen Analyzers, Ultrasonic Transmitters, Mill Roll Lift Detectors, Dial Thermometers, Torque Anti-Sway Motors, Level Transmitters, Reconditioning of Nozzle Tips, Plungers and Barrels, Delivery Valves', 0, 'S705 Royal Plaza Twin Towers 648 Remedios St., Malate, Manila', '(02) 400-5778 / 328-3270', '', '(02) 400-9130; 310-0649', 'allan.velarde@philnippon.com.ph', 'COD', 'Distributor', 'Mr. Allan B. Velarde', 'website: www.philnippon.com.ph', 'Active', '1.00', 1, ''),
(310, 'Able Machine Industries', '1. FABRICATION OF FUEL STORAGE TANKS 2,000 - 6,000 U.S. gal. & up capacity using MIG Welding  2. REPAIR OF ALUMINUM TANKERS & IRRIGATION PIPES Using TIG (High Frequency) (Welding & MIG Welding)  3. FABRICATION OF STAINLESS Stair Railings, Table Sink, Electrical Enclosure, Bending of Plates', 0, '618 Ylac Ave., Villamonte, Bacolod City', '(034) 435-5960', '', '(034) 433-0009', 'ablemachineind@yahoo.com', '30 days PDC', 'Contractor / Machine Shop', 'Mr. Oscar B. Rojas Jr. - 0917-301-6321', '', 'Active', '1.00', 1, ''),
(311, 'First Pilipinas Power and Automation, Inc.', 'PRODUCTS: Generators, Automatic Voltage Regulator, Automatic Voltage Regulator, Manual Transfer Switch, Automatic Transfer Switch, Transformers, AC/DC Motors, Motor Starters, Soft  Starters, Variable Speed Drives, Gear Motors, Lightning Protection, Surge Protection, Ground Resistors, LV & MV Switchgear, Motor Control Centers, Power Distribution Panels, Capacitor Banks, Genset Synchronizing Panel. AUTOMATION: Programmable Logic Controller (PLC), Human-Machine Inteface (HMI), Distributed Control System (DCS), Supervisory Control and Data Acquisition (SCADA), Instrumentation for  Level, Pressure Flow, Temperature, Weighing Gas & Fluid Analyzers, Loop Controllers, Fieldbus, Profibus.  SERVICES Project Engineering & Management, Installation, Testing & Commissioning, Preventive Maintenance and Maintenance Contracts, Transformer Repair, Rewinding, Reconditioning, Generator Set Repair/Electric motor Repair or Reconditioning.', 0, 'Unit 1609 Cityland Tower 2 H. V. Dela Costa St., Salcedo Village, Makati City 1227 Philippines', '(02) 666-1843 / 892-1914 / 0922-881-4382/0927-311-5672', '', '(02) 753-1501', 'anne.teves@firstpilipinas.com', 'COD', 'Distributor', 'MS. Anne Teves/Jed Balaod - 0922-881-4382/0927-311-5672', 'website: www.firstpilipinas.com', 'Active', '1.00', 1, ''),
(312, 'LP Solutions', '1. Filtration 2. Lubrication 3. Conveyor 4. Tools & Instruments 5. Condition Monitoring', 0, '3/F Leeleng Bldg., 718 Shaw Blvd., Mandaluyong City, Phil, 1552 ', '(02) 723-7767 to 70 / 0999-855-3875', '', '(02)-726-5461', 'sales@le-price.com', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(313, 'Starlube Corporation', 'PRODUCT LINES: RIMULA R3+40 CF, DELO GOLD SAE 40, RIMULA TX 15W/40, RIMULA RX 15W40 CI-4/, DELO GOLD /500 15W40 CI-4 , TELLUS S2 V68, RANDO AW 68, GADUS S3 V220 C 2, GADUS S3 V220 C 2, high impact grease, GADUS S3 Wire Roap A, TURBO T-68, OMALA S2 G 150, OMALA S2 G 220, OMALA S2 G 320, ARC TRANSFORMER OIL, Degreaser (Water Base)', 0, 'Camia Street, Espinos Village 1, Circumferential Road, Bacolod City', '(034) 446-2420 / 446-2174', '', '', 'starlubecorp@gmail.com', 'COD', 'Distributor', 'Ms. Malou A. Derrama', 'COR TIN No.: 004-249-850-000 (VAT)', 'Active', '1.00', 1, ''),
(314, 'Berpa-Flex Technologies', 'PRODUCTS: A. FLEXIBLE PIPES / EXPANSION  JOINT (SS MATERIALS / FABRIC) - FABRICATION 1. Single and Multi Bellows 2. Single and Multi-Ply Bellows 3. Flange and Flangeless Flexible Pipe 4. Standard or made to order B. RUBBER PRODUCTS 1. Rubber pads and Gaskets 2. Rubber Impellers, Bushings. 3. O-rings, Rollers, Gaskets, Diaphragms 4. Rubber Expansion Joints. 5. Mechanical Seal.  SERVICES: 1. Machining 2. Design and Fabrication (Mechanical) 3. Repair of Industrial and Marine Boilers Super Heaters, Air Heaters D. Marine Hot Works. E. Repair and Reconditioning of all kinds of Industrial Pump. F. Fabrication & Assembly of Agricultural Machineries & Farm Implements.', 0, 'St. Michael Subdivision, Alicante, E. B.Magalona, Negros Occidental', '0908-1092-386 / 0917-4631-769', '', '', 'berpaflextech@yahoo.com / berpa_bacolod@yahoo.com.ph', 'COD', 'Contractor / Machine Shop', '', '', 'Active', '1.00', 1, ''),
(315, 'Filtertech General Trading', 'PRODUCTS Stainless Steel Filter Housings Melt Blown Filter Cartridges Membrane Filter Cartridges Pleated Filter Cartridges Carbon Filter Cartridges Wound Filter Cartridges  > Water Treatment Equipments & Parts Supply > Filtertech Filtration-Bags, Sterile Filter, Vent Filter, Dust Collectors, Ultrafilters, Mist Filters, Particulate Filters, Filter Cloth, Filter Press, Sintered SS Filters, Chillers, > Pumps-Oil Seals, Gaskets, Orings, Rewinding, Wires > Aircon AHU-Primary Filters, Bag Filters, Varicell, Mini Pleats, Hepa Filters, Ulpa Filters > Aluminum Glass Windows, Doors, Curtain Wall > Fuels and Lubricants > Water Refilling Station, Building & Installation > Power Transformers & Gen Sets > Automotive Filters, Oil Filters, Hydraulic Filters, Fuel Filters >Chemical Pumps, Air Operated Diaphragm Pumps >Valves, Meters, Gauges', 0, 'N & N Bldg., Cortes Ave. Maguikay, Mandaue City', '(032) 505-8490 / 0922-2266-86 / 0920-2593-077', '', '', 'filtertech_cvsale@yahoo.com', 'COD', 'Distributor', 'Mr. Jeovani C. Pigarido(Area Sales Manager)', 'COR TIN No.: 161-817-584-000 (vat)', 'Active', '1.00', 1, ''),
(316, 'Compresstech Resources, Inc.', 'riprocating compressors pet riprocating compressors rotary screw compressors oil free/variable speed rotary screw compressors centrifugal air compressor oil free & dental lab compressor oxygen & nitrogen generator portable compressors and generators desiccant dryers combined dryer refrigerated air dryer air filters oil filter & filter element automatic condensate drain system controllers & air audit inverters air leak detection parts & service plug & flow piping system flow sensor and data  logger blower/vacuum pumps fluid handling metallic & non-metallic diaphragm pumps piston pumps electric diesel & oil pumps manual/air operated grease pumps manual/air operated oil pumps waste oil drain receiver fluid metering & dispensing device electronic tire inflator washing tank manual/air operated grease gun hose reels for air, water, grease, oil & electricity progressive cavity pump material handling spring & air balancer manual/air electric hoist air/electric/hydraul winches cordless power tools air starter riveter, Ingersoll  Rand, Niower Systems, SEEPEX., BOGE, SFSCurtis, RISHENG, COAIRE AIR COMPRESSORS, INFINITY, ARMSTRONG, GAST, INMATEC (The World of Gases), CSiTEC, BEKO, SAMOA, POWERLINK, KYUNGWON COMPRESSOR, AIRpipe, FLUID HANDLING TOOLS (Made in Italy), MANN+HUMMEL,  VACON (DRIVEN BY DRIVES), INVT, SIMPLAIR, AIRMAN, Air tools Ratchet, impact wrenches, tire buffers, air hammer/needle scaler, air saw/angle grinder, Air drill, screw driver, ar sander, chipping hammer, paving breaker, digger   Air tools accessories Impact sockets, recoil hose, quick connect couplers, filter regulator & lubricator, Pneumatic tool oil, chisels', 0, 'CRI Bldg., 665 Pres. E. Quirino Ave., Malate Manila', '(02) 567-4389 to 95 to 98 / 0922-8063885', '', '(02) 567-4397', '', 'COD', 'Distributor', 'Ms Agnes (Cebu Branch) -0923-658-9375', 'www.compresstech.com.ph / AFFILIATES\r\nENERPRO  MARKETING,   INC.\r\nCRI Bldg., 665 Pres. E. Quirino Ave., Malate Manila\r\nTrunkline: (632) 567-4389 to 95 to 98\r\nFax No.: (632) 567-4397\r\n24 Hour Hotline: 0918-9421152/0922-8161261/0917-6245208\r\n\r\nAEONSTAR MULTIPRODUCTS SALES, INC.\r\n', 'Active', '1.00', 1, ''),
(317, 'Access Frontier Technologies, Inc.', 'Electromechanical > Element 14 > Newark  Power > TDK Lambda > Vicor  Test & Measurement > Fluke, Fluke Calibration, Fluke Networks, Pomona, EXFO, ECOM, OFIL, HIOKI  Telecommunication > Amplus communication, Grentech, Emerson Network Power, Maestro Wireless  Enterprise Network > Wireless Network, Wired Network, Network Security, Network Optimization  Outsource > SMT Printing Production & Tools, Safety Equipment  ELECTROMECHANICAL COMPONENT LED Driver, High-Capacitance-Electrolyte Capacitor, Slide Switch (2 series DPDT Through Hole 16A, 250V) TPS2660x Industrial eFuses from Texas Instruments, A7xx Series Aluminum Polymer Capacitors from KEMET OsiSense XS  Inductive Proximity Sensors From Schneider Electric, Industrial RJ45 Push Pull Connector -  variant 14 from TE Connectivity.  POWER POWER MODULE/ON BOARD TYPE, SYSTEM POWER SUPPLY, TDK-LAMBDA Noise Filter, ELC/ELV-SERIES  TEST & MEASUREMENT Fluke 8808A Digital Multimeter, Fluke 8846A AND 8845A Digital Multimeter  Telecommunication 2W-200W Outdoor C-Band Transceiver (70MHz), 2W-200W C Band BUC (L Band) 70MHz & L-Band Satellite Modem, L band to 70MHz Converter, Redundant System,  Ku/C Band PLL/DRO LNB/LNA  Multimeter, Clamp Meter, Industrial Thermal Imager, Earth Ground Tester, Earth Ground Tester,  Airflow Meter, Temperature Humidity Meter, Carbon Monoxide Meter, Aspirator Kit , Particle Counter Contact Thermometer: Fluke 561 Infrared and Contact Thermometer, ', 0, 'Unit # 207 Grand Arcade Bldg., AC Cortez., Mandaue City 6014, Cebu, Philippines', '(032) 420-2429, 420-7818, 239-2629', '', '(032) 345-0510', 'georgeliwag@accessfrontier.net', 'COD', 'Distributor', 'Mr. George W.F. Liwag - Cebu Branch Head', '', 'Active', '1.00', 1, ''),
(318, 'Flex-a-Seal Industrial Supply and Services', 'Mechanical Seals, Gland Packings, Gaskets, O-rings, Filter Clothes  1. MECHANICAL SEALS > Single Spring, Multi-Spring, Rubber Bellows Type Seal Design Seal Face Material >Carbon Vs. Ceramic >Carbon Vs Silicone Carbide >Silicone Carbide Vs. Silicone Carbide >Tungsten Carbide Vs. Tungsten Carbide etc.  SECONDARY SEAL (RUBBER ELASTOMER) > Nitrile, Viton, Epdm, Epr, Pure Teflon, Teflon Coated Rubber, Aflas, Expansion Joints, Insulation Glass, Ceramic Cloth, tape & board, All kinds of valves, strainers, couplings, special electrodes, bolts and nuts, electricals, measuring tapes, steel/ceramic/rubber brush on chemical lubricants, filter clothes, all industrial safety equipments', 0, 'Blk. 2, Lot 29 Eufemia Compound Circumferential Rd., Taculing, Bacolod City', '(034) 458-3290 / 213-5221 / 0939-955-3716 / 0998-9896-690 / 0922-8051-480', '', '(034) 458-3290 / 213-5221', 'flexaseal@yahoo.com, simonsingo38@yahoo.com', 'COD', 'Distributor', 'Engr. Simon T. Singo - 0939-955-3716 / 0977-064-5056', 'TIN Number: 946-180-356-000', 'Active', '1.00', 1, ''),
(319, 'AVK Philippines Inc.', '1. Gate Valves (Ductile Iron & Bronze) 2. Butterfly Valves (Concretic, Offset, Resilient Seated, Metal Seated) 3. Couplings & Adaptors 4. Fire Hydrants 5. Bail Valves 6. Pressure Control Valves 7. Repair Clamps', 0, '70 Wes Ave. West Triangle Quezon City', '(02) 376-6400 to 01 - 02-376-6399', '', '(02) 332-0609', 'sales@avk.ph', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(320, 'Bernabe Construction & Industrial Corp.', 'LINE OF WORKS > General Construction - roads, highways, bridges, buildings, site development, etc. >  General steel fabrication. > Car Assembly/Manufacturing Equipment - Painting Oven and booth, Electro-Deposit Coating Line,  Assembly Line and others. > Elevated, Underground and Surface Storage Tanks for water, oil, gas, chemicals, molasses and  pressurized vessels all according to ASME Code, Sec. VIII and API 650 Standards. > Design and Fabrication of Sugar Process Equipment - SRI Clarifier, Evaporator, Juice Heater,  Vacuum Pan, Crystallizer, Mill Installation, Massecuite Reheater. > Conveyors - Belt, Screw Conveyor, Bucket elevator, Sugar intermediate main cane carrier and  Auxiliary Chain Cane Carriers Cement, Mining, Paper mills, among others. > Pressure Vessels, Atmospheric Tanks, Floating Roof and Telescopic Tanks. > Steel forms (Moulds) for Pre-Cast and Pre-stressed concrete. > Bottling - Bottle Washer Carriers (Soaker). > Bailey Bridges and accessories. > Steel Towers and Structural Steel for building, factories and warehouses. > Dam and Irrigation facilities - Penstocks, dam and irrigation gates and accessories. > Water and Sewage Treatment Facilities - Purifier, Clarifier, Water Softeners, Stainless Blending  and Settling Tanks, etc. > Sugar Mills and Mining equipment and facilities. > Hydraulic Tilting Platforms/Truck Dumpers up to 100 tons. > Cane Gantry and other loading /transloading facilities. > ON and OFF the road (Farm and Highway) Trailers - Tanks, Bulk Sugar Trailers, Molasses, etc. > Farm implements - Harrows, Plows, Tractor attachments and other allied implements. > Rail Box cars, Steel Rail Ties and Cane Containers. > Foundry works and machine shops. > Smokestacks, Bugles, Racks, Cyclone, Ducting, Industrial Exhaust Fans and Blowers. > Shearing, Rolling and Bending; Dishing and Flanging services. > Fabricated Rolled Steam or Condensate Pipes. > Water Spray Ponds. > Distillery equipment and facilities - Distilling columns, Bubble caps, etc. > Project Engineering and Management. > Plant erection, Machinery and equipment installation - contract and/or cost plus. > Domestic and International Trading:  A. TAM S.r.l. (Italy) Hydraulic Hook-lift B. BONEL Mfg. (Australia) - Farm implements and Cane Harvesters  (chopped/whole stalk) C. Copper and Stainless Tubing (all sizes) D. Hydraulic Platform Truck Dumpers  (Tippers) E. Special Steel Application - heat and abrasive resisting plates, high tensile up to 155,000 PSI  tensile strength, mill shaft and other special application steel', 0, 'Roosevelt Avenue, Quezon City', '(02) 292-3401 / (02) 292-1540 / (02) 293-7625', '', '(02) 292-1745', 'bernabeconst@yahoo.com  / bernabeconstruction@yahoo.com', 'COD', 'Distributor', '', 'WEBSITE ADDRESS: http://bernabeconstruction.weebly.com', 'Active', '1.00', 1, ''),
(321, 'Dawson Technology PTY LTD.', 'PRODUCT LINES 1. Design an dmanufacturer of "Si-TEC Xtend" Integrated Digital Governors Hydraulic Amplifiers 2. CGC (Co-Generator Control) Governors for wide range of steam turbine generators. 3. GSM (Generator System Master) Control for Automatic Grid Synchronizing and load control. 4. ADG (Advanced Digital Governor) for steam turbine drives, (eg. Shredder, Mill, Fan, Knife, etc) 5. Advanced Software for Diagnostic (PC Tune) and data logging & remote monitoring (Data View) 6. Accessories including Opal Annunciator, Temperature, Scanner, Remote I/Os, MPU Expander, Etc. 7. Digital Integrated Governors (including CGC, TGC and ADG) for Diesel Engine Applications.  SERVICES OFFERED: 1. Governor retrofit/upgrade, design for optimum solution, site commissioning and training. 2. Governor services including service/calibration of hydraulic amplifiers & mechanical governors. 3. Design consultancy and the following engineering services using DigSILENT Power Factory Software through our subsidiary company Dawson Engineering.', 0, '231 Holt Street, Eagle Farm Queensland 4009, Australia', '+61 738-684-777', '', '+61 738-684-666', 'remesh@govtec.com', '', '', '', '', 'Inactive', '1.00', 1, ''),
(322, 'Deco Machine Shop', 'PRODUCT LINES: Gears, Sprockets, Pins, Bushings, Blowers, Impellers, Compressors, Valves, Seaming, Chucks & Rolls, Bottling Vent Tube, Linear Shafts, Conveyors, Rollers, D2 Punches & Dies.  SERVICES OFFERED: Engine Rebuilding, Computerized (CNC) Machining, Dynamic, Balancing 1 kg -10,000 kg, Zvibratory Stress Relieving, Fabrication and heat treatment of gears, gearbox rebuilding, on site Machining & Repair Exhaust Valve, Satellite Rebuilding, Resurface of Lathe Redways, Blade Sharpening (10fit Max). Laser Alignment of Gensets, Pumps, etc.', 0, 'J. P. Cabaguio Avenue, Davao City', '(082) 226-4338', '', '(082) 226-4339', 'sales@decomach.com', '', 'Machine Shop', '', '', 'Inactive', '1.00', 1, ''),
(323, 'Dynamic Castings', 'PRODUCT LINES OR SERVICES OFFERED: 1. MILL ROLLER BEARINGS - Mill Journal Bearing for WALKER MILL (SAE 67), Mill Journal Bearing (SAE 67), Water Cooled Top Jurnal Bearing (SAE 67), Mill Bearing (SAE 62), Top Roll, Bearing Liner (SAE 63) Top Roller Upper half Pintle Side (SAE 67), Top Roll Journal Bearing (SAE 67), Bearing Half Top Roller (SAE 63). 2. CHAIR LINER - Mill Roller Journal Bearing (SAE 67), Bottom Roll Bearing Liner (SAE 67), Bottom Bearing Liner of Mill Feed & Gear Side (SAE 63), Mill Top Roll Bearing Liner (SAE 63). 3. TRAVELLING GRATES - bigelow Traveling Grate Split Type (Aluminum Bronze 9D). 4. CROFT LINERS - Bottom Roll Liner for walker Mill (SAE 67) Top Roller Journal Bearing (SAE 67), Croft Gear  Liner (SAE 67), Split Bearing Liner Assembly for Pillo Block Bearing Final Motion (SAE 67) 5. PISTON LINERS - {iston Segment (SAE 63), Hydraulic Piston Liner For Farrel Mill (SAE 67). 6. PUMP IMPELLERS - Centrifugal Pump Multi-Stage Close Type Assembly (SAE 62). 7. MILL BEARINGS - Bearing Bottom Roller Discharge Pintle Pinion Side (SAE 67).', 0, '473 Gerardo Quano Street, Alang2x, Mandaue City, Metro Cebu', '(032) 345-6171 / 346-0300', '', '', 'cebu@dynacast.ph / pollyngo@dynacast.ph / ck@dynamicpower.ph', '', '', '', '', 'Inactive', '1.00', 1, ''),
(324, 'EESI Material and Controls Corp.', 'PRODUCT LINES OR SERVICES OFFERED: 1. SIEMENS SC Process Instrumentation (Germany) - Pressure, Temperature, Flow, Level, Weighing Technology,  Valve Positioners & Protection Relays 2. SIEMENS Drive Technologies & Motion Control - (Germany) - LV & MV Motors, MV & LV Drives, Standard Drives 3. SIEMENS Process Analytics (Germany) - Continuous Gas Analyzers, Process Gas Chromatograph. 4. BAUMER Process Instrumentation (France) - Pressure& temperature Measurement & Control,  Level & Liquid Quality Measurement & Control. 5. PHOENIX Contact 9germany) -Industrial Connectivity and Interface Systems, Industrial Automation,  Surge & Lighting Protection. 6. Temperature Sensors Services Pte. Ltd (singapore) - Temperature Sensors (RTD, TC). 7. Ametek O'' Brien Analytical (USA) - Analyser Sample Transport & Conditoning Systems, Instruments Shelter and Mounting Systems. 8. Dr. A. Kuntze (Germany) - Water/Liquid Quality Measurement & Control System. 9. Rittmeyer (Switzerland) - Flow and Level Measurement & Control for the Hydro-Electric Power Industry. 10. Lacroix Sofrel (France) - Wireless dataloggers and SCADA systems for the water and water industry. NAGMAN Instruments & Electronics Ltd. (India) - Calibration Standards, Systems & Softwares, Test & Measuring  Instruments, Consultancy for Calibration Laboratory Set-up.', 0, '124 A. N. Manapat St., Poblacion Arayat, Pampanga / Unit 1402 14th Floor The One Executive Office Building # 5 West Ave, QC', '(02) 410-3622', '', '(02) 351-7775', 'mar.ignacio@emcc.com.ph / sales@emcc.com.ph / emil.enriquez3 @emcc.com.ph', '', '', '', '', 'Inactive', '1.00', 1, ''),
(325, 'Festo, Inc.', '1.	PNEUMATIC, Complete range of cylinder, valves, sensors, filters, regulators, lubricators, vacuum units, valve sensors, terminals, tubing, fittings and accessories. 2. Process Automation: Pneumatic and electronic products, process valves, instrumentation and controls for Process Automation. 3. Electronic: Industrial PC Electronic Programmable Logic Controllers, Software and Interface, etc. 4. System: Design, Installation, Programming and Commissioning of Control Engineering Projects. 5. Didactic: Weekly, Hands on, Seminar for Engineers, Technicians and Technical Instructors, Hardware and Tech ware for Technology Training', 0, 'Km. 18, West Service Road, South Super Highway, 1700 Parañaque City', '1800-10-12(FESTO) 33786', '', '1800-10-14(FESTO) 33786', 'festo_ph@ph.festo.com', '', 'Distributor', '', '', 'Inactive', '1.00', 1, ''),
(326, 'ICI Systems Inc.', 'PRODUCT LINES OR SERVICES OFFERED: 1. Endress + Hauser  - Leading Supplier of Measuring Instruments and Automation Solutions for the Industrial Process Engineering Industry. 2. Anton Paar- High Quality Measuring and Analysis Instruements for Laboratory and Process Applications.', 0, '14F Belvedere Tower # 15 San Miguel Ave., Ortigas Center', '(032) 344-1584 (Cebu) / (02) 637-8577 - Head Office', '', '(032) 344-1584 (Cebu) / (02) 633-5127 - Head Office', 'cebusales@icisystems.net / customer.care@icisystems.net', '', 'Distributor / Supplier', '', '', 'Inactive', '1.00', 1, ''),
(327, 'Ishan International Pvt. Ltd.', 'PRODUCT LINES OR SERVICES OFFERED: 1. Mill Rollers (Conventional/Perforated) 1.1 Assembly 1.2 Reshelling 2. Gearboxes/Reducers 2.1 Helical 2.2 Special 2.3 Planetary 3. Rope / less coupling 4. Forged Shafts 5. Forged Chains 6. Mill Pinion & Mill Coupling 7. VFD and Motors 8. SS Tubes 9. Boilers 10. Boiling House Equipment 11. Complete Mills and Head Stocks 12. Bronze Bearing Liners and Box Bearing Liners 13. All Sugar, Hydro and Parmaceutical Machineries', 0, 'B-68, Sector-14, Noida-201 301, UP India', '(+91-120) 2518261 / 62', '', '', 'navneet@ishangroup.co.in / ishan-ho@ishangroup.co.in', '', '', '', '', 'Inactive', '1.00', 1, ''),
(328, 'Jan Dale Enterprises Corp.', '1. SCHMIDT + HAENSCH QUARTZ  WEDGE SACCHAROMAT 2. SCHMIDT + HAENSCH Automatic Precision Sugar Refractometer 3. Bio-ethanol Cane and Alcohol Analysis 4. Cane Purity Analyzers with Data Acquisition Systems 5. ISI Automatic pH Liming Stations, SPECTRA 6. ISI High Temperature and TDS Sensors 7. ISI Laboratory pH, DO, TDS Electrodes 8. On-line Process Refractometers,  Brix Controllers 9. Automat Level, Pressure and Flow Instruments 10. ITECA, COLOBSERVER, On Line Colour Analyzer for DRY or WET Sugar 11. ITECA, PART, SIZER: On Line Particle Size Analyzer 12. BATCH PAN MICROSCOPE and video Cam System for Sugar Crystals 13. Temperature Sensors Infrared or Probe Type and Temperature Controllers 14. Laboratory pH, DO, TDS, Color and Turbidity Analyzer 15. Water and Waste Water Automation Equipment 16. Control Valves and Accessories 17. ASL Temperature Calibrators and Calibration Baths 18. Repair and Calibration of Refrometers, Saccharimeters and other sugar analyzer 19. Huba Pressure and level transmitters 20. JAN DALE designed In-line Entertainment Protection Systems. 21. JAN DALE designed Floculant Control Systems 22. Repair and Calibration of industrial weighing scales 23. Conversion of Mechanical Scale to Electro, Mechanical 24. Conversion of Servo Weighers to electro, Mechanical 25. JAN DALE / SCHMIDT, HAESCH LAB, PC AUTOMATION', 0, 'G-19 South Star Plaza, South Superhighway, Makati City', '(+632) 813-1396 / (+632) 806-3006', '', '(+632) 813-1397', 'jandalecorporation@yahoo.com', '', 'Distributor / Supplier', '', '', 'Inactive', '1.00', 1, ''),
(329, 'JM Brenton Industries Corp.', 'PRODUCT LINES OR SERVICES OFFERED: 1. Gardner Denver Nash Vacuum Pumps & Compressors 2. Borger Rotary Lobe Pumps 3. Griswold Ansi Process Centrifugal Pumps 4. Neptune Chemical Dosing / Metering Pumps 5. Neptune Agitators & Mixers 6. Graco Air Operated Double Diaphragm Pumps', 0, '2nd Flr., JM Bldg., Superhighway Corner Rocketfeller St., Makati City', '(02) 817-5732', '', '(02) 817-5739', 'jmbicorp@pldtdsl.net', '', 'Distributor / Supplier', '', '', 'Active', '1.00', 1, ''),
(330, 'Manly Plastics Inc.', 'PRODUCT LINES OR SERVICES OFFERED: 1. Pallets 2. Plastic Crates 3. Trolley 4. Pails (Plastic)', 0, '60 West Ave. CBT Condominium Quezon City', '(02) 373-9797 loc. 141', '', '(02) 373-4750', 'sales@sanko.com.ph', '', 'Distributor / Supplier', '', '', 'Inactive', '1.00', 1, ''),
(331, 'Kupler DCMC Philippines Corp.', 'PRODUCT LINES OR SERVICES OFFERED: 1. MOBIL LUBRICANTS - Automotive & Industrial Lubricants', 0, 'Paradise Road, Km 9 Sasa Davao City, 8000', '(082) 234-9018 / (082) 234-8088 / (+63) 922-8544013', '', '(082) 373-4750', 'mobilsales.dvo@kuplerdcmc.com', '', 'Distributor / Supplier', '', '', 'Inactive', '1.00', 1, ''),
(332, 'MHE - Demag (P) Inc.', 'PRODUCT LINES OR SERVICES OFFERED: 1. Industrial Crane 2. Crane Components 3. Rope and chain Hoists 4. Warehouse Trucks 5. Docking Equipment 6. Building Maintenance Units 7. Aerial Work Platforms 8. Car Parking Systems 9. Profile Rails 10. Fastening Systems', 0, 'Main Ave., Severina Diamond Ind. Estate KM. 16 West Service Road South Expressway, Parañaque City 1700', '786-7500', '', '786-7555', 'jonathan_gonzales@mhe-demag.com', '', 'Distributor / Supplier', '', '', 'Inactive', '1.00', 1, ''),
(333, 'Motology Electric Pte Ltd.', 'PRODUCT LINES OR SERVICES OFFERED: 1. Cycloidar Gearmotor 2. Gearbox, Speed Reducer 3. Roller Chain & Sprocket 4. Conveyor Rollers 5. Conveyor Components 6. Conveyor Belt 7. Gear, Grid, Jaw Flexible Coupling 8. Electric Motor Control 9. AC Induction Motor 10. Design, Fabrication & Estimate', 0, 'Unit 1 RGA Bldg., Suba Basbas, Lapu-Lapu City Cebu 6015', '(032) 494-3844', '', '(032) 494-3844', 'tecmesh@pldtsl.net', '', 'Distributor / Supplier', '', '', 'Inactive', '1.00', 1, ''),
(334, 'Omron Asia Pacific Pte. Ltd.', 'PRODUCT LINES OR SERVICES OFFERED: 1. FACTORY AUTOMATION SYSTEM Programmable Controllers Programmable Terminal Variable Frequency Inverter Servomotors/Servo Drives Automation Software 2. SENSING DEVICES Fiber Sensor Photoelectric Sensor Proximity Sensor Photomicro Sensor Rotary Encoder Pressure Sensor Displacement/Measurement Sensor Vision Sensors/Machine Vision System Code Readers/OCR Ultrasonic Sensor 3. INDUSTRIAL DEVICES/ELECTRONIC AND MECHANICAL COMPONENTS: General Purpose and Power Relay PCB Relay Solid-state relay Basic Switches Limit Switches Timers/Counters Cam Positioner Simple Logic Controller Switching Power Supply Temperature Controller Intelligent Signal Processor Gdigital Panel Meter Level Controller Level Controller', 0, '2/F King''s Court II Building, 2129 Chino Roces, Avenue Corner Dela Rosa St., 1231 Makati City', '(02) 811-2831 to 36', '', '(02) 811-2583', 'ph_enquiry@ap.omron.com', '', 'Distributor / Supplier', '', 'Manila Represesntative Office', 'Inactive', '1.00', 1, ''),
(335, 'P. T. Cerna Corporation', 'PRODUCT LINES OR SERVICES OFFERED: 1. Rockwell Automation 2. Valves & Pumps Automation 3. Steam Engineering 4. Engineering Services 5. Process Instrumentation Products 6. Power and Climate Controls 7. Sew Mechanical Drive Systems 8. Water and Gas Analysis', 0, 'Unit 2, Yusay Bldg., 23rd St., Brgy. 5, Bacolod City', '(034) 708-1932', '', '(034) 441-2193', 'bacolod@ptcerna.com', '', 'Distributor / Supplier', 'Ms. Caneth B. Ariola (Application Sales Engineer) - 0917-324-6701 / 0919-773-1641', '', 'Inactive', '1.00', 1, ''),
(336, 'Process Technik Solutions', 'PRODUCT LINES OR SERVICES OFFERED: 1. P+F-Govan (Australia) - Exd Terminal and Junction Boxes, Exd Local Control units & stations, Exd Flameproof Distributions and Control Stations, Exp Purge Solutions, Exd Control Starters and Signalling Devices. 2. TECFLUID (Spain)-Flowmeters, Level Transmitters, Mechanical Counters 3. ORBINOX (Spain) - Knife Gate Valves, Penstocks, Dampers 4. AUER SIGNAGERATE (austria) - Visual Signalling Equipments and Signal Towers, Visual Audible Signalling Equipments, Ex Audible Signalling Equipment, Ex Telephone and Ex Accessories. 5. ELDON ENCLOSURE SYSTEMS (Netherland) IP66 Rated Wall Mounted Panels, IP66 Floor Standing  Enclosures and Accessories 6. MAUSA (Spain) - Continuos and Batch Centrifugals, Separator Centrifugals, Filtration (Rotary Vacuum Filters, Vacuum Belt Filter Pressure Filter), Drying - Peaddle Dryer, Rotary and Cooler, Rotary Flakers) Pumps, (Vacuum Liquid Ring, Lobe Pump, Evaporation (Falling Film, Batch Vacuum Pans). 7. LOESCHE (Germany) - Vertical Grinding Mills for Solid Fuels, (Coal, Biomass, Wooden Pellets), Mobile Grinding Plants for Solid Fuels. 8. PEKOS (Spain) - Ball Valves, Actuated Ball Valves, Special Designed Ball Valves (Anti-Static and for Flammable Mediums). 9. AYVAZ (Turkey) - Expansion Joints, Steam Traps, Steam Separators 10. FAIRFORD (England) - Soft Starters (Three Phase and Single Phase), Synergy Soft Starters, Centris Medium Voltage Soft Starters. 11. CF NIELSEN (Denmark) - Complete Briquetting Line for Biomass (Bagasse, Rice Husk, King Grass, Wood Chips and etc.)', 0, 'Unit 502 Yrreverre Building, No. 888 Mindanao Ave., Brgy. Quezon City', '(044) 896-3450', '', '(044) 896-3450', 'processtechnik@gmail.com', '', '', '', '', 'Inactive', '1.00', 1, ''),
(337, 'Sanyoseike Stainless Steel Corporation', 'PRODUCT LINES OR SERVICES OFFERED: 1. Stainless Steel Sheet 2. Stainless Steel Plate 3. Stainless Steel Pipe 4. Stainless Steel Tube 5. Stainless Steel Bars 6. Stainless Steel Coil', 0, '28th Floor, World Trade Exchange Building, Juan Luna St., Binondo Manila', '(02) 247-9777', '', '(02) 247-7877', 'info@sanyoseiki.com.ph', '', '', '', '', 'Inactive', '1.00', 1, ''),
(338, 'Schaeffler Philippines, Inc.', '1. Rolling Bearings, housing Units and its Accessories 2. Maintenance Products 2.a Bearing Mounting and Dismounting Tools. 2.b Online and Offline Vibration Analyzer 2.c Laser Alignment tools for shaft, pulleys and belts 3. Lubricants 3.a Food Grade Grease 3.b Grease for High Load Applications 3.c Grease for High Temperature Applications 3.d Grease for High Speed Applications 4. Professional Services 4.a Bearing Technology and Maintenance Training Course 4.b Bearing Failure and Damage Analysis 4.c Precision Alignment and Dynamic Balancing', 0, '5th Floor Optima Bldg., 221 Salcedo St., Legaspi Village, Makati City 1229', '(+632) 759-3583 to 84', '', '(+632) 779-8703 / (+632) 759-3578', 'campoeva@schaeffler.com', '', '', '', '', 'Inactive', '1.00', 1, ''),
(339, 'Schneider Electric', 'The Global Specialties in Energy Management As a global specialist in energy management with operations in more than 100 countries, Schneider Electric offers integrated solution across multiple market segments, including leadership positions in Utilities & Infrastructure, Industries & Machines Manufacturers, Non-residential Building, Data Centres & Networks  and in Residential. Focused on making energy safe, reliable, efficient,  productive and green, the group''s 150,000 plus employees achieved sales of 24 billion euros in 2013  through an active commitment to help individuals and organizations make the most of their energy.', 0, 'Manila Office: 24/Fort Legend Tower, Block 7 lot 3, 3rd Ave. Cor. 31st St. Fort Bonifacio Global City, Taguig City 1634', '(02) 976-9999', '', '(02) 976-9961 or 64', 'customercare.ph@schneider-electric.com', '', '', '', '', 'Inactive', '1.00', 1, ''),
(340, 'Schneider Electric', 'The Global Specialties in Energy Management As a global specialist in energy management with operations in more than 100 countries, Schneider Electric offers integrated solution across multiple market segments, including leadership positions in Utilities & Infrastructure, Industries & Machines Manufacturers, Non-residential Building, Data Centres & Networks  and in Residential. Focused on making energy safe, reliable, efficient,  productive and green, the group''s 150,000 plus employees achieved sales of 24 billion euros in 2013  through an active commitment to help individuals and organizations make the most of their energy.', 0, '4th Flr, DISPO Building, AC Cortes Ave., Mandaue City Cebu', '(032) 344-7117', '', '(032) 344-7119', 'customercare.ph@schneider-electric.com', '', '', '', '', 'Inactive', '1.00', 1, ''),
(341, 'Siemens, Inc.', 'Automation System  Distributed Control Systems (DCS), Programmable Logic Controllers (PLC), Human Machine Interface (HMI), Operator Panels, Industrial PC.  Control Components & System Engineering Motor Protection Circuit Breakers, Contactors, Thermal Overload Relays, Timing Relays, Soft Starter, Motor Management and Control Devices  Sensors and Communication (Process Instrumentation)  Flowmeters, Transmitters and Switches (Level, Pressure, Temperature, etc.) Sensors, Weighing, Communication Switches, Power Supplies.  Large Drives AC & DC Motors, Low Voltage and High Voltage Motors and VFDs, Explosion-proof motors & drives  Motion Control Variable Frequency Drives (VFD) Motion Control Systems, Servo and Linear Motors, SINAMICS  Mechanical Drives Flender Gear Motors, Couplings, Flender Motox', 0, '14/F Salcedo Tower, 169 HV Dela Costa St., Salcedo Village, Makati City 1227', '(632) 814-9861', '', '(632) 814-9807', 'Carolina.araneta@siemens.com / april.santos@siemens.com', '', '', '', '', 'Inactive', '1.00', 1, ''),
(342, 'Simpson''s Phils. Inc.', 'PRODUCTS LINE/S OR SERVICES OFFERED 1. Filter Bags, Cartridge & Housing 2. Hayward Strainers, Automatic Self Cleaning 3. Aviation Fuel Filters 4. Industrial Lube/Fuel Filters, Sewage Wastewater System 5. Filter Presses, Agitators & Pressure Leaf Filter 6. Solid/Liquid Separator 7. Cooling Tower Basin Sweeping System 8. Deepwell Sand Separator', 0, '410 D. Lucas Cuadra St., Sta. Quiteria Caloocan City', '(02) 983-7556/983-7546/983-7572', '', '(02) 983-2286', 'elenperlado@simpsonsphil.com', '', '', '', '', 'Inactive', '1.00', 1, ''),
(343, 'Spectrum Chemicals Inc.', '1. Internal Water Treatment for Boilers and Cooling Towers 2. Design/Install/Supply/Commissioning of Reverse Osmosis System/Multi-media Filter/Activated/ Water Softener 3. Upgrading/Rehabilitation of R. O. System 4. Premier Vacuum Pumps 5. Longji Electromagnetic Separator/Jonhking Industrial Chains 6. Prathap Mill Rollers/Barriquand Heat Exchangers 7. Design/Supply/Install/Commissioning of Concrete Type Water Clarifier', 0, 'R. 203 Cityland Con. 8, 98 Gil Puyat Ave., Makati City', '(02) 817-3975/892-8536', '', '(02) 892-9536', 'speche888@yahoo.com', '', '', '', '', 'Inactive', '1.00', 1, ''),
(344, 'Prime Opus Inc.', 'Sulzer, Netzsch, Leroy Somer, Wirebelt, Addinol, Kongskilde, Haug, Macintyre, Sandvik, Hafco, TPS', 0, 'B 6 L26 Faith Street, St. Catherine Village, Brgy. San Isidro, Sucat Road, Parañaque City', '(632) 820-1421 / (632) 478-6013', '', '(632) 825-8121', 'primeopus@pldtdsl.net', '', 'Exclusive Agent of Netzsch Progressive Cavity Pumps, Addinol Lube Oil, Kongskilde Industries A/s, Sandvik Carbon/Stainless Steel Belts and Wirebelt U. K.', 'Mr. Sidney S. de la Cruz -0998-580-0041', 'Website: www.primeopusinc.com, TIN Number: 209-100-507-000, SSS No. 03-9142882-5, SEC Reg No.: A200018820, Date of Org: Dec. 14, 2000', 'Inactive', '1.00', 1, ''),
(345, 'GPM Trading & Engineering Services', 'Water Pumps', 0, 'Lot 888H, National Highway, Alijis, Bacolod City / Cor. Mabini-Luzuriaga Sts., Bacolod City', '(034) 435 0742/433-1464', '', '', 'gpmengineering_services@yahoo.com', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(346, 'Topbrass Construction & Trading Corp.', 'Ready Mix Concrete', 0, 'Prk. Paho 2, Brgy. Estefania, Bacolod City', '0949-1150-567', '', '', '', 'COD', 'Manufacturer ', 'Mr. Ismael Fuentes Jr.', '', 'Active', '1.00', 1, ''),
(347, 'West Point Engineering Supplies', 'PRODUCTS LINE/S OR SERVICES OFFERED 1. NESSTECH Inc Japan - Temperature and Pressure Gauges 2. Camille Bauer Switzerland - Instrumentation And Positioners 3. Additel Corporation USA - Digital Pressure Gauges and Multifunction Calibrators 4. SSS Co., LTD. - Positioners, I/P Converter, Booster Relay and Filter Regulators 5. Kansai Automation Co. LTD - Level Switch, Level Meter, Level Sensor 6. Fossil Power Systems CANADA-Boiler Level Drum and Valves 7. Samson AG Germany - Control Valves, Steam Conditioning Valve, Flow Measurement 8. Fairford Electronics UK - Soft Starters, Synergy 9. V & t Drive - AC Frequency Inverter 10. Aplisens Poland - Pressure, temperature & level products', 0, 'West Point Bldg., Bacood St., Brgy. Patubig, Marilao, Bulacan Philippines 3019', '(044) 248-3301', '', '(044) 248-3309', 'westpointengineering@gmail.com', '', 'Distributor', '', '', 'Inactive', '1.00', 1, ''),
(348, 'Yokogawa Philippines, Inc.', 'PRODUCTS LINE/S OR SERVICES OFFERED 1. Factory and Process Automation Control Systems, Programmable Logic Controller (PLC),  Distributed Control System (DCS) Network Based Control Systems (NCS) 2. Field Instruments - Flowmeter, Pressure Transmitter, Temperature Transmitter, Level Transmitter, Control Valves, Valves Positioner, Field Wireless Products. Pressure Gauge, Temperature Gauge, Temperature Senor. 3. Analyzers-Liquid, pH/ORP, Conductivity, Dissolved Oxygen, Turbidity, Gas, Chlorine, Zirconia, Oxygen, Stack Gas Analyzer, Dust Monitor; Recorders and Controllers-Paperless, Strip Chart Recorder,  Controllers and indicators, Signal Conditioner, Power Monitor. 4. Waveform Measurement & Analysis: Oscilloscopes, scopeCorder, Low Speed DAQ & Industrial Recorder, High Speed Data Acquisition Equipment. 5. Optical Measuring Instruments: OTDR, Optical loss Test Set, Optical Spectrum Analyzer, Ethernet Handheld Tester, Optical Power Meters, Optical Light Source, LD Light Source. 6. Power Monitoring Instruments: Precision Power Analyzer, Digital Power Meters, High Performance Power Analyzer, Digital Power Analyzer. 7. Portable Test Instruments: Digital Multimeters, Circuit Testers, Insulation Testers, Earth Tester, Insulation Polytester, C;amp on Powermeters, Wheatstone Bridge, Resistance Box, Slide Resister,  Galvanometer, Luxmeters 8. Generators/Sources: Source Measure Unit, DC Voltage, Current Source, Synthesized Function Generators. 9. Instrumentation Calibration, Instrumentation Bench Repair, Shutdown Maintenance, Commissioning & Start Up System Upgrading, Panel Engineering and Manufac turing, DCS Software/ Hardware Engineering 10. Training: Process Control and Instrumentation Courses, PLC Training, DCS Training.', 0, 'Topy Industries Bldg., No. 3 Economia St., Bagumbayan, Quezon City', '(632) 238-7777', '', '(632) 238-7799', 'feedback@ph.yokogawa.com', '', 'Distributor', '', '', 'Inactive', '1.00', 1, ''),
(349, 'Esetek Equipment (Philippines) Inc.', 'PRODUCTS LINE/S OR SERVICES OFFERED 1. Calibration Services 2. Repair 3. Trading 4. Distributor of Fluke, Megger, Kikusui etc.', 0, 'Unit 507-508 Alpap II Bldg., Madrigal Business Park, Investment Drive, Cor. Trade Ave., Alabang, Muntinlupa City', '772-2301', '', '772-2298', 'jesuspadilla@ph/ese-asia.com', '', 'Distributor', '', '', 'Inactive', '1.00', 1, ''),
(350, 'Fabcon Philippines, Inc.', 'PRODUCTS LINE/S OR SERVICES OFFERED MILL AND BOILER DEPT. > Unigrator > Lotus Roll > Thyssenkrupp mills > Wer Scrubbers > NQEA Bagasse Bins > NQEA Truck Dumper > Cooling Towers - Designed for Sugar Mill Water Conditions > Hiniron Core Samplers > Domite Cane Knives & Unigrator Hammer Tips > Elecon Planetary Gear Drive  BOILING HOUSE > Thyssenkrupp Centrifugals > Continuous Vacuum Pans and Crystallizers > Fabcon Jsp Syrup Clarifier > Shrijee Sugar Dryer > Evaporators >VRP Energy Savings and Automation  PROCESS CHEMICALS >cma, ZUCLAR, COLORGONE, I-12, VISC-AID, ARW, SUGAR DECOLORANT  BOILER WATER TREATMENT > FABCOL, FABFOS, FABOX, FABSCALEX, FABCAR  REFINERY CHEMICALS >COLORGONE, PUROLITE DECOLORIZING RESINS  ENVIRONMENT 1. Turnkey Design, Construct, Operate for Waste Water Treatment 2. Turnkey Design, Construct, Operate Wet Scrubber 3. Complete Ash Settling Clarifier Design and Construct 4. Closed Loop Cooling Water System', 0, '12/F Jollibee Center Bldg, San Miguel Ave., Pasig City, Philippines-Manila Office / Rm. 203, St. Jude Bldg., San Sebastian-Gatuslao Sts., Bacolod City - Bacolod Office', '633-4234 to 38 / 435-4741', '', '633-4211 / 435-4741', 'dmvellanueva@fabcon.ph', '', 'Distributor', '', '', 'Inactive', '1.00', 1, '');
INSERT INTO `vendor_head` (`vendor_id`, `vendor_name`, `product_services`, `category_id`, `address`, `phone_number`, `mobile_number`, `fax_number`, `email`, `terms`, `type`, `contact_person`, `notes`, `status`, `ewt`, `vat`, `tin`) VALUES
(351, 'Rurex Fabrication and Trading Co Inc', '(Complete Heat Exchangers Solutions), Specialize in Charge Air Coolers Servicing, Repair & New Fabrication offering a one-stop solution.   A. Shell and Tube Heat Exchangers    - Provide a complete solutions for shell and tube heat exchangers e.g      oil coolers,heaters,condenser B. Plate Heat Exchangers C. Other Product and Services     a.Dynamic Balancing of Fans & Blowers     b. Repair/Reconditioning of Fans & Blowers     c. Supply of:           1. Pressure vessels           2. Aircon Coil for Marine Vessels          3. Blower Fans          4. "V" Type Rasiator          5. Finned tubes          6. Radiator for Genset          7. Oil Cooler          8. Remote Radiator', 0, '238 M. Santos St., Santolan, Malabon City', '446-5210 / 294-6887', '', '', '', '30 days PDC', 'Contractor', 'Mr. Cesar Bernardo', '', 'Active', '1.00', 1, ''),
(352, 'NCH', 'A. CHEM-AQUA (Water Treatment)     1. Cooling Treatment     2. Boiler Treatment     3. Solid Solutions     4. ROI Calculation     5.On-Site Water Analysis & Report     6. Water Management Plan-Legionella Risk Assessment     7. Automated Equipment Solution     8. Cleaning & Services B. LUBRICANTS     1. Greases & Oils     2. Specialty Lubricants     3.Release Agents     4.Metal Working Fluids     5. Fuel Additives     6.Water Based Parts Cleaning     7. Cleaning & Services C. WASTEWATER     1.Drains     2.Wastewater Treatment Plants     3.Cleaning & Services     4.Lift Stations     5.Grease Traps     6.Odor Control     7.BioAmp Systems D. OTHERS:     1. Premalube Black     2.Premalube Red     3.Premalube Extreme Green     4.Premalube extreme heatshield     5.Premalube Extreme FG     6. Premalube 0     7.Premalube white aerosol     8.Pureplex FG     9.Certop multi-grade SAE 80w-90     10.Certop multi-grade SAE 85w-140     11.Certop 90 FG     12.Certop 140 FG     13.Certop industrial ISO VG 220     14.Certop industrial ISO VG 460     15.Gear-up plus     16.System Purge     17.Hi-top multi-grade     18.Hi-top single grade     19.Dri-lube plus aerosol     20.Excelube plus/bulk     21.Yield aerosol     22.Accel     23.Androil FG     24.Diesel-mate 2000 plus     25. Full Blast     26.CCX-77     27.Hi-gear plus     28.Lok-cease 20/20     29.cool flush     30.cool plus     31.ND-165     32.ND-150     33.Hold fast plus     34.Resist-x plus     35.Voltz     36.Torrent 400', 0, 'Door #20 Mercedez Comm''l Ctr.A. Cortez Avenue, Mandaue Cebu', '(032) 346-5288 / (032) 346-5631', '', '', 'rotchel.mendoza@nch.com', '', '', 'Rotchel Mendoza: Water Treatment Specialist and Field Product Manager', '', 'Active', '1.00', 1, ''),
(353, 'Safari', 'Meters, (Power & Water Beyond Frontiers), A. VIOSERIES - Anti- Tamper/pilferage features,large LCD display         register,large laser print serial no., battery back up for display,        longer effective life,full CT-PT equipped. B. ED200Vio 3W C. CT 888i D. 88 series CT 88i E. CT 888- large cyclometer register, large laser print serial no.,       anti-corrosion meter base,CT-PT equipped F. 88 Series CT 88 G. AUTOMATED kWhr Meter Testbench- can be operated thru       special built in keyboard and PC, equipped with automated      photoelectrical scanning head, settings on harmonics waveform      display,progmmable voltage,current frequency & phase angle H.Automated 3P KWHM Testbench I. KWHM Running Tester Bench J. 1P/3P on-site meter calibration-measure normal parameter of      powerline,harmonics,waveform and transformer''s ratio K. 1P on-site meter calibration tester L. Electronic Voltage and Current Loader-rotary dial for V/A input,      single power on and off toggle switch M. iSWITCH- Theatrical-grade work light switch,wall mounting in,      single or multi-gang boxes,normal wiring procedures N. Model SW 15(Multijet Brass Water Meter      a. Magnetic drive polymer counter      b.Rotary vane wheel or impeller      c.Uni-directional/reversible w/ magnetic      d.Copper alloy brass O. Model SW 15i      a.3600  Rotable Magnetic Drive Polymer counter      b. Rotary Vane wheel or impeller      c. Uni-directional/reversible with anti-magnetic shield      d. Copper alloy brass P. Model LS-4B', 0, '#27 VMCC Complex Granada Avenue cor. Santolan Road Q.C.', '(632) 724-7785', '', '', 'safarimeter@hotmail.com / safarimeter@yahoo.com / safarimeter.wordpress.com', '', '', '', '', 'Inactive', '1.00', 1, ''),
(354, 'Kyung Dong Electric Co., ltd.', 'A. Interrup switch B. Disconnecting switch C. Disconnecting switch(motor operating drive) D. Cut-out swich E. Power fuse F. Power switchs(kpfv) G.power switchs(kpfc)', 0, '#178 Eunhaengnamoo-ro,Yanggam-myun,Hwaseong-Shi,Kyungggi-do,Korea', '82-31-224-9093', '', '82-31-8059-8144', 'kdec9093@naver.com', '', '', '', 'www.kdelectric.co.kr', 'Inactive', '1.00', 1, ''),
(355, 'Dongwoo Electric Corp. / BMJE Marketing and Electrical Services Inc.', 'A.OUTDOOR TYPE VOLTAGE TRANSFORMER DPO-203N      -Insertion between phase and earth (phase and phase)      -Installation in any position      -Dry insulationin resin-outdoor installation      -Eco friendly voltage transformer is encapsulated with silica-filled epoxy resin      -Excellent electric characteristics and mechanical strength      -Maintenance-free      -Standard:IEC 61869-3, Ieee c57.13, JEC 1201      -Max. system voltage: 15.5 kV      -Rated power-frequency withstand voltage: 34 kV      -Rated lightning impulse withstand voltage: 110kV      -Rated frequency: 60Hz      -Rated primary current: 10-5A/600-300A      -Rated secondary current:5A      -Rated short time content: 100In/1s      -Rated Burden: B-1.9(22.5VA)      -Weight: 25kg      -Accuracy Class:0.3      -RF: 1.5      Creepage distance: 440mm  B.OUTDOOR TYPE CURRENT TRANSFORMER DCO-101A      -Installation in any position        -max voltage: 15.5kV      -Rated power frequency:34kV      -rated lightning impluse:110kV      -rated frequency: 60Hz      -rated primary voltage: 14560v      -rated secondary voltage: 208v      -Rated Burden: x(25VA)v      -Weight: 48kg      -Rated voltage factor: 125%      -Thermal Burden: 100VA      -Accuracy Class 0.3      -Voltage ratio: 70:1      -Creepage distance: 823 mm', 0, 'Blk. 209 lot 32, Labayane, St. North Fairview,Quezon City', '441-8431 / 352-1132 / 621-96060', '', '', 'jojo_bmjemarketing@yahoo.com', '', '', '', '', 'Inactive', '1.00', 1, ''),
(356, 'Samwon/BMJE Marketing and Electrical Incorporated', 'A.SAMWON TRANSFORMER B. PHASE POWER SUBSTATION TRANSFORMER      -High reliability power transformers are manufactured through insulation        design and optimum cooling structure design using accumulated technology C.POLE MOUNTED      -Pole transformer type for overseas export D.PHASE PAD MOUNTED TRANSFORMER- adequate to be used for a city center a school where the power part is not externally exposed as power is trasmitted through under ground cables. A device to protect the primary and secondary voltage parts can be installed in accordance with the user requirements E.PHASE DISTRIBUTION TRANSFORMER-it has low noise, superior circuit electro magnetic force withstanding and can be installed anywhere,indoor or outdoor', 0, 'Blk 209 Lot 32 Labayane St North Fairview Q.C. Phl. 6112', '441-8431, 372-60665, 352-1132', '', '621-9060', 'jojo_bmjemarketing@yahoo.com', '', '', '', '', 'Inactive', '1.00', 1, ''),
(357, 'Tan Delta Electric Corp.', 'SERVICES: A.PREVENTIVE MAINTENANCE,TESTING & COMMISSIONING OF HIGH AND LOW      VOLTAGE SUBSTATION EQUIPMENT      1. AC dielectric Withstand Test up to 500kV      2.Air and Structure Born Ultrasonic detection for(motors,air&gas leaks,corona)      3.AC VLF/DC High Potential Leakage Current Test      4.Battery capacity Discharge      5.Contact Resistance Test      6.Circuit Breaker Analysis      7. Earth and ground resistance      8. Instrument Transformer      9.Insulation Power      10. Insulation resistance Test      11.Generator/motor phase resolve partial discharge test      12.Lightning arrester leakage current test      13. Oil Dielectric Breakdown Voltage(DBV) test      14.Partial discharge analysis      15.Partial Discharge test      16.Power Quality Analysis      17.Protective Relay Testing and calibration      18. Sweep frequency Response Analysis      19.SF6 Gas Analysys (moisture&Purity)      20.SF6 Gas Recovery and Purification      21.SF6 Gas leak Detectio      22.Surge Comparison Test      23.Tap changer analysis      24.Transformer Turns Ratio test      25.Winding Resistance Test B. TRANSFORMER OIL LABORATORY SERVICES      1.Acidity      2.Color and Visual Examination      3.Corrosive sulfur     4.Degree of Polymerizatio     5.Dielectic Breakdown Voltage     6.Dissolve gas analysis     7.Furan Analysis     8.Interfacial Tension Test     9.Liquid power factor test     10.Metal Passivator     11.Oil Conductivity     12.Oxidation Inhibator Content     13.PCB test     14.Particle Count Analysis     15.Relative Density     16.Water-in-oil Analysis C. INFRARED/THERMAL SCANNING SERVICES     1. Electrical System/Mechanical System/Building Inspection     2. Manufacturing Process/Refractory/Furnaces/Energy Audits D. AIR & STRUCTURE BORNE ULTRASONIC INSPECTION SERVICES     1.Leak detection      2. Bearing Condition Monitoring     3. Ultrasound Based Lubrication     4. Steam Trap Inspection     5. Valves and Hydraulics     6. Pump Cavitation     7. Boiler,Heat Exchangers,Condenser Leaks     8.Electrical Corona Discharge     9. Tightness Integrity-wind noise &n water leak     10. Bearings   PRODUCT(PRODUCTS LISTING) A. AC/DC Dielectric Test System    a.1. AC/VLF Hi-pot Tet Set up to 200 kV    a.2. AC volatage/Current Impulse Test System    a.3. AC Resonant Test System    a.4. DC Hi-pot Set up to 350kV B.BATTERY TEST EQUIPMENT    b.1.Discharge/Capacity Test    b.2. Cell Resistance & Voltage Test    b.3. Specific gravity & temperature    b.4. Online Monitoring C.CURRENT INJECTION TEST SETS    c.1.Primary Current Injection uo to 15,000 apms    c.2. Secondary Current Injection/Protection Relay Test Set  D. DIGITAL HANDHELD INSTRUMENTS    d.1. AC/DC Clamp Ammeter    d.2. AC/DC Multimeter    d.3. Multi-Function Installation Tester E. ELECTRICAL TEST INSTRUMENTS    e.1. AC/DC VLF test set 0-12 KV    e.2. AC/DC Variable power supply 40amps,0-300 volts    e.3. Capacitance & Tan Delta/IPF Test set    e.4. Circuit breaker analyzer    e.5.Earth/Ground Resistance Tester    e.6. Instrument Transformer Test set    e.7. Insulation resistance Tester    e.8. Insulation Resistance Tester    e.9. Insulation oil dielectic breakdown voltage test set    e.10. Micro-ohmmeter 0-600 Amps    e.11. Partial discharge analyzer for transformer & rotating machines    e.12.Power Quality Analyzer    e.13. Surge/lightning Arrester Leakage Current Tester    e.14.Sweep Frequency Response Analyzer    e.15.Surge Tester/Analyzer for rotating machines    e.16.Transformer Turns ratio test set    e.17. Winding Ohmmeter & tap changer analyzer F.TRANSFORMER OIL LABORATORY INSTRUMENTS    f.1.Acidity Analyzer    f.2. Colorimeter    f.3. Corrosive sulfur    f.4. Dissolved Gas Ananlyzer    f.5. Furan Analyzer    f.6. Interfacial Tensiometer    f.7. Moisture Content Analyzer    f.8. Oil DBV Tester    f.9. Particle Count Analyzer    f.10.Oil Power Factor Tester    f.11. Viscosity Meter G. PREDICTIVE MAINTENANCE INSTRUMENTS    g.1. Thermal Imaging/Infrared Camera    g.2.Ultrasonic Detection(air/gas leak, bearing & corona) H. SF6 GAS TEST & HANDLING EQUIPMENT    h.1. SF6 Gas Analyzer(purity, moisture)    h.2.SF6 H=Gas infrared leak detector    h.3. SF6 gas recovery & filtration cart I. TRANSFORMER INSULATING OIL/MAINTENANCE EQUIPMENT    i.1. On-line/offline oil regeneration system    i.2. On-line/offline vacuum oil purification system    i.3. On-line OLTC Purifier w/ heater    i.4. Vacuum pumps & dehydration system    i.5. Dry air generator for XFMR Maintenanc J. TRANSFORMER ON-LINE MONITORING/ PROTECTION SYSTEM    j.1. Nitrogen Injection Explosion & fire Extinguising System    j.2.Bushing Monitoring System K. MISCELLANNEOUS PRODUCTS    k.1. Steel Pressed Radiators for transformers    k.2. On load Tap Changers', 0, '34A J.P. Rizal St. Project 4, Quezon City Phl 1109', '(632) 911-5858 / (632) 911-2073', '', '(632) 911-2157', 'sales@tandelta.com.ph / acctg@tandelta.com.ph', '', '', 'Dennis Tolentino- Technical Sales Supervisor, Tel No. 0917-520-9071', '', 'Inactive', '1.00', 1, ''),
(358, 'Solid Concrete Solutions', 'The only solid I-section Concrete Pole made in the PHL. Lomg lifespan, high strength  and wide range of sizes/classes. Heat/Fire resistance and corrosion free. The product  is pre-stresse,pre-tensioned rectangular concrete poles of "I" section shape specially  engineered and designed for PHL market. This product like wood and steel poles are  support structures for overhead power conduction and equipment   Advantages:    - The high strength-to-weight ratio of pre-stressed concrete power poles     sets them apart from poles made of other materials. Poles are thin and      functional yet relatively light and convenient to handle.   - Concrete power poles are more durable and resistant to weather and termites   - Do not contain any chemicals that will leech to the ground like those of      wood plates.   - Resilient and will cover from effects of a great degree of overload than any other     structural materials. They remain crack-free at working loads', 0, 'Suite 809 Richmonde Plaza N. 21 San Miguel Avenue cor Lourdes Drive Ortigas Center, Pasig City', '(02) 633-58921 / CP No. 09189208971/09178900565', '', '', 'lornasanguay7714@gmail.com', '', '', '', 'Plant Office: Km 208 Marthur Highway Brgy. Cauringan Sison Pangasinan - (075) 567-6117   Email: stresscrete.1998@gmail.com/spc@yahoo.com', 'Inactive', '1.00', 1, ''),
(359, 'Lushun Filtration & Purification', 'PRODUCTS: 1.Leybold Vacuum Pump 2. Vacuum Pump 3.Roots Pump 4. Leybold Roots Pump 5. Germany Water-ring Vacuum Pump 6. Imported Oil Pump 7. Screw Pump 8. Gear Pump 9. Inner Gearing Pump 10. Heater 11. Intelligent Temperature Controller 12. High Quality Wheels 13. Meter 14. Quick Change Coupler 15. Type 304 Stainless Steel Ball Valve 16. Filter 17. PVC Wire Reinforcing Tube 18. Coupling 19. Aluminum Board 20. Photoelectric Switch 21. 304 Check Valve 22. Separator 23.Flow Meter 24. Circuits', 0, 'Xianqiao Industrial Zone, Shapingla District, Chongqing,China  Zip:400037', '0086-23-65226013', '', '0086-23-65226013', 'sale@lushuntec.com', '', '', 'Isabel Wan- Sales Manager    Tel No. 8615826183872   Zip: 400037', '', 'Inactive', '1.00', 1, ''),
(360, 'APD Enterprises', 'PRODUCTS: > KSH - Filter Nozzle / PPN Strainer > LISSE - Filter Press, Filter Cloth > HAMON - Cooling Tower Spare Parts > FUCHS - Aerators for Waste Water Treatment > WIKA - Gauges (Pressure, Temperature & Level) > ICOM - VHF Transceiver Radio > INDUSTRIAL CHEMICALS:Ion Exchange Resin, Anti-scalant, Anti-foam    SERVICES: > Reconditioning of Valves & Pumps > Calibrations of Weighing Scale (Truck Scale)', 0, 'Door # 6B, The SITE Bldg., Mt. View (Buri) Road, Mandalagan, Bacolod City', '(034) 441-3732', '', '(034) 441-3732 / Mobile No.: 0915-702-7941 / 0917-585-8038', 'ma_teresagonzales@yahoo.com', 'COD', 'Distributor', '', 'Website: www.apd-enterprises.com', 'Inactive', '1.00', 1, ''),
(361, 'BJ Marthel International, Inc.', 'BJ Marthel International, Inc. is premised on service excellence > Service and maintenance of marine and industrial diesel heavy fuel engines > Installation of industrial diesel engines, general top overhauling of diesel engines/pumps > Complete facilities in the assembly of construction equipment including pre-delivery inspection services > Conducts services on proper operation and maintenance of construction equipment. > Periodic inspection of equipment during the warranty period.  And the following technical services: > Service and maintenance of marine and industrial diesel and heavy fuel engines > Installation of individual engines, general top overhauling of diesel engines and pumps > Repair and Maintenance of our heavy equipment  Products: > Machinery Parts for Diesel Engines > Industrial Machinery and Spare Parts > Marine Diesel Engines, Parts and Accessories > Marine Ship Deck and Engine Auxiliary Equipment and Spare Parts > Stationary and Portable Generator Sets > Construction and Earth Moving Equipment:       Backhoe Loaders, Skid Steer Loaders, Excavators, Motor graders, Vibratory Compactors, Bulldozers         Fire Fighting Trucks and Equipment       Fire Trucks, Fire Extinguishers, Fireman’s Safety Apparel, Fire Hoses  Absorbents for Chemical and Oil Spills > Construction and Hydraulic Tools and Equipment > Sewer and Catch basin Vacuum and Jetting Equipment > Dredgers > Port Cargo Handling Equipment > Water Filtration, Disinfection and Supply Systems > Tools and Equipment for the Power and Telecommunication Industries', 0, 'Door No. 2 Angela Building, Mandalagan Highway, Bacolod City', '(034) 708-7217', '', '', 'iecdbacolod@gmail.com', 'COD', 'Distributor', 'Sir Francis', '', 'Inactive', '1.00', 1, ''),
(362, 'GB Turbophil Turbocharger Service Repair & Parts Supply', 'Turbocharger repair parts and services', 0, 'Suba-Masulog Road, Lapu-Lapu City, Cebu', '(32)2606392', '', '', '', '', 'Contractor', 'Mr. Samuel John Rios - 0918-803-8644', '', 'Inactive', '1.00', 1, ''),
(363, 'Mustard Seed Systems Corporation - Bacolod', 'Door Access, Switch Hub, Ncomputing', 0, 'Door no. 5 SK Realty Building, Kamagong cor. 6th St, Bacolod City', '(034) 432 1650 / 707-1342', '', '', 'mary09mseedsystem@gmail.com', 'COD', 'Contractor / Distributor', 'Ms. Mary', '', 'Active', '1.00', 1, ''),
(364, 'PJL Auto  Center, Inc.', 'A Goodyear Servitek, is your one stop shop for all your vehicle needs and repairs.  It offers a wide selection of automotive tires, lubricants, and imported batteries as wells as car parts and accessories. It also provides repairs and maintenance services such as nitrogen tire fill, computerized engine system diagnosis, computerized wheel alignment, battery life testing, tire changing, wheel balancing, under chassis repair, chamber correction, suspension service, brake system servicing, oil change, total engine overhaul, fuel injection cleaning, air condition repair, among others. We also offer emergency rescue service for your vehicles. And with our highly trained, knowledgeable, and service oriented staff, we are here to address your every automotive need.', 0, 'Lacson Street, Brgy. Mandalagan, Bacolod City', '(034) 441-1222, 441-1444', '', '', 'contact@pjlgroup.ph', '', '', '', '', 'Active', '1.00', 1, ''),
(365, ' Tough Performance AutoWorkz', 'Wheel Alignment, Wheel Balancing, Change oil, Car Electrical Repair, Under Chassis Repair, Engine Tune-up, Suspension Modification, Car Body Repair and Painting, Car Audio Accessories, Change Car, Car Tint', 0, 'Circumferential Road, Brgy. Bata (In front of Adam''s Lodge), Bacolod City', '(034) 432 0544 ', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(366, 'TOWER Motors SHOP', 'Automotive Repair and Services', 0, 'Purok Hollowblocks, Lacson extension, Alabado street, Bacolod City', ' (034) 707 9947', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(367, 'Valing Auto Repair Shop', 'Automotive Repair and Services, Services Offered: Overhauling Engine Brake System Under Chassis And Other Mechanical Repair', 0, ' Lucerne Berne St., Helvetia Heights Subd., Bacolod City', '709 7224', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(368, 'H. Y. Hablo Services Company', 'Trucking Services', 0, 'Henrietta Village, Bacolod City', '0922-897-9326', '', '', '', 'COD', 'Trucking Services', 'Sir Yoyo', 'VAT Reg. TIN 450-101-583-0000', 'Active', '1.00', 1, ''),
(369, 'Castle''s Electronic Services', 'Electronics, Two Way Radio Products & Services', 0, 'Cor. 2nd Road-Burgos St., Villamonte, Bacolod City', '(034) 435-0992, 434-7429, 433-8467', '', '', '', 'COD', 'Supplier', 'Mr. Calixto Del Castillo III', 'NON VAT Reg. TIN 113-616-541-0000', 'Active', '1.00', 0, ''),
(370, 'Rosal Machine Services', 'Machine Shop, Fabrications, Threading, Machining', 0, 'Akishola Circumferential Road, Brgy. Villamonte, Bacolod City', '(034) 708-0216, 0920-983-0092, 0922-879-3905', '', '', '', '15 days PDC', 'Manufacturer', 'Mr. Rey Geronimo - General Manager', 'NON VAT Reg. TIN 475-877-774-0000', 'Active', '1.00', 0, ''),
(371, 'Bacolod Freedom Enterprises', 'Hardware, Electrical', 0, 'BS Aquino Drive, Bacolod City', '(034) 433-2130 / 432-0756 / 433-4664', '', '(034) 433-9054', '', 'COD', 'Supplier', 'Ms. Lalyn', '', 'Active', '1.00', 1, ''),
(372, 'New Bacolod Pyramid Construction Supply', 'Goulds Pumps Distributor, Pumps, Welding Machine, Tanks', 0, '507 BS Aquino Drive, Capitol Shopping Center, Benigno S. Aquino Drive, Bacolod City', '(034) 433-4648 to 49', '', '433-4649', 'rthurch@yahoo.com.ph', 'Cash', 'Distributor / Supplier', 'Mr. Arthur Ang', '', 'Active', '1.00', 1, ''),
(373, 'Arcspray Engineering Services', 'Thermal Spray, Turbine and crankshaft services', 0, 'Laray Road, Rjaj Bldg., B2, Cansaga Consolacion, Cebu', '(032) 423-0948', '', '', 'simonsingo38@yahoo.com / arcsprayengineering@yahoo.com', 'COD', 'Contractor / Supplier', 'Mr. Simon Sigo - 0939-9553-716 / 0977-0645-056', 'Affiliated to Flex-a-seal Industrial Supply and Services', 'Active', '1.00', 1, ''),
(374, 'Gendiesel Philippines, Inc.', 'GGensets (Generator Sets), Diesel Engines, Automatic transmissions, and Heavy-duty trucks', 0, 'Liroville Subdivision, Singcang-Airport, Bacolod City', '(034) 433-8518', '', '', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(375, 'MAXSAVER', 'CCTV  ', 0, 'Rizal St., Bacolod City', '(034) 435-1930', '', '', '', 'COD', 'Supplier ', '', '', 'Active', '1.00', 1, ''),
(376, 'Security Warehouse Philppines Inc.', 'CCTV (Rover Systems)', 0, 'Unit CZ204, 2/F Cyberzone, Rizal St., Reclamation Area, Bacolod City', '(034) 704-2271', '', '(034) 704-2271', '', 'COD', 'Distributor', 'Mr. Filart Juridico', '', 'Active', '1.00', 1, ''),
(377, 'Zalia Information Technology Solutions (ZITS)', 'CCTV    ', 0, 'Bacolod City', '0933-869-1612 ', '', '', 'lredoblo@gmail.com', '', '', '', '', 'Active', '1.00', 1, ''),
(378, 'IPC Security Surveillance System Gadgets & Electronics Center', 'CCTV (Hikvison)', 0, 'Door 4 Sun-In Bldg., Lacson St., Bacolod City', '(034) 704-2330', '', '704-2330', 'ipcbacolod@yahoo.com', 'COD', 'Contractor / Distributor', '', '', 'Active', '1.00', 1, ''),
(379, 'Central Sales and Heavy Equipment Service', 'Hydraulic Jacks Repair and Servicing, Heavy Equipment Services', 0, '39-1 Rizal St., Bacolod City', '(034) 435-5860', '', '', '', 'COD-upon completion', 'Repairs & Services for Heavy Equipments', 'Mr. Romeo Andrada', 'TIN No: 077-183-783-199', 'Active', '1.00', 0, ''),
(380, 'NCH Philippines Inc.', 'Water Treatment, Cold and High Temp. Sealant, Degreaser, Lubricants', 0, 'Bet. Kms 19 & 20 North Ortigas Ave., Ext., Cainta, 1900 Rizal', '(02) 655-7389 to 7392', '', '(02) 656-8063', 'Rotchel.Mendoza@NCH.com', '30 days upon Delivery of Chemicals', 'Manufacturer, Contractor', 'Engr. Rotchel Mendoza (Chem Aqua)- 09177016793 and Mr. Joem Tayson (Maintenance( - 09238313125', '', 'Active', '1.00', 1, ''),
(381, 'Alpha Pacific Electric Co., Incorporated', 'Molded Circuit Breaker, 250 amps, 3 pole, 18 kaic @ 480 VAC without Lugs, Model: EXC250F3250, Brand: Schneider', 0, 'Madison Manor Condominium, Alabang-Zapote Road, Las Pinas City, Metro Manila', '(02) 800-0489 / 800-0870', '', '', '', 'COD', '', 'Mr. Rodel De Lara', '', 'Active', '1.00', 1, ''),
(382, 'Lancet Enterprises', '', 0, '2251-C Adonis St, Bgy 862, Zone 094 STA Ana, Manila', '(02) 254-7292', '', '', '', '15 days PDC', '', 'Mr.Alan Ferrer', '', 'Active', '1.00', 1, ''),
(383, 'Marshal Electrical & Metal Products Co. Ltd.', '', 0, 'Lot7 Blk2Orion St., Sterling Ind''l. Park, Meycuayan, Bulacan', '(044) 836-1865 / 417 0101', '', '', '', 'COD', '', 'Mr.Kirby King', '', 'Active', '1.00', 1, ''),
(384, 'NG CHUA TRADING', '', 0, 'Espana Tower, 2203 Espana Street, City of Manila, Metro Manila', '(02) 354-9808 / 353-7620', '', '', '', 'COD', '', 'Mr. Leo Ace Devis', '', 'Active', '1.00', 1, ''),
(385, 'RS Components', '', 0, '21 Floor, Multinational Bancorporation Center, Ayala Avenue, Makati, 1226 Metro Manila', '(02) 888-4030', '', '', '', '30 days PDC upon Delivery', '', 'Ms. Kathy Mendoza', '', 'Active', '1.00', 1, ''),
(386, 'Best Electrical Components, Inc.', '', 0, 'Omron-APP Bldg., 40 Buendia Avenue, Between Bautista St. and Dian St., Makati', '(02) 843-0785', '', '(02)843-0675', '', '30 days PDC upon Delivery', '', 'Mr. Ferdie', '', 'Active', '1.00', 1, ''),
(387, 'Rozemar Hardware', 'spare parts / hardware', 0, '1528 Alvarez St, Bgy 321, Zone 032 STA Cruz, Manila', '(02) 731-5140', '', '', '', 'COD', '', 'Mr. Chris Austria', '', 'Active', '1.00', 1, ''),
(388, 'Portalloy Industrial Supply Corporation', 'hardware / consumables / industrial', 0, '1011-1013 Oroquieta Street Sta. Cruz, Manila', '(02) 733 7957 / 734-8137', '', '', '', 'COD', 'Wholesaler / Importer / Retailer', 'Mr. Chris', '', 'Active', '1.00', 1, ''),
(389, 'Maximum Electronics & Communications Inc.', '', 0, '123 Kamuning Rd, Diliman, Quezon City, Metro Manila', '(02) 929 9511 / 412-7849', '', '', '', 'COD', '', 'Mr. / Ms. Danny / Helen Ferrer', '', 'Active', '1.00', 1, ''),
(390, 'Maximum Electronics & Communications Inc.', '', 0, '23 Kamuning Rd, Diliman, Quezon City, Metro Manila', '(02) 929-9511 / 412-7849', '', '', '', 'COD', '', 'Mr. Danny / Ms. Helen Ferrer', '', 'Active', '1.00', 1, ''),
(391, 'Maximum Electronics & Communications Inc.', '', 0, '123 Kamuning Rd, Diliman, Quezon City, Metro Manila', '(02) 929-9511', '', '', '', '', '', '', '', 'Active', '1.00', 1, ''),
(392, 'Maximum Electronics & Communications Inc.', 'VHF/FM Portable Radio. Brand: Motorola', 0, '23 Kamuning Rd, Diliman, Quezon City, Metro Manila', '(02) 929-9511', '', '', '', 'COD', '', 'Ms. Helen', '', 'Active', '1.00', 1, ''),
(393, 'Blue Sapphire Telecoms', '', 0, 'Unit 1101 Entrata Tower 1, 2609 Civic Drive Filinvest  Alabang, Muntinlupa City', '(02) 846-7876 / (02) 404-8387 / 514-8727 / 553-6526 / 553-6529', '', '(02) 846-2758', 'sales@bstelecoms.com.ph', 'COD', '', 'Ms. Malu Mendoza', '', 'Active', '1.00', 1, ''),
(394, 'Maximum Electronics & Communications, Inc.', '', 0, '123 Kamuning Rd, Diliman, Quezon City, Metro Manila', '(02) 929-9511 / 412-7849', '', '', '', 'COD', '', 'Ms. Helen', '', 'Active', '1.00', 1, ''),
(395, 'Bacolod Plastic Supply ', 'Plastic Supplies', 0, '5 Hilado St, Bacolod City', '(034) 434-0067', '', '', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(396, 'CITI Hardware - Tangub Branch', '', 0, 'Araneta Street, Brgy. Tangub, Bacolod City', '(034) 444-0591 / (034) 704-3400', '', '(034) 704-3400', 'tangub@citihardware.com', '', 'COD', '', '', 'Active', '1.00', 1, ''),
(397, 'D.C. Cruz Trading Corp. ', '', 0, '158-C Singcang, Bacolod City', '(034) 434-3944', '', '', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(398, 'Firebase Industrial Supply and Services', '', 0, 'Bacolod City', '(034) 445-0689', '', '', '', '15 days PDC', '', 'Mr. Rommel Genovia', '', 'Active', '1.00', 0, ''),
(399, 'Kelvin Nicoli Enterprises', '', 0, 'Gatuslao St, Brgy. 15, Bacolod City', '(034) 476-9756 / (034) 433-4441', '', '', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(400, 'NNT68 Fishing Supply ', '', 0, 'Luzuriaga St., Bacolod City', '(034) 435-0499', '', '', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(401, 'Bacolod Triumph Depot', '', 0, 'Hilado St., Bacolod City', '(034) 434-0111', '', '', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(402, 'Modbus Electrical Supplies Corp.', '', 0, 'The Big Orange Building, 328 Edsa Avenue, Caloocan City, Metro Manila', '(02) 361-0500 / 361-0500', '', '', '', '', '', 'Mr. Allan Que', '', 'Active', '1.00', 1, ''),
(403, 'Upshaw Industrial Corporation', '', 0, 'Room 201, VAG Building, Ortigas Avenue, San Juan City, Metro Manila', '(02) 721-5451', '', '', '', '', '', 'Mr. Armando Noga', '', 'Active', '1.00', 1, ''),
(404, 'West Point Engineering Supplies', '', 0, 'West Point Bldg. Bacood St. Brgy. Patubig,, Marilao, Bulacan, Patubig Rd, Marilao, Bulacan', '0917 801 4750 / (044) 797-2524', '', '', '', 'COD', '', 'Ms. Jessa Paglinawan', '', 'Active', '1.00', 1, ''),
(405, 'West Point Engineering Supplies', '', 0, 'West Point Bldg. Bacood St. Brgy. Patubig,, Marilao, Bulacan, Patubig Rd, Marilao, Bulacan', '0917 801 4750 / (044) 797-2524', '', '', '', '', '', 'Ms. Jessa Paglinawan', '', 'Active', '1.00', 1, ''),
(406, 'Test Equipment Connection', '', 0, '30 Skyline Dr, Lake Mary, FL 32746, USA', '+1 407-804-1299 / 800-615-8378  loc. 174', '', '', '', '', '', 'Mr. John Bahng', '', 'Active', '1.00', 1, ''),
(407, 'Carvi-Upholstery & Home Supply', 'Tarpaulin', 0, 'Gonzaga St, Bacolod City', '(034) 434-5020', '', '', '', 'COD', '', '', '', 'Active', '1.00', 1, ''),
(408, 'CMC 417 Enterprises Corporation', '', 0, 'Hilado St., Bacolod City', '(034) 476-9756 / 704-1311 / 702-8402', '', '', '', '', '', 'Ms. Rain', '', 'Active', '1.00', 1, ''),
(409, 'Chris Marine (Sweden)', 'honing machine stone', 0, 'Chris Marine AB Stenyxegatan 3 SE 213 76  Malmö, Sweden', '+46 733 518466 / +46 40 6712600 / +46 40 6712699', '', '', '', 'advance payment', '', 'Mr. Ralph Rosengren / Mr. Krister Larsson', '', 'Active', '1.00', 1, ''),
(410, 'Asell Tglobal Inc', '', 0, '40 London Street, Capitol Homes Old Balara, 1100 Quezon City, Metro Manila', '709-0842', '', '', '', '', '', 'Mr. Ramil Cornico', '', 'Active', '1.00', 1, ''),
(411, 'Panda Construction Supply Incorporated', 'tools & equipment', 0, '405 Nueva Street (E T. Yuchengco), Manila City, Metro Manila', '(02) 236-5500 / 716-8361', '', '', '', '', '', 'Mr. Romy', '', 'Active', '1.00', 1, ''),
(412, 'Josmee', 'Medical Supplies', 0, 'Bacolod City', '(034) 474-0388', '', '', '', 'COD', 'Distributor', 'Ms. Johanah', '', 'Active', '1.00', 1, ''),
(413, 'Medical Center Trading Corporation', 'Medical Supplies', 0, 'Burgos-Lacson Street, Brgy.19, Bacolod City', '0908 898 0274', '', '', '', 'COD', 'Distributor', 'Ms. Angelouan Molina', '', 'Active', '1.00', 1, ''),
(414, 'Hardware and Industrial Solutions Incorporated', '', 0, '56 Madison Street, Mandaluyong City', '(02) 631-8366 / 638-1432', '', '', 'mventigan@uptown.com.ph', '', '', 'Ms. Melanie Ventigan', '', 'Active', '1.00', 1, ''),
(415, 'Rainehans Trading', '', 0, 'Manila', '(02) 756-0674', '', '', 'rainehanstrading@gmail.com', '', '', 'Ms. Alma Yap', '', 'Active', '1.00', 1, ''),
(416, 'MD Trade & Spares GmbH', '', 0, 'Alte Kreisstrasse 1, 39171 Sülzetal, Germany', '+49 391 727678-13', '', '', '', '', '', 'Mr. Steven Wdent', '', 'Active', '1.00', 1, ''),
(417, 'ENEX Maschinenhandel- und Ersatzteilservice GmbH', '', 0, 'Schnackenburgallee 116, 22525 Hamburg, Germany', '+49 40 5472160', '', '', '', '', '', 'Ms. Susanne Strauss', '', 'Active', '1.00', 1, ''),
(418, 'MOTEX Teile GmbH (Philippines)', '', 0, '21423, Winsen (Luhe) , Niedersachsen Germany', '+49-417188570', '', '', '', '', '', 'Mr. Melvin Sitaca', '', 'Active', '1.00', 1, ''),
(419, 'Twinco Pte Ltd', 'engine parts', 0, '3 Loyang Way 4, Singapore 506956', '+65 6542 9618', '', '', '', '', '', 'Mr. Kenneth Ng', '', 'Active', '1.00', 1, ''),
(420, 'Industrial & Marine Services Eng (Malaysia)', '', 0, 'Malaysia', '+603 5524 6898', '', '', '', '', '', 'Pang Siew Mei', '', 'Active', '1.00', 1, ''),
(421, 'Industrial & Marine Services Eng (Malaysia)', '', 0, 'Malaysia', '+603 5524 6898', '', '', '', '', '', 'Pang Siew Mei', '', 'Active', '1.00', 1, ''),
(422, 'All Tools Industrial Sales and Services', 'Tools, Safety Products, Hardware', 0, '12 Block 1 Lot 4 United Glorietta, Cañogan, Pasig City, Metro Manila, 1605', '(02) 542-0988 / 641-9811 / 903-0574 / 09228810472', '', '(02) 640-3898', 'laarni.mata@alltoolsindustrial.com', 'Advance Payment', 'Distributor', 'Ms. Laarni G. Mata', 'www.alltoolsindustrial.com', 'Active', '0.00', 0, ''),
(423, 'MACYS Photo Video Audio Store', 'Electrical Equipment Case, camera shop', 0, 'GF, F14 , APM Shoping Mall, A. Soriano Avenue, Cebu City', '(032) 418-1008 / 0922 856 2297 / ', '', '', 'inquiry@macyscamerashop.com', 'Advance Payment', 'Distributor', 'Ms. Kathlyn', '', 'Active', '0.00', 0, ''),
(424, 'New Llacer Electronics & Electrical Supply', 'Electronics / Battery', 0, 'Gonzaga St., Bacolod City', '(034) 433-5658', '', '', '', 'COD', 'Wholesale / Retail', '', '', 'Active', '0.00', 0, ''),
(425, 'Genuine Mercantile Corp.', 'Auto Supplies and Accessories', 0, 'CMU Bldg., Gonzaga St., Bacolod City', '(034) 434-7923 / 434-7924 / 434-7925', '', '(034) 435-0965', 'genuinemercantile@gmail.com', 'COD', 'Distributor', 'Mr. Juje Valencia', '', 'Active', '0.00', 0, ''),
(426, 'Philippine HOH Industries, Incorporated (PHII)', 'water and waste water treatment chemicals and equipment, Design and installation of process, water and waste water treatment systems, Supply of chemicals and miscellaneous materials and parts related to process, water, and waste water treatment, Supply of equipment and systems for process, water, and waste water treatment.', 0, 'Unit 241 Cityland Dela Rosa Condominium7648 Dela Rosa St., Pio Del Pilar, Makati City, 1230', '(02) 818-6725, (02) 810-9282', '', '(02) 810-9282', 'mikecylanan@yahoo.com or m.ylanan@philhoh.com', 'COD', 'Contractor, Manufaturer', 'Mr. MICHAEL “MIKE” YLANAN - 0949-9948024', '', 'Active', '0.00', 0, ''),
(427, 'Federal Express Pacific, LLC', 'Cargo Forwarder    ', 0, 'Bacolod City', '0916-852-1463 / ', '', '', '', 'COD', 'Forwarder', '', 'VAT Reg TIN 275-540-614-00000', 'Active', '0.00', 0, ''),
(428, 'TGA Chemical Enterprises', 'Manufacturer, Liquid Soap, Cleaning Chemicals', 0, 'Burgos St., Bacolod City', '(034) 432-1899', '', '', '', 'COD', 'Manufacturer', '', 'non VAT Reg TIN 187-521-215-001', 'Active', '0.00', 0, ''),
(429, 'City Vet Trading', 'Agricultural Chemicals', 0, 'Mabini-Libertad St., Bacolod City', '(034) 4340869', '', '', '', 'COD', 'Distributor', '', '', 'Active', '0.00', 0, ''),
(430, 'Crown Agri-Trading Corp.', 'Agricultural Chemicals', 0, 'D-47 Narra Avenue, Capitol Shopping Center, Bacolod City', '(034) 434 5322', '', '', '', '', 'Distributor', '', '', 'Active', '0.00', 0, ''),
(431, 'MTG Gasoline Service Station', 'Shell Distributor, Diesel, Gasoline', 0, 'Araneta St., Tangub, Bacolod City', '(034) 474-2431 / 09173014439', '', '', '', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(432, 'Yale Hardware Corp.', 'Hardware, Industrial Tools', 0, 'Punta Del Norte Bldg, Cor.Mc Briones , MJ Cuenco, Cebu City', '(032) 255 8891', '', '', '', 'Advance Payment', 'Wholesale / Retail / Distributor', '', '', 'Active', '1.00', 1, ''),
(433, 'Cebu Atlantic Hardware Inc.', 'Line Hardware', 0, '66-72 B. Aranas St, Cebu City', '(032) 261 4692', '', '', '', 'Advance Payment', 'Distributor', '', '', 'Active', '1.00', 0, ''),
(434, 'SM Appliance Center', 'Home Appliances', 0, 'Father M. Ferrero St, Bacolod City', '(034) 468-0080', '', '', '', '', 'Distributor', '', '', 'Active', '0.00', 0, ''),
(435, 'Imperial Appliance Plaza', 'Home Appliances', 0, '69-2 Araneta Ave, Bacolod City', '(034) 435-0469', '', '', '', 'COD', 'Distributor', 'Ms. Jenry', '', 'Active', '1.00', 1, ''),
(436, 'ESAA CCTV and Computer Solution', 'CCTV Installation and Parts, Computer, Laptop, Printer', 0, 'Bacolod City', '(034) 704-8259', '', '', '', 'COD', 'Installer, Contractor, Distributor', '', '', 'Active', '1.00', 1, ''),
(437, 'JPEL Construction Supply & Services', 'Aggregates', 0, 'Crossing High School, Brgy.  Lag-asan Bago City', '0929-3500-395 / 0939-306-5115 0926-685-5154', '', '', '', 'COD', '', 'Mr. Joemar T. Pellejo', '', 'Active', '0.00', 0, ''),
(438, 'Rowel Hydraulic Hose Center', 'Hydraulic Hose ', 0, 'Lacson St., Bacolod City', '(034) 434 1611', '', '', '', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(439, 'GC & C, INC.', 'Aggregates', 0, 'Carlos Hilado Ave. Circumferential Road, Barangay Bata, Bacolod City', '(034) 441-2409; Local 105/115', '', '', '', '50% down, 50% upon delivery', 'Manufacturer', 'Ms. Jeselle Hisanza', '', 'Active', '1.00', 1, ''),
(440, 'Kippy Rubber Trading', 'All kinds of rubber moulded products for sugar mills and highly technical compound rubber products', 0, '#2 Kanla-on St., Mt. View Subdivision, Mandalagan, Bacolod City', '(034) 713-1577 / 0943-535-8102', '', '', '', 'COD-upon completion', '', 'Ms. Aleen Aspera', '', 'Active', '2.00', 0, ''),
(441, 'Citi Hardware - Lacson Branch', 'Hardware,Tools, Tiles', 0, '24th Lacson St., Bacolod City', '(034) 432 3944', '', '', '', 'Cash', 'Distributor', '', '', 'Active', '0.00', 0, ''),
(442, 'T5 Sumag Enterprises, Inc.', 'Aggregates', 0, 'Sum-ag, Bacolod City', '(034) 444-0491', '', '', '', '50% downpayment, 50% upon delivery', 'Distributor', 'Mr. Wilfredo Tan', '', 'Active', '0.00', 0, ''),
(443, 'Elastic Industrial Sales', 'PVC Pipes and Fittings    ', 0, 'Jl Building, Burgos Street, Bacolod City', '(034) 433-7540 / 434-5812', '', '', '', 'COD', 'Distributor', '', '', 'Active', '0.00', 0, ''),
(444, 'NHK Glass and Aluminum Enterprises', 'Glass Installation, Window Glass', 0, '560, B.S. Aquino Drive, Bacolod City', '(034) 432-3106', '', '', '', 'COD - upon completion', 'Manufacturer / Contractor / Distributor', 'Sir Nonoy', '', 'Active', '0.00', 0, ''),
(445, 'Pacific Ads Creative Outdoor', 'Tarpaulin Printing, Signages', 0, 'Door # 5 Vemre Bldg., Rizal St., Bacolod City', '(034) 434-2360 / 708-7785', '', '', 'pacificadscreative@yahoo.com / pacificadscreative@gmail.com', 'COD upon completion', '', '', '', 'Active', '0.00', 0, ''),
(446, 'MJD Motor Parts Supply', 'Auto Supply', 0, 'Rizal St., Bacolod City', '(034) 708-7940', '', '', '', '', '', 'Sir Bonnie', 'non Vat TIN 121-335-248-0000', 'Active', '0.00', 0, ''),
(447, 'Hiltor Corporation', 'Trucking Services', 0, 'San Sebastian St., Bacolod City', '(034) 433-8872', '', '', '', 'COD upon completion', '', '', '', 'Active', '0.00', 0, ''),
(448, 'AJAT Phil. Inc.', 'Chemical Disposal', 0, 'Philippines', '0925-501-9737', '', '', '', '', '', '', '', 'Active', '0.00', 0, ''),
(449, 'EMB (Energy Management)', 'Chemical Disposal', 0, 'Philippines', '0917-314-1892', '', '', '', '', '', '', '', 'Active', '0.00', 0, ''),
(450, 'Cebu Oversea Hardware', 'Structural Steels, Wires, Tools', 0, '82 Plaridel St., Cebu City, 6000 Cebu', '(032) 254-1511 / 412-0107', '', '', '', 'Advance Payment', 'Distributor', 'Mr. Cresencio Lariosa', '', 'Active', '0.00', 0, ''),
(451, 'TDT Powersteel Corp.', 'Structural Steels', 0, 'M.C Briones St. Highway Mandaue, Cebu City of Mandaue City, Cebu', '(032) 236 4052 / 236 4052 / 0917-654-2032', '', '(032) 236 4052', '', 'Advance Payment', 'Distributor', 'Mr. Michael Mangubat', '', 'Active', '0.00', 0, ''),
(452, 'Heaters Instrumentation and Control Equipment Corporation', 'Tubular Heater, Cartridge Heater, Band Heater, Strip Heater, Temperature and Humidity Controllers, Thermostat and Thermocouples, Quarts, Titanium, Teflon Infrared, Monel, SS 316, Heaters for Chemical, Immersion Heaters for Industrial Use, Circulation Heater for:   • Thermal Heat Transfer Oil,   • Heavy Bunker Oil, • Water, Steam Super Heater, Swimming Pools and Sauna,  • Hot Air Blower and Dryers', 0, '228 7th Avenue (West) corner Rizal Avenue, Caloocan City  Metro Manila 1400, Philippines', '(02) 367-2062 / 794-9761', '', '(02) 362-0653', 'heatersinstrumentation@yahoo.com', 'COD', '', '', '', 'Active', '0.00', 0, ''),
(453, 'Aleja Blower Corporation', 'Blower, Industrial Exhaust Fans', 0, '#457-A Boni Ave., Mandaluyong City', '(02) 532-5675, 532-5860, 532-6137', '', '(02) 535-2059', 'randy.lucas@aleja.com.ph', 'COD', 'Manufacturer', 'Mr. Randy Lucas', '', 'Active', '0.00', 0, ''),
(454, 'Stratman Turbo Fans and Blowers', 'Blower, Industrial Exhaust Fans', 0, '# 47 Bach St. Capitol District Fairview Quezon City', '(02) 930-8992 / 427-1391 / 428-1175 / 930-8939', '', '', 'sales@granstratman.com', '', '', 'Ms. Vanessa', '', 'Active', '0.00', 0, ''),
(455, 'Fil General Blower Corp.', 'Blower, Industrial Exhaust Fans', 0, '16 Mabolo Road Northern Hills, Malabon', '(02) 361-2659, 361-2663, 361-0652, 447-6721, 447-6722', '', '(02) 361-4189', 'sales@filgenblowers.com', 'COD', 'Manufacturer', '', '', 'Active', '0.00', 0, ''),
(456, 'Katmar Industrial Center', 'Blower, Industrial Exhaust Fans', 0, 'L2F, First Street , Golden Gate Avenue, Park Homes Commercial Complex, Tunasan, Muntinlupa City', '(02) 842-8171 / 809-7723 / 973-8053 / 986-8026', '', '09209235508', 'ding_katmar@yahoo.com', 'COD', 'Manufacturer', 'Mr. Ronnie', '', 'Active', '0.00', 0, ''),
(457, 'MFive Industrial & Construction Supplies', 'TIG Machine, industrial tools', 0, '2870 Hilado Extension, Capitol Shopping Center, Bacolod City', '(034) 432-7493', '', '', '', 'COD', 'Distributor', 'Miss Cathy / Sir Mark', '', 'Active', '0.00', 0, ''),
(458, 'Robinsons Appliances - Bacolod ', 'Hardware, Appliances', 0, 'Robinsons Place Bacolod, Lacson Street, Mandalagan, Bacolod City, ', '(034) 441-2662', '', '', '', 'Cash', '', '', '', 'Active', '0.00', 0, ''),
(459, 'Insuphil Industrial Corp.', 'Ceramic Fiber, Insulation materials, Rockwool', 0, 'IIC Bldg., Mabugat Road, Tabok, Mandaue City', '(032) 344-6268/514-8938; 344-6756/345-1070', '', '', 'insuphil@yahoo.com', 'advance payment', 'Distributor', 'Mr. John A. Tabucanon', '', 'Active', '0.00', 0, ''),
(460, 'IMX-Europacific Industries Corp.', 'Repair and Maintenance Electrodes, Butterfly Valves and Controls, Check Valves, Flexible Cables, Gauges, Delta Systems Steam Traps, Mechanical Devices, Control & instrumentation, electrical components, Carboweld Electrodes, Actuators.', 0, 'Sool 2, Silay City, Negros Occidental ; Unit 202 Avenue Square Garden Bldg., 532 U. N. Ave. cor. J. Bocobo St., Ermita, Manila, Phils.', '(02) 522-1782 / 526-8157 / 526-7227 / 400-2226 / 09227989946', '', '(02) 526-0705', 'richeltm@imx.com.ph', 'COD', 'Distributor', 'Ms. Richel T. Madayag', '', 'Active', '0.00', 0, ''),
(461, 'H. V. Power Concepts', 'VRLA Battery, UPS, Connectors', 0, 'Unit 107 The Orient Bldg., General Echavez Street, Cebu City', '(032) 231 1004', '', 'hanz.goopio@hvpowerconcepts.com', '', 'Advance Payment', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(462, 'Appliance Centrum', 'Appliances', 0, 'Rizal-Lacson Sts., Bacolod City', '(034) 434 6995', '', '', '', 'Cash', 'Distributor', 'Ms. Marivic', '', 'Active', '1.00', 1, ''),
(463, 'Asian Home Appliance', 'Appliances', 0, 'Ground Floor Ayala Mall, The district north point, Talisay City', '(034) 441 6553', '', '', '', 'Cash', 'Distributor', 'Ms. Camille', '', 'Active', '1.00', 1, ''),
(464, 'ICO Electrical Services', 'Electrical Services, Repair of Electric Motors', 0, 'M. C. Briones, Mandaue City, Cebu', '(032) 346 4690', '', '', '', 'Advance Payment', 'Electrical Servicing', 'Mr. Erwin Salvador', '', 'Active', '1.00', 1, ''),
(465, 'PMS Electrical Sales & Services', 'Current Transformers, Split Core Current Transformers and Regulators, universal change over switch, polyphase meters, vacuum circuit breakers, frequency inverters', 0, 'Door # 1 CTD Bldg., Mabini Corner Zulueta Sts., San Roque Cebu City, 6000', '(032) 406 6980', '', '(032) 236 5890', '', 'Advance Payment', 'Distributor', '', '', 'Active', '2.00', 1, ''),
(466, 'BJ Marthel International, Inc.', 'Machinery Parts for Diesel Engines, Industrial Machinery and Spare Parts, Marine Diesel Engines, Parts and Accessories, Marine Ship Deck and Engine Auxiliary Equipment and Spare Parts, Stationary and Portable Generator Sets, Construction and Earth Moving Equipment: Backhoe Loaders, Skid Steer Loaders, Excavators, Motor graders, Vibratory Compactors, Bulldozers, Fire Fighting Trucks and Equipment: Fire Trucks, Fire Extinguishers, Fireman?s Safety Apparel, Fire Hoses, Absorbents for Chemical and Oil Spills, Construction and Hydraulic Tools and Equipment, Sewer and Catch basin Vacuum and Jetting Equipment, Dredgers, Port Cargo Handling Equipment, Water Filtration, Disinfection and Supply Systems, Tools and Equipment for the Power and Telecommunication Industries', 0, 'Door No. 2 Angela Building, Mandalagan Highway', '(034) 708-7217 / 09328504522', '', '', '', 'COD', 'Distributor', 'Sir Francis', '', 'Active', '0.00', 1, ''),
(467, 'Samson Merchandising Inc.', 'Car Battery, Tires', 0, '96, Lacson Street, Bacolod City', '(034) 433 1208', '', '', '', 'COD', 'Distributor', '', '', 'Active', '1.00', 1, ''),
(468, 'DHL Express (Philippines) Corp.', 'Forwarder', 0, '9, Esteban Building, Lacson St, Bacolod City', '(034) 435 0581', '', '', '', 'COD', 'Forwarder', '', '', 'Active', '1.00', 1, ''),
(469, 'Philippine Airlines (PAL) CARGO', 'Air Cargo Forwarder', 0, 'Silay City, Negros Occidental', '(034) 436 5772', '', '', '', 'COD', 'Forwarder', '', '', 'Active', '0.00', 0, ''),
(470, 'Windoor Glass and Aluminum Supply', 'Glass and Aluminum Supply', 0, 'Rizal Street, Bacolod City', '(034) 433-3121 / 709-0162', '', '', '', 'COD', 'Manufacturer', 'Mr. John Gacayan', '', 'Active', '2.00', 1, ''),
(471, 'Inter-Continental Systems Integrators Incorporated (ICSII) - Bacolod', 'Services: Electrical, Civil works, Mechanical, Automation and Architectural works, supply/installation and commissioning of machineries and equipment, fabrication and utilities piping, systems integrator, engineering & technical services provider, Automation system, programming & commissioning of PLC, SCADA, Variable frequency drives and Servo drives, Electric Motors, Gear-motor, Control products (Contactors and Circuit breakers)', 0, 'Filinvest City, Alabang', '0917-568-1412', '', '', '', 'COD', 'General Contractor', 'Celphy/Hannah', '', 'Active', '1.00', 1, ''),
(472, 'Flomont Trading General Merchandise', 'Industrial Gas, Oxygen, Acetylene, Argon', 0, 'Burgos Street, Bacolod City', '(034) 4321481', '', '', '', 'COD (Cash Deposit for each cylinder)', 'Manufacturer', '', '', 'Active', '1.00', 1, ''),
(473, 'Bacolod HKL Enterprises', 'Electrical Supplies', 0, 'Locsin Street, Bacolod City', '(034) 458 9588', '', '', '', 'COD', 'Wholesale / Retail / Distributor', '', '', 'Active', '1.00', 1, ''),
(474, 'Good Morning Trading', 'hardware / electrical / consumables', 0, 'San Vicente, Calapan City', '', '', '', '', 'COD', '', '', '', 'Active', '0.00', 0, ''),
(475, 'Puregold', 'consumables', 0, 'Camilmil, Calapan City', '', '', '', '', 'COD', '', '', '', 'Active', '0.00', 1, ''),
(476, 'Tower General Merchandise', 'consumables', 0, '#1009 Int. 103 Benavidez St. , Binondo, Manila', '516-0455', '', '516-0455', '', '30 days PDC', '', 'Cliff Ilao', '', 'Active', '1.00', 1, ''),
(477, 'Ark Marine Services Inc.', 'Daihatsu Engine spare parts', 0, 'SS Bldg. 2-9-3, Yokohama, Kanagawa, Japan', '+81-45-444-2112', '', '+81-45-444-2113', '', '30 days', '', 'Ms. Alma Lacasandile', '', 'Active', '0.00', 1, ''),
(478, 'Petron Corporation', 'lubricants', 0, 'Jesus St., Pandacan, Manila', '563-3125 / 563-8521 / 802-7777', '', '563-8208', '', 'COD/ cash', '', 'Whilden Sta. Maria / Ms .Michelle', '', 'Active', '0.00', 1, ''),
(479, 'Lubri-Chem Philippines Distributors, Inc.', 'lubricants', 0, '#38 Ge. Malvar St. Caloocan City', '364-8484, 364-2703', '', '363-5702, 364-2706', '', '30 days', '', 'Ms. Mina/ Joemar', '', 'Active', '0.00', 1, ''),
(480, '', '', 0, '', '', '', '', '', '', '', '', '', '', '0.00', 0, ''),
(481, 'ABB , Inc.', 'electrical', 0, 'Km. 20 West Service Road, South Superhighway, Sucat Para?aque City', '821-7777 loc. 351', '', '', '', '100% advance payment', '', 'Jack Era', '', 'Active', '0.00', 1, ''),
(482, 'Nationware Marketing Services, Inc.', 'industrial', 0, 'G/Flr NH08 Bldg. 128 Pornivir St. Near Cor. F.B. Harrison St. Pasay City', '526-8701 loc. 116', '', '525-2581', '', 'COD', '', 'Ms. Bambie M. Lausan', '', 'Active', '0.00', 1, ''),
(483, 'Port Alloy Industrial Supply Corp.', 'electrical', 0, '1013 Oroquita St. Brgy. 312 Zone 031 District III, Sta. Cruz, Manila', '734-8143/ 733-7957', '', '734-8141', '', '30 days PDC', '', 'Mr. Ruben Chua/ Sir Chris', '', 'Active', '0.00', 1, ''),
(484, 'Sensors and Measuring Instruments Corp.', 'electrical', 0, '8418 Mayapis St., San Antonio Village, Makati City', '896-6896/ 7573348/ 728-6360', '', '896-6896', '', 'COD', '', 'Michael Fajardo', '', 'Active', '0.00', 1, ''),
(485, 'Pan Pacific Industrial sales Co., Inc.', 'PPE products & safety wear', 0, 'Panpisco Bldg. 246 Escolta St. Manila', '242-8765-72 loc. 6117', '', '243-1392', '', '30 days PDC', '', 'Ms. Sonia Magat', '', 'Active', '0.00', 1, ''),
(486, 'Miami Tools Supplies', 'tools & equipment', 0, 'RM 203 Gopoco Bldg. 832 Juan Luna St., Binondo, Manila', '579-6182, 247-4867, 708-6437', '', '', '', 'COD', '', 'Ms. Charmaine Arcino', '', 'Active', '1.00', 1, ''),
(487, 'DAIKAI Engineering PTE LTD', 'mechanical', 0, '128 Pioneer Road, Singapore', '6863-2856', '', '6863-2876', '', 'pre payment', '', 'Mr. Marc De La Cruz', '', 'Active', '0.00', 1, ''),
(488, 'Active Control Engineering & Supplies', 'machinery and fabrication', 0, 'Unit G. 2bd Flr Marian Bldg. Pe?afrancia St., Paco Manila', '871-0273/ 404-2315/ 781-3964', '', '', '', 'COD', '', 'Christine Mayores', '', 'Active', '0.00', 1, ''),
(489, 'Almighty Corporate Tech Solutions, Inc.', 'computer equipment and supplies', 0, 'MS4069 Corinthian Executive Regency, Ortigas, Ave. Ortigas Center, Pasig', '239-2845', '', '', '', '30 days', '', 'Mr. Francis Ed Fabian', '', 'Active', '0.00', 1, ''),
(490, 'Jocelyn Forge Incorporated', 'industrial', 0, 'Bo. Bagbagui, Meycauayan, Bulacan', '984-7777', '', '984-8581-82', '', 'cash', '', 'Ms. Nimfa Decena', '', 'Active', '0.00', 1, ''),
(491, 'Preastern Inc.', 'chemicals', 0, 'Ibabao, San Vincente, Lilo-An, Cebu', '(032)-266-3651', '', '(032)-266-3651', '', 'COD', '', 'Ms. Clarita Paz C. Robles', '', 'Active', '0.00', 1, ''),
(493, 'Unitop General Merchandise', 'consumables', 0, 'Lumangbayan, Calapan City', '', '', '', '', 'COD', '', '', '', 'Active', '0.00', 1, '');
INSERT INTO `vendor_head` (`vendor_id`, `vendor_name`, `product_services`, `category_id`, `address`, `phone_number`, `mobile_number`, `fax_number`, `email`, `terms`, `type`, `contact_person`, `notes`, `status`, `ewt`, `vat`, `tin`) VALUES
(494, 'King Zebra Gen. Mdse.', 'office supplies', 0, 'San Vicente, Calapan City', '', '', '', '', 'COD', '', '', '', 'Active', '0.00', 1, ''),
(495, 'Chemical Solutions Trading', 'chemicals', 0, 'Blk. 2, Lot 3 Grand Bluerdge Townhomes Sauyo Rd. Novaliches, QC', '983-3240/ 404-7378', '', '', '', 'COD', '', 'Ms. Maribeth G. Abiog', '', 'Active', '0.00', 1, ''),
(497, 'Chongqing Lushun Scientific and Technological Development Co. Ltd.', 'spare parts', 0, 'Xinqiao Industrial Zone Shapingba District Chongqing China', '+86-65227191', '', '+86-23-65227191', '', '50% down payment & 50% before shipment', '', 'Ms. Isabel Wan', '', 'Active', '0.00', 1, ''),
(498, 'Safeone Enterprises', 'fire extinguisher', 0, 'JJB Inn, Bo. Tanag Carigma Ext. Brgy. San Jose, Antipolo City', '696-6219', '', '', '', '30 days (upon delivery)', '', 'Ms. Rose/ Ms. Ladylyn', '', 'Active', '0.00', 1, ''),
(499, 'Georvi''s Enterprises', 'office supplies', 0, 'San Vicente, Calapan City', '043-288-4494', '', '', '', 'COD', '', '', '', 'Active', '0.00', 1, ''),
(501, 'Handyman Xentro Mall', 'hardware / consumables', 0, 'Lumangbayan, Calapan City', '', '', '', '', 'COD', '', '', '', 'Active', '0.00', 1, ''),
(502, 'The Analyst Supply House, Inc.', 'electrical', 0, '531 San Rafael St. Mandaluyong City', '532-0445/ 940-9703', '', '', '', '', '', 'Ms. Baby', '', 'Active', '0.00', 1, ''),
(503, 'Sika USA', 'industrial', 0, 'Grandview Commerce Center 1500 Sylvania Ave., Suite 111', '', '', '', '', 'pre payment', '', '', '', 'Active', '0.00', 1, ''),
(504, 'Best Electrical Components, Inc.', 'mechanical', 0, 'Omron APP Bldg. 40 Buendia Ave., Between Bautista St., and Dian St. Makati City', '543-0785', '', '', '', 'COD', '', 'Maricel Reyes', '', 'Active', '0.00', 1, ''),
(505, 'Limketkai Manufacturing Corporation', 'consumable', 0, '168 Velazquez Road, Brgy. San Juan Taytay, Rizal', '587-4012', '', '', '', 'cash', '', 'Ms. Miles Deleon', '', 'Active', '0.00', 1, ''),
(506, 'IHI Turbo International Trade, Inc.', 'electrical', 0, 'Rios Bldg. 193 Do?a Soledad Extn. Cor. Hawaii St. Don Bosco, Para?aque City', '828-0410/ 847-1197', '', '', '', 'dated check', '', 'Mr. Alvin Suaybaguio/ Ms. Sheena Rios', '', 'Active', '0.00', 1, ''),
(507, 'Alex Machine Shop', 'machinery and fabrication', 0, 'Tawiran, Calapan City', '', '', '', '', 'COD', '', 'Mr. Alex Belina', '', 'Active', '0.00', 1, ''),
(508, 'SGS Philippines, Inc.', '', 0, '2nd Floor, Alegria Bldg., 2229 Chino Roses Ave., Makati City', '587-4901', '', '', '', '30 days', '', 'Ms. Bernadette D. Chong', '', 'Active', '0.00', 1, ''),
(509, 'Nicasio Contractor', 'industrial', 0, 'San Vicente, Calapan City', '', '', '', '', 'COD', '', 'Mr. Vick Marquez', '', 'Active', '0.00', 1, ''),
(510, 'TKI Industrial Parts Supply', 'machinery and fabrication', 0, 'Unit 1-N Acasel Bldg., Soler St., Cor., Sales St., Quiapo Manila', '736-6465/ 488-1626', '', '', '', 'cash', '', 'Ms. Emma', '', 'Active', '0.00', 1, ''),
(511, 'BJP Machine Shop', 'machinery and fabrication', 0, 'Tawiran, Calapan City', '', '', '', '', 'COD', '', 'Mr. Protacio de Mesa', '', 'Active', '0.00', 0, ''),
(512, 'DMK Power and General Services, Inc.', 'electrical', 0, '182 Sunset Drive, East Metro Residence Bldg., Brookside Hills, Cainta Rizal', '945-9691/ 655-2197/ Cell #: 0922-8754994', '', '', '', '30% down payment 70%-30 days', '', 'Dante Katanyag/ Leo Baconawa', '', 'Active', '0.00', 1, ''),
(513, 'Wartsila Philippines Inc.', 'honing & glazing of liners / PC 2.5 engine', 0, 'No.6 Diode St., Light Industry & Science Park 1 Cabuyao, Laguna 4025', '049-543-0382', '', '049-543-0381', '', 'pre payment', 'Contractor', 'Mr. James Vargas & Ms. Rhea Bautista', '', 'Active', '0.00', 1, ''),
(514, 'Faith Marine Industrial Corporation', 'machinery and fabrication', 0, 'No. 11 Our Lady of Manaog St. Rosario Complex, San Vicente, San Pedro, Laguna', '02-868-1024', '', '', '', '30 days', '', 'Fortunato Mejor', '', 'Active', '0.00', 1, ''),
(515, 'Radiocom Electronics Center, Inc.', '', 0, '559-561 F. Torres St. Sta. Cruz, Manila', '734-5588/ 733-5588/ 733-8185', '', '', '', 'COD', '', 'Ms. Jhuly Cruz', '', 'Active', '0.00', 1, ''),
(516, 'Phayelle Copy Center', 'office supplies / riso printing / photocopy', 0, 'San Vicente, Calapan City', '', '', '', '', 'cash', '', '', '', 'Active', '0.00', 1, ''),
(517, 'Alex Belina Welding & Machine Shop', 'machinery and fabrication', 0, 'Lalud, Calapan City', 'Cell #: 0910-965-3858', '', '', '', '', '', 'Mr. Alexander P. Belina', '', 'Active', '0.00', 1, ''),
(518, 'Yubhel General Fabrication & Engineering Works', 'spare parts', 0, 'Welbourne Rd. Carmona, Cavite', '046-443-92-31', '', '', '', '30 days', '', 'Ms. Loudes Ermoso', '', 'Active', '0.00', 1, ''),
(519, 'Ronyx Trading & Engineering Services', 'machinery and fabrication / restoring cylinder heads', 0, 'Bag-ong Silingan, Mactan Lapu-lapu, Cebu, City', '032-495-8842/ 032-266-7901/ Cell #: 0917-744-8475', '', '', '', '40% down payment, 30% balance 30 days, 30% balance for another 15 days after 2nd payment', 'Contractor', 'Mr. Avelino Caballhug', '', 'Active', '0.00', 1, ''),
(520, 'GPV Car  Aircon, Parts & Motorworks', 'spare parts', 0, 'Lumangbayan, Calapan City', '288-2369/ Cell #: 0906-377-8008', '', '', '', '30 days', '', 'Mr. Romy Co', '', 'Active', '0.00', 1, ''),
(521, 'Goltens Singapore PTE. LTD.', 'machinery and fabrication', 0, '#6A Benoi RD. Singapore 629881', '+65-6861-5220/ Cell #: 0917-862-1592', '', '', '', 'pre payment of USD 11, 840 prior order processing balance if any upon invoice', '', 'Mr. Ken Lian/ Alex Aguilay', '', 'Active', '0.00', 1, ''),
(522, 'RN Painting', 'industrial', 0, 'Highlander, Canubing 1,Calapan City, Oriental Mindoro', 'Cell #: 0939-172-3794', '', '', '', '50% dp, Balance after 15 days of completion', '', 'Mr. Rolando Najito', '', 'Active', '0.00', 1, ''),
(524, 'RA Brake Bonding', 'spare parts', 0, 'Camilmil, Calapan City', '', '', '', '', 'cash on delivery', '', '', '', 'Active', '0.00', 1, ''),
(525, 'Mega Masterlink Fabricator & Electrical Services Corp.', 'electrical', 0, '26-1 Francisco St., Brgy. Maysan, Valenzuela City', '467-5131/ 444-6747', '', '332-3832', '', '30%dp,  30% dp upon completion, 40% 30 days', '', 'Mr. Orly de Dios', '', 'Active', '0.00', 1, ''),
(526, '', '', 0, '', '', '', '', '', '', '', '', '', '', '0.00', 0, ''),
(527, 'Nestor de Chavez Electrical Services', 'electrical', 0, 'Camilmil, Calapan City', 'Cell #: 0918-280-2534', '', '', '', 'cash on delivery', '', 'Mr. Nestor de Chavez', '', 'Active', '0.00', 1, ''),
(528, 'LMF 9LMC) Industrial Enterprises', 'safety equipment', 0, 'Camilmil, Calapan City', '043-286-7666/ Cell #:0916-710-3263', '', '', '', '30 days', '', 'Mrs. Anna Pranque', '', 'Active', '0.00', 1, ''),
(529, 'Newton Electrical Equipment Co., Inc.', 'Electric Motor, Transformer and Generator Repair Services; Maintenance for Industrial Electro-Mechanical  Equipment', 0, '38 Oliveros Comp., F. Bautista St., Brgy., Ugong Valenzuela City', '938-7000/ 432-0105', '', '984-6367/ 432-0096', '', '30 days', 'Distributor', 'Ms. Josephine Enriquez', 'Newton was the Exclusive Distributor of Dolph''s products in the Philippines ', 'Active', '0.00', 1, ''),
(530, 'Integrated Power & Control Provider Inc.', 'industrial', 0, '2A 2F 8070 Tanguile St., Cor., Estrella Ave., San Antonio Village, Makati City', '899-2018/ 899-0904', '', '898-3957', '', '30 days', '', 'Mr. Rey Sacular/ Ms. Rizza', '', 'Active', '0.00', 1, ''),
(531, 'Elegante', 'machinery and fabrication', 0, 'Tawiran, Calapan City', 'Cell #: 0908-894-5717', '', '', '', '30 days', '', 'Mr. Nomer', '', 'Active', '0.00', 1, ''),
(532, 'Cosworth Multi-Resources & Machinery Corp.', 'machinery and fabrication', 0, 'Lot 5A Naga Road Pulang Lupa Dos, Las Pi?as City', '847-24-27/ 847-2430', '', '847-24-30', '', '30 days', '', 'Mr. Edgar See', '', 'Active', '0.00', 1, ''),
(533, 'NCE Computer Shop', 'computer equipment and supplies', 0, 'Calapan City, Oriental Mindoro', '288-1462', '', '', '', 'COD', '', 'Engr. Evangelista', '', 'Active', '0.00', 1, ''),
(534, 'PMM Works, Inc.', 'machinery and fabrication', 0, 'Km. 16, RSTI Compound, Zapote-Alabang Road Pamplona 1, Las Pi?as, City', '873-3778, 874-8844, Cell #: 0917-852-1075', '', '873-1642', '', '50% down payment, 50% upon completion', '', 'Mr. Nestor Insige', '', 'Active', '0.00', 1, ''),
(535, 'Leodivicio M. Villanueva', '', 0, 'Canubing 1, Calapan City', 'Cell #: 0999-801-1948', '', '', '', '50%  dp, balance after completion', '', 'Mr. Leodivcio M. Villanueva', '', 'Active', '0.00', 1, ''),
(536, 'Calapan Oriental Machine & Engr.', 'machinery and fabrication', 0, 'Masipit, Calapan City', '288-2176', '', '', '', '30 days', '', 'Mr. Leovy Bawasanta', '', 'Active', '0.00', 1, ''),
(537, 'Princesor', 'machinery and fabrication', 0, '6545 Capricorn St., Lourdes Vill., Bolbok, Batangas City', 'Cell #: 0909-928-2918', '', '', '', '50% down payment, balance after 30 days', '', 'Mr. Princilio Soria', '', 'Active', '0.00', 1, ''),
(538, 'Reynaldo Gozar Mechanical Works', 'mechanical', 0, 'Camilmil, Calapan City', '', '', '', '', 'COD', '', 'Mr. Reynaldo Gozar', '', 'Active', '0.00', 1, ''),
(539, 'Coolut', 'Industrial', 0, '', '', '', '', '', '5 days', '', '', '', 'Active', '0.00', 1, ''),
(540, 'Materials Required for Cable Spool Stand', 'Industrial', 0, '', '288-4650', '', '', '', 'Cash', '', 'Ms. Genny', '', 'Active', '0.00', 1, ''),
(541, 'New Rodolfo Hardware', '', 0, '', '288-4388', '', '', '', '10 days PDC', '', 'Sir Allan', '', 'Active', '0.00', 1, ''),
(542, 'MC Verwin', 'Industrial', 0, '', '288-4401', '', '', '', '10 days PDC', '', 'Ms. Vec', '', 'Active', '0.00', 1, ''),
(543, 'R & T Trading', 'Industrial', 0, '', '288-1545', '', '', '', '10 days PDC', '', 'Sir Patrick', '', 'Active', '0.00', 1, ''),
(544, 'Panopio', 'Industrial', 0, '', '288-1545', '', '', '', 'Cash', '', 'Sir Daymar', '', 'Active', '0.00', 1, ''),
(545, 'Panopio', 'Industrial', 0, '', '288-1545', '', '', '', 'Cash', '', 'Sir Daymar', '', 'Active', '0.00', 1, ''),
(546, 'LMF (LMC) Industrial Enterprises', 'safety equipment', 0, 'Camilmil, Calapan City', '043-286-7666/ Cell #: 0916-710-3263', '', '', '', '30 days', '', 'Mrs. Anna Pranque', '', 'Active', '0.00', 1, ''),
(547, 'VPR Marketing', 'appliances / electrical', 0, '', '286-2224', '', '', '', '15 days', '', 'Ms. Judith Catapang', '', 'Active', '0.00', 1, ''),
(549, 'Wellston Trading Corp.', 'engine parts', 0, '2-11-10 Hiratsuka Shinagawa, Tokyo, Japan', '81-3-6421-5966', '', '81-3-6421-5977', '', 'prepayment', '', 'Kenya Ishii', '', 'Active', '0.00', 1, ''),
(550, 'King Zebra Gen. Merchandise', 'office supplies', 0, 'Calapan City', '', '', '', '', 'Cash', '', '', '', 'Active', '0.00', 1, ''),
(551, 'Colent Marketing  Philippines, Inc.', 'industrial fan / air conditioning / appliances', 0, 'Berton''s Place Building #46, Sta. Rosa St. Manresa, QC.', '442-3856/ 442-3866', '', '', '', 'cash before delivery of items', '', 'Ms. Minette A. Ballesteros', '', 'Active', '0.00', 1, ''),
(552, 'Handyman', 'hard ware / consumables', 0, 'San Vicente,Calapan City', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(553, 'Petco Renergy Corporation', 'wood ward governor', 0, '#18 Michael Rua St., Better Living Sbd. Para?aque City', '824-2863', '', '776-1219', '', '45 days PDC after confirmation', 'Contractor', 'Mr. Art Olarte', '', 'Active', '0.00', 1, ''),
(554, 'Wincorp Enterprises, Inc.', 'engine parts', 0, '852 Eulogio Rodriguez Jr. Ave., C-5, Quezon City', '352-6522', '', '', '', 'COD', '', 'Ms. Eliza Maquinana', '', 'Active', '0.00', 1, ''),
(555, 'American Bearing', 'Industrial rubber sealing / consumables', 0, '1262 Claro M. Recto Ave., Manila', '254-9710/ 254-9168', '', '254-9228', '', 'Cash', '', 'Mr. Joegen Lo', '', 'Active', '0.00', 0, ''),
(556, 'Emco Electrodyne Pvt. Ltd.', 'electrical and mechanical', 0, 'D-87, Phase-7, Ind. Area, Mohali-160055, Punjab, India', '+91 172 2236070, 5093070/ +91 172 2236070, 5093070', '', '', '', '40% advance with purchase order, 60% balance before dispatch, thru electronic transfer', '', 'Meenakshi Sharma/ J.S. Mathraoo', '', 'Active', '0.00', 1, ''),
(557, 'PC Worx I.T. Solutions', 'Computer equipment and supplies', 0, '4th F. Cyberzone Mega B., SM Megal Mandaluyong City', '942-5001', '', '', '', 'COD', '', 'Ryan Omar Cabugnason', '', 'Active', '0.00', 1, ''),
(558, 'LJ Technologies', 'CCTV equipment and supplies', 0, 'Unit 15 Filipiniana Commercial Complex, Brgy. Santo Niño, Calapan City', 'Cell #: 0915-544-8109', '', '', '', 'Cash', '', 'Mr. Joseph Elvin L. Tautjo', '', 'Active', '0.00', 0, ''),
(559, 'IMSE Utama (M) SDN. BHD.', 'engine parts', 0, '18 Jalan 15/22 Taman Perindustrian, Tiong Nam, Seksyen 15, 40200 Shah Alam, Sengalor, Malaysia', '+63917-821-0688/ +603-5524-6898', '', '+603 5524 6838', '', '100% payment upon advise of availability of all  the items', '', 'Mr. Denver S. Lim/ Pang Siew Mei', '', 'Active', '0.00', 1, ''),
(560, 'Motex Philippines, Inc.', 'engine parts', 0, 'Room  412, West City Plaza, 66 Avenue, Quezon City, Philippines', '374-7885/ 374-7894', '', '', '', '50% advance payment upon issuance of a confirmed order, 50% when ready, before dispatch', '', 'Mr. Melvin Sitaca', '', 'Active', '0.00', 1, ''),
(561, 'Enex GmbH', 'engine parts', 0, 'Schnackenburgallee 116 25 525 Hamburg, Germany', '+49 (0)40/ 54 72 16-0', '', '+49 (0)40/ 54 72 16-11', '', '', '', 'Ms. Susanne Strauss', '', 'Active', '0.00', 1, ''),
(562, 'GBIC Enterprises, Inc.', 'Spare parts', 0, '937-941 Benavidez St. Binondo, Manila', '245-7023/ 224-8413', '', '', '', '50% downpayment, 50% upon delivery', '', 'Ms. Nielgelyn Ewayan', '', 'Active', '0.00', 1, ''),
(563, 'Ocean Electrical PTE. LTD.', 'Electrical', 0, '50 Tuas Ave., Lot 03-05 Singapore', '+65 6316 2230', '', '+65 6316 2203', '', 'prepayment', '', 'PWLoi', '', 'Active', '0.00', 1, ''),
(564, 'C', '', 0, '', '', '', '', '', '', '', '', '', '', '0.00', 0, ''),
(565, 'Southern Controls Industrial Supply Services Corp.', 'Industrial', 0, '2nd Flr. Rm. 203 S. P. Junction Bldg. II, Nautical Highway, Brgy. San Antonio, San Pedro, Laguna', '032-734-0744/ Cell #: 0917-796-2756', '', '', '', 'COD', '', '', '', 'Active', '0.00', 1, ''),
(567, 'Active Control Automation and Industrial Sales, Corp', 'Machinery &  Fabrication', 0, 'Unit G. Marian Bldg. , 1524 Pe?afrancia St. Paco, Manila', '871-0273-74', '', '', '', '15 days', '', 'Ms. Kimberly Ramos', '', 'Active', '0.00', 1, ''),
(568, 'Sensing Technology Corporation', 'Industrial', 0, '457-B Boni Ave., New Zaniga, Mandaluyong City', '531-9323, 533-5977', '', '531-7387', '', 'COD/ dated check', '', 'Ms. Emma', '', 'Active', '0.00', 1, ''),
(569, 'VIC Imperial Appliance Corp', 'Electrical', 0, 'Camilmil, Calapan City', '043-288-2043', '', '', '', 'Cash purchases', '', 'Mr. Joseph Masongsong', '', 'Active', '0.00', 1, ''),
(570, 'K line Logistics , LTD.', 'engine parts', 0, '3-1-7-3 F, Imabashi Chuo-Ku, Osaka 541-0042, Japan', '', '', '', '', '', '', '', '', 'Active', '0.00', 1, ''),
(572, 'Spectrum General Mdse.', 'Industrial', 0, 'San Vicente,Calapan City', '043-288-4980', '', '', '', 'Cash purchases', '', 'Mr. Alex Sy', '', 'Active', '0.00', 1, ''),
(573, 'Han''s Infinite Tools', 'Industrial', 0, '801 Tayuman St., Cor., G. Perfecto St., Tondo, Manila', '252-6141-45', '', '253-1265, 253-3593', '', 'COD', '', 'Mr. Edgar Santiago', '', 'Active', '0.00', 1, ''),
(574, 'JJ-Lapp Cable (P) Inc.', 'Electrical', 0, '5th floor  Orion  Bldg. 11th Ave., Cor., 38th St., Bonifacio Global City, Taguig', '786-7740', '', '786-7744', '', 'prepayment', '', 'Divina Castillo/ Joseph Ragudos', '', 'Active', '0.00', 1, ''),
(575, 'Shenzhen Newin  Machinery Co., Ltd.', 'auxiliary parts', 0, 'Trade Plaza No. 5, China South City, Pinghu, Longgang dist., Shenzhen, China', '+86-755-230-77266', '', '+86-181-722211369', '', '50% down payment, 50% before shipment', '', 'Erin Lian', '', 'Active', '0.00', 1, ''),
(576, 'Chongqing Lushun Scientific and Technological Development Co., LTD.', 'auxiliary parts', 0, 'Xinquiao Industrial Zone Shapingba District Chongqing China', '+86-65227191', '', '+86-23-65227191', '', '50% down payment, 50% before shipment', '', 'Ms. Isabel Wan', '', 'Active', '0.00', 1, ''),
(577, 'Wise Industrial Systems, Inc.', 'Industrial', 0, 'RM 506, Goldwell Bldg., Aurora Blvd., Cubao, Quezon City', 'Cell #: 0918-9596854', '', '', '', 'COD/ dated check', '', 'Mr. Hernane "Bong" Cabrera', '', 'Active', '0.00', 1, ''),
(578, 'Severo Sy Ling', 'engine parts', 0, '155 Tomas Pinpin T. Binondo, Manila', '245-8722/ 242-9486', '', '242-9999', '', 'COD', '', 'Ms. Carol', '', 'Active', '0.00', 1, ''),
(579, 'Nell Battery', 'Lubricants', 0, '', '286-2377', '', '', '', 'cash/ dated check', '', '', '', 'Active', '0.00', 1, ''),
(580, 'CAC Super Store', 'safety equipment', 0, '', '', '', '', '', 'Cash', '', '', '', 'Active', '0.00', 1, ''),
(581, 'Ever', 'Consumables', 0, '', '', '', '', '', 'Cash', '', '', '', 'Active', '0.00', 0, ''),
(582, 'Octagon', 'Computer equipment and supplies', 0, '', '', '', '', '', 'COD', '', '', '', 'Active', '0.00', 1, ''),
(583, 'Ambassador International, Inc.', 'Industrial product', 0, '#48 7th Avenue,Cubao, Quezzo City', '911-4026', '', '911-5470', '', 'COD', '', 'Ellen Froyalde', '', 'Active', '0.00', 1, ''),
(584, 'Caloocan Gas', 'Chemicals', 0, '', '', '', '', '', 'Cash', '', 'Ms. Daisy', '', 'Active', '0.00', 1, ''),
(585, 'Mindoro Deluxe', 'Industrial', 0, '', '', '', '', '', 'Cash', '', '', '', 'Active', '0.00', 1, ''),
(586, 'Color Master', 'printing & designs', 0, '', '', '', '', '', 'Cash', '', '', '', 'Active', '0.00', 1, ''),
(587, 'Globe', '', 0, '', '', '', '', '', 'Cash', '', '', '', 'Active', '0.00', 1, ''),
(588, 'Complink Marketing, Inc.', 'Computer equipment and supplies', 0, 'C410 (B) SM Megamall Do?a Julia Vargas Ave., Mandaluyong City', '477-4286', '', '637-3988', '', 'COD', '', 'Ms. Ella', '', 'Active', '0.00', 1, ''),
(589, 'Micro Pacific technologies and System Corp.', 'Computer equipment and supplies', 0, 'Unit 2A-2B Gervasia Corporate center #152 Amorsolo St., Legazpi Village, Makati City', '840-4563', '', '894-5860', '', 'COD', '', 'Francis Osio', '', 'Active', '0.00', 1, ''),
(590, 'Millers Hardware', 'Industrial', 0, '4F Supermarket Bldg., Sta. Cruz, Manila', '743-1272', '', '', '', '30 days', '', 'Mr. Jose Almonte', '', 'Active', '0.00', 1, ''),
(591, 'QJA Hardware', 'Industrial', 0, '', '', '', '', '', 'Cash', '', '', '', 'Active', '0.00', 1, ''),
(592, 'Road Movers', 'Industrial', 0, '', '', '', '', '', 'Cash', '', 'Ms. Mhean', '', 'Active', '0.00', 1, ''),
(593, 'NCE', 'Computer equipment and supplies', 0, '', '', '', '', '', '30 days', '', 'Mr. Evagelista', '', 'Active', '0.00', 1, ''),
(594, 'Pick-up Shop', 'Consumable', 0, '', '', '', '', '', 'Cash', '', '', '', 'Active', '0.00', 1, ''),
(595, 'Robinson''s Supermarket', 'Consumable', 0, '', '', '', '', '', 'Cash', '', '', '', 'Active', '0.00', 1, ''),
(596, 'People''s Arcade', 'Consumable', 0, '', '', '', '', '', 'Cash', '', '', '', 'Active', '0.00', 1, ''),
(597, 'Pandayan Bookshop', 'Consumable', 0, '', '', '', '', '', 'Cash', '', '', '', 'Active', '0.00', 1, ''),
(598, 'Abel Enterprises', 'Industrial', 0, 'Juan Luna St., Calapan City', '288-4361', '', '', '', '20% dp, 40% 15 days, balance of 40% for another 15 days', '', 'Mr. Mario R. Cantos, Jr.', '', 'Active', '0.00', 1, ''),
(599, 'Multihomes', 'Machinery &  Fabrication', 0, '', '', '', '', '', '30 days', '', '', '', 'Active', '0.00', 1, ''),
(600, 'Super  8', 'Industrial', 0, '', 'Cell #: 0939-906-0727', '', '', '', '15 days', '', 'Sir Suzara', '', 'Active', '0.00', 1, ''),
(601, 'EJ Martinez', 'Industrial', 0, '', '', '', '', '', '15 days', '', 'Sir EJ', '', 'Active', '0.00', 1, ''),
(602, 'FilGen General Blower Corp.', 'Industrial', 0, '16 Mabolo rd. Northern Hills, Malabon City', '263-2659', '', '', '', '50% dp, balance prior to shipment', '', 'Mr. Roy', '', 'Active', '0.00', 1, ''),
(603, 'R &T Trading', 'Industrial', 0, '', '', '', '', '', '1 week', '', 'Patrick', '', 'Active', '0.00', 1, ''),
(604, 'Jay @ Lumangbayan', 'Machinery &  Fabrication', 0, '', 'Cell #: 0947-937-4915', '', '', '', 'Cash', '', 'Jay', '', 'Active', '0.00', 1, ''),
(605, 'Apollo', 'Spare parts', 0, '', '', '', '', '', 'Cash', '', 'Ms. Roanne', '', 'Active', '0.00', 1, ''),
(606, 'All in Industrial', 'Consumable', 0, '', '', '', '', '', '30 days', '', '', '', 'Active', '0.00', 1, ''),
(607, 'Panopio Glass', 'Industrial', 0, '', '288-7627', '', '', '', '15 days upon installation', '', 'Mrs. Nerry Panopio', '', 'Active', '0.00', 1, ''),
(608, 'Calapan Paint', 'Consumable', 0, '', '', '', '', '', 'COD', '', '', '', 'Active', '0.00', 1, ''),
(609, 'Fras Trading', 'Electrical', 0, 'Blk.5, Lot 5 Dilang Nagpayo, Pinagbuhatan, Dist. 2, Pasig City', '832-4113', '', '405.1105', '', '30 days', '', 'Mr. Francis', '', 'Active', '0.00', 1, ''),
(610, 'ARM Solution Enterprises', 'safety supplies / painting works / electrical works and CCTV', 0, 'Bilucao, Malvar, Batangas', 'Cell #: 0999-938-6971/ 0915-313-2805', '', '', '', '50% upon P.O. and 50% upon deliver', '', 'John Carlo Arago', '', 'Active', '0.00', 1, ''),
(612, 'Top Rigid Industrial Supply, Inc.', 'safety equipment', 0, '9 West 4th Street, West Triangle Q.C. 1104 Philippines', '(632) 4121127; 3737576; 3729571; 3746172; 3711833; 3719982', '', '(632) 4121179', '', 'COD', '', '', '', 'Active', '0.00', 1, ''),
(613, 'Mesco', 'Mechanical', 0, 'Reliance cor. Brixton Sts., Brgy. Kapitolyo, Pasig City, Philippines 1603', '(63 2)631-1775 to 84', '', '(63 2)631-4028', '', '50% down payment upon order, balance COD', '', 'Robert M. Lee', '', 'Active', '0.00', 1, ''),
(614, 'G.U. Engineering Solutions, Inc.', 'Mechanical', 0, '580 7th  Ave., Caloocan City, Metro Manila,  Philippines', '361-3977, 362-3837, 364-2266, 364-3128, 365-7218 to 19', '', '(632) 364-8356', '', '50% down payment, balance upon completion', '', 'Merrie Jolie Chua', '', 'Active', '0.00', 1, ''),
(615, 'Baby''s Grocery', 'Consumable', 0, 'San Vicente ,Calapan City', '', '', '', '', 'Cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(616, 'The HiAdvance Manila Laboratory', 'General Capabilities: Asbestos testing, Inorganics, Organics, Wet Chemistry, Metals and Minerals, Pesticides and PCBs, Indoor Air Quality, Stack Emmission Testing, Ambient Air Monitoring, Phytoplankton, Microbiology, VOC & SVOC Full List; Sampling Capabilities: Groundwater, Marine and Surface, Wastewater, Drinking water, Ambient Air Sampling, Stack Air Sampling; Sample Management: Customized Bottle Orders, Sample preservatives, Preprinted Labels, Preprinted Chain of Custody; QC Analyses: Laboratory Control Samples (LCS), Matrix Spikes, Duplicate Matrix Spikes, Method blanks, Method Detection Limit ( MDL) studies, so that each of your analyses includes a verifiable and defensible detection limit', 0, '3rd Floor Maga Centre, San Antonio St. Paseo de Magallanes, Makati, Philippines', '+63 2 7294327/ +63 2 8548365', '', '', '', 'cash purchases', '', 'Ms. Annabelle Bangoy- Business Development Manager', '', 'Active', '0.00', 1, ''),
(617, 'Infinite Power Reefer Sockets', 'Standard Circuit Breaker Operated, Circuit Breaker Operated with Pilot Indicating Light, Rotary Switch Operated, Replacement Parts,', 0, '', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(618, 'Lead Core Technology System Incorporated', 'Energy Storage System (ESS); Power Pillar SG- ,all in design system for residential with hybrid on/off grid inverter and battery storage. Features: Indoor/ Outdoor Installation, Built in UPS, Integrated Isolators, Pre-wired, Cloud Service, Mobile App, High Performance Cell, Compact design; Power work- ,residential storage unit. Features: IP65, Easy installation, Compact size & design, High Performance Cell, Maximum of 4 units in parallel; Power Bank Plus-, LD ESS provide solution for various applications, such as peak shifting, renewable energy integration and frequency regulation with the world-leading lithium-ion battery technology. LD can offer an initial power system with energy management and battery monitoring features in accordance to customer''s need. Features: Flexibility thru modularity, Intelligent EMS, Modular Design, High Performance Cell; Power Station-, a reliable source of power for Industrial and Commercial applications and Remote Island Areas. Features: Containerized, Uninterruptible Power, Power Bank Plus, Fire Extinguisher System, Heating, Ventilation and Air Conditioning (HVAC)', 0, '#55 Road 20, Brgy. Bahay Toro, Project 8, Quezon City', '(+63) (2) 455-8190; 352-2209', '', 'loc. 102', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(619, 'Kyung Dong Electric Co., Ltd.,', 'Air Circuit Breaker /  Auto Transfer Switch / Combination Air Insulated  / Auto Section Switch / 25.8kV High Voltage Current Limiting Fuses / Interrupter Switch / Disconnecting Switch / Disconnecting Switch (Motor Operating Device) / Cut Out Switch / Power Fuse / Power Switches (KPFV) / Power Switches (KPFC)', 0, '#178 Eunhaengnamoo-ro, Yanggam-myun, Hwaseong-Shi, Kyuinggi-do, Korea [#445-935]', '031) 224-9093', '', '031) 8059-8144', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(620, 'Shenzhen Power Kingdom Co., Ltd.', 'Battery Structure: Battery Characteristics: Standard Features of Battery; Discharging, Charging, Battery life, Storage of Battery: Terminal: Handling Precautions: Production process: Products Series; PS Series, PK Series, PL Series, Long Life Series, Deep Cycle Series, High Rate Series, GEL Series, Traction Series: The Whole Industrial Chain', 0, 'Rm. 7011, East Block Building, City Square, Jia Bin Road, Luoho District, Shenzhen, China', '+86-755-22161920, 22161923, 22161873', '', '+86-755-22161360 Post Code: 518001', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(621, 'Prisma Electrical Controls Corp.', 'McGill Products; Conduit Pipes, Conduit Fittings, Fittings for Flexible Conduits, Metallic Electrical Boxes and Covers, Conduit Bodies, Waterproof Boxes and Covers, Channels and Supports, Metal Enclosures, Cable Ties, Aluminum Lugs, Tools / electrical consumables', 0, '2/F Le Mar Ben II Bldg., 747 San Bernardo St., Sta. Cruz, Manila', '+(632) 735-5830, 733-4526 loc. 212, 213, 235/ Mobile Numbers: +(63) 925-5199102, 917-5581146', '', '+(632) 735-9626', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(622, 'Calapan Central Auto Supply', 'auxiliary parts', 0, 'San Vicente, Calapan City', '288-4146', '', '', '', 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 0, ''),
(623, 'Sistema Electrik Inc.', 'Low Voltage & High Voltage electrical Components: Revenue Meters; Brand: EHM Made in Germany, Disconnect Switches; Brand: GAVE made in Spain, Digital Multimeters; Brand: Elnet made in Israel, Caapcitors; Brand: ICAR made in Italy, Manual Transfer Switch; Brand: CONTRACTPLASMA  made in Italy, Motorized Transfer Switch; Brand: CONTRACTPLASMA made in Italy, ATS Conroller, HV Disconnect Switches, AMR Solution (SistemaSoft Billing Solution), SCADA Software and Integration (Citect Facilities)', 0, 'Unit 404 FFS Building 2 Sct. Castor Corner, Sct. Tuason, Brgy. Laging Handa, Quezon City', '781- 6470/ 975- 5942/ (02) 372-4574/ Mobile #: 0977-803-3661', '', '', '', 'cash purchases', '', 'Zigmund Neil L. Roda ( Technical Sales)/ Arbel Caagbay ( Sales Engineer)/ Ronald M. Baltazar ( President)', '', 'Active', '0.00', 1, ''),
(624, 'MGC Moser-Glaser', 'Duresca DE-Busbar System; DE 17, 5kV - 2500 A,Duresca DG- Busbar System DG 17, 5 kV - 2500 A, Travesca Transformer- Bushing DTO/ 123 kV - 1250 A, Tiresca Busbar System TE 24 kV - 1250 A, Duresca Wall Bushings DMS/ 36 kV - 1600 A, Gaslink Busbar System GL 12 kV - 2500 A, Duresca Busbar systems DE 17, 5  kV - 2500 A, Duresca Wall Bushings DEMI/ 145 kV - 800 A, Tiresca Busbar Systems TE 24 kV - 1250 A, Travesca Transformer Bushings DTO/ 123 kV - 1250 A, Gaslink SF6  insulated busbar systems', 0, 'MGC Moser-Glaser AG, Lerchenweg 21 CH-4303 Kaiseraugst, Schweiz/ Suisse/ Switzerland', '+41 61 467 61 11', '', '+41 61 467 61 10', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(625, 'Phoenix Contact', 'Electronics housings, PCB terminal blocks and PCB connectors, High-current feed-through terminal blocks,  Heavy- duty connectors, Circular connectors (M5 to M12), Data connectors, Worldwide service and support, ', 0, 'Unit 2R, 2/F Lee Gardens Commercial Center, Shaw Boulevard corner Lee Street, Mandaluyong City, 1552, Philippines', '+63 0234 1324', '', '+63 2 234 1323', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(626, 'Chemrez Technologies', 'Biopetroleum Specialties & Traded Items; Fuel Improver, Fuel Injectro & Internal Engine Cleaner, Oil System Cleaner, Green Solvents and Cleaners, Oil Spill Dispersant and Washing Agent, Hydraulic Brake Fluid DOT-3, DOT-4, Engine Colorant, Grease, Fuel Dyes & Markers, Oil Soluble Powder Dyes, Water Treatment Chemicals (PAC, Polymers, Anti-scalant, Defoamers)', 0, '65 Calle Industria, Bagumbayan, Quezon City, 11 10 Philippines', '(632) 635 0680 loc .268/ Mobile #: +63 917 528 3589', '', '(632) 635 0703', '', 'cash purchases', '', 'Sven Eldric T. So ( Junior Product Representative)', '', 'Active', '0.00', 1, ''),
(627, 'Pemcor Industries Incorporated', 'Turn Key Substation, Solar On Shore Contractor, Electrical Works, Switchboard Manufacturing, Busduct Installation,  Electrical Product Distribution', 0, 'PEMCOR Industrial Plant, Lot 3 Dama de Noche, UPS4, Para?aque City, 1700', '(+632) 823-5255, 821-2503', '', '(+632) 823-5856', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, '221-425-090-000'),
(628, 'Epitax Pte. Ltd.', 'Offer finished lighting products, OEM/ODM services, CKD/sKD and lighting design. Strong product & technical support capabilities from our subsidiaries including warranty fulfillment; Industrial Lighting, Commercial Lighting, Roadway Lighting, Emergency Lighting, Signage', 0, 'Las Pi?as City, Metro Manila, Philippines', '+632 551 8473', '', '+63 (0)2 857 2345', '', 'cash purchases', '', '', 'Epitax Pte., Ltd. carries Claro LED Lighting Products', 'Active', '0.00', 1, ''),
(629, 'Indentrade Systems, Corp.', 'Diesel Power Generators of 1 kW to 3000kW, ATS, Synchronizing Panels, Parts & Consumables, Preventive Maintenance, After-Sales Services, Digital Control Panels, Genset & load bank Rentals, Solar Generator from 100w to 100MW,, Indentra HHO (Hydrogen fuel)', 0, 'Unit 821 Pioneer Highland  GTP2, Pioneer cor., Madison Sts., Mandaluyong City, 1550', '(+632) 7190901 to 02 / 5766642', '', '(+632) 6673585', '', 'cash purchases', '', 'Marlon N. Ignacio (Account Manager) / Sancho B. Belda ( VP- Sales and Marketing) / Jorge C. Flores (Account Manager), Mobile #: 0998-954-4967', '', 'Active', '0.00', 1, ''),
(630, 'Gran-Lumix Corporation', 'LED bulbs, LED MR16 Spotlights, Linear LED Fixture, LED Lamp Tubes, LED Fluorescent Fixtures, LED Par Lamps, LED Filament candle/bulbs, Decorative LED, LED Panel, LED AR111 Spotlight, LED Super Slim downlights, LED Ceiling downlights, LED Corn bulb, IP65 LED Waterproof Integrated Fixtures, Dome LED Light, Diffuser Fixture, LED Wall Lamp, Garden Lamp, LED Linkable Fixture, MR16 Recess Spotlight Aluminum Housing, AR 111 Recess Spotlight Aluminum Housing, PAR 30 Aluminum Housing, LED Tube Fixture, LED Panel, Grid Fixture LED Panel; electrical and Wiring Devices, Panel box, Energy Saving Lamps, Electronic Ballast, Box type Fixtures, Electronic Fixtures, Industrial Type Fixtures, Open Type Fixtures, IP65 Waterproof Fixtures, Recessed Grid Fixtures, Surface Mounted Grid Fixtures, Straight Fluorescent Lamp Tubes, Circular Lamp Tubes, Starters, CFL E27 Streetlight, LED Circular Lights, LED Ceilign Fixture, Emergency Ceiling Fixture with built-in battery, LED Floodlights (SMD/ COB Modular Series, Slim type Series, Basic Series, Classique Series), UFO high bay, LED Streetlights (UFO Series, Classique Series), LED High Bay( Cone Series, Unique Series); Solar Power System, Solar Powered Pumping system, Solar LED Streetlight, Integrated Solar Streetlight', 0, '3rd Floor, #9 Victoneta Avenue, Potrero, Malabon, Metro Manila, Philippines', '(632) 6683515; 366 7181 / Mobile Numbers: 0939-9220913; 0922-8243239; 0917-6504723', '', '(632) 238 2815', '', 'cash purchases', 'Distributor', 'Joevel Coja', '', 'Active', '0.00', 1, ''),
(631, 'Systems Controls Instrumentations, Inc.', 'Electrical, Process Control, Machinery & Equipment, Service and Parts; Repairs of Instruments, Calibration, Installation, Testing, & Commissioning, Preventive Maintenance, Temperature Image Scanning, Power Quality Audit, Instrumentation design & Contracting, Consumable Parts', 0, 'Unit-401 Common Goal Tower Finance corner Industry Streets, Madrigal Business Park, Alabang, Muntinlupa City, 1770, Philipines', '(02) 842-9957; 850-4115; 809-0558; 842-9910', '', '(02) 842-1281', '', 'cash purchases', '', 'Binky D. Encisa', 'SCII carries Dranetz, Avio, Extech, Qualitrol, Calmet and APT.', 'Active', '0.00', 1, ''),
(632, 'Montrelec Incorporated', 'Products Offered: Ring Main Unit ( Gas Insulated Switchgears), SF6 Outdoor Load Break Switch, Outdoor MV Power Fuse Assembly, Sectionalizer, Indoor Current Transformer, Indoor Potential Transformer, Lighting Arrester (Distribution/Station), Vacuum Circuit breaker, Protection Relay, Digital Multi-meter, Medium Voltage ATS, Indoor Load Break Switch, MV Power Fuse W/ 99.9% silver cut out, Change Over Switch (Manual/Motorized), ATS Controller, Air-Circuit Breaker Molded-Case Circuit Breaker, Post Insulator & Capacitance Divider, Terminating Kit (Outdoor/Indoor) Panel Fan & Filter Dehumidifier Space Heater, Heat Shrinkable Tubes, Cam Switch & Test Terminals Services Offered: Design, Supply & Install power plant control and protection. Design, Supply and Install of substation electrical equipment. Supply and Install of low, medium & high voltage switchgears. All types o electrical equipment preventive maintenance services. All types of electrical testing services, especially protective relays. Commissioning of power plants and substations. Perform power quality analysis and monitoring, surge analysis & transient analysis. Troubleshoot of all electrical equipment.', 0, '2nd Floor No. 265 Unit Q Cortes Blg., cor., Sct. Fernandez and Tomas Morato Sts., Brgy. Laging Hanada, Quezon City, Philippines, 1103', '(02) 9986413/ 4132732', '', '(02) 373453/ 3735336/ 3747557', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(633, 'Avesco Marketing Corporation', 'Products; Lighting Products: Commercial Lighting, Industrial Lighting, Explosion Proof Lighting; Industrial Products: Switchgear and Automation, Electric and Motor System Drive, Air Moving Equipment, Industrial Pump; Electronics Products: Test & Measuring Instrument, Radio Communication Product,Telephone & Intercom Equipment, Cables & Component; Electrical Products: Transmission and Distribution Equipment, Poleline Materials, Tools and Safety Equipment; Audio Products: Home Theater System, Home Hi-Fi system, Hi-res Network Streaming Amplifiers, Portable Desktop Audio, Keyboards and Digital Pianos, Professional lAudio; Auxiliary Products: Audio and Video Intercom and Integrated Security System, Public Address/ Background Music System, Fire Detection and Alarm System, Access Control, Structured Cabling System, Wired and Wireless Burglar, Lighting and Dimming Control', 0, '810 Aurora Blvd., cor., Yale St., Cubao, Quezon City', '(02) 912-8881 to 99', '', '(02) 912-2353 / 912-2999', '', 'cash purchases', '', '', 'Avesco carries ABB, Panasonic, Crouse-Hinds, Theben, Watt Drive, Himel, KillArk, Yahagi, Toshiba, Shihlin Electric, Spectra, Klaxon, Hitachi, Stac, RTR, Ide, Ebara, VoltPlus, Philips, Phoenix, Fluke  industrial and electrical products.', 'Active', '0.00', 1, ''),
(634, 'KC Industrial Corporation', 'Hyundai Electric HG-Series', 0, '#82 Coedillera St., Corner Quezon Avenue, Quezon City', '781-0071, 781-0102 to 12', '', '711-5015, 711-5115, 711-3110', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(635, 'GE Industrial Solutions', 'Products: Q-Line Miniature Circuit Breakers, Miniature Circuit Breaker (MCB), Moulded Case Circuit Breakers (MCCB), Air Circuit Breakers (ACB), Vacuum Circuit Breaker (VCB), Low-Voltage Switchgear, Medium-Voltage Switchgear, Busway, Single-Phase Pole-Type Transformers, Cast Coil Transformer  Services: Construction, Telecommunications, Data Centers, Oil and Gas, Heavy Industry, Renewable, Transmission and Distribution', 0, '', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(636, 'Integrated Power & Control Provider, Inc. (Ipower)', 'Products: Woodward- Governors, Actuators, Engine Controllers and Power Management Gas and Steam Turbine Products (Retrofit), L & S Hydroelectric Products & Services (Retrofit), Generator Exciters, AVR Meterings, Protective Relays, Synchroizers, ATS, ABB UNITROL 1020 AVR, ABB UNITROL 1010 AVR, ABB UNITROL 1000-15 AVR, ABB UNITROL 6080 Static Exciter, MEGGITT Sensing System; Turbine Monitoring, Conditioning & Protection System, IEC Power Transformer, Inverter, Diesel Geenrating Set, Engine Parts, Filetrs, Accessories, Preventive Maintenance. Services: Servicing, Maintenance, Repair, Overhaul & Replacement of Woodward Governors and Diesel Engine, Retrofit/ Upgrade of Governors, Exciters and Switchboard for Diesel Engines, Steam, Gas & Hydro Turbines, Integration of Controls to Synchronizing Switchgear, Preventive Maintenance Programs for Diesel Gensets, On-site Installation and Field Services for Generator-Prime Mover Controls, Woodward Governor & Actuator service facility', 0, '2A 2F  8070 Tanguile St., cor., Estrella Ave., San Antonio Village, Makati City', '8992018; 8990904', '', '8983957 loc. 103', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(637, 'Dranetz', 'Products: Dranetz HDPQ Xplorer-400, Dranetz HDPQ Xplorer, Dranetz HDPQ Guide, Dranetz HDPQ Visa,', 0, '1000 New Durham Road Edison, New Jersey 08817', '+1.732.287.3680', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(638, 'Gossen MetraWatt USA', 'Products: Appliance testers; SecuTest SIII+ / Medical Electrical Device testers; SecuTest SIII+, SecuLife ST, SecuLife ST HV /  Earth Testers; Geohm C / Low Ohm Testers; MetraOhm 413 / Insulation testers; Metriso 1000A, Metriso 5000A, Metriso 5000D, Metriso 5024 / Light Measuring; MavoLux 5032, MavoMax 60, MavoMonitor, MavoSpot / Machinery testers; MetraMachine, Profitest 204 / Installation Testers; Profitest Master MXTRA / Multimeters/Special Function Testers; MetraCal MC, MetraHit 271, MetraHit 27AS, MetraHit 27M, MetraHit Energy, MetraHit ISO, MetraPort 40S', 0, '', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(639, 'Dranetz', 'Products: Dranetz HDPQ Xplorer-400, Dranetz HDPQ Xplorer, Dranetz HDPQ Guide, Dranetz HDPQ Visa,', 0, '1000 New Durham Road Edison, New Jersey 08817', '+1.732.287.3680', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(640, 'LinkWell Electric', 'Products: Heater/Thermosta/Hygrostat; Panel Heater W/ Fan, Type: HVL031, Thermostat for Heating and Cooling Type: KTO 011 (RED), KTS 011 (BLUE), Dehumidifier Type: LKHP20, Thermostat (Dual Control, Rittal) Type: JWT6011, Electronic Hygrostat, Mechanical Hygrostat / Fan and Filter; FKL6621 model, FKL6622 model, FKL6623 model', 0, '', '', '', '', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(641, 'Delta Lighting', 'Products: LED Bulbs / LED MR16 Spotlights / Linear LED Fixture / LED Lamp Tubes / LED Fluorescent Fixtures / LED PAR Lamps / LED Filament Candle/Bulbs /  Decorative LED / LED Panel / LED AR111 Spotlight / LED Super Slim Downlights (Recessed mount type/surface mount type) LED Ceiling Downlights / LED Corn Bulb / IP65 LED Waterproof Integrated Fixtures / Dome LED Light / Diffuser Fixture / LED Wall Lamp / Garden Lamp / LED Linkable Fixture / MR16 Recess Spotlight Aluminum Housing / AR111 Recess Spotlight Aluminum Housing / PAR30 Aluminum Housing / LED Tube Fixture / LED Panel / Grid Fixture LED Panel (Back Lighting) / Electrical and Wiring Devices / Panel box / energy Saving Lamps / Box Type Fixtures / Industrial Type Fixtures / Recessed Grid Fixtures / Straight Fluorescent Lamp Tubes /  Electronic Ballast / Electromagnetic Ballast / Transformers / Electronic Fixtures / IP65 Waterproof Fixtures / Surface Mounted Grid Fixtures / Circular Lamp Tubes / Starters / CFL E27 Streetlight /  LED Circular / LED Ceiling Fixture / Emergency Ceiling Fixture with built-in battery / LED Floodlights (SMD Modular Series, COB Modular Series) / UFO High Bay / LED Floodlights (Slim type Series, Basic Series, Classique Series) / LED Streetlights (UFO Series, Classique Series) / LED High Bay(Cone Series, Unique Series) / Solar Power System / Solar Powered Pumping System / Solar LED Streetlight / Integrated Solar Streetlight', 0, 'Unit 1104, Dasma Corporate Center, 321 Dasmari?as St., Binondo, Metro Manila 1006 Philippines', '+63 0 2446209; 2411123', '', '+63 2 2411225', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(642, 'CRE Technology', 'Paralleling Solutions; Gensys Compact Mains, RDM 3.0 Gensys 2.0 Core, Gensys Compact Prime, Gensys 2.0, Unigen 2.0 Range, BSD 2.0, Gensys 2.0 LT, Master 2.0, RDM 2.0 7 Gensys 2.0 Core, CRE Config, Easy PLC, Demonstration Suitecase / Battery Charges; BP+Range from 3A to 10A, Compact Series 3A & 5A, BPRB Range from 5A to 20A, BP Range from 10A to 40A', 0, '130 allee Charles-Victor Naudin - Les templiers - Sophia Antipolis 06410 BIOT / FRANCE', '+33 (0) 492 38 86 82', '', '+33 (0) 492 38 86 83', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(643, 'Elecdes Trading & Technical Services', 'CRE Products: Generator Solutions Paralleling; Gensys Compact Mains, RDM 3.0 Gensys 2.0 Core, Gensys Compact Prime, Gensys 2.0, Unigen 2.0 Range, BSD 2.0, Gensys 2.0 LT, Master 2.0, RDM 2.0 & Gensys 2.0 Core, CRE Config / Easy PLC / Demonstration Suitecase-- Battery Charges full range: BP+Range from 3A to 10A, Compact Series 3A & 5A, BPRB Range from 5A to 20A, BP Range from 10A to 40A', 0, 'Unit 2, # 14 Margarita Romualdez Street BF Resort Village, Talon 2 Las Pi?as City, Philippines 1742', '+63 2 668 0860, +63 2 736 1529, +63 917 8477901', '', '+63 2 799 0128', '', 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(644, 'Alternative Power Solutions Inc.', 'Services: Installation /  Commissioning / Testing: Liquid Filled Transformers, Cast Resin / Dry Type Transformers, Switchgear and Switchboard Assemblies, Busway System, Low and Medium Voltage Cables, Motor Control Centers', 0, 'Partoza Compound South Drive St., San Antonio, San Pedro, Laguna', '(63 2) 519-0304 / Mobile #: 0917-8502797', '', '(63 2) 519-5512', '', 'cash purchases', 'Contractor', 'Jennifer G. De Castro', '', 'Active', '0.00', 1, ''),
(645, 'Meiji Electric Philippines, Inc.', 'GFCI/ Panelboards / Wiring Devices / LVSG / AVR / Transformer / Extension', 0, 'No. 1 Mabolo St., New Manila Quezon City, Philippines', '(63- 2) 448-7423 / 414-4012 / (63- 2) 727-5790 / 413-6636', '', '(63-2) 410-3270', '', 'cash purchases', 'Contractor', 'Larry Maquiling', '', 'Active', '0.00', 1, ''),
(646, 'SG Kairos Mechanical Sales and Services Inc.', 'Products: Valves, Bolts, Flanges, O-rings, Seals, Bearing, Hydraulic Hose, Flexible Hose, Industrial Hose, Braided Hose, Hose Clamps & Fittings, Insulation Cloth, ropes and tapes, Rubber Gasket Sheet (Viton, nitrile, neoprene, etc.), Engineering Plastics (sheets, rod, tube, etc.), Consumables items ( welding rods etc.), Tools and Safety Products, Adhesive and Sealants, McMaster and Grainger Items, Filter Fabrics (Air Filter-Disposable, washable), Dust Collector filter bags-- Marine Anode: Allaloy and Zincalloy Hull and tank Anodes / OffShore Anode: Platform Anodes, Bracelet Anodes, Bolt & Nuts, Consumables, Shackles, Slings, Flanges; Services: Air conditioning and Ducting, Machining and Fabrication and other services related to mechanical works', 0, '41 Bogota St., Vista Verde North Kaybiga, Caloocan City', '(02) 3304192; 7344706/ Mobile #: 0906-303-1735; 0927-297-4800', '', '(02) 3324027', '', 'cash purchases', 'Distributor', 'Ms. Mai Angel Cruz', '', 'Active', '0.00', 1, ''),
(647, 'Samwon Transformer', 'Phase Power Substation Transformer, Pole Mounted, Phase Pad Mounted Transformer, Phase Distribution Transformer', 0, '738, 3.1manse--ro, paltan--myeon, Hwaseong--si, Gyeonggi--do, Korea', '82-31-354-7530', '', '82-31-354-7531', '', 'cash purchases', 'Distributor, Supplier', '', '', 'Active', '0.00', 1, ''),
(648, 'BMJE Marketing and Electrical Services Incorporated', 'Airbreaks, Switches, Sub Station Design, Load Break Switches, Installation of Transmission, Phase over phase, Power Fuse Assembly', 0, 'Blk. 209 lot 32 Labayane Street, North Fairview, Quezon City, Phillipines, 1121', '411-8431, 372-6065, 352-1132', '', '621-9060', '', 'cash purchases', 'Contractors-Electrical', '', '', 'Active', '0.00', 1, ''),
(649, 'PowerPro Protection Supply Inc.', 'General Purpose & Specialty Fuses / Fuse-Gears / Switchgears / Lightning & Surge Protection Devices / Circuit Breakers & Switches / Industrial-grade UPS Systems', 0, 'TECO Industrial Park Ninoy Aquino Highway, Barangay Bundagul, Mabalacat, Pampanga', '+63 2 506 4547 / 577-1290/ Mobile #: +63 917 300 7243', '', '', '', 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(650, 'Chint Power Transmission & Distribution', 'Cast Resin CT (Outdoor Current Transformer, Indoor Current Transformer) / Cast Resin Voltage (Indoor Voltage Transformer, Outdoor Voltage Transformer) / SF6 VT (Outdoor Current Transformer, Indoor Voltage Transformer) / Cut-out Fuse Series (Fitted into HV Side Transformer) / Surge Arrester Series (0.22kV to 500kV Rated Voltage) / Polymeric Post Insulator (Insulator)', 0, '', '', '', '', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(651, 'TOZG (Zhejiang Tongtuo Electrical Co., Ltd.,)', 'Electric Products: Meter Mounting Equipment, Meter Base, Ansi Socket Kwh Meter, IEC Single Phase Three Phase Electrical Meter, Din Rail Energy Meter, Power Meter and Split Core Current Transformer', 0, 'Yishan Industrial Park, Liushi, Yueqing, Zhejiang, China', '0086-577-62893983 / Mobile #/WatsApp: 0086 137 5787 6239', '', '0086-577-62893982', '', 'cash purchases', 'Manufacturer', 'Dewey Wang (Sales Manager)', '', 'Active', '0.00', 1, ''),
(652, 'Mega Link International Sales and Services Inc.', 'Industrial', 0, '004 A. Cantillon St., Maysan, Valenzuela City', '292-6547/ 293-0547 / Mobile Numbers: 0917-846-9671 / 0922-816-4481', '', '292-4258', '', 'cash purchases', 'Contractor', 'Jannel D. Villanueva (Operation Manager)', '', 'Active', '0.00', 1, ''),
(653, 'Prime Power Energie System, Inc.', 'Products: Electrical, Mechanical, Technical Services', 0, 'Unit 1903, 19/F Atlanta Center, Annapolis St., Greenhills, San Juan City, Philippines, 1502', '(02) 584 3398 / Mobile #: (+63) 917 168 6190', '', '902) 706 6148', '', 'cash purchases', 'Supplier & Contractor', 'Orla V. Dadis ( Account Manager)', '', 'Active', '0.00', 1, ''),
(654, 'Nisko Telematics Systems, Ltd.', 'WiFi metering registers /  AMI Solution for data collection with Fixed, Walk-By, Drive-By or GSM Methods / Management & Control with multi-application system / Back Office Management Software AMI System', 0, '', '', '', '', '', 'cash purchases', '', '', 'Elecdes carries Nisko services', 'Active', '0.00', 1, ''),
(655, 'Westco Electrical & Equipment Corp.', 'Industrial', 0, '8F, 68 Kalayaan VCP Building , 68 Avenue, Teacher''s Village West, Quezon City', '+63 2 365 0068 ext. 8102 / Mobile #: +63 920 902 1393', '', '', '', 'cash purchases', 'Electrical/Electronic Manufacturing', 'Jek V. Pe?alosa (Vice President, Sales and Marketing)', '', 'Active', '0.00', 1, ''),
(656, 'Doble Engineering Company', 'Products: Doble Off-line Testing & Assessment M5400 (Sweep Frequency Analyzer) / Doble Protection Testing F6150sv (Power System Simulator) / Doble Protaction Testing F6150e (Power System Simulator) / Doble Off-line Testing & Assessment M1700 (High-Voltage Asset Analyzer)', 0, '85 Walnut Street, Watertown, MA 02472 USA', '+1 617 926 4900', '', '+1 617 926 0528', '', 'cash purchases', 'Electrical/electronic Manufacturing', '', 'Doble Engineering Company is in partnership with Westco Electrical & Equipment Corp.', 'Active', '0.00', 1, ''),
(657, 'Megger', 'Electrical Test & Measurement equipment', 0, 'Wrkshop No. 8, 26/F, Mega Trade Centre, 1-6 Mei Wan St., Tsuen Wan, NT, Hong Kong', '+852 2618 9964', '', '+852 2618 9001', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(658, 'ADAMAS International Trading', 'Electricity/Electronics Equipment & Supplies', 0, '5 J. de Mesa Street, Little Baguio San Juan, Metro Manila, Philippines', '+63(2)7214924, 7265543, 7274288', '', '+62(2)7214924', '', 'cash purchases', 'Distributor, Wholesaler', '', '', 'Active', '0.00', 1, ''),
(659, 'Schneider Electric', 'PowerLogic ION9000 series / Communication Architecture: Com''X 210, Com''X 510 24 V DC+PoE, FDM 128, FDM 121, IFE Switchboard server, IFE Interface, EIFE embedded interface, IFM, I/O, Acti 9 Smartlink SI B Ethernet wireless, Acti 9 Smartlink Modbus slave / Homeline Circuit Breakers', 0, 'Taguig Office: 24th Floor, Fort Legend Tower Block 71 Lot 3 3rd Avenue cor. 31st Street, Fort Bonifacio Global City, Taguig City', '+63 (02) 976 9999', '', '+63 (02) 976 9961', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(660, 'S-Power Corporation', 'Electrical apparatus and equipment wiring supplies', 0, '49 St. Domingo St., Brgy, Sto. Domingo, Quezon City', '230-3275 / Mobile #: (0915) 479.66.07', '', '', '', 'cash purchases', 'Distributor, Wholesaler', 'Dennis Ganancial (Sales Representative)', '', 'Active', '0.00', 1, '');
INSERT INTO `vendor_head` (`vendor_id`, `vendor_name`, `product_services`, `category_id`, `address`, `phone_number`, `mobile_number`, `fax_number`, `email`, `terms`, `type`, `contact_person`, `notes`, `status`, `ewt`, `vat`, `tin`) VALUES
(661, 'WEICON', 'Cyanoacrylate Adhesives of rubber and plastics (VA 20, VA 8312) / WEICON Contact Filler', 0, 'WEICON South East Asia Pte., Ltd., 7 Soon Lee Street, # 01-11 ISPACE, Singapore 627608', '(+65) 6710 7671', '', '(+65) 6710 7672', '', 'cash purchases', 'Manufacturer', 'Kho Zhi Gang/ Kho Zhi Qiang (Managing Directors)', '', 'Active', '0.00', 1, ''),
(662, 'Permatex', 'Gasket Makers & Sealants (Thermostat Housing, Valve Cover, Transmission Case Halves, Valve Cover Gasket, Transmission Pan, Differential, Exhaust Manifold Gasket, Water Pump Gasket, Oil Pan, Water Pump, Metal Head Gaskets) / Thread Treatments', 0, 'Hartford Square North (5F) 10 Columbus Boulevard Hartford, Connecticut 06106, USA', '1-87 Permatex (1-877-376-2839), Select Option #2 for Technical Assistance / 860-543-7550', '', '860-543-6997', '', 'cash purchases', 'Manufacturer', 'Greg Mostoller (VP Business Development)', '', 'Active', '0.00', 1, ''),
(663, 'Simplex Industrial Corporation', 'OilSeal / O-ring / Gasket / Packing / Coupling / Mechanical Shaft Seal / Adhesive & Sealant / Engineering Plastic / Hydraulic Pump / Parts Rubber Fabrication / Hydraulic / Industrial Hose; Also Available: Forklift Unit / Parts / Service / Pallet Jack / Lifting Equipments /  Manlift / Mobile Lift', 0, '1053-1057 Simplex Building Benavidez, Binondo, Manila', '244-1983 / 244-1942', '', '', '', 'cash purchases', 'Distributor', 'Mr. Mark Anthony Prieto', '', 'Active', '0.00', 1, ''),
(664, 'ARM-G International Logistics Inc.', 'Services Offered: International Forwarding /  Customs Brokerage /  Domestic Forwarding (Mode of Service: Door to Door, Port to Door, Door to Port, Port to Port) /  Crane and Heavy Equipment Rental', 0, 'Manial Office: Unit 210 The Manila Residences Tower 1, 2320 Taft Ave., Malate, Manila', '+63 2 516-0080', '', '+63 2 708-4531', '', 'cash purchases', 'Forwarder', '', '', 'Active', '0.00', 1, ''),
(665, 'Power Steel', 'Products: Deformed Bar / Angle Bar / Wide Flange / Tubulars / GI/BI Pipes / Channel Bar / Square Bar  / Flat Bar / Round Bar / MS Plate/Sheet / C/Z Purlins /  Sheet Pile / Hardware Items (Nails, Paints, Sand & Gravel, And hard to find construction materials)', 0, 'Manila Branch: 1714 Maria Clara St., Sampaloc, Manila', '(02) 731-0000 / Mobile #: 0932-8887777', '', '', '', 'cash purchases', 'Importer, Wholesaler, Retailer, Supplier', '', '', 'Active', '0.00', 1, ''),
(666, 'Nayon Kontrol Systems (NKS)', 'Products: Substation Gateways, Remote Terminal Units, SCADA Software, Protection Relays, Global Positioning Systems, Weather Stations, Network Security / Services: Digital Automation Systems, Real-Time Applications, RTU-SCADA Solutions for power plants and industrial consumers, Hardware-based cyber protection up to Common Criteria EAL 7+', 0, 'Main Office: NKS Building  No. 4 Illinois St., Brgy. Silangan, District III, Cubao, Quezon City, Philippines, 1109', '+63 2 913 1347 loc. 203 / Mobile numbers: +63 916-214-0017 / +63 942-650-8502', '', '+63 2 913 1347 loc. 206', '', 'cash purchases', 'Distributor', 'Andrei John Cantilleps (Sales Manager)', '', 'Active', '0.00', 1, ''),
(667, 'Phenix Technologies', 'Product Lines: Resonant Test Systems / AC and DC Dielectrical High Potential (HIPOT) Test Systems / High Current Test Systems / Transformer Test Systems / Motor Test Systems /  Electrical Protective Rubber Goods Test Systems / Cable Testing Accessories / Voltage Regulators/Power Supplies / Portable Test Equipment', 0, '75 Speicher Drive Accident, MD 21520 USA', '+1-301-746-8118', '', '+1-301-895-5570', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(668, 'Delta Grid Power System Corporation', 'Products: Power Transformer, Distribution Transformer, Pad Mounted Transformer, Dry Type Transformer, Transformer Component, Devices and Accessories, Control and Instrumentation Cables / Technical Services: Substation Predictive or Condition Based Maintenance (CBM), Substation  Equipment Installation, Testing & Commissioning, Technical Seminars, All Kinds of Transformer Services, Dissolved Gas Analysis / Engineering Services: Transformer Services, Power Cable Services,  Voltage Regulation, Short Circuit and Coordination Studies, Arch Flash Hazard Analysis, Load Surveys, Power Factor Studies, One-Line Diagram Development', 0, 'Amon Trading Comp. E. Rodriguez Jr. Ave., cor. Corporal Cruz St., Bagong Ilog, Pasig City', '+632-9979160; 532-7897', '', '+632-9979160', '', 'cash purchases', 'Contractor, Manufacturer''s Representative', '', '', 'Active', '0.00', 1, ''),
(669, 'Qualitrol', 'Products: Total Enterprises Condition Monitoring Software (Qualitrol Integrated Monitoring Server) / Total Transformer Condition Monitoring (Qualitrol XPRD Extra Large Pressure Relief Device, Qualitrol QCM-T-BM On-Line Bushing Monitor, Qualitrol 900/910 Rapid Pressure Rise Relays (RPRR), Qualitrol T/Guard 408 and 408XT Fiber Optic Temperature Monitor, Qualitrol STB-100 Main Tank Smart Transformer Breather, Qualitrol QTMS Transformer Monitoring System, Qualitrol 609 PDM Transformer and GIS Partial Discharge Monitor, Serveron TM8 Multi Gas On-Line Dissolved Gas Monitor) /  Total On-Line DGA Monitoring (3 Gas Dissolved Gas Analysis TM3, 8 Gas Dissolved Gas Analysis TM8, Single Dissolved Gas Analysis TM1) / Total GIS Condition Monitoring (SF6 Gas Density Monitors AKM 38, Portable Partial Discharge Monitor PPDM, Online SF6 Gas Density Monitor iSGM, Partial Discharge Monitor PDMG-RH, Mini Partial Discharge Monitor PDM Mini) / Total Electrical Power System Condition Monitoring (Phasor Measurement Unit Q-PMU, Class A Power Quality Monitor INFORMA, Multifunction Power System Monitor IDM+, Extreme Digital Fault Recorder BEN 6000, Travelling Wave Fault Locator TWS FL-8) / Total Turbine Generator Condition Monitoring (EVT racII Continuous Online Stator End-winding Vibration Monitoring, Bus TracII Continuous  Online Partial Discharge Monitoring, GuardII Continuous Online Monitor of Multiple Sensor Technologies, Stator Wedge Analyzer (SWA) Offline Testing Instrument, PDTech DeltaMaxx Offline Periodic Partial Discharge Detector, FluxTracII Continuous Online Rotor Magnetic Monitor) / Total Hydro-Generator Condition Monitoring (On-Line Partial Discharge Hydro TracII, On-Line Integrated Monitoring GuardII, On-Line Air Gap Monitoring AG TracII, On-Line Flux Monitoring Flux TracII, Off-Line Stator Core Testing EL CID, Off-Line Periodic  Partial Discharge Delta Maxx, Off-Line Stator Wedge Testing SWA) / Total Motor Condition Monitoring (On_line Partial Discharge PD TracII, Off-Line Stator Wedge Testing SWA, Off-Line Stator Core Testing EL CID, On-Line Stator Endwinding Vibration Monitoring EVAT TracII, Off-Line Periodic Partial Discharge DeltaMaxx, On-Line Motor Rotor Monitoring MDSP3)', 0, '1385 Fairport Road, Fairport, New York 14450, United States of America', '+1 585 643 3717', '', '', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(670, 'Presidium.PH Corporation', 'Fluke Industrial and Calibration tools', 0, '6/F Cyber One Bldg. 11 Eastwood Ave., Eastwood City, Cyberpark, Bagumbayan, Quezon City, Phillipines 1110', '+63 2 464 9339 / Mobile #: +63 947 596 4802', '', '', '', 'cash purchases', 'Distributor', 'Mark Renzel Tamayo', '', 'Active', '0.00', 1, ''),
(671, 'Presidium.PH Corporation', 'Fluke Instruments: Digital Multimeter, Bench Multimeter, Clamp Meters, Battery Testers, Electrical Testers, Laser Distance Meter, Infrared Thermometers, Infrared Cameras, Indoor Air Quality, Insulation Resistance Testers, Earth Ground Testers, Multifunction Installation Testers, Portable Appliance Testers, Power Quality Analyzers, Scopemeters,  Process Calibration Tools, Vibration, Laser Alignment, Radiation, Intrinsically Safe, Fluke Kits, Accessories', 0, '6/F Cyber One Bldg. 11 Eastwood Ave., Eastwood City, Cyberpark, Bagumbayan, Quezon City, Phillipines 1110', '+63 2 464 9339 / Mobile #: +63 947 596 4802', '', '', '', 'cash purchases', 'Distributor', 'Mark Renzel Tamayo', '', 'Active', '0.00', 1, ''),
(672, 'Manila eTech Corporation', 'Industrial Ethernet Solutions (Industrial Ethernet Switches, Industrial Wireless LAN, Industrial Cellular Solutions, Specialized by Market, Industrial Secure Routers, Industrial Ethernet Gateways, Network Management, Media Converters) / Industrial Computing (Specialized by Market, Wireless Computers; Compact/Fanless Computers, Wide Temperature Computers, Display Computers, RCORE Software / Serial Connectivity (Serial Device Servers, Embedded Networking, Fieldbus Solutions, Multiport Serial Boards, Industrial USB Converters/Hubs, Serial Media Converters, Surge Protection) / IP Surveillance (IP Cameras, Video Servers, Industrial Network Video Recorder, IP Surveillance Software, Video Accessories) / Remote Automation ( Modular RTU Controllers, Micro RTU Controllers, Railway Remote I/O, Ethernet Remote I/O) / Accessories (I/O Accessories, Ethernet SFP Modules, Automatic Backup Configurators, Fiber Bypass Unit, Wireless Accessories, DIN Rail Power Supplies, PoE Splitters & Injectors, Computing Hardware Accessories, Power Accessories, Video Accessories, Connection Terminals & Cables)', 0, 'Unit 304 3/F No. 4 Illinois St., Cubao, Quezon City', '(+632) 364.17.68', '', '(+632) 364.17.68', '', 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(673, 'Grand Haveluck Electrical Co., Inc.', 'Larsen & Toubro: Panel Boards, Capacitor, Banks, Swtichgears, Control Panels, Motor Control Centers, Motor Starters, Transfer Switches, Meter Centers / Standard Components: ACB, MCCB, MPCB, Overload Relays, MNX Contractors, Timer Relays, Changeover Switches, etc.', 0, 'Main Office: 514 Ayala Blvd., Ermita, Manila / Assembly Plant: Lot 1 Blk. 3, Star Ave., cor. Interstar St., LIIP, Mamplasan, Bi?an, Laguna', '584-4810/ 584-4890 / Mobile Numbers: 0916-660-1397/ 0908-303-9143', '', '584-4838', '', 'cash purchases', 'Distributor', 'Geneva Alim (Electrical Design and Estimate Engineer)', '', 'Active', '0.00', 1, ''),
(674, 'Larsen & Toubro', 'Power Distribution and Protection / Power Control / Automation Solutions / Power Quality Solutions / Power Monitoring / Panel Accessories / Final Distribution Products / Agricultural Electrical Products / Application Software', 0, 'Larsen and Tuobro Limited, Electrical Standards Products, Powai Campus, Mumbai 400 072, INDIA', '+91-22-6705 1223', '', '+91-22-6705 1630', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(675, 'DAIKAI Engineering Pte., Ltd.', 'Services: Sales of Marine/Land equipments and spare parts / Installation of Marine equipments and Diesel power plant /  Reconditioning, overhauling and repairs of marine/industrial engines and equipments, Installation ,commissioning, repair and trouble-shooting of marine and industrial engines equipments such as turbo-chargers, deck machinery, pumps and air compressors / Products: Daihatsu Engine 6DK-20 / Daihatsu Engine 6DE-23 / Daihatsu Engine 6DC-32(e)', 0, 'Philippines: Daikai Philippines Corporation: 7793 St., Paul Road, San Antonio Village, Makati City, Philippines, Zip Code : 1203', '+63-2-814-0369', '', '+63-2-817-1285', '', 'cash purchases', 'Contractor / Supplier', '', '', 'Active', '0.00', 1, ''),
(676, 'Buckingham Manufacturing Co., Inc.', 'Semi-Float Body Belt (weight 5 lbs., 19022-23 Model) / H''Style Full Body Harness (6381700 Harness) / Buckyard / Convention Positioning / 7090 Skinning Knife / Positioning Strap / Contoured and Offset Steel Pole Climbers (SB94059A Offset wi Foot Straps Model 21391, Leg Straps Model 239 and Climber Pads Model 3122)', 0, 'P.O. Box 1690, Binghamton, NY 13904', 'Online Orders: 607-773-2264', '', '', '', 'cash purchases', 'Manufacturer', '', 'Celeasco was the Distributor of Buckingham products in the Philippines', 'Active', '0.00', 1, ''),
(677, 'Critter Guard', 'LineGuard (CG LineGuard Roller, CG LineGuard Wheel, CG LineGuard Clamp) / PoleGuard (CG PoleGuard Plate, CG PoleGuard Roller', 0, '1105 Lakeview, Columbia, MO 65201', '573-256-2110', '', '', '', 'cash purchases', 'Manufacturer', '', 'Celeasco was the Distributor of Crtitter Guard products in the Philippines', 'Active', '0.00', 1, ''),
(678, 'EMG Germany', 'Short Circuit Indicator Type FLA3', 0, '', '', '', '', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 0, ''),
(679, 'WERNER Podium', 'Werner Podium 300 lbs. Type IA Duty Rating (Work Facing Any Direction, Extended Guard Rail, Extra-Large Platform, EDGE 360 Integrated rail shield, EDGE bracing, over sized foot pad) / Accessories: (AC27-P Lock-in Paint Cup, AC50-JB-3 Lock-in Job Bucket, AC52-UB Lock-in Utility Bucket, AC54-JC Lock-in Job Caddy) / D6200-3 Series: 300 lbs. Type IA Duty Rating', 0, 'WERNER CO. CORPORATE HEADQUARTERS: 93 Werner Rd. Greenville, PA 16125-9499', '888-523-3370', '', '(724) 588-0315', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(680, 'Dalian Insulator Group Co., Ltd.', 'AC Disc Porcelain Insulator (Fog Normal Type Porcelain Insulator, Double-Shed Suspension Porcelain Insulator, Tri-Shed Suspension Porcelain Insulator, Aerodynamic Suspension Porcelain Insulator) / DC Disc Suspension Porcelain Insulator (Fog Type DC Suspension Porcelain Insulator, Double-Shed DC Suspension Porcelain Insulator, Tri-Shed DC Suspension Porcelain Insulator, Aerodynamic DC Suspension Porcelain Insulator) / Composite Insulators (AC Composite Suspension an Tensions Insulators, DC Long Rod Suspension Composite Insulators, Long Rod Suspension Composite Insulators for Overhead Contact System of Electrified Railways, Composite Post Insulators for Overhead Contact System of Electrified Railways, Composite Line Post Insulators for A.C. Overhead lines, AC Composite Station Post Insulators, DC Composite Station Post Insulators, AC Composite Hollow Insulators) / Other Types of Porcelain Insulators (AC High Strength Porcelain Post Insulator, Dc High Strength Porcelain Post Insulator, High Voltage Porcelain Hollow Insulator) / Hardware Fittings', 0, '', '', '', '', '', 'cash purchases', '', '', 'SMH Power Trading & Services was the Authorized Agent of Dalian Insulator Group Co., Ltd.', 'Active', '0.00', 1, ''),
(681, 'Preformed Line Products (PLP)', 'Galvanized Strand / Raptor Protector for Trunnion Mount Insulators (RPC-0820 Black, RPC 0830 Black, Round eye Lock Pins -RPP-084) / Guy Marker (Loop Lock Pin-LLP, Cable Tie Attachment- CT, Stainless Steel Clamp-SC, Integral Helical Pigtail- PT) / Line Protection Insulator Cover (RPC-081) / Armor Rods / Guy Grip / Semi-Conductive Plastic Line Tie/Top Tie 35KV Rated / Semi-Conductive Plastic Tangent Side Tie 35KV Rated / Semi-Conductive Plastic Double Line Tie/Top Tie 35KV Rated / Semi-Conductive Plastic Double Angle Side Tie 35KV Rated', 0, 'World Headquarters: 660 Beta Drive, Cleveland, Ohio 44143; Mailing Address: P.O. Box 91129, Cleveland, Ohio 44101', '440.461.5200', '', '440.442.8816', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(682, 'PUPI', 'PUPI Fiber Glass: Up to 6 time stronger, Up to half the weight and easy to install, Three levels of UV protection, Excellent dielectric properties, Environmentally safe materials, Impervious to insects & woodpeckers, Free from splinters, 60+ year service life in all climates', 0, '', '', '', '', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(683, 'Salisbury by Honeywell', 'Electriflex Gloves with Flex Technology / Insulating Blankets Slotted Style / 10-4 / GB116 / Bell Cuff / ILP6S / Salisbury AS1000HAT w/ Brim Hard Hat / Salisbury AFOOD15 Arc Flash Hoods (balaclava) / Voltage Detector / A Way Connector', 0, '', '', '', '', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(684, 'WIKA Instruments Philippines, Inc.', 'Pressure / Temperature / Level  /Flow / Valve / Calibration Technology / Instrumentation products ', 0, 'Ground Floor, Suite A, Rose Industries Bldg., #11 Pioneer St., Brgy., Kapitolyo, Pasig City, Philippines, 1600', '+632 2341270 / 234 9991 to 92 / 397 8541 / 500 5303 / Mobile numbers: +63 919 912 3948 / +63 917 545 9552', '', '+632 6549662', '', 'cash purchases', 'Manufacturer', 'Emmanuel Ocat (Application Sales Engineer)', '', 'Active', '0.00', 1, ''),
(685, 'Lock N Metal Stitch Corp.', 'Services: Gas and Oil production, Mining, Shipping and Marine, Manufacturing, Historical architectural rehabilitation, Automotive, Industrial, Construction equipment, Energy production / Full Torque products: (Standard Thread Repair Insert Types, Shouldered Type Inserts, Special Application Inserts, Solid & Pre-Drilled Plugs, Tapered Pipe Thread & O-Ring Inserts, Spark Plug Hole Thread Inserts, Drilling & Tapping Alignment Fixtures, Ordering Custom Inserts)', 0, '#15534 Valaro St., Airport Village, Moonwalk, Parañaque City', '801-5949', '', '', '', '30%dp, 70% balance 30 days upon submission of invoice', 'Manufacturer / Contractor', 'Mr. Adan M .Eata', '', 'Active', '0.00', 1, ''),
(686, 'Gorio Pump &Marine Systems Co., Ltd.', 'GHG Series (Main Engine L.O. Pump up to 600m3/h) / GHS Series (Self Priming Bilge Pump up to 400m3/h) / GVS-2S Series (Emergency Fire Pump, G.S. & Fire Pump, High Pressure Pump up to 800m3/h) / GVCSeries (Sea Water Cooling Pump, General Service Pump, Fresh Water Transfer Pump, Ballast Pump up to 600m3/h) / GPP Series (Cargo Stripping Piston Pump up to 400m3/h) / GDWP Series (Main L.O. Pump, Deep Well Discharge Pump up to 800m3/h, GLG Series (L.O. Transfer Pump, F.O. Transfer Pump up to 35m3/h)', 0, '3972-13 Gangdong-dong, Gangseo-gu, Busan, 618-802, Korea', '+82-51-293-6610/20 / Mobile #: +82-10-3853-6581 / Seoul Office: +82-2-938-3748', '', '+82-51-293-6616 / Seoul Office: +82-2-938-5648', '', 'cash purchases', 'Supplier', '', '', 'Active', '0.00', 1, ''),
(687, 'NYV YNV Co., Ltd.', 'Safety Relief Valve / Steam Trap / Globe & Angle Valve / Pressure Reducing & Regulating Valve / Other Valves', 0, '21, Noksansandan 381-ro 40beon-gil, Gangseo-Gu, Busan, 46755, of Korea', '+82-51-302-3394', '', '+82-51-302-3366', '', 'cash purchases', 'Supplier', '', '', 'Active', '0.00', 1, ''),
(688, 'Wilson Taylor Cathodic Protection Specialists', 'Anodes for Marine and Offshore Applications / Impressed Current (Hullmatic) / Anti-Fouling Systems (Intakematic) / Chlorination System (WTCell)', 0, 'SG Head Office: Wilson Taylor Asia Pacific Pte., Ltd., 1, Jalan Samulun, Singapore 629119', '(65) 6264 0388', '', '(65) 6264 1806', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(689, 'Chauvin Arnoux', 'Multimeters / Testers / Physical Measurements / Testing and Electrical Safety / Power, Energy, Disturbances / Oscilloscopes / Current Measurements / Data Processing Software / Accessories / Environmental Measurements', 0, '190, rue Championnet, 75876 Paris Cedex 18- FRANCE', '+33 1 44 85 44 38', '', '+33 1 46 27 95 59', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(690, 'SMH Power Trading & Services', 'Insulators / Portable Test and Measurement Instruments', 0, 'Unit 3L, Amber Place, 67 Bayani Road, Western Bicutan, Taguig City 1630, Philippines', 'Mobile #: +63 917 700 0271', '', '+63 2 551 2946', '', 'cash purchases', 'Distributor', 'Samuel T. Jerez (General Manager)', '', 'Active', '0.00', 1, ''),
(691, 'Lucy Electric', 'Medium Voltage Ring Main Units / High/Medium Voltage Switch Disconnectors / Automation / Low Voltage Distribution Cabinets / Low Voltage Cut Outs / Energy Services', 0, 'Lucy Electric Ltd. Howland Road, Thame, Oxfordshire, OX9 3UJ, United Kingdom', '+44 1844 267 267 General / +44 1844 267 222 Sales', '', '+44 1844 267 223', '', 'cash purchases', 'Manufacturer / Supplier', '', '', 'Active', '0.00', 1, ''),
(692, 'DongWoo Electric Corp.', 'Outdoor Type Current Transformer DCO-101A / Outdoor Type Voltage Transformer DPO-203N', 0, '', '', '', '', '', 'cash purchases', 'Manufacturer / Distributor', '', '', 'Active', '0.00', 1, ''),
(693, 'Armstrong', 'Food Machinery & Processing Equipment', 0, '', '', '', '', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(694, 'Westrade International Co., Inc.', 'Power / Control / Instrumentation / Data Fiber Optic / Marine Cable / Fire Related Cable / Multi-Core Steel Wire Armoured (SWA) / Power and Control Cables / XLPE / PVC / Insulation for Direct Burial Installation / Low/Medium/High Voltage Cable Termination & In-Line Splicing kits for Single & 3-Cire Cables / Busbar Tubings / Flexible Power and Control Cables / Shielded / Unshielded XLPE / PVC / Hazardous Area Certified (EX) Industrial Waterproof / Dust Tight Lighting Fixtures  for Zone 1, Zone 2 / Class 1, Div. 1 & 2 / Explosion Proof Control Stations / Junction & Distribution Boxes, Flameproof / Enclosures / Heat Tracing Cables / Terminal Lugs / Industrial Lighting Fixtures / Floodlights / Hi-Bay / Lowbay Lighting / Dustproof / Weatherproof Streetlights / Tap / Wedge Connectors / Service Drop Connectors / Stirrups / Grounding Connectors', 0, 'Unit 503 Raffles Corporate Center F. Ortigas Jr. Road, Ortigas Center, Pasig City, 1605, Philippines', '(632) 900-5702; 900-5703; 900-5704 / Mobile #: (0995) 2903862', '', '(632) 9005705', '', 'cash purchases', '', 'Arbie Renz M.Villanueva (Sales Engineer)', '', 'Active', '0.00', 1, ''),
(695, 'Yumex Philippines Corporation', 'Electronic and Plastic products:', 0, 'Plant 1 : Block 7, Lot 7, Phase 2, PEZA Drive, First Cavite Industrial Estate (FCIE) Bo. Langkaan, Dasamri?as, Cavite City, Cavite 4126', 'Cavite Office : +63 46 402 1184 / Makati Office: (02) 257 5275 / Mobile #: +63 915 653 6336', '', '+63 46 402 0896', '', 'cash purchases', 'Manufacturer', 'Reikko Kamio', '', 'Active', '0.00', 1, ''),
(696, 'Optimum Equipment Management & Exchange, Inc.', 'Generator sets / Auxiliary Security Systems / Network Solutions / Data Center Solutions', 0, 'Suite 2508, The Orient Square, F. Ortigas, Jr. Rd., Ortigas Ctr., Pasig City 1605, Philippines', '+632.914.9999 x157 / Mobile #: +63.935.114.3940', '', '+632.914.1122', '', 'cash purchases', 'Distributor', 'Carrel Shane Borja (Sales Representative)', '', 'Active', '0.00', 1, ''),
(697, 'NR Electric Philippines Office', 'electrical', 0, '1408, Raffles Corporate Center, F. Ortigas,  Jr. Rd., Ortigas Center, Pasig City, 1605, Metro Manila', '+63 2 584 1553 / 584 1471 / Mobile #: +63 9156261658 (Philippines) / +86 13776502228 (China)', '', '+63 2 570 9511', '', 'cash purchases', 'Manufacturer', 'Nicholas Chen (Sales Application Manager) / Kevin Guo (Chief Representative Country Manager)', '', 'Active', '0.00', 1, ''),
(698, 'Shanghai Client Diesel Enging Co., Ltd. (SCDC)', 'Auto parts & Accessories /  Machinery & Parts / Generator Sets / Transmission', 0, 'Room B201, 2 Bldg., Allay 439, Jinglian Rd., Minhang District, 201108, Shanghai, China', '+86 21 56800810', '', '+86 21 56809005', '', 'cash purchases', 'Manufacturer, Supplier', '', '', 'Active', '0.00', 1, ''),
(699, 'TaiTech Marine Sales and Services Corporation', 'Product Lines: Pumps / Air Compressors / Electric Motors / Geared Motors / Refrigeration Compressors / Hydraulic Motors / Controllers, Single and Multi-Stage Type / Pneumatic & Electric Hoists / ARC Welding  Machine / Piston & Connecting Rod Assy & Bearing / Cylinder Liner & Cylinder Head Assembles / Plate Heat Ex changers / Turbo Chargers / Purifiers / Marine Services:  Servicing & Overhaul of Two Stroke Diesel Engines / Servicing & Overhaul of All Four Stroke Diesel Engines / Auxiliary & Deck Machineries; Servicing/Overhaul/Repair / Industrial & Power Plants / Marine Equipment Rental', 0, 'Unit 510 JOCFER Building, Commonwealth Avenue, Quezon City, Philippines 1127', '(632) 283-4138 / 861-1657 / 952-9275  / Mobile #: +63 917 667-3871', '', '(632) 287-0632 / 952-9272', '', 'cash purchases', 'Distributor/Builder', 'Trina Alec R. Delos Reyes (Account Manager)', '', 'Active', '0.00', 1, ''),
(700, 'HAIVOL Electrical', 'Fuse Cut-Out Series / Disconnecting Switch Series / Surge Arrester Series / Composite Insulator Series', 0, 'Chongshi Industrial Zone, Panshi, Yueqing, Wenzhou, Zhejiang, China 325603', '0086-577-62836929 / M.B.: 0086 13587716869(whatsapp) 0086-15957720101', '', '0086-577-62836927', '', 'cash purchases', 'Manufacturer', 'Jonson Chai (G. Manager)', '', 'Active', '0.00', 1, ''),
(701, 'Rockwill Group', 'Relay Protection, SCADA System for Distribution and Substation Automation / Power/Distribution Transformer / Step Voltage Regulator / Compact/Padmount Transformer Substation / CSP Transformer / Outdoor Switchgears and breakers / Indoor Switchgears and Breakers / Indoor & Outdoor Current Transformer / Voltage Transformer / Metering Unit / LV Switchgears / Power Supply / Control and Relay / Reactive Power Corrector, etc. /  Low Voltage Metering box / Overhead Line Lightning Arrester / Fuse Cut-out / Insulators / Clamps / Fittings', 0, 'Wengyang Industrial Zone, Yueqing, Zhejiang China', '86 577 27869965 27869969 / Mobile #: 86 13777729072 18668777248', '', '86-577-27869967', '', 'cash purchases', 'Manufacturer', 'Chen Chneg Ming (Engineer/Chairman)', '', 'Active', '0.00', 1, ''),
(702, 'Soluciones De Utilidad Philippines Inc', 'Power Substation Equipments -Transformer (Power, Distribution & Instrument) / Power Circuit Breakers / AVR / Disconnect Switches, Surge / Lighting Arrester / Redoser / Metering / Control / Protection Relays /  Batteries/ HV/MV/LV Type Tested Switchgears  / Circuit Breakers & Contactors / Switchgear Components / Diesel Generators / Motor Controllers / Wires & Cables / KWH Meters / Steel Pole / Transmission and Hardwares / Electro-mechanical products / Instrumentation products / Communication devices / Home Automation / Pumps & Motors / SCADA System / Water Meters', 0, 'Unit 103 G/F Rizalina - Annex Bldg., 1677 Quezon Avenue, Brgy., West Triangle, Quezon City, 1100 Philippines', '+632 374 1706 / Mobile #: +63 926 085 5498; +63 998 973 2933', '', '+632 355 9224', '', 'cash purchases', 'Distributor', 'Elsie A. Tabaco (Sales Engineer)', '', 'Active', '0.00', 1, ''),
(703, 'QuantiServ', 'Reconditioning (reconditioning on exchange and reconditioning of the customer''s own component) / In-Situ Machining / Metal Stitching / Mobile Teams for all Brands / Epoxy Resins / Metal Stitching and Specialized Welding / Dry Docking Support', 0, '', '+1 866 398 2788', '', '', '', 'cash purchases', 'Builder', '', '', 'Active', '0.00', 1, ''),
(704, 'Furukawa Electric Co., Ltd.', 'Telecommunications / Energy / Automobiles / Electronics / Construction and Architecture / New Businesses and Products', 0, 'Marunouchi Nakadori Bldg., 2-3 Marunouchi 2-chrome Chiyoda-ku, Tokyo 100-8322, Japan', '+81-3-3286-3001', '', '+81-3-3286-3919', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(705, 'O & G PCA Industry System Enterprise Corp.', 'Oil & Gas / Power / Cement / Aviation / Food & Beverage / Pharma / Mining', 0, '4th Floor, The Centrale Bldg., Southpoint Comm''l Center, Banay-banay, Cabuyao, City 4025 Philippines', 'Mobile #: ++63 998 794 0417', '', '++63 49 544 7332', '', 'cash purchases', 'Distributor', 'Nino B. Ballatan (Managing Director)', '', 'Active', '0.00', 1, ''),
(706, 'HYTEC Power Inc.', 'Innovative Bolting Solution (Torque, Tension, Washer, Gasket, Bolts & Nuts) / Post Tensioning & Hydraulic Jack / CNC Lathe & Mill, Welding & Cutting / Corrosion Protection (TM 198) (Organic Polymelt Resin Coating)', 0, '#2 T. Cruz Street, Cruzville, Zabarte Road, Novaliches, Quezon City, Metro Manila, Philippines 1123', '(+63 2) 417-5435/4333 . 419-9166/38 . 481-7079', '', '(+63 2) 419-9154 . 930-5499', '', 'cash purchases', 'Distributor', 'Engr. Jomarife E. Gokong (Field Application Engineer)', '', 'Active', '0.00', 1, ''),
(707, 'IZUMI', 'Lithium Ion Battery Operated Tools / Crimping Tools / Compression Tools (Manually Operated, Battery Operated) / Pipe Benders (Hydraulic Operated) / Punchers / Cutters (Manually Operated, Battery Operated, Hydraulic Operated) / Pumps / Other Tools', 0, '', '', '', '', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(708, 'Norbar Torque Tools', 'Bolting Tools & Equipment (Torque Screwdrivers, Torque Wrenches, Electronic Torque Wrenches, Hand Torque Multipliers, Pneumatic Torque Multipliers, Electronic Torque Tools, Torque Measurement, Torque Transducers, Ultrasonic Bolt Measurement, Calibration Services)', 0, '', '', '', '', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(709, 'Milwaukee', 'Impact wrench / Drill / Grinder / Cordless Saw / Band Saw / Cable Cutters / Accessories (Clampmeter, Thermal Imaging, Fork Meter, Multimeter, Ballast Tester, Voltage Detector)', 0, '', '', '', '', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(710, 'OxiFree Metal Protection', 'TM198 / OxiTape / Polymelt 12 / Polymelt 50 / Polymelt 50 AI / Polyment SG1', 0, '', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(711, 'All Technik & Components Inc.', 'Pneumatics / Hydraulics / Ball-Butterfly-Knife Valve / Sanitary Ball-Butterfly Valve / Pneumatic-Motorized Actuator / Vacuum Generator-Suction Cap', 0, 'All-Technik Bldg., Blk. 36 Lot 11, San Antonio Avenue, San Antonio Valley 1, Sucat, Para?aque City 1715', '(+632) 829-4849 to 50 / 825-2533 / Mobile Numbers: 0923-7014027 / 0917-7567893', '', '(+632) 829-8361', '', 'cash purchases', 'Manufacturer/Distributor/Supplier', 'Lando R. Marquez (Sales Manager)', '', 'Active', '0.00', 1, ''),
(712, 'Safari Meters', 'Energy Meter / Water Meter / Portable kWHMTester / kWHM Test Bench / Water Meter Test Bench', 0, 'International Headquarters: 1162 Platinum St., Union City, CA 94587 U.S.A.', '+1 510 589 5542', '', '', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(713, 'Crystalla Glass Art Gallery Enterprises', 'Products: Stained Glass / Colored Glass / Services: Glue Chipping', 0, '#27 VMCC Complex Ganada Avenue cor. Santolan Road, Quezon City, M.M.', 'Mobile Numbers: +63 915 511 0000 / +63 917 835 3222', '', '+63 2 724 7785', '', 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(714, 'North Trend Marketing Corporation (NTM)', 'Industrial & Marine Lubricants (Mineral Lubricants)', 0, 'Madrigal Business Park, Alabang, Muntinlupa City', '', '', '', '', 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(715, 'American Wire and Cable Co., Inc.', 'Building Wires / Communication Wires & Cables / Aluminum Wires / Special Cables / Power Cables /', 0, '8508 Km. 16 South Super Highway, Para?aque City, Philippines', '837-7301 to 10 (Trunklines) / 837-7606 to 07 (Sales)', '', '837-7601 or 04', '', 'cash purchases', 'Manufacturer/Distributor', '', '', 'Active', '0.00', 1, ''),
(716, 'Suntree Electric Co., Ltd.', 'Specialties: Combiner Box /  DC Circuit Breaker / DC Isolating Switch/ DC Fuse / DC SPD / Solar Connector / Solar Inverter /  Sublime Inverter / Amber Inverter / Outwit Inverter / High Frequency Inverter / Shine Web Box / Car Charging Pile', 0, '3 Siqian Road, Xinguang Industrial Zone, Liushi Town, Yueqing, Zhejiang, China 325603', '0086-577-6178-8115 / M/T: 0086 158 8843 8627', '', '0086-577-6289-0578', '', 'cash purchases', 'Manufacturer', 'Joanna Tan (Sales Manager)', '', 'Active', '0.00', 1, ''),
(717, 'United Power & Resources Pte., Ltd.', 'Power Solution Packages / Load Testing / Temperature Controls', 0, 'Unit 304 UA Bldg.,135N Domingo St., Brgy., Balong-Bato, San Juan City', 'Mobile Numbers: +63 915 770 7933 +63 928 446 6861', '', '', '', 'cash purchases', 'Manufacturer', 'Wong  Kin Kheong', '', 'Active', '0.00', 1, ''),
(718, 'Nippon Seisen Cable, Ltd.', 'CAble and Accessories (LAN Cable, LAN Accessories, Optical Fiber, Telecommunication Fiber, Residential Telecommunication Fiber) / Current Fuse (Glass Fuse, Micro Fuse/Ceramic Fuse) / Magnet Wire', 0, 'Shimbashi-Ekimae Bldg., No. 1 5F., 2-20-15 Shimbashi, Minato-ku, Tokyo 105-0004, Japan', '+81 (0)3-3572-3471', '', '+81 (0)3-3574-1198', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(719, 'Wings Technology Enterprise, Inc.', 'Semiconductor and electronic', 0, 'Unit 905 Cityland Herrera Tower VA Rufino cor. Valero Sts., Salcedo Village, Makati City', '(632) 753 4501 to 03', '', '(632) 753 4504', '', 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(720, 'EES Cable Hangzhou Easy Electric Wire and Cable Co., LTD.', 'Specialized in Bare Conductor and Power Cable', 0, 'C508 Room, No. 168, Wuchang Xixi Software Park, Hangzhou, CHINA', 'MP: 0086-18570653687 / WhatsApp: 0086-18570653687', '', '', '', 'cash purchases', 'Manufacturer', 'Mike Chow (Sales Manager)', '', 'Active', '0.00', 1, ''),
(721, 'Powerbox ', 'electrical & Cable Trays (straight length, horizontal elbow, vertical elbow, horizontal tee, vertical tee, reducer, joint connectors, cable pendant support)', 0, 'Total Power Box Solution Inc., Cavite Light Industrial Park, Brgy. Manguyam, Silang, Cavite Phils. 4118', 'Customer Care Service Hotline: (02) 806 9716 / (046) 686 5446 / Technical Service Hotline: Mobile: 0922-874-5355; 0922-811-8021; 0922-812-3619', '', '', '', 'cash purchases', 'Manufacturer/Trader', '', '', 'Active', '0.00', 1, ''),
(722, 'Intellisys Power Controls, Corp.', 'Onsite Generation Controls Synchronization Switchgear and Switchboard / Low and Medium voltage synchronizing Panels- custom designed and built in accordance to American and European standards / Automatic and Manual Transfer Switches / Medium and Low Voltage Switchgear / Marine Switchboard Controls / Custom Busbar Fabrication and Retrofitting Works / Design Commissioning and Start-up assistance / Neutral Grounding Resistor', 0, 'Blk. 4, Lot 5, Cavite Light Industrial Park, Brgy. Maguyam, Silang, Cavite 4118', '(02) 579-5382; (046) 460-5235 / Mobile: 0917-560-1777', '', '', '', 'cash purchases', 'Distributor', 'Rommel De Leon  (President)', '', 'Active', '0.00', 1, ''),
(723, 'LS-VINA & Cable System', 'Electrical/Electronics', 0, 'So Dau Ward, Hong Bang District, Hai Pong  City, Vietnam', '84-225-3540.330 / 84-225-3540.335 / 84-225-3824.968', '', '84-225-3824.969 / 84-225.3540.142', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(724, 'ERITECH Facility Electrical Protection', 'Grounding, Surge and Lightning Protection', 0, '', '', '', '', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(725, 'CADWELD Plus', 'exothermic welding', 0, '', '', '', '', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(726, 'Top Cable', 'ToxFree ZH Z1Z1-U', 0, '', '', '', '', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(727, 'Greenlee Facility Solutions Inc.', 'Electricity, Electronics: Equipment & Supplies', 0, '2144 Pedro Gil St., Sta. Ana Manila, 1009, Philippines', '63 2 564-1996 to 97 / Cell No.: 63 998 965-6782', '', '63 2 563-1314', '', 'cash purchases', 'Distributor', 'Jane May A. Camacho (Sales Representative)', '', 'Active', '0.00', 1, ''),
(728, 'Air Dynamics Group of Companies', 'Range of Products: solenoid valves / cylinders & rotary actuators / rodless cylinders /  mufflers / tubing / fittings / flow controls / plastic and metal couplings / pressure switches / filters-regulators-lubricators / vacuum pumps / accessories', 0, 'Suite 1521 Herrera Tower, 98 VA Rufino cor. Valero Sts., Salcedo Village, Makati City, Philippines 1227', '632-753-2881 / 753-2882', '', '632-845-0735', '', 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(729, 'Beissbarth', 'Wheel Alignment / Brake test stands and test lanes / Headlight inspection / Tire changes / Wheel Balancers /  Air conditioning service unit / Lifting platforms /  Levelable vehicle inspection area / Tire diagnosis', 0, 'Hanauer StraBe 101, 80993 Munchen (Munich, Bavaria), Germany', '+49-89-149 01-0', '', '+49-89-149 01--240', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(730, 'Asell TGlobal Inc.', 'spare parts and accessories for cars and industrial vehicles', 0, 'No. 40 London St., Capitol Homes, Old Balara, Quezon City', '(+632) 951-9842 / Mobile #: +63920-9766069', '', '(+632) 931-8512', '', 'cash purchases', 'Distributor', 'Ramil M. Cornico (Junior Administrative Manager)', '', 'Active', '0.00', 1, ''),
(731, 'JNJ Instrumentation Sales and Services Inc.', 'Pressure / Temperature / Dimensional / Flowmeter / Electrical / Mass', 0, 'Lot 34, Blk. 10, No. 53 Acacia St., Evergreen Executive Vill., Antipolo City, Philippines', '+63 2 213-6645 / 570-9713 / 788-0910', '', '', '', 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(732, 'JB Industrial Equipment qnd Machinery Inc.', 'Provide all spare parts either mechanical, engine parts or electrical parts of all Japan/Korea forklift brand', 0, 'Unit 1B Bldg.,  B 1088, Governor''s Drive Brgy., Bancal, Carmona, Cavite', '(046) 413 0321 / (046) 482-9874 / Mobile Numbers: 0935-5117-658 / 0998-370-8359', '', '', '', 'cash purchases', 'Distributor', 'Roy D. Sabando (Sales Manager)', '', 'Active', '0.00', 1, ''),
(733, 'FLYABILITY SA', 'Services: Safe & Fast Indoor Operation / All-in One Solution for High-Resolution Imagery / Easy to Pilot, Instant Operation, Anywhere', 0, 'Av. de Sevelin 20, 1004 Lausanne. Switzerland', '+41 21 311 55 00', '', '', '', 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(734, 'PowerCity Corporation', 'Automatic Transfer Switch (Indoor/Outdoor) / Soundproof and Weatherproof AC Diesel Generators (Model: PDG-10S, PDG-60S)', 0, 'Km. 20 East Service Road, South Super-Highway, Muntinlupa City 1770, Philippines', '(02) 869-1991, (02) 869-7909, (02) 869-7520, (02) 869-9796', '', '(02) 869-9758, (02) 869-3869', '', 'cash purchases', 'Distributor', 'Femia P. Cordero (Purchasing Supervisor)', '', 'Active', '0.00', 1, ''),
(735, 'Innovalite Inc.', 'electrical', 0, '2F Unit F Princeton  Square Bldg., #35 C, Raymundo Avenue, Rosario, Pasig City, Philippines', '+63 2 642 4739 / Mobile #: +63 917 5950368', '', '+63 2 628 0605', '', 'cash purchases', 'Distributor', 'Elmer E. Balderas', '', 'Active', '0.00', 1, ''),
(736, 'SIFANG Automation Philippines Corporation', 'electronics', 0, 'Unit 2102-C West Tower Philippines Stock Exchange Centre, Exchange Road, Pasig City, Philippines', '+632-687-04-58 / Mobile #: +63 926-696-8409', '', '', '', 'cash purchases', '', 'Ryan L. Mendoza (Sales Manager)', '', 'Active', '0.00', 1, ''),
(737, 'DILO Armaturen und Anlagen GmbH', 'gas handling / high pressure pipe fittings / coupling parts / safety valves / compressor parts', 0, 'Frundsbergstrasse 36 D-87727 Babenhausen', '+49 (0) 83 33 - 302 - 0', '', '+49 (0) 83 33 - 302 - 52', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(738, 'Shinpotekini Enterprises', 'Fabricated/Assembled Equipments; Electrical/Merchandise Items / Services Offered: Complete installation of electrical systems, System design/ review, Start-up Commissioning of Installed Equipment, Servicing/rehabilitation of electrical equipments, As-built Plans Updating, Warranty Services', 0, '60 Covelandia Road, Binakayan, Kawit, Cavite', 'Cavite Office: 046-683-3118; Manila Office: 02.579-2816 / Mobile #: 0935-008-2006', '', '', '', 'cash purchases', 'Distributor', 'Kathleen De Castro (Manager)', '', 'Active', '0.00', 1, ''),
(739, 'Specialized Products & Services Inc. (SPSI)', 'Services: Refractory Solutions / Thermal Insulations / Scaffolding Services', 0, '3rd Floor., Orcel II Bldg., 1611, Quezon Avenue., Quezon City, Philippines', 'Mobile Numbers: 0917-5115397 / 0977-8054702 / 0977-8326303', '', '+63 (2) 352 1432', '', 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(740, 'MSA The Safety Company', 'Specialized in: Respiratory Protection / Personal Protective Products (PPEs) / Fire Service Products / Gas Monitoring Equipment / Mining and Specialty Equipment / Fall Protection Equipment', 0, '', '', '', '', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(741, 'Ultra-Seer Inc.', 'Products: Law Enforcement/Military / Thermal Imaging Cameras / Consumer Products / Mining & Specialty Equipments / Fire Helmets / Fixed Gas Detection / Fall Arrest  / Head, Eye, Face and Hearing Protection / Portable Gas Detection / Air-Purifying Respirator / Supplied-Air Respirators', 0, 'No. 3, 2nd St., Brgy., Kapitolyo, Pasig City 1603, Philippines', '(632) 4706047 to 48 / (632) 4704232 I 4704329 / Mobile #: (+63) 927-7821549', '', '(632) 6372166', '', 'cash purchases', 'Distributor', 'Mark C. De Lizo (Marketing Assistant)', '', 'Active', '0.00', 1, ''),
(742, 'ICTC', 'Custom Wire Harness / Cable Assemblies / Printed Circuit Board Assemblies / Electronic Box Builds', 0, '117-A Technology Avenue, Laguna Technopark, Bi?an, Laguna', '+6349-5317234', '', '', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(743, 'Braamd Inc.', 'Motors & Drives / Automation & Controls / Industrial Components / Valves & Fittings / Inspection & Tools / Cables / Systems Solutions', 0, '3rd Floor, Unit 3B, Ventura Center, Block 5, Lot 3, Phase 2A, SRE Commercial, Santa Rosa-Tagaytay Rd., Santa Rosa City. Laguna, Philippines 4026', '+63 49 302 0904 / +63 49 302 0827 / Mobile #: +63 933876 5369', '', '', '', 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(744, 'Jiangsu Huapeng Transformer Co., Ltd.', 'Oil Immersed Transformer / Single Phase Distribution Transformer / Cast Resin Dry Type Transformer / Pad Mounted Compact Substation', 0, '', '', '', '', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(745, 'EastPower Technology', 'electrical', 0, 'Suite 20 Remedios Building #55 Roces Avenue Barangay Laging Handa Quezon City, Philippines 1103', '', '', '+632 351 3961', '', 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(746, 'KVAR Corporation', 'Specialized in SF6 Gas Handling', 0, 'No. 7 Villanueva Drive, Commonwealth  Ave., Old Balara, 1119, Quezon City', '(+632) 921-8699', '', '(+632) 952-2987', '', 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(747, 'KVAR Corporation', 'SF6 Handling & Measuring Devices / SF6 Gas / Fully Insulated Busbars and Power Transformer Bushing / Meter Seal', 0, 'N. 7 Villanueva Drive, Commonwealth Ave., Old Balara, 1119, Quezon City', '', '', '(+632) 952-2987 / (+632) 921-8699', '', 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(748, 'Vitzro Em Co., Ltd.', 'electrical', 0, 'Head Office:327,Byeolmang-ro, Danwon-gu, Ansan-si, Gyeonggi-do, Korea / Seoul Office: VITZRO Bldg., 7, Neungdong-ro 25-gil, Gwangjin-gu, Seoul, Korea', '+82-31-489-2000', '', '+82-31-492-2216', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(749, 'TOM''ele-KT', 'Products: MV/LV Switchboards, Panelboards, all types of Motor Control Centers, Control Panels, Routine and Synchronizing Panel, Capacitor Bank / Services: Preventive Maintenance Works, Cable Support Systems, Automation Control, Fault Rectification, Repairs and Modification Extension Works', 0, '1424 Labrada Avelino St., (formerly Labores Ext.), Pandacan, Manila, Philippines', '(632) 561-5102 / 564-9722 / 561-5106 / 564-9703 / 561-5188', '', '(632) 563-0261', '', 'cash purchases', 'Manufacturer/Trader', '', '', 'Active', '0.00', 1, ''),
(750, 'Asia Pacific Business & Indt''l. Chem.', 'chemicals', 0, '549 Vergel St., Pasay City', '844-9792 to 93', '', '844-5601', '', '', '', 'Ms. Adelle Martil', '', 'Active', '0.00', 1, ''),
(751, 'Chemetal Philippines', 'chemicals', 0, 'Veterans Rd., Taguig City', '837-4986, 837-4105', '', '838-9027', '', '', '', 'Mr. Arnel Sugatan', '', 'Active', '0.00', 1, ''),
(752, 'CJ Karr Industrial Sales Corp.', 'chemicals', 0, '1200 G. Masangkay St., Manila', '254-8010, 254-8015', '', '253-0773, 252-6708', '', '', '', 'Mr. Amado', '', 'Active', '0.00', 1, ''),
(753, 'Comet Oil Philippines', 'chemicals', 0, 'No. 3-E Sunshine Drive, Boni Serrano, Cubao, Quezon City', '722-5033', '', '722-5014', '', '', '', 'Ms. Lorna Rodriguez', '', 'Active', '0.00', 1, ''),
(754, 'Don Don Supply & Marine Services', 'chemicals', 0, 'MPR Bldg., Manila', '521-7553', '', '522-4348', '', '', '', 'Ms. Riza', '', 'Active', '0.00', 1, ''),
(755, 'Eastkem Industrial Inc.', 'chemicals / paints and coatings', 0, 'Suite 209 Sierra Center Bldg., No. 8, Libertad St., Mandaluyong City', '534-1946', '', '533-9723', '', '', '', 'Ms. Cecil Pablo', '', 'Active', '0.00', 1, ''),
(756, 'Ooxey Industrial Trading', 'chemicals', 0, 'Tupas Bldg., Kamias, Quezon City', '382-6080', '', '', '', '', '', 'Ms. Mariel Torres', '', 'Active', '0.00', 1, ''),
(757, 'RC New Chemical Resources', 'chemicals', 0, 'G/F Sertesa Bldg., 73C Jose St., Malibay, Pasay City', '851-0486', '', '851-0486', '', '', '', 'Ms. Agnes Mirabuena', '', 'Active', '0.00', 1, ''),
(758, 'Vergo Enterprises', 'chemicals', 0, 'unit 204 LRI Bldg., No. 21, Congressional Ave., Quezon City', '355-3364', '', '351-8662', '', '', '', 'Mr. Alvin Llarina', '', 'Active', '0.00', 1, ''),
(759, 'Alder Industrial Sales', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, '6297 T. Alonso St., Manila', '733-5367', '', '733-6437', '', '', '', 'Ms. Helen', '', 'Active', '0.00', 1, ''),
(760, 'Arizona Marketing', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, '99 F. Manalo St., Cubao QC', '726-5991, 416-5991', '', '723-2359, 723-1384', '', '', '', 'Mr. Lemuel/ Joe Uy', '', 'Active', '0.00', 1, ''),
(761, 'Ascend Industrial Supplies', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, '1354 Felix Huertas St., Sta. Cruz, Manila', '735-1202/ 7846', '', '735-0540', '', '', '', '', '', 'Active', '0.00', 1, ''),
(762, 'Aspen Industrial', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, '816 Reina Regente, Binondo, Manila', '599-2507 / 244-2255', '', '599-2507', '', '', '', '', '', 'Active', '0.00', 1, ''),
(763, 'Banhing Hardware', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, '751 T. Alonso St., Sta. Cruz, Manila', '733-6490, 450-4181', '', '733-7092', '', 'cash purchases', '', 'Ms. Aileen', '', 'Active', '0.00', 1, ''),
(764, 'Banitrade Enterprises', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, '67 Moonstone St., Northview, Batasan Hills, QC', '951-7702', '', '932-5974', '', 'cash purchases', '', 'Ms. Florita Viola', '', 'Active', '0.00', 1, ''),
(765, 'Banyac Hardware', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, '531 T. Pinpin, Manila', '243-1556', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(766, 'Bon Industrial Sales', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, '554 Rizal Avenue, Manila', '781-2740, 740-0458', '', '712-4771, 733-1532', '', 'cash purchases', '', 'Mr. Robert Bon', '', 'Active', '0.00', 1, ''),
(767, 'Central Multi-Craft Supply', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, '10 Maryland St., Cubao, QC', '411-3645/3651', '', '727-4489', '', 'cash purchases', '', 'Mr. Carlos Yu', '', 'Active', '0.00', 1, ''),
(768, 'Circulated Electrical & Industrial Supply', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, '8191 Dr. A. Santos Ave., Para?aque', '820-5543 to 47', '', '829-5901', '', 'cash purchases', '', 'Ms. Ellaine Chua', '', 'Active', '0.00', 1, ''),
(769, 'Co Ban Kiat Trading', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, '495-497 Quintin Paredes St., Binondo, Manila', '245-8499 / 243-9131 to 34', '', '245-8499 / 243-5265', '', 'cash purchases', '', 'Michael R. Tordecilla', '', 'Active', '0.00', 1, ''),
(770, 'Electrical & Equipment Supply', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, '665 T. Mapua St., Sta. Cruz, Manila', '733-3459/3472, 733-8194 to 96', '', '734-4503', '', 'cash purchases', '', 'Mr. Danny Concepcion', '', 'Active', '0.00', 1, ''),
(771, 'Gilbilt Industrial Marketing', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, 'D212 Landwealth Condo. 1995 Juan Luna St., Tondo', '252-2663', '', '252-8063', '', 'cash purchases', '', 'Ms. Rose', '', 'Active', '0.00', 1, ''),
(772, 'Guan Yiac Hardware', 'Hardware/ Industrial supplies/ electrical supplies/ tools / flexible hose', 0, '155 Tomas Pinpin T. Binondo, Manila', '245-7022, 245-8722', '', '242-9940', '', 'cash purchases', '', 'Mr. Jesse Tan', '', 'Active', '0.00', 1, ''),
(773, 'Junna Industrial Corp.', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, '2419 Syquia Cor. Calderon St., Manila', '563-5508', '', '563-5515', '', 'cash purchases', '', 'Ms. Lily Reginaldo', '', 'Active', '0.00', 1, ''),
(774, 'Ken-Tool Hardware', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, '1167 La Torre St., Manila', '252-0861, 252-1119', '', '252-1089, 256-2193', '', 'cash purchases', '', 'Mr. Rholee De Lara', '', 'Active', '0.00', 1, ''),
(775, 'Leeleng Commercial', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, '397-393 Dasmari?as, Binondo, Manila', '241-8901', '', '241-4060 / 241-4040', '', 'cash purchases', '', 'Mr. Mark Mendoza', '', 'Active', '0.00', 1, ''),
(776, 'LYS General Merchandise', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, '1181 C.M. Recto Ave.', '252-7465', '', '', '', 'cash purchases', '', 'Ms. Fe', '', 'Active', '0.00', 1, ''),
(777, 'Northstar Electrical', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, '100 Rafael St., Mandaluyong City', '532-3056/5622', '', '532-6194', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(778, 'Osias Enterprises', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, '843-845 Tomas Mapua St., Sta. Cruz, Manila', '712-3087, 742-2590', '', '742-2590', '', 'cash purchases', '', 'Mr. Osias Liongson', '', 'Active', '0.00', 1, '');
INSERT INTO `vendor_head` (`vendor_id`, `vendor_name`, `product_services`, `category_id`, `address`, `phone_number`, `mobile_number`, `fax_number`, `email`, `terms`, `type`, `contact_person`, `notes`, `status`, `ewt`, `vat`, `tin`) VALUES
(779, 'Platinum Int''l Supply and Services', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, 'Unit 217-218 Cityland Condominium, 7648 Dela Rosa, Makati City', '813-1380/ 813-1492', '', '892-0949', '', 'cash purchases', '', 'Mr. Orlando Tolentino', '', 'Active', '0.00', 1, ''),
(780, 'Rodcel Electrical Controls Center', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, '1302-1304 C. M. Recto Ave., Sta. Cruz, Manila', '733-8330, 734-5579', '', '309-0440', '', 'cash purchases', '', 'Mr. Rex Latade', '', 'Active', '0.00', 1, ''),
(781, 'Stellite Commercials', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, 'Greenhills, San Juan City', '531-4681 to 86', '', '531-8882', '', 'cash purchases', '', 'Ms. Sally', '', 'Active', '0.00', 1, ''),
(782, 'Switch Industrial Sales Corp.', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, '1275 Benavidez St., Sta. Cruz, Manila', '251-2533', '', '251-2551', '', 'cash purchases', '', 'Ms. Vilma We', '', 'Active', '0.00', 1, ''),
(783, 'Unison Commercial', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, '664-668 Rizal Ave., Sta. Cruz, Manila', '733-1594/1597/7515/2406', '', '733-2412', '', 'cash purchases', '', 'Mr. Dewey Yu', '', 'Active', '0.00', 1, ''),
(784, 'Uptown', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, '56 Madison St., Mandaluyong City', '631-8366', '', '631-5290/96', '', 'cash purchases', '', 'Mr. Jimmy Tiu', '', 'Active', '0.00', 1, ''),
(785, 'Yu Eng Kao Electrical Supply', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, '2209 Jose Abad Santos Ave., Tondo, Manila', '251-2881', '', '252-9863', '', 'cash purchases', '', 'Mr. Joey Wong', '', 'Active', '0.00', 1, ''),
(786, 'Zenith Electrical & Industrial', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, '649 Florentino Torres St., Sta. Cruz, Manila', '733-8030 to 33', '', '733-0379', '', 'cash purchases', '', 'Ms. Junnalyn Garcia', '', 'Active', '0.00', 1, ''),
(787, 'Maxx Energie Venture Corp.', 'Batteries', 0, 'Unit 3301, 33F, Atlanta Center, Annapolis, SJ', '661-6556/724-5766', '', '726-2713 loc. 124', '', 'cash purchases', '', 'Jimmy L. Econg', '', 'Active', '0.00', 1, ''),
(788, 'Narada Global Services Phils.', 'Batteries', 0, 'Unit 2102, Tycoon Center, Pearl Drive, Ortigas', '584-8827 / Mobile #: 0915-823-6003', '', '584-8827', '', 'cash purchases', '', 'Mr. Vener Luna', '', 'Active', '0.00', 1, ''),
(789, 'People''s International Enterprises', 'Batteries', 0, '1386 Rodriguez Sr. Ave. Cor. Mabolo St., QC.', '722-2636 / 722-7260', '', '721-4232', '', 'cash purchases', '', 'Mark Edlor Perez', '', 'Active', '0.00', 1, ''),
(790, 'Pure Energy Solutions Inc.', 'Batteries', 0, '297 Bonny Serrano Ave., QC.', '5791700 / 4702099', '', '721-4232', '', 'cash purchases', '', 'Engr. Gerry Luna', '', 'Active', '0.00', 1, ''),
(791, 'Aquatherm Commercial & Industrial', 'Cooling Tower', 0, 'Apo, Marikina City', '941-0382', '', '933-7710', '', 'cash purchases', '', 'Mr. Eric Tubig/Ms. Ynah', '', 'Active', '0.00', 1, ''),
(792, 'Cooling Tower & HVAC System', 'Cooling Tower', 0, 'BLAS Bldg., Apo, Marikina City', '941-0382, 942-2263', '', '942-2263', '', 'cash purchases', '', 'Eric V. Castillo', '', 'Active', '0.00', 1, ''),
(793, 'Ionic Chemicals & Industrial Corp.', 'Cooling Tower', 0, '#6 Pearl St., Golden Acres Subd. Las Pi?as City', '800-9104', '', '805-2959', '', 'cash purchases', '', 'Ms. Julie Del Mundo', '', 'Active', '0.00', 1, ''),
(794, 'Veolia Waters', 'Cooling Tower', 0, 'Unit 2107 Philippine AXA Life Center Gil Puyat Avenue', '809-4010', '', '809-4017', '', 'cash purchases', '', 'Ian San Juan', '', 'Active', '0.00', 1, ''),
(795, 'EK2 Marketing', 'Logistics/Custom Brokers/Hazardous Mlts./ Transporters', 0, '1151 Oliveros Compound, F. Bautista St., Ugong Valenzuela City', '442-8663', '', '442-8663', '', 'cash purchases', 'Forwarder', 'Mr. Eddie Ong', '', 'Active', '0.00', 1, ''),
(796, 'Qube Asia', 'Laptops, PC''s, Printers, Fax parts', 0, 'Gilmore, Quezon City', '410-7823', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(797, 'Gigahertz', 'Laptops, PC''s, Printers, Fax parts', 0, '4th Floor SM Megamall', '470-2070', '', '', '', 'cash purchases', '', 'Ms. Kim/ Sir Mark', '', 'Active', '0.00', 1, ''),
(798, 'TCA', 'Laptops, PC''s, Printers, Fax parts', 0, '4th Floor SM Megamall', '633-1594, 634-2437', '', '', '', 'cash purchases', '', 'Mr. Jay Cortez', '', 'Active', '0.00', 1, ''),
(799, 'PCWorx', 'Laptops, PC''s, Printers, Fax parts', 0, '4th Floor SM Megamall', '470-1558', '', '', '', 'cash purchases', '', 'Mr. Richard Tocoyo', '', 'Active', '0.00', 1, ''),
(800, 'CDR-King', 'Laptops, PC''s, Printers, Fax parts', 0, '4th Floor SM Megamall', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(801, 'We Cable', 'Cables/Wires', 0, '1275 Benavidez St., Sta. Cruz, Manila', '251-2553, 254-8128', '', '251-2551', '', 'cash purchases', '', 'Ms. Vilma We', '', 'Active', '0.00', 1, ''),
(802, 'Jade Sealant', 'Calibration Works', 0, 'RM. 304 PSE Bldg., Palanan, Makati City', '822-2821', '', '822-1609', '', 'cash purchases', '', 'Mr. Emmanuel Rimando', '', 'Active', '0.00', 1, ''),
(803, 'Switchtek Construction Corp.', 'Calibration Works', 0, '4F, Annex A Northridge Plaza, 112 Congressional Ave., Bahay Toro', '928-2869 loc. 14', '', '928-7769', '', 'cash purchases', '', 'Ms. Marites Galicha', '', 'Active', '0.00', 1, ''),
(804, 'Alsa Sales Center', 'Bearings, Packings, Gaskets', 0, '922 Tomas Mapua St., Sta. Cruz, Manila', '731-8627', '', '731-8604', '', 'cash purchases', '', 'Mr. Romeo Estela', '', 'Active', '0.00', 1, ''),
(805, 'ASV Industrial Bearing & Oil Seal Corp.', 'Bearings, Packings, Gaskets', 0, '673 Evangelista St., Quiapo, Manila', '733-2266, 733-2260', '', '733-1647', '', 'cash purchases', '', 'Mr. Aldrin', '', 'Active', '0.00', 1, ''),
(806, 'AVK Philippines', 'Bearings, Packings, Gaskets', 0, '#70 West Ave., brgy., West Triangel, Quezon City', '376-6400 to 01', '', '332-0609', '', 'cash purchases', '', 'Mr. Guillermo Ramon J. Reyes, Jr.', '', 'Active', '0.00', 1, ''),
(807, 'Caloocan Oil Seal Corp.', 'Bearings, Packings, Gaskets', 0, 'Unit 78 Gracepark Commercial Complex 4th Avenue', '365-9366', '', '365-9367', '', 'cash purchases', '', 'Ms. Santi', '', 'Active', '0.00', 1, ''),
(808, 'Excelsior Sevenfold Trade Corp.', 'Bearings, Packings, Gaskets', 0, '#22 Datsun St., Fairview Park Subd. Fairview, Quezon City', '428-2538/39', '', '428-2540', '', 'cash purchases', '', 'Dahlia Regondola', '', 'Active', '0.00', 1, ''),
(809, 'Gazpac Enterprises', 'Bearings, Packings, Gaskets', 0, '#145 Doroteo Jose St., Sta. Cruz, Manila', '731-6437 / 781-4659', '', '743-9058', '', 'cash purchases', '', 'Ms. Tessy/ Sir Mark', '', 'Active', '0.00', 1, ''),
(810, 'Gulf Combined Bearing Phils.', 'Bearings, Packings, Gaskets', 0, '1050 D.N. Venegas Bldg., Hall Tower, Benavidez, Mla.', '241-1327 to 29', '', '244-5351', '', 'cash purchases', '', 'Jhun Ogad', '', 'Active', '0.00', 1, ''),
(811, 'Hydroquip Industrial Sales', 'Bearings, Packings, Gaskets', 0, 'Unit 81 Gracepark Comm''l, Complex, 4th Ave., Cal.', '367-6110', '', '367-9755', '', 'cash purchases', '', 'Mr. Nasrciso Soriano, Jr.', '', 'Active', '0.00', 1, ''),
(812, 'Manila Oil Seal', 'Bearings, Packings, Gaskets', 0, '656 Evangelista st., Quiapo, Manila', '733-2267, 733-2275', '', '733-2261', '', 'cash purchases', '', 'Jeroll', '', 'Active', '0.00', 1, ''),
(813, 'Philippine Bearing Corporation', 'Bearings, Packings, Gaskets', 0, '1030 Masangkay St., Binondo Manila', '243-4205, 243-4207', '', '243-7838', '', 'cash purchases', '', 'Ogie', '', 'Active', '0.00', 1, ''),
(814, 'Sealmaster Merchandising Co. Inc.', 'Bearings, Packings, Gaskets', 0, '1003 Masangkay St., Binondo, Manila', '243-5505', '', '243-5546', '', 'cash purchases', '', 'Raymond', '', 'Active', '0.00', 1, ''),
(816, 'F.F.V. Marine Services', 'engine parts & auxiliary', 0, '558-A M. Naval St., Bangkulasi, Navotas City', '281-7704 / 352-7610', '', '', '', 'cash purchases', '', 'Fernando Vicencio III', '', 'Active', '0.00', 1, ''),
(817, 'Man Diesel Philippines', 'engine parts', 0, 'Km. 17 West Service Road, Cervantes Compound', '776-3389, 776-3347', '', '776-3384', '', 'cash purchases', '', 'Mr. Sebastien Marchend', '', 'Active', '0.00', 1, ''),
(818, 'MVB Marine Commercial', 'engine parts', 0, 'B-20 Phll A-4L6, Lapu-lapu Ave., Malabon City', '288-4161 / 288-1120', '', '384-5815 / 384-2578', '', 'cash purchases', '', 'Mariano V. Buquia', '', 'Active', '0.00', 1, ''),
(819, 'Pertma Corporation', 'engine parts', 0, '505 V. Plaza, 41 Annapolis St., Greenhills, San Juan City', '721-9381', '', '', '', 'cash purchases', '', 'Ms. Rima Loren', '', 'Active', '0.00', 1, ''),
(820, 'Phil Nippon Kyoei Corp.', 'engine parts  / generator engines / valves engines', 0, '5705 Royal Plaza Twin Towers, 648 Remedios, Malate, Manila', '400-5778, 302-1635', '', '400-9130', '', 'cash purchases', '', 'John S. Bernardino', '', 'Active', '0.00', 1, ''),
(821, 'Thermopower Incorporated', 'engine parts / air conditioning / refrigeration system / exhaust & ventilating system / fire fighting & alarm system / piping system / boiler & heat exchanger system / control & monitoring system / engine, alternator & equipment / pumps & blower / FRP & rubber works / fabrication works / reverse engineering / electrical/electronic works / structural & civil works', 0, 'Unit B6, Alicia Bldg. 2380 Juan Luna St., Gagalangin, Tondo, Manila', '(632) 2277-303 / (632) 3857-130', '', '(632) 5162-926', '', 'cash purchases', '', 'August C. Roxas / Lorna Rodriguez', '', 'Active', '0.00', 1, ''),
(822, 'Asiaphil', 'transformer contractors', 0, '1150 Pres. Quirino Ave., Ext., Paco, Manila', '563-8338 to 42', '', '563-2529 / 561-9490', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(823, 'Direct Electrix Equipment Corp.', 'transformer contractors', 0, 'Marikina City Concepcion I, Cristina Subdivision, #44 Yakal St.', '942-2871', '', '942-0017', '', 'cash purchases', '', 'Karen / Mr. Daniel Escudo', '', 'Active', '0.00', 1, ''),
(824, 'Jervis Electric Corporation', 'transformer contractors', 0, 'NHA Industrial Estate, Brgy. Maderan', '(046) 972-0127, 925-5432', '', '(046) 972-0127, 928-5432', '', 'cash purchases', '', 'Mr. Erwin F. Macatangay', '', 'Active', '0.00', 1, ''),
(825, 'Kobelco', 'transformer contractors', 0, 'G/F, PDAF Bldg., Buendia Ave., cor. Edsa, Makati City', '897-8736, 899-1997', '', '897-8737', '', 'cash purchases', '', 'Mr. Joseph Manlangit', '', 'Active', '0.00', 1, ''),
(826, 'Philman Corporation', 'transformer contractors', 0, '314 Barraca St., Binondo, Manila', '806780, 109219249000', '', '308-2098, 309-2089', '', 'cash purchases', '', 'Mr. Sat Ocampo', '', 'Active', '0.00', 1, ''),
(827, 'Alfa Laval Philippines', 'HFO Filter', 0, '3rd Floor, Molave Bldg. 1231 Pasong Tamo', '812-7596, 810-3930', '', '815-0642', '', 'cash purchases', '', 'Mr. Donald Miguela ', '', 'Active', '0.00', 1, ''),
(828, 'Alphastar Corporation', 'HFO Filter', 0, '11 Esteban St., Highway Hills, 1550 Mandaluyong City', '533-6325 / Mobile #: 0917-848-4949', '', '533-6331', '', 'cash purchases', '', 'Mr. Romy Mendoza', '', 'Active', '0.00', 1, ''),
(829, 'Acez Instruments Phil. Corp.', 'Instrumentation Parts', 0, 'Unit 301-303 DMG Center, Libertad, Mandaluyong', '470-8068 to 72', '', '470-8043', '', 'cash purchases', '', 'Ms. Socorro Narzoles', '', 'Active', '0.00', 1, ''),
(830, 'AMTEK Industrial Sales', 'Instrumentation Parts', 0, 'Unit 304 Arayat Mansion, Mandaluyong City', '414-9405', '', '411-5855', '', 'cash purchases', '', 'Ms. Annaliza Cantilado', '', 'Active', '0.00', 1, ''),
(831, 'Solid Ace Industrial Corp.', 'Instrumentation Parts', 0, '669 T. Mapua St., Sta Cruz, Manila', '766-6978, 733-6992', '', '733-6990', '', 'cash purchases', '', 'Ms. Cynthia Chua', '', 'Active', '0.00', 1, ''),
(832, 'South Manila V&F', 'Instrumentation Parts / Spare parts', 0, 'Unit 2, Bldg. 2 Oyster Industrial Complex', '826-9811, 826-8033', '', '829-1050', '', 'cash purchases', '', 'Mr. Emerson Faylogna', '', 'Active', '0.00', 1, ''),
(834, 'Wiseman Marketing', 'Instrumentation Parts', 0, '', '838-2246 / 838-2298', '', '', '', 'cash purchases', '', 'Ms. Beth Dicang', '', 'Active', '0.00', 1, ''),
(835, 'Footsafe', 'PPE products and safety wear', 0, '2614 Conchu St., Vito Cruz, Manila', '522-9171', '', '404-0572', '', 'cash purchases', '', 'Mr. Bong Mendoza', '', 'Active', '0.00', 1, ''),
(836, 'Tradetech Marketing', 'PPE products and safety wear', 0, 'P & C Bldg. Noble St., Cor. Canlapan St., Batangas', '430-2246, 703-1500', '', '046-4302246', '', 'cash purchases', '', 'Ms. Em Gonzales', '', 'Active', '0.00', 1, ''),
(837, 'Wyler Enterprises', 'PPE products and safety wear', 0, '1300 Rizal Ave., Sta. Cruz, Manila', '735-0581', '', '735-0855', '', 'cash purchases', '', 'Mr. Chris Esguerra', '', 'Active', '0.00', 1, ''),
(838, 'ALCAPORT TRADE', '', 0, 'Unit 3F A & M Building No.9, Commonwealth Ave., Batasan Hills, Quezon City', '(632) 951 1012 / (632) 475 6780', '', '(632) 351 1897', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(839, 'Analyst Supply House Inc.', '', 0, '531 San Rafael St., Mandaluyong City', '532-7440 / 532-0445', '', '(632) 532-5957', '', 'cash purchases', '', 'Crisostomo B. Galang', '', 'Active', '0.00', 1, ''),
(840, 'BP Integrated Technologies Inc.', '', 0, 'Unit 6, 2nd Floor Sta. Cecilia Business Center, National Highway, Parian Calamba', '(049) 520-8809; 545-9895-96', '', '(045) 520-8809; 545-9896', '', 'cash purchases', '', 'Lilibeth F. Datoon', '', 'Active', '0.00', 1, ''),
(841, 'Brownstone Asia-Tech , Inc.', '', 0, '10 A. H. Poblador St., Hagdan, Bato Libis, Mandaluyong City, Philippines', '02 532 4310', '', '02 531 6518', '', 'cash purchases', '', 'Annie L. Valdez', '', 'Active', '0.00', 1, ''),
(842, 'Chemline Scientific Enterprises', 'chemicals', 0, '#28 Law Street, Victoria Subdivision, Tandang Sora, Quezon City', '(02) 984-1203/1198, 455-2789, 494-5306, 994-3809', '', '(02) 984-1201', '', 'cash purchases', '', 'Evangeline C. Magtoto / Roger Ernacio', '', 'Active', '0.00', 1, ''),
(843, 'Clean World Tech Corporation', '', 0, '117 Guadalupe St., Morning Breeze subd., Caloocan City', '(02) 442-5986 / (02) 442-5659', '', '(02) 352-8139', '', 'cash purchases', '', 'Joel F. Manila', '', 'Active', '0.00', 1, ''),
(844, 'Core Scientific Industries', '', 0, 'Acilia Twin Tower Mt. Pulong Umali Subdivision, Los Ba?os, Laguna', '(049) 536-8203', '', '536-0681', '', 'cash purchases', '', 'Leah D. Wagan', '', 'Active', '0.00', 1, ''),
(845, 'Dakila Trading Corporation', 'chemicals', 0, '208 Pilar Street, Addition Hills, Mandaluyong City', '(02) 8724-7511 to 16', '', '(02) 721-0739', '', 'cash purchases', '', 'Richard A. Tee / Jannete B. Redondo', '', 'Active', '0.00', 1, ''),
(846, 'Exclusive Traders, Inc.', '', 0, 'Binondo, Metro Manila', '02-376-6657', '', '02-376-6630', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(847, 'FIL-ANASERVE, INC', '', 0, '3rd Floor, MRL Tower, 124 Malakas St., Diliman, Quezon City', '02-441-0430', '', '02-441-0429', '', 'cash purchases', '', 'Edwin T. Nasol / Ronan T. Iglesia', '', 'Active', '0.00', 1, ''),
(848, 'GeoTech Mercantile Corporation', '', 0, 'No. 6 Do?a Consolacion Bldg., Gen. Santos St., Araneta Center Cubao, QC', '911-0749; 911-0690; 911-2018', '', '911-0732', '', 'cash purchases', '', 'Robert Canlas', '', 'Active', '0.00', 1, ''),
(849, 'Guill-bern Corporation', '', 0, 'San Rafael St., Barrio Kapitolyo, Pasig City, Philippines 1603', '02-746-1470', '', '02-746-0886', '', 'cash purchases', '', 'Lovely Joyce Tacuyog', '', 'Active', '0.00', 1, ''),
(850, 'ITS Science (Phils.) Inc.', '', 0, '3434 C, C. Raymundo Avenue, Rosario, Pasig City', '02 640 1363', '', '02 641 3186', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(851, 'Macare Medicals, Inc.', '', 0, '#67 A. Luna Street, Project 4, Quezon City, Philippines, 1109', '(02) 913-4201, (02) 913-4163', '', '(02) 913-5937', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(852, 'Macrotrade Resources, Inc.', 'laboratory equipment', 0, '150 P. Tuazon Avenue cor. Edsa, Quezon City< Philippines, 1109', '02 439 4116', '', '02 421 1193', '', 'cash purchases', 'Supplier', 'Wilbert E. Vargas', '', 'Active', '0.00', 1, ''),
(853, 'Molave Trading', 'Barnstead GenPure Water Purification System / Heracell VIOS 160i & 250i CO2 Incubators / Thermo Series Liquid Nitrogen Transfer Vessels', 0, '891 Acero building, 891 E. Delos Santos avenue, Quezon City, Philippines, 1103', '(02) 4110360 to 64', '', '(02) 9242094', '', 'cash purchases', '', 'Emmanuel A. Acero', '', 'Active', '0.00', 1, ''),
(854, 'Nicolie Enterprises', '', 0, '21 Grove Batong Malake, Los Ba?os, Laguna', '536-4885', '', '536-4885', '', 'cash purchases', '', 'Jonna Dy Alipoyo, Delia Cabim, Elmita Sola', '', 'Active', '0.00', 1, ''),
(855, 'Omnibus Bio-Medical Systems, Inc.', '', 0, '220-B Wilson St., Greenhills, San Juan City', '727-1058', '', '722-4605', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(856, 'Philab Industries, Inc.', '', 0, '7487 Bagtikan st., San Antonio Village, Makati City 1203, MM, Philippines', '02 895 9101', '', '', '', 'cash purchases', '', 'Agustin Joel Manalang', '', 'Active', '0.00', 1, ''),
(857, 'Quest Diagnostic Systems', '', 0, '305-G San Fernando St., Binondo, Manila, Philippines', '02 241 9515', '', '02 243 3486', '', 'cash purchases', '', 'Francisca Fusingan', '', 'Active', '0.00', 1, ''),
(858, 'RainPhil Inc.', '', 0, 'Unit 15 E Burgundy Corporate Tower, 252 Sen. ,Gil Puyat Ave., Makati City', '(02) 843-6352', '', '(02) 843-6704', '', 'cash purchases', '', 'James L. Angeles / Jane M. Ferno', '', 'Active', '0.00', 1, ''),
(859, 'State Alliance Enterprises, Inc.', '', 0, '283 G. De Rivera St., San Nicolas, Manila, Philippines', '(02) 2424512', '', '(02) 2417784', '', 'cash purchases', '', 'Lyndon C. Ang', '', 'Active', '0.00', 1, ''),
(860, 'Tetrad Electrical & Industrial Services Corporation', 'electrical', 0, 'Blk. 19 Lot 6 Road 5A, United Para?aque, Subdivision 5, Para?aque City', '6683584 / 7880825', '', '7880826', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(861, 'TowerCamp Medical Enterprises', '', 0, '246 National Hi-way, San Vicente, Bi?an, Laguna', '(049) 511-43-26 / (02) 788-6685', '', '(049) 511-43-26', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(862, 'Yokogawa Philippines Inc.', 'Industrial Automation, Distributed Control Systems, Solution-based Software, Data Acquisition, Process Control Instruments, Test & Measurement, Engineering Services, Maintenance, Calibration, Training , SCADA, Process Analyzers, Field Instruments, Industrial Networking, Project Execution Services, Lifecycle Care Services, Upgrade & Migration Services, Basic Maintenance Services, Operations Management, Safety Management, Production Management, Energy Management, Asset Management, Industrial IIOT, Consulting, Digital Transformation, Plant Security, Analyzer System, Manufacturing Operations Management, Quality Management, Inventory Management', 0, 'Topy Industries Bldg., #3 Economia St., Brgy. Bagumbayan, Quezon City', '02 2387777', '', '02 238 7799', '', 'cash purchases', 'Contractor', 'Jo Anne I. Reyes', '', 'Active', '0.00', 1, ''),
(863, 'Stainless Screw Int''l Sales, Co.', 'bolt & nuts', 0, '1425 Quirino Ave., Para?aque City', '8363692 / Mobile : 0917-852-6409', '', '82669196', '', 'cash purchases', '', 'Mr. Victor Tan / Leilanie Adrada', '', 'Active', '0.00', 1, ''),
(864, 'Mega Screwtech bolts & nuts', 'bolt & nuts', 0, 'Brgy. Plater National Road, Bi?an, Laguna', '5425903 / 4158727 / 5147024', '', '', '', 'cash purchases', '', 'Mr. Frederick Fenix', '', 'Active', '0.00', 1, ''),
(865, 'Optimum Industrial Sales', 'bolt & nuts', 0, '37D Baler St., Q.C. San Francisco Del Monte', '3766466 / Mobile: 0920-9269499', '', '4116727', '', 'cash purchases', '', 'Mr. Jason Que, Ms. Joy', '', 'Active', '0.00', 1, ''),
(866, 'Bonnie Industry', 'bolt & nuts', 0, '174 Rivera St., Baesa Sta. Quiteria, Caloocan City', '916-5509625', '', '', '', 'cash purchases', '', 'Mr. Hiton Bonnie', '', 'Active', '0.00', 1, ''),
(867, 'Tool Exponent Services Asia Corporation', 'bolt & nuts', 0, '41 Arayat St., Mandaluyong City', '531 1066 / Mobile: 0928-5067771', '', '', '', 'cash purchases', '', 'Mr. Eduardo Badinas', '', 'Active', '0.00', 1, ''),
(868, 'ZEU Manila', 'bolt & nuts', 0, 'Pasay Road, Makati', '889 5861 / 889 5408', '', '', '', 'cash purchases', '', 'Mr. Zeu', '', 'Active', '0.00', 1, ''),
(869, 'Southway Hardware Electronic & Auto Supply', 'bolt & nuts', 0, '1800 Aurora Blvd. Q.C.', '911 9882', '', '', '', 'cash purchases', '', 'Ms. Thess Tonido', '', 'Active', '0.00', 1, ''),
(870, 'Anaconda Metal Fastener, Inc.', 'bolt & nuts', 0, '168 F. Mariano Ave., Brgy. De La Paz, Pasig City', '645-6798 / 645-3832 / 646-0909', '', '681-4284', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(871, 'A-Line Industrial Sales', 'bolt & nuts', 0, '8 Sta. Cruz, Angat, Bulacan', '782-4693 / Mobile: 0915-486-5173 / 0922-803-0122', '', '', '', 'cash purchases', '', 'Susan Bartolome', '', 'Active', '0.00', 1, ''),
(872, 'Stronghold Bolts & Nuts Center', 'bolt & nuts', 0, '435 Edsa St., Pasay City', '889 1220', '', '', '', 'cash purchases', '', 'Delia', '', 'Active', '0.00', 1, ''),
(873, 'Precious Steel', 'bolt & nuts', 0, '2329 Severino Reyes Sta. Cruz, Manila', '3994930 / Mobile: 0923-596-6350', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(874, 'Lubestraders Corporation', 'chemicals & lubricants', 0, 'Lot 1Blk. 3 Salinas St., Longos, Malabon City', '990-9039 to 41', '', '', '', 'cash purchases', '', 'Mr. Jeric C. Feliciano', '', 'Active', '0.00', 1, ''),
(875, 'Cleveland Industries', 'chemicals & lubricants', 0, '43 Sto. Domingo Ave., SMH Q.C.', '732-4244 local 110', '', '7324659', '', 'cash purchases', '', 'Mr. Raymond Lim', '', 'Active', '0.00', 1, ''),
(876, 'Flying V - USA88', 'chemicals & lubricants', 0, '10th Floor Columbia Towers Ortigas Ave., Mandaluyong city', '7443467 / 7443469', '', '7267640', '', 'cash purchases', '', 'Ms. Emy Reyes / Felly Padie', '', 'Active', '0.00', 1, ''),
(877, 'NCH Philippines Inc.', 'chemicals & lubricants', 0, '7th Floor Suite 705 West Tower Philippine Stock Exchange Center, Exchange Road Ortigas, Pasig City', '6874869 / 6871605', '', '6673878/4580', '', 'cash purchases', '', 'Dorothy Angeles', '', 'Active', '0.00', 1, ''),
(878, 'Cloisonne Chemical Products', 'chemicals & lubricants', 0, '66 Stanford St., Cubao Q.C.', '9132283', '', '', '', 'cash purchases', '', 'Mr. Cesar m. Cue', '', 'Active', '0.00', 1, ''),
(879, 'Oxychem Corporation', 'chemicals & lubricants', 0, '10 San Pedro St., Brgy. Plainview, Mandaluyong', '9865799 / Mobile: 0905-9416787', '', '5341357', '', 'cash purchases', '', 'Ms. Reyna Jacinto', '', 'Active', '0.00', 1, ''),
(880, 'Safechem Trading', 'chemicals & lubricants', 0, '', '7741010 / 7031468 /  Mobile: 09285200167', '', '2390971', '', 'cash purchases', '', 'Joy Cruz', '', 'Active', '0.00', 1, ''),
(881, 'Kudu 3 Enterprises', 'chemicals & lubricants', 0, '918 St., St. Joseph Malinta Valenzuela City', '3520169 / 904-6383 / Mobile: 09152107873', '', '', '', 'cash purchases', '', 'Shirley Markina', '', 'Active', '0.00', 1, ''),
(882, 'JDA Conqueror Chemicals Corporation', 'chemicals & lubricants', 0, '161 Hasmin St., Mandaluyong City', '3678998 / Mobile: 09178521850', '', '', '', 'cash purchases', '', 'Ms. Angel Tiu', '', 'Active', '0.00', 1, ''),
(883, 'Wharfslube Corporation', 'chemicals & lubricants', 0, '', '569-4554 / Mobile Numbers: 0939-331-1628', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(884, 'Aeons Trading', 'chemicals & lubricants', 0, '', '7810448 / 3660471 / Mobile Numbers: 0927-947-9369; 0918-691-9491; 0942-398-4414', '', '', '', 'cash purchases', '', 'Gie', '', 'Active', '0.00', 1, ''),
(885, 'Comptech Industrial', 'chemicals & lubricants', 0, '', 'Laguna Branch: 0498373744 / Manila Branch: 5794624 / 6441539', '', '', '', 'cash purchases', '', 'Ric', '', 'Active', '0.00', 1, ''),
(886, 'TeleEye', 'Hardware', 0, '291-H Del Monte Ave., QC.', '411-5264/361-1654/361-8267', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(887, 'Hap Suy Hardware Co. Inc.', 'Hardware', 0, '314 San Nicolas St., Binondo, Manila', '2424490/96', '', '2423957', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(888, 'Glorious Morning Construction & Industrial Sales', 'Hardware', 0, '86 Aurora Blvd. cor. R. Lagmay St., San Juan, Metro Manila', '7275666/68', '', '7274262', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(889, 'Mario Merchandising & Mill Supply Co., Inc.', 'Hardware', 0, '', '7337277 / 7336456', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(890, 'STP Industrial Hardware', 'Hardware', 0, '378 Rizal Ave., Ext. 109, Caloocan City', '3619239 / 3657330', '', '', '', 'cash purchases', '', 'Mr. Joseph/ James Ang', '', 'Active', '0.00', 1, ''),
(891, 'Central Water Trading', 'Hardware', 0, '107 Sampaguita St., Between 10th & 11th Ave., Grace Park, Caloocan City', '3325788', '', '3663896', '', 'cash purchases', '', 'Ms. Jean Kaur', '', 'Active', '0.00', 1, ''),
(892, 'Tee To Suy Hardware', 'Hardware', 0, '1512 C.M. Recto Ave., cor. Tomas Mapua St., Sta. Cruz, Manila', '7360937 / 7360950', '', '7332709', '', 'cash purchases', '', 'Mayeth / Mr. Tee To Suy', '', 'Active', '0.00', 1, ''),
(893, 'Prima Color Paint Center', 'Hardware', 0, '530 Villa Ceseni Subd. Brgy. 175, Zone 15, Susano Rd. Caloocan City', '', '', '9623837', '', 'cash purchases', '', 'Mr. Nelson Bernabe', '', 'Active', '0.00', 1, ''),
(894, 'PanPly Marketing Corp.', 'Hardware', 0, 'Rm. 1401 Elcano Plaza 622, Elcano St.,Binondo, Manila', '2437484', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(895, 'Fil American Hardware', 'Hardware', 0, '932 Aurora Blvd. Cubao, QC', '912-5555', '', '', '', 'cash purchases', '', 'Ms. Edna Valley', '', 'Active', '0.00', 1, ''),
(896, 'Buendia Hardware & Construction Supply', 'Hardware', 0, '28 North St., Manresa, Manila', '8331845 / 8314182 / 8134549', '', '8310030', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(897, 'Keystone Industrial Trading', 'Industrial Fittings', 0, '2130 Leveriza St., Pasay City', '831-5056', '', '831-4013', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(898, 'Valvetek Trading', 'Industrial Fittings', 0, 'Unit M02 Linwood Realty Building, #21 Congressional Av., Bahay Toro, QC.', '332-7455', '', '332-7455', '', 'cash purchases', '', 'Ms. Cecille Cruz', '', 'Active', '0.00', 1, ''),
(899, 'Goodwrench Technology', 'Industrial Fittings', 0, 'Blk. 19 Lt. B. Columbian Circle Anahaw Subd. Sta Rosa', '049-837-3569', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(900, 'Traders Industrial Supply Co., Inc.', 'Industrial Fittings', 0, 'S-7 Sunvar Plaza, Pasay Rd., Amorsolo St., Makati', '8179004', '', '8158738', '', 'cash purchases', '', 'Ms. Ozette Napolitano', '', 'Active', '0.00', 1, ''),
(901, 'Green Power Solution Provider, Inc.', 'Industrial Fittings', 0, 'Unit 405 4/F LRI Building #21 , Congressional Ave., Quezon City', '4739743', '', '', '', 'cash purchases', '', 'Mr. Peter Simon', '', 'Active', '0.00', 1, ''),
(902, 'Insular Milling & Agro Industrial Technologies Inc.', 'Industrial Fittings', 0, '12 King St., 1235 Quezon City', '9224377612', '', '', '', 'cash purchases', '', 'Mr. Neil Sanchez', '', 'Active', '0.00', 1, ''),
(903, 'Tradestar Enterprises Corporation', 'Industrial Fittings', 0, '299 P. Tuazon St., Q.C. Balintawak', '3642912 / 3612308 / 3644297', '', '36550555', '', 'cash purchases', '', 'Mr. Orlan Tungkad', '', 'Active', '0.00', 1, ''),
(904, 'Eastman Industrial Supply', 'Industrial Fittings', 0, '525 T. Alonzo St., Sta. Cruz, Manila', '7338471 / 7335861', '', '7335875', '', 'cash purchases', '', 'Mr. Willy Jacinto', '', 'Active', '0.00', 1, ''),
(905, 'Sensors & Measuring Instrument Corp.', 'Industrial Thermometer', 0, '8418 Mayapis St., SAV Makati, Metro Manila, 1203', '7286360', '', '8966896', '', 'cash purchases', '', 'Mr. Michael Fajardo / Leah', '', 'Active', '0.00', 1, ''),
(906, 'Artech Scientific Trading Company', 'Industrial Thermometer', 0, 'B2 L10 Phase I, Aldea Real Filinvest, Calamba', '0495766745 / Mobile: 09178930622', '', '0495021139', '', 'cash purchases', '', 'Mr. Juan Pablo Gernale', '', 'Active', '0.00', 1, ''),
(907, 'Enzed Trade', 'Industrial Thermometer', 0, 'Penthouse, Mervic Terraces, 980 Ocampo St., Malate, Manila', 'Mobile: 09228263948', '', '', '', 'cash purchases', '', 'Mr. Rodel Hernandez', '', 'Active', '0.00', 1, ''),
(908, 'Amtech Controls & Engineering', 'Industrial Thermometer', 0, '26 Lourdes St., Fatima Subd., Las Pi', '8716334 / Mobile: 09178507831', '', '8716333', '', 'cash purchases', '', 'Mr. J. Rey de Los Reyes Marti', '', 'Active', '0.00', 1, ''),
(909, 'Gadgetsandgears.com', 'Industrial Thermometer', 0, 'Unit 709 Grace Park Commercial Complex, 4th Ave., West Between Teodoro & del Mundo, Kalookan', '3241091 / 3197091 / Mobile: 09209692672', '', '3654686', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(910, 'Ptec Inc.', 'Industrial Thermometer', 0, '339-343 G. Araneta Ave., 1100 Philippines', '71660615 / Mobile: 09228689996', '', '7160330', '', 'cash purchases', '', 'Mr. Benedict Allen', '', 'Active', '0.00', 1, ''),
(911, 'Living Water System, Inc.', 'Industrial Thermometer', 0, 'WSB, CCMC Compound, Industrial Area, Veterans Center, Taguig', '2152055 / Mobile: 09178074933', '', '8378415', '', 'cash purchases', '', 'Mr. Edward Albert P. Prades', '', 'Active', '0.00', 1, ''),
(912, 'Powertech Industrial Sales, Inc.', 'Pumps & Motors', 0, '265 D. Tuazon St., QC', '3668265', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(913, 'Trade One', 'Pumps & Motors', 0, '#56 Aragon St., San Francisco Del Monte, QC.', '3713032 / 3711178', '', '3711175', '', 'cash purchases', '', 'Mr. Rolly Palad', '', 'Active', '0.00', 1, ''),
(914, 'Gotesco Group of Companies', 'Pumps & Motors', 0, '5th Floor Ever Gotesco Corporate Center, 1962 Bilibid, Quaipo Manila', '7338820/30', '', '7344993', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(915, 'Adtech Phils. Corp. (Oil Seal)', 'Pumps & Motors', 0, '1703 12/F Antel Global Corporate Center, 58 Do?a Julia Vargas Ave., Ortigas Center', '6387496 / 6879054', '', '6387497', '', 'cash purchases', '', 'Elly Lopez', '', 'Active', '0.00', 1, ''),
(916, 'JM Brenton Industries Corp.', 'Pumps & Motors', 0, '2nd Floor, JM Bldg. South Super Highway cor. Rockefeller St., Makati', '8436644', '', '8175739', '', 'cash purchases', '', 'Ms. Joy Merenciano', '', 'Active', '0.00', 1, ''),
(917, 'RNW Pacific Pipes Steel', 'Steel Pipes', 0, '4/F KAVI bldg., 193 E. Rodriguez Jr. Ave., Q.C.', '4397002 / 4377003', '', '7090432 / 4390853', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(918, 'Power Steel Specialist Trading Corp.', 'Steel Pipes', 0, '1714 Ma. Clara St., Sampaloc Manila', '7310000', '', '7413619 / 7324036', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(919, 'Steel Asia', 'Steel Pipes', 0, '2nd Floor Bonifacio High Street Fort Bonifacio, Taguig City 1634', '8566888', '', '8580585', '', 'cash purchases', '', 'Ms. Jhoy Prunda / Nads', '', 'Active', '0.00', 1, ''),
(920, 'FVC Philippines Inc.', 'Steel Pipes', 0, 'Narra Road Barrio San Antonio San Pedro, Laguna', '5567838/7839/7861', '', '5567944', '', 'cash purchases', '', 'Ms. Michelle Morales', '', 'Active', '0.00', 1, ''),
(921, 'Steel Trust Corporation', 'Steel Pipes', 0, '#16 Federico cor. Benjamin St., San Rafael Village, Balut Navotas City', '3710373', '', '3711239', '', 'cash purchases', '', 'Ms. Hyacinth Chan / Juliet Sy', '', 'Active', '0.00', 1, ''),
(922, 'KYK Tools', 'Tools & other Parts', 0, '547-A Caballeros St., 1006 Manila', '2418410 / 2430382 / 2430428', '', '', '', 'cash purchases', '', 'Joseph Ong', '', 'Active', '0.00', 1, ''),
(923, 'Smart Power Hose Assembly', 'Tools & other Parts', 0, '#35 Austin Brgy. Barangka, Marikina', '3918455', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(924, 'Commercial Hydraulics', 'Tools & other Parts', 0, '', '3647759', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(925, 'Justino Corporation', 'Tools & other Parts', 0, '2461 Sunrise St., Mia Road, Tambo, Metro Manila', '8515397', '', '8515369', '', 'cash purchases', '', 'Gwen Chua', '', 'Active', '0.00', 1, ''),
(926, 'Co Ban Kiat Hardware, Inc.', 'Tools & other Parts', 0, '493-497 Quintin Paredes St., Binondo, Manila, Philippines', '2432730 / 2431931', '', '', '', 'cash purchases', '', 'Giovanni Uy / Ian Lorzano / Mr. Edzel', '', 'Active', '0.00', 1, ''),
(927, 'Nibco Commercial', 'Electrical Services & Products', 0, 'Rm. 259 2nd Floor Republic Supermarket, F. Flores corner Soler, Sta. Cruz, Manila', '733-7830 / 733-7829', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(928, 'Plug Electric Manufacturing Corporation', 'Electrical Services & Products', 0, 'Lot 3 , Dama de Noche St., UPS 4, Para?aque City', '8235255 / 8235856', '', '', '', 'cash purchases', '', 'Sir Lito Guardian/Grace', '', 'Active', '0.00', 1, ''),
(929, 'CH Asia World of Electric Inc.', 'Electrical Services & Products', 0, '366, 2nd St., Between 9th & 10th Ave., Caloocan', '365-3430 / 365-6793', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(930, 'Ginza Marketing', 'Electrical Services & Products', 0, '3588 Unit F P Sanchez St., Sta. Mesa, Manila', '7147438 / 7163065', '', '7142167', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(931, 'Octo Tek Electrical Supply', 'Electrical Services & Products', 0, '1408 Unit D, Batangas cor. Ipil St., Sta Cruz, Manila', '2523844 / 2533782', '', '632-2514171', '', 'cash purchases', '', 'Mr. Arnel', '', 'Active', '0.00', 1, ''),
(932, 'Danfoss Inc.', 'Electrical Services & Products', 0, '7th Floor Unioil Center Acacia cor. Commerce Ave., Madrigal Business Park Alabang', '8097130 / 8098187', '', '8097271 / 8502966', '', 'cash purchases', '', 'Jason Rebelo / Marivic Ruiz', '', 'Active', '0.00', 1, ''),
(933, 'Fisher Martin Technologies, Inc.', 'Electrical Services & Products', 0, 'Unit 205 Corporate 101 Bldg., Mother Ignacia Ave., South Triangle 4, Q.C.', '3764660', '', '8572661', '', 'cash purchases', '', 'Mr. Chris Rosete', '', 'Active', '0.00', 1, ''),
(934, 'Electx Electrical Supply', 'Electrical & Services', 0, '', '736-3323', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(935, 'Gram Industrial Incorporated', 'Electrical Services & Products', 0, 'Tia Maria, Sarao Building, 219 C.V. Starr Ave., Philamlife Subdivision, Las Pi?as City', '8731556', '', '', '', 'cash purchases', '', 'Mike Enriquez', '', 'Active', '0.00', 1, ''),
(936, 'Konsberg Maritime Pte. Ltd.', 'Electrical Services & Products', 0, '', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(937, 'GE Measurement & Controls', 'Electrical Services & Products', 0, '', '8777141', '', '', '', 'cash purchases', '', 'Nick M .Largo', '', 'Active', '0.00', 1, ''),
(938, 'Hypercharge Industrial Inc.', 'Electrical Services & Products', 0, 'Palomo-Usero Building, 834 A, Severino Reyes St., San Cruz, Manila', '741-0869 / 495-01-84', '', '732-60-02', '', 'cash purchases', '', 'Gazpar Comban', '', 'Active', '0.00', 1, ''),
(939, 'George Fisher Philippines', 'Electrical Services & Products', 0, '#3 E. Rodriguez, Jr. Avenue Bagong Ilog, Pasig City', '571-2365/67', '', '632-5712368', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(941, 'Land Instruments International', 'Electrical Services & Products', 0, '', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(942, 'Transcat', 'Electrical Services & Products', 0, '', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(943, 'Zellweger Analytics', 'Electrical Services & Products', 0, '', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(944, 'Marathon Sensors, Inc.', 'Electrical Services & Products', 0, '', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(945, 'United Electric Controls', 'Electrical Services & Products', 0, '', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(946, 'Ultraflux', 'Electrical Services & Products', 0, '', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(947, 'Doedijns', 'Electrical Services & Products', 0, '', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(948, 'Duraggroup', 'Electrical Services & Products', 0, '', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(949, 'Wonderware', 'Electrical Services & Products', 0, '', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(950, 'Parker', 'Electrical Services & Products', 0, '', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(951, 'Omega Engineering', '', 0, '', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(952, 'Jordan Valve', 'Electrical Services & Products', 0, '', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(953, 'BadgerMeter, Inc.', '', 0, '', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(954, 'Meisons Equipment', 'Electrical Services & Products', 0, '', '7117726', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(955, 'Philips Wires & Cables', 'Electrical Services & Products', 0, '', '2418801', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(956, 'Powertec Int''l Corp.', 'Electrical Equipment Supplies', 0, '731-2 Wonsi-Dong, Danwon-Gu, Ansan-City, KOREA', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(957, 'Joosung Electrical Construction Corp.', 'Electrical Equipment Supplies', 0, '222 Wholesalers Bldg. 2, East Service Road FTI Complex, Taguig City', '837-7176/838-4301 loc. 3222', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(958, 'Acas Elektrik Corporation', 'Electrical Equipment Supplies', 0, 'Door 1 Honorama Bldg., 823 V. Rama Ave., Guadalupe City', '253-7608/255-0230', '', '', '', 'cash purchases', '', 'Mr. Rolando Q. Acas', '', 'Active', '0.00', 1, ''),
(959, 'Asiaphil Manufacturing Inds.', 'Electrical Equipment Supplies', 0, '1150 Pres. Quirino Ave., Ext., Paco, Manila', '563-8338 to 42', '', '', '', 'cash purchases', '', 'Ms. Catherine May Pintado', '', 'Active', '0.00', 1, ''),
(960, 'Business World Pub', 'Electrical Equipment Supplies', 0, '95 Balete Drive Ext., New Manila, Quezon City', '535-9901 loc. 824', '', '', '', 'cash purchases', '', 'Mr. Ben Ravina', '', 'Active', '0.00', 1, ''),
(961, 'Centrade Integrated Sales Co. / DTR Corp.', 'Electrical Equipment Supplies', 0, '77 Malakas St., Brgy., Pinyahan, Quezon City', '920-0271', '', '', '', 'cash purchases', '', 'Mr. June C. Iporong', '', 'Active', '0.00', 1, ''),
(962, 'Cepalco Energy Services & Trading Corp.', 'Electrical Equipment Supplies', 0, 'Strata 100 Bldg. Ortigas Jr. Ave., Ortigas Ctr. Pasig City', '631-1581 to 84', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(963, 'Coco Light trading Corp.', 'Electrical Equipment Supplies', 0, 'Sta. Lucia cor. Victoria St., Intramuros Manila', '404-0295 to 96', '', '', '', 'cash purchases', '', 'Mr. Jose F. Esca', '', 'Active', '0.00', 1, ''),
(964, 'Digital Data Corporation', 'Electrical Equipment Supplies', 0, '50-A Malakas St., Brgy. Pinyahan, Quezon City', '435-4300', '', '', '', 'cash purchases', '', 'Ms. Louie Del Rosario', '', 'Active', '0.00', 1, ''),
(965, 'Dulhunty Int''l Phils., Inc.', 'Electrical Equipment Supplies', 0, '11-G Corumi St., Brgy. Masambong SPDM, Quezon City', '416-8284/ 497-6152', '', '', '', 'cash purchases', '', 'Ms. Mari G. Castuciano', '', 'Active', '0.00', 1, ''),
(966, 'Eaglerise Electric & Electronic (FOSHAN) Co., Ltd.', 'Electrical Equipment Supplies', 0, '514-A Halcon St., Mandaluyong City', '533-0574', '', '', '', 'cash purchases', '', 'Mr. Evangel Manundo', '', 'Active', '0.00', 1, ''),
(967, 'PDR Technology (Asia) , Inc.', 'Electrical Equipment Supplies', 0, '2/F Filipino Bldg., 135 Dela Rosa St., Legaspi Village, 1229, Makati City', '811-4593', '', '', '', 'cash purchases', '', 'Ms. Novelyn Pajo', '', 'Active', '0.00', 1, ''),
(968, 'Power Equipment & Supplies, Inc.', 'Electrical Equipment Supplies', 0, '42 Int. Damong Maliit St., Novaliches, Quezon City', '937-3135', '', '', '', 'cash purchases', '', 'Mr. Eliseo Purification', '', 'Active', '0.00', 1, ''),
(969, 'PPI Pazipik Power, Inc.', 'Electrical Equipment Supplies', 0, '8 Lapu-lapu Ave., Magallanes Village, Makati City', '867-5620', '', '', '', 'cash purchases', '', 'Mr. Wilhelm S. Hug', '', 'Active', '0.00', 1, ''),
(970, 'RPV Electro Technology Phils. Corp.', 'Electrical Equipment Supplies', 0, 'Unit 206 2/F RCJ Bldg. Ortigas Ext., cor. Countryside, Sta. Lucia, Pasig City', '986-1075', '', '', '', 'cash purchases', '', 'Mr. Roland Vasquez', '', 'Active', '0.00', 1, ''),
(971, 'Rural Electrification Financing Corp.', 'Electrical Equipment Supplies', 0, 'Suite 401 OMM-Citra Bldg. 39 San Miguel Ave., Ortigas, Pasig City', '637-3664/ 687-1975', '', '', '', 'cash purchases', '', 'Mr. Thomas Villaflor', '', 'Active', '0.00', 1, ''),
(972, 'Seoul Electric Wire Co., LTD./ Shinseong Industrial Co. LTD.', 'Electrical Equipment Supplies', 0, '114 Cheonpyung-Ri, Samseong-Myun, Eumseong-Gun, Chungbuk, Korea', '(082) 43-8797200', '', '', '', 'cash purchases', '', 'Mr. Gyu Sung Choi', '', 'Active', '0.00', 1, ''),
(973, 'Shinseong Industrial Co., LTD. / Seoul Electric Wire Co., LTD.', 'Electrical Equipment Supplies', 0, '324-1 Ssangson-Ri, Mado-Myeon, Hwaseong-City, Gyeong Gi-Do, Korea', '(082) 31-3552660', '', '', '', 'cash purchases', '', 'Mr. Gyu Sung Choi', '', 'Active', '0.00', 1, ''),
(974, 'Trion, Inc.', 'Electrical Equipment Supplies', 0, '2307, 23F The Orient Square, Emerald Ave., Ortigas Center, Pasig City', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(975, 'Ecofilters Enterprises', 'Electrical Equipment Supplies', 0, 'Aguinaldo Hi-way, Anabu 1-F, Imus, Cavite', '6346-4721019', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(976, 'Soy Mei Advantage Multi Sales, Inc.', 'Electrical Equipment Supplies', 0, 'Suy  Yee Bldg. 156, 9th Ave., cor. Maria Clara St., Caloocan', '3658101 / 3658103 / 3657749', '', '362-0797', '', 'cash purchases', '', 'Rico Acuino', '', 'Active', '0.00', 1, ''),
(977, 'JZ Electrical Supply, Inc.', 'Electrical Equipment Supplies', 0, '805 Padilla St., San Miguel, Manila', '7359669', '', '', '', 'cash purchases', '', 'Judy Jarate', '', 'Active', '0.00', 1, ''),
(978, 'Electronic Way-System and Professional Services, Inc.', 'Electrical Equipment Supplies', 0, '3F Dali Bldg. 312 Lower Ferguson Rd. Brgy. Guisad, Baguio City', '(074) 619-4406', '', '', '', 'cash purchases', '', 'Mr. Edgardo D. Pili', '', 'Active', '0.00', 1, ''),
(979, 'Eternal Plans, Inc.', 'Electrical Equipment Supplies', 0, '20th Floor, Citystate Center, 709 Shaw Bldg., Pasig City', '706-3740 to 47 loc. 113', '', '', '', 'cash purchases', '', 'Mr. Rolly Bongalon', '', 'Active', '0.00', 1, ''),
(980, 'Fluxline Ind''l Electrical Distribution System, Inc.', 'Electrical Equipment Supplies', 0, '25 Annapolis St., Brgy., E. Rodriguez Sr., Cubao, Quezon City', '913-3276/439-8356', '', '', '', 'cash purchases', '', 'Ms. Nanette D. Nacional', '', 'Active', '0.00', 1, ''),
(981, 'Gates Asia, Inc. / Machinenfabrik Reinhausen', 'Electrical Equipment Supplies', 0, 'Unit 8Q Cyber One Bldg., Eastwood City Cyberpark Bagumbayan, Quezon City', '706-4607', '', '', '', 'cash purchases', '', 'Mr. Fernando V. Barreiro', '', 'Active', '0.00', 1, ''),
(982, 'Hanyang Electric Services and Supply Co. LTD.', 'Electrical Equipment Supplies', 0, 'Unit-207 Pacific Center Bldg., San Miguel Ave., Pasig City', '706-3918 to 19', '', '', '', 'cash purchases', '', 'Mr. Moon Seung Jang', '', 'Active', '0.00', 1, ''),
(983, 'Jersse Equipment & Supplies Sales, Inc.', 'Electrical Equipment Supplies', 0, '2195 Salvador St., Fortune Village I, Gen. T. de Leon, Valenzuela City', '292-0045/445-6025/292-0079', '', '', '', 'cash purchases', '', 'Mr. Jesus N. Senen, Jr.', '', 'Active', '0.00', 1, ''),
(984, 'KVAR Marketing Corp.', 'Electrical Equipment Supplies', 0, 'Rm. 202 The One Executive Office Bldg. West Ave., Quezon City', '374-8729', '', '', '', 'cash purchases', '', 'Mr. Percy G. Aranas', '', 'Active', '0.00', 1, ''),
(985, 'Machinenfabrik Reinhausen (MR)/Gate Asia, Inc.', 'Electrical Equipment Supplies', 0, 'Unit 8Q Cyber One Bldg., Eastwood City Cyberpark Bagumbayan, Quezon City', '706-4607', '', '', '', 'cash purchases', '', 'Mr. Fernando V. Barreiro', '', 'Active', '0.00', 1, ''),
(986, 'Metro Cis, Inc.', 'Electrical Equipment Supplies', 0, '79 F. Ramos Ext. Capitol Site Cebu City 6000', '387-4887', '', '', '', 'cash purchases', '', 'Ms. Marlene Divinagracia', '', 'Active', '0.00', 1, ''),
(987, 'Nema Electric Co. Inc.', 'Electrical Equipment Supplies', 0, '506 Calbayog St., Mandaluyong City', '531-4714', '', '', '', 'cash purchases', '', 'Mr. Jose Eugenio G. Sembrano', '', 'Active', '0.00', 1, ''),
(988, 'NGC Solutions', 'Electrical Equipment Supplies', 0, 'Unit Westgate Tower Madrigal Business Park, Alabang Muntinlupa City', '', '', '', '', 'cash purchases', '', 'Mr. Robert E. Fuaso', '', 'Active', '0.00', 1, ''),
(989, 'NRECA Phils.', 'Electrical Equipment Supplies', 0, 'Suite 401 OMM-Citra Bldg. 39 San Miguel Ave., Ortigas, Pasig City', '637-3665 to 67', '', '', '', 'cash purchases', '', 'Mr. Steven Krueger', '', 'Active', '0.00', 1, ''),
(990, 'New Technology and Business Solutions, Inc.', 'Electrical Equipment Supplies', 0, 'Unit 20, 67 Timog Ave., cor. Sct. Torillo St., 1103, Quezon City', '926-8300', '', '', '', 'cash purchases', '', 'Mr. Austin H. Go', '', 'Active', '0.00', 1, ''),
(991, 'Power Partners & Gen. Services Inc.', 'Electrical Equipment Supplies', 0, 'Mobile Numbers: 09175414143 / 09228754994', '', '', '6552167', '', 'cash purchases', '', 'Dante Katanyag', '', 'Active', '0.00', 1, ''),
(992, 'Filjoy Electrical & Electronic Trading and Services', 'Electrical Equipment Supplies', 0, '28 Washington St., Greenland Village Ph. I Nangka, Marikina City', '9411875 / Mobile: 09228641861', '', '', '', 'cash purchases', 'Supplier / Contractor', 'Philip P. Abarquez', '', 'Active', '0.00', 1, ''),
(993, 'Pilipinas Engine & Turbine Control, Inc.', 'Electrical Equipment Supplies', 0, '318 Michael Rua St., Better Living Subdivision, 1700, Para?aque City', '824 2863', '', '824 7040 / 821 0285', '', 'cash purchases', '', 'Arturo Olarte', '', 'Active', '0.00', 1, ''),
(994, 'Supersystems Enterprises', 'Electrical Equipment Supplies', 0, 'Blk. 24, lot 8, F. Reyes, 4117 Cavite', '8681075-00000', '', '', '', 'cash purchases', '', 'Mr. Ronald Gabis', '', 'Active', '0.00', 1, ''),
(995, 'Liang Chi Industry Phils. Inc.', 'Electrical Equipment Supplies', 0, 'Km. 20 Ortigas Ave., Ext., Bo., San Isidro, Taytay', '658-8769 / Mobile: 09279738888', '', '658-8529', '', 'cash purchases', '', 'Mr. Howard Chua', '', 'Active', '0.00', 1, ''),
(996, 'Pestano Enterprises', 'Electrical Equipment Supplies', 0, '1482- A, M. J. Cuenco, Mabolo, Cebu', '32-2320543', '', '', '', 'cash purchases', '', 'Mr. Danny Pestano', '', 'Active', '0.00', 1, ''),
(997, 'Festo Inc.', 'Electrical Equipment Supplies', 0, 'Km. 18, West Service Road, South Superhighway, Para?aque', '7766888', '', '8234219 / 8234220', '', 'cash purchases', '', 'Sammy Natividad', '', 'Active', '0.00', 1, ''),
(998, 'Grace dela Pena', 'Electrical Equipment Supplies', 0, 'B-1, L-2 Greenheight Subd., Exe., F. Manalo St., Brgy., San Isidro, Rizal', '654-5913', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(999, 'Cifra Marketing Corporation', 'Electrical Equipment Supplies', 0, '4229 Mojica St., Bangkal, Makati', '8446732 / 7288052', '', '', '', 'cash purchases', '', 'Mr. Alvin Ayco', '', 'Active', '0.00', 1, ''),
(1000, 'TERI', 'Engineering Services', 0, '#5872 Enriquez St., Poblacion, Makati City', '8886399', '', '', '', 'cash purchases', '', 'Ms. Angie', '', 'Active', '0.00', 1, ''),
(1001, 'Lapwoods Inc.', 'Engineering Services', 0, '36 J. Zaragosa St., Araneta Subd., QC', '7142375', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1002, 'Clarkson Industrial Supply', 'Engineering Services', 0, '#1417 Severino Reyes St., Sta. Cruz, Manila', '7118602', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1003, 'Qamtis Engineering Services', 'Engineering Services', 0, 'Km. 14 Edison Ave., West Service Road, Para?aque City', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1004, 'Golten Singapore Pte. Ltd.', 'Engineering parts', 0, 'No. 6A Benoi Rd., Singapore 629881', '+65-6861-5220', '', '', '', 'cash purchases', '', 'Ms. Shervel Toh/Nyein Toe', '', 'Active', '0.00', 1, ''),
(1005, 'Technomarine Co., Ltd.', 'Engineering parts', 0, '1-27, 1-Chrome, Hyogo-cho, Hyogo-Ku, Kobe, Japan', '+81-78-685-0250', '', '', '', 'cash purchases', '', 'Mr. Hideru Yamaguchi', '', 'Active', '0.00', 1, ''),
(1006, 'Man Diesel & Turbo', 'Engineering parts', 0, '', '', '', '', '', 'cash purchases', '', 'Mr. Sebastien Marchend', '', 'Active', '0.00', 1, ''),
(1007, 'Future East Trading', 'engine parts', 0, 'Pandacan, Manila', '2098565 / Mobile: 09158685578', '', '507155289', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1008, 'Mac Tools Inc.', 'engine parts', 0, '189 Del Monte Ave., QC', '4141984 / Mobile: 09228638226', '', '', '', 'cash purchases', '', 'Mr. Roger Barros', '', 'Active', '0.00', 1, ''),
(1009, 'IESG Trading & Gen. Merchandise', 'engine parts', 0, '', '', '', '3614841', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, '');
INSERT INTO `vendor_head` (`vendor_id`, `vendor_name`, `product_services`, `category_id`, `address`, `phone_number`, `mobile_number`, `fax_number`, `email`, `terms`, `type`, `contact_person`, `notes`, `status`, `ewt`, `vat`, `tin`) VALUES
(1010, 'Industrial Equipment Service Corp.', 'engine parts', 0, 'Region 4-A, Calabarzon, Amadeo Cavite', '46-6875844 / Mobile Numbers: 0928-3431565 / 0908-4437939', '', '', '', 'cash purchases', '', 'Ms. Rica Nabong', '', 'Active', '0.00', 1, ''),
(1011, 'All Tools Industrial Sales & Services', 'engine parts', 0, '#16 Frankfort St., Mercedes Exec. Village', '5420988 / 4011783 / 6419811', '', '', '', 'cash purchases', '', 'Ms. Laarni Mata', '', 'Active', '0.00', 1, ''),
(1012, 'Power Tools Master Philippines', 'engine parts', 0, '6/F WC Building, 2438, Belarmino St., Makati City', '7960450', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1013, 'Universal Techno Piping Corporation', 'Valves & Fittings', 0, 'Blk. 55, Lot 36 Capitoline Hills cor. Abel Nosce St., BF Resort Village, Las Pi?as City', '872-4484 / 872-7634 / Mobile Numbers: 0917-5846595 / 0922-8004895', '', '871-0405', '', 'cash purchases', '', 'Amina Mubarik', '', 'Active', '0.00', 1, ''),
(1014, 'Makati Foundry', 'Valves & Fittings', 0, '9120 Constancia corner Sultana St., Makati', '8990431 / 8990154 / 8990151', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1015, 'Morethanall Trading', 'Valves & Fittings', 0, '#5 La Segovia, Bf Resort Village, Las Pi', '871-6221', '', '', '', 'cash purchases', '', 'Mr. Romeo Silawan', '', 'Active', '0.00', 1, ''),
(1016, 'Dai Plastikos Inc.', 'Valves & Fittings', 0, 'Tinejeros, Malabon City', '2881292', '', '', '', 'cash purchases', '', 'Mr. Gener Sevilla', '', 'Active', '0.00', 1, ''),
(1017, 'Technosam Corporation', 'Valves & Fittings', 0, 'Unit 2 Facilities Centre, Bldg. Shaw Blvd., Mandaluyong', '5348548 / Mobile: 0927-7810551', '', '534-9625', '', 'cash purchases', '', 'Ms. Emily / Apple Santino', '', 'Active', '0.00', 1, ''),
(1018, 'Twins Luck Enterprises', 'Valves & Fittings', 0, '3, Bellarmine, Kabo Pio St., Barangka', '7996521 / 9474919', '', '', '', 'cash purchases', '', 'Ms. Lualhati Ablen', '', 'Active', '0.00', 1, ''),
(1019, 'Luzon Foundry Inc.', 'Valves & Fittings', 0, '8 Hernandez St., San Francisco del Monte, Quezon City', '3728910', '', '3716023', '', 'cash purchases', '', 'Mr. Gilbert Gosiaco', '', 'Active', '0.00', 1, ''),
(1020, 'One Crest Trading Inc.', 'Valves & Fittings', 0, '#187, 24th St., Valenzuela M.M.', '2924792', '', '2924792', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1021, 'Pelco Asia Pacific Pte., Ltd.', '', 0, '10 Ang Mio Ko Street 65, #02-15/16 Techpoint, Singapore 569059, SINGAPORE', '+65 6480 3700', '', '+65 6720 8873', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1022, 'Caltex Philippines, Inc.', 'lubricants', 0, '6F 6750 Ayala Avenue, Makati City', '841-1662', '', '841-1761', '', 'cash purchases', '', 'Andrea Bautista', '', 'Active', '0.00', 1, ''),
(1023, 'Grand Asian Sales', 'chemicals', 0, 'The Bon. Plaza, Ortigas, San Juan', '', '', '724-4328', '', 'cash purchases', '', 'Jing Zu?iga', '', 'Active', '0.00', 1, ''),
(1024, 'NALCO Philippines Inc.', 'chemicals', 0, '18F W Fifth Avenue Building, 5th Avenue, Bonifacio Global City, Taguig, Philippines', '548-9500 / 548-9651 / Mobile Number: 0918-9047971', '', '', '', '30 Days PDC', '', 'Ms. Maria Katrina A. Pulutan', '', 'Active', '0.00', 1, ''),
(1025, 'Aerostar Chemical', 'chemicals', 0, 'Llanar Bldg., B. Serrano Ave., Q.C.', '634-001', '', '633-6780', '', 'cash purchases', '', 'Annie Altoveros', '', 'Active', '0.00', 1, ''),
(1026, 'Alichem', 'chemicals', 0, '93 Toclong St., Imus, Cavite', '434-1643', '', '434-3678', '', 'cash purchases', '', 'Aina San Juan', '', 'Active', '0.00', 1, ''),
(1027, 'Cynodav Chemicals', 'chemicals', 0, '86 Mother Ignacia, Timog, Quezon City', '410-9854', '', '410-9854', '', 'cash purchases', '', 'Cathy dela Torre', '', 'Active', '0.00', 1, ''),
(1028, 'Easy Chemical', 'chemicals', 0, '7486 Santillan St., Makati City', '843-6576 / 817-0991', '', '817-6748', '', 'cash purchases', '', 'Lucy Sumague', '', 'Active', '0.00', 1, ''),
(1029, 'Forza Kemika, Inc.', 'chemicals', 0, '251-267 EDSA Corinthian, Mandaluyong', '724-2061 / 727-3950', '', '724-2061', '', 'cash purchases', '', 'Agnes Hipolito', '', 'Active', '0.00', 1, ''),
(1030, 'Kemtrends Industrial Sales', 'chemicals', 0, '868 Bldg. Rm. 202, San Andres cor. Leon Guinto, Malate Manila', '524-6539', '', '536-5189', '', 'cash purchases', '', 'Meriam Sauro', '', 'Active', '0.00', 1, ''),
(1031, 'Lead Marketing', 'chemicals', 0, '3rd Floor, Quadstar Bldg., Ortigas, Greenhills', '721-9348 / 721-5477', '', '722-6021', '', 'cash purchases', '', 'Nhilah Gatus', '', 'Active', '0.00', 1, ''),
(1032, 'Luckymec Star', 'chemicals', 0, '512, 5th Floor, Healthcard bldg., Makati', 'Mobile: 0918-817-5199', '', '455-3519', '', 'cash purchases', '', 'Rowena Carpio', '', 'Active', '0.00', 1, ''),
(1033, 'Straightway Trading', 'chemicals', 0, '339 Sen. Gil Puyat Ave., Makati City', '896-0161 / 895-3755', '', '897-7495', '', 'cash purchases', '', 'Maribel Menor', '', 'Active', '0.00', 1, ''),
(1034, 'Topline', 'chemicals', 0, '775 Del Pilar St., Caridad, Cavite', '431-2681', '', '431-2681', '', 'cash purchases', '', 'Edwin Tan', '', 'Active', '0.00', 1, ''),
(1035, 'Goltens Hongkong', 'Fabricators/machine shop', 0, '44, Cha Kwo Ling Rd., Hongkong', '775-0161', '', '772-6054', '', 'cash purchases', '', 'Steven Cheong', '', 'Active', '0.00', 1, ''),
(1036, 'MECCRON', 'Fabricators/machine shop', 0, '381 Sta., Veronica St., Para?aque', '820-7491 / 826-0981', '', '829-7765', '', 'cash purchases', '', 'Ruby de Guia', '', 'Active', '0.00', 1, ''),
(1037, 'Phil-Electro Services', 'Fabricators/machine shop', 0, '141 Pinatubo St., Mandaluyong City', '531-0181', '', '533-2088', '', 'cash purchases', '', 'Paul Evangelista', '', 'Active', '0.00', 1, ''),
(1038, 'Thomason Mech''l', 'Fabricators/machine shop', 0, '19002 South Sta., Fe, Dominguez, CA', '(310) 639-3523', '', '639-7476', '', 'cash purchases', '', 'James Siegert', '', 'Active', '0.00', 1, ''),
(1039, 'Algonics Corporation', 'Fabricators/machine shop', 0, 'Subandaku, Mandaue City', '(032) 346-4657', '', '(032) 346-4657', '', 'cash purchases', '', 'Alfredo Chua', '', 'Active', '0.00', 1, ''),
(1040, 'CC. Barleta Service', 'Fabricators/machine shop', 0, '685 Aurora Blvd., Cubao, Q.C.', '724-3811 / 727-1729', '', '721-4541', '', 'cash purchases', '', 'Senen Gorostiza', '', 'Active', '0.00', 1, ''),
(1041, 'Vanderhorst Tech.', 'Fabricators/machine shop', 0, 'L8 B4, FCIE, Bo. Langkaan, Dasma., Cavite', '402-0303-09', '', '402-0301', '', 'cash purchases', '', 'Leopoldo Tang', '', 'Active', '0.00', 1, ''),
(1042, 'Alidon Engineering', 'Engineering Services', 0, '93 Toclong St., Imus, Cavite', '434-1643', '', '434-3678', '', 'cash purchases', '', 'Deonardo San Juan', '', 'Active', '0.00', 1, ''),
(1043, 'Allengine Systems, Corp.', 'Engineering Services', 0, 'Unit 206, Garner Bldg., Raymundo Ave., Pasig City', '641-3796', '', '641-3796', '', 'cash purchases', '', 'Eman Gardon', '', 'Active', '0.00', 1, ''),
(1044, 'Asian Constn & Dev.', 'Engineering Services', 0, 'Sen. Gil Puyat Ave, Makati City', '890-6337', '', '890-6421', '', 'cash purchases', '', 'Mr. J.V. Espiritu', '', 'Active', '0.00', 1, ''),
(1045, 'E.C. Caldejon', 'Engineering Services', 0, 'Sapa, Rosario, Cavite', '438-2231', '', '', '', 'cash purchases', '', 'Engr. Dino', '', 'Active', '0.00', 1, ''),
(1046, 'Langit Const''n', 'Engineering Services', 0, '231 Gen. Trias, Cavite', '', '', '', '', 'cash purchases', '', 'Engr. Langit', '', 'Active', '0.00', 1, ''),
(1047, 'Roos Ind''l Const''n', 'Engineering Services', 0, 'Reyes Cmpd., Sucat, Para?aque', '820-6759 / 825-8158', '', '820-5439', '', 'cash purchases', '', 'Aldrin Abueg', '', 'Active', '0.00', 1, ''),
(1048, 'Starlight Engineering', 'Engineering Services', 0, '366 Panamitan, Kawit, Cavite', '436-2236', '', '', '', 'cash purchases', '', 'Ronnie Rieta', '', 'Active', '0.00', 1, ''),
(1049, 'Technolauncher', 'Engineering Services', 0, 'Rosario, Cavite', '971-0229-32', '', '', '', 'cash purchases', '', 'Jun Ducat', '', 'Active', '0.00', 1, ''),
(1050, 'Yutani Builders', 'Engineering Services', 0, 'Cuevas Subd., Tejero, Rosario, Cavite', '971-1105', '', '', '', 'cash purchases', '', 'Shinzo Yutani', '', 'Active', '0.00', 1, ''),
(1051, 'Astro Ready Mix Corp.', 'Industrial services', 0, 'Palico IV, Imus, Cavite', '(46) 970-2973', '', '(46) 970-2975', '', 'cash purchases', '', 'Benny Pulido', '', 'Active', '0.00', 1, ''),
(1052, 'Arkay Energy and Industrial Corporation', 'Insulations / fabricator', 0, '4/F PTFM Bldg., L.M. Guerrero, Makati', '899-3313/3179', '', '899-3407/3180', '', 'cash purchases', '', 'Eddie Boy De Guia', '', 'Active', '0.00', 1, ''),
(1053, 'Abstract Industrial Sales', 'Insulations', 0, 'Suite 405, Geechee bldg., Mabini St., Caloocan City', '287-5268', '', '287-6996', '', 'cash purchases', '', 'Noel Patalay', '', 'Active', '0.00', 1, ''),
(1054, 'Arisco Machineries & Supplies', 'machinery & fabrication', 0, 'Rm. 304, Verde Oro, Bldg., 535 Commonwealth Ave., Diliman, Quezon City', '932-1517/932-1736', '', '932-1520', '', 'cash purchases', '', 'Bim Aribon', '', 'Active', '0.00', 1, ''),
(1055, 'Clean Systems Technology, Inc.', 'safety & environmental consultants', 0, '3-A-2 La Cor Royale New Intramuros Village, Diliman', '932-5925', '', '932-5925', '', 'cash purchases', '', 'Raffy Martinez', '', 'Active', '0.00', 1, ''),
(1056, 'CRL Environmental Corp.', 'safety & environmental consultants', 0, 'Bldg., 7547 Jose Topacio St., Clark Field, Pampanga', '840-4071', '', '816-0329', '', 'cash purchases', '', 'Elvie Arizabal', '', 'Active', '0.00', 1, ''),
(1057, 'Dames & Moore', 'safety & environmental consultants', 0, 'Adamson, Makati', '892-8026', '', '817-9491', '', 'cash purchases', '', 'Emmanuel Guillermo', '', 'Active', '0.00', 1, ''),
(1058, 'Erthco Environmental Service', 'safety & environmental consultants', 0, '17th Floor, Phil. Stock Exchange Center, Pasig', '635-5225', '', '635-5230', '', 'cash purchases', '', 'Torben Kusk', '', 'Active', '0.00', 1, ''),
(1059, 'Geosphere Tech.', 'safety & environmental consultants', 0, '19 D Eisenhower Tower, Greenhills, SJ', '723-4250', '', '723-4250', '', 'cash purchases', '', 'Luna/L. dela Cruz', '', 'Active', '0.00', 1, ''),
(1060, 'Manufacturer Market', 'safety & environmental consultants', 0, '4716 Eduque St., Makati', '818-3272', '', '818-3291', '', 'cash purchases', '', 'Noli Espinelli', '', 'Active', '0.00', 1, ''),
(1061, 'NPC (N.P. Cabance)', 'safety & environmental consultants', 0, '171 Ilang-Ilang St., Caloocan City', '364-6639', '', '364-6639', '', 'cash purchases', '', 'Nyhr P. Cabanse', '', 'Active', '0.00', 1, ''),
(1062, 'Technical Experts on Environmental Management', 'safety & environmental consultants', 0, 'TEEM bldg., Lot 10 Blk. 6, Orange St., Godwill 2 Subd., BF Para?aque City', '826-9871', '', '826-9589', '', 'cash purchases', '', 'Glenn Dale Delica', '', 'Active', '0.00', 1, ''),
(1063, 'Woodward-Clyde', 'safety & environmental consultants', 0, 'Alcco Bldg., Ortigas, Greenhills', '727-0261', '', '722-9492', '', 'cash purchases', '', 'Efren Salazar', '', 'Active', '0.00', 1, ''),
(1064, 'Benedict Safety Shoes & Ind.', 'PPE products and safety wear', 0, 'G/F PEI Bldg., 1927 A. Linao St., Malate, Manila', '400-1111', '', '400-1111', '', 'cash purchases', '', 'Adonis Saloma', '', 'Active', '0.00', 1, ''),
(1065, 'Infinity Medical Supplies', 'safety supplies & equipment', 0, '416 Tanggulan St., Wakas, Kawit, Cavite', '436-2632', '', '436-2632', '', 'cash purchases', '', 'Jun Abrigo', '', 'Active', '0.00', 1, ''),
(1066, 'Mercury Drug Corporation', 'medical supplies', 0, 'Binakayan Branch, Binakayan, Cavite', '434-9589', '', '434-9588', '', 'cash purchases', '', 'Mhel/Nora', '', 'Active', '0.00', 1, ''),
(1067, 'Vette Industrial Sales, Co.', 'safety supplies & equipment', 0, '16 Gen. Vicente Lim St., San Juan, MM', '726-7116', '', '727-1395', '', 'cash purchases', '', 'Henry Tan', '', 'Active', '0.00', 1, ''),
(1068, 'Garden Marketing', 'horticultural industry', 0, '106 Moana St., F.B. Harrison St., Pasay City', '831-5988/8291/5904', '', '834-2314', '', 'cash purchases', '', 'Donna', '', 'Active', '0.00', 1, ''),
(1069, 'Shoemart', '', 0, 'Bacoor, Cavite', '417-0869/0332/2796', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1070, 'Arloi Trading', 'consumables', 0, '87 Captain Legaspi St., Imus, Cavite', '471-0613', '', '471-0613', '', 'cash purchases', '', 'Arnel Papa', '', 'Active', '0.00', 1, ''),
(1071, 'ATCO', 'auto supplies', 0, '275 A-60 Taft Ave., Ext., Pasay City', '831-6365', '', '831-4177', '', 'cash purchases', '', 'Lawrence Tan', '', 'Active', '0.00', 1, ''),
(1072, 'All Transport  Brokerage', 'brokers', 0, '3 Sta. Agueda Ave., Pagcor Drive, Para?aque City', '551-4646', '', '831-7406', '', 'cash purchases', '', 'Rod/Oscar', '', 'Active', '0.00', 1, ''),
(1073, 'Coltrans', 'brokers', 0, '2253 Aurora Blvd., Pasay City', '833-2551', '', '833-2358', '', 'cash purchases', '', 'Leilani Bolante', '', 'Active', '0.00', 1, ''),
(1074, 'SDV Philippines', 'brokers', 0, 'Unit 1 & 2 JJM Bldg., Kaingin Rd. Multinational Vill. Para?aque City', '776-3651', '', '776-3681', '', 'cash purchases', '', 'Annabel', '', 'Active', '0.00', 1, ''),
(1075, 'Aqua-Line Integrated Sys.', 'Pumps & Motors', 0, 'Pasda Mansion, #77 Panay cor. Carlos P. Garcia, Quezon City', '411-1899', '', '373-0646', '', 'cash purchases', '', 'Rufo Mejia', '', 'Active', '0.00', 1, ''),
(1076, 'Amalgamated Inst. Co.', 'Instrumentation Parts', 0, 'Unit 5/28 Leighton Place, Hornsby, NSW, Australia', '(02) 94762244', '', '(02) 9476-2902', '', 'cash purchases', '', 'Peter Eliot', '', 'Active', '0.00', 1, ''),
(1077, 'California Trading', 'Instrumentation Parts', 0, '31 Capinpin St., San Antonio Vill. Pasig City', '637-9156/58', '', '631-3234', '', 'cash purchases', '', 'Edgardo Villanueva', '', 'Active', '0.00', 1, ''),
(1078, 'Delrene EB Controls Center', 'Instrumentation Parts', 0, '461 Urdaneta St., Guadalupe, Makati', '819-0536/844-2661', '', '818-0547', '', 'cash purchases', '', 'Alberto Arcaya', '', 'Active', '0.00', 1, ''),
(1080, 'Eagle Process', 'Instrumentation Parts', 0, 'Alfaro St., Salcedo Village, Makati', '817-1940/817-1947', '', '810-5590', '', 'cash purchases', '', 'Mhar Baquial', '', 'Active', '0.00', 1, ''),
(1081, 'Eco Triangle', 'Instrumentation Parts', 0, 'Governor Dr., Langcaan I, Dasmari?as, Cavite', '401-0472/813-4372', '', '818-3880', '', 'cash purchases', '', 'Lites Morales', '', 'Active', '0.00', 1, ''),
(1082, 'European Products', 'Instrumentation Parts', 0, 'S 1015 Cityland Herrera St., Makati', '753-1913', '', '845-0701', '', 'cash purchases', '', 'Danny Rodis', '', 'Active', '0.00', 1, ''),
(1083, 'Fulltech Inc.', 'Instrumentation Parts', 0, '305 Estuar Bldg., 41 Timog, Q.C.', '927-5146', '', '413-3404', '', 'cash purchases', '', 'Gerry Soriano', '', 'Active', '0.00', 1, ''),
(1084, 'Hyper Electro', 'Instrumentation Parts', 0, 'H.V. dela Costa St., Ayala, Makati', '894-2554/894-2110', '', '894-2556', '', 'cash purchases', '', 'Neil Ecliza', '', 'Active', '0.00', 1, ''),
(1085, 'I & CS Inst''n', 'Instrumentation Parts', 0, '302 Ortigas Ave., Greenhills, San Juan', '721-6576/724-1684', '', '721-2163', '', 'cash purchases', '', 'Ronald Aldover', '', 'Active', '0.00', 1, ''),
(1086, 'IEC Controls', 'Instrumentation Parts', 0, '853 Ilang-Ilang St., Ayala, Mandaluyong', '531-4044/533-2570', '', '533-7467', '', 'cash purchases', '', 'Rolly Olanday/Alvin', '', 'Active', '0.00', 1, ''),
(1087, 'Lodestar Engineering', 'Instrumentation Parts', 0, 'Ramon Magsaysay Blvd., Q.C.', '713-3340/716-3060', '', '716-0288', '', 'cash purchases', '', 'Bim Aribon', '', 'Active', '0.00', 1, ''),
(1088, 'Manila Fluid System Comp., Inc.', 'Instrumentation Parts', 0, 'Unit 2, Bldg. 2, Oyster Ind''l Complex, NAIA Ave., cor. Kabiasnan Rd., Para?aque City', '829-1933', '', '829-1934', '', 'cash purchases', '', 'Tony de Leon', '', 'Active', '0.00', 1, ''),
(1089, 'Radium Engineering', 'Instrumentation Parts', 0, '1756 Dimasalang St., Sampaloc, Manila', '741-6556/732-6125', '', '731-2610', '', 'cash purchases', '', 'Freddie Saguiente', '', 'Active', '0.00', 1, ''),
(1090, 'Uniwell Tech. Corp.', 'Instrumentation Parts', 0, '750 Shaw Blvd., Mandaluyong City', '633-4841/44', '', '633-8403', '', 'cash purchases', '', 'Bernardo Sevilla', '', 'Active', '0.00', 1, ''),
(1091, 'Access Frontier Tech.', 'Electrical Equipment Supplies', 0, 'Unit 702 Greenbelt Mansion, Legaspi Village, Makati City', '892-3883', '', '892-3882', '', 'cash purchases', '', 'Judith', '', 'Active', '0.00', 1, ''),
(1092, 'Pinnacle Marketing', 'Electrical Equipment Supplies', 0, '1401-A Narcisa Rizal St., Sta. Cruz, Manila', '252-1746/252-1739', '', '252-7966', '', 'cash purchases', '', 'Henry Kho', '', 'Active', '0.00', 1, ''),
(1093, 'Southern Com''l', 'Electrical Equipment Supplies', 0, 'Rosario, Cavite', '438-1072', '', '438-4492', '', 'cash purchases', '', 'Joseph Sy', '', 'Active', '0.00', 1, ''),
(1094, 'Winflex Ind''l', 'Electrical Equipment Supplies', 0, '1713 Oroquieta St., Sta. Cruz, Manila', '711-6872/712-8704', '', '711-6241', '', 'cash purchases', '', 'Jay Co', '', 'Active', '0.00', 1, ''),
(1095, 'AR Materials', 'engine parts', 0, 'Rep. Steel Tube Cpd., Km. 16, Alabang, Zapote Rd., Las Pi?as City', '872-4341', '', '872-4341', '', 'cash purchases', '', 'Mr. Ner', '', 'Active', '0.00', 1, ''),
(1096, 'Fuji Trading Co.', 'engine parts', 0, '6 Fukaehamamachi, Higasninada, Kobe', '0081-78413-2605', '', '78435-2023', '', 'cash purchases', '', 'Mr. Akazawa', '', 'Active', '0.00', 1, ''),
(1097, 'I & N International', 'engine parts', 0, '86 F Mariano Ave., dela Paz, Pasig City', '645-4499/915-9220', '', '645-6862', '', 'cash purchases', '', 'Mr. Ijima', '', 'Active', '0.00', 1, ''),
(1098, 'Man B & W Diesel', 'engine parts', 0, '29 Tuas Ave., Singapore', '65-862-1401', '', '862-1409', '', 'cash purchases', '', 'John Co', '', 'Active', '0.00', 1, ''),
(1099, 'Niigata Philippines', 'engine parts', 0, '8th Floor, 8741 Paseo de Roxas, Makati', '812-3874', '', '812-3915', '', 'cash purchases', '', 'Mr. Garinganao', '', 'Active', '0.00', 1, ''),
(1100, 'S.E.M.T. Pielstick', 'engine parts', 0, 'Ave., de Chatony, Porte 427, 44615', '0033-240-906621', '', '240-906898', '', 'cash purchases', '', 'Mr. Dilage', '', 'Active', '0.00', 1, ''),
(1101, 'S.E.M.T. Pielstick (Philippines)', 'engine parts', 0, 'Philippines', '02-751-8755', '', '892-6054', '', 'cash purchases', '', 'Patrice Mauger', '', 'Active', '0.00', 1, ''),
(1102, 'Stamo Incorporated', 'engine parts', 0, '7373 Bakawan St., San Antonio, Makati', '843-3311-13', '', '818-3240', '', 'cash purchases', '', 'Melvin Sitaca', '', 'Active', '0.00', 1, ''),
(1103, 'Swan & Concorde', 'engine parts', 0, '821 Alvarado St., Binondo, Manila', '244-2141/2147', '', '244-0212', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1104, 'Archipelago Mach.', 'sulzer parts', 0, 'Valero St., Salcedo Vill. Makati City', '812-2680', '', '817-6605', '', 'cash purchases', '', 'Jose Maroma', '', 'Active', '0.00', 1, ''),
(1105, 'Thermotronics', 'sulzer parts', 0, '307 Roman Cond. P. Tamo, Makati', '471-4464/471-0751', '', '471-5286', '', 'cash purchases', '', 'Cesar Garcia', '', 'Active', '0.00', 1, ''),
(1106, 'Arte Well Drilling', 'engine auxiliaries', 0, 'B24, 120 Grape St., Springville West, Phase 3, Molino, Bacoor, Cavite', '(46) 572-2369', '', '(46) 572-2370', '', 'cash purchases', '', 'Romulo Gapuz', '', 'Active', '0.00', 1, ''),
(1107, 'Aboitiz', 'consumables', 0, 'SM, Bacoor, Cavite', '970-4496', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1108, 'Ace Hardware', 'consumables', 0, 'SM, Bacoor, Cavite', '970-7824', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1109, 'Alter Ego Marketing', 'consumables', 0, '112 Talayan St., Talayan Village, Q.C.', '9292166/9395404', '', '937-7115', '', 'cash purchases', '', 'John Tan', '', 'Active', '0.00', 1, ''),
(1110, 'Cartrack Car Acc.', 'consumables', 0, 'SM, Bacoor, Cavite', '970-5080-82', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1111, 'DHL Worlwide', 'consumables', 0, 'Aguinaldo Hiway, Niog, Bacoor, Cavite', '970-5053-54/9710449', '', '', '', 'cash purchases', '', 'Lani Nocon', '', 'Active', '0.00', 1, ''),
(1112, 'GA Technology Corp.', 'consumables', 0, '544 Banawe St., cor. Calamba, Sta. Mesa Hts., Q.C.', '741-7819', '', '741-5848', '', 'cash purchases', '', 'Nida Dampios', '', 'Active', '0.00', 1, ''),
(1113, 'Gold Wood', 'consumables', 0, 'SM, Bacoor, Cavite', '970-9602', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1114, 'National Telecommunication Com', 'consumables', 0, 'BIR Road, Q.C.', '741-7819', '', '741-5848', '', 'cash purchases', '', 'Deth Baladjay', '', 'Active', '0.00', 1, ''),
(1115, 'National Bookstore', 'consumables', 0, 'SM, Bacoor, Cavite', '970-5031/33', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1116, 'Uniwide', 'consumables', 0, 'Las Pi?as City', '800-0026/633-3737', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1117, 'Asian Alliance Ent.', 'consumables', 0, '1375 Abad Santos St., Tondo, Manila', '255-1450', '', '255-1453/9452', '', 'cash purchases', '', 'Livi', '', 'Active', '0.00', 1, ''),
(1118, 'Contrade Enterprises, Inc.', 'consumables', 0, '475 Jabones St., Binondo, Manila', '423-0567/78', '', '242-2770', '', 'cash purchases', '', 'Romy Reyes/Daly', '', 'Active', '0.00', 1, ''),
(1119, 'Orient Faith', 'consumables', 0, 'Marcelia St., Bo. Bagbag, Rosario', '971-0741', '', '438-3777', '', 'cash purchases', '', 'Jocelyn', '', 'Active', '0.00', 1, ''),
(1120, 'Parmar Enterprises', 'consumables', 0, 'Gen. Trias Drive, Rosario, Cavite', '971-0030', '', '971-1032', '', 'cash purchases', '', 'Boyet', '', 'Active', '0.00', 1, ''),
(1121, 'Reflections', 'consumables', 0, 'Noveleta, Cavite', '438-0658', '', '438-0658', '', 'cash purchases', '', 'Mrs. Cerbo', '', 'Active', '0.00', 1, ''),
(1122, 'Super Quality', 'consumables', 0, 'Gen. Trias Drive, Rosario, Cavite', '971-0479', '', '971-0480', '', 'cash purchases', '', 'Mags Sarao', '', 'Active', '0.00', 1, ''),
(1123, 'Ching''s Furniture', 'furniture', 0, 'Rosario, Cavite', '437-8117', '', '', '', 'cash purchases', '', 'Mayen', '', 'Active', '0.00', 1, ''),
(1124, 'Design Crest', 'furniture', 0, 'Unit D & E, GBW Bldg., Quezon Ave., QC', '711-0529', '', '711-0652', '', 'cash purchases', '', 'Lolit', '', 'Active', '0.00', 1, ''),
(1125, 'Compromise', 'computer equipment & supplies', 0, 'Computer Bldg., 906 Dugue, Quiapo,', '734-3774/2785', '', '734-2260', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1126, 'Cybernnet Corp.', 'computer equipment & supplies', 0, '2117 Cityland, 10 Tower, Makati City', '894-1577/0520', '', '894-2127', '', 'cash purchases', '', 'Vic Aquino', '', 'Active', '0.00', 1, ''),
(1127, 'Data Price', 'computer equipment & supplies', 0, '568 C Sierra Madre St., Mandaluyong', '531-3978', '', '532-5782', '', 'cash purchases', '', 'Julie Lichauco/Fe', '', 'Active', '0.00', 1, ''),
(1128, 'Matcom Sales', 'computer equipment & supplies', 0, '382 Marseilla St., Rosario, Cavite', '438-0652', '', '438-2333', '', 'cash purchases', '', 'Edgar Matriano', '', 'Active', '0.00', 1, ''),
(1129, 'Tricom Dynamics', 'computer equipment & supplies', 0, 'G/F Metrohouse Sen. Gil Puyat, Makati', '890-6525', '', '890-0698', '', 'cash purchases', '', 'Selene Puentespina', '', 'Active', '0.00', 1, ''),
(1130, 'Abenson Appliances', 'air conditioning equipment', 0, '269 Alabang Zapote, Rd., Las Pi', '801-0577', '', '801-0576', '', 'cash purchases', '', 'Angie Bael', '', 'Active', '0.00', 1, ''),
(1131, 'Abenson Incorporated', 'air conditioning equipment', 0, 'Emperor Building, Rosario, Cavite', '(46) 438-5458', '', '(46) 438-5450', '', 'cash purchases', '', 'Toni Gervacio', '', 'Active', '0.00', 1, ''),
(1132, 'Airwell Trading', 'air conditioning equipment', 0, '36 D Anakbayan St., Paltok, SFDM', '411-3423', '', '411-3423', '', 'cash purchases', '', 'Jong Almoete', '', 'Active', '0.00', 1, ''),
(1133, 'DCP Electrical', 'air conditioning equipment', 0, 'Noveleta, Cavite', '438-2102', '', '', '', 'cash purchases', '', 'Rusty Perez', '', 'Active', '0.00', 1, ''),
(1134, 'DTS Trading', 'air conditioning equipment', 0, '298-A, Magdiwang, Noveleta, Cavite', '438-3098', '', '438-3098', '', 'cash purchases', '', 'Raymond Sy', '', 'Active', '0.00', 1, ''),
(1135, 'RC Electrical', 'air conditioning equipment', 0, 'Caridad St., Cavite City', '504-1961', '', '504-1961', '', 'cash purchases', '', 'Mrs. Cresini', '', 'Active', '0.00', 1, ''),
(1136, 'Al-Things Enterprises', 'printing press', 0, '87 Sisa St., Sampaloc, Manila', '740-7561', '', '740-7561', '', 'cash purchases', '', 'Emilie Vina', '', 'Active', '0.00', 1, ''),
(1137, 'Aquino Art Printers', 'printing press', 0, '371 Salcedo St., Noveleta, Cavite', '438-0502', '', '438-0502', '', 'cash purchases', '', 'Edgardo Aquino', '', 'Active', '0.00', 1, ''),
(1138, 'Bonaventure Graphics Corp.', 'printing press', 0, '#20 Mayami Street, Cubao, Q.C.', '242-9685', '', '911-8765', '', 'cash purchases', '', 'Orly Cruz', '', 'Active', '0.00', 1, ''),
(1139, 'Guiterrez Printing', 'printing press', 0, '172 Marceilla St., Noveleta, Cavite', '971-1594', '', '438-1144', '', 'cash purchases', '', 'Dennis Gutierrez', '', 'Active', '0.00', 1, ''),
(1140, 'Mae & Co., Inc.', 'printing press', 0, 'G/F 871 Isabel Bldg., Florentino, Manila', '740-3086/740-3091', '', '741-3086', '', 'cash purchases', '', 'Manny Escuin', '', 'Active', '0.00', 1, ''),
(1141, 'T-Square Printing', 'printing press', 0, 'Hi-way Magdiwang, Noveleta', 'Mobile: 0918-803-0984', '', '', '', 'cash purchases', '', 'Tonie Taglinao', '', 'Active', '0.00', 1, ''),
(1142, 'A.B. Congbalay', 'Industrial', 0, 'Binkayan, Kawit, Cavite', '434-1881', '', '434-7885', '', 'cash purchases', '', 'Alex Congbalay', '', 'Active', '0.00', 1, ''),
(1143, 'Cobey Flex Enterprises', 'Industrial', 0, '113 C-4 Tanong, Malabon, Metro Manila', '285-4021', '', '285-2098', '', 'cash purchases', '', 'Rex Cobey', '', 'Active', '0.00', 1, ''),
(1144, 'EB Karmine Com''l', 'Industrial', 0, '2461 Urdaneta St., Guadalupe, Makati', '893-2696', '', '819-0547', '', 'cash purchases', '', 'Loida', '', 'Active', '0.00', 1, ''),
(1145, 'GY Industrial', 'bearings / mechanical belting / mill supplies / couplings / hose couplings / fittings', 0, '457-459 T .Pinpin St., Binondo, Manila', '242-6781/86', '', '242-6766', '', 'cash purchases', '', 'Mr. Han', '', 'Active', '0.00', 1, ''),
(1146, 'JT Industrial Sales', 'Industrial', 0, '1507 Oroquietta St., Sta. Cruz, Manila', '712-4977/732-5841', '', '711-7293', '', 'cash purchases', '', 'Daniel', '', 'Active', '0.00', 1, ''),
(1147, 'New Tanza Nat''l.', 'Industrial', 0, 'Tejero, Rosario, Cavite', '437-7901', '', '437-7901', '', 'cash purchases', '', 'Tony Lu/Marlyn', '', 'Active', '0.00', 1, ''),
(1148, 'P & H Merchandising', 'Industrial', 0, '1115 T. Mapua St., Sta. Cruz, Manila', '711-1551/8878', '', '711-7198', '', 'cash purchases', '', 'Philip Velasco', '', 'Active', '0.00', 1, ''),
(1149, 'Power Construction', 'Industrial', 0, '130 Judge Juan Luna St., Quezon City', '371-0364/75', '', '371-1239', '', 'cash purchases', '', 'Eddie Mapalla', '', 'Active', '0.00', 1, ''),
(1150, 'Rat Phils.', 'Industrial', 0, 'Km. 19 W. Service Rd., Sucat, Para?aque City', '821-3852/2295', '', '821-3852', '', 'cash purchases', '', 'Chris Castro', '', 'Active', '0.00', 1, ''),
(1151, 'Salinas Plaza', 'Industrial', 0, 'Rosario, Cavite', '438-1245', '', '971-0108', '', 'cash purchases', '', 'Eduard/Bernadette', '', 'Active', '0.00', 1, ''),
(1152, 'Uptown Ind''l Sales', 'Industrial', 0, '#56 Madison St., Mandaluyong City', '631-8366', '', '6315290/96', '', 'cash purchases', '', 'Mhar Ronquillo', '', 'Active', '0.00', 1, ''),
(1153, 'ABB Industry Inc.', 'turbocharger', 0, 'Km. 20 South Highway, Sucat, Parañaque', '824-4581', '', '824-4650', '', 'cash purchases', '', 'Art Tariga', '', 'Active', '0.00', 1, ''),
(1154, 'Metalock Seaserv', 'turbocharger', 0, '182 Pandan Loop, Singapore', '0065-774-8593', '', '774-8592', '', 'cash purchases', '', 'Kelvin Teo', '', 'Active', '0.00', 1, ''),
(1155, 'Turbo Engine Rec.', 'turbocharger', 0, '4575 Quintos St., Poblacion, Makati', '890-3887', '', '899-8132', '', 'cash purchases', '', 'Wilfredo Salvador', '', 'Active', '0.00', 1, ''),
(1156, 'Anatek, Inc.', 'compressors', 0, '15 Pres. Ave., BF, Para?aque, MM', '842-4501', '', '842-4327', '', 'cash purchases', '', 'Mr. Aguilar/Joe', '', 'Active', '0.00', 1, ''),
(1157, 'Ingersoll Rand', 'compressors', 0, '2300 Pasong Tamo Ext., Makati', '815-6101/6110', '', '815-6935', '', 'cash purchases', '', 'Manuel Cuenca', '', 'Active', '0.00', 1, ''),
(1158, 'Ideal Electric', 'generators', 0, '330 E. First, Mansfield, Ohio, 44902', '(419) 522-3611', '', '(419) 522-9386', '', 'cash purchases', '', 'Larraine Biddle', '', 'Active', '0.00', 1, ''),
(1159, 'Newton Ind''l Sales', 'generators', 0, '#4 Rosal St., Roxas Circle, T. Sora, Q.C.', '456-1369/1401', '', '456-1200', '', 'cash purchases', '', 'Eleonore Ramos', '', 'Active', '0.00', 1, ''),
(1160, 'Boll & Kirch', 'lube/fuel oil filter', 0, 'Siemensstrabe 10-14, Sindorf, Kerpen', '2273-5620', '', '2273-562223', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1161, 'Herrick Filter', 'lube/fuel oil filter', 0, '17 First St., New Mla., Quezon City', '410-1182/87', '', '722-2541', '', 'cash purchases', '', 'Angel Lee', '', 'Active', '0.00', 1, ''),
(1162, 'Master Cool Tower', 'Cooling Tower', 0, 'Rm. 108 CCH Bldg., Salcedo, Makati', '892-6654/57', '', '810-4189', '', 'cash purchases', '', 'Victor Modoc', '', 'Active', '0.00', 1, ''),
(1163, 'Thermopack Cooling System', 'Cooling Tower', 0, 'Unit 1A, B.L.A.S. Building,  Apo, Marikina City', '941-0382/942-2263', '', '942-2263', '', 'cash purchases', '', 'Teody S. Maliberan', '', 'Active', '0.00', 1, ''),
(1164, 'Advance Power Product', 'governor', 0, '130 Filmore St., Makati City', '843-5556/59', '', '833-0103', '', 'cash purchases', '', 'Martin Casas', '', 'Active', '0.00', 1, ''),
(1165, 'Altus Trading', 'gaskets/o-rings / altus mechanical seal', 0, '#2934-C, Kakarong Street, Makati City', '896-0426', '', '895-7135', '', 'cash purchases', '', 'Andy Albao', '', 'Active', '0.00', 1, ''),
(1166, 'American Packing', 'gaskets/o-rings', 0, 'Km. 14, SSH, Edison Ave., Para?aque', '546-1150-55', '', '546-1130', '', 'cash purchases', '', 'Malou Reyes', '', 'Active', '0.00', 1, ''),
(1167, 'Cabepco Bearing', 'gaskets/o-rings', 0, 'National Rd., Balsahan St., Binakayan', '434-0215', '', '434-3533', '', 'cash purchases', '', 'Wilson Pe?alosa', '', 'Active', '0.00', 1, ''),
(1168, 'EB-Karmine', 'gaskets/o-rings', 0, '2461 Urdaneta St., Guadalupe, Makati', '893-2696', '', '819-0547', '', 'cash purchases', '', 'Loida', '', 'Active', '0.00', 1, ''),
(1169, 'Rostron Ind''l Res.', 'gaskets/o-rings', 0, '3788 Mascardo St., P. Tamo, Makati', '897-8043/896-6879', '', '896-2077', '', 'cash purchases', '', 'Tito Pfeffeerle', '', 'Active', '0.00', 1, ''),
(1170, 'Spectra Seal & Ind''l', 'gaskets/o-rings', 0, '1661 Soler St., Sta. Cruz, Manila', '733-7533', '', '733-7531/25', '', 'cash purchases', '', 'Leony Sigua', '', 'Active', '0.00', 1, ''),
(1171, 'Bearing Center', 'various bearings', 0, '302, Alegria Bldg., C. Roces, Makati', '810-4058', '', '813-0341', '', 'cash purchases', '', 'Lourdes Villapando', '', 'Active', '0.00', 1, ''),
(1172, 'Propmech Corporation', 'marine propulsion engines & gensets', 0, 'Manila, Philippines', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1173, 'Trackstar Enterprises Corp.', 'truck and heavy equipment parts', 0, 'Quezon City, Metro Manila, Philippines', '', '', '', '', 'cash purchases', 'Supplier', '', '', 'Active', '0.00', 1, ''),
(1174, 'Genweld Industrial Incorporated', 'welding services', 0, 'Batangas City, Batangas', '', '', '', '', 'cash purchases', 'Supplier', '', '', 'Active', '0.00', 1, ''),
(1175, 'Cardajen Enterprises', 'filters/centrifugal oil filters', 0, 'Caloocan City, Metro Manila, Philippines', '', '', '', '', 'cash purchases', 'Supplier', '', '', 'Active', '0.00', 1, ''),
(1176, 'Pacific Parts Corporation', 'engine parts', 0, 'Manila. NCR, Philippines', '', '', '', '', 'cash purchases', 'Supplier', '', '', 'Active', '0.00', 1, ''),
(1177, 'Manila Trustparts General', 'transport & delivery', 0, 'Caloocan, Metro Manila', '', '', '', '', 'cash purchases', 'Supplier', '', '', 'Active', '0.00', 1, ''),
(1178, 'Daenamik Tool Services', 'Tools & other Parts', 0, 'Lucio Cruz, Mandaluyong City, 1550', '(02) 535 0183', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1179, 'Pines Technologies', 'Tools & other Parts', 0, 'No. 587, Guerrero Street, Mandaluyong City, Metro Manila', '(02) 911 1048', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1180, 'Zi-Techasia (Pilipinas), Inc.', 'mechanical', 0, 'G/F Metrodrug, Inc. Compound, Manalac Ave., Sta. Maria Industrial Estate, Bagumbayan, Taguig City, 1631', '(02) 802 7491', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1181, 'Manila United Electrical Supply, Incorporated', 'Tools & other Parts', 0, '552 Ronquillo Street, Santa Cruz, Metro Manila', '(02) 733-0669', '', '(02) 733-0669', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1182, 'A-Class Electrical Supply, Incorporated', 'Tools & other Parts', 0, '667 Evangelista Street, Quaipo, Metro Manila', '(02) 733-2912', '', '', '', 'cash purchases', '', 'Patrick Uy', '', 'Active', '0.00', 1, ''),
(1183, 'Brilliant Metal Craft and Machine Design', 'Tools & other Parts', 0, 'C. Borces St., Mabolo, Cebu City, 6000', '(032) 233 5927', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1184, 'Microcontrol Design Technology, Inc.', 'Semiconductor and electronic', 0, '8178 Dr. A. Santos, Ave., Para?aque, City, Metro Manila', '63-2-8207853', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1185, 'East Trading', 'metal scrap, stainless', 0, '22 San Juan, Tanza, Cavite, Philippines', '63-046-505261', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1186, 'Hayakawa Elect. Phils. Corp.', 'electronics', 0, 'Main Ave., Cor., First St., Peza, Rosario, Cavite, Philippines', '63-46-4371401', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1187, 'Polyphase Marketing', 'electrical & electronics equipment', 0, '303 Verde Oro Bldg.,535 Commonwealth Ave., Quezon City, Philippines', '63-02-4563663', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1188, 'Add Audio System', 'car amp, wirings, subwoofers', 0, '121 3rd St., 11th Ave., Grace Park, Caloocan City, Philippines', '63-02-3643367', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1189, 'GT Auto Sensor & Hi-tech Production', 'Auto spare parts', 0, '201 M. Adriatico Street, Near San Andres Street, Malate, Manila', '632-400-58989', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1190, 'A.U.N. Industrial Sales', 'pipes & tubes', 0, 'Manila, Philippines', '', '', '', '', 'cash purchases', 'Supplier', '', '', 'Active', '0.00', 1, ''),
(1191, 'Navicharts Phils., Inc.', 'Pumps & Motors', 0, 'Lapu-Lapu City, Cebu', 'Mobile: 0917-3200010', '', '', '', 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1192, 'MOTO Industrial Traders Corporation', 'spare parts/pumps/centrifugal pumps', 0, 'Makati City, Philippines', '894 21115', '', '813 1572', '', 'cash purchases', 'Indentor/Importer/Manufacturer''s representative', '', '', 'Active', '0.00', 1, ''),
(1193, 'Bodega Site', '', 0, 'National Highway, San Vicente, Calapan City, Oriental Mindoro', '288-4258', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1194, 'LM Communications', '', 0, '53-B Roces Ave., Quezon City', '374-6281', '', '374-6281', '', 'cash purchases', '', 'Mr. Jessie Militar', '', 'Active', '0.00', 1, ''),
(1195, 'BMC', '', 0, 'Camilmil, Calapan City, Oriental Mindoro', '286-7114', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1196, 'FFC Equipment Parts Supply', '', 0, '665-A, Evangelista St., Quaipo, Manila', '733-4397, 733-4825, 488-0135', '', '733-7540', '', 'cash purchases', '', 'Mr. Ed Endrino', '', 'Active', '0.00', 1, ''),
(1197, 'Endrino Motor Parts Supply', '', 0, '637 Evangelista St., Quaipo, Manila', '313-8810, 432-7808 / Mobile: 0921-242-1035', '', '', '', 'cash purchases', '', 'Ms. Gloria Endrino / Ms. Maria Domingo', '', 'Active', '0.00', 1, ''),
(1198, 'Philman Corporate Distribution, Corp.', '', 0, '314 Baracca St., Binondo, Manila', '806-7801 / Mobile: 0921-924-9000', '', '', '', 'cash purchases', '', 'Mr. Sat Ocampo', '', 'Active', '0.00', 1, ''),
(1199, 'Seal Merchandising Co., Inc.', '', 0, '1003 Masangkay St., Binondo, Manila', '(632) 243-5505, 243-5546', '', '(632) 243-5505, 243-5546', '', 'cash purchases', '', 'Mr. Raymomd', '', 'Active', '0.00', 1, ''),
(1200, 'Communication Merchandising Corporation', '', 0, '962 Benavides St., Binondo, Manila', '243-9106, 244-8363, 244-8367', '', '', '', 'cash purchases', '', 'Mr. Wilson O. Masangkay', '', 'Active', '0.00', 1, ''),
(1201, 'K2 Top Corporation', '', 0, '# 112 CLS Bldg., Dagat-Dagatan Ave., Caloocan City', '(632) 287-6979, 287-6525, 287-8786 / Mobile #: 0918-406-6030', '', '(632) 287-6434', '', 'cash purchases', '', 'Ivy Rose L. Belarma', '', 'Active', '0.00', 1, ''),
(1202, 'FV Marine Supply', '', 0, '558-C M. Naval St., Bangkulasi, Navotas City', '281-7704, 352-7610 / Mobile Numbers: 0918-9398-974 / 0932-354-4111', '', '', '', 'cash purchases', '', 'Fernando Vicencio III', '', 'Active', '0.00', 1, ''),
(1203, 'Swagelok Philippines', '', 0, 'Unit 2, Building 2, Oyster Industrial Complex, NAIA Ave., cor. Kabihasnan, Parañaque City', '(632) 826-9811, 826-8033, 826-8525, 826-9914 / Mobile Numbers: 0917-900-3197 / 0923-375-3883', '', '(632) 829-1050', '', 'cash purchases', '', 'Emerson D. Faylogna', '', 'Active', '0.00', 1, ''),
(1204, 'New Triumph General Machinery', '', 0, '1356-58 C.M. Recto Ave., Manila', '733-2626', '', '733-1988', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1205, 'Active Control Engineering and Supplies', 'Industrial', 0, 'Unit G 2nd Floor, Marian Bldg., 1524 Pe?afrancia Street, Paco, Manila', '', '', '', '', 'cash purchases', '', 'Mary Rose Sioson (Inside Sales Officer)', '', 'Active', '0.00', 1, ''),
(1206, 'Exteq Controls Phils., Inc.', 'Electrical Services & Products', 0, 'Unit 1 MetroAsia Arcade, B6 L33 PH5 Pacita Ave., Pacita 1, San Pedro, Laguna 4023', '579-1154', '', '868-0957', '', 'cash purchases', '', 'Ron Mendez (Sales Engineer)', '', 'Active', '0.00', 1, ''),
(1207, 'Ashcroft', 'Industrial', 0, 'Ashcroft Inc., 250 East Main Street, Stratford, CT 06614 USA', '203-378-8281', '', '203-385-0408', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1208, 'Wise-Man Automation & Controls, Inc.', 'Industrial / communication, CATV / power & industrial installation / waterworks', 0, 'No. 715 St., Mary Street, Holy Family Village, Bagumbayan, Taguig City 1632 Philippines', '+63(2) *838-2231 * 838-2298 * 837-6701 * 837-6716', '', '+63(2) 838-1184', '', 'cash purchases', 'Distributor', 'Albert T. Arellano', '', 'Active', '0.00', 1, ''),
(1209, 'Algenpro, Inc.', 'Alfa Laval', 0, 'Unit 1210 Cityland Pasong Tamo Tower, 2210 Don Chino Roces Avenue, Makati City 1230', '63 2 8347750', '', '', '', 'cash purchases', '', 'Alfred Poquiz ( Sales Engineer)', '', 'Active', '0.00', 1, ''),
(1210, 'Cham Samco & Sons, Inc.', 'Calibration Works / sounding tape', 0, '500-508, St., Cristo Street, Binondo, Manila', '243-1561 to 68', '', '241-9862', '', 'cash purchases', '', 'Solomon Cham', '', 'Active', '0.00', 1, ''),
(1211, 'Up-town Industrial Sales, Inc.', 'Calibration Works/products', 0, 'Up-town Bldg., 56-58 Madison St., 1554 Mandaluyong City, Philippines', '+63 (2) 651-6387 to 88; 631-8366', '', '+63 (2) 631-5296 or 631-5290', '', 'cash purchases', 'Wholesaler/ Retailer/ Importer/ Stockist/ Distributor/ Manufacturer''s Representative', 'Lenie I. Padua', '', 'Active', '0.00', 1, ''),
(1212, 'Ametek, Inc.', 'gauges', 0, '205 Keith Valley Road I Horsham PA 19044 U.S.A.', 'Sales/Technical Support Number: +1 215-293-4100', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1213, 'Indfos Industries Limited', 'electrical', 0, 'B20, Industrial Area, Site 3, Meerut Road, Ghaziabad (UP) 201 003', 'Ph: 0120-2712016 / 2712134', '', '0120-2712023', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1214, 'Suntech Technology Corporation', 'Services: Radiographic testing / Ultrasonic Flaw Detection / Ultrasonic Thickness Gauging / Magnetic Particle Inspection / Dye Penetrate Testing / Hardness testing / Vacuum Testing / Hydro Testing / Post Weld Heat Treatment (Stress Relieving) / Third Party Infection / Welding Qualification Test', 0, '99B Pajo Street, Project 2, Quezon City, Philippines 1102', '(632) 7453962', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1215, 'BS Marine International Co., Ltd.', 'piston skirt & crown / cylinder head / bearing metal / connecting rod / valve spindle', 0, 'Philippines: Bunyi Bldg., #47 C-4 Road Bagumbayan, North Navotas City, Metro Manila', '+632-998-7316', '', '+632-523-0293', '', 'cash purchases', 'Manufacturer', 'Celso "Jun" Oliveros, Jr.', 'Eye-Top Enterprises is the exclusive agent of BS Marine International Co., Ltd. in the Philippines', 'Active', '0.00', 1, ''),
(1216, 'Eye-Top Enterprises', 'trading of marine & generator engine parts / heavy equipment / spare parts / construction supplies', 0, '1373 Instruccion St., Sampaloc, Manila 1008', '+632 998-7316 / Mobile numbers: +63917-5620506 / +63908-8847126 / +6322-8804664', '', '+632-5230293', '', 'cash purchases', 'Dealer', 'Celso "Jun" Oliveros, Jr.', '', 'Active', '0.00', 1, ''),
(1217, 'DaeDong Metal Industry Co., Ltd.', 'power plant bearing / locomotive part / marine diesel engine bearing / analysis correction for pipe support / power plant & accessory', 0, '#141-74,3-ga, Namhang-dong, Youngdo-gu, Busan, Korea', '(051)417-2210-2 / H.P.: 010-3852-2247', '', '(051)417-2213', '', 'cash purchases', 'Manufacturer', 'Jason (Yong-Han) Park (Executive Director)', '', 'Active', '0.00', 1, ''),
(1218, 'Zenith United Electric Corporation', 'electrical / lighting / ventilation', 0, '649 Florentino Torres St., Sta. Cruz, Manila', '+(632) 733-8026 to 29', '', '+(632) 733-0383, 734-1148', '', 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1219, 'Pennunion', 'electrical connectors / compression tools / accessories', 0, '', '', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1220, 'GAON Cable', 'Cables/Wires', 0, '', '', '', '', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1221, 'SEC Cable', 'Cables/Wires', 0, '', '', '', '', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1222, 'Sumiyoshi Trading Co., Ltd.', 'marine spare parts & equipments', 0, '11 F Kobe Commerce, Industry and Trade Center Bldg. 5-1-14, Hamabedori, Chuo-ku, Kobe Japan 651-0083', '+81-78-855-8026', '', '+81-78-855-8027', '', 'cash purchases', 'Supplier', '', '', 'Active', '0.00', 1, ''),
(1223, 'Spindle Giken Philippines, Inc.', 'workshop / air-micrometer / nozzle seat grinding / governor overhaul / digital projector / injection test equipment / surface grinding machine', 0, 'Warehouse 8-B La Fuerza Compound 2241 Don Chino Roces Avenue, Makati City, Metro Manila', '(63)2 824 7001', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1224, 'Isuzu Select Parts', 'filter / brake parts / belt / piston / push rod / glow plug / metal sets / cup set / shock absorber / torque rod bushing / clutch / cylinder head / tie rod end', 0, '', '', '', '', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1225, 'Zhejiang Tormin Electrical Co., Ltd.', 'lighting products', 0, 'No. 35,Qingjiang Road, High-tech District, Wenzhou City, Zhejiang, China', '+86 577 56966366/6616', '', '+86 577 56966166', '', 'cash purchases', 'Manufacturer', 'Elena Qi (Regional Sales Manager)', '', 'Active', '0.00', 1, ''),
(1226, 'Xiamen Orient Sea Import & Export Company Limited', 'Anchor & chain / valves / rubber products / diesel engine / fork wheel loader generator set sew pump / winch & crane / shearing machine, rolling machine, bending machine / CNC Cutting Machine / Oil-water separator / ship sewage treatment device / gearbox / welding material / propeller / anchor windlass / outfittings /  pumps /', 0, 'Unit 201, No. 553 West He Xiang Road, Xiamne, Fujian, China', '+86-592-2291330 / Mobile: +86-13806073138', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1227, 'Tianjin Pumps & Machinery Group Co., Ltd.', 'eccentric helical rotor pumps / three screw pumps / twin screw pumps / gear pumps / centrifugal pumps', 0, 'No. 10 South Guoyuan Road, Bei chen District, Tianjin, P.R. China', '86-22-59088478', '', '86-22-58714309', '', 'cash purchases', 'Manufacturer', 'Xiong Jiaming (Export Manager)', '', 'Active', '0.00', 1, ''),
(1228, 'Fortune Protection Safety Ltd.,', 'lighting products', 0, '10/F., Unit A, Centre Mark II, 305 Queen''s Road, Central, Hong Kong', '852-25413813', '', '852-25423759', '', 'cash purchases', 'Distributor', 'Thomas Lo', 'Fortune Protection Safety Ltd. carries Centurion products', 'Active', '0.00', 1, ''),
(1229, 'Blue Silver & Black', 'corporate giveaways / novelty items / premium items / souvenirs / gadgets / uniforms / bags / lanyards', 0, '4f Hallway West Tektite Tower Philippines Stock Exchange Center, Exchange Road, Pasig City', '(02)502.2792 / (02)727.9794 / Mobile numbers: 0917.8013225; 0917.7960851; 0917.1673117', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1230, 'Northstar Bags & Luggages Corporation', 'bags & luggages', 0, '2nd Floor MQI Center, 42 Alvero cor. Abada St., Loyola Heights, Quezon City, Philippines', '(02) 426-5255 to 56 / Mobile: 0977-8547975', '', '', '', 'cash purchases', 'Supplier', 'Raymond Rodriguez', '', 'Active', '0.00', 1, ''),
(1231, 'Adeven Solutions Inc.', 'corporate & personal gifts / signages / quality prints / large format printing / stage & booth fabrication / events', 0, 'Block 2 Lot 1 Logan Compound, Bahay Toro, Project 8, Quezon City', '926 3982 / 935 1802 / Mobile number: +63 918 568 6660', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1232, 'Ramesh Trading Corporation', 'products for kitchen / cooking / home /  bathroom', 0, 'Warehouse P3&4 JY & Sons Compound, Veterans R., Veterans Industrial Compound, Taguig City, Metro Manila', '+63 (2) 843-9092 / local 5012 / 824-4295 / Mobile : +63 (917) 824-5363', '', '+63 (2) 857-2204', '', 'cash purchases', 'Importer, Wholesaler, Distributor', 'Alou Casta?eda (Corporate and Horeca Specialist)', '', 'Active', '0.00', 1, ''),
(1233, 'Cascade', 'bathroom scales / accessories / acrylic organizers / dustbins / chrome organizers / mats / curtains / vanity mirrors', 0, '', '', '', '', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1234, 'Masflex', 'cookware / kitchenware / houseware / chafing dishes / chrome organizers / dish drainers', 0, '', '', '', '', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1235, 'Mitsui Trading Phils., Ltd. Co.', 'promotional products', 0, '#100 Corner A. Delmundo St., 8th Ave., Caloocan City, Philippines', 'Mobile numbers: 0918-9850085 / 0917-846380', '', '', '', 'cash purchases', 'Manufacturer / Importer / Printer', 'Angie Tuazon', '', 'Active', '0.00', 1, ''),
(1236, 'Max.ideas Marketing Corporation', 'food service (bakeware, banquet equipment, buffetware, chinaware, glassware, flatware, insulating cabinet, holloware, room amenities, kitchenware, linen, melamine / corporate giveaways (bags, pens, computer accessories, drinkware, houseware, office supplies, umbrella, wearables', 0, '#8 University Avenue Extension, Potrero, Malabon City', '(+632) 361 2242', '', '(+632) 361 3862', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1237, 'Philaxis Industrial Distributor Inc.', 'Valves & Fittings', 0, '1A Ground Floor Ma. Daniel Bldg., 470 San Andres cor. M.H. del Pilar St., Malate, Manila', '(02) 806-9253/ 8069261', '', '', '', 'cash purchases', 'Importer, Stockist, Supplier', '', '', 'Active', '0.00', 1, ''),
(1238, 'BW Energy Services', 'Services: Maintenance / Project Management / Quality Management / Risk Management / Contracts & Procurement / HSSE Management', 0, '24F Tower 1, Insular Life Corporate Centre Insular Drive, Filinvest Corporate City, Alabang, Muntinlupa 1781', '+63 (2) 667 9900 / Mobile Number: +63 927 410 4465', '', '', '', 'cash purchases', '', 'Raphael Remo E. Galvez', '', 'Active', '0.00', 1, ''),
(1239, 'Mitsubishi Heavy Industries Engine & Turbocharger, Ltd.', 'engine/ turbochargers', 0, 'Warehouse 4-C sunblest Compound, KM 23 West Service Road Bo. Cupang, Muntinlupa City, Philippines 1771', '+632 775-0209', '', '+632 775-0310', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1240, 'HMT Marine Engine', 'marine diesel engines / marine diesel gen-sets / generator engines / industrial engines / hyundai engine', 0, 'Rm. 302 Green B/D, 40 Olympic-ro 10-gil, Songpa-gu, Seoul, Korea', '+82-2-420-3347/8 / Mobile: +82-10-3424-3349', '', '+82-2-420-3349', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1241, 'Isuzu Marine Engine Inc.', 'marine engine/parts', 0, '1-12-19, Matsugashimanishi, Ichihara-City, Chiba, 290-0036, Japan', '', '', '', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, '');
INSERT INTO `vendor_head` (`vendor_id`, `vendor_name`, `product_services`, `category_id`, `address`, `phone_number`, `mobile_number`, `fax_number`, `email`, `terms`, `type`, `contact_person`, `notes`, `status`, `ewt`, `vat`, `tin`) VALUES
(1242, 'Isuzu Philippines Corporation', 'automotive / marine / industrial', 0, '114 Technology Avenue, Phase II, Laguna Technopark, Bi?an, Laguna', '(02) 729-7796 / (049) 541-0224 to 26 loc. 287', '', '(632) 845-1780 / (049) 541-0333', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1243, 'Victoria Hat & Co.', 'products for branding / giveaways', 0, '', 'Mobile numbers: +63 945 799 0796 / +63 945 799 0797', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1244, 'Enerpac', 'Tools & other Parts', 0, '', '', '', '', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1245, 'Profibus Industrial Control System, Inc.', 'Industrial', 0, 'Partoza Compound, South Drive St., Barangay San Antonio, San Pedro, Laguna', '(02) 869-6859 / 478-7939 / 519-6656 / 954-9091', '', '808-1778', '', 'cash purchases', 'Dealer', 'Eduardo "Shake" E. Lopez (Sales Manager)', '', 'Active', '0.00', 1, ''),
(1246, 'Delta Plus Philippines', 'PPE products and safety wear', 0, '83 Felix Manalo Street, Cubao, Quezon City, Metro Manila, Philippines', '', '', '', '', 'cash purchases', 'Manufacturer', 'John Philip Abueg (Area Sales Manager)', '', 'Active', '0.00', 1, ''),
(1247, 'I.H.I.Turbo International Trade, Inc.', 'exhaust gas turbo/ turbocharger specialist', 0, 'Rios Bldg., 193 Do?a Soledad Ave., Rxt., cor. Hawaii St., Better Living Brgy., Don Bosco, Para?aque City', '(632) 821-6484 / 822-1984 / 822-4490', '', '(632) 822-4440', '', '30 days PDC', '', 'Alvin B. Suaybaguio (Sales Director)', '', 'Active', '0.00', 1, ''),
(1248, 'P.T. Cerna Corporation', 'process instrumentation / industrial automation & solution / valves, pumps and gears / power & climate controls systems solutions engineering / steam, water & gas technology', 0, '4137 Ponte St., Brgy. Santa Cruz, Makati City', '(02) 519-6214', '', '890-2802', '', 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1249, 'RIGAS (Research Institute of Gas Analytical Science)', 'gas calibration', 0, 'Headquarter Plant 1: 142, Munpyeongdong-ro 48beon-gil, Daedeok-gu, Daejeon, Korea, 34301', '+82-70-5031-6941', '', '+82-42-935-8814', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1250, 'Jiangsu Milky Way Steel Poles, Ltd.', 'steel poles / lighting fittings', 0, 'No.1 Yinhe road, Wanshi town, Yixing, Jiangsu, China', '+86-510-87841888 / Mobile: +8613013666666', '', '+86-510-87843488', '', 'cash purchases', 'Manufacturer', 'Delia Wang', '', 'Active', '0.00', 1, ''),
(1251, 'HIOKI E.E. Corporation', 'clamp meter', 0, '81 Koizumi, Ueda, Nagano, 386-1192, Japan', '+81-268-28-0562', '', '+81-268-28-0568', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1252, 'Megger', 'Electrical Equipment Supplies', 0, 'Megger Hong Kong Limited: Workshop No. 8, 26/F, Mega trade Centre, 1-6 Mei Wan St., Tsuen Wan, NT, Hong Kong', '+852 2618 9964', '', '+852 2618 9001', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1253, 'UNI-T', 'benchtop instruments / general meters / environmental testers / electrical power testers / lay-out measurement tools / accessories', 0, 'No. 6 Gong Ye Bei 1st Road, Songshan Lake National High-Tech Industrial Development Zone, Dongguang City, Guangdong Province, China', '(86-769) 8572 3888', '', '(86-769) 8572 5888', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1254, 'Merlo Steel Poles & Accessories, Inc.', 'steel poles / insulators / transformers / tools / connectors & clamps / safety equipment', 0, '32 San Carlos Drive, Brgy., Mataasnalupa, Lipa City, Batangas, Philippines 4217', '(043) 756 1716 loc. 708', '', '(043) 756 3071', '', 'cash purchases', 'Distributor', 'Engr. Jerwin C. Tenorio (Sales Engineer)', '', 'Active', '0.00', 1, ''),
(1255, 'Kablero Cabling Contractor', 'telephone cabling / computer networking / outside plant / structured cabling (voice & data) / security camera / door access', 0, '', '02 799-4351', '', '', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1256, 'Sycwin', 'paints, wires & cables', 0, '93 Joy St., Grace Village, Balingasa, Quezon City', '364-60-01 to 06 / 364-57-90 / 411-34-91 to 93', '', '364-38-70', '', 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1257, 'Koten', 'Koten Circuit Breakers / Koten Safety Breakers (Series) / Koten Magnetic Breakers (Series) / Koten Overload Relays / Koten Panel Boards (Series) / Koten Wiring Devices (Series) / Koten Extension Cords / Koten Receptacles / Koten Lighting Fixtures / Koten Water Heaters / Koten LED Panel Ceiling Lights / Koten LED Street lights / Koten LED Bulbs & Tubes / Koten LED High Bay & Low Bay / Koten Electrical Components', 0, '1959 FB. Harrison St., Pasay City', '(02) 241-5250 / 356-7125', '', '833-8711', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1258, 'Kinmo PW Corporation', 'electrical fabrication / hardware', 0, 'BGC Office: 3C-1 Seibu Tower, 6th Ave., BGC, Taguig City, Metro Manila 1634', '(02) 251.0507 / Mobile numbers: (0977) 840.7799; (0922) 836.0817', '', '', '', 'cash purchases', 'Distributor', 'William Ken L. See ( Sales Manager)', '', 'Active', '0.00', 1, ''),
(1259, 'Sassin International Electric Shanghai Co., Ltd.', 'molded case circuit breaker / air circuit breaker / miniature circuit breaker / residual current circuit breaker / mechanical interlocking MCBs / flush mounting distribution box / surface mounting distribution box / automatic voltage stabilizer', 0, 'No. 2588 Jinhai Road, Pudong Shanghai, China', '+86-21-50214288', '', '', '', 'cash purchases', 'Manufacturer', 'Mona Wang (Sales Manager)', '', 'Active', '0.00', 1, ''),
(1260, 'T''sys Industrial Controls Inc.', 'variable frequency drives / induction motors / instrumentation products / circuit breakers / transformers / automatic transfer switch / manual transfer switches / panel boards /  capacitor bank /  meter centers / automatic synchronizing switch gear / low/medium voltage switch gear / load break switches / busduct / cable trays', 0, 'Unit 1F Torre Venezia Bldg. Timog Avenue corner Sct. Santiago  St., Brgy. Laging Handa, Quezon City', '351-3225 / 351-3495', '', '351-3314', '', 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1261, 'Powerlines Digital Concepts Corporation (PDCC)', 'panel boards / cable tray / bus way / WG Transformer', 0, '1432 Librada Avelino St., Pandacan, Manila', '(632) 741 8021 / 742 2786 / Mobile numbers: 0915 607 3025 / 0917 829 1296', '', '(632) 714 8018', '', 'cash purchases', 'Distributor', 'Jomary R. Toling (Sales Account Specialist)', '', 'Active', '0.00', 1, ''),
(1262, 'United Electrical Specialists, Inc.', 'electrical', 0, 'Unit 1903 Entrata Tower 1, Civic Drive, Filinvest Corporate City. Alabang, Muntinlupa, City', '(02) 553-3754 / (02) 808-5010', '', '', '', 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1263, 'Pureflex Wires and Cables', 'Cables/Wires', 0, '17 LBICA Compound Lawang Bato, Valenzuela City', '443-7036 to 38 / Mobile: 0918-903-4873', '', '984-3255; 984-3259', '', 'cash purchases', 'Manufacturer', 'Maribeth Jeizel Ong (Sales and Marketing Manager)', '', 'Active', '0.00', 1, ''),
(1264, 'Zhejiang Geh Intelligent Electric Co., Ltd.', 'electrical', 0, 'Lvao Industrial Zone, Iiushi Town, Yueqing City, Zhejiang Province, China', '0086-577-62787018 / Mobile numbers: 15355938978 / 13868761557', '', '0086-577-62787019', '', 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1265, 'Tayan Electrical and Industrial Components Enterprises (YOKOYAMA)', 'electrical', 0, '26 E. Jacinto Street Brgy., Little Baguio, San Juan City, Metro Manila', '726-4360; 722-7749; 724-0421; 725-5313; 726-3735', '', '727-25-29', '', 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1266, 'Omsim', 'lighting products', 0, '', '+639178160810', '', '', '', 'cash purchases', '', 'Albert Cydrix N. Chan (General Manager)', '', 'Active', '0.00', 1, ''),
(1267, 'Omsim', 'lighting products', 0, '', '+639178160810', NULL, '', NULL, 'cash purchases', '', 'Albert Cydrix N. Chan (General Manager)', '', 'Active', '0.00', 1, ''),
(1268, 'Schwer Engineering Services and Services', 'panel boards / cable tray / meter center / motor controls / automatic and manual transfer switch / low voltage switchgear / pullboxes / metal fabrication', 0, 'Unit 817, Pacific Century Tower, Quezon Avenue, Quezon City', '(02) 937-55-13 / Mobile: 0977-822-3040', NULL, '', NULL, 'cash purchases', 'Manufacturer', 'Engr. Joseph Noel G. Velasco (Managing Director)', '', 'Active', '0.00', 1, ''),
(1269, 'Nexus Prime Technik, Inc.', 'Services: Generators, engines and power systems / Substation systems / Mechanical systems', 0, 'Main Office: Unit 1903B 19F Atlanta Center, Annapolis Street, Greenhills, San Juan City', '(632) 570-0557', NULL, '(632) 706-6148', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1270, 'Xyron (Phils.) Inc.', 'Foundry pattern equipment / Iron steel and non ferrous castings / Decorative exterior lighting / Zinc / Aluminum and Chromium iron Anodes', 0, '', '', NULL, '', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1271, 'Indel Bauru', 'Fuse link / Braided / Terminals & Connectors / Cut-out Fuse', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1272, 'JBC Meter Socket', 'meter socket', 0, '', '', NULL, '', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1273, 'Gewalt Instrument Transformer', 'transformers', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1274, 'Centrade Integrated Sales Co.', 'Electrical Equipment Supplies', 0, '80-A Malakas St., Pinyahan, Diliman, Quezon City, Philippines, 1100', '(+632) 426-4112 / Mobile numbers: (+63) 9209477956 / (+63) 9163987866', NULL, '(+632) 920-0271', NULL, 'cash purchases', 'Wholesaler', 'Anjella S. Magadia (Sales Executive)', '', 'Active', '0.00', 1, ''),
(1275, 'HKR Service Parts', 'biotechnology products', 0, '', '8971569', NULL, '', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1276, 'iPower Integrated Power & Control Provider, Inc.', 'Woodward / L & S Hydroelectric products & services / Generator Exciters, AVR, Meterings, Protective Relays, Synchronizers, ATS / ABB UNITROL 1020 AVR / ABB UNITROL 1010 AVR / ABB UNITROL 1000-15 AVR / ABB UNITROL 6080 Static Exciter / Meggitt Sensing System / IEC Power Transformer, Inverter /  Engine Parts, filters, accessories, preventive maintenance', 0, '2F 8070 Tanguile St., corner Estrella Ave., San Antonio Village, Makati City, 1200 Philippines', '(632) 899-0904 / (632) 899-2018 loc. 107 / Mobile numbers: 0917-6270260 / 0922-8660537', NULL, '(632) 898-3957 loc. 103', NULL, 'cash purchases', 'Distributor', 'Jun T. Fajatin ( Sales/Operations Manager)', '', 'Active', '0.00', 1, ''),
(1277, 'SPC', 'electrical', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1278, 'Connectwell', 'Terminal blocks / Interface modules / Power supplies', 0, 'D-7, Phase 2, M.I.D.C., Dombivli-421 204, INDIA', '+91 251 3980 600, 3980 800', NULL, '+91 251 3980 700', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1279, 'Kumwell', 'Lighting protection / grounding / exothermic welding / surge protection device', 0, '', '', NULL, '', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1280, 'Radin Electric Technology Co., Ltd. / Zhejiang Radin Import & Export Co., Ltd.', 'electrical', 0, 'No. 319, Wei 18th Road, Economic Development Zone, Yueqing, Zhejiang,, China 325600', '86-577-61751859', NULL, '86-577-62775963 / M.T. (WhatsApp): +86-13738391860', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1281, 'Baoding Zhongyi Electric Material Manufacturing Co., Ltd.', 'electrical', 0, 'Baiyangdian Science and Technology City, Baoding, Hebei Province', '+86-13513222010', NULL, '0312-5938898', NULL, 'cash purchases', 'Manufacturer', 'Grace Jia (Sales Manager)', '', 'Active', '0.00', 1, ''),
(1282, 'Shihlin Electric', 'electrical / power transformers / switchgear / automation / controls / automotive electrical devices', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1283, 'Enerdis Chauvin Arnoux Group', 'engine parts', 0, '16, rue Georges Besse Silic 44, 92182 Anthony Cedex', '+33 I 75 60 10 30', NULL, '+33 I 46 66 62 49', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1284, 'Adlink Technology Inc.', 'engine parts', 0, '9F., No. 166, Jian 1st Rd., Zhonghe Dist., New Taipei City 235, Taiwan (R.O.C.)', '+886-2-8226-5877', NULL, '+866-2-8226-5717', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1285, 'Graphtec Corporation', 'data logger / recorder / laser vibrometer', 0, '503-10 Shinano-cho, Totsuka-ku, Yokohama 244-8503, Japan', '+81-45-825-6250', NULL, '+81-45-825-6396', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1286, 'Chroma Ate Inc.', 'electronics', 0, '', '+866-3-327-9999', NULL, '+866-3-327-8898', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1287, 'Quantel Philippines, Inc.', 'electronic devices', 0, 'Unit 806 Tycoon Center, Pearl Drive Ave., Ortigas Center, Pasig City, Philippines 1605', '(+632) 638-6942 loc. 102 / Mobile: 63-939-397-6770', NULL, '(+63) 638-6946', NULL, 'cash purchases', 'Distributor', 'Charlie San Agustin', '', 'Active', '0.00', 1, ''),
(1288, 'Maritime Assembly Systems GmbH (MAS)', 'heavy machinery & equipment', 0, 'mas-maritime assembly systems GmbH, Zum Dock 3-4, 23966 Wismar, Germany', '+49 (0) 3841/71 25-0', NULL, '+49 (0) 3841/71 25-23', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1289, 'Hipotronics', 'AC/DC kilovoltmeters / Cable Fault Locators / AC Dielectric Testing Equipment / Bench Top AC and DC Hipot Testers / Power Factor Tester/TAN Delta / Resonant Test System / Partial Discharge Equipment / Resistance Measuring Equipment / Liquid Dielectric Testing Equipment / Transformer Test Equipment System', 0, '', '', NULL, '', NULL, 'cash purchases', 'Supplier', '', '', 'Active', '0.00', 1, ''),
(1290, 'C.M.R. Products & System Pte. Ltd.', 'marine equipment & accessories', 0, '9 Tuas View Crescent Singapore 637612', '+65 6268 8311 Ext 109', NULL, '+65 6862 2747', NULL, 'cash purchases', 'Wholesaler', '', '', 'Active', '0.00', 1, ''),
(1291, 'SCG Marketing Philippines Inc.', 'ceramics equipment & supplies', 0, 'Unit 903 Fort Legend Towers 3rd Avenue, cor 31st Street, Fort Bonifacio, Global City, Taguig City, 1636', '501.8630; 501.8634', NULL, '621.3060', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1292, 'OMNI', 'electrical & lighting', 0, '', '', NULL, '', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1293, 'Yatai International Corporation', 'electric supplies', 0, 'YIC Tower, 2673 R. Alunan Street, Interior Road, Malate, Manila, Philippines', '(02) 567.0000', NULL, '(02) 567.2342', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1294, 'Zenith Wire & Conduit, Inc.', 'wires & cables / cable accessories / electrical devices / marine products', 0, '2/F Le Mar Ben II Bldg., 747 San Bernardo St., Sta. Cruz, Manila', '+(632) 734-5344 / 734-5346 / 734-5348 / 736-1654', NULL, '+(632) 733-6454', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1295, 'Helukabel', 'Cables/Wires', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1296, 'Helkama', 'Cables/Wires', 0, '', '', NULL, '', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1297, 'Olex', 'Cables/Wires', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1298, 'CMP', 'Cables/Wires', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1299, 'Wiska', 'electric supplies', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1300, 'Premiere Powerlines Products and Builders Corporation', 'Industrial / Electrical / Mechanical', 0, 'Unit 104, Liwag Bldg., 1258 Batangas St., Brgy. San Isidro, Makati City 1234, Philippines', '(632) 889-5176 : 889-4548', NULL, '(632) 843-5487 : 812-9732', NULL, 'cash purchases', 'Contractor, Supplier & Engineering Services', 'Joel S. Nicolas', '', 'Active', '0.00', 1, ''),
(1301, 'Schaller Automation Industrielle AutomationsTechnik GmbH & Co. Kg.', 'Industrial instruments', 0, 'D-66440 Blieskastel / Saarland / Germany - Industriering 14 / P.O. Box 1280', '+49 (0) 68 42 / 5 08', NULL, '+49 (0) 68 42 / 5 08-2 60', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1302, 'Dynalco Controls', 'electrical', 0, '3690 NW 53rd Street, Ft. Lauderdale, FL 33309 USA', '954.739.4300', NULL, '954.484.3376', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1303, 'Instrumentation & Control Specialists, Inc.', 'Instrumentation / automation / analytical systems', 0, 'Units A,B,C, E & H Villa Maria Commercial, No. 31 Mayon St., Mandaluyong City Phils. MM 1550', '(632) 717-0417, 717-1299, 571-5441', NULL, '', NULL, 'cash purchases', 'Distributor', 'Leo R. Cuevas (Sales Manager)', '', 'Active', '0.00', 1, ''),
(1304, 'Edison', 'electrical', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1305, 'Pyrosales Total Temperature Solutions', 'Temperature sensors / flow & pressure measurement / level / process heating / calibration / fire survival MI cable/ pyro cable / data logging', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1306, 'Bosch Power Tools', 'Tools & other Parts', 0, '28th Floor Fort Legend Towers 3rd Avenue corner 31st Street Fort Bonifacio, Global City, Taguig City 1634', '(632) 870.3888 loc. 3873/3874', NULL, '(632) 870.3870', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1307, 'Aurora Pentair Water', 'Pumps & Motors', 0, '800 Airport Road, North Aurora, Illinois USA. 60542', '(630) 859-7000 USA', NULL, 'CANADA Fax: (630) 859-7060 / WORLDWIDE Fax: (630) 859-1226', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1308, 'JE Flex', 'hose & pvc tube', 0, '862-16 Gahyeon-ri, Tongjin-eup, Gimpo-si, Gyeonggi-do, Korea', '+82-31-997-1201', NULL, '+82-31-997-1203', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1309, 'Shenchang Electric Co., Ltd.', 'transformers/ testing equipment', 0, '', '', NULL, '', NULL, '', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1310, 'Amprobe', 'Clamp-ons / multimeters / wire tracers / megohmmeters / environmental & voltage / continuity testers', 0, 'Everett, WA 98023', '267-7623', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1311, 'Hu An Electric (Singapore) Pte., Ltd.', 'Cables / Wires / cable accessories / copper rods / aluminum rods / plastic cable materials', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1312, 'PT Sintra Sinarindo Elektrik', 'Cores / windings / insulation / tank & clamp / accessories / quality control testing / installation', 0, '', '(021) 8974489-94', NULL, '(021) 8974491', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1313, 'Zhuhai TOP Intelligent Electric Co., Ltd.', 'factory automation equipment', 0, '7 & 10/F, Business Center Building, 2 Pinglan Road, Nanping, Zhuhai City, P.R. China, P.C. 519060', '+86-756-8678111', NULL, '+86-756-8815682', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1314, 'NOJA Power', 'Switchgear / electronic controls / software / type test / accessories', 0, 'Noja Power Switchgear Pty., Ltd., 16 Archimedes Place, Murarrie Brisbane, Qld 4172, Australia', '+61 (7) 3907 8777', NULL, '+61 (7) 3399 6777', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1315, 'Contactplasma', 'electronics', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1316, 'Narada Power Source Co., Ltd.', 'Batteries', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1317, 'Sunertech Corporation', 'engineering products', 0, '2F The Victoria Plaza, 41 Annapolis Street, Greenhills, San Juan City, Philippines 1502', '(632) 7247203, 7270621, 7250465', NULL, '(632) 7212271', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1318, 'CSSC Nanjing Luzhou Machine Co., Ltd.', 'machinery & fabrication', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1319, 'Jade Marine Inspectors and Adjusters, Inc.', 'Calibration Works', 0, 'Room 304 FSE Bldg., 3671-73 Bautista St., Palanan 1235, Makati City, Philippines', '(63) (2) 822-2821, 822-2396', NULL, '(63) (2) 822-1509', NULL, 'cash purchases', 'Contractor', '', '', 'Active', '0.00', 1, ''),
(1320, 'OSA Industries Phils., Inc.', 'Industrial equipment & supplies', 0, 'Unit 4-113 North Main Ave., cor. Commerce Rd., Laguna Technopark, Biñan, Laguna 4024, Philippines', '(+632) 584-4481 / (+6349) 541-3101 / Mobile numbers: (+63908) 9648629 / (+63997) 9459972', NULL, '(+6349) 544-0924', NULL, 'cash purchases', 'Distributor', 'Christian Vinson S. Pastor (Sales Engineer)', '', 'Active', '0.00', 1, ''),
(1321, 'Longueville Marine Philippines, Inc.', 'Services: Crankpins and shaft rectification / crankshaft rebuilding / bearing fabrication / dynamic balancing / crankshaft grinding / power plant generating/reconditioning / other machine works', 0, '#436-6th Avenue (East) cor. 8th St., Caloocan City 1400', '362-5872; 361-3374; 361-1664; 361-5257', NULL, '(632) 361-5258', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1322, 'C.E. Foundation Engineering', 'Specializes in jet grouting work / soil nailing & shotcreting / earth/rock anchoring', 0, '#78 Lombos Compound Dr. A. Santos Ave., Parañque City', '(632) 825-1466/826-8971/624-4533 / Mobile #: (0920) 938-8964 / (0917) 5630465', NULL, '', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1323, 'Logran Reboring & Services', 'Services: Inplace (In Situ) Line Boring / Inplace (In Situ) crankshaft/shaft grinding & polishing / cylinder liner honing / connecting rod re-standardizing / metal bearing rebabbitting  / machine shop works / cylinder head reconditioning / metal crack stitching', 0, 'Naujan, Oriental Mindoro & Batangas City', 'Mobile numbers: 09228482161 / 09186873248', NULL, '', NULL, 'cash purchases', '', 'Roger Rodrigo Regencia (Technical Consultant)', '', 'Active', '0.00', 1, ''),
(1324, 'Edmel Engine Rebuilding', 'Valve seat cutting machine / reboring machine with digital read out (DRO) / balancing machine / honing machine / resurfacing machine / crankshaft grinder machine / turbocharger', 0, 'Manila Head Office: 238 M. Santos St., Santulan, Malabon City', '(03) 446-5210 / 294-6887 / 294-6889', NULL, '(02) 292-9453', NULL, 'cash purchases', 'Builder', '', '', 'Active', '0.00', 1, ''),
(1325, 'Fleet Maintenance and Consultancy Services, Inc. (FMCS Metalock)', 'Services Offered: Industrial Repairs / Marine Services / Submarine Fiber Optic Cable Services', 0, 'No. 3 Rio Grande Drive, Buenafe County Villas, Port Diversion Road, Balagtas, 4200 Batangas City, Philippines', 'Manila Telephone: (02) 542 8961 / (02) 542 8966 / Mobile numbers: 0917-535-8328 / 0928-505-7740', NULL, 'Batangas Telefax: (043) 783 1003', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1326, 'Messer MG Systems & Welding, Inc.', 'Cast iron / Copper / Brazing / Aluminum / Steels / Special Alloys / Stainless Steels / Tool Steels / Wearfacing', 0, 'N94 W14355 Garwin Mace Drive, Menomonee Falls, WI 53051 USA', '(262)-255-5520', NULL, '(262)-255-5542', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1327, 'Fervid International Products, Inc.', 'welding products', 0, 'Unit 507 Cityland Condominium 10 Tower II, 6817 Ayala Ave., corner H.V. dela Costa Ext., Salcedo Village, Makati City', '813-2031 / 812-5611 / 812-9570', NULL, '(632) 812-5611', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1328, 'Cro-Magnon Corporation', 'welding products', 0, '15/F East Tower, Philippine Stock Exchange Center, Exchange Road, Ortigas Center, Pasig City, Philippines', '6346538 to 39 * 6356806', NULL, '634-6540', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1329, 'Magna Industrial Co., Limited', 'Industrial', 0, '1801 Guardian House, 32 Oil Kwan Road, Wanchai, Hong Kong', '(852) 2577 5187', NULL, '(852) 2577 3190', NULL, 'cash purchases', 'Distributor', 'Mr. Orlando Tolentino', '', 'Active', '0.00', 1, ''),
(1330, 'Fuzzionwerk Enterprise', 'electrodes', 0, 'Unit 805 Pioneer North Highlands, Madison St., Mandaluyong City, 1550', '545-1003', NULL, '', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1331, 'ZetaChem Aerosols', 'Electrical & Electronic cleaners / Corrosion Inhibitors / Lubricants / Lubricating & penetrating Oil / Penetrating Oils / Solvent Cleaners & Degreasers / Varnishes / Greases / Cutting Fluid', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1332, 'AGP Industrial Sales and Services Incorporated', 'fire extinguishers', 0, 'No. 80 D. Silang St., Brgy. 07, Batangas City', '(043) 300-0638 / Mobile #: 0923-3678266', NULL, '(043) 723-4279', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1333, 'S.E.M. Energy Khmer Co., Limited', 'Services: Overhaul / Repair / Installation / Maintenance / Operation / Spare part & back up', 0, 'No. 25, St. Phlov Lum 230, Sangkat Khmuonh, Khan Sensok, Phnom Penh', '023 66 35 999, 088 826 26 54, 098 25 81 36', NULL, '', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1334, 'SECO GmbH', 'Valve seat rings / Connecting rods / Cylinder liner / Piston', 0, 'Gross Orden 23, 06484 Quedlinburg (Germany)', '', NULL, '', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1335, 'Marine Motor Service GmbH', 'Piston / Cylinder liner / Conrod / Injection equipment', 0, '21279 Wenzendorf, Germany', '+49 (0) 4165 214 00', NULL, '+49 (0) 4165 214 010', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1336, 'Markisches Werk GmbH', 'Specialties: Cylinder Head components / Inlet and Exhaust Valve Spindles / Guides /  Valve seats / Rotators /  Cylinder head Reconditioning /  Valve cage reconditioning', 0, 'Haus Heide 21, 58553 Halver, Germany', '+49 - 2353 - 917 - 0', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1337, 'Facom', 'tools', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', 'Junna Industrial Corporation carries Facom Fi 01 products in the Philippines.', 'Active', '0.00', 1, ''),
(1338, 'Uni-Field Enterprises, Inc.', 'Waterworks / Buildings / Industries / Petroleum', 0, '150 Corporate Center, No. 150 Panay Avenue, South Triangle, Quezon City, Metro Manila, Philippines', 'Petroleum and Fire Protection Division: (632) 376-7870 / (632) 376-9880 / (632) 376-9874', NULL, '(632) 376-9364', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1339, 'Naniwa Pump', 'Pumps & Motors', 0, 'Main Office: 11-5, Shinmachi 3-chrome, Nishi-ku, Osaka 550- 0013', '(06) 6541-6231', NULL, '(03) 6541-7492', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1340, 'Nilfisk', 'Household products', 0, '', '', NULL, '', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1341, 'Klinger', 'sealing products', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1342, 'FH Commercial, Inc.', 'Industrial', 0, '#22 Anonas Road, Potrero, Malabon City', '364-3352 / 361-4235 / 362-2265 / 330-2019 / 330-2021 / 366-8598', NULL, '361-3759 / 366-7724', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1343, 'Bughaw Electro Carbon Factors, Inc.', 'Carbon brushes / Carbon bearings / Carbon seals / Carbon Vanes / Current collectors / Crane wheel Flange lubricators / Graphite Power / Brush Holders / Sliprings / Commutator Maintenance Equipment', 0, 'No. 47 Doña Rosario Street, Novaliches Proper, Novaliches Quezon City, Metro Manila, Philippines', '(632) 936-1335 / 935-9172', NULL, '(632) 937-4707', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1344, 'RERA Mat''l & Equip''t Handling Corp.', 'Engineering Services', 0, 'B5 L2 Villa Antonina Subd., San Nicolas 2, Bacoor, 4102, Cavite, Philippines', '046--852 4780 / 632-385 5404', NULL, '00-6346 - 417 3910', NULL, 'cash purchases', 'Contractor', '', '', 'Active', '0.00', 1, ''),
(1345, 'Prime Eastern Chemical Industries (Preastern)', 'chemicals', 0, 'Ansor Building, Preastern Road, Km. 10.5, Highway, Basak, Mandaue City, Cebu', '422 9318; 422-9319; 261 6563', NULL, '(032) 422 9318; 414 6487', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1346, 'Pilipinas Shell Petroleum Corporation', 'lubricants', 0, '', '(02) 816 6501', NULL, '(02) 816 6017', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1347, 'Center for Reliability Excellence', 'chemicals', 0, '718 Leeleng Bldg., Shaw Blvd., Mandaluyong City, Philippines', '+63.2.718.3480', NULL, '+63.2.726.5461', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1348, 'Phoenix Petroleum Philippines, inc.', 'lubricants', 0, 'Manila Office: 25th Floor Fort Legend Towers, 3rd Avenue corner 31st Street, Fort Bonifacio, Global City, Taguig City 1634', '(+632) 403-4013', NULL, '(+632) 403-4021', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1349, 'Alphatec Chemical Corp.', 'epoxy grout / adhesives', 0, 'Unit I # 753 Quirino Hi-way, San Bartolome, Novaliches, Quezon City 1123 Philippines', '(63) 2-417-6940', NULL, '(63) 2-419-4918', NULL, 'cash purchases', 'Manufacturer', 'Mr. Rolando M. Romero (Exec. Vice President)', '', 'Active', '0.00', 1, ''),
(1351, 'Ceasefire Industrial and Safety Enterprise', 'fire extinguishers', 0, 'Nautical Highway, Guinobatan, Calapan City, Oriental Mindoro', 'Mobile numbers: (0932) 851-7504 / (0921) 799-9643 / (0917) 562-9566 / (0925) 886-4689', NULL, '', NULL, '30 days PDC', 'Distributor', 'Vilma V. Antonio (General Manager) / Mary Ann A. Miñon (Marketing Manager)', '', 'Active', '0.00', 0, ''),
(1352, 'Posi Lock Puller, Inc.', 'Hydraulic puller systems / Manual Pullers / Tool boards & sets / Specialty tools', 0, '800 Sunflower Avenue I P.O. Box 246 I Cooperstown, North Dakota I 58425 I USA', '+1-701-797-2600', NULL, '+1-701-797-2706', NULL, 'cash purchases', 'Manufacturer', '', 'Hydrauking Industriral Corp. carries Posi Lock Puller products in the Philippines.', 'Active', '0.00', 1, ''),
(1353, 'LLC TORC', 'torque wrenches', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1354, 'Automation and Technologies Corp.', 'Industrial', 0, '354 A. St. Louis corner St. Paul Brookside, Barangay San Isidro, Cainta 1900 Rizal, Philippines', '+63 2 903 7988 / +63 2 997 7991 / Mobile #: +63 926 365 8785', NULL, '', NULL, 'cash purchases', '', 'Nervals Kit Z. Valencia (Sales and Application Engineer)', '', 'Active', '0.00', 1, '008-218-867-000'),
(1355, 'AC Harris Cable Corporation', 'Cables/Wires', 0, '#5 Pio del Pilar corner Magat Salamat St., Concepcion II, Marikina City, Philippines', '(632) 941-2967; (632) 941-2968; (632) 941-2969', NULL, '(632) 997-8137', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1356, 'BVA Hydraulics', 'Cylinders / Pumps / Cylinder sets / Bottle jacks / Shop presses / BVA tools / Maintenance kits / Hydraulic hoses & couplers / Accessories / Lifting bag & lifting bag accessories', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1357, 'SERFILCO', 'Pumps / Filtration equipment / Filter Media / Analytical Instrumentation / Controls', 0, '2900 McArthur Blvd., Northbrook, IL 60062-2005 U.S.A.', '847-509-2900 / 800-323-5431', NULL, '847-559-1995', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1358, 'URC Utility Relay Company', 'electrical', 0, '10100 Queens Way, Chagrin Falls, OH 44023', '440-708-1000', NULL, '440-708-1177', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1359, 'Recar Ind. Sales', 'electrical & mechanical automation', 0, '#3 Padilla St., Sta. Lucia, MM, 1500 Philippines', '02-723-4163', NULL, '02-723-4254', NULL, 'cash purchases', '', 'Carlomat Reyes (General Manager)', '', 'Active', '0.00', 1, ''),
(1360, 'Ridgid Tools', 'tools', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1361, 'Filcrafters Incorporated', 'Modular Partition / Tables / Chairs / Cabinets / Blinds / Carpets / MTO furniture', 0, 'G/F #484 Gregorio Araneta Ave., Brgy., Dona Imelda, 1113 Quezon City', '(632) 475-7994; 415-5921', NULL, '(632) 711-0576', NULL, 'cash purchases', 'Manufacturer, Supplier', 'Jenelyn U. David (Project & Design Consultant)', '', 'Active', '0.00', 1, ''),
(1362, 'Megger', 'electrical test instrument', 0, 'Canada Megger Limited: 110 Milner Avenue Unit 1 Scarborough, Ontario M1S 3R2', '+1 416 298 6770', NULL, '+1 416 298 0848', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1363, 'Fluke', 'electronic test tools / biomedical equipment / networking solutions', 0, 'P.O. Box 9090, Everett, WA 98206 U.S.A.', '(800) 443-5853', NULL, '(425) 446-5116', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1364, 'Blue Point', 'tools', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1365, 'DeWalt', 'tools', 0, 'Singapore: No. 25, Senoko South Road, Woodlands East Industrial Estate, Singapore 758081', '(65) 6752 2001', NULL, '(65) 6752 2697', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1366, 'Bright Elastomeric Waterproofing', 'paints', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1367, 'LinkBelt Industrial Center', 'bearings / seals / belts / steel products  /plastics  /hardware / electrical', 0, '#1003 Oroquieta Street, Santa Cruz, Manila, Philippines 1014', '(632) 735-0053; 735-0056; 735-0057; 735-0103; 735-0108; 310-3284; 666-1336; 666-1401', NULL, '(632) 735-0097; 310-9290', NULL, 'cash purchases', 'Wholesaler / Retailer / Importer', 'Jimmy E. Chua (General Manager)', '', 'Active', '0.00', 1, ''),
(1368, 'The Stanley Works Pty. Ltd.', 'tools (Sidchrome brand)', 0, '99 Freight Drive Somerton, VIC., 3062, Australia', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1369, 'TPC Mechatronics Corp.', 'Directional Control Valves / Air Line Equipment / Vacuum Equipment / Fittings & Tubing / Flow Control Equipment', 0, '111-84, Hwskok-dong, Kangseo-ku, Seoul, Korea', '+82-2-2691-8888', NULL, '+82-2-2699-2225', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1370, 'ITW Polymer Technologies', 'sealants / adhesives / coatings / lubrication / cutting fluids', 0, 'Bay 150, Shannon Industrial Estate, Shannon, Co. Clare, Ireland', '+353 61 471229', NULL, '+353 61 471285', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1371, 'Stanley', 'hand tools', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1372, 'Stanley Proto', 'Industrial hand tools', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1377, 'Grindmaster Sales Corporation', 'Abrasives', 0, '539 T. Pinpin Street, Binondo, Manila', '242-9973 to 75 / 244-6564', NULL, '242-9971', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1378, 'Dexterton Corporation', 'Abrasives / Sand papers', 0, '157 Sgt., Rivera Q.C.', '362-1111 / 361-6006 / 362-0545 / Mobile #: 0922-858-1838', NULL, '', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1381, 'Cord Chemicals, Inc.', 'Adhesives / Coatings / Sealants / Paints', 0, '14 Arayat St., Mandaluyong City', '531-1175 / 531-1180 / 531-4860', NULL, '531-4747', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1382, 'Republic Chemical Industries, Inc.', 'Adhesives / Glues / Sealants', 0, 'Head Office: 731 Aurora Blvd., Quezon City, 1112, Metro Manila, Philippines', '721-5781 / 721-5711 / 414-1594 / 414-1595', NULL, '414-1596', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1383, 'EMJAY Chemical Corporation', 'Adhesives', 0, '2 st., Joseph Drive, Cainta Rizal', '655-0884 / 655- 0885', NULL, '', NULL, 'cash purchases', 'Manufacturer, Wholesaler', '', '', 'Active', '0.00', 1, ''),
(1384, 'Jhelet General Merchandising', 'Structural Epoxy Adhesives / Industrial Epoxy Paints & Coatings / Waterproofing Paints & Chemicals', 0, 'Lot 17, Block 283 Commando St., Barangay Rizal, Makati City', '729-0234 / 883-1477', NULL, '729-0235', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1385, 'Sealbond Chemical Industries, Inc.', 'Adhesives / Paints / Coatings', 0, 'Commando St., Makati', '881-8813 / 883-1477', NULL, '729-0235', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1386, 'Armak Abrasive Products', 'fiber discs / cloth and paper belts / rolls & sheets / microtron / scrubbing pads', 0, '2205 Angel Linao St., Malate Manila', '523-2306', NULL, '521-3883', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1387, 'Armidale Chemical & Industrial Corp.', '3M Diamond Disc / Lapping films / Scotchbrite pads & rolls / Green Corp Grinding & Cut-Off discs', 0, '277 T. Morato Av., QC.', '374-5336 / 410-4771 / 372-9627', NULL, '', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1388, 'PFERD', 'Grinding & cut-off wheels / Fine grinding & polishing tools / Tungsten carbide burrs / Mounted points / Tool drives', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1389, 'FEIN', 'Specialists for: Interior Construction / Metal Application / Automotive Application', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1390, 'Deutsche Motorgerate Inc.', 'Chainsaw / Chainsaw Machine / Genuine parts for STIHL 070 / Parts / High Pruner / Sr 490 Backpack Mistblower / Earth Auger / Cutquik / Portable cutquik / Hedge Trimmer / Chainsaws DIY & Professional /  Bush Cutters', 0, '10 Tagdalit St., Manresa, Q.C.', '3302116 to 17 / 4131566 to 57 / Mobile #: 63- 920-9266231', NULL, '', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1391, 'Arte Excelente Design', 'Panaflex / Photo Billboard / Stainless / Plastic / Neon / Silkscreen / Computer-cut Sticker', 0, '8270 Dr. A. Santos Av., Pque.', '710-8440 / 825-8927', NULL, '', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1392, 'Expressign Advtsg & Gen. Services Co.', 'Tarpaulin printing / Panaflex / Neon Sign / Brass/Stainless Sign / Sticker cutting / PVC ID / Billboard Sign', 0, '9154 Sta. Rita Guiguinto', '(044) 794-3837 / Mobile #: 09209823606', NULL, '', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1393, 'Huge Advertising', 'Graphic Design / Printing Services / Fabrication / Booths/Kiosk / Construction / Web Design / Print Media / Advertising Services', 0, '1288 San Andres, Manila', '484-2328', NULL, '484-6087', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1394, 'Espresso Design', 'TV, Radio, Print / Brand Identity / IMC / DM/CRM / POP / Environmental / Digital / Activation / Interior', 0, '116 Valero Makati', '844-0556 / 887-0089', NULL, '844-0268', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1395, 'AB Communications, Inc.', 'Advertising / Public Relations / Promotions / Events Marketing / Billboard / Corporate Image / Brand Development / Logo/Label Design', 0, '20th Floor, Pacific Star Building, Sen. Gil J. Puyat Ave., corner Makati Ave., Makati City', '(632) 815-8466 to 67 / Mobile #: (+63) 917-8516270', NULL, '(632) 811-5623', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1396, 'A-1 Signworx', 'Brass / Stainless / Neon / Panaflex / Markers / Plaque / Streamers / T-Shirt printing / Large Format Tarpaulin', 0, '515 Boni Serrano Q.C.', '437-0238 / Mobile #: 0920-2852014', NULL, '913-3987', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1397, 'MuLtisTiQ Incorporated', 'Large format printers', 0, 'Unit 1809 Prestige Tower, Emerald Ave., Ortigas Center, Pasig City', '(02) 634-8690 / 634-8697 / 636-3219', NULL, '', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1398, 'Norde', 'Large format printers', 0, '102 Kalayaan Ave., Diliman, Quezon City', '(63-2) 435-4899 / 435-9288', NULL, '(63-2) 435-6632', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1399, 'Luxor International Trading Corp.', 'digital printing', 0, 'Brgy. Longos, Alabang-Zapote Rd. 5 LP (Boundary of Bacoor, Cavite)', '846-4292 / 846-6722 / 846-6733', NULL, '846-6711', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1401, 'Giant Little Partners Inc.', 'Large format printers / Offset & Digital printing / Fabrication', 0, '122 Shaw Blvd. Psg.', '667-3953 / Mobile #: 0922-8855179', NULL, '', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1402, 'Bengar Industial Corporation', 'Reciprocating / Screw type / Centrifugal / Refrigerated Air Dryers / Air filters & accessories / Hi-screw Oil', 0, '71 Mauban St., cor. Latukan St., Brgy. Manresa, Quezon City', 'Main Office: 364-1288 / 364-4384 / 364-5113', NULL, '365-0685', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1403, 'Sullair Pneumatic Technologies, Inc.', 'WS Series & LS Series / Sullair Oil & Contaminant Removal System / Sullair Vacuum System / Rotary Screw Air Compressor / Oil Free Air Compressor / Variable speed Drive Compressor / Refrigerated Air Dryers / Regenerative Air Dryers / VS Series Rotary Screw Vacuum System', 0, 'Manila Office: Unit 1001 A & B Richville Corporate Tower, 1107 Alabang-Zapote Road, Madrigal Business Park, Ayala, Alabang, 1770 Muntinlupa City', '807-3355 / 807-5564 / 807-5983 / 772-3633 / 772-3634', NULL, '850-8102', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1404, 'SAE Products Marketing Corp.', 'Turbo Compressors / Air Compressors', 0, '2/F SMS Bldg., 213 Gil Puyat Avenue, Makati City, 1250', '813-1241 to 46', NULL, '844-4420', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1405, 'TOKU Pneumatic Products', 'Hydraulic breakers / Construction tools / Air tools / Material handling', 0, '2461 Sunrise St., MIA Road, Tambo, Parañaque City, Phillipines', '851-5376', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1406, 'Machinebanks Corporation', 'Industrial equipment & supplies', 0, '482 G. Araneta Ave., Quezon City', '(02) 711-3751', NULL, '(02) 712-2484', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1407, 'Northstar Motors Corporation', 'Portable Air Compressor / Breaker w/ Moil Point /Jack Hammer / Hydraulic Breaker', 0, '1122 Edsa Balintawak, Quezon City', '(02) 362-6071 / (02) 330-6817 / (02) 455-2870 to 71 / 330-6815', NULL, '(632) 330-6816', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1408, 'Sullmaster Trading Corp.', 'Air / Oil Filter / Separator / Line Filter / Lubricants', 0, 'Unit 408 Lalaine Building No. 469 Alabang-Zapote Rd., Almanza, Las Piñas City', '(02) 805-3324 / (02) 802-0963', NULL, '(02) 802-0963', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1409, 'Zephyr Engineering', 'Engineering Services', 0, 'Zephyr Bldg., Blk. 219 Lot 11, Target Range Blvd., Zone 12, Pembo, Makati City', '881-8904 to 06 / 401-5651 / 882-4654 / 779-0708', NULL, '881-7721 / 779-0709', NULL, 'cash purchases', 'Dealer / Installer', '', '', 'Active', '0.00', 1, ''),
(1410, 'Weathertech Refrigeration & Airconditioning Co.', 'Refrigeration & Air-conditioning', 0, 'National Road, Tunasan, Muntinlupa City', 'Mobile #: 0922-8984514', NULL, '(02) 861-3053 / (02) 862-0714 / (02) 862-2920', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1411, 'Power Aire', 'Air-conditioning products & services', 0, '386 Quintin Paredes St., Binondo, Manila', '241-3446 to 48 / 243-1838 to 39', NULL, '', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1412, 'The Aircon Experts (Araneta Technologies Inc.)', 'Air-conditioning sales, installation repair & maintenance', 0, '4560 A.P. Reyes Avenue, Makati City', '(02) 895-6173 to 75', NULL, '(02) 897-7336', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1413, 'Colent Diversified Products, Inc.', 'Evaporative Air-conditioner', 0, '2nd Floor, Suite 200 Del Monte Mansion Building, 210 Del Monte Avenue cor. 210 Speaker Perez Street, Quezon City', '412-4317 / 414-9890 / 740-3815 / 742-8140 / 411-2396 to 98', NULL, '411-2395 to 99', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1414, 'Trademaster Resources Corporation', 'Air-conditioning products', 0, 'Lot E 5 Impex industrial Compound, Alabang-Zapote Rd., Pamplona, Las Piñas City', '871-6949 / 871-8983 / 871-5705', NULL, '', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1415, 'Cathay Industrial & Mill Supply, Inc.', 'bolts & nuts', 0, '42 San Francisco St., Karuhatan, Valenzuela City, 1441', '292-2005 to 09 / 292-9811', NULL, '291-9140', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1416, 'Nikkon Manufacturing Company, Incorporated', 'bolts & nuts', 0, 'Perez Road, Bo. Perez, Meycauyan, Bulacan Philippines 3020', '(63) (2) 984-7960 / 984-4928 / (63) (2) 666-2239/1825 / (63) (2) 494-1399 / (63) (44) 695-2235 / 695-2236', NULL, '(63) (2) 984-8311', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1417, 'Belden Cable', 'Cables/Wires', 0, '', '', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1418, 'Sytec Corporation', 'Cables/Wires', 0, '249 Unit-D V. Ibañez Street, Little Baguio, San Juan, Metro Manila', '(632) 744-3374 / (632) 774-8915 / (632) 774-8917', NULL, '725-5675', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1419, 'Tricum Corporation', 'Carbon brushes / Current collector /Brush Holders/Spring / Carbon Seal / Bearing / Packing Ring / Vanes / Brush Seater / Resurfacer', 0, 'Rm. 703 Culmat Bldg., 1270-1330 E. Rodriguez Sr., Ave., Quezon City', '721-6436 / 721-6410', NULL, '722-5403', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1420, 'CarbonMaster Industrial Sales, Inc.', 'Carbon brushes / Carbon vanes / Bearing / Bushing / Packing ring / Seal ring / Brush holder / Constant force spring / Flexible copper connectors / Silver tungsten elect. contacts / Brush seater & commutator cleaner', 0, 'Unit 807, Page 1 Building, 1251 Acacia Ave., Madrigal Business Park Ayala-Alabang, Muntinlupa City', '807-4468 / 807-4918', NULL, '807-5211', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1421, 'Holcim Philippines, Inc.', 'cement', 0, '7th Floor Two World Square Mckinley Hill, Fort Bonifacio, Taguig City', '02-459-3222', NULL, '', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1422, 'Techpro Philippines, Inc.', 'Grade 100 chain slings / Binder chains / Shackles / Turnbuckles / Hooks / Connecting links / Load binders / Clamps / Blocks', 0, 'G/F EHT Bldg., 89 Sen. Gil J. Puyat Avenue, Pasay City, MM', '833-8840 ; 551-6662', NULL, '(632) 833-8841', NULL, 'cash purchases', 'Importer / Wholesaler / Retailer / Indentor', '', '', 'Active', '0.00', 1, ''),
(1423, 'Alyson''s Chemical Enterprises Inc.', 'chemicals', 0, '1425 G. Araneta Ave., near del Monte Ave., Quezon City', '712-2266', NULL, '712-2322', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1424, 'Belman Laboratories', 'chemicals / labware & instruments', 0, 'Belman Bldg. II, Cordillera St. corner Quezon Ave., Quezon City', '(632) 712-0201 / (632) 732-7533 / (632) 711-4383 / (632) 740-4614', NULL, '(632) 712-0182', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1425, 'Metro Industries Inc.', 'Industrial chemicals / Dow corning / Transformer Oil / Oleo Chemicals / Insulating Paper /', 0, '83 Ramon Delfin St., Marulas, Valenzuela City', '+632-456-8835 / +632-293-0539 / Mobile Numbers: +63917-533-2084 / +63922-833-2084', NULL, '+632-293-2693 / +632-432-4467', NULL, 'cash purchases', 'Importer / Wholesaler / Retailer', '', '', 'Active', '0.00', 1, ''),
(1426, 'Praetoria Explotrade Corporation', 'Water-based & Environmentally-Friendly / Cleaning Compounds / Oil & Fuel Additives / Car Care products / Marble Care products / Personal Care products', 0, 'Suite 708, Chateau de Baie, Roxas Boulevard, Parañaque City, Metro Manila', '494-5949 / 494-5939', NULL, '853-5509', NULL, 'cash purchases', 'Manufacturer, Distributor', '', '', 'Active', '0.00', 1, ''),
(1427, 'Alsme Chemical Corporation', 'chemicals', 0, 'Unit 8, Jolliland Townhome, 670-A Edsa, Pasay City', '831-9781/82 / 831-9118 / 833-7274', NULL, '831-8898', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, '');
INSERT INTO `vendor_head` (`vendor_id`, `vendor_name`, `product_services`, `category_id`, `address`, `phone_number`, `mobile_number`, `fax_number`, `email`, `terms`, `type`, `contact_person`, `notes`, `status`, `ewt`, `vat`, `tin`) VALUES
(1428, 'MASSCO Chemical & Marketing Corporation', 'water treatment', 0, 'Unit 8, Jolliland Townhome, 670-A Edsa, Pasay City', '831-9781/82 / 831-9118 / 833-7274', NULL, '831-8898', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1429, 'Weida Philippines Inc.', 'chemicals', 0, '3rd Floor, BT & T Center, 20 E. Rodriguez Jr., Ave., (C-5), Brgy. Bagumbayan, Quezon City, 1110 Philippines', '+632 7062002', NULL, '+632 7064966', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1430, 'Rapid Radio Communications, Inc.', 'Two-way radios / Repeater system / Motorola / Icom / Kenwood / Cobra / Maxon / Yaesu / Senao long range wireless telephone / Solar cells and chargers', 0, 'Block 5, Lot 43C, W. Tecson St., BF Resort Village, Las Piñas City, Philippines', '873-3481 / Mobile #: 0919-628-7542', NULL, '872-1291', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1431, 'Contel Communications, Inc.', 'trunk radio', 0, 'Conception Industries, Inc. Bldg. 308 Sen. Gil Puyat Ave., Makati City', '812-6256 to 59 / 843-0281 to 84', NULL, '818-3078', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1432, 'Triton Communications Corporation', 'two way radio', 0, 'Unit 2706 Ante Global Corporate Center, Julia Vargas Ave., Ortigas  Center, Pasig City', '638-7147 / 638-7175 / 638-7184', NULL, '638-7175', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1433, 'New Royal Plumbing & Hardware', 'Hardware/ Industrial supplies', 0, '813 Tetuan St., Sta. Cruz, Manila, Philippines', '733-6402 / 733-6764 / 733-1369 / 733-5969 /  733-6752 / 733-5977', NULL, '733-5975', NULL, 'cash purchases', 'Importer / Wholesaler / Retailer', '', '', 'Active', '0.00', 1, ''),
(1434, 'GJMT Construction and Industrial Supply', 'Electric powertools / Air compressor / AC ARC welder Drill Press / Bench Grinder / Power Sprayer / Hydraulic Jack / Bar Cutter / Hand Tools Painting Outfits', 0, '775 A. Bonifacio Ave., Balintawak, Quezon City', '364-9054 / 410-6462 / 366-8603', NULL, '', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1435, 'SuperMix Redi Concrete, Inc.', 'Ready mixed Concrete / Concrete Pipes (NRCP/RCP) / Aggregates', 0, '167 J.P. Rizal St., Manggahan, Montalban, Rizal', '948-0301 to 05', NULL, '941-4535', NULL, 'cash purchases', 'Manufacturer, Supplier', '', '', 'Active', '0.00', 1, ''),
(1436, 'Fuji Xerox Philippines', 'photocopy machines / desktop printers', 0, '19F Makati Sky Plaza, 6788 Ayala Ave., Makati City', '(02) 878.5200', NULL, '(02) 886.7135', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1437, 'Thermotrol Electrical Sales & Services', 'electrical', 0, '235-J McArthur Highway, Karuhatan, Valenzuela City', '291-5259 / 291-5257', NULL, '293-1436', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1438, 'Super Electric Heater Industries', 'electrical', 0, '143-145-E 7th Ave., (West) bet. D. Aquino St., & L. Nadurata St., Grace Park, Kalookan City, Metro Manila', '362-0162 / 362-0713', NULL, '', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1439, 'Philflex Philips & Wire & Cable Co.', 'Cables/Wires', 0, 'Philflex Bldg., 407 Dasmariñas St., Binondo, Manila 1006', '(+63-2) 241-8801', NULL, '241-3853', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1440, 'RMR Electric Corporation', 'Electrical Equipment Supplies', 0, 'No. 20 Sumulong Highway, Brgy. Mayamot, Antipolo City', '(632) 681-7777', NULL, '(632) 681-8831', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1441, 'Falcon', 'brass faucets & valves', 0, '58 Acme Road Novaliches, Quezon City', '(632) 939-44-11 / 939-57-90', NULL, '(632) 939-60-57', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1442, 'SuperCast', 'fittings & valves', 0, 'P. Gregorio St., Lingunan, 1446 Valenzuela, M.M.', '443-4536 to 38  / 294-0206 to 08', NULL, '443-4526', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1443, 'DHL Global Forwarding (Philippines), Inc.', 'freight forwarder', 0, 'No. 3 Sta. Agueda Avenue, Pascor Drive Parañaque City, 1704 Philippines', '+63 2 851-1373', NULL, '', NULL, 'cash purchases', 'Forwarder', '', '', 'Active', '0.00', 1, ''),
(1444, 'Advatech Industries, Inc.', 'generator sets', 0, 'Advatech House, Buenconsejo cor. Ligaya Sts., Mandaluyong City', '532-2951', NULL, '532-2778', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1445, 'Kubota Agro-Industiral Machinery Philippines, Inc.', 'generators', 0, 'Kubota Center, 155 Panay Ave., Quezon City', '920-1071 / 927-5533', NULL, '924-1848', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1446, 'Solidedge Co.', 'hydraulic cylinders / pumps / tools / hydraulic torque wrenches', 0, 'Unit 206, 2/F, Ma. Isabel Bldg., No. 650, Boni Avenue, Plainview, Mandaluyong City, Philippines', '(+632) 532-6992', NULL, '(+632) 532-7122', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1447, 'Air-Rich Industrial Systems, Inc.', 'Pneumatic equipment components', 0, '81 P, Sevilla St., Cor. 4th Ave.,  Kalookan City', '362-2295; 362-0596; 361-4794; 363-5410; 364-0772', NULL, '362-4640; 364-0772', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1448, 'R R Hydraulics Inc.', 'hydraulic / pneumatic control systems / components', 0, '7267 A. Bonifacio St., San Dinisio, Parañaque', '826-1450; 829-7948; 826-1447; 826-6831', NULL, '829-1696', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1449, 'Gulf Oil Philippines, Inc.', 'lubricants', 0, '39 M. Lozada St., St. Rosario Silangan, Pateros, M.M.', '(02) 628-1309 / 640-3355', NULL, '(02) 643-5701', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1450, 'Valvoline Philippines', 'lubricants', 0, '22 Tandang Sora Ave., Quezon City', '(632) 984-8075 to 77', NULL, '(632) 984-4412', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1451, 'Unioil Petroleum Philippines, Inc.', 'lubricants', 0, '2445 Pedro Gil St., Sta. Ana, Manila', '(02) 561-2984 / 564-1991', NULL, '(02) 563-4293', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1452, 'Nichiyu Asialift Philippines, Incorporated', 'pallet trucks manual/electric / reach trucks / rack forklift trucks / counter balanced trucks / forklift industrial batteries', 0, 'No. 9 M. Flores Street, Brgy. St. Rosario Silangan, Pateros, Metro Manila, Philippines', '(63) 2 640-1088 / 640-7088', NULL, '(63) 2 640-4488', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1453, 'Brother International Philippines Corporation', 'Fax machine / Color inkjet / A3 Color inkjet / Monochrome laser printer / Monochrome laser multi-function center / Color laser multi-function center / Electronic labeller', 0, '6th Floor Marajo Tower, No. 312 26th Street West cor. 4th Avenue, Bonifacio Global City, Taguig City', '(02) 581-9800', NULL, '(02) 581-9811', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1454, 'J.J. Fortuno Gen. Merchandise', 'whiteboard / corkboard / easel board', 0, '5 St. Anthony St., BF Homes Road QC', '994-0190; 951-0333; 431-8419', NULL, '931-3883', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1455, 'Emerald Vinyl Corporation', 'PVC Pipes / Pvc Fittings / Pvc Door', 0, '24 Oliveros Drive, Balintawak, QC', '361-6101 to 04 / 362-8021 to 24 / 453-0707 / 453-8360 / 453-8367', NULL, '361-6740', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1456, 'Goodyear Steel Pipe Corporation', 'Steel Pipes', 0, '128 Quirino  Highway, Quezon City', '330-7025 to 29 / 455-4923--30', NULL, '362-1752', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1457, 'Integrated Hydro Pneumatic Systems, Inc.', 'Air cylinders / Solenoid valves / Pneumatic valves / Air filter/Regulator/Lubricator / Fittings & Hoses / Vacuum Generators / Suction cups / Pneumatic Rotary Actuators / Air Blow Gun / Silencers / Shock Absorber / Flow Control Valves / Quick Couplers', 0, 'No. 4 St., Tomas Ave., Lopez Comm''l. Area, Parañaque', '820-0569 to 70 / 820-0573 to 74', NULL, '825-2618', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1458, 'Grundfos Pumps (Philippines), Inc.', 'Pumps & Motors', 0, '2308 Ground Floor Natividad Bldg., Pasong Tamo Extension, 1231 Makati City', '(02) 840-2300 / 813-1547', NULL, '(02) 813-1548 / 812-8854', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1459, 'Bestank Manufacturing Corporation', 'pumps', 0, 'San Marino Compound No. 668 T. Santiago St., Lingunan Valenzuela City, Metro Manila', '292-5726/27', NULL, '294-3256', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1460, 'GEA Grasso (Philippines) Inc.', 'Industrial Refrigeration / Design / Contracting / Engineering / Fabrication', 0, '4A Panorama Compound, Veterans Center, 1630 Taguig, Metro Manila, Philippines', '+63 (0)2 - 837 - 3211', NULL, '+63 (0)2 - 837 - 3120', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1461, 'Tetrahedron Marketing', 'safety equipment & consumables', 0, '3811 Daffodil St., Sun Valley Subd. Km. 15 West Service Rd. South Super Hi-way, Parañaque City', '(632) 821-3107 / Mobile numbers: 0923-9108922 / 0922-8026059', NULL, '', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1462, 'Remington Industrial Sales Corporation', 'Hardware / Wire rope / Valves / Steel products', 0, 'EDSA cor. 1 Gen. Concepcion, Kalookan City', '367-9001 to 17', NULL, '330-0008 / 330-0009', NULL, 'cash purchases', 'Importer / Wholesaler / Retailer', '', '', 'Active', '0.00', 1, ''),
(1463, 'Regan Industrial Sales, Inc.', 'Pipes / Hardware', 0, 'No. 5 Harmony St., Grace Village, Balintawak, Quezon City, Philippines', '361-3492', NULL, '361-3494', NULL, 'cash purchases', 'Importer / Wholesaler / Retailer', '', '', 'Active', '0.00', 1, ''),
(1464, 'Marketing Proponents Incorporated', 'Purlins C & Z types / Mild Steel Plates / Hot Rolled Sheets / Cold Rolled Sheets / Seamless Pipes / Checkered Sheets / Angle bars / Channels / Flat bars / Wide Flanges / I-beams', 0, '24 Oliveros Drive, Balintawak, QC, Metro Manila', '362-8021 to 24; 453-0707; 453-8360; 453-8367', NULL, '361-6740', NULL, 'cash purchases', 'Importer / Wholesaler', '', '', 'Active', '0.00', 1, ''),
(1465, 'Capitol Steel', 'steel bars', 0, '300 Quirino Highway, Baesa, Quezon City 1106, P.O. 13000, Ortigas Center, Pasig, Metro Manila 1653', '359-8888 to 94 / 359-8895 to 96', NULL, '359-8800 / 359-8897', NULL, 'cash purchases', 'Supplier', '', '', 'Active', '0.00', 1, ''),
(1466, 'Builders Steel Corporation', 'steel bars', 0, 'No. 19 Daang Bato Street, Lawang Bato, Valenzuela City', '445-4170 to 75 / 983-7841 to 42', NULL, '445-4175', NULL, 'cash purchases', 'Manufacturer', '', '', 'Active', '0.00', 1, ''),
(1467, 'Tuffline Valves Fittings & Services', 'Fire Protective valves / Stainless Steel valves / Cast Iron/Cast Steel / Bronze valves / Marine valves / Fittings', 0, '828 Reina Regente St., Binondo, Manila', '244-9422, 244-2255, 244-1197, 244-4439, 244-5834, 244-1195, 244-4450, 244-1057, 244-5835, 244-1198, 244-4451', NULL, '244-1190', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1468, 'Jafed Solar Equipment Trading', 'Batteries / Battery Charger', 0, '727 Ground Floor, Tri-O Building, EDSA, Brgy. Pinagkaisahan, Cubao, Quezon City 1109', '(02) 8414 8040 / 8919 0121 / Mobile Numbers: 0999 426 7676 / 0927 626 1693', NULL, '', NULL, '60% downpayment, 40% before dispatch', 'Wholesaler / Retailer', 'Juvy S. Tamayo', '', 'Active', '0.00', 1, ''),
(1469, 'Afa Technologies Inc.', 'UPS & other Power Supply products / Batteries / Battery Charger', 0, '126 K-10th St., Brgy. East Kamias, Quezon City, Metro Manila, Philipines', '(+63 2) 8928-5060; 8924-1729; 8666-3026; 8986-7510; 8998-6926; 8998-6928;  8668-2457; 8984-6684', NULL, '(+63 2) 7946-1719', NULL, '50% down-payment upon P.O., 50% COD upon Delivery (Payment will be made thru bank 3 days clearing)', 'Supplier / Distributor', 'James D. Gente', '', 'Active', '0.00', 1, ''),
(1471, 'Ebara Pumps Phils. Inc.', 'Pump Systems', 0, 'Canlubang Industrial Estate, Cabuyao 4025, Laguna, Philippines, P.O. Box 3461 MCPO, 1274 Makati', '63 (49) 5491806', NULL, '63 (49) 549-1915', NULL, '50% downpayment, balance upon delivery', 'Manufacturer', 'Arnel A. Barcelona', '', 'Active', '0.00', 1, ''),
(1472, 'Kings Safetynet', 'Safety shoes spill and management control traffic safety products safety signage', 0, '849 O.L. Liongson Building Tomas Mapua St. Sta Cruz Manila 1003', '742-0168 741-1507 741-1512', NULL, '712-8055', NULL, '30 days PDC', '', 'Ms. Jona D. Buendia', '', 'Active', '0.00', 1, ''),
(1473, 'Babys Grocery', 'office supplies', 0, 'San Vicente, Calapan City, Oriental Mindoro', '', NULL, '', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 0, ''),
(1474, 'King Zebra Gen. Mdse.', 'office supplies', 0, 'San Vicente, Calapan City, Oriental Mindoro', '', NULL, '', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 0, ''),
(1475, 'Octagon Computer Shop', 'computer equipment & supplies', 0, 'Xentro Mall, Calapan City', '288-7036', NULL, '', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1476, 'New Rodolfos Hardware', 'electric supplies', 0, 'San Vicente, Calapan City, Oriental Mindoro', '288-4388', NULL, '', NULL, 'cash purchases', 'Distributor', 'Mr. Allan', '', 'Active', '0.00', 0, ''),
(1477, 'Asiongs Industrial Product', 'PPE products and safety wear', 0, '#77 Magnolia St., Quezon City', '371-4876/ 411-3629', NULL, '373-8954', NULL, '30 days PDC', 'Distributor', 'Ms. Shiela Prudenciado/Ms. Rose', '', 'Active', '0.00', 0, ''),
(1478, 'Phoenix Petroleum Philippines Inc.', 'fuel lubricants', 0, 'Cambodia St.BREDCO Reclamation Area', '0917-5222-874', NULL, '', NULL, 'M/45', '', 'Mr.Herbert G.Domingo', '', 'Active', '0.00', 1, ''),
(1479, 'R Kings Gas Station', 'fuel lubricants', 0, 'Camilmil Calapan City Oriental Mindoro 5200', '', NULL, '', NULL, 'COD', '', '', '', 'Active', '0.00', 1, ''),
(1480, 'Calapan Continental', 'Industrial materials (pumps, motor parts, consumables, hardware products)', 0, 'San Vicente, Calapan City, Oriental Mindoro', '288-4650', NULL, '', NULL, '30 days PDC', 'Distributor', 'Ms. Jenny', '', 'Active', '0.00', 1, ''),
(1481, 'Gercon Shell Gas Station', 'fuel lubricants', 0, 'Camilmil Calapan City Oriental Mindoro 5200', '288-4279', NULL, '288-4279', NULL, 'COD', '', '', '', 'Active', '0.00', 1, ''),
(1482, 'Tower General Merchadise', 'consumables / hardware ', 0, '#1009 Int. 103 Benavidez St., Binondo, Manila', '516-0455', NULL, '516-0455', NULL, '30 days PDC', 'Distributor', 'Mr. Cliff Ilao', '', 'Active', '0.00', 0, ''),
(1483, 'Steel Port Hardware', 'construction supplies', 0, 'Tawiran, Calapan City, Oriental Mindoro', '043-286-7983', NULL, '', NULL, '15 days PDC', 'Industrial', 'Ms. Margie', '', 'Active', '0.00', 0, ''),
(1484, 'Mindeus Enterprises', 'computer equipment & supplies', 0, 'San Vicente, Calapan City, Oriental Mindoro', '043-441-3087 / Mobile Number: 0907-451-4743', NULL, '', NULL, 'cash purchases', 'Distributor', 'Mr. Reynaldo Bae', '', 'Active', '0.00', 1, ''),
(1485, 'Mercury Drug', 'medicine supplies', 0, 'San Vicente, Calapan City, Oriental Mindoro', '', NULL, '', NULL, 'cash upon pick up', '', '', '', 'Active', '0.00', 0, ''),
(1486, 'Yana Chemodities Inc.', 'chemicals', 0, '151 Kaliraya St., Quezon City', '732-2329', NULL, '732-0171', NULL, 'cash upon pick up', '', '', '', 'Active', '0.00', 0, ''),
(1487, 'Steel King Enterprises', 'construction supplies', 0, 'Tawiran, Calapan City, Oriental Mindoro', '043-288-2364', NULL, '', NULL, '30 days PDC', 'Distributor', 'Ms. Nene', '', 'Active', '0.00', 1, ''),
(1488, 'Prima Enterprises', 'construction supplies / hardware / consumables / lumber / Industrial', 0, 'Calapan City, Oriental Mindoro', '043-288-4361', NULL, '', NULL, '30 days PDC', 'Distributor', 'Mr. Ajo', '', 'Active', '0.00', 0, ''),
(1489, 'MD Trade Power', 'Engine Parts-Pielstick PC 2.5v', 0, 'Alte Kreisstr 1 39171 Sulzetal Germany', '0049 391 727678 13', NULL, '', NULL, 'prepayment', '', 'Steven Wnendt', '', 'Active', '0.00', 1, ''),
(1490, 'GoldTown Imports', 'consumables', 0, '160 M.H. Del Pilar St. 8th to 9th Ave., Caloocan City', '364-7890 / 365-8357', NULL, '', NULL, 'cash payment', 'Distributor', 'Ms. Cathy Sy', '', 'Active', '0.00', 0, ''),
(1491, 'Southern Gas', 'acetylene / oxygen refill', 0, 'Calapan City, Oriental Mindoro', '043-286-7250', NULL, '', NULL, '30 days PDC', 'Distributor', 'Jess / Ms. Moneth', '', 'Active', '0.00', 0, ''),
(1492, 'Franchiz Services Inc', 'spare parts', 0, '#7B Mango Road, Potrero, Malabon City', '361-4235; 362-2265; 330-2019', NULL, '428-2540', NULL, '30 days PDC before delivery', 'Distributor', 'Engr. Jose A. Francia', '', 'Active', '0.00', 1, ''),
(1493, 'Bossafety Inc', 'PPE products and safety wear', 0, '726 J. P. Rizal St., Gozon Compound, Tañong Malabon City', '02-3763700', NULL, '02-9215704', NULL, 'COD', 'Distributor', 'Mr. Richard B. Sioco', '', 'Active', '0.00', 1, ''),
(1494, 'DIGI Computer Land', 'computer equipment & supplies', 0, 'Xentro Mall, Calapan City', '288-7026', NULL, '', NULL, 'COD', 'Distributor', 'Ms. Fatima', '', 'Active', '0.00', 0, ''),
(1495, 'Energychem Industry, Inc.', 'Services: Overhauling/Reconditioning of all types of Diesel Engines spare parts / separator & spare parts / compressor & spare parts / filter & spare parts / pumps & spare parts / fresh water distiller and spare parts / plate heat exchanger & spare parts/ boiler systems repair & rehab / Alfa Laval', 0, 'Unit 603 Ayala FCU Center, Alabang Zapote Rd. cor. Acacia Ave., Madrigal Business Park, Ayala Alabang 1770, Muntinlupa City', '+63 2 4038741; + 63 2 8079897', NULL, '+ 63 2 8079897', NULL, '', '', 'Ariane A. Jacob', '', 'Active', '0.00', 1, ''),
(1496, 'Decarich Trading', 'Furniture office supplies office tables and chairs', 0, '30N Domingo St.Quezon City', '416-5354', NULL, '416-5354', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 1, ''),
(1497, 'Ganch Home plus', 'Furniture office supplies office tables and chairs', 0, 'Camilmil Calapan City Oriental Mindoro 5200', '', NULL, '', NULL, '', '', '', '', 'Active', '0.00', 1, ''),
(1498, '', '', 0, '', '', NULL, '', NULL, '', '', '', '', '', '0.00', 0, ''),
(1499, '', '', 0, '', '', NULL, '', NULL, '', '', '', '', '', '0.00', 0, ''),
(1500, 'Powercomp Industrial Sales & Services', 'Supplier and servicing of industrial equipment on air compressors and pneumatics, air conditioning, electro-mechanical installation and fabrication, repair and maintenance of pumps and equipment.', 0, 'B56, L27 Legazpi St., Upper Bicutan, , Taguig City, Metro Manila, NCR, Philippines, 1630', '801-4074', NULL, '801-4074', NULL, 'COD', '', 'Ms.Juliet Magallanes', '', 'Active', '0.00', 1, ''),
(1501, 'Aeras Industrial Machine Services', 'Supplier and servicing of industrial equipment on air compressors and pneumatics, air conditioning, electro-mechanical installation and fabrication, repair and maintenance of pumps and equipment.', 0, '#179 Independence Drive GSIS San pedro Laguna', '403-1604', NULL, '478-8129', NULL, '30 days PDC', '', 'Mr.Henry Descaller', '', 'Active', '0.00', 1, ''),
(1502, 'Compresstech Resources, Inc.', 'Supplier and servicing of industrial equipment on air compressors and pneumatics, air conditioning, electro-mechanical installation and fabrication, repair and maintenance of pumps and equipment.', 0, 'Building 665 Pres. E., Quirino Ave, Malate, Manila, 1004 Metro Manila', '8567 4389', NULL, '8567 4389', NULL, 'COD', '', 'Ms.Ellen Gacuza', '', 'Active', '0.00', 1, ''),
(1503, 'Great Lakes Enterprises', 'construction supplies', 0, 'C-5 Calapan City', '043-286-8109', NULL, '', NULL, '7 days PDC', '', 'Ms. Liza', '', 'Active', '0.00', 0, ''),
(1504, 'PC Express', 'computer equipment & supplies', 0, '4th Floor Bldg. B Cyberzone Megamall Branch', '942-5001 / Mobile Number: 0922-8009968', NULL, '', NULL, 'cash purchases', 'Distributor', 'Mr. Arvin Antonio', '', 'Active', '0.00', 0, ''),
(1505, 'Marcing Cocolumber & Construction Supplies', 'construction supplies', 0, 'Tawiran, Calapan City', '043-286-7484', NULL, '', NULL, '15 Days PDC', 'Distributor', 'Ms. Angie', '', 'Active', '0.00', 0, ''),
(1506, 'Goal Team Trading', 'water system & deepwell', 0, '8B Joy St. Grace Village, Balingasa, Quezon City', '410-8832 / 709-2671', NULL, '361-4507', NULL, 'cash', 'Distributor', 'Ms. Glenda Briones', '', 'Active', '0.00', 0, ''),
(1507, 'FloSystems Import & Export Inc.', 'water system & deepwell', 0, '73 Tirad Pass, Bagong Barrio, Caloocan 1400 Philippines', '(632) 367-9517; 367-9518; 367-9520', NULL, '(632) 367-9432', NULL, 'online deposit', 'Distributor', 'Kimberly De Chavez', '', 'Active', '0.00', 1, ''),
(1508, 'Excel Worldwide Marketing Corporation', 'water system & deepwell', 0, '64 Ilang-Ilang St., 11th Avenue Grace Park, Cal. City', '366-4381; 366-7071; 366-4114', NULL, '366-4115; 361-1182', NULL, 'cash', 'Distributor', 'Cora D. Sia', '', 'Active', '0.00', 1, ''),
(1509, 'Coolut Trading Corporation', 'Industrial (hardware, consumables)', 0, 'Calapan City', '288-4650', NULL, '', NULL, '30 Days PDC', 'Distributor', 'Ms. Ellen', '', 'Active', '0.00', 1, ''),
(1510, 'Beth Construction', 'hardware / consumables / termite control', 0, 'Calapan City, Oriental Mindoro', '288-5968', NULL, '', NULL, 'cash purchases', 'Distributor', 'Angie / Gemma', '', 'Active', '0.00', 0, ''),
(1511, 'Megalife Drugstore', 'medicine supplies', 0, 'San Vicente, Calapan City, Oriental Mindoro', '', NULL, '', NULL, 'cash upon pick up', 'Distributor', '', '', 'Active', '0.00', 0, ''),
(1512, 'C & M Interior', 'home & office furniture', 0, '3015 Rizal Avenue Ext. Sta. Cruz, Manila', '0917-591-4739', NULL, '', NULL, 'bank transfer', 'Distributor', 'Mr. Chris Gonzales', '', 'Active', '0.00', 0, ''),
(1513, 'Active Control Automation and Industrial Sales Corporation', 'electrical / barring gear control', 0, 'Unit G Marian Building, 1524 Peñafrancia St., Paco, Manila, Philippines 1007', '+632 871-0273 to 74 / 871-0873 / 781-3964 / 554-9763', NULL, '+632 353-8378', NULL, '15 days PDC', 'Distributor', 'Christine Mayores / Ms. Kimberly Ramos', '', 'Active', '0.00', 0, ''),
(1514, 'DMs Oil Purifier Services and Supply', 'Alfa Laval', 0, '#11 - A Esteban St., Mandaluyong', '654-1521', NULL, '', NULL, '30 days PDC', 'Distributor', 'Mr. Dong Mendoza', '', 'Active', '0.00', 0, ''),
(1515, 'Robinson  Builders', 'hardware', 0, 'Masipit, Calapan City', '', NULL, '', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 0, ''),
(1516, 'NNE Electrotrading Inc.', 'Electrical Equipment Supplies', 0, '1717 Mendoza St., Brgy. 338 Zone 034 Sta. Cruz, Manila', '711-2627 / 711-0324', NULL, '', NULL, '15 days PDC', 'Distributor', 'Ms. Lorna / Ms. Clarisse', '', 'Active', '0.00', 0, ''),
(1517, 'Willanstrong Bolt and Nuts Trading', 'spare parts / consumables', 0, 'Tawiran, Calapan City, Oriental Mindoro', '', NULL, '', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 0, ''),
(1518, 'Learning Tools Enterprises', 'office supplies', 0, 'Calapan City, Oriental Mindoro', '', NULL, '', NULL, '30 days PDC', 'Distributor', '', '', 'Active', '0.00', 0, ''),
(1519, 'Calapan BMC', 'parts supply / repair center / grass cutter parts', 0, 'Camilmil, Calapan City', '0922-876-6310', NULL, '', NULL, 'cash purchases', 'Distributor', 'Ben M. Chua', '', 'Active', '0.00', 0, ''),
(1520, 'Vercup Trading', 'spare parts', 0, 'Navotas, Manila', '351-04-26 / 287-5078 / Mobile Number: 0917-424-8871', NULL, '', NULL, 'cash purchases', 'Distributor', 'Vergelio Cupcupin', '', 'Active', '0.00', 0, ''),
(1521, 'Nanuts Native Product', 'consumables', 0, 'Public Market, Calapan City', '', NULL, '', NULL, 'cash purchases', 'Retailer', '', '', 'Active', '0.00', 0, ''),
(1522, 'R Kings Agricultural Supply', 'agricultural supply / chemicals', 0, 'Lalud ,Calapan City', '', NULL, '', NULL, 'cash purchases', 'Distributor', '', '', 'Active', '0.00', 0, ''),
(1523, 'Auto Active Trading Corporation', 'car parts', 0, 'B74L2 Don Mariano Marcos Avenue North Fairview QC.', '935-2458', NULL, '', NULL, 'COD', 'Distributor', 'Ms. Phoebe Abino', '', 'Active', '0.00', 0, ''),
(1524, 'Richwell Trading Corporation', 'tires', 0, '#25 Quezon Ave., Quezon City', '732-51-42', NULL, '740-46-74', NULL, 'cash purchases', 'Distributor', 'Ms. Cheng Reyes', '', 'Active', '0.00', 0, ''),
(1525, 'Theo Pam Trading Corp', 'chemicals', 0, '2825 Park Avenue, Pasay City', '831-6463 / 831-4808', NULL, '', NULL, 'cash purchases', 'Distributor', 'Mr. Mitchell Go / Ms. Lei Pugal', '', 'Active', '0.00', 1, ''),
(1526, 'Brownstone Asia Tech Inc', 'laboratories testing / laboratory equipment', 0, '940 P. Lopez St., New Zaniga, Mandaluyong City 1552', '(+632) 534-4380 / (+632) 535-0971', NULL, '(+632) 533-6459', NULL, 'COD', 'Distributor', 'Ms. Glenda Serrano', '', 'Active', '0.00', 1, ''),
(1527, 'Best Electrical Components Inc', 'electric supplies', 0, 'Ompong Building, 40 Sen. Gil J. Puyat Ave., Makati, 1234 Metro Manila', '843-0785', NULL, '', NULL, 'cash purchases', 'Supplier', 'Mr. Ian Dayao', '', 'Active', '0.00', 0, ''),
(1528, 'Sergat Enterprises', 'hose / machinery / honing machine hoist', 0, 'Tawiran, Calapan City, Oriental Mindoro', '0925-557-8889', NULL, '', NULL, '15 days PDC', 'Distributor', 'Mr. Felix Gata', '', 'Active', '0.00', 0, ''),
(1529, 'Green Horizon Lands and Developers Inc', 'contractors equipment and supplies renting', 0, '29 Visayas Avenue Extension, Quezon City, Philippines', '(632) 924-9924 / 924-9923 / 924-5965', NULL, '924-8003', NULL, '', 'Contractor', 'Reynaldo C. Santiago', '', 'Active', '0.00', 0, ''),
(1530, 'Arenger', 'trucking service', 0, 'Luna Sq., JP Rizal St., Lalud, Calapan City', '(043) 4416430 / Mobile Numbers: 0939-906-1660 / 0932-876-2648', NULL, '', NULL, '', 'Forwarder', 'Engr. Leovino P. Macaraig, Jr.', '', 'Active', '0.00', 0, ''),
(1531, 'Cylinder Enterprises', 'air-conditioning / car-aircon', 0, 'Lalud, Calapan City', '(043) 286-7265 / Mobile Number: 0919-4078939', NULL, '', NULL, '', 'Contractor', 'Argene Ian N. Reyes / Angelica B. Reyes', '', 'Active', '0.00', 0, ''),
(1532, 'Calapan Paint Center', 'paints', 0, 'Tawiran, Calapan City, Oriental Mindoro', 'Mobile Numbers: 0930-8530746 / 0933-3725626', NULL, '', NULL, '', 'Dealer', 'Angelo "Boyet" Palma', '', 'Active', '0.00', 0, ''),
(1533, 'LMC Industrial Enterprises', 'fire hose system / fire extinguishers system / fire alarm system / fire detection system  / janitorial and maintenance', 0, 'Maharlika St., Camilmil, Calapan City', '(043) 286-7666 / Mobile Number: 0916-7103263', NULL, '', NULL, '', 'Contractor', 'Anna Prangue', '', 'Active', '0.00', 0, ''),
(1534, 'D Abels Enterprises', 'roll up doors', 0, 'Masipit, Calapan City', '(043) 288-4648 / Mobile Number: 0919-2131263', NULL, '', NULL, '', '', 'Jimboy Cantos', '', 'Active', '0.00', 0, ''),
(1535, 'Calapan Oriental Machine and Engineering (COME)', 'engine reconditioning', 0, '253 J.P. Rizal St., Camilmil, Calapan City, Oriental Mindoro', '(043) 288-2176 / Mobile Numbers: 0917-5620150 / 0998-9821270', NULL, '', NULL, '', 'Contractor', 'Leovy M. Bawasanta', '', 'Active', '0.00', 0, ''),
(1536, 'J Mata Steel Inc', 'steel / cables / wires', 0, '#808 Armela Compound Km. 17,West Service Road, Sucat, Parañaque City', '+63 917 300 3165', NULL, '', NULL, '', '', 'Anil Amarnani', '', 'Active', '0.00', 0, ''),
(1537, 'DIGI@rts', 'lay outing, printing of tarpaulin / panaflex / stickers / roller banner / personalized mugs / tumbler / key chain / t-shirt / PVC ID / Ref. Magnet / Caps / Invitations / Lamination / CD Burning', 0, 'G/F Feraren Bldg. Leuterio St., San Vicente Central, Calapan City, Oriental Mindoro', '043-288-8308 / Mobile Numbers: 0917-8573-579 / 0999-3422-317', NULL, '', NULL, '', '', 'Rachel Garcia-Alejandro', '', 'Active', '0.00', 0, ''),
(1538, 'Elegante Home Center', 'glass and aluminum', 0, 'Tawiran, Calapan City, Oriental Mindoro', '(043) 288-2401 / Mobile Number: 0908-894-5717', NULL, '', NULL, '', 'Supplier', 'Angelica Caraig', '', 'Active', '0.00', 0, ''),
(1539, 'A Velasquez Collection', 'business wear', 0, '#8C Main Avenue Cubao, Quezon City, Philippines', '(632) 654-68-98 / (632) 782-4695 / Mobile Numbers: 0917-840-5037 / 0922-840-5037', NULL, '', NULL, '', 'Manufacturer', 'Adelinda Liao Velasquez', '', 'Active', '0.00', 0, ''),
(1540, 'Prima Home Depot', 'construction materials / steel bars / cement / roofing / paints / hardware', 0, 'Camilmil, Calapan City, Oriental Mindoro', '(043) 288-2447 / (043) 286-7372 / (043) 441-6684', NULL, '(043) 288-2447 / (043) 286-7372 / (043) 441-6684', NULL, '', 'Distributor', 'Cel Ramos', '', 'Active', '0.00', 0, ''),
(1541, 'Cool Wave Air conditioning Marketing & Services', 'car aircon / auto electrical / repair and maintenance / installation / refrigeration', 0, 'J.P. Rizal St., National Hi-Way, Tawiran, Calapan City', '(043) 286-7166 / (043) 411-0400 / Mobile Number: 0929-2928395', NULL, '', NULL, '', '', 'Marivic I. Lumanglas', '', 'Active', '0.00', 0, ''),
(1542, 'Super 8 Enterprises', 'glass and aluminum', 0, 'Sta. Isabel, Calapan City', '(043) 288-22-88 / Mobile Numbers; 0916-850-2288 / 0919-774-1288', NULL, '', NULL, '', 'Manufacturer', 'Engr. Armin C. Suzara', '', 'Active', '0.00', 0, ''),
(1543, 'Graphene Printing and Design', 'tarpaulin printing / t-shirt printing / mugs and invitation printing', 0, 'J.P. Rizal St., Camilmil, Calapan City', '(043) 441-6705 / Mobile Number: 0909-7061-681', NULL, '', NULL, '', '', 'Cristina Obania', '', 'Active', '0.00', 0, ''),
(1544, 'Tatak @ Souvenirs', 'tarpaulin printing / car stickers', 0, 'Gov. Infantado St., Calapan City, Oriental Mindoro', '441-6082 / Mobile Numbers: 0922-310-3759 / 0917-656-3037', NULL, '', NULL, '', '', 'JP Paned / Jenn', '', 'Active', '0.00', 0, ''),
(1545, 'Calapan Glass and Stainless Supply', 'glass / aluminum / stainless / /roofing / uPVC window / blinds / polycarbonate', 0, 'Tawiran, Calapan City, Oriental Mindoro', '(043) 286-8177 / Mobile Numbers: 0922-804-8177 / 0908-865-3316', NULL, '', NULL, '', 'Manufacturer', 'Billy Joe M. Macasinag', '', 'Active', '0.00', 0, ''),
(1546, 'Maxs Restaurant', 'restaurant', 0, 'J.P. Rizal St., Camilmil, Calapan City, Oriental Mindoro', '+6343 441-0551 / +6343 288-1145 / Mobile Numbers: +63908 873-5200', NULL, '', NULL, '', '', 'Christopher Philip A. Crone', '', 'Active', '0.00', 0, ''),
(1547, 'Princess Sally Botique', 'bags and wallets', 0, 'G/F Greenhills Shopping Center, San Juan, Metro Manila, Philippines', 'Mobile Numbers: 0927-3123377 / 0908-4850721', NULL, '', NULL, '', 'Distributor', 'Ms. Sally', '', 'Active', '0.00', 0, ''),
(1548, 'Sarmientos Welding Shop', 'automotive repair shop', 0, 'Tawiran, Calapan City, Oriental Mindoro', 'Mobile Numbers: 0919-4362504 / 0928-2076230 / 0927-2227328 / 0915-1332598', NULL, '', NULL, '', 'Contractor', 'Sofio "Ping" V. Sarmineto', '', 'Active', '0.00', 0, ''),
(1549, 'East West Banking Corporation', 'bank', 0, 'G/F Paras Bldg., J.P. Rizal Street, San Vicente South, Calapan City, Oriental Mindoro 5200', '+63 (2) 575-3888 loc. 8220 /+63 (043) 288-1809 / Mobile Number: +63 (995) 542-3552', NULL, '+63 (043) 288-1871', NULL, '', '', 'Gloria Castillo Mendoza', '', 'Active', '0.00', 0, ''),
(1550, 'AM Builders Depot', 'Hardware/ Industrial supplies / consumables', 0, '#39 Nat''l Road, Brgy. Masipit, Calapan City, Oriental Mindoro', '(043) 288-2452 / Mobile Number: (0943) 529-1676', NULL, '', NULL, '', 'Distributor', 'Jeanie Ann P. Dimaala', '', 'Active', '0.00', 0, ''),
(1551, 'Mayo & Saimah', 'bags', 0, 'G/F Greenhills Shopping Center, San Juan, Metro Manila, Philippines', 'Mobile Numbers: 0918-2820734 / 0920-1034281', NULL, '', NULL, '', '', '', '', 'Active', '0.00', 0, ''),
(1552, 'Neo Calapan Realty Corporation', 'real estate', 0, '2nd Floor, Clubhouse Neo Calapan Compound', 'Mobile Numbers: 0939-916-6407 / 0917-830-2449 / 0922-809-5750', NULL, '', NULL, '', 'Builder', '', '', 'Active', '0.00', 0, ''),
(1553, 'MMIX Enterprises', 'cakes & sweets', 0, 'J.P. Rizal St., San Vicente East, Calapan City', '(043) 288-4639 / Mobile Numbers: 0943-545-6107 / 0995-500-4234', NULL, '', NULL, '', '', '', '', 'Active', '0.00', 0, ''),
(1554, 'Pards Litsong Manok at Tsibugan and Catering Services', 'catering services / dine in', 0, 'Nautical Highway, Bayanan I, Calapan City', '0915-633-2003', NULL, '', NULL, '', '', 'Mr. Allan Quinzon', '', 'Active', '0.00', 0, ''),
(1555, 'CaL Print Works', 'USB flash drives and Corporate giveaways', 0, 'Unit-B 195 Pluto St., Brgy. Bahay Toro, Project 8, Quezon City', '(02) 799-6994 / (02) 799-6931 / Mobile Numbers: (+63) 917-719-6448 / (+63) 908-821-2018 / (+63) 965-759-3359', NULL, '', NULL, '', 'Manufacturer', 'Patrick Cabangon', '', 'Active', '0.00', 0, ''),
(1556, 'Zip Glass and Aluminum Supply', 'sliding doors / sliding windows / casement / awning / screen doors / aluminum showcase', 0, 'Tibag, Calapan City', 'Mobile Numbers: 09195394585 / 09157852750 / 09076076951', NULL, '', NULL, '', 'Manufacturer', '', '', 'Active', '0.00', 0, ''),
(1557, 'Cely''s Flowershop', 'flowers', 0, 'Stall #41 1265 MFC Dos Castillas St., Sampaloc, Manila', '261-2037 / Mobile Numbers: 0937-372-7124 / 0916-655-3947', NULL, '', NULL, '', '', 'Arlene M. King', '', 'Active', '0.00', 0, ''),
(1558, 'Leo Adeva Enterprises', 'tires / auto supply', 0, 'Camilmil, Calapan City', '286-7929  /Mobile Number: 0917-8510914', NULL, '', NULL, '', 'Supplier', 'Leo Adeva', '', 'Active', '0.00', 0, ''),
(1559, 'Javs Aluminum, Glass and General Merchandise', 'glass and aluminum', 0, 'J.P. Rizal St., Calapan City, Oriental Mindoro', 'Mobile Numbers: 0939-872-4484 / 0919-825-0085', NULL, '', NULL, '', 'Manufacturer', 'Adam Vincent S. Sioco III', '', 'Active', '0.00', 0, ''),
(1560, 'Ma Jimmy''s Arts and Decors', 't-shirt printing / balloons decorations / stage decorations / Styrofoam backdrops / flower arrangement / sash / art project of all sort', 0, 'Barcenaga, Naujan, Oriental Mindoro', 'Mobile Numbers: 0909-488-9688 / 0905-423-2326', NULL, '', NULL, '', '', 'Mr. Franz Jordan C. Balbuena', '', 'Active', '0.00', 0, ''),
(1561, 'Ma Jimmys Arts and Decors', 't shirt printing, balloons decorations, stage decorations, styrofoam backdrops, flower arrangement, sash, art project of all sort', 0, 'Barcenaga, Naujan, Oriental Mindoro', 'Mobile Numbers 0909-488-9688 / 0905-423-2326', NULL, '', NULL, '', '', 'Mr. Franz Jordan C. Balbuena', '', 'Active', '0.00', 0, ''),
(1562, 'Mopeds', 'tarpaulin printing / signage', 0, 'Masipit, Calapan City', '(043) 474-0071 / Mobile Numbers 0917-843-1631 / 0932-404-7708', NULL, '', NULL, '', '', '', '', 'Active', '0.00', 0, ''),
(1563, 'Citi Hardware Calapan', 'Hardware/ Industrial supplies/ electrical supplies/ tools etc.', 0, 'National Highway, Barangay Masipit, Calapan City, Oriental Mindoro', '(043) 288-2041', NULL, '(043) 288-2041', NULL, '', 'Distributor', '', '', 'Active', '0.00', 0, ''),
(1564, 'SGS Philippines Inc', 'lube oil testing', 0, '2nd Floor, Algeria Bldg., 2229 Chino Roces Ave., Makati City', '587-4901', NULL, '', NULL, '30 days PDC', 'Contractor', 'Ms. Bernadette D. Chong', '', 'Active', '0.00', 1, ''),
(1565, 'Huel Enterprises', 'riso printing / photocopy', 0, 'San Vicente, Calapan City, Oriental Mindoro', '', NULL, '', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 0, ''),
(1566, 'Manpower', 'labor', 0, '', '', NULL, '', NULL, 'cash after completion', 'Contractor', '', '', 'Active', '0.00', 0, ''),
(1567, 'Solaric Power and Services', 'CCTV camera', 0, 'Nautical Hi way, Calapan City', '043-4413541 / Mobile Number 0917-622-5086', NULL, '', NULL, '10 days PDC after installation', 'Contractor', 'Engr. Eric P. Asi', '', 'Active', '0.00', 0, ''),
(1568, 'GU Engineering Sales Inc', 'machinery & fabrication', 0, '580 7th Ave., Caloocan City', '365-7218/364-2266', NULL, '364-8356', NULL, '50% dp 30 days PDC, another 30 days PDC for the balance', 'Contractor', 'Sir Norberto Culala', '', 'Active', '0.00', 1, ''),
(1569, 'IHI Turbo International Trade Inc', 'Pielstick 12PC 2.5v', 0, 'Rios Bldg., 193 Doña Soledad Extn. cor. Hawaii St.,  Don Bosco, Parañaque City', '828-0410 / 847-1197', NULL, '', NULL, 'dated check before delivery', 'Contractor', 'Mr. Alvin Suaybaguio / Ms. Sheena Rios', '', 'Active', '2.00', 1, ''),
(1570, 'Hatulan Machine and Engineering', 'machinery & fabrication', 0, 'Tawiran, Calapan City, Oriental Mindoro', '', NULL, '', NULL, 'COD', 'Contractor', 'Mr. Felixberto Hatulan', '', 'Active', '0.00', 1, ''),
(1571, 'Euroseal Industrial Parts Sales', 'machinery & fabrication', 0, '1272 Recto Ave. 299 Zone 29, Binondo, Manila', '242-3891', NULL, '', NULL, 'cash basis after completion', 'Contractor', 'Mr. Alex Catingting', '', 'Active', '0.00', 1, ''),
(1572, 'Kemrad Incorporated', 'chemicals', 0, '700-A Del Monte Ave., Quezon City, 1104 Metro Manila', '8-9257400', NULL, '', NULL, 'cash purchases', 'Supplier / Distributor', 'Ms. Jennelyn Juanite', '', 'Active', '0.00', 1, ''),
(1573, 'Primesolv Technologies Co', 'electrical consumables', 0, '205 Felicidad Bldg., #23 Mc Arthur Highway, Karuhatan, Valenzuela City', '734-9042 / 352-6761', NULL, '', NULL, '30 days PDC before delivery', '', 'Ms. Adelle Martil', '', 'Active', '0.00', 0, ''),
(1574, 'Caloocan Gas Corporation', 'acetylene / oxygen', 0, 'Calapan City, Oriental Mindoro', '043-288-2221', NULL, '', NULL, 'cash purchases', 'Distributor', 'Ms. Daisy Obando', '', 'Active', '0.00', 0, ''),
(1576, 'Man Energy Solutions Philippines Inc', 'turbochargers / marine engines / turbo machinery / chemical reactors and apparatus', 0, 'Km. 17 West Service Road, Cervantes Compound, Brgy. Marcelo Green South Superhighway, Parañaque City', '776-0013 / 0015', NULL, '', NULL, 'prepayment', 'Manufacturer', 'Mr. Sebastien Merchand', '', 'Active', '0.00', 1, ''),
(1577, 'Machinemate Mainteneering  Services', 'ventilating equipment / blowers and blowers systems', 0, 'L1, B1 Calavite St., Amityville Subd. Brgy. San Jose Rodriguez, Montalban, Rizal', '998-2841', NULL, '', NULL, '50%dp, 50% 30 Days PDC after completion of report', 'Contractor', 'Mr. Richard S. Baban', '', 'Active', '0.00', 1, ''),
(1578, 'Asian Engine Rebuilders, Inc.', 'Pielstick 8PC 2.5', 0, '436 6th Avenue (East) corner 8th Street Caloocan City, Metro Manila, Philippines', '362-5872 * 361-3374 * 361-1664 * 361-5257 * 363-9009 * 364-1704', NULL, '(632) 361-5258 * (632) 363-9007', NULL, '50%dp, balance upon completion', 'Contractor', 'Mr. Go Siok Gee', '', 'Active', '0.00', 1, ''),
(1579, 'Lorgan Reboring Services', 'marine engine / industrial technical services', 0, 'Naujan, Oriental Mindoro & Batangas City', '(043) 744-4187 / Mobile Number 0922-593-7287 / 0916-492-4966', NULL, '', NULL, '30%dp, 70% full payment (15) days after delivery', 'Contractor', 'Mr. Erwin L. Lagrana', '', 'Active', '0.00', 1, '159-144-502-000'),
(1580, 'Triple A Powertech Automation System Inc', 'electrical', 0, 'Unit 202 LM Building 157 F Blumentrit , Brgy. San Pedro, San Juan City', '918-0314', NULL, '918-0314', NULL, '30 days PDC', 'Supplier', 'Ms. Angela Abadilla', '', 'Active', '0.00', 1, ''),
(1581, 'Emco Electrodyne  Pvt. Ltd.', 'spare stator rewinding', 0, 'D-87, Phase-7, Indl. Area, Mohali-160055, Punjab, India', '+91 172 2236070, 5093070 / +91 172 2236070, 5093070', NULL, '', NULL, '40% advance with purchase order 60% balance before dispatch, thru Electronic transfer', 'Contractor', 'Meenakshi Sharma / J.S. Matharoo', '', 'Active', '0.00', 1, ''),
(1582, 'Progen Dieseltech Services Corp.', 'architectural & engineering services', 0, 'Unit 806 Richmond Plaza San Miguel Ave., corner Lourdes Drive, Ortigas Pasig', '470-3133', NULL, '531-5593', NULL, '', '', '', '', 'Active', '0.00', 0, ''),
(1583, 'Tawiran Ukay-Ukay', 'consumables', 0, 'Tawiran, Calapan City, Oriental Mindoro', '', NULL, '', NULL, 'cash purchases', '', '', '', 'Active', '0.00', 0, ''),
(1585, 'Ocean Electrical Pte Ltd', 'electrical', 0, '50 Tuas Ave. 11, Tuas Lot 03-05, Singapore', '+65 6316 2230', NULL, '+65 6316 2203', NULL, 'prepayment', 'Distributor', 'PWLoi', '', 'Active', '0.00', 0, ''),
(1586, 'Southern Controls Industrial Supply & Services Corp.', 'electrical', 0, '2nd Floor Room 203 S.P. Junction Bldg. II, National Highway, Brgy. San Antonio, San Pedro, Laguna', '032-734-0744 (0917-796-2756)', NULL, '', NULL, 'COD', 'Distributor', 'Mr. Chris Labit', '', 'Active', '0.00', 0, ''),
(1587, 'VIC Imperial Appliance Corp.', 'appliances', 0, 'Camilmil, Calapan City, Oriental Mindoro', '043-288-2043', NULL, '', NULL, 'cash purchases', 'Distributor', 'Mr. Joseph Manongsong', '', 'Active', '0.00', 1, ''),
(1588, 'Electrical & Equipment Sales Co Inc', 'electrical', 0, '211 Katipunan Ave., Blueridge, Quezon City', '913-2662', NULL, '', NULL, 'cash purchases', 'Distributor', 'Ms. Rose Caniga', '', 'Active', '0.00', 1, ''),
(1589, 'Spectrum General Merchandise', 'glass and aluminum', 0, 'San Vicente, Calapan City, Oriental Mindoro', '043-288-4980', NULL, '', NULL, 'cash purchases', 'Supplier', 'Mr. Alex Sy', '', 'Active', '0.00', 1, ''),
(1590, 'Hans Infinite Tools', 'tools', 0, '801 Tayuman St., Cor. G. Perfecto St., Tondo Manila', '252-6141-45', NULL, '253-1265, 253-3593', NULL, 'COD', 'Distributor', 'Mr. Edgar Santiago', '', 'Active', '0.00', 1, ''),
(1591, 'Shenzhen Newin Machinery Co Ltd', 'cooling tower filler', 0, 'Trade Plaza No. 5 China South City, Pinghu, Longgang Dist. Shenzhen China', '+86-755-230-77266', NULL, '+86-181-722211369', NULL, '50% down payment & 50% before shipment', '', 'Erin Lian', '', 'Active', '0.00', 1, ''),
(1592, 'Wise Industrial Systems Inc', 'consumables', 0, 'RM 506 Goldwell Bldg. 930 Aurora Blvd., Cubao, Quezon City', 'Mobile Number: 0918-9596854', NULL, '', NULL, 'COD', 'Distributor', 'Mr. Hernane "Bong"  Cabrera', '', 'Active', '0.00', 0, ''),
(1593, 'Goltens Philippines', 'wood ward governor / Daihatsu 8DK-28', 0, 'Unit 17A Berthaphil 1 Compound, Jose Abad Santos Ave., Clark Freeport Zone, Clarkfield, Pampanga, Philippines 2009', 'Mobile Number: 0917-8621592', NULL, '364-8356', NULL, '30 days from date of invoice', 'Contractor', 'Mr. Alexander Aguilay', '', 'Active', '0.00', 1, ''),
(1594, 'DMK Power and General Services Inc', 'vacuum circuit breaker', 0, '182 Sunset  Drive, East Metro Residence Bldg., Brookside Hills, Cainta Rizal', '954-9691 / 655-2167', NULL, '', NULL, '30 days PDC after completion', 'Contractor', 'Mr. Dante Katanyag', '', 'Active', '0.00', 0, ''),
(1595, 'GU Engineering Solutions Inc', 'crankpin journal', 0, '580 7th Ave., Caloocan City, Metro Manila', '361-9377, 362-3837', NULL, '364-8356', NULL, '30% downpayment, 35% 30 days PDC after completion, 35% 60 days PDC after completion', 'Contractor', 'Mr. Norberto Culala', '', 'Active', '0.00', 1, ''),
(1596, 'Mega Masterlink Fabrication & Electrical Services Corporation', 'machinery & fabrication / electrical', 0, '26 1-Francisco St., Brgy. Maysan, Valenzuela City', '918-0314; 994-6863 / Mobile Number: 0998-886-4042', NULL, '918-0314', NULL, '30 days PDC before mobilization', 'Contractor', 'Ms. Angela Abadilla / Engr. Giovanni Abadinas', '', 'Active', '0.00', 1, ''),
(1597, 'Alex Belina Welding and Machine Shop', 'machinery & fabrication', 0, 'Lalud, Calapan City', '', NULL, '', NULL, 'cash after completion', 'Contractor', 'Mr. Alex Belina', '', 'Active', '0.00', 0, ''),
(1598, 'Kent International Trading', 'insulation materials', 0, '7 Brixton Street, Barrio Kapitolyo, Pasig City 1603 Metro Manila', '727-3011', NULL, '', NULL, 'cash purchases', 'Distributor', 'Ms. Liza', '', 'Active', '0.00', 1, ''),
(1599, 'Tanyag', 'consumables', 0, 'Calapan City, Oriental Mindoro', '', NULL, '', NULL, '', '', '', '', 'Active', '0.00', 0, ''),
(1600, 'Tiong Kleng Metal and Hardware', 'tubing / metal', 0, '594 T. Alonzo St., Sta. Cruz, Manila', '8-733-6461', NULL, '8-733-7175', NULL, 'cash deposit before cutting into required size', 'Distributor', 'Mr. Jason', '', 'Active', '0.00', 0, ''),
(1601, 'Riverbanks Industrial Sales', 'marine equipment and supplies', 0, '512 Espeleta St., cor. T. Alonzo, Espeleta, Manila', '733-5683', NULL, '733-5674', NULL, 'cash purchases', 'Distributor', 'Mr. Paul Sy', '', 'Active', '0.00', 1, ''),
(1602, 'VPR Calapan', 'appliances / CCTV', 0, 'Lumangbayan, Calapan City, Oriental Mindoro', '043-441-7385', NULL, '', NULL, 'credit card  straight payment', 'Distributor', 'Ms. Judy Jaen', '', 'Active', '0.00', 0, ''),
(1603, 'MIndoro De Luxe', 'Industrial', 0, 'San Vicente, Calapan City, Oriental Mindoro', '288-8730', NULL, '', NULL, 'COD', 'Distributor', 'Ms. Cherry Tan', '', 'Active', '0.00', 0, ''),
(1604, 'Wire Rope Corporation of the Philippines', 'wire & ropes', 0, 'Unit 618 Tower 1, Pioneer Highlands Bldg., Pioneer Street, Mandaluyong City Phils. 1550', '(632) 746-2202 / (632) 638-6173', NULL, '(632) 746-2188', NULL, '', 'Distributor', 'Edgar Roxas', '', 'Active', '0.00', 1, ''),
(1605, 'GoodYield Industrial Supply Center Inc', 'all kinds of rope / specialized in making wire rope sling', 0, '1186 C.M. Recto Ave., Manila', '244-7826 / 244-7776 / 244-7817', NULL, '244-7818 / 244-7843', NULL, '', 'Importer / Wholesaler / Retailer', 'Roger Caberto', '', 'Active', '0.00', 1, ''),
(1606, 'Jenus Industrial Supply', 'specialist: wire ropes, wire rope slings, shackles, turnbuckles, hooks, masterlinks, webbing slings', 0, '58 Malaysia Street, Quezon City', '742-9602 / 741-9098 / 256-6775', NULL, '', NULL, '', 'Manufacturer / Distributor', 'Marjorie', '', 'Active', '0.00', 1, ''),
(1607, 'Benedicto Steel Group', 'wire & ropes', 0, '1143 Pasong Tamo St., Makati City, 1200 Metro Manila', '899-5758 / 241-9785', NULL, '897-0592', NULL, '', 'Distributor', 'Aiza Carandang', '', 'Active', '0.00', 1, ''),
(1608, 'Sambon Industrial Sales Inc', 'G.I. & B.I. chains / wire rope sling / hook / thimble / turnbuckles / shackle / ungalvanized steel wire rope / galvanized steel rope / wire rope clip / elco-lift web slings / wire rope sling', 0, 'Gocheco Bldg., 1143 C.M. Recto Avenue Sta. Cruz, Manila', '254-9061 / 254-9187 / 254-9035 / 254-9112 / 254-9080 / 338-1943 / 731-2199 /', NULL, '253-0692', NULL, '', 'Importer / Distributor / Wholesaler / Retailer', '', '', 'Active', '0.00', 1, ''),
(1609, 'Disston Industrial Sales Inc', 'polypropylene rope / nylon rope / dixie ungalvanized / mariner galvanized / steel wire rope / mechanical slings  / rigging hardware', 0, '705 Real Street, Intramuros, Manila 1002', '527-3732 to 36', NULL, '527-3734', NULL, '', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1610, 'Perturbo Corporation', 'engine parts', 0, 'Don Sergio Suico, Brgy., Tingub, Mandaue City 6014 Cebu, Philippines', '+63 32 344 7700 /', NULL, '+63 32 564 9408', NULL, '30 days from date of invoice', 'Contractor', 'Alan L. Tul-Id', '', 'Active', '0.00', 1, ''),
(1611, 'Guan Industrial Sales', 'Hardware', 0, '858 Tomas Mapua Corner Bambang Streets, City of Manila, Metro Manila', '+63 (2) 8 741 1833 / +63 (2) 8 742 7241 / +63 (2) 8 741 1751', NULL, '', NULL, '', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1612, 'GY Industrial Mill Supply Corp', 'hydraulic hoses', 0, '459 T. Pinpin Street, Binondo, Manila, Philippines', '(632) 2428842 / 2420467', NULL, '(632) 2429652 / 2426766', NULL, '', 'Distributor', 'Bernard Sy', '', 'Active', '0.00', 1, ''),
(1613, 'Clean Echo Techwin Inc', 'hazardous waste treatment: wastes with Cyanide, Acid wastes, Alkali wastes, wastes with Inorganic Chemicals, Inks/Dyes/Pigments/Paint/Latex/Adhesives/Organic Sludge,waste Organic Solvent, Putrescible/Organic wastes (grease trap wastes from industrial or commercial premises), Waste Oil,Containers containing toxic chemical substances,Miscellaneous wastes', 0, 'Dasmariñas, Cavite', '', NULL, '', NULL, '', '', '', '', 'Active', '0.00', 1, ''),
(1614, 'GENTECH Industrial Supplies  Services Inc', 'mechanical seal / metal bellow / industrial', 0, '#37 Aries St. Pamplona Park Subdivision, Pamplona Dos, Las Piñas City, Metro Manila', '+632 656-9664 / Mobile Number: +639164613060', NULL, '', NULL, '', 'Distributor', 'Grace Martinez', '', 'Active', '0.00', 1, ''),
(1615, 'ToMeleKt Power Systems Inc', 'Electrical Services & Products', 0, '1424 Labores Extension, Pandacan, Manila, Philippines', '561-5102 * 561-5188 * 561-7849 * 561-5106 * 564-0307 * 564-9722 * 564-9703', NULL, '563-0261 * 561-4403', NULL, '50% downpayment, balance after work completion', 'Contractor', 'Louie Bitara', '', 'Active', '0.00', 1, ''),
(1616, 'H J Franklin Inc', 'Instrumentation', 0, 'No. 26 Rose Avenue, Pilar Village, Las Piñas City', '+63 02 8024018', NULL, '+63 02 8055735', NULL, '30 days PDC', 'Distributor', 'Franklin Hidalgo', '', 'Active', '0.00', 1, ''),
(1617, 'Imagineering Technology Systems Inc', 'Instrumentation', 0, '204 Emerald Place Bldg., 604 Shaw Blvd., Kapitolyo, Pasig City, 1603 Philippines', '(632) 6385854', NULL, '(632) 6385853', NULL, '30 days', 'Distributor', 'Rico Española', '', 'Active', '0.00', 1, ''),
(1618, 'NINGBO Unique Seal Service Co Ltd', 'mechanical seal', 0, 'No. 99 WeiYi Road, Zhutian Industry Zone, Xiaogang Town, Ningbo, China 315821', '0086-574-86154310 / Cell: 0086-18657457657', NULL, '0086-574-86175848', NULL, '', '', '', '', 'Active', '0.00', 1, ''),
(1619, 'Instrument Science Systems Inc', 'Instrumentation materials', 0, '2 Barcelona St., Parinas, Bahay Toro, Project 8, Quezon City, 1100, Philippines', '632 4267593, 4537694', NULL, '', NULL, '30 days', 'Distributor', '', '', 'Active', '0.00', 1, '224 838 454 000');
INSERT INTO `vendor_head` (`vendor_id`, `vendor_name`, `product_services`, `category_id`, `address`, `phone_number`, `mobile_number`, `fax_number`, `email`, `terms`, `type`, `contact_person`, `notes`, `status`, `ewt`, `vat`, `tin`) VALUES
(1620, 'InCalSys Inc', 'Instrumentation', 0, 'No. 8 Ninoy Aquino Bouleverd, Antipolo City, Rizal, 1870, Philippines', '(632) 650-5638; 696-3107; 571-5688; 571-5689', NULL, '(632) 697-2475', NULL, '', 'Distributor', 'Jestoni F. Francisco', '', 'Active', '0.00', 1, ''),
(1621, 'Mazel Tov Kogaku Corporation', 'engine parts', 0, 'Unit 403 Xavierville Square Condominium, Xavierville Avenue, Loyola Heights, 1108 Quezon City, Philippines', '(+63) 2 4344051', NULL, '(+63) 2 4268217', NULL, '30 days', 'Distributor', 'Anthony S. Policarpio / Ruben B. Dy', '', 'Active', '0.00', 1, ''),
(1622, 'Foren Corporation', 'material handling equipment', 0, '50-G Timog Avenue, Quezon Ciy, M.M. Philippines', '(632) 373-7088 to 89 / 411-7135 to 36 / 372-4704 / 374-3958', NULL, '', NULL, '50% downpayment, balance cash upon completion', 'Contractor', 'Leonardo V. Soldevilla, Jr.', '', 'Active', '0.00', 1, ''),
(1623, 'MHE Demag (P) Inc', 'material handling equipment', 0, 'Main Avenue, Severina Diamond Industrial Estate KM 16 South Expressway, W Service Rd, Parañaque, 1700 Metro Manila', '+63 2 786 7500', NULL, '+63 2 786 7555', NULL, '', 'Contractor', '', '', 'Active', '0.00', 1, ''),
(1624, 'DRI Construction', 'material handling crane distributor / spare parts / services', 0, '2506 Callejon 7, Del Pilar St., Sta. Ana, City of Manila', '562-1107 / Mobile Numbers: 0918-9187208 / 0922-8611427', NULL, '', NULL, '', 'Contractor', 'Engr. William Guillermo', '', 'Active', '0.00', 1, ''),
(1625, 'Rich Paul Marketing Co Inc', 'fork lift', 0, '86 Baler St., near West Ave., SFDM, Quezon City, Metro Manila', '441-5976, 441-4179, 441-5268', NULL, '371-0697', NULL, '', 'Contractor', 'Ms. Joyce Ann Luna', '', 'Active', '0.00', 1, '008-685-039-000'),
(1626, 'Qamtis Philippines Inc', 'fabrication', 0, 'Sanford Compound, Edison Ave., Km. 14, West Service Rd., Parañaque City, Philippines 1710', '823-4265 * 6660467 * 7033739', NULL, '(632) 857 2063', NULL, 'COD', 'Contractor', 'Elmer Tamayo', '', 'Active', '0.00', 1, ''),
(1627, 'DEIF Asia Pacific Pte Ltd', 'electronic components', 0, '31 Bukit Batok Crescent #01-16 The Splendour, Singapore 658070, Singapore', '(+65) 6933 5300', NULL, '(+65) 6933 5331', NULL, '', 'Wholesaler', 'Jeffrey Tan', '', 'Active', '0.00', 1, ''),
(1628, 'Daihatsu Diesel (Asia Pacific) Pte Ltd (Singapore)', 'daihatsu diesel', 0, 'No. 128 Pioneer Road, Singapore 639586', '(65) 6270 7235', NULL, '(65) 6270 6236', NULL, '', 'Manufacturer', 'Takagi Masahiro', '', 'Active', '0.00', 1, ''),
(1629, 'MHI Engine System Philippines Inc', 'diesel engine', 0, 'Warehouse 4-C sunblest Compound, KM 23 West Service Road Bo. Cupang, Muntinlupa City, Philippines 1771', '+632 775-0209', NULL, '+632 775-0310', NULL, '', 'Dealer', 'Ulysses N. Rosa II', '', 'Active', '0.00', 1, ''),
(1630, 'Good Morning International Corporation', 'construction equipment / hyundai', 0, '572 Edsa Brgy. 095 Dist. 17-Pacita, Caloocan City, Metro Manila, Philippines', '02-364-9966', NULL, '02-364-0283', NULL, '', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1631, 'EFRC Indl Services and Trading Corp', 'in-situ machining / crankshaft grinding & straightening / metal stitching', 0, '252 Dr. Jose Fabella St., Plainview, Mandaluyong City, Philippines 1550', '(63) 2 533-6673 / Mobile Number: 0917-324-9530', NULL, '(63) 2533-6673', NULL, '', '', 'Alfredo B. Chua', '', 'Active', '0.00', 1, ''),
(1632, 'Metalite Builders Development Co Inc', 'fabricator & erectors / sand & grit blasting / insulation & cladding / storage tank fabrication / erection maintenance / API Std. / engineering design / tank fabrication & erection / piping works /  electro-mechanical & civil works / maintenance & installation of Plant / machineries & equipment', 0, '#152 M. Sioson St., Dampalit-Muzon, Malabon City 1480', '(02) 447-5249 / 282-3241 / 282-4284 / Mobile Numbers: (0917) 632-3479 / (0922) 899-7061', NULL, '', NULL, '', 'Contractor', 'Albert G. Dumalaog', '', 'Active', '0.00', 1, ''),
(1633, 'Filsung Corporation', 'spare parts / diesel engine spare parts', 0, '8861-D, Sampaloc St., San Antonio Village, Makati, Philippines, 1203', '+632 886 5617 / Mobile Numbers: +63 977 472 2485 / +63 909 403 2495', NULL, '', NULL, '', '', 'Engr. Christian Jayvee Abinal', '', 'Active', '0.00', 1, ''),
(1634, 'G7 Heavylift and Logistics Corporation', 'heavy equipment / trucking / logistics / hauling contractors / barges & tugboats', 0, '#41 J. P. Bautista Ave., Caloocan City', '+63 2 775 6599 / +63 2 324 3571 / +63 2 921 4235 / +63 2 324 3517 to 19', NULL, '+63 2 351 6518 / Mobile Number: +63 919 679 8109', NULL, '', '', 'Augustus Caezar R. Gan', '', 'Active', '0.00', 1, ''),
(1635, 'Communications Electrical Equipment & Supply Co Inc', 'electrical equipment / electronics', 0, 'GF Keystone Building, 220 Sen. Gil Puyat Avenue, Makati City 1200, Metro Manila, Philippines', '+63-2-843-8981 to 86 loc. 110 / Mobile Numbers: +63-917-820-4368 / +63-942-424-7235', NULL, '+63-2-818-6527', NULL, '', 'Supplier', 'Jell Battung', '', 'Active', '0.00', 1, ''),
(1636, 'Kinden Phils Corporation', 'Electrical Services', 0, '5th Floor ODC International Plaza, 219 Salcedo Street, Legaspi Village Makati City, Philippines', '(63-2) 812-6440', NULL, '(63-2) 840-1334 / Mobile Number: (0929) 399-4297', NULL, '', 'Contractor', 'Er H. Lozada', '', 'Active', '0.00', 1, ''),
(1637, 'JGentech Enterprises', 'generator service repair / preventive maintenance / synchronizing / rewinding / overhaul / retrofit/upgrading  / vibration analysis / laser alignment', 0, '37 A. Luna St., West Rembo, Makati City Philippines', '(632) 478-0941 / Mobile Number: (63) 927-439-5083', NULL, '', NULL, '', 'Contractor', 'Mario M. Carreon', '', 'Active', '0.00', 1, ''),
(1638, 'Instrumentech Industrial Corp', 'trenchless technology / underground cabling / overhead stringing', 0, 'Unit 203 RL Bldg. Mindanao Ave., ext. corner, Quirino Highway, Talipapa, Novaliches, Quezon City', '(63) 496-3754; 456-5890', NULL, '63 2 456-5890 ', NULL, '', 'Contractor / Supplier', 'Cesar P. Gelera', '', 'Active', '0.00', 1, ''),
(1639, 'Direct Industrial Supplies & Equipment Trading Co. (DISEQTRA)', 'electrical / mechanical / instrumentation', 0, '072 Andres Bonifacio, Avenue, Potol, Dapitan City, Zamboanga del Norte 7101, Philippines', '065-908-0895', NULL, '', NULL, '', 'Distributor', 'Denver S. Lim', '', 'Active', '0.00', 1, ''),
(1640, 'AJ3 Electrolink Corporation', 'electric supplies', 0, '84 Sumulong Hi-way, Mayamot, Antipolo City', '994-3514 / 646-6642 / 682-8936 / Mobile Number: 0920-9544019', NULL, '', NULL, '', 'Supplier / Contractor', 'Engr. Avelino "Abel" Frias', '', 'Active', '0.00', 1, ''),
(1641, 'Value Added Technology Trading and Services (VAT)', 'motor control & generator specialist / electrical design / installation / maintenance / repair & consultation', 0, '', 'Mobile Numbers: 0919 445 7511; 0921 462 5763', NULL, '(048) 434-1171', NULL, '', 'Contractor', 'Elmer C. Trapero', '', 'Active', '0.00', 1, ''),
(1642, 'FMTCS Industrial Corp', 'fabricator / rubber / filtration specialist / filter oil and fuel', 0, '#46 Rizal Ave. Extension , Caloocan City', '352-1893 / Mobile Numbers: +63 (910) 8802196 * +63 (922) 2827933', NULL, '961-9852', NULL, '', '', 'Thai Pacheco', '', 'Active', '0.00', 1, ''),
(1643, 'Northwell Corporation', 'GE Fanuc VAR / Instrumentation / Automation / General Engineering / Services Offered: Air Heater Fabrication, Turbine overhauling/Rebladding/Rehab/Inspection, Turbine bearing/Safety valves Inspection, Power Plant Auxiliary Equipment Vibration & Alignment, Boiler Retubing/Start-up/Inspection, Cutting & End Piping Preparation of Heavy Wall Thickness Pressure Piping, Insulation of Steam Piping/Vessel/Boiler Casing, Safety Valve Repair/Refacing, Lapping & Calibration, Non-destructive Testing, Engineering Inspection, Automation, Instrumentation & Control Engineering Services', 0, '105 Chico Street, Project 2, Quezon City, 1102 Philippines', '(632) 7205012 / 9282011 / Mobile Number: 0917-8099247', NULL, '(632) 9282011', NULL, '', '', 'Eulogio I. Bautista, Jr.', '', 'Active', '0.00', 1, ''),
(1644, 'Institute of Integrated Electrical Engineers of the Philippines Inc', 'electrical', 0, '41 Monte de Piedad Street, Cubao, Quezon City, Philippines 1111', '(632) 722-7383 / 727-3552 / 412-5772 / 414-5626', NULL, '(632) 727-3545 / 410-1899', NULL, '', '', 'Larry C. Cruz', '', 'Active', '0.00', 1, ''),
(1645, 'LG Cable and Machinery Ltd', '', 0, 'LG Twin Towers E. 8F. 20, Yoido-dong, Youngdongpo-gu, Seoul 150-605, Korea, Yoido P.O. Box 580 SEOUL', '(02) 3773-2692', NULL, '(020 785-1905, 3773-2600', NULL, '', 'Manufacturer', 'Young-Soo Kim', '', 'Active', '0.00', 1, ''),
(1646, 'Eupen Cable Asia Inc', 'cable - fiber optics', 0, '651 Severina Ave., Severina Subd., Km. 18, West Service Road, Parañaque City, Philippines', '(632) 546-0546 to 47', NULL, '(632) 824-3956', NULL, '', 'Retailer', 'Ronald Galang', '', 'Active', '0.00', 1, ''),
(1647, 'Taihan Electric Wire Co Ltd', 'cable / stainless steel', 0, 'Insong Building, 194-15, 1-Ka, Hoehyun-Dong, Chung-Ku, C.P.O. Box 2624 Seoul, Korea', '+82 2 316 9418', NULL, '+82 2 757 2942', NULL, '', 'Manufacturer', 'Jae-Man Cho', '', 'Active', '0.00', 1, ''),
(1648, 'Taihan Electric Wire Co Ltd (Manila Office)', 'cable / stainless steel', 0, '8/F, Pacific Star Bldg. Makati  Ave. Cor. Sen. Gil Puyat Ave., Makati City, M.M.', '(63-2) 8116092', NULL, '(63-2) 8116093', NULL, '', 'Manufacturer', 'Jae-Man Cho', '', 'Active', '0.00', 1, ''),
(1649, 'Lucent Technologies', 'bell / labs / /innovations', 0, '5/F BA Lepanto  Bldg., 8747 Paseo de Roxas, 1226 Makati City, Philippines', '+63 (2) 814-8902 / +63 (2) 812-5481 to 92', NULL, '63 (2) 814-8959', NULL, '', '', 'Mariano V. del Rosario', '', 'Active', '0.00', 1, ''),
(1650, 'Euro Asia Spezialmaschinen Inc (Philippines)', '', 0, 'No. 10 Tagdalit St., Manresa, Quezon City, Philippines', '+63 2 416 5434 / +63 2 413 1566', NULL, '+63 2 413 1568', NULL, '', 'Distributor', 'Hian Tat Cua', '', 'Active', '0.00', 1, ''),
(1651, 'Fuji-Haya Electric', 'panel board / transformer / capacitor bank / busduct / switchcgear', 0, 'Silangan Industrial Park, Canlubang, Calamba City, Laguna 4028, Philippines', '+63 (49) 549-7289 / +63 (2) 844-0903', NULL, '+63 (49) 549-7303 / +63 6700-5000', NULL, '', 'Manufacturer', 'Rodrigo C. Gutierrez', '', 'Active', '0.00', 1, ''),
(1652, 'Reyal Meis Ent', 'electrical & instrumentation', 0, '24- San Bernardino Village Mambaling, Cebu City', '(+6332) -3470276 / Mobile Number: 09216996823', NULL, '(+6332) -2610359', NULL, '', '', 'Rey A. Alguno', '', 'Active', '0.00', 1, ''),
(1653, 'Hansei Corporation', 'fabrication / installation', 0, '4th Floor, Estuar Building, No. 41 Timog Ave., Diliman, Quezon City, Philippines', '(632) 411-3366 / 76', NULL, '(632) 411 3365', NULL, '', 'Contractor', 'Ricardo U. Loresto', '', 'Active', '0.00', 1, ''),
(1654, 'Asia Mark Corporation', 'gedore hand tool / hi-force hydraulic tools / construction equipment / lifter with hooks', 0, 'Suite 217 BSP Bldg., 96 Sen. Gil Puyat Ave., corner Medina St., Makati City', '8923858 / 8944127 / 8401438 / 8944137', NULL, '8944137', NULL, '', 'Supplier', 'Philip S. Moncal', '', 'Active', '0.00', 1, ''),
(1655, 'Bee Industrial Corporation', 'tie wraps / cable ties / knot tie/bead tie / mountable ties / industrial products', 0, '#89 Eagle St., New Marikina Subd. Sta. Elena, Marikina City', '646-0846 / 682-1657 / 682-1246 /  Mobile Number: 0918-8556729', NULL, '646-6157', NULL, '', 'Distributor', 'Avelino C. Pingol', '', 'Active', '0.00', 1, ''),
(1656, 'Morse Hydraulics System Corporation', 'hydraulic pumps & power units / valves & electronics / hydraulic motors & cylinders / hydraulic hoses, fittings & adaptor /  fire suppression system / lubrication / hydraulic seals & packing / hydraulic auxiliaries', 0, 'Lot 8 & 9, blk. 5 Phase IV-G, Dagat-Dagatan Avenue Malabon City, Metro Manila, Philippines', '(632) 287-3826, 288-6996, 288-2854, 288-5526', NULL, '(632) 288-0118', NULL, '', 'Distributor', 'Antonio A. Carreon', '', 'Active', '0.00', 1, ''),
(1657, 'Seapowers Trading', 'PROVIDER OF MARINE & INDUSTRIAL SERVICING OF YANMAR ENGINES INCLUDING PARTS & TECHNICAL SUPPORT. PART SALES & TECHNICAL SUPPORT FOR SCHALLER AUTOMATION OIL MIST DETECTOR . SERVICE PROVIDER OF POWER PLANTS'' INSTALLATION,COMMISSIONING, MAINTENANCE & SERVICING. SERVICE PROVIDER OF SHIP''S MAGNETIC COMPASS ADJUSTMENT & SHIPS POTABLE WATER ANALYSIS. SERVICE PROVIDER FOR CALIBRATION OF CONTROL SYSTEM EQUIPMENT SUCH AS SENSORS , CONTROLLERS & CONTROL ELEMENTS.', 0, '0466 Mamatid, Cabuyao City, Laguna', '+63 (049) 502 0765 / Mobile Numbers: +639175003017 / +639258453729', NULL, '', NULL, '', 'Distributor', 'Iluminado M. Hinagpis', '', 'Active', '0.00', 1, ''),
(1658, 'Tabuko Power Resources Corporation', 'engineering products & services', 0, 'Unit 10, 6th Floor, The One Executive Building, No. 5 West Avenue, Quezon City 1104, Phillipines', '(632) 371-0649 / 448-5446 / Mobile Numbers: +63915-563-5163 / 0917-8655486', NULL, '(632) 371-0844', NULL, '', 'Contractor', 'Gloria T. Javier', '', 'Active', '0.00', 1, ''),
(1659, 'Boss J Express', 'freight services', 0, '617 Francisco St., Tondo, Manila', '0919-837-1813 / 0916-259-6841', NULL, '256-76-68', NULL, '', 'Forwarder', 'James D. Tempongko', '', 'Active', '0.00', 1, ''),
(1660, 'Uni-Field Enterprises Inc.', 'water meter / water tank', 0, '150 Corporate Center, No. 150 Panay Avenue, South Triangle, Quezon City, Metro Manila, Philippines', '(632) 376-7870 / (632) 376-9874 / (632) 376-9880 / Mobile number: 0917-8416189', NULL, '(632) 376-9364', NULL, '', 'Distributor', 'Jael Tongson', '', 'Active', '0.00', 1, ''),
(1661, 'Lhessa Corporation', 'lifting and heavy equipment safety specialist', 0, 'Unit 8, 2nd Floor John-Myr Apt., Brgy. Paciano Rizal, Calamca City, Laguna 4027, Philippines', '049-502-8610 / 049-534-0701 / Mobile Numbers: +63917 895 5823 / +63917 547 0755 / +63922 841 5192', NULL, '', NULL, '', 'Contractor', 'Engr. Radiric S. Luce', '', 'Active', '0.00', 1, ''),
(1663, 'Kambal Industrial Supply', 'Industrial Equipment & Supplies / Metal and Concrete: corrosion, erosion, cavitation, abrasion, chemical attack / Mineral Scale Build up / Water proofing, weather proofing / injection shaft sealing system ( for pumps, valve & agitators)', 0, '2565/E Cabanillas St., Brgy. La Paz, Makati City 1204', '(02) 896 2410', NULL, '(02) 897 0937', NULL, '', 'Distributor', 'Leng Evangelista', '', 'Active', '0.00', 1, ''),
(1664, 'Sunarra Systems Incorporated', 'Local Product lines: pole line hardware / PVC pipes & fittings / HDPE pipes  and fittings / GI, BI, RSC pipes & fittings / Riser Cap / Construction materials / Imported Product Lines: Thermoplastic pipes, fittings & valves (CPVC & PVC Sch. 80 Pipes and Fittings) / AFA Brand ( ASTM, JIS, BS, DIN Standard) C.I. Buttefly Valves / CI YL Pattern Strainer / Rubber Metal Pipe Connector / Stainless Flange / Prominent metering pumps / Instrumentation', 0, 'Unit 206 Margarita Bldg. No. 28 Matalino St., Central District, Q.C.', '436-4264 / 436-4266 / Mobile Number:', NULL, '436-4263', NULL, '', 'Distributor', 'Violy C. Raro / Rey Pabilona', '', 'Active', '0.00', 1, ''),
(1665, 'Josaga Insulation Solution', 'insulation and cladding of the following: hot & cold vessel / Chilled & steam line / Bunker Oil line & storage tank / Large Generator exhaust pipe/manifold / Large generator HFO supply booster / Smoke stack / Building cladding', 0, 'F. Cruz St., Malibay, Pasay City', 'Mobile Numbers: 09183195938 / 09275604729', NULL, '', NULL, '', 'Contractor', 'Joseph S. Gabrinao, Jr.', '', 'Active', '0.00', 1, ''),
(1666, 'Altus Industries Inc', 'pump mechanical seals / single spring / multiple spring / metal bellows / cartridge seal / mechanical seal for mixer & agitator / compressor / seal / mechanical seal reconditioning / pump rehabilitation', 0, '#9065 Hormiga St., Brgy., Valenzuela, Makati City, Philippines', '(632) 899-1937, 897-4295, 895-1061', NULL, '(632) 895-0772', NULL, '', 'Manufacturer / Designer / Exporter / Supplier', 'Gian T. Maximo', '', 'Active', '0.00', 1, ''),
(1667, 'ESRA Technical Industry Corp', 'Services Offered: MEPF-Power Plant Design & Contractor / Generator & Motor Rewinding / Machine works & Engine Rebuilding / Steel Tank Fabrication / Auto body repair, painting & servicing  / O & M services for building facilities & equipment, diesel power plant, belt conveyor system HVAC', 0, 'ERSA Compound, Rizal Technopark 2000, Lambak, San Juan, Taytay, Rizal 1920, Region 4-A (CALABARZON), Philippines', '(02) 5478960 / Mobile Numbers; +63 917 733 5997 / +63 933 359 6479', NULL, '', NULL, '', 'Contractor', 'Engr. Rafael A. Esnardo, PME', '', 'Active', '0.00', 1, ''),
(1668, 'Wilmar Metals System Inc', 'bolts & nuts', 0, '1326-1328 C.M. Recto Ave., Sta. Cruz, MM 1006, Philippines', '733-7790 / 734-6126 / 733-6110 / 734-6015 / Mobile Number: 09186427771', NULL, '714-5108', NULL, '', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1669, 'DMs Engineering Service and Supply', 'boll filter / mitsubishi-selfjector / HGF-PHE / Westfalia Separator / Alfa Laval / Samgong-Selfjector', 0, 'Del Carmen, Lubao Pampanga, Philippines 2005', 'Mobile Number: 0928-7093092', NULL, '', NULL, '', 'Distributor', 'Teodolito "Dong" Mendoza', '', 'Active', '0.00', 1, ''),
(1670, 'Alexandrew and Co Limited', 'auxiliary systems', 0, '11/F AXA Centre, 151 Gloucester Rd. Wanchai Hong Kong', '+63 2 6313923 / Mobile Number: +63 9178197485', NULL, '', NULL, '', 'Contractor', 'Soenke Wolf', '', 'Active', '0.00', 1, ''),
(1671, 'Sonico Hardware', 'water pump / oil pump / chemical pump / electric motor / gear motor / generator / speed reducer / blower / winch / hoist / mixer / air compressor / pressure gauge / valves / piper / hose / fire protection accessories / fittings / steel products / plumbing hardware / industrial machinery / industrial supplies', 0, '1128 Benavidez At., Sta. Cruz, Manila', '254-0766 / Mobile Numbers: 0917-553-3550 / 0922-854-9856', NULL, '254-3622', NULL, '', 'Distributor', 'Junice Yulo', '', 'Active', '0.00', 1, ''),
(1672, 'Jubilee Hardware', 'hardware items / electrical items / hydraulic jack / crocodile jack / mechanic tools / welding machine / electric motor / plumbing items and power tools / goldstar / LG / B &D / Bosch / Skill / Makita / AEG / Kawasaki', 0, '716 Stall B Soler St., Rep. Supermarket, Sta. Cruz, Manila', '733-65-93 * 733-06-77 * 733-65-84', NULL, '', NULL, '', 'Distributor', 'Domingo "Dodo" Bermudez', '', 'Active', '0.00', 1, ''),
(1673, 'Roks Electronics Industry', 'electronic equipment & supplies', 0, '558 G. Puyat St., Sta. Cruz, Manila', '733-01-31 * 733-04-04 / Mobile Numbers: 0917-8105612 / 0923-4954676', NULL, '734-35-98', NULL, '', 'Distributor', '', '', 'Active', '0.00', 1, ''),
(1674, 'Frontier Power Technologies', 'generator sets', 0, 'Frontier Compound, Narra Road, San Antonio, San Pedro, Laguna, 4023 Philippines', 'Mobile Numbers: 0922-847-4007 / 0917-877-2728 / 0998-998-4028', NULL, '02-857-2580', NULL, '', 'Distributor', 'Ace Kaquilala', '', 'Active', '0.00', 1, ''),
(1675, 'Steelite Construction Corporation', 'engineering & general construction', 0, 'No. 32 Uranus Street, Pasig Greenland Village, Rosario, Pasig City', '641-8968 / 642-1328 / 643-8009', NULL, '641-5406', NULL, '', 'Contractor', 'Mario L. Mangay, Jr.', '', 'Active', '0.00', 1, ''),
(1676, 'Hanphil Steel Tower & Structure Specialist Corporation', 'design / fabrication / erection / construction works', 0, '2/F, China Banking Corp. Bldg. Visayas Ave. cor. Congressional Ave., Brgy. Pasong Tamo 1100 Quezon City, Philippines', '(632) 456-8257 / 456-0999', NULL, '(632) 456-8281', NULL, '', 'Contractor', 'Domingo B. Natividad V', '', 'Active', '0.00', 1, ''),
(1677, 'Kings Safetynet', 'PPE products and safety wear', 0, '849 O.L. Liongson Building, Tomas Mapua St., Sta. Cruz, Manila 1003', '742-0168, 741-1507, 741-1512 / Mobile Number: 0917-8653883', NULL, '712-8055', NULL, '', 'Distributor', 'Jay S. Nasataya', '', 'Active', '0.00', 1, ''),
(1678, 'Italit Construction and Development Corporation', 'pipes', 0, '103 10th St., New Manila, Quezon City', '721-5439, 721-8860, 721-8918, 721-4627, 721-5365 to 68', NULL, '721-9314', NULL, '', 'Contractor', 'Cesar R. Redoble', '', 'Active', '0.00', 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aoq_head`
--
ALTER TABLE `aoq_head`
 ADD PRIMARY KEY (`aoq_id`), ADD KEY `aoq_id` (`aoq_id`,`pr_id`,`noted_by`,`approved_by`,`reviewed_by`,`cancelled_by`,`prepared_by`);

--
-- Indexes for table `aoq_items`
--
ALTER TABLE `aoq_items`
 ADD PRIMARY KEY (`aoq_items_id`), ADD KEY `aoq_items_id` (`aoq_items_id`,`aoq_id`,`pr_details_id`);

--
-- Indexes for table `aoq_offers`
--
ALTER TABLE `aoq_offers`
 ADD PRIMARY KEY (`aoq_offer_id`), ADD KEY `aoq_offer_id` (`aoq_offer_id`,`aoq_id`,`vendor_id`,`aoq_items_id`,`pr_details_id`);

--
-- Indexes for table `aoq_vendors`
--
ALTER TABLE `aoq_vendors`
 ADD PRIMARY KEY (`aoq_vendors_id`), ADD KEY `aoq_vendors_id` (`aoq_vendors_id`,`aoq_id`,`rfq_id`,`vendor_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
 ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
 ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
 ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
 ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
 ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `jo_ar`
--
ALTER TABLE `jo_ar`
 ADD PRIMARY KEY (`joar_id`), ADD KEY `joar_id` (`joar_id`,`jo_id`);

--
-- Indexes for table `jo_details`
--
ALTER TABLE `jo_details`
 ADD PRIMARY KEY (`jo_details_id`), ADD KEY `jo_id` (`jo_id`);

--
-- Indexes for table `jo_details_revised`
--
ALTER TABLE `jo_details_revised`
 ADD KEY `jo_id` (`jo_id`);

--
-- Indexes for table `jo_details_temp`
--
ALTER TABLE `jo_details_temp`
 ADD KEY `jo_id` (`jo_id`);

--
-- Indexes for table `jo_dr`
--
ALTER TABLE `jo_dr`
 ADD PRIMARY KEY (`jodr_id`), ADD KEY `jo_id` (`jo_id`);

--
-- Indexes for table `jo_head`
--
ALTER TABLE `jo_head`
 ADD PRIMARY KEY (`jo_id`), ADD KEY `jo_id` (`jo_id`,`vendor_id`,`prepared_by`,`approved_by`,`checked_by`,`approve_rev_by`,`cancelled_by`,`recommended_by`,`verified_by`);

--
-- Indexes for table `jo_head_revised`
--
ALTER TABLE `jo_head_revised`
 ADD KEY `jo_id` (`jo_id`,`vendor_id`,`prepared_by`,`approved_by`,`checked_by`,`approve_rev_by`,`cancelled_by`,`recommended_by`,`verified_by`);

--
-- Indexes for table `jo_head_temp`
--
ALTER TABLE `jo_head_temp`
 ADD KEY `jo_id` (`jo_id`,`vendor_id`,`prepared_by`,`approved_by`,`checked_by`,`approve_rev_by`,`cancelled_by`,`recommended_by`,`verified_by`);

--
-- Indexes for table `jo_rfd`
--
ALTER TABLE `jo_rfd`
 ADD PRIMARY KEY (`rfd_id`), ADD KEY `jo_id` (`jo_id`,`pay_to`,`checked_by`,`endorsed_by`,`approved_by`,`user_id`);

--
-- Indexes for table `jo_series`
--
ALTER TABLE `jo_series`
 ADD PRIMARY KEY (`jo_series_id`);

--
-- Indexes for table `jo_terms`
--
ALTER TABLE `jo_terms`
 ADD PRIMARY KEY (`jo_terms_id`), ADD KEY `jo_id` (`jo_id`);

--
-- Indexes for table `po_dr`
--
ALTER TABLE `po_dr`
 ADD PRIMARY KEY (`dr_id`), ADD KEY `dr_id` (`dr_id`,`po_id`,`rfd_id`);

--
-- Indexes for table `po_dr_details`
--
ALTER TABLE `po_dr_details`
 ADD PRIMARY KEY (`dr_details_id`), ADD KEY `dr_id` (`dr_id`);

--
-- Indexes for table `po_dr_items`
--
ALTER TABLE `po_dr_items`
 ADD PRIMARY KEY (`dr_items_id`), ADD KEY `dr_items_id` (`dr_items_id`,`po_items_id`,`dr_id`,`pr_id`,`po_id`,`aoq_offer_id`,`aoq_items_id`,`pr_details_id`,`item_id`);

--
-- Indexes for table `po_head`
--
ALTER TABLE `po_head`
 ADD PRIMARY KEY (`po_id`), ADD KEY `po_id` (`po_id`,`vendor_id`,`user_id`,`approved_by`,`checked_by`,`cancelled_by`,`served_by`,`approve_rev_by`,`recommended_by`,`grouping_id`);

--
-- Indexes for table `po_items`
--
ALTER TABLE `po_items`
 ADD PRIMARY KEY (`po_items_id`), ADD KEY `po_items_id` (`po_items_id`,`pr_id`,`po_id`,`aoq_offer_id`,`aoq_items_id`,`pr_details_id`,`item_id`,`cancelled_by`);

--
-- Indexes for table `po_items_temp`
--
ALTER TABLE `po_items_temp`
 ADD PRIMARY KEY (`po_items_id`);

--
-- Indexes for table `po_pr`
--
ALTER TABLE `po_pr`
 ADD PRIMARY KEY (`po_pr_id`), ADD KEY `po_pr_id` (`po_pr_id`,`po_id`,`pr_id`,`aoq_id`);

--
-- Indexes for table `po_series`
--
ALTER TABLE `po_series`
 ADD PRIMARY KEY (`series_id`);

--
-- Indexes for table `po_tc`
--
ALTER TABLE `po_tc`
 ADD PRIMARY KEY (`po_tc_id`), ADD KEY `po_id` (`po_id`);

--
-- Indexes for table `project_activity`
--
ALTER TABLE `project_activity`
 ADD PRIMARY KEY (`proj_act_id`);

--
-- Indexes for table `pr_calendar`
--
ALTER TABLE `pr_calendar`
 ADD PRIMARY KEY (`pr_calendar_id`), ADD KEY `pr_calendar_id` (`pr_calendar_id`,`pr_id`,`pr_details_id`,`proj_act_id`);

--
-- Indexes for table `pr_details`
--
ALTER TABLE `pr_details`
 ADD PRIMARY KEY (`pr_details_id`), ADD KEY `pr_details_id` (`pr_details_id`,`pr_id`,`grouping_id`,`cancelled_by`,`remark_by`,`company_id`,`fulfilled_by`,`onhold_by`,`recom_by`,`vendor_id`,`terms_id`);

--
-- Indexes for table `pr_head`
--
ALTER TABLE `pr_head`
 ADD PRIMARY KEY (`pr_id`), ADD KEY `pr_id` (`pr_id`,`imported_by`);

--
-- Indexes for table `pr_series`
--
ALTER TABLE `pr_series`
 ADD PRIMARY KEY (`pr_series_id`);

--
-- Indexes for table `pr_vendors`
--
ALTER TABLE `pr_vendors`
 ADD PRIMARY KEY (`pr_vendors_id`), ADD KEY `pr_vendors_id` (`pr_vendors_id`,`pr_id`,`vendor_id`,`grouping_id`,`noted_by`,`approved_by`);

--
-- Indexes for table `reminder`
--
ALTER TABLE `reminder`
 ADD PRIMARY KEY (`reminder_id`);

--
-- Indexes for table `rfd`
--
ALTER TABLE `rfd`
 ADD PRIMARY KEY (`rfd_id`), ADD KEY `po_id` (`po_id`,`pay_to`,`checked_by`,`endorsed_by`,`approved_by`,`noted_by`,`received_by`,`user_id`);

--
-- Indexes for table `rfd_items`
--
ALTER TABLE `rfd_items`
 ADD PRIMARY KEY (`rfd_items_id`), ADD KEY `rfd_id` (`rfd_id`,`item_id`);

--
-- Indexes for table `rfd_purpose`
--
ALTER TABLE `rfd_purpose`
 ADD PRIMARY KEY (`rfd_purpose_id`), ADD KEY `rfd_id` (`rfd_id`);

--
-- Indexes for table `rfq_details`
--
ALTER TABLE `rfq_details`
 ADD PRIMARY KEY (`rfq_details_id`), ADD KEY `rfq_details_id` (`rfq_details_id`,`rfq_id`,`pr_details_id`);

--
-- Indexes for table `rfq_head`
--
ALTER TABLE `rfq_head`
 ADD PRIMARY KEY (`rfq_id`), ADD KEY `rfq_id` (`rfq_id`,`vendor_id`,`pr_id`,`grouping_id`,`prepared_by`,`noted_by`,`approved_by`,`cancelled_date`);

--
-- Indexes for table `rfq_series`
--
ALTER TABLE `rfq_series`
 ADD PRIMARY KEY (`rfq_series_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
 ADD PRIMARY KEY (`terms_id`);

--
-- Indexes for table `to_do_today`
--
ALTER TABLE `to_do_today`
 ADD PRIMARY KEY (`todo_id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
 ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
 ADD PRIMARY KEY (`usertype_id`);

--
-- Indexes for table `vendor_details`
--
ALTER TABLE `vendor_details`
 ADD PRIMARY KEY (`vendordet_id`), ADD KEY `vendor_id` (`vendor_id`,`item_id`);

--
-- Indexes for table `vendor_head`
--
ALTER TABLE `vendor_head`
 ADD PRIMARY KEY (`vendor_id`), ADD KEY `vendor_id` (`vendor_id`,`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aoq_head`
--
ALTER TABLE `aoq_head`
MODIFY `aoq_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `aoq_items`
--
ALTER TABLE `aoq_items`
MODIFY `aoq_items_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `aoq_offers`
--
ALTER TABLE `aoq_offers`
MODIFY `aoq_offer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT for table `aoq_vendors`
--
ALTER TABLE `aoq_vendors`
MODIFY `aoq_vendors_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT for table `jo_ar`
--
ALTER TABLE `jo_ar`
MODIFY `joar_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jo_details`
--
ALTER TABLE `jo_details`
MODIFY `jo_details_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jo_dr`
--
ALTER TABLE `jo_dr`
MODIFY `jodr_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jo_head`
--
ALTER TABLE `jo_head`
MODIFY `jo_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jo_rfd`
--
ALTER TABLE `jo_rfd`
MODIFY `rfd_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jo_series`
--
ALTER TABLE `jo_series`
MODIFY `jo_series_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jo_terms`
--
ALTER TABLE `jo_terms`
MODIFY `jo_terms_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `po_dr`
--
ALTER TABLE `po_dr`
MODIFY `dr_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `po_dr_details`
--
ALTER TABLE `po_dr_details`
MODIFY `dr_details_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `po_dr_items`
--
ALTER TABLE `po_dr_items`
MODIFY `dr_items_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `po_head`
--
ALTER TABLE `po_head`
MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `po_items`
--
ALTER TABLE `po_items`
MODIFY `po_items_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `po_items_temp`
--
ALTER TABLE `po_items_temp`
MODIFY `po_items_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `po_pr`
--
ALTER TABLE `po_pr`
MODIFY `po_pr_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `po_series`
--
ALTER TABLE `po_series`
MODIFY `series_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `po_tc`
--
ALTER TABLE `po_tc`
MODIFY `po_tc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `project_activity`
--
ALTER TABLE `project_activity`
MODIFY `proj_act_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pr_calendar`
--
ALTER TABLE `pr_calendar`
MODIFY `pr_calendar_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pr_details`
--
ALTER TABLE `pr_details`
MODIFY `pr_details_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `pr_head`
--
ALTER TABLE `pr_head`
MODIFY `pr_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pr_series`
--
ALTER TABLE `pr_series`
MODIFY `pr_series_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pr_vendors`
--
ALTER TABLE `pr_vendors`
MODIFY `pr_vendors_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `reminder`
--
ALTER TABLE `reminder`
MODIFY `reminder_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rfd`
--
ALTER TABLE `rfd`
MODIFY `rfd_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rfd_items`
--
ALTER TABLE `rfd_items`
MODIFY `rfd_items_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rfd_purpose`
--
ALTER TABLE `rfd_purpose`
MODIFY `rfd_purpose_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rfq_details`
--
ALTER TABLE `rfq_details`
MODIFY `rfq_details_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT for table `rfq_head`
--
ALTER TABLE `rfq_head`
MODIFY `rfq_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `rfq_series`
--
ALTER TABLE `rfq_series`
MODIFY `rfq_series_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
MODIFY `terms_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `to_do_today`
--
ALTER TABLE `to_do_today`
MODIFY `todo_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
MODIFY `usertype_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vendor_details`
--
ALTER TABLE `vendor_details`
MODIFY `vendordet_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT for table `vendor_head`
--
ALTER TABLE `vendor_head`
MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1679;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
