-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2025 at 10:00 AM
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
-- Database: `stsj`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('pengajuan_stsj_cache_356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1755153303),
('pengajuan_stsj_cache_356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1755153303;', 1755153303),
('pengajuan_stsj_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1755139298),
('pengajuan_stsj_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1755139298;', 1755139298),
('pengajuanstsj_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1755137920),
('pengajuanstsj_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1755137920;', 1755137920);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'SERVICE', '2025-08-13 17:15:36', '2025-08-13 17:15:36'),
(2, 'OLI', '2025-08-13 17:15:44', '2025-08-13 17:15:44'),
(3, 'BAN', '2025-08-13 17:15:52', '2025-08-13 17:15:52'),
(4, 'PROPERTY', '2025-08-13 17:15:59', '2025-08-13 17:15:59'),
(5, 'ATK', '2025-08-13 17:16:04', '2025-08-13 17:16:04'),
(6, 'KIR', '2025-08-13 17:16:08', '2025-08-13 17:16:08'),
(7, 'STNK 1 TAHUN', '2025-08-13 17:16:14', '2025-08-13 17:16:14'),
(8, 'STNK 5 TAHUN', '2025-08-13 17:16:19', '2025-08-13 17:16:19'),
(9, 'IT', '2025-08-13 17:16:33', '2025-08-13 17:16:33'),
(10, 'AKI', '2025-08-13 17:38:32', '2025-08-13 17:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN', '2025-08-12 20:10:30', '2025-08-12 20:10:30'),
(2, 'MANAGER', '2025-08-12 20:10:35', '2025-08-12 20:10:35'),
(3, 'APD', '2025-08-12 20:10:40', '2025-08-12 20:10:40'),
(4, 'PACKING', '2025-08-12 20:10:45', '2025-08-12 20:10:45'),
(5, 'PICKING', '2025-08-12 20:10:50', '2025-08-12 20:10:50'),
(6, 'DELIVERY', '2025-08-12 20:10:56', '2025-08-12 20:10:56'),
(7, 'DRIVER', '2025-08-12 20:11:00', '2025-08-12 20:11:00'),
(8, 'RECEIVING', '2025-08-12 20:11:07', '2025-08-12 20:11:07'),
(9, 'COLLECTOR', '2025-08-12 20:11:24', '2025-08-12 20:11:24'),
(10, 'HEAD OF WAREHOUSE', '2025-08-12 20:12:06', '2025-08-12 20:12:06'),
(11, 'ADMIN ACCOUNTING', '2025-08-12 20:12:21', '2025-08-12 20:12:21'),
(12, 'ADMIN INVENTORY', '2025-08-12 20:12:31', '2025-08-12 20:12:31'),
(13, 'ADMIN SIP', '2025-08-12 20:12:35', '2025-08-12 20:12:35'),
(14, 'ADMIN DPACK', '2025-08-12 20:12:43', '2025-08-12 20:12:43'),
(15, 'SALES', '2025-08-12 20:13:08', '2025-08-12 20:13:08');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_08_13_025802_create_pics_table', 2),
(5, '2025_08_13_030244_create_divisions_table', 2),
(6, '2025_08_13_030509_create_vehicles_table', 2),
(7, '2025_08_13_031038_create_statuses_table', 2),
(10, '2025_08_13_031157_create_categories_table', 3),
(11, '2025_08_13_031255_create_submissions_table', 3),
(12, '2025_08_14_011132_add_submission_number_to_submissions_table', 3),
(13, '2025_08_14_053159_add_file_acc_to_submissions_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pics`
--

CREATE TABLE `pics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pics`
--

INSERT INTO `pics` (`id`, `name`, `division_id`, `created_at`, `updated_at`) VALUES
(1, 'eni endrawati', 2, '2025-08-12 21:19:30', '2025-08-12 21:19:30'),
(2, 'ma ling hauw', 2, '2025-08-12 21:19:43', '2025-08-12 21:19:43'),
(3, 'm. taufik rahman', 10, '2025-08-12 21:19:53', '2025-08-12 21:19:53'),
(4, 'agus suyono', 9, '2025-08-12 21:20:01', '2025-08-12 21:20:01'),
(5, 'hariyadi', 9, '2025-08-12 21:20:18', '2025-08-12 21:20:18'),
(6, 'adriana ada', 11, '2025-08-12 21:20:30', '2025-08-12 21:20:30'),
(7, 'm. rizal fahrial', 7, '2025-08-12 21:20:54', '2025-08-12 21:20:54'),
(8, 'nanang risdianto', 7, '2025-08-12 21:21:04', '2025-08-12 21:21:04'),
(9, 'slamet indrianto', 7, '2025-08-12 21:21:15', '2025-08-12 21:21:15'),
(10, 'syarif hidayatullah', 7, '2025-08-12 21:21:30', '2025-08-12 21:22:40'),
(11, 'dodi ilhamsyah', 7, '2025-08-12 21:21:40', '2025-08-12 21:21:40'),
(12, 'lutfi danuari', 7, '2025-08-12 21:21:53', '2025-08-12 21:21:53'),
(13, 'safarudin', 7, '2025-08-12 21:22:20', '2025-08-12 21:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6DytivcVB2KyrHrfEAjaEky9JDgkzuJthdqyzfM3', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:141.0) Gecko/20100101 Firefox/141.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoic3p1aFNvaUNYV1ozbU02bjIzQ0JwcGtLVlJMcHpNV0V2Nmp5VXQ1UiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9zdWJtaXNzaW9ucyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRGU1o5anM2M3ZjRkdGY2p1RFZ6bjZlYi5KdUVzL0IvQWtOUDhUbm9Yd3N3UExiN3MyRGhzaSI7fQ==', 1755139223),
('vZAKq40ACHYRmDLbiQSh4E59v11HPdkRkFLGNFzS', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:141.0) Gecko/20100101 Firefox/141.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiSXFjQUhxQTdUUE5yYlpnRVAwdjZtT3dEaFRqa0FBeVZ2U0J0Uks4TiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM5OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvYWRtaW4vc3VibWlzc2lvbnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkRlNaOWpzNjN2Y0ZHRmNqdURWem42ZWIuSnVFcy9CL0FrTlA4VG5vWHdzd1BMYjdzMkRoc2kiO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1755154037);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'APPROVED', '2025-08-12 20:00:57', '2025-08-12 20:01:26'),
(2, 'WAITING', '2025-08-12 20:01:38', '2025-08-12 20:01:38'),
(3, 'NOT APPROVED', '2025-08-12 20:02:14', '2025-08-12 20:02:14'),
(4, 'BELUM DIBUAT', '2025-08-12 20:02:23', '2025-08-12 20:02:23'),
(5, 'TUNGGU ESTIMASI', '2025-08-12 20:02:31', '2025-08-12 20:02:31'),
(6, 'TUNGGU FOTO', '2025-08-12 20:02:37', '2025-08-12 20:02:37'),
(7, 'REVISI', '2025-08-12 20:02:42', '2025-08-12 20:02:42');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `submission_number` varchar(255) NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED NOT NULL,
  `submission` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `submission_created_at` date NOT NULL,
  `submission_approved_at` date DEFAULT NULL,
  `notes` longtext NOT NULL,
  `file_acc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`id`, `submission_number`, `vehicle_id`, `submission`, `amount`, `status_id`, `category_id`, `submission_created_at`, `submission_approved_at`, `notes`, `file_acc`, `created_at`, `updated_at`) VALUES
(1, 'SUB-20250814-0001', 1, 'KAMPAS REM BELAKANG', 460000, 1, 1, '2025-08-05', '2025-08-06', '-', '01K2KMEBR4Y1SEJQ9GSTFTMSRB.JPG', '2025-08-13 17:17:40', '2025-08-13 22:31:56'),
(2, 'SUB-20250814-0002', 7, 'KIR:AGUSTUS 2025', 400000, 1, 6, '2025-08-06', '2025-08-06', '-', '01K2KMJBERN4HR36J8FVTA77NW.pdf', '2025-08-13 17:21:06', '2025-08-13 22:34:07'),
(3, 'SUB-20250814-0003', 7, 'ARMATURE, CARBON BRUSH', 1200000, 1, 1, '2025-08-06', '2025-08-14', '-', '01K2KHWZ7JKPV7HZKPN385F3SZ.JPG', '2025-08-13 17:21:40', '2025-08-13 21:47:29'),
(4, 'SUB-20250814-0004', 14, 'METAL DETECTOR', 674900, 2, 4, '2025-08-11', NULL, '-', NULL, '2025-08-13 17:23:25', '2025-08-13 17:23:25'),
(5, 'SUB-20250814-0005', 7, 'BAN DALAM ', 242000, 2, 3, '2025-08-12', NULL, '-', NULL, '2025-08-13 17:23:59', '2025-08-13 17:23:59'),
(6, 'SUB-20250814-0006', 1, 'GANTI AKI', 980000, 2, 10, '2025-08-14', NULL, '-', NULL, '2025-08-13 17:40:52', '2025-08-13 17:40:52'),
(7, 'SUB-20250814-0007', 4, 'KIR AGUSTUS 2025', 400000, 2, 6, '2025-08-14', NULL, '-', NULL, '2025-08-13 22:31:04', '2025-08-13 22:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'yusuf', 'yusufsidik36@gmail.com', NULL, '$2y$12$FSZ9js63vcFGFcjuDVzn6eb.JuEs/B/AkNP8TnoXwswPLb7s2Dhsi', 'BEzJO91J3QIb0ptNfA5vJYjwLUL7c6NThJdUPWjzi8TB5SDwrocXXnAJhDii', '2025-08-12 19:37:04', '2025-08-12 19:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `license_plate` varchar(255) NOT NULL,
  `pic_id` bigint(20) UNSIGNED NOT NULL,
  `merk` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `vehicle_number` varchar(255) NOT NULL,
  `engine_number` varchar(255) NOT NULL,
  `date_tax_1_year` date NOT NULL,
  `date_tax_5_year` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `license_plate`, `pic_id`, `merk`, `model`, `vehicle_number`, `engine_number`, `date_tax_1_year`, `date_tax_5_year`, `created_at`, `updated_at`) VALUES
(1, 'KT 1667 YT', 1, 'TOYOTA', 'AVANZA', 'MHKAA1BY5PK028777', '1NRG234536', '2024-07-14', '2028-07-14', '2025-08-12 21:37:46', '2025-08-12 21:37:46'),
(2, 'L 1528 QQ', 2, 'TOYOTA', 'AVANZA', 'MHKM1CA3JDK014723', 'DDY5100', '2025-10-16', '2028-10-16', '2025-08-12 21:41:30', '2025-08-12 21:41:30'),
(3, 'KT 8901 NA', 10, 'MITSUBISHI', 'PS BOX', 'MHMFE71P1DK045860', '4D34TJ08111', '2025-05-22', '2029-05-22', '2025-08-12 21:42:27', '2025-08-12 21:42:27'),
(4, 'KT 8902 NA', 9, 'MITSUBISHI', 'PS BOX', 'MHMFE71P1DK045850', '4D34TJ07754', '2025-05-22', '2029-05-22', '2025-08-12 21:43:21', '2025-08-12 21:43:21'),
(5, 'KT 8794 BG', 12, 'MITSUBISHI', 'PS BOX', 'MHMFE71P18K004855', '4D34TD10339', '2025-05-10', '2026-05-10', '2025-08-12 21:44:35', '2025-08-12 21:44:35'),
(6, 'KT 8244 ZE', 13, 'MITSUBISHI', 'CANTER PS 110 FE 71 BOX', 'MHMFE71EAPK001720', '4V21Z51732', '2025-08-16', '2028-08-16', '2025-08-12 21:45:27', '2025-08-12 21:45:27'),
(7, 'KT 8148 NE', 7, 'MITSUBISHI', 'PS BOX', 'MHMFE71PCFK005084', '4D34TKY0754', '2025-06-11', '2025-06-11', '2025-08-12 22:04:26', '2025-08-12 22:04:26'),
(8, 'KT 8196 MQ', 8, 'MITSUBISHI', 'BAN DOUBLE', 'MHMFE73P2CK019706', '4D34TH29581', '2025-05-12', '2027-05-12', '2025-08-12 22:05:00', '2025-08-12 22:05:00'),
(9, 'KT 8125 YO', 11, 'MITSUBISHI', 'COLT DIESEL BOX', 'MHMFE73P3KK006467', '4D34TT78788', '2025-01-23', '2025-01-23', '2025-08-12 22:05:43', '2025-08-12 22:05:43'),
(10, 'KT 2390 BBB', 4, 'YAMAHA', 'FINO 125 BC', 'MH3SE8840GJ019116', 'E3R2E0742098', '2026-04-25', '2026-04-25', '2025-08-12 22:18:11', '2025-08-12 22:18:11'),
(11, 'KT 2394 BBB', 6, 'YAMAHA', 'FINO 125 BC', 'MH3SE8840GJ018973', 'E3R2E0741557', '2026-04-25', '2026-04-25', '2025-08-12 22:18:48', '2025-08-12 22:18:48'),
(12, 'KT 2389 BBB', 5, 'YAMAHA', 'FINO 125 BC', 'MH3SE8840GJ020397', 'E3R2E0747768', '2026-04-25', '2026-04-25', '2025-08-12 22:19:33', '2025-08-12 22:19:33'),
(13, 'KT 2395 BBB', 3, 'YAMAHA', 'FINO 125 BC', 'MH3SE8840GJ014556', 'E3R2E0720588', '2026-04-25', '2026-04-25', '2025-08-12 22:20:25', '2025-08-12 22:20:25'),
(14, 'GUDANG', 3, '-', '-', '-', '-', '1997-01-01', '1997-01-01', '2025-08-13 17:22:23', '2025-08-13 17:22:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pics`
--
ALTER TABLE `pics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `submissions_submission_number_unique` (`submission_number`),
  ADD UNIQUE KEY `submissions_file_acc_unique` (`file_acc`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vehicles_license_plate_unique` (`license_plate`),
  ADD UNIQUE KEY `vehicles_vehicle_number_unique` (`vehicle_number`),
  ADD UNIQUE KEY `vehicles_engine_number_unique` (`engine_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pics`
--
ALTER TABLE `pics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
