-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- المزود: localhost
-- أنشئ في: 31 يوليو 2022 الساعة 08:54
-- إصدارة المزود: 5.5.8
--  PHP إصدارة: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- قاعدة البيانات: `food-order`
--

-- --------------------------------------------------------

--
-- بنية الجدول `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- إرجاع أو استيراد بيانات الجدول `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(25, 'ayat', 'aa', '21232f297a57a5a743894a0e4a801fc3'),
(26, 'thana', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(27, 'hala', 'hala', '925cc8d2953eba624b2bfedf91a91613'),
(28, 'asma', 'asma', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- بنية الجدول `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- إرجاع أو استيراد بيانات الجدول `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(8, 'Burger', 'food_category_664.jpg', 'Yes', 'Yes'),
(9, 'Momo', 'food_category_175.jpg', 'Yes', 'Yes'),
(12, 'Pizza', 'food_category_931.jpg', 'Yes', 'Yes'),
(13, 'test', 'food_category_42.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- بنية الجدول `tbl_food`
--

CREATE TABLE IF NOT EXISTS `tbl_food` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- إرجاع أو استيراد بيانات الجدول `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(8, 'Smokey Pizza', ' best smoke pizza in town', '400', 'food_name_694.jpg', 12, 'Yes', 'Yes'),
(9, 'pizaa', '', '333', '', 12, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- بنية الجدول `tbl_order`
--

CREATE TABLE IF NOT EXISTS `tbl_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- إرجاع أو استيراد بيانات الجدول `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, '5', '200', 3, '600', '2021-11-09 12:11:12', 'delivered', 'thana', '22222', 'thanaaashwal3112000@gmail.com', 'BNGTRIJBE'),
(2, '8', '400', 1, '400', '2021-11-09 12:11:00', 'cancled', 'thana', '22222', 'thanaaashwal3112000@gmail.com', ' rb gmwije/lfkWifw'),
(3, '5', '200', 3, '600', '2021-11-09 12:11:56', 'delivered', 'thana', '22', '223wfrebetb@gmial.com', ' vrjebmtr'),
(4, '5', '200', 5, '1000', '2021-11-09 12:11:57', 'delivered', '', '', '', ' bjenhmfmfhthsnadb'),
(5, '8', '400', 3, '1200', '2021-11-09 01:11:55', 'delivered', '', '', '', ''),
(6, 'Best Burger', '200', 1, '200', '2021-11-09 01:11:33', 'delivered', '', '', '', ''),
(7, 'Smokey Pizza', '400', 1, '400', '2021-11-14 01:11:56', 'delivered', 'thana', '22222777', 'marway58484@gmail.com', 'sanaa'),
(8, 'Best Burger', '200', 3, '600', '2021-11-23 05:11:50', 'cancled', 'thana', '22222777', 'thanaaashwal3112000@gmail.com', 'thacvhj,vm');
