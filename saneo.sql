-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 18, 2019 at 03:30 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saneo`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `commenter_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commenter_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commentable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `child_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `commenter_id`, `commenter_type`, `guest_name`, `guest_email`, `commentable_type`, `commentable_id`, `comment`, `approved`, `child_id`, `created_at`, `updated_at`) VALUES
(1, '1', 'App\\User', NULL, NULL, 'App\\Event', '2', 'dsa', 1, NULL, '2019-11-10 05:00:08', '2019-11-10 05:00:08');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 1, 'user_hasmany_event_relationship', 'relationship', 'Events', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Event\",\"table\":\"Events\",\"type\":\"hasMany\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"Events\",\"pivot\":\"0\",\"taggable\":null}', 13),
(34, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(35, 9, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(36, 9, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{\"default\":\"Provide Description Of Event\"}', 3),
(37, 9, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(38, 9, 'organizer', 'text', 'Organizer Name', 1, 1, 1, 1, 1, 1, '{}', 5),
(39, 9, 'user_id', 'select_dropdown', 'Uploaded By', 1, 1, 1, 1, 1, 1, '{}', 6),
(40, 9, 'location', 'text', 'Location', 1, 1, 1, 1, 1, 1, '{}', 7),
(41, 9, 'image', 'file', 'Event Image', 1, 1, 1, 1, 1, 1, '{}', 8),
(42, 9, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 1, 0, 1, '{}', 9),
(43, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(44, 9, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 11),
(45, 9, 'event_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(57, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(58, 13, 'user_id', 'select_multiple', 'User Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(59, 13, 'event_id', 'select_multiple', 'Event Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(60, 13, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 4),
(61, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(62, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(65, 9, 'food', 'rich_text_box', 'Food Details', 0, 1, 1, 1, 1, 1, '{}', 12),
(66, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(67, 14, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"required\":\"true\"}', 2),
(68, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(69, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(70, 14, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 5),
(71, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(72, 15, 'event_id', 'text', 'Event Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(73, 15, 'package_id', 'text', 'Package Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(74, 15, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 1, '{}', 4),
(76, 15, 'event_package_belongstomany_event_relationship', 'relationship', 'events', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Event\",\"table\":\"events\",\"type\":\"belongsTo\",\"column\":\"event_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"event_packages\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(77, 15, 'event_package_belongsto_package_relationship', 'relationship', 'packages', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Package\",\"table\":\"packages\",\"type\":\"belongsTo\",\"column\":\"package_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(78, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 1, 1, '{}', 6),
(79, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 1, 0, 0, '{}', 9),
(80, 9, 'date', 'timestamp', 'Date', 0, 1, 1, 1, 1, 1, '{}', 13),
(81, 9, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"open\",\"options\":{\"open\":\"OPEN\",\"close\":\"CLOSED\"}}', 14),
(85, 14, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 6),
(86, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(87, 17, 'customer_name', 'text', 'Customer Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(88, 17, 'type', 'text', 'Type', 1, 1, 1, 1, 1, 1, '{}', 3),
(89, 17, 'amount', 'text', 'Amount', 1, 1, 1, 1, 1, 1, '{}', 4),
(90, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(91, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(92, 17, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 7),
(93, 17, 'shipping_address', 'text', 'Shipping Address', 1, 1, 1, 1, 1, 1, '{}', 8),
(94, 17, 'contact', 'text', 'Contact', 1, 1, 1, 1, 1, 1, '{}', 9),
(95, 17, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 10);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-11-07 03:42:00', '2019-11-07 03:42:00'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-11-07 03:42:00', '2019-11-07 03:42:00'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-11-07 03:42:00', '2019-11-07 03:42:00'),
(9, 'events', 'events', 'Event', 'Events', NULL, 'App\\Event', NULL, NULL, 'Manage Events', 1, 1, '{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":\"description\",\"scope\":null}', '2019-11-07 04:17:41', '2019-11-10 03:49:06'),
(13, 'event_bookings', 'event-bookings', 'Event Booking', 'Event Bookings', 'voyager-book', 'App\\EventBooking', NULL, NULL, 'Manage Events', 1, 1, '{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":\"user_id\",\"scope\":null}', '2019-11-07 05:31:48', '2019-11-07 05:34:21'),
(14, 'packages', 'packages', 'Package', 'Packages', NULL, 'App\\Package', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"name\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":\"name\",\"scope\":null}', '2019-11-07 05:56:04', '2019-11-10 05:47:18'),
(15, 'event_packages', 'event-packages', 'Event Package', 'Event Packages', NULL, 'App\\EventPackage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-11-07 05:57:52', '2019-11-10 05:46:39'),
(17, 'sales', 'sales', 'Sale', 'Sales', NULL, 'App\\Sales', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-11-10 13:28:19', '2019-11-10 13:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `organizer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `food` text COLLATE utf8mb4_unicode_ci,
  `date` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'OPEN'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `price`, `organizer`, `user_id`, `location`, `image`, `created_at`, `updated_at`, `deleted_at`, `food`, `date`, `status`) VALUES
(2, 'An Event', '<p><strong>A New Event</strong></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"color: #339966;\"><strong>HERE WE PARTY!</strong></span></p>', 12, 'Danial', 1, 'Pakistan Khushab', '[{\"download_link\":\"events\\/November2019\\/xCJRqrl65CPurprVH6t0.png\",\"original_name\":\"download.png\"}]', '2019-11-07 10:54:00', '2019-11-10 03:30:35', NULL, '<p>A Buffet containing chicken, beef and rice with chinese soup and green tea</p>', NULL, 'OPEN'),
(3, 'Musical Event', '<p><span style=\"color: #ffcc00;\"><em><strong>A New Musical Event Is Going To Happen In Los Angegles</strong></em></span></p>', 200, 'M.U.S.I.C', 1, 'Pakaistan Lahore', '[]', '2019-11-10 05:26:37', '2019-11-10 05:26:37', NULL, '<p>1 - polao<br />2 - chao mn</p>\r\n<p>3 - lobster</p>', '2019-11-10 10:26:00', 'open'),
(4, 'Cultural Event', '<p><span style=\"color: #ff0000;\"><em><strong>A New Cultural Event Is Going To Happen In Los Angegles</strong></em></span></p>', 400, 'SERAIKI SOCIETY', 2, 'Paksitan Islamabad', '[{\"download_link\":\"events\\/November2019\\/jX9HW7cTwY5gStCtSQeA.jpg\",\"original_name\":\"all-events.jpg\"}]', '2019-11-10 05:27:39', '2019-11-10 05:27:39', NULL, '<p>1 - rice</p>\r\n<p>2 - beef</p>\r\n<p>3- buffet</p>\r\n<p>4- kashmiri tea</p>', '2019-11-14 10:27:00', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `event_packages`
--

CREATE TABLE `event_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_packages`
--

INSERT INTO `event_packages` (`id`, `event_id`, `package_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 2, 1, NULL, '2019-11-07 11:08:00', '2019-11-10 05:43:28'),
(4, 3, 1, NULL, '2019-11-10 10:28:00', '2019-11-10 05:43:13'),
(5, 3, 2, NULL, NULL, '2019-11-10 05:28:58'),
(6, 4, 1, NULL, '2019-11-07 11:08:00', '2019-11-07 06:08:00'),
(7, 4, 2, NULL, NULL, '2019-11-10 05:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-11-07 03:42:01', '2019-11-07 03:42:01');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(3, 1, 'Staff Management', '', '_self', 'voyager-person', '#000000', NULL, 4, '2019-11-07 03:42:02', '2019-11-10 13:28:46', 'voyager.users.index', 'null'),
(4, 1, 'Staff Roles', '', '_self', 'voyager-lock', '#000000', NULL, 3, '2019-11-07 03:42:02', '2019-11-10 13:28:46', 'voyager.roles.index', 'null'),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2019-11-07 03:42:02', '2019-11-10 13:28:40', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-11-07 03:42:02', '2019-11-07 03:44:38', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-11-07 03:42:02', '2019-11-07 03:44:38', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-11-07 03:42:02', '2019-11-07 03:44:38', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-11-07 03:42:02', '2019-11-07 03:44:38', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 9, '2019-11-07 03:42:02', '2019-11-10 13:28:40', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-11-07 03:42:06', '2019-11-07 03:44:38', 'voyager.hooks', NULL),
(12, 1, 'Events', '', '_self', 'voyager-calendar', NULL, NULL, 5, '2019-11-07 03:56:08', '2019-11-10 13:28:46', 'voyager.events.index', NULL),
(16, 1, 'Packages', '', '_self', 'voyager-backpack', '#000000', NULL, 6, '2019-11-07 05:56:04', '2019-11-10 13:28:46', 'voyager.packages.index', 'null'),
(17, 1, 'Event Packages', '', '_self', 'voyager-window-list', '#000000', NULL, 7, '2019-11-07 05:57:53', '2019-11-10 13:28:46', 'voyager.event-packages.index', 'null'),
(18, 1, 'Sales', '', '_self', 'voyager-shop', '#000000', NULL, 2, '2019-11-10 13:28:21', '2019-11-10 13:29:15', 'voyager.sales.index', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2018_06_30_113500_create_comments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `price`) VALUES
(1, 'Gold', '2019-11-07 06:00:00', '2019-11-10 05:47:41', NULL, 300),
(2, 'Silver', '2019-11-10 05:28:00', '2019-11-10 05:47:33', NULL, 200),
(3, 'Bronze', '2019-11-10 05:28:00', '2019-11-10 05:47:48', NULL, 150),
(4, 'Copper', '2019-11-10 05:28:00', '2019-11-10 05:47:53', NULL, 100);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-11-07 03:42:03', '2019-11-07 03:42:03'),
(2, 'browse_bread', NULL, '2019-11-07 03:42:03', '2019-11-07 03:42:03'),
(3, 'browse_database', NULL, '2019-11-07 03:42:03', '2019-11-07 03:42:03'),
(4, 'browse_media', NULL, '2019-11-07 03:42:03', '2019-11-07 03:42:03'),
(5, 'browse_compass', NULL, '2019-11-07 03:42:03', '2019-11-07 03:42:03'),
(6, 'browse_menus', 'menus', '2019-11-07 03:42:03', '2019-11-07 03:42:03'),
(7, 'read_menus', 'menus', '2019-11-07 03:42:03', '2019-11-07 03:42:03'),
(8, 'edit_menus', 'menus', '2019-11-07 03:42:03', '2019-11-07 03:42:03'),
(9, 'add_menus', 'menus', '2019-11-07 03:42:03', '2019-11-07 03:42:03'),
(10, 'delete_menus', 'menus', '2019-11-07 03:42:03', '2019-11-07 03:42:03'),
(11, 'browse_roles', 'roles', '2019-11-07 03:42:03', '2019-11-07 03:42:03'),
(12, 'read_roles', 'roles', '2019-11-07 03:42:03', '2019-11-07 03:42:03'),
(13, 'edit_roles', 'roles', '2019-11-07 03:42:03', '2019-11-07 03:42:03'),
(14, 'add_roles', 'roles', '2019-11-07 03:42:03', '2019-11-07 03:42:03'),
(15, 'delete_roles', 'roles', '2019-11-07 03:42:03', '2019-11-07 03:42:03'),
(16, 'browse_users', 'users', '2019-11-07 03:42:04', '2019-11-07 03:42:04'),
(17, 'read_users', 'users', '2019-11-07 03:42:04', '2019-11-07 03:42:04'),
(18, 'edit_users', 'users', '2019-11-07 03:42:04', '2019-11-07 03:42:04'),
(19, 'add_users', 'users', '2019-11-07 03:42:04', '2019-11-07 03:42:04'),
(20, 'delete_users', 'users', '2019-11-07 03:42:04', '2019-11-07 03:42:04'),
(21, 'browse_settings', 'settings', '2019-11-07 03:42:04', '2019-11-07 03:42:04'),
(22, 'read_settings', 'settings', '2019-11-07 03:42:04', '2019-11-07 03:42:04'),
(23, 'edit_settings', 'settings', '2019-11-07 03:42:04', '2019-11-07 03:42:04'),
(24, 'add_settings', 'settings', '2019-11-07 03:42:04', '2019-11-07 03:42:04'),
(25, 'delete_settings', 'settings', '2019-11-07 03:42:04', '2019-11-07 03:42:04'),
(32, 'browse_events', 'events', '2019-11-07 04:17:41', '2019-11-07 04:17:41'),
(33, 'read_events', 'events', '2019-11-07 04:17:41', '2019-11-07 04:17:41'),
(34, 'edit_events', 'events', '2019-11-07 04:17:41', '2019-11-07 04:17:41'),
(35, 'add_events', 'events', '2019-11-07 04:17:41', '2019-11-07 04:17:41'),
(36, 'delete_events', 'events', '2019-11-07 04:17:41', '2019-11-07 04:17:41'),
(52, 'browse_event_bookings', 'event_bookings', '2019-11-07 05:31:48', '2019-11-07 05:31:48'),
(53, 'read_event_bookings', 'event_bookings', '2019-11-07 05:31:48', '2019-11-07 05:31:48'),
(54, 'edit_event_bookings', 'event_bookings', '2019-11-07 05:31:48', '2019-11-07 05:31:48'),
(55, 'add_event_bookings', 'event_bookings', '2019-11-07 05:31:48', '2019-11-07 05:31:48'),
(56, 'delete_event_bookings', 'event_bookings', '2019-11-07 05:31:48', '2019-11-07 05:31:48'),
(57, 'browse_packages', 'packages', '2019-11-07 05:56:04', '2019-11-07 05:56:04'),
(58, 'read_packages', 'packages', '2019-11-07 05:56:04', '2019-11-07 05:56:04'),
(59, 'edit_packages', 'packages', '2019-11-07 05:56:04', '2019-11-07 05:56:04'),
(60, 'add_packages', 'packages', '2019-11-07 05:56:04', '2019-11-07 05:56:04'),
(61, 'delete_packages', 'packages', '2019-11-07 05:56:04', '2019-11-07 05:56:04'),
(62, 'browse_event_packages', 'event_packages', '2019-11-07 05:57:52', '2019-11-07 05:57:52'),
(63, 'read_event_packages', 'event_packages', '2019-11-07 05:57:52', '2019-11-07 05:57:52'),
(64, 'edit_event_packages', 'event_packages', '2019-11-07 05:57:52', '2019-11-07 05:57:52'),
(65, 'add_event_packages', 'event_packages', '2019-11-07 05:57:53', '2019-11-07 05:57:53'),
(66, 'delete_event_packages', 'event_packages', '2019-11-07 05:57:53', '2019-11-07 05:57:53'),
(67, 'browse_sales', 'sales', '2019-11-10 13:28:20', '2019-11-10 13:28:20'),
(68, 'read_sales', 'sales', '2019-11-10 13:28:20', '2019-11-10 13:28:20'),
(69, 'edit_sales', 'sales', '2019-11-10 13:28:20', '2019-11-10 13:28:20'),
(70, 'add_sales', 'sales', '2019-11-10 13:28:21', '2019-11-10 13:28:21'),
(71, 'delete_sales', 'sales', '2019-11-10 13:28:21', '2019-11-10 13:28:21');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-11-07 03:42:02', '2019-11-07 03:42:02'),
(2, 'user', 'Normal User', '2019-11-07 03:42:02', '2019-11-07 03:42:02');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `customer_name`, `type`, `amount`, `created_at`, `updated_at`, `email`, `shipping_address`, `contact`, `title`) VALUES
(2, 'DanielOX', 'package', 300, '2019-11-10 13:18:06', '2019-11-10 13:18:06', 'danialmaluk7@gmail.com', 'dasdkas jkdakdjd dkdkda kdkll djk', '923401763773', 'Gold'),
(3, 'DanielOX', 'package', 300, '2019-11-10 13:22:21', '2019-11-10 13:22:21', 'danialmaluk7@gmail.com', 'dasdkas jkdakdjd dkdkda kdkll djk', '923401763773', 'Gold'),
(4, 'DanielOX', 'package', 200, '2019-11-10 13:24:37', '2019-11-10 13:24:37', 'danialmaluk7@gmail.com', 'dasdkas jkdakdjd dkdkda kdkll djk', '923401763773', 'Silver'),
(5, 'DanielOX', 'package', 300, '2019-11-10 13:25:46', '2019-11-10 13:25:46', 'danialmaluk7@gmail.com', 'dasdkas jkdakdjd dkdkda kdkll djk', '923401763773', 'Gold'),
(6, 'DanielOX', 'package', 300, '2019-11-10 13:32:00', '2019-11-10 13:32:00', 'danialmaluk7@gmail.com', 'dasdkas jkdakdjd dkdkda kdkll djk', '923401763773', 'Gold'),
(7, 'DanielOX', 'package', 400, '2019-11-11 06:10:37', '2019-11-11 06:10:37', 'danialmaluk7@gmail.com', 'dasdkas jkdakdjd dkdkda kdkll djk', '923401763773', 'Cultural Event'),
(8, 'DanielOX', 'package', 400, '2019-11-11 06:11:23', '2019-11-11 06:11:23', 'danialmaluk7@gmail.com', 'dasdkas jkdakdjd dkdkda kdkll djk', '923401763773', 'Cultural Event');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Saneo', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'An Event Management Company', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/November2019/cPpJzkzlnIkJhCvy9Hv7.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Saneo Admin Panel', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Admin Portal For SANEO', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'mohsin', 'admin@admin.com', 'users/November2019/0BRQZW2yxeERbiJeYNED.jpg', NULL, '$2y$10$p/V5vFJ6zmpBZf8Xa9aOxuK2S/T/uw4uIM8Cpz0clQ1Tfpl5z9tPa', NULL, '{\"locale\":\"en\"}', '2019-11-07 03:43:57', '2019-11-07 03:47:00'),
(2, 1, 'DanielOX', 'danialmaluk7@gmail.com', 'users/default.png', NULL, '$2y$10$ZbyPC9oj0zdJuFc5LZgTS.VG.as2.t31IiQHmJso1FSGzOQsF0Q9i', NULL, '{\"locale\":\"en\"}', '2019-11-07 04:46:01', '2019-11-07 04:46:01'),
(3, 2, 'Danial', 'user@user.com', 'users/default.png', NULL, '$2y$10$4X3wlj1kK7pRxlu6lBeR/.Ge4alryCxBRr4QHfIw7oOdPiEIx0/jS', NULL, NULL, '2019-11-07 06:21:17', '2019-11-07 06:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_commenter_id_commenter_type_index` (`commenter_id`,`commenter_type`),
  ADD KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`),
  ADD KEY `comments_child_id_foreign` (`child_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_user_id_index` (`user_id`);

--
-- Indexes for table `event_packages`
--
ALTER TABLE `event_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_packages_event_id_index` (`event_id`),
  ADD KEY `event_packages_package_id_index` (`package_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `event_packages`
--
ALTER TABLE `event_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
