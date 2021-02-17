-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2021 at 10:32 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(8, 'Men', 1),
(9, 'Women', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(6, 'Prakash Jha', 'prakash@gmail.com', '9898975462', 'select city', '2021-02-06 08:38:49');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL,
  `txnid` varchar(20) NOT NULL,
  `mihpayid` varchar(20) NOT NULL,
  `payu_status` varchar(10) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `txnid`, `mihpayid`, `payu_status`, `added_on`) VALUES
(24, 10, 'Pilkhi Gajpatti, Pilkhi Gajpatti', 'Muzaffarpur', 843121, 'COD', 69, 'Success', 5, 'dc62faa4fbb3d7a87c46', '', '', '2021-02-04 10:50:37'),
(25, 10, 'house 420, power house', 'gajipur', 844120, 'COD', 1311, 'pending', 4, '9b72b8fff167c2763ec8', '', '', '2021-02-04 11:06:03'),
(26, 10, 'house 123, mandir 324', 'hajipur', 844101, 'payu', 1311, 'pending', 4, '45e7b87b63ffd7b82475', '', '', '2021-02-04 11:44:41'),
(27, 10, 'Pilkhi Gajpatti, Pilkhi Gajpatti', 'Muzaffarpur', 843121, 'COD', 9980, 'pending', 4, '24d673221734e1fef8ec', '', '', '2021-02-04 01:03:00'),
(28, 10, 'house 420, power house', 'mirzapur', 844120, 'COD', 8483, 'Success', 5, 'c216cc27410e7c294b42', '', '', '2021-02-04 03:38:36'),
(29, 10, 'Pilkhi Gajpatti, Pilkhi Gajpatti', 'Muzaffarpur', 843121, 'COD', 1098, 'pending', 4, 'eea307283833c8ca2296', '', '', '2021-02-06 11:08:07'),
(30, 10, 'house321, home123', 'patna', 800020, 'COD', 798, 'pending', 1, '0a949c4757c7cc14adc3', '', '', '2021-02-06 11:12:42'),
(31, 12, 'Pilkhi Gajpatti, Pilkhi Gajpatti', 'Muzaffarpur', 843121, 'COD', 1098, 'pending', 1, 'd110335b7e2975a40ae5', '', '', '2021-02-06 11:20:46'),
(32, 12, 'house321, home123', 'patna', 800020, 'COD', 69, 'pending', 1, '2db6d4375bab31cfc46e', '', '', '2021-02-06 11:39:18'),
(33, 13, 'house321', 'patna', 800020, 'COD', 69, 'pending', 4, '6fbd19da7da3b1de6040', '', '', '2021-02-14 03:05:55'),
(34, 14, 'house321', 'patna', 800020, 'COD', 499, 'Success', 5, '9abf43cf3fc558065f2b', '', '', '2021-02-14 03:18:50');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`) VALUES
(33, 24, 20, 1, 69),
(34, 25, 20, 19, 69),
(35, 26, 20, 19, 69),
(36, 27, 18, 20, 499),
(37, 28, 18, 17, 499),
(38, 29, 18, 1, 499),
(39, 29, 19, 1, 599),
(40, 30, 18, 1, 499),
(41, 30, 17, 1, 299),
(42, 31, 19, 1, 599),
(43, 31, 18, 1, 499),
(44, 32, 20, 1, 69),
(45, 33, 20, 1, 69),
(46, 34, 18, 1, 499);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Canceled'),
(5, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `best_seller` int(11) NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `sub_categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(17, 8, 10, 'Men\'s Wallet', 399, 299, 20, '660695640_prod17.jpg', 'Mens wallet', 'This is Mens wallet.', 1, 'Mens wallet', 'Mens wallet', 'Mens wallet', 1),
(18, 8, 11, 'Mens bag', 599, 499, 40, '309232377_prod18.jpg', 'Mens Bag', 'this is man\'s bag', 1, 'mens bag', 'mens bag', 'mens bag', 1),
(19, 9, 12, 'women purse', 699, 599, 20, '408105682_prod19.jpg', 'Women purse', 'this is women purse', 1, 'women purse', 'women purse', 'women purse', 1),
(20, 9, 13, 'women Bag', 799, 69, 20, '934882391_prod20.jpg', 'women bag', 'This is women bag', 1, 'women bag', 'women bag', 'women bag', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `slider_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `slider_image` text COLLATE utf8mb4_bin NOT NULL,
  `slider_url` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `slider_name`, `slider_image`, `slider_url`) VALUES
(1, 'slider1', 'slide1.png', 'http://127.0.0.1/phpeCom/product.php?id=19'),
(2, 'slider2', 'slide2.png', 'http://127.0.0.1/phpeCom/product.php?id=20'),
(3, 'slider3', 'slide3.png', 'http://127.0.0.1/phpeCom/product.php?id=20');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `categories_id`, `sub_categories`, `status`) VALUES
(10, 8, 'wallets', 1),
(11, 8, 'Bags', 1),
(12, 9, 'purses', 1),
(13, 9, 'Bags', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(11, 'unstoppable', 'unstoppable', 'theunstoppablejha@gmail.com', '7739659984', '2021-02-04 11:52:07'),
(12, 'narendra', 'narendra', 'narendramodi745@gmail.com', '8789326597', '2021-02-04 05:11:25'),
(14, 'narendra', 'narendra', 'klrahul7979@gmail.com', '7070955434', '2021-02-14 03:18:06');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `added_on`) VALUES
(11, 12, 19, '2021-02-04 05:51:05'),
(12, 12, 18, '2021-02-04 05:51:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
