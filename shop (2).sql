-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2020 at 10:36 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `unique_identifier` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `activated` int(1) NOT NULL DEFAULT 1,
  `image` varchar(1000) COLLATE utf32_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2020-02-24 10:55:07', '2020-02-24 10:55:07'),
(2, 'Fabric', '2020-02-24 10:55:13', '2020-02-24 10:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 1,
  `published` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `url`, `position`, `published`, `created_at`, `updated_at`) VALUES
(5, 'uploads/banners/6TCQnYYdwb2AFa1lUl3BqUVf3JMMHoCAY643bGHZ.jpeg', '#', 1, 1, '2019-03-12 10:58:41', '2020-04-30 08:32:53'),
(6, 'uploads/banners/8qTegiCdMHDqzAjLxBQbytAijgOP5LBT14eYvIkM.jpeg', '#', 2, 1, '2019-03-12 10:58:52', '2020-04-30 08:35:48'),
(7, 'uploads/banners/ufyIlFuMBYDThqHwqGM57vyxGplnmJNA0RI1Q4qQ.jpeg', '#', 2, 1, '2019-05-26 10:16:38', '2020-04-30 08:36:24'),
(8, 'uploads/banners/banner.jpg', '#', 2, 0, '2019-06-11 10:00:06', '2020-04-30 08:36:44'),
(9, 'uploads/banners/uoSju6W17kze41e5Vu9PpAS8hD70SpOXykbOvPgB.jpeg', '#', 1, 1, '2019-06-11 10:00:15', '2020-04-30 08:34:49'),
(10, 'uploads/banners/Ptpcwmnk5XTwFUOSB9UneRHe3ySIFMe3ANWYZKBh.jpeg', '#', 1, 1, '2019-06-11 10:00:24', '2020-04-30 08:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `top` int(1) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `top`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(3, 'Khaadi', 'uploads/brands/scIHDWNF52hZQIsqo4XvZX3qJzQcxKhqzcHkpavS.jpeg', 0, 'Khaadi-bpzsw', 'khaadi', NULL, '2020-05-08 06:18:08', '2020-05-08 06:18:08'),
(4, 'tascoit', 'uploads/brands/e1HaTAe38UpPkd59Bmcii63nyNmPCVUdb0YC7yPb.png', 0, 'tascoit-FbL8N', 'logo', 'logo', '2020-09-25 20:25:16', '2020-09-25 20:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'home_default_currency', '1', '2018-10-16 06:35:52', '2019-01-28 06:26:53'),
(2, 'system_default_currency', '30', '2018-10-16 06:36:58', '2020-05-08 21:57:36'),
(3, 'currency_format', '1', '2018-10-17 08:01:59', '2018-10-17 08:01:59'),
(4, 'symbol_format', '2', '2018-10-17 08:01:59', '2020-05-08 11:27:58'),
(5, 'no_of_decimals', '3', '2018-10-17 08:01:59', '2020-03-04 05:57:16'),
(6, 'product_activation', '1', '2018-10-28 06:38:37', '2019-02-04 06:11:41'),
(7, 'vendor_system_activation', '1', '2018-10-28 12:44:16', '2019-02-04 06:11:38'),
(8, 'show_vendors', '1', '2018-10-28 12:44:47', '2019-02-04 06:11:13'),
(9, 'paypal_payment', '0', '2018-10-28 12:45:16', '2020-09-29 05:43:20'),
(10, 'stripe_payment', '0', '2018-10-28 12:45:47', '2018-11-14 06:51:51'),
(11, 'cash_payment', '1', '2018-10-28 12:46:05', '2019-01-24 08:40:18'),
(12, 'payumoney_payment', '0', '2018-10-28 12:46:27', '2019-03-05 10:41:36'),
(13, 'best_selling', '1', '2018-12-24 13:13:44', '2019-02-14 10:29:13'),
(14, 'paypal_sandbox', '0', '2019-01-16 17:44:18', '2019-01-16 17:44:18'),
(15, 'sslcommerz_sandbox', '1', '2019-01-16 17:44:18', '2019-03-14 05:07:26'),
(16, 'sslcommerz_payment', '0', '2019-01-24 14:39:07', '2019-01-29 11:13:46'),
(17, 'vendor_commission', '20', '2019-01-31 11:18:04', '2019-04-13 11:49:26'),
(18, 'verification_form', '[{\"type\":\"text\",\"label\":\"Your name\"},{\"type\":\"text\",\"label\":\"Shop name\"},{\"type\":\"text\",\"label\":\"Email\"},{\"type\":\"text\",\"label\":\"License No\"},{\"type\":\"text\",\"label\":\"Full Address\"},{\"type\":\"text\",\"label\":\"Phone Number\"},{\"type\":\"file\",\"label\":\"Tax Papers\"}]', '2019-02-03 16:36:58', '2019-02-16 11:14:42'),
(19, 'google_analytics', '0', '2019-02-06 17:22:35', '2019-02-06 17:22:35'),
(20, 'facebook_login', '0', '2019-02-07 17:51:59', '2019-02-09 00:41:15'),
(21, 'google_login', '0', '2019-02-07 17:52:10', '2019-02-09 00:41:14'),
(22, 'twitter_login', '0', '2019-02-07 17:52:20', '2019-02-08 07:32:56'),
(23, 'payumoney_payment', '1', '2019-03-05 16:38:17', '2019-03-05 16:38:17'),
(24, 'payumoney_sandbox', '1', '2019-03-05 16:38:17', '2019-03-05 10:39:18'),
(36, 'facebook_chat', '0', '2019-04-15 16:45:04', '2019-04-15 16:45:04'),
(37, 'email_verification', '0', '2019-04-30 12:30:07', '2019-04-30 12:30:07'),
(38, 'wallet_system', '0', '2019-05-19 13:05:44', '2019-05-19 07:11:57'),
(39, 'coupon_system', '0', '2019-06-11 14:46:18', '2019-06-11 14:46:18'),
(40, 'current_version', '2.4', '2019-06-11 14:46:18', '2019-06-11 14:46:18'),
(41, 'instamojo_payment', '0', '2019-07-06 14:58:03', '2019-07-06 14:58:03'),
(42, 'instamojo_sandbox', '1', '2019-07-06 14:58:43', '2019-07-06 14:58:43'),
(43, 'razorpay', '0', '2019-07-06 14:58:43', '2019-07-06 14:58:43'),
(44, 'paystack', '0', '2019-07-21 18:00:38', '2019-07-21 18:00:38'),
(45, 'pickup_point', '0', '2019-10-17 16:50:39', '2019-10-17 16:50:39'),
(46, 'maintenance_mode', '0', '2019-10-17 16:51:04', '2019-10-17 16:51:04'),
(47, 'voguepay', '0', '2019-10-17 16:51:24', '2019-10-17 16:51:24'),
(48, 'voguepay_sandbox', '0', '2019-10-17 16:51:38', '2019-10-17 16:51:38'),
(50, 'category_wise_commission', '0', '2020-01-21 12:22:47', '2020-01-21 12:22:47'),
(51, 'conversation_system', '1', '2020-01-21 12:23:21', '2020-01-21 12:23:21'),
(52, 'guest_checkout_active', '1', '2020-01-22 12:36:38', '2020-01-22 12:36:38'),
(53, 'facebook_pixel', '0', '2020-01-22 16:43:58', '2020-01-22 16:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `commision_rate` double(8,2) NOT NULL DEFAULT 0.00,
  `banner` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int(1) NOT NULL DEFAULT 0,
  `top` int(1) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `commision_rate`, `banner`, `icon`, `featured`, `top`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Pret', 0.00, 'uploads/categories/banner/1dnrIU6avV28MLr8LiYMJSX7Fspa3znEMnzwUO88.jpeg', 'uploads/categories/icon/KjJP9wuEZNL184XVUk3S7EiZ8NnBN99kiU4wdvp3.png', 1, 1, 'pret', 'Pret', NULL, '2020-05-07 23:15:37', '2020-05-08 06:15:37'),
(2, 'Unstiitched', 0.00, 'uploads/categories/banner/muKFqnqdHjOObYciS242JT0PcFT0TqYtWz6kxKMe.jpeg', 'uploads/categories/icon/h9XhWwI401u6sRoLITEk9SUMRAlWN8moGrpPfS6I.png', 1, 0, 'unstiitched', 'Unstiitched', NULL, '2020-05-07 23:14:55', '2020-05-08 06:14:55'),
(3, 'Winter', 0.00, 'uploads/categories/banner/JIwSmtYHFfXzl3skwKaed7pPSSQydL4Tljr1z6P7.jpeg', 'uploads/categories/icon/QOuu0Tu2bmviYC2ungbZjgFs4k0Ir1vVQ2viKxbR.png', 1, 0, 'Winter-LLkdL', 'winter', NULL, '2020-05-07 23:13:37', '2020-05-08 06:13:37'),
(4, 'Masks', 0.00, 'uploads/categories/banner/PY7xlqtGdxXxsElIL5vmweoyn4ge9cAOv79o4EHS.jpeg', NULL, 1, 0, 'Masks-3hm8m', 'maska', NULL, '2020-05-14 19:53:14', '2020-05-15 02:53:14');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'IndianRed', '#CD5C5C', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(2, 'LightCoral', '#F08080', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(3, 'Salmon', '#FA8072', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(4, 'DarkSalmon', '#E9967A', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(5, 'LightSalmon', '#FFA07A', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(6, 'Crimson', '#DC143C', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(7, 'Red', '#FF0000', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(8, 'FireBrick', '#B22222', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(9, 'DarkRed', '#8B0000', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(10, 'Pink', '#FFC0CB', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(11, 'LightPink', '#FFB6C1', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(12, 'HotPink', '#FF69B4', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(13, 'DeepPink', '#FF1493', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(14, 'MediumVioletRed', '#C71585', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(15, 'PaleVioletRed', '#DB7093', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(16, 'LightSalmon', '#FFA07A', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(17, 'Coral', '#FF7F50', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(18, 'Tomato', '#FF6347', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(19, 'OrangeRed', '#FF4500', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(20, 'DarkOrange', '#FF8C00', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(21, 'Orange', '#FFA500', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(22, 'Gold', '#FFD700', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(23, 'Yellow', '#FFFF00', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(24, 'LightYellow', '#FFFFE0', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(25, 'LemonChiffon', '#FFFACD', '2018-11-05 07:12:26', '2018-11-05 07:12:26'),
(26, 'LightGoldenrodYellow', '#FAFAD2', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(27, 'PapayaWhip', '#FFEFD5', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(28, 'Moccasin', '#FFE4B5', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(29, 'PeachPuff', '#FFDAB9', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(30, 'PaleGoldenrod', '#EEE8AA', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(31, 'Khaki', '#F0E68C', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(32, 'DarkKhaki', '#BDB76B', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(33, 'Lavender', '#E6E6FA', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(34, 'Thistle', '#D8BFD8', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(35, 'Plum', '#DDA0DD', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(36, 'Violet', '#EE82EE', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(37, 'Orchid', '#DA70D6', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(38, 'Fuchsia', '#FF00FF', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(39, 'Magenta', '#FF00FF', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(40, 'MediumOrchid', '#BA55D3', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(41, 'MediumPurple', '#9370DB', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(42, 'Amethyst', '#9966CC', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(43, 'BlueViolet', '#8A2BE2', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(44, 'DarkViolet', '#9400D3', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(45, 'DarkOrchid', '#9932CC', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(46, 'DarkMagenta', '#8B008B', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(47, 'Purple', '#800080', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(48, 'Indigo', '#4B0082', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(49, 'SlateBlue', '#6A5ACD', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(50, 'DarkSlateBlue', '#483D8B', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(51, 'MediumSlateBlue', '#7B68EE', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(52, 'GreenYellow', '#ADFF2F', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(53, 'Chartreuse', '#7FFF00', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(54, 'LawnGreen', '#7CFC00', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(55, 'Lime', '#00FF00', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(56, 'LimeGreen', '#32CD32', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(57, 'PaleGreen', '#98FB98', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(58, 'LightGreen', '#90EE90', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(59, 'MediumSpringGreen', '#00FA9A', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(60, 'SpringGreen', '#00FF7F', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(61, 'MediumSeaGreen', '#3CB371', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(62, 'SeaGreen', '#2E8B57', '2018-11-05 07:12:27', '2018-11-05 07:12:27'),
(63, 'ForestGreen', '#228B22', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(64, 'Green', '#008000', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(65, 'DarkGreen', '#006400', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(66, 'YellowGreen', '#9ACD32', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(67, 'OliveDrab', '#6B8E23', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(68, 'Olive', '#808000', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(69, 'DarkOliveGreen', '#556B2F', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(70, 'MediumAquamarine', '#66CDAA', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(71, 'DarkSeaGreen', '#8FBC8F', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(72, 'LightSeaGreen', '#20B2AA', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(73, 'DarkCyan', '#008B8B', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(74, 'Teal', '#008080', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(75, 'Aqua', '#00FFFF', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(76, 'Cyan', '#00FFFF', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(77, 'LightCyan', '#E0FFFF', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(78, 'PaleTurquoise', '#AFEEEE', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(79, 'Aquamarine', '#7FFFD4', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(80, 'Turquoise', '#40E0D0', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(81, 'MediumTurquoise', '#48D1CC', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(82, 'DarkTurquoise', '#00CED1', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(83, 'CadetBlue', '#5F9EA0', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(84, 'SteelBlue', '#4682B4', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(85, 'LightSteelBlue', '#B0C4DE', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(86, 'PowderBlue', '#B0E0E6', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(87, 'LightBlue', '#ADD8E6', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(88, 'SkyBlue', '#87CEEB', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(89, 'LightSkyBlue', '#87CEFA', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(90, 'DeepSkyBlue', '#00BFFF', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(91, 'DodgerBlue', '#1E90FF', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(92, 'CornflowerBlue', '#6495ED', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(93, 'MediumSlateBlue', '#7B68EE', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(94, 'RoyalBlue', '#4169E1', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(95, 'Blue', '#0000FF', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(96, 'MediumBlue', '#0000CD', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(97, 'DarkBlue', '#00008B', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(98, 'Navy', '#000080', '2018-11-05 07:12:28', '2018-11-05 07:12:28'),
(99, 'MidnightBlue', '#191970', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(100, 'Cornsilk', '#FFF8DC', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(101, 'BlanchedAlmond', '#FFEBCD', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(102, 'Bisque', '#FFE4C4', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(103, 'NavajoWhite', '#FFDEAD', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(104, 'Wheat', '#F5DEB3', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(105, 'BurlyWood', '#DEB887', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(106, 'Tan', '#D2B48C', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(107, 'RosyBrown', '#BC8F8F', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(108, 'SandyBrown', '#F4A460', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(109, 'Goldenrod', '#DAA520', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(110, 'DarkGoldenrod', '#B8860B', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(111, 'Peru', '#CD853F', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(112, 'Chocolate', '#D2691E', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(113, 'SaddleBrown', '#8B4513', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(114, 'Sienna', '#A0522D', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(115, 'Brown', '#A52A2A', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(116, 'Maroon', '#800000', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(117, 'White', '#FFFFFF', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(118, 'Snow', '#FFFAFA', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(119, 'Honeydew', '#F0FFF0', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(120, 'MintCream', '#F5FFFA', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(121, 'Azure', '#F0FFFF', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(122, 'AliceBlue', '#F0F8FF', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(123, 'GhostWhite', '#F8F8FF', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(124, 'WhiteSmoke', '#F5F5F5', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(125, 'Seashell', '#FFF5EE', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(126, 'Beige', '#F5F5DC', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(127, 'OldLace', '#FDF5E6', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(128, 'FloralWhite', '#FFFAF0', '2018-11-05 07:12:29', '2018-11-05 07:12:29'),
(129, 'Ivory', '#FFFFF0', '2018-11-05 07:12:30', '2018-11-05 07:12:30'),
(130, 'AntiqueWhite', '#FAEBD7', '2018-11-05 07:12:30', '2018-11-05 07:12:30'),
(131, 'Linen', '#FAF0E6', '2018-11-05 07:12:30', '2018-11-05 07:12:30'),
(132, 'LavenderBlush', '#FFF0F5', '2018-11-05 07:12:30', '2018-11-05 07:12:30'),
(133, 'MistyRose', '#FFE4E1', '2018-11-05 07:12:30', '2018-11-05 07:12:30'),
(134, 'Gainsboro', '#DCDCDC', '2018-11-05 07:12:30', '2018-11-05 07:12:30'),
(135, 'LightGrey', '#D3D3D3', '2018-11-05 07:12:30', '2018-11-05 07:12:30'),
(136, 'Silver', '#C0C0C0', '2018-11-05 07:12:30', '2018-11-05 07:12:30'),
(137, 'DarkGray', '#A9A9A9', '2018-11-05 07:12:30', '2018-11-05 07:12:30'),
(138, 'Gray', '#808080', '2018-11-05 07:12:30', '2018-11-05 07:12:30'),
(139, 'DimGray', '#696969', '2018-11-05 07:12:30', '2018-11-05 07:12:30'),
(140, 'LightSlateGray', '#778899', '2018-11-05 07:12:30', '2018-11-05 07:12:30'),
(141, 'SlateGray', '#708090', '2018-11-05 07:12:30', '2018-11-05 07:12:30'),
(142, 'DarkSlateGray', '#2F4F4F', '2018-11-05 07:12:30', '2018-11-05 07:12:30'),
(143, 'Black', '#000000', '2018-11-05 07:12:30', '2018-11-05 07:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `title` varchar(1000) COLLATE utf32_unicode_ci DEFAULT NULL,
  `sender_viewed` int(1) NOT NULL DEFAULT 1,
  `receiver_viewed` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'SS', 'South Sudan'),
(203, 'ES', 'Spain'),
(204, 'LK', 'Sri Lanka'),
(205, 'SH', 'St. Helena'),
(206, 'PM', 'St. Pierre and Miquelon'),
(207, 'SD', 'Sudan'),
(208, 'SR', 'Suriname'),
(209, 'SJ', 'Svalbard and Jan Mayen Islands'),
(210, 'SZ', 'Swaziland'),
(211, 'SE', 'Sweden'),
(212, 'CH', 'Switzerland'),
(213, 'SY', 'Syrian Arab Republic'),
(214, 'TW', 'Taiwan'),
(215, 'TJ', 'Tajikistan'),
(216, 'TZ', 'Tanzania, United Republic of'),
(217, 'TH', 'Thailand'),
(218, 'TG', 'Togo'),
(219, 'TK', 'Tokelau'),
(220, 'TO', 'Tonga'),
(221, 'TT', 'Trinidad and Tobago'),
(222, 'TN', 'Tunisia'),
(223, 'TR', 'Turkey'),
(224, 'TM', 'Turkmenistan'),
(225, 'TC', 'Turks and Caicos Islands'),
(226, 'TV', 'Tuvalu'),
(227, 'UG', 'Uganda'),
(228, 'UA', 'Ukraine'),
(229, 'AE', 'United Arab Emirates'),
(230, 'GB', 'United Kingdom'),
(231, 'US', 'United States'),
(232, 'UM', 'United States minor outlying islands'),
(233, 'UY', 'Uruguay'),
(234, 'UZ', 'Uzbekistan'),
(235, 'VU', 'Vanuatu'),
(236, 'VA', 'Vatican City State'),
(237, 'VE', 'Venezuela'),
(238, 'VN', 'Vietnam'),
(239, 'VG', 'Virgin Islands (British)'),
(240, 'VI', 'Virgin Islands (U.S.)'),
(241, 'WF', 'Wallis and Futuna Islands'),
(242, 'EH', 'Western Sahara'),
(243, 'YE', 'Yemen'),
(244, 'ZR', 'Zaire'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe'),
(247, 'AF', 'Afghanistan'),
(248, 'AL', 'Albania'),
(249, 'DZ', 'Algeria'),
(250, 'DS', 'American Samoa'),
(251, 'AD', 'Andorra'),
(252, 'AO', 'Angola'),
(253, 'AI', 'Anguilla'),
(254, 'AQ', 'Antarctica'),
(255, 'AG', 'Antigua and Barbuda'),
(256, 'AR', 'Argentina'),
(257, 'AM', 'Armenia'),
(258, 'AW', 'Aruba'),
(259, 'AU', 'Australia'),
(260, 'AT', 'Austria'),
(261, 'AZ', 'Azerbaijan'),
(262, 'BS', 'Bahamas'),
(263, 'BH', 'Bahrain'),
(264, 'BD', 'Bangladesh'),
(265, 'BB', 'Barbados'),
(266, 'BY', 'Belarus'),
(267, 'BE', 'Belgium'),
(268, 'BZ', 'Belize'),
(269, 'BJ', 'Benin'),
(270, 'BM', 'Bermuda'),
(271, 'BT', 'Bhutan'),
(272, 'BO', 'Bolivia'),
(273, 'BA', 'Bosnia and Herzegovina'),
(274, 'BW', 'Botswana'),
(275, 'BV', 'Bouvet Island'),
(276, 'BR', 'Brazil'),
(277, 'IO', 'British Indian Ocean Territory'),
(278, 'BN', 'Brunei Darussalam'),
(279, 'BG', 'Bulgaria'),
(280, 'BF', 'Burkina Faso'),
(281, 'BI', 'Burundi'),
(282, 'KH', 'Cambodia'),
(283, 'CM', 'Cameroon'),
(284, 'CA', 'Canada'),
(285, 'CV', 'Cape Verde'),
(286, 'KY', 'Cayman Islands'),
(287, 'CF', 'Central African Republic'),
(288, 'TD', 'Chad'),
(289, 'CL', 'Chile'),
(290, 'CN', 'China'),
(291, 'CX', 'Christmas Island'),
(292, 'CC', 'Cocos (Keeling) Islands'),
(293, 'CO', 'Colombia'),
(294, 'KM', 'Comoros'),
(295, 'CG', 'Congo'),
(296, 'CK', 'Cook Islands');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL,
  `discount_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` int(15) NOT NULL,
  `end_date` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_usages`
--

CREATE TABLE `coupon_usages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exchange_rate` double(10,5) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `exchange_rate`, `status`, `code`, `created_at`, `updated_at`) VALUES
(1, 'U.S. Dollar', '$', 1.00000, 1, 'USD', '2018-10-09 16:35:08', '2020-05-08 22:00:28'),
(2, 'Australian Dollar', '$', 1.28000, 1, 'AUD', '2018-10-09 16:35:08', '2019-02-04 10:51:55'),
(5, 'Brazilian Real', 'R$', 3.25000, 1, 'BRL', '2018-10-09 16:35:08', '2018-10-17 10:51:00'),
(6, 'Canadian Dollar', '$', 1.27000, 1, 'CAD', '2018-10-09 16:35:08', '2018-10-09 16:35:08'),
(7, 'Czech Koruna', 'Kč', 20.65000, 1, 'CZK', '2018-10-09 16:35:08', '2018-10-09 16:35:08'),
(8, 'Danish Krone', 'kr', 6.05000, 1, 'DKK', '2018-10-09 16:35:08', '2018-10-09 16:35:08'),
(9, 'Euro', '€', 0.85000, 1, 'EUR', '2018-10-09 16:35:08', '2018-10-09 16:35:08'),
(10, 'Hong Kong Dollar', '$', 7.83000, 1, 'HKD', '2018-10-09 16:35:08', '2018-10-09 16:35:08'),
(11, 'Hungarian Forint', 'Ft', 255.24000, 1, 'HUF', '2018-10-09 16:35:08', '2018-10-09 16:35:08'),
(12, 'Israeli New Sheqel', '₪', 3.48000, 1, 'ILS', '2018-10-09 16:35:08', '2018-10-09 16:35:08'),
(13, 'Japanese Yen', '¥', 107.12000, 1, 'JPY', '2018-10-09 16:35:08', '2018-10-09 16:35:08'),
(14, 'Malaysian Ringgit', 'RM', 3.91000, 1, 'MYR', '2018-10-09 16:35:08', '2018-10-09 16:35:08'),
(15, 'Mexican Peso', '$', 18.72000, 1, 'MXN', '2018-10-09 16:35:08', '2018-10-09 16:35:08'),
(16, 'Norwegian Krone', 'kr', 7.83000, 1, 'NOK', '2018-10-09 16:35:08', '2018-10-09 16:35:08'),
(17, 'New Zealand Dollar', '$', 1.38000, 1, 'NZD', '2018-10-09 16:35:08', '2018-10-09 16:35:08'),
(18, 'Philippine Peso', '₱', 52.26000, 1, 'PHP', '2018-10-09 16:35:08', '2018-10-09 16:35:08'),
(19, 'Polish Zloty', 'zł', 3.39000, 1, 'PLN', '2018-10-09 16:35:08', '2018-10-09 16:35:08'),
(20, 'Pound Sterling', '£', 0.72000, 1, 'GBP', '2018-10-09 16:35:08', '2018-10-09 16:35:08'),
(21, 'Russian Ruble', 'руб', 55.93000, 1, 'RUB', '2018-10-09 16:35:08', '2018-10-09 16:35:08'),
(22, 'Singapore Dollar', '$', 1.32000, 1, 'SGD', '2018-10-09 16:35:08', '2018-10-09 16:35:08'),
(23, 'Swedish Krona', 'kr', 8.19000, 1, 'SEK', '2018-10-09 16:35:08', '2018-10-09 16:35:08'),
(24, 'Swiss Franc', 'CHF', 0.94000, 1, 'CHF', '2018-10-09 16:35:08', '2018-10-09 16:35:08'),
(26, 'Thai Baht', '฿', 31.39000, 1, 'THB', '2018-10-09 16:35:08', '2018-10-09 16:35:08'),
(27, 'Taka', '৳', 84.00000, 1, 'BDT', '2018-10-09 16:35:08', '2018-12-02 10:16:13'),
(28, 'Indian Rupee', 'Rs', 68.45000, 0, 'Rupee', '2019-07-07 15:33:46', '2020-05-08 11:27:10'),
(29, 'Pakistan Rupee', 'Rs', 1.00000, 0, '123456789', '2020-05-08 11:26:19', '2020-05-08 11:44:47'),
(30, 'Pakistan Rupee', 'Rs', 160.50000, 1, 'Rupes', '2020-05-08 11:26:41', '2020-05-08 21:59:54');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(22, 32, '2020-09-29 07:25:31', '2020-09-29 07:25:31');

-- --------------------------------------------------------

--
-- Table structure for table `flash_deals`
--

CREATE TABLE `flash_deals` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` int(20) DEFAULT NULL,
  `end_date` int(20) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `featured` int(1) NOT NULL DEFAULT 0,
  `background_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_deals`
--

INSERT INTO `flash_deals` (`id`, `title`, `start_date`, `end_date`, `status`, `featured`, `background_color`, `text_color`, `banner`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Mask', 1589500800, 1590796800, 1, 0, '#01b12d', 'white', 'uploads/offers/banner/GtAzoflGbFn0VpNYROjlwHYTQrC8TGO59XeVjozK.jpeg', 'mask-khshq', '2020-05-15 23:13:45', '2020-09-28 12:56:39'),
(2, 'msk', 1601424000, 1601424000, 0, 0, '#2322', 'dark', 'uploads/offers/banner/V6nNMKpBJlwgaORVRdzR2LCTisUeNZcX7EDETG6G.jpeg', 'msk-pfifu', '2020-09-20 08:56:43', '2020-09-29 13:24:29'),
(3, 'test', 0, 0, 1, 1, '#FFFFFF', 'white', 'uploads/offers/banner/ThQ1QQIUyQuCr2HvBhTwxTsWVk4QHcR5kGAdHfod.jpeg', 'test-trnk1', '2020-09-25 20:17:41', '2020-09-28 12:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `flash_deal_products`
--

CREATE TABLE `flash_deal_products` (
  `id` int(11) NOT NULL,
  `flash_deal_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `discount` double(8,2) DEFAULT 0.00,
  `discount_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_deal_products`
--

INSERT INTO `flash_deal_products` (`id`, `flash_deal_id`, `product_id`, `discount`, `discount_type`, `created_at`, `updated_at`) VALUES
(4, 1, 6, 45.00, 'percent', '2020-05-15 23:24:54', '2020-05-15 23:24:54'),
(5, 2, 6, 100.00, 'percent', '2020-09-20 08:56:43', '2020-09-20 08:56:43'),
(6, 3, 3, 0.00, 'amount', '2020-09-25 20:17:41', '2020-09-25 20:17:41');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `frontend_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login_background` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login_sidebar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `frontend_color`, `logo`, `admin_logo`, `admin_login_background`, `admin_login_sidebar`, `favicon`, `site_name`, `address`, `description`, `phone`, `email`, `facebook`, `instagram`, `twitter`, `youtube`, `google_plus`, `created_at`, `updated_at`) VALUES
(1, 'default', 'uploads/logo/bt9vniiGz2m0nH0kjcq7IaUHU4dwbxXJmXPseQTd.png', 'uploads/admin_logo/wCgHrz0Q5QoL1yu4vdrNnQIr4uGuNL48CXfcxOuS.png', NULL, NULL, 'uploads/favicon/bUqCQ2VLPmw1IwevkhErUSSdVm88dMoiEClQyMSs.png', 'Tasco Store', 'Bahria Town Lahore', 'TASCO IT Solutions', '+92 315 321 8804', 'info@tascoit.com', 'https://www.facebook.com', 'https://www.instagram.com', 'https://www.twitter.com', 'https://www.youtube.com', 'https://www.googleplus.com', '2020-05-08 04:17:34', '2020-05-08 11:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subsubcategories` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `category_id`, `subsubcategories`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '[\"12\"]', 1, '2019-03-12 11:38:23', '2020-05-09 02:30:11'),
(2, 2, '[\"10\"]', 1, '2019-03-12 11:44:54', '2020-04-30 08:31:23');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rtl` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `rtl`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 0, '2019-01-20 17:13:20', '2019-01-20 17:13:20'),
(3, 'Bangla', 'bd', 0, '2019-02-17 11:35:37', '2019-02-18 11:49:51'),
(4, 'Arabic', 'sa', 0, '2019-04-28 23:34:12', '2020-06-15 23:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf32_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_09_25_064729_create_admins_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `guest_id` int(11) DEFAULT NULL,
  `shipping_address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'unpaid',
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `grand_total` double(8,2) DEFAULT NULL,
  `coupon_discount` double(8,2) NOT NULL DEFAULT 0.00,
  `code` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` int(20) NOT NULL,
  `viewed` int(1) NOT NULL DEFAULT 0,
  `delivery_viewed` int(1) NOT NULL DEFAULT 0,
  `payment_status_viewed` int(1) DEFAULT 0,
  `commission_calculated` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `guest_id`, `shipping_address`, `payment_type`, `payment_status`, `payment_details`, `grand_total`, `coupon_discount`, `code`, `date`, `viewed`, `delivery_viewed`, `payment_status_viewed`, `commission_calculated`, `created_at`, `updated_at`) VALUES
(1, 32, NULL, '{\"name\":\"Ali Hamza\",\"email\":\"hamza01safdar@gmail.com\",\"address\":\"asadsadsadzDsadfsadsaasdadasdadf\",\"country\":\"Pakistan\",\"city\":\"Lahore\",\"postal_code\":\"54000\",\"phone\":\"12345678887\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 69.60, 0.00, '20200507-23383857', 1588894718, 1, 1, 1, 0, '2020-05-08 11:38:38', '2020-05-09 02:34:32'),
(2, 32, NULL, '{\"name\":\"Ali Hamza\",\"email\":\"hamza01safdar@gmail.com\",\"address\":\"asadsadsadzDsadfsadsaasdadasdadf\",\"country\":\"Pakistan\",\"city\":\"Lahore\",\"postal_code\":\"54000\",\"phone\":\"12345678887\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 4499.00, 0.00, '20200508-14411929', 1588948879, 1, 1, 1, 0, '2020-05-09 02:41:19', '2020-05-09 02:44:35'),
(3, NULL, 944070, '{\"name\":\"ali hamza\",\"email\":\"hamza@gmail.com\",\"address\":\"Bahria Town Lahore\",\"country\":\"Pakistan\",\"city\":\"lahore\",\"postal_code\":\"54000\",\"phone\":\"03034690002\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 'paid', NULL, 4499.00, 0.00, '20200517-09274260', 1589707662, 1, 0, 0, 0, '2020-05-17 21:27:42', '2020-05-17 21:30:11'),
(4, NULL, 346382, '{\"name\":\"TeQT TQSSD\",\"email\":\"huahieo@gmaz.cip\",\"address\":\"eoikpok\",\"country\":\"Afghanistan\",\"city\":\"doope\",\"postal_code\":\"56535\",\"phone\":\"88868686868\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 'unpaid', NULL, 13497.00, 0.00, '20200630-07304684', 1593502246, 1, 0, 0, 0, '2020-06-30 19:30:46', '2020-07-03 19:07:34'),
(5, NULL, 192798, '{\"name\":\"df\",\"email\":\"ahmad@gmial.cm\",\"address\":\"34\",\"country\":\"Albania\",\"city\":\"km\",\"postal_code\":\"878\",\"phone\":\"8\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 'unpaid', NULL, 26994.00, 0.00, '20200919-11164015', 1600514200, 1, 0, 0, 0, '2020-09-19 23:16:40', '2020-09-28 13:01:58'),
(6, 32, NULL, '{\"name\":\"nabeel\",\"email\":\"customer@gmail.com\",\"address\":\"model town\",\"country\":\"Pakistan\",\"city\":\"lahore\",\"postal_code\":\"00000\",\"phone\":\"03204751593\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 4499.00, 0.00, '20200928-13363020', 1601300190, 1, 0, 0, 0, '2020-09-28 13:36:30', '2020-09-28 13:38:06'),
(7, NULL, 867632, '{\"name\":\"ChildCareCenter\",\"email\":\"riverglenchildcarecenterllc@gmail.com\",\"address\":\"5890 N Gary Ln, Boise, ID 83714\",\"country\":\"Aruba\",\"city\":\"Washington\",\"postal_code\":\"00000\",\"phone\":\"03204751593\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 'paid', NULL, -28.00, 0.00, '20200929-12362764', 1601382987, 1, 0, 0, 0, '2020-09-29 12:36:27', '2020-09-30 06:43:00'),
(8, NULL, 119032, '{\"name\":\"ChildCareCenter\",\"email\":\"riverglenchildcarecenterllc@gmail.com\",\"address\":\"5890 N Gary Ln, Boise, ID 83714\",\"country\":\"Pakistan\",\"city\":\"Washington\",\"postal_code\":\"00000\",\"phone\":\"03204751593\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 'paid', NULL, 46.00, 0.00, '20200929-12432814', 1601383408, 1, 0, 0, 0, '2020-09-29 12:43:28', '2020-09-30 06:42:39');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `variation` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `tax` double(8,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` double(8,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) DEFAULT NULL,
  `payment_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unpaid',
  `delivery_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'pending',
  `shipping_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_point_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `seller_id`, `product_id`, `variation`, `price`, `tax`, `shipping_cost`, `quantity`, `payment_status`, `delivery_status`, `shipping_type`, `pickup_point_id`, `created_at`, `updated_at`) VALUES
(1, 1, 14, 1, '36', 39.60, 30.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, '2020-05-08 11:38:38', '2020-05-08 11:48:56'),
(2, 2, 14, 5, 'Large', 4499.00, 0.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, '2020-05-09 02:41:19', '2020-05-09 02:44:21'),
(3, 3, 14, 5, 'Large', 4499.00, 0.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, '2020-05-17 21:27:42', '2020-05-17 21:30:11'),
(4, 4, 14, 4, 'Amethyst-36', 13497.00, 0.00, 0.00, 3, 'unpaid', 'pending', 'home_delivery', NULL, '2020-06-30 19:30:46', '2020-06-30 19:30:46'),
(5, 5, 14, 5, 'Medium', 26994.00, 0.00, 0.00, 6, 'unpaid', 'pending', 'home_delivery', NULL, '2020-09-19 23:16:40', '2020-09-19 23:16:40'),
(6, 6, 14, 4, 'Amethyst-36', 4499.00, 0.00, 0.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, '2020-09-28 13:36:30', '2020-09-28 13:36:30'),
(7, 7, 14, 7, 'medium', -78.00, 50.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, '2020-09-29 12:36:27', '2020-09-30 06:43:19'),
(8, 8, 14, 8, '', 46.00, 0.00, 0.00, 2, 'paid', 'delivered', 'home_delivery', NULL, '2020-09-29 12:43:28', '2020-09-30 06:43:11');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `seller_id`, `amount`, `payment_details`, `payment_method`, `created_at`, `updated_at`) VALUES
(1, 14, 78.40, '{\"tran_id\":\"c4ca4238a0\",\"val_id\":\"2009281845190U5ObLLUk3Hs367\",\"amount\":\"78.40\",\"card_type\":\"DBBLMOBILEB-Dbbl Mobile Banking\",\"store_amount\":\"76.44\",\"card_no\":null,\"bank_tran_id\":\"20092818451912BiEvuOk1YL2ai\",\"status\":\"VALID\",\"tran_date\":\"2020-09-28 18:45:00\",\"currency\":\"BDT\",\"card_issuer\":\"DBBL Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"activ5c3c5dac9254d\",\"verify_sign\":\"555ab1c3f0ec3ae52d2e559eb9443344\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_type,currency,currency_amount,currency_rate,currency_type,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"4195d287470015dde4446ebf2b1a79308f87af8f6f67feeec5991c3a260fb5f1\",\"currency_type\":\"BDT\",\"currency_amount\":\"78.40\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":null,\"value_b\":null,\"value_c\":null,\"value_d\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 'sslcommerz', '2020-09-28 12:43:49', '2020-09-28 12:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `pickup_points`
--

CREATE TABLE `pickup_points` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(15) NOT NULL,
  `pick_up_status` int(1) DEFAULT NULL,
  `cash_on_pickup_status` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` int(11) NOT NULL,
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'support_policy', NULL, '2019-10-29 17:54:45', '2019-01-22 10:13:15'),
(2, 'return_policy', NULL, '2019-10-29 17:54:47', '2019-01-24 10:40:11'),
(4, 'seller_policy', NULL, '2019-10-29 17:54:49', '2019-02-04 22:50:15'),
(5, 'terms', NULL, '2019-10-29 17:54:51', '2019-10-28 23:00:00'),
(6, 'privacy_policy', NULL, '2019-10-29 17:54:54', '2019-10-28 23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `added_by` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `photos` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flash_deal_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_provider` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` double(8,2) NOT NULL,
  `purchase_price` double(8,2) NOT NULL,
  `variant_product` int(1) NOT NULL DEFAULT 0,
  `attributes` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `choice_options` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `colors` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `variations` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `todays_deal` int(11) NOT NULL DEFAULT 0,
  `published` int(11) NOT NULL DEFAULT 1,
  `featured` int(11) NOT NULL DEFAULT 0,
  `current_stock` int(10) NOT NULL DEFAULT 0,
  `unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `discount_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax` double(8,2) DEFAULT NULL,
  `tax_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'flat_rate',
  `shipping_cost` double(8,2) DEFAULT 0.00,
  `num_of_sale` int(11) NOT NULL DEFAULT 0,
  `meta_title` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `rating` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `brand_id`, `photos`, `thumbnail_img`, `featured_img`, `flash_deal_img`, `video_provider`, `video_link`, `tags`, `description`, `unit_price`, `purchase_price`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `featured`, `current_stock`, `unit`, `discount`, `discount_type`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `rating`, `created_at`, `updated_at`) VALUES
(1, 'EMBROIDERED SILK SHIRT', 'admin', 12, 1, 3, 12, 3, '[\"uploads\\/products\\/photos\\/0I3FUQ8SxgaATDk6oAyRX5uAaRfuGm8ifkvmNzTW.jpeg\",\"uploads\\/products\\/photos\\/NLIFM6mS8GeFpsOfdnZWyNd6PTH4AvPWzRw7n1nV.jpeg\",\"uploads\\/products\\/photos\\/DnnQy6lMaAiAl4az10JW8XhRODVTLHfytsT0QfN1.jpeg\"]', 'uploads/products/thumbnail/D1rFbEFtS5As6Z7Z8ukwdykkeossCb6fllnNnzPU.jpeg', 'uploads/products/featured/K0HxkslujAHq1ykGx5ZGaPcbj9k63HUPch5ZfU3N.jpeg', 'uploads/products/flash_deal/vrX0YJ2ZlfZ7B0f9rLIFlCUZ3JF0gfaDRJv12I3H.jpeg', 'youtube', 'https://cdn.shopify.com/s/files/1/2635/3244/files/p2685-fsz-bge.mp4?v=2051967475953151903', 'silk shirt', '<strong style=\"box-sizing: border-box; margin: 0px; font-weight: bold; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Details</strong><br style=\"box-sizing: border-box; margin: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><ul style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; list-style: inside disc; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; margin: 0px 0px 0px 21px; text-indent: -18px; list-style-type: none;\">Cape style shirt with ban neck</li><li style=\"box-sizing: border-box; margin: 0px 0px 0px 21px; text-indent: -18px; list-style-type: none;\">Placket embellished with beads and metallic buttons</li><li style=\"box-sizing: border-box; margin: 0px 0px 0px 21px; text-indent: -18px; list-style-type: none;\">Embroidery on sleeves</li><li style=\"box-sizing: border-box; margin: 0px 0px 0px 21px; text-indent: -18px; list-style-type: none;\">Fabric: Silk</li><li style=\"box-sizing: border-box; margin: 0px 0px 0px 21px; text-indent: -18px; list-style-type: none;\">Model Height: 5\' 4\'\'</li></ul><br>', 3210.00, 2000.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"36\"]}]', '[]', NULL, 0, 1, 1, 20, '30', 0.00, 'percent', 0.00, 'percent', 'free', 0.00, 1, 'shirt', NULL, 'uploads/products/meta/DuSCjsLAUu3IsZs9hN8DLWp6jktacjRTPnmnn5lQ.jpeg', 'uploads/products/pdf/Qhs9zzlIdA4pAvhaKRIsgBn4okI0cOdFQAeSQpa9.pdf', 'EMBROIDERED-SILK-SHIRT-uhMDi', 5.00, '2020-05-08 06:33:40', '2020-06-15 23:34:14'),
(2, 'EMBROIDERED ARABIC LAWN SHIRT', 'admin', 12, 1, 3, 12, 3, '[\"uploads\\/products\\/photos\\/y9eGgJy4KXK8cx5p64mvCRltF5ZpZIwpzwTz7IZY.png\",\"uploads\\/products\\/photos\\/b5mEsU3GzNNsHN2fMzZeIthwAd7xAI3wLRMrgIe0.png\",\"uploads\\/products\\/photos\\/5kejNP82C2AURLnj2q2FMxh0YVxxoIUhXQX6XMEA.png\",\"uploads\\/products\\/photos\\/JhY6UxvlEHvryQoEZ4BRoq6RxMtK8Dq16sONbhBS.png\",\"uploads\\/products\\/photos\\/c8AlbHslM5ZoInUUHEX7vB1Zq1k1cMJBSXlx9Om3.png\"]', 'uploads/products/thumbnail/br7ANFp5D7xJCbT8NsJEq37LFJWeQHocI5RMFDsN.png', 'uploads/products/featured/fZ4KsMlZ3kJQAiBeyZZ31QWtt4l2CrdICZQ4eDk8.png', 'uploads/products/flash_deal/tu6YUhPofnnAQJjIIifAIdFbc1soMd2MIqD1iaCq.png', 'youtube', NULL, 'lawn shirts', '<strong style=\"box-sizing: border-box; margin: 0px; font-weight: bold; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Details</strong><br style=\"box-sizing: border-box; margin: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><ul style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; list-style: inside disc; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; margin: 0px 0px 0px 21px; text-indent: -18px; list-style-type: none;\">Shirt with embroidery on front and sleeve</li><li style=\"box-sizing: border-box; margin: 0px 0px 0px 21px; text-indent: -18px; list-style-type: none;\">Cut open slits at front</li><li style=\"box-sizing: border-box; margin: 0px 0px 0px 21px; text-indent: -18px; list-style-type: none;\">Full sleeves with fringe lace at cuffs</li><li style=\"box-sizing: border-box; margin: 0px 0px 0px 21px; text-indent: -18px; list-style-type: none;\">Fabric: Arabic Lawn</li><li style=\"box-sizing: border-box; margin: 0px 0px 0px 21px; text-indent: -18px; list-style-type: none;\">Model Height: 5\' 4\'\'</li><li style=\"box-sizing: border-box; margin: 0px 0px 0px 21px; text-indent: -18px; list-style-type: none;\">Model is wearing size small (S)</li></ul><br>', 2999.00, 1200.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"36\"]}]', '[\"#FAEBD7\",\"#F0FFFF\",\"#FFE4C4\",\"#0000FF\"]', NULL, 0, 1, 1, 0, '36', 0.00, 'percent', 0.00, 'percent', 'flat_rate', 50.00, 0, 'Lawn shirt', NULL, 'uploads/products/meta/ZDWzXktEJfQCAg4EDicqHgFrVyaekPUjZPGswJGv.png', NULL, 'EMBROIDERED-ARABIC-LAWN-SHIRT-ns5yr', 0.00, '2020-05-08 22:29:10', '2020-05-08 22:30:25'),
(3, 'EMBROIDERED LAWN SHIRT', 'admin', 12, 1, 3, 12, 3, '[\"uploads\\/products\\/photos\\/7tdVSZTrqkHrS1gqjpCCcltTt5Xxk0XIYodanDRe.png\",\"uploads\\/products\\/photos\\/SueONV5VDnl05BJqzyGZUCDQe6M7sxdYNMHDn0ZD.png\",\"uploads\\/products\\/photos\\/buhCdTmE5EDhUt4piTjUSqEy4QGtNnIkQwVWIfsE.png\",\"uploads\\/products\\/photos\\/Udd0syz4LdZw8NhECnj67wQjuSLFTi2P2AXr6Tz7.png\",\"uploads\\/products\\/photos\\/HduTsJEW6ENT9Wb4fqI5KyIVgwHi2e1V4cCwp9dw.png\"]', 'uploads/products/thumbnail/GFTgfTjVIVWNYfwW7whTXpnjWcGiAGNbZhMIZu1G.png', 'uploads/products/featured/bA6xN9TZFjUIHf9U6hQMANzFpQAvDevvrHHb0KYU.png', 'uploads/products/flash_deal/Eb68jCF9PWSD24FCMoo1baVAXaQ1qNTQ8tQIYjNn.png', 'youtube', NULL, 'lawn shirt', '<strong style=\"box-sizing: border-box; margin: 0px; font-weight: bold; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Details</strong><br style=\"box-sizing: border-box; margin: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><ul style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; list-style: inside disc; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; margin: 0px 0px 0px 21px; text-indent: -18px; list-style-type: none;\">Printed shirt with embroidered front</li><li style=\"box-sizing: border-box; margin: 0px 0px 0px 21px; text-indent: -18px; list-style-type: none;\">Embroidery finished with sequins</li><li style=\"box-sizing: border-box; margin: 0px 0px 0px 21px; text-indent: -18px; list-style-type: none;\">Placket finished with pearls</li><li style=\"box-sizing: border-box; margin: 0px 0px 0px 21px; text-indent: -18px; list-style-type: none;\">Full sleeves</li><li style=\"box-sizing: border-box; margin: 0px 0px 0px 21px; text-indent: -18px; list-style-type: none;\">Fabric: Lawn</li><li style=\"box-sizing: border-box; margin: 0px 0px 0px 21px; text-indent: -18px; list-style-type: none;\">Model Height: 5\' 4\'\'</li><li style=\"box-sizing: border-box; margin: 0px 0px 0px 21px; text-indent: -18px; list-style-type: none;\">Model is wearing size small (S)</li></ul><br>', 3699.00, 1500.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"36\"]}]', '[\"#9966CC\",\"#FAEBD7\",\"#00FFFF\",\"#7FFFD4\"]', NULL, 0, 1, 1, 0, '30', 0.00, 'amount', 0.00, 'amount', 'local_pickup', 0.00, 0, NULL, NULL, NULL, NULL, 'EMBROIDERED-LAWN-SHIRT-c42w9', 0.00, '2020-05-08 23:29:08', '2020-05-08 23:49:42'),
(4, 'EMBROIDERED SHIMMER LAWN SHIRT', 'admin', 12, 1, 3, 12, 3, '[\"uploads\\/products\\/photos\\/hglu8meeIJL9E5K9r86ImDrT0cTaeEekvL4kCAgj.png\",\"uploads\\/products\\/photos\\/Bh18K6NhEuKx8fiDUfLu0TQsSarZc5XnoyaTrIjz.png\"]', 'uploads/products/thumbnail/UYgFyrJySy09NR9ZMV3eZJuyCu8926iGPdFIlD2b.png', 'uploads/products/featured/aGL961HBtxEy78XT3rX5MjhBp5omzPymjvhScyuT.png', 'uploads/products/flash_deal/BB5IkRK5MvI1r06BT1c0iJB6f97cp2TUN71p0DEP.png', 'youtube', NULL, 'lawn shirt', '<strong style=\"box-sizing: border-box; margin: 0px; font-weight: bold; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Details</strong><br style=\"box-sizing: border-box; margin: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><ul style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; list-style: inside disc; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; margin: 0px 0px 0px 21px; text-indent: -18px; list-style-type: none;\">Shirt with embroidered front (with tilla work)</li><li style=\"box-sizing: border-box; margin: 0px 0px 0px 21px; text-indent: -18px; list-style-type: none;\">Placket finished with beads and pearls</li><li style=\"box-sizing: border-box; margin: 0px 0px 0px 21px; text-indent: -18px; list-style-type: none;\">Full sleeves with embroidered cuffs</li><li style=\"box-sizing: border-box; margin: 0px 0px 0px 21px; text-indent: -18px; list-style-type: none;\">Fabric: Shimmer Lawn</li><li style=\"box-sizing: border-box; margin: 0px 0px 0px 21px; text-indent: -18px; list-style-type: none;\">Model Height: 5\' 4\'\'</li><li style=\"box-sizing: border-box; margin: 0px 0px 0px 21px; text-indent: -18px; list-style-type: none;\">Model is wearing size small (S)</li></ul><br>', 4499.00, 2000.00, 1, '[\"2\"]', '[{\"attribute_id\":\"2\",\"values\":[\"36\"]}]', '[\"#9966CC\",\"#00FFFF\",\"#D2691E\",\"#556B2F\"]', NULL, 0, 1, 1, 0, '30', 0.00, 'amount', 0.00, 'amount', 'free', 0.00, 2, NULL, NULL, NULL, NULL, 'EMBROIDERED-SHIMMER-LAWN-SHIRT-iJaYU', 0.00, '2020-05-09 01:08:34', '2020-09-28 13:36:30'),
(5, 'EMBROIDERED LAWN SHIRT', 'admin', 12, 1, 3, 12, 3, '[\"uploads\\/products\\/photos\\/XfXP4gUAOhju9SxeJIJXx9ZwinjSVaS1AMsKvqe3.png\",\"uploads\\/products\\/photos\\/sZmaymM8ew9E2wpMVhDDPZYnEbgbA50Jh3P46GZD.png\",\"uploads\\/products\\/photos\\/gT8pC9tjoTK8ZoP0EAgWHvY75xduqBDNmxn3oc4z.png\",\"uploads\\/products\\/photos\\/lxZzIYKwemrSH62XYkay7HBfydeVKOK5qy2ok961.png\"]', 'uploads/products/thumbnail/zBDti4RbvA0JTEEuEsByGxM9JThjDtXliSPqNdQw.png', 'uploads/products/featured/YgiHbohPV84gMygmBZWuV5Vh0q0KaVEQLFrfYAWa.png', 'uploads/products/flash_deal/FcIw2DcJs9miQ6meTgQdFa3QAtebuNsSvtgnx7TP.png', 'youtube', NULL, 'LAWN SHIRT', NULL, 4499.00, 2000.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"Large \",\"Medium\",\"Small\"]}]', '[]', NULL, 0, 1, 1, 0, '30', 0.00, 'amount', 0.00, 'amount', 'flat_rate', 0.00, 3, NULL, NULL, NULL, NULL, 'EMBROIDERED-LAWN-SHIRT-a3Tv2', 5.00, '2020-05-09 02:24:25', '2020-09-19 23:16:40'),
(6, 'KN95', 'admin', 12, 4, 11, 13, 3, '[\"uploads\\/products\\/photos\\/MHUDwnywkqNZ8iaWjCPKrbgxFyeuUjr9RvNiSGru.jpeg\",\"uploads\\/products\\/photos\\/n2gBrKv7OV7eZVYOQfGGWibkIupjXS605Z22yT0z.jpeg\",\"uploads\\/products\\/photos\\/gtgU6DvDUMMN1xk3FhDIAyEvKXZ3Ihgvn3WMTYTF.jpeg\",\"uploads\\/products\\/photos\\/soFsBs5HJQIytuQ18uCr8suLl2Hs4L3qGsnYq4Cd.jpeg\"]', 'uploads/products/thumbnail/el442i2S8yJvpVlOcsiKG3mni7MpS62dT8OzVJ6x.jpeg', 'uploads/products/featured/k61K4pwskRpNxwrtTnMvkoeCFiYwISZnqMVekbPC.jpeg', 'uploads/products/flash_deal/0Gh14Ak6zOmXeeccvd1mYfNSe8gsvOBuHVv4mUnl.jpeg', 'youtube', NULL, 'masks', NULL, 1200.00, 800.00, 0, '[]', '[]', '[]', NULL, 1, 1, 1, 30, '30', 45.84, 'percent', 1.00, 'percent', 'local_pickup', 200.00, 0, NULL, NULL, NULL, NULL, 'KN95-QFCOs', 0.00, '2020-05-15 02:56:00', '2020-05-15 05:33:24'),
(7, 'ChildCareCenter', 'seller', 29, 4, 11, 13, 3, '[\"uploads\\/products\\/photos\\/P44xzqMUMYqRfA6wDLiEsPya9fkUCITu0BcbNoGY.png\"]', 'uploads/products/thumbnail/sn6ijoQDm4gHEtSIUUBFX0F1c7skuJXORZk7nfWV.png', 'uploads/products/featured/to8LnIakijwtRKqg5qGdFNHHfu9R8dtXIuman3Ir.png', 'uploads/products/flash_deal/gsuryUNhMPHCY7ucFpNzxx3XdXCg5ocAGEwjiN4A.png', 'youtube', NULL, 'kha', 'ddd', 221.95, 88.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"medium\"]}]', '[]', NULL, 0, 1, 1, 0, '123', 300.00, 'amount', 50.00, 'amount', 'free', 0.00, 1, 'main', 'mm', 'uploads/products/meta/EprneMNAyqftdlzUYJ4vDsIMDeJM7xgOPh5Z6Z2e.png', 'uploads/products/pdf/h93WQOuu24s5jImwaqH2qa601zRZd9FMFE6mY7V2.pdf', 'ChildCareCenter-Qgv3n', 0.00, '2020-09-28 12:54:26', '2020-09-29 12:36:27'),
(8, 'shoes', 'seller', 14, 4, 11, 13, 3, '[\"uploads\\/products\\/photos\\/irnH8ywQRI1VQJybVkcr89l7B0VGcyR8RbCK0we9.png\"]', NULL, NULL, NULL, 'youtube', NULL, 'f', 'adf', 23.00, 0.00, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 18, '23', 0.00, 'amount', 0.00, 'amount', 'free', 0.00, 1, 't', 'r', NULL, NULL, 'shoes-QerJD', 0.00, '2020-09-29 12:07:54', '2020-09-30 06:42:10'),
(9, 'test', 'seller', 14, 4, 11, 13, 4, '[\"uploads\\/products\\/photos\\/MbKiJkVtyaBQBpa8JHL1oQpKZUypaYrS6LVR2tLj.png\"]', 'uploads/products/thumbnail/aqn289Odi6HCkLVYRI9bHO2ieV3OT4NOLcnytSe0.png', 'uploads/products/featured/5ex02CaROw1iu4itYzUqZlmkoMGAgw63wTzsUNGQ.png', 'uploads/products/flash_deal/jrpGKoxBZpdCWFJPLLxUhsgp4dbFdQuFVRTF8D47.png', 'youtube', NULL, 'kkk', 'adfaf', 20.00, 0.00, 1, '[]', '[]', '[\"#9966CC\"]', NULL, 0, 1, 1, 0, '88', 10.00, '2', 20.00, '2', 'free', 0.00, 0, 'mm', 'mmmmm', 'uploads/products/meta/0SDi74ffE83GkW64Ib2aDPphPtNEdUKARYiiwfZC.png', NULL, 'test-kzdbj', 0.00, '2020-09-30 06:41:58', '2020-09-30 06:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_stocks`
--

INSERT INTO `product_stocks` (`id`, `product_id`, `variant`, `sku`, `price`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, '36', 'ESS-36', 3210.00, 9, '2020-05-08 06:46:04', '2020-05-08 21:56:24'),
(2, 2, 'AntiqueWhite-36', 'EALS-AntiqueWhite-36', 2999.00, 10, '2020-05-08 22:29:10', '2020-05-08 22:29:10'),
(3, 2, 'Azure-36', 'EALS-Azure-36', 2999.00, 10, '2020-05-08 22:29:10', '2020-05-08 22:29:10'),
(4, 2, 'Bisque-36', 'EALS-Bisque-36', 2999.00, 10, '2020-05-08 22:29:10', '2020-05-08 22:29:10'),
(5, 2, 'Blue-36', 'EALS-Blue-36', 2999.00, 10, '2020-05-08 22:29:10', '2020-05-08 22:29:10'),
(6, 3, 'Amethyst-36', 'ELS-Amethyst-36', 3699.00, 10, '2020-05-08 23:49:30', '2020-05-08 23:49:30'),
(7, 3, 'AntiqueWhite-36', 'ELS-AntiqueWhite-36', 3699.00, 10, '2020-05-08 23:49:30', '2020-05-08 23:49:30'),
(8, 3, 'Aqua-36', 'ELS-Aqua-36', 3699.00, 10, '2020-05-08 23:49:30', '2020-05-08 23:49:30'),
(9, 3, 'Aquamarine-36', 'ELS-Aquamarine-36', 3699.00, 10, '2020-05-08 23:49:30', '2020-05-08 23:49:30'),
(10, 4, 'Amethyst-36', 'ESLS-Amethyst-36', 4499.00, 6, '2020-05-09 02:18:29', '2020-09-28 13:36:30'),
(11, 4, 'Aqua-36', 'ESLS-Aqua-36', 4499.00, 10, '2020-05-09 02:18:29', '2020-05-09 02:18:29'),
(12, 4, 'Chocolate-36', 'ESLS-Chocolate-36', 4499.00, 10, '2020-05-09 02:18:29', '2020-05-09 02:18:29'),
(13, 4, 'DarkOliveGreen-36', 'ESLS-DarkOliveGreen-36', 4499.00, 10, '2020-05-09 02:18:29', '2020-05-09 02:18:29'),
(14, 5, 'Large', 'ELS-Large', 4499.00, 0, '2020-05-09 02:24:25', '2020-05-17 21:27:42'),
(15, 5, 'Medium', 'ELS-Medium', 4499.00, -3, '2020-05-09 02:24:25', '2020-09-19 23:16:40'),
(16, 5, 'Small', 'ELS-Small', 4499.00, 1, '2020-05-09 02:24:25', '2020-05-09 02:24:25'),
(17, 7, 'medium', 'C-medium', 222.00, 9, '2020-09-28 12:54:26', '2020-09-29 12:36:27'),
(18, 9, 'Amethyst', 't-Amethyst', 20.00, 10, '2020-09-30 06:41:58', '2020-09-30 06:41:58');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `viewed` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `rating`, `comment`, `status`, `viewed`, `created_at`, `updated_at`) VALUES
(1, 5, 32, 5, 'very good', 1, 0, '2020-05-09 02:48:14', '2020-05-09 02:48:14'),
(2, 1, 14, 5, 'owsm', 1, 0, '2020-05-09 02:48:51', '2020-06-15 23:34:14');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Manager', '[\"1\",\"2\",\"4\"]', '2018-10-10 09:39:47', '2018-10-10 09:51:37'),
(2, 'Accountant', '[\"2\",\"3\",\"5\"]', '2018-10-10 09:52:09', '2020-09-28 10:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int(11) NOT NULL,
  `query` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `query`, `count`, `created_at`, `updated_at`) VALUES
(2, 'dcs', 1, '2020-03-08 05:29:09', '2020-03-08 05:29:09'),
(3, 'das', 3, '2020-03-08 05:29:15', '2020-03-08 05:29:50'),
(4, 'Gq', 1, '2020-05-05 15:45:34', '2020-05-05 15:45:34');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `verification_status` int(1) NOT NULL DEFAULT 0,
  `verification_info` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `cash_on_delivery_status` int(1) NOT NULL DEFAULT 0,
  `sslcommerz_status` int(1) NOT NULL DEFAULT 0,
  `stripe_status` int(1) DEFAULT 0,
  `paypal_status` int(1) NOT NULL DEFAULT 0,
  `paypal_client_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_client_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ssl_store_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ssl_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instamojo_status` int(1) NOT NULL DEFAULT 0,
  `instamojo_api_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instamojo_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `razorpay_status` int(1) NOT NULL DEFAULT 0,
  `razorpay_api_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `razorpay_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paystack_status` int(1) NOT NULL DEFAULT 0,
  `paystack_public_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paystack_secret_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `voguepay_status` int(1) NOT NULL DEFAULT 0,
  `voguepay_merchand_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_to_pay` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `user_id`, `verification_status`, `verification_info`, `cash_on_delivery_status`, `sslcommerz_status`, `stripe_status`, `paypal_status`, `paypal_client_id`, `paypal_client_secret`, `ssl_store_id`, `ssl_password`, `stripe_key`, `stripe_secret`, `instamojo_status`, `instamojo_api_key`, `instamojo_token`, `razorpay_status`, `razorpay_api_key`, `razorpay_secret`, `paystack_status`, `paystack_public_key`, `paystack_secret_key`, `voguepay_status`, `voguepay_merchand_id`, `admin_to_pay`, `created_at`, `updated_at`) VALUES
(1, 14, 1, '[{\"type\":\"text\",\"label\":\"Name\",\"value\":\"Mr. Seller\"},{\"type\":\"select\",\"label\":\"Marital Status\",\"value\":\"Married\"},{\"type\":\"multi_select\",\"label\":\"Company\",\"value\":\"[\\\"Company\\\"]\"},{\"type\":\"select\",\"label\":\"Gender\",\"value\":\"Male\"},{\"type\":\"file\",\"label\":\"Image\",\"value\":\"uploads\\/verification_form\\/CRWqFifcbKqibNzllBhEyUSkV6m1viknGXMEhtiW.png\"}]', 1, 1, 1, 0, NULL, NULL, 'activ5c3c5dac9254d', 'activ5c3c5dac9254d@ssl', 'pk_test_CqAfBW85ZifDyuEOhGaD4ZbE', 'sk_test_mRRMmV4GnBJ4UT7qeLlDe5F8', 0, NULL, NULL, 0, NULL, NULL, 1, 'pk_test_855c5f39d8f662a5d63fabe25ead64fe21018f15', 'sk_test_1175e92519f88e9c665d0b980f53ff1cfffbbc38', 0, NULL, 0.00, '2018-10-07 09:42:57', '2020-09-28 12:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `seller_withdraw_requests`
--

CREATE TABLE `seller_withdraw_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `viewed` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` int(11) NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `revisit` int(11) NOT NULL,
  `sitemap_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `keyword`, `author`, `revisit`, `sitemap_link`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Ecommerce,SHOP,store,online shopping,online clothes', 'Abubakar', 11, 'www.shop.tascoit.com', 'TASCO IT Solutions', '2020-09-30 11:11:16', '2020-09-30 06:11:16');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sliders` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pick_up_point_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `user_id`, `name`, `logo`, `sliders`, `address`, `facebook`, `google`, `twitter`, `youtube`, `slug`, `meta_title`, `meta_description`, `pick_up_point_id`, `created_at`, `updated_at`) VALUES
(1, 14, 'Demo Seller Shop', 'shop/logo/Gt1xw7vjTpMnwpADkGSilc35qrAfcw02kuZ36Jdn.png', '[\"uploads\\/shop\\/sliders\\/lToeKDeUyWcxy1HRs2yH37oBLyIwEwyPkqdyXBRO.jpeg\",\"uploads\\/shop\\/sliders\\/asDBJ3Bro1ijNaNnx3Hpnp6uq3n66ndyLczOJ0F6.jpeg\",\"uploads\\/shop\\/sliders\\/ltwUfHND4QP1K7bPFbuOC4i8v6zL9KHJKzex4zaX.jpeg\",\"uploads\\/shop\\/sliders\\/r65ROgDE0Pa0sfOx3yMHImyXVHnGaeffsYJKKXVG.png\"]', 'House : Demo, Road : Demo, Section : Demo', 'www.facebook.com', 'www.google.com', 'www.twitter.com', 'www.youtube.com', 'Demo-Seller-Shop-1', 'Demo Seller Shop Title', 'Demo description', NULL, '2018-11-27 15:23:13', '2020-09-30 06:46:45'),
(2, 32, 'Softwares', 'uploads/shop/logo/ItKI04Cc0I8SXeSrqznC5FgUD6TisVOxRX26gbCz.png', '[\"uploads\\/shop\\/sliders\\/8V5NkOhmdtUZAbmZGtAbcLTvFZ1djf6MHtndGDF4.jpeg\"]', 'Lahore Pakistan', NULL, NULL, NULL, NULL, 'Softwares-2', 'E commerce', 'sel ecommerce softwares', '[]', '2020-04-30 09:42:17', '2020-07-03 18:44:46');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT 1,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `photo`, `published`, `link`, `created_at`, `updated_at`) VALUES
(9, 'uploads/sliders/ACsMQTAFjFXo3XywajilgPlyNB9XGF96IQpJ9VDD.jpeg', 1, '#', '2020-04-30 08:28:58', '2020-04-30 08:28:58'),
(10, 'uploads/sliders/QH15dGUE8PTjJLmqUIjORCJc02SJdh1MefWohCrH.jpeg', 1, '#', '2020-04-30 08:28:58', '2020-04-30 08:28:58'),
(11, 'uploads/sliders/6teZZ8OV7KmYo0l74VeDHkXxAySFC1BseSWDcTnu.jpeg', 1, '#', '2020-04-30 08:29:56', '2020-04-30 08:29:56');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `category_id`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Trouser', 1, 'trouser', 'Trouser', NULL, '2019-03-12 11:13:24', '2020-04-30 23:45:49'),
(2, 'Suits', 1, 'suits', 'Suits', NULL, '2019-03-12 11:13:44', '2020-04-30 23:43:47'),
(3, 'Shirts', 1, 'shirts', 'Shirts', NULL, '2019-03-12 11:13:59', '2020-04-30 23:42:48'),
(4, 'Summer Collection 2019', 2, 'Summer-Collection-2019', 'Summer Collection 2019', NULL, '2019-03-12 11:18:25', '2020-04-30 23:52:19'),
(5, 'Winter Unstitched', 2, 'winter-unstitched', 'Winter Unstitched', NULL, '2019-03-12 11:18:38', '2020-04-30 23:50:10'),
(6, 'Shawls', 3, 'Shawls-5XdVd', 'shawls', NULL, '2020-05-08 06:08:41', '2020-05-08 06:08:41'),
(7, 'Cape Shawls', 3, 'Cape-Shawls-FTZRb', 'cape shawls', NULL, '2020-05-08 06:09:07', '2020-05-08 06:09:07'),
(8, 'Capes', 3, 'Capes-F53nh', 'capes', NULL, '2020-05-08 06:09:24', '2020-05-08 06:09:24'),
(9, 'Ponchos', 3, 'Ponchos-bY6qa', 'ponchos', NULL, '2020-05-08 06:09:49', '2020-05-08 06:09:49'),
(10, 'Jackets', 3, 'Jackets-3IL9D', 'jackets', NULL, '2020-05-08 06:10:09', '2020-05-08 06:10:09'),
(11, 'face mask', 4, 'face-mask-To3pQ', 'masks', NULL, '2020-05-15 02:53:49', '2020-05-15 02:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_sub_categories`
--

INSERT INTO `sub_sub_categories` (`id`, `sub_category_id`, `name`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(12, 3, 'Women shirts', 'Women-shirts-b2Hen', 'Women shirts', NULL, '2020-05-08 06:32:46', '2020-05-08 06:32:46'),
(13, 11, 'KN95', 'KN95-cJnrk', 'masks', NULL, '2020-05-15 02:54:46', '2020-05-15 02:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `code` int(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `files` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `viewed` int(1) NOT NULL DEFAULT 0,
  `client_viewed` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_replies`
--

CREATE TABLE `ticket_replies` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply` longtext COLLATE utf8_unicode_ci NOT NULL,
  `files` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `referred_by` int(11) DEFAULT NULL,
  `provider_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'customer',
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_original` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance` double(8,2) NOT NULL DEFAULT 0.00,
  `referral_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `referred_by`, `provider_id`, `user_type`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `avatar`, `avatar_original`, `address`, `country`, `city`, `postal_code`, `phone`, `balance`, `referral_code`, `created_at`, `updated_at`) VALUES
(12, NULL, NULL, 'admin', 'nabeel', 'admin@gmail.com', '2020-09-28 13:09:30', '$2y$10$GGV/RlYAkV5lMpqpN3j9kutJ99T1HrcXVl3xCzMs/H2CSMgOoMu4i', 'OtD0hkgrv62ToPN2mdecpocuOwrRwdN6zfZf7Mx2UEqHlMh6825NxEwlK7Xr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, '2020-09-28 13:35:30', '2020-09-28 13:35:30'),
(14, NULL, NULL, 'seller', 'Softwares', 'hamza@gmail.com', '2020-04-30 09:04:17', '$2y$10$GGV/RlYAkV5lMpqpN3j9kutJ99T1HrcXVl3xCzMs/H2CSMgOoMu4i', 'whVxKd794uRnYKtZdGrpZRyNy2eWv8Xei5RgOcND4XSfbGzJVDPnJSSA7eP2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, '2020-04-30 09:42:17', '2020-04-30 09:42:17'),
(32, NULL, NULL, 'customer', 'ASADULLAH AMJAD', 'asad@gmail.com', '2020-09-29 07:09:31', '$2y$10$XSw9yvkE3isLWpP8P4MT7OavzR0Jjnotf/iKmjEJlNHNsEhOZp5lC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, '2020-09-29 07:25:31', '2020-09-29 07:25:31');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 16, 1, '2020-05-08 11:35:46', '2020-05-08 11:35:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deals`
--
ALTER TABLE `flash_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickup_points`
--
ALTER TABLE `pickup_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_withdraw_requests`
--
ALTER TABLE `seller_withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category_id` (`category_id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sub_category_id` (`sub_category_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `flash_deals`
--
ALTER TABLE `flash_deals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pickup_points`
--
ALTER TABLE `pickup_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seller_withdraw_requests`
--
ALTER TABLE `seller_withdraw_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
