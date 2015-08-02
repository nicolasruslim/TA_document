-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 06, 2015 at 03:06 
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `belanjaharian`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
`customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_address` varchar(500) NOT NULL,
  `customer_hp` varchar(20) NOT NULL,
  `customer_birthdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_brand` varchar(50) NOT NULL,
  `product_image` varchar(150) NOT NULL,
  `product_type_id` int(10) NOT NULL,
  `product_size1` varchar(50) NOT NULL,
  `product_price1` int(10) NOT NULL,
  `product_size2` varchar(50) DEFAULT NULL,
  `product_price2` int(10) DEFAULT NULL,
  `product_size3` varchar(50) DEFAULT NULL,
  `product_price3` int(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_brand`, `product_image`, `product_type_id`, `product_size1`, `product_price1`, `product_size2`, `product_price2`, `product_size3`, `product_price3`) VALUES
(1, 'Apple Fuji', 'Fresho', 'Fresho - Apple Fuji', 1, '1 kg', 38000, '500 gr', 23000, NULL, NULL),
(2, 'Banana - Yelakki Semi Ripe (Grade A)', 'Fresho', 'Fresho - Banana - Yelakki Semi Ripe (Grade A)', 1, '1 kg', 10000, NULL, NULL, NULL, NULL),
(3, 'Beans - French Ring (Grade A)', 'Fresho', 'Fresho - Beans - French Ring (Grade A)', 2, '1 kg', 6000, NULL, NULL, NULL, NULL),
(4, 'Cabbage Small - Grade A', 'Fresho', 'Fresho - Cabbage Small - Grade A', 2, '1 pc', 5000, NULL, NULL, NULL, NULL),
(5, 'Capsicum Hybrid Green - Grade A', 'Fresho', 'Fresho - Capsicum Hybrid Green - Grade A', 2, '1 kg', 6000, NULL, NULL, NULL, NULL),
(6, 'Carrot Local - Grade A', 'Fresho', 'Fresho - Carrot Local - Grade A', 2, '1 kg', 7500, NULL, NULL, NULL, NULL),
(7, 'Cauliflower(medium) - Grade A', 'Fresho', 'Fresho - Cauliflower(medium) - Grade A', 2, '1 pc approx. 450 to 600 gr', 3500, NULL, NULL, NULL, NULL),
(8, 'Chilly Green Big - Grade A', 'Fresho', 'Fresho - Chilly Green Big - Grade A', 2, '250 gr', 2600, NULL, NULL, NULL, NULL),
(9, 'Coriander Hybrid - Grade A', 'Fresho', 'Fresho - Coriander Hybrid - Grade A', 2, '250 gr', 3500, NULL, NULL, NULL, NULL),
(10, 'Cucumber Hybrid - Grade A', 'Fresho', 'Fresho - Cucumber Hybrid - Grade A', 2, '1 kg', 2000, NULL, NULL, NULL, NULL),
(11, 'Fresh Ginger - Grade A', 'Fresho', 'Fresho - Fresh Ginger - Grade A', 2, '250 gr', 5000, NULL, NULL, NULL, NULL),
(12, 'Ladies Finger - Grade A', 'Fresho', 'Fresho - Ladies Finger - Grade A', 2, '1 kg', 8000, NULL, NULL, NULL, NULL),
(13, 'Lemon - Grade A', 'Fresho', 'Fresho - Lemon - Grade A', 1, '500 gr', 8000, NULL, NULL, NULL, NULL),
(14, 'Onion - Medium', 'Fresho', 'Fresho - Onion - Medium', 2, '1 kg', 5000, NULL, NULL, NULL, NULL),
(15, 'Papaya Local (Medium) - Grade A', 'Fresho', 'Fresho - Papaya Local (Medium) - Grade A', 1, '1 pc approx. 900 gr to 1 kg', 5000, NULL, NULL, NULL, NULL),
(16, 'Pomegranate - Kesar', 'Fresho', 'Fresho - Pomegranate - Kesar', 1, '1 kg', 30000, NULL, NULL, NULL, NULL),
(17, 'Potato', 'Fresho', 'Fresho - Potato', 2, '1 kg', 6000, NULL, NULL, NULL, NULL),
(18, 'Spinach', 'Fresho', 'Fresho - Spinach', 2, '500 gr', 5000, NULL, NULL, NULL, NULL),
(19, 'Tomato Hybrid - Grade A', 'Fresho', 'Fresho - Tomato Hybrid - Grade A', 1, '1 kg', 3200, NULL, NULL, NULL, NULL),
(20, 'Tomato Local - Grade A', 'Fresho', 'Fresho - Tomato Local - Grade A', 1, '1 kg', 2600, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE IF NOT EXISTS `product_type` (
`id_product_type` int(10) NOT NULL,
  `product_type_name` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id_product_type`, `product_type_name`) VALUES
(1, 'buah'),
(2, 'sayur-umbi'),
(3, 'daging'),
(4, 'telur'),
(5, 'makanan'),
(6, 'minuman'),
(7, 'bacaan');

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE IF NOT EXISTS `recipe` (
`recipe_id` int(11) NOT NULL,
  `recipe_name` varchar(100) NOT NULL,
  `recipe_image` varchar(150) NOT NULL,
  `recipe_description` text NOT NULL,
  `recipe_howto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recipe_composition`
--

CREATE TABLE IF NOT EXISTS `recipe_composition` (
`composition_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
`supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `supplier_address` varchar(200) NOT NULL,
  `supplier_hp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`product_id`), ADD KEY `product_type_id` (`product_type_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
 ADD PRIMARY KEY (`id_product_type`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
 ADD PRIMARY KEY (`recipe_id`);

--
-- Indexes for table `recipe_composition`
--
ALTER TABLE `recipe_composition`
 ADD PRIMARY KEY (`composition_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
 ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
MODIFY `id_product_type` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `recipe_composition`
--
ALTER TABLE `recipe_composition`
MODIFY `composition_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id_product_type`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
