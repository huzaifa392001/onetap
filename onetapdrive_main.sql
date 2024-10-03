-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 20, 2024 at 08:12 AM
-- Server version: 5.7.44
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onetapdrive_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variant` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_value` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible_product` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used_for_variation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `variant_id`, `attribute_value`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, '2', 'Red', 'red', '1', '2023-01-18 23:02:37', '2023-01-18 23:02:37'),
(2, '2', 'Blue', 'blue', '1', '2023-01-18 23:02:41', '2023-01-18 23:02:41'),
(3, '2', 'Gold', 'gold', '1', '2023-01-18 23:02:46', '2023-01-18 23:02:46'),
(4, '3', 'Small', 'small', '1', '2023-01-18 23:02:59', '2023-01-18 23:02:59'),
(5, '3', 'Medium', 'medium', '1', '2023-01-18 23:03:04', '2023-01-18 23:03:04'),
(6, '3', 'Large', 'large', '1', '2023-01-18 23:03:08', '2023-01-18 23:03:08'),
(7, '4', 'Dell', 'dell', '1', '2023-01-18 23:03:19', '2023-01-18 23:03:19'),
(8, '4', 'Intel', 'intel', '1', '2023-01-18 23:03:24', '2023-01-18 23:03:24'),
(9, '4', 'Lenovo', 'lenovo', '1', '2023-01-18 23:03:35', '2023-01-18 23:03:35'),
(10, '1', '26gb', '26gb', '1', '2023-01-20 16:59:55', '2023-01-20 16:59:55'),
(11, '1', '567gb', '567gb', '1', '2023-01-20 16:59:55', '2023-01-20 16:59:55'),
(12, '1', '76gb', '76gb', '1', '2023-01-20 16:59:55', '2023-01-20 16:59:55'),
(13, '1', 'custom1', 'custom1', '1', '2023-01-25 06:57:29', '2023-01-25 06:57:29'),
(14, '1', 'custom2', 'custom2', '1', '2023-01-25 06:57:30', '2023-01-25 06:57:30'),
(15, '1', 'attr1', 'attr1', '1', '2023-01-25 07:02:25', '2023-01-25 07:02:25'),
(16, '1', 'attr2', 'attr2', '1', '2023-01-25 07:02:25', '2023-01-25 07:02:25'),
(17, '1', 'test1', 'test1', '1', '2023-01-25 07:10:19', '2023-01-25 07:10:19'),
(18, '1', 'test2', 'test2', '1', '2023-01-25 07:10:19', '2023-01-25 07:10:19'),
(25, '1', 'test1', 'test1', '1', '2023-01-25 07:43:56', '2023-01-25 07:43:56'),
(26, '1', 'test2', 'test2', '1', '2023-01-25 07:43:56', '2023-01-25 07:43:56'),
(31, '1', 'Primary', 'primary', '1', '2023-01-25 08:35:52', '2023-01-25 08:35:52'),
(32, '1', 'Secondry', 'secondry', '1', '2023-01-25 08:35:52', '2023-01-25 08:35:52'),
(35, '1', '64GB', '64gb', '1', '2023-01-27 12:18:03', '2023-01-27 12:18:03'),
(36, '1', '128GB', '128gb', '1', '2023-01-27 12:18:04', '2023-01-27 12:18:04');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title1` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title2` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title3` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `page_id`, `section_name`, `title1`, `title2`, `title3`, `banner_image`, `created_at`, `updated_at`) VALUES
(1, '1', 'home-slider', 'A Store For', 'Electronic', 'Products', '[\"166870430348.webp\",\"166870430381.webp\",\"166870430322.webp\",\"16687043037.webp\"]', '2022-11-11 00:01:03', '2022-11-17 22:58:23'),
(3, '3', 'contact', NULL, NULL, NULL, '1668104917.webp', '2022-11-11 00:08:45', '2022-11-11 00:28:37'),
(4, '12', 'category', NULL, NULL, NULL, '1668103738.webp', '2022-11-11 00:08:58', '2022-11-11 00:08:58'),
(5, '13', 'shop', NULL, NULL, NULL, '1668103755.webp', '2022-11-11 00:09:15', '2022-11-11 00:09:15');

-- --------------------------------------------------------

--
-- Table structure for table `billing_infos`
--

CREATE TABLE `billing_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_status` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `cancellation_reason` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_cancel_reason` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_comments` text COLLATE utf8mb4_unicode_ci,
  `cancellation_image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_variantion_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_values` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_fee` double DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discounted_price` double DEFAULT NULL,
  `discount` double DEFAULT NULL COMMENT 'How much customer save money',
  `total` double DEFAULT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci,
  `billing_address` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billing_infos`
--

INSERT INTO `billing_infos` (`id`, `order_id`, `user_id`, `product_id`, `order_status`, `cancellation_status`, `cancelled_at`, `cancellation_reason`, `admin_cancel_reason`, `cancellation_comments`, `cancellation_image`, `product_variantion_id`, `attributes`, `attribute_values`, `delivery_fee`, `quantity`, `price`, `discounted_price`, `discount`, `total`, `shipping_address`, `billing_address`, `created_at`, `updated_at`) VALUES
(1, '1', '3', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '3', 977, NULL, NULL, 2931, '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '2023-02-03 14:47:04', '2023-02-03 14:47:04'),
(2, '1', '3', '3', '3', '2', '2023-02-03 14:54:25', '6', NULL, 'sasa', '[\"167545406576.jpg\",\"167545406549.jpg\",\"167545406513.jpg\"]', '2', '4,9', 'Small,Lenovo', 0, '1', 437, NULL, NULL, 437, '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '2023-02-03 14:47:04', '2023-02-03 16:46:06'),
(3, '2', '3', '3', '2', '3', '2023-02-03 15:20:59', '3', NULL, 'dsd', NULL, '1', '4,7', 'Small,Dell', 0, '1', 500, 475, 25, 475, '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '2023-02-03 15:20:27', '2023-02-03 15:20:58'),
(4, '2', '3', '3', '2', '3', '2023-02-03 15:20:58', '3', NULL, 'dsd', NULL, '4', '6,9', 'Large,Lenovo', 0, '1', 201, NULL, NULL, 201, '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '2023-02-03 15:20:27', '2023-02-03 15:20:58'),
(5, '3', '3', '3', '2', '1', '2023-02-03 16:55:14', '6', NULL, 'asa', NULL, '3', '6,7', 'Large,Dell', 0, '1', 782, 700, 82, 700, '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '2023-02-03 16:54:54', '2023-02-03 16:55:38'),
(6, '3', '3', '3', '2', '1', '2023-02-03 16:55:14', '6', NULL, 'asa', NULL, '1', '4,7', 'Small,Dell', 0, '1', 500, 475, 25, 475, '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '2023-02-03 16:54:54', '2023-02-03 16:55:38'),
(7, '3', '3', '2', '2', '1', '2023-02-03 16:56:04', '3', NULL, 'asa', NULL, NULL, NULL, NULL, 0, '1', 977, NULL, NULL, 977, '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '2023-02-03 16:54:54', '2023-02-03 16:59:11'),
(8, '4', '3', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '4,7', 'Small,Dell', 0, '1', 500, 475, 25, 475, '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '2023-02-03 17:14:06', '2023-02-03 17:14:06'),
(9, '4', '3', '3', '2', '3', '2023-02-03 17:15:03', '2', NULL, 'test', NULL, '4', '6,9', 'Large,Lenovo', 0, '1', 201, NULL, NULL, 201, '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '2023-02-03 17:14:06', '2023-02-03 17:15:03'),
(10, '4', '3', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 977, NULL, NULL, 977, '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '2023-02-03 17:14:06', '2023-02-03 17:14:06'),
(11, '4', '3', '1', '2', '3', '2023-02-03 17:15:03', '2', NULL, 'test', NULL, NULL, NULL, NULL, 0, '1', 200, 170, 30, 170, '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '2023-02-03 17:14:06', '2023-02-03 17:15:03');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `image`, `date`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum is placeholder text commonly used in the graphic', 'lorem-ipsum-is-placeholder-text-commonly-used-in-the-graphic', '1667340369.png', '2022-11-02', '<p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.&nbsp;</p>', 1, '2022-11-02 04:06:09', '2022-11-08 02:54:49'),
(2, 'Lorem ipsum is a name for a common type of placeholder text', 'lorem-ipsum-is-a-name-for-a-common-type-of-placeholder-text', '1667422467.jpg', '2022-11-02', '<p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</p>', 1, '2022-11-02 04:06:57', '2022-11-08 05:23:38');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_models` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `parent_category_id`, `main_category_id`, `brand_name`, `brand_models`, `slug`, `brand_image`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Alfa Romeo', 'Giulietta', 'alfa-romeo', '1691580996.png', 1, '2023-08-09 06:36:36', '2023-08-09 06:36:36'),
(2, NULL, NULL, 'Aston Martin', 'Vantage, DB11', 'aston-martin', '1691581199.png', 1, '2023-08-09 06:39:59', '2023-08-09 06:39:59'),
(3, NULL, NULL, 'Audi', 'A3,A6,RS,Q8', 'audi', '1691581326.png', 1, '2023-08-09 06:42:06', '2023-08-09 06:42:06'),
(4, NULL, NULL, 'Bentley', 'Bentayga, Continental', 'bentley', '1691581461.png', 1, '2023-08-09 06:44:21', '2023-08-09 06:44:21'),
(5, NULL, NULL, 'BMW', '420i convertible', 'bmw', '1691581559.png', 1, '2023-08-09 06:45:59', '2023-08-09 06:45:59'),
(6, NULL, NULL, 'Cadillac', 'Escalade Platinum', 'cadillac', '1691581652.webp', 1, '2023-08-09 06:47:32', '2023-08-09 06:47:32'),
(7, NULL, NULL, 'Chevrolet', 'Captiva, Corvette', 'chevrolet', '1691581744.png', 1, '2023-08-09 06:49:04', '2023-08-09 06:49:04'),
(8, NULL, NULL, 'Chrysler', '300C', 'chrysler', '1691581791.png', 1, '2023-08-09 06:49:51', '2023-08-09 06:49:51'),
(9, NULL, NULL, 'Citroen', 'C5, C3', 'citroen', '1691581832.png', 1, '2023-08-09 06:50:32', '2023-08-09 06:50:32'),
(10, NULL, NULL, 'Dodge', 'Challenger V6, C...', 'dodge', '1691581933.png', 1, '2023-08-09 06:52:13', '2023-08-09 06:52:13'),
(11, NULL, NULL, 'Ferrari', 'F8 Tributo, Portofino', 'ferrari', '1691582017.png', 1, '2023-08-09 06:53:37', '2023-08-09 06:53:37'),
(12, NULL, NULL, 'Fiat', 'Abarth Spyder 12...', 'fiat', '1691582269.png', 1, '2023-08-09 06:57:49', '2023-08-09 06:57:49'),
(13, NULL, NULL, 'Ford', 'Mustang EcoBoost...', 'ford', '1691582306.png', 1, '2023-08-09 06:58:26', '2023-08-09 06:58:26'),
(14, NULL, NULL, 'GAC', 'Emkoo', 'gac', '1691582355.png', 1, '2023-08-09 06:59:15', '2023-08-09 06:59:15'),
(15, NULL, NULL, 'Genesis', 'GV80, GV70, G70', 'genesis', '1691582394.png', 1, '2023-08-09 06:59:54', '2023-08-09 06:59:54'),
(16, NULL, NULL, 'GMC', 'Yukon, Yukon Den...', 'gmc', '1691582446.png', 1, '2023-08-09 07:00:46', '2023-08-09 07:00:46'),
(17, NULL, NULL, 'Honda', 'Civic, Accord, C...', 'honda', '1691582498.png', 1, '2023-08-09 07:01:38', '2023-08-09 07:01:38'),
(18, NULL, NULL, 'Hongqi', 'H5, H7 Elite, H7...', 'hongqi', '1691582534.webp', 1, '2023-08-09 07:02:14', '2023-08-09 07:02:14'),
(19, NULL, NULL, 'Hyundai', 'Accent, Creta 5-...', 'hyundai', '1691582571.png', 1, '2023-08-09 07:02:51', '2023-08-09 07:02:51'),
(20, NULL, NULL, 'Infiniti', 'Q50, QX60, QX50,...', 'infiniti', '1691582602.webp', 1, '2023-08-09 07:03:22', '2023-08-09 07:03:22'),
(21, NULL, NULL, 'JAC', 'J7, JS3, JS4, S4', 'jac', '1691582636.png', 1, '2023-08-09 07:03:56', '2023-08-09 07:03:56'),
(22, NULL, NULL, 'Jaguar', 'F Pace', 'jaguar', '1691582673.png', 1, '2023-08-09 07:04:33', '2023-08-09 07:04:33'),
(23, NULL, NULL, 'Jeep', 'Wrangler Unlimit...', 'jeep', '1691582707.png', 1, '2023-08-09 07:05:07', '2023-08-09 07:05:07'),
(24, NULL, NULL, 'Kia', 'Sportage, Seltos...', 'kia', '1691582742.png', 1, '2023-08-09 07:05:42', '2023-08-09 07:05:42'),
(25, NULL, NULL, 'Lamborghini', 'Huracan Evo Spyd...', 'lamborghini', '1691582770.png', 1, '2023-08-09 07:06:10', '2023-08-09 07:06:10'),
(26, NULL, NULL, 'Land Rover', 'Range Rover Spor...', 'land-rover', '1691582812.webp', 1, '2023-08-09 07:06:52', '2023-08-09 07:06:52'),
(27, NULL, NULL, 'Lexus', 'IS Series, LX 60...', 'lexus', '1691582842.png', 1, '2023-08-09 07:07:22', '2023-08-09 07:07:22'),
(28, NULL, NULL, 'Lincoln', 'Navigator', 'lincoln', '1691582875.png', 1, '2023-08-09 07:07:55', '2023-08-09 07:07:55'),
(29, NULL, NULL, 'Maserati', 'Levante, Quattro...', 'maserati', '1691582919.png', 1, '2023-08-09 07:08:39', '2023-08-09 07:08:39'),
(30, NULL, NULL, 'Mazda', '6, CX5, 3 Sedan,...', 'mazda', '1691582947.png', 1, '2023-08-09 07:09:07', '2023-08-09 07:09:07'),
(31, NULL, NULL, 'McLaren', '570S Spyder, 720...', 'mclaren', '1691582979.png', 1, '2023-08-09 07:09:39', '2023-08-09 07:09:39'),
(32, NULL, NULL, 'Mercedes Benz', 'AMG G63, C300, C...', 'mercedes-benz', '1691583010.webp', 1, '2023-08-09 07:10:10', '2023-08-09 07:10:10'),
(33, NULL, NULL, 'MG', 'ZS, 5, GT, RX8, ...', 'mg', '1691583053.png', 1, '2023-08-09 07:10:53', '2023-08-09 07:10:53'),
(34, NULL, NULL, 'Mini', 'Cooper, Cooper S...', 'mini', '1691583084.png', 1, '2023-08-09 07:11:24', '2023-08-09 07:11:24'),
(35, NULL, NULL, 'Mitsubishi', 'Attrage, ASX, Pa...', 'mitsubishi', '1691583137.png', 1, '2023-08-09 07:12:17', '2023-08-09 07:12:17'),
(36, NULL, NULL, 'Nissan', 'Sunny, Patrol, P...', 'nissan', '1691583173.png', 1, '2023-08-09 07:12:53', '2023-08-09 07:12:53'),
(37, NULL, NULL, 'Opel', 'Zafira 9S, Zafir...', 'opel', '1691583205.webp', 1, '2023-08-09 07:13:25', '2023-08-09 07:13:25'),
(38, NULL, NULL, 'Peugeot', '3008, 508, 2008,...', 'peugeot', '1691583249.png', 1, '2023-08-09 07:14:09', '2023-08-09 07:14:09'),
(39, NULL, NULL, 'Polaris', 'Slingshot R Limi...', 'polaris', '1691583278.webp', 1, '2023-08-09 07:14:38', '2023-08-09 07:14:38'),
(40, NULL, NULL, 'Porsche', 'Cayenne Coupe, M...', 'porsche', '1691583317.png', 1, '2023-08-09 07:15:17', '2023-08-09 07:15:17'),
(41, NULL, NULL, 'Renault', 'Duster, Symbol, ...', 'renault', '1691583355.png', 1, '2023-08-09 07:15:55', '2023-08-09 07:15:55'),
(42, NULL, NULL, 'Rolls Royce', 'Dawn, Cullinan, ...', 'rolls-royce', '1691583390.png', 1, '2023-08-09 07:16:30', '2023-08-09 07:16:30'),
(43, NULL, NULL, 'Suzuki', 'Ciaz, Baleno, Er...', 'suzuki', '1691583426.png', 1, '2023-08-09 07:17:06', '2023-08-09 07:17:06'),
(44, NULL, NULL, 'Tesla', 'Model 3 Standard...', 'tesla', '1691583461.png', 1, '2023-08-09 07:17:41', '2023-08-09 07:17:41'),
(45, NULL, NULL, 'Toyota', 'Corolla, Rush, Y...', 'toyota', '1691583488.webp', 1, '2023-08-09 07:18:08', '2023-08-09 07:18:08'),
(46, NULL, NULL, 'Volkswagen', 'Teramont, T-Roc,...', 'volkswagen', '1691584311.png', 1, '2023-08-09 07:18:49', '2023-08-10 11:26:18');

-- --------------------------------------------------------

--
-- Table structure for table `cancellations`
--

CREATE TABLE `cancellations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cancellation_policy` text COLLATE utf8mb4_unicode_ci,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cancellations`
--

INSERT INTO `cancellations` (`id`, `cancellation_policy`, `reason`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, '<p>Before cancelling the order, kindly read thoroughly our following terms &amp; conditions:</p><ol><li>Once you submit this form you agree to cancel the selected item(s) in your order. We will be unable to retrieve your order once it is cancelled.</li><li>Once you confirm your item(s) cancellation, we will process your refund within 24 hours, provided the item(s) has not been handed over to the logistics partner yet. Please note that, if your item has already been handed over to the logistics partner we will be unable to proceed with your cancellation request and we will inform you accordingly.</li><li>If you are cancelling your order partially, ie. not all the items in your order, then we will be unable to refund you the shipping fee.</li><li>Once your item(s) has been successfully cancelled you will receive a notification from us with your refund summary</li></ol>', 'Change/combine order', NULL, 1, '2023-01-05 14:58:47', '2023-01-05 15:16:07'),
(2, NULL, 'Delivery time is too long', NULL, 1, '2023-01-05 15:06:28', '2023-01-05 15:06:28'),
(3, NULL, 'Duplicate order', NULL, 1, '2023-01-05 15:06:40', '2023-01-05 15:57:00'),
(4, NULL, 'Change of Delivery Address', NULL, 1, '2023-01-05 15:07:03', '2023-01-05 15:56:18'),
(5, NULL, 'Shipping Fees', NULL, 1, '2023-01-05 15:07:17', '2023-01-05 15:55:33'),
(6, NULL, 'Change of mind', NULL, 1, '2023-01-05 15:07:31', '2023-01-05 15:53:28'),
(7, NULL, 'Forgot to use voucher/voucher issue', NULL, 1, '2023-01-05 15:08:04', '2023-01-05 15:53:03'),
(8, NULL, 'Decided for alternative product', NULL, 1, '2023-01-05 15:08:23', '2023-01-05 15:52:12'),
(9, NULL, 'Found cheaper elsewhere', NULL, 1, '2023-01-05 15:08:43', '2023-01-05 15:51:06'),
(10, NULL, 'Change Payment method', NULL, 1, '2023-01-05 15:09:00', '2023-01-05 16:00:25');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(50) DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_variantion_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_category_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT '1',
  `price` int(11) DEFAULT NULL,
  `discount` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'custom how much save money',
  `discounted_price` double DEFAULT NULL,
  `total` int(11) NOT NULL,
  `attribute` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_id_checkbox` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `car_bookings`
--

CREATE TABLE `car_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `car_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_enabled` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dropoff_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_bookings`
--

INSERT INTO `car_bookings` (`id`, `car_id`, `vendor_id`, `user_id`, `car_name`, `slug`, `name`, `email`, `whatsapp_enabled`, `contact`, `pickup_location`, `dropoff_location`, `pickup_date`, `pickup_time`, `return_date`, `return_time`, `created_at`, `updated_at`) VALUES
(1, '1', '10', '12', 'Nissan Xterra 2023', 'nissan-xterra-iid-1', 'Abdul Qadeer', NULL, NULL, '03058875502', 'Airport Terminal 1, Arrival - Dubai - United Arab Emirates', 'JLT Cluster X - Sheikh Zayed Road - Dubai - United Arab Emirates', '2024-06-01', '11:00', NULL, NULL, '2024-06-01 00:58:40', '2024-06-01 00:58:40'),
(3, '54', '39', '12', 'Kia Carens 2024', 'kia-carens', 'Abdul Qadeer', 'aq.developer007@gmail.com', '1', '02315154', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-04 18:46:32', '2024-06-04 18:46:32'),
(4, '30', '39', '12', 'Mercedes Benz s580 2022', 'mercedes-benz-s580', 'Abdul Qadeer', 'aq.developer007@gmail.com', NULL, '332323', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-04 18:57:41', '2024-06-04 18:57:41'),
(5, '54', '39', '12', 'Kia Carens 2024', 'kia-carens', 'Abdul Qadeer', 'aq.developer007@gmail.com', '1', '03058875502', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-12 17:15:57', '2024-06-12 17:15:57');

-- --------------------------------------------------------

--
-- Table structure for table `car_with_drivers`
--

CREATE TABLE `car_with_drivers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `make_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passengers` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `luggage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimunm_hours_booking` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minimunm_hours_booking_charges` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_hour_minimum_charges` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maximunm_hours_booking` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maximunm_hours_booking_charges` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_hour_maximum_charges` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `airport_transfer_from_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `airport_transfer_from_to_charges` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_charges` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transfer_city_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transfer_city_charges` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_city_to_city_charges` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_features` longtext COLLATE utf8mb4_unicode_ci,
  `specs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doors` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transmission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fuel_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_with_drivers`
--

INSERT INTO `car_with_drivers` (`id`, `user_id`, `brand_name`, `model_name`, `make_year`, `vehicle_type`, `category_type`, `service_type`, `slug`, `passengers`, `luggage`, `minimunm_hours_booking`, `minimunm_hours_booking_charges`, `additional_hour_minimum_charges`, `maximunm_hours_booking`, `maximunm_hours_booking_charges`, `additional_hour_maximum_charges`, `airport_transfer_from_to`, `airport_transfer_from_to_charges`, `extra_charges`, `transfer_city_name`, `transfer_city_charges`, `from_city`, `to_city`, `from_city_to_city_charges`, `car_features`, `specs`, `doors`, `transmission`, `fuel_type`, `city`, `registration_card`, `images`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, '10', 'Nissan', 'Xterra', '2023', 'Suv', 'Standard', 'Airport Transport', 'nissan-xterra-iid-1', '7', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dubai', '220', 'Dubai', 'Abu Dhabi', '550', '', 'Euro Specs', '4', 'Auto', 'Petrol', 'Dubai', '1716998396.webp', '[\"1717169120_ZzeCTt.webp\"]', '1', '<h3><strong>WHY CHOOSE THE NISSAN XTERRA 2023</strong></h3><ul><li>Rugged versatility: The Nissan Xterra is built for adventure and off-road capability</li><li>Commanding presence: A robust and muscular exterior design stands out on any terrain</li><li>Spacious and practical: Ample cargo space and comfortable seating for all occupants</li><li>Reliable performance: Powerful engine and capable drivetrain for challenging terrains</li><li>Ready for exploration: The Nissan Xterra is your reliable companion on adventurous journeys</li></ul><h3><strong>SERVICES WE PROVIDE</strong></h3><ul><li><strong>Point-to-point Transfers:</strong> We offer non-stop, one-way chauffeured car service in Dubai. Bookings can include inter-emirate transfers, hotel transfers, client transportation Basically, any one-way travel from point A in Dubai to point B across the UAE in our range of vehicles.</li></ul><p>&nbsp;</p><ul><li><a href=\"https://www.oneclickdrive.com/dubai-airport-transfer\"><strong>Airport Transfers:</strong></a> Our booking team ensures that you are picked you up on time for arrivals before your flight check-in time at DXB / DWC, AUH, SHJ or any other airport or port in the UAE. Our chauffeurs also pick up guests from the arrival terminal holding up a name card.</li></ul><p>&nbsp;</p><ul><li><a href=\"https://www.oneclickdrive.com/chauffeur-service-dubai\"><strong>Hourly Chauffeur Service:</strong></a> Professional chauffeured car service for a number of hours based on your requirement. It can start from your choice of location within the emirates. Suitable for inter-emirate day trips, hosting guests, client meetings, escorting VIP guests and so on.</li></ul><p>&nbsp;</p><ul><li><strong>Event Transportation:</strong> Focusing on quality control and brand representation, we provide full end-to-end ground transportation service for events of any size in Dubai. A dedicated operations manager is assigned to your planned events with our uniformed chauffeurs.</li></ul><p>&nbsp;</p><ul><li><strong>Financial Roadshows:</strong> Our proficient team has a keen understanding of UAE\'s transport network and traffic regulations. We have managed high-profile roadshows for global clients efficiently. Our pre-planned itineraries follow through accurately yet able to accommodate last minute changes.<br>&nbsp;</li></ul>', '2024-05-29 16:59:56', '2024-05-31 21:25:20'),
(3, '10', 'Bentley', 'Flying Spur', '2022', 'Sedan', 'Luxury', 'Chauffeur Service', 'bentley-flying-spur-iid-3', '5', '5', '5', '3000', '500', '10', '4000', '700', NULL, NULL, NULL, 'Dubai', NULL, NULL, NULL, NULL, 'Temperature Controlled Seats,Built-in-GPS,Reverse Camera,Touchscreen LCD,Tinted Windows,Paddle Shift(Triptronic),Powered Tailgate,LCD Screens,Leather Seats,Gesture Control,Push Button Ignition,Front Air Bags,Bluetooth,Premium Audio,Fabric Seats', 'Asia Specs', '4', 'Auto', 'Petrol', 'Abu Dhabi', '1716998813.webp', '[\"1717169143_ezjyYH.webp\"]', '1', '<h3>WHY CHOOSE THE BENTLEY FLYING SPUR 2022</h3><p>&nbsp;</p><ul><li>Powerful 6.0-liter W12 engine and air suspension for a smooth ride</li><li>Iconic Bentley design with timeless elegance and eye-catching alloy wheels</li><li>Handcrafted leather interior and exquisite wood veneer accents.</li><li>Impressive handling and stability, ensuring a confident drive on any road</li><li>Digital HUD and Surround View Camera for a sophisticated driving experience</li></ul><p>&nbsp;</p><h3>SERVICES WE PROVIDE</h3><h4><strong>Point-to-point Transfers</strong></h4><p>We offer non-stop, one-way chauffeured car service in Dubai. Bookings can include inter-emirate transfers, hotel transfers, client transportation Basically, any one-way travel from point A in Dubai to point B across the UAE in our range of vehicles.</p><h4><strong>Airport Transfers</strong></h4><p>Our booking team ensures that you are picked you up on time for arrivals before your flight check-in time at DXB / DWC, AUH, SHJ or any other airport or port in the UAE. Our chauffeurs also pick up guests from the arrival terminal holding up a name card.</p><h4><strong>Hourly Chauffeur Service</strong></h4><p>Professional chauffeured car service for a number of hours based on your requirement. It can start from your choice of location within the emirates. Suitable for inter-emirate day trips, hosting guests, client meetings, escorting VIP guests and so on.</p><h4><strong>Event Transportation</strong></h4><p>Focusing on quality control and brand representation, we provide full end-to-end ground transportation service for events of any size in Dubai. A dedicated operations manager is assigned to your planned events with our uniformed chauffeurs.</p><h4><strong>Financial Roadshows</strong></h4><p>We have managed high-profile roadshows for global clients and have an extensive fleet equipped with the latest technology to facilitate on-the-fly route adjustments as well as highly-trained chauffeurs to choose from.</p><h4><strong>Wedding Transportation</strong></h4><p>On your big day, be picked up and dropped off in the car of your choice. Drive in style and luxury to your wedding venue and ease transportation for your guests with professionally trained chauffeurs.</p><p>Listed by</p><p><img src=\"https://www.oneclickdrive.com/application/views/img/company/wellcare-limo-cars4.png?height=160&amp;width=auto&amp;fit=resize\" alt=\"logo\"></p><p>&nbsp;</p><p>Get Quote</p><h4>This vehicle is also available<br>for airport transfers</h4><p><a href=\"https://www.oneclickdrive.com/dubai-airport-transfer\">View Details</a></p><p><strong>The OneClickDrive Edge</strong></p><ul><li>All-inclusive rates with a professional chauffeur, fuel and salik (toll) charges</li><li>Service rendered by one of the region\'s best limousine service companies</li><li>Free upgrade if class of car booked isn\'t available</li><li>Free cancellation upto 48 hours from pick-up time</li><li>Trips starting at the airport include free meet and greet service</li><li>Complimentary 90 minutes waiting time at the airport</li><li>A brilliant experience – guaranteed!</li></ul><h4>MORE CHAUFFEURED CAR OPTIONS</h4><p>Select an emirate &nbsp;Select Emirate &nbsp;Dubai Abu Dhabi Sharjah Umm Al Quwain Ajman Al Ain Ras Al-Khaimah Fujairah&nbsp;</p><p>Select a Car Service Select Car BMW 735 Li 2024 Land Rover Range Rover Vogue HSE 2024 Toyota Coaster 2022 King Long 35 Seater 2022 King Long 54 Seater Chevrolet Impala 2022 Infiniti QX60 Kia Carnival 2023 Mazda CX 9 2023 Nissan Xterra 2023 Toyota Previa Citroen SpaceTourer XL 2023 Mercedes Benz E 200 2022 BMW 730 Li 2022 Chevrolet Suburban 2023 GMC Yukon XL 2023 Mercedes Benz V 250 2023 Nissan Patrol 2023 Toyota Granvia 2023 Cadillac Escalade ESV 2020 Mercedes Benz S 500 Cadillac Escalade ESV 2024 Mercedes Benz S 500 2023 Mercedes Benz G 63 2023 Mercedes Benz Maybach S 580 2023 Mercedes Benz Sprinter 2022 (19 pax) Mercedes Benz Sprinter 2023 (12pax) Mercedes Benz V250 Premium Class 2024 Hyundai H1 (11 pax) Toyota Hiace 2023-11 pax Toyota Hiace-14 pax Mercedes Benz Sprinter 2022 (16pax) Mercedes Benz Sprinter 2022 (8pax) Rolls Royce Cullinan 2023 Toyota Innova 2022 Audi A8 2022 Chevrolet Suburban 2020 Hyundai Staria 2023 Hyundai H1 (8 pax) 2022 Infiniti QX 60 2024 Range Rover Vogue Autobiography Lexus ES 300 Hybrid 2023 Mercedes-Benz Maybach S 680 2024 Nissan Patrol Titanium 2022 Toyota Highlander 2024 Rolls Royce Ghost 2023 Land Rover Defender X V6 2023&nbsp;</p><p>&nbsp;</p>', '2024-05-29 17:06:53', '2024-05-31 21:33:45'),
(4, '10', 'BMW', '7 Series', '2022', 'Sedan', 'Luxury', 'Point to Point Transfer', 'bmw-7-series-iid-4', '4', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sharjah', '350', 'Dubai', 'Abu Dhabi', '700', '', 'Euro Specs', '4', 'Auto', 'Petrol', 'Sharjah', '1716999782.webp', '[\"1717169160_paXltI.webp\"]', '1', '<h3><strong>WHY CHOOSE THE BMW 730 LI 2022</strong></h3><ul><li>Unparalleled luxury: BMW 730 Li for exceptional journeys</li><li>Powerful performance: Twin-turbo 3.0L engine</li><li>Elegantly spacious: Comfort for five passengers</li><li>Cutting-edge safety: Advanced driver assistance</li><li>All-weather confidence: BMWs xDrive system</li></ul><h3><strong>SERVICES WE PROVIDE</strong></h3><ul><li><strong>Point-to-point Transfers:</strong> We offer non-stop, one-way chauffeured car service in Dubai. Bookings can include inter-emirate transfers, hotel transfers, client transportation Basically, any one-way travel from point A in Dubai to point B across the UAE in our range of vehicles.</li></ul><p>&nbsp;</p><ul><li><a href=\"https://www.oneclickdrive.com/dubai-airport-transfer\"><strong>Airport Transfers:</strong></a> Our booking team ensures that you are picked you up on time for arrivals before your flight check-in time at DXB / DWC, AUH, SHJ or any other airport or port in the UAE. Our chauffeurs also pick up guests from the arrival terminal holding up a name card.</li></ul><p>&nbsp;</p><ul><li><a href=\"https://www.oneclickdrive.com/chauffeur-service-dubai\"><strong>Hourly Chauffeur Service:</strong></a> Professional chauffeured car service for a number of hours based on your requirement. It can start from your choice of location within the emirates. Suitable for inter-emirate day trips, hosting guests, client meetings, escorting VIP guests and so on.</li></ul><p>&nbsp;</p><ul><li><strong>Event Transportation:</strong> Focusing on quality control and brand representation, we provide full end-to-end ground transportation service for events of any size in Dubai. A dedicated operations manager is assigned to your planned events with our uniformed chauffeurs.</li></ul><p>&nbsp;</p><ul><li><strong>Financial Roadshows:</strong> Our proficient team has a keen understanding of UAE\'s transport network and traffic regulations. We have managed high-profile roadshows for global clients efficiently. Our pre-planned itineraries follow through accurately yet able to accommodate last minute changes.</li></ul>', '2024-05-29 17:23:02', '2024-05-31 23:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `city`, `created_at`, `updated_at`) VALUES
(1, '1', 'Johor Bahru', '2022-11-30 16:27:17', '2022-11-30 16:27:17'),
(2, '1', 'Tebrau', '2022-11-30 16:28:33', '2022-11-30 16:28:33'),
(3, '1', 'Pasir Gudang', '2022-11-30 16:28:55', '2022-11-30 16:28:55'),
(4, '1', 'Bukit Indah', '2022-11-30 16:29:04', '2022-11-30 16:29:04'),
(5, '1', 'Skudai', '2022-11-30 16:29:13', '2022-11-30 16:29:13'),
(6, '1', 'Kluang', '2022-11-30 16:29:22', '2022-11-30 16:29:22'),
(7, '1', 'Batu Pahat', '2022-11-30 16:29:30', '2022-11-30 16:29:30'),
(8, '1', 'Muar', '2022-11-30 16:29:40', '2022-11-30 16:29:40'),
(9, '1', 'Ulu Tiram', '2022-11-30 16:29:47', '2022-11-30 16:29:47'),
(10, '1', 'Senai', '2022-11-30 16:29:54', '2022-11-30 16:29:54'),
(11, '1', 'Segamat', '2022-11-30 16:30:02', '2022-11-30 16:30:02'),
(12, '1', 'Kulai', '2022-11-30 16:30:09', '2022-11-30 16:30:09'),
(13, '1', 'Kota Tinggi', '2022-11-30 16:30:16', '2022-11-30 16:30:16'),
(14, '1', 'Pontian Kechil', '2022-11-30 16:30:23', '2022-11-30 16:30:23'),
(15, '1', 'Tangkak', '2022-11-30 16:30:32', '2022-11-30 16:30:32'),
(16, '1', 'Bukit Bakri', '2022-11-30 16:30:41', '2022-11-30 16:30:41'),
(17, '1', 'Yong Peng', '2022-11-30 16:30:49', '2022-11-30 16:30:49'),
(18, '1', 'Pekan Nenas', '2022-11-30 16:30:57', '2022-11-30 16:30:57'),
(19, '1', 'Labis', '2022-11-30 16:31:05', '2022-11-30 16:31:05'),
(20, '1', 'Mersing', '2022-11-30 16:31:13', '2022-11-30 16:31:13'),
(21, '1', 'Simpang Renggam', '2022-11-30 16:31:21', '2022-11-30 16:31:21'),
(22, '1', 'Parit Raja', '2022-11-30 16:31:29', '2022-11-30 16:31:29'),
(23, '1', 'Kelapa Sawit', '2022-11-30 16:31:36', '2022-11-30 16:31:36'),
(24, '1', 'Buloh Kasap', '2022-11-30 16:31:44', '2022-11-30 16:31:44'),
(25, '1', 'Chaah', '2022-11-30 16:31:52', '2022-11-30 16:31:52'),
(26, '2', 'Sungai Petani', '2022-11-30 16:33:52', '2022-11-30 16:33:52'),
(27, '2', 'Alor Setar', '2022-11-30 16:34:26', '2022-11-30 16:34:26'),
(28, '2', 'Kulim', '2022-11-30 16:34:34', '2022-11-30 16:34:34'),
(29, '2', 'Jitra / Kubang Pasu', '2022-11-30 16:34:44', '2022-11-30 16:34:44'),
(30, '2', 'Baling', '2022-11-30 16:34:52', '2022-11-30 16:34:52'),
(31, '2', 'Pendang', '2022-11-30 16:35:00', '2022-11-30 16:35:00'),
(32, '2', 'Langkawi', '2022-11-30 16:35:07', '2022-11-30 16:35:07'),
(33, '2', 'Yan', '2022-11-30 16:35:13', '2022-11-30 16:35:13'),
(34, '2', 'Sik', '2022-11-30 16:35:19', '2022-11-30 16:35:19'),
(35, '2', 'Kuala Nerang', '2022-11-30 16:35:26', '2022-11-30 16:35:26'),
(36, '2', 'Pokok Sena', '2022-11-30 16:35:32', '2022-11-30 16:35:32'),
(37, '2', 'Bandar Baharu', '2022-11-30 16:35:40', '2022-11-30 16:35:40'),
(38, '3', 'Kota Bharu', '2022-11-30 16:37:51', '2022-11-30 16:37:51'),
(39, '3', 'Pangkal Kalong', '2022-11-30 16:38:03', '2022-11-30 16:38:03'),
(40, '3', 'Tanah Merah', '2022-11-30 16:38:11', '2022-11-30 16:38:11'),
(41, '3', 'Peringat', '2022-11-30 16:38:18', '2022-11-30 16:38:18'),
(42, '3', 'Wakaf Baru', '2022-11-30 16:38:25', '2022-11-30 16:38:25'),
(43, '3', 'Kadok', '2022-11-30 16:38:32', '2022-11-30 16:38:32'),
(44, '3', 'Pasir Mas', '2022-11-30 16:38:44', '2022-11-30 16:38:44'),
(45, '3', 'Gua Musang', '2022-11-30 16:38:52', '2022-11-30 16:38:52'),
(46, '3', 'Kuala Krai', '2022-11-30 16:38:59', '2022-11-30 16:38:59'),
(47, '3', 'Tumpat', '2022-11-30 16:39:06', '2022-11-30 16:39:06'),
(48, '4', 'Bandaraya Melaka', '2022-11-30 16:40:19', '2022-11-30 16:40:19'),
(49, '4', 'Bukit Baru', '2022-11-30 16:40:27', '2022-11-30 16:40:27'),
(50, '4', 'Ayer Keroh', '2022-11-30 16:40:38', '2022-11-30 16:40:38'),
(51, '4', 'Klebang', '2022-11-30 16:40:46', '2022-11-30 16:40:46'),
(52, '4', 'Masjid Tanah', '2022-11-30 16:40:55', '2022-11-30 16:40:55'),
(53, '4', 'Sungai Udang', '2022-11-30 16:41:02', '2022-11-30 16:41:02'),
(54, '4', 'Batu Berendam', '2022-11-30 16:41:09', '2022-11-30 16:41:09'),
(55, '4', 'Alor Gajah', '2022-11-30 16:41:16', '2022-11-30 16:41:16'),
(56, '4', 'Bukit Rambai', '2022-11-30 16:41:24', '2022-11-30 16:41:24'),
(57, '4', 'Ayer Molek', '2022-11-30 16:41:31', '2022-11-30 16:41:31'),
(58, '4', 'Bemban\"', '2022-11-30 16:41:39', '2022-11-30 16:41:39'),
(59, '4', 'Kuala Sungai Baru', '2022-11-30 16:41:46', '2022-11-30 16:41:46'),
(60, '4', 'Pulau Sebang', '2022-11-30 16:41:55', '2022-11-30 16:41:55'),
(61, '4', 'Jasin', '2022-11-30 16:42:03', '2022-11-30 16:42:03'),
(62, '5', 'Seremban', '2022-11-30 16:43:00', '2022-11-30 16:43:00'),
(63, '5', 'Port Dickson', '2022-11-30 16:43:08', '2022-11-30 16:43:08'),
(64, '5', 'Nilai', '2022-11-30 16:43:16', '2022-11-30 16:43:16'),
(65, '5', 'Bahau', '2022-11-30 16:43:22', '2022-11-30 16:43:22'),
(66, '5', 'Tampin', '2022-11-30 16:43:28', '2022-11-30 16:43:28'),
(67, '5', 'Kuala Pilah', '2022-11-30 16:43:35', '2022-11-30 16:43:35'),
(68, '6', 'Kuantan', '2022-11-30 16:44:18', '2022-11-30 16:44:18'),
(69, '6', 'Temerloh', '2022-11-30 16:44:26', '2022-11-30 16:44:26'),
(70, '6', 'Bentong', '2022-11-30 16:44:33', '2022-11-30 16:44:33'),
(71, '6', 'Mentakab', '2022-11-30 16:44:40', '2022-11-30 16:44:40'),
(72, '6', 'Raub', '2022-11-30 16:44:49', '2022-11-30 16:44:49'),
(73, '6', 'Jerantut', '2022-11-30 16:44:55', '2022-11-30 16:44:55'),
(74, '6', 'Pekan', '2022-11-30 16:45:02', '2022-11-30 16:45:02'),
(75, '6', 'Kuala Lipis', '2022-11-30 16:45:11', '2022-11-30 16:45:11'),
(76, '6', 'Bandar Jengka', '2022-11-30 16:45:18', '2022-11-30 16:45:18'),
(77, '6', 'Bukit Tinggi', '2022-11-30 16:45:26', '2022-11-30 16:45:26'),
(78, '7', 'Ipoh', '2022-11-30 16:45:48', '2022-11-30 16:45:48'),
(79, '7', 'Taiping', '2022-11-30 16:46:04', '2022-11-30 16:46:04'),
(80, '7', 'Sitiawan', '2022-11-30 16:46:12', '2022-11-30 16:46:12'),
(81, '7', 'Simpang Empat', '2022-11-30 16:46:18', '2022-11-30 16:46:18'),
(82, '7', 'Teluk Intan', '2022-11-30 16:46:27', '2022-11-30 16:46:27'),
(83, '7', 'Batu Gajah', '2022-11-30 16:46:34', '2022-11-30 16:46:34'),
(84, '7', 'Lumut', '2022-11-30 16:46:41', '2022-11-30 16:46:41'),
(85, '7', 'Kampung Koh', '2022-11-30 16:46:49', '2022-11-30 16:46:49'),
(86, '7', 'Kuala Kangsar', '2022-11-30 16:46:56', '2022-11-30 16:46:56'),
(87, '7', 'Sungai Siput Utara', '2022-11-30 16:47:03', '2022-11-30 16:47:03'),
(88, '7', 'Tapah', '2022-11-30 16:47:12', '2022-11-30 16:47:12'),
(89, '7', 'Bidor', '2022-11-30 16:47:19', '2022-11-30 16:47:19'),
(90, '7', 'Parit Buntar', '2022-11-30 16:47:26', '2022-11-30 16:47:26'),
(91, '7', 'Ayer Tawar', '2022-11-30 16:47:33', '2022-11-30 16:47:33'),
(92, '7', 'Bagan Serai', '2022-11-30 16:47:40', '2022-11-30 16:47:40'),
(93, '7', 'Tanjung Malim', '2022-11-30 16:47:48', '2022-11-30 16:47:48'),
(94, '7', 'Lawan Kuda Baharu', '2022-11-30 16:47:55', '2022-11-30 16:47:55'),
(95, '7', 'Pantai Remis', '2022-11-30 16:48:05', '2022-11-30 16:48:05'),
(96, '7', 'Kampar', '2022-11-30 16:48:12', '2022-11-30 16:48:12'),
(97, '8', 'Kangar', '2022-11-30 16:48:33', '2022-11-30 16:48:33'),
(98, '8', 'Kuala Perlis', '2022-11-30 16:48:46', '2022-11-30 16:48:46'),
(99, '9', 'Bukit Mertajam', '2022-11-30 16:49:56', '2022-11-30 16:49:56'),
(100, '9', 'Georgetown', '2022-11-30 16:50:05', '2022-11-30 16:50:05'),
(101, '9', 'Sungai Ara', '2022-11-30 16:50:12', '2022-11-30 16:50:12'),
(102, '9', 'Gelugor', '2022-11-30 16:50:20', '2022-11-30 16:50:20'),
(103, '9', 'Ayer Itam', '2022-11-30 16:50:30', '2022-11-30 16:50:30'),
(104, '9', 'Butterworth', '2022-11-30 16:50:38', '2022-11-30 16:50:38'),
(105, '9', 'Perai', '2022-11-30 16:50:47', '2022-11-30 16:50:47'),
(106, '9', 'Nibong Tebal', '2022-11-30 16:50:55', '2022-11-30 16:50:55'),
(107, '9', 'Permatang Kucing', '2022-11-30 16:51:03', '2022-11-30 16:51:03'),
(108, '9', 'Tanjung Tokong', '2022-11-30 16:51:11', '2022-11-30 16:51:11'),
(109, '9', 'Kepala Batas', '2022-11-30 16:51:21', '2022-11-30 16:51:21'),
(110, '9', 'Tanjung Bungah', '2022-11-30 16:51:29', '2022-11-30 16:51:29'),
(111, '9', 'Juru', '2022-11-30 16:51:37', '2022-11-30 16:51:37'),
(112, '10', 'Kota Kinabalu', '2022-11-30 16:52:23', '2022-11-30 16:52:23'),
(113, '10', 'Sandakan', '2022-11-30 16:52:40', '2022-11-30 16:52:40'),
(114, '10', 'Tawau', '2022-11-30 16:52:49', '2022-11-30 16:52:49'),
(115, '10', 'Lahad Datu', '2022-11-30 16:52:56', '2022-11-30 16:52:56'),
(116, '10', 'Keningau', '2022-11-30 16:53:04', '2022-11-30 16:53:04'),
(117, '10', 'Putatan', '2022-11-30 16:53:11', '2022-11-30 16:53:11'),
(118, '10', 'Donggongon', '2022-11-30 16:53:19', '2022-11-30 16:53:19'),
(119, '10', 'Semporna', '2022-11-30 16:53:25', '2022-11-30 16:53:25'),
(120, '10', 'Kudat', '2022-11-30 16:53:33', '2022-11-30 16:53:33'),
(121, '10', 'Kunak', '2022-11-30 16:53:40', '2022-11-30 16:53:40'),
(122, '10', 'Papar', '2022-11-30 16:53:46', '2022-11-30 16:53:46'),
(123, '10', 'Ranau', '2022-11-30 16:53:57', '2022-11-30 16:53:57'),
(124, '10', 'Beaufort', '2022-11-30 16:54:04', '2022-11-30 16:54:04'),
(125, '10', 'Kinarut', '2022-11-30 16:54:10', '2022-11-30 16:54:10'),
(126, '10', 'Kota Belud', '2022-11-30 16:54:17', '2022-11-30 16:54:17'),
(127, '11', 'Kuching', '2022-11-30 16:54:37', '2022-11-30 16:54:37'),
(128, '11', 'Miri', '2022-11-30 16:54:46', '2022-11-30 16:54:46'),
(129, '11', 'Sibu', '2022-11-30 16:54:53', '2022-11-30 16:54:53'),
(130, '11', 'Bintulu', '2022-11-30 16:55:23', '2022-11-30 16:55:23'),
(131, '11', 'Limbang', '2022-11-30 16:55:30', '2022-11-30 16:55:30'),
(132, '11', 'Sarikei', '2022-11-30 16:55:37', '2022-11-30 16:55:37'),
(133, '11', 'Sri Aman', '2022-11-30 16:55:44', '2022-11-30 16:55:44'),
(134, '11', 'Kapit', '2022-11-30 16:55:50', '2022-11-30 16:55:50'),
(135, '11', 'Batu Delapan Bazaar', '2022-11-30 16:55:58', '2022-11-30 16:55:58'),
(136, '11', 'Kota Samarahan', '2022-11-30 16:56:05', '2022-11-30 16:56:05'),
(137, '12', 'Subang Jaya', '2022-11-30 16:56:22', '2022-11-30 16:56:22'),
(138, '12', 'Klang', '2022-11-30 16:56:29', '2022-11-30 16:56:29'),
(139, '12', 'Ampang Jaya', '2022-11-30 16:56:37', '2022-11-30 16:56:37'),
(140, '12', 'Shah Alam', '2022-11-30 16:56:44', '2022-11-30 16:56:44'),
(141, '12', 'Petaling Jaya', '2022-11-30 16:56:52', '2022-11-30 16:56:52'),
(142, '12', 'Cheras', '2022-11-30 16:57:00', '2022-11-30 16:57:00'),
(143, '12', 'Kajang', '2022-11-30 16:57:06', '2022-11-30 16:57:06'),
(144, '12', 'Selayang Baru', '2022-11-30 16:57:14', '2022-11-30 16:57:14'),
(145, '12', 'Rawang', '2022-11-30 16:57:20', '2022-11-30 16:57:20'),
(146, '12', 'Taman Greenwood', '2022-11-30 16:57:29', '2022-11-30 16:57:29'),
(147, '12', 'Semenyih', '2022-11-30 16:57:35', '2022-11-30 16:57:35'),
(148, '12', 'Banting', '2022-11-30 16:57:42', '2022-11-30 16:57:42'),
(149, '12', 'Balakong', '2022-11-30 16:57:49', '2022-11-30 16:57:49'),
(150, '12', 'Gombak Setia', '2022-11-30 16:57:57', '2022-11-30 16:57:57'),
(151, '12', 'Kuala Selangor', '2022-11-30 16:58:04', '2022-11-30 16:58:04'),
(152, '12', 'Serendah', '2022-11-30 16:58:10', '2022-11-30 16:58:10'),
(153, '12', 'Bukit Beruntung', '2022-11-30 16:58:18', '2022-11-30 16:58:18'),
(154, '12', 'Pengkalan Kundang', '2022-11-30 16:58:26', '2022-11-30 16:58:26'),
(155, '12', 'Jenjarom', '2022-11-30 16:58:33', '2022-11-30 16:58:33'),
(156, '12', 'Sungai Besar', '2022-11-30 16:58:39', '2022-11-30 16:58:39'),
(157, '12', 'Batu Arang', '2022-11-30 16:58:47', '2022-11-30 16:58:47'),
(158, '12', 'Tanjung Sepat', '2022-11-30 16:58:54', '2022-11-30 16:58:54'),
(159, '12', 'Kuang', '2022-11-30 16:59:01', '2022-11-30 16:59:01'),
(160, '12', 'Kuala Kubu Baharu', '2022-11-30 16:59:08', '2022-11-30 16:59:08'),
(161, '12', 'Batang Berjuntai', '2022-11-30 16:59:15', '2022-11-30 16:59:15'),
(162, '12', 'Bandar Baru Salak Tinggi', '2022-11-30 16:59:24', '2022-11-30 16:59:24'),
(163, '12', 'Sekinchan', '2022-11-30 16:59:38', '2022-11-30 16:59:38'),
(164, '12', 'Sabak', '2022-11-30 16:59:44', '2022-11-30 16:59:44'),
(165, '12', 'Tanjung Karang', '2022-11-30 16:59:51', '2022-11-30 16:59:51'),
(166, '12', 'Beranang', '2022-11-30 16:59:59', '2022-11-30 16:59:59'),
(167, '12', 'Sungai Pelek', '2022-11-30 17:00:06', '2022-11-30 17:00:06'),
(168, '12', 'Sepang', '2022-11-30 17:00:13', '2022-11-30 17:00:13'),
(169, '13', 'Kuala Terengganu', '2022-11-30 17:00:34', '2022-11-30 17:00:34'),
(170, '13', 'Chukai', '2022-11-30 17:00:44', '2022-11-30 17:00:44'),
(171, '13', 'Dungun', '2022-11-30 17:00:51', '2022-11-30 17:00:51'),
(172, '13', 'Kerteh', '2022-11-30 17:00:59', '2022-11-30 17:00:59'),
(173, '13', 'Kuala Berang', '2022-11-30 17:01:07', '2022-11-30 17:01:07'),
(174, '13', 'Marang', '2022-11-30 17:01:15', '2022-11-30 17:01:15'),
(175, '13', 'Paka', '2022-11-30 17:01:22', '2022-11-30 17:01:22'),
(176, '13', 'Jerteh', '2022-11-30 17:01:29', '2022-11-30 17:01:29'),
(177, '14', 'Kuala Lumpur', '2022-11-30 17:01:50', '2022-11-30 17:01:50'),
(178, '14', 'Labuan', '2022-11-30 17:01:57', '2022-11-30 17:01:57'),
(179, '14', 'Putrajaya', '2022-11-30 17:02:06', '2022-11-30 17:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE `configurations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `copy_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_fee` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configurations`
--

INSERT INTO `configurations` (`id`, `copy_right`, `contact`, `email`, `address`, `map_link`, `short_description`, `shipping_fee`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'COPYRIGHTS ALL RIGHTS RESERVED 2022 BY LOTTI', '123456789', 'abc@gmail.com', 'Test Address', 'https://goo.gl/maps/k6131cCb6qKph3LGA', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh.</p>', '15', 'lotti-sxfewe', 10, 1, '2022-11-30 19:18:49', '2022-12-01 22:25:32');

-- --------------------------------------------------------

--
-- Table structure for table `contacted_cars`
--

CREATE TABLE `contacted_cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacted_cars`
--

INSERT INTO `contacted_cars` (`id`, `user_id`, `vendor_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, '12', '10', '1', '2023-10-16 11:49:27', '2023-10-16 11:49:27'),
(2, '12', '10', '2', '2023-10-17 13:07:57', '2023-10-17 13:07:57'),
(3, '6', '6', '11', '2023-10-26 12:01:56', '2023-10-26 12:01:56'),
(4, '32', '10', '13', '2024-03-27 00:24:00', '2024-03-27 00:24:00'),
(5, '10', '10', '13', '2024-03-27 01:33:28', '2024-03-27 01:33:28'),
(6, '33', '10', '13', '2024-03-28 00:57:59', '2024-03-28 00:57:59'),
(7, '35', '35', '15', '2024-05-28 18:31:13', '2024-05-28 18:31:13'),
(8, '12', '35', '15', '2024-05-28 18:33:39', '2024-05-28 18:33:39'),
(9, '12', '10', '14', '2024-05-28 18:37:42', '2024-05-28 18:37:42'),
(10, '10', '10', '14', '2024-05-29 00:14:20', '2024-05-29 00:14:20'),
(11, '39', '39', '51', '2024-06-11 17:18:04', '2024-06-11 17:18:04'),
(12, '10', '39', '53', '2024-06-12 00:47:32', '2024-06-12 00:47:32');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_variation_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` varchar(199) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `expiry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `free_shipping` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minimum_spend` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maximum_spend` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_items` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allowed_emails` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usage_limit_per_coupon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usage_limit_per_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usage_limit_items` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `product_id`, `product_variation_id`, `sub_category_id`, `coupon_code`, `discount_type`, `coupon_amount`, `percentage`, `expiry_date`, `free_shipping`, `minimum_spend`, `maximum_spend`, `sale_items`, `allowed_emails`, `usage_limit_per_coupon`, `usage_limit_per_user`, `usage_limit_items`, `description`, `status`, `created_at`, `updated_at`) VALUES
(4, NULL, NULL, '1,2', 'free-code', '1', '15', '0', '2023-02-16 16:36:44', NULL, '100', '5000', NULL, 'null', '10', '10', NULL, '<p>test</p>', 1, '2023-02-01 18:18:02', '2023-02-01 18:18:02');

-- --------------------------------------------------------

--
-- Table structure for table `define_product_variants`
--

CREATE TABLE `define_product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variant_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `questions` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `questions`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(7, 'Question 2', '<p>Answer 2</p>', '1', '2022-10-31 23:06:20', '2022-10-31 23:06:20'),
(9, 'Question 3', '<p>Answer3</p>', '1', '2022-11-01 22:38:52', '2022-11-04 05:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `image_title`, `image_slug`, `image_name`, `image_path`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'Home', '1667577984.jpg', NULL, 1, NULL, '2022-11-04 22:06:24', '2022-11-04 22:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `homes`
--

CREATE TABLE `homes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_title` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_content` longtext COLLATE utf8mb4_unicode_ci,
  `home_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `user_id`, `vendor_id`, `product_id`, `whatsapp`, `call`, `created_at`, `updated_at`) VALUES
(1, '10', '10', '2', '1', NULL, '2023-10-09 09:43:46', '2023-10-09 09:43:46'),
(2, NULL, '10', '1', '1', NULL, '2023-10-10 05:35:40', '2023-10-10 05:35:40'),
(3, NULL, '10', '1', '1', NULL, '2023-10-10 05:35:41', '2023-10-10 05:35:41'),
(4, '10', '10', '2', '1', NULL, '2023-10-10 11:40:05', '2023-10-10 11:40:05'),
(5, '10', '10', '2', '1', NULL, '2023-10-10 11:40:06', '2023-10-10 11:40:06'),
(6, '10', '10', '2', '1', NULL, '2023-10-10 11:40:07', '2023-10-10 11:40:07'),
(7, '10', '10', '2', '1', NULL, '2023-10-10 11:40:07', '2023-10-10 11:40:07'),
(8, '10', '10', '2', '1', NULL, '2023-10-10 11:40:07', '2023-10-10 11:40:07'),
(9, '10', '10', '2', '1', NULL, '2023-10-10 11:40:07', '2023-10-10 11:40:07'),
(10, '10', '10', '2', '1', NULL, '2023-10-10 11:40:08', '2023-10-10 11:40:08'),
(11, '10', '10', '2', '1', NULL, '2023-10-10 11:40:08', '2023-10-10 11:40:08'),
(12, '10', '10', '2', '1', NULL, '2023-10-10 11:40:08', '2023-10-10 11:40:08'),
(13, '10', '10', '2', '1', NULL, '2023-10-10 11:40:09', '2023-10-10 11:40:09'),
(14, '10', '10', '2', '1', NULL, '2023-10-10 11:40:09', '2023-10-10 11:40:09'),
(15, '10', '10', '2', '1', NULL, '2023-10-10 11:40:09', '2023-10-10 11:40:09'),
(16, '10', '10', '2', '1', NULL, '2023-10-10 11:40:09', '2023-10-10 11:40:09'),
(17, '10', '10', '2', '1', NULL, '2023-10-10 11:40:10', '2023-10-10 11:40:10'),
(18, '10', '10', '2', '1', NULL, '2023-10-11 13:24:54', '2023-10-11 13:24:54'),
(19, '10', '10', '2', '1', NULL, '2023-10-11 13:25:26', '2023-10-11 13:25:26'),
(20, '10', '10', '2', '1', NULL, '2023-10-11 13:25:54', '2023-10-11 13:25:54'),
(21, '10', '10', '2', '1', NULL, '2023-10-11 13:26:18', '2023-10-11 13:26:18'),
(22, '10', '10', '2', '1', NULL, '2023-10-11 13:28:39', '2023-10-11 13:28:39'),
(23, '10', '10', '2', '1', NULL, '2023-10-11 13:29:37', '2023-10-11 13:29:37'),
(24, '10', '10', '2', '1', NULL, '2023-10-11 13:29:52', '2023-10-11 13:29:52'),
(25, '10', '10', '2', '1', NULL, '2023-10-11 13:29:53', '2023-10-11 13:29:53'),
(26, '10', '10', '2', '1', NULL, '2023-10-11 13:29:53', '2023-10-11 13:29:53'),
(27, '10', '10', '2', '1', NULL, '2023-10-11 13:29:54', '2023-10-11 13:29:54'),
(28, '10', '10', '2', '1', NULL, '2023-10-11 13:29:54', '2023-10-11 13:29:54'),
(29, '10', '10', '2', '1', NULL, '2023-10-11 13:30:36', '2023-10-11 13:30:36'),
(30, '10', '10', '2', '1', NULL, '2023-10-11 13:31:48', '2023-10-11 13:31:48'),
(31, '10', '10', '1', '1', NULL, '2023-10-12 12:09:15', '2023-10-12 12:09:15'),
(32, '10', '10', '1', '1', NULL, '2023-10-12 12:09:27', '2023-10-12 12:09:27'),
(33, '10', '10', '1', '1', NULL, '2023-10-12 12:09:28', '2023-10-12 12:09:28'),
(34, '10', '10', '1', '1', NULL, '2023-10-12 12:09:28', '2023-10-12 12:09:28'),
(35, '10', '10', '1', '1', NULL, '2023-10-12 12:09:29', '2023-10-12 12:09:29'),
(36, '10', '10', '1', '1', NULL, '2023-10-12 12:09:29', '2023-10-12 12:09:29'),
(37, '10', '10', '1', '1', NULL, '2023-10-12 12:09:29', '2023-10-12 12:09:29'),
(38, '10', '10', '1', '1', NULL, '2023-10-12 12:09:30', '2023-10-12 12:09:30'),
(39, '10', '10', '1', '1', NULL, '2023-10-12 12:09:30', '2023-10-12 12:09:30'),
(40, '10', '10', '1', '1', NULL, '2023-10-12 12:15:57', '2023-10-12 12:15:57'),
(41, '10', '10', '1', '1', NULL, '2023-10-12 12:16:33', '2023-10-12 12:16:33'),
(42, '10', '10', '1', '1', NULL, '2023-10-12 12:17:05', '2023-10-12 12:17:05'),
(43, '10', '10', '1', '1', NULL, '2023-10-12 12:17:29', '2023-10-12 12:17:29'),
(44, '10', '10', '1', '1', NULL, '2023-10-12 12:17:40', '2023-10-12 12:17:40'),
(45, '10', '10', '1', '1', NULL, '2023-10-12 12:19:11', '2023-10-12 12:19:11'),
(46, '10', '10', '1', '1', NULL, '2023-10-12 12:19:24', '2023-10-12 12:19:24'),
(47, '10', '10', '1', '1', NULL, '2023-10-12 12:19:26', '2023-10-12 12:19:26'),
(48, '10', '10', '1', '1', NULL, '2023-10-12 12:21:06', '2023-10-12 12:21:06'),
(49, '10', '10', '1', '1', NULL, '2023-10-12 12:21:08', '2023-10-12 12:21:08'),
(50, '10', '10', '1', '1', NULL, '2023-10-12 12:21:17', '2023-10-12 12:21:17'),
(51, '10', '10', '1', '1', NULL, '2023-10-12 12:28:10', '2023-10-12 12:28:10'),
(52, '10', '10', '1', NULL, '1', '2023-10-12 12:47:23', '2023-10-12 12:47:23'),
(53, '10', '10', '1', NULL, '1', '2023-10-13 11:11:11', '2023-10-13 11:11:11'),
(54, '10', '10', '1', NULL, '1', '2023-10-13 11:35:33', '2023-10-13 11:35:33'),
(55, '10', '10', '3', NULL, '1', '2023-10-13 11:38:02', '2023-10-13 11:38:02'),
(56, '10', '10', '3', NULL, '1', '2023-10-13 11:38:13', '2023-10-13 11:38:13'),
(57, '10', '10', '3', '1', NULL, '2023-10-13 11:40:18', '2023-10-13 11:40:18'),
(58, '12', '10', '1', '1', NULL, '2023-10-16 11:48:14', '2023-10-16 11:48:14'),
(59, '12', '10', '1', '1', NULL, '2023-10-16 11:48:24', '2023-10-16 11:48:24'),
(60, '12', '10', '1', '1', NULL, '2023-10-16 11:49:27', '2023-10-16 11:49:27'),
(61, '12', '10', '1', '1', NULL, '2023-10-16 11:49:31', '2023-10-16 11:49:31'),
(62, '12', '10', '1', NULL, '1', '2023-10-16 11:49:40', '2023-10-16 11:49:40'),
(63, '12', '10', '1', '1', NULL, '2023-10-16 11:50:18', '2023-10-16 11:50:18'),
(64, '12', '10', '1', '1', NULL, '2023-10-16 11:50:52', '2023-10-16 11:50:52'),
(65, '12', '10', '1', NULL, '1', '2023-10-16 12:18:19', '2023-10-16 12:18:19'),
(66, '12', '10', '2', '1', NULL, '2023-10-17 13:07:57', '2023-10-17 13:07:57'),
(67, NULL, '10', '1', '1', NULL, '2023-10-26 11:25:10', '2023-10-26 11:25:10'),
(68, NULL, '10', '1', NULL, '1', '2023-10-26 11:25:14', '2023-10-26 11:25:14'),
(69, '6', '6', '11', '1', NULL, '2023-10-26 12:01:56', '2023-10-26 12:01:56'),
(70, '6', '6', '11', NULL, '1', '2023-10-26 12:01:59', '2023-10-26 12:01:59'),
(71, NULL, '6', '11', NULL, '1', '2023-10-27 06:34:11', '2023-10-27 06:34:11'),
(72, NULL, '6', '11', '1', NULL, '2023-10-27 06:34:12', '2023-10-27 06:34:12'),
(73, NULL, '10', '7', '1', NULL, '2023-11-09 01:32:25', '2023-11-09 01:32:25'),
(74, NULL, '10', '7', '1', NULL, '2023-11-09 01:32:29', '2023-11-09 01:32:29'),
(75, NULL, '6', '11', '1', NULL, '2023-11-21 18:13:04', '2023-11-21 18:13:04'),
(76, NULL, '6', '11', NULL, '1', '2023-11-21 18:13:16', '2023-11-21 18:13:16'),
(77, NULL, '6', '11', NULL, '1', '2023-11-21 18:13:17', '2023-11-21 18:13:17'),
(78, NULL, '10', '9', NULL, '1', '2023-11-21 21:31:27', '2023-11-21 21:31:27'),
(79, NULL, '10', '9', '1', NULL, '2023-11-21 21:31:28', '2023-11-21 21:31:28'),
(80, NULL, '10', '7', '1', NULL, '2023-12-21 22:15:52', '2023-12-21 22:15:52'),
(81, NULL, '10', '4', '1', NULL, '2024-03-16 02:13:32', '2024-03-16 02:13:32'),
(82, NULL, '10', '4', '1', NULL, '2024-03-16 02:14:03', '2024-03-16 02:14:03'),
(83, NULL, '10', '4', NULL, '1', '2024-03-16 02:14:08', '2024-03-16 02:14:08'),
(84, NULL, '10', '4', NULL, '1', '2024-03-16 02:14:09', '2024-03-16 02:14:09'),
(85, NULL, '10', '13', NULL, '1', '2024-03-26 23:40:20', '2024-03-26 23:40:20'),
(86, NULL, '10', '13', '1', NULL, '2024-03-26 23:41:30', '2024-03-26 23:41:30'),
(87, NULL, '10', '13', '1', NULL, '2024-03-27 00:17:17', '2024-03-27 00:17:17'),
(88, NULL, '10', '13', '1', NULL, '2024-03-27 00:17:25', '2024-03-27 00:17:25'),
(89, NULL, '10', '13', '1', NULL, '2024-03-27 00:17:46', '2024-03-27 00:17:46'),
(90, NULL, '10', '13', '1', NULL, '2024-03-27 00:17:49', '2024-03-27 00:17:49'),
(91, NULL, '10', '13', NULL, '1', '2024-03-27 00:17:51', '2024-03-27 00:17:51'),
(92, NULL, '10', '13', '1', NULL, '2024-03-27 00:17:52', '2024-03-27 00:17:52'),
(93, NULL, '10', '13', '1', NULL, '2024-03-27 00:18:45', '2024-03-27 00:18:45'),
(94, NULL, '10', '13', '1', NULL, '2024-03-27 00:19:08', '2024-03-27 00:19:08'),
(95, NULL, '10', '13', NULL, '1', '2024-03-27 00:19:12', '2024-03-27 00:19:12'),
(96, NULL, '10', '13', '1', NULL, '2024-03-27 00:19:36', '2024-03-27 00:19:36'),
(97, NULL, '10', '13', NULL, '1', '2024-03-27 00:20:00', '2024-03-27 00:20:00'),
(98, NULL, '10', '13', '1', NULL, '2024-03-27 00:22:44', '2024-03-27 00:22:44'),
(99, '32', '10', '13', NULL, '1', '2024-03-27 00:23:56', '2024-03-27 00:23:56'),
(100, '32', '10', '13', '1', NULL, '2024-03-27 00:24:00', '2024-03-27 00:24:00'),
(101, '32', '10', '13', '1', NULL, '2024-03-27 00:25:21', '2024-03-27 00:25:21'),
(102, '32', '10', '13', '1', NULL, '2024-03-27 00:26:10', '2024-03-27 00:26:10'),
(103, '32', '10', '13', '1', NULL, '2024-03-27 00:28:24', '2024-03-27 00:28:24'),
(104, '32', '10', '13', '1', NULL, '2024-03-27 00:29:54', '2024-03-27 00:29:54'),
(105, '32', '10', '13', '1', NULL, '2024-03-27 00:32:32', '2024-03-27 00:32:32'),
(106, '32', '10', '13', NULL, '1', '2024-03-27 00:32:51', '2024-03-27 00:32:51'),
(107, '10', '10', '13', '1', NULL, '2024-03-27 01:33:28', '2024-03-27 01:33:28'),
(108, '10', '10', '13', NULL, '1', '2024-03-27 01:33:32', '2024-03-27 01:33:32'),
(109, '10', '10', '13', NULL, '1', '2024-03-27 01:33:34', '2024-03-27 01:33:34'),
(110, '10', '10', '13', '1', NULL, '2024-03-27 01:41:33', '2024-03-27 01:41:33'),
(111, NULL, '10', '13', '1', NULL, '2024-03-28 00:57:11', '2024-03-28 00:57:11'),
(112, '33', '10', '13', '1', NULL, '2024-03-28 00:57:59', '2024-03-28 00:57:59'),
(113, '33', '10', '13', '1', NULL, '2024-03-28 00:58:07', '2024-03-28 00:58:07'),
(114, '33', '10', '13', NULL, '1', '2024-03-28 00:58:15', '2024-03-28 00:58:15'),
(115, '33', '10', '13', NULL, '1', '2024-03-28 00:58:16', '2024-03-28 00:58:16'),
(116, '33', '10', '13', NULL, '1', '2024-03-28 01:00:47', '2024-03-28 01:00:47'),
(117, '33', '10', '13', NULL, '1', '2024-03-28 01:00:49', '2024-03-28 01:00:49'),
(118, '33', '10', '13', NULL, '1', '2024-03-28 01:00:55', '2024-03-28 01:00:55'),
(119, '33', '10', '13', NULL, '1', '2024-03-28 01:01:22', '2024-03-28 01:01:22'),
(120, '33', '10', '13', NULL, '1', '2024-03-28 01:01:23', '2024-03-28 01:01:23'),
(121, '33', '10', '13', NULL, '1', '2024-03-28 01:01:35', '2024-03-28 01:01:35'),
(122, NULL, '10', '1', '1', NULL, '2024-04-08 01:40:42', '2024-04-08 01:40:42'),
(123, NULL, '10', '1', '1', NULL, '2024-04-08 01:41:12', '2024-04-08 01:41:12'),
(124, NULL, '10', '1', '1', NULL, '2024-04-08 01:41:13', '2024-04-08 01:41:13'),
(125, NULL, '10HLU7215T', '1', '1', NULL, '2024-04-08 01:41:13', '2024-04-08 01:41:13'),
(126, NULL, '10', '1', '1', NULL, '2024-04-08 01:41:14', '2024-04-08 01:41:14'),
(127, NULL, '-1 OR 2+886-886-1=0+0+0+1 --', '1', '1', NULL, '2024-04-08 01:41:14', '2024-04-08 01:41:14'),
(128, NULL, '-1 OR 2+11-11-1=0+0+0+1', '1', '1', NULL, '2024-04-08 01:41:14', '2024-04-08 01:41:14'),
(129, NULL, '-1\' OR 2+830-830-1=0+0+0+1 --', '1', '1', NULL, '2024-04-08 01:41:14', '2024-04-08 01:41:14'),
(130, NULL, '-1\' OR 2+718-718-1=0+0+0+1 or \'ovdpLrFc\'=\'', '1', '1', NULL, '2024-04-08 01:41:14', '2024-04-08 01:41:14'),
(131, NULL, '-1\" OR 2+732-732-1=0+0+0+1 --', '1', '1', NULL, '2024-04-08 01:41:15', '2024-04-08 01:41:15'),
(132, NULL, '10*if(now()=sysdate(),sleep(15),0)', '1', '1', NULL, '2024-04-08 01:41:15', '2024-04-08 01:41:15'),
(133, NULL, '100\'XOR(10*if(now()=sysdate(),sleep(15),0))XOR\'Z', '1', '1', NULL, '2024-04-08 01:41:15', '2024-04-08 01:41:15'),
(134, NULL, '100\"XOR(10*if(now()=sysdate(),sleep(15),0))XOR\"Z', '1', '1', NULL, '2024-04-08 01:41:16', '2024-04-08 01:41:16'),
(135, NULL, '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', '1', '1', NULL, '2024-04-08 01:41:17', '2024-04-08 01:41:17'),
(136, NULL, '10-1; waitfor delay \'0:0:15\' --', '1', '1', NULL, '2024-04-08 01:41:17', '2024-04-08 01:41:17'),
(137, NULL, '10-1); waitfor delay \'0:0:15\' --', '1', '1', NULL, '2024-04-08 01:41:18', '2024-04-08 01:41:18'),
(138, NULL, '10-1 waitfor delay \'0:0:15\' --', '1', '1', NULL, '2024-04-08 01:41:19', '2024-04-08 01:41:19'),
(139, NULL, '10IccGEieM\'; waitfor delay \'0:0:15\' --', '1', '1', NULL, '2024-04-08 01:41:20', '2024-04-08 01:41:20'),
(140, NULL, '10-1 OR 982=(SELECT 982 FROM PG_SLEEP(15))--', '1', '1', NULL, '2024-04-08 01:41:21', '2024-04-08 01:41:21'),
(141, NULL, '10-1) OR 486=(SELECT 486 FROM PG_SLEEP(15))--', '1', '1', NULL, '2024-04-08 01:41:23', '2024-04-08 01:41:23'),
(142, NULL, '10-1)) OR 780=(SELECT 780 FROM PG_SLEEP(15))--', '1', '1', NULL, '2024-04-08 01:41:24', '2024-04-08 01:41:24'),
(143, NULL, '10HPsGFhKz\' OR 948=(SELECT 948 FROM PG_SLEEP(15))--', '1', '1', NULL, '2024-04-08 01:41:25', '2024-04-08 01:41:25'),
(144, NULL, '10xLf5PaQk\') OR 821=(SELECT 821 FROM PG_SLEEP(15))--', '1', '1', NULL, '2024-04-08 01:41:26', '2024-04-08 01:41:26'),
(145, NULL, '10cyoIxHsq\')) OR 222=(SELECT 222 FROM PG_SLEEP(15))--', '1', '1', NULL, '2024-04-08 01:41:27', '2024-04-08 01:41:27'),
(146, NULL, '10*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)', '1', '1', NULL, '2024-04-08 01:41:29', '2024-04-08 01:41:29'),
(147, NULL, '10\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', '1', '1', NULL, '2024-04-08 01:41:30', '2024-04-08 01:41:30'),
(148, NULL, '10\'\"', '1', '1', NULL, '2024-04-08 01:41:30', '2024-04-08 01:41:30'),
(149, NULL, '@@S5G3F', '1', '1', NULL, '2024-04-08 01:41:31', '2024-04-08 01:41:31'),
(150, NULL, '10', '1', '1', NULL, '2024-04-08 01:41:32', '2024-04-08 01:41:32'),
(151, NULL, '10', '1', '1', NULL, '2024-04-08 01:41:34', '2024-04-08 01:41:34'),
(152, NULL, '10', '1H5Wf4o5Q', '1', NULL, '2024-04-08 01:41:36', '2024-04-08 01:41:36'),
(153, NULL, '10', '1', '1', NULL, '2024-04-08 01:41:37', '2024-04-08 01:41:37'),
(154, NULL, '10', '-1 OR 2+767-767-1=0+0+0+1 --', '1', NULL, '2024-04-08 01:41:38', '2024-04-08 01:41:38'),
(155, NULL, '10', '-1 OR 2+632-632-1=0+0+0+1', '1', NULL, '2024-04-08 01:41:38', '2024-04-08 01:41:38'),
(156, NULL, '10', '-1\' OR 2+172-172-1=0+0+0+1 --', '1', NULL, '2024-04-08 01:41:38', '2024-04-08 01:41:38'),
(157, NULL, '10', '-1\' OR 2+928-928-1=0+0+0+1 or \'2zsYgD4K\'=\'', '1', NULL, '2024-04-08 01:41:38', '2024-04-08 01:41:38'),
(158, NULL, '10', '-1\" OR 2+159-159-1=0+0+0+1 --', '1', NULL, '2024-04-08 01:41:38', '2024-04-08 01:41:38'),
(159, NULL, '10', '1*if(now()=sysdate(),sleep(15),0)', '1', NULL, '2024-04-08 01:41:40', '2024-04-08 01:41:40'),
(160, NULL, '10', '10\'XOR(1*if(now()=sysdate(),sleep(15),0))XOR\'Z', '1', NULL, '2024-04-08 01:41:42', '2024-04-08 01:41:42'),
(161, NULL, '10', '10\"XOR(1*if(now()=sysdate(),sleep(15),0))XOR\"Z', '1', NULL, '2024-04-08 01:41:46', '2024-04-08 01:41:46'),
(162, NULL, '10', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', '1', NULL, '2024-04-08 01:41:48', '2024-04-08 01:41:48'),
(163, NULL, '10', '1-1; waitfor delay \'0:0:15\' --', '1', NULL, '2024-04-08 01:41:51', '2024-04-08 01:41:51'),
(164, NULL, '10', '1-1); waitfor delay \'0:0:15\' --', '1', NULL, '2024-04-08 01:41:53', '2024-04-08 01:41:53'),
(165, NULL, '10', '1-1 waitfor delay \'0:0:15\' --', '1', NULL, '2024-04-08 01:41:56', '2024-04-08 01:41:56'),
(166, NULL, '10', '1R0dSztIO\'; waitfor delay \'0:0:15\' --', '1', NULL, '2024-04-08 01:42:02', '2024-04-08 01:42:02'),
(167, NULL, '10', '1-1 OR 346=(SELECT 346 FROM PG_SLEEP(15))--', '1', NULL, '2024-04-08 01:42:06', '2024-04-08 01:42:06'),
(168, NULL, '10', '1-1) OR 409=(SELECT 409 FROM PG_SLEEP(15))--', '1', NULL, '2024-04-08 01:42:12', '2024-04-08 01:42:12'),
(169, NULL, '10', '1-1)) OR 366=(SELECT 366 FROM PG_SLEEP(15))--', '1', NULL, '2024-04-08 01:42:17', '2024-04-08 01:42:17'),
(170, NULL, '10', '1AXd6bAPQ\' OR 337=(SELECT 337 FROM PG_SLEEP(15))--', '1', NULL, '2024-04-08 01:42:21', '2024-04-08 01:42:21'),
(171, NULL, '10', '1UyVJlWFL\') OR 597=(SELECT 597 FROM PG_SLEEP(15))--', '1', NULL, '2024-04-08 01:42:26', '2024-04-08 01:42:26'),
(172, NULL, '10', '1bhZd10Nn\')) OR 123=(SELECT 123 FROM PG_SLEEP(15))--', '1', NULL, '2024-04-08 01:42:33', '2024-04-08 01:42:33'),
(173, NULL, '10', '1*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)', '1', NULL, '2024-04-08 01:42:39', '2024-04-08 01:42:39'),
(174, NULL, '10', '1\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', '1', NULL, '2024-04-08 01:42:44', '2024-04-08 01:42:44'),
(175, NULL, '10', '1\'\"', '1', NULL, '2024-04-08 01:42:44', '2024-04-08 01:42:44'),
(176, NULL, '10', '@@z26u0', '1', NULL, '2024-04-08 01:42:44', '2024-04-08 01:42:44'),
(177, NULL, '10', '1', '1', NULL, '2024-04-08 01:42:50', '2024-04-08 01:42:50'),
(178, NULL, '10', '1', '1', NULL, '2024-04-08 01:42:55', '2024-04-08 01:42:55'),
(179, NULL, '10', '1', '1', NULL, '2024-04-08 01:43:00', '2024-04-08 01:43:00'),
(180, NULL, '10', '1', '1', NULL, '2024-04-08 01:43:05', '2024-04-08 01:43:05'),
(181, NULL, '10', '1', '1', NULL, '2024-04-08 01:43:06', '2024-04-08 01:43:06'),
(182, NULL, '10', '1', '1', NULL, '2024-04-08 01:43:06', '2024-04-08 01:43:06'),
(183, NULL, '10', '1', '1', NULL, '2024-04-08 01:43:06', '2024-04-08 01:43:06'),
(184, NULL, '10', '1', '1', NULL, '2024-04-08 01:43:06', '2024-04-08 01:43:06'),
(185, NULL, '10', '1', '1', NULL, '2024-04-08 01:43:06', '2024-04-08 01:43:06'),
(186, NULL, '10', '1', '1', NULL, '2024-04-08 01:43:11', '2024-04-08 01:43:11'),
(187, NULL, '10', '1', '1', NULL, '2024-04-08 01:43:16', '2024-04-08 01:43:16'),
(188, NULL, '10', '1', '1', NULL, '2024-04-08 01:43:21', '2024-04-08 01:43:21'),
(189, NULL, '10', '1', '1', NULL, '2024-04-08 01:43:27', '2024-04-08 01:43:27'),
(190, NULL, '10', '1', '1', NULL, '2024-04-08 01:43:32', '2024-04-08 01:43:32'),
(191, NULL, '10', '1', '1', NULL, '2024-04-08 01:43:36', '2024-04-08 01:43:36'),
(192, NULL, '10', '1', '1', NULL, '2024-04-08 01:43:40', '2024-04-08 01:43:40'),
(193, NULL, '10', '1', '1', NULL, '2024-04-08 01:43:43', '2024-04-08 01:43:43'),
(194, NULL, '10', '1', '1', NULL, '2024-04-08 01:43:47', '2024-04-08 01:43:47'),
(195, NULL, '10', '1', '1', NULL, '2024-04-08 01:43:50', '2024-04-08 01:43:50'),
(196, NULL, '10', '1', '1', NULL, '2024-04-08 01:43:54', '2024-04-08 01:43:54'),
(197, NULL, '10', '1', '1', NULL, '2024-04-08 01:43:58', '2024-04-08 01:43:58'),
(198, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:01', '2024-04-08 01:44:01'),
(199, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:05', '2024-04-08 01:44:05'),
(200, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:08', '2024-04-08 01:44:08'),
(201, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:12', '2024-04-08 01:44:12'),
(202, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:12', '2024-04-08 01:44:12'),
(203, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:12', '2024-04-08 01:44:12'),
(204, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:12', '2024-04-08 01:44:12'),
(205, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:16', '2024-04-08 01:44:16'),
(206, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:19', '2024-04-08 01:44:19'),
(207, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:22', '2024-04-08 01:44:22'),
(208, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:25', '2024-04-08 01:44:25'),
(209, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:25', '2024-04-08 01:44:25'),
(210, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:25', '2024-04-08 01:44:25'),
(211, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:25', '2024-04-08 01:44:25'),
(212, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:25', '2024-04-08 01:44:25'),
(213, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:26', '2024-04-08 01:44:26'),
(214, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:28', '2024-04-08 01:44:28'),
(215, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:30', '2024-04-08 01:44:30'),
(216, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:31', '2024-04-08 01:44:31'),
(217, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:33', '2024-04-08 01:44:33'),
(218, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:34', '2024-04-08 01:44:34'),
(219, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:35', '2024-04-08 01:44:35'),
(220, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:37', '2024-04-08 01:44:37'),
(221, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:38', '2024-04-08 01:44:38'),
(222, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:39', '2024-04-08 01:44:39'),
(223, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:41', '2024-04-08 01:44:41'),
(224, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:41', '2024-04-08 01:44:41'),
(225, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:41', '2024-04-08 01:44:41'),
(226, NULL, '10', '1', '1', NULL, '2024-04-08 01:44:42', '2024-04-08 01:44:42'),
(227, NULL, '6', '11', '1', NULL, '2024-04-08 01:46:14', '2024-04-08 01:46:14'),
(228, NULL, '6', '11', '1', NULL, '2024-04-08 01:48:30', '2024-04-08 01:48:30'),
(229, NULL, '6', '11', '1', NULL, '2024-04-08 01:48:38', '2024-04-08 01:48:38'),
(230, NULL, '6ipSCTs7O', '11', '1', NULL, '2024-04-08 01:48:47', '2024-04-08 01:48:47'),
(231, NULL, '6', '11', '1', NULL, '2024-04-08 01:48:57', '2024-04-08 01:48:57'),
(232, NULL, '-1 OR 2+530-530-1=0+0+0+1 --', '11', '1', NULL, '2024-04-08 01:48:57', '2024-04-08 01:48:57'),
(233, NULL, '-1 OR 2+679-679-1=0+0+0+1', '11', '1', NULL, '2024-04-08 01:48:57', '2024-04-08 01:48:57'),
(234, NULL, '-1\' OR 2+742-742-1=0+0+0+1 --', '11', '1', NULL, '2024-04-08 01:48:57', '2024-04-08 01:48:57'),
(235, NULL, '-1\' OR 2+313-313-1=0+0+0+1 or \'SUTSEKeg\'=\'', '11', '1', NULL, '2024-04-08 01:48:58', '2024-04-08 01:48:58'),
(236, NULL, '-1\" OR 2+487-487-1=0+0+0+1 --', '11', '1', NULL, '2024-04-08 01:48:58', '2024-04-08 01:48:58'),
(237, NULL, '6*if(now()=sysdate(),sleep(15),0)', '11', '1', NULL, '2024-04-08 01:49:07', '2024-04-08 01:49:07'),
(238, NULL, '60\'XOR(6*if(now()=sysdate(),sleep(15),0))XOR\'Z', '11', '1', NULL, '2024-04-08 01:49:15', '2024-04-08 01:49:15'),
(239, NULL, '60\"XOR(6*if(now()=sysdate(),sleep(15),0))XOR\"Z', '11', '1', NULL, '2024-04-08 01:49:25', '2024-04-08 01:49:25'),
(240, NULL, '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', '11', '1', NULL, '2024-04-08 01:49:35', '2024-04-08 01:49:35'),
(241, NULL, '6-1; waitfor delay \'0:0:15\' --', '11', '1', NULL, '2024-04-08 01:49:44', '2024-04-08 01:49:44'),
(242, NULL, '6-1); waitfor delay \'0:0:15\' --', '11', '1', NULL, '2024-04-08 01:50:09', '2024-04-08 01:50:09'),
(243, NULL, '6-1 waitfor delay \'0:0:15\' --', '11', '1', NULL, '2024-04-08 01:50:25', '2024-04-08 01:50:25'),
(244, NULL, '62Kz3Fuxr\'; waitfor delay \'0:0:15\' --', '11', '1', NULL, '2024-04-08 01:50:37', '2024-04-08 01:50:37'),
(245, NULL, '6-1 OR 109=(SELECT 109 FROM PG_SLEEP(15))--', '11', '1', NULL, '2024-04-08 01:50:47', '2024-04-08 01:50:47'),
(246, NULL, '6-1) OR 708=(SELECT 708 FROM PG_SLEEP(15))--', '11', '1', NULL, '2024-04-08 01:51:11', '2024-04-08 01:51:11'),
(247, NULL, '6-1)) OR 166=(SELECT 166 FROM PG_SLEEP(15))--', '11', '1', NULL, '2024-04-08 01:51:20', '2024-04-08 01:51:20'),
(248, NULL, '6m3unXEW8\' OR 55=(SELECT 55 FROM PG_SLEEP(15))--', '11', '1', NULL, '2024-04-08 01:51:35', '2024-04-08 01:51:35'),
(249, NULL, '6hO5YiKng\') OR 49=(SELECT 49 FROM PG_SLEEP(15))--', '11', '1', NULL, '2024-04-08 01:51:44', '2024-04-08 01:51:44'),
(250, NULL, '6IFv7UE63\')) OR 977=(SELECT 977 FROM PG_SLEEP(15))--', '11', '1', NULL, '2024-04-08 01:51:51', '2024-04-08 01:51:51'),
(251, NULL, '6*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)', '11', '1', NULL, '2024-04-08 01:52:00', '2024-04-08 01:52:00'),
(252, NULL, '6\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', '11', '1', NULL, '2024-04-08 01:52:09', '2024-04-08 01:52:09'),
(253, NULL, '6\'\"', '11', '1', NULL, '2024-04-08 01:52:09', '2024-04-08 01:52:09'),
(254, NULL, '@@S3ZDa', '11', '1', NULL, '2024-04-08 01:52:09', '2024-04-08 01:52:09'),
(255, NULL, '6', '11', '1', NULL, '2024-04-08 01:52:18', '2024-04-08 01:52:18'),
(256, NULL, '6', '11', '1', NULL, '2024-04-08 01:52:27', '2024-04-08 01:52:27'),
(257, NULL, '6', '11aLHx5DkY', '1', NULL, '2024-04-08 01:52:37', '2024-04-08 01:52:37'),
(258, NULL, '6', '11', '1', NULL, '2024-04-08 01:53:03', '2024-04-08 01:53:03'),
(259, NULL, '6', '-1 OR 2+238-238-1=0+0+0+1 --', '1', NULL, '2024-04-08 01:53:03', '2024-04-08 01:53:03'),
(260, NULL, '6', '-1 OR 2+776-776-1=0+0+0+1', '1', NULL, '2024-04-08 01:53:03', '2024-04-08 01:53:03'),
(261, NULL, '6', '-1\' OR 2+273-273-1=0+0+0+1 --', '1', NULL, '2024-04-08 01:53:03', '2024-04-08 01:53:03'),
(262, NULL, '6', '-1\' OR 2+406-406-1=0+0+0+1 or \'7EoHiUaU\'=\'', '1', NULL, '2024-04-08 01:53:04', '2024-04-08 01:53:04'),
(263, NULL, '6', '-1\" OR 2+635-635-1=0+0+0+1 --', '1', NULL, '2024-04-08 01:53:04', '2024-04-08 01:53:04'),
(264, NULL, '6', '11*if(now()=sysdate(),sleep(15),0)', '1', NULL, '2024-04-08 01:53:16', '2024-04-08 01:53:16'),
(265, NULL, '6', '110\'XOR(11*if(now()=sysdate(),sleep(15),0))XOR\'Z', '1', NULL, '2024-04-08 01:53:27', '2024-04-08 01:53:27'),
(266, NULL, '6', '110\"XOR(11*if(now()=sysdate(),sleep(15),0))XOR\"Z', '1', NULL, '2024-04-08 01:53:43', '2024-04-08 01:53:43'),
(267, NULL, '6', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', '1', NULL, '2024-04-08 01:54:24', '2024-04-08 01:54:24'),
(268, NULL, '6', '11-1; waitfor delay \'0:0:15\' --', '1', NULL, '2024-04-08 01:54:38', '2024-04-08 01:54:38'),
(269, NULL, '6', '11-1); waitfor delay \'0:0:15\' --', '1', NULL, '2024-04-08 01:55:01', '2024-04-08 01:55:01'),
(270, NULL, '6', '11-1 waitfor delay \'0:0:15\' --', '1', NULL, '2024-04-08 01:55:11', '2024-04-08 01:55:11'),
(271, NULL, '6', '11KKcNTGyj\'; waitfor delay \'0:0:15\' --', '1', NULL, '2024-04-08 01:55:36', '2024-04-08 01:55:36'),
(272, NULL, '6', '11-1 OR 541=(SELECT 541 FROM PG_SLEEP(15))--', '1', NULL, '2024-04-08 01:55:46', '2024-04-08 01:55:46'),
(273, NULL, '6', '11-1) OR 88=(SELECT 88 FROM PG_SLEEP(15))--', '1', NULL, '2024-04-08 01:56:03', '2024-04-08 01:56:03'),
(274, NULL, '6', '11-1)) OR 587=(SELECT 587 FROM PG_SLEEP(15))--', '1', NULL, '2024-04-08 01:56:11', '2024-04-08 01:56:11'),
(275, NULL, '6', '11SYzH3vRv\' OR 295=(SELECT 295 FROM PG_SLEEP(15))--', '1', NULL, '2024-04-08 01:56:19', '2024-04-08 01:56:19'),
(276, NULL, '6', '11nkEekJ15\') OR 161=(SELECT 161 FROM PG_SLEEP(15))--', '1', NULL, '2024-04-08 01:56:29', '2024-04-08 01:56:29'),
(277, NULL, '6', '11fnVJYbDI\')) OR 945=(SELECT 945 FROM PG_SLEEP(15))--', '1', NULL, '2024-04-08 01:56:38', '2024-04-08 01:56:38'),
(278, NULL, '6', '11*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)', '1', NULL, '2024-04-08 01:56:48', '2024-04-08 01:56:48'),
(279, NULL, '6', '11\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', '1', NULL, '2024-04-08 01:56:58', '2024-04-08 01:56:58'),
(280, NULL, '6', '11\'\"', '1', NULL, '2024-04-08 01:56:58', '2024-04-08 01:56:58'),
(281, NULL, '6', '@@2KfH2', '1', NULL, '2024-04-08 01:56:59', '2024-04-08 01:56:59'),
(282, NULL, '6', '11', '1', NULL, '2024-04-08 01:57:09', '2024-04-08 01:57:09'),
(283, NULL, '6', '11', '1', NULL, '2024-04-08 01:57:19', '2024-04-08 01:57:19'),
(284, NULL, '6', '11', '1', NULL, '2024-04-08 01:57:29', '2024-04-08 01:57:29'),
(285, NULL, '6', '11', '1', NULL, '2024-04-08 01:57:39', '2024-04-08 01:57:39'),
(286, NULL, '6', '11', '1', NULL, '2024-04-08 01:57:39', '2024-04-08 01:57:39'),
(287, NULL, '6', '11', '1', NULL, '2024-04-08 01:57:40', '2024-04-08 01:57:40'),
(288, NULL, '6', '11', '1', NULL, '2024-04-08 01:57:40', '2024-04-08 01:57:40'),
(289, NULL, '6', '11', '1', NULL, '2024-04-08 01:57:40', '2024-04-08 01:57:40'),
(290, NULL, '6', '11', '1', NULL, '2024-04-08 01:57:41', '2024-04-08 01:57:41'),
(291, NULL, '6', '11', '1', NULL, '2024-04-08 01:57:50', '2024-04-08 01:57:50'),
(292, NULL, '6', '11', '1', NULL, '2024-04-08 01:58:00', '2024-04-08 01:58:00'),
(293, NULL, '6', '11', '1', NULL, '2024-04-08 01:58:11', '2024-04-08 01:58:11'),
(294, NULL, '6', '11', '1', NULL, '2024-04-08 01:58:21', '2024-04-08 01:58:21'),
(295, NULL, '6', '11', '1', NULL, '2024-04-08 01:58:31', '2024-04-08 01:58:31'),
(296, NULL, '6', '11', '1', NULL, '2024-04-08 01:58:42', '2024-04-08 01:58:42'),
(297, NULL, '6', '11', '1', NULL, '2024-04-08 01:58:52', '2024-04-08 01:58:52'),
(298, NULL, '6', '11', '1', NULL, '2024-04-08 01:59:01', '2024-04-08 01:59:01'),
(299, NULL, '6', '11', '1', NULL, '2024-04-08 01:59:11', '2024-04-08 01:59:11'),
(300, NULL, '6', '11', '1', NULL, '2024-04-08 01:59:21', '2024-04-08 01:59:21'),
(301, NULL, '6', '11', '1', NULL, '2024-04-08 01:59:21', '2024-04-08 01:59:21'),
(302, NULL, '6', '11', '1', NULL, '2024-04-08 01:59:21', '2024-04-08 01:59:21'),
(303, NULL, '6', '11', '1', NULL, '2024-04-08 01:59:22', '2024-04-08 01:59:22'),
(304, NULL, '6', '11', '1', NULL, '2024-04-08 01:59:30', '2024-04-08 01:59:30'),
(305, NULL, '6', '11', '1', NULL, '2024-04-08 01:59:39', '2024-04-08 01:59:39'),
(306, NULL, '6', '11', '1', NULL, '2024-04-08 01:59:49', '2024-04-08 01:59:49'),
(307, NULL, '6', '11', '1', NULL, '2024-04-08 01:59:58', '2024-04-08 01:59:58'),
(308, NULL, '6', '11', '1', NULL, '2024-04-08 01:59:58', '2024-04-08 01:59:58'),
(309, NULL, '6', '11', '1', NULL, '2024-04-08 01:59:59', '2024-04-08 01:59:59'),
(310, NULL, '6', '11', '1', NULL, '2024-04-08 01:59:59', '2024-04-08 01:59:59'),
(311, NULL, '6', '11', '1', NULL, '2024-04-08 01:59:59', '2024-04-08 01:59:59'),
(312, NULL, '6', '11', '1', NULL, '2024-04-08 01:59:59', '2024-04-08 01:59:59'),
(313, NULL, '6', '11', '1', NULL, '2024-04-08 02:00:10', '2024-04-08 02:00:10'),
(314, NULL, '6', '11', '1', NULL, '2024-04-08 02:00:19', '2024-04-08 02:00:19'),
(315, NULL, '6', '11', '1', NULL, '2024-04-08 02:00:31', '2024-04-08 02:00:31'),
(316, NULL, '6', '11', '1', NULL, '2024-04-08 02:00:40', '2024-04-08 02:00:40'),
(317, NULL, '6', '11', '1', NULL, '2024-04-08 02:00:49', '2024-04-08 02:00:49'),
(318, NULL, '6', '11', '1', NULL, '2024-04-08 02:01:00', '2024-04-08 02:01:00'),
(319, NULL, '6', '11', '1', NULL, '2024-04-08 02:01:09', '2024-04-08 02:01:09'),
(320, NULL, '6', '11', '1', NULL, '2024-04-08 02:01:18', '2024-04-08 02:01:18'),
(321, NULL, '6', '11', '1', NULL, '2024-04-08 02:01:28', '2024-04-08 02:01:28'),
(322, NULL, '6', '11', '1', NULL, '2024-04-08 02:01:38', '2024-04-08 02:01:38'),
(323, NULL, '6', '11', '1', NULL, '2024-04-08 02:01:39', '2024-04-08 02:01:39'),
(324, NULL, '6', '11', '1', NULL, '2024-04-08 02:01:39', '2024-04-08 02:01:39'),
(325, NULL, '6', '11', '1', NULL, '2024-04-08 02:01:39', '2024-04-08 02:01:39'),
(326, NULL, '6', '11', '1', NULL, '2024-04-08 03:13:19', '2024-04-08 03:13:19'),
(327, NULL, '10', '1', '1', NULL, '2024-04-08 03:13:25', '2024-04-08 03:13:25'),
(328, NULL, '10', '4', '1', NULL, '2024-04-24 17:52:39', '2024-04-24 17:52:39'),
(329, '35', '35', '15', '1', NULL, '2024-05-28 18:31:13', '2024-05-28 18:31:13'),
(330, '12', '35', '15', NULL, '1', '2024-05-28 18:33:15', '2024-05-28 18:33:15'),
(331, '12', '35', '15', NULL, '1', '2024-05-28 18:33:17', '2024-05-28 18:33:17'),
(332, '12', '35', '15', NULL, '1', '2024-05-28 18:33:36', '2024-05-28 18:33:36'),
(333, '12', '35', '15', '1', NULL, '2024-05-28 18:33:39', '2024-05-28 18:33:39'),
(334, '12', '10', '14', '1', NULL, '2024-05-28 18:37:42', '2024-05-28 18:37:42'),
(335, '12', '10', '14', NULL, '1', '2024-05-28 18:37:44', '2024-05-28 18:37:44'),
(336, '10', '10', '14', '1', NULL, '2024-05-29 00:14:20', '2024-05-29 00:14:20'),
(337, '10', '10', '14', NULL, '1', '2024-05-29 00:14:24', '2024-05-29 00:14:24'),
(338, '10', '10', '14', NULL, '1', '2024-05-29 00:14:25', '2024-05-29 00:14:25'),
(339, NULL, '10', '4', '1', NULL, '2024-05-31 18:10:45', '2024-05-31 18:10:45'),
(340, NULL, '10', '4', '1', NULL, '2024-05-31 18:10:51', '2024-05-31 18:10:51'),
(341, NULL, '10', '2', '1', NULL, '2024-06-03 20:40:52', '2024-06-03 20:40:52'),
(342, '39', '39', '51', '1', NULL, '2024-06-11 17:18:04', '2024-06-11 17:18:04'),
(343, '10', '39', '53', '1', NULL, '2024-06-12 00:47:32', '2024-06-12 00:47:32'),
(344, NULL, '10', '13', NULL, '1', '2024-06-15 00:17:06', '2024-06-15 00:17:06'),
(345, NULL, '10', '13', NULL, '1', '2024-06-15 00:17:07', '2024-06-15 00:17:07'),
(346, NULL, '10', '13', NULL, '1', '2024-06-15 11:12:04', '2024-06-15 11:12:04'),
(347, NULL, '10', '13', '1', NULL, '2024-06-15 11:12:04', '2024-06-15 11:12:04'),
(348, NULL, '10', '13', '1', NULL, '2024-06-15 11:12:15', '2024-06-15 11:12:15'),
(349, NULL, '39', '52', '1', NULL, '2024-06-23 00:56:57', '2024-06-23 00:56:57'),
(350, NULL, '39', '52', NULL, '1', '2024-06-23 00:57:05', '2024-06-23 00:57:05');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location_name`, `map_link`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Houston', 'https://goo.gl/maps/xCPfwnLAtu7Hr5ZR7', 'houston', '1667503661.png', 1, '2022-11-04 01:27:41', '2022-11-08 03:50:17'),
(3, 'test', 'Ducimus nisi culpa', 'test', '1667926252.jpg', 1, '2022-11-08 22:50:52', '2022-11-08 22:50:52');

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `type`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Favicon', '1668093193.webp', '2022-11-05 06:16:45', '2022-11-10 21:13:13'),
(2, 'Logo', '1668092422.webp', '2022-11-05 01:17:29', '2022-11-10 21:00:22');

-- --------------------------------------------------------

--
-- Table structure for table `main_categories`
--

CREATE TABLE `main_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `make_year` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `main_categories`
--

INSERT INTO `main_categories` (`id`, `brand_id`, `main_category_name`, `make_year`, `category`, `image`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(44, '2', 'DB11', '2017', 'Coupe', NULL, 'DB11', 1, '2023-09-01 12:05:19', '2023-09-01 12:05:19'),
(49, '2', 'DB9 GT', '2016', 'Coupe, Convertible', NULL, 'DB9 GT', 1, '2023-09-01 12:05:19', '2023-09-01 12:05:19'),
(56, '2', 'Vanquish', '2016', 'Coupe, Convertible', NULL, 'Vanquish', 1, '2023-09-01 12:05:19', '2023-09-01 12:05:19'),
(63, '2', 'Rapide S', '2014', 'Sedan', NULL, 'Rapide S', 1, '2023-09-01 12:05:19', '2023-09-01 12:05:19'),
(70, '2', 'Rapide', '2010', 'Sedan', NULL, 'Rapide', 1, '2023-09-01 12:05:19', '2023-09-01 12:05:19'),
(71, '2', 'DBS', '2008', 'Coupe', NULL, 'DBS', 1, '2023-09-01 12:05:19', '2023-09-01 12:05:19'),
(74, '2', 'Vanquish S', '2005', 'Coupe', NULL, 'Vanquish S', 1, '2023-09-01 12:05:19', '2023-09-01 12:05:19'),
(75, '2', 'Vantage', '2008', 'Coupe, Convertible', NULL, 'Vantage', 1, '2023-09-01 12:05:19', '2023-09-01 12:05:19'),
(76, '2', 'DB9', '2007', 'Convertible, Coupe', NULL, 'DB9', 1, '2023-09-01 12:05:19', '2023-09-01 12:05:19'),
(77, '2', 'Virage', '2012', 'Coupe, Convertible', NULL, 'Virage', 1, '2023-09-01 12:05:19', '2023-09-01 12:05:19'),
(107, '3', 'RS 3', '2017', 'Sedan', NULL, 'RS 3', 1, '2023-09-01 12:08:51', '2023-09-01 12:08:51'),
(111, '3', 'e-tron', '2019', 'SUV', NULL, 'e-tron', 1, '2023-09-01 12:08:51', '2023-09-01 12:08:51'),
(120, '3', 'Q8', '2019', 'SUV', NULL, 'Q8', 1, '2023-09-01 12:08:51', '2023-09-01 12:08:51'),
(122, '3', 'A5 Sport', '2017', 'Convertible, Coupe', NULL, 'A5 Sport', 1, '2023-09-01 12:08:51', '2023-09-01 12:08:51'),
(135, '3', 'A4 allroad', '2017', 'Wagon', NULL, 'A4 allroad', 1, '2023-09-01 12:08:51', '2023-09-01 12:08:51'),
(140, '3', 'A3 Sportback e-tron', '2017', 'Wagon', NULL, 'A3 Sportback e-tron', 1, '2023-09-01 12:08:51', '2023-09-01 12:08:51'),
(163, '3', 'Q3', '2017', 'SUV', NULL, 'Q3', 1, '2023-09-01 12:08:52', '2023-09-01 12:08:52'),
(177, '3', 'S3', '2016', 'Sedan', NULL, 'S3', 1, '2023-09-01 12:08:52', '2023-09-01 12:08:52'),
(192, '3', 'RS 7', '2014', 'Sedan', NULL, 'RS 7', 1, '2023-09-01 12:08:52', '2023-09-01 12:08:52'),
(203, '3', 'allroad', '2013', 'Wagon', NULL, 'allroad', 1, '2023-09-01 12:08:52', '2023-09-01 12:08:52'),
(207, '3', 'SQ5', '2014', 'SUV', NULL, 'SQ5', 1, '2023-09-01 12:08:52', '2023-09-01 12:08:52'),
(211, '3', 'S8', '2013', 'Sedan', NULL, 'S8', 1, '2023-09-01 12:08:52', '2023-09-01 12:08:52'),
(215, '3', 'S7', '2013', 'Sedan', NULL, 'S7', 1, '2023-09-01 12:08:53', '2023-09-01 12:08:53'),
(218, '3', 'S5', '2011', 'Coupe, Convertible', NULL, 'S5', 1, '2023-09-01 12:08:53', '2023-09-01 12:08:53'),
(220, '3', 'RS 5', '2013', 'Coupe, Convertible', NULL, 'RS 5', 1, '2023-09-01 12:08:53', '2023-09-01 12:08:53'),
(231, '3', 'A6', '2011', 'Sedan, Wagon', NULL, 'A6', 1, '2023-09-01 12:08:53', '2023-09-01 12:08:53'),
(239, '3', 'Q7', '2010', 'SUV', NULL, 'Q7', 1, '2023-09-01 12:08:53', '2023-09-01 12:08:53'),
(242, '3', 'A8', '2010', 'Sedan', NULL, 'A8', 1, '2023-09-01 12:08:53', '2023-09-01 12:08:53'),
(244, '3', 'S4', '2011', 'Sedan', NULL, 'S4', 1, '2023-09-01 12:08:53', '2023-09-01 12:08:53'),
(245, '3', 'A7', '2012', 'Sedan', NULL, 'A7', 1, '2023-09-01 12:08:53', '2023-09-01 12:08:53'),
(248, '3', 'Q5', '2010', 'SUV', NULL, 'Q5', 1, '2023-09-01 12:08:53', '2023-09-01 12:08:53'),
(250, '3', 'TT', '2011', 'Coupe, Convertible', NULL, 'TT', 1, '2023-09-01 12:08:53', '2023-09-01 12:08:53'),
(251, '3', 'S6', '2010', 'Sedan', NULL, 'S6', 1, '2023-09-01 12:08:53', '2023-09-01 12:08:53'),
(252, '3', 'R8', '2010', 'Coupe', NULL, 'R8', 1, '2023-09-01 12:08:53', '2023-09-01 12:08:53'),
(253, '3', 'A3', NULL, 'Wagon', '1718304525.jpg', 'a3', 1, '2023-09-01 12:08:53', '2024-06-14 00:48:45'),
(254, '3', 'A5', '2009', 'Coupe', NULL, 'A5', 1, '2023-09-01 12:08:53', '2023-09-01 12:08:53'),
(255, '3', 'A4', NULL, 'Convertible, Wagon, Sedan', '1718304468.webp', 'a4', 1, '2023-09-01 12:08:53', '2024-06-14 00:47:48'),
(290, '3', 'A4 (2005.5)', '2005', 'Sedan, Wagon', NULL, 'A4 (2005.5)', 1, '2023-09-01 12:08:55', '2023-09-01 12:08:55'),
(295, '3', 'RS 4', '2007', 'Sedan', NULL, 'RS 4', 1, '2023-09-01 12:08:55', '2023-09-01 12:08:55'),
(305, '3', 'S4 (2005.5)', '2005', 'Sedan, Wagon', NULL, 'S4 (2005.5)', 1, '2023-09-01 12:08:55', '2023-09-01 12:08:55'),
(319, '3', 'RS 6', '2003', 'Sedan', NULL, 'RS 6', 1, '2023-09-01 12:08:55', '2023-09-01 12:08:55'),
(361, '3', '80', '1992', 'Sedan', NULL, '80', 1, '2023-09-01 12:08:56', '2023-09-01 12:08:56'),
(362, '3', 'Cabriolet', '1994', 'Convertible', NULL, 'Cabriolet', 1, '2023-09-01 12:08:56', '2023-09-01 12:08:56'),
(363, '3', '100', '1992', 'Sedan, Wagon', NULL, '100', 1, '2023-09-01 12:08:56', '2023-09-01 12:08:56'),
(366, '3', '90', '1993', 'Sedan', NULL, '90', 1, '2023-09-01 12:08:57', '2023-09-01 12:08:57'),
(369, '3', 'Quattro', '1993', 'Sedan', NULL, 'Quattro', 1, '2023-09-01 12:08:57', '2023-09-01 12:08:57'),
(373, '3', 'A6 allroad', '2021', 'Wagon', NULL, 'A6 allroad', 1, '2023-09-01 12:08:57', '2023-09-01 12:08:57'),
(379, '4', 'Bentayga', NULL, 'SUV', '1718303915.jpg', 'bentayga', 1, '2023-09-01 12:11:18', '2024-06-14 00:38:35'),
(401, '4', 'Brooklands', '2010', 'Coupe', NULL, 'Brooklands', 1, '2023-09-01 12:11:18', '2023-09-01 12:11:18'),
(402, '4', 'Flying Spur', NULL, 'Sedan', '1718304173.jpg', 'flying-spur', 1, '2023-09-01 12:11:18', '2024-06-14 00:42:53'),
(403, '4', 'Azure T', '2010', 'Convertible', NULL, 'Azure T', 1, '2023-09-01 12:11:18', '2023-09-01 12:11:18'),
(406, '4', 'Mulsanne', '2015', 'Sedan', NULL, 'Mulsanne', 1, '2023-09-01 12:11:18', '2023-09-01 12:11:18'),
(414, '4', 'Arnage', '2007', 'Sedan', NULL, 'Arnage', 1, '2023-09-01 12:11:18', '2023-09-01 12:11:18'),
(415, '4', 'Azure', '2007', 'Convertible', NULL, 'Azure', 1, '2023-09-01 12:11:18', '2023-09-01 12:11:18'),
(431, '5', 'X2', '2019', 'SUV', NULL, 'X2', 1, '2023-09-01 12:12:40', '2023-09-01 12:12:40'),
(474, '5', '2 Series', '2015', 'Coupe, Convertible', NULL, '2 Series', 1, '2023-09-01 12:12:41', '2023-09-01 12:12:41'),
(480, '5', 'X5 M', '2016', 'SUV', NULL, 'X5 M', 1, '2023-09-01 12:12:41', '2023-09-01 12:12:41'),
(484, '5', 'i8', '2016', 'Coupe', NULL, 'i8', 1, '2023-09-01 12:12:41', '2023-09-01 12:12:41'),
(485, '5', 'M4', '2016', 'Coupe, Convertible', NULL, 'M4', 1, '2023-09-01 12:12:41', '2023-09-01 12:12:41'),
(486, '5', 'X5', '2017', 'SUV', NULL, 'X5', 1, '2023-09-01 12:12:41', '2023-09-01 12:12:41'),
(490, '5', 'i3', '2016', 'Hatchback', NULL, 'i3', 1, '2023-09-01 12:12:41', '2023-09-01 12:12:41'),
(493, '5', 'M5', '2018', 'Sedan', NULL, 'M5', 1, '2023-09-01 12:12:41', '2023-09-01 12:12:41'),
(495, '5', 'Z4', '2016', 'Convertible', NULL, 'Z4', 1, '2023-09-01 12:12:41', '2023-09-01 12:12:41'),
(498, '5', '4 Series', '2015', 'Coupe, Convertible', NULL, '4 Series', 1, '2023-09-01 12:12:41', '2023-09-01 12:12:41'),
(499, '5', 'X6 M', '2018', 'SUV', NULL, 'X6 M', 1, '2023-09-01 12:12:41', '2023-09-01 12:12:41'),
(501, '5', '3 Series', '2017', 'Sedan, Wagon', NULL, '3 Series', 1, '2023-09-01 12:12:41', '2023-09-01 12:12:41'),
(503, '5', 'X1', '2016', 'SUV', NULL, 'X1', 1, '2023-09-01 12:12:41', '2023-09-01 12:12:41'),
(505, '5', 'M6', '2017', 'Coupe, Convertible', NULL, 'M6', 1, '2023-09-01 12:12:41', '2023-09-01 12:12:41'),
(506, '5', '6 Series', '2015', 'Coupe, Sedan, Convertible', NULL, '6 Series', 1, '2023-09-01 12:12:41', '2023-09-01 12:12:41'),
(507, '5', '7 Series', '2017', 'Sedan', NULL, '7 Series', 1, '2023-09-01 12:12:41', '2023-09-01 12:12:41'),
(508, '5', '5 Series', '2015', 'Sedan', NULL, '5 Series', 1, '2023-09-01 12:12:41', '2023-09-01 12:12:41'),
(509, '5', 'X4', '2016', 'SUV', NULL, 'X4', 1, '2023-09-01 12:12:41', '2023-09-01 12:12:41'),
(510, '5', 'X3', '2017', 'SUV', NULL, 'X3', 1, '2023-09-01 12:12:41', '2023-09-01 12:12:41'),
(511, '5', 'X6', '2017', 'SUV', NULL, 'X6', 1, '2023-09-01 12:12:41', '2023-09-01 12:12:41'),
(601, '5', '1 Series', '2008', 'Coupe, Convertible', NULL, '1 Series', 1, '2023-09-01 12:12:43', '2023-09-01 12:12:43'),
(634, '5', 'Alpina B7', '2007', 'Sedan', NULL, 'Alpina B7', 1, '2023-09-01 12:12:44', '2023-09-01 12:12:44'),
(644, '5', 'Z4 M', '2006', 'Convertible, Coupe', NULL, 'Z4 M', 1, '2023-09-01 12:12:44', '2023-09-01 12:12:44'),
(695, '5', 'Z8', '2001', 'Convertible', NULL, 'Z8', 1, '2023-09-01 12:12:46', '2023-09-01 12:12:46'),
(711, '5', 'Z3', '1996', 'Convertible', NULL, 'Z3', 1, '2023-09-01 12:12:47', '2023-09-01 12:12:47'),
(730, '5', '8 Series', '1992', 'Coupe', NULL, '8 Series', 1, '2023-09-01 12:12:47', '2023-09-01 12:12:47'),
(734, '5', 'X7', '2021', 'SUV', NULL, 'X7', 1, '2023-09-01 12:12:47', '2023-09-01 12:12:47'),
(736, '6', 'XT4', '2019', 'SUV', NULL, 'XT4', 1, '2023-09-01 12:15:12', '2023-09-01 12:15:12'),
(748, '6', 'XTS', '2015', 'Sedan', NULL, 'XTS', 1, '2023-09-01 12:15:12', '2023-09-01 12:15:12'),
(750, '6', 'CTS', '2017', 'Sedan', NULL, 'CTS', 1, '2023-09-01 12:15:12', '2023-09-01 12:15:12'),
(753, '6', 'XT5', '2019', 'SUV', NULL, 'XT5', 1, '2023-09-01 12:15:12', '2023-09-01 12:15:12'),
(755, '6', 'CT6', '2016', 'Sedan', NULL, 'CT6', 1, '2023-09-01 12:15:12', '2023-09-01 12:15:12'),
(758, '6', 'ATS', '2013', 'Sedan', NULL, 'ATS', 1, '2023-09-01 12:15:12', '2023-09-01 12:15:12'),
(760, '6', 'ATS-V', '2016', 'Sedan, Coupe', NULL, 'ATS-V', 1, '2023-09-01 12:15:12', '2023-09-01 12:15:12'),
(763, '6', 'Escalade ESV', '2015', 'SUV', NULL, 'Escalade ESV', 1, '2023-09-01 12:15:13', '2023-09-01 12:15:13'),
(764, '6', 'DTS', '2011', 'Sedan', NULL, 'DTS', 1, '2023-09-01 12:15:13', '2023-09-01 12:15:13'),
(765, '6', 'CTS-V', '2019', 'Sedan', NULL, 'CTS-V', 1, '2023-09-01 12:15:13', '2023-09-01 12:15:13'),
(766, '6', 'Escalade', '2020', 'SUV', NULL, 'Escalade', 1, '2023-09-01 12:15:13', '2023-09-01 12:15:13'),
(767, '6', 'SRX', '2016', 'SUV', NULL, 'SRX', 1, '2023-09-01 12:15:13', '2023-09-01 12:15:13'),
(809, '6', 'CT6-V', '2019', 'Sedan', NULL, 'CT6-V', 1, '2023-09-01 12:15:13', '2023-09-01 12:15:13'),
(824, '6', 'ELR', '2014', 'Coupe', NULL, 'ELR', 1, '2023-09-01 12:15:13', '2023-09-01 12:15:13'),
(856, '6', 'STS', '2005', 'Sedan', NULL, 'STS', 1, '2023-09-01 12:15:14', '2023-09-01 12:15:14'),
(864, '6', 'XLR', '2004', 'Convertible', NULL, 'XLR', 1, '2023-09-01 12:15:14', '2023-09-01 12:15:14'),
(875, '6', 'Escalade EXT', '2002', 'Pickup', NULL, 'Escalade EXT', 1, '2023-09-01 12:15:15', '2023-09-01 12:15:15'),
(894, '6', 'Catera', '1998', 'Sedan', NULL, 'Catera', 1, '2023-09-01 12:15:15', '2023-09-01 12:15:15'),
(917, '6', 'Allante', '1993', 'Convertible', NULL, 'Allante', 1, '2023-09-01 12:15:16', '2023-09-01 12:15:16'),
(920, '6', 'DeVille', '1992', 'Sedan, Coupe', NULL, 'DeVille', 1, '2023-09-01 12:15:16', '2023-09-01 12:15:16'),
(922, '6', 'Brougham', '1992', 'Sedan', NULL, 'Brougham', 1, '2023-09-01 12:15:16', '2023-09-01 12:15:16'),
(923, '6', 'Seville', '1992', 'Sedan', NULL, 'Seville', 1, '2023-09-01 12:15:16', '2023-09-01 12:15:16'),
(924, '6', 'Fleetwood', '1993', 'Sedan', NULL, 'Fleetwood', 1, '2023-09-01 12:15:16', '2023-09-01 12:15:16'),
(925, '6', 'Sixty Special', '1993', 'Sedan', NULL, 'Sixty Special', 1, '2023-09-01 12:15:16', '2023-09-01 12:15:16'),
(928, '6', 'CT5', '2021', 'Sedan', NULL, 'CT5', 1, '2023-09-01 12:15:16', '2023-09-01 12:15:16'),
(930, '6', 'CT4', '2021', 'Sedan', NULL, 'CT4', 1, '2023-09-01 12:15:16', '2023-09-01 12:15:16'),
(942, '7', 'Silverado 1500 LD Double Cab', '2019', 'Pickup', NULL, 'Silverado 1500 LD Double Cab', 1, '2023-09-01 12:16:37', '2023-09-01 12:16:37'),
(955, '7', 'Spark', '2018', 'Hatchback', NULL, 'Spark', 1, '2023-09-01 12:16:37', '2023-09-01 12:16:37'),
(961, '7', 'Trax', '2020', 'SUV', NULL, 'Trax', 1, '2023-09-01 12:16:37', '2023-09-01 12:16:37'),
(972, '7', 'Silverado 3500 HD Double Cab', '2018', 'Pickup', NULL, 'Silverado 3500 HD Double Cab', 1, '2023-09-01 12:16:37', '2023-09-01 12:16:37'),
(985, '7', 'Silverado 2500 HD Double Cab', '2019', 'Pickup', NULL, 'Silverado 2500 HD Double Cab', 1, '2023-09-01 12:16:37', '2023-09-01 12:16:37'),
(988, '7', 'Cruze', '2017', 'Hatchback, Sedan', NULL, 'Cruze', 1, '2023-09-01 12:16:37', '2023-09-01 12:16:37'),
(995, '7', 'Bolt EV', '2017', 'Hatchback', NULL, 'Bolt EV', 1, '2023-09-01 12:16:38', '2023-09-01 12:16:38'),
(999, '7', 'Silverado 1500 Double Cab', '2018', 'Pickup', NULL, 'Silverado 1500 Double Cab', 1, '2023-09-01 12:16:38', '2023-09-01 12:16:38'),
(1008, '7', 'Impala', '2020', 'Sedan', NULL, 'Impala', 1, '2023-09-01 12:16:38', '2023-09-01 12:16:38'),
(1009, '7', 'Suburban 3500HD', '2018', 'SUV', NULL, 'Suburban 3500HD', 1, '2023-09-01 12:16:38', '2023-09-01 12:16:38'),
(1011, '7', 'Sonic', '2017', 'Sedan, Hatchback', NULL, 'Sonic', 1, '2023-09-01 12:16:38', '2023-09-01 12:16:38'),
(1012, '7', 'Colorado Crew Cab', '2018', 'Pickup', NULL, 'Colorado Crew Cab', 1, '2023-09-01 12:16:38', '2023-09-01 12:16:38'),
(1017, '7', 'Traverse', '2018', 'SUV', NULL, 'Traverse', 1, '2023-09-01 12:16:38', '2023-09-01 12:16:38'),
(1018, '7', 'Express 3500 Cargo', '2017', 'Van/Minivan', NULL, 'Express 3500 Cargo', 1, '2023-09-01 12:16:38', '2023-09-01 12:16:38'),
(1019, '7', 'City Express', '2017', 'Van/Minivan', NULL, 'City Express', 1, '2023-09-01 12:16:38', '2023-09-01 12:16:38'),
(1020, '7', 'Express 3500 Passenger', '2017', 'Van/Minivan', NULL, 'Express 3500 Passenger', 1, '2023-09-01 12:16:38', '2023-09-01 12:16:38'),
(1022, '7', 'Suburban', '2018', 'SUV', NULL, 'Suburban', 1, '2023-09-01 12:16:38', '2023-09-01 12:16:38'),
(1023, '7', 'Silverado 3500 HD Crew Cab', '2018', 'Pickup', NULL, 'Silverado 3500 HD Crew Cab', 1, '2023-09-01 12:16:38', '2023-09-01 12:16:38'),
(1049, '7', 'Cruze Limited', '2016', 'Sedan', NULL, 'Cruze Limited', 1, '2023-09-01 12:16:39', '2023-09-01 12:16:39'),
(1060, '7', 'Malibu Limited', '2016', 'Sedan', NULL, 'Malibu Limited', 1, '2023-09-01 12:16:39', '2023-09-01 12:16:39'),
(1110, '7', 'Impala Limited', '2014', 'Sedan', NULL, 'Impala Limited', 1, '2023-09-01 12:16:40', '2023-09-01 12:16:40'),
(1126, '7', 'Spark EV', '2014', 'Hatchback', NULL, 'Spark EV', 1, '2023-09-01 12:16:41', '2023-09-01 12:16:41'),
(1136, '7', 'SS', '2014', 'Sedan', NULL, 'SS', 1, '2023-09-01 12:16:41', '2023-09-01 12:16:41'),
(1176, '7', 'Captiva Sport', '2012', 'SUV', NULL, 'Captiva Sport', 1, '2023-09-01 12:16:43', '2023-09-01 12:16:43'),
(1229, '7', 'Volt', '2011', 'Sedan', NULL, 'Volt', 1, '2023-09-01 12:16:44', '2023-09-01 12:16:44'),
(1242, '7', 'Colorado Regular Cab', '2010', 'Pickup', NULL, 'Colorado Regular Cab', 1, '2023-09-01 12:16:44', '2023-09-01 12:16:44'),
(1245, '7', 'Cobalt', '2009', 'Sedan, Coupe', NULL, 'Cobalt', 1, '2023-09-01 12:16:44', '2023-09-01 12:16:44'),
(1248, '7', 'Aveo', '2009', 'Sedan, Hatchback', NULL, 'Aveo', 1, '2023-09-01 12:16:45', '2023-09-01 12:16:45'),
(1251, '7', 'Silverado 3500 HD Extended Cab', '2010', 'Pickup', NULL, 'Silverado 3500 HD Extended Cab', 1, '2023-09-01 12:16:45', '2023-09-01 12:16:45'),
(1253, '7', 'HHR', '2010', 'Wagon', NULL, 'HHR', 1, '2023-09-01 12:16:45', '2023-09-01 12:16:45'),
(1266, '7', 'Silverado 3500 HD Regular Cab', '2010', 'Pickup', NULL, 'Silverado 3500 HD Regular Cab', 1, '2023-09-01 12:16:45', '2023-09-01 12:16:45'),
(1268, '7', 'Colorado Extended Cab', '2009', 'Pickup', NULL, 'Colorado Extended Cab', 1, '2023-09-01 12:16:46', '2023-09-01 12:16:46'),
(1272, '7', 'Express 2500 Passenger', '2009', 'Van/Minivan', NULL, 'Express 2500 Passenger', 1, '2023-09-01 12:16:46', '2023-09-01 12:16:46'),
(1274, '7', 'Malibu', '2009', 'Sedan', NULL, 'Malibu', 1, '2023-09-01 12:16:46', '2023-09-01 12:16:46'),
(1275, '7', 'Silverado 1500 Regular Cab', '2009', 'Pickup', NULL, 'Silverado 1500 Regular Cab', 1, '2023-09-01 12:16:46', '2023-09-01 12:16:46'),
(1276, '7', 'Express 2500 Cargo', '2009', 'Van/Minivan', NULL, 'Express 2500 Cargo', 1, '2023-09-01 12:16:46', '2023-09-01 12:16:46'),
(1277, '7', 'Avalanche', '2008', 'SUV', NULL, 'Avalanche', 1, '2023-09-01 12:16:46', '2023-09-01 12:16:46'),
(1278, '7', 'Silverado 1500 Crew Cab', '2009', 'Pickup', NULL, 'Silverado 1500 Crew Cab', 1, '2023-09-01 12:16:46', '2023-09-01 12:16:46'),
(1310, '7', 'Malibu (Classic)', '2008', 'Sedan', NULL, 'Malibu (Classic)', 1, '2023-09-01 12:16:46', '2023-09-01 12:16:46'),
(1341, '7', 'Silverado (Classic) 3500 Crew Cab', '2007', 'Pickup', NULL, 'Silverado (Classic) 3500 Crew Cab', 1, '2023-09-01 12:16:47', '2023-09-01 12:16:47'),
(1345, '7', 'Silverado (Classic) 1500 Extended Cab', '2007', 'Pickup', NULL, 'Silverado (Classic) 1500 Extended Cab', 1, '2023-09-01 12:16:47', '2023-09-01 12:16:47'),
(1347, '7', 'Silverado (Classic) 2500 HD Extended Cab', '2007', 'Pickup', NULL, 'Silverado (Classic) 2500 HD Extended Cab', 1, '2023-09-01 12:16:47', '2023-09-01 12:16:47'),
(1349, '7', 'Silverado (Classic) 1500 HD Crew Cab', '2007', 'Pickup', NULL, 'Silverado (Classic) 1500 HD Crew Cab', 1, '2023-09-01 12:16:47', '2023-09-01 12:16:47'),
(1350, '7', 'Silverado (Classic) 2500 HD Regular Cab', '2007', 'Pickup', NULL, 'Silverado (Classic) 2500 HD Regular Cab', 1, '2023-09-01 12:16:47', '2023-09-01 12:16:47'),
(1351, '7', 'Silverado (Classic) 1500 Regular Cab', '2007', 'Pickup', NULL, 'Silverado (Classic) 1500 Regular Cab', 1, '2023-09-01 12:16:47', '2023-09-01 12:16:47'),
(1352, '7', 'Silverado (Classic) 1500 Crew Cab', '2007', 'Pickup', NULL, 'Silverado (Classic) 1500 Crew Cab', 1, '2023-09-01 12:16:47', '2023-09-01 12:16:47'),
(1353, '7', 'Silverado (Classic) 2500 HD Crew Cab', '2007', 'Pickup', NULL, 'Silverado (Classic) 2500 HD Crew Cab', 1, '2023-09-01 12:16:47', '2023-09-01 12:16:47'),
(1355, '7', 'Silverado (Classic) 3500 Extended Cab', '2007', 'Pickup', NULL, 'Silverado (Classic) 3500 Extended Cab', 1, '2023-09-01 12:16:47', '2023-09-01 12:16:47'),
(1360, '7', 'Silverado (Classic) 3500 Regular Cab', '2007', 'Pickup', NULL, 'Silverado (Classic) 3500 Regular Cab', 1, '2023-09-01 12:16:47', '2023-09-01 12:16:47'),
(1438, '7', 'Uplander Passenger', '2005', 'Van/Minivan', NULL, 'Uplander Passenger', 1, '2023-09-01 12:16:50', '2023-09-01 12:16:50'),
(1447, '7', 'Classic', '2004', 'Sedan', NULL, 'Classic', 1, '2023-09-01 12:16:50', '2023-09-01 12:16:50'),
(1454, '7', 'Uplander Cargo', '2005', 'Van/Minivan', NULL, 'Uplander Cargo', 1, '2023-09-01 12:16:50', '2023-09-01 12:16:50'),
(1489, '7', 'S10 Crew Cab', '2003', 'Pickup', NULL, 'S10 Crew Cab', 1, '2023-09-01 12:16:51', '2023-09-01 12:16:51'),
(1494, '7', 'Silverado 2500 Crew Cab', '2004', 'Pickup', NULL, 'Silverado 2500 Crew Cab', 1, '2023-09-01 12:16:51', '2023-09-01 12:16:51'),
(1500, '7', 'Silverado 2500 Extended Cab', '2004', 'Pickup', NULL, 'Silverado 2500 Extended Cab', 1, '2023-09-01 12:16:51', '2023-09-01 12:16:51'),
(1507, '7', 'Silverado 1500 HD Crew Cab', '2003', 'Pickup', NULL, 'Silverado 1500 HD Crew Cab', 1, '2023-09-01 12:16:51', '2023-09-01 12:16:51'),
(1513, '7', 'Silverado 2500 HD Regular Cab', '2003', 'Pickup', NULL, 'Silverado 2500 HD Regular Cab', 1, '2023-09-01 12:16:51', '2023-09-01 12:16:51'),
(1514, '7', 'TrailBlazer', '2003', 'SUV', NULL, 'TrailBlazer', 1, '2023-09-01 12:16:51', '2023-09-01 12:16:51'),
(1515, '7', 'Silverado 1500 Extended Cab', '2003', 'Pickup', NULL, 'Silverado 1500 Extended Cab', 1, '2023-09-01 12:16:51', '2023-09-01 12:16:51'),
(1517, '7', 'Silverado 3500 Crew Cab', '2003', 'Pickup', NULL, 'Silverado 3500 Crew Cab', 1, '2023-09-01 12:16:51', '2023-09-01 12:16:51'),
(1518, '7', 'SSR', '2003', 'Pickup', NULL, 'SSR', 1, '2023-09-01 12:16:52', '2023-09-01 12:16:52'),
(1519, '7', 'Silverado 2500 HD Extended Cab', '2003', 'Pickup', NULL, 'Silverado 2500 HD Extended Cab', 1, '2023-09-01 12:16:52', '2023-09-01 12:16:52'),
(1521, '7', 'Silverado 2500 Regular Cab', '2003', 'Pickup', NULL, 'Silverado 2500 Regular Cab', 1, '2023-09-01 12:16:52', '2023-09-01 12:16:52'),
(1523, '7', 'Avalanche 2500', '2002', 'Pickup', NULL, 'Avalanche 2500', 1, '2023-09-01 12:16:52', '2023-09-01 12:16:52'),
(1524, '7', 'Tracker', '2003', 'SUV', NULL, 'Tracker', 1, '2023-09-01 12:16:52', '2023-09-01 12:16:52'),
(1525, '7', 'Silverado 2500 HD Crew Cab', '2003', 'Pickup', NULL, 'Silverado 2500 HD Crew Cab', 1, '2023-09-01 12:16:52', '2023-09-01 12:16:52'),
(1526, '7', 'Silverado 3500 Regular Cab', '2003', 'Pickup', NULL, 'Silverado 3500 Regular Cab', 1, '2023-09-01 12:16:52', '2023-09-01 12:16:52'),
(1527, '7', 'Blazer', '2002', 'SUV', NULL, 'Blazer', 1, '2023-09-01 12:16:52', '2023-09-01 12:16:52'),
(1528, '7', 'Silverado 3500 Extended Cab', '2003', 'Pickup', NULL, 'Silverado 3500 Extended Cab', 1, '2023-09-01 12:16:52', '2023-09-01 12:16:52'),
(1529, '7', 'Venture Passenger', '2003', 'Van/Minivan', NULL, 'Venture Passenger', 1, '2023-09-01 12:16:52', '2023-09-01 12:16:52'),
(1531, '7', 'Venture Cargo', '2003', 'Van/Minivan', NULL, 'Venture Cargo', 1, '2023-09-01 12:16:52', '2023-09-01 12:16:52'),
(1533, '7', 'Astro Cargo', '2002', 'Van/Minivan', NULL, 'Astro Cargo', 1, '2023-09-01 12:16:52', '2023-09-01 12:16:52'),
(1534, '7', 'Camaro', '2002', 'Coupe, Convertible', NULL, 'Camaro', 1, '2023-09-01 12:16:52', '2023-09-01 12:16:52'),
(1535, '7', 'Corvette', '2002', 'Coupe, Convertible', NULL, 'Corvette', 1, '2023-09-01 12:16:52', '2023-09-01 12:16:52'),
(1636, '7', '2500 Crew Cab', '1999', 'Pickup', NULL, '2500 Crew Cab', 1, '2023-09-01 12:16:55', '2023-09-01 12:16:55'),
(1646, '7', 'Tahoe (New)', '2000', 'SUV', NULL, 'Tahoe (New)', 1, '2023-09-01 12:16:55', '2023-09-01 12:16:55'),
(1693, '7', 'Metro', '1998', 'Hatchback, Sedan', NULL, 'Metro', 1, '2023-09-01 12:16:57', '2023-09-01 12:16:57'),
(1708, '7', 'Prizm', '1998', 'Sedan', NULL, 'Prizm', 1, '2023-09-01 12:16:57', '2023-09-01 12:16:57'),
(1735, '7', 'G-Series 3500', '1997', 'Van/Minivan', NULL, 'G-Series 3500', 1, '2023-09-01 12:16:58', '2023-09-01 12:16:58'),
(1745, '7', '2500 HD Extended Cab', '1996', 'Pickup', NULL, '2500 HD Extended Cab', 1, '2023-09-01 12:16:59', '2023-09-01 12:16:59'),
(1754, '7', '3500 Extended Cab', '1996', 'Pickup', NULL, '3500 Extended Cab', 1, '2023-09-01 12:16:59', '2023-09-01 12:16:59'),
(1759, '7', 'Caprice Classic', '1996', 'Sedan, Wagon', NULL, 'Caprice Classic', 1, '2023-09-01 12:16:59', '2023-09-01 12:16:59'),
(1760, '7', 'G-Series 1500', '1996', 'Van/Minivan', NULL, 'G-Series 1500', 1, '2023-09-01 12:16:59', '2023-09-01 12:16:59'),
(1762, '7', 'Corsica', '1996', 'Sedan', NULL, 'Corsica', 1, '2023-09-01 12:16:59', '2023-09-01 12:16:59'),
(1763, '7', 'Lumina', '1996', 'Sedan', NULL, 'Lumina', 1, '2023-09-01 12:16:59', '2023-09-01 12:16:59'),
(1764, '7', 'G-Series 2500', '1996', 'Van/Minivan', NULL, 'G-Series 2500', 1, '2023-09-01 12:16:59', '2023-09-01 12:16:59'),
(1765, '7', 'Monte Carlo', '1996', 'Coupe', NULL, 'Monte Carlo', 1, '2023-09-01 12:16:59', '2023-09-01 12:16:59'),
(1766, '7', 'S10 Extended Cab', '1996', 'Pickup', NULL, 'S10 Extended Cab', 1, '2023-09-01 12:16:59', '2023-09-01 12:16:59'),
(1768, '7', 'Sportvan G30', '1996', 'Van/Minivan', NULL, 'Sportvan G30', 1, '2023-09-01 12:16:59', '2023-09-01 12:16:59'),
(1769, '7', 'G-Series G30', '1996', 'Van/Minivan', NULL, 'G-Series G30', 1, '2023-09-01 12:16:59', '2023-09-01 12:16:59'),
(1773, '7', 'Lumina Passenger', '1996', 'Van/Minivan', NULL, 'Lumina Passenger', 1, '2023-09-01 12:16:59', '2023-09-01 12:16:59'),
(1775, '7', '2500 Extended Cab', '1995', 'Pickup', NULL, '2500 Extended Cab', 1, '2023-09-01 12:16:59', '2023-09-01 12:16:59'),
(1777, '7', '3500 HD Extended Cab', '1995', 'Pickup', NULL, '3500 HD Extended Cab', 1, '2023-09-01 12:16:59', '2023-09-01 12:16:59'),
(1779, '7', 'Astro Passenger', '1995', 'Van/Minivan', NULL, 'Astro Passenger', 1, '2023-09-01 12:16:59', '2023-09-01 12:16:59'),
(1780, '7', 'Suburban 2500', '1996', 'SUV', NULL, 'Suburban 2500', 1, '2023-09-01 12:16:59', '2023-09-01 12:16:59'),
(1782, '7', 'Lumina Cargo', '1995', 'Van/Minivan', NULL, 'Lumina Cargo', 1, '2023-09-01 12:16:59', '2023-09-01 12:16:59'),
(1785, '7', 'Cavalier', '1995', 'Coupe, Sedan, Convertible', NULL, 'Cavalier', 1, '2023-09-01 12:16:59', '2023-09-01 12:16:59'),
(1786, '7', '3500 Crew Cab', '1995', 'Pickup', NULL, '3500 Crew Cab', 1, '2023-09-01 12:16:59', '2023-09-01 12:16:59'),
(1788, '7', 'Beretta', '1995', 'Coupe', NULL, 'Beretta', 1, '2023-09-01 12:17:00', '2023-09-01 12:17:00'),
(1790, '7', 'Tahoe', '1995', 'SUV', NULL, 'Tahoe', 1, '2023-09-01 12:17:00', '2023-09-01 12:17:00'),
(1791, '7', 'S10 Regular Cab', '1995', 'Pickup', NULL, 'S10 Regular Cab', 1, '2023-09-01 12:17:00', '2023-09-01 12:17:00'),
(1798, '7', '3500 HD Regular Cab', '1995', 'Pickup', NULL, '3500 HD Regular Cab', 1, '2023-09-01 12:17:00', '2023-09-01 12:17:00'),
(1874, '7', 'Lumina APV', '1992', 'Van/Minivan', NULL, 'Lumina APV', 1, '2023-09-01 12:17:03', '2023-09-01 12:17:03'),
(1875, '7', 'G-Series G10', '1992', 'Van/Minivan', NULL, 'G-Series G10', 1, '2023-09-01 12:17:03', '2023-09-01 12:17:03'),
(1878, '7', 'APV Cargo', '1992', 'Van/Minivan', NULL, 'APV Cargo', 1, '2023-09-01 12:17:03', '2023-09-01 12:17:03'),
(1881, '7', 'G-Series G20', '1992', 'Van/Minivan', NULL, 'G-Series G20', 1, '2023-09-01 12:17:03', '2023-09-01 12:17:03'),
(1884, '7', 'S10 Blazer', '1992', 'SUV', NULL, 'S10 Blazer', 1, '2023-09-01 12:17:03', '2023-09-01 12:17:03'),
(1886, '7', 'Sportvan G10', '1992', 'Van/Minivan', NULL, 'Sportvan G10', 1, '2023-09-01 12:17:03', '2023-09-01 12:17:03'),
(1887, '7', 'Sportvan G20', '1992', 'Van/Minivan', NULL, 'Sportvan G20', 1, '2023-09-01 12:17:03', '2023-09-01 12:17:03'),
(1889, '7', 'Caprice', '1992', 'Sedan, Wagon', NULL, 'Caprice', 1, '2023-09-01 12:17:03', '2023-09-01 12:17:03'),
(1966, '8', 'Grand Voyager', '2000', 'Van/Minivan', NULL, 'Grand Voyager', 1, '2023-09-01 12:18:20', '2023-09-01 12:18:20'),
(1987, '8', 'Pacifica', '2004', 'Wagon', NULL, 'Pacifica', 1, '2023-09-01 12:18:21', '2023-09-01 12:18:21'),
(1990, '8', 'Voyager', '2003', 'Van/Minivan', NULL, 'Voyager', 1, '2023-09-01 12:18:21', '2023-09-01 12:18:21'),
(1996, '8', '200', '2016', 'Sedan', NULL, '200', 1, '2023-09-01 12:18:21', '2023-09-01 12:18:21'),
(2010, '8', 'Pacifica Hybrid', '2019', 'Van/Minivan', NULL, 'Pacifica Hybrid', 1, '2023-09-01 12:18:21', '2023-09-01 12:18:21'),
(2013, '8', 'Aspen', '2009', 'SUV', NULL, 'Aspen', 1, '2023-09-01 12:18:21', '2023-09-01 12:18:21'),
(2016, '8', 'Prowler', '2001', 'Convertible', NULL, 'Prowler', 1, '2023-09-01 12:18:21', '2023-09-01 12:18:21'),
(2017, '8', '300M', '2004', 'Sedan', NULL, '300M', 1, '2023-09-01 12:18:21', '2023-09-01 12:18:21'),
(2020, '8', 'PT Cruiser', '2004', 'Wagon', NULL, 'PT Cruiser', 1, '2023-09-01 12:18:22', '2023-09-01 12:18:22'),
(2027, '8', 'LHS', '1997', 'Sedan', NULL, 'LHS', 1, '2023-09-01 12:18:22', '2023-09-01 12:18:22'),
(2033, '8', '300', '1999', 'Sedan', NULL, '300', 1, '2023-09-01 12:18:22', '2023-09-01 12:18:22'),
(2040, '8', 'Town & Country', '1997', 'Van/Minivan', NULL, 'Town & Country', 1, '2023-09-01 12:18:22', '2023-09-01 12:18:22'),
(2044, '8', 'Cirrus', '1996', 'Sedan', NULL, 'Cirrus', 1, '2023-09-01 12:18:22', '2023-09-01 12:18:22'),
(2045, '8', 'New Yorker', '1996', 'Sedan', NULL, 'New Yorker', 1, '2023-09-01 12:18:22', '2023-09-01 12:18:22'),
(2046, '8', 'Sebring', '1996', 'Coupe, Convertible', NULL, 'Sebring', 1, '2023-09-01 12:18:22', '2023-09-01 12:18:22'),
(2047, '8', 'Concorde', '1996', 'Sedan', NULL, 'Concorde', 1, '2023-09-01 12:18:22', '2023-09-01 12:18:22'),
(2208, '8', 'Fifth Ave', '1992', 'Sedan', NULL, 'Fifth Ave', 1, '2023-09-01 12:18:28', '2023-09-01 12:18:28'),
(2210, '8', 'LeBaron', '1992', 'Sedan, Coupe, Convertible', NULL, 'LeBaron', 1, '2023-09-01 12:18:28', '2023-09-01 12:18:28'),
(2214, '8', 'Imperial', '1993', 'Sedan', NULL, 'Imperial', 1, '2023-09-01 12:18:28', '2023-09-01 12:18:28'),
(2234, '10', 'Ram 3500 Crew Cab', '2010', 'Pickup', NULL, 'Ram 3500 Crew Cab', 1, '2023-09-01 12:23:16', '2023-09-01 12:23:16'),
(2251, '10', 'Ram 2500 Crew Cab', '2010', 'Pickup', NULL, 'Ram 2500 Crew Cab', 1, '2023-09-01 12:23:17', '2023-09-01 12:23:17'),
(2279, '10', 'Dart', '2013', 'Sedan', NULL, 'Dart', 1, '2023-09-01 12:23:17', '2023-09-01 12:23:17'),
(2280, '10', 'Dakota Crew Cab', '2009', 'Pickup', NULL, 'Dakota Crew Cab', 1, '2023-09-01 12:23:17', '2023-09-01 12:23:17'),
(2285, '10', 'Nitro', '2010', 'SUV', NULL, 'Nitro', 1, '2023-09-01 12:23:17', '2023-09-01 12:23:17'),
(2288, '10', 'Ram 2500 Mega Cab', '2009', 'Pickup', NULL, 'Ram 2500 Mega Cab', 1, '2023-09-01 12:23:17', '2023-09-01 12:23:17'),
(2289, '10', 'Dakota Extended Cab', '2009', 'Pickup', NULL, 'Dakota Extended Cab', 1, '2023-09-01 12:23:18', '2023-09-01 12:23:18'),
(2292, '10', 'Journey', '2013', 'SUV', NULL, 'Journey', 1, '2023-09-01 12:23:18', '2023-09-01 12:23:18'),
(2295, '10', 'Grand Caravan Passenger', '2014', 'Van/Minivan', NULL, 'Grand Caravan Passenger', 1, '2023-09-01 12:23:18', '2023-09-01 12:23:18'),
(2296, '10', 'Durango', '2016', 'SUV', NULL, 'Durango', 1, '2023-09-01 12:23:18', '2023-09-01 12:23:18'),
(2299, '10', 'Avenger', '2010', 'Sedan', NULL, 'Avenger', 1, '2023-09-01 12:23:18', '2023-09-01 12:23:18'),
(2300, '10', 'Charger', '2014', 'Sedan', NULL, 'Charger', 1, '2023-09-01 12:23:18', '2023-09-01 12:23:18'),
(2301, '10', 'Challenger', '2011', 'Coupe', NULL, 'Challenger', 1, '2023-09-01 12:23:18', '2023-09-01 12:23:18'),
(2302, '10', 'Caliber', '2011', 'Wagon', NULL, 'Caliber', 1, '2023-09-01 12:23:18', '2023-09-01 12:23:18'),
(2303, '10', 'Grand Caravan Cargo', '2010', 'Van/Minivan', NULL, 'Grand Caravan Cargo', 1, '2023-09-01 12:23:18', '2023-09-01 12:23:18'),
(2316, '10', 'Ram 1500 Crew Cab', '2009', 'Pickup', NULL, 'Ram 1500 Crew Cab', 1, '2023-09-01 12:23:18', '2023-09-01 12:23:18'),
(2384, '10', 'Ram 3500 Mega Cab', '2006', 'Pickup', NULL, 'Ram 3500 Mega Cab', 1, '2023-09-01 12:23:21', '2023-09-01 12:23:21'),
(2386, '10', 'Ram 1500 Mega Cab', '2006', 'Pickup', NULL, 'Ram 1500 Mega Cab', 1, '2023-09-01 12:23:21', '2023-09-01 12:23:21'),
(2410, '10', 'Magnum', '2005', 'Wagon', NULL, 'Magnum', 1, '2023-09-01 12:23:21', '2023-09-01 12:23:21'),
(2513, '10', 'Dakota Quad Cab', '2000', 'Pickup', NULL, 'Dakota Quad Cab', 1, '2023-09-01 12:23:24', '2023-09-01 12:23:24'),
(2521, '10', 'Ram 1500 Quad Cab', '1999', 'Pickup', NULL, 'Ram 1500 Quad Cab', 1, '2023-09-01 12:23:25', '2023-09-01 12:23:25'),
(2524, '10', 'Ram 1500 Club Cab', '1999', 'Pickup', NULL, 'Ram 1500 Club Cab', 1, '2023-09-01 12:23:25', '2023-09-01 12:23:25'),
(2527, '10', 'Ram 2500 Quad Cab', '1999', 'Pickup', NULL, 'Ram 2500 Quad Cab', 1, '2023-09-01 12:23:25', '2023-09-01 12:23:25'),
(2530, '10', 'Ram 2500 Club Cab', '1999', 'Pickup', NULL, 'Ram 2500 Club Cab', 1, '2023-09-01 12:23:25', '2023-09-01 12:23:25'),
(2532, '10', 'Ram 3500 Quad Cab', '1999', 'Pickup', NULL, 'Ram 3500 Quad Cab', 1, '2023-09-01 12:23:25', '2023-09-01 12:23:25'),
(2535, '10', 'Ram Van 2500', '1999', 'Van/Minivan', NULL, 'Ram Van 2500', 1, '2023-09-01 12:23:25', '2023-09-01 12:23:25'),
(2536, '10', 'Ram Van 1500', '1999', 'Van/Minivan', NULL, 'Ram Van 1500', 1, '2023-09-01 12:23:25', '2023-09-01 12:23:25'),
(2542, '10', 'Ram Wagon 3500', '1999', 'Van/Minivan', NULL, 'Ram Wagon 3500', 1, '2023-09-01 12:23:25', '2023-09-01 12:23:25'),
(2544, '10', 'Ram 3500 Regular Cab', '1999', 'Pickup', NULL, 'Ram 3500 Regular Cab', 1, '2023-09-01 12:23:25', '2023-09-01 12:23:25'),
(2545, '10', 'Dakota Club Cab', '1998', 'Pickup', NULL, 'Dakota Club Cab', 1, '2023-09-01 12:23:25', '2023-09-01 12:23:25'),
(2546, '10', 'Ram 2500 Regular Cab', '1998', 'Pickup', NULL, 'Ram 2500 Regular Cab', 1, '2023-09-01 12:23:25', '2023-09-01 12:23:25'),
(2547, '10', 'Intrepid', '1998', 'Sedan', NULL, 'Intrepid', 1, '2023-09-01 12:23:25', '2023-09-01 12:23:25'),
(2548, '10', 'Ram Wagon 1500', '1999', 'Van/Minivan', NULL, 'Ram Wagon 1500', 1, '2023-09-01 12:23:25', '2023-09-01 12:23:25'),
(2551, '10', 'Ram Wagon 2500', '1999', 'Van/Minivan', NULL, 'Ram Wagon 2500', 1, '2023-09-01 12:23:25', '2023-09-01 12:23:25'),
(2552, '10', 'Viper', '1999', 'Coupe, Convertible', NULL, 'Viper', 1, '2023-09-01 12:23:25', '2023-09-01 12:23:25'),
(2554, '10', 'Caravan Passenger', '1998', 'Van/Minivan', NULL, 'Caravan Passenger', 1, '2023-09-01 12:23:25', '2023-09-01 12:23:25'),
(2555, '10', 'Ram Van 3500', '1999', 'Van/Minivan', NULL, 'Ram Van 3500', 1, '2023-09-01 12:23:25', '2023-09-01 12:23:25'),
(2556, '10', 'Dakota Regular Cab', '1998', 'Pickup', NULL, 'Dakota Regular Cab', 1, '2023-09-01 12:23:26', '2023-09-01 12:23:26'),
(2558, '10', 'Stratus', '1998', 'Sedan', NULL, 'Stratus', 1, '2023-09-01 12:23:26', '2023-09-01 12:23:26'),
(2559, '10', 'Ram 1500 Regular Cab', '1998', 'Pickup', NULL, 'Ram 1500 Regular Cab', 1, '2023-09-01 12:23:26', '2023-09-01 12:23:26'),
(2642, '10', 'Ram 3500 Club Cab', '1995', 'Pickup', NULL, 'Ram 3500 Club Cab', 1, '2023-09-01 12:23:27', '2023-09-01 12:23:27'),
(2686, '10', 'D250 Regular Cab', '1992', 'Pickup', NULL, 'D250 Regular Cab', 1, '2023-09-01 12:23:29', '2023-09-01 12:23:29'),
(2687, '10', 'D150 Club Cab', '1992', 'Pickup', NULL, 'D150 Club Cab', 1, '2023-09-01 12:23:29', '2023-09-01 12:23:29'),
(2688, '10', 'D250 Club Cab', '1992', 'Pickup', NULL, 'D250 Club Cab', 1, '2023-09-01 12:23:29', '2023-09-01 12:23:29'),
(2693, '10', 'D150 Regular Cab', '1992', 'Pickup', NULL, 'D150 Regular Cab', 1, '2023-09-01 12:23:29', '2023-09-01 12:23:29'),
(2695, '10', 'Ram 50 Regular Cab', '1992', 'Pickup', NULL, 'Ram 50 Regular Cab', 1, '2023-09-01 12:23:29', '2023-09-01 12:23:29'),
(2697, '10', 'D350 Regular Cab', '1992', 'Pickup', NULL, 'D350 Regular Cab', 1, '2023-09-01 12:23:29', '2023-09-01 12:23:29'),
(2698, '10', 'Colt', '1992', 'Hatchback', NULL, 'Colt', 1, '2023-09-01 12:23:29', '2023-09-01 12:23:29'),
(2700, '10', 'D350 Club Cab', '1992', 'Pickup', NULL, 'D350 Club Cab', 1, '2023-09-01 12:23:29', '2023-09-01 12:23:29'),
(2701, '10', 'Ram Wagon B250', '1992', 'Van/Minivan', NULL, 'Ram Wagon B250', 1, '2023-09-01 12:23:29', '2023-09-01 12:23:29'),
(2702, '10', 'Ram Wagon B150', '1992', 'Van/Minivan', NULL, 'Ram Wagon B150', 1, '2023-09-01 12:23:29', '2023-09-01 12:23:29'),
(2703, '10', 'Ram Van B150', '1992', 'Van/Minivan', NULL, 'Ram Van B150', 1, '2023-09-01 12:23:29', '2023-09-01 12:23:29'),
(2704, '10', 'Ram Van B250', '1992', 'Van/Minivan', NULL, 'Ram Van B250', 1, '2023-09-01 12:23:29', '2023-09-01 12:23:29'),
(2705, '10', 'Ram Van B350', '1992', 'Van/Minivan', NULL, 'Ram Van B350', 1, '2023-09-01 12:23:29', '2023-09-01 12:23:29'),
(2706, '10', 'Monaco', '1992', 'Sedan', NULL, 'Monaco', 1, '2023-09-01 12:23:29', '2023-09-01 12:23:29'),
(2707, '10', 'Dynasty', '1992', 'Sedan', NULL, 'Dynasty', 1, '2023-09-01 12:23:29', '2023-09-01 12:23:29'),
(2708, '10', 'Daytona', '1992', 'Hatchback', NULL, 'Daytona', 1, '2023-09-01 12:23:29', '2023-09-01 12:23:29'),
(2709, '10', 'Ram Wagon B350', '1992', 'Van/Minivan', NULL, 'Ram Wagon B350', 1, '2023-09-01 12:23:29', '2023-09-01 12:23:29'),
(2710, '10', 'Ramcharger', '1992', 'SUV', NULL, 'Ramcharger', 1, '2023-09-01 12:23:29', '2023-09-01 12:23:29'),
(2711, '10', 'Stealth', '1992', 'Hatchback', NULL, 'Stealth', 1, '2023-09-01 12:23:29', '2023-09-01 12:23:29'),
(2712, '10', 'Shadow', '1992', 'Hatchback, Convertible', NULL, 'Shadow', 1, '2023-09-01 12:23:29', '2023-09-01 12:23:29'),
(2713, '10', 'Spirit', '1992', 'Sedan', NULL, 'Spirit', 1, '2023-09-01 12:23:29', '2023-09-01 12:23:29'),
(2719, '11', 'Portofino', '2018', 'Convertible', NULL, 'Portofino', 1, '2023-09-01 12:24:38', '2023-09-01 12:24:38'),
(2733, '11', '458 Spider', '2013', 'Convertible', NULL, '458 Spider', 1, '2023-09-01 12:24:38', '2023-09-01 12:24:38'),
(2738, '11', '812 Superfast', '2018', 'Coupe', NULL, '812 Superfast', 1, '2023-09-01 12:24:39', '2023-09-01 12:24:39'),
(2741, '11', '599 GTO', '2011', 'Coupe', NULL, '599 GTO', 1, '2023-09-01 12:24:39', '2023-09-01 12:24:39'),
(2743, '11', '488 GTB', '2016', 'Coupe', NULL, '488 GTB', 1, '2023-09-01 12:24:39', '2023-09-01 12:24:39'),
(2746, '11', 'GTC4Lusso', '2018', 'Hatchback', NULL, 'GTC4Lusso', 1, '2023-09-01 12:24:39', '2023-09-01 12:24:39'),
(2751, '11', '430 Scuderia', '2008', 'Coupe', NULL, '430 Scuderia', 1, '2023-09-01 12:24:39', '2023-09-01 12:24:39'),
(2759, '11', 'F12berlinetta', '2014', 'Coupe', NULL, 'F12berlinetta', 1, '2023-09-01 12:24:39', '2023-09-01 12:24:39'),
(2763, '11', '488 Spider', '2018', 'Convertible', NULL, '488 Spider', 1, '2023-09-01 12:24:39', '2023-09-01 12:24:39'),
(2766, '11', '458 Italia', '2010', 'Coupe', NULL, '458 Italia', 1, '2023-09-01 12:24:39', '2023-09-01 12:24:39'),
(2771, '11', 'California', '2011', 'Convertible', NULL, 'California', 1, '2023-09-01 12:24:39', '2023-09-01 12:24:39'),
(2772, '11', '612 Scaglietti', '2009', 'Coupe', NULL, '612 Scaglietti', 1, '2023-09-01 12:24:39', '2023-09-01 12:24:39'),
(2774, '11', '599 GTB Fiorano', '2007', 'Coupe', NULL, '599 GTB Fiorano', 1, '2023-09-01 12:24:39', '2023-09-01 12:24:39'),
(2775, '11', 'F430', '2006', 'Convertible, Coupe', NULL, 'F430', 1, '2023-09-01 12:24:39', '2023-09-01 12:24:39'),
(2803, '12', '124 Spider', '2017', 'Convertible', NULL, '124 Spider', 1, '2023-09-01 12:25:52', '2023-09-01 12:25:52'),
(2805, '12', '500L', '2017', 'Hatchback', NULL, '500L', 1, '2023-09-01 12:25:52', '2023-09-01 12:25:52'),
(2810, '12', '500', '2018', 'Hatchback', NULL, '500', 1, '2023-09-01 12:25:52', '2023-09-01 12:25:52'),
(2811, '12', '500 Abarth', '2015', 'Hatchback, Convertible', NULL, '500 Abarth', 1, '2023-09-01 12:25:52', '2023-09-01 12:25:52'),
(2812, '12', '500c Abarth', '2017', 'Convertible', NULL, '500c Abarth', 1, '2023-09-01 12:25:52', '2023-09-01 12:25:52'),
(2813, '12', '500X', '2018', 'SUV', NULL, '500X', 1, '2023-09-01 12:25:52', '2023-09-01 12:25:52'),
(2814, '12', '500e', '2015', 'Hatchback', NULL, '500e', 1, '2023-09-01 12:25:52', '2023-09-01 12:25:52'),
(2815, '12', '500c', '2015', 'Convertible', NULL, '500c', 1, '2023-09-01 12:25:52', '2023-09-01 12:25:52'),
(3049, '13', 'Expedition EL', '2013', 'SUV', NULL, 'Expedition EL', 1, '2023-09-01 12:27:30', '2023-09-01 12:27:30'),
(3057, '13', 'Fiesta', '2011', 'Sedan, Hatchback', NULL, 'Fiesta', 1, '2023-09-01 12:27:31', '2023-09-01 12:27:31'),
(3065, '13', 'F250 Super Duty Crew Cab', '2013', 'Pickup', NULL, 'F250 Super Duty Crew Cab', 1, '2023-09-01 12:27:31', '2023-09-01 12:27:31'),
(3066, '13', 'F150 SuperCrew Cab', '2013', 'Pickup', NULL, 'F150 SuperCrew Cab', 1, '2023-09-01 12:27:31', '2023-09-01 12:27:31'),
(3067, '13', 'F350 Super Duty Crew Cab', '2013', 'Pickup', NULL, 'F350 Super Duty Crew Cab', 1, '2023-09-01 12:27:31', '2023-09-01 12:27:31'),
(3071, '13', 'Flex', '2013', 'SUV', NULL, 'Flex', 1, '2023-09-01 12:27:31', '2023-09-01 12:27:31'),
(3296, '13', 'GT', '2005', 'Coupe', NULL, 'GT', 1, '2023-09-01 12:27:38', '2023-09-01 12:27:38'),
(3312, '13', 'F150 (Heritage) Super Cab', '2004', 'Pickup', NULL, 'F150 (Heritage) Super Cab', 1, '2023-09-01 12:27:39', '2023-09-01 12:27:39'),
(3313, '13', 'F350 Super Duty Regular Cab', '2004', 'Pickup', NULL, 'F350 Super Duty Regular Cab', 1, '2023-09-01 12:27:39', '2023-09-01 12:27:39'),
(3314, '13', 'F350 Super Duty Super Cab', '2004', 'Pickup', NULL, 'F350 Super Duty Super Cab', 1, '2023-09-01 12:27:39', '2023-09-01 12:27:39'),
(3319, '13', 'Freestar Passenger', '2004', 'Van/Minivan', NULL, 'Freestar Passenger', 1, '2023-09-01 12:27:39', '2023-09-01 12:27:39'),
(3322, '13', 'F250 Super Duty Regular Cab', '2003', 'Pickup', NULL, 'F250 Super Duty Regular Cab', 1, '2023-09-01 12:27:39', '2023-09-01 12:27:39'),
(3324, '13', 'Focus', '2003', 'Sedan, Wagon, Hatchback', NULL, 'Focus', 1, '2023-09-01 12:27:39', '2023-09-01 12:27:39'),
(3325, '13', 'Explorer Sport Trac', '2003', 'Pickup', NULL, 'Explorer Sport Trac', 1, '2023-09-01 12:27:39', '2023-09-01 12:27:39'),
(3326, '13', 'Crown Victoria', '2003', 'Sedan', NULL, 'Crown Victoria', 1, '2023-09-01 12:27:39', '2023-09-01 12:27:39'),
(3327, '13', 'Explorer Sport', '2002', 'SUV', NULL, 'Explorer Sport', 1, '2023-09-01 12:27:39', '2023-09-01 12:27:39'),
(3550, '13', 'Tempo', '1993', 'Coupe, Sedan', NULL, 'Tempo', 1, '2023-09-01 12:27:45', '2023-09-01 12:27:45'),
(3561, '13', 'Bronco', '1995', 'SUV', NULL, 'Bronco', 1, '2023-09-01 12:27:46', '2023-09-01 12:27:46'),
(3566, '13', 'Econoline E250 Cargo', '1995', 'Van/Minivan', NULL, 'Econoline E250 Cargo', 1, '2023-09-01 12:27:46', '2023-09-01 12:27:46'),
(3568, '13', 'Econoline E150 Cargo', '1995', 'Van/Minivan', NULL, 'Econoline E150 Cargo', 1, '2023-09-01 12:27:46', '2023-09-01 12:27:46'),
(3571, '13', 'F350 Crew Cab', '1995', 'Pickup', NULL, 'F350 Crew Cab', 1, '2023-09-01 12:27:46', '2023-09-01 12:27:46'),
(3575, '13', 'F350 Regular Cab', '1995', 'Pickup', NULL, 'F350 Regular Cab', 1, '2023-09-01 12:27:47', '2023-09-01 12:27:47'),
(3576, '13', 'Ranger Regular Cab', '1995', 'Pickup', NULL, 'Ranger Regular Cab', 1, '2023-09-01 12:27:47', '2023-09-01 12:27:47'),
(3578, '13', 'Thunderbird', '1995', 'Coupe', NULL, 'Thunderbird', 1, '2023-09-01 12:27:47', '2023-09-01 12:27:47'),
(3579, '13', 'Windstar Passenger', '1995', 'Van/Minivan', NULL, 'Windstar Passenger', 1, '2023-09-01 12:27:47', '2023-09-01 12:27:47'),
(3582, '13', 'Aspire', '1994', 'Hatchback', NULL, 'Aspire', 1, '2023-09-01 12:27:47', '2023-09-01 12:27:47'),
(3583, '13', 'Aerostar Passenger', '1994', 'Van/Minivan', NULL, 'Aerostar Passenger', 1, '2023-09-01 12:27:47', '2023-09-01 12:27:47'),
(3730, '13', 'Ranger SuperCab', '2019', 'Pickup', NULL, 'Ranger SuperCab', 1, '2023-09-01 12:27:51', '2023-09-01 12:27:51'),
(3805, '13', 'Transit 350 HD Van', '2016', 'Van/Minivan', NULL, 'Transit 350 HD Van', 1, '2023-09-01 12:27:54', '2023-09-01 12:27:54'),
(3822, '13', 'F450 Super Duty Crew Cab', '2015', 'Pickup', NULL, 'F450 Super Duty Crew Cab', 1, '2023-09-01 12:27:55', '2023-09-01 12:27:55'),
(3824, '13', 'Fusion Energi', '2015', 'Sedan', NULL, 'Fusion Energi', 1, '2023-09-01 12:27:55', '2023-09-01 12:27:55'),
(3825, '13', 'Fusion', '2015', 'Sedan', NULL, 'Fusion', 1, '2023-09-01 12:27:55', '2023-09-01 12:27:55'),
(3826, '13', 'Focus ST', '2015', 'Hatchback', NULL, 'Focus ST', 1, '2023-09-01 12:27:55', '2023-09-01 12:27:55'),
(3827, '13', 'Transit 150 Wagon', '2015', 'Van/Minivan', NULL, 'Transit 150 Wagon', 1, '2023-09-01 12:27:55', '2023-09-01 12:27:55'),
(3828, '13', 'Transit 250 Van', '2015', 'Van/Minivan', NULL, 'Transit 250 Van', 1, '2023-09-01 12:27:55', '2023-09-01 12:27:55'),
(3829, '13', 'Transit 150 Van', '2015', 'Van/Minivan', NULL, 'Transit 150 Van', 1, '2023-09-01 12:27:55', '2023-09-01 12:27:55'),
(3831, '13', 'Transit 350 Wagon', '2015', 'Van/Minivan', NULL, 'Transit 350 Wagon', 1, '2023-09-01 12:27:55', '2023-09-01 12:27:55'),
(3832, '13', 'Transit 350 Van', '2015', 'Van/Minivan', NULL, 'Transit 350 Van', 1, '2023-09-01 12:27:55', '2023-09-01 12:27:55'),
(3835, '13', 'C-MAX Hybrid', '2014', 'Wagon', NULL, 'C-MAX Hybrid', 1, '2023-09-01 12:27:55', '2023-09-01 12:27:55'),
(3836, '13', 'E150 Passenger', '2014', 'Van/Minivan', NULL, 'E150 Passenger', 1, '2023-09-01 12:27:55', '2023-09-01 12:27:55'),
(3837, '13', 'E150 Cargo', '2014', 'Van/Minivan', NULL, 'E150 Cargo', 1, '2023-09-01 12:27:56', '2023-09-01 12:27:56'),
(3838, '13', 'E250 Cargo', '2014', 'Van/Minivan', NULL, 'E250 Cargo', 1, '2023-09-01 12:27:56', '2023-09-01 12:27:56'),
(3839, '13', 'Expedition', '2014', 'SUV', NULL, 'Expedition', 1, '2023-09-01 12:27:56', '2023-09-01 12:27:56'),
(4067, '13', 'Five Hundred', '2006', 'Sedan', NULL, 'Five Hundred', 1, '2023-09-01 12:28:02', '2023-09-01 12:28:02'),
(4075, '13', 'E250 Super Duty Cargo', '2004', 'Van/Minivan', NULL, 'E250 Super Duty Cargo', 1, '2023-09-01 12:28:02', '2023-09-01 12:28:02'),
(4080, '13', 'Freestar Cargo', '2007', 'Van/Minivan', NULL, 'Freestar Cargo', 1, '2023-09-01 12:28:02', '2023-09-01 12:28:02'),
(4083, '13', 'F250 Super Duty Super Cab', '2004', 'Pickup', NULL, 'F250 Super Duty Super Cab', 1, '2023-09-01 12:28:02', '2023-09-01 12:28:02'),
(4084, '13', 'Freestyle', '2005', 'SUV', NULL, 'Freestyle', 1, '2023-09-01 12:28:02', '2023-09-01 12:28:02'),
(4088, '13', 'E150 Super Duty Cargo', '2006', 'Van/Minivan', NULL, 'E150 Super Duty Cargo', 1, '2023-09-01 12:28:02', '2023-09-01 12:28:02'),
(4091, '13', 'E350 Super Duty Cargo', '2006', 'Van/Minivan', NULL, 'E350 Super Duty Cargo', 1, '2023-09-01 12:28:03', '2023-09-01 12:28:03'),
(4092, '13', 'E150 Super Duty Passenger', '2006', 'Van/Minivan', NULL, 'E150 Super Duty Passenger', 1, '2023-09-01 12:28:03', '2023-09-01 12:28:03'),
(4093, '13', 'Escape', '2006', 'SUV', NULL, 'Escape', 1, '2023-09-01 12:28:03', '2023-09-01 12:28:03'),
(4094, '13', 'E350 Super Duty Passenger', '2006', 'Van/Minivan', NULL, 'E350 Super Duty Passenger', 1, '2023-09-01 12:28:03', '2023-09-01 12:28:03'),
(4095, '13', 'F150 Regular Cab', '2006', 'Pickup', NULL, 'F150 Regular Cab', 1, '2023-09-01 12:28:03', '2023-09-01 12:28:03'),
(4251, '13', 'ZX2', '2001', 'Coupe', NULL, 'ZX2', 1, '2023-09-01 12:28:08', '2023-09-01 12:28:08'),
(4260, '13', 'Econoline E150 Passenger', '1999', 'Van/Minivan', NULL, 'Econoline E150 Passenger', 1, '2023-09-01 12:28:08', '2023-09-01 12:28:08'),
(4300, '13', 'Econoline E350 Super Duty Passenger', '1999', 'Van/Minivan', NULL, 'Econoline E350 Super Duty Passenger', 1, '2023-09-01 12:28:10', '2023-09-01 12:28:10'),
(4301, '13', 'Econoline E350 Super Duty Cargo', '1999', 'Van/Minivan', NULL, 'Econoline E350 Super Duty Cargo', 1, '2023-09-01 12:28:10', '2023-09-01 12:28:10'),
(4332, '13', 'Aerostar Cargo', '1997', 'Van/Minivan', NULL, 'Aerostar Cargo', 1, '2023-09-01 12:28:11', '2023-09-01 12:28:11'),
(4335, '13', 'Explorer', '1997', 'SUV', NULL, 'Explorer', 1, '2023-09-01 12:28:11', '2023-09-01 12:28:11'),
(4336, '13', 'Contour', '1997', 'Sedan', NULL, 'Contour', 1, '2023-09-01 12:28:11', '2023-09-01 12:28:11'),
(4340, '13', 'F250 Super Cab', '1997', 'Pickup', NULL, 'F250 Super Cab', 1, '2023-09-01 12:28:11', '2023-09-01 12:28:11'),
(4343, '13', 'F250 Crew Cab', '1997', 'Pickup', NULL, 'F250 Crew Cab', 1, '2023-09-01 12:28:11', '2023-09-01 12:28:11'),
(4344, '13', 'F250 Regular Cab', '1997', 'Pickup', NULL, 'F250 Regular Cab', 1, '2023-09-01 12:28:12', '2023-09-01 12:28:12'),
(4345, '13', 'Probe', '1997', 'Hatchback', NULL, 'Probe', 1, '2023-09-01 12:28:12', '2023-09-01 12:28:12'),
(4346, '13', 'Econoline E350 Cargo', '1997', 'Van/Minivan', NULL, 'Econoline E350 Cargo', 1, '2023-09-01 12:28:12', '2023-09-01 12:28:12'),
(4347, '13', 'F150 Super Cab', '1997', 'Pickup', NULL, 'F150 Super Cab', 1, '2023-09-01 12:28:12', '2023-09-01 12:28:12'),
(4348, '13', 'Mustang', '1997', 'Convertible, Coupe', NULL, 'Mustang', 1, '2023-09-01 12:28:12', '2023-09-01 12:28:12'),
(4349, '13', 'Windstar Cargo', '1997', 'Van/Minivan', NULL, 'Windstar Cargo', 1, '2023-09-01 12:28:12', '2023-09-01 12:28:12'),
(4350, '13', 'F350 Super Cab', '1997', 'Pickup', NULL, 'F350 Super Cab', 1, '2023-09-01 12:28:12', '2023-09-01 12:28:12'),
(4351, '13', 'Taurus', '1997', 'Wagon, Sedan', NULL, 'Taurus', 1, '2023-09-01 12:28:12', '2023-09-01 12:28:12'),
(4478, '13', 'Festiva', '1992', 'Hatchback', NULL, 'Festiva', 1, '2023-09-01 12:28:17', '2023-09-01 12:28:17'),
(4486, '13', 'EcoSport', '2021', 'SUV', NULL, 'EcoSport', 1, '2023-09-01 12:28:17', '2023-09-01 12:28:17'),
(4489, '13', 'Ranger SuperCrew', '2021', 'Pickup', NULL, 'Ranger SuperCrew', 1, '2023-09-01 12:28:17', '2023-09-01 12:28:17'),
(4490, '13', 'Transit Connect Cargo Van', '2021', 'Van/Minivan', NULL, 'Transit Connect Cargo Van', 1, '2023-09-01 12:28:17', '2023-09-01 12:28:17'),
(4491, '13', 'Expedition MAX', '2021', 'SUV', NULL, 'Expedition MAX', 1, '2023-09-01 12:28:17', '2023-09-01 12:28:17'),
(4492, '13', 'Bronco Sport', '2021', 'SUV', NULL, 'Bronco Sport', 1, '2023-09-01 12:28:17', '2023-09-01 12:28:17'),
(4505, '15', 'G70', '2021', 'Sedan', NULL, 'G70', 1, '2023-09-01 12:29:58', '2023-09-01 12:29:58'),
(4506, '15', 'G80', '2021', 'Sedan', NULL, 'G80', 1, '2023-09-01 12:29:58', '2023-09-01 12:29:58'),
(4507, '15', 'G90', '2021', 'Sedan', NULL, 'G90', 1, '2023-09-01 12:29:58', '2023-09-01 12:29:58'),
(4508, '15', 'GV80', '2021', 'SUV', NULL, 'GV80', 1, '2023-09-01 12:29:58', '2023-09-01 12:29:58'),
(4516, '16', 'Sierra 1500 Limited Double Cab', '2019', 'Pickup', NULL, 'Sierra 1500 Limited Double Cab', 1, '2023-09-01 12:31:02', '2023-09-01 12:31:02'),
(4581, '16', 'Sierra 3500 HD Double Cab', '2016', 'Pickup', NULL, 'Sierra 3500 HD Double Cab', 1, '2023-09-01 12:31:03', '2023-09-01 12:31:03'),
(4586, '16', 'Terrain', '2016', 'SUV', NULL, 'Terrain', 1, '2023-09-01 12:31:04', '2023-09-01 12:31:04'),
(4591, '16', 'Sierra 1500 Double Cab', '2015', 'Pickup', NULL, 'Sierra 1500 Double Cab', 1, '2023-09-01 12:31:04', '2023-09-01 12:31:04'),
(4593, '16', 'Sierra 3500 HD Regular Cab', '2015', 'Pickup', NULL, 'Sierra 3500 HD Regular Cab', 1, '2023-09-01 12:31:04', '2023-09-01 12:31:04'),
(4596, '16', 'Acadia Limited', '2017', 'SUV', NULL, 'Acadia Limited', 1, '2023-09-01 12:31:04', '2023-09-01 12:31:04'),
(4597, '16', 'Sierra 2500 HD Regular Cab', '2016', 'Pickup', NULL, 'Sierra 2500 HD Regular Cab', 1, '2023-09-01 12:31:04', '2023-09-01 12:31:04'),
(4598, '16', 'Savana 2500 Cargo', '2015', 'Van/Minivan', NULL, 'Savana 2500 Cargo', 1, '2023-09-01 12:31:04', '2023-09-01 12:31:04'),
(4600, '16', 'Sierra 2500 HD Crew Cab', '2017', 'Pickup', NULL, 'Sierra 2500 HD Crew Cab', 1, '2023-09-01 12:31:04', '2023-09-01 12:31:04'),
(4602, '16', 'Sierra 2500 HD Double Cab', '2017', 'Pickup', NULL, 'Sierra 2500 HD Double Cab', 1, '2023-09-01 12:31:04', '2023-09-01 12:31:04'),
(4603, '16', 'Sierra 3500 HD Crew Cab', '2015', 'Pickup', NULL, 'Sierra 3500 HD Crew Cab', 1, '2023-09-01 12:31:04', '2023-09-01 12:31:04'),
(4604, '16', 'Sierra 1500 Crew Cab', '2017', 'Pickup', NULL, 'Sierra 1500 Crew Cab', 1, '2023-09-01 12:31:04', '2023-09-01 12:31:04'),
(4606, '16', 'Canyon Crew Cab', '2015', 'Pickup', NULL, 'Canyon Crew Cab', 1, '2023-09-01 12:31:04', '2023-09-01 12:31:04'),
(4607, '16', 'Yukon XL', '2017', 'SUV', NULL, 'Yukon XL', 1, '2023-09-01 12:31:04', '2023-09-01 12:31:04'),
(4751, '16', 'Sierra (Classic) 1500 Regular Cab', '2007', 'Pickup', NULL, 'Sierra (Classic) 1500 Regular Cab', 1, '2023-09-01 12:31:10', '2023-09-01 12:31:10'),
(4752, '16', 'Sierra (Classic) 2500 HD Crew Cab', '2007', 'Pickup', NULL, 'Sierra (Classic) 2500 HD Crew Cab', 1, '2023-09-01 12:31:10', '2023-09-01 12:31:10'),
(4761, '16', 'Sierra (Classic) 1500 Crew Cab', '2007', 'Pickup', NULL, 'Sierra (Classic) 1500 Crew Cab', 1, '2023-09-01 12:31:10', '2023-09-01 12:31:10'),
(4763, '16', 'Sierra (Classic) 2500 HD Regular Cab', '2007', 'Pickup', NULL, 'Sierra (Classic) 2500 HD Regular Cab', 1, '2023-09-01 12:31:10', '2023-09-01 12:31:10'),
(4772, '16', 'Sierra (Classic) 2500 HD Extended Cab', '2007', 'Pickup', NULL, 'Sierra (Classic) 2500 HD Extended Cab', 1, '2023-09-01 12:31:10', '2023-09-01 12:31:10'),
(4778, '16', 'Sierra (Classic) 3500 Regular Cab', '2007', 'Pickup', NULL, 'Sierra (Classic) 3500 Regular Cab', 1, '2023-09-01 12:31:11', '2023-09-01 12:31:11');
INSERT INTO `main_categories` (`id`, `brand_id`, `main_category_name`, `make_year`, `category`, `image`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(4779, '16', 'Sierra (Classic) 1500 Extended Cab', '2007', 'Pickup', NULL, 'Sierra (Classic) 1500 Extended Cab', 1, '2023-09-01 12:31:11', '2023-09-01 12:31:11'),
(4780, '16', 'Sierra (Classic) 1500 HD Crew Cab', '2007', 'Pickup', NULL, 'Sierra (Classic) 1500 HD Crew Cab', 1, '2023-09-01 12:31:11', '2023-09-01 12:31:11'),
(4781, '16', 'Sierra (Classic) 3500 Extended Cab', '2007', 'Pickup', NULL, 'Sierra (Classic) 3500 Extended Cab', 1, '2023-09-01 12:31:11', '2023-09-01 12:31:11'),
(4782, '16', 'Sierra (Classic) 3500 Crew Cab', '2007', 'Pickup', NULL, 'Sierra (Classic) 3500 Crew Cab', 1, '2023-09-01 12:31:11', '2023-09-01 12:31:11'),
(4790, '16', 'Sierra 3500 HD Extended Cab', '2007', 'Pickup', NULL, 'Sierra 3500 HD Extended Cab', 1, '2023-09-01 12:31:11', '2023-09-01 12:31:11'),
(4821, '16', 'Sierra 1500 HD Crew Cab', '2005', 'Pickup', NULL, 'Sierra 1500 HD Crew Cab', 1, '2023-09-01 12:31:11', '2023-09-01 12:31:11'),
(4826, '16', 'Sierra 3500 Regular Cab', '2005', 'Pickup', NULL, 'Sierra 3500 Regular Cab', 1, '2023-09-01 12:31:12', '2023-09-01 12:31:12'),
(4833, '16', 'Sierra 3500 Extended Cab', '2005', 'Pickup', NULL, 'Sierra 3500 Extended Cab', 1, '2023-09-01 12:31:12', '2023-09-01 12:31:12'),
(4834, '16', 'Sierra 3500 Crew Cab', '2005', 'Pickup', NULL, 'Sierra 3500 Crew Cab', 1, '2023-09-01 12:31:12', '2023-09-01 12:31:12'),
(4839, '16', 'Sierra 2500 HD Extended Cab', '2005', 'Pickup', NULL, 'Sierra 2500 HD Extended Cab', 1, '2023-09-01 12:31:12', '2023-09-01 12:31:12'),
(4843, '16', 'Envoy XUV', '2004', 'SUV', NULL, 'Envoy XUV', 1, '2023-09-01 12:31:12', '2023-09-01 12:31:12'),
(4844, '16', 'Yukon XL 2500', '2005', 'SUV', NULL, 'Yukon XL 2500', 1, '2023-09-01 12:31:13', '2023-09-01 12:31:13'),
(4845, '16', 'Canyon Regular Cab', '2004', 'Pickup', NULL, 'Canyon Regular Cab', 1, '2023-09-01 12:31:13', '2023-09-01 12:31:13'),
(4847, '16', 'Envoy', '2004', 'SUV', NULL, 'Envoy', 1, '2023-09-01 12:31:13', '2023-09-01 12:31:13'),
(4851, '16', 'Safari Passenger', '2004', 'Van/Minivan', NULL, 'Safari Passenger', 1, '2023-09-01 12:31:13', '2023-09-01 12:31:13'),
(4852, '16', 'Safari Cargo', '2004', 'Van/Minivan', NULL, 'Safari Cargo', 1, '2023-09-01 12:31:13', '2023-09-01 12:31:13'),
(4853, '16', 'Savana 2500 Passenger', '2004', 'Van/Minivan', NULL, 'Savana 2500 Passenger', 1, '2023-09-01 12:31:13', '2023-09-01 12:31:13'),
(4854, '16', 'Savana 1500 Passenger', '2004', 'Van/Minivan', NULL, 'Savana 1500 Passenger', 1, '2023-09-01 12:31:13', '2023-09-01 12:31:13'),
(4855, '16', 'Sierra 1500 Regular Cab', '2004', 'Pickup', NULL, 'Sierra 1500 Regular Cab', 1, '2023-09-01 12:31:13', '2023-09-01 12:31:13'),
(4857, '16', 'Sierra 1500 Extended Cab', '2004', 'Pickup', NULL, 'Sierra 1500 Extended Cab', 1, '2023-09-01 12:31:13', '2023-09-01 12:31:13'),
(4858, '16', 'Envoy XL', '2003', 'SUV', NULL, 'Envoy XL', 1, '2023-09-01 12:31:13', '2023-09-01 12:31:13'),
(4859, '16', 'Sierra 2500 Crew Cab', '2004', 'Pickup', NULL, 'Sierra 2500 Crew Cab', 1, '2023-09-01 12:31:13', '2023-09-01 12:31:13'),
(4860, '16', 'Savana 3500 Passenger', '2004', 'Van/Minivan', NULL, 'Savana 3500 Passenger', 1, '2023-09-01 12:31:13', '2023-09-01 12:31:13'),
(4861, '16', 'Savana 3500 Cargo', '2004', 'Van/Minivan', NULL, 'Savana 3500 Cargo', 1, '2023-09-01 12:31:13', '2023-09-01 12:31:13'),
(4862, '16', 'Sierra 2500 Extended Cab', '2004', 'Pickup', NULL, 'Sierra 2500 Extended Cab', 1, '2023-09-01 12:31:13', '2023-09-01 12:31:13'),
(4863, '16', 'Yukon XL 1500', '2004', 'SUV', NULL, 'Yukon XL 1500', 1, '2023-09-01 12:31:13', '2023-09-01 12:31:13'),
(4945, '16', 'Sonoma Crew Cab', '2001', 'Pickup', NULL, 'Sonoma Crew Cab', 1, '2023-09-01 12:31:14', '2023-09-01 12:31:14'),
(4972, '16', 'Sierra (Classic) 2500 Crew Cab', '2000', 'Pickup', NULL, 'Sierra (Classic) 2500 Crew Cab', 1, '2023-09-01 12:31:15', '2023-09-01 12:31:15'),
(4979, '16', '2500 HD Regular Cab', '1999', 'Pickup', NULL, '2500 HD Regular Cab', 1, '2023-09-01 12:31:15', '2023-09-01 12:31:15'),
(4983, '16', 'Yukon Denali', '2000', 'SUV', NULL, 'Yukon Denali', 1, '2023-09-01 12:31:16', '2023-09-01 12:31:16'),
(5002, '16', 'Sierra 2500 Regular Cab', '1999', 'Pickup', NULL, 'Sierra 2500 Regular Cab', 1, '2023-09-01 12:31:17', '2023-09-01 12:31:17'),
(5003, '16', 'Sonoma Extended Cab', '1999', 'Pickup', NULL, 'Sonoma Extended Cab', 1, '2023-09-01 12:31:17', '2023-09-01 12:31:17'),
(5011, '16', '2500 HD Club Coupe', '1998', 'Pickup', NULL, '2500 HD Club Coupe', 1, '2023-09-01 12:31:17', '2023-09-01 12:31:17'),
(5064, '16', 'Vandura G2500', '1995', 'Van/Minivan', NULL, 'Vandura G2500', 1, '2023-09-01 12:31:18', '2023-09-01 12:31:18'),
(5080, '16', 'Rally Wagon G3500', '1995', 'Van/Minivan', NULL, 'Rally Wagon G3500', 1, '2023-09-01 12:31:18', '2023-09-01 12:31:18'),
(5084, '16', 'Vandura G1500', '1995', 'Van/Minivan', NULL, 'Vandura G1500', 1, '2023-09-01 12:31:18', '2023-09-01 12:31:18'),
(5085, '16', 'Jimmy', '1994', 'SUV', NULL, 'Jimmy', 1, '2023-09-01 12:31:18', '2023-09-01 12:31:18'),
(5102, '16', 'Sonoma Club Coupe Cab', '1994', 'Pickup', NULL, 'Sonoma Club Coupe Cab', 1, '2023-09-01 12:31:19', '2023-09-01 12:31:19'),
(5103, '16', '3500 Club Coupe', '1994', 'Pickup', NULL, '3500 Club Coupe', 1, '2023-09-01 12:31:19', '2023-09-01 12:31:19'),
(5104, '16', 'Rally Wagon 2500', '1994', 'Van/Minivan', NULL, 'Rally Wagon 2500', 1, '2023-09-01 12:31:19', '2023-09-01 12:31:19'),
(5106, '16', 'Vandura G3500', '1995', 'Van/Minivan', NULL, 'Vandura G3500', 1, '2023-09-01 12:31:19', '2023-09-01 12:31:19'),
(5107, '16', 'Rally Wagon G2500', '1995', 'Van/Minivan', NULL, 'Rally Wagon G2500', 1, '2023-09-01 12:31:19', '2023-09-01 12:31:19'),
(5108, '16', '2500 Regular Cab', '1994', 'Pickup', NULL, '2500 Regular Cab', 1, '2023-09-01 12:31:19', '2023-09-01 12:31:19'),
(5113, '16', 'Vandura 3500', '1994', 'Van/Minivan', NULL, 'Vandura 3500', 1, '2023-09-01 12:31:19', '2023-09-01 12:31:19'),
(5114, '16', 'Yukon', '1994', 'SUV', NULL, 'Yukon', 1, '2023-09-01 12:31:19', '2023-09-01 12:31:19'),
(5115, '16', 'Sonoma Regular Cab', '1994', 'Pickup', NULL, 'Sonoma Regular Cab', 1, '2023-09-01 12:31:19', '2023-09-01 12:31:19'),
(5116, '16', '3500 Regular Cab', '1993', 'Pickup', NULL, '3500 Regular Cab', 1, '2023-09-01 12:31:19', '2023-09-01 12:31:19'),
(5117, '16', '1500 Regular Cab', '1993', 'Pickup', NULL, '1500 Regular Cab', 1, '2023-09-01 12:31:19', '2023-09-01 12:31:19'),
(5118, '16', 'Rally Wagon 3500', '1993', 'Van/Minivan', NULL, 'Rally Wagon 3500', 1, '2023-09-01 12:31:19', '2023-09-01 12:31:19'),
(5141, '16', 'Vandura 2500', '1992', 'Van/Minivan', NULL, 'Vandura 2500', 1, '2023-09-01 12:31:20', '2023-09-01 12:31:20'),
(5145, '16', 'Sonoma Club Cab', '1992', 'Pickup', NULL, 'Sonoma Club Cab', 1, '2023-09-01 12:31:20', '2023-09-01 12:31:20'),
(5151, '16', 'Rally Wagon 1500', '1992', 'Van/Minivan', NULL, 'Rally Wagon 1500', 1, '2023-09-01 12:31:20', '2023-09-01 12:31:20'),
(5168, '16', 'Hummer EV', '2022', 'Pickup', NULL, 'Hummer EV', 1, '2023-09-01 12:31:20', '2023-09-01 12:31:20'),
(5193, '17', 'Clarity Fuel Cell', '2018', 'Sedan', NULL, 'Clarity Fuel Cell', 1, '2023-09-01 12:32:15', '2023-09-01 12:32:15'),
(5195, '17', 'Clarity Plug-in Hybrid', '2019', 'Sedan', NULL, 'Clarity Plug-in Hybrid', 1, '2023-09-01 12:32:15', '2023-09-01 12:32:15'),
(5210, '17', 'Clarity Electric', '2018', 'Sedan', NULL, 'Clarity Electric', 1, '2023-09-01 12:32:16', '2023-09-01 12:32:16'),
(5217, '17', 'HR-V', '2018', 'SUV', NULL, 'HR-V', 1, '2023-09-01 12:32:16', '2023-09-01 12:32:16'),
(5232, '17', 'Civic Type R', '2017', 'Hatchback', NULL, 'Civic Type R', 1, '2023-09-01 12:32:16', '2023-09-01 12:32:16'),
(5235, '17', 'Accord Hybrid', '2014', 'Sedan', NULL, 'Accord Hybrid', 1, '2023-09-01 12:32:16', '2023-09-01 12:32:16'),
(5262, '17', 'CR-Z', '2011', 'Coupe', NULL, 'CR-Z', 1, '2023-09-01 12:32:17', '2023-09-01 12:32:17'),
(5266, '17', 'Crosstour', '2013', 'SUV', NULL, 'Crosstour', 1, '2023-09-01 12:32:17', '2023-09-01 12:32:17'),
(5277, '17', 'Accord Crosstour', '2010', 'SUV', NULL, 'Accord Crosstour', 1, '2023-09-01 12:32:17', '2023-09-01 12:32:17'),
(5307, '17', 'Ridgeline', '2008', 'Pickup', NULL, 'Ridgeline', 1, '2023-09-01 12:32:18', '2023-09-01 12:32:18'),
(5314, '17', 'Fit', '2007', 'Hatchback', NULL, 'Fit', 1, '2023-09-01 12:32:18', '2023-09-01 12:32:18'),
(5331, '17', 'Element', '2007', 'SUV', NULL, 'Element', 1, '2023-09-01 12:32:18', '2023-09-01 12:32:18'),
(5338, '17', 'Pilot', '2003', 'SUV', NULL, 'Pilot', 1, '2023-09-01 12:32:18', '2023-09-01 12:32:18'),
(5360, '17', 'S2000', '2002', 'Convertible', NULL, 'S2000', 1, '2023-09-01 12:32:19', '2023-09-01 12:32:19'),
(5362, '17', 'Insight', '2000', 'Hatchback', NULL, 'Insight', 1, '2023-09-01 12:32:19', '2023-09-01 12:32:19'),
(5370, '17', 'CR-V', '1999', 'SUV', NULL, 'CR-V', 1, '2023-09-01 12:32:20', '2023-09-01 12:32:20'),
(5371, '17', 'Prelude', '1999', 'Coupe', NULL, 'Prelude', 1, '2023-09-01 12:32:20', '2023-09-01 12:32:20'),
(5372, '17', 'Passport', '1999', 'SUV', NULL, 'Passport', 1, '2023-09-01 12:32:20', '2023-09-01 12:32:20'),
(5374, '17', 'Civic', '1998', 'Coupe, Hatchback, Sedan', NULL, 'Civic', 1, '2023-09-01 12:32:20', '2023-09-01 12:32:20'),
(5375, '17', 'Accord', '1996', 'Sedan, Wagon, Coupe', NULL, 'Accord', 1, '2023-09-01 12:32:20', '2023-09-01 12:32:20'),
(5409, '17', 'del Sol', '1993', 'Coupe', NULL, 'del Sol', 1, '2023-09-01 12:32:20', '2023-09-01 12:32:20'),
(5415, '17', 'CR-V Hybrid', '2021', 'SUV', NULL, 'CR-V Hybrid', 1, '2023-09-01 12:32:20', '2023-09-01 12:32:20'),
(5631, '17', 'Odyssey', '1999', 'Van/Minivan', NULL, 'Odyssey', 1, '2023-09-01 12:32:27', '2023-09-01 12:32:27'),
(5681, '19', 'Venue', '2020', 'SUV', NULL, 'Venue', 1, '2023-09-01 12:33:20', '2023-09-01 12:33:20'),
(5689, '19', 'Ioniq Plug-in Hybrid', '2019', 'Hatchback', NULL, 'Ioniq Plug-in Hybrid', 1, '2023-09-01 12:33:20', '2023-09-01 12:33:20'),
(5695, '19', 'Santa Fe XL', '2019', 'SUV', NULL, 'Santa Fe XL', 1, '2023-09-01 12:33:21', '2023-09-01 12:33:21'),
(5740, '19', 'Sonata Hybrid', '2017', 'Sedan', NULL, 'Sonata Hybrid', 1, '2023-09-01 12:33:21', '2023-09-01 12:33:21'),
(5744, '19', 'Kona Electric', '2019', 'SUV', NULL, 'Kona Electric', 1, '2023-09-01 12:33:22', '2023-09-01 12:33:22'),
(5745, '19', 'Elantra GT', '2016', 'Hatchback', NULL, 'Elantra GT', 1, '2023-09-01 12:33:22', '2023-09-01 12:33:22'),
(5753, '19', 'Kona', '2019', 'SUV', NULL, 'Kona', 1, '2023-09-01 12:33:22', '2023-09-01 12:33:22'),
(5758, '19', 'Sonata Plug-in Hybrid', '2019', 'Sedan', NULL, 'Sonata Plug-in Hybrid', 1, '2023-09-01 12:33:22', '2023-09-01 12:33:22'),
(5761, '19', 'Tucson Fuel Cell', '2017', 'SUV', NULL, 'Tucson Fuel Cell', 1, '2023-09-01 12:33:22', '2023-09-01 12:33:22'),
(5771, '19', 'Ioniq Hybrid', '2018', 'Hatchback', NULL, 'Ioniq Hybrid', 1, '2023-09-01 12:33:23', '2023-09-01 12:33:23'),
(5773, '19', 'Ioniq Electric', '2018', 'Hatchback', NULL, 'Ioniq Electric', 1, '2023-09-01 12:33:23', '2023-09-01 12:33:23'),
(5792, '19', 'Santa Fe Sport', '2013', 'SUV', NULL, 'Santa Fe Sport', 1, '2023-09-01 12:33:23', '2023-09-01 12:33:23'),
(5793, '19', 'Equus', '2011', 'Sedan', NULL, 'Equus', 1, '2023-09-01 12:33:23', '2023-09-01 12:33:23'),
(5803, '19', 'Veloster', '2012', 'Coupe', NULL, 'Veloster', 1, '2023-09-01 12:33:24', '2023-09-01 12:33:24'),
(5815, '19', 'Genesis Coupe', '2010', 'Coupe', NULL, 'Genesis Coupe', 1, '2023-09-01 12:33:24', '2023-09-01 12:33:24'),
(5839, '19', 'Veracruz', '2007', 'SUV', NULL, 'Veracruz', 1, '2023-09-01 12:33:24', '2023-09-01 12:33:24'),
(5840, '19', 'Entourage', '2008', 'Van/Minivan', NULL, 'Entourage', 1, '2023-09-01 12:33:24', '2023-09-01 12:33:24'),
(5845, '19', 'Azera', '2006', 'Sedan', NULL, 'Azera', 1, '2023-09-01 12:33:24', '2023-09-01 12:33:24'),
(5856, '19', 'Tucson', '2005', 'SUV', NULL, 'Tucson', 1, '2023-09-01 12:33:25', '2023-09-01 12:33:25'),
(5865, '19', 'XG300', '2001', 'Sedan', NULL, 'XG300', 1, '2023-09-01 12:33:26', '2023-09-01 12:33:26'),
(5874, '19', 'Santa Fe', '2001', 'SUV', NULL, 'Santa Fe', 1, '2023-09-01 12:33:26', '2023-09-01 12:33:26'),
(5878, '19', 'XG350', '2002', 'Sedan', NULL, 'XG350', 1, '2023-09-01 12:33:26', '2023-09-01 12:33:26'),
(5882, '19', 'Tiburon', '1999', 'Hatchback', NULL, 'Tiburon', 1, '2023-09-01 12:33:26', '2023-09-01 12:33:26'),
(5883, '19', 'Accent', '1996', 'Hatchback, Sedan', NULL, 'Accent', 1, '2023-09-01 12:33:26', '2023-09-01 12:33:26'),
(5885, '19', 'Sonata', '1997', 'Sedan', NULL, 'Sonata', 1, '2023-09-01 12:33:26', '2023-09-01 12:33:26'),
(5887, '19', 'Elantra', '1996', 'Sedan, Wagon', NULL, 'Elantra', 1, '2023-09-01 12:33:26', '2023-09-01 12:33:26'),
(5911, '19', 'Scoupe', '1993', 'Coupe', NULL, 'Scoupe', 1, '2023-09-01 12:33:27', '2023-09-01 12:33:27'),
(5912, '19', 'Excel', '1992', 'Sedan, Hatchback', NULL, 'Excel', 1, '2023-09-01 12:33:27', '2023-09-01 12:33:27'),
(5941, '20', 'JX', '2013', 'SUV', NULL, 'JX', 1, '2023-09-01 12:35:04', '2023-09-01 12:35:04'),
(5984, '20', 'Q40', '2015', 'Sedan', NULL, 'Q40', 1, '2023-09-01 12:35:05', '2023-09-01 12:35:05'),
(5988, '20', 'Q60', '2019', 'Coupe', NULL, 'Q60', 1, '2023-09-01 12:35:05', '2023-09-01 12:35:05'),
(5989, '20', 'QX60', '2015', 'SUV', NULL, 'QX60', 1, '2023-09-01 12:35:05', '2023-09-01 12:35:05'),
(6000, '20', 'Q70', '2018', 'Sedan', NULL, 'Q70', 1, '2023-09-01 12:35:05', '2023-09-01 12:35:05'),
(6004, '20', 'QX70', '2015', 'SUV', NULL, 'QX70', 1, '2023-09-01 12:35:05', '2023-09-01 12:35:05'),
(6006, '20', 'QX30', '2018', 'SUV', NULL, 'QX30', 1, '2023-09-01 12:35:05', '2023-09-01 12:35:05'),
(6026, '20', 'FX', '2003', 'SUV', NULL, 'FX', 1, '2023-09-01 12:35:06', '2023-09-01 12:35:06'),
(6051, '20', 'QX', '1999', 'SUV', NULL, 'QX', 1, '2023-09-01 12:35:06', '2023-09-01 12:35:06'),
(6056, '20', 'I', '2000', 'Sedan', NULL, 'I', 1, '2023-09-01 12:35:06', '2023-09-01 12:35:06'),
(6065, '20', 'M', '1992', 'Coupe, Convertible', NULL, 'M', 1, '2023-09-01 12:35:06', '2023-09-01 12:35:06'),
(6067, '20', 'J', '1993', 'Sedan', NULL, 'J', 1, '2023-09-01 12:35:07', '2023-09-01 12:35:07'),
(6068, '20', 'G', '1992', 'Sedan', NULL, 'G', 1, '2023-09-01 12:35:07', '2023-09-01 12:35:07'),
(6069, '20', 'Q', '1992', 'Sedan', NULL, 'Q', 1, '2023-09-01 12:35:07', '2023-09-01 12:35:07'),
(6070, '20', 'QX50', '2021', 'SUV', NULL, 'QX50', 1, '2023-09-01 12:35:07', '2023-09-01 12:35:07'),
(6071, '20', 'QX80', '2021', 'SUV', NULL, 'QX80', 1, '2023-09-01 12:35:07', '2023-09-01 12:35:07'),
(6072, '20', 'Q50', '2021', 'Sedan', NULL, 'Q50', 1, '2023-09-01 12:35:07', '2023-09-01 12:35:07'),
(6083, '22', 'F-PACE', '2017', 'SUV', NULL, 'F-PACE', 1, '2023-09-01 12:36:10', '2023-09-01 12:36:10'),
(6089, '22', 'I-PACE', '2019', 'SUV', NULL, 'I-PACE', 1, '2023-09-01 12:36:10', '2023-09-01 12:36:10'),
(6111, '22', 'E-PACE', '2018', 'SUV', NULL, 'E-PACE', 1, '2023-09-01 12:36:11', '2023-09-01 12:36:11'),
(6127, '22', 'F-TYPE', '2014', 'Convertible', NULL, 'F-TYPE', 1, '2023-09-01 12:36:11', '2023-09-01 12:36:11'),
(6135, '22', 'XK', '2006', 'Coupe, Convertible', NULL, 'XK', 1, '2023-09-01 12:36:12', '2023-09-01 12:36:12'),
(6139, '22', 'S-Type', '2002', 'Sedan', NULL, 'S-Type', 1, '2023-09-01 12:36:12', '2023-09-01 12:36:12'),
(6140, '22', 'X-Type', '2005', 'Sedan, Wagon', NULL, 'X-Type', 1, '2023-09-01 12:36:12', '2023-09-01 12:36:12'),
(6141, '22', 'XF', '2012', 'Sedan', NULL, 'XF', 1, '2023-09-01 12:36:12', '2023-09-01 12:36:12'),
(6143, '22', 'XJ', '2013', 'Sedan', NULL, 'XJ', 1, '2023-09-01 12:36:12', '2023-09-01 12:36:12'),
(6260, '23', 'Liberty', '2007', 'SUV', NULL, 'Liberty', 1, '2023-09-01 12:37:15', '2023-09-01 12:37:15'),
(6262, '23', 'Commander', '2010', 'SUV', NULL, 'Commander', 1, '2023-09-01 12:37:15', '2023-09-01 12:37:15'),
(6266, '23', 'Patriot', '2009', 'SUV', NULL, 'Patriot', 1, '2023-09-01 12:37:15', '2023-09-01 12:37:15'),
(6291, '23', 'Comanche Regular Cab', '1992', 'Pickup', NULL, 'Comanche Regular Cab', 1, '2023-09-01 12:37:16', '2023-09-01 12:37:16'),
(6293, '23', 'Cherokee', '2021', 'SUV', NULL, 'Cherokee', 1, '2023-09-01 12:37:16', '2023-09-01 12:37:16'),
(6294, '23', 'Grand Cherokee L', '2021', 'SUV', NULL, 'Grand Cherokee L', 1, '2023-09-01 12:37:16', '2023-09-01 12:37:16'),
(6295, '23', 'Gladiator', '2021', 'Pickup', NULL, 'Gladiator', 1, '2023-09-01 12:37:16', '2023-09-01 12:37:16'),
(6296, '23', 'Compass', '2021', 'SUV', NULL, 'Compass', 1, '2023-09-01 12:37:16', '2023-09-01 12:37:16'),
(6297, '23', 'Renegade', '2021', 'SUV', NULL, 'Renegade', 1, '2023-09-01 12:37:16', '2023-09-01 12:37:16'),
(6298, '23', 'Grand Cherokee', '2021', 'SUV', NULL, 'Grand Cherokee', 1, '2023-09-01 12:37:16', '2023-09-01 12:37:16'),
(6299, '23', 'Wrangler Unlimited', '2021', 'SUV', NULL, 'Wrangler Unlimited', 1, '2023-09-01 12:37:16', '2023-09-01 12:37:16'),
(6300, '23', 'Wrangler', '2021', 'SUV', NULL, 'Wrangler', 1, '2023-09-01 12:37:16', '2023-09-01 12:37:16'),
(6301, '23', 'Grand Wagoneer', '2022', 'SUV', NULL, 'Grand Wagoneer', 1, '2023-09-01 12:37:16', '2023-09-01 12:37:16'),
(6351, '24', 'Niro EV', '2019', 'Wagon', NULL, 'Niro EV', 1, '2023-09-01 12:38:10', '2023-09-01 12:38:10'),
(6353, '24', 'Niro Plug-in Hybrid', '2019', 'Wagon', NULL, 'Niro Plug-in Hybrid', 1, '2023-09-01 12:38:10', '2023-09-01 12:38:10'),
(6361, '24', 'Forte Koup', '2015', 'Coupe', NULL, 'Forte Koup', 1, '2023-09-01 12:38:10', '2023-09-01 12:38:10'),
(6364, '24', 'Sportage', '2013', 'SUV', NULL, 'Sportage', 1, '2023-09-01 12:38:10', '2023-09-01 12:38:10'),
(6370, '24', 'Stinger', '2020', 'Sedan', NULL, 'Stinger', 1, '2023-09-01 12:38:10', '2023-09-01 12:38:10'),
(6371, '24', 'Optima Plug-in Hybrid', '2019', 'Sedan', NULL, 'Optima Plug-in Hybrid', 1, '2023-09-01 12:38:10', '2023-09-01 12:38:10'),
(6373, '24', 'Telluride', '2020', 'SUV', NULL, 'Telluride', 1, '2023-09-01 12:38:10', '2023-09-01 12:38:10'),
(6379, '24', 'Soul EV', '2016', 'Wagon', NULL, 'Soul EV', 1, '2023-09-01 12:38:10', '2023-09-01 12:38:10'),
(6381, '24', 'Forte', '2015', 'Sedan', NULL, 'Forte', 1, '2023-09-01 12:38:10', '2023-09-01 12:38:10'),
(6388, '24', 'K900', '2016', 'Sedan', NULL, 'K900', 1, '2023-09-01 12:38:10', '2023-09-01 12:38:10'),
(6389, '24', 'Optima Hybrid', '2015', 'Sedan', NULL, 'Optima Hybrid', 1, '2023-09-01 12:38:10', '2023-09-01 12:38:10'),
(6390, '24', 'Niro', '2017', 'Wagon', NULL, 'Niro', 1, '2023-09-01 12:38:10', '2023-09-01 12:38:10'),
(6391, '24', 'Cadenza', '2014', 'Sedan', NULL, 'Cadenza', 1, '2023-09-01 12:38:10', '2023-09-01 12:38:10'),
(6394, '24', 'Forte5', '2016', 'Hatchback', NULL, 'Forte5', 1, '2023-09-01 12:38:10', '2023-09-01 12:38:10'),
(6395, '24', 'Sedona', '2012', 'Van/Minivan', NULL, 'Sedona', 1, '2023-09-01 12:38:10', '2023-09-01 12:38:10'),
(6396, '24', 'Optima', '2014', 'Sedan', NULL, 'Optima', 1, '2023-09-01 12:38:10', '2023-09-01 12:38:10'),
(6397, '24', 'Sorento', '2015', 'SUV', NULL, 'Sorento', 1, '2023-09-01 12:38:10', '2023-09-01 12:38:10'),
(6398, '24', 'Soul', '2013', 'Wagon', NULL, 'Soul', 1, '2023-09-01 12:38:10', '2023-09-01 12:38:10'),
(6399, '24', 'Rio', '2014', 'Sedan, Hatchback', NULL, 'Rio', 1, '2023-09-01 12:38:10', '2023-09-01 12:38:10'),
(6409, '24', 'Borrego', '2009', 'SUV', NULL, 'Borrego', 1, '2023-09-01 12:38:11', '2023-09-01 12:38:11'),
(6443, '24', 'Optima (2006.5)', '2006', 'Sedan', NULL, 'Optima (2006.5)', 1, '2023-09-01 12:38:12', '2023-09-01 12:38:12'),
(6445, '24', 'Rondo', '2007', 'Wagon', NULL, 'Rondo', 1, '2023-09-01 12:38:12', '2023-09-01 12:38:12'),
(6474, '24', 'Amanti', '2004', 'Sedan', NULL, 'Amanti', 1, '2023-09-01 12:38:14', '2023-09-01 12:38:14'),
(6488, '24', 'Sephia', '1998', 'Sedan', NULL, 'Sephia', 1, '2023-09-01 12:38:14', '2023-09-01 12:38:14'),
(6491, '24', 'Spectra', '2001', 'Hatchback', NULL, 'Spectra', 1, '2023-09-01 12:38:14', '2023-09-01 12:38:14'),
(6495, '24', 'Seltos', '2021', 'SUV', NULL, 'Seltos', 1, '2023-09-01 12:38:14', '2023-09-01 12:38:14'),
(6500, '24', 'K5', '2021', 'Sedan', NULL, 'K5', 1, '2023-09-01 12:38:14', '2023-09-01 12:38:14'),
(6515, '25', 'Huracan', '2018', 'Coupe', NULL, 'Huracan', 1, '2023-09-01 12:39:05', '2023-09-01 12:39:05'),
(6521, '25', 'Aventador', '2018', 'Convertible, Coupe', NULL, 'Aventador', 1, '2023-09-01 12:39:05', '2023-09-01 12:39:05'),
(6526, '25', 'Gallardo', '2011', 'Coupe, Convertible', NULL, 'Gallardo', 1, '2023-09-01 12:39:05', '2023-09-01 12:39:05'),
(6527, '25', 'Murcielago LP640', '2008', 'Coupe, Convertible', NULL, 'Murcielago LP640', 1, '2023-09-01 12:39:05', '2023-09-01 12:39:05'),
(6529, '25', 'Murcielago', '2006', 'Convertible, Coupe', NULL, 'Murcielago', 1, '2023-09-01 12:39:05', '2023-09-01 12:39:05'),
(6621, '26', 'Defender 90', '1994', 'SUV', NULL, 'Defender 90', 1, '2023-09-01 12:40:15', '2023-09-01 12:40:15'),
(6623, '26', 'LR3', '2008', 'SUV', NULL, 'LR3', 1, '2023-09-01 12:40:15', '2023-09-01 12:40:15'),
(6627, '26', 'Discovery Series II', '2002', 'SUV', NULL, 'Discovery Series II', 1, '2023-09-01 12:40:15', '2023-09-01 12:40:15'),
(6630, '26', 'Freelander', '2004', 'SUV', NULL, 'Freelander', 1, '2023-09-01 12:40:15', '2023-09-01 12:40:15'),
(6632, '26', 'Defender 110', '1993', 'SUV', NULL, 'Defender 110', 1, '2023-09-01 12:40:15', '2023-09-01 12:40:15'),
(6638, '26', 'Range Rover Velar', '2021', 'SUV', NULL, 'Range Rover Velar', 1, '2023-09-01 12:40:15', '2023-09-01 12:40:15'),
(6641, '26', 'Discovery', '2019', 'SUV', NULL, 'Discovery', 1, '2023-09-01 12:40:16', '2023-09-01 12:40:16'),
(6646, '26', 'Discovery Sport', '2015', 'SUV', NULL, 'Discovery Sport', 1, '2023-09-01 12:40:16', '2023-09-01 12:40:16'),
(6650, '26', 'Range Rover Evoque', '2012', 'SUV', NULL, 'Range Rover Evoque', 1, '2023-09-01 12:40:16', '2023-09-01 12:40:16'),
(6651, '26', 'LR2', '2014', 'SUV', NULL, 'LR2', 1, '2023-09-01 12:40:16', '2023-09-01 12:40:16'),
(6652, '26', 'Range Rover Sport', '2020', 'SUV', NULL, 'Range Rover Sport', 1, '2023-09-01 12:40:16', '2023-09-01 12:40:16'),
(6653, '26', 'LR4', '2014', 'SUV', NULL, 'LR4', 1, '2023-09-01 12:40:16', '2023-09-01 12:40:16'),
(6786, '27', 'LFA', '2012', 'Coupe', NULL, 'LFA', 1, '2023-09-01 12:41:10', '2023-09-01 12:41:10'),
(6796, '27', 'UX', '2020', 'SUV', NULL, 'UX', 1, '2023-09-01 12:41:10', '2023-09-01 12:41:10'),
(6818, '27', 'LC', '2019', 'Coupe', NULL, 'LC', 1, '2023-09-01 12:41:10', '2023-09-01 12:41:10'),
(6835, '27', 'RC', '2020', 'Coupe', NULL, 'RC', 1, '2023-09-01 12:41:11', '2023-09-01 12:41:11'),
(6845, '27', 'CT', '2011', 'Hatchback', NULL, 'CT', 1, '2023-09-01 12:41:11', '2023-09-01 12:41:11'),
(6870, '27', 'IS F', '2008', 'Sedan', NULL, 'IS F', 1, '2023-09-01 12:41:12', '2023-09-01 12:41:12'),
(6896, '27', 'GX', '2004', 'SUV', NULL, 'GX', 1, '2023-09-01 12:41:12', '2023-09-01 12:41:12'),
(6908, '27', 'SC', '2004', 'Convertible', NULL, 'SC', 1, '2023-09-01 12:41:12', '2023-09-01 12:41:12'),
(6909, '27', 'LS', '2003', 'Sedan', NULL, 'LS', 1, '2023-09-01 12:41:12', '2023-09-01 12:41:12'),
(6911, '27', 'RX', '2003', 'SUV', NULL, 'RX', 1, '2023-09-01 12:41:12', '2023-09-01 12:41:12'),
(7163, '27', 'GS', '1999', 'Sedan', NULL, 'GS', 1, '2023-09-01 12:41:19', '2023-09-01 12:41:19'),
(7165, '27', 'ES', '1997', 'Sedan', NULL, 'ES', 1, '2023-09-01 12:41:19', '2023-09-01 12:41:19'),
(7166, '27', 'LX', '1999', 'SUV', NULL, 'LX', 1, '2023-09-01 12:41:19', '2023-09-01 12:41:19'),
(7167, '27', 'IS', '2001', 'Sedan', NULL, 'IS', 1, '2023-09-01 12:41:19', '2023-09-01 12:41:19'),
(7254, '28', 'Zephyr', '2006', 'Sedan', NULL, 'Zephyr', 1, '2023-09-01 12:42:36', '2023-09-01 12:42:36'),
(7290, '28', 'MKT', '2012', 'SUV', NULL, 'MKT', 1, '2023-09-01 12:42:37', '2023-09-01 12:42:37'),
(7291, '28', 'MKS', '2009', 'Sedan', NULL, 'MKS', 1, '2023-09-01 12:42:37', '2023-09-01 12:42:37'),
(7295, '28', 'MKC', '2015', 'SUV', NULL, 'MKC', 1, '2023-09-01 12:42:37', '2023-09-01 12:42:37'),
(7302, '28', 'MKX', '2008', 'SUV', NULL, 'MKX', 1, '2023-09-01 12:42:37', '2023-09-01 12:42:37'),
(7306, '28', 'Mark LT', '2007', 'Pickup', NULL, 'Mark LT', 1, '2023-09-01 12:42:38', '2023-09-01 12:42:38'),
(7307, '28', 'MKZ', '2010', 'Sedan', NULL, 'MKZ', 1, '2023-09-01 12:42:38', '2023-09-01 12:42:38'),
(7318, '28', 'Blackwood', '2002', 'Pickup', NULL, 'Blackwood', 1, '2023-09-01 12:42:38', '2023-09-01 12:42:38'),
(7336, '28', 'Mark VII', '1992', 'Coupe', NULL, 'Mark VII', 1, '2023-09-01 12:42:38', '2023-09-01 12:42:38'),
(7350, '28', 'Mark VIII', '1994', 'Coupe', NULL, 'Mark VIII', 1, '2023-09-01 12:42:39', '2023-09-01 12:42:39'),
(7351, '28', 'Continental', '1993', 'Sedan', NULL, 'Continental', 1, '2023-09-01 12:42:39', '2023-09-01 12:42:39'),
(7353, '28', 'Town Car', '1993', 'Sedan', NULL, 'Town Car', 1, '2023-09-01 12:42:39', '2023-09-01 12:42:39'),
(7354, '28', 'Navigator', '2021', 'SUV', NULL, 'Navigator', 1, '2023-09-01 12:42:39', '2023-09-01 12:42:39'),
(7355, '28', 'Navigator L', '2021', 'SUV', NULL, 'Navigator L', 1, '2023-09-01 12:42:39', '2023-09-01 12:42:39'),
(7356, '28', 'Corsair', '2021', 'SUV', NULL, 'Corsair', 1, '2023-09-01 12:42:39', '2023-09-01 12:42:39'),
(7358, '28', 'Nautilus', '2021', 'SUV', NULL, 'Nautilus', 1, '2023-09-01 12:42:39', '2023-09-01 12:42:39'),
(7389, '29', 'Coupe', '2005', 'Coupe', NULL, 'Coupe', 1, '2023-09-01 12:47:58', '2023-09-01 12:47:58'),
(7390, '29', 'GranTurismo', '2012', 'Coupe, Convertible', NULL, 'GranTurismo', 1, '2023-09-01 12:47:58', '2023-09-01 12:47:58'),
(7391, '29', 'Levante', '2018', 'SUV', NULL, 'Levante', 1, '2023-09-01 12:47:58', '2023-09-01 12:47:58'),
(7393, '29', 'Ghibli', '2016', 'Sedan', NULL, 'Ghibli', 1, '2023-09-01 12:47:58', '2023-09-01 12:47:58'),
(7395, '29', 'Quattroporte', '2011', 'Sedan', NULL, 'Quattroporte', 1, '2023-09-01 12:47:58', '2023-09-01 12:47:58'),
(7396, '29', 'GranSport', '2006', 'Coupe, Convertible', NULL, 'GranSport', 1, '2023-09-01 12:47:58', '2023-09-01 12:47:58'),
(7405, '30', 'CX-30', '2020', 'SUV', NULL, 'CX-30', 1, '2023-09-01 12:49:43', '2023-09-01 12:49:43'),
(7414, '30', 'MAZDA2', '2012', 'Hatchback', NULL, 'MAZDA2', 1, '2023-09-01 12:49:43', '2023-09-01 12:49:43'),
(7416, '30', 'MX-5 Miata RF', '2019', 'Convertible', NULL, 'MX-5 Miata RF', 1, '2023-09-01 12:49:43', '2023-09-01 12:49:43'),
(7421, '30', 'MAZDA3', '2018', 'Sedan, Hatchback', NULL, 'MAZDA3', 1, '2023-09-01 12:49:43', '2023-09-01 12:49:43'),
(7475, '30', 'CX-7', '2011', 'SUV', NULL, 'CX-7', 1, '2023-09-01 12:49:44', '2023-09-01 12:49:44'),
(7530, '30', 'RX-8', '2004', 'Coupe', NULL, 'RX-8', 1, '2023-09-01 12:49:45', '2023-09-01 12:49:45'),
(7533, '30', 'Protege5', '2002', 'Hatchback', NULL, 'Protege5', 1, '2023-09-01 12:49:45', '2023-09-01 12:49:45'),
(7589, '30', 'Millenia', '1995', 'Sedan', NULL, 'Millenia', 1, '2023-09-01 12:49:47', '2023-09-01 12:49:47'),
(7618, '30', '323', '1992', 'Hatchback', NULL, '323', 1, '2023-09-01 12:49:47', '2023-09-01 12:49:47'),
(7619, '30', 'RX-7', '1993', 'Hatchback', NULL, 'RX-7', 1, '2023-09-01 12:49:47', '2023-09-01 12:49:47'),
(7621, '30', '626', '1992', 'Sedan', NULL, '626', 1, '2023-09-01 12:49:47', '2023-09-01 12:49:47'),
(7625, '30', 'MPV', '1992', 'Van/Minivan', NULL, 'MPV', 1, '2023-09-01 12:49:48', '2023-09-01 12:49:48'),
(7626, '30', '929', '1992', 'Sedan', NULL, '929', 1, '2023-09-01 12:49:48', '2023-09-01 12:49:48'),
(7627, '30', 'MX-3', '1992', 'Hatchback', NULL, 'MX-3', 1, '2023-09-01 12:49:48', '2023-09-01 12:49:48'),
(7628, '30', 'B-Series Cab Plus', '1992', 'Pickup', NULL, 'B-Series Cab Plus', 1, '2023-09-01 12:49:48', '2023-09-01 12:49:48'),
(7629, '30', 'B-Series Regular Cab', '1992', 'Pickup', NULL, 'B-Series Regular Cab', 1, '2023-09-01 12:49:48', '2023-09-01 12:49:48'),
(7630, '30', 'MX-6', '1992', 'Coupe', NULL, 'MX-6', 1, '2023-09-01 12:49:48', '2023-09-01 12:49:48'),
(7631, '30', 'Protege', '1992', 'Sedan', NULL, 'Protege', 1, '2023-09-01 12:49:48', '2023-09-01 12:49:48'),
(7670, '30', 'MAZDA5', '2013', 'Van/Minivan', NULL, 'MAZDA5', 1, '2023-09-01 12:49:49', '2023-09-01 12:49:49'),
(7672, '30', 'Tribute', '2009', 'SUV', NULL, 'Tribute', 1, '2023-09-01 12:49:49', '2023-09-01 12:49:49'),
(7674, '30', 'B-Series Extended Cab', '2009', 'Pickup', NULL, 'B-Series Extended Cab', 1, '2023-09-01 12:49:49', '2023-09-01 12:49:49'),
(7677, '30', 'MAZDA6', '2019', 'Sedan', NULL, 'MAZDA6', 1, '2023-09-01 12:49:49', '2023-09-01 12:49:49'),
(7678, '30', 'CX-5', '2019', 'SUV', NULL, 'CX-5', 1, '2023-09-01 12:49:49', '2023-09-01 12:49:49'),
(7679, '30', 'MX-5 Miata', '2012', 'Convertible', NULL, 'MX-5 Miata', 1, '2023-09-01 12:49:49', '2023-09-01 12:49:49'),
(7886, '31', '570S', '2017', 'Coupe', NULL, '570S', 1, '2023-09-01 12:50:54', '2023-09-01 12:50:54'),
(7890, '31', '720S', '2018', 'Coupe', NULL, '720S', 1, '2023-09-01 12:50:54', '2023-09-01 12:50:54'),
(7891, '31', 'MP4-12C', '2012', 'Coupe', NULL, 'MP4-12C', 1, '2023-09-01 12:50:54', '2023-09-01 12:50:54'),
(7892, '31', '675LT', '2016', 'Coupe', NULL, '675LT', 1, '2023-09-01 12:50:54', '2023-09-01 12:50:54'),
(7893, '31', '570GT', '2018', 'Coupe', NULL, '570GT', 1, '2023-09-01 12:50:54', '2023-09-01 12:50:54'),
(7894, '31', '650S', '2015', 'Coupe, Convertible', NULL, '650S', 1, '2023-09-01 12:50:54', '2023-09-01 12:50:54'),
(7900, '32', 'GLC Coupe', '2019', 'SUV', NULL, 'GLC Coupe', 1, '2023-09-01 12:53:43', '2023-09-01 12:53:43'),
(7906, '32', 'CLS', '2018', 'Sedan', NULL, 'CLS', 1, '2023-09-01 12:53:43', '2023-09-01 12:53:43'),
(7912, '32', 'Mercedes-AMG G-Class', '2017', 'SUV', NULL, 'Mercedes-AMG G-Class', 1, '2023-09-01 12:53:43', '2023-09-01 12:53:43'),
(7921, '32', 'Mercedes-AMG C-Class', '2019', 'Sedan, Convertible, Coupe', NULL, 'Mercedes-AMG C-Class', 1, '2023-09-01 12:53:43', '2023-09-01 12:53:43'),
(7922, '32', 'GLS', '2018', 'SUV', NULL, 'GLS', 1, '2023-09-01 12:53:43', '2023-09-01 12:53:43'),
(7925, '32', 'Mercedes-AMG GLC Coupe', '2018', 'SUV', NULL, 'Mercedes-AMG GLC Coupe', 1, '2023-09-01 12:53:43', '2023-09-01 12:53:43'),
(7927, '32', 'Mercedes-AMG E-Class', '2019', 'Coupe, Convertible, Sedan, Wagon', NULL, 'Mercedes-AMG E-Class', 1, '2023-09-01 12:53:43', '2023-09-01 12:53:43'),
(7928, '32', 'Metris Cargo', '2018', 'Van/Minivan', NULL, 'Metris Cargo', 1, '2023-09-01 12:53:43', '2023-09-01 12:53:43'),
(7930, '32', 'Metris WORKER Cargo', '2018', 'Van/Minivan', NULL, 'Metris WORKER Cargo', 1, '2023-09-01 12:53:43', '2023-09-01 12:53:43'),
(7931, '32', 'SL', '2018', 'Convertible', NULL, 'SL', 1, '2023-09-01 12:53:43', '2023-09-01 12:53:43'),
(7932, '32', 'Mercedes-AMG GLE', '2017', 'SUV', NULL, 'Mercedes-AMG GLE', 1, '2023-09-01 12:53:43', '2023-09-01 12:53:43'),
(7933, '32', 'Sprinter 2500 Cargo', '2018', 'Van/Minivan', NULL, 'Sprinter 2500 Cargo', 1, '2023-09-01 12:53:43', '2023-09-01 12:53:43'),
(7934, '32', 'GLA', '2018', 'SUV', NULL, 'GLA', 1, '2023-09-01 12:53:43', '2023-09-01 12:53:43'),
(7935, '32', 'Mercedes-AMG GLC', '2018', 'SUV', NULL, 'Mercedes-AMG GLC', 1, '2023-09-01 12:53:43', '2023-09-01 12:53:43'),
(8028, '32', 'Mercedes-AMG SLK', '2016', 'Convertible', NULL, 'Mercedes-AMG SLK', 1, '2023-09-01 12:53:45', '2023-09-01 12:53:45'),
(8034, '32', 'Mercedes-Maybach S 600', '2016', 'Sedan', NULL, 'Mercedes-Maybach S 600', 1, '2023-09-01 12:53:45', '2023-09-01 12:53:45'),
(8036, '32', 'GLE Coupe', '2016', 'SUV', NULL, 'GLE Coupe', 1, '2023-09-01 12:53:45', '2023-09-01 12:53:45'),
(8038, '32', 'SLK', '2016', 'Convertible', NULL, 'SLK', 1, '2023-09-01 12:53:45', '2023-09-01 12:53:45'),
(8051, '32', 'GLA-Class', '2015', 'SUV', NULL, 'GLA-Class', 1, '2023-09-01 12:53:45', '2023-09-01 12:53:45'),
(8078, '32', 'CLA-Class', '2014', 'Sedan', NULL, 'CLA-Class', 1, '2023-09-01 12:53:47', '2023-09-01 12:53:47'),
(8121, '32', 'SLS-Class', '2011', 'Coupe', NULL, 'SLS-Class', 1, '2023-09-01 12:53:48', '2023-09-01 12:53:48'),
(8142, '32', 'GLK-Class', '2010', 'SUV', NULL, 'GLK-Class', 1, '2023-09-01 12:53:48', '2023-09-01 12:53:48'),
(8176, '32', 'R-Class', '2006', 'Wagon', NULL, 'R-Class', 1, '2023-09-01 12:53:49', '2023-09-01 12:53:49'),
(8179, '32', 'G-Class', '2006', 'SUV', NULL, 'G-Class', 1, '2023-09-01 12:53:50', '2023-09-01 12:53:50'),
(8184, '32', 'SLK-Class', '2007', 'Convertible', NULL, 'SLK-Class', 1, '2023-09-01 12:53:50', '2023-09-01 12:53:50'),
(8186, '32', 'CL-Class', '2006', 'Coupe', NULL, 'CL-Class', 1, '2023-09-01 12:53:50', '2023-09-01 12:53:50'),
(8188, '32', 'CLK-Class', '2007', 'Convertible, Coupe', NULL, 'CLK-Class', 1, '2023-09-01 12:53:50', '2023-09-01 12:53:50'),
(8189, '32', 'M-Class', '2007', 'SUV', NULL, 'M-Class', 1, '2023-09-01 12:53:50', '2023-09-01 12:53:50'),
(8190, '32', 'SLR McLaren', '2006', 'Coupe', NULL, 'SLR McLaren', 1, '2023-09-01 12:53:50', '2023-09-01 12:53:50'),
(8191, '32', 'SL-Class', '2006', 'Convertible', NULL, 'SL-Class', 1, '2023-09-01 12:53:50', '2023-09-01 12:53:50'),
(8284, '32', '600 SL', '1993', 'Convertible', NULL, '600 SL', 1, '2023-09-01 12:53:53', '2023-09-01 12:53:53'),
(8285, '32', '400 SEL', '1993', 'Sedan', NULL, '400 SEL', 1, '2023-09-01 12:53:53', '2023-09-01 12:53:53'),
(8287, '32', '500 SEC', '1993', 'Coupe', NULL, '500 SEC', 1, '2023-09-01 12:53:53', '2023-09-01 12:53:53'),
(8293, '32', '300 CE', '1992', 'Coupe', NULL, '300 CE', 1, '2023-09-01 12:53:53', '2023-09-01 12:53:53'),
(8296, '32', '300 E', '1992', 'Sedan', NULL, '300 E', 1, '2023-09-01 12:53:53', '2023-09-01 12:53:53'),
(8297, '32', '300 SL', '1992', 'Convertible', NULL, '300 SL', 1, '2023-09-01 12:53:53', '2023-09-01 12:53:53'),
(8300, '32', '300 D', '1992', 'Sedan', NULL, '300 D', 1, '2023-09-01 12:53:53', '2023-09-01 12:53:53'),
(8304, '32', '500 SL', '1992', 'Convertible', NULL, '500 SL', 1, '2023-09-01 12:53:53', '2023-09-01 12:53:53'),
(8305, '32', '500 SEL', '1992', 'Sedan', NULL, '500 SEL', 1, '2023-09-01 12:53:53', '2023-09-01 12:53:53'),
(8307, '32', '600 SEL', '1992', 'Sedan', NULL, '600 SEL', 1, '2023-09-01 12:53:53', '2023-09-01 12:53:53'),
(8314, '32', 'GLB', '2021', 'SUV', NULL, 'GLB', 1, '2023-09-01 12:53:54', '2023-09-01 12:53:54'),
(8380, '32', 'A-Class', '2019', 'Sedan', NULL, 'A-Class', 1, '2023-09-01 12:53:55', '2023-09-01 12:53:55'),
(8411, '32', 'Mercedes-AMG GLE Coupe', '2017', 'SUV', NULL, 'Mercedes-AMG GLE Coupe', 1, '2023-09-01 12:53:55', '2023-09-01 12:53:55'),
(8418, '32', 'Mercedes-AMG GLS', '2017', 'SUV', NULL, 'Mercedes-AMG GLS', 1, '2023-09-01 12:53:55', '2023-09-01 12:53:55'),
(8420, '32', 'Mercedes-AMG GT', '2017', 'Coupe', NULL, 'Mercedes-AMG GT', 1, '2023-09-01 12:53:55', '2023-09-01 12:53:55'),
(8421, '32', 'Mercedes-AMG SLC', '2017', 'Convertible', NULL, 'Mercedes-AMG SLC', 1, '2023-09-01 12:53:55', '2023-09-01 12:53:55'),
(8422, '32', 'Mercedes-AMG SL', '2017', 'Convertible', NULL, 'Mercedes-AMG SL', 1, '2023-09-01 12:53:55', '2023-09-01 12:53:55'),
(8424, '32', 'Mercedes-Maybach S-Class', '2017', 'Sedan', NULL, 'Mercedes-Maybach S-Class', 1, '2023-09-01 12:53:56', '2023-09-01 12:53:56'),
(8427, '32', 'Sprinter 2500 Crew', '2017', 'Van/Minivan', NULL, 'Sprinter 2500 Crew', 1, '2023-09-01 12:53:56', '2023-09-01 12:53:56'),
(8429, '32', 'Metris WORKER Passenger', '2017', 'Van/Minivan', NULL, 'Metris WORKER Passenger', 1, '2023-09-01 12:53:56', '2023-09-01 12:53:56'),
(8431, '32', 'SLC', '2017', 'Convertible', NULL, 'SLC', 1, '2023-09-01 12:53:56', '2023-09-01 12:53:56'),
(8433, '32', 'Metris Passenger', '2017', 'Van/Minivan', NULL, 'Metris Passenger', 1, '2023-09-01 12:53:56', '2023-09-01 12:53:56'),
(8434, '32', 'Sprinter WORKER Passenger', '2017', 'Van/Minivan', NULL, 'Sprinter WORKER Passenger', 1, '2023-09-01 12:53:56', '2023-09-01 12:53:56'),
(8435, '32', 'Sprinter 3500 Cargo', '2017', 'Van/Minivan', NULL, 'Sprinter 3500 Cargo', 1, '2023-09-01 12:53:56', '2023-09-01 12:53:56'),
(8436, '32', 'Sprinter WORKER Cargo', '2017', 'Van/Minivan', NULL, 'Sprinter WORKER Cargo', 1, '2023-09-01 12:53:56', '2023-09-01 12:53:56'),
(8437, '32', 'Sprinter 3500 XD Cargo', '2017', 'Van/Minivan', NULL, 'Sprinter 3500 XD Cargo', 1, '2023-09-01 12:53:56', '2023-09-01 12:53:56'),
(8438, '32', 'CLA', '2016', 'Sedan', NULL, 'CLA', 1, '2023-09-01 12:53:56', '2023-09-01 12:53:56'),
(8442, '32', 'B-Class', '2016', 'Hatchback', NULL, 'B-Class', 1, '2023-09-01 12:53:57', '2023-09-01 12:53:57'),
(8443, '32', 'GL-Class', '2016', 'SUV', NULL, 'GL-Class', 1, '2023-09-01 12:53:57', '2023-09-01 12:53:57'),
(8444, '32', 'GLE', '2016', 'SUV', NULL, 'GLE', 1, '2023-09-01 12:53:57', '2023-09-01 12:53:57'),
(8686, '32', '300 SD', '1993', 'Sedan', NULL, '300 SD', 1, '2023-09-01 12:54:03', '2023-09-01 12:54:03'),
(8694, '32', '300 SE', '1993', 'Sedan', NULL, '300 SE', 1, '2023-09-01 12:54:03', '2023-09-01 12:54:03'),
(8695, '32', 'S-Class', '1996', 'Sedan, Coupe', NULL, 'S-Class', 1, '2023-09-01 12:54:03', '2023-09-01 12:54:03'),
(8696, '32', '190 E', '1993', 'Sedan', NULL, '190 E', 1, '2023-09-01 12:54:03', '2023-09-01 12:54:03'),
(8701, '32', '600 SEC', '1993', 'Coupe', NULL, '600 SEC', 1, '2023-09-01 12:54:03', '2023-09-01 12:54:03'),
(8702, '32', 'E-Class', '1994', 'Coupe, Convertible, Wagon, Sedan', NULL, 'E-Class', 1, '2023-09-01 12:54:03', '2023-09-01 12:54:03'),
(8703, '32', '500 E', '1993', 'Sedan', NULL, '500 E', 1, '2023-09-01 12:54:03', '2023-09-01 12:54:03'),
(8785, '34', 'Countryman', '2016', 'SUV', NULL, 'Countryman', 1, '2023-09-01 13:02:45', '2023-09-01 13:02:45'),
(8787, '34', 'Roadster', '2013', 'Convertible', NULL, 'Roadster', 1, '2023-09-01 13:02:45', '2023-09-01 13:02:45'),
(8793, '34', 'Paceman', '2013', 'Hatchback', NULL, 'Paceman', 1, '2023-09-01 13:02:45', '2023-09-01 13:02:45'),
(8797, '34', 'Hardtop 2 Door', '2015', 'Hatchback', NULL, 'Hardtop 2 Door', 1, '2023-09-01 13:02:45', '2023-09-01 13:02:45'),
(8801, '34', 'Hardtop 4 Door', '2015', 'Hatchback', NULL, 'Hardtop 4 Door', 1, '2023-09-01 13:02:45', '2023-09-01 13:02:45'),
(8805, '34', 'Hardtop', '2010', 'Hatchback', NULL, 'Hardtop', 1, '2023-09-01 13:02:45', '2023-09-01 13:02:45'),
(8807, '34', 'Clubman', '2008', 'Hatchback', NULL, 'Clubman', 1, '2023-09-01 13:02:45', '2023-09-01 13:02:45'),
(8808, '34', 'Convertible', '2007', 'Convertible', NULL, 'Convertible', 1, '2023-09-01 13:02:45', '2023-09-01 13:02:45'),
(8809, '34', 'Cooper', '2003', 'Hatchback', NULL, 'Cooper', 1, '2023-09-01 13:02:45', '2023-09-01 13:02:45'),
(8864, '35', 'Raider Double Cab', '2008', 'Pickup', NULL, 'Raider Double Cab', 1, '2023-09-01 13:03:53', '2023-09-01 13:03:53'),
(8868, '35', 'Eclipse Cross', '2019', 'SUV', NULL, 'Eclipse Cross', 1, '2023-09-01 13:03:53', '2023-09-01 13:03:53'),
(8873, '35', 'Outlander PHEV', '2020', 'SUV', NULL, 'Outlander PHEV', 1, '2023-09-01 13:03:53', '2023-09-01 13:03:53'),
(8888, '35', 'Mirage G4', '2020', 'Sedan', NULL, 'Mirage G4', 1, '2023-09-01 13:03:54', '2023-09-01 13:03:54'),
(8889, '35', 'Lancer Evolution', '2015', 'Sedan', NULL, 'Lancer Evolution', 1, '2023-09-01 13:03:54', '2023-09-01 13:03:54'),
(8894, '35', 'i-MiEV', '2016', 'Hatchback', NULL, 'i-MiEV', 1, '2023-09-01 13:03:54', '2023-09-01 13:03:54'),
(8897, '35', 'Outlander Sport', '2013', 'SUV', NULL, 'Outlander Sport', 1, '2023-09-01 13:03:54', '2023-09-01 13:03:54'),
(8903, '35', 'Raider Extended Cab', '2009', 'Pickup', NULL, 'Raider Extended Cab', 1, '2023-09-01 13:03:54', '2023-09-01 13:03:54'),
(8918, '35', 'Outlander', '2003', 'SUV', NULL, 'Outlander', 1, '2023-09-01 13:03:55', '2023-09-01 13:03:55'),
(8919, '35', 'Lancer', '2002', 'Sedan', NULL, 'Lancer', 1, '2023-09-01 13:03:55', '2023-09-01 13:03:55'),
(8951, '35', 'Galant', '1997', 'Sedan', NULL, 'Galant', 1, '2023-09-01 13:03:55', '2023-09-01 13:03:55'),
(8953, '35', 'Mirage', '1997', 'Sedan, Coupe', NULL, 'Mirage', 1, '2023-09-01 13:03:55', '2023-09-01 13:03:55'),
(8954, '35', 'Montero', '1997', 'SUV', NULL, 'Montero', 1, '2023-09-01 13:03:55', '2023-09-01 13:03:55'),
(8957, '35', '3000GT', '1996', 'Coupe, Convertible', NULL, '3000GT', 1, '2023-09-01 13:03:55', '2023-09-01 13:03:55'),
(8959, '35', 'Diamante', '1996', 'Sedan', NULL, 'Diamante', 1, '2023-09-01 13:03:55', '2023-09-01 13:03:55'),
(8995, '35', 'Expo', '1992', 'Wagon', NULL, 'Expo', 1, '2023-09-01 13:03:57', '2023-09-01 13:03:57'),
(8998, '35', 'Mighty Max Regular Cab', '1992', 'Pickup', NULL, 'Mighty Max Regular Cab', 1, '2023-09-01 13:03:57', '2023-09-01 13:03:57'),
(8999, '35', 'Precis', '1992', 'Hatchback', NULL, 'Precis', 1, '2023-09-01 13:03:57', '2023-09-01 13:03:57'),
(9000, '35', 'Mighty Max Macro Cab', '1992', 'Pickup', NULL, 'Mighty Max Macro Cab', 1, '2023-09-01 13:03:57', '2023-09-01 13:03:57'),
(9076, '36', 'TITAN Single Cab', '2018', 'Pickup', NULL, 'TITAN Single Cab', 1, '2023-09-01 13:04:59', '2023-09-01 13:04:59'),
(9088, '36', 'Rogue Sport', '2018', 'SUV', NULL, 'Rogue Sport', 1, '2023-09-01 13:05:00', '2023-09-01 13:05:00'),
(9097, '36', 'TITAN XD King Cab', '2018', 'Pickup', NULL, 'TITAN XD King Cab', 1, '2023-09-01 13:05:00', '2023-09-01 13:05:00'),
(9104, '36', 'TITAN XD Single Cab', '2017', 'Pickup', NULL, 'TITAN XD Single Cab', 1, '2023-09-01 13:05:00', '2023-09-01 13:05:00'),
(9129, '36', 'Versa Note', '2016', 'Hatchback', NULL, 'Versa Note', 1, '2023-09-01 13:05:00', '2023-09-01 13:05:00'),
(9144, '36', 'NV200 Taxi', '2015', 'Van/Minivan', NULL, 'NV200 Taxi', 1, '2023-09-01 13:05:01', '2023-09-01 13:05:01'),
(9175, '36', 'Rogue Select', '2014', 'SUV', NULL, 'Rogue Select', 1, '2023-09-01 13:05:02', '2023-09-01 13:05:02'),
(9186, '36', 'Armada', '2012', 'SUV', NULL, 'Armada', 1, '2023-09-01 13:05:02', '2023-09-01 13:05:02'),
(9192, '36', 'Titan King Cab', '2013', 'Pickup', NULL, 'Titan King Cab', 1, '2023-09-01 13:05:02', '2023-09-01 13:05:02'),
(9193, '36', 'NV200', '2013', 'Van/Minivan', NULL, 'NV200', 1, '2023-09-01 13:05:02', '2023-09-01 13:05:02'),
(9195, '36', 'GT-R', '2012', 'Coupe', NULL, 'GT-R', 1, '2023-09-01 13:05:02', '2023-09-01 13:05:02'),
(9200, '36', 'Xterra', '2013', 'SUV', NULL, 'Xterra', 1, '2023-09-01 13:05:03', '2023-09-01 13:05:03'),
(9201, '36', 'cube', '2012', 'Wagon', NULL, 'cube', 1, '2023-09-01 13:05:03', '2023-09-01 13:05:03'),
(9202, '36', 'Frontier King Cab', '2012', 'Pickup', NULL, 'Frontier King Cab', 1, '2023-09-01 13:05:03', '2023-09-01 13:05:03'),
(9204, '36', 'Altima', '2012', 'Coupe, Sedan', NULL, 'Altima', 1, '2023-09-01 13:05:03', '2023-09-01 13:05:03'),
(9205, '36', 'JUKE', '2012', 'SUV', NULL, 'JUKE', 1, '2023-09-01 13:05:03', '2023-09-01 13:05:03'),
(9206, '36', 'NV1500 Cargo', '2012', 'Van/Minivan', NULL, 'NV1500 Cargo', 1, '2023-09-01 13:05:03', '2023-09-01 13:05:03'),
(9207, '36', 'NV3500 HD Passenger', '2012', 'Van/Minivan', NULL, 'NV3500 HD Passenger', 1, '2023-09-01 13:05:03', '2023-09-01 13:05:03'),
(9209, '36', 'LEAF', '2012', 'Hatchback', NULL, 'LEAF', 1, '2023-09-01 13:05:03', '2023-09-01 13:05:03'),
(9210, '36', 'Maxima', '2012', 'Sedan', NULL, 'Maxima', 1, '2023-09-01 13:05:03', '2023-09-01 13:05:03'),
(9211, '36', 'Murano', '2012', 'SUV', NULL, 'Murano', 1, '2023-09-01 13:05:03', '2023-09-01 13:05:03'),
(9212, '36', 'Versa', '2012', 'Sedan, Hatchback', NULL, 'Versa', 1, '2023-09-01 13:05:03', '2023-09-01 13:05:03'),
(9214, '36', 'Titan Crew Cab', '2012', 'Pickup', NULL, 'Titan Crew Cab', 1, '2023-09-01 13:05:03', '2023-09-01 13:05:03'),
(9215, '36', '370Z', '2011', 'Coupe, Convertible', NULL, '370Z', 1, '2023-09-01 13:05:03', '2023-09-01 13:05:03'),
(9337, '36', 'Pathfinder Armada', '2004', 'SUV', NULL, 'Pathfinder Armada', 1, '2023-09-01 13:05:06', '2023-09-01 13:05:06'),
(9378, '36', 'Frontier Regular Cab', '1999', 'Pickup', NULL, 'Frontier Regular Cab', 1, '2023-09-01 13:05:07', '2023-09-01 13:05:07'),
(9440, '36', 'NX', '1992', 'Hatchback', NULL, 'NX', 1, '2023-09-01 13:05:09', '2023-09-01 13:05:09'),
(9442, '36', '240SX', '1992', 'Hatchback, Coupe, Convertible', NULL, '240SX', 1, '2023-09-01 13:05:09', '2023-09-01 13:05:09'),
(9445, '36', '300ZX', '1992', 'Hatchback', NULL, '300ZX', 1, '2023-09-01 13:05:09', '2023-09-01 13:05:09'),
(9447, '36', 'Stanza', '1992', 'Sedan', NULL, 'Stanza', 1, '2023-09-01 13:05:09', '2023-09-01 13:05:09'),
(9451, '36', 'Kicks', '2021', 'SUV', NULL, 'Kicks', 1, '2023-09-01 13:05:09', '2023-09-01 13:05:09'),
(9453, '36', 'Sentra', '2021', 'Sedan', NULL, 'Sentra', 1, '2023-09-01 13:05:09', '2023-09-01 13:05:09'),
(9456, '36', 'Rogue', '2021', 'SUV', NULL, 'Rogue', 1, '2023-09-01 13:05:09', '2023-09-01 13:05:09'),
(9460, '36', 'NV3500 HD Cargo', '2021', 'Van/Minivan', NULL, 'NV3500 HD Cargo', 1, '2023-09-01 13:05:09', '2023-09-01 13:05:09'),
(9461, '36', 'Frontier Crew Cab', '2022', 'Pickup', NULL, 'Frontier Crew Cab', 1, '2023-09-01 13:05:09', '2023-09-01 13:05:09'),
(9462, '36', 'Pathfinder', '2022', 'SUV', NULL, 'Pathfinder', 1, '2023-09-01 13:05:09', '2023-09-01 13:05:09'),
(9463, '40', 'Macan', '2020', 'SUV', NULL, 'Macan', 1, '2023-09-01 13:06:56', '2023-09-01 13:06:56'),
(9467, '40', 'Taycan', '2020', 'Sedan', NULL, 'Taycan', 1, '2023-09-01 13:06:56', '2023-09-01 13:06:56'),
(9468, '40', 'Boxster', '2013', 'Convertible', NULL, 'Boxster', 1, '2023-09-01 13:06:56', '2023-09-01 13:06:56'),
(9469, '40', '718 Cayman', '2017', 'Coupe', NULL, '718 Cayman', 1, '2023-09-01 13:06:56', '2023-09-01 13:06:56'),
(9470, '40', 'Panamera', '2018', 'Sedan', NULL, 'Panamera', 1, '2023-09-01 13:06:56', '2023-09-01 13:06:56'),
(9471, '40', '911', '2019', 'Coupe, Convertible', NULL, '911', 1, '2023-09-01 13:06:56', '2023-09-01 13:06:56'),
(9558, '40', 'Carrera GT', '2004', 'Convertible', NULL, 'Carrera GT', 1, '2023-09-01 13:06:58', '2023-09-01 13:06:58'),
(9559, '40', 'Cayman', '2011', 'Coupe', NULL, 'Cayman', 1, '2023-09-01 13:06:58', '2023-09-01 13:06:58'),
(9560, '40', '928', '1995', 'Hatchback', NULL, '928', 1, '2023-09-01 13:06:58', '2023-09-01 13:06:58'),
(9565, '40', '718 Spyder', '2021', 'Convertible', NULL, '718 Spyder', 1, '2023-09-01 13:06:59', '2023-09-01 13:06:59'),
(9567, '40', 'Cayenne Coupe', '2021', 'SUV', NULL, 'Cayenne Coupe', 1, '2023-09-01 13:06:59', '2023-09-01 13:06:59'),
(9568, '40', 'Cayenne', '2021', 'SUV', NULL, 'Cayenne', 1, '2023-09-01 13:06:59', '2023-09-01 13:06:59'),
(9592, '42', 'Wraith', '2018', 'Coupe', NULL, 'Wraith', 1, '2023-09-01 13:08:20', '2023-09-01 13:08:20'),
(9600, '42', 'Phantom', '2009', 'Convertible, Coupe, Sedan', NULL, 'Phantom', 1, '2023-09-01 13:08:20', '2023-09-01 13:08:20'),
(9601, '42', 'Ghost', '2010', 'Sedan', NULL, 'Ghost', 1, '2023-09-01 13:08:20', '2023-09-01 13:08:20'),
(9618, '43', 'XL7', '2007', 'SUV', NULL, 'XL7', 1, '2023-09-01 13:09:43', '2023-09-01 13:09:43'),
(9647, '43', 'Kizashi', '2013', 'Sedan', NULL, 'Kizashi', 1, '2023-09-01 13:09:44', '2023-09-01 13:09:44'),
(9656, '43', 'Verona', '2005', 'Sedan', NULL, 'Verona', 1, '2023-09-01 13:09:44', '2023-09-01 13:09:44'),
(9666, '43', 'SX4', '2011', 'Sedan, Hatchback', NULL, 'SX4', 1, '2023-09-01 13:09:44', '2023-09-01 13:09:44'),
(9667, '43', 'Equator Extended Cab', '2012', 'Pickup', NULL, 'Equator Extended Cab', 1, '2023-09-01 13:09:44', '2023-09-01 13:09:44'),
(9670, '43', 'Forenza', '2006', 'Sedan, Wagon', NULL, 'Forenza', 1, '2023-09-01 13:09:44', '2023-09-01 13:09:44'),
(9673, '43', 'Reno', '2005', 'Hatchback', NULL, 'Reno', 1, '2023-09-01 13:09:44', '2023-09-01 13:09:44'),
(9684, '43', 'Samurai', '1994', 'SUV', NULL, 'Samurai', 1, '2023-09-01 13:09:45', '2023-09-01 13:09:45'),
(9687, '43', 'Aerio', '2004', 'Sedan, Wagon', NULL, 'Aerio', 1, '2023-09-01 13:09:45', '2023-09-01 13:09:45'),
(9690, '43', 'Vitara', '2002', 'SUV', NULL, 'Vitara', 1, '2023-09-01 13:09:45', '2023-09-01 13:09:45'),
(9693, '43', 'X-90', '1997', 'SUV', NULL, 'X-90', 1, '2023-09-01 13:09:45', '2023-09-01 13:09:45'),
(9694, '43', 'Sidekick', '1992', 'SUV', NULL, 'Sidekick', 1, '2023-09-01 13:09:45', '2023-09-01 13:09:45'),
(9699, '43', 'Grand Vitara', '2003', 'SUV', NULL, 'Grand Vitara', 1, '2023-09-01 13:09:45', '2023-09-01 13:09:45'),
(9700, '43', 'Swift', '1996', 'Hatchback', NULL, 'Swift', 1, '2023-09-01 13:09:45', '2023-09-01 13:09:45'),
(9707, '44', 'Model 3', '2019', 'Sedan', NULL, 'Model 3', 1, '2023-09-01 13:10:57', '2023-09-01 13:10:57'),
(9715, '44', 'Model X', '2021', 'SUV', NULL, 'Model X', 1, '2023-09-01 13:10:57', '2023-09-01 13:10:57'),
(9716, '44', 'Model S', '2021', 'Sedan', NULL, 'Model S', 1, '2023-09-01 13:10:57', '2023-09-01 13:10:57'),
(9718, '45', 'GR Supra', '2020', 'Coupe', NULL, 'GR Supra', 1, '2023-09-01 13:11:54', '2023-09-01 13:11:54'),
(9719, '45', 'RAV4 Hybrid', '2020', 'SUV', NULL, 'RAV4 Hybrid', 1, '2023-09-01 13:11:54', '2023-09-01 13:11:54'),
(9720, '45', 'Sequoia', '2020', 'SUV', NULL, 'Sequoia', 1, '2023-09-01 13:11:54', '2023-09-01 13:11:54'),
(9723, '45', 'Camry Hybrid', '2020', 'Sedan', NULL, 'Camry Hybrid', 1, '2023-09-01 13:11:54', '2023-09-01 13:11:54'),
(9724, '45', 'Highlander Hybrid', '2020', 'SUV', NULL, 'Highlander Hybrid', 1, '2023-09-01 13:11:54', '2023-09-01 13:11:54'),
(9725, '45', 'Tacoma Access Cab', '2020', 'Pickup', NULL, 'Tacoma Access Cab', 1, '2023-09-01 13:11:54', '2023-09-01 13:11:54'),
(9726, '45', 'Avalon', '2020', 'Sedan', NULL, 'Avalon', 1, '2023-09-01 13:11:54', '2023-09-01 13:11:54'),
(9727, '45', 'RAV4', '2019', 'SUV', NULL, 'RAV4', 1, '2023-09-01 13:11:54', '2023-09-01 13:11:54'),
(9734, '45', 'Yaris Hatchback', '2020', 'Hatchback', NULL, 'Yaris Hatchback', 1, '2023-09-01 13:11:54', '2023-09-01 13:11:54'),
(9769, '45', 'Prius Prime', '2020', 'Hatchback', NULL, 'Prius Prime', 1, '2023-09-01 13:11:54', '2023-09-01 13:11:54'),
(9776, '45', 'C-HR', '2018', 'SUV', NULL, 'C-HR', 1, '2023-09-01 13:11:54', '2023-09-01 13:11:54'),
(9790, '45', 'Corolla Hatchback', '2019', 'Hatchback', NULL, 'Corolla Hatchback', 1, '2023-09-01 13:11:55', '2023-09-01 13:11:55'),
(9798, '45', 'Avalon Hybrid', '2017', 'Sedan', NULL, 'Avalon Hybrid', 1, '2023-09-01 13:11:55', '2023-09-01 13:11:55'),
(9805, '45', '86', '2018', 'Coupe', NULL, '86', 1, '2023-09-01 13:11:55', '2023-09-01 13:11:55'),
(9816, '45', 'Corolla iM', '2018', 'Hatchback', NULL, 'Corolla iM', 1, '2023-09-01 13:11:55', '2023-09-01 13:11:55'),
(9828, '45', 'Yaris iA', '2017', 'Sedan', NULL, 'Yaris iA', 1, '2023-09-01 13:11:55', '2023-09-01 13:11:55'),
(9914, '45', 'Prius v', '2012', 'Wagon', NULL, 'Prius v', 1, '2023-09-01 13:11:58', '2023-09-01 13:11:58'),
(9915, '45', 'Prius Plug-in Hybrid', '2012', 'Hatchback', NULL, 'Prius Plug-in Hybrid', 1, '2023-09-01 13:11:58', '2023-09-01 13:11:58'),
(9957, '45', 'Matrix', '2010', 'Wagon', NULL, 'Matrix', 1, '2023-09-01 13:11:58', '2023-09-01 13:11:58'),
(9967, '45', 'Highlander', '2009', 'SUV', NULL, 'Highlander', 1, '2023-09-01 13:11:59', '2023-09-01 13:11:59'),
(9968, '45', 'Tundra Regular Cab', '2010', 'Pickup', NULL, 'Tundra Regular Cab', 1, '2023-09-01 13:11:59', '2023-09-01 13:11:59'),
(9970, '45', 'Venza', '2009', 'Wagon', NULL, 'Venza', 1, '2023-09-01 13:11:59', '2023-09-01 13:11:59'),
(9973, '45', 'Tundra CrewMax', '2009', 'Pickup', NULL, 'Tundra CrewMax', 1, '2023-09-01 13:11:59', '2023-09-01 13:11:59'),
(9974, '45', '4Runner', '2008', 'SUV', NULL, '4Runner', 1, '2023-09-01 13:11:59', '2023-09-01 13:11:59');
INSERT INTO `main_categories` (`id`, `brand_id`, `main_category_name`, `make_year`, `category`, `image`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(9975, '45', 'Yaris', '2010', 'Sedan, Hatchback', NULL, 'Yaris', 1, '2023-09-01 13:11:59', '2023-09-01 13:11:59'),
(9976, '45', 'FJ Cruiser', '2009', 'SUV', NULL, 'FJ Cruiser', 1, '2023-09-01 13:11:59', '2023-09-01 13:11:59'),
(9977, '45', 'Tacoma Double Cab', '2009', 'Pickup', NULL, 'Tacoma Double Cab', 1, '2023-09-01 13:11:59', '2023-09-01 13:11:59'),
(9978, '45', 'Camry', '2009', 'Sedan', NULL, 'Camry', 1, '2023-09-01 13:11:59', '2023-09-01 13:11:59'),
(9981, '45', 'Sienna', '2009', 'Van/Minivan', NULL, 'Sienna', 1, '2023-09-01 13:11:59', '2023-09-01 13:11:59'),
(9982, '45', 'Corolla', '2008', 'Sedan', NULL, 'Corolla', 1, '2023-09-01 13:11:59', '2023-09-01 13:11:59'),
(9983, '45', 'Prius', '2008', 'Hatchback', NULL, 'Prius', 1, '2023-09-01 13:11:59', '2023-09-01 13:11:59'),
(10150, '45', 'Echo', '2000', 'Sedan, Coupe', NULL, 'Echo', 1, '2023-09-01 13:12:03', '2023-09-01 13:12:03'),
(10173, '45', 'Tundra Access Cab', '2000', 'Pickup', NULL, 'Tundra Access Cab', 1, '2023-09-01 13:12:03', '2023-09-01 13:12:03'),
(10174, '45', 'Solara', '1999', 'Coupe', NULL, 'Solara', 1, '2023-09-01 13:12:03', '2023-09-01 13:12:03'),
(10221, '45', 'Supra', '1995', 'Hatchback', NULL, 'Supra', 1, '2023-09-01 13:12:05', '2023-09-01 13:12:05'),
(10223, '45', 'Tacoma Regular Cab', '1995', 'Pickup', NULL, 'Tacoma Regular Cab', 1, '2023-09-01 13:12:05', '2023-09-01 13:12:05'),
(10225, '45', 'Previa', '1995', 'Van/Minivan', NULL, 'Previa', 1, '2023-09-01 13:12:05', '2023-09-01 13:12:05'),
(10228, '45', 'Regular Cab', '1995', 'Pickup', NULL, 'Regular Cab', 1, '2023-09-01 13:12:05', '2023-09-01 13:12:05'),
(10229, '45', 'Tacoma Xtracab', '1995', 'Pickup', NULL, 'Tacoma Xtracab', 1, '2023-09-01 13:12:05', '2023-09-01 13:12:05'),
(10231, '45', 'T100 Xtracab', '1995', 'Pickup', NULL, 'T100 Xtracab', 1, '2023-09-01 13:12:05', '2023-09-01 13:12:05'),
(10233, '45', 'Paseo', '1994', 'Coupe', NULL, 'Paseo', 1, '2023-09-01 13:12:05', '2023-09-01 13:12:05'),
(10234, '45', 'Tercel', '1994', 'Sedan', NULL, 'Tercel', 1, '2023-09-01 13:12:05', '2023-09-01 13:12:05'),
(10235, '45', 'T100 Regular Cab', '1994', 'Pickup', NULL, 'T100 Regular Cab', 1, '2023-09-01 13:12:05', '2023-09-01 13:12:05'),
(10236, '45', 'Land Cruiser', '1994', 'SUV', NULL, 'Land Cruiser', 1, '2023-09-01 13:12:05', '2023-09-01 13:12:05'),
(10237, '45', 'Celica', '1994', 'Hatchback, Coupe', NULL, 'Celica', 1, '2023-09-01 13:12:05', '2023-09-01 13:12:05'),
(10238, '45', 'Xtra Cab', '1994', 'Pickup', NULL, 'Xtra Cab', 1, '2023-09-01 13:12:05', '2023-09-01 13:12:05'),
(10239, '45', 'MR2', '1994', 'Coupe', NULL, 'MR2', 1, '2023-09-01 13:12:06', '2023-09-01 13:12:06'),
(10255, '45', 'Cressida', '1992', 'Sedan', NULL, 'Cressida', 1, '2023-09-01 13:12:06', '2023-09-01 13:12:06'),
(10277, '45', 'RAV4 Prime', '2021', 'SUV', NULL, 'RAV4 Prime', 1, '2023-09-01 13:12:06', '2023-09-01 13:12:06'),
(10278, '45', 'Corolla Hybrid', '2021', 'Sedan', NULL, 'Corolla Hybrid', 1, '2023-09-01 13:12:06', '2023-09-01 13:12:06'),
(10326, '46', 'Jetta GLI', '2019', 'Sedan', NULL, 'Jetta GLI', 1, '2023-09-01 13:13:22', '2023-09-01 13:13:22'),
(10341, '46', 'Arteon', '2019', 'Sedan', NULL, 'Arteon', 1, '2023-09-01 13:13:23', '2023-09-01 13:13:23'),
(10342, '46', 'Atlas', '2018', 'SUV', NULL, 'Atlas', 1, '2023-09-01 13:13:23', '2023-09-01 13:13:23'),
(10346, '46', 'Tiguan Limited', '2017', 'SUV', NULL, 'Tiguan Limited', 1, '2023-09-01 13:13:23', '2023-09-01 13:13:23'),
(10349, '46', 'Golf GTI', '2017', 'Hatchback', NULL, 'Golf GTI', 1, '2023-09-01 13:13:23', '2023-09-01 13:13:23'),
(10371, '46', 'Golf R', '2015', 'Hatchback', NULL, 'Golf R', 1, '2023-09-01 13:13:24', '2023-09-01 13:13:24'),
(10380, '46', 'Golf Alltrack', '2017', 'Wagon', NULL, 'Golf Alltrack', 1, '2023-09-01 13:13:24', '2023-09-01 13:13:24'),
(10384, '46', 'e-Golf', '2016', 'Hatchback', NULL, 'e-Golf', 1, '2023-09-01 13:13:24', '2023-09-01 13:13:24'),
(10388, '46', 'Golf SportWagen', '2017', 'Wagon', NULL, 'Golf SportWagen', 1, '2023-09-01 13:13:24', '2023-09-01 13:13:24'),
(10393, '46', 'Beetle', '2012', 'Hatchback', NULL, 'Beetle', 1, '2023-09-01 13:13:25', '2023-09-01 13:13:25'),
(10394, '46', 'Jetta SportWagen', '2013', 'Wagon', NULL, 'Jetta SportWagen', 1, '2023-09-01 13:13:25', '2023-09-01 13:13:25'),
(10413, '46', 'CC', '2009', 'Sedan', NULL, 'CC', 1, '2023-09-01 13:13:25', '2023-09-01 13:13:25'),
(10416, '46', 'Tiguan', '2009', 'SUV', NULL, 'Tiguan', 1, '2023-09-01 13:13:25', '2023-09-01 13:13:25'),
(10421, '46', 'Routan', '2009', 'Van/Minivan', NULL, 'Routan', 1, '2023-09-01 13:13:25', '2023-09-01 13:13:25'),
(10426, '46', 'Touareg 2', '2008', 'SUV', NULL, 'Touareg 2', 1, '2023-09-01 13:13:25', '2023-09-01 13:13:25'),
(10432, '46', 'Rabbit', '2006', 'Hatchback', NULL, 'Rabbit', 1, '2023-09-01 13:13:26', '2023-09-01 13:13:26'),
(10433, '46', 'GLI', '2008', 'Sedan', NULL, 'GLI', 1, '2023-09-01 13:13:26', '2023-09-01 13:13:26'),
(10448, '46', 'Eos', '2007', 'Convertible', NULL, 'Eos', 1, '2023-09-01 13:13:26', '2023-09-01 13:13:26'),
(10451, '46', 'Jetta (New)', '2005', 'Sedan', NULL, 'Jetta (New)', 1, '2023-09-01 13:13:26', '2023-09-01 13:13:26'),
(10460, '46', 'Phaeton', '2004', 'Sedan', NULL, 'Phaeton', 1, '2023-09-01 13:13:26', '2023-09-01 13:13:26'),
(10464, '46', 'Touareg', '2005', 'SUV', NULL, 'Touareg', 1, '2023-09-01 13:13:27', '2023-09-01 13:13:27'),
(10482, '46', 'Golf (New)', '1999', 'Hatchback', NULL, 'Golf (New)', 1, '2023-09-01 13:13:27', '2023-09-01 13:13:27'),
(10483, '46', 'Eurovan', '1999', 'Van/Minivan', NULL, 'Eurovan', 1, '2023-09-01 13:13:27', '2023-09-01 13:13:27'),
(10484, '46', 'Passat (New)', '2001', 'Sedan, Wagon', NULL, 'Passat (New)', 1, '2023-09-01 13:13:27', '2023-09-01 13:13:27'),
(10485, '46', 'Passat', '2001', 'Sedan, Wagon', NULL, 'Passat', 1, '2023-09-01 13:13:27', '2023-09-01 13:13:27'),
(10486, '46', 'Golf', '2001', 'Hatchback', NULL, 'Golf', 1, '2023-09-01 13:13:27', '2023-09-01 13:13:27'),
(10489, '46', 'Cabrio', '2000', 'Convertible', NULL, 'Cabrio', 1, '2023-09-01 13:13:27', '2023-09-01 13:13:27'),
(10490, '46', 'GTI (New)', '1999', 'Hatchback', NULL, 'GTI (New)', 1, '2023-09-01 13:13:27', '2023-09-01 13:13:27'),
(10492, '46', 'Cabrio (New)', '1999', 'Convertible', NULL, 'Cabrio (New)', 1, '2023-09-01 13:13:27', '2023-09-01 13:13:27'),
(10494, '46', 'New Beetle', '2000', 'Hatchback', NULL, 'New Beetle', 1, '2023-09-01 13:13:27', '2023-09-01 13:13:27'),
(10495, '46', 'GTI', '2001', 'Hatchback', NULL, 'GTI', 1, '2023-09-01 13:13:27', '2023-09-01 13:13:27'),
(10519, '46', 'Golf III', '1994', 'Hatchback', NULL, 'Golf III', 1, '2023-09-01 13:13:28', '2023-09-01 13:13:28'),
(10521, '46', 'Jetta III', '1993', 'Sedan', NULL, 'Jetta III', 1, '2023-09-01 13:13:28', '2023-09-01 13:13:28'),
(10529, '46', 'Fox', '1992', 'Sedan, Coupe', NULL, 'Fox', 1, '2023-09-01 13:13:28', '2023-09-01 13:13:28'),
(10532, '46', 'Corrado', '1992', 'Coupe', NULL, 'Corrado', 1, '2023-09-01 13:13:28', '2023-09-01 13:13:28'),
(10539, '46', 'Atlas Cross Sport', '2021', 'SUV', NULL, 'Atlas Cross Sport', 1, '2023-09-01 13:13:29', '2023-09-01 13:13:29'),
(10547, '1', 'Stelvio', '2024', 'SUV', '1718280955.avif', 'stelvio', 1, '2023-09-04 10:59:07', '2024-06-13 18:15:55'),
(10553, '1', '4C', '2016', 'Coupe', NULL, '4C', 1, '2023-09-04 10:59:08', '2023-09-04 10:59:08'),
(10560, '1', '164', '1992', 'Sedan', NULL, '164', 1, '2023-09-04 10:59:08', '2023-09-04 10:59:08'),
(10562, '1', '4C Spider', '2018', 'Convertible', NULL, '4C Spider', 1, '2023-09-04 10:59:08', '2023-09-04 10:59:08'),
(10563, '1', 'Spider', '1992', 'Convertible', NULL, 'Spider', 1, '2023-09-04 10:59:08', '2023-09-04 10:59:08'),
(10564, '1', 'Giulia', NULL, 'Sedan', '1718289068.avif', 'giulia', 1, '2023-09-04 10:59:08', '2024-06-13 20:31:08'),
(10566, '36', 'patrol v8 platinum', '2022', NULL, NULL, 'patrol-v8-platinum', 1, '2024-05-31 21:24:43', '2024-05-31 21:24:43'),
(10567, '7', 'Captiva', '2023', NULL, NULL, 'captiva', 1, '2024-05-31 21:28:02', '2024-05-31 21:28:02'),
(10569, '19', 'Creta', '2023', NULL, NULL, 'creta', 1, '2024-05-31 21:44:38', '2024-05-31 21:44:38'),
(10570, '32', 's580', '2024', NULL, NULL, 's580', 1, '2024-05-31 21:48:57', '2024-05-31 21:48:57'),
(10571, '33', 'ZS', '2024', NULL, NULL, 'zs', 1, '2024-05-31 21:51:33', '2024-05-31 21:51:33'),
(10572, '36', 'Nissan Patrol Platinum', '2024', NULL, NULL, 'nissan-patrol-platinum', 1, '2024-05-31 21:55:26', '2024-05-31 21:55:26'),
(10573, '45', 'Rush', '2024', NULL, NULL, 'rush', 1, '2024-05-31 21:58:57', '2024-05-31 21:58:57'),
(10574, '24', 'Pegas', '2024', NULL, NULL, 'pegas', 1, '2024-05-31 22:06:52', '2024-05-31 22:06:52'),
(10575, '24', 'picanto', '2024', NULL, NULL, 'picanto', 1, '2024-05-31 22:12:45', '2024-05-31 22:12:45'),
(10578, '24', 'carnival', '2024', NULL, NULL, 'carnival', 1, '2024-05-31 22:28:09', '2024-05-31 22:28:09'),
(10579, '24', 'RX8', '2024', NULL, NULL, 'rx8', 1, '2024-05-31 22:51:53', '2024-05-31 22:51:53'),
(10580, '35', 'Attrage', '2024', NULL, NULL, 'attrage', 1, '2024-05-31 22:55:02', '2024-05-31 22:55:02'),
(10581, '36', 'sunny', '2024', NULL, NULL, 'sunny', 1, '2024-05-31 23:00:17', '2024-05-31 23:00:17'),
(10582, '36', 'micra', '2024', NULL, NULL, 'micra', 1, '2024-05-31 23:02:29', '2024-05-31 23:02:29'),
(10584, '30', '6', '2024', NULL, NULL, '6', 1, '2024-05-31 23:13:16', '2024-05-31 23:13:16'),
(10585, '33', '5', '2024', NULL, NULL, '5', 1, '2024-05-31 23:16:42', '2024-05-31 23:16:42'),
(10586, '43', 'Baleno', '2024', NULL, NULL, 'baleno', 1, '2024-05-31 23:19:20', '2024-05-31 23:19:20'),
(10587, '43', 'Ertiga', '2024', NULL, NULL, 'ertiga', 1, '2024-05-31 23:24:24', '2024-05-31 23:24:24'),
(10588, '43', 'Ciaz', '2024', NULL, NULL, 'ciaz', 1, '2024-06-01 00:04:18', '2024-06-01 00:04:18'),
(10589, '24', 'sonet', '2024', NULL, NULL, 'sonet', 1, '2024-06-01 00:09:19', '2024-06-01 00:09:19'),
(10590, '24', 'Carens', '2024', NULL, NULL, 'carens', 1, '2024-06-01 00:12:04', '2024-06-01 00:12:04'),
(10591, '4', 'Continental GT', NULL, NULL, '1718303437.webp', 'continental-gt', 1, '2024-06-14 00:30:37', '2024-06-14 00:30:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_03_03_210155_create_logos_table', 2),
(5, '2022_03_04_205232_create_homes_table', 3),
(8, '2022_10_13_190725_create_testimonials_table', 6),
(9, '2022_10_18_184937_testimonial', 7),
(10, '2022_10_18_190709_create__testimonial_table', 8),
(11, '2022_10_27_173542_create_faqs_table', 9),
(12, '2022_10_28_215824_create_portfolio', 10),
(13, '2022_10_31_164116_create_inquiries_table', 11),
(14, '2022_10_31_173933_create_packages_table', 12),
(16, '2022_10_31_214150_create_socials_table', 14),
(17, '2022_10_31_223033_create_services_table', 15),
(18, '2022_10_31_230211_create_portfolios_table', 16),
(19, '2014_10_12_000000_create_users_table', 17),
(21, '2022_11_01_170350_create_pages_table', 18),
(22, '2022_11_01_180422_create_banners_table', 19),
(24, '2022_11_01_195440_create_privacy_policies_table', 20),
(25, '2022_11_01_201457_create_terms_conditions_table', 21),
(26, '2022_11_01_203428_create_page_contents_table', 22),
(28, '2022_11_01_212644_create_blogs_table', 23),
(30, '2022_11_02_151719_create_parent_categories_table', 24),
(31, '2022_11_02_161824_create_main_categories_table', 25),
(32, '2022_11_02_170134_create_sub_categories_table', 26),
(33, '2022_11_03_181130_create_locations_table', 27),
(34, '2022_11_04_155504_create_galleries_table', 28),
(36, '2022_11_07_212636_create_configurations_table', 29),
(39, '2022_11_08_215416_create_attributes_table', 30),
(42, '2022_11_08_214745_create_products_table', 31),
(45, '2022_11_09_174828_create_brands_table', 32),
(46, '2022_11_11_151231_create_otp_verifications_table', 33),
(47, '2022_11_11_190922_create_subscriptions_table', 34),
(48, '2022_11_14_222008_create_user_addresses_table', 35),
(49, '2022_11_14_224938_create_wishlists_table', 36),
(50, '2022_11_15_195941_create_orders_table', 37),
(51, '2022_11_16_182850_create_offers_table', 38),
(52, '2022_11_24_204011_create_carts_table', 39),
(53, '2022_11_29_200021_create_billing_infos_table', 40),
(54, '2022_12_09_230607_create_variants_table', 41),
(55, '2022_12_14_164113_create_order_notifications_table', 42),
(56, '2022_12_16_192955_create_product_additional_attributes_table', 43),
(57, '2022_12_16_191951_create_product_attributes_table', 44),
(58, '2022_12_16_195520_create_define_product_variants_table', 45),
(59, '2022_12_20_163757_create_product_variantions_table', 46),
(60, '2023_09_08_165925_create_images_table', 47),
(61, '2023_09_12_155530_create_mileages_table', 48),
(62, '2023_09_13_124303_create_product_images_table', 49),
(63, '2023_09_28_154206_create_shop_timings_table', 50),
(64, '2023_09_30_132220_create_view_cars_table', 51),
(65, '2019_12_14_000001_create_personal_access_tokens_table', 52),
(66, '2023_10_02_140123_create_wishlists_table', 52),
(67, '2023_10_09_120942_create_leads_table', 53),
(68, '2023_10_16_164122_create_contacted_cars_table', 54),
(69, '2024_05_31_130458_create_car_with_drivers_table', 55),
(70, '2024_05_31_173910_create_car_bookings_table', 56);

-- --------------------------------------------------------

--
-- Table structure for table `mileages`
--

CREATE TABLE `mileages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mileage` int(11) NOT NULL,
  `one_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `three_months` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `six_months` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nine_months` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twelve_months` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mileages`
--

INSERT INTO `mileages` (`id`, `product_id`, `mileage`, `one_month`, `three_months`, `six_months`, `nine_months`, `twelve_months`, `created_at`, `updated_at`) VALUES
(1, '1', 2000, '8', '4', '9', '6', '1', '2023-09-12 11:31:58', '2023-09-13 08:08:28'),
(2, '1', 3000, '4', '2', '9', '12', '12', '2023-09-12 11:31:58', '2023-09-13 08:08:28'),
(3, '1', 4000, '1', '2', '11', '5', '4', '2023-09-12 11:31:58', '2023-09-13 08:08:28'),
(4, '1', 4500, '4', '4', '6', '4', '2', '2023-09-12 11:31:59', '2023-09-13 08:08:28'),
(5, '1', 5000, '4', '9', '8', '12', '5', '2023-09-12 11:31:59', '2023-09-13 08:08:28'),
(6, '1', 6000, '6', '4', '7', '10', '11', '2023-09-12 11:31:59', '2023-09-13 08:08:28'),
(7, '13', 2000, '2', '3', '8', '4', '5', '2023-09-13 08:02:03', '2023-09-13 08:02:03'),
(8, '13', 3000, '4', '8', '1', '11', '9', '2023-09-13 08:02:03', '2023-09-13 08:02:03'),
(9, '13', 4000, '45000', NULL, NULL, NULL, NULL, '2023-09-13 08:02:03', '2024-01-08 20:42:28'),
(10, '13', 4500, '1', '8', '3', '7', '12', '2023-09-13 08:02:03', '2023-09-13 08:02:03'),
(11, '13', 5000, '6', '10', '12', '2', '7', '2023-09-13 08:02:03', '2023-09-13 08:02:03'),
(12, '13', 6000, '2', '4', '4', '10', '4', '2023-09-13 08:02:03', '2023-09-13 08:02:03'),
(13, '2', 2000, NULL, NULL, NULL, NULL, NULL, '2023-09-15 06:44:45', '2023-09-15 06:44:45'),
(14, '2', 3000, NULL, NULL, NULL, NULL, NULL, '2023-09-15 06:44:45', '2023-10-10 09:13:26'),
(15, '2', 4000, NULL, NULL, NULL, NULL, NULL, '2023-09-15 06:44:45', '2023-09-15 06:44:45'),
(16, '2', 4500, '65000', NULL, NULL, NULL, NULL, '2023-09-15 06:44:45', '2023-10-10 09:12:59'),
(17, '2', 5000, NULL, NULL, NULL, NULL, NULL, '2023-09-15 06:44:45', '2023-09-15 06:44:45'),
(18, '2', 6000, NULL, NULL, NULL, NULL, NULL, '2023-09-15 06:44:45', '2023-09-15 06:44:45'),
(21, '5', 2000, '2', '5', '8', '12', '7', '2023-09-27 12:41:19', '2023-09-27 12:41:19'),
(22, '5', 3000, '5', '9', '2', '10', '11', '2023-09-27 12:41:19', '2023-09-27 12:41:19'),
(23, '5', 4000, '10', '12', '9', '3', '12', '2023-09-27 12:41:19', '2023-09-27 12:41:19'),
(24, '5', 4500, '3', '1', '5', '12', '3', '2023-09-27 12:41:19', '2023-09-27 12:41:19'),
(25, '5', 5000, '4', '4', '10', '1', '6', '2023-09-27 12:41:19', '2023-09-27 12:41:19'),
(26, '5', 6000, '10', '3', '12', '3', '12', '2023-09-27 12:41:19', '2023-09-27 12:41:19'),
(29, '8', 4000, NULL, '10000', NULL, NULL, NULL, '2023-10-10 09:30:28', '2023-10-10 09:35:30'),
(30, '8', 2000, NULL, NULL, NULL, NULL, NULL, '2023-10-10 09:31:05', '2023-10-10 09:33:25'),
(31, '8', 3000, NULL, NULL, NULL, NULL, NULL, '2023-10-10 09:33:25', '2023-10-10 09:33:25'),
(32, '8', 4500, NULL, '45000', NULL, '2000', NULL, '2023-10-10 09:33:25', '2023-10-11 09:20:43'),
(33, '8', 5000, '50000', NULL, NULL, NULL, NULL, '2023-10-10 09:33:25', '2023-10-11 07:55:44'),
(34, '8', 6000, NULL, NULL, NULL, NULL, NULL, '2023-10-10 09:33:25', '2023-10-10 09:33:25'),
(73, '12', 4000, '5000', NULL, NULL, NULL, NULL, '2023-11-01 18:25:50', '2023-11-01 18:25:50'),
(74, '14', 2000, '5', '2', '3', '12', '1', '2024-05-09 19:13:55', '2024-05-09 19:13:55'),
(75, '14', 3000, '6', '6', '8', '7', '1', '2024-05-09 19:13:55', '2024-05-09 19:13:55'),
(76, '14', 4000, '1', '8', '9', '3', '5', '2024-05-09 19:13:55', '2024-05-09 19:13:55'),
(77, '14', 4500, '12', '5', '6', '2', '9', '2024-05-09 19:13:55', '2024-05-09 19:13:55'),
(78, '14', 5000, '10', '11', '1', '4', '5', '2024-05-09 19:13:55', '2024-05-09 19:13:55'),
(79, '14', 6000, '10', '7', '12', '7', '10', '2024-05-09 19:13:55', '2024-05-09 19:13:55'),
(80, '15', 2000, '3', '3', '11', '7', '2', '2024-05-28 18:23:31', '2024-05-28 18:23:31'),
(81, '15', 3000, '2', '12', '5', '2', '3', '2024-05-28 18:23:31', '2024-05-28 18:23:31'),
(82, '15', 4000, '1', '4', '2', '6', '7', '2024-05-28 18:23:31', '2024-05-28 18:23:31'),
(83, '15', 4500, '2', '2', '5', '8', '3', '2024-05-28 18:23:31', '2024-05-28 18:23:31'),
(84, '15', 5000, '10', '1', '1', '12', '9', '2024-05-28 18:23:31', '2024-05-28 18:23:31'),
(85, '15', 6000, '2', '1', '1', '12', '3', '2024-05-28 18:23:31', '2024-05-28 18:23:31'),
(86, '55', 2000, '11', '9', '10', '3', '2', '2024-06-03 23:53:32', '2024-06-03 23:53:32'),
(87, '55', 3000, '8', '5', '1', '9', '2', '2024-06-03 23:53:32', '2024-06-03 23:53:32'),
(88, '55', 4000, '8', '5', '5', '6', '6', '2024-06-03 23:53:32', '2024-06-03 23:53:32'),
(89, '55', 4500, '10', '11', '8', '12', '6', '2024-06-03 23:53:32', '2024-06-03 23:53:32'),
(90, '55', 5000, '1', '11', '10', '8', '11', '2024-06-03 23:53:32', '2024-06-03 23:53:32'),
(91, '55', 6000, '6', '6', '2', '10', '9', '2024-06-03 23:53:32', '2024-06-03 23:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `multiple_cities`
--

CREATE TABLE `multiple_cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multiple_cities`
--

INSERT INTO `multiple_cities` (`id`, `shipping_id`, `city_id`, `city_name`, `created_at`, `updated_at`) VALUES
(1, '6', '1', 'Johor Bahru', '2023-01-18 19:34:59', '2023-01-18 19:34:59'),
(2, '6', '2', 'Tebrau', '2023-01-18 19:34:59', '2023-01-18 19:34:59'),
(3, '6', '3', 'Pasir Gudang', '2023-01-18 19:34:59', '2023-01-18 19:34:59'),
(4, '7', '4', 'Bukit Indah', '2023-08-09 12:37:42', '2023-08-09 12:37:42'),
(5, '7', '10', 'Senai', '2023-08-09 12:37:42', '2023-08-09 12:37:42'),
(6, '7', '16', 'Bukit Bakri', '2023-08-09 12:37:42', '2023-08-09 12:37:42'),
(7, '7', '18', 'Pekan Nenas', '2023-08-09 12:37:42', '2023-08-09 12:37:42');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `page_id`, `section_name`, `title1`, `title2`, `title3`, `title4`, `slug`, `image1`, `image2`, `created_at`, `updated_at`) VALUES
(1, '1', 'Biggest Sale', 'This weekend only', 'biggest', 'sale', 'up to 70% off', 'this-weekend-only', '1668703864.webp', '1668703811.webp', '2022-11-17 01:30:33', '2022-11-17 22:51:04'),
(2, '2', 'Buy One Get One Free', 'Buy One', 'Get One', 'Free', NULL, 'buy-one', '1668628909.webp', '1668704100.webp', '2022-11-17 01:57:38', '2022-11-17 22:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_price` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_fee` int(11) DEFAULT NULL,
  `coupon_status` tinyint(1) DEFAULT NULL COMMENT '(1) active, (2) null deactive',
  `product_count` int(50) DEFAULT '0',
  `order_status` tinyint(1) DEFAULT NULL COMMENT '(1) pending, (2) dispatch, (3) deliver, (4) cancelled, (5) hold ,(6) Approved Cancellation',
  `cancel_order_count` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status_count` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` text COLLATE utf8mb4_unicode_ci,
  `shipping_address` text COLLATE utf8mb4_unicode_ci,
  `payment_method` double DEFAULT NULL COMMENT '(1) cash on delivery, (2) Paypal, (3) Stripe',
  `payment_response` text COLLATE utf8mb4_unicode_ci,
  `order_cancellation_reason` text COLLATE utf8mb4_unicode_ci,
  `order_verification` tinyint(1) DEFAULT NULL COMMENT '(1) verified',
  `processing_at` timestamp NULL DEFAULT NULL,
  `shipped_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `verified_at` timestamp NULL DEFAULT NULL,
  `hold_at` timestamp NULL DEFAULT NULL,
  `check_cancel_status` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_tracking_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`, `coupon_id`, `coupon_code`, `coupon_price`, `quantity`, `total_price`, `delivery_fee`, `coupon_status`, `product_count`, `order_status`, `cancel_order_count`, `order_status_count`, `billing_address`, `shipping_address`, `payment_method`, `payment_response`, `order_cancellation_reason`, `order_verification`, `processing_at`, `shipped_at`, `delivered_at`, `cancelled_at`, `verified_at`, `hold_at`, `check_cancel_status`, `order_tracking_id`, `tracking_link`, `comment`, `created_at`, `updated_at`) VALUES
(1, '3', NULL, '', NULL, NULL, NULL, NULL, 0, NULL, 0, 3, '2', NULL, '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', 1, NULL, '{\"_token\":\"Jh4xWtgMWU9Vs6KlcHifRCz2yvOWkr5YxBG1noj9\",\"refundorderIdHidden\":\"1\",\"refund_product_id\":\"3\",\"refund_order_id\":\"1\",\"refundallorders\":null,\"refundproduct\":[\"2\"],\"reason\":\"6\",\"comment\":\"sasa\",\"refunded_policy\":\"2\",\"cancellation_image\":[{},{},{}]}', NULL, '2023-02-03 14:47:04', NULL, '2023-02-03 14:53:59', '2023-02-03 14:47:36', NULL, NULL, '0', NULL, NULL, 'sasa', '2023-02-03 14:47:04', '2023-02-03 16:46:06'),
(2, '3', NULL, '', NULL, NULL, NULL, NULL, 0, NULL, 0, 1, '1', '1', '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', 1, NULL, '{\"orderIdHidden\":\"2\",\"cancel_product_id\":\"3\",\"cancel_order_id\":\"2\",\"cancelproduct\":[\"3\",\"4\"],\"allorders\":null,\"reason\":\"3\",\"comment\":\"dsd\",\"policy\":\"1\"}', NULL, '2023-02-03 15:20:27', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, 'dsd', '2023-02-03 15:20:27', '2023-02-03 15:20:58'),
(3, '3', NULL, '', NULL, NULL, NULL, NULL, 0, NULL, 0, 1, '1', '1', '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', 1, NULL, '{\"orderIdHidden\":\"3\",\"cancel_product_id\":\"2\",\"cancel_order_id\":\"3\",\"cancelproduct\":[\"7\"],\"allorders\":null,\"reason\":\"3\",\"comment\":\"asa\",\"policy\":\"1\"}', NULL, '2023-02-03 16:54:54', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, 'asa', '2023-02-03 16:54:54', '2023-02-03 16:59:11'),
(4, '3', NULL, '', NULL, NULL, NULL, NULL, 0, NULL, 0, 1, '1', NULL, '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', '{\"id\":1,\"user_id\":\"3\",\"name\":\"Yolanda\",\"address\":\"Hamish\",\"contact\":\"171\",\"landmark\":\"Vernon\",\"delivery_label\":\"1\",\"province\":\"5\",\"city\":\"66\",\"village\":null,\"default_shipping\":\"1\",\"default_billing\":\"2\",\"shipping_active_address\":\"1\",\"billing_active_address\":\"2\",\"address_identifire\":3,\"created_at\":\"2023-02-02T21:57:10.000000Z\",\"updated_at\":\"2023-02-02T21:57:10.000000Z\"}', 1, NULL, '{\"orderIdHidden\":\"4\",\"cancel_product_id\":\"1\",\"cancel_order_id\":\"4\",\"allorders\":null,\"cancelproduct\":[\"9\",\"11\"],\"reason\":\"2\",\"comment\":\"test\",\"policy\":\"1\"}', NULL, '2023-02-03 17:14:06', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, 'test', '2023-02-03 17:14:06', '2023-02-03 17:15:03');

-- --------------------------------------------------------

--
-- Table structure for table `order_cancellations`
--

CREATE TABLE `order_cancellations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_info_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_variantion_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_order_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_status` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_cancellations`
--

INSERT INTO `order_cancellations` (`id`, `user_id`, `billing_info_id`, `order_id`, `product_id`, `product_variantion_id`, `cancel_order_status`, `cancellation_status`, `check_status`, `created_at`, `updated_at`) VALUES
(1, '3', '2', '1', '3', '2', '2', '2', '4', '2023-02-03 14:54:25', '2023-02-03 16:46:06'),
(2, '3', '3', '2', '3', '1', '2', '3', '1', '2023-02-03 15:20:58', '2023-02-03 15:20:58'),
(3, '3', '4', '2', '3', '4', '2', '3', '1', '2023-02-03 15:20:58', '2023-02-03 15:20:58'),
(4, '3', '5', '3', '3', '3', '2', '3', '1', '2023-02-03 16:55:14', '2023-02-03 16:55:14'),
(5, '3', '6', '3', '3', '1', '2', '1', '3', '2023-02-03 16:55:14', '2023-02-03 16:55:38'),
(6, '3', '7', '3', '2', NULL, '2', '1', '3', '2023-02-03 16:56:04', '2023-02-03 16:59:11'),
(7, '3', '9', '4', '3', '4', '2', '3', '1', '2023-02-03 17:15:03', '2023-02-03 17:15:03'),
(8, '3', '11', '4', '1', NULL, '2', '3', '1', '2023-02-03 17:15:03', '2023-02-03 17:15:03');

-- --------------------------------------------------------

--
-- Table structure for table `order_notes`
--

CREATE TABLE `order_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_variantion_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributes` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_values` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_comment` text COLLATE utf8mb4_unicode_ci,
  `order_notes_status` int(11) NOT NULL,
  `status_changed_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_notes`
--

INSERT INTO `order_notes` (`id`, `order_id`, `product_id`, `product_variantion_id`, `attributes`, `attribute_values`, `order_comment`, `order_notes_status`, `status_changed_time`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, NULL, NULL, NULL, NULL, 1, '2023-02-03 19:47:04', '2023-02-03 14:47:04', '2023-02-03 14:47:04'),
(2, '1', NULL, NULL, NULL, NULL, 'test', 4, '2023-02-03 19:47:36', '2023-02-03 14:47:36', '2023-02-03 14:47:36'),
(3, '1', NULL, NULL, NULL, NULL, 'delivered', 3, '2023-02-03 19:53:59', '2023-02-03 14:53:59', '2023-02-03 14:53:59'),
(4, '2', NULL, NULL, NULL, NULL, NULL, 1, '2023-02-03 20:20:27', '2023-02-03 15:20:27', '2023-02-03 15:20:27'),
(5, '1', '3', '2', '4,9', 'Small,Lenovo', 'refund approved', 8, '2023-02-03 21:46:06', '2023-02-03 16:46:06', '2023-02-03 16:46:06'),
(6, '3', NULL, NULL, NULL, NULL, NULL, 1, '2023-02-03 21:54:54', '2023-02-03 16:54:54', '2023-02-03 16:54:54'),
(7, '3', '3', '1', '4,7', 'Small,Dell', 'a', 7, '2023-02-03 21:55:38', '2023-02-03 16:55:38', '2023-02-03 16:55:38'),
(8, '3', '2', NULL, NULL, NULL, 'e', 7, '2023-02-03 21:59:11', '2023-02-03 16:59:11', '2023-02-03 16:59:11'),
(9, '4', NULL, NULL, NULL, NULL, NULL, 1, '2023-02-03 22:14:06', '2023-02-03 17:14:06', '2023-02-03 17:14:06');

-- --------------------------------------------------------

--
-- Table structure for table `order_notifications`
--

CREATE TABLE `order_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otp_verifications`
--

CREATE TABLE `otp_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otp_verifications`
--

INSERT INTO `otp_verifications` (`id`, `email`, `otp`, `created_at`, `updated_at`) VALUES
(4, 'aq.developer007@gmail.com', '4919', '2023-09-14 06:12:26', '2023-09-14 06:12:26'),
(9, 'aq.developer007@gmail.com', '2697', '2023-09-15 12:05:40', '2023-09-15 12:05:40'),
(10, 'aq.developer007@gmail.com', '1819', '2023-09-15 12:10:33', '2023-09-15 12:10:33'),
(11, 'aq.developer007@gmail.com', '7262', '2023-09-15 12:12:16', '2023-09-15 12:12:16'),
(12, 'aq.developer007@gmail.com', '6773', '2023-09-15 12:13:16', '2023-09-15 12:13:16'),
(13, 'aq.developer007@gmail.com', '1935', '2023-09-15 13:06:33', '2023-09-15 13:06:33'),
(15, 'aq.developer007@gmail.com', '7491', '2023-09-19 12:34:38', '2023-09-19 12:34:38'),
(22, 'aq.developer007@gmail.com', '5770', '2023-10-10 13:38:07', '2023-10-10 13:38:07'),
(23, 'aq.developer007@gmail.com', '4109', '2023-10-10 13:40:00', '2023-10-10 13:40:00'),
(24, 'aq.developer009@gmail.com', '3070', '2023-10-10 13:40:59', '2023-10-10 13:40:59'),
(25, 'aq.developer009@gmail.com', '4218', '2023-10-10 13:41:56', '2023-10-10 13:41:56'),
(26, 'guzajid@mailinator.com', '3976', '2023-10-10 13:45:15', '2023-10-10 13:45:15'),
(27, 'metawel@mailinator.com', '8811', '2023-10-10 13:45:35', '2023-10-10 13:45:35'),
(28, 'lymabuxa@mailinator.com', '9183', '2023-10-10 13:46:53', '2023-10-10 13:46:53'),
(29, 'pirugom@mailinator.com', '5797', '2023-10-10 13:47:14', '2023-10-10 13:47:14'),
(30, 'duvigobypy@mailinator.com', '1297', '2023-10-10 13:47:38', '2023-10-10 13:47:38'),
(36, 'aq.developer007@gmail.com', '3110', '2023-10-24 12:53:49', '2023-10-24 12:53:49'),
(37, 'aq.developer007@gmail.com', '1956', '2023-10-25 09:21:35', '2023-10-25 09:21:35'),
(39, 'admin@lsb.com', '9687', '2023-10-26 13:18:15', '2023-10-26 13:18:15'),
(46, 'wizardsufee@yopmail.com', '1813', '2024-03-22 00:34:04', '2024-03-22 00:34:04'),
(47, 'wizardsufee@yopmail.com', '5895', '2024-03-22 03:37:10', '2024-03-22 03:37:10'),
(48, 'wizardsufee@yopmasdasdadasdail.comasdada', '1379', '2024-03-22 03:38:13', '2024-03-22 03:38:13'),
(51, 'testing@example.com', '6220', '2024-04-08 01:39:50', '2024-04-08 01:39:50'),
(52, 'testing@example.com', '8030', '2024-04-08 01:39:54', '2024-04-08 01:39:54'),
(53, 'testing@example.com', '4289', '2024-04-08 01:44:54', '2024-04-08 01:44:54'),
(54, 'testing@example.com', '4727', '2024-04-08 01:44:56', '2024-04-08 01:44:56'),
(55, 'testing@example.com', '4362', '2024-04-08 01:44:59', '2024-04-08 01:44:59'),
(56, 'testing@example.com', '9091', '2024-04-08 01:45:01', '2024-04-08 01:45:01'),
(57, 'testing@example.com', '5371', '2024-04-08 01:45:02', '2024-04-08 01:45:02'),
(58, 'testing@example.com', '6053', '2024-04-08 01:45:02', '2024-04-08 01:45:02'),
(59, 'testing@example.com', '2333', '2024-04-08 01:45:02', '2024-04-08 01:45:02'),
(60, 'testing@example.com', '6530', '2024-04-08 01:45:03', '2024-04-08 01:45:03'),
(61, 'testing@example.com', '2567', '2024-04-08 01:45:03', '2024-04-08 01:45:03'),
(62, 'testing@example.com', '6655', '2024-04-08 01:45:05', '2024-04-08 01:45:05'),
(63, 'testing@example.com', '4013', '2024-04-08 01:45:08', '2024-04-08 01:45:08'),
(64, 'testing@example.com', '9549', '2024-04-08 01:45:11', '2024-04-08 01:45:11'),
(65, 'testing@example.com', '7704', '2024-04-08 01:45:16', '2024-04-08 01:45:16'),
(66, 'testing@example.com', '9906', '2024-04-08 01:45:21', '2024-04-08 01:45:21'),
(67, 'testing@example.com', '4024', '2024-04-08 01:45:26', '2024-04-08 01:45:26'),
(68, 'testing@example.com', '4062', '2024-04-08 01:45:33', '2024-04-08 01:45:33'),
(69, 'testing@example.com', '4060', '2024-04-08 01:45:45', '2024-04-08 01:45:45'),
(70, 'testing@example.com', '1842', '2024-04-08 01:45:58', '2024-04-08 01:45:58'),
(71, 'testing@example.com', '9292', '2024-04-08 01:46:05', '2024-04-08 01:46:05'),
(72, 'testing@example.com', '8217', '2024-04-08 01:46:06', '2024-04-08 01:46:06'),
(73, 'testing@example.com', '8348', '2024-04-08 01:46:06', '2024-04-08 01:46:06'),
(74, 'testing@example.com', '4484', '2024-04-08 01:46:06', '2024-04-08 01:46:06'),
(75, 'testing@example.com', '4629', '2024-04-08 01:46:14', '2024-04-08 01:46:14'),
(76, 'testing@example.com', '1132', '2024-04-08 01:46:22', '2024-04-08 01:46:22'),
(77, 'testing@example.com', '8705', '2024-04-08 01:46:39', '2024-04-08 01:46:39'),
(78, 'testing@example.com', '2790', '2024-04-08 01:48:20', '2024-04-08 01:48:20'),
(79, 'testing@example.com', '6032', '2024-04-08 03:13:14', '2024-04-08 03:13:14'),
(81, 'aq.developer007@gmail.com', '5065', '2024-05-28 22:08:53', '2024-05-28 22:08:53'),
(82, 'aq.developer007@gmail.com', '5214', '2024-05-28 22:10:17', '2024-05-28 22:10:17'),
(84, 'aq.developer007@gmail.com', '6394', '2024-05-28 22:19:58', '2024-05-28 22:19:58'),
(87, 'hasnain.ghazitech@gmail.com', '4360', '2024-05-29 20:15:00', '2024-05-29 20:15:00'),
(88, 'hasnain.ghazitech@gmail.com', '5694', '2024-05-29 20:18:09', '2024-05-29 20:18:09'),
(89, 'mdhasnain1070@gmail.com', '5833', '2024-05-29 20:18:33', '2024-05-29 20:18:33'),
(90, 'aq.developer007@gmail.com', '9629', '2024-05-31 02:23:16', '2024-05-31 02:23:16'),
(91, 'aq.developer007@gmail.com', '1179', '2024-05-31 02:24:58', '2024-05-31 02:24:58'),
(92, 'aq.developer007@gmail.com', '4324', '2024-05-31 02:26:03', '2024-05-31 02:26:03'),
(93, 'aq.developer007@gmail.com', '4788', '2024-05-31 02:28:11', '2024-05-31 02:28:11'),
(94, 'abdurrehmanashraf.ghazitech@gmail.com', '9003', '2024-05-31 20:14:44', '2024-05-31 20:14:44'),
(95, 'abdurrehmanashraf.ghazitech@gmail.com', '3665', '2024-05-31 20:16:25', '2024-05-31 20:16:25'),
(96, 'aq.developer007@gmail.com', '4616', '2024-05-31 20:17:16', '2024-05-31 20:17:16'),
(97, 'abdurrehmanashraf.ghazitech@gmail.com', '1611', '2024-05-31 20:18:09', '2024-05-31 20:18:09'),
(98, 'abdurrehmanashraf.ghazitech@gmail.com', '4022', '2024-05-31 20:29:17', '2024-05-31 20:29:17'),
(99, 'abdurrehmanashraf.ghazitech@gmail.com', '2154', '2024-05-31 21:20:13', '2024-05-31 21:20:13'),
(100, 'ahsan.ghazitech@gmail.com', '9240', '2024-05-31 22:35:04', '2024-05-31 22:35:04'),
(101, 'ahsan.ghazitech@gmail.com', '9658', '2024-05-31 23:43:17', '2024-05-31 23:43:17'),
(102, 'ahsan.ghazitech@gmail.com', '4555', '2024-05-31 23:43:38', '2024-05-31 23:43:38'),
(103, 'ahsan.ghazitech@gmail.com', '8826', '2024-06-01 01:25:49', '2024-06-01 01:25:49'),
(104, 'aq.developer007@gmail.com', '3000', '2024-06-01 02:34:33', '2024-06-01 02:34:33'),
(105, 'aq.developer007@gmail.com', '3819', '2024-06-01 03:32:44', '2024-06-01 03:32:44'),
(106, 'abdurrehmanashraf.ghazitech@gmail.com', '9963', '2024-06-01 13:21:49', '2024-06-01 13:21:49'),
(107, 'covury@mailinator.com', '1254', '2024-06-01 23:42:36', '2024-06-01 23:42:36'),
(108, 'testuser@ghazitech.com', '4724', '2024-06-03 15:03:56', '2024-06-03 15:03:56'),
(109, 'aq.developer007@gmail.com', '1303', '2024-06-04 17:53:53', '2024-06-04 17:53:53'),
(110, 'aq.developer007@gmail.com', '9584', '2024-06-04 18:45:41', '2024-06-04 18:45:41'),
(111, 'aq.developer007@gmail.com', '2376', '2024-06-04 18:46:06', '2024-06-04 18:46:06'),
(112, 'aq.developer007@gmail.com', '6763', '2024-06-12 17:15:23', '2024-06-12 17:15:23'),
(113, 'aq.developer007@gmail.com', '8527', '2024-06-13 00:23:03', '2024-06-13 00:23:03'),
(114, 'ahsan.ghazitech@gmail.com', '7183', '2024-06-13 00:25:49', '2024-06-13 00:25:49'),
(115, 'ahsan.ghazitech@gmail.com', '7708', '2024-06-13 00:26:57', '2024-06-13 00:26:57'),
(116, 'ahsan.ghazitech@gmail.com', '4254', '2024-06-13 00:26:57', '2024-06-13 00:26:57'),
(117, 'aq.developer007@gmail.com', '1472', '2024-06-13 00:27:19', '2024-06-13 00:27:19'),
(118, 'ahsan.ghazitech@gmail.com', '3353', '2024-06-13 00:27:59', '2024-06-13 00:27:59'),
(120, 'abdurafay119@gmail.com', '1181', '2024-06-14 00:52:52', '2024-06-14 00:52:52'),
(121, 'abdurafay119@gmail.com', '2119', '2024-06-14 00:56:02', '2024-06-14 00:56:02'),
(122, 'abdurafay119@gmail.com', '6713', '2024-06-14 00:56:52', '2024-06-14 00:56:52'),
(124, 'abdulqadeersolangi007@gmail.com', '9358', '2024-06-15 11:12:26', '2024-06-15 11:12:26'),
(125, 'abdulqadeersolangi007@gmail.com', '8657', '2024-06-15 11:13:12', '2024-06-15 11:13:12'),
(126, 'aq.developer007@gmail.com', '3608', '2024-06-24 22:58:31', '2024-06-24 22:58:31'),
(127, 'aq.developer007@gmail.com', '5447', '2024-06-24 23:00:33', '2024-06-24 23:00:33');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `title`, `price`, `description`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Basic', '500', '<p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</p>', 1, '2022-11-01 01:36:56', '2022-11-01 22:34:11'),
(4, 'Gold', '700', '<p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</p>', 0, '2022-11-01 01:37:12', '2022-11-04 21:32:04'),
(5, 'Premium', '1000', '<p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</p>', 0, '2022-11-01 01:37:23', '2022-11-05 01:26:05');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', 1, '2022-11-01 23:55:44', '2022-11-08 02:44:23'),
(2, 'About us', 1, '2022-11-01 23:55:52', '2022-11-01 23:55:52'),
(3, 'Contact Us', 1, '2022-11-01 23:56:04', '2022-11-01 23:56:04'),
(4, 'Gallery', 1, '2022-11-01 23:56:30', '2022-11-01 23:56:30'),
(5, 'Privacy Policy', 1, '2022-11-01 23:56:42', '2022-11-01 23:56:42'),
(6, 'Terms & Conditions', 1, '2022-11-01 23:57:19', '2022-11-01 23:57:19'),
(7, 'Sign up', 0, '2022-11-01 23:57:39', '2022-11-05 01:34:50'),
(8, 'Sign in', 1, '2022-11-01 23:57:48', '2022-11-04 22:49:17'),
(9, 'Testimonials', 1, '2022-11-01 23:59:38', '2022-11-01 23:59:38'),
(10, 'Faq', 1, '2022-11-01 23:59:48', '2022-11-01 23:59:48'),
(11, 'Portfolio', 1, '2022-11-02 00:00:58', '2022-11-03 02:03:31'),
(12, 'Category', 1, '2022-11-10 22:39:53', '2022-11-10 22:39:53'),
(13, 'Shop', 1, '2022-11-10 22:40:29', '2022-11-10 22:40:29');

-- --------------------------------------------------------

--
-- Table structure for table `page_contents`
--

CREATE TABLE `page_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` int(11) NOT NULL,
  `section_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title2` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title3` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title4` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_contents`
--

INSERT INTO `page_contents` (`id`, `page_id`, `section_name`, `title1`, `title2`, `title3`, `title4`, `slug`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Discount Section', 'Book Your', 'IPhone 14 Pro Max', '25', 'Sale', 'book-your', '<p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</p>', '1669849108.webp', '2022-11-30 23:23:16', '2022-12-01 22:13:41'),
(2, 1, 'Power Bank', 'Power Bank', '25', 'Sale', NULL, 'power-bank', '<p>Sale</p>', '1669847063.webp', '2022-11-30 23:24:23', '2022-11-30 23:56:45'),
(3, 1, 'Andriod', 'Andriod', '25', 'Sale', NULL, 'andriod', '<p>Sale</p>', '1669847108.webp', '2022-11-30 23:25:08', '2022-11-30 23:56:53'),
(4, 1, 'Digital Watch', 'Digital Watch', '25', 'Sale', NULL, 'digital-watch', '<p>Digital WatchDigital Watch</p>', '1669847157.webp', '2022-11-30 23:25:57', '2022-11-30 23:56:58'),
(5, 1, 'Gaming PC', 'Gaming PC', '25', 'Sale', NULL, 'gaming-pc', '<p>sale</p>', '1669847551.webp', '2022-11-30 23:32:31', '2022-11-30 23:57:11');

-- --------------------------------------------------------

--
-- Table structure for table `parent_categories`
--

CREATE TABLE `parent_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parent_categories`
--

INSERT INTO `parent_categories` (`id`, `parent_category_name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Electronic Accessories', 'electronic-accessories', 1, '2022-12-28 00:49:38', '2022-12-30 21:36:25'),
(2, 'Mobile Phone', 'mobile-phone', 1, '2023-01-18 07:06:24', '2023-01-18 07:06:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `type`, `image`, `image_thumbnail`, `video`, `status`, `created_at`, `updated_at`) VALUES
(5, 1, '1667319869.png', '1667318978.jpg', '1667319546.jpg', 1, '2022-11-01 22:09:38', '2022-11-04 02:50:20'),
(6, 1, '1667576142.jpg', '1667582735.jpg', '1667502769.mp4', 1, '2022-11-04 01:12:49', '2022-11-04 23:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `title`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Privacy and Policy', NULL, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolor</p>', '2022-11-02 02:28:44', '2022-11-11 01:13:20');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `make_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_per_day` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_day_mileage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `daily_availablity` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekly_rent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekly_mileage` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `available_weekly` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monthly_extra` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_free` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `daily_discount_price` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekly_discount_price` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_monthly_available` int(11) DEFAULT NULL,
  `monthly_discount_price` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_per_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_colors` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_features` longtext COLLATE utf8mb4_unicode_ci,
  `car_doors` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passengers` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_card` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specs` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transmission` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fuel_type` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_admin_approve` int(11) DEFAULT NULL,
  `is_featured` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(1)car is featured (2) car is premium',
  `security_deposit` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_days` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_charges` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cutomer_note` text COLLATE utf8mb4_unicode_ci,
  `exterior_color` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interior_color` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `brand_id`, `model_name`, `make_year`, `category`, `price_per_day`, `slug`, `per_day_mileage`, `daily_availablity`, `days`, `weekly_rent`, `weekly_mileage`, `available_weekly`, `monthly_extra`, `extra_free`, `daily_discount_price`, `weekly_discount_price`, `is_monthly_available`, `monthly_discount_price`, `insurance_per_day`, `car_colors`, `car_features`, `car_doors`, `passengers`, `bags`, `registration_card`, `specs`, `transmission`, `fuel_type`, `status`, `is_admin_approve`, `is_featured`, `security_deposit`, `delivery_days`, `delivery_charges`, `cutomer_note`, `exterior_color`, `interior_color`, `description`, `created_at`, `updated_at`, `city`) VALUES
(1, '10', '5', 'i3', '2015', 'Hatchback', '879', 'bmw-i3-iid-1', '23', 'Yes', '1', '240', '61', 'Yes', '57', 'Yes', NULL, NULL, NULL, NULL, '3', 'Black,Blue,Orange,Beige,Gold', '3D Surround Camera,Memory Front Seats,Parking Assist,Digital HUD,Temperature Controlled Seats,Built-in-GPS,Sunroof/Moonroof,Parking Sensors,Steering Assist,Tinted Windows,Paddle Shift(Triptronic),LCD Screens,SRS Airbags,Front Air Bags,USB,Apple CarPlay,Foldable Armrest,Butterfly Doors,Chiller Freezer,Sliding Doors,Climate Control,Tail Lift,Massaging Seats', '4', '2', '3', '1717002814.png', 'Euro Specs', 'Manual', 'Diesel', 1, 1, '0', '97', 'Free (2 days+)', NULL, 'Eum et doloribus bla', 'Blue:#0000FF', 'Black:#000000', NULL, '2023-09-13 08:08:27', '2024-06-13 23:24:19', 'Ajman'),
(2, '10', '25', 'Aventador', '2018', 'Coupe', '593', 'lamborghini-aventador-iid-2', '11', NULL, '4', '945', '41', NULL, '70', NULL, NULL, NULL, NULL, NULL, '28', 'White,Black,Silver,Blue,Green,Orange,Purple,Yellow', '3D Surround Camera,Parking Assist,Adaptive Cruise Control,Digital HUD,Temperature Controlled Seats,Sunroof/Moonroof,Reverse Camera,Parking Sensors,Touchscreen LCD,LCD Screens,Push Button Ignition,Front & Rear Airbags,Premium Audio,Power Mirrors,Power Windows,Seat Belt Reminder,Fabric Seats,Foldable Armrest,Butterfly Doors,Chiller Freezer,Sliding Doors,For-Light,Massaging Seats,Stereo MP3 / Cd', '2', '7', '2', '1717155496.png', 'GCC Specs', 'Manual', 'Diesel', 1, 1, NULL, '82', 'Free Always', NULL, 'Accusantium laudanti', 'Green:#008000,Yellow:#FFFF00', 'Black:#000000,Silver:#C0C0C0', NULL, '2023-09-15 06:44:41', '2024-06-13 23:25:28', 'Ajman'),
(3, '10', '32', 'Mercedes-AMG G-Class', '2017', 'Suv', '582', 'mercedes-benz-mercedes-amg-g-class-iid-3', '5', NULL, '4', '415', '32', NULL, '65', NULL, '500', '400', NULL, NULL, '17', 'Black', 'Blind Spot Warning,Adaptive Cruise Control,Digital HUD,Temperature Controlled Seats,Steering Assist,Dat-time Runing Lights,Paddle Shift(Triptronic),Powered Tailgate,Air Suspension,Gesture Control,SRS Airbags,Front & Rear Airbags,Front Air Bags,Rear AC,Power Mirrors,Power Windows,Alloy Wheels,USB,Android Auto,Power Door Locks,Butterfly Doors,Sliding Doors,Detachable Roof,Tail Lift,Massaging Seats,FM-Radio', '4', '5', '2', NULL, 'Euro Specs', 'Manual', 'Petrol', 1, 1, '0', '7', 'Free (10 days+)', NULL, 'Laboriosam consecte', 'Black:#000000', 'Black:#000000', NULL, '2023-09-15 07:05:12', '2024-06-13 23:32:21', 'Ajman'),
(4, '10', '36', 'Armada', '2019', 'Sedan', '777', 'nissan-armada-iid-4', '20', 'Yes', '4', '323', '29', 'Yes', '59', 'Yes', NULL, NULL, NULL, NULL, '9', 'Black,Gray,Silver,Red,Orange,Beige,Purple,Gold,Yellow', '3D Surround Camera,Digital HUD,Reverse Camera,Touchscreen LCD,Tinted Windows,Paddle Shift(Triptronic),Powered Tailgate,Leather Seats,Gesture Control,SRS Airbags,Bluetooth,Premium Audio,Seat Belt Reminder,Alloy Wheels,Apple CarPlay,Android Auto,Power Door Locks,Chiller Freezer,Sliding Doors,For-Light,Climate Control,Tail Lift,Stereo MP3 / Cd', '2', '5', '2', NULL, 'Euro Specs', 'Manual', 'Diesel', 1, 1, '0', '21', 'Free (30 days+)', NULL, 'Et quod voluptatem v', 'Red:#FF0000', 'Red:#FF0000', NULL, '2023-09-15 07:22:45', '2024-06-13 23:32:26', 'Ajman'),
(7, '10', '5', 'X6', '2019', 'Suv', '614', 'bmw-x6-iid-7', '18', 'Yes', '4', '406', '67', 'Yes', '93', 'Yes', NULL, NULL, NULL, NULL, '2', 'White', '3D Surround Camera,Blind Spot Warning,Parking Assist,Digital HUD,Temperature Controlled Seats,Built-in-GPS,Sunroof/Moonroof,Tinted Windows,Power Seats,Air Suspension,Gesture Control,SRS Airbags,Front Air Bags,Premium Audio,Rear AC,Power Mirrors,Alloy Wheels,Apple CarPlay,Butterfly Doors,Chiller Freezer,Detachable Roof,Stereo MP3 / Cd', '2', '7', '2', 'wqw', 'Euro Specs', 'Auto', 'Diesel', 1, 1, '1', '24', 'Free (15 days+)', NULL, 'Sed non in ullamco s', 'White:#FFFFFF', 'Black:#000000', NULL, '2023-09-28 09:11:44', '2024-06-13 23:32:30', 'Ajman'),
(8, '10', '4', 'Continental', '2015', 'Suv', '667', 'bentley-continental-iid-8', '28', 'Yes', '2', '431', '96', NULL, '43', 'Yes', '600', '400', NULL, NULL, '19', 'White', '3D Surround Camera,Memory Front Seats,Parking Assist,Adaptive Cruise Control,Sunroof/Moonroof,Reverse Camera,Parking Sensors,Dat-time Runing Lights,Touchscreen LCD,Tinted Windows,LCD Screens,Leather Seats,Air Suspension,Gesture Control,Push Button Ignition,Front & Rear Airbags,Front Air Bags,Bluetooth,Premium Audio,Fabric Seats,USB,Apple CarPlay,Power Door Locks,For-Light,Climate Control,FM-Radio', '2', '5', '2', NULL, 'GCC Specs', 'Manual', 'Diesel', 1, 1, NULL, '61', 'Free (10 days+)', NULL, 'Quibusdam libero deb', 'White:#FFFFFF', 'Red:#FF0000', NULL, '2023-09-28 09:58:08', '2024-06-13 23:32:35', 'Ajman'),
(9, '10', '13', 'Fusion', '2006', 'Sedan', '655', 'ford-fusion-iid-9', '15', NULL, '3', '189', '56', 'Yes', '37', NULL, NULL, NULL, NULL, NULL, NULL, 'Black,Gray,Red,Orange,Yellow', '3D Surround Camera,Temperature Controlled Seats,Reverse Camera,Dat-time Runing Lights,Touchscreen LCD,Front & Rear Airbags,Bluetooth,Rear AC,Power Mirrors,Alloy Wheels,USB,Apple CarPlay,Foldable Armrest,Chiller Freezer,For-Light,FM-Radio,Stereo MP3 / Cd', '4', '2', '3', NULL, 'American Specs', 'Auto', 'Electric', 1, 1, '0', '61', 'Free (30 days+)', NULL, NULL, 'Blue:#0000FF', 'Blue:#0000FF,Green:#008000', NULL, '2023-09-28 10:02:25', '2024-06-13 23:32:40', 'Ajman'),
(12, '10', '32', 'S-Class', '1994', 'Sedan', '200', 'mercedes-benz-s-class-iid-12', '500', 'Yes', '2', '700', '1200', 'Yes', '700', NULL, NULL, NULL, NULL, NULL, '25', 'White,Gray,Blue', '3D Surround Camera,Sunroof/Moonroof,Reverse Camera,Touchscreen LCD,Tinted Windows,LCD Screens,Leather Seats,Air Suspension,Gesture Control,Front Air Bags,Premium Audio,Power Mirrors,Power Windows,Fabric Seats,Alloy Wheels,USB,Apple CarPlay,Butterfly Doors,Chiller Freezer,Sliding Doors,Climate Control', '4', '5', '2', '1698841549.webp', 'American Specs', 'Auto', 'Petrol', 1, 1, NULL, '3000', NULL, '200', 'test', 'Silver:#C0C0C0,Red:#FF0000,Brown:#A52A2A', 'White:#FFFFFF,Silver:#C0C0C0', NULL, '2023-11-01 18:25:49', '2024-06-13 23:32:44', 'Ajman'),
(13, '10', '1', 'Stelvio', '2019', 'Crossover', '2000', 'alfa-romeo-stelvio-iid-13', '75', 'Yes', '1', '5000', '200', NULL, '2000', NULL, NULL, NULL, NULL, NULL, '1000', 'White,Gray', '3D Surround Camera,Memory Front Seats,Blind Spot Warning,Parking Assist,Adaptive Cruise Control,Built-in-GPS,Sunroof/Moonroof,Reverse Camera,Parking Sensors,Touchscreen LCD,Tinted Windows,Paddle Shift(Triptronic),Powered Tailgate,LCD Screens,Leather Seats,Air Suspension,Gesture Control,Push Button Ignition,Front Air Bags,Bluetooth,Premium Audio,Rear AC,Power Windows,Seat Belt Reminder,Fabric Seats,Alloy Wheels,USB,Android Auto,Power Door Locks,Butterfly Doors,Chiller Freezer,Sliding Doors,Detachable Roof,Massaging Seats,FM-Radio,Stereo MP3 / Cd', '4', '5', '2', '1717003115.png', 'Euro Specs', 'Auto', 'Petrol', 1, 1, '2', '1000', 'Free (2 days+)', '500', 'customer note', 'Black:#000000,Red:#FF0000', 'White:#FFFFFF,Red:#FF0000', NULL, '2024-01-08 20:42:26', '2024-06-14 00:19:48', 'Ajman'),
(15, '35', '1', '4C Spider', '2024', 'Suv', '963', 'alfa-romeo-4c-spider-iid-15', '13', 'Yes', '2', '231', '55', 'Yes', '63', 'Yes', NULL, NULL, NULL, NULL, '12', 'White,Black,Gray,Silver,Blue,Red,Brown,Orange,Purple,Gold', 'Memory Front Seats,Adaptive Cruise Control,Temperature Controlled Seats,Reverse Camera,Steering Assist,Day-time Runing Lights,Tinted Windows,Paddle Shift(Triptronic),LCD Screens,Air Suspension,Push Button Ignition,Front Air Bags,Bluetooth,Premium Audio,Rear AC,Power Windows,Fabric Seats,Alloy Wheels,Android Auto,Power Door Locks,Foldable Armrest,Butterfly Doors,Chiller Freezer,Sliding Doors,Fog-Lights,Climate Control,Detachable Roof,Tail Lift,Stereo MP3 / Cd', '4', '5', '2', '1716899011.png', 'Other', 'Auto', 'Petrol', 1, 1, NULL, '13', 'Free (15 days+)', 'Qui vel corporis qua', 'Tempore mollitia tempore similique praesentium quisquam ducimus sed qui ut earum totam voluptate ad', 'Gray:#808080,Blue:#0000FF,Green:#008000,Yellow:#FFFF00', 'Gray:#808080,White:#FFFFFF,Silver:#C0C0C0,Blue:#0000FF,Red:#FF0000,Brown:#A52A2A,Orange:#FFA500,Purple:#800080,Gold:#FFD700', NULL, '2024-05-28 18:23:31', '2024-06-13 23:31:38', 'Umm Al Quwain'),
(16, '10', '25', 'Gallardo', '2023', 'Luxury', '2899', 'lamborghini-gallardo-iid-16', '250', NULL, '2', '16400', '1750', NULL, '48999', NULL, NULL, NULL, NULL, NULL, NULL, 'White', 'Power Door Locks', '2', '2', '2', '1717097672.png', 'Other', 'Auto', 'Petrol', 1, 1, NULL, '1000', 'Free (30 days+)', '0', NULL, 'White:#FFFFFF', 'Black:#000000', NULL, '2024-05-31 01:34:32', '2024-06-13 23:31:42', 'Ajman'),
(17, '10', '11', 'FF', '2023', 'SPORT', '3499', 'ferrari-ff-iid-17', '250', NULL, '2', '21000', '1750', NULL, '76000', NULL, NULL, NULL, NULL, NULL, '4500', 'Black', 'Memory Front Seats', '2', '2', '2', '1717098426.jpg', 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', 'Free (30 days+)', '0', 'Supplier Note: We accept Bitcoin and other Cryptocurrency!\r\nMinimum 1 days booking, + 5% VAT applicable on the rental amount as per UAE law, Over-limit Mileage @ AED 10 / km, Advance payments may be re', 'Black:#000000', 'Black:#000000', NULL, '2024-05-31 01:47:06', '2024-06-13 23:31:46', 'Ajman'),
(18, '10', '7', 'Suburban 3500HD', '2018', 'Suv', '1800', 'chevrolet-suburban-3500hd-iid-18', '8000', NULL, '1', '3000', '10000', NULL, '4000', NULL, NULL, NULL, NULL, NULL, '14000', 'Black', 'Adaptive Cruise Control,Digital HUD,Temperature Controlled Seats,Sunroof/Moonroof,Reverse Camera,Parking Sensors,Day-time Runing Lights,Touchscreen LCD,Tinted Windows', '4', '7', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', 'Free (30 days+)', '0', 'Supplier Note: Minimum 5-hour bookings are required in Dubai and 10-hour in other emirates. 5% VAT is applicable on the booking amount. Advance online payment is required for confirmed bookings.\r\nWe ha', 'Black:#000000', 'Black:#000000', NULL, '2024-05-31 18:18:21', '2024-06-13 23:31:49', 'Ajman'),
(19, '10', '35', 'Mirage', '2017', 'MONTHLY', '1950', 'mitsubishi-mirage-iid-19', '5000', NULL, '1', '1000', '2500', NULL, '500', NULL, NULL, NULL, NULL, NULL, '1500', 'White', '3D Surround Camera,Memory Front Seats,Blind Spot Warning,Adaptive Cruise Control,Digital HUD,Temperature Controlled Seats,Sunroof/Moonroof,Touchscreen LCD', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', 'Free (30 days+)', '0', 'Supplier Note: All prices exclusive of 5% VAT.\r\n, + 5% VAT applicable on the rental amount as per UAE law, Over-limit Mileage @ AED 0.5 / km, Advance payments may be required for confirmed future booki', 'White:#FFFFFF', 'Black:#000000', NULL, '2024-05-31 18:37:57', '2024-06-13 23:31:54', 'Ajman'),
(20, '10', '36', 'Altima', '1993', 'LOW PRICE', '75', 'nissan-altima-iid-20', '250', NULL, '2', '455', '1400', NULL, '1560', NULL, NULL, NULL, NULL, NULL, '4500', 'White', 'Reverse Camera,Parking Sensors,Steering Assist,Touchscreen LCD,Tinted Windows', '4', '5', '2', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', 'Free (30 days+)', NULL, NULL, 'White:#FFFFFF', 'Black:#000000', NULL, '2024-05-31 19:06:37', '2024-06-13 23:31:59', 'Ajman'),
(21, '10', '11', '488 Spider', '2018', 'SUPER CAR', '3499', 'ferrari-488-spider-iid-21', '250', NULL, '1', '21000', '1750', NULL, '76000', NULL, NULL, NULL, NULL, NULL, '4500', 'Red', 'Reverse Camera,Parking Sensors,Touchscreen LCD', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', 'Free (30 days+)', '0', NULL, 'Red:#FF0000', 'Black:#000000', NULL, '2024-05-31 19:21:36', '2024-06-13 23:32:03', 'Ajman'),
(22, '10', '44', 'Model X', '2018', 'ELECTRIC', '449', 'tesla-model-x-iid-22', '250', NULL, '2', '2245', '2100', NULL, '7000', NULL, NULL, NULL, NULL, NULL, '4500', 'Black', 'Memory Front Seats,Reverse Camera,Parking Sensors,Touchscreen LCD,Tinted Windows', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Electric', 1, 1, NULL, '1000', 'Free (30 days+)', NULL, NULL, 'Black:#000000', 'Black:#000000', NULL, '2024-05-31 19:27:23', '2024-06-13 23:32:08', 'Ajman'),
(23, '10', '40', 'Taycan', '2018', 'CONVERTIBLE', '2000', 'porsche-taycan-iid-23', '250', NULL, '1', '12000', '2100', NULL, '42000', NULL, NULL, NULL, NULL, NULL, '4500', 'Gray', 'Memory Front Seats,Blind Spot Warning,Parking Assist,Digital HUD,Temperature Controlled Seats', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Diesel', 1, 1, NULL, '1000', NULL, '0', NULL, 'Gray:#808080', 'Black:#000000', NULL, '2024-05-31 19:32:58', '2024-06-14 00:23:06', 'Ajman'),
(24, '39', '24', 'K5', '2023', 'Sedan', '170', 'kia-k5-iid-24', '0', NULL, '1', '1400', '0', NULL, '3500', NULL, NULL, NULL, NULL, NULL, '0', 'White', 'Built-in-GPS', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', 'Free (30 days+)', NULL, NULL, 'White:#FFFFFF', 'Black:#000000', NULL, '2024-05-31 21:18:34', '2024-06-13 23:32:17', 'Dubai'),
(25, '39', '36', 'patrol v8 platinum', '2022', 'Luxury', '550', 'nissan-patrol-v8-platinum-iid-25', '0', NULL, '3', '3150', '0', NULL, '12000', NULL, NULL, NULL, NULL, NULL, '0', 'White', 'Parking Sensors', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', NULL, NULL, NULL, 'White:#FFFFFF', 'Black:#000000', NULL, '2024-05-31 21:26:48', '2024-06-13 23:30:51', 'Dubai'),
(26, '39', '7', 'Captiva', '2023', '7 Seater', '180', 'chevrolet-captiva-iid-26', '0', NULL, '3', '1120', '0', NULL, '3199', NULL, NULL, NULL, NULL, NULL, '0', 'Black', 'Built-in-GPS', '4', '7', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', NULL, NULL, NULL, 'Black:#000000', 'Black:#000000', NULL, '2024-05-31 21:29:43', '2024-06-13 23:30:55', 'Dubai'),
(27, '39', '33', 'GT', '2022', 'Sedan', '160', 'mg-gt-iid-27', '250', NULL, '2', '1050', '2100', NULL, '2700', NULL, NULL, NULL, NULL, NULL, '4500', 'Blue', 'Digital HUD', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', NULL, NULL, NULL, 'Blue:#0000FF', 'Black:#000000', NULL, '2024-05-31 21:41:57', '2024-06-13 23:30:59', 'Dubai'),
(28, '39', '19', 'Creta', '2022', 'Crossover', '140', 'hyundai-creta-iid-28', '250', NULL, '2', '910', '2100', NULL, '2450', NULL, NULL, NULL, NULL, NULL, '4200', 'White', 'Sunroof/Moonroof', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', NULL, NULL, NULL, 'White:#FFFFFF', 'Black:#000000', NULL, '2024-05-31 21:46:44', '2024-06-13 23:31:03', 'Dubai'),
(29, '39', '19', 'Accent', '2023', 'Sedan', '110', 'hyundai-accent-iid-29', '250', NULL, '1', '770', '2100', NULL, '2100', NULL, NULL, NULL, NULL, NULL, '4500', 'Gray', 'Memory Front Seats', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', NULL, NULL, NULL, 'Gray:#808080', 'Black:#000000', NULL, '2024-05-31 21:48:07', '2024-06-13 23:31:07', 'Dubai'),
(30, '39', '32', 's580', '2022', 'Luxury', '1200', 'mercedes-benz-s580-iid-30', '250', NULL, '3', '6000', '2100', NULL, '26400', NULL, NULL, NULL, NULL, NULL, '4500', 'White', 'Memory Front Seats', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', NULL, NULL, NULL, 'White:#FFFFFF', 'Black:#000000', NULL, '2024-05-31 21:50:47', '2024-06-13 23:31:11', 'Dubai'),
(31, '39', '33', 'ZS', '2022', 'Sedan', '120', 'mg-zs-iid-31', '250', NULL, '3', '840', '2100', NULL, '2300', NULL, NULL, NULL, NULL, NULL, '4500', 'Red', 'Touchscreen LCD', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', 'Free (30 days+)', NULL, NULL, 'Red:#FF0000', 'Black:#000000', NULL, '2024-05-31 21:52:57', '2024-06-13 23:31:15', 'Dubai'),
(32, '39', '36', 'Nissan Patrol Platinum', '2023', 'Suv', '600', 'nissan-nissan-patrol-platinum-iid-32', '250', NULL, '1', '3850', '2100', NULL, '13000', NULL, NULL, NULL, NULL, NULL, '4500', 'Gray', 'Power Seats', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', 'Free (30 days+)', '0', NULL, 'Gray:#808080', 'Black:#000000', NULL, '2024-05-31 21:57:04', '2024-06-13 23:31:19', 'Dubai'),
(33, '39', '45', 'Rush', '2020', 'Suv', '150', 'toyota-rush-iid-33', '250', NULL, '1', '980', '2100', NULL, '2550', NULL, NULL, NULL, NULL, NULL, '4500', 'Brown', 'Reverse Camera', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', 'Free (30 days+)', NULL, NULL, 'Brown:#A52A2A', 'Black:#000000', NULL, '2024-05-31 22:00:45', '2024-06-13 23:31:27', 'Dubai'),
(34, '39', '24', 'Pegas', '2023', 'Sedan', '80', 'kia-pegas-iid-34', '250', NULL, '1', '770', '2100', NULL, '1710', NULL, NULL, NULL, NULL, NULL, '4500', 'White', 'Digital HUD', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', NULL, NULL, NULL, 'White:#FFFFFF', 'Black:#000000', NULL, '2024-05-31 22:11:41', '2024-06-13 23:31:32', 'Dubai'),
(35, '39', '24', 'picanto', '2020', 'Compact', '80', 'kia-picanto-iid-35', '250', NULL, '3', '490', '2100', NULL, '1410', NULL, NULL, NULL, NULL, NULL, '4500', 'White', 'Digital HUD', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', NULL, NULL, NULL, 'White:#FFFFFF', 'Black:#000000', NULL, '2024-05-31 22:14:47', '2024-06-13 23:22:06', 'Dubai'),
(36, '39', '24', 'Seltos', '2023', 'Suv', '160', 'kia-seltos-iid-36', '250', NULL, '3', '1120', '2100', NULL, '2600', NULL, NULL, NULL, NULL, NULL, '4500', 'White', 'Digital HUD', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', NULL, NULL, NULL, 'White:#FFFFFF', 'Black:#000000', NULL, '2024-05-31 22:16:14', '2024-06-13 23:22:14', 'Dubai'),
(37, '39', '24', 'Sorento', '2020', '7 Seater', '170', 'kia-sorento-iid-37', '250', NULL, '1', '1120', '2100', NULL, '3800', NULL, NULL, NULL, NULL, NULL, '4500', 'White', 'Digital HUD', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', 'Free (30 days+)', NULL, NULL, 'White:#FFFFFF', 'Black:#000000', NULL, '2024-05-31 22:24:26', '2024-06-13 23:22:27', 'Dubai'),
(38, '39', '24', 'carnival', '2020', '7 Seater', '300', 'kia-carnival-iid-38', '250', NULL, '1', '1960', '2100', NULL, '4800', NULL, NULL, NULL, NULL, NULL, '4500', 'Gray', 'Touchscreen LCD', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', NULL, NULL, NULL, 'Gray:#808080', 'White:#FFFFFF', NULL, '2024-05-31 22:36:01', '2024-06-13 23:27:03', 'Dubai'),
(39, '39', '24', 'RX8', '2022', 'Suv', '300', 'kia-rx8-iid-39', '250', NULL, '1', '1960', '2100', NULL, '4920', NULL, NULL, NULL, NULL, NULL, '4500', 'White', '3D Surround Camera', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', 'Free (30 days+)', NULL, NULL, 'White:#FFFFFF', 'Black:#000000', NULL, '2024-05-31 22:54:00', '2024-06-13 23:27:25', 'Dubai'),
(40, '39', '35', 'Attrage', '2022', 'Sedan', '80', 'mitsubishi-attrage-iid-40', '250', NULL, '1', '490', '2100', NULL, '1590', NULL, NULL, NULL, NULL, NULL, '4500', 'White', '3D Surround Camera', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', 'Free (30 days+)', NULL, NULL, 'White:#FFFFFF', 'Black:#000000', NULL, '2024-05-31 22:57:10', '2024-06-13 23:30:14', 'Dubai'),
(41, '39', '36', 'Kicks', '2022', 'Crossover', '120', 'nissan-kicks-iid-41', '250', NULL, '3', '980', '2100', NULL, '2200', NULL, NULL, NULL, NULL, NULL, '4500', 'White', 'Adaptive Cruise Control', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', NULL, NULL, NULL, 'White:#FFFFFF', 'Black:#000000', NULL, '2024-05-31 22:59:07', '2024-06-13 23:30:26', 'Dubai'),
(42, '39', '36', 'sunny', '2024', 'Sedan', '100', 'nissan-sunny-iid-42', '250', NULL, '3', '700', '2100', NULL, '1800', NULL, NULL, NULL, NULL, NULL, '4500', 'Gray', 'Fabric Seats', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', NULL, NULL, NULL, 'Gray:#808080,White:#FFFFFF', 'Black:#000000', NULL, '2024-05-31 23:02:03', '2024-06-13 23:30:34', 'Dubai'),
(43, '39', '36', 'micra', '2020', 'Compact', '60', 'nissan-micra-iid-43', '250', NULL, '3', '420', '2100', NULL, '1410', NULL, NULL, NULL, NULL, NULL, '4500', 'White', 'Digital HUD', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', NULL, NULL, NULL, 'White:#FFFFFF', 'Black:#000000', NULL, '2024-05-31 23:04:15', '2024-06-13 23:30:43', 'Dubai'),
(44, '39', '45', 'Corolla', '2023', 'sedan', '150', 'toyota-corolla-iid-44', '250', NULL, '4', '980', '2100', NULL, '2190', NULL, NULL, NULL, NULL, NULL, '4500', 'Black', 'Power Seats', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 0, 0, NULL, '1000', NULL, NULL, NULL, 'White:#FFFFFF', 'Black:#000000', NULL, '2024-05-31 23:08:08', '2024-06-13 23:30:47', 'Dubai'),
(45, '39', '45', 'Rush', '2019', 'Suv', '130', 'toyota-rush-iid-45', '250', NULL, '3', '840', '2100', NULL, '2520', NULL, NULL, NULL, NULL, NULL, '4500', 'White', 'Adaptive Cruise Control', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', 'Free (30 days+)', NULL, NULL, 'White:#FFFFFF', 'Black:#000000', NULL, '2024-05-31 23:12:23', '2024-06-13 23:21:54', 'Dubai'),
(46, '39', '30', '6', '2023', 'Sedan', '150', 'mazda-6-iid-46', '250', NULL, '1', '980', '2100', NULL, '3000', NULL, NULL, NULL, NULL, NULL, '4500', 'Red', 'Reverse Camera', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', 'Free (30 days+)', NULL, NULL, 'Red:#FF0000', 'Black:#000000', NULL, '2024-05-31 23:15:39', '2024-06-13 23:21:50', 'Dubai'),
(47, '39', '33', '5', '2022', 'Sedan', '100', 'mg-5-iid-47', '250', NULL, '3', '770', '2100', NULL, '1700', NULL, NULL, NULL, NULL, NULL, '4500', 'Black', 'Push Button Ignition', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', 'Free (30 days+)', NULL, NULL, 'Black:#000000', 'Black:#000000', NULL, '2024-05-31 23:18:37', '2024-06-13 23:21:47', 'Dubai'),
(48, '39', '43', 'Baleno', '2024', 'Compact', '100', 'suzuki-baleno-iid-48', '250', NULL, '1', '630', '2100', NULL, '1800', NULL, NULL, NULL, NULL, NULL, '4500', 'Blue', 'Touchscreen LCD', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', 'Free (30 days+)', NULL, NULL, 'Blue:#0000FF', 'Black:#000000', NULL, '2024-05-31 23:21:06', '2024-06-13 23:21:44', 'Dubai'),
(49, '39', '43', 'Baleno', '2023', 'Compact', '100', 'suzuki-baleno-iid-49', '250', NULL, '4', '650', '2100', NULL, '1850', NULL, NULL, NULL, NULL, NULL, '4500', 'Black,Brown', 'Memory Front Seats', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', 'Free (30 days+)', NULL, NULL, 'Black:#000000,Brown:#A52A2A', 'Black:#000000', NULL, '2024-05-31 23:23:49', '2024-06-13 23:21:40', 'Dubai'),
(50, '39', '43', 'Ertiga', '2023', '7 Seater', '180', 'suzuki-ertiga-iid-50', '250', NULL, '1', '1190', '2100', NULL, '2500', NULL, NULL, NULL, NULL, NULL, '4500', 'Gray', 'Touchscreen LCD', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', 'Free (30 days+)', NULL, NULL, 'Gray:#808080', 'Black:#000000', NULL, '2024-06-01 00:03:50', '2024-06-21 17:52:57', 'Dubai'),
(51, '39', '43', 'Ciaz', '2023', 'Sedan', '100', 'suzuki-ciaz-iid-51', '250', NULL, '3', '700', '2100', NULL, '1800', NULL, NULL, NULL, NULL, NULL, '4500', 'Brown', 'Touchscreen LCD', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', 'Free (30 days+)', NULL, NULL, 'Brown:#A52A2A', 'Black:#000000', NULL, '2024-06-01 00:06:33', '2024-06-21 17:52:53', 'Dubai'),
(52, '39', '24', 'Seltos', '2024', '7 Seater', '180', 'kia-seltos-iid-52', '250', NULL, '1', '1150', '2100', NULL, '2800', NULL, NULL, NULL, NULL, NULL, '4500', 'White', 'Digital HUD', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, '2', '1000', 'Free (30 days+)', NULL, NULL, 'White:#FFFFFF', 'Black:#000000', NULL, '2024-06-01 00:08:29', '2024-08-08 23:01:43', 'Dubai'),
(53, '39', '24', 'sonet', '2024', 'Suv', '200', 'kia-sonet-iid-53', '250', NULL, '3', '1330', '2100', NULL, '2350', NULL, NULL, NULL, NULL, NULL, '4500', 'Black,Gray', 'Touchscreen LCD', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, NULL, '1000', NULL, NULL, NULL, 'Gray:#808080,Black:#000000', 'Black:#000000', NULL, '2024-06-01 00:11:02', '2024-06-21 17:52:41', 'Dubai'),
(54, '39', '24', 'Carens', '2024', '7 Seater', '250', 'kia-carens-iid-54', '250', NULL, '1', '1610', '2100', NULL, '3700', NULL, NULL, NULL, NULL, NULL, '4500', 'Black', 'Reverse Camera', '4', '5', '3', NULL, 'GCC Specs', 'Auto', 'Petrol', 1, 1, '0', '1000', NULL, NULL, NULL, 'Black:#000000', 'Black:#000000', NULL, '2024-06-01 00:13:18', '2024-06-21 17:52:20', 'Dubai');

-- --------------------------------------------------------

--
-- Table structure for table `product_additional_attributes`
--

CREATE TABLE `product_additional_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_attribute_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_additional_attributes`
--

INSERT INTO `product_additional_attributes` (`id`, `product_attribute_id`, `attribute_id`, `attribute`, `created_at`, `updated_at`) VALUES
(1, '3', '4', 'Small', '2023-02-03 10:22:47', '2023-02-03 10:22:47'),
(2, '3', '6', 'Large', '2023-02-03 10:22:47', '2023-02-03 10:22:47'),
(3, '4', '7', 'Dell', '2023-02-03 10:22:47', '2023-02-03 10:22:47'),
(4, '4', '9', 'Lenovo', '2023-02-03 10:22:47', '2023-02-03 10:22:47'),
(5, '7', '1', 'Red', '2023-08-09 12:38:48', '2023-08-09 12:38:48'),
(6, '7', '2', 'Blue', '2023-08-09 12:38:48', '2023-08-09 12:38:48'),
(7, '8', '4', 'Small', '2023-08-09 12:38:48', '2023-08-09 12:38:48'),
(8, '8', '5', 'Medium', '2023-08-09 12:38:48', '2023-08-09 12:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variant_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible_product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used_for_variation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `product_id`, `variant_id`, `variant`, `visible_product`, `used_for_variation`, `created_at`, `updated_at`) VALUES
(3, '3', '3', 'Size', '1', '2', '2023-02-03 10:22:47', '2023-02-03 10:22:47'),
(4, '3', '4', 'Processor', '1', '2', '2023-02-03 10:22:47', '2023-02-03 10:22:47'),
(7, '4', '2', 'Color', '1', '2', '2023-08-09 12:38:48', '2023-08-09 12:38:48'),
(8, '4', '3', 'Size', '1', '2', '2023-08-09 12:38:48', '2023-08-09 12:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `images`, `created_at`, `updated_at`) VALUES
(14, '5', '1695836477_Nissan_Sentra_2019_20659_20659_13227559640-1_small.webp.webp', '2023-09-27 12:41:18', '2023-09-27 12:41:18'),
(15, '5', '1695836478_Nissan_Sentra_2019_20659_20659_13227585202-1_small.webp.webp', '2023-09-27 12:41:18', '2023-09-27 12:41:18'),
(16, '5', '1695836478_Nissan_Sentra_2019_20659_20659_13227523607-1_small.webp.webp', '2023-09-27 12:41:19', '2023-09-27 12:41:19'),
(37, '10', '1696614922_Audi_R8-Spyder_2021_24194_24194_16885260086-1_small.webp', '2023-10-06 12:55:22', '2023-10-06 12:55:22'),
(38, '10', '1696614922_Audi_R8-Spyder_2021_24194_24194_16885261074-1_small.webp', '2023-10-06 12:55:23', '2023-10-06 12:55:23'),
(58, '15', '1716899011_kia-soul-2019.webp', '2024-05-28 18:23:31', '2024-05-28 18:23:31'),
(59, '15', '1716899011_toyota-corolla-2020.webp', '2024-05-28 18:23:31', '2024-05-28 18:23:31'),
(60, '1', '1717002814_pngwing.com.webp', '2024-05-29 23:13:35', '2024-05-29 23:13:35'),
(61, '14', '1717002909_pngwing.com (2).webp', '2024-05-29 23:15:10', '2024-05-29 23:15:10'),
(62, '13', '1717003116_pngwing.com (3).webp', '2024-05-29 23:18:37', '2024-05-29 23:18:37'),
(63, '16', '1717097672_lamborghini-25570.webp', '2024-05-31 01:34:33', '2024-05-31 01:34:33'),
(69, '2', '1717155874_pngwing.com (2).webp', '2024-05-31 17:44:35', '2024-05-31 17:44:35'),
(70, '18', '1717157901_pngwing.com (4).webp', '2024-05-31 18:18:22', '2024-05-31 18:18:22'),
(71, '19', '1717159077_pngwing.com (5).webp', '2024-05-31 18:37:57', '2024-05-31 18:37:57'),
(73, '20', '1717160937_pngwing.com (6).webp', '2024-05-31 19:08:58', '2024-05-31 19:08:58'),
(74, '21', '1717161696_pngwing.com (7).webp', '2024-05-31 19:21:37', '2024-05-31 19:21:37'),
(75, '22', '1717162043_pngwing.com (8).webp', '2024-05-31 19:27:24', '2024-05-31 19:27:24'),
(76, '23', '1717162378_pngwing.com (9).webp', '2024-05-31 19:33:02', '2024-05-31 19:33:02'),
(77, '12', '1717163869_pngwing.com (10).webp', '2024-05-31 19:57:51', '2024-05-31 19:57:51'),
(78, '9', '1717163967_pngwing.com (11).webp', '2024-05-31 19:59:27', '2024-05-31 19:59:27'),
(79, '7', '1717164227_pngwing.com (12).webp', '2024-05-31 20:03:48', '2024-05-31 20:03:48'),
(81, '8', '1717164541_pngwing.com (13).webp', '2024-05-31 20:09:03', '2024-05-31 20:09:03'),
(82, '3', '1717164703_pngwing.com (14).webp', '2024-05-31 20:11:44', '2024-05-31 20:11:44'),
(83, '4', '1717166118_pngwing.com (15).webp', '2024-05-31 20:35:19', '2024-05-31 20:35:19'),
(84, '24', '1717168714_1717087049.webp', '2024-05-31 21:18:35', '2024-05-31 21:18:35'),
(85, '25', '1717169208_1717089584.webp', '2024-05-31 21:26:48', '2024-05-31 21:26:48'),
(86, '26', '1717169383_1717079084.webp', '2024-05-31 21:29:44', '2024-05-31 21:29:44'),
(87, '27', '1717170117_1717089905.webp', '2024-05-31 21:41:58', '2024-05-31 21:41:58'),
(88, '28', '1717170404_1717091413.webp', '2024-05-31 21:46:44', '2024-05-31 21:46:44'),
(89, '29', '1717170487_1717091641.webp', '2024-05-31 21:48:08', '2024-05-31 21:48:08'),
(90, '30', '1717170647_1717092098.webp', '2024-05-31 21:50:48', '2024-05-31 21:50:48'),
(91, '31', '1717170777_1717092176.webp', '2024-05-31 21:52:58', '2024-05-31 21:52:58'),
(92, '32', '1717171024_1717092489.webp', '2024-05-31 21:57:05', '2024-05-31 21:57:05'),
(93, '33', '1717171245_1717096239.webp', '2024-05-31 22:00:46', '2024-05-31 22:00:46'),
(94, '34', '1717171901_1717100984.webp', '2024-05-31 22:11:41', '2024-05-31 22:11:41'),
(95, '35', '1717172087_1717100549.webp', '2024-05-31 22:14:47', '2024-05-31 22:14:47'),
(96, '36', '1717172174_1717092910.webp', '2024-05-31 22:16:15', '2024-05-31 22:16:15'),
(98, '37', '1717172752_1717076826.webp', '2024-05-31 22:25:52', '2024-05-31 22:25:52'),
(99, '38', '1717173361_1717100447 (1).webp', '2024-05-31 22:36:01', '2024-05-31 22:36:01'),
(100, '39', '1717174440_1717100359.webp', '2024-05-31 22:54:00', '2024-05-31 22:54:00'),
(101, '40', '1717174630_1717100519.webp', '2024-05-31 22:57:10', '2024-05-31 22:57:10'),
(102, '41', '1717174747_1717093963.webp', '2024-05-31 22:59:08', '2024-05-31 22:59:08'),
(103, '42', '1717174923_1717094085.webp', '2024-05-31 23:02:03', '2024-05-31 23:02:03'),
(104, '43', '1717175055_1717094085.webp', '2024-05-31 23:04:15', '2024-05-31 23:04:15'),
(105, '44', '1717175288_1717073544.webp', '2024-05-31 23:08:09', '2024-05-31 23:08:09'),
(106, '45', '1717175543_1717094200.webp', '2024-05-31 23:12:24', '2024-05-31 23:12:24'),
(107, '46', '1717175739_1717100406.webp', '2024-05-31 23:15:40', '2024-05-31 23:15:40'),
(108, '47', '1717175917_1717100310.webp', '2024-05-31 23:18:38', '2024-05-31 23:18:38'),
(109, '48', '1717176066_1717100265.webp', '2024-05-31 23:21:07', '2024-05-31 23:21:07'),
(110, '49', '1717176229_1717100204.webp', '2024-05-31 23:23:50', '2024-05-31 23:23:50'),
(111, '50', '1717178630_1717100064.webp', '2024-06-01 00:03:50', '2024-06-01 00:03:50'),
(112, '51', '1717178793_1715281739.webp', '2024-06-01 00:06:34', '2024-06-01 00:06:34'),
(113, '52', '1717178909_1717096531.webp', '2024-06-01 00:08:30', '2024-06-01 00:08:30'),
(114, '53', '1717179062_1717094892.webp', '2024-06-01 00:11:02', '2024-06-01 00:11:02'),
(115, '54', '1717179198_1717095432.webp', '2024-06-01 00:13:18', '2024-06-01 00:13:18'),
(116, '17', '1717182741_pngegg.webp', '2024-06-01 01:12:22', '2024-06-01 01:12:22'),
(117, '55', '1717437211_MG-5-2024_29670_24968783224-8_small.webp', '2024-06-03 23:53:31', '2024-06-03 23:53:31'),
(118, '55', '1717437211_nissan-micra-2015-20.webp', '2024-06-03 23:53:32', '2024-06-03 23:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `product_settings`
--

CREATE TABLE `product_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variantions`
--

CREATE TABLE `product_variantions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_category_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_category_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_category_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `define_product_variant_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_attribute_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_additional_attribute_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_price` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_price` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'customer save money',
  `discount_percent` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Save amount in percentage (%)	',
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `discount_status` tinyint(1) DEFAULT NULL,
  `quantity` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(1) stock (2) Out of stock',
  `shipping` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variantions`
--

INSERT INTO `product_variantions` (`id`, `parent_category_id`, `main_category_id`, `sub_category_id`, `product_id`, `define_product_variant_id`, `product_attribute_id`, `product_additional_attribute_id`, `variant_id`, `variant`, `attribute_id`, `attribute`, `image`, `regular_price`, `sale_price`, `discount`, `discount_percent`, `start_date`, `end_date`, `discount_status`, `quantity`, `sku`, `weight`, `length`, `width`, `height`, `stock`, `shipping`, `created_at`, `updated_at`) VALUES
(1, '2', '2', '1', '3', NULL, NULL, NULL, NULL, NULL, '4,7', 'Small,Dell', '167543791336.webp', '500', '475', '25', '5.00', NULL, NULL, 1, '339', 'LOTTI-31948517', 'At qui consequatur', 'Laborum qui minus co', 'Excepteur consequatu', 'Eiusmod eos asperna', '1', NULL, '2023-02-03 10:25:13', '2023-02-03 10:25:13'),
(2, '2', '2', '1', '3', NULL, NULL, NULL, NULL, NULL, '4,9', 'Small,Lenovo', '167543791395.jpg', '437', NULL, NULL, NULL, NULL, NULL, NULL, '820', 'LOTTI-69472648', 'Ut dolorem in incidi', 'Ut eveniet omnis cu', 'Dolores magnam fuga', 'Doloribus sunt persp', '1', NULL, '2023-02-03 10:25:13', '2023-02-03 10:25:13'),
(3, '2', '2', '1', '3', NULL, NULL, NULL, NULL, NULL, '6,7', 'Large,Dell', '16754379139.webp', '782', '700', '82', '10.49', NULL, NULL, 1, '109', 'LOTTI-31004145', 'Ut voluptatem facer', 'Quo dolorum rerum si', 'In quidem sunt conse', 'Non dolorem incididu', '1', NULL, '2023-02-03 10:25:13', '2023-02-03 10:25:13'),
(4, '2', '2', '1', '3', NULL, NULL, NULL, NULL, NULL, '6,9', 'Large,Lenovo', '167543791329.jpg', '201', NULL, NULL, NULL, NULL, NULL, NULL, '887', 'LOTTI-25084778', 'Consequat Similique', 'Cupiditate provident', 'Nemo impedit adipis', 'Exercitationem exerc', '1', NULL, '2023-02-03 10:25:13', '2023-02-03 10:25:13');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_variation_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviews` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `created_at`, `updated_at`) VALUES
(1, 'Logo Design', '2022-11-01 04:36:04', '2022-11-01 04:36:04'),
(2, 'Animation', '2022-11-01 04:36:25', '2022-11-01 04:36:25'),
(3, 'Website Design and Development', '2022-11-01 04:36:37', '2022-11-01 04:36:37');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method_id` bigint(20) NOT NULL COMMENT '(1) Flat Rate(2) Free Shipping',
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_price` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_fee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `city_id`, `shipping_method_id`, `zone_name`, `shipping_title`, `shipping_price`, `shipping_fee`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Flate Rate', 'Flat rate', NULL, '150', 1, '2023-01-03 19:17:42', '2023-01-09 16:58:15'),
(2, NULL, 2, 'Free Shipping', 'Free shipping', NULL, NULL, 1, '2023-01-03 19:19:14', '2023-01-03 19:19:14'),
(5, NULL, 2, 'Amelia Byrd', 'Free shipping', NULL, NULL, 1, '2023-01-06 11:49:22', '2023-01-06 11:49:48'),
(6, NULL, 1, 'Talon Beasley', 'Flat rate', NULL, '32', 1, '2023-01-09 14:40:57', '2023-01-09 14:40:57'),
(7, NULL, 1, 'Dillon Mcgowan', 'Flat rate', NULL, '90', 1, '2023-01-09 16:54:32', '2023-01-09 17:22:21'),
(8, NULL, 1, 'Dillon Mcgowan Jordior', 'Flat rate', NULL, '85', 1, '2023-01-09 16:56:08', '2023-01-09 16:56:08'),
(9, NULL, 2, 'Uzair', 'Free shipping', NULL, NULL, 1, '2023-01-09 17:26:23', '2023-01-09 17:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`id`, `shipping_title`, `shipping_price`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Flat rate', '200', 'flat-rate', 1, '2022-12-14 10:14:23', '2022-12-14 10:14:23'),
(2, 'Free shipping', NULL, 'free-shipping', 1, '2022-12-14 10:14:48', '2022-12-14 19:06:52');

-- --------------------------------------------------------

--
-- Table structure for table `shop_timings`
--

CREATE TABLE `shop_timings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_of_week` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_time` time DEFAULT NULL,
  `closing_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_timings`
--

INSERT INTO `shop_timings` (`id`, `user_id`, `day_of_week`, `opening_time`, `closing_time`, `created_at`, `updated_at`) VALUES
(1, '10', 'Monday', '00:02:00', '00:03:00', '2023-10-18 06:57:44', '2024-05-29 01:03:04'),
(2, '10', 'Tuesday', NULL, NULL, '2023-10-18 06:57:44', '2024-05-29 00:12:15'),
(3, '10', 'Wednesday', NULL, NULL, '2023-10-18 06:57:44', '2024-05-29 00:12:15'),
(4, '10', 'Thursday', NULL, NULL, '2023-10-18 06:57:44', '2024-05-29 00:12:15'),
(5, '10', 'Friday', NULL, NULL, '2023-10-18 06:57:44', '2024-05-29 00:12:15'),
(6, '10', 'Saturday', NULL, NULL, '2023-10-18 06:57:44', '2024-05-29 00:12:15'),
(7, '10', 'Sunday', NULL, NULL, '2023-10-18 06:57:44', '2024-05-29 00:26:59');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `twitter`, `instagram`, `youtube`, `linkedin`, `slug`, `created_at`, `updated_at`) VALUES
(5, 'http://facebook.com', 'http://twitter.com', 'http://instagram.com', NULL, 'http://linkedin.com', NULL, '2022-11-03 04:17:58', '2022-11-03 04:17:58');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state`, `created_at`, `updated_at`) VALUES
(1, 'Johor', '2022-11-30 15:48:50', '2022-11-30 15:48:50'),
(2, 'Kedah', '2022-11-30 15:50:58', '2022-11-30 15:50:58'),
(3, 'Kelantan', '2022-11-30 15:51:51', '2022-11-30 15:51:51'),
(4, 'Melaka', '2022-11-30 15:52:23', '2022-11-30 15:52:23'),
(5, 'Negeri Sembilan', '2022-11-30 15:53:08', '2022-11-30 15:53:08'),
(6, 'Pahang', '2022-11-30 15:53:25', '2022-11-30 15:53:25'),
(7, 'Perak', '2022-11-30 15:53:45', '2022-11-30 15:53:45'),
(8, 'Perlis', '2022-11-30 15:54:10', '2022-11-30 15:54:10'),
(9, 'Pulau Pinang', '2022-11-30 15:54:29', '2022-11-30 15:54:29'),
(10, 'Sabah', '2022-11-30 15:54:49', '2022-11-30 15:54:49'),
(11, 'Sarawak', '2022-11-30 15:55:08', '2022-11-30 15:55:08'),
(12, 'Selangor', '2022-11-30 15:55:30', '2022-11-30 15:55:30'),
(13, 'Terengganu', '2022-11-30 15:55:55', '2022-11-30 15:55:55'),
(14, 'Wilayah Persekutuan', '2022-11-30 15:56:20', '2022-11-30 15:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `email`, `status`, `created_at`, `updated_at`) VALUES
(35, 'djoy62471@gmail.com', 1, '2023-01-23 21:11:50', '2023-01-23 21:11:50');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `show_home` int(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `parent_category_id`, `main_category_id`, `sub_category_name`, `slug`, `image`, `status`, `show_home`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'Powerbank & Speaker', 'powerbank-speaker', NULL, 1, NULL, '2022-12-28 00:52:07', '2022-12-28 00:52:07'),
(2, '1', '1', 'Home Charger', 'home-charger', NULL, 1, NULL, '2022-12-28 00:52:33', '2022-12-28 00:52:33'),
(3, '1', '1', 'Usb Cable', 'usb-cable', NULL, 1, NULL, '2022-12-28 00:53:09', '2022-12-28 00:53:09'),
(4, '1', '1', 'Audio Cable', 'audio-cable', NULL, 1, NULL, '2022-12-28 00:54:00', '2022-12-28 00:54:00'),
(5, '1', '1', 'Hub', 'hub', NULL, 1, NULL, '2022-12-28 00:54:19', '2022-12-28 00:54:19'),
(6, '1', '1', 'Bluetooth Earphone', 'bluetooth-earphone', NULL, 1, NULL, '2022-12-28 00:54:47', '2022-12-28 00:54:47'),
(7, '2', '2', 'Iphone 14 Pro Max', 'iphone-14-pro-max', NULL, 1, NULL, '2023-01-18 07:07:42', '2023-01-18 07:07:42'),
(8, '2', '2', 'Iphone 13 Pro Max', 'iphone-13-pro-max', NULL, 1, NULL, '2023-01-18 07:08:03', '2023-01-18 07:08:03'),
(9, '2', '3', 'New Samsung Mobile', 'new-samsung-mobile', NULL, 1, NULL, '2023-01-27 15:28:59', '2023-01-27 15:28:59'),
(10, '2', '2', 'Iphone 15', 'iphone-15', NULL, 1, NULL, '2023-01-27 15:29:26', '2023-01-27 15:29:26');

-- --------------------------------------------------------

--
-- Table structure for table `terms_conditions`
--

CREATE TABLE `terms_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_conditions`
--

INSERT INTO `terms_conditions` (`id`, `title`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Terms and Conditions', NULL, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat</p><h3>1. Introduction</h3><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit&nbsp;</p>', '2022-11-02 02:27:49', '2022-11-17 03:29:34');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `image`, `short_description`, `long_description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Freya Steele', '1666729111.jpg', 'Sapiente dicta sed q', '<p>wdqwerkebfkbfkbhg</p>', 0, '2022-10-26 02:18:31', '2022-11-04 22:47:55'),
(3, 'Boris Barry', '1666814435.jpg', 'testing testing', '<p>aefwerfwerfwsedqa</p>', 1, '2022-10-26 02:20:27', '2022-11-08 22:56:25'),
(4, 'Boris Barry', '1667423137.jpg', 'Officiis debitis eiu', '<p>aefwerfwerfwsedqa</p>', 0, '2022-10-26 02:20:34', '2022-11-04 22:47:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_login` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fleet_size` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_number` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_license` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `google_map` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trade_license` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_expiry_date` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_modes` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `languages` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fast_delivery_locations` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_service` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refresh_cars` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used_refreshes` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_car_count_limit` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `company_name`, `email`, `first_name`, `last_name`, `user_name`, `role`, `slug`, `social_login`, `contact`, `fleet_size`, `job_title`, `address`, `country`, `city`, `whatsapp_number`, `phone_number`, `main_address`, `company_logo`, `company_license`, `status`, `google_map`, `trade_license`, `license_expiry_date`, `date_of_birth`, `nationality`, `payment_modes`, `languages`, `fast_delivery_locations`, `pickup_service`, `refresh_cars`, `used_refreshes`, `active_car_count_limit`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `google_id`) VALUES
(1, 'Admin', NULL, 'admin@rentcar.com', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$31W7x2S/s1I3iA.H.O2M0OEnRuDVjn3z1.HcbXWD5/KLB4itpwmSq', NULL, '2022-11-02 02:18:37', '2022-11-02 02:18:37', NULL),
(10, 'Bruno Miles', 'Drift Car Rent', 'aq.developer009@gmail.com', NULL, NULL, NULL, '2', 'drift', NULL, '03058875502', 'Rerum rerum ut culpa', 'Eveniet labore ulla', 'Shop # 3, Ajyal Building, Beside Mall of the Emirates - Dubai', 'United Arab Emirates', 'Ajman', '03058875502', '4145', 'Dubai Mall', '1697194514.png', '1693916028.png', 1, 'https://maps.app.goo.gl/ZvxqYFto4bn44ER37', '1716920879.jpg', '2024-05-28', NULL, NULL, 'Bitcoin/Crypto', 'French', 'Palm Jumeirah', NULL, '10', '9', 7, NULL, '$2y$10$S4FmWWlvQ3.rxT1IvDGxk.VGIBPwMYxtO7KJ5V5w0gDr5bRTmsLBq', NULL, '2023-09-05 07:13:48', '2024-06-14 00:23:06', NULL),
(12, 'Abdul Qadeer', NULL, 'aq.developer007@gmail.com', 'Abdul', 'Qadeer', NULL, '3', 'abdul-qadeer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '030215151', NULL, NULL, NULL, 1, NULL, NULL, NULL, '1999-01-06', 'pakistani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-13 11:15:30', '2024-05-28 22:21:11', NULL),
(13, 'AQ Tech', 'AQ Tech', 'abdulqadeersolangi007@gmail.com', NULL, NULL, NULL, '2', NULL, NULL, '03058875502', 'Up to 50 cars', 'Developer', NULL, 'United Arab Emirates', 'Dubai', NULL, NULL, NULL, '1696356881.jpg', '1696356882.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$S4FmWWlvQ3.rxT1IvDGxk.VGIBPwMYxtO7KJ5V5w0gDr5bRTmsLBq', NULL, '2023-10-03 13:14:42', '2023-10-19 13:45:31', NULL),
(15, 'Jahanzaib', NULL, 'metawel@mailinator.com', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-10 13:45:35', '2023-10-10 13:45:35', NULL),
(16, 'Hasnain', NULL, 'lymabuxa@mailinator.com', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-10 13:46:53', '2023-10-10 13:46:53', NULL),
(19, NULL, NULL, 'admin@lsb.com', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-26 13:18:15', '2023-10-26 13:18:15', NULL),
(20, NULL, NULL, 'grequeimoduxe-6941@yopmail.com', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-16 03:31:13', '2024-03-16 03:31:13', NULL),
(21, 'Avye Tanner', 'Wiggins and Guy Co', 'gogi@mailinator.com', NULL, NULL, NULL, '2', 'wiggins-and-guy-co', NULL, '12345678910', '5-10 cars', 'Sit assumenda aspern', NULL, 'United Arab Emirates', 'Dubai', NULL, NULL, NULL, '1710538706.pdf', '1710538706.pdf', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-16 03:38:26', '2024-03-16 03:38:26', NULL),
(22, 'first name', NULL, 'lenouyedduttu-1280@yopmail.com', 'first', 'name', NULL, '3', 'first-name', NULL, '12345678910', NULL, NULL, NULL, NULL, NULL, NULL, '12345678910', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-21 23:54:06', '2024-03-22 00:10:45', NULL),
(23, NULL, NULL, 'jibrokaloxe-9279@yopmail.com', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 00:11:31', '2024-03-22 00:11:31', NULL),
(29, NULL, NULL, 'wizardsufee@yopmasdasdadasdail.comasdada', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:38:13', '2024-05-28 00:58:05', NULL),
(30, 'Sufee Ghazi', NULL, 'Sufee Ghazi', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12345678910', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-22 03:39:51', '2024-03-22 03:49:52', '101433874436383079371'),
(31, 'Sufee Wizard', NULL, 'Sufee Wizard', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-23 00:31:30', '2024-03-23 00:31:30', '101511561412502402920'),
(32, 'voimmoudadeupoi 8095', NULL, 'voimmoudadeupoi-8095@yopmail.com', 'voimmoudadeupoi', '8095', NULL, '3', 'voimmoudadeupoi-8095', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12345678910', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-27 00:22:58', '2024-03-27 01:21:53', NULL),
(33, 'teiyesadeca 9319', NULL, 'teiyesadeca-9319@yopmail.com', 'teiyesadeca', '9319', NULL, '3', 'teiyesadeca-9319', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 00:57:20', '2024-03-28 01:03:03', NULL),
(34, NULL, NULL, 'testing@example.com', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-08 01:39:50', '2024-04-08 01:39:50', NULL),
(35, 'Asher Rush', 'Riley and Gillespie Traders', 'abdurrehmanashraf.ghazitech@gmail.com', NULL, NULL, NULL, '2', 'gomez-and-gallagher-associates', NULL, '+1 (725) 872-8976', 'Up to 100 cars', 'Dolor quis enim nobi', 'Quo nostrum natus do', 'United Arab Emirates', 'Eligendi ea mollitia', NULL, NULL, NULL, '1716898492.png', '1716898492.png', 1, 'https://www.pelijevov.net', NULL, NULL, NULL, NULL, 'Debit Card,Bitcoin/Crypto', 'French,Russian,Spanish', 'Business Bay,Dubai World Central,Emirates Hills', NULL, NULL, NULL, 20, NULL, '$2y$10$S4FmWWlvQ3.rxT1IvDGxk.VGIBPwMYxtO7KJ5V5w0gDr5bRTmsLBq', NULL, '2024-05-28 18:14:52', '2024-06-13 23:31:38', NULL),
(36, NULL, NULL, 'hasnain.ghazitech@gmail.com', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-29 20:15:00', '2024-05-29 20:15:00', NULL),
(37, NULL, NULL, 'mdhasnain1070@gmail.com', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-29 20:18:33', '2024-05-29 20:18:33', NULL),
(38, 'Talal Asghar', NULL, 'Flexi Fleet', 'Talal', 'Asghar', NULL, '3', 'talal-asghar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+971 58 586 3899', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-30 17:39:23', '2024-05-30 17:41:23', '115005077607377212673'),
(39, 'Drift Car Rental', 'Drift Car Rental', 'drift@driftcarrental.com', NULL, NULL, NULL, '2', 'drift-car-rental', NULL, '9714385 0012', 'Up to 50 cars', 'BusinessMan', NULL, 'United Arab Emirates', 'Dubai', '9714385 0012', NULL, NULL, '1717167335.png', '1717167335.png', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30', '6', 25, NULL, '$2y$10$BBGP.WYMefPhakm5QXwLyOdrxYHrQicoXdRlclHPEy.mmnGdb1b1i', NULL, '2024-05-31 20:55:35', '2024-06-21 17:52:57', NULL),
(40, NULL, NULL, 'ahsan.ghazitech@gmail.com', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-31 22:35:04', '2024-05-31 22:35:04', NULL),
(41, NULL, NULL, 'covury@mailinator.com', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-01 23:42:36', '2024-06-01 23:42:36', NULL),
(42, NULL, NULL, 'testuser@ghazitech.com', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-03 15:03:56', '2024-06-03 15:03:56', NULL),
(47, 'Ferris Benton', 'Roach Frank Co', 'kazigugyfi@mailinator.com', NULL, NULL, NULL, '2', 'roach-frank-co', NULL, '123456987', '500+ cars', 'Vitae quia autem aut', NULL, 'United Arab Emirates', 'Ajman', NULL, NULL, NULL, '1717412408.png', '1717412408.png', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$IJi8jcUnC.DPSiei48LD4OtBt7XlXxjvigOy4jzfzBQuGIndyOy5u', NULL, '2024-06-03 17:00:08', '2024-06-03 17:00:16', NULL),
(48, 'Wynter Farrell', 'Bates Sullivan LLC', 'surodatiq@mailinator.com', NULL, NULL, NULL, '2', 'bates-sullivan-llc', NULL, '12356544', 'Up to 500 cars', 'Sit ea exercitatione', NULL, 'United Arab Emirates', 'Ajman', NULL, NULL, NULL, '1717413085.png', '1717413085.png', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$PbKDNH7R1DbRnLdkRaTtJ.yeXMYuef6t7nm673O.vvHqM9K81LSM6', NULL, '2024-06-03 17:11:25', '2024-06-03 17:11:25', NULL),
(49, 'Mollie Warner', 'Preston and Raymond Plc', 'miriqu@mailinator.com', NULL, NULL, NULL, '2', 'preston-and-raymond-plc', NULL, '32156126', '500+ cars', 'Velit sint dolor fac', NULL, 'United Arab Emirates', 'Dubai', NULL, NULL, NULL, '1717413308.png', '1717413308.png', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.8WuQWJZnjSWhbMiVejAqO2Q0FK0/ozU.LungnaMJLcs7cz0cDGMS', NULL, '2024-06-03 17:15:08', '2024-06-03 17:15:08', NULL),
(50, 'Marny Mcgee', 'Jefferson and Lynch Co', 'lapeg@mailinator.com', NULL, NULL, NULL, '2', 'jefferson-and-lynch-co', NULL, '123456789', '500+ cars', 'Natus iure anim quia', NULL, 'United Arab Emirates', 'Ajman', NULL, NULL, NULL, '1717413992.png', '1717413992.png', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$iyg5qEooxM0xThW9Krip0OTUROWBfIs1p/wDhRiW7OUugUJhVdfra', NULL, '2024-06-03 17:26:32', '2024-06-03 17:26:32', NULL),
(51, 'Cassady Franklin', 'Foreman Faulkner Inc', 'byziwa@mailinator.com', NULL, NULL, NULL, '2', 'foreman-faulkner-inc', NULL, '123456', '500+ cars', 'Placeat explicabo', NULL, 'United Arab Emirates', 'Dubai', NULL, NULL, NULL, '1717414723.png', '1717414723.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Vbkcgu/X.nBtgL06ugs1VevksYZCQApLoXl/8EfNwN1nyspQlQcDK', NULL, '2024-06-03 17:38:43', '2024-06-03 17:38:43', NULL),
(52, 'Mollie Pittman', 'Hopkins and Stanley Co', 'caxog@mailinator.com', NULL, NULL, NULL, '2', 'hopkins-and-stanley-co', NULL, '123456', '5-10 cars', 'Aliquip rerum est fa', NULL, 'United Arab Emirates', 'Dubai', NULL, NULL, NULL, '1717415459.jpg', '1717415459.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/r3aHAEtcHyzb4F91KxafeiCSqqlNco.JzZ5iK2c09CJmYiVY4uUG', NULL, '2024-06-03 17:50:59', '2024-06-03 17:50:59', NULL),
(53, 'Hadley Hudson', 'Pittman and Montoya LLC', 'byjiqo@mailinator.com', NULL, NULL, NULL, '2', 'pittman-and-montoya-llc', NULL, '123456', 'Up to 50 cars', 'Duis fuga Facilis s', NULL, 'United Arab Emirates', 'Umm Al Quwain', NULL, NULL, NULL, '1717415871.jpg', '1717415871.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.4VYSip9GREMu9SlxRfXZO3uxvk4NuYxRXezvE0zPdl04eN.9rrVK', NULL, '2024-06-03 17:57:51', '2024-06-03 17:57:51', NULL),
(54, 'Mary Mcguire', 'Moses and Livingston LLC', 'zinod@mailinator.com', NULL, NULL, NULL, '2', 'moses-and-livingston-llc', NULL, '123456', '500+ cars', 'Eiusmod irure iste f', NULL, 'United Arab Emirates', 'Dubai', NULL, NULL, NULL, '1717416104.jpg', '1717416104.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$IlOH2n96XtbwAJ1V4iXZPe3mM5tLO0F982KbmtzSfu5/I30bbu/5y', NULL, '2024-06-03 18:01:44', '2024-06-03 18:01:44', NULL),
(55, 'Pascale Browning', 'Wong and Bowman LLC', 'mumurofygo@mailinator.com', NULL, NULL, NULL, '2', 'wong-and-bowman-llc', NULL, '123456', 'Up to 100 cars', 'Voluptatem ut quae s', NULL, 'United Arab Emirates', 'Umm Al Quwain', NULL, NULL, NULL, '1717417252.jpg', '1717417252.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, '$2y$10$JP/UOT5A01Vc8.LvgDNJKe4n9wStOTXYKu34vc0cuu/EXTuTbl6Gq', NULL, '2024-06-03 18:20:52', '2024-06-11 17:43:48', NULL),
(56, NULL, NULL, 'abdurafay119@gmail.com', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-14 00:52:52', '2024-06-14 00:52:52', NULL),
(57, 'Abdul mannan', 'Rimal Al Tareeq car rental', 'hirecardrive@gmail.com', NULL, NULL, NULL, '2', 'rimal-al-tareeq-car-rental', NULL, '00971585159222', '5-10 cars', 'CEO', NULL, 'United Arab Emirates', 'Dubai', NULL, NULL, NULL, '1720041189.jpg', '1720041190.pdf', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, '$2y$10$pAYApaMoRs92z485EHZel.I7qWMYjlLBrOeEKPQ2h7MoTPBuvU8s6', NULL, '2024-07-04 03:13:10', '2024-07-04 03:13:10', NULL),
(58, 'Mazia Razo', NULL, 'Mazia Razo', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-06 21:06:03', '2024-08-06 21:06:03', '109468421006252535396');

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `landmark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(1) Home (2) Office',
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `village` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_shipping` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'for manage account shipping address',
  `default_billing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'for manage account billing address',
  `shipping_active_address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'for label default shipping on cards',
  `billing_active_address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'for label default billing on cards',
  `address_identifire` tinyint(1) DEFAULT NULL COMMENT '(1) active shipping address (2) active billing address (3) both',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `name`, `address`, `contact`, `landmark`, `delivery_label`, `province`, `city`, `village`, `default_shipping`, `default_billing`, `shipping_active_address`, `billing_active_address`, `address_identifire`, `created_at`, `updated_at`) VALUES
(1, '3', 'Yolanda', 'Hamish', '171', 'Vernon', '1', '5', '66', NULL, '1', '2', '1', '2', 3, '2023-02-02 16:57:10', '2023-02-02 16:57:10');

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `variant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `variant`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Custom product attribute', 'custom-product-attribute', '1', '2022-12-27 19:32:06', '2022-12-27 19:32:06'),
(2, 'Color', 'color', '1', '2022-12-28 08:25:28', '2022-12-28 08:25:28'),
(3, 'Size', 'size', '1', '2022-12-28 08:25:37', '2022-12-28 08:25:37'),
(4, 'Processor', 'processor', '1', '2023-01-18 22:09:41', '2023-01-18 22:09:41');

-- --------------------------------------------------------

--
-- Table structure for table `view_cars`
--

CREATE TABLE `view_cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `view_cars`
--

INSERT INTO `view_cars` (`id`, `user_id`, `product_id`, `company_id`, `created_at`, `updated_at`) VALUES
(1, '12', '3', '10', '2023-10-16 13:03:31', '2023-10-16 13:03:31'),
(2, '12', '2', '10', '2023-10-17 13:07:54', '2023-10-17 13:07:54'),
(3, '10', '3', '10', '2023-10-18 07:07:04', '2023-10-18 07:07:04'),
(4, '10', '1', '10', '2023-10-18 10:46:05', '2023-10-18 10:46:05'),
(5, '13', '7', '10', '2023-10-20 08:51:47', '2023-10-20 08:51:47'),
(6, '13', '8', '10', '2023-10-20 11:09:43', '2023-10-20 11:09:43'),
(7, '13', '4', '10', '2023-10-20 11:13:44', '2023-10-20 11:13:44'),
(8, '10', '4', '10', '2023-10-23 10:17:49', '2023-10-23 10:17:49'),
(9, '10', '7', '10', '2023-10-23 11:58:51', '2023-10-23 11:58:51'),
(10, '10', '9', '10', '2023-10-24 13:09:06', '2023-10-24 13:09:06'),
(11, '6', '11', '6', '2023-10-26 11:55:21', '2023-10-26 11:55:21'),
(12, '6', '9', '10', '2023-10-26 12:01:39', '2023-10-26 12:01:39'),
(13, '10', '12', '10', '2023-11-01 18:26:10', '2023-11-01 18:26:10'),
(14, '10', '2', '10', '2023-11-01 18:32:33', '2023-11-01 18:32:33'),
(15, '10', '13', '10', '2024-01-08 20:42:47', '2024-01-08 20:42:47'),
(16, '32', '13', '10', '2024-03-27 00:23:43', '2024-03-27 00:23:43'),
(17, '33', '13', '10', '2024-03-28 00:58:01', '2024-03-28 00:58:01'),
(18, '35', '15', '35', '2024-05-28 18:24:03', '2024-05-28 18:24:03'),
(19, '12', '15', '35', '2024-05-28 18:29:28', '2024-05-28 18:29:28'),
(20, '12', '14', '10', '2024-05-28 18:36:59', '2024-05-28 18:36:59'),
(21, '10', '14', '10', '2024-05-29 00:12:33', '2024-05-29 00:12:33'),
(22, '10', '11', '6', '2024-05-30 01:08:30', '2024-05-30 01:08:30'),
(23, '10', '8', '10', '2024-05-31 20:05:33', '2024-05-31 20:05:33'),
(24, '39', '24', '39', '2024-05-31 21:19:25', '2024-05-31 21:19:25'),
(25, '39', '25', '39', '2024-05-31 21:31:07', '2024-05-31 21:31:07'),
(26, '39', '36', '39', '2024-05-31 22:19:32', '2024-05-31 22:19:32'),
(27, '39', '51', '39', '2024-06-01 00:31:59', '2024-06-01 00:31:59'),
(28, '10', '50', '39', '2024-06-01 00:35:11', '2024-06-01 00:35:11'),
(29, '39', '53', '39', '2024-06-01 00:36:24', '2024-06-01 00:36:24'),
(30, '39', '1', '10', '2024-06-01 00:40:46', '2024-06-01 00:40:46'),
(31, '10', '53', '39', '2024-06-01 00:43:47', '2024-06-01 00:43:47'),
(32, '39', '21', '10', '2024-06-01 01:05:20', '2024-06-01 01:05:20'),
(33, '39', '17', '10', '2024-06-01 01:06:07', '2024-06-01 01:06:07'),
(34, '10', '17', '10', '2024-06-01 01:12:27', '2024-06-01 01:12:27'),
(35, '10', '30', '39', '2024-06-01 02:26:11', '2024-06-01 02:26:11'),
(36, '10', '40', '39', '2024-06-01 02:26:29', '2024-06-01 02:26:29'),
(37, '39', '41', '39', '2024-06-01 02:41:28', '2024-06-01 02:41:28'),
(38, '41', '30', '39', '2024-06-01 23:44:39', '2024-06-01 23:44:39'),
(39, '10', '54', '39', '2024-06-04 01:12:44', '2024-06-04 01:12:44'),
(40, '10', '23', '10', '2024-06-12 00:01:52', '2024-06-12 00:01:52'),
(41, '39', '54', '39', '2024-06-12 17:34:16', '2024-06-12 17:34:16'),
(42, '39', '37', '39', '2024-06-12 17:38:58', '2024-06-12 17:38:58'),
(43, '39', '2', '10', '2024-06-12 17:39:19', '2024-06-12 17:39:19'),
(44, '39', '52', '39', '2024-06-12 18:16:23', '2024-06-12 18:16:23'),
(45, '39', '50', '39', '2024-06-21 17:58:22', '2024-06-21 17:58:22'),
(46, '1', '23', '10', '2024-08-08 23:14:30', '2024-08-08 23:14:30');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(54, '6', '11', '2023-10-26 12:23:15', '2023-10-26 12:23:15'),
(58, '41', '30', '2024-06-01 23:43:44', '2024-06-01 23:43:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_infos`
--
ALTER TABLE `billing_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cancellations`
--
ALTER TABLE `cancellations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_bookings`
--
ALTER TABLE `car_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_with_drivers`
--
ALTER TABLE `car_with_drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacted_cars`
--
ALTER TABLE `contacted_cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `define_product_variants`
--
ALTER TABLE `define_product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_categories`
--
ALTER TABLE `main_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mileages`
--
ALTER TABLE `mileages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multiple_cities`
--
ALTER TABLE `multiple_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_cancellations`
--
ALTER TABLE `order_cancellations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_notes`
--
ALTER TABLE `order_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_notifications`
--
ALTER TABLE `order_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_verifications`
--
ALTER TABLE `otp_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_contents`
--
ALTER TABLE `page_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent_categories`
--
ALTER TABLE `parent_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_additional_attributes`
--
ALTER TABLE `product_additional_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_settings`
--
ALTER TABLE `product_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variantions`
--
ALTER TABLE `product_variantions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_timings`
--
ALTER TABLE `shop_timings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `view_cars`
--
ALTER TABLE `view_cars`
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
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `billing_infos`
--
ALTER TABLE `billing_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `cancellations`
--
ALTER TABLE `cancellations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `car_bookings`
--
ALTER TABLE `car_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `car_with_drivers`
--
ALTER TABLE `car_with_drivers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacted_cars`
--
ALTER TABLE `contacted_cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `define_product_variants`
--
ALTER TABLE `define_product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homes`
--
ALTER TABLE `homes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_categories`
--
ALTER TABLE `main_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10592;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `mileages`
--
ALTER TABLE `mileages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `multiple_cities`
--
ALTER TABLE `multiple_cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_cancellations`
--
ALTER TABLE `order_cancellations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_notes`
--
ALTER TABLE `order_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_notifications`
--
ALTER TABLE `order_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otp_verifications`
--
ALTER TABLE `otp_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `page_contents`
--
ALTER TABLE `page_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `parent_categories`
--
ALTER TABLE `parent_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `product_additional_attributes`
--
ALTER TABLE `product_additional_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `product_settings`
--
ALTER TABLE `product_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variantions`
--
ALTER TABLE `product_variantions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shop_timings`
--
ALTER TABLE `shop_timings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `view_cars`
--
ALTER TABLE `view_cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
