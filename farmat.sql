-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2025 at 11:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farmat`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(120) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'nDHEm36cbYkeDqfQy1PTALor52LljmNC', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `action_label` varchar(191) DEFAULT NULL,
  `action_url` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) DEFAULT NULL,
  `key` varchar(120) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `clicked` bigint(20) NOT NULL DEFAULT 0,
  `order` int(11) DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT 1,
  `tablet_image` varchar(191) DEFAULT NULL,
  `mobile_image` varchar(191) DEFAULT NULL,
  `ads_type` varchar(191) DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `name`, `expired_at`, `location`, `key`, `image`, `url`, `clicked`, `order`, `status`, `created_at`, `updated_at`, `open_in_new_tab`, `tablet_image`, `mobile_image`, `ads_type`, `google_adsense_slot_id`) VALUES
(1, 'Top Slider Image 1', '2027-03-13 00:00:00', 'not_set', 'VC2C8Q1UGCBG', 'promotion/1.jpg', '/products', 0, 1, 'published', '2024-08-21 20:36:25', '2025-01-13 07:57:06', 1, NULL, NULL, NULL, NULL),
(2, 'Homepage middle 1', '2027-03-13 00:00:00', 'not_set', 'IZ6WU8KUALYD', 'promotion/2.png', '/products', 0, 2, 'published', '2024-08-21 20:36:25', '2025-01-13 07:57:06', 1, NULL, NULL, NULL, NULL),
(3, 'Homepage middle 2', '2027-03-13 00:00:00', 'not_set', 'ILSFJVYFGCPZ', 'promotion/3.png', '/products', 0, 3, 'published', '2024-08-21 20:36:25', '2025-01-13 07:57:06', 1, NULL, NULL, NULL, NULL),
(4, 'Homepage middle 3', '2027-03-13 00:00:00', 'not_set', 'ZDOZUZZIU7FT', 'promotion/4.png', '/products', 0, 4, 'published', '2024-08-21 20:36:25', '2025-01-13 07:57:06', 1, NULL, NULL, NULL, NULL),
(5, 'Products list 1', '2027-03-13 00:00:00', 'not_set', 'ZDOZUZZIU7FZ', 'promotion/5.png', '/products/beat-headphone', 0, 5, 'published', '2024-08-21 20:36:25', '2025-01-13 07:57:05', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ads_translations`
--

CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ads_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `module` varchar(60) NOT NULL,
  `request` longtext DEFAULT NULL,
  `action` varchar(120) NOT NULL,
  `user_agent` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `reference_user` bigint(20) UNSIGNED NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_name` varchar(191) NOT NULL,
  `type` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 0, 1, 'Saiful Islam', 'info', '2025-01-13 06:45:24', '2025-01-13 06:45:24'),
(2, 1, 'user', '{\"_method\":\"PUT\",\"locale_direction\":\"ltr\",\"theme_mode\":\"dark\"}', 'has updated his profile', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 1, 'Saiful Islam', 'primary', '2025-01-13 07:03:07', '2025-01-13 07:03:07'),
(3, 1, 'contacts', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 10, 'Torrance Jacobs', 'primary', '2025-01-13 07:04:37', '2025-01-13 07:04:37'),
(4, 1, 'contacts', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 9, 'Malachi Fisher', 'primary', '2025-01-13 07:04:37', '2025-01-13 07:04:37'),
(5, 1, 'contacts', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 8, 'Pamela Champlin', 'primary', '2025-01-13 07:04:38', '2025-01-13 07:04:38'),
(6, 1, 'contacts', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 7, 'Dr. Marquise Stiedemann', 'primary', '2025-01-13 07:04:38', '2025-01-13 07:04:38'),
(7, 1, 'contacts', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 6, 'Dolores Hansen', 'primary', '2025-01-13 07:04:38', '2025-01-13 07:04:38'),
(8, 1, 'contacts', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 5, 'Giovanni Connelly Sr.', 'primary', '2025-01-13 07:04:38', '2025-01-13 07:04:38'),
(9, 1, 'contacts', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 4, 'Robin McLaughlin', 'primary', '2025-01-13 07:04:38', '2025-01-13 07:04:38'),
(10, 1, 'contacts', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 3, 'Jaydon Becker', 'primary', '2025-01-13 07:04:38', '2025-01-13 07:04:38'),
(11, 1, 'contacts', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 2, 'Loyal Metz', 'primary', '2025-01-13 07:04:38', '2025-01-13 07:04:38'),
(12, 1, 'contacts', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 1, 'Kitty Jenkins', 'primary', '2025-01-13 07:04:38', '2025-01-13 07:04:38'),
(13, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 1, 'Kitty Jenkins', 'danger', '2025-01-13 07:06:25', '2025-01-13 07:06:25'),
(14, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 2, 'Loyal Metz', 'danger', '2025-01-13 07:06:25', '2025-01-13 07:06:25'),
(15, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 3, 'Jaydon Becker', 'danger', '2025-01-13 07:06:25', '2025-01-13 07:06:25'),
(16, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 4, 'Robin McLaughlin', 'danger', '2025-01-13 07:06:25', '2025-01-13 07:06:25'),
(17, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 5, 'Giovanni Connelly Sr.', 'danger', '2025-01-13 07:06:25', '2025-01-13 07:06:25'),
(18, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 6, 'Dolores Hansen', 'danger', '2025-01-13 07:06:25', '2025-01-13 07:06:25'),
(19, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 7, 'Dr. Marquise Stiedemann', 'danger', '2025-01-13 07:06:25', '2025-01-13 07:06:25'),
(20, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 8, 'Pamela Champlin', 'danger', '2025-01-13 07:06:25', '2025-01-13 07:06:25'),
(21, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 9, 'Malachi Fisher', 'danger', '2025-01-13 07:06:25', '2025-01-13 07:06:25'),
(22, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 10, 'Torrance Jacobs', 'danger', '2025-01-13 07:06:25', '2025-01-13 07:06:25'),
(23, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 65, 'Province Piece Glass Drinking Glass', 'primary', '2025-01-13 07:09:53', '2025-01-13 07:09:53'),
(24, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 64, 'Pice 94w Beasley Journal (Digital)', 'primary', '2025-01-13 07:09:53', '2025-01-13 07:09:53'),
(25, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 63, 'Large Green Bell Pepper', 'primary', '2025-01-13 07:09:53', '2025-01-13 07:09:53'),
(26, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 62, 'Kit Kat Chunky Milk Chocolate', 'primary', '2025-01-13 07:09:53', '2025-01-13 07:09:53'),
(27, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 61, 'Kellogg’s Coco Pops Cereal', 'primary', '2025-01-13 07:09:54', '2025-01-13 07:09:54'),
(28, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 60, 'Iceland Spaghetti Bolognese (Digital)', 'primary', '2025-01-13 07:09:54', '2025-01-13 07:09:54'),
(29, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 59, 'Iceland Soft Scoop Vanilla', 'primary', '2025-01-13 07:09:54', '2025-01-13 07:09:54'),
(30, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 58, 'Iceland Luxury 4 Panini Rolls', 'primary', '2025-01-13 07:09:54', '2025-01-13 07:09:54'),
(31, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 57, 'Iceland 6 Hot Cross Buns', 'primary', '2025-01-13 07:09:54', '2025-01-13 07:09:54'),
(32, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 56, 'Ice Beck’s Beer 350ml x 24 Pieces (Digital)', 'primary', '2025-01-13 07:09:54', '2025-01-13 07:09:54'),
(33, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 55, 'Honest Organic Still Lemonade', 'primary', '2025-01-13 07:09:54', '2025-01-13 07:09:54'),
(34, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 54, 'Hobnobs The Nobbly Biscuit', 'primary', '2025-01-13 07:09:54', '2025-01-13 07:09:54'),
(35, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 53, 'Corn, Yellow Sweet', 'primary', '2025-01-13 07:09:55', '2025-01-13 07:09:55'),
(36, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 52, 'Cuisinart Chef’S Classic Hard-Anodized (Digital)', 'primary', '2025-01-13 07:09:55', '2025-01-13 07:09:55'),
(37, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 51, 'Aptamil Follow On Baby Milk', 'primary', '2025-01-13 07:09:55', '2025-01-13 07:09:55'),
(38, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 50, 'Arla Organic Free Range Milk', 'primary', '2025-01-13 07:09:55', '2025-01-13 07:09:55'),
(39, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 49, 'Casillero Diablo Cabernet Sauvignon', 'primary', '2025-01-13 07:09:55', '2025-01-13 07:09:55'),
(40, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 48, 'Coca-Cola Original Taste (Digital)', 'primary', '2025-01-13 07:09:55', '2025-01-13 07:09:55'),
(41, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 47, 'Famart Farmhouse Soft White', 'primary', '2025-01-13 07:09:55', '2025-01-13 07:09:55'),
(42, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 46, 'Bottled Pure Water 500ml', 'primary', '2025-01-13 07:09:56', '2025-01-13 07:09:56'),
(43, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 45, 'Maxwell House Classic Roast Mocha', 'primary', '2025-01-13 07:09:56', '2025-01-13 07:09:56'),
(44, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 44, 'Italia Beef Lasagne (Digital)', 'primary', '2025-01-13 07:09:56', '2025-01-13 07:09:56'),
(45, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 43, 'Avocado, Hass Large', 'primary', '2025-01-13 07:09:56', '2025-01-13 07:09:56'),
(46, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 42, 'Morrisons The Best Beef', 'primary', '2025-01-13 07:09:56', '2025-01-13 07:09:56'),
(47, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 41, 'Sesame Seed Bread', 'primary', '2025-01-13 07:09:56', '2025-01-13 07:09:56'),
(48, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 40, 'Miko The Panda Water Bottle (Digital)', 'primary', '2025-01-13 07:09:56', '2025-01-13 07:09:56'),
(49, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 39, 'Wayfair Basics Dinner Plate Storage', 'primary', '2025-01-13 07:09:56', '2025-01-13 07:09:56'),
(50, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 38, 'Sitema BakeIT Plastic Box', 'primary', '2025-01-13 07:09:56', '2025-01-13 07:09:56'),
(51, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 37, 'Dolmio Bolognese Pasta Sauce', 'primary', '2025-01-13 07:09:57', '2025-01-13 07:09:57'),
(52, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 36, 'Iceland Macaroni Cheese Traybake (Digital)', 'primary', '2025-01-13 07:09:57', '2025-01-13 07:09:57'),
(53, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 35, 'Extreme Budweiser Light Can', 'primary', '2025-01-13 07:09:57', '2025-01-13 07:09:57'),
(54, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 34, 'Iceland 3 Solo Exotic Burst', 'primary', '2025-01-13 07:09:57', '2025-01-13 07:09:57'),
(55, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 33, 'Häagen-Dazs Salted Caramel', 'primary', '2025-01-13 07:09:57', '2025-01-13 07:09:57'),
(56, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 32, 'Slimming World Vegan Mac Greens (Digital)', 'primary', '2025-01-13 07:09:57', '2025-01-13 07:09:57'),
(57, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 31, 'Broccoli Crowns', 'primary', '2025-01-13 07:09:57', '2025-01-13 07:09:57'),
(58, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 30, 'Bar S – Classic Bun Length Franks', 'primary', '2025-01-13 07:09:57', '2025-01-13 07:09:57'),
(59, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 29, 'Saute Pan Silver', 'primary', '2025-01-13 07:09:58', '2025-01-13 07:09:58'),
(60, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 28, 'Naked Noodle Egg Noodles Singapore (Digital)', 'primary', '2025-01-13 07:09:58', '2025-01-13 07:09:58'),
(61, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 27, 'Soft Mochi & Galeto Ice Cream', 'primary', '2025-01-13 07:09:58', '2025-01-13 07:09:58'),
(62, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 26, 'Taylors of Harrogate Yorkshire Coffee', 'primary', '2025-01-13 07:09:58', '2025-01-13 07:09:58'),
(63, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 25, 'Crock Pot Slow Cooker', 'primary', '2025-01-13 07:09:58', '2025-01-13 07:09:58'),
(64, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 24, 'Vimto Squash Remix Apple 1.5 Litres (Digital)', 'primary', '2025-01-13 07:09:58', '2025-01-13 07:09:58'),
(65, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 23, 'Ciate Palemore Lipstick Bold Red Color', 'primary', '2025-01-13 07:09:58', '2025-01-13 07:09:58'),
(66, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 22, 'Baxter Care Hair Kit For Bearded Mens', 'primary', '2025-01-13 07:09:58', '2025-01-13 07:09:58'),
(67, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 21, 'MVMTH Classical Leather Watch In Black', 'primary', '2025-01-13 07:09:58', '2025-01-13 07:09:58'),
(68, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 20, 'NYX Beauty Couton Pallete Makeup 12 (Digital)', 'primary', '2025-01-13 07:09:59', '2025-01-13 07:09:59'),
(69, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 19, 'NYX Beauty Couton Pallete Makeup 12', 'primary', '2025-01-13 07:09:59', '2025-01-13 07:09:59');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(70, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 18, 'Aveeno Moisturizing Body Shower 450ml', 'primary', '2025-01-13 07:09:59', '2025-01-13 07:09:59'),
(71, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 17, 'Samsung Gear VR Virtual Reality Headset', 'primary', '2025-01-13 07:09:59', '2025-01-13 07:09:59'),
(72, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 16, 'Apple MacBook Air Retina 12-Inch Laptop (Digital)', 'primary', '2025-01-13 07:09:59', '2025-01-13 07:09:59'),
(73, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 15, 'Apple MacBook Air Retina 13.3-Inch Laptop', 'primary', '2025-01-13 07:09:59', '2025-01-13 07:09:59'),
(74, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 14, 'B&O Play Mini Bluetooth Speaker', 'primary', '2025-01-13 07:09:59', '2025-01-13 07:09:59'),
(75, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 13, 'Sound Intone I65 Earphone White Version', 'primary', '2025-01-13 07:09:59', '2025-01-13 07:09:59'),
(76, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 12, 'EPSION Plaster Printer (Digital)', 'primary', '2025-01-13 07:10:00', '2025-01-13 07:10:00'),
(77, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 11, 'Xbox One Wireless Controller Black Color', 'primary', '2025-01-13 07:10:00', '2025-01-13 07:10:00'),
(78, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 10, 'Herschel Leather Duffle Bag In Brown Color', 'primary', '2025-01-13 07:10:00', '2025-01-13 07:10:00'),
(79, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 9, 'Samsung Smart Phone', 'primary', '2025-01-13 07:10:00', '2025-01-13 07:10:00'),
(80, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 8, 'Smart Televisions (Digital)', 'primary', '2025-01-13 07:10:00', '2025-01-13 07:10:00'),
(81, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 7, 'Audio Equipment', 'primary', '2025-01-13 07:10:00', '2025-01-13 07:10:00'),
(82, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 6, 'Nikon HD camera', 'primary', '2025-01-13 07:10:00', '2025-01-13 07:10:00'),
(83, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 5, 'Smart Watch External', 'primary', '2025-01-13 07:10:01', '2025-01-13 07:10:01'),
(84, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 4, 'Red & Black Headphone (Digital)', 'primary', '2025-01-13 07:10:01', '2025-01-13 07:10:01'),
(85, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 3, 'Beat Headphone', 'primary', '2025-01-13 07:10:01', '2025-01-13 07:10:01'),
(86, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 2, 'Smart Watches', 'primary', '2025-01-13 07:10:01', '2025-01-13 07:10:01'),
(87, 1, 'ec_products', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 1, 'Dual Camera 20MP', 'primary', '2025-01-13 07:10:01', '2025-01-13 07:10:01'),
(88, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 66, 'Dual Camera 20MP', 'danger', '2025-01-13 07:33:30', '2025-01-13 07:33:30'),
(89, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 67, 'Dual Camera 20MP', 'danger', '2025-01-13 07:33:31', '2025-01-13 07:33:31'),
(90, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 68, 'Dual Camera 20MP', 'danger', '2025-01-13 07:33:32', '2025-01-13 07:33:32'),
(91, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 69, 'Dual Camera 20MP', 'danger', '2025-01-13 07:33:32', '2025-01-13 07:33:32'),
(92, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 1, 'Dual Camera 20MP', 'danger', '2025-01-13 07:33:33', '2025-01-13 07:33:33'),
(93, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 2, 'Smart Watches', 'danger', '2025-01-13 07:33:33', '2025-01-13 07:33:33'),
(94, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 3, 'Beat Headphone', 'danger', '2025-01-13 07:33:33', '2025-01-13 07:33:33'),
(95, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 4, 'Red & Black Headphone (Digital)', 'danger', '2025-01-13 07:33:34', '2025-01-13 07:33:34'),
(96, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 70, 'Smart Watch External', 'danger', '2025-01-13 07:33:34', '2025-01-13 07:33:34'),
(97, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 71, 'Smart Watch External', 'danger', '2025-01-13 07:33:34', '2025-01-13 07:33:34'),
(98, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 5, 'Smart Watch External', 'danger', '2025-01-13 07:33:35', '2025-01-13 07:33:35'),
(99, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 72, 'Nikon HD camera', 'danger', '2025-01-13 07:33:35', '2025-01-13 07:33:35'),
(100, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 73, 'Nikon HD camera', 'danger', '2025-01-13 07:33:36', '2025-01-13 07:33:36'),
(101, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 74, 'Nikon HD camera', 'danger', '2025-01-13 07:33:36', '2025-01-13 07:33:36'),
(102, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 6, 'Nikon HD camera', 'danger', '2025-01-13 07:33:37', '2025-01-13 07:33:37'),
(103, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 75, 'Audio Equipment', 'danger', '2025-01-13 07:33:37', '2025-01-13 07:33:37'),
(104, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 7, 'Audio Equipment', 'danger', '2025-01-13 07:33:38', '2025-01-13 07:33:38'),
(105, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 8, 'Smart Televisions (Digital)', 'danger', '2025-01-13 07:33:38', '2025-01-13 07:33:38'),
(106, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 76, 'Samsung Smart Phone', 'danger', '2025-01-13 07:33:39', '2025-01-13 07:33:39'),
(107, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 77, 'Samsung Smart Phone', 'danger', '2025-01-13 07:33:39', '2025-01-13 07:33:39'),
(108, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 78, 'Samsung Smart Phone', 'danger', '2025-01-13 07:33:39', '2025-01-13 07:33:39'),
(109, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 9, 'Samsung Smart Phone', 'danger', '2025-01-13 07:33:40', '2025-01-13 07:33:40'),
(110, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 79, 'Herschel Leather Duffle Bag In Brown Color', 'danger', '2025-01-13 07:33:40', '2025-01-13 07:33:40'),
(111, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 80, 'Herschel Leather Duffle Bag In Brown Color', 'danger', '2025-01-13 07:33:41', '2025-01-13 07:33:41'),
(112, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 81, 'Herschel Leather Duffle Bag In Brown Color', 'danger', '2025-01-13 07:33:42', '2025-01-13 07:33:42'),
(113, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 82, 'Herschel Leather Duffle Bag In Brown Color', 'danger', '2025-01-13 07:33:43', '2025-01-13 07:33:43'),
(114, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 10, 'Herschel Leather Duffle Bag In Brown Color', 'danger', '2025-01-13 07:33:43', '2025-01-13 07:33:43'),
(115, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 83, 'Xbox One Wireless Controller Black Color', 'danger', '2025-01-13 07:33:44', '2025-01-13 07:33:44'),
(116, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 11, 'Xbox One Wireless Controller Black Color', 'danger', '2025-01-13 07:33:44', '2025-01-13 07:33:44'),
(117, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 12, 'EPSION Plaster Printer (Digital)', 'danger', '2025-01-13 07:33:45', '2025-01-13 07:33:45'),
(118, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 84, 'Sound Intone I65 Earphone White Version', 'danger', '2025-01-13 07:33:46', '2025-01-13 07:33:46'),
(119, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 85, 'Sound Intone I65 Earphone White Version', 'danger', '2025-01-13 07:33:47', '2025-01-13 07:33:47'),
(120, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 86, 'Sound Intone I65 Earphone White Version', 'danger', '2025-01-13 07:33:48', '2025-01-13 07:33:48'),
(121, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 87, 'Sound Intone I65 Earphone White Version', 'danger', '2025-01-13 07:33:49', '2025-01-13 07:33:49'),
(122, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 13, 'Sound Intone I65 Earphone White Version', 'danger', '2025-01-13 07:33:49', '2025-01-13 07:33:49'),
(123, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 88, 'B&O Play Mini Bluetooth Speaker', 'danger', '2025-01-13 07:33:50', '2025-01-13 07:33:50'),
(124, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 89, 'B&O Play Mini Bluetooth Speaker', 'danger', '2025-01-13 07:33:51', '2025-01-13 07:33:51'),
(125, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 90, 'B&O Play Mini Bluetooth Speaker', 'danger', '2025-01-13 07:33:52', '2025-01-13 07:33:52');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(126, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 14, 'B&O Play Mini Bluetooth Speaker', 'danger', '2025-01-13 07:33:52', '2025-01-13 07:33:52'),
(127, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 91, 'Apple MacBook Air Retina 13.3-Inch Laptop', 'danger', '2025-01-13 07:33:54', '2025-01-13 07:33:54'),
(128, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 15, 'Apple MacBook Air Retina 13.3-Inch Laptop', 'danger', '2025-01-13 07:33:54', '2025-01-13 07:33:54'),
(129, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 16, 'Apple MacBook Air Retina 12-Inch Laptop (Digital)', 'danger', '2025-01-13 07:33:55', '2025-01-13 07:33:55'),
(130, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 17, 'Samsung Gear VR Virtual Reality Headset', 'danger', '2025-01-13 07:33:56', '2025-01-13 07:33:56'),
(131, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 18, 'Aveeno Moisturizing Body Shower 450ml', 'danger', '2025-01-13 07:33:57', '2025-01-13 07:33:57'),
(132, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 92, 'NYX Beauty Couton Pallete Makeup 12', 'danger', '2025-01-13 07:33:58', '2025-01-13 07:33:58'),
(133, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 93, 'NYX Beauty Couton Pallete Makeup 12', 'danger', '2025-01-13 07:33:59', '2025-01-13 07:33:59'),
(134, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 94, 'NYX Beauty Couton Pallete Makeup 12', 'danger', '2025-01-13 07:34:00', '2025-01-13 07:34:00'),
(135, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 19, 'NYX Beauty Couton Pallete Makeup 12', 'danger', '2025-01-13 07:34:01', '2025-01-13 07:34:01'),
(136, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 95, 'NYX Beauty Couton Pallete Makeup 12 (Digital)', 'danger', '2025-01-13 07:34:02', '2025-01-13 07:34:02'),
(137, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 96, 'NYX Beauty Couton Pallete Makeup 12 (Digital)', 'danger', '2025-01-13 07:34:03', '2025-01-13 07:34:03'),
(138, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 20, 'NYX Beauty Couton Pallete Makeup 12 (Digital)', 'danger', '2025-01-13 07:34:03', '2025-01-13 07:34:03'),
(139, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 21, 'MVMTH Classical Leather Watch In Black', 'danger', '2025-01-13 07:34:04', '2025-01-13 07:34:04'),
(140, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 22, 'Baxter Care Hair Kit For Bearded Mens', 'danger', '2025-01-13 07:34:05', '2025-01-13 07:34:05'),
(141, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 23, 'Ciate Palemore Lipstick Bold Red Color', 'danger', '2025-01-13 07:34:05', '2025-01-13 07:34:05'),
(142, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 97, 'Vimto Squash Remix Apple 1.5 Litres (Digital)', 'danger', '2025-01-13 07:34:06', '2025-01-13 07:34:06'),
(143, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 98, 'Vimto Squash Remix Apple 1.5 Litres (Digital)', 'danger', '2025-01-13 07:34:07', '2025-01-13 07:34:07'),
(144, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 24, 'Vimto Squash Remix Apple 1.5 Litres (Digital)', 'danger', '2025-01-13 07:34:08', '2025-01-13 07:34:08'),
(145, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 25, 'Crock Pot Slow Cooker', 'danger', '2025-01-13 07:34:09', '2025-01-13 07:34:09'),
(146, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 26, 'Taylors of Harrogate Yorkshire Coffee', 'danger', '2025-01-13 07:34:10', '2025-01-13 07:34:10'),
(147, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 99, 'Soft Mochi & Galeto Ice Cream', 'danger', '2025-01-13 07:34:11', '2025-01-13 07:34:11'),
(148, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 100, 'Soft Mochi & Galeto Ice Cream', 'danger', '2025-01-13 07:34:11', '2025-01-13 07:34:11'),
(149, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 101, 'Soft Mochi & Galeto Ice Cream', 'danger', '2025-01-13 07:34:12', '2025-01-13 07:34:12'),
(150, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 27, 'Soft Mochi & Galeto Ice Cream', 'danger', '2025-01-13 07:34:13', '2025-01-13 07:34:13'),
(151, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 28, 'Naked Noodle Egg Noodles Singapore (Digital)', 'danger', '2025-01-13 07:34:14', '2025-01-13 07:34:14'),
(152, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 29, 'Saute Pan Silver', 'danger', '2025-01-13 07:34:15', '2025-01-13 07:34:15'),
(153, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 102, 'Bar S – Classic Bun Length Franks', 'danger', '2025-01-13 07:34:16', '2025-01-13 07:34:16'),
(154, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 30, 'Bar S – Classic Bun Length Franks', 'danger', '2025-01-13 07:34:17', '2025-01-13 07:34:17'),
(155, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 103, 'Broccoli Crowns', 'danger', '2025-01-13 07:34:17', '2025-01-13 07:34:17'),
(156, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 104, 'Broccoli Crowns', 'danger', '2025-01-13 07:34:18', '2025-01-13 07:34:18'),
(157, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 105, 'Broccoli Crowns', 'danger', '2025-01-13 07:34:19', '2025-01-13 07:34:19'),
(158, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 31, 'Broccoli Crowns', 'danger', '2025-01-13 07:34:20', '2025-01-13 07:34:20'),
(159, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 32, 'Slimming World Vegan Mac Greens (Digital)', 'danger', '2025-01-13 07:34:20', '2025-01-13 07:34:20'),
(160, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 33, 'Häagen-Dazs Salted Caramel', 'danger', '2025-01-13 07:34:21', '2025-01-13 07:34:21'),
(161, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 106, 'Iceland 3 Solo Exotic Burst', 'danger', '2025-01-13 07:34:22', '2025-01-13 07:34:22'),
(162, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 107, 'Iceland 3 Solo Exotic Burst', 'danger', '2025-01-13 07:34:23', '2025-01-13 07:34:23'),
(163, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 34, 'Iceland 3 Solo Exotic Burst', 'danger', '2025-01-13 07:34:23', '2025-01-13 07:34:23'),
(164, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 35, 'Extreme Budweiser Light Can', 'danger', '2025-01-13 07:34:24', '2025-01-13 07:34:24'),
(165, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 108, 'Iceland Macaroni Cheese Traybake (Digital)', 'danger', '2025-01-13 07:34:25', '2025-01-13 07:34:25'),
(166, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 109, 'Iceland Macaroni Cheese Traybake (Digital)', 'danger', '2025-01-13 07:34:26', '2025-01-13 07:34:26'),
(167, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 110, 'Iceland Macaroni Cheese Traybake (Digital)', 'danger', '2025-01-13 07:34:27', '2025-01-13 07:34:27'),
(168, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 36, 'Iceland Macaroni Cheese Traybake (Digital)', 'danger', '2025-01-13 07:34:28', '2025-01-13 07:34:28'),
(169, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 37, 'Dolmio Bolognese Pasta Sauce', 'danger', '2025-01-13 07:34:29', '2025-01-13 07:34:29'),
(170, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 38, 'Sitema BakeIT Plastic Box', 'danger', '2025-01-13 07:34:29', '2025-01-13 07:34:29'),
(171, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 111, 'Wayfair Basics Dinner Plate Storage', 'danger', '2025-01-13 07:34:30', '2025-01-13 07:34:30'),
(172, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 112, 'Wayfair Basics Dinner Plate Storage', 'danger', '2025-01-13 07:34:31', '2025-01-13 07:34:31'),
(173, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 113, 'Wayfair Basics Dinner Plate Storage', 'danger', '2025-01-13 07:34:33', '2025-01-13 07:34:33'),
(174, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 114, 'Wayfair Basics Dinner Plate Storage', 'danger', '2025-01-13 07:34:33', '2025-01-13 07:34:33'),
(175, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 39, 'Wayfair Basics Dinner Plate Storage', 'danger', '2025-01-13 07:34:34', '2025-01-13 07:34:34'),
(176, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 40, 'Miko The Panda Water Bottle (Digital)', 'danger', '2025-01-13 07:34:35', '2025-01-13 07:34:35'),
(177, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 115, 'Sesame Seed Bread', 'danger', '2025-01-13 07:34:36', '2025-01-13 07:34:36'),
(178, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 116, 'Sesame Seed Bread', 'danger', '2025-01-13 07:34:37', '2025-01-13 07:34:37'),
(179, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 117, 'Sesame Seed Bread', 'danger', '2025-01-13 07:34:37', '2025-01-13 07:34:37'),
(180, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 41, 'Sesame Seed Bread', 'danger', '2025-01-13 07:34:38', '2025-01-13 07:34:38');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(181, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 42, 'Morrisons The Best Beef', 'danger', '2025-01-13 07:34:39', '2025-01-13 07:34:39'),
(182, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 43, 'Avocado, Hass Large', 'danger', '2025-01-13 07:34:39', '2025-01-13 07:34:39'),
(183, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 44, 'Italia Beef Lasagne (Digital)', 'danger', '2025-01-13 07:34:40', '2025-01-13 07:34:40'),
(184, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 118, 'Maxwell House Classic Roast Mocha', 'danger', '2025-01-13 07:34:41', '2025-01-13 07:34:41'),
(185, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 119, 'Maxwell House Classic Roast Mocha', 'danger', '2025-01-13 07:34:42', '2025-01-13 07:34:42'),
(186, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 45, 'Maxwell House Classic Roast Mocha', 'danger', '2025-01-13 07:34:42', '2025-01-13 07:34:42'),
(187, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 120, 'Bottled Pure Water 500ml', 'danger', '2025-01-13 07:34:44', '2025-01-13 07:34:44'),
(188, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 121, 'Bottled Pure Water 500ml', 'danger', '2025-01-13 07:34:45', '2025-01-13 07:34:45'),
(189, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 122, 'Bottled Pure Water 500ml', 'danger', '2025-01-13 07:34:46', '2025-01-13 07:34:46'),
(190, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 46, 'Bottled Pure Water 500ml', 'danger', '2025-01-13 07:34:47', '2025-01-13 07:34:47'),
(191, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 47, 'Famart Farmhouse Soft White', 'danger', '2025-01-13 07:34:47', '2025-01-13 07:34:47'),
(192, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 123, 'Coca-Cola Original Taste (Digital)', 'danger', '2025-01-13 07:34:48', '2025-01-13 07:34:48'),
(193, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 124, 'Coca-Cola Original Taste (Digital)', 'danger', '2025-01-13 07:34:49', '2025-01-13 07:34:49'),
(194, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 125, 'Coca-Cola Original Taste (Digital)', 'danger', '2025-01-13 07:34:50', '2025-01-13 07:34:50'),
(195, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 126, 'Coca-Cola Original Taste (Digital)', 'danger', '2025-01-13 07:34:50', '2025-01-13 07:34:50'),
(196, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 48, 'Coca-Cola Original Taste (Digital)', 'danger', '2025-01-13 07:34:51', '2025-01-13 07:34:51'),
(197, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 49, 'Casillero Diablo Cabernet Sauvignon', 'danger', '2025-01-13 07:34:52', '2025-01-13 07:34:52'),
(198, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 127, 'Arla Organic Free Range Milk', 'danger', '2025-01-13 07:34:52', '2025-01-13 07:34:52'),
(199, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 128, 'Arla Organic Free Range Milk', 'danger', '2025-01-13 07:34:53', '2025-01-13 07:34:53'),
(200, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 129, 'Arla Organic Free Range Milk', 'danger', '2025-01-13 07:34:53', '2025-01-13 07:34:53'),
(201, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 50, 'Arla Organic Free Range Milk', 'danger', '2025-01-13 07:34:54', '2025-01-13 07:34:54'),
(202, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 130, 'Aptamil Follow On Baby Milk', 'danger', '2025-01-13 07:34:55', '2025-01-13 07:34:55'),
(203, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 131, 'Aptamil Follow On Baby Milk', 'danger', '2025-01-13 07:34:56', '2025-01-13 07:34:56'),
(204, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 132, 'Aptamil Follow On Baby Milk', 'danger', '2025-01-13 07:34:56', '2025-01-13 07:34:56'),
(205, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 133, 'Aptamil Follow On Baby Milk', 'danger', '2025-01-13 07:34:57', '2025-01-13 07:34:57'),
(206, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 51, 'Aptamil Follow On Baby Milk', 'danger', '2025-01-13 07:34:58', '2025-01-13 07:34:58'),
(207, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 52, 'Cuisinart Chef’S Classic Hard-Anodized (Digital)', 'danger', '2025-01-13 07:34:58', '2025-01-13 07:34:58'),
(208, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 53, 'Corn, Yellow Sweet', 'danger', '2025-01-13 07:34:59', '2025-01-13 07:34:59'),
(209, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 54, 'Hobnobs The Nobbly Biscuit', 'danger', '2025-01-13 07:35:00', '2025-01-13 07:35:00'),
(210, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 55, 'Honest Organic Still Lemonade', 'danger', '2025-01-13 07:35:01', '2025-01-13 07:35:01'),
(211, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 134, 'Ice Beck’s Beer 350ml x 24 Pieces (Digital)', 'danger', '2025-01-13 07:35:02', '2025-01-13 07:35:02'),
(212, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 135, 'Ice Beck’s Beer 350ml x 24 Pieces (Digital)', 'danger', '2025-01-13 07:35:03', '2025-01-13 07:35:03'),
(213, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 136, 'Ice Beck’s Beer 350ml x 24 Pieces (Digital)', 'danger', '2025-01-13 07:35:03', '2025-01-13 07:35:03'),
(214, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 137, 'Ice Beck’s Beer 350ml x 24 Pieces (Digital)', 'danger', '2025-01-13 07:35:04', '2025-01-13 07:35:04'),
(215, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 56, 'Ice Beck’s Beer 350ml x 24 Pieces (Digital)', 'danger', '2025-01-13 07:35:05', '2025-01-13 07:35:05'),
(216, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 57, 'Iceland 6 Hot Cross Buns', 'danger', '2025-01-13 07:35:06', '2025-01-13 07:35:06'),
(217, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 138, 'Iceland Luxury 4 Panini Rolls', 'danger', '2025-01-13 07:35:07', '2025-01-13 07:35:07'),
(218, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 139, 'Iceland Luxury 4 Panini Rolls', 'danger', '2025-01-13 07:35:07', '2025-01-13 07:35:07'),
(219, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 58, 'Iceland Luxury 4 Panini Rolls', 'danger', '2025-01-13 07:35:08', '2025-01-13 07:35:08'),
(220, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 59, 'Iceland Soft Scoop Vanilla', 'danger', '2025-01-13 07:35:09', '2025-01-13 07:35:09'),
(221, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 140, 'Iceland Spaghetti Bolognese (Digital)', 'danger', '2025-01-13 07:35:11', '2025-01-13 07:35:11'),
(222, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 141, 'Iceland Spaghetti Bolognese (Digital)', 'danger', '2025-01-13 07:35:12', '2025-01-13 07:35:12'),
(223, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 142, 'Iceland Spaghetti Bolognese (Digital)', 'danger', '2025-01-13 07:35:13', '2025-01-13 07:35:13'),
(224, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 60, 'Iceland Spaghetti Bolognese (Digital)', 'danger', '2025-01-13 07:35:14', '2025-01-13 07:35:14'),
(225, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 143, 'Kellogg’s Coco Pops Cereal', 'danger', '2025-01-13 07:35:14', '2025-01-13 07:35:14'),
(226, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 144, 'Kellogg’s Coco Pops Cereal', 'danger', '2025-01-13 07:35:15', '2025-01-13 07:35:15'),
(227, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 145, 'Kellogg’s Coco Pops Cereal', 'danger', '2025-01-13 07:35:16', '2025-01-13 07:35:16'),
(228, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 61, 'Kellogg’s Coco Pops Cereal', 'danger', '2025-01-13 07:35:16', '2025-01-13 07:35:16'),
(229, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 146, 'Kit Kat Chunky Milk Chocolate', 'danger', '2025-01-13 07:35:17', '2025-01-13 07:35:17'),
(230, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 147, 'Kit Kat Chunky Milk Chocolate', 'danger', '2025-01-13 07:35:18', '2025-01-13 07:35:18'),
(231, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 62, 'Kit Kat Chunky Milk Chocolate', 'danger', '2025-01-13 07:35:19', '2025-01-13 07:35:19'),
(232, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 63, 'Large Green Bell Pepper', 'danger', '2025-01-13 07:35:20', '2025-01-13 07:35:20'),
(233, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 148, 'Pice 94w Beasley Journal (Digital)', 'danger', '2025-01-13 07:35:20', '2025-01-13 07:35:20'),
(234, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 149, 'Pice 94w Beasley Journal (Digital)', 'danger', '2025-01-13 07:35:22', '2025-01-13 07:35:22'),
(235, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 64, 'Pice 94w Beasley Journal (Digital)', 'danger', '2025-01-13 07:35:22', '2025-01-13 07:35:22');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(236, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 150, 'Province Piece Glass Drinking Glass', 'danger', '2025-01-13 07:35:23', '2025-01-13 07:35:23'),
(237, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 151, 'Province Piece Glass Drinking Glass', 'danger', '2025-01-13 07:35:24', '2025-01-13 07:35:24'),
(238, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 152, 'Province Piece Glass Drinking Glass', 'danger', '2025-01-13 07:35:25', '2025-01-13 07:35:25'),
(239, 1, 'product', '{\"ids\":[\"65\",\"64\",\"63\",\"62\",\"61\",\"60\",\"59\",\"58\",\"57\",\"56\",\"55\",\"54\",\"53\",\"52\",\"51\",\"50\",\"49\",\"48\",\"47\",\"46\",\"45\",\"44\",\"43\",\"42\",\"41\",\"40\",\"39\",\"38\",\"37\",\"36\",\"35\",\"34\",\"33\",\"32\",\"31\",\"30\",\"29\",\"28\",\"27\",\"26\",\"25\",\"24\",\"23\",\"22\",\"21\",\"20\",\"19\",\"18\",\"17\",\"16\",\"15\",\"14\",\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 65, 'Province Piece Glass Drinking Glass', 'danger', '2025-01-13 07:35:25', '2025-01-13 07:35:25'),
(240, 1, 'producttag', '{\"ids\":[\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTagTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 1, 'Electronic', 'danger', '2025-01-13 07:39:50', '2025-01-13 07:39:50'),
(241, 1, 'producttag', '{\"ids\":[\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTagTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 2, 'Mobile', 'danger', '2025-01-13 07:39:50', '2025-01-13 07:39:50'),
(242, 1, 'producttag', '{\"ids\":[\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTagTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 3, 'Iphone', 'danger', '2025-01-13 07:39:50', '2025-01-13 07:39:50'),
(243, 1, 'producttag', '{\"ids\":[\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTagTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 4, 'Printer', 'danger', '2025-01-13 07:39:50', '2025-01-13 07:39:50'),
(244, 1, 'producttag', '{\"ids\":[\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTagTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 5, 'Office', 'danger', '2025-01-13 07:39:50', '2025-01-13 07:39:50'),
(245, 1, 'producttag', '{\"ids\":[\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductTagTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 6, 'IT', 'danger', '2025-01-13 07:39:50', '2025-01-13 07:39:50'),
(246, 1, 'productattributeset', '{\"ids\":[\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductAttributeSetsTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 1, 'Color', 'danger', '2025-01-13 07:40:29', '2025-01-13 07:40:29'),
(247, 1, 'productattributeset', '{\"ids\":[\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductAttributeSetsTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 2, 'Size', 'danger', '2025-01-13 07:40:30', '2025-01-13 07:40:30'),
(248, 1, 'productattributeset', '{\"ids\":[\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductAttributeSetsTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 3, 'Weight', 'danger', '2025-01-13 07:40:30', '2025-01-13 07:40:30'),
(249, 1, 'productattributeset', '{\"ids\":[\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductAttributeSetsTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 4, 'Boxes', 'danger', '2025-01-13 07:40:30', '2025-01-13 07:40:30'),
(250, 1, 'ec_global_options', '{\"ids\":[\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\GlobalOptionTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 4, 'HDD', 'primary', '2025-01-13 07:41:40', '2025-01-13 07:41:40'),
(251, 1, 'ec_global_options', '{\"ids\":[\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\GlobalOptionTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 3, 'CPU', 'primary', '2025-01-13 07:41:41', '2025-01-13 07:41:41'),
(252, 1, 'ec_global_options', '{\"ids\":[\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\GlobalOptionTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 2, 'RAM', 'primary', '2025-01-13 07:41:41', '2025-01-13 07:41:41'),
(253, 1, 'ec_global_options', '{\"ids\":[\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\GlobalOptionTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 1, 'Warranty', 'primary', '2025-01-13 07:41:41', '2025-01-13 07:41:41'),
(254, 1, 'ec_product_collections', '{\"ids\":[\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductCollectionTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 3, 'Special Offer', 'primary', '2025-01-13 07:43:05', '2025-01-13 07:43:05'),
(255, 1, 'ec_product_collections', '{\"ids\":[\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductCollectionTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 2, 'Best Sellers', 'primary', '2025-01-13 07:43:06', '2025-01-13 07:43:06'),
(256, 1, 'ec_product_collections', '{\"ids\":[\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductCollectionTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 1, 'New Arrival', 'primary', '2025-01-13 07:43:06', '2025-01-13 07:43:06'),
(257, 1, 'ec_product_labels', '{\"ids\":[\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductLabelTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 3, 'Sale', 'primary', '2025-01-13 07:44:05', '2025-01-13 07:44:05'),
(258, 1, 'ec_product_labels', '{\"ids\":[\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductLabelTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 2, 'New', 'primary', '2025-01-13 07:44:05', '2025-01-13 07:44:05'),
(259, 1, 'ec_product_labels', '{\"ids\":[\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\ProductLabelTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 1, 'Hot', 'primary', '2025-01-13 07:44:05', '2025-01-13 07:44:05'),
(260, 1, 'brand', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\BrandTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 1, 'FoodPound', 'danger', '2025-01-13 07:45:01', '2025-01-13 07:45:01'),
(261, 1, 'brand', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\BrandTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 2, 'iTea JSC', 'danger', '2025-01-13 07:45:02', '2025-01-13 07:45:02'),
(262, 1, 'brand', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\BrandTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 3, 'Soda Brand', 'danger', '2025-01-13 07:45:02', '2025-01-13 07:45:02'),
(263, 1, 'brand', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\BrandTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 4, 'Farmart', 'danger', '2025-01-13 07:45:02', '2025-01-13 07:45:02'),
(264, 1, 'brand', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\BrandTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 5, 'Soda Brand', 'danger', '2025-01-13 07:45:02', '2025-01-13 07:45:02'),
(265, 1, 'ec_flash_sales', '{\"ids\":[\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Ecommerce\\\\Tables\\\\FlashSaleTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 1, 'Winter Sale', 'primary', '2025-01-13 07:46:42', '2025-01-13 07:46:42'),
(266, 1, 'customer', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\CustomerTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 1, 'Miracle Carroll', 'danger', '2025-01-13 07:48:03', '2025-01-13 07:48:03'),
(267, 1, 'customer', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\CustomerTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 2, 'Dr. Jazmyn Hane', 'danger', '2025-01-13 07:48:03', '2025-01-13 07:48:03'),
(268, 1, 'customer', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\CustomerTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 3, 'Prof. Lorenz Okuneva Jr.', 'danger', '2025-01-13 07:48:03', '2025-01-13 07:48:03'),
(269, 1, 'customer', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\CustomerTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 4, 'Mrs. Ethelyn Hammes', 'danger', '2025-01-13 07:48:03', '2025-01-13 07:48:03'),
(270, 1, 'customer', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\CustomerTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 5, 'Johnathan Rau', 'danger', '2025-01-13 07:48:03', '2025-01-13 07:48:03'),
(271, 1, 'customer', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\CustomerTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 6, 'Adonis Swift', 'danger', '2025-01-13 07:48:03', '2025-01-13 07:48:03'),
(272, 1, 'customer', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\CustomerTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 7, 'Mr. Jan Oberbrunner II', 'danger', '2025-01-13 07:48:03', '2025-01-13 07:48:03'),
(273, 1, 'customer', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\CustomerTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 8, 'Cody Murphy', 'danger', '2025-01-13 07:48:03', '2025-01-13 07:48:03'),
(274, 1, 'customer', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\CustomerTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 9, 'Kathleen Kautzer DDS', 'danger', '2025-01-13 07:48:03', '2025-01-13 07:48:03'),
(275, 1, 'customer', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"bulk_action\":1,\"bulk_action_table\":\"Botble\\\\Ecommerce\\\\Tables\\\\CustomerTable\",\"bulk_action_target\":\"Botble\\\\Table\\\\BulkActions\\\\DeleteBulkAction\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 10, 'Brandi Herzog', 'danger', '2025-01-13 07:48:03', '2025-01-13 07:48:03'),
(276, 1, 'pages', '{\"ids\":[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Page\\\\Tables\\\\PageTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 12, 'Coming soon', 'primary', '2025-01-13 07:50:22', '2025-01-13 07:50:22'),
(277, 1, 'pages', '{\"ids\":[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Page\\\\Tables\\\\PageTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 11, 'Career', 'primary', '2025-01-13 07:50:23', '2025-01-13 07:50:23'),
(278, 1, 'pages', '{\"ids\":[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Page\\\\Tables\\\\PageTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 10, 'Affiliate', 'primary', '2025-01-13 07:50:23', '2025-01-13 07:50:23'),
(279, 1, 'pages', '{\"ids\":[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Page\\\\Tables\\\\PageTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 9, 'Cookie Policy', 'primary', '2025-01-13 07:50:23', '2025-01-13 07:50:23'),
(280, 1, 'pages', '{\"ids\":[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Page\\\\Tables\\\\PageTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 8, 'Contact', 'primary', '2025-01-13 07:50:23', '2025-01-13 07:50:23'),
(281, 1, 'pages', '{\"ids\":[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Page\\\\Tables\\\\PageTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 7, 'FAQs', 'primary', '2025-01-13 07:50:24', '2025-01-13 07:50:24'),
(282, 1, 'pages', '{\"ids\":[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Page\\\\Tables\\\\PageTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 6, 'Blog', 'primary', '2025-01-13 07:50:24', '2025-01-13 07:50:24'),
(283, 1, 'pages', '{\"ids\":[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Page\\\\Tables\\\\PageTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 5, 'Refund Policy', 'primary', '2025-01-13 07:50:24', '2025-01-13 07:50:24'),
(284, 1, 'pages', '{\"ids\":[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Page\\\\Tables\\\\PageTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 4, 'Terms & Conditions', 'primary', '2025-01-13 07:50:24', '2025-01-13 07:50:24'),
(285, 1, 'pages', '{\"ids\":[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Page\\\\Tables\\\\PageTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 3, 'Terms Of Use', 'primary', '2025-01-13 07:50:25', '2025-01-13 07:50:25'),
(286, 1, 'posts', '{\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"1\",\"2\",\"3\",\"4\",\"5\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 7, 'Essential Qualities of Highly Successful Music', 'primary', '2025-01-13 07:52:10', '2025-01-13 07:52:10'),
(287, 1, 'posts', '{\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"1\",\"2\",\"3\",\"4\",\"5\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 8, '9 Things I Love About Shaving My Head', 'primary', '2025-01-13 07:52:10', '2025-01-13 07:52:10'),
(288, 1, 'posts', '{\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"1\",\"2\",\"3\",\"4\",\"5\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 9, 'Why Teamwork Really Makes The Dream Work', 'primary', '2025-01-13 07:52:10', '2025-01-13 07:52:10'),
(289, 1, 'posts', '{\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"1\",\"2\",\"3\",\"4\",\"5\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 10, 'The World Caters to Average People', 'primary', '2025-01-13 07:52:10', '2025-01-13 07:52:10'),
(290, 1, 'posts', '{\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"1\",\"2\",\"3\",\"4\",\"5\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 11, 'The litigants on the screen are not actors', 'primary', '2025-01-13 07:52:10', '2025-01-13 07:52:10'),
(291, 1, 'posts', '{\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"1\",\"2\",\"3\",\"4\",\"5\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 1, '4 Expert Tips On How To Choose The Right Men’s Wallet', 'primary', '2025-01-13 07:52:10', '2025-01-13 07:52:10'),
(292, 1, 'posts', '{\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"1\",\"2\",\"3\",\"4\",\"5\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 2, 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag', 'primary', '2025-01-13 07:52:10', '2025-01-13 07:52:10'),
(293, 1, 'posts', '{\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"1\",\"2\",\"3\",\"4\",\"5\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 3, 'The Top 2020 Handbag Trends to Know', 'primary', '2025-01-13 07:52:11', '2025-01-13 07:52:11'),
(294, 1, 'posts', '{\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"1\",\"2\",\"3\",\"4\",\"5\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 4, 'How to Match the Color of Your Handbag With an Outfit', 'primary', '2025-01-13 07:52:11', '2025-01-13 07:52:11'),
(295, 1, 'posts', '{\"ids\":[\"7\",\"8\",\"9\",\"10\",\"11\",\"1\",\"2\",\"3\",\"4\",\"5\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 5, 'How to Care for Leather Bags', 'primary', '2025-01-13 07:52:11', '2025-01-13 07:52:11'),
(296, 1, 'tags', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Blog\\\\Tables\\\\TagTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 5, 'Modern', 'primary', '2025-01-13 07:53:52', '2025-01-13 07:53:52'),
(297, 1, 'tags', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Blog\\\\Tables\\\\TagTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 4, 'Branding', 'primary', '2025-01-13 07:53:52', '2025-01-13 07:53:52'),
(298, 1, 'tags', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Blog\\\\Tables\\\\TagTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 3, 'Fashion', 'primary', '2025-01-13 07:53:53', '2025-01-13 07:53:53'),
(299, 1, 'tags', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Blog\\\\Tables\\\\TagTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 2, 'Design', 'primary', '2025-01-13 07:53:53', '2025-01-13 07:53:53'),
(300, 1, 'tags', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Blog\\\\Tables\\\\TagTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 1, 'General', 'primary', '2025-01-13 07:53:53', '2025-01-13 07:53:53'),
(301, 1, 'ads', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"expired_at\",\"value\":\"2027-03-13\",\"class\":\"Botble\\\\Ads\\\\Tables\\\\AdsTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 5, 'Products list 1', 'primary', '2025-01-13 07:57:05', '2025-01-13 07:57:05'),
(302, 1, 'ads', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"expired_at\",\"value\":\"2027-03-13\",\"class\":\"Botble\\\\Ads\\\\Tables\\\\AdsTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 4, 'Homepage middle 3', 'primary', '2025-01-13 07:57:06', '2025-01-13 07:57:06'),
(303, 1, 'ads', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"expired_at\",\"value\":\"2027-03-13\",\"class\":\"Botble\\\\Ads\\\\Tables\\\\AdsTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 3, 'Homepage middle 2', 'primary', '2025-01-13 07:57:06', '2025-01-13 07:57:06'),
(304, 1, 'ads', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"expired_at\",\"value\":\"2027-03-13\",\"class\":\"Botble\\\\Ads\\\\Tables\\\\AdsTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 2, 'Homepage middle 1', 'primary', '2025-01-13 07:57:06', '2025-01-13 07:57:06'),
(305, 1, 'ads', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"expired_at\",\"value\":\"2027-03-13\",\"class\":\"Botble\\\\Ads\\\\Tables\\\\AdsTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 1, 'Top Slider Image 1', 'primary', '2025-01-13 07:57:06', '2025-01-13 07:57:06'),
(306, 1, 'simpleslideritem', '{\"simple_slider_id\":\"1\",\"title\":\"Slider 1\",\"link\":\"\\/products\",\"description\":null,\"order\":\"1\",\"image\":\"about-1.jpg\",\"tablet_image\":\"about-1.jpg\",\"mobile_image\":\"about-1.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 1, 'Slider 1', 'primary', '2025-01-13 08:00:47', '2025-01-13 08:00:47'),
(307, 1, 'simpleslideritem', '{\"simple_slider_id\":\"1\",\"title\":\"Slider 2\",\"link\":\"\\/products\",\"description\":null,\"order\":\"2\",\"image\":\"about-1.jpg\",\"tablet_image\":\"about-1.jpg\",\"mobile_image\":\"about-1.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 2, 'Slider 2', 'primary', '2025-01-13 08:05:31', '2025-01-13 08:05:31'),
(308, 1, 'simpleslider', '{\"name\":\"Home slider\",\"key\":\"home-slider\",\"description\":\"The main slider on homepage\",\"botble-simple-slider-tables-simple-slider-item-table_length\":\"10\",\"submitter\":\"apply\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 1, 'Home slider', 'primary', '2025-01-13 08:05:41', '2025-01-13 08:05:41'),
(309, 1, 'simpleslider', '{\"name\":\"Home slider\",\"key\":\"home-slider\",\"description\":\"The main slider on homepage\",\"botble-simple-slider-tables-simple-slider-item-table_length\":\"10\",\"submitter\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 1, 'Home slider', 'primary', '2025-01-13 08:06:30', '2025-01-13 08:06:30'),
(310, 1, 'simpleslideritem', '{\"_method\":\"delete\",\"ref_from\":\"1\",\"ref_lang\":\"en_US\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 2, 'Slider 2', 'danger', '2025-01-13 08:07:29', '2025-01-13 08:07:29'),
(311, 1, 'simpleslider', '{\"name\":\"Home slider\",\"key\":\"home-slider\",\"description\":\"The main slider on homepage\",\"botble-simple-slider-tables-simple-slider-item-table_length\":\"10\",\"submitter\":\"save\",\"language\":\"en_US\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 1, 'Home slider', 'primary', '2025-01-13 08:07:39', '2025-01-13 08:07:39'),
(312, 1, 'faqs', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Faq\\\\Tables\\\\FaqTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 10, 'ID: 10', 'primary', '2025-01-13 08:09:53', '2025-01-13 08:09:53'),
(313, 1, 'faqs', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Faq\\\\Tables\\\\FaqTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 9, 'ID: 9', 'primary', '2025-01-13 08:09:53', '2025-01-13 08:09:53'),
(314, 1, 'faqs', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Faq\\\\Tables\\\\FaqTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 8, 'ID: 8', 'primary', '2025-01-13 08:09:53', '2025-01-13 08:09:53'),
(315, 1, 'faqs', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Faq\\\\Tables\\\\FaqTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 7, 'ID: 7', 'primary', '2025-01-13 08:09:53', '2025-01-13 08:09:53'),
(316, 1, 'faqs', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Faq\\\\Tables\\\\FaqTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 6, 'ID: 6', 'primary', '2025-01-13 08:09:53', '2025-01-13 08:09:53'),
(317, 1, 'faqs', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Faq\\\\Tables\\\\FaqTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 5, 'ID: 5', 'primary', '2025-01-13 08:09:53', '2025-01-13 08:09:53'),
(318, 1, 'faqs', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Faq\\\\Tables\\\\FaqTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 4, 'ID: 4', 'primary', '2025-01-13 08:09:53', '2025-01-13 08:09:53'),
(319, 1, 'faqs', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Faq\\\\Tables\\\\FaqTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 3, 'ID: 3', 'primary', '2025-01-13 08:09:53', '2025-01-13 08:09:53'),
(320, 1, 'faqs', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Faq\\\\Tables\\\\FaqTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 2, 'ID: 2', 'primary', '2025-01-13 08:09:53', '2025-01-13 08:09:53'),
(321, 1, 'faqs', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Faq\\\\Tables\\\\FaqTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 1, 'ID: 1', 'primary', '2025-01-13 08:09:53', '2025-01-13 08:09:53'),
(322, 1, 'faq_categories', '{\"ids\":[\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Faq\\\\Tables\\\\FaqCategoryTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 3, 'ORDER & RETURNS', 'primary', '2025-01-13 08:11:09', '2025-01-13 08:11:09'),
(323, 1, 'faq_categories', '{\"ids\":[\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Faq\\\\Tables\\\\FaqCategoryTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 2, 'PAYMENT', 'primary', '2025-01-13 08:11:09', '2025-01-13 08:11:09'),
(324, 1, 'faq_categories', '{\"ids\":[\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Faq\\\\Tables\\\\FaqCategoryTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 1, 'SHIPPING', 'primary', '2025-01-13 08:11:09', '2025-01-13 08:11:09'),
(325, 1, 'menus', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Menu\\\\Tables\\\\MenuTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 5, 'Business', 'primary', '2025-01-13 08:14:48', '2025-01-13 08:14:48'),
(326, 1, 'menus', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Menu\\\\Tables\\\\MenuTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 4, 'Help Center', 'primary', '2025-01-13 08:14:48', '2025-01-13 08:14:48'),
(327, 1, 'menus', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Menu\\\\Tables\\\\MenuTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 3, 'Useful Links', 'primary', '2025-01-13 08:14:49', '2025-01-13 08:14:49'),
(328, 1, 'menus', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Menu\\\\Tables\\\\MenuTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 2, 'Header menu', 'primary', '2025-01-13 08:14:49', '2025-01-13 08:14:49'),
(329, 1, 'menus', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"key\":\"created_at\",\"value\":\"2025-01-13\",\"class\":\"Botble\\\\Menu\\\\Tables\\\\MenuTable\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 1, 'Main menu', 'primary', '2025-01-13 08:14:49', '2025-01-13 08:14:49'),
(330, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 1, 'Saiful Islam', 'info', '2025-01-13 10:54:34', '2025-01-13 10:54:34'),
(331, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 0, 1, 'Saiful Islam', 'info', '2025-01-13 13:18:39', '2025-01-13 13:18:39'),
(332, 1, 'product', '{\"name\":\"Maxine Hevenly\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"slug\":\"maxine-hevenly\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"description\":\"<p><img src=\\\"http:\\/\\/127.0.0.1:8000\\/storage\\/21.png\\\" alt=\\\"21\\\" loading=\\\"lazy\\\"><br>&nbsp;<\\/p>\",\"content\":null,\"images\":[null,\"21.png\"],\"video_media\":\"[]\",\"product_type\":\"physical\",\"sale_type\":\"0\",\"sku\":\"FM-2443-WAD1\",\"price\":\"14\",\"sale_price\":\"12.89\",\"start_date\":null,\"end_date\":null,\"cost_per_item\":\"0\",\"product_id\":null,\"barcode\":null,\"with_storehouse_management\":\"0\",\"quantity\":\"0\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"458\",\"length\":\"0\",\"wide\":\"0\",\"height\":\"0\",\"has_product_options\":\"1\",\"related_products\":null,\"faq_schema_config\":\"[]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"65\",\"66\"],\"image\":null,\"product_collections\":[\"1\",\"2\",\"3\"],\"product_labels\":[\"2\"],\"taxes\":[\"1\"],\"minimum_order_quantity\":\"1\",\"maximum_order_quantity\":\"12\",\"tag\":null,\"submitter\":\"apply\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 153, 'Maxine Hevenly', 'info', '2025-01-13 13:33:00', '2025-01-13 13:33:00'),
(333, 1, 'product', '{\"name\":\"Maxine Hevenly\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"slug\":\"maxine-hevenly\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"description\":\"<p><img src=\\\"http:\\/\\/127.0.0.1:8000\\/storage\\/21.png\\\" alt=\\\"21\\\" loading=\\\"lazy\\\"><br>&nbsp;<\\/p>\",\"content\":null,\"images\":[null,\"21.png\"],\"video_media\":\"[]\",\"product_type\":\"physical\",\"sale_type\":\"0\",\"sku\":\"FM-2443-WAD1\",\"price\":\"14\",\"sale_price\":\"12.89\",\"start_date\":null,\"end_date\":null,\"cost_per_item\":\"0\",\"product_id\":null,\"barcode\":null,\"with_storehouse_management\":\"0\",\"quantity\":\"0\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"458\",\"length\":\"0\",\"wide\":\"0\",\"height\":\"0\",\"has_product_options\":\"1\",\"related_products\":null,\"faq_schema_config\":\"[]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"submitter\":\"apply\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"65\",\"66\",\"80\"],\"image\":null,\"product_collections\":[\"1\",\"2\",\"3\"],\"product_labels\":[\"2\"],\"taxes\":[\"1\"],\"minimum_order_quantity\":\"1\",\"maximum_order_quantity\":\"12\",\"tag\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 154, 'Maxine Hevenly', 'info', '2025-01-13 13:33:08', '2025-01-13 13:33:08'),
(334, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 0, 1, 'Saiful Islam', 'info', '2025-01-14 00:21:06', '2025-01-14 00:21:06'),
(335, 1, 'product-category', '{\"order\":\"4\",\"name\":\"Smooth Drinks\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"slug\":\"smooth-drinks\",\"slug_id\":\"59\",\"is_slug_editable\":\"1\",\"parent_id\":\"0\",\"description\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"submitter\":\"save\",\"status\":\"published\",\"image\":\"product-categories\\/5.png\",\"icon\":\"icon-glass\",\"icon_image\":null,\"is_featured\":\"1\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 54, 'Smooth Drinks', 'primary', '2025-01-14 00:27:40', '2025-01-14 00:27:40'),
(336, 1, 'product', '{\"name\":\"Maxine Heavenly\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"slug\":\"maxine-heavenly\",\"slug_id\":\"288\",\"is_slug_editable\":\"1\",\"description\":\"<p><img src=\\\"http:\\/\\/127.0.0.1:8000\\/storage\\/21.png\\\" alt=\\\"21\\\" loading=\\\"lazy\\\"><br>&nbsp;<\\/p>\",\"content\":null,\"images\":[null,\"21.png\"],\"video_media\":\"[]\",\"product_type\":\"physical\",\"sale_type\":\"0\",\"sku\":\"FM-2443-WAD1\",\"price\":\"14\",\"sale_price\":\"12.89\",\"start_date\":null,\"end_date\":null,\"cost_per_item\":\"0\",\"product_id\":\"154\",\"barcode\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"100\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"458\",\"length\":\"0\",\"wide\":\"0\",\"height\":\"0\",\"has_product_options\":\"1\",\"related_products\":null,\"faq_schema_config\":[[{\"key\":\"question\",\"value\":null},{\"key\":\"answer\",\"value\":null}]],\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"65\",\"66\",\"80\"],\"image\":\"21.png\",\"product_collections\":[\"1\",\"2\",\"3\"],\"product_labels\":[\"2\"],\"taxes\":[\"1\"],\"minimum_order_quantity\":\"1\",\"maximum_order_quantity\":\"12\",\"tag\":null,\"submitter\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '127.0.0.1', 1, 154, 'Maxine Heavenly', 'primary', '2025-01-14 02:59:46', '2025-01-14 02:59:46');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(191) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Ecommerce', 0, 'Aut molestiae perspiciatis vel. In hic voluptatem in cum possimus. Est autem accusantium quam temporibus ullam reprehenderit.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(2, 'Fashion', 0, 'Quia aut iure sunt dolores voluptatem officiis ipsum tempora. Ex unde tenetur commodi ut sed laboriosam. Ducimus qui repellendus tempora pariatur neque aliquam. Qui quo sed aut.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(3, 'Electronic', 0, 'Natus iure rerum sapiente rerum. Et fugit reiciendis omnis dolor at ipsa inventore sit. Eius error aut pariatur rerum omnis doloremque exercitationem aut. Consectetur sed ut deleniti.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(4, 'Commercial', 0, 'Dolorem et accusantium ut. Consectetur laboriosam incidunt quis repudiandae. Nihil perferendis sit dolorem repellat animi sed. Ullam deserunt velit ad dolorem.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2024-08-21 20:36:24', '2024-08-21 20:36:24');

-- --------------------------------------------------------

--
-- Table structure for table `categories_translations`
--

CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) NOT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `record_id` varchar(40) DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities_translations`
--

CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) NOT NULL,
  `cities_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `slug` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `subject` varchar(120) DEFAULT NULL,
  `content` longtext NOT NULL,
  `custom_fields` text DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_fields`
--

CREATE TABLE `contact_custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL,
  `placeholder` varchar(191) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 999,
  `status` varchar(191) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_fields_translations`
--

CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(191) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `placeholder` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_field_options`
--

CREATE TABLE `contact_custom_field_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `value` varchar(191) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 999,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_field_options_translations`
--

CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(191) NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `value` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext NOT NULL,
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `nationality` varchar(120) DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries_translations`
--

CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) NOT NULL,
  `countries_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `nationality` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_1', '2025-01-13 06:45:58', '2025-01-13 06:45:58'),
(2, 'widget_total_2', '2025-01-13 06:45:58', '2025-01-13 06:45:58'),
(3, 'widget_total_3', '2025-01-13 06:45:58', '2025-01-13 06:45:58'),
(4, 'widget_total_4', '2025-01-13 06:45:58', '2025-01-13 06:45:58'),
(5, 'widget_total_themes', '2025-01-13 06:45:58', '2025-01-13 06:45:58'),
(6, 'widget_total_users', '2025-01-13 06:45:59', '2025-01-13 06:45:59'),
(7, 'widget_total_plugins', '2025-01-13 06:45:59', '2025-01-13 06:45:59'),
(8, 'widget_total_pages', '2025-01-13 06:45:59', '2025-01-13 06:45:59'),
(9, 'widget_posts_recent', '2025-01-13 06:45:59', '2025-01-13 06:45:59'),
(10, 'widget_audit_logs', '2025-01-13 06:46:00', '2025-01-13 06:46:00'),
(11, 'widget_ecommerce_report_general', '2025-01-13 06:46:00', '2025-01-13 06:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` bigint(20) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widget_settings`
--

INSERT INTO `dashboard_widget_settings` (`id`, `settings`, `user_id`, `widget_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 1, 0, 1, '2025-01-13 06:55:51', '2025-01-13 06:55:51'),
(2, NULL, 1, 2, 0, 1, '2025-01-13 06:55:51', '2025-01-13 06:55:51'),
(3, NULL, 1, 3, 0, 1, '2025-01-13 06:55:51', '2025-01-13 06:55:51'),
(4, NULL, 1, 4, 0, 1, '2025-01-13 06:55:51', '2025-01-13 06:55:51'),
(5, NULL, 1, 5, 1, 0, '2025-01-13 06:55:51', '2025-01-13 06:55:51'),
(6, NULL, 1, 6, 2, 0, '2025-01-13 06:55:51', '2025-01-13 06:55:51'),
(7, NULL, 1, 7, 3, 0, '2025-01-13 06:55:51', '2025-01-13 06:55:51'),
(8, NULL, 1, 8, 4, 0, '2025-01-13 06:55:51', '2025-01-13 06:55:51'),
(9, NULL, 1, 9, 0, 1, '2025-01-13 06:55:52', '2025-01-13 06:55:52'),
(10, NULL, 1, 10, 5, 0, '2025-01-13 06:55:52', '2025-01-13 06:55:52'),
(11, NULL, 1, 11, 0, 1, '2025-01-13 06:55:52', '2025-01-13 06:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands`
--

CREATE TABLE `ec_brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `website` varchar(191) DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands_translations`
--

CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_brands_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_cart`
--

CREATE TABLE `ec_cart` (
  `identifier` varchar(60) NOT NULL,
  `instance` varchar(60) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_currencies`
--

CREATE TABLE `ec_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `is_prefix_symbol` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `decimals` tinyint(3) UNSIGNED DEFAULT 0,
  `order` int(10) UNSIGNED DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `exchange_rate` double NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_currencies`
--

INSERT INTO `ec_currencies` (`id`, `title`, `symbol`, `is_prefix_symbol`, `decimals`, `order`, `is_default`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 1, 2, 0, 1, 1, '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(2, 'EUR', '€', 0, 2, 1, 0, 0.84, '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(3, 'VND', '₫', 0, 0, 2, 0, 23203, '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(4, 'NGN', '₦', 1, 2, 2, 0, 895.52, '2024-08-21 20:36:10', '2024-08-21 20:36:10');

-- --------------------------------------------------------

--
-- Table structure for table `ec_customers`
--

CREATE TABLE `ec_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'activated',
  `private_notes` text DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `vendor_verified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_addresses`
--

CREATE TABLE `ec_customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_deletion_requests`
--

CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(191) DEFAULT NULL,
  `customer_phone` varchar(191) DEFAULT NULL,
  `customer_email` varchar(191) DEFAULT NULL,
  `token` varchar(191) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_password_resets`
--

CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_used_coupons`
--

CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discounts`
--

CREATE TABLE `ec_discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_used` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `value` double DEFAULT NULL,
  `type` varchar(60) DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT 0,
  `discount_on` varchar(20) DEFAULT NULL,
  `product_quantity` int(10) UNSIGNED DEFAULT NULL,
  `type_option` varchar(100) NOT NULL DEFAULT 'amount',
  `target` varchar(100) NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT 0,
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_customers`
--

CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_products`
--

CREATE TABLE `ec_discount_products` (
  `discount_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_product_categories`
--

CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint(20) UNSIGNED NOT NULL,
  `product_category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_product_collections`
--

CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint(20) UNSIGNED NOT NULL,
  `product_collection_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales`
--

CREATE TABLE `ec_flash_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sales`
--

INSERT INTO `ec_flash_sales` (`id`, `name`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Winter Sale', '2024-09-21 00:00:00', 'published', '2025-01-12 18:00:00', '2025-01-13 07:46:42');

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales_translations`
--

CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_flash_sales_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sale_products`
--

CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` double UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `sold` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_global_options`
--

CREATE TABLE `ec_global_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_global_options`
--

INSERT INTO `ec_global_options` (`id`, `name`, `option_type`, `required`, `created_at`, `updated_at`) VALUES
(1, 'Warranty', 'Botble\\Ecommerce\\Option\\OptionType\\RadioButton', 1, '2025-01-12 18:00:00', '2025-01-13 07:41:41'),
(2, 'RAM', 'Botble\\Ecommerce\\Option\\OptionType\\RadioButton', 1, '2025-01-12 18:00:00', '2025-01-13 07:41:41'),
(3, 'CPU', 'Botble\\Ecommerce\\Option\\OptionType\\RadioButton', 1, '2025-01-12 18:00:00', '2025-01-13 07:41:41'),
(4, 'HDD', 'Botble\\Ecommerce\\Option\\OptionType\\Dropdown', 0, '2025-01-12 18:00:00', '2025-01-13 07:41:38');

-- --------------------------------------------------------

--
-- Table structure for table `ec_global_options_translations`
--

CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_global_options_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_global_option_value`
--

CREATE TABLE `ec_global_option_value` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_id` bigint(20) UNSIGNED NOT NULL COMMENT 'option id',
  `option_value` tinytext DEFAULT NULL COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int(11) NOT NULL DEFAULT 9999,
  `affect_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_global_option_value`
--

INSERT INTO `ec_global_option_value` (`id`, `option_id`, `option_value`, `affect_price`, `order`, `affect_type`, `created_at`, `updated_at`) VALUES
(1, 1, '1 Year', 0, 9999, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(2, 1, '2 Year', 10, 9999, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(3, 1, '3 Year', 20, 9999, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(4, 2, '4GB', 0, 9999, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(5, 2, '8GB', 10, 9999, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(6, 2, '16GB', 20, 9999, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(7, 3, 'Core i5', 0, 9999, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(8, 3, 'Core i7', 10, 9999, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(9, 3, 'Core i9', 20, 9999, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(10, 4, '128GB', 0, 9999, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(11, 4, '256GB', 10, 9999, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(12, 4, '512GB', 20, 9999, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10');

-- --------------------------------------------------------

--
-- Table structure for table `ec_global_option_value_translations`
--

CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_global_option_value_id` bigint(20) UNSIGNED NOT NULL,
  `option_value` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_grouped_products`
--

CREATE TABLE `ec_grouped_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_product_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `fixed_qty` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_invoices`
--

CREATE TABLE `ec_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(191) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `customer_name` varchar(191) DEFAULT NULL,
  `company_name` varchar(191) DEFAULT NULL,
  `company_logo` varchar(191) DEFAULT NULL,
  `customer_email` varchar(191) DEFAULT NULL,
  `customer_phone` varchar(191) DEFAULT NULL,
  `customer_address` varchar(191) DEFAULT NULL,
  `customer_tax_id` varchar(191) DEFAULT NULL,
  `sub_total` decimal(15,2) UNSIGNED NOT NULL,
  `tax_amount` decimal(15,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `shipping_amount` decimal(15,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(15,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `shipping_option` varchar(60) DEFAULT NULL,
  `shipping_method` varchar(60) NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) DEFAULT NULL,
  `discount_description` varchar(191) DEFAULT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_invoice_items`
--

CREATE TABLE `ec_invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(191) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `sub_total` decimal(15,2) UNSIGNED NOT NULL,
  `tax_amount` decimal(15,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(15,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_options`
--

CREATE TABLE `ec_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) DEFAULT NULL COMMENT 'option type',
  `product_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 9999,
  `required` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_options_translations`
--

CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_options_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_option_value`
--

CREATE TABLE `ec_option_value` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_id` bigint(20) UNSIGNED NOT NULL COMMENT 'option id',
  `option_value` tinytext DEFAULT NULL COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int(11) NOT NULL DEFAULT 9999,
  `affect_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_option_value_translations`
--

CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_option_value_id` bigint(20) UNSIGNED NOT NULL,
  `option_value` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_orders`
--

CREATE TABLE `ec_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `shipping_option` varchar(60) DEFAULT NULL,
  `shipping_method` varchar(60) NOT NULL DEFAULT 'default',
  `status` varchar(120) NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `coupon_code` varchar(120) DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_description` varchar(191) DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT 0,
  `cancellation_reason` varchar(191) DEFAULT NULL,
  `cancellation_reason_description` varchar(191) DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) DEFAULT NULL,
  `payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_addresses`
--

CREATE TABLE `ec_order_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `type` varchar(60) NOT NULL DEFAULT 'shipping_address'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_histories`
--

CREATE TABLE `ec_order_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `extras` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_product`
--

CREATE TABLE `ec_order_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text DEFAULT NULL,
  `product_options` text DEFAULT NULL COMMENT 'product option data',
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(191) NOT NULL,
  `product_image` varchar(191) DEFAULT NULL,
  `weight` double(8,2) DEFAULT 0.00,
  `restock_quantity` int(10) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) NOT NULL DEFAULT 'physical',
  `times_downloaded` int(11) NOT NULL DEFAULT 0,
  `license_code` char(36) DEFAULT NULL,
  `downloaded_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_referrals`
--

CREATE TABLE `ec_order_referrals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(39) DEFAULT NULL,
  `landing_domain` varchar(191) DEFAULT NULL,
  `landing_page` varchar(191) DEFAULT NULL,
  `landing_params` varchar(191) DEFAULT NULL,
  `referral` varchar(191) DEFAULT NULL,
  `gclid` varchar(191) DEFAULT NULL,
  `fclid` varchar(191) DEFAULT NULL,
  `utm_source` varchar(191) DEFAULT NULL,
  `utm_campaign` varchar(191) DEFAULT NULL,
  `utm_medium` varchar(191) DEFAULT NULL,
  `utm_term` varchar(191) DEFAULT NULL,
  `utm_content` varchar(191) DEFAULT NULL,
  `referrer_url` text DEFAULT NULL,
  `referrer_domain` varchar(191) DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_returns`
--

CREATE TABLE `ec_order_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Order ID',
  `store_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Customer ID',
  `reason` text DEFAULT NULL COMMENT 'Reason return order',
  `order_status` varchar(191) DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_return_histories`
--

CREATE TABLE `ec_order_return_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_return_id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `reason` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_return_items`
--

CREATE TABLE `ec_order_return_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_return_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Order product id',
  `product_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) NOT NULL,
  `product_image` varchar(191) DEFAULT NULL,
  `qty` int(11) NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_tax_information`
--

CREATE TABLE `ec_order_tax_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(120) NOT NULL,
  `company_address` varchar(191) NOT NULL,
  `company_tax_code` varchar(20) NOT NULL,
  `company_email` varchar(60) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_products`
--

CREATE TABLE `ec_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `images` text DEFAULT NULL,
  `video_media` text DEFAULT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `with_storehouse_management` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_variation` tinyint(4) NOT NULL DEFAULT 0,
  `sale_type` tinyint(4) NOT NULL DEFAULT 0,
  `price` double UNSIGNED DEFAULT NULL,
  `sale_price` double UNSIGNED DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) DEFAULT 'in_stock',
  `created_by_id` bigint(20) UNSIGNED DEFAULT 0,
  `created_by_type` varchar(191) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(191) DEFAULT NULL,
  `product_type` varchar(60) DEFAULT 'physical',
  `barcode` varchar(50) DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT 0,
  `minimum_order_quantity` int(10) UNSIGNED DEFAULT 0,
  `maximum_order_quantity` int(10) UNSIGNED DEFAULT 0,
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT 0,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_by` bigint(20) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_products`
--

INSERT INTO `ec_products` (`id`, `name`, `description`, `content`, `status`, `images`, `video_media`, `sku`, `order`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `is_featured`, `brand_id`, `is_variation`, `sale_type`, `price`, `sale_price`, `start_date`, `end_date`, `length`, `wide`, `height`, `weight`, `tax_id`, `views`, `created_at`, `updated_at`, `stock_status`, `created_by_id`, `created_by_type`, `image`, `product_type`, `barcode`, `cost_per_item`, `generate_license_code`, `minimum_order_quantity`, `maximum_order_quantity`, `notify_attachment_updated`, `store_id`, `approved_by`) VALUES
(153, 'Maxine Hevenly', '<p><img src=\"http://127.0.0.1:8000/storage/21.png\" alt=\"21\" loading=\"lazy\"><br> </p>', '', 'published', '[\"21.png\"]', '\"[]\"', 'FM-2443-WAD1', 0, 0, 0, 0, 0, NULL, 0, 0, 14, 12.89, NULL, NULL, 0.00, 0.00, 0.00, 458.00, NULL, 0, '2025-01-13 13:32:59', '2025-01-13 13:32:59', 'in_stock', 1, 'Botble\\ACL\\Models\\User', NULL, 'physical', NULL, 0, 0, 1, 12, 0, NULL, 0),
(154, 'Maxine Heavenly', '<p><img src=\"http://127.0.0.1:8000/storage/21.png\" alt=\"21\" loading=\"lazy\"><br> </p>', '', 'published', '[\"21.png\"]', '\"[]\"', 'FM-2443-WAD1', 0, 100, 0, 1, 0, NULL, 0, 0, 14, 12.89, NULL, NULL, 0.00, 0.00, 0.00, 458.00, NULL, 0, '2025-01-13 13:33:08', '2025-01-14 02:59:46', 'in_stock', 1, 'Botble\\ACL\\Models\\User', '21.png', 'physical', NULL, 0, 0, 1, 12, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_products_translations`
--

CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_products_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes`
--

CREATE TABLE `ec_product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_set_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes_translations`
--

CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_attributes_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets`
--

CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `display_layout` varchar(191) NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_comparable` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_use_in_product_listing` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_attribute_sets_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories`
--

CREATE TABLE `ec_product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `description` mediumtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `icon_image` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_categories`
--

INSERT INTO `ec_product_categories` (`id`, `name`, `parent_id`, `description`, `status`, `order`, `image`, `is_featured`, `created_at`, `updated_at`, `icon`, `icon_image`) VALUES
(1, 'Fruits & Vegetables', 0, NULL, 'published', 0, 'product-categories/1.png', 1, '2024-08-21 20:36:10', '2024-08-21 20:36:10', 'icon-star', NULL),
(2, 'Fruits', 1, NULL, 'published', 0, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(3, 'Apples', 2, NULL, 'published', 0, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(4, 'Bananas', 2, NULL, 'published', 1, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(5, 'Berries', 2, NULL, 'published', 2, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(6, 'Oranges & Easy Peelers', 2, NULL, 'published', 3, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(7, 'Grapes', 2, NULL, 'published', 4, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(8, 'Lemons & Limes', 2, NULL, 'published', 5, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(9, 'Peaches & Nectarines', 2, NULL, 'published', 6, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(10, 'Pears', 2, NULL, 'published', 7, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(11, 'Melon', 2, NULL, 'published', 8, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(12, 'Avocados', 2, NULL, 'published', 9, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(13, 'Plums & Apricots', 2, NULL, 'published', 10, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(14, 'Vegetables', 1, NULL, 'published', 1, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(15, 'Potatoes', 14, NULL, 'published', 0, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(16, 'Carrots & Root Vegetables', 14, NULL, 'published', 1, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(17, 'Broccoli & Cauliflower', 14, NULL, 'published', 2, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(18, 'Cabbage, Spinach & Greens', 14, NULL, 'published', 3, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(19, 'Onions, Leeks & Garlic', 14, NULL, 'published', 4, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(20, 'Mushrooms', 14, NULL, 'published', 5, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(21, 'Tomatoes', 14, NULL, 'published', 6, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(22, 'Beans, Peas & Sweetcorn', 14, NULL, 'published', 7, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(23, 'Freshly Drink Orange Juice', 14, NULL, 'published', 8, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(24, 'Breads Sweets', 0, NULL, 'published', 1, 'product-categories/2.png', 1, '2024-08-21 20:36:10', '2024-08-21 20:36:10', 'icon-bread', NULL),
(25, 'Crisps, Snacks & Nuts', 24, NULL, 'published', 0, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(26, 'Crisps & Popcorn', 25, NULL, 'published', 0, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(27, 'Nuts & Seeds', 25, NULL, 'published', 1, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(28, 'Lighter Options', 25, NULL, 'published', 2, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(29, 'Cereal Bars', 25, NULL, 'published', 3, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(30, 'Breadsticks & Pretzels', 25, NULL, 'published', 4, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(31, 'Fruit Snacking', 25, NULL, 'published', 5, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(32, 'Rice & Corn Cakes', 25, NULL, 'published', 6, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(33, 'Protein & Energy Snacks', 25, NULL, 'published', 7, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(34, 'Toddler Snacks', 25, NULL, 'published', 8, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(35, 'Meat Snacks', 25, NULL, 'published', 9, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(36, 'Beans', 25, NULL, 'published', 10, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(37, 'Lentils', 25, NULL, 'published', 11, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(38, 'Chickpeas', 25, NULL, 'published', 12, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(39, 'Tins & Cans', 24, NULL, 'published', 1, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(40, 'Tomatoes', 39, NULL, 'published', 0, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(41, 'Baked Beans, Spaghetti', 39, NULL, 'published', 1, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(42, 'Fish', 39, NULL, 'published', 2, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(43, 'Beans & Pulses', 39, NULL, 'published', 3, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(44, 'Fruit', 39, NULL, 'published', 4, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(45, 'Coconut Milk & Cream', 39, NULL, 'published', 5, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(46, 'Lighter Options', 39, NULL, 'published', 6, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(47, 'Olives', 39, NULL, 'published', 7, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(48, 'Sweetcorn', 39, NULL, 'published', 8, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(49, 'Carrots', 39, NULL, 'published', 9, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(50, 'Peas', 39, NULL, 'published', 10, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(51, 'Mixed Vegetables', 39, NULL, 'published', 11, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(52, 'Frozen Seafoods', 0, NULL, 'published', 2, 'product-categories/3.png', 1, '2024-08-21 20:36:10', '2024-08-21 20:36:10', 'icon-hamburger', NULL),
(53, 'Raw Meats', 0, NULL, 'published', 3, 'product-categories/4.png', 1, '2024-08-21 20:36:10', '2024-08-21 20:36:10', 'icon-steak', NULL),
(54, 'Smooth Drinks', 0, NULL, 'published', 4, 'product-categories/5.png', 1, '2024-08-21 20:36:10', '2025-01-14 00:27:39', 'icon-glass', NULL),
(55, 'Ready Meals', 54, NULL, 'published', 0, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(56, 'Meals for 1', 55, NULL, 'published', 0, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(57, 'Meals for 2', 55, NULL, 'published', 1, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(58, 'Indian', 55, NULL, 'published', 2, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(59, 'Italian', 55, NULL, 'published', 3, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(60, 'Chinese', 55, NULL, 'published', 4, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(61, 'Traditional British', 55, NULL, 'published', 5, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(62, 'Thai & Oriental', 55, NULL, 'published', 6, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(63, 'Mediterranean & Moroccan', 55, NULL, 'published', 7, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(64, 'Mexican & Caribbean', 55, NULL, 'published', 8, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(65, 'Lighter Meals', 55, NULL, 'published', 9, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(66, 'Lunch & Veg Pots', 55, NULL, 'published', 10, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(67, 'Salad & Herbs', 54, NULL, 'published', 1, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(68, 'Salad Bags', 67, NULL, 'published', 0, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(69, 'Cucumber', 67, NULL, 'published', 1, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(70, 'Tomatoes', 67, NULL, 'published', 2, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(71, 'Lettuce', 67, NULL, 'published', 3, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(72, 'Lunch Salad Bowls', 67, NULL, 'published', 4, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(73, 'Lunch Salad Bowls', 67, NULL, 'published', 5, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(74, 'Fresh Herbs', 67, NULL, 'published', 6, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(75, 'Avocados', 67, NULL, 'published', 7, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(76, 'Peppers', 67, NULL, 'published', 8, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(77, 'Coleslaw & Potato Salad', 67, NULL, 'published', 9, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(78, 'Spring Onions', 67, NULL, 'published', 10, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(79, 'Chilli, Ginger & Garlic', 67, NULL, 'published', 11, NULL, 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, NULL),
(80, 'Tea & Coffee', 0, NULL, 'published', 5, 'product-categories/6.png', 1, '2024-08-21 20:36:10', '2024-08-21 20:36:10', 'icon-teacup', NULL),
(81, 'Milks and Dairies', 0, NULL, 'published', 6, 'product-categories/7.png', 1, '2024-08-21 20:36:10', '2024-08-21 20:36:10', 'icon-coffee-cup', NULL),
(82, 'Pet Foods', 0, NULL, 'published', 7, 'product-categories/8.png', 1, '2024-08-21 20:36:10', '2024-08-21 20:36:10', 'icon-hotdog', NULL),
(83, 'Food Cupboard', 0, NULL, 'published', 8, 'product-categories/1.png', 1, '2024-08-21 20:36:10', '2024-08-21 20:36:10', 'icon-cheese', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories_translations`
--

CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_categories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categorizables`
--

CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_category_product`
--

CREATE TABLE `ec_product_category_product` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_category_product`
--

INSERT INTO `ec_product_category_product` (`category_id`, `product_id`) VALUES
(55, 153),
(56, 153),
(57, 153),
(58, 153),
(59, 153),
(60, 153),
(61, 153),
(62, 153),
(63, 153),
(64, 153),
(65, 153),
(66, 153),
(55, 154),
(56, 154),
(57, 154),
(58, 154),
(59, 154),
(60, 154),
(61, 154),
(62, 154),
(63, 154),
(64, 154),
(65, 154),
(66, 154),
(80, 154);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections`
--

CREATE TABLE `ec_product_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collections`
--

INSERT INTO `ec_product_collections` (`id`, `name`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`, `is_featured`) VALUES
(1, 'New Arrival', 'new-arrival', NULL, NULL, 'published', '2025-01-12 18:00:00', '2025-01-13 07:43:06', 0),
(2, 'Best Sellers', 'best-sellers', NULL, NULL, 'published', '2025-01-12 18:00:00', '2025-01-13 07:43:05', 0),
(3, 'Special Offer', 'special-offer', NULL, NULL, 'published', '2025-01-12 18:00:00', '2025-01-13 07:43:05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections_translations`
--

CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_collections_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collection_products`
--

CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collection_products`
--

INSERT INTO `ec_product_collection_products` (`product_collection_id`, `product_id`) VALUES
(1, 153),
(2, 153),
(3, 153),
(1, 154),
(2, 154),
(3, 154);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_cross_sale_relations`
--

CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint(20) UNSIGNED NOT NULL,
  `to_product_id` bigint(20) UNSIGNED NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT 0,
  `price` decimal(15,2) DEFAULT 0.00,
  `price_type` varchar(191) NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_files`
--

CREATE TABLE `ec_product_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `url` varchar(400) DEFAULT NULL,
  `extras` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels`
--

CREATE TABLE `ec_product_labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `color` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_labels`
--

INSERT INTO `ec_product_labels` (`id`, `name`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hot', '#d71e2d', 'published', '2025-01-12 18:00:00', '2025-01-13 07:44:05'),
(2, 'New', '#02856e', 'published', '2025-01-12 18:00:00', '2025-01-13 07:44:05'),
(3, 'Sale', '#fe9931', 'published', '2025-01-12 18:00:00', '2025-01-13 07:44:05');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels_translations`
--

CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_labels_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_label_products`
--

CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_label_products`
--

INSERT INTO `ec_product_label_products` (`product_label_id`, `product_id`) VALUES
(2, 153),
(2, 154);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_related_relations`
--

CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint(20) UNSIGNED NOT NULL,
  `to_product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tags`
--

CREATE TABLE `ec_product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tags_translations`
--

CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_tags_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tag_product`
--

CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_up_sale_relations`
--

CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint(20) UNSIGNED NOT NULL,
  `to_product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variations`
--

CREATE TABLE `ec_product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `configurable_product_id` bigint(20) UNSIGNED NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variation_items`
--

CREATE TABLE `ec_product_variation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_views`
--

CREATE TABLE `ec_product_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `views` int(11) NOT NULL DEFAULT 1,
  `date` date NOT NULL DEFAULT '2024-08-22'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_with_attribute_set`
--

CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_reviews`
--

CREATE TABLE `ec_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_name` varchar(191) DEFAULT NULL,
  `customer_email` varchar(191) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_review_replies`
--

CREATE TABLE `ec_review_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `review_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_shared_wishlists`
--

CREATE TABLE `ec_shared_wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `product_ids` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipments`
--

CREATE TABLE `ec_shipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `weight` double(8,2) DEFAULT 0.00,
  `shipment_id` varchar(120) DEFAULT NULL,
  `rate_id` varchar(120) DEFAULT NULL,
  `note` varchar(120) DEFAULT NULL,
  `status` varchar(120) NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT 0.00,
  `cod_status` varchar(60) NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT 0.00,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) DEFAULT NULL,
  `shipping_company_name` varchar(191) DEFAULT NULL,
  `tracking_link` varchar(191) DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `customer_delivered_confirmed_at` timestamp NULL DEFAULT NULL,
  `label_url` text DEFAULT NULL,
  `metadata` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipment_histories`
--

CREATE TABLE `ec_shipment_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipment_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping`
--

CREATE TABLE `ec_shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `country` varchar(120) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping`
--

INSERT INTO `ec_shipping` (`id`, `title`, `country`, `created_at`, `updated_at`) VALUES
(1, 'All', NULL, '2024-08-21 20:36:13', '2024-08-21 20:36:13');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rules`
--

CREATE TABLE `ec_shipping_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `shipping_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(24) DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT 0.00,
  `to` decimal(15,2) DEFAULT 0.00,
  `price` decimal(15,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping_rules`
--

INSERT INTO `ec_shipping_rules` (`id`, `name`, `shipping_id`, `type`, `from`, `to`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Free delivery', 1, 'based_on_price', 1000.00, NULL, 0.00, '2024-08-21 20:36:13', '2024-08-21 20:36:13'),
(2, 'Flat Rate', 1, 'based_on_price', 0.00, NULL, 20.00, '2024-08-21 20:36:13', '2024-08-21 20:36:13'),
(3, 'Local Pickup', 1, 'based_on_price', 0.00, NULL, 0.00, '2024-08-21 20:36:13', '2024-08-21 20:36:13');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rule_items`
--

CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_rule_id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT 0.00,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_store_locators`
--

CREATE TABLE `ec_store_locators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(191) NOT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT 0,
  `is_shipping_location` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_store_locators`
--

INSERT INTO `ec_store_locators` (`id`, `name`, `email`, `phone`, `address`, `country`, `state`, `city`, `is_primary`, `is_shipping_location`, `created_at`, `updated_at`, `zip_code`) VALUES
(1, 'Farmart', 'sales@botble.com', '1800979769', '502 New Street', 'AU', 'Brighton VIC', 'Brighton VIC', 1, 1, '2024-08-21 20:36:22', '2024-08-21 20:36:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_taxes`
--

CREATE TABLE `ec_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_taxes`
--

INSERT INTO `ec_taxes` (`id`, `title`, `percentage`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 'VAT', 10.000000, 1, 'published', '2024-08-21 20:36:13', '2024-08-21 20:36:13'),
(2, 'None', 0.000000, 2, 'published', '2024-08-21 20:36:13', '2024-08-21 20:36:13'),
(3, 'Import Tax', 15.000000, 3, 'published', '2024-08-21 20:36:13', '2024-08-21 20:36:13');

-- --------------------------------------------------------

--
-- Table structure for table `ec_tax_products`
--

CREATE TABLE `ec_tax_products` (
  `tax_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_tax_products`
--

INSERT INTO `ec_tax_products` (`tax_id`, `product_id`) VALUES
(1, 153),
(1, 154);

-- --------------------------------------------------------

--
-- Table structure for table `ec_tax_rules`
--

CREATE TABLE `ec_tax_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tax_id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_wish_lists`
--

CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'What Shipping Methods Are Available?', 'Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.', 1, 'published', '2025-01-12 18:00:00', '2025-01-13 08:09:53'),
(2, 'Do You Ship Internationally?', 'Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.', 1, 'published', '2025-01-12 18:00:00', '2025-01-13 08:09:53'),
(3, 'How Long Will It Take To Get My Package?', 'Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.', 1, 'published', '2025-01-12 18:00:00', '2025-01-13 08:09:53'),
(4, 'What Payment Methods Are Accepted?', 'Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.', 2, 'published', '2025-01-12 18:00:00', '2025-01-13 08:09:53'),
(5, 'Is Buying On-Line Safe?', 'Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.', 2, 'published', '2025-01-12 18:00:00', '2025-01-13 08:09:53'),
(6, 'How do I place an Order?', 'Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.', 3, 'published', '2025-01-12 18:00:00', '2025-01-13 08:09:53'),
(7, 'How Can I Cancel Or Change My Order?', 'Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.', 3, 'published', '2025-01-12 18:00:00', '2025-01-13 08:09:53'),
(8, 'Do I need an account to place an order?', 'Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.', 3, 'published', '2025-01-12 18:00:00', '2025-01-13 08:09:53'),
(9, 'How Do I Track My Order?', 'Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.', 3, 'published', '2025-01-12 18:00:00', '2025-01-13 08:09:53'),
(10, 'How Can I Return a Product?', 'Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.', 3, 'published', '2025-01-12 18:00:00', '2025-01-13 08:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `faqs_translations`
--

CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) NOT NULL,
  `faqs_id` bigint(20) UNSIGNED NOT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `order`, `status`, `created_at`, `updated_at`, `description`) VALUES
(1, 'SHIPPING', 0, 'published', '2025-01-12 18:00:00', '2025-01-13 08:11:09', NULL),
(2, 'PAYMENT', 1, 'published', '2025-01-12 18:00:00', '2025-01-13 08:11:09', NULL),
(3, 'ORDER &amp; RETURNS', 2, 'published', '2025-01-12 18:00:00', '2025-01-13 08:11:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories_translations`
--

CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) NOT NULL,
  `faq_categories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `lang_name` varchar(120) NOT NULL,
  `lang_locale` varchar(20) NOT NULL,
  `lang_code` varchar(20) NOT NULL,
  `lang_flag` varchar(20) DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` bigint(20) UNSIGNED NOT NULL,
  `lang_meta_code` varchar(20) DEFAULT NULL,
  `lang_meta_origin` varchar(32) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'en_US', 'abc6f1006b9349b868d5adcc83524313', 1, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(2, 'en_US', 'bb171c142c0a1fedb6c7438f07ecef55', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(3, 'en_US', '5019f5cd1a550cbf386ff91f2cf52834', 1, 'Botble\\Menu\\Models\\Menu'),
(4, 'en_US', 'a412f1bd3e42ac7707635ae962b668df', 2, 'Botble\\Menu\\Models\\MenuLocation'),
(5, 'en_US', 'bae5413b2db597c58834e3895c818553', 2, 'Botble\\Menu\\Models\\Menu'),
(6, 'en_US', '355f3b26cf515142b7b76318df2993a9', 3, 'Botble\\Menu\\Models\\Menu'),
(7, 'en_US', '4d315d9e47a417ef116ad61a6b04c708', 4, 'Botble\\Menu\\Models\\Menu'),
(8, 'en_US', '6cd4801f599325a85a6ee48c92bbbba2', 5, 'Botble\\Menu\\Models\\Menu');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `alt` varchar(191) DEFAULT NULL,
  `folder_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(120) NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(191) NOT NULL,
  `options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) NOT NULL DEFAULT 'public'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `alt`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `visibility`) VALUES
(1, 0, '1', '1', 1, 'image/png', 5403, 'brands/1.png', '[]', '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, 'public'),
(2, 0, '2', '2', 1, 'image/png', 5403, 'brands/2.png', '[]', '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, 'public'),
(3, 0, '3', '3', 1, 'image/png', 5403, 'brands/3.png', '[]', '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, 'public'),
(4, 0, '4', '4', 1, 'image/png', 5403, 'brands/4.png', '[]', '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, 'public'),
(5, 0, '1', '1', 2, 'image/png', 5327, 'product-categories/1.png', '[]', '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, 'public'),
(6, 0, '2', '2', 2, 'image/png', 5327, 'product-categories/2.png', '[]', '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, 'public'),
(7, 0, '3', '3', 2, 'image/png', 5327, 'product-categories/3.png', '[]', '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, 'public'),
(8, 0, '4', '4', 2, 'image/png', 5327, 'product-categories/4.png', '[]', '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, 'public'),
(9, 0, '5', '5', 2, 'image/png', 5327, 'product-categories/5.png', '[]', '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, 'public'),
(10, 0, '6', '6', 2, 'image/png', 5327, 'product-categories/6.png', '[]', '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, 'public'),
(11, 0, '7', '7', 2, 'image/png', 5327, 'product-categories/7.png', '[]', '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, 'public'),
(12, 0, '8', '8', 2, 'image/png', 5327, 'product-categories/8.png', '[]', '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, 'public'),
(13, 0, '1', '1', 3, 'image/jpeg', 9803, 'customers/1.jpg', '[]', '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, 'public'),
(14, 0, '10', '10', 3, 'image/jpeg', 9803, 'customers/10.jpg', '[]', '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, 'public'),
(15, 0, '2', '2', 3, 'image/jpeg', 9803, 'customers/2.jpg', '[]', '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, 'public'),
(16, 0, '3', '3', 3, 'image/jpeg', 9803, 'customers/3.jpg', '[]', '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL, 'public'),
(17, 0, '4', '4', 3, 'image/jpeg', 9803, 'customers/4.jpg', '[]', '2024-08-21 20:36:11', '2024-08-21 20:36:11', NULL, 'public'),
(18, 0, '5', '5', 3, 'image/jpeg', 9803, 'customers/5.jpg', '[]', '2024-08-21 20:36:11', '2024-08-21 20:36:11', NULL, 'public'),
(19, 0, '6', '6', 3, 'image/jpeg', 9803, 'customers/6.jpg', '[]', '2024-08-21 20:36:11', '2024-08-21 20:36:11', NULL, 'public'),
(20, 0, '7', '7', 3, 'image/jpeg', 9803, 'customers/7.jpg', '[]', '2024-08-21 20:36:11', '2024-08-21 20:36:11', NULL, 'public'),
(21, 0, '8', '8', 3, 'image/jpeg', 9803, 'customers/8.jpg', '[]', '2024-08-21 20:36:11', '2024-08-21 20:36:11', NULL, 'public'),
(22, 0, '9', '9', 3, 'image/jpeg', 9803, 'customers/9.jpg', '[]', '2024-08-21 20:36:11', '2024-08-21 20:36:11', NULL, 'public'),
(23, 0, '1', '1', 4, 'image/jpeg', 9803, 'products/1.jpg', '[]', '2024-08-21 20:36:13', '2024-08-21 20:36:13', NULL, 'public'),
(24, 0, '10-1', '10-1', 4, 'image/jpeg', 9803, 'products/10-1.jpg', '[]', '2024-08-21 20:36:13', '2024-08-21 20:36:13', NULL, 'public'),
(25, 0, '10-2', '10-2', 4, 'image/jpeg', 9803, 'products/10-2.jpg', '[]', '2024-08-21 20:36:13', '2024-08-21 20:36:13', NULL, 'public'),
(26, 0, '10', '10', 4, 'image/jpeg', 9803, 'products/10.jpg', '[]', '2024-08-21 20:36:13', '2024-08-21 20:36:13', NULL, 'public'),
(27, 0, '11-1', '11-1', 4, 'image/jpeg', 9803, 'products/11-1.jpg', '[]', '2024-08-21 20:36:13', '2024-08-21 20:36:13', NULL, 'public'),
(28, 0, '11-2', '11-2', 4, 'image/jpeg', 9803, 'products/11-2.jpg', '[]', '2024-08-21 20:36:13', '2024-08-21 20:36:13', NULL, 'public'),
(29, 0, '11-3', '11-3', 4, 'image/jpeg', 9803, 'products/11-3.jpg', '[]', '2024-08-21 20:36:13', '2024-08-21 20:36:13', NULL, 'public'),
(30, 0, '11', '11', 4, 'image/jpeg', 9803, 'products/11.jpg', '[]', '2024-08-21 20:36:13', '2024-08-21 20:36:13', NULL, 'public'),
(31, 0, '12-1', '12-1', 4, 'image/jpeg', 9803, 'products/12-1.jpg', '[]', '2024-08-21 20:36:13', '2024-08-21 20:36:13', NULL, 'public'),
(32, 0, '12-2', '12-2', 4, 'image/jpeg', 9803, 'products/12-2.jpg', '[]', '2024-08-21 20:36:13', '2024-08-21 20:36:13', NULL, 'public'),
(33, 0, '12-3', '12-3', 4, 'image/jpeg', 9803, 'products/12-3.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(34, 0, '12', '12', 4, 'image/jpeg', 9803, 'products/12.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(35, 0, '13-1', '13-1', 4, 'image/jpeg', 9803, 'products/13-1.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(36, 0, '13', '13', 4, 'image/jpeg', 9803, 'products/13.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(37, 0, '14', '14', 4, 'image/jpeg', 9803, 'products/14.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(38, 0, '15-1', '15-1', 4, 'image/jpeg', 9803, 'products/15-1.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(39, 0, '15', '15', 4, 'image/jpeg', 9803, 'products/15.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(40, 0, '16', '16', 4, 'image/jpeg', 9803, 'products/16.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(41, 0, '17-1', '17-1', 4, 'image/jpeg', 9803, 'products/17-1.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(42, 0, '17-2', '17-2', 4, 'image/jpeg', 9803, 'products/17-2.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(43, 0, '17-3', '17-3', 4, 'image/jpeg', 9803, 'products/17-3.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(44, 0, '17', '17', 4, 'image/jpeg', 9803, 'products/17.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(45, 0, '18-1', '18-1', 4, 'image/jpeg', 9803, 'products/18-1.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(46, 0, '18-2', '18-2', 4, 'image/jpeg', 9803, 'products/18-2.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(47, 0, '18-3', '18-3', 4, 'image/jpeg', 9803, 'products/18-3.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(48, 0, '18', '18', 4, 'image/jpeg', 9803, 'products/18.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(49, 0, '19-1', '19-1', 4, 'image/jpeg', 9803, 'products/19-1.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(50, 0, '19-2', '19-2', 4, 'image/jpeg', 9803, 'products/19-2.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(51, 0, '19-3', '19-3', 4, 'image/jpeg', 9803, 'products/19-3.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(52, 0, '19', '19', 4, 'image/jpeg', 9803, 'products/19.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(53, 0, '2-1', '2-1', 4, 'image/jpeg', 9803, 'products/2-1.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(54, 0, '2-2', '2-2', 4, 'image/jpeg', 9803, 'products/2-2.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(55, 0, '2-3', '2-3', 4, 'image/jpeg', 9803, 'products/2-3.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(56, 0, '2', '2', 4, 'image/jpeg', 9803, 'products/2.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(57, 0, '20-1', '20-1', 4, 'image/jpeg', 9803, 'products/20-1.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(58, 0, '20-2', '20-2', 4, 'image/jpeg', 9803, 'products/20-2.jpg', '[]', '2024-08-21 20:36:14', '2024-08-21 20:36:14', NULL, 'public'),
(59, 0, '20-3', '20-3', 4, 'image/jpeg', 9803, 'products/20-3.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(60, 0, '20', '20', 4, 'image/jpeg', 9803, 'products/20.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(61, 0, '21-1', '21-1', 4, 'image/jpeg', 9803, 'products/21-1.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(62, 0, '21-2', '21-2', 4, 'image/jpeg', 9803, 'products/21-2.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(63, 0, '21', '21', 4, 'image/jpeg', 9803, 'products/21.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(64, 0, '22-1', '22-1', 4, 'image/jpeg', 9803, 'products/22-1.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(65, 0, '22-2', '22-2', 4, 'image/jpeg', 9803, 'products/22-2.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(66, 0, '22-3', '22-3', 4, 'image/jpeg', 9803, 'products/22-3.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(67, 0, '22', '22', 4, 'image/jpeg', 9803, 'products/22.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(68, 0, '23-1', '23-1', 4, 'image/jpeg', 9803, 'products/23-1.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(69, 0, '23-2', '23-2', 4, 'image/jpeg', 9803, 'products/23-2.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(70, 0, '23-3', '23-3', 4, 'image/jpeg', 9803, 'products/23-3.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(71, 0, '23', '23', 4, 'image/jpeg', 9803, 'products/23.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(72, 0, '24-1', '24-1', 4, 'image/jpeg', 9803, 'products/24-1.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(73, 0, '24-2', '24-2', 4, 'image/jpeg', 9803, 'products/24-2.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(74, 0, '24', '24', 4, 'image/jpeg', 9803, 'products/24.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(75, 0, '25-1', '25-1', 4, 'image/jpeg', 9803, 'products/25-1.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(76, 0, '25-2', '25-2', 4, 'image/jpeg', 9803, 'products/25-2.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(77, 0, '25', '25', 4, 'image/jpeg', 9803, 'products/25.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(78, 0, '26-1', '26-1', 4, 'image/jpeg', 9803, 'products/26-1.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(79, 0, '26', '26', 4, 'image/jpeg', 9803, 'products/26.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(80, 0, '27-1', '27-1', 4, 'image/jpeg', 9803, 'products/27-1.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(81, 0, '27', '27', 4, 'image/jpeg', 9803, 'products/27.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(82, 0, '28-1', '28-1', 4, 'image/jpeg', 9803, 'products/28-1.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(83, 0, '28-2', '28-2', 4, 'image/jpeg', 9803, 'products/28-2.jpg', '[]', '2024-08-21 20:36:15', '2024-08-21 20:36:15', NULL, 'public'),
(84, 0, '28', '28', 4, 'image/jpeg', 9803, 'products/28.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(85, 0, '29-1', '29-1', 4, 'image/jpeg', 9803, 'products/29-1.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(86, 0, '29-2', '29-2', 4, 'image/jpeg', 9803, 'products/29-2.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(87, 0, '29', '29', 4, 'image/jpeg', 9803, 'products/29.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(88, 0, '3', '3', 4, 'image/jpeg', 9803, 'products/3.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(89, 0, '30-1', '30-1', 4, 'image/jpeg', 9803, 'products/30-1.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(90, 0, '30-2', '30-2', 4, 'image/jpeg', 9803, 'products/30-2.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(91, 0, '30', '30', 4, 'image/jpeg', 9803, 'products/30.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(92, 0, '31-1', '31-1', 4, 'image/jpeg', 9803, 'products/31-1.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(93, 0, '31', '31', 4, 'image/jpeg', 9803, 'products/31.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(94, 0, '32-1', '32-1', 4, 'image/jpeg', 9803, 'products/32-1.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(95, 0, '32-2', '32-2', 4, 'image/jpeg', 9803, 'products/32-2.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(96, 0, '32', '32', 4, 'image/jpeg', 9803, 'products/32.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(97, 0, '33-1', '33-1', 4, 'image/jpeg', 9803, 'products/33-1.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(98, 0, '33-2', '33-2', 4, 'image/jpeg', 9803, 'products/33-2.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(99, 0, '33', '33', 4, 'image/jpeg', 9803, 'products/33.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(100, 0, '34-1', '34-1', 4, 'image/jpeg', 9803, 'products/34-1.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(101, 0, '34', '34', 4, 'image/jpeg', 9803, 'products/34.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(102, 0, '35-1', '35-1', 4, 'image/jpeg', 9803, 'products/35-1.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(103, 0, '35', '35', 4, 'image/jpeg', 9803, 'products/35.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(104, 0, '36-1', '36-1', 4, 'image/jpeg', 9803, 'products/36-1.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(105, 0, '36-2', '36-2', 4, 'image/jpeg', 9803, 'products/36-2.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(106, 0, '36', '36', 4, 'image/jpeg', 9803, 'products/36.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(107, 0, '37-1', '37-1', 4, 'image/jpeg', 9803, 'products/37-1.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(108, 0, '37-2', '37-2', 4, 'image/jpeg', 9803, 'products/37-2.jpg', '[]', '2024-08-21 20:36:16', '2024-08-21 20:36:16', NULL, 'public'),
(109, 0, '37', '37', 4, 'image/jpeg', 9803, 'products/37.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(110, 0, '38-1', '38-1', 4, 'image/jpeg', 9803, 'products/38-1.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(111, 0, '38-2', '38-2', 4, 'image/jpeg', 9803, 'products/38-2.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(112, 0, '38-3', '38-3', 4, 'image/jpeg', 9803, 'products/38-3.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(113, 0, '38', '38', 4, 'image/jpeg', 9803, 'products/38.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(114, 0, '39-1', '39-1', 4, 'image/jpeg', 9803, 'products/39-1.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(115, 0, '39-2', '39-2', 4, 'image/jpeg', 9803, 'products/39-2.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(116, 0, '39', '39', 4, 'image/jpeg', 9803, 'products/39.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(117, 0, '4-1', '4-1', 4, 'image/jpeg', 9803, 'products/4-1.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(118, 0, '4-2', '4-2', 4, 'image/jpeg', 9803, 'products/4-2.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(119, 0, '4-3', '4-3', 4, 'image/jpeg', 9803, 'products/4-3.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(120, 0, '4', '4', 4, 'image/jpeg', 9803, 'products/4.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(121, 0, '40-1', '40-1', 4, 'image/jpeg', 9803, 'products/40-1.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(122, 0, '40', '40', 4, 'image/jpeg', 9803, 'products/40.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(123, 0, '41-1', '41-1', 4, 'image/jpeg', 9803, 'products/41-1.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(124, 0, '41-2', '41-2', 4, 'image/jpeg', 9803, 'products/41-2.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(125, 0, '41', '41', 4, 'image/jpeg', 9803, 'products/41.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(126, 0, '42-1', '42-1', 4, 'image/jpeg', 9803, 'products/42-1.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(127, 0, '42-2', '42-2', 4, 'image/jpeg', 9803, 'products/42-2.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(128, 0, '42', '42', 4, 'image/jpeg', 9803, 'products/42.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(129, 0, '43-1', '43-1', 4, 'image/jpeg', 9803, 'products/43-1.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(130, 0, '43-2', '43-2', 4, 'image/jpeg', 9803, 'products/43-2.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(131, 0, '43', '43', 4, 'image/jpeg', 9803, 'products/43.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(132, 0, '44-1', '44-1', 4, 'image/jpeg', 9803, 'products/44-1.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(133, 0, '44-2', '44-2', 4, 'image/jpeg', 9803, 'products/44-2.jpg', '[]', '2024-08-21 20:36:17', '2024-08-21 20:36:17', NULL, 'public'),
(134, 0, '44', '44', 4, 'image/jpeg', 9803, 'products/44.jpg', '[]', '2024-08-21 20:36:18', '2024-08-21 20:36:18', NULL, 'public'),
(135, 0, '45-1', '45-1', 4, 'image/jpeg', 9803, 'products/45-1.jpg', '[]', '2024-08-21 20:36:18', '2024-08-21 20:36:18', NULL, 'public'),
(136, 0, '45', '45', 4, 'image/jpeg', 9803, 'products/45.jpg', '[]', '2024-08-21 20:36:18', '2024-08-21 20:36:18', NULL, 'public'),
(137, 0, '46-1', '46-1', 4, 'image/jpeg', 9803, 'products/46-1.jpg', '[]', '2024-08-21 20:36:18', '2024-08-21 20:36:18', NULL, 'public'),
(138, 0, '46', '46', 4, 'image/jpeg', 9803, 'products/46.jpg', '[]', '2024-08-21 20:36:18', '2024-08-21 20:36:18', NULL, 'public'),
(139, 0, '47-1', '47-1', 4, 'image/jpeg', 9803, 'products/47-1.jpg', '[]', '2024-08-21 20:36:18', '2024-08-21 20:36:18', NULL, 'public'),
(140, 0, '47', '47', 4, 'image/jpeg', 9803, 'products/47.jpg', '[]', '2024-08-21 20:36:18', '2024-08-21 20:36:18', NULL, 'public'),
(141, 0, '48-1', '48-1', 4, 'image/jpeg', 9803, 'products/48-1.jpg', '[]', '2024-08-21 20:36:18', '2024-08-21 20:36:18', NULL, 'public'),
(142, 0, '48-2', '48-2', 4, 'image/jpeg', 9803, 'products/48-2.jpg', '[]', '2024-08-21 20:36:18', '2024-08-21 20:36:18', NULL, 'public'),
(143, 0, '48', '48', 4, 'image/jpeg', 9803, 'products/48.jpg', '[]', '2024-08-21 20:36:18', '2024-08-21 20:36:18', NULL, 'public'),
(144, 0, '49-1', '49-1', 4, 'image/jpeg', 9803, 'products/49-1.jpg', '[]', '2024-08-21 20:36:18', '2024-08-21 20:36:18', NULL, 'public'),
(145, 0, '49-2', '49-2', 4, 'image/jpeg', 9803, 'products/49-2.jpg', '[]', '2024-08-21 20:36:18', '2024-08-21 20:36:18', NULL, 'public'),
(146, 0, '49', '49', 4, 'image/jpeg', 9803, 'products/49.jpg', '[]', '2024-08-21 20:36:18', '2024-08-21 20:36:18', NULL, 'public'),
(147, 0, '5-1', '5-1', 4, 'image/jpeg', 9803, 'products/5-1.jpg', '[]', '2024-08-21 20:36:18', '2024-08-21 20:36:18', NULL, 'public'),
(148, 0, '5-2', '5-2', 4, 'image/jpeg', 9803, 'products/5-2.jpg', '[]', '2024-08-21 20:36:18', '2024-08-21 20:36:18', NULL, 'public'),
(149, 0, '5-3', '5-3', 4, 'image/jpeg', 9803, 'products/5-3.jpg', '[]', '2024-08-21 20:36:18', '2024-08-21 20:36:18', NULL, 'public'),
(150, 0, '5', '5', 4, 'image/jpeg', 9803, 'products/5.jpg', '[]', '2024-08-21 20:36:18', '2024-08-21 20:36:18', NULL, 'public'),
(151, 0, '50-1', '50-1', 4, 'image/jpeg', 9803, 'products/50-1.jpg', '[]', '2024-08-21 20:36:18', '2024-08-21 20:36:18', NULL, 'public'),
(152, 0, '50', '50', 4, 'image/jpeg', 9803, 'products/50.jpg', '[]', '2024-08-21 20:36:18', '2024-08-21 20:36:18', NULL, 'public'),
(153, 0, '51', '51', 4, 'image/jpeg', 9803, 'products/51.jpg', '[]', '2024-08-21 20:36:18', '2024-08-21 20:36:18', NULL, 'public'),
(154, 0, '52-1', '52-1', 4, 'image/jpeg', 9803, 'products/52-1.jpg', '[]', '2024-08-21 20:36:18', '2024-08-21 20:36:18', NULL, 'public'),
(155, 0, '52-2', '52-2', 4, 'image/jpeg', 9803, 'products/52-2.jpg', '[]', '2024-08-21 20:36:18', '2024-08-21 20:36:18', NULL, 'public'),
(156, 0, '52', '52', 4, 'image/jpeg', 9803, 'products/52.jpg', '[]', '2024-08-21 20:36:18', '2024-08-21 20:36:18', NULL, 'public'),
(157, 0, '53-1', '53-1', 4, 'image/jpeg', 9803, 'products/53-1.jpg', '[]', '2024-08-21 20:36:18', '2024-08-21 20:36:18', NULL, 'public'),
(158, 0, '53', '53', 4, 'image/jpeg', 9803, 'products/53.jpg', '[]', '2024-08-21 20:36:19', '2024-08-21 20:36:19', NULL, 'public'),
(159, 0, '54-1', '54-1', 4, 'image/jpeg', 9803, 'products/54-1.jpg', '[]', '2024-08-21 20:36:19', '2024-08-21 20:36:19', NULL, 'public'),
(160, 0, '54', '54', 4, 'image/jpeg', 9803, 'products/54.jpg', '[]', '2024-08-21 20:36:19', '2024-08-21 20:36:19', NULL, 'public'),
(161, 0, '55-1', '55-1', 4, 'image/jpeg', 9803, 'products/55-1.jpg', '[]', '2024-08-21 20:36:19', '2024-08-21 20:36:19', NULL, 'public'),
(162, 0, '55-2', '55-2', 4, 'image/jpeg', 9803, 'products/55-2.jpg', '[]', '2024-08-21 20:36:19', '2024-08-21 20:36:19', NULL, 'public'),
(163, 0, '55', '55', 4, 'image/jpeg', 9803, 'products/55.jpg', '[]', '2024-08-21 20:36:19', '2024-08-21 20:36:19', NULL, 'public'),
(164, 0, '56-1', '56-1', 4, 'image/jpeg', 9803, 'products/56-1.jpg', '[]', '2024-08-21 20:36:19', '2024-08-21 20:36:19', NULL, 'public'),
(165, 0, '56-2', '56-2', 4, 'image/jpeg', 9803, 'products/56-2.jpg', '[]', '2024-08-21 20:36:19', '2024-08-21 20:36:19', NULL, 'public'),
(166, 0, '56', '56', 4, 'image/jpeg', 9803, 'products/56.jpg', '[]', '2024-08-21 20:36:19', '2024-08-21 20:36:19', NULL, 'public'),
(167, 0, '57-1', '57-1', 4, 'image/jpeg', 9803, 'products/57-1.jpg', '[]', '2024-08-21 20:36:19', '2024-08-21 20:36:19', NULL, 'public'),
(168, 0, '57', '57', 4, 'image/jpeg', 9803, 'products/57.jpg', '[]', '2024-08-21 20:36:19', '2024-08-21 20:36:19', NULL, 'public'),
(169, 0, '58-1', '58-1', 4, 'image/jpeg', 9803, 'products/58-1.jpg', '[]', '2024-08-21 20:36:19', '2024-08-21 20:36:19', NULL, 'public'),
(170, 0, '58-2', '58-2', 4, 'image/jpeg', 9803, 'products/58-2.jpg', '[]', '2024-08-21 20:36:19', '2024-08-21 20:36:19', NULL, 'public'),
(171, 0, '58', '58', 4, 'image/jpeg', 9803, 'products/58.jpg', '[]', '2024-08-21 20:36:19', '2024-08-21 20:36:19', NULL, 'public'),
(172, 0, '59-1', '59-1', 4, 'image/jpeg', 9803, 'products/59-1.jpg', '[]', '2024-08-21 20:36:19', '2024-08-21 20:36:19', NULL, 'public'),
(173, 0, '59-2', '59-2', 4, 'image/jpeg', 9803, 'products/59-2.jpg', '[]', '2024-08-21 20:36:19', '2024-08-21 20:36:19', NULL, 'public'),
(174, 0, '59-3', '59-3', 4, 'image/jpeg', 9803, 'products/59-3.jpg', '[]', '2024-08-21 20:36:19', '2024-08-21 20:36:19', NULL, 'public'),
(175, 0, '59', '59', 4, 'image/jpeg', 9803, 'products/59.jpg', '[]', '2024-08-21 20:36:19', '2024-08-21 20:36:19', NULL, 'public'),
(176, 0, '6', '6', 4, 'image/jpeg', 9803, 'products/6.jpg', '[]', '2024-08-21 20:36:19', '2024-08-21 20:36:19', NULL, 'public'),
(177, 0, '60-1', '60-1', 4, 'image/jpeg', 9803, 'products/60-1.jpg', '[]', '2024-08-21 20:36:19', '2024-08-21 20:36:19', NULL, 'public'),
(178, 0, '60-2', '60-2', 4, 'image/jpeg', 9803, 'products/60-2.jpg', '[]', '2024-08-21 20:36:19', '2024-08-21 20:36:19', NULL, 'public'),
(179, 0, '60', '60', 4, 'image/jpeg', 9803, 'products/60.jpg', '[]', '2024-08-21 20:36:19', '2024-08-21 20:36:19', NULL, 'public'),
(180, 0, '61-1', '61-1', 4, 'image/jpeg', 9803, 'products/61-1.jpg', '[]', '2024-08-21 20:36:19', '2024-08-21 20:36:19', NULL, 'public'),
(181, 0, '61', '61', 4, 'image/jpeg', 9803, 'products/61.jpg', '[]', '2024-08-21 20:36:19', '2024-08-21 20:36:19', NULL, 'public'),
(182, 0, '62-1', '62-1', 4, 'image/jpeg', 9803, 'products/62-1.jpg', '[]', '2024-08-21 20:36:20', '2024-08-21 20:36:20', NULL, 'public'),
(183, 0, '62', '62', 4, 'image/jpeg', 9803, 'products/62.jpg', '[]', '2024-08-21 20:36:20', '2024-08-21 20:36:20', NULL, 'public'),
(184, 0, '63-1', '63-1', 4, 'image/jpeg', 9803, 'products/63-1.jpg', '[]', '2024-08-21 20:36:20', '2024-08-21 20:36:20', NULL, 'public'),
(185, 0, '63', '63', 4, 'image/jpeg', 9803, 'products/63.jpg', '[]', '2024-08-21 20:36:20', '2024-08-21 20:36:20', NULL, 'public'),
(186, 0, '64-1', '64-1', 4, 'image/jpeg', 9803, 'products/64-1.jpg', '[]', '2024-08-21 20:36:20', '2024-08-21 20:36:20', NULL, 'public'),
(187, 0, '64', '64', 4, 'image/jpeg', 9803, 'products/64.jpg', '[]', '2024-08-21 20:36:20', '2024-08-21 20:36:20', NULL, 'public'),
(188, 0, '65-1', '65-1', 4, 'image/jpeg', 9803, 'products/65-1.jpg', '[]', '2024-08-21 20:36:20', '2024-08-21 20:36:20', NULL, 'public'),
(189, 0, '65-2', '65-2', 4, 'image/jpeg', 9803, 'products/65-2.jpg', '[]', '2024-08-21 20:36:20', '2024-08-21 20:36:20', NULL, 'public'),
(190, 0, '65', '65', 4, 'image/jpeg', 9803, 'products/65.jpg', '[]', '2024-08-21 20:36:20', '2024-08-21 20:36:20', NULL, 'public'),
(191, 0, '7', '7', 4, 'image/jpeg', 9803, 'products/7.jpg', '[]', '2024-08-21 20:36:20', '2024-08-21 20:36:20', NULL, 'public'),
(192, 0, '8-1', '8-1', 4, 'image/jpeg', 9803, 'products/8-1.jpg', '[]', '2024-08-21 20:36:20', '2024-08-21 20:36:20', NULL, 'public'),
(193, 0, '8-2', '8-2', 4, 'image/jpeg', 9803, 'products/8-2.jpg', '[]', '2024-08-21 20:36:20', '2024-08-21 20:36:20', NULL, 'public'),
(194, 0, '8-3', '8-3', 4, 'image/jpeg', 9803, 'products/8-3.jpg', '[]', '2024-08-21 20:36:20', '2024-08-21 20:36:20', NULL, 'public'),
(195, 0, '8', '8', 4, 'image/jpeg', 9803, 'products/8.jpg', '[]', '2024-08-21 20:36:20', '2024-08-21 20:36:20', NULL, 'public'),
(196, 0, '9-1', '9-1', 4, 'image/jpeg', 9803, 'products/9-1.jpg', '[]', '2024-08-21 20:36:20', '2024-08-21 20:36:20', NULL, 'public'),
(197, 0, '9-2', '9-2', 4, 'image/jpeg', 9803, 'products/9-2.jpg', '[]', '2024-08-21 20:36:20', '2024-08-21 20:36:20', NULL, 'public'),
(198, 0, '9', '9', 4, 'image/jpeg', 9803, 'products/9.jpg', '[]', '2024-08-21 20:36:20', '2024-08-21 20:36:20', NULL, 'public'),
(199, 0, '1', '1', 5, 'image/png', 2691, 'stores/1.png', '[]', '2024-08-21 20:36:22', '2024-08-21 20:36:22', NULL, 'public'),
(200, 0, '10', '10', 5, 'image/png', 2691, 'stores/10.png', '[]', '2024-08-21 20:36:22', '2024-08-21 20:36:22', NULL, 'public'),
(201, 0, '11', '11', 5, 'image/png', 2691, 'stores/11.png', '[]', '2024-08-21 20:36:22', '2024-08-21 20:36:22', NULL, 'public'),
(202, 0, '12', '12', 5, 'image/png', 2691, 'stores/12.png', '[]', '2024-08-21 20:36:22', '2024-08-21 20:36:22', NULL, 'public'),
(203, 0, '13', '13', 5, 'image/png', 2691, 'stores/13.png', '[]', '2024-08-21 20:36:22', '2024-08-21 20:36:22', NULL, 'public'),
(204, 0, '14', '14', 5, 'image/png', 2691, 'stores/14.png', '[]', '2024-08-21 20:36:22', '2024-08-21 20:36:22', NULL, 'public'),
(205, 0, '15', '15', 5, 'image/png', 2691, 'stores/15.png', '[]', '2024-08-21 20:36:22', '2024-08-21 20:36:22', NULL, 'public'),
(206, 0, '16', '16', 5, 'image/png', 2732, 'stores/16.png', '[]', '2024-08-21 20:36:22', '2024-08-21 20:36:22', NULL, 'public'),
(207, 0, '17', '17', 5, 'image/png', 2732, 'stores/17.png', '[]', '2024-08-21 20:36:22', '2024-08-21 20:36:22', NULL, 'public'),
(208, 0, '2', '2', 5, 'image/png', 2691, 'stores/2.png', '[]', '2024-08-21 20:36:22', '2024-08-21 20:36:22', NULL, 'public'),
(209, 0, '3', '3', 5, 'image/png', 2691, 'stores/3.png', '[]', '2024-08-21 20:36:22', '2024-08-21 20:36:22', NULL, 'public'),
(210, 0, '4', '4', 5, 'image/png', 2691, 'stores/4.png', '[]', '2024-08-21 20:36:22', '2024-08-21 20:36:22', NULL, 'public'),
(211, 0, '5', '5', 5, 'image/png', 2691, 'stores/5.png', '[]', '2024-08-21 20:36:22', '2024-08-21 20:36:22', NULL, 'public'),
(212, 0, '6', '6', 5, 'image/png', 2691, 'stores/6.png', '[]', '2024-08-21 20:36:22', '2024-08-21 20:36:22', NULL, 'public'),
(213, 0, '7', '7', 5, 'image/png', 2691, 'stores/7.png', '[]', '2024-08-21 20:36:22', '2024-08-21 20:36:22', NULL, 'public'),
(214, 0, '8', '8', 5, 'image/png', 2691, 'stores/8.png', '[]', '2024-08-21 20:36:22', '2024-08-21 20:36:22', NULL, 'public'),
(215, 0, '9', '9', 5, 'image/png', 2691, 'stores/9.png', '[]', '2024-08-21 20:36:22', '2024-08-21 20:36:22', NULL, 'public'),
(216, 0, 'background-1', 'background-1', 5, 'image/jpeg', 5286, 'stores/background-1.jpg', '[]', '2024-08-21 20:36:22', '2024-08-21 20:36:22', NULL, 'public'),
(217, 0, 'background-2', 'background-2', 5, 'image/jpeg', 5286, 'stores/background-2.jpg', '[]', '2024-08-21 20:36:22', '2024-08-21 20:36:22', NULL, 'public'),
(218, 0, '1', '1', 6, 'image/jpeg', 9803, 'news/1.jpg', '[]', '2024-08-21 20:36:24', '2024-08-21 20:36:24', NULL, 'public'),
(219, 0, '10', '10', 6, 'image/jpeg', 9803, 'news/10.jpg', '[]', '2024-08-21 20:36:24', '2024-08-21 20:36:24', NULL, 'public'),
(220, 0, '11', '11', 6, 'image/jpeg', 9803, 'news/11.jpg', '[]', '2024-08-21 20:36:24', '2024-08-21 20:36:24', NULL, 'public'),
(221, 0, '2', '2', 6, 'image/jpeg', 9803, 'news/2.jpg', '[]', '2024-08-21 20:36:24', '2024-08-21 20:36:24', NULL, 'public'),
(222, 0, '3', '3', 6, 'image/jpeg', 9803, 'news/3.jpg', '[]', '2024-08-21 20:36:24', '2024-08-21 20:36:24', NULL, 'public'),
(223, 0, '4', '4', 6, 'image/jpeg', 9803, 'news/4.jpg', '[]', '2024-08-21 20:36:24', '2024-08-21 20:36:24', NULL, 'public'),
(224, 0, '5', '5', 6, 'image/jpeg', 9803, 'news/5.jpg', '[]', '2024-08-21 20:36:24', '2024-08-21 20:36:24', NULL, 'public'),
(225, 0, '6', '6', 6, 'image/jpeg', 9803, 'news/6.jpg', '[]', '2024-08-21 20:36:24', '2024-08-21 20:36:24', NULL, 'public'),
(226, 0, '7', '7', 6, 'image/jpeg', 9803, 'news/7.jpg', '[]', '2024-08-21 20:36:24', '2024-08-21 20:36:24', NULL, 'public'),
(227, 0, '8', '8', 6, 'image/jpeg', 9803, 'news/8.jpg', '[]', '2024-08-21 20:36:24', '2024-08-21 20:36:24', NULL, 'public'),
(228, 0, '9', '9', 6, 'image/jpeg', 9803, 'news/9.jpg', '[]', '2024-08-21 20:36:24', '2024-08-21 20:36:24', NULL, 'public'),
(229, 0, '01-sm', '01-sm', 7, 'image/jpeg', 10737, 'sliders/01-sm.jpg', '[]', '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL, 'public'),
(230, 0, '01', '01', 7, 'image/jpeg', 11704, 'sliders/01.jpg', '[]', '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL, 'public'),
(231, 0, '02-sm', '02-sm', 7, 'image/jpeg', 10737, 'sliders/02-sm.jpg', '[]', '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL, 'public'),
(232, 0, '02', '02', 7, 'image/jpeg', 11704, 'sliders/02.jpg', '[]', '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL, 'public'),
(233, 0, '1', '1', 8, 'image/jpeg', 7935, 'promotion/1.jpg', '[]', '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL, 'public'),
(234, 0, '2', '2', 8, 'image/png', 14659, 'promotion/2.png', '[]', '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL, 'public'),
(235, 0, '3', '3', 8, 'image/png', 10632, 'promotion/3.png', '[]', '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL, 'public'),
(236, 0, '4', '4', 8, 'image/png', 10076, 'promotion/4.png', '[]', '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL, 'public'),
(237, 0, '5', '5', 8, 'image/png', 12274, 'promotion/5.png', '[]', '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL, 'public'),
(238, 0, '404', '404', 9, 'image/png', 31297, 'general/404.png', '[]', '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL, 'public'),
(239, 0, 'app-android', 'app-android', 9, 'image/png', 630, 'general/app-android.png', '[]', '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL, 'public'),
(240, 0, 'app-bg', 'app-bg', 9, 'image/png', 11530, 'general/app-bg.png', '[]', '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL, 'public'),
(241, 0, 'app-ios', 'app-ios', 9, 'image/png', 630, 'general/app-ios.png', '[]', '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL, 'public'),
(242, 0, 'background', 'background', 9, 'image/jpeg', 26676, 'general/background.jpg', '[]', '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL, 'public'),
(243, 0, 'blog-bg', 'blog-bg', 9, 'image/jpeg', 81226, 'general/blog-bg.jpg', '[]', '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL, 'public'),
(244, 0, 'coming-soon', 'coming-soon', 9, 'image/jpeg', 26506, 'general/coming-soon.jpg', '[]', '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL, 'public'),
(245, 0, 'facebook', 'facebook', 9, 'image/png', 732, 'general/facebook.png', '[]', '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL, 'public'),
(246, 0, 'favicon', 'favicon', 9, 'image/png', 6337, 'general/favicon.png', '[]', '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL, 'public'),
(247, 0, 'footer-payments', 'footer-payments', 9, 'image/png', 439, 'general/footer-payments.png', '[]', '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL, 'public'),
(248, 0, 'icon-protect', 'icon-protect', 9, 'image/png', 1677, 'general/icon-protect.png', '[]', '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL, 'public'),
(249, 0, 'icon-reload', 'icon-reload', 9, 'image/png', 1457, 'general/icon-reload.png', '[]', '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL, 'public'),
(250, 0, 'icon-rocket', 'icon-rocket', 9, 'image/png', 1640, 'general/icon-rocket.png', '[]', '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL, 'public'),
(251, 0, 'icon-support', 'icon-support', 9, 'image/png', 1854, 'general/icon-support.png', '[]', '2024-08-21 20:36:26', '2024-08-21 20:36:26', NULL, 'public'),
(252, 0, 'icon-tag', 'icon-tag', 9, 'image/png', 1151, 'general/icon-tag.png', '[]', '2024-08-21 20:36:26', '2024-08-21 20:36:26', NULL, 'public'),
(253, 0, 'instagram', 'instagram', 9, 'image/png', 2476, 'general/instagram.png', '[]', '2024-08-21 20:36:26', '2024-08-21 20:36:26', NULL, 'public'),
(254, 0, 'logo-light', 'logo-light', 9, 'image/png', 12206, 'general/logo-light.png', '[]', '2024-08-21 20:36:26', '2024-08-21 20:36:26', NULL, 'public'),
(255, 0, 'logo', 'logo', 9, 'image/png', 18245, 'general/logo.png', '[]', '2024-08-21 20:36:26', '2024-08-21 20:36:26', NULL, 'public'),
(256, 0, 'newsletter-popup', 'newsletter-popup', 9, 'image/png', 17253, 'general/newsletter-popup.png', '[]', '2024-08-21 20:36:26', '2024-08-21 20:36:26', NULL, 'public'),
(257, 0, 'open-graph-image', 'open-graph-image', 9, 'image/png', 406719, 'general/open-graph-image.png', '[]', '2024-08-21 20:36:26', '2024-08-21 20:36:26', NULL, 'public'),
(258, 0, 'pinterest', 'pinterest', 9, 'image/png', 2103, 'general/pinterest.png', '[]', '2024-08-21 20:36:26', '2024-08-21 20:36:26', NULL, 'public'),
(259, 0, 'placeholder', 'placeholder', 9, 'image/png', 2675, 'general/placeholder.png', '[]', '2024-08-21 20:36:26', '2024-08-21 20:36:26', NULL, 'public'),
(260, 0, 'slider-bg', 'slider-bg', 9, 'image/jpeg', 26676, 'general/slider-bg.jpg', '[]', '2024-08-21 20:36:26', '2024-08-21 20:36:26', NULL, 'public'),
(261, 0, 'twitter', 'twitter', 9, 'image/png', 1749, 'general/twitter.png', '[]', '2024-08-21 20:36:26', '2024-08-21 20:36:26', NULL, 'public'),
(262, 0, 'youtube', 'youtube', 9, 'image/png', 1035, 'general/youtube.png', '[]', '2024-08-21 20:36:26', '2024-08-21 20:36:26', NULL, 'public'),
(263, 1, '9c2e1665-e0e4-4e42-80ce-b5eee67cc82e', '9c2e1665-e0e4-4e42-80ce-b5eee67cc82e', 10, 'image/png', 30339, 'users/9c2e1665-e0e4-4e42-80ce-b5eee67cc82e.png', '[]', '2025-01-13 07:02:51', '2025-01-13 07:02:51', NULL, 'public'),
(264, 1, 'about-1', 'about-1', 0, 'image/jpeg', 165235, 'about-1.jpg', '[]', '2025-01-13 07:59:40', '2025-01-13 07:59:40', NULL, 'public'),
(265, 1, 'product_0', 'product_0', 0, 'image/jpeg', 45885, 'product-0.jpg', '[]', '2025-01-13 13:23:29', '2025-01-13 13:23:29', NULL, 'public'),
(266, 1, '17', '17', 0, 'image/png', 6805, '17.png', '[]', '2025-01-13 13:24:04', '2025-01-13 13:24:04', NULL, 'public'),
(267, 1, '18', '18', 0, 'image/png', 7060, '18.png', '[]', '2025-01-13 13:24:05', '2025-01-13 13:24:05', NULL, 'public'),
(268, 1, '19', '19', 0, 'image/png', 7655, '19.png', '[]', '2025-01-13 13:24:07', '2025-01-13 13:24:07', NULL, 'public'),
(269, 1, '20', '20', 0, 'image/png', 8490, '20.png', '[]', '2025-01-13 13:24:08', '2025-01-13 13:24:08', NULL, 'public'),
(270, 1, '21', '21', 0, 'image/png', 7714, '21.png', '[]', '2025-01-13 13:24:10', '2025-01-13 13:24:10', NULL, 'public'),
(271, 1, '22', '22', 0, 'image/png', 6772, '22.png', '[]', '2025-01-13 13:24:11', '2025-01-13 13:24:11', NULL, 'public'),
(272, 1, '23', '23', 0, 'image/png', 8563, '23.png', '[]', '2025-01-13 13:24:13', '2025-01-13 13:24:13', NULL, 'public'),
(273, 1, 'product_0-1', 'product_0-1', 0, 'image/jpeg', 30138, 'product-0-1.jpg', '[]', '2025-01-13 13:24:14', '2025-01-13 13:24:14', NULL, 'public'),
(274, 1, 'product_0-2', 'product_0-2', 0, 'image/jpeg', 34806, 'product-0-2.jpg', '[]', '2025-01-13 13:24:16', '2025-01-13 13:24:16', NULL, 'public'),
(275, 1, 'product_0-3', 'product_0-3', 0, 'image/jpeg', 40763, 'product-0-3.jpg', '[]', '2025-01-13 13:24:18', '2025-01-13 13:24:18', NULL, 'public'),
(276, 1, 'product_1', 'product_1', 0, 'image/jpeg', 16993, 'product-1.jpg', '[]', '2025-01-13 13:24:20', '2025-01-13 13:24:20', NULL, 'public'),
(277, 1, 'product_1-1', 'product_1-1', 0, 'image/jpeg', 20306, 'product-1-1.jpg', '[]', '2025-01-13 13:24:22', '2025-01-13 13:24:22', NULL, 'public'),
(278, 1, 'product_2', 'product_2', 0, 'image/jpeg', 14727, 'product-2.jpg', '[]', '2025-01-13 13:24:24', '2025-01-13 13:24:24', NULL, 'public'),
(279, 1, 'product_2-1', 'product_2-1', 0, 'image/jpeg', 14702, 'product-2-1.jpg', '[]', '2025-01-13 13:24:26', '2025-01-13 13:24:26', NULL, 'public'),
(280, 1, 'product_3', 'product_3', 0, 'image/jpeg', 13629, 'product-3.jpg', '[]', '2025-01-13 13:24:28', '2025-01-13 13:24:28', NULL, 'public'),
(281, 1, 'product_3-1', 'product_3-1', 0, 'image/jpeg', 13600, 'product-3-1.jpg', '[]', '2025-01-13 13:24:30', '2025-01-13 13:24:30', NULL, 'public'),
(282, 1, 'product_4', 'product_4', 0, 'image/jpeg', 34203, 'product-4.jpg', '[]', '2025-01-13 13:24:31', '2025-01-13 13:24:31', NULL, 'public'),
(283, 1, 'product_4-1', 'product_4-1', 0, 'image/jpeg', 34234, 'product-4-1.jpg', '[]', '2025-01-13 13:24:33', '2025-01-13 13:24:33', NULL, 'public'),
(284, 1, 'product_5', 'product_5', 0, 'image/jpeg', 17164, 'product-5.jpg', '[]', '2025-01-13 13:24:35', '2025-01-13 13:24:35', NULL, 'public'),
(285, 1, 'product_5-1', 'product_5-1', 0, 'image/jpeg', 17135, 'product-5-1.jpg', '[]', '2025-01-13 13:24:37', '2025-01-13 13:24:37', NULL, 'public'),
(286, 1, 'product_6', 'product_6', 0, 'image/jpeg', 14501, 'product-6.jpg', '[]', '2025-01-13 13:24:39', '2025-01-13 13:24:39', NULL, 'public'),
(287, 1, 'product_6-1', 'product_6-1', 0, 'image/jpeg', 14434, 'product-6-1.jpg', '[]', '2025-01-13 13:24:41', '2025-01-13 13:24:41', NULL, 'public'),
(288, 1, 'product_7', 'product_7', 0, 'image/jpeg', 30257, 'product-7.jpg', '[]', '2025-01-13 13:24:43', '2025-01-13 13:24:43', NULL, 'public'),
(289, 1, 'product_7-1', 'product_7-1', 0, 'image/jpeg', 27362, 'product-7-1.jpg', '[]', '2025-01-13 13:24:44', '2025-01-13 13:24:44', NULL, 'public'),
(290, 1, 'product_8', 'product_8', 0, 'image/jpeg', 27183, 'product-8.jpg', '[]', '2025-01-13 13:24:46', '2025-01-13 13:24:46', NULL, 'public'),
(291, 1, 'product_8-1', 'product_8-1', 0, 'image/jpeg', 27201, 'product-8-1.jpg', '[]', '2025-01-13 13:24:47', '2025-01-13 13:24:47', NULL, 'public'),
(292, 1, 'product_9', 'product_9', 0, 'image/jpeg', 61545, 'product-9.jpg', '[]', '2025-01-13 13:24:49', '2025-01-13 13:24:49', NULL, 'public'),
(293, 1, 'product_9-1', 'product_9-1', 0, 'image/jpeg', 27415, 'product-9-1.jpg', '[]', '2025-01-13 13:24:50', '2025-01-13 13:24:50', NULL, 'public'),
(294, 1, 'product_10', 'product_10', 0, 'image/jpeg', 88810, 'product-10.jpg', '[]', '2025-01-13 13:24:52', '2025-01-13 13:24:52', NULL, 'public'),
(295, 1, 'product_10-1', 'product_10-1', 0, 'image/jpeg', 20476, 'product-10-1.jpg', '[]', '2025-01-13 13:24:54', '2025-01-13 13:24:54', NULL, 'public');

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `color`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'brands', NULL, 'brands', 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL),
(2, 0, 'product-categories', NULL, 'product-categories', 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL),
(3, 0, 'customers', NULL, 'customers', 0, '2024-08-21 20:36:10', '2024-08-21 20:36:10', NULL),
(4, 0, 'products', NULL, 'products', 0, '2024-08-21 20:36:13', '2024-08-21 20:36:13', NULL),
(5, 0, 'stores', NULL, 'stores', 0, '2024-08-21 20:36:22', '2024-08-21 20:36:22', NULL),
(6, 0, 'news', NULL, 'news', 0, '2024-08-21 20:36:24', '2024-08-21 20:36:24', NULL),
(7, 0, 'sliders', NULL, 'sliders', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL),
(8, 0, 'promotion', NULL, 'promotion', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL),
(9, 0, 'general', NULL, 'general', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25', NULL),
(10, 1, 'users', NULL, 'users', 0, '2025-01-13 07:02:47', '2025-01-13 07:02:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) NOT NULL,
  `value` text DEFAULT NULL,
  `media_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2025-01-12 18:00:00', '2025-01-13 08:14:49'),
(2, 'Header menu', 'header-menu', 'published', '2025-01-12 18:00:00', '2025-01-13 08:14:49'),
(3, 'Useful Links', 'useful-links', 'published', '2025-01-12 18:00:00', '2025-01-13 08:14:48'),
(4, 'Help Center', 'help-center', 'published', '2025-01-12 18:00:00', '2025-01-13 08:14:48'),
(5, 'Business', 'business', 'published', '2025-01-12 18:00:00', '2025-01-13 08:14:48');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(2, 2, 'header-navigation', '2024-08-21 20:36:25', '2024-08-21 20:36:25');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `reference_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `icon_font` varchar(191) DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(191) DEFAULT NULL,
  `css_class` varchar(191) DEFAULT NULL,
  `target` varchar(20) NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, NULL, NULL, '/products/smart-watches', 'icon icon-tag', 0, 'Special Prices', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(2, 1, 0, NULL, NULL, '#', NULL, 0, 'Pages', NULL, '_self', 1, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(3, 1, 2, 2, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'About us', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(4, 1, 2, 3, 'Botble\\Page\\Models\\Page', '/terms-of-use', NULL, 0, 'Terms Of Use', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(5, 1, 2, 4, 'Botble\\Page\\Models\\Page', '/terms-conditions', NULL, 0, 'Terms & Conditions', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(6, 1, 2, 5, 'Botble\\Page\\Models\\Page', '/refund-policy', NULL, 0, 'Refund Policy', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(7, 1, 2, 12, 'Botble\\Page\\Models\\Page', '/coming-soon', NULL, 0, 'Coming soon', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(8, 1, 0, NULL, NULL, '/products', NULL, 0, 'Shop', NULL, '_self', 1, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(9, 1, 8, NULL, NULL, '/products', NULL, 0, 'All products', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(10, 1, 8, 15, 'Botble\\Ecommerce\\Models\\ProductCategory', NULL, NULL, 0, 'Products Of Category', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(11, 1, 8, NULL, NULL, '/products/beat-headphone', NULL, 0, 'Product Single', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(12, 1, 0, NULL, NULL, '/stores', NULL, 0, 'Stores', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(13, 1, 0, 6, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Blog', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(14, 1, 0, 7, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'FAQs', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(15, 1, 0, 8, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Contact', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(16, 2, 0, 2, 'Botble\\Page\\Models\\Page', NULL, NULL, 1, 'About Us', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(17, 2, 0, NULL, NULL, 'wishlist', NULL, 1, 'Wishlist', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(18, 2, 0, NULL, NULL, 'orders/tracking', NULL, 1, 'Order Tracking', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(19, 3, 0, 3, 'Botble\\Page\\Models\\Page', NULL, NULL, 2, 'Terms Of Use', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(20, 3, 0, 4, 'Botble\\Page\\Models\\Page', NULL, NULL, 2, 'Terms & Conditions', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(21, 3, 0, 5, 'Botble\\Page\\Models\\Page', NULL, NULL, 2, 'Refund Policy', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(22, 3, 0, 7, 'Botble\\Page\\Models\\Page', NULL, NULL, 2, 'FAQs', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(23, 3, 0, NULL, NULL, '/nothing', NULL, 2, '404 Page', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(24, 4, 0, 2, 'Botble\\Page\\Models\\Page', NULL, NULL, 3, 'About us', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(25, 4, 0, 10, 'Botble\\Page\\Models\\Page', NULL, NULL, 3, 'Affiliate', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(26, 4, 0, 11, 'Botble\\Page\\Models\\Page', NULL, NULL, 3, 'Career', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(27, 4, 0, 8, 'Botble\\Page\\Models\\Page', NULL, NULL, 3, 'Contact us', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(28, 5, 0, 6, 'Botble\\Page\\Models\\Page', NULL, NULL, 4, 'Our blog', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(29, 5, 0, NULL, NULL, '/cart', NULL, 4, 'Cart', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(30, 5, 0, NULL, NULL, '/customer/overview', NULL, 4, 'My account', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(31, 5, 0, NULL, NULL, '/products', NULL, 4, 'Shop', NULL, '_self', 0, '2024-08-21 20:36:25', '2024-08-21 20:36:25');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(191) NOT NULL,
  `meta_value` text DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(66, 'background', '[\"stores\\/background-2.jpg\"]', 1, 'Botble\\Marketplace\\Models\\Store', '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(67, 'socials', '[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]', 1, 'Botble\\Marketplace\\Models\\Store', '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(68, 'background', '[\"stores\\/background-2.jpg\"]', 2, 'Botble\\Marketplace\\Models\\Store', '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(69, 'socials', '[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]', 2, 'Botble\\Marketplace\\Models\\Store', '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(70, 'background', '[\"stores\\/background-1.jpg\"]', 3, 'Botble\\Marketplace\\Models\\Store', '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(71, 'socials', '[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]', 3, 'Botble\\Marketplace\\Models\\Store', '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(72, 'background', '[\"stores\\/background-1.jpg\"]', 4, 'Botble\\Marketplace\\Models\\Store', '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(73, 'socials', '[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]', 4, 'Botble\\Marketplace\\Models\\Store', '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(74, 'background', '[\"stores\\/background-1.jpg\"]', 5, 'Botble\\Marketplace\\Models\\Store', '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(75, 'socials', '[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]', 5, 'Botble\\Marketplace\\Models\\Store', '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(76, 'background', '[\"stores\\/background-2.jpg\"]', 6, 'Botble\\Marketplace\\Models\\Store', '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(77, 'socials', '[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]', 6, 'Botble\\Marketplace\\Models\\Store', '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(78, 'background', '[\"stores\\/background-1.jpg\"]', 7, 'Botble\\Marketplace\\Models\\Store', '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(79, 'socials', '[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]', 7, 'Botble\\Marketplace\\Models\\Store', '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(80, 'background', '[\"stores\\/background-1.jpg\"]', 8, 'Botble\\Marketplace\\Models\\Store', '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(81, 'socials', '[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]', 8, 'Botble\\Marketplace\\Models\\Store', '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(82, 'tablet_image', '[\"about-1.jpg\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2024-08-21 20:36:25', '2025-01-13 08:00:46'),
(83, 'mobile_image', '[\"about-1.jpg\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2024-08-21 20:36:25', '2025-01-13 08:00:47'),
(86, 'seo_meta', '[{\"index\":\"index\"}]', 153, 'Botble\\Ecommerce\\Models\\Product', '2025-01-13 13:32:59', '2025-01-13 13:32:59'),
(87, 'faq_ids', '[[]]', 153, 'Botble\\Ecommerce\\Models\\Product', '2025-01-13 13:33:00', '2025-01-13 13:33:00'),
(88, 'seo_meta', '[{\"index\":\"index\"}]', 154, 'Botble\\Ecommerce\\Models\\Product', '2025-01-13 13:33:08', '2025-01-13 13:33:08'),
(89, 'faq_ids', '[[]]', 154, 'Botble\\Ecommerce\\Models\\Product', '2025-01-13 13:33:08', '2025-01-13 13:33:08'),
(90, 'seo_meta', '[{\"index\":\"index\"}]', 54, 'Botble\\Ecommerce\\Models\\ProductCategory', '2025-01-14 00:27:40', '2025-01-14 00:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(5, '2016_06_10_230148_create_acl_tables', 1),
(6, '2016_06_14_230857_create_menus_table', 1),
(7, '2016_06_28_221418_create_pages_table', 1),
(8, '2016_10_05_074239_create_setting_table', 1),
(9, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(10, '2016_12_16_084601_create_widgets_table', 1),
(11, '2017_05_09_070343_create_media_tables', 1),
(12, '2017_11_03_070450_create_slug_table', 1),
(13, '2019_01_05_053554_create_jobs_table', 1),
(14, '2019_08_19_000000_create_failed_jobs_table', 1),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(16, '2022_04_20_100851_add_index_to_media_table', 1),
(17, '2022_04_20_101046_add_index_to_menu_table', 1),
(18, '2022_07_10_034813_move_lang_folder_to_root', 1),
(19, '2022_08_04_051940_add_missing_column_expires_at', 1),
(20, '2022_09_01_000001_create_admin_notifications_tables', 1),
(21, '2022_10_14_024629_drop_column_is_featured', 1),
(22, '2022_11_18_063357_add_missing_timestamp_in_table_settings', 1),
(23, '2022_12_02_093615_update_slug_index_columns', 1),
(24, '2023_01_30_024431_add_alt_to_media_table', 1),
(25, '2023_02_16_042611_drop_table_password_resets', 1),
(26, '2023_04_23_005903_add_column_permissions_to_admin_notifications', 1),
(27, '2023_05_10_075124_drop_column_id_in_role_users_table', 1),
(28, '2023_08_21_090810_make_page_content_nullable', 1),
(29, '2023_09_14_021936_update_index_for_slugs_table', 1),
(30, '2023_12_07_095130_add_color_column_to_media_folders_table', 1),
(31, '2023_12_17_162208_make_sure_column_color_in_media_folders_nullable', 1),
(32, '2024_04_04_110758_update_value_column_in_user_meta_table', 1),
(33, '2024_05_04_030654_improve_social_links', 1),
(34, '2024_05_12_091229_add_column_visibility_to_table_media_files', 1),
(35, '2024_07_07_091316_fix_column_url_in_menu_nodes_table', 1),
(36, '2024_07_12_100000_change_random_hash_for_media', 1),
(37, '2020_11_18_150916_ads_create_ads_table', 2),
(38, '2021_12_02_035301_add_ads_translations_table', 2),
(39, '2023_04_17_062645_add_open_in_new_tab', 2),
(40, '2023_11_07_023805_add_tablet_mobile_image', 2),
(41, '2024_04_01_043317_add_google_adsense_slot_id_to_ads_table', 2),
(42, '2024_04_27_100730_improve_analytics_setting', 3),
(43, '2015_06_29_025744_create_audit_history', 4),
(44, '2023_11_14_033417_change_request_column_in_table_audit_histories', 4),
(45, '2015_06_18_033822_create_blog_table', 5),
(46, '2021_02_16_092633_remove_default_value_for_author_type', 5),
(47, '2021_12_03_030600_create_blog_translations', 5),
(48, '2022_04_19_113923_add_index_to_table_posts', 5),
(49, '2023_08_29_074620_make_column_author_id_nullable', 5),
(50, '2024_07_30_091615_fix_order_column_in_categories_table', 5),
(51, '2016_06_17_091537_create_contacts_table', 6),
(52, '2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core', 6),
(53, '2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table', 6),
(54, '2024_03_25_000001_update_captcha_settings_for_contact', 6),
(55, '2024_04_19_063914_create_custom_fields_table', 6),
(56, '2020_03_05_041139_create_ecommerce_tables', 7),
(57, '2021_01_01_044147_ecommerce_create_flash_sale_table', 7),
(58, '2021_01_17_082713_add_column_is_featured_to_product_collections_table', 7),
(59, '2021_01_18_024333_add_zip_code_into_table_customer_addresses', 7),
(60, '2021_02_18_073505_update_table_ec_reviews', 7),
(61, '2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers', 7),
(62, '2021_03_10_025153_change_column_tax_amount', 7),
(63, '2021_03_20_033103_add_column_availability_to_table_ec_products', 7),
(64, '2021_04_28_074008_ecommerce_create_product_label_table', 7),
(65, '2021_05_31_173037_ecommerce_create_ec_products_translations', 7),
(66, '2021_08_17_105016_remove_column_currency_id_in_some_tables', 7),
(67, '2021_08_30_142128_add_images_column_to_ec_reviews_table', 7),
(68, '2021_10_04_030050_add_column_created_by_to_table_ec_products', 7),
(69, '2021_10_05_122616_add_status_column_to_ec_customers_table', 7),
(70, '2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses', 7),
(71, '2021_11_23_071403_correct_languages_for_product_variations', 7),
(72, '2021_11_28_031808_add_product_tags_translations', 7),
(73, '2021_12_01_031123_add_featured_image_to_ec_products', 7),
(74, '2022_01_01_033107_update_table_ec_shipments', 7),
(75, '2022_02_16_042457_improve_product_attribute_sets', 7),
(76, '2022_03_22_075758_correct_product_name', 7),
(77, '2022_04_19_113334_add_index_to_ec_products', 7),
(78, '2022_04_28_144405_remove_unused_table', 7),
(79, '2022_05_05_115015_create_ec_customer_recently_viewed_products_table', 7),
(80, '2022_05_18_143720_add_index_to_table_ec_product_categories', 7),
(81, '2022_06_16_095633_add_index_to_some_tables', 7),
(82, '2022_06_30_035148_create_order_referrals_table', 7),
(83, '2022_07_24_153815_add_completed_at_to_ec_orders_table', 7),
(84, '2022_08_14_032836_create_ec_order_returns_table', 7),
(85, '2022_08_14_033554_create_ec_order_return_items_table', 7),
(86, '2022_08_15_040324_add_billing_address', 7),
(87, '2022_08_30_091114_support_digital_products_table', 7),
(88, '2022_09_13_095744_create_options_table', 7),
(89, '2022_09_13_104347_create_option_value_table', 7),
(90, '2022_10_05_163518_alter_table_ec_order_product', 7),
(91, '2022_10_12_041517_create_invoices_table', 7),
(92, '2022_10_12_142226_update_orders_table', 7),
(93, '2022_10_13_024916_update_table_order_returns', 7),
(94, '2022_10_21_030830_update_columns_in_ec_shipments_table', 7),
(95, '2022_10_28_021046_update_columns_in_ec_shipments_table', 7),
(96, '2022_11_16_034522_update_type_column_in_ec_shipping_rules_table', 7),
(97, '2022_11_19_041643_add_ec_tax_product_table', 7),
(98, '2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table', 7),
(99, '2022_12_17_041532_fix_address_in_order_invoice', 7),
(100, '2022_12_26_070329_create_ec_product_views_table', 7),
(101, '2023_01_04_033051_fix_product_categories', 7),
(102, '2023_01_09_050400_add_ec_global_options_translations_table', 7),
(103, '2023_01_10_093754_add_missing_option_value_id', 7),
(104, '2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table', 7),
(105, '2023_01_26_021854_add_ec_customer_used_coupons_table', 7),
(106, '2023_02_08_015900_update_options_column_in_ec_order_product_table', 7),
(107, '2023_02_27_095752_remove_duplicate_reviews', 7),
(108, '2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table', 7),
(109, '2023_04_21_082427_create_ec_product_categorizables_table', 7),
(110, '2023_05_03_011331_add_missing_column_price_into_invoice_items_table', 7),
(111, '2023_05_17_025812_fix_invoice_issue', 7),
(112, '2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields', 7),
(113, '2023_05_27_144611_fix_exchange_rate_setting', 7),
(114, '2023_06_22_084331_add_generate_license_code_to_ec_products_table', 7),
(115, '2023_06_30_042512_create_ec_order_tax_information_table', 7),
(116, '2023_07_14_022724_remove_column_id_from_ec_product_collection_products', 7),
(117, '2023_08_09_012940_remove_column_status_in_ec_product_attributes', 7),
(118, '2023_08_15_064505_create_ec_tax_rules_table', 7),
(119, '2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable', 7),
(120, '2023_08_22_094114_drop_unique_for_barcode', 7),
(121, '2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table', 7),
(122, '2023_09_07_094312_add_index_to_product_sku_and_translations', 7),
(123, '2023_09_19_024955_create_discount_product_categories_table', 7),
(124, '2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table', 7),
(125, '2023_11_22_154643_add_unique_in_table_ec_products_variations', 7),
(126, '2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table', 7),
(127, '2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table', 7),
(128, '2023_12_25_040604_ec_create_review_replies_table', 7),
(129, '2023_12_26_090340_add_private_notes_column_to_ec_customers_table', 7),
(130, '2024_01_16_070706_fix_translation_tables', 7),
(131, '2024_01_23_075227_add_proof_file_to_ec_orders_table', 7),
(132, '2024_03_26_041531_add_cancel_reason_to_ec_orders_table', 7),
(133, '2024_03_27_062402_create_ec_customer_deletion_requests_table', 7),
(134, '2024_03_29_042242_migrate_old_captcha_settings', 7),
(135, '2024_03_29_093946_create_ec_order_return_histories_table', 7),
(136, '2024_04_01_063523_add_customer_columns_to_ec_reviews_table', 7),
(137, '2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting', 7),
(138, '2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table', 7),
(139, '2024_05_07_073153_improve_table_wishlist', 7),
(140, '2024_05_07_093703_add_missing_zip_code_into_table_store_locators', 7),
(141, '2024_05_15_021503_fix_invoice_path', 7),
(142, '2024_06_20_160724_create_ec_shared_wishlists_table', 7),
(143, '2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table', 7),
(144, '2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table', 7),
(145, '2024_07_14_071826_make_customer_email_nullable', 7),
(146, '2024_07_15_104916_add_video_media_column_to_ec_products_table', 7),
(147, '2024_07_26_052530_add_percentage_to_tax_rules_table', 7),
(148, '2024_08_14_123028_add_customer_delivered_confirmed_at_column_to_ec_shipments_table', 7),
(149, '2018_07_09_221238_create_faq_table', 8),
(150, '2021_12_03_082134_create_faq_translations', 8),
(151, '2023_11_17_063408_add_description_column_to_faq_categories_table', 8),
(152, '2016_10_03_032336_create_languages_table', 9),
(153, '2023_09_14_022423_add_index_for_language_table', 9),
(154, '2021_10_25_021023_fix-priority-load-for-language-advanced', 10),
(155, '2021_12_03_075608_create_page_translations', 10),
(156, '2023_07_06_011444_create_slug_translations_table', 10),
(157, '2019_11_18_061011_create_country_table', 11),
(158, '2021_12_03_084118_create_location_translations', 11),
(159, '2021_12_03_094518_migrate_old_location_data', 11),
(160, '2021_12_10_034440_switch_plugin_location_to_use_language_advanced', 11),
(161, '2022_01_16_085908_improve_plugin_location', 11),
(162, '2022_08_04_052122_delete_location_backup_tables', 11),
(163, '2023_04_23_061847_increase_state_translations_abbreviation_column', 11),
(164, '2023_07_26_041451_add_more_columns_to_location_table', 11),
(165, '2023_07_27_041451_add_more_columns_to_location_translation_table', 11),
(166, '2023_08_15_073307_drop_unique_in_states_cities_translations', 11),
(167, '2023_10_21_065016_make_state_id_in_table_cities_nullable', 11),
(168, '2024_08_17_094600_add_image_into_countries', 11),
(169, '2021_07_06_030002_create_marketplace_table', 12),
(170, '2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table', 12),
(171, '2021_10_04_033903_add_column_approved_by_into_table_ec_products', 12),
(172, '2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table', 12),
(173, '2021_10_10_054216_add_columns_to_mp_customer_revenues_table', 12),
(174, '2021_12_06_031304_update_table_mp_customer_revenues', 12),
(175, '2022_10_19_152916_add_columns_to_mp_stores_table', 12),
(176, '2022_10_20_062849_create_mp_category_sale_commissions_table', 12),
(177, '2022_11_02_071413_add_more_info_for_store', 12),
(178, '2022_11_02_080444_add_tax_info', 12),
(179, '2023_02_01_062030_add_store_translations', 12),
(180, '2023_02_13_032133_update_fee_column_mp_customer_revenues_table', 12),
(181, '2023_02_17_023648_fix_store_prefix', 12),
(182, '2024_04_03_062451_add_cover_image_to_table_mp_stores', 12),
(183, '2024_05_07_082630_create_mp_messages_table', 12),
(184, '2024_07_19_131849_add_documents_to_mp_stores_table', 12),
(185, '2024_08_18_083119_add_tax_id_column_to_mp_stores_table', 12),
(186, '2017_10_24_154832_create_newsletter_table', 13),
(187, '2024_03_25_000001_update_captcha_settings_for_newsletter', 13),
(188, '2017_05_18_080441_create_payment_tables', 14),
(189, '2021_03_27_144913_add_customer_type_into_table_payments', 14),
(190, '2021_05_24_034720_make_column_currency_nullable', 14),
(191, '2021_08_09_161302_add_metadata_column_to_payments_table', 14),
(192, '2021_10_19_020859_update_metadata_field', 14),
(193, '2022_06_28_151901_activate_paypal_stripe_plugin', 14),
(194, '2022_07_07_153354_update_charge_id_in_table_payments', 14),
(195, '2024_07_04_083133_create_payment_logs_table', 14),
(196, '2017_07_11_140018_create_simple_slider_table', 15),
(197, '2016_10_07_193005_create_translations_table', 16),
(198, '2023_12_12_105220_drop_translations_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `mp_category_sale_commissions`
--

CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_category_id` bigint(20) UNSIGNED NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mp_customer_revenues`
--

CREATE TABLE `mp_customer_revenues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT 0.00,
  `fee` decimal(15,2) DEFAULT 0.00,
  `amount` decimal(15,2) DEFAULT 0.00,
  `current_balance` decimal(15,2) DEFAULT 0.00,
  `currency` varchar(120) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mp_customer_withdrawals`
--

CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fee` decimal(15,2) UNSIGNED DEFAULT 0.00,
  `amount` decimal(15,2) UNSIGNED DEFAULT 0.00,
  `current_balance` decimal(15,2) UNSIGNED DEFAULT 0.00,
  `currency` varchar(120) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `bank_info` text DEFAULT NULL,
  `payment_channel` varchar(60) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'pending',
  `images` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mp_messages`
--

CREATE TABLE `mp_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mp_stores`
--

CREATE TABLE `mp_stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `cover_image` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `company` varchar(191) DEFAULT NULL,
  `tax_id` varchar(191) DEFAULT NULL,
  `certificate_file` varchar(191) DEFAULT NULL,
  `government_id_file` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mp_stores_translations`
--

CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) NOT NULL,
  `mp_stores_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `company` varchar(191) DEFAULT NULL,
  `cover_image` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mp_vendor_info`
--

CREATE TABLE `mp_vendor_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_fee` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_revenue` decimal(15,2) NOT NULL DEFAULT 0.00,
  `signature` varchar(191) DEFAULT NULL,
  `bank_info` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) DEFAULT 'bank_transfer',
  `tax_info` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(120) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `content` longtext DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `template` varchar(60) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', '<div>[simple-slider key=\"home-slider\" is_autoplay=\"yes\" autoplay_speed=\"5000\" ads=\"VC2C8Q1UGCBG\" background=\"general/slider-bg.jpg\"][/simple-slider]</div><div>[featured-product-categories title=\"Browse by Category\"][/featured-product-categories]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[flash-sale title=\"Top Saver Today\" flash_sale_id=\"1\"][/flash-sale]</div><div>[product-category-products title=\"Just Landing\" category_id=\"23\"][/product-category-products]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[product-collections title=\"Essential Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[featured-posts title=\"Health Daily\" background=\"general/blog-bg.jpg\"\n                        app_enabled=\"1\"\n                        app_title=\"Shop faster with Farmart App\"\n                        app_description=\"Available on both iOS & Android\"\n                        app_bg=\"general/app-bg.png\"\n                        app_android_img=\"general/app-android.png\"\n                        app_android_link=\"#\"\n                        app_ios_img=\"general/app-ios.png\"\n                        app_ios_link=\"#\"][/featured-posts]</div>', 1, NULL, 'homepage', NULL, 'published', '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(2, 'About us', NULL, 1, NULL, NULL, NULL, 'published', '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(3, 'Terms Of Use', NULL, 1, NULL, NULL, NULL, 'published', '2025-01-12 18:00:00', '2025-01-13 07:50:24'),
(4, 'Terms &amp; Conditions', NULL, 1, NULL, NULL, NULL, 'published', '2025-01-12 18:00:00', '2025-01-13 07:50:24'),
(5, 'Refund Policy', NULL, 1, NULL, NULL, NULL, 'published', '2025-01-12 18:00:00', '2025-01-13 07:50:24'),
(6, 'Blog', '<p>---</p>', 1, NULL, 'full-width', NULL, 'published', '2025-01-12 18:00:00', '2025-01-13 07:50:24'),
(7, 'FAQs', '<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>', 1, NULL, NULL, NULL, 'published', '2025-01-12 18:00:00', '2025-01-13 07:50:24'),
(8, 'Contact', '<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Info\" subtitle=\"Location\" name_1=\"Store\" address_1=\"68 Atlantic Ave St, Brooklyn, NY 90002, USA\" phone_1=\"(+005) 5896 72 78 79\" email_1=\"support@farmart.com\" name_2=\"Warehouse\" address_2=\"172 Richmond Hill Ave St, Stamford, NY 90002, USA\" phone_2=\"(+005) 5896 03 04 05\" show_contact_form=\"1\" ][/contact-info-boxes]</div>', 1, NULL, NULL, NULL, 'published', '2025-01-12 18:00:00', '2025-01-13 07:50:23'),
(9, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, NULL, NULL, 'published', '2025-01-12 18:00:00', '2025-01-13 07:50:23'),
(10, 'Affiliate', NULL, 1, NULL, NULL, NULL, 'published', '2025-01-12 18:00:00', '2025-01-13 07:50:23'),
(11, 'Career', NULL, 1, NULL, NULL, NULL, 'published', '2025-01-12 18:00:00', '2025-01-13 07:50:23'),
(12, 'Coming soon', '<div>[coming-soon time=\"2025-08-22 03:36:25\" title=\"We’re coming soon.\" subtitle=\"Currently we’re working on our brand new website and will be\nlaunching soon.\" social_title=\"Connect us on social networks\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>', 1, NULL, 'coming-soon', NULL, 'published', '2025-01-12 18:00:00', '2025-01-13 07:50:22');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translations`
--

CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) NOT NULL,
  `pages_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(120) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `charge_id` varchar(191) DEFAULT NULL,
  `payment_channel` varchar(60) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(60) DEFAULT 'pending',
  `payment_type` varchar(191) DEFAULT 'confirm',
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `refunded_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `refund_note` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) DEFAULT NULL,
  `metadata` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_logs`
--

CREATE TABLE `payment_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(191) NOT NULL,
  `request` longtext DEFAULT NULL,
  `response` longtext DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(191) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `format_type` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, '4 Expert Tips On How To Choose The Right Men’s Wallet', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 1875, NULL, '2025-01-12 18:00:00', '2025-01-13 07:52:10'),
(2, 'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 1541, NULL, '2025-01-12 18:00:00', '2025-01-13 07:52:10'),
(3, 'The Top 2020 Handbag Trends to Know', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 1163, NULL, '2025-01-12 18:00:00', '2025-01-13 07:52:11'),
(4, 'How to Match the Color of Your Handbag With an Outfit', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 1968, NULL, '2025-01-12 18:00:00', '2025-01-13 07:52:11'),
(5, 'How to Care for Leather Bags', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 611, NULL, '2025-01-12 18:00:00', '2025-01-13 07:52:11'),
(6, 'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 628, NULL, '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(7, 'Essential Qualities of Highly Successful Music', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7.jpg', 1451, NULL, '2025-01-12 18:00:00', '2025-01-13 07:52:10'),
(8, '9 Things I Love About Shaving My Head', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/8.jpg', 1175, NULL, '2025-01-12 18:00:00', '2025-01-13 07:52:10'),
(9, 'Why Teamwork Really Makes The Dream Work', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/9.jpg', 161, NULL, '2025-01-12 18:00:00', '2025-01-13 07:52:10'),
(10, 'The World Caters to Average People', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/10.jpg', 2402, NULL, '2025-01-12 18:00:00', '2025-01-13 07:52:10');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(11, 'The litigants on the screen are not actors', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/11.jpg', 670, NULL, '2025-01-12 18:00:00', '2025-01-13 07:52:10');

-- --------------------------------------------------------

--
-- Table structure for table `posts_translations`
--

CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) NOT NULL,
  `posts_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`category_id`, `post_id`) VALUES
(1, 1),
(4, 1),
(1, 2),
(4, 2),
(1, 3),
(4, 3),
(2, 4),
(4, 4),
(1, 5),
(4, 5),
(1, 6),
(4, 6),
(1, 7),
(4, 7),
(1, 8),
(3, 8),
(1, 9),
(3, 9),
(1, 10),
(4, 10),
(2, 11),
(3, 11);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`tag_id`, `post_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(5, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 6),
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(5, 7),
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(5, 8),
(1, 9),
(2, 9),
(3, 9),
(4, 9),
(5, 9),
(1, 10),
(2, 10),
(3, 10),
(4, 10),
(5, 10),
(1, 11),
(2, 11),
(3, 11),
(4, 11),
(5, 11);

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) NOT NULL,
  `revisionable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `key` varchar(120) NOT NULL,
  `old_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Botble\\Page\\Models\\Page', 12, 1, 'created_at', '2024-08-22 02:36:25', '2025-01-13 00:00:00', '2025-01-13 07:50:22', '2025-01-13 07:50:22'),
(2, 'Botble\\Page\\Models\\Page', 11, 1, 'created_at', '2024-08-22 02:36:25', '2025-01-13 00:00:00', '2025-01-13 07:50:23', '2025-01-13 07:50:23'),
(3, 'Botble\\Page\\Models\\Page', 10, 1, 'created_at', '2024-08-22 02:36:25', '2025-01-13 00:00:00', '2025-01-13 07:50:23', '2025-01-13 07:50:23'),
(4, 'Botble\\Page\\Models\\Page', 9, 1, 'created_at', '2024-08-22 02:36:25', '2025-01-13 00:00:00', '2025-01-13 07:50:23', '2025-01-13 07:50:23'),
(5, 'Botble\\Page\\Models\\Page', 8, 1, 'created_at', '2024-08-22 02:36:25', '2025-01-13 00:00:00', '2025-01-13 07:50:23', '2025-01-13 07:50:23'),
(6, 'Botble\\Page\\Models\\Page', 7, 1, 'created_at', '2024-08-22 02:36:25', '2025-01-13 00:00:00', '2025-01-13 07:50:24', '2025-01-13 07:50:24'),
(7, 'Botble\\Page\\Models\\Page', 6, 1, 'created_at', '2024-08-22 02:36:25', '2025-01-13 00:00:00', '2025-01-13 07:50:24', '2025-01-13 07:50:24'),
(8, 'Botble\\Page\\Models\\Page', 5, 1, 'created_at', '2024-08-22 02:36:25', '2025-01-13 00:00:00', '2025-01-13 07:50:24', '2025-01-13 07:50:24'),
(9, 'Botble\\Page\\Models\\Page', 4, 1, 'created_at', '2024-08-22 02:36:25', '2025-01-13 00:00:00', '2025-01-13 07:50:24', '2025-01-13 07:50:24'),
(10, 'Botble\\Page\\Models\\Page', 3, 1, 'created_at', '2024-08-22 02:36:25', '2025-01-13 00:00:00', '2025-01-13 07:50:25', '2025-01-13 07:50:25'),
(11, 'Botble\\Blog\\Models\\Post', 7, 1, 'created_at', '2024-08-22 02:36:25', '2025-01-13 00:00:00', '2025-01-13 07:52:10', '2025-01-13 07:52:10'),
(12, 'Botble\\Blog\\Models\\Post', 8, 1, 'created_at', '2024-08-22 02:36:25', '2025-01-13 00:00:00', '2025-01-13 07:52:10', '2025-01-13 07:52:10'),
(13, 'Botble\\Blog\\Models\\Post', 9, 1, 'created_at', '2024-08-22 02:36:25', '2025-01-13 00:00:00', '2025-01-13 07:52:10', '2025-01-13 07:52:10'),
(14, 'Botble\\Blog\\Models\\Post', 10, 1, 'created_at', '2024-08-22 02:36:25', '2025-01-13 00:00:00', '2025-01-13 07:52:10', '2025-01-13 07:52:10'),
(15, 'Botble\\Blog\\Models\\Post', 11, 1, 'created_at', '2024-08-22 02:36:25', '2025-01-13 00:00:00', '2025-01-13 07:52:10', '2025-01-13 07:52:10'),
(16, 'Botble\\Blog\\Models\\Post', 1, 1, 'created_at', '2024-08-22 02:36:24', '2025-01-13 00:00:00', '2025-01-13 07:52:10', '2025-01-13 07:52:10'),
(17, 'Botble\\Blog\\Models\\Post', 2, 1, 'created_at', '2024-08-22 02:36:24', '2025-01-13 00:00:00', '2025-01-13 07:52:10', '2025-01-13 07:52:10'),
(18, 'Botble\\Blog\\Models\\Post', 3, 1, 'created_at', '2024-08-22 02:36:24', '2025-01-13 00:00:00', '2025-01-13 07:52:11', '2025-01-13 07:52:11'),
(19, 'Botble\\Blog\\Models\\Post', 4, 1, 'created_at', '2024-08-22 02:36:24', '2025-01-13 00:00:00', '2025-01-13 07:52:11', '2025-01-13 07:52:11'),
(20, 'Botble\\Blog\\Models\\Post', 5, 1, 'created_at', '2024-08-22 02:36:24', '2025-01-13 00:00:00', '2025-01-13 07:52:11', '2025-01-13 07:52:11');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `permissions` text DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.withdrawal.invoice\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}', 'Admin users role', 1, 1, 1, '2024-08-21 20:36:10', '2024-08-21 20:36:10');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2, 'api_enabled', '0', NULL, '2025-01-13 07:01:19'),
(3, 'activated_plugins', '[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\"]', NULL, '2025-01-13 07:01:19'),
(4, 'analytics_dashboard_widgets', '0', '2024-08-21 20:36:08', '2025-01-13 07:01:19'),
(5, 'enable_recaptcha_botble_contact_forms_fronts_contact_form', '1', '2024-08-21 20:36:08', '2025-01-13 07:01:19'),
(6, 'api_layer_api_key', '', NULL, '2025-01-13 07:01:19'),
(9, 'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form', '1', '2024-08-21 20:36:09', '2025-01-13 07:01:19'),
(12, 'language_hide_default', '1', NULL, '2025-01-13 07:01:19'),
(14, 'language_display', 'all', NULL, '2025-01-13 07:01:19'),
(15, 'language_hide_languages', '[]', NULL, '2025-01-13 07:01:19'),
(16, 'ecommerce_store_name', 'Farmart', NULL, '2025-01-13 07:01:19'),
(17, 'ecommerce_store_phone', '1800979769', NULL, '2025-01-13 07:01:19'),
(18, 'ecommerce_store_address', '502 New Street', NULL, '2025-01-13 07:01:19'),
(19, 'ecommerce_store_state', 'Brighton VIC', NULL, '2025-01-13 07:01:19'),
(20, 'ecommerce_store_city', 'Brighton VIC', NULL, '2025-01-13 07:01:19'),
(21, 'ecommerce_store_country', 'AU', NULL, '2025-01-13 07:01:19'),
(22, 'simple_slider_using_assets', '0', NULL, '2025-01-13 07:01:19'),
(23, 'media_random_hash', '90476f45401231cb6e855c0d704e76b4', NULL, '2025-01-13 07:01:19'),
(24, 'payment_cod_status', '1', NULL, '2025-01-13 07:01:19'),
(25, 'payment_bank_transfer_status', '1', NULL, '2025-01-13 07:01:19'),
(26, 'theme', 'farmart', NULL, '2025-01-13 07:01:19'),
(27, 'show_admin_bar', '1', NULL, '2025-01-13 07:01:19'),
(28, 'language_switcher_display', 'dropdown', NULL, '2025-01-13 07:01:19'),
(29, 'admin_favicon', 'general/favicon.png', NULL, '2025-01-13 07:01:19'),
(30, 'admin_logo', 'general/logo-light.png', NULL, '2025-01-13 07:01:20'),
(31, 'permalink-botble-blog-models-post', 'blog', NULL, '2025-01-13 07:01:20'),
(32, 'permalink-botble-blog-models-category', 'blog', NULL, '2025-01-13 07:01:20'),
(33, 'payment_cod_description', 'Please pay money directly to the postman, if you choose cash on delivery method (COD).', NULL, '2025-01-13 07:01:20'),
(34, 'payment_bank_transfer_description', 'Please send money to our bank account: ACB - 69270 213 19.', NULL, '2025-01-13 07:01:20'),
(35, 'payment_stripe_payment_type', 'stripe_checkout', NULL, '2025-01-13 07:01:20'),
(36, 'plugins_ecommerce_customer_new_order_status', '0', NULL, '2025-01-13 07:01:20'),
(37, 'plugins_ecommerce_admin_new_order_status', '0', NULL, '2025-01-13 07:01:20'),
(38, 'ecommerce_is_enabled_support_digital_products', '1', NULL, '2025-01-13 07:01:20'),
(39, 'ecommerce_load_countries_states_cities_from_location_plugin', '0', NULL, '2025-01-13 07:01:20'),
(40, 'payment_bank_transfer_display_bank_info_at_the_checkout_success_page', '1', NULL, '2025-01-13 07:01:20'),
(41, 'ecommerce_product_sku_format', 'FM-2443-%s%s%s%s', NULL, '2025-01-13 07:01:20'),
(42, 'theme-farmart-site_title', 'Farmart - Laravel Ecommerce system', NULL, '2025-01-13 07:01:20'),
(43, 'theme-farmart-seo_description', 'Farmart is a modern and flexible Multipurpose Marketplace Laravel script. This script is suited for electronic, organic and grocery store, furniture store, clothing store, hitech store and accessories store… With the theme, you can create your own marketplace and allow vendors to sell just like Amazon, Envato, eBay…', NULL, '2025-01-13 07:01:20'),
(44, 'theme-farmart-copyright', '© %Y Farmart. All Rights Reserved.', NULL, '2025-01-13 07:01:20'),
(45, 'theme-farmart-favicon', 'general/favicon.png', NULL, '2025-01-13 07:01:20'),
(46, 'theme-farmart-logo', 'general/logo.png', NULL, '2025-01-13 07:01:20'),
(47, 'theme-farmart-seo_og_image', 'general/open-graph-image.png', NULL, '2025-01-13 07:01:20'),
(48, 'theme-farmart-image-placeholder', 'general/placeholder.png', NULL, '2025-01-13 07:01:20'),
(49, 'theme-farmart-address', 'ABC Street, Sylhet', NULL, '2025-01-13 07:01:20'),
(50, 'theme-farmart-hotline', '8 80 1234567-89', NULL, '2025-01-13 07:01:20'),
(51, 'theme-farmart-email', 'contact@fartmart.co', NULL, '2025-01-13 07:01:20'),
(52, 'theme-farmart-working_time', 'Mon - Fri: 07AM - 06PM', NULL, '2025-01-13 07:01:20'),
(53, 'theme-farmart-payment_methods_image', 'general/footer-payments.png', NULL, '2025-01-13 07:01:20'),
(54, 'theme-farmart-homepage_id', '1', NULL, '2025-01-13 07:01:20'),
(55, 'theme-farmart-blog_page_id', '6', NULL, '2025-01-13 07:01:20'),
(56, 'theme-farmart-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies ', NULL, '2025-01-13 07:01:20'),
(57, 'theme-farmart-cookie_consent_learn_more_url', '/cookie-policy', NULL, '2025-01-13 07:01:20'),
(58, 'theme-farmart-cookie_consent_learn_more_text', 'Cookie Policy', NULL, '2025-01-13 07:01:20'),
(59, 'theme-farmart-number_of_products_per_page', '40', NULL, '2025-01-13 07:01:20'),
(60, 'theme-farmart-number_of_cross_sale_product', '6', NULL, '2025-01-13 07:01:20'),
(61, 'theme-farmart-logo_in_the_checkout_page', 'general/logo.png', NULL, '2025-01-13 07:01:20'),
(62, 'theme-farmart-logo_in_invoices', 'general/logo.png', NULL, '2025-01-13 07:01:20'),
(63, 'theme-farmart-logo_vendor_dashboard', 'general/logo.png', NULL, '2025-01-13 07:01:20'),
(64, 'theme-farmart-404_page_image', 'general/404.png', NULL, '2025-01-13 07:01:20'),
(65, 'theme-farmart-social_links', '[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background-color\",\"value\":\"#3b5999\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background-color\",\"value\":\"#000\"}],[{\"key\":\"name\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background-color\",\"value\":\"#0a66c2\"}]]', NULL, '2025-01-13 07:01:20'),
(66, 'theme-farmart-social_sharing', '[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background_color\",\"value\":\"#3b5999\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-twitter\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background_color\",\"value\":\"#55acee\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background_color\",\"value\":\"#b10c0c\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background_color\",\"value\":\"#0271ae\"}]]', NULL, '2025-01-13 07:01:20'),
(67, 'theme-farmart-primary_font', 'Mulish', NULL, '2025-01-13 07:01:20'),
(68, 'theme-farmart-newsletter_popup_enable', '1', NULL, '2025-01-13 07:01:20'),
(69, 'theme-farmart-newsletter_popup_image', 'general/newsletter-popup.png', NULL, '2025-01-13 07:01:20'),
(70, 'theme-farmart-newsletter_popup_title', 'Subscribe Now', NULL, '2025-01-13 07:01:20'),
(71, 'theme-farmart-newsletter_popup_subtitle', 'Newsletter', NULL, '2025-01-13 07:01:20'),
(72, 'theme-farmart-newsletter_popup_description', 'Subscribe to our newsletter and get 10% off your first purchase', NULL, '2025-01-13 07:01:20'),
(73, 'licensed_to', 'Admin', NULL, '2025-01-13 07:01:20'),
(74, 'theme-farmart-admin_logo', 'general/logo-light.png', NULL, '2025-01-13 07:01:20'),
(75, 'theme-farmart-admin_favicon', 'general/favicon.png', NULL, '2025-01-13 07:01:20'),
(76, 'is_completed_get_started', '1', NULL, '2025-01-13 07:01:20'),
(77, 'theme-farmart-sticky_header_enabled', 'yes', NULL, NULL),
(78, 'theme-farmart-sticky_header_mobile_enabled', 'yes', NULL, NULL),
(79, 'theme-farmart-sticky_header_content_position', 'middle', NULL, NULL),
(80, 'theme-farmart-preloader_enabled', 'yes', NULL, NULL),
(81, 'theme-farmart-lazy_load_image_enabled', 'yes', NULL, NULL),
(82, 'theme-farmart-use_source_assets_from', 'cdn', NULL, NULL),
(83, 'theme-farmart-social_share_enabled', 'yes', NULL, NULL),
(84, 'theme-farmart-payment_methods_link', '', NULL, NULL),
(85, 'theme-farmart-show_site_name', '0', NULL, NULL),
(86, 'theme-farmart-seo_title', '', NULL, NULL),
(87, 'theme-farmart-term_and_privacy_policy_url', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `simple_sliders`
--

CREATE TABLE `simple_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `key` varchar(120) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_sliders`
--

INSERT INTO `simple_sliders` (`id`, `name`, `key`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home slider', 'home-slider', 'The main slider on homepage', 'published', '2024-08-21 20:36:25', '2025-01-13 08:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `simple_slider_items`
--

CREATE TABLE `simple_slider_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `simple_slider_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `image` varchar(191) NOT NULL,
  `link` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_slider_items`
--

INSERT INTO `simple_slider_items` (`id`, `simple_slider_id`, `title`, `image`, `link`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Slider 1', 'about-1.jpg', '/products', '', 1, '2024-08-21 20:36:25', '2025-01-13 08:00:46');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(191) NOT NULL,
  `prefix` varchar(120) DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(6, 'fruits-vegetables', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(7, 'fruits', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(8, 'apples', 3, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(9, 'bananas', 4, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(10, 'berries', 5, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(11, 'oranges-easy-peelers', 6, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(12, 'grapes', 7, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(13, 'lemons-limes', 8, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(14, 'peaches-nectarines', 9, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(15, 'pears', 10, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(16, 'melon', 11, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(17, 'avocados', 12, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(18, 'plums-apricots', 13, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(19, 'vegetables', 14, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(20, 'potatoes', 15, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(21, 'carrots-root-vegetables', 16, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(22, 'broccoli-cauliflower', 17, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(23, 'cabbage-spinach-greens', 18, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(24, 'onions-leeks-garlic', 19, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(25, 'mushrooms', 20, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(26, 'tomatoes', 21, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(27, 'beans-peas-sweetcorn', 22, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(28, 'freshly-drink-orange-juice', 23, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(29, 'breads-sweets', 24, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(30, 'crisps-snacks-nuts', 25, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(31, 'crisps-popcorn', 26, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(32, 'nuts-seeds', 27, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(33, 'lighter-options', 28, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(34, 'cereal-bars', 29, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(35, 'breadsticks-pretzels', 30, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(36, 'fruit-snacking', 31, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(37, 'rice-corn-cakes', 32, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(38, 'protein-energy-snacks', 33, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(39, 'toddler-snacks', 34, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(40, 'meat-snacks', 35, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(41, 'beans', 36, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(42, 'lentils', 37, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(43, 'chickpeas', 38, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(44, 'tins-cans', 39, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(45, 'tomatoes', 40, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(46, 'baked-beans-spaghetti', 41, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(47, 'fish', 42, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(48, 'beans-pulses', 43, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(49, 'fruit', 44, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(50, 'coconut-milk-cream', 45, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(51, 'lighter-options', 46, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(52, 'olives', 47, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(53, 'sweetcorn', 48, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(54, 'carrots', 49, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(55, 'peas', 50, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(56, 'mixed-vegetables', 51, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(57, 'frozen-seafoods', 52, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(58, 'raw-meats', 53, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(59, 'smooth-drinks', 54, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2025-01-14 00:27:40'),
(60, 'ready-meals', 55, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(61, 'meals-for-1', 56, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(62, 'meals-for-2', 57, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(63, 'indian', 58, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(64, 'italian', 59, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(65, 'chinese', 60, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(66, 'traditional-british', 61, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(67, 'thai-oriental', 62, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(68, 'mediterranean-moroccan', 63, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(69, 'mexican-caribbean', 64, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(70, 'lighter-meals', 65, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(71, 'lunch-veg-pots', 66, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(72, 'salad-herbs', 67, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(73, 'salad-bags', 68, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(74, 'cucumber', 69, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(75, 'tomatoes', 70, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(76, 'lettuce', 71, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(77, 'lunch-salad-bowls', 72, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(78, 'lunch-salad-bowls', 73, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(79, 'fresh-herbs', 74, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(80, 'avocados', 75, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(81, 'peppers', 76, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(82, 'coleslaw-potato-salad', 77, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(83, 'spring-onions', 78, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(84, 'chilli-ginger-garlic', 79, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(85, 'tea-coffee', 80, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(86, 'milks-and-dairies', 81, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(87, 'pet-foods', 82, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(88, 'food-cupboard', 83, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2024-08-21 20:36:10', '2024-08-21 20:36:10'),
(168, 'ecommerce', 1, 'Botble\\Blog\\Models\\Category', 'blog', '2024-08-21 20:36:24', '2024-08-21 20:36:25'),
(169, 'fashion', 2, 'Botble\\Blog\\Models\\Category', 'blog', '2024-08-21 20:36:24', '2024-08-21 20:36:25'),
(170, 'electronic', 3, 'Botble\\Blog\\Models\\Category', 'blog', '2024-08-21 20:36:24', '2024-08-21 20:36:25'),
(171, 'commercial', 4, 'Botble\\Blog\\Models\\Category', 'blog', '2024-08-21 20:36:24', '2024-08-21 20:36:25'),
(172, 'general', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(173, 'design', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(174, 'fashion', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(175, 'branding', 4, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(176, 'modern', 5, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-08-21 20:36:24', '2024-08-21 20:36:24'),
(177, '4-expert-tips-on-how-to-choose-the-right-mens-wallet', 1, 'Botble\\Blog\\Models\\Post', 'blog', '2024-08-21 20:36:24', '2024-08-21 20:36:25'),
(178, 'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', 2, 'Botble\\Blog\\Models\\Post', 'blog', '2024-08-21 20:36:24', '2024-08-21 20:36:25'),
(179, 'the-top-2020-handbag-trends-to-know', 3, 'Botble\\Blog\\Models\\Post', 'blog', '2024-08-21 20:36:24', '2024-08-21 20:36:25'),
(180, 'how-to-match-the-color-of-your-handbag-with-an-outfit', 4, 'Botble\\Blog\\Models\\Post', 'blog', '2024-08-21 20:36:24', '2024-08-21 20:36:25'),
(181, 'how-to-care-for-leather-bags', 5, 'Botble\\Blog\\Models\\Post', 'blog', '2024-08-21 20:36:24', '2024-08-21 20:36:25'),
(182, 'were-crushing-hard-on-summers-10-biggest-bag-trends', 6, 'Botble\\Blog\\Models\\Post', 'blog', '2024-08-21 20:36:24', '2024-08-21 20:36:25'),
(183, 'essential-qualities-of-highly-successful-music', 7, 'Botble\\Blog\\Models\\Post', 'blog', '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(184, '9-things-i-love-about-shaving-my-head', 8, 'Botble\\Blog\\Models\\Post', 'blog', '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(185, 'why-teamwork-really-makes-the-dream-work', 9, 'Botble\\Blog\\Models\\Post', 'blog', '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(186, 'the-world-caters-to-average-people', 10, 'Botble\\Blog\\Models\\Post', 'blog', '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(187, 'the-litigants-on-the-screen-are-not-actors', 11, 'Botble\\Blog\\Models\\Post', 'blog', '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(188, 'home', 1, 'Botble\\Page\\Models\\Page', '', '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(189, 'about-us', 2, 'Botble\\Page\\Models\\Page', '', '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(190, 'terms-of-use', 3, 'Botble\\Page\\Models\\Page', '', '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(191, 'terms-conditions', 4, 'Botble\\Page\\Models\\Page', '', '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(192, 'refund-policy', 5, 'Botble\\Page\\Models\\Page', '', '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(193, 'blog', 6, 'Botble\\Page\\Models\\Page', '', '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(194, 'faqs', 7, 'Botble\\Page\\Models\\Page', '', '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(195, 'contact', 8, 'Botble\\Page\\Models\\Page', '', '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(196, 'cookie-policy', 9, 'Botble\\Page\\Models\\Page', '', '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(197, 'affiliate', 10, 'Botble\\Page\\Models\\Page', '', '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(198, 'career', 11, 'Botble\\Page\\Models\\Page', '', '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(199, 'coming-soon', 12, 'Botble\\Page\\Models\\Page', '', '2024-08-21 20:36:25', '2024-08-21 20:36:25'),
(287, 'maxine-hevenly', 153, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-01-13 13:33:00', '2025-01-13 13:33:00'),
(288, 'maxine-heavenly', 154, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-01-13 13:33:08', '2025-01-14 02:59:46');

-- --------------------------------------------------------

--
-- Table structure for table `slugs_translations`
--

CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) NOT NULL,
  `slugs_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `prefix` varchar(120) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `abbreviation` varchar(10) DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states_translations`
--

CREATE TABLE `states_translations` (
  `lang_code` varchar(20) NOT NULL,
  `states_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `abbreviation` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(191) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-01-12 18:00:00', '2025-01-13 07:53:53'),
(2, 'Design', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-01-12 18:00:00', '2025-01-13 07:53:53'),
(3, 'Fashion', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-01-12 18:00:00', '2025-01-13 07:53:52'),
(4, 'Branding', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-01-12 18:00:00', '2025-01-13 07:53:52'),
(5, 'Modern', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-01-12 18:00:00', '2025-01-13 07:53:52');

-- --------------------------------------------------------

--
-- Table structure for table `tags_translations`
--

CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) NOT NULL,
  `tags_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) DEFAULT NULL,
  `last_name` varchar(120) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `avatar_id` bigint(20) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'admin@example.com', NULL, '$2y$12$KJqeAJv3YqCAtCFCfVxYO.rIcA4vCGHIw.z0Z5EYjo9FB2RWbVfEe', 'kjWUN9n9Gq3e1bDSfIrIAaNqfRafCSVjoDDgX9A65lbkfU7tzivQuNGmkymd', '2025-01-13 06:45:24', '2025-01-13 07:02:52', 'Saiful', 'Islam', 'Admin', 263, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_meta`
--

INSERT INTO `user_meta` (`id`, `key`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'theme_mode', 'dark', 1, '2025-01-13 06:54:49', '2025-01-13 07:03:07'),
(2, 'locale', NULL, 1, '2025-01-13 07:03:07', '2025-01-13 07:03:07'),
(3, 'locale_direction', 'ltr', 1, '2025-01-13 07:03:07', '2025-01-13 07:03:07'),
(4, 'minimal_sidebar', 'no', 1, '2025-01-13 13:19:50', '2025-01-13 13:19:52');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) NOT NULL,
  `sidebar_id` varchar(120) NOT NULL,
  `theme` varchar(120) NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(1, 'SiteInfoWidget', 'footer_sidebar', 'farmart', 0, '{\"id\":\"SiteInfoWidget\",\"name\":\"Farmart \\u2013 Your Online Foods & Grocery\",\"about\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed finibus viverra iaculis. Etiam vulputate et justo eget scelerisque.\",\"phone\":\"(+965) 7492-4277\",\"address\":\"959 Homestead Street Eastlake, NYC\",\"email\":\"support@farmart.com\",\"working_time\":\"Mon - Fri: 07AM - 06PM\"}', '2024-08-21 20:36:26', '2024-08-21 20:36:26'),
(2, 'CustomMenuWidget', 'footer_sidebar', 'farmart', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Useful Links\",\"menu_id\":\"useful-links\"}', '2024-08-21 20:36:26', '2024-08-21 20:36:26'),
(3, 'CustomMenuWidget', 'footer_sidebar', 'farmart', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Help Center\",\"menu_id\":\"help-center\"}', '2024-08-21 20:36:26', '2024-08-21 20:36:26'),
(4, 'CustomMenuWidget', 'footer_sidebar', 'farmart', 3, '{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}', '2024-08-21 20:36:26', '2024-08-21 20:36:26'),
(5, 'NewsletterWidget', 'footer_sidebar', 'farmart', 4, '{\"id\":\"NewsletterWidget\",\"title\":\"Newsletter\",\"subtitle\":\"Register now to get updates on promotions and coupon. Don\\u2019t worry! We not spam\"}', '2024-08-21 20:36:26', '2024-08-21 20:36:26'),
(6, 'BlogSearchWidget', 'primary_sidebar', 'farmart', 1, '{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}', '2024-08-21 20:36:26', '2024-08-21 20:36:26'),
(7, 'BlogCategoriesWidget', 'primary_sidebar', 'farmart', 2, '{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}', '2024-08-21 20:36:26', '2024-08-21 20:36:26'),
(8, 'RecentPostsWidget', 'primary_sidebar', 'farmart', 3, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}', '2024-08-21 20:36:26', '2024-08-21 20:36:26'),
(9, 'BlogTagsWidget', 'primary_sidebar', 'farmart', 4, '{\"id\":\"BlogTagsWidget\",\"name\":\"Popular Tags\"}', '2024-08-21 20:36:26', '2024-08-21 20:36:26'),
(10, 'SiteFeaturesWidget', 'pre_footer_sidebar', 'farmart', 1, '{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-rocket.png\",\"title\":\"Free Shipping\",\"subtitle\":\"For all orders over $200\"},\"2\":{\"icon\":\"general\\/icon-reload.png\",\"title\":\"1 & 1 Returns\",\"subtitle\":\"Cancellation after 1 day\"},\"3\":{\"icon\":\"general\\/icon-protect.png\",\"title\":\"100% Secure Payment\",\"subtitle\":\"Guarantee secure payments\"},\"4\":{\"icon\":\"general\\/icon-support.png\",\"title\":\"24\\/7 Dedicated Support\",\"subtitle\":\"Anywhere & anytime\"},\"5\":{\"icon\":\"general\\/icon-tag.png\",\"title\":\"Daily Offers\",\"subtitle\":\"Discount up to 70% OFF\"}}}', '2024-08-21 20:36:26', '2024-08-21 20:36:26'),
(11, 'AdsWidget', 'products_list_sidebar', 'farmart', 1, '{\"id\":\"AdsWidget\",\"title\":\"Ads\",\"ads_key\":\"ZDOZUZZIU7FZ\",\"background\":\"general\\/background.jpg\",\"size\":\"full-width\"}', '2024-08-21 20:36:26', '2024-08-21 20:36:26'),
(12, 'SiteFeaturesWidget', 'product_detail_sidebar', 'farmart', 1, '{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-rocket.png\",\"title\":\"Free Shipping\",\"subtitle\":\"For all orders over $200\"},\"2\":{\"icon\":\"general\\/icon-reload.png\",\"title\":\"1 & 1 Returns\",\"subtitle\":\"Cancellation after 1 day\"},\"3\":{\"icon\":\"general\\/icon-protect.png\",\"title\":\"Secure Payment\",\"subtitle\":\"Guarantee secure payments\"}}}', '2024-08-21 20:36:26', '2024-08-21 20:36:26'),
(13, 'SiteInfoWidget', 'product_detail_sidebar', 'farmart', 2, '{\"id\":\"SiteInfoWidget\",\"name\":\"Store information\",\"phone\":\"(+965) 7492-4277\",\"working_time\":\"Mon - Fri: 07AM - 06PM\"}', '2024-08-21 20:36:26', '2024-08-21 20:36:26'),
(14, 'BecomeVendorWidget', 'product_detail_sidebar', 'farmart', 3, '{\"id\":\"BecomeVendorWidget\",\"name\":\"Become a Vendor?\"}', '2024-08-21 20:36:26', '2024-08-21 20:36:26'),
(15, 'ProductCategoriesWidget', 'bottom_footer_sidebar', 'farmart', 1, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}', '2024-08-21 20:36:26', '2024-08-21 20:36:26'),
(16, 'ProductCategoriesWidget', 'bottom_footer_sidebar', 'farmart', 2, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}', '2024-08-21 20:36:26', '2024-08-21 20:36:26'),
(17, 'ProductCategoriesWidget', 'bottom_footer_sidebar', 'farmart', 3, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}', '2024-08-21 20:36:26', '2024-08-21 20:36:26'),
(18, 'ProductCategoriesWidget', 'bottom_footer_sidebar', 'farmart', 4, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}', '2024-08-21 20:36:26', '2024-08-21 20:36:26'),
(19, 'ProductCategoriesWidget', 'bottom_footer_sidebar', 'farmart', 5, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}', '2024-08-21 20:36:26', '2024-08-21 20:36:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ads_key_unique` (`key`);

--
-- Indexes for table `ads_translations`
--
ALTER TABLE `ads_translations`
  ADD PRIMARY KEY (`lang_code`,`ads_id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_index` (`parent_id`),
  ADD KEY `categories_status_index` (`status`),
  ADD KEY `categories_created_at_index` (`created_at`);

--
-- Indexes for table `categories_translations`
--
ALTER TABLE `categories_translations`
  ADD PRIMARY KEY (`lang_code`,`categories_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_slug_unique` (`slug`);

--
-- Indexes for table `cities_translations`
--
ALTER TABLE `cities_translations`
  ADD PRIMARY KEY (`lang_code`,`cities_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_fields`
--
ALTER TABLE `contact_custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_fields_translations`
--
ALTER TABLE `contact_custom_fields_translations`
  ADD PRIMARY KEY (`lang_code`,`contact_custom_fields_id`);

--
-- Indexes for table `contact_custom_field_options`
--
ALTER TABLE `contact_custom_field_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_field_options_translations`
--
ALTER TABLE `contact_custom_field_options_translations`
  ADD PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries_translations`
--
ALTER TABLE `countries_translations`
  ADD PRIMARY KEY (`lang_code`,`countries_id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `ec_brands`
--
ALTER TABLE `ec_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_brands_translations`
--
ALTER TABLE `ec_brands_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_brands_id`);

--
-- Indexes for table `ec_cart`
--
ALTER TABLE `ec_cart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customers`
--
ALTER TABLE `ec_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_customers_email_unique` (`email`);

--
-- Indexes for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customer_deletion_requests`
--
ALTER TABLE `ec_customer_deletion_requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`);

--
-- Indexes for table `ec_customer_password_resets`
--
ALTER TABLE `ec_customer_password_resets`
  ADD KEY `ec_customer_password_resets_email_index` (`email`),
  ADD KEY `ec_customer_password_resets_token_index` (`token`);

--
-- Indexes for table `ec_customer_recently_viewed_products`
--
ALTER TABLE `ec_customer_recently_viewed_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customer_used_coupons`
--
ALTER TABLE `ec_customer_used_coupons`
  ADD PRIMARY KEY (`discount_id`,`customer_id`);

--
-- Indexes for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_discounts_code_unique` (`code`);

--
-- Indexes for table `ec_discount_customers`
--
ALTER TABLE `ec_discount_customers`
  ADD PRIMARY KEY (`discount_id`,`customer_id`);

--
-- Indexes for table `ec_discount_products`
--
ALTER TABLE `ec_discount_products`
  ADD PRIMARY KEY (`discount_id`,`product_id`);

--
-- Indexes for table `ec_discount_product_categories`
--
ALTER TABLE `ec_discount_product_categories`
  ADD PRIMARY KEY (`discount_id`,`product_category_id`);

--
-- Indexes for table `ec_discount_product_collections`
--
ALTER TABLE `ec_discount_product_collections`
  ADD PRIMARY KEY (`discount_id`,`product_collection_id`);

--
-- Indexes for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_flash_sales_translations`
--
ALTER TABLE `ec_flash_sales_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_flash_sales_id`);

--
-- Indexes for table `ec_global_options`
--
ALTER TABLE `ec_global_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_global_options_translations`
--
ALTER TABLE `ec_global_options_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_global_options_id`);

--
-- Indexes for table `ec_global_option_value`
--
ALTER TABLE `ec_global_option_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_global_option_value_translations`
--
ALTER TABLE `ec_global_option_value_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_global_option_value_id`);

--
-- Indexes for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_invoices`
--
ALTER TABLE `ec_invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_invoices_code_unique` (`code`),
  ADD KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  ADD KEY `ec_invoices_payment_id_index` (`payment_id`),
  ADD KEY `ec_invoices_status_index` (`status`);

--
-- Indexes for table `ec_invoice_items`
--
ALTER TABLE `ec_invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`);

--
-- Indexes for table `ec_options`
--
ALTER TABLE `ec_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_options_translations`
--
ALTER TABLE `ec_options_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_options_id`);

--
-- Indexes for table `ec_option_value`
--
ALTER TABLE `ec_option_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_option_value_translations`
--
ALTER TABLE `ec_option_value_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_option_value_id`);

--
-- Indexes for table `ec_orders`
--
ALTER TABLE `ec_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_orders_code_unique` (`code`),
  ADD KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`);

--
-- Indexes for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_referrals`
--
ALTER TABLE `ec_order_referrals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_order_referrals_order_id_index` (`order_id`);

--
-- Indexes for table `ec_order_returns`
--
ALTER TABLE `ec_order_returns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_order_returns_code_unique` (`code`);

--
-- Indexes for table `ec_order_return_histories`
--
ALTER TABLE `ec_order_return_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_return_items`
--
ALTER TABLE `ec_order_return_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_tax_information`
--
ALTER TABLE `ec_order_tax_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_order_tax_information_order_id_index` (`order_id`);

--
-- Indexes for table `ec_products`
--
ALTER TABLE `ec_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  ADD KEY `sale_type_index` (`sale_type`),
  ADD KEY `start_date_index` (`start_date`),
  ADD KEY `end_date_index` (`end_date`),
  ADD KEY `sale_price_index` (`sale_price`),
  ADD KEY `is_variation_index` (`is_variation`),
  ADD KEY `ec_products_sku_index` (`sku`);

--
-- Indexes for table `ec_products_translations`
--
ALTER TABLE `ec_products_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_products_id`);

--
-- Indexes for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_set_status_index` (`attribute_set_id`);

--
-- Indexes for table `ec_product_attributes_translations`
--
ALTER TABLE `ec_product_attributes_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attributes_id`);

--
-- Indexes for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_attribute_sets_translations`
--
ALTER TABLE `ec_product_attribute_sets_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`);

--
-- Indexes for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  ADD KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`);

--
-- Indexes for table `ec_product_categories_translations`
--
ALTER TABLE `ec_product_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_categories_id`);

--
-- Indexes for table `ec_product_categorizables`
--
ALTER TABLE `ec_product_categorizables`
  ADD PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  ADD KEY `ec_product_categorizables_category_id_index` (`category_id`),
  ADD KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  ADD KEY `ec_product_categorizables_reference_type_index` (`reference_type`);

--
-- Indexes for table `ec_product_category_product`
--
ALTER TABLE `ec_product_category_product`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `ec_product_category_product_category_id_index` (`category_id`),
  ADD KEY `ec_product_category_product_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_collections_translations`
--
ALTER TABLE `ec_product_collections_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_collections_id`);

--
-- Indexes for table `ec_product_collection_products`
--
ALTER TABLE `ec_product_collection_products`
  ADD PRIMARY KEY (`product_id`,`product_collection_id`),
  ADD KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  ADD KEY `ec_product_collection_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_cross_sale_relations`
--
ALTER TABLE `ec_product_cross_sale_relations`
  ADD PRIMARY KEY (`from_product_id`,`to_product_id`),
  ADD KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_files`
--
ALTER TABLE `ec_product_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_files_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_labels_translations`
--
ALTER TABLE `ec_product_labels_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_labels_id`);

--
-- Indexes for table `ec_product_label_products`
--
ALTER TABLE `ec_product_label_products`
  ADD PRIMARY KEY (`product_label_id`,`product_id`),
  ADD KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  ADD KEY `ec_product_label_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_related_relations`
--
ALTER TABLE `ec_product_related_relations`
  ADD PRIMARY KEY (`from_product_id`,`to_product_id`),
  ADD KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_tags_translations`
--
ALTER TABLE `ec_product_tags_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_tags_id`);

--
-- Indexes for table `ec_product_tag_product`
--
ALTER TABLE `ec_product_tag_product`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `ec_product_tag_product_product_id_index` (`product_id`),
  ADD KEY `ec_product_tag_product_tag_id_index` (`tag_id`);

--
-- Indexes for table `ec_product_up_sale_relations`
--
ALTER TABLE `ec_product_up_sale_relations`
  ADD PRIMARY KEY (`from_product_id`,`to_product_id`),
  ADD KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  ADD KEY `configurable_product_index` (`product_id`,`configurable_product_id`);

--
-- Indexes for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  ADD KEY `attribute_variation_index` (`attribute_id`,`variation_id`);

--
-- Indexes for table `ec_product_views`
--
ALTER TABLE `ec_product_views`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  ADD KEY `ec_product_views_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_with_attribute_set`
--
ALTER TABLE `ec_product_with_attribute_set`
  ADD PRIMARY KEY (`product_id`,`attribute_set_id`);

--
-- Indexes for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  ADD KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  ADD KEY `review_relation_index` (`product_id`,`customer_id`,`status`);

--
-- Indexes for table `ec_review_replies`
--
ALTER TABLE `ec_review_replies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`);

--
-- Indexes for table `ec_shared_wishlists`
--
ALTER TABLE `ec_shared_wishlists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`);

--
-- Indexes for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_tax_products`
--
ALTER TABLE `ec_tax_products`
  ADD PRIMARY KEY (`product_id`,`tax_id`),
  ADD KEY `ec_tax_products_tax_id_index` (`tax_id`),
  ADD KEY `ec_tax_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_tax_rules`
--
ALTER TABLE `ec_tax_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_wish_lists`
--
ALTER TABLE `ec_wish_lists`
  ADD PRIMARY KEY (`customer_id`,`product_id`),
  ADD KEY `wishlist_relation_index` (`product_id`,`customer_id`);

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
-- Indexes for table `faqs_translations`
--
ALTER TABLE `faqs_translations`
  ADD PRIMARY KEY (`lang_code`,`faqs_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_categories_translations`
--
ALTER TABLE `faq_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`faq_categories_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD KEY `lang_locale_index` (`lang_locale`),
  ADD KEY `lang_code_index` (`lang_code`),
  ADD KEY `lang_is_default_index` (`lang_is_default`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`),
  ADD KEY `meta_code_index` (`lang_meta_code`),
  ADD KEY `meta_origin_index` (`lang_meta_origin`),
  ADD KEY `meta_reference_type_index` (`reference_type`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`),
  ADD KEY `media_files_index` (`folder_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`),
  ADD KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `reference_type` (`reference_type`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_category_sale_commissions`
--
ALTER TABLE `mp_category_sale_commissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`);

--
-- Indexes for table `mp_customer_revenues`
--
ALTER TABLE `mp_customer_revenues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_customer_withdrawals`
--
ALTER TABLE `mp_customer_withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_messages`
--
ALTER TABLE `mp_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_stores`
--
ALTER TABLE `mp_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_stores_translations`
--
ALTER TABLE `mp_stores_translations`
  ADD PRIMARY KEY (`lang_code`,`mp_stores_id`);

--
-- Indexes for table `mp_vendor_info`
--
ALTER TABLE `mp_vendor_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_user_id_index` (`user_id`);

--
-- Indexes for table `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD PRIMARY KEY (`lang_code`,`pages_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_logs`
--
ALTER TABLE `payment_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_status_index` (`status`),
  ADD KEY `posts_author_id_index` (`author_id`),
  ADD KEY `posts_author_type_index` (`author_type`),
  ADD KEY `posts_created_at_index` (`created_at`);

--
-- Indexes for table `posts_translations`
--
ALTER TABLE `posts_translations`
  ADD PRIMARY KEY (`lang_code`,`posts_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD KEY `post_categories_category_id_index` (`category_id`),
  ADD KEY `post_categories_post_id_index` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD KEY `post_tags_tag_id_index` (`tag_id`),
  ADD KEY `post_tags_post_id_index` (`post_id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slugs_reference_id_index` (`reference_id`),
  ADD KEY `slugs_key_index` (`key`),
  ADD KEY `slugs_prefix_index` (`prefix`),
  ADD KEY `slugs_reference_index` (`reference_id`,`reference_type`);

--
-- Indexes for table `slugs_translations`
--
ALTER TABLE `slugs_translations`
  ADD PRIMARY KEY (`lang_code`,`slugs_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `states_slug_unique` (`slug`);

--
-- Indexes for table `states_translations`
--
ALTER TABLE `states_translations`
  ADD PRIMARY KEY (`lang_code`,`states_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD PRIMARY KEY (`lang_code`,`tags_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_custom_fields`
--
ALTER TABLE `contact_custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_custom_field_options`
--
ALTER TABLE `contact_custom_field_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ec_brands`
--
ALTER TABLE `ec_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ec_customers`
--
ALTER TABLE `ec_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ec_customer_deletion_requests`
--
ALTER TABLE `ec_customer_deletion_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_customer_recently_viewed_products`
--
ALTER TABLE `ec_customer_recently_viewed_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_global_options`
--
ALTER TABLE `ec_global_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ec_global_option_value`
--
ALTER TABLE `ec_global_option_value`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_invoices`
--
ALTER TABLE `ec_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_invoice_items`
--
ALTER TABLE `ec_invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_options`
--
ALTER TABLE `ec_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_option_value`
--
ALTER TABLE `ec_option_value`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_orders`
--
ALTER TABLE `ec_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_referrals`
--
ALTER TABLE `ec_order_referrals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_returns`
--
ALTER TABLE `ec_order_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_return_histories`
--
ALTER TABLE `ec_order_return_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_return_items`
--
ALTER TABLE `ec_order_return_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_tax_information`
--
ALTER TABLE `ec_order_tax_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_products`
--
ALTER TABLE `ec_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_files`
--
ALTER TABLE `ec_product_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `ec_product_views`
--
ALTER TABLE `ec_product_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `ec_review_replies`
--
ALTER TABLE `ec_review_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_shared_wishlists`
--
ALTER TABLE `ec_shared_wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_tax_rules`
--
ALTER TABLE `ec_tax_rules`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `mp_category_sale_commissions`
--
ALTER TABLE `mp_category_sale_commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mp_customer_revenues`
--
ALTER TABLE `mp_customer_revenues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mp_customer_withdrawals`
--
ALTER TABLE `mp_customer_withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mp_messages`
--
ALTER TABLE `mp_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mp_stores`
--
ALTER TABLE `mp_stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mp_vendor_info`
--
ALTER TABLE `mp_vendor_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_logs`
--
ALTER TABLE `payment_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
