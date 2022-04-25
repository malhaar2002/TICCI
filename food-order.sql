-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2022 at 08:08 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `cudiki_cart`
--

CREATE TABLE `cudiki_cart` (
  `title` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cudiki_cart`
--

INSERT INTO `cudiki_cart` (`title`, `quantity`, `price`) VALUES
('Tandoori Stuffed Aloo', 1, 155);

-- --------------------------------------------------------

--
-- Table structure for table `f0rsythe_cart`
--

CREATE TABLE `f0rsythe_cart` (
  `title` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `f0rsythe_cart`
--

INSERT INTO `f0rsythe_cart` (`title`, `quantity`, `price`) VALUES
('Afgani Chicken Tikka', 2, 180);

-- --------------------------------------------------------

--
-- Table structure for table `malhaar2002_cart`
--

CREATE TABLE `malhaar2002_cart` (
  `title` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `malhaar2002_cart`
--

INSERT INTO `malhaar2002_cart` (`title`, `quantity`, `price`) VALUES
('Mix Vegetable', 10, 218),
('Tandoori Seekh Kebab', 13, 1040),
('Tandoori Stuffed Aloo', 10, 1550),
('Yellow Dal Tadka', 2, 240),
('Crunchy Paneer Tikka', 4, 320);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `payment_id` varchar(50) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(9, 'Allen Frank', 'Allen', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(11, 'malhaar', 'Malhaar2002', 'ba7bc7d5e0463e83fbe4528bff9c33b3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `featured`, `active`) VALUES
(10, 'Starters', 'No', 'No'),
(11, 'Main Course', 'No', 'No'),
(12, 'Bread and Add-ons', 'No', 'No'),
(13, 'Classic Combos', 'No', 'No'),
(14, 'Parathas', 'No', 'No'),
(15, 'Dessert', 'No', 'No'),
(16, 'Salads', 'No', 'No'),
(17, 'Add-ons', 'Yes', 'Yes'),
(18, 'Boiled', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_name`, `featured`, `active`) VALUES
(10, 'Crunchy Paneer Tikka', '', '160.00', 'Food_Item_03-01-2022-10-38-52-am.jpg', 'Starters', 'Yes', 'Yes'),
(11, 'Tandoori Stuffed Aloo', '', '155.00', 'Food_Item_03-01-2022-10-40-23-am.jfif', 'Starters', 'Yes', 'Yes'),
(12, 'Tandoori Seekh Kebab', '', '160.00', 'Food_Item_03-01-2022-10-41-28-am.jpg', 'Starters', 'Yes', 'Yes'),
(13, 'Afgani Chicken Tikka', '', '180.00', 'Food_Item_03-01-2022-10-42-20-am.jpg', 'Starters', 'Yes', 'Yes'),
(14, 'Dal Makhani', '', '135.00', 'Food_Item_03-01-2022-10-50-25-am.jpg', 'Main Course', 'Yes', 'Yes'),
(15, 'Yellow Dal Tadka', '', '120.00', 'Food_Item_03-01-2022-10-51-14-am.jpg', 'Main Course', 'Yes', 'Yes'),
(16, 'Mix Vegetable', '', '130.00', 'Food_Item_03-01-2022-10-51-43-am.jpg', 'Main Course', 'Yes', 'Yes'),
(17, 'Palak Paneer (Seasonal)', '', '150.00', 'Food_Item_03-01-2022-10-52-05-am.jpg', 'Main Course', 'Yes', 'Yes'),
(18, 'Kadhai Paneer', '', '150.00', 'Food_Item_03-01-2022-10-57-07-am.jfif', 'Main Course', 'Yes', 'Yes'),
(19, 'Paneer Butter Masala', '', '160.00', 'Food_Item_03-01-2022-10-59-32-am.jfif', 'Main Course', 'Yes', 'Yes'),
(20, 'Kadhai Chicken', '', '230.00', 'Food_Item_03-01-2022-11-03-00-am.jfif', 'Main Course', 'No', 'No'),
(21, 'Chicken Butter Masala', '', '225.00', 'Food_Item_03-01-2022-11-07-04-am.jfif', 'Main Course', 'Yes', 'Yes'),
(22, 'Boondi Raita', '', '55.00', 'Food_Item_03-01-2022-11-07-53-am.jfif', 'Main Course', 'Yes', 'Yes'),
(23, 'Mix Veg Raita', '', '70.00', 'Food_Item_03-01-2022-11-08-54-am.jfif', 'Main Course', 'Yes', 'Yes'),
(24, 'Veg Biryani', '', '95.00', 'Food_Item_03-01-2022-11-10-33-am.jfif', 'Main Course', 'Yes', 'Yes'),
(25, 'Hyderabadi Chicken Biryani', '', '130.00', 'Food_Item_03-01-2022-11-11-19-am.jfif', 'Main Course', 'Yes', 'Yes'),
(26, 'Butter Tandoori Roti', '', '15.00', 'Food_Item_03-01-2022-11-12-13-am.jfif', 'Bread and Add-ons', 'Yes', 'Yes'),
(27, 'Butter Naan', '', '40.00', 'Food_Item_03-01-2022-11-13-53-am.jpg', 'Bread and Add-ons', 'Yes', 'Yes'),
(28, 'Lachha Paratha', '', '50.00', 'Food_Item_03-01-2022-11-15-02-am.jfif', 'Bread and Add-ons', 'Yes', 'Yes'),
(29, 'Steamed Rice', '', '55.00', 'Food_Item_03-01-2022-11-16-25-am.jfif', 'Bread and Add-ons', 'Yes', 'Yes'),
(30, 'Special Regular Thali Veg', 'Paneer Butter Masala, Mix Vegetable, Raita, Salad, 1 Roti, 1 Lachha Paratha', '125.00', 'Food_Item_03-01-2022-11-19-33-am.jfif', 'Classic Combos', 'Yes', 'Yes'),
(31, 'Chicken Butter Masala Rice', 'Chicken Butter Masala, 2 Roti, Rice, Pappad, Salad ', '220.00', 'Food_Item_03-01-2022-11-21-39-am.jfif', 'Classic Combos', 'Yes', 'Yes'),
(32, 'Stuffed Aloo/Gobhi/Onion Paratha', '', '60.00', 'Food_Item_03-01-2022-11-22-55-am.jfif', 'Parathas', 'Yes', 'Yes'),
(33, 'Stuffed Paneer Paratha', '', '80.00', 'Food_Item_03-01-2022-11-23-34-am.jfif', 'Parathas', 'Yes', 'Yes'),
(34, 'Gulab Jamun (2Pcs)', '', '70.00', 'Food_Item_03-01-2022-11-24-20-am.jfif', 'Dessert', 'Yes', 'Yes'),
(35, 'Sprouts', '', '100.00', 'Food_Item_03-01-2022-11-25-26-am.jfif', 'Salads', 'Yes', 'Yes'),
(36, 'Green Salad', '', '70.00', 'Food_Item_03-01-2022-11-26-13-am.jfif', 'Salads', 'Yes', 'Yes'),
(37, 'Chole Bhature', '', '75.00', 'Food_Item_03-01-2022-11-32-20-am.jfif', 'Main Course', 'Yes', 'Yes'),
(38, 'Samosa', '', '15.00', 'Food_Item_03-01-2022-11-33-48-am.jfif', 'Add-ons', 'Yes', 'Yes'),
(39, 'Plain Maggi', '', '40.00', 'Food_Item_03-01-2022-11-34-42-am.jfif', 'Add-ons', 'Yes', 'Yes'),
(40, 'Veg Maggi', '', '60.00', 'Food_Item_03-01-2022-11-35-37-am.jfif', 'Add-ons', 'Yes', 'Yes'),
(41, 'Chilli Chicken', '', '180.00', 'Food_Item_03-01-2022-11-37-09-am.jfif', 'Add-ons', 'Yes', 'Yes'),
(42, 'Chicken Fried Rice', '', '150.00', 'Food_Item_03-01-2022-11-38-20-am.jfif', 'Add-ons', 'Yes', 'Yes'),
(43, 'Crispy Chicken Burger', '', '80.00', 'Food_Item_03-01-2022-11-39-30-am.jfif', 'Add-ons', 'Yes', 'Yes'),
(44, 'Boiled Egg (2 PCS)', '', '30.00', 'Food_Item_03-01-2022-11-40-52-am.jfif', 'Boiled', 'Yes', 'Yes'),
(45, 'Bread Omelette', '', '60.00', 'Food_Item_03-01-2022-11-50-02-am.jfif', 'Boiled', 'Yes', 'Yes'),
(46, 'Hot Coffee ', '', '30.00', 'Food_Item_03-01-2022-11-52-38-am.jfif', 'Boiled', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `full_name` varchar(100) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`full_name`, `contact_number`, `email`, `username`, `password`) VALUES
('Ciara Foley', '6025421251', 'xacubeziga@mailinator.com', 'cudiki', 'ba74a978b7b9738d5274e05bd108db81'),
('Spandan Panda', '9599927896', 'spandan1407@gmail.com', 'f0rsythe', '21232f297a57a5a743894a0e4a801fc3'),
('Randall Morales', '9810033729', 'lavo@mailinator.com', 'gucazypo', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
('Kumud', '9810033729', 'zysuso@mailinator.com', 'kumud', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
('Malhaar Arora', '8920565864', 'malhaar.arora@plaksha.edu.in', 'malhaar2002', 'ba7bc7d5e0463e83fbe4528bff9c33b3'),
('Micah Dalton', '4242424235', 'rukafij@mailinator.com', 'mifalasyk', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
('Paras Agarwal', '8791077702', 'parasagarwal52@yahoo.com', 'paras@0909', '177b11cf02a756b440e0d5e7368b8a04'),
('Fdsgd', '4242424235', 'aroramalhaar@gmail.com', 'sadasdas', '962012d09b8170d912f0669f6d7d9d07'),
('Aditya Tyagi', '8448167275', 'aditya.tyagi@plaksha.edu.in', 'tyagiboi', 'ec8cf3344ab41399b624eba8b56a3009');

-- --------------------------------------------------------

--
-- Table structure for table `_cart`
--

CREATE TABLE `_cart` (
  `title` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_cart`
--

INSERT INTO `_cart` (`title`, `quantity`, `price`) VALUES
('Tandoori Seekh Kebab', 1, 160),
('Crunchy Paneer Tikka', 3, 160);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
