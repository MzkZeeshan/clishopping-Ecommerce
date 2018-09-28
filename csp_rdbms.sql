-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2018 at 03:26 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csp_rdbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'Sony'),
(5, 'LG'),
(6, 'Cloth Brand');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(1, 1, '::1', -1, 1),
(2, 2, '::1', -1, 1),
(3, 3, '::1', -1, 1),
(4, 8, '::1', -1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Electronics'),
(2, 'Ladies Wears'),
(3, 'Mens Wear'),
(4, 'Kids Wear'),
(5, 'Furnitures'),
(6, 'Home Appliances'),
(7, 'Electronics Gadgets');

-- --------------------------------------------------------

--
-- Table structure for table `categories_info`
--

CREATE TABLE `categories_info` (
  `Po_Id` int(11) NOT NULL,
  `C_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories_info`
--

INSERT INTO `categories_info` (`Po_Id`, `C_Name`) VALUES
(1, 'pakistan'),
(9, 'Female Fashion'),
(10, 'Male Fashion'),
(10, 'Female Fashion'),
(10, 'Cosmatic'),
(11, 'Male Fashion'),
(11, 'Female Fashion'),
(11, 'Cosmatic'),
(12, 'Male Fashion'),
(12, 'Female Fashion'),
(12, 'Cosmatic'),
(13, 'Male Fashion'),
(13, 'Female Fashion'),
(13, 'Cosmatic'),
(14, 'Male Fashion'),
(14, 'Female Fashion'),
(14, 'Cosmatic'),
(15, 'Male Fashion'),
(15, 'Female Fashion'),
(16, 'Male Fashion'),
(19, 'Female Fashion'),
(20, 'Female Fashion'),
(21, 'Cosmatic'),
(22, 'Male Fashion'),
(23, 'Female Fashion'),
(24, 'Female Fashion'),
(25, 'Female Fashion'),
(26, 'Female Fashion'),
(27, 'Cosmatic'),
(29, 'Female Fashion'),
(30, 'Male Fashion'),
(31, 'Female Fashion'),
(32, 'Female Fashion'),
(33, 'Female Fashion'),
(34, 'Female Fashion'),
(35, 'Female Fashion'),
(36, 'Female Fashion'),
(36, 'Cosmatic'),
(37, 'Female Fashion'),
(37, 'Cosmatic'),
(38, 'Female Fashion'),
(38, 'Cosmatic'),
(39, 'Female Fashion'),
(39, 'Cosmatic'),
(40, 'Bueaty & Health'),
(41, 'Bueaty & Health'),
(42, 'Bueaty & Health'),
(42, 'Female Fashion'),
(44, 'Bueaty & Health'),
(44, 'Female Fashion'),
(44, 'Cosmatic'),
(45, 'Bueaty & Health'),
(45, 'Female Fashion'),
(45, 'Cosmatic'),
(46, 'Bueaty & Health'),
(46, 'Female Fashion'),
(46, 'Cosmatic'),
(47, 'Bueaty & Health'),
(47, 'Cosmatic'),
(49, 'Bueaty & Health'),
(49, 'Female Fashion'),
(49, 'Cosmatic'),
(50, 'Female Fashion'),
(51, 'Bueaty & Health'),
(51, 'Female Fashion'),
(51, 'Cosmatic'),
(52, 'Male Fashion'),
(53, 'Bueaty & Health'),
(53, 'Female Fashion'),
(53, 'Cosmatic'),
(54, 'Male Fashion'),
(55, 'Male Fashion'),
(56, 'Male Fashion');

-- --------------------------------------------------------

--
-- Table structure for table `ordered_products`
--

CREATE TABLE `ordered_products` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordered_products`
--

INSERT INTO `ordered_products` (`customer_id`, `product_id`, `product_quantity`) VALUES
(2, 40, 1),
(2728, 40, 1),
(0, 40, 1),
(0, 40, 1),
(0, 40, 1),
(0, 40, 1),
(2729, 40, 1),
(0, 40, 1),
(0, 40, 1),
(0, 40, 1),
(0, 40, 1),
(2730, 40, 1),
(0, 40, 1),
(0, 40, 1),
(0, 40, 1),
(0, 40, 1),
(2731, 40, 1),
(2731, 40, 1),
(2731, 40, 1),
(2731, 40, 1),
(2731, 40, 1),
(2732, 40, 1),
(2732, 40, 1),
(2732, 40, 1),
(2732, 40, 1),
(2732, 40, 1),
(2733, 40, 1),
(2733, 40, 1),
(2733, 40, 1),
(2733, 40, 1),
(2733, 40, 1),
(2734, 40, 1),
(2734, 40, 1),
(2734, 40, 1),
(2734, 40, 1),
(2734, 40, 1),
(2735, 40, 1),
(2735, 40, 1),
(2735, 40, 1),
(2735, 40, 1),
(2735, 40, 1),
(2735, 41, 1),
(2735, 41, 1),
(2736, 40, 1),
(2736, 40, 1),
(2736, 40, 1),
(2736, 40, 1),
(2736, 40, 1),
(2736, 41, 1),
(2736, 41, 1),
(2737, 40, 1),
(2737, 40, 1),
(2737, 40, 1),
(2737, 40, 1),
(2737, 40, 1),
(2737, 41, 1),
(2737, 41, 1),
(2738, 41, 1),
(2738, 41, 1),
(2738, 41, 1),
(2738, 41, 1),
(2739, 0, 1),
(2739, 0, 1),
(2739, 0, 1),
(2740, 41, 1),
(2740, 41, 1),
(2741, 41, 1),
(2745, 41, 1),
(2745, 41, 1),
(2746, 41, 1),
(2747, 4, 1),
(2747, 1, 0),
(2748, 41, 1),
(2748, 40, 1),
(2748, 40, 1),
(2757, 40, 1),
(2758, 40, 1),
(2759, 40, 1),
(2760, 40, 1),
(2761, 40, 1),
(2762, 40, 1),
(2765, 40, 1),
(2766, 40, 1),
(2767, 40, 1),
(2768, 40, 1),
(2769, 40, 1),
(2770, 40, 1),
(2771, 40, 1),
(2771, 40, 1),
(2772, 40, 1),
(2772, 40, 1),
(2773, 40, 1),
(2773, 40, 1),
(2779, 40, 1),
(2780, 40, 1),
(2782, 40, 1),
(2783, 41, 1),
(2784, 0, 0),
(2784, 0, 0),
(2784, 0, 0),
(2784, 0, 0),
(2784, 0, 0),
(2784, 0, 0),
(2784, 0, 0),
(2784, 0, 0),
(2784, 0, 0),
(2785, 0, 0),
(2785, 0, 0),
(2785, 0, 0),
(2785, 0, 0),
(2785, 0, 0),
(2785, 0, 0),
(2785, 0, 0),
(2785, 0, 0),
(2785, 0, 0),
(2785, 0, 0),
(2785, 0, 0),
(2785, 0, 0),
(2785, 0, 0),
(2785, 0, 0),
(2785, 0, 0),
(2785, 0, 0),
(2785, 0, 0),
(2785, 0, 0),
(2785, 0, 0),
(2785, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 2, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 2, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `order_info`
--

CREATE TABLE `order_info` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(500) NOT NULL,
  `customer_phone` varchar(500) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_address` varchar(500) NOT NULL,
  `customer_payment_method` varchar(100) NOT NULL,
  `customer_done_flag` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_info`
--

INSERT INTO `order_info` (`customer_id`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `customer_payment_method`, `customer_done_flag`) VALUES
(2, 'zeeshan', '03462337076', 'zeeshan@gmail.com', 'House No L-732 Sector 5c/2 North Karachi', 'cash on delivery', ''),
(2730, 'aa', 'as', 'asd', 'as', 'Cash On Deliver', ''),
(2731, 'aa', 'as', 'asd', 'as', 'Cash On Deliver', ''),
(2732, 'aa', 'as', 'asd', 'as', 'Cash On Deliver', ''),
(2733, 'aa', 'as', 'asd', 'as', 'Cash On Deliver', ''),
(2734, 'aa', 'as', 'asd', 'as', 'Cash On Deliver', ''),
(2735, 'aa', 'as', 'asd', 'as', 'Cash On Deliver', ''),
(2736, 'aa', 'as', 'asd', 'as', 'Cash On Deliver', 'false'),
(2737, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2738, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2739, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2740, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2741, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2742, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2743, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2744, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2745, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2746, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2747, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2748, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2749, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2750, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2751, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2752, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2753, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2754, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2755, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2756, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2757, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2758, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2759, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2760, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2761, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2762, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2763, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2764, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2765, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2766, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2767, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2768, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2769, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2770, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2771, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2772, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2773, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2774, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2775, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2776, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2777, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2778, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2779, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2780, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2781, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2782, 'zeeshan', '03462337076', 'ZEESHAN@GMAIL.COM', 'MY NAME IS KHAN', 'Cash On Deliver', 'false'),
(2783, 'saqib', '03462337076', 'sa@gmail.com', 'House No L-732 Sector  5c/2 New', 'Cash On Deliver', 'false'),
(2784, '', '', '', '', 'Cash On Deliver', 'false'),
(2785, '', '', '', '', 'Cash On Deliver', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `picture_info`
--

CREATE TABLE `picture_info` (
  `Po_iD` int(11) NOT NULL,
  `P_P_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `picture_info`
--

INSERT INTO `picture_info` (`Po_iD`, `P_P_Name`) VALUES
(1, 'sdasd.jpg'),
(21, 'product_images/2018Saturday08 _18_51_33.jpg'),
(21, 'product_images/2018Saturday08 _18_51_33.jpg2018Saturday08 _18_51_34.jpg'),
(21, 'product_images/2018Saturday08 _18_51_33.jpg2018Saturday08 _18_51_34.jpg2018Saturday08 _18_51_34.jpg'),
(22, 'product_images/2018Saturday08 _18_57_23.'),
(22, 'product_images/2018Saturday08 _18_57_23.2018Saturday08 _18_57_23.'),
(23, 'product_images/2018Saturday08 _18_58_45.jpg'),
(23, 'product_images/2018Saturday08 _18_58_45.jpg2018Saturday08 _18_58_45.jpg'),
(23, 'product_images/2018Saturday08 _18_58_45.jpg2018Saturday08 _18_58_45.jpg2018Saturday08 _18_58_45.jpg'),
(25, 'product_images/'),
(25, 'product_images/'),
(25, 'product_images/'),
(26, 'product_images/'),
(26, 'product_images/'),
(26, 'product_images/'),
(27, 'product_images/2018Saturday08 _19_24_44.jpg'),
(27, 'product_images/2018Saturday08 _19_24_44.jpg'),
(27, 'product_images/2018Saturday08 _19_24_44.jpg'),
(29, 'product_images/2018Saturday08 _19_27_49.jpg'),
(29, 'product_images/2018Saturday08 _19_27_49.jpg'),
(29, 'product_images/2018Saturday08 _19_27_50.jpg'),
(31, 'product_images/0__2018_Saturday_08.jpg'),
(31, 'product_images/1__2018_Saturday_08.jpg'),
(31, 'product_images/2__2018_Saturday_08.jpg'),
(32, 'product_images/0__2018_Saturday_08time19_44_18.jpg'),
(32, 'product_images/1__2018_Saturday_08time19_44_18.jpg'),
(32, 'product_images/2__2018_Saturday_08time19_44_18.jpg'),
(33, 'product_images/0__2018_09_08time19_46_13.jpg'),
(33, 'product_images/1__2018_09_08time19_46_13.jpg'),
(33, 'product_images/2__2018_09_08time19_46_14.jpg'),
(34, 'product_images/0__08_09_2018time19_47_17.jpg'),
(34, 'product_images/1__08_09_2018time19_47_17.jpg'),
(34, 'product_images/2__08_09_2018time19_47_17.jpg'),
(35, 'product_images/0__08_09_2018time19_47_44.jpg'),
(35, 'product_images/1__08_09_2018time19_47_44.jpg'),
(35, 'product_images/2__08_09_2018time19_47_44.jpg'),
(37, 'product_images/0__08_09_2018time19_54_49.jpg'),
(37, 'product_images/1__08_09_2018time19_54_49.jpg'),
(38, 'product_images/0__08_09_2018time19_57_20.jpg'),
(38, 'product_images/1__08_09_2018time19_57_20.jpg'),
(39, 'product_images/0__08_09_2018time19_59_30.jpg'),
(39, 'product_images/1__08_09_2018time19_59_30.jpg'),
(40, '0__10_09_2018time21_22_17.jpg'),
(40, '0__10_09_2018time21_22_17.jpg'),
(41, '0__10_09_2018time22_42_49.jpg'),
(42, '0__26_09_2018time14_05_57.jpg'),
(42, '1__26_09_2018time14_05_58.jpg'),
(42, '2__26_09_2018time14_05_58.jpg'),
(42, '3__26_09_2018time14_05_58.jpg'),
(44, '0__26_09_2018time14_43_37.jpg'),
(44, '1__26_09_2018time14_43_37.jpg'),
(44, '2__26_09_2018time14_43_37.jpg'),
(44, '3__26_09_2018time14_43_37.jpg'),
(44, '4__26_09_2018time14_43_37.jpg'),
(45, '0__26_09_2018time14_49_08.jpg'),
(45, '1__26_09_2018time14_49_08.jpg'),
(45, '2__26_09_2018time14_49_08.jpg'),
(46, '0__26_09_2018time14_52_40.jpg'),
(47, '0__26_09_2018time14_56_42.jpg'),
(49, '0__26_09_2018time15_02_10.jpg'),
(50, '0__26_09_2018time18_17_12.jpg'),
(51, '0__26_09_2018time18_28_29.jpg'),
(51, '1__26_09_2018time18_28_29.jpg'),
(51, '2__26_09_2018time18_28_29.jpg'),
(52, '0__26_09_2018time18_32_46.jpg'),
(52, '1__26_09_2018time18_32_46.jpg'),
(52, '2__26_09_2018time18_32_46.jpg'),
(53, '0__26_09_2018time18_38_51.jpg'),
(53, '1__26_09_2018time18_38_51.jpg'),
(53, '2__26_09_2018time18_38_51.jpg'),
(54, '0__26_09_2018time18_45_17.jpg'),
(55, '0__26_09_2018time18_55_48.jpg'),
(56, '0__26_09_2018time18_59_01.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 2, 'Samsung Dous 2', 5000, 'Samsung Dous 2 sgh ', 'samsung mobile.jpg', 'samsung mobile electronics'),
(2, 1, 3, 'iPhone 5s', 25000, 'iphone 5s', 'iphone mobile.jpg', 'mobile iphone apple'),
(3, 1, 3, 'iPad', 30000, 'ipad apple brand', 'ipad.jpg', 'apple ipad tablet'),
(4, 1, 3, 'iPhone 6s', 32000, 'Apple iPhone ', 'iphone.jpg', 'iphone apple mobile'),
(5, 1, 2, 'iPad 2', 10000, 'samsung ipad', 'ipad 2.jpg', 'ipad tablet samsung'),
(6, 1, 1, 'Hp Laptop r series', 35000, 'Hp Red and Black combination Laptop', 'k2-_ed8b8f8d-e696-4a96-8ce9-d78246f10ed1.v1.jpg-bc204bdaebb10e709a997a8bb4518156dfa6e3ed-optim-450x450.jpg', 'hp laptop '),
(7, 1, 1, 'Laptop Pavillion', 50000, 'Laptop Hp Pavillion', '12039452_525963140912391_6353341236808813360_n.png', 'Laptop Hp Pavillion'),
(8, 1, 4, 'Sony', 40000, 'Sony Mobile', 'sony mobile.jpg', 'sony mobile'),
(9, 1, 3, 'iPhone New', 12000, 'iphone', 'white iphone.png', 'iphone apple mobile'),
(10, 2, 6, 'Red Ladies dress', 1000, 'red dress for girls', 'red dress.jpg', 'red dress '),
(11, 2, 6, 'Blue Heave dress', 1200, 'Blue dress', 'images.jpg', 'blue dress cloths'),
(12, 2, 6, 'Ladies Casual Cloths', 1500, 'ladies casual summer two colors pleted', '7475-ladies-casual-dresses-summer-two-colors-pleated.jpg', 'girl dress cloths casual'),
(13, 2, 6, 'SpringAutumnDress', 1200, 'girls dress', 'Spring-Autumn-Winter-Young-Ladies-Casual-Wool-Dress-Women-s-One-Piece-Dresse-Dating-Clothes-Medium.jpg_640x640.jpg', 'girl dress'),
(14, 2, 6, 'Casual Dress', 1400, 'girl dress', 'download.jpg', 'ladies cloths girl'),
(15, 2, 6, 'Formal Look', 1500, 'girl dress', 'shutterstock_203611819.jpg', 'ladies wears dress girl'),
(16, 3, 6, 'Sweter for men', 600, '2012-Winter-Sweater-for-Men-for-better-outlook', '2012-Winter-Sweater-for-Men-for-better-outlook.jpg', 'black sweter cloth winter'),
(17, 3, 6, 'Gents formal', 1000, 'gents formal look', 'gents-formal-250x250.jpg', 'gents wear cloths'),
(19, 3, 6, 'Formal Coat', 3000, 'ad', 'images (1).jpg', 'coat blazer gents'),
(20, 3, 6, 'Mens Sweeter', 1600, 'jg', 'Winter-fashion-men-burst-sweater.png', 'sweeter gents '),
(21, 3, 6, 'T shirt', 800, 'ssds', 'IN-Mens-Apparel-Voodoo-Tiles-09._V333872612_.jpg', 'formal t shirt black'),
(22, 4, 6, 'Yellow T shirt ', 1300, 'yello t shirt with pant', '1.0x0.jpg', 'kids yellow t shirt'),
(23, 4, 6, 'Girls cloths', 1900, 'sadsf', 'GirlsClothing_Widgets.jpg', 'formal kids wear dress'),
(24, 4, 6, 'Blue T shirt', 700, 'g', 'images.jpg', 'kids dress'),
(25, 4, 6, 'Yellow girls dress', 750, 'as', 'images (3).jpg', 'yellow kids dress'),
(26, 4, 6, 'Skyblue dress', 650, 'nbk', 'kids-wear-121.jpg', 'skyblue kids dress'),
(27, 4, 6, 'Formal look', 690, 'sd', 'image28.jpg', 'formal kids dress'),
(32, 5, 0, 'Book Shelf', 2500, 'book shelf', 'furniture-book-shelf-250x250.jpg', 'book shelf furniture'),
(33, 6, 2, 'Refrigerator', 35000, 'Refrigerator', 'CT_WM_BTS-BTC-AppliancesHome_20150723.jpg', 'refrigerator samsung'),
(34, 6, 4, 'Emergency Light', 1000, 'Emergency Light', 'emergency light.JPG', 'emergency light'),
(35, 6, 0, 'Vaccum Cleaner', 6000, 'Vaccum Cleaner', 'images (2).jpg', 'Vaccum Cleaner'),
(36, 6, 5, 'Iron', 1500, 'gj', 'iron.JPG', 'iron'),
(37, 6, 5, 'LED TV', 20000, 'LED TV', 'images (4).jpg', 'led tv lg'),
(38, 6, 4, 'Microwave Oven', 3500, 'Microwave Oven', 'images.jpg', 'Microwave Oven'),
(39, 6, 5, 'Mixer Grinder', 2500, 'Mixer Grinder', 'singer-mixer-grinder-mg-46-medium_4bfa018096c25dec7ba0af40662856ef.jpg', 'Mixer Grinder'),
(40, 2, 6, 'Formal girls dress', 3000, 'Formal girls dress', 'girl-walking.jpg', 'ladies'),
(45, 1, 2, 'Samsung Galaxy Note 3', 10000, '0', 'samsung_galaxy_note3_note3neo.JPG', 'samsung galaxy Note 3 neo'),
(46, 1, 2, 'Samsung Galaxy Note 3', 10000, '', 'samsung_galaxy_note3_note3neo.JPG', 'samsung galxaxy note 3 neo');

-- --------------------------------------------------------

--
-- Table structure for table `products_info`
--

CREATE TABLE `products_info` (
  `Po_Id` int(11) NOT NULL,
  `P_Name` varchar(500) NOT NULL,
  `P_Price` int(11) NOT NULL,
  `P_S_Price` int(11) NOT NULL,
  `P_Weight` int(11) NOT NULL,
  `P_K_Feature` varchar(10000) NOT NULL,
  `P_Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_info`
--

INSERT INTO `products_info` (`Po_Id`, `P_Name`, `P_Price`, `P_S_Price`, `P_Weight`, `P_K_Feature`, `P_Quantity`) VALUES
(40, 'Gel Eye Liner - Black', 156, 125, 1, '         <ul>\r\n           <b><li> KEY FEATURES </li></b>\r\n           <li>Smudge free</li>\r\n           <li>Waterproof</li>\r\n           <li>Long lasting</li>\r\n\r\n\r\n            ', 1000),
(41, 'Makeup Beauty Blender Puff', 311, 249, 1, '         <ul>\r\n           <b><li> KEY FEATURES </li></b>\r\n           <li>Smooth application</li>\r\n           <li>Great results</li>\r\n           <li>High Quality</li>\r\n<li>Easy To Use</li>\r\n\r\n            ', 1000),
(42, 'Stencils For Perfect Cat Eyeliner And Smoky Eyes - 6 Pcs', 144, 115, 1, '<ul><li>High quality</li><li>Easy to create design</li><li>Makes 6 different designs</li><li>Create perfect winged eyeliner in seconds</li><li>Create sultry smokey eyes anywhere in no time</li><li>Great tool for Make-Up beginners</li></ul>', 1000),
(43, 'Garnier Branded Deal Pack Of 4 ', 2200, 1850, 1, '<ul><li>Moisturizes and nourishes</li><li>Glowy and smooth skin</li><li>Promotes healthy skin</li><li>High Quality</li></ul>', 1000),
(44, 'Garnier Branded Deal Pack Of 4 ', 2200, 1850, 1, '<ul><li>Moisturizes and nourishes</li><li>Glowy and smooth skin</li><li>Promotes healthy skin</li><li>High Quality</li></ul>', 1000),
(45, 'Lip Mask For Beautiful Lips', 311, 249, 1, '<ul><li>Moisturizes and nourishes</li><li>Glowy and smooth skin</li><li>Promotes healthy skin</li><li>High Quality</li></ul>FEATURES </li></b>\r\n           <li></li>\r\n           <li></li>\r\n           <li></li>\r\n\r\n\r\n            ', 1000),
(46, 'Eyeshades + Bluson Makeup Kit', 1688, 1350, 1, '<ul><li>Excellent Pigment</li><li>High Quality</li><li>Smooth Application</li><li>Perfect Finish</li></ul>', 1000),
(47, 'Lipsticks Multicolor Pack Of 06', 650, 499, 1, '<ul><li>Excellent Pigment</li><li>High Quality</li><li>Smooth Application</li><li>Perfect Finish</li></ul>', 1000),
(48, 'Facial Mixing Bowl - Blue.', 328, 262, 1, '<ul><li>High Quality&nbsp;</li><li>Soft plastic, with the very fine size&nbsp;</li><li>Stick is perfect for stirring</li><li>Brush is soft and comfortable, harmless to skin.</li></ul>', 1000),
(49, 'Facial Mixing Bowl - Blue.', 328, 262, 1, '<ul><li>High Quality&nbsp;</li><li>Soft plastic, with the very fine size&nbsp;</li><li>Stick is perfect for stirring</li><li>Brush is soft and comfortable, harmless to skin.</li></ul>', 1000),
(50, 'Nail Buffer - Multicolor 7 Ways', 185, 160, 1, '<ul><li>High Quality</li><li>Imported</li><li>Easy to use</li><li>Nail buffer makes your nails more pretty and shiny</li><li>Helps to make the nails smooth and glossy</li><li>For Professional or Hme Use</li></ul>', 1000),
(51, 'Combo Of - Slique Threading Machine & 5 In 1 Facial Massager', 699, 599, 1, '<ul><li>Easy to use</li><li>Successfully expels dead cells from your skin</li><li>Restore your skin to flawlessness</li><li>Easily Removes Hair</li><li>Easy To Carry</li><li>Safe &amp; Convenient To Use</li></ul>', 1000),
(53, 'Master Blusher - 8 Colors', 812, 650, 1, '<ul><li>Excellent Pigment</li><li>High Quality</li><li>Smooth Application</li><li>Perfect Finish</li></ul>', 1000),
(54, 'Mens Watches - Black & Brown Pack Of 2', 577, 444, 1, '<ul><li>Leather Strap</li><li>Quartz Movement</li><li>Analog Dial</li><li>Mustaches Watch with Blue Strap for Men</li></ul>', 1000),
(55, ' Luxee Blue Denim Newspaper Watch for Men', 400, 299, 1, '<ul><li>Leather Strap</li><li>Quartz Movement</li><li>Analog Dial</li><li>Mustaches Watch with Blue Strap for Men</li></ul>', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Rizwan', 'Khan', 'rizwankhan.august16@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asansol'),
(2, 'Rizwan', 'Khan', 'rizwankhan.august16@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_info`
--
ALTER TABLE `order_info`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `products_info`
--
ALTER TABLE `products_info`
  ADD PRIMARY KEY (`Po_Id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `order_info`
--
ALTER TABLE `order_info`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2786;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `products_info`
--
ALTER TABLE `products_info`
  MODIFY `Po_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
