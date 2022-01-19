-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2022 at 03:33 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unisys`
--

-- --------------------------------------------------------

--
-- Table structure for table `coa`
--

CREATE TABLE `coa` (
  `coa_id` int(12) NOT NULL,
  `account` varchar(255) NOT NULL,
  `parent_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_form`
--

CREATE TABLE `purchase_form` (
  `invoice_number` int(11) NOT NULL,
  `customer` varchar(255) NOT NULL,
  `invoice_date` date NOT NULL,
  `due_date` date NOT NULL,
  `barcode` int(100) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `quantity` int(50) NOT NULL,
  `price` int(50) NOT NULL,
  `product_count` int(50) NOT NULL,
  `sub_total` int(50) NOT NULL,
  `discount_type` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `miscellaneous` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase_form`
--

INSERT INTO `purchase_form` (`invoice_number`, `customer`, `invoice_date`, `due_date`, `barcode`, `unit`, `quantity`, `price`, `product_count`, `sub_total`, `discount_type`, `discount`, `miscellaneous`, `product_name`, `total`) VALUES
(1, 'Select Customer', '2022-01-15', '2022-01-15', 12548789, 'piece', 20, 100, 0, 2000, 'Fixed', '10', '1', 'Product Name', '1991'),
(2, 'Select Customer', '2021-12-31', '2022-01-22', 0, 'piece', 10, 2000, 0, 20000, 'Fixed', '20', '9', 'Product Name', '19989'),
(3, 'Select Customer', '2022-01-15', '2022-01-20', 0, 'piece', 10, 2000, 6, 2000, 'Fixed', '20', '9', 'Product Name', '2025'),
(4, 'Select Customer', '2022-01-16', '2022-01-16', 12548789, 'piece', 10, 2000, 6, 2000, 'Percentage', '20', '9', 'Product Name', '2025'),
(5, 'Noor Shakil', '2022-01-07', '2022-01-19', 124587, '', 20, 150, 0, 3000, 'Fixed', '20', '5', 'Product Name', '2985'),
(6, 'Kazi Aftabur', '0000-00-00', '0000-00-00', 0, '', 0, 0, 0, 0, 'Fixed', '', '', 'Product Name', ''),
(7, 'Select Customer', '0000-00-00', '0000-00-00', 0, '', 0, 0, 0, 0, 'Fixed', '', '', 'Product Name', ''),
(8, 'Select Customer', '0000-00-00', '0000-00-00', 0, '', 0, 0, 0, 0, 'Fixed', '', '', 'Product Name', ''),
(9, 'Select Customer', '0000-00-00', '0000-00-00', 0, '', 0, 0, 0, 0, 'Fixed', '', '', 'Product Name', ''),
(10, 'Select Customer', '0000-00-00', '0000-00-00', 0, '', 0, 0, 0, 0, 'Fixed', '', '', 'Product Name', ''),
(11, 'Select Customer', '0000-00-00', '0000-00-00', 0, '', 0, 0, 0, 0, 'Fixed', '', '', 'Product Name', ''),
(14, 'Noor Shakil', '0000-00-00', '0000-00-00', 0, '', 10, 2000, 0, 0, 'Fixed', '', '', 'Product Name', ''),
(15, 'Select Customer', '0000-00-00', '0000-00-00', 0, '', 10, 2000, 0, 2010, 'Fixed', '', '', 'Product Name', ''),
(16, 'Select Customer', '0000-00-00', '0000-00-00', 0, '', 10, 2000, 0, 2010, 'Fixed', '', '', 'Product Name', ''),
(17, 'Select Customer', '0000-00-00', '0000-00-00', 0, '', 10, 1000, 0, 10000, 'Fixed', '30', '10', 'Product Name', '9980'),
(22, 'Select Customer', '0000-00-00', '0000-00-00', 0, '', 20, 1200, 0, 24000, 'Fixed', '40', '10', 'Product Name', '23970'),
(23, 'Select Customer', '2022-01-18', '2022-01-18', 12548789, 'piece', 20, 100, 0, 2000, 'Fixed', '20', '5', 'Product Name', '1985');

-- --------------------------------------------------------

--
-- Table structure for table `trn_dtl`
--

CREATE TABLE `trn_dtl` (
  `trn_dtl_id` int(12) NOT NULL,
  `trn_mst_id` int(12) NOT NULL,
  `acc_id` int(1) NOT NULL,
  `acc_status` tinyint(4) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trn_dtl`
--

INSERT INTO `trn_dtl` (`trn_dtl_id`, `trn_mst_id`, `acc_id`, `acc_status`, `amount`) VALUES
(6, 2, 2, 2, '5');

-- --------------------------------------------------------

--
-- Table structure for table `trn_mst`
--

CREATE TABLE `trn_mst` (
  `trn_mst_id` int(12) NOT NULL,
  `trn_typ_id` int(12) NOT NULL,
  `trn_cat_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trn_mst`
--

INSERT INTO `trn_mst` (`trn_mst_id`, `trn_typ_id`, `trn_cat_id`) VALUES
(11, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `trn_typ`
--

CREATE TABLE `trn_typ` (
  `trn_typ_id` int(12) NOT NULL,
  `trn_typ_name` varchar(255) NOT NULL,
  `trn_typ_prn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trn_typ`
--

INSERT INTO `trn_typ` (`trn_typ_id`, `trn_typ_name`, `trn_typ_prn`) VALUES
(6, '3', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coa`
--
ALTER TABLE `coa`
  ADD PRIMARY KEY (`coa_id`),
  ADD KEY `test` (`parent_id`);

--
-- Indexes for table `purchase_form`
--
ALTER TABLE `purchase_form`
  ADD PRIMARY KEY (`invoice_number`);

--
-- Indexes for table `trn_dtl`
--
ALTER TABLE `trn_dtl`
  ADD PRIMARY KEY (`trn_dtl_id`);

--
-- Indexes for table `trn_mst`
--
ALTER TABLE `trn_mst`
  ADD PRIMARY KEY (`trn_mst_id`);

--
-- Indexes for table `trn_typ`
--
ALTER TABLE `trn_typ`
  ADD PRIMARY KEY (`trn_typ_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coa`
--
ALTER TABLE `coa`
  MODIFY `coa_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `purchase_form`
--
ALTER TABLE `purchase_form`
  MODIFY `invoice_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `trn_dtl`
--
ALTER TABLE `trn_dtl`
  MODIFY `trn_dtl_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trn_mst`
--
ALTER TABLE `trn_mst`
  MODIFY `trn_mst_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `trn_typ`
--
ALTER TABLE `trn_typ`
  MODIFY `trn_typ_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coa`
--
ALTER TABLE `coa`
  ADD CONSTRAINT `test` FOREIGN KEY (`parent_id`) REFERENCES `coa` (`coa_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
