-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2021 at 08:24 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `example`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_image`, `created_at`, `updated_at`) VALUES
(2, 'shamsi', 'image/brand/1692504670551698.jpg', '2021-02-23 13:07:14', NULL),
(3, 'mamad', 'image/brand/1692505188436342.jpg', '2021-02-23 13:15:28', '2021-02-23 14:59:20'),
(5, 'gholi5122551', 'image/brand/1692510212770009.jpg', '2021-02-23 14:34:45', '2021-02-23 14:41:44'),
(6, 'taghi', 'image/brand/1692800344545541.jpg.jpg', '2021-02-26 19:26:51', '2021-02-26 19:27:14'),
(8, 'jknkjnkjnknjkkj', 'image/brand/1692865730514000.jpg', '2021-02-27 12:46:08', NULL),
(9, 'uhiuhiuhiu', 'image/brand/1692866047109757.jpg', '2021-02-27 12:51:10', NULL),
(10, 'pofak', 'image/brand/1692866097528953.jpg', '2021-02-27 12:51:58', NULL),
(11, 'popopopopo', 'image/brand/1692866240623288.jpg', '2021-02-27 12:53:45', '2021-02-27 12:54:14'),
(12, 'iiuiijikiii', 'image/brand/1692866449423207.jpg', '2021-02-27 12:56:21', '2021-02-27 12:57:33'),
(13, 'trtrtrtrtr', 'image/brand/1692866667234462.jpg', '2021-02-27 12:59:24', '2021-02-27 13:01:01'),
(14, 'opinm.mmkl', 'image/brand/1693594395745000.jpg', '2021-03-07 13:47:58', '2021-03-17 20:01:34');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `category_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 2, 'hasan', '2021-02-21 11:30:09', '2021-02-21 17:45:02', NULL),
(4, 1, 'shamsi', '2021-02-21 11:45:08', '2021-02-21 15:51:52', NULL),
(5, 2, 'ghi', '2021-02-21 13:21:29', '2021-02-21 17:40:24', NULL),
(6, 1, 'ghogholi', '2021-02-21 13:34:22', '2021-02-21 17:40:13', NULL),
(7, 2, 'ali', '2021-02-21 13:34:37', '2021-02-21 17:28:38', NULL),
(8, 1, 'golabi', '2021-02-21 17:40:01', NULL, NULL),
(9, 1, 'googllo', '2021-02-21 17:41:11', NULL, NULL),
(10, 1, '5', '2021-02-21 17:41:16', NULL, NULL),
(11, 1, '6', '2021-02-21 17:41:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `address`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'golabidfasdas', 'mamad@djfkjds.com', '1000', '2021-03-11 18:21:41', '2021-03-27 10:35:22'),
(4, 'jdkfnksjdfksnlkfdjnfdskj\r\ndsflknklsn;klfnklsnfs\r\ndsfklnflksnlkfn', '123@gmail.com', '5455151', '2021-03-27 10:42:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_forms`
--

CREATE TABLE `contact_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_forms`
--

INSERT INTO `contact_forms` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(3, 'asghar', '1254@gm.com', 'dfsdlfmsd;lfmds', 'efmkw;lkkkkkkkkkkkkkkkkkkk\r\ndsfklnnnnnnnnnnnnnnnnnnnnnnn\r\ndsklfnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnkdfmlsdm', '2021-03-27 11:02:12', NULL);

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_abouts`
--

CREATE TABLE `home_abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_dis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_dis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_abouts`
--

INSERT INTO `home_abouts` (`id`, `title`, `short_dis`, `long_dis`, `created_at`, `updated_at`) VALUES
(3, 'سلام من به تو یار قدیمی', 'loreksdlasdlasndlasndln\r\nsadknldkasnlkasnlkasdnlknaklsnlas', 'lksadnlandaklsnlaksndlasmdklamklsmdaklsmd\r\nsakldnmalksdmklasdmklsadmaklsdmladsmdsmlak\r\nlsdakm;ls,dm;lsa,;,da;ldsa,;dmas;dmas;dm,as;l,d;l,sa;l,d;lsa,d;las,dl;a,s;ld,as;l,dlknfknfsklnfl\r\nsdjknskjandkjsnakdnjksandskjdkkksnaksjksanjdkajdakaskadksandksanjdkandjkdasknsdjksakdskjdfkjds\r\naskldnskldmdnklandlnlannnnsndlksldjskdjdksjdljljklsjldksajklsjdlksjdlksjlksjkldsjkldsjlksdjlksdjlkskldjlkd', '2021-03-11 13:20:59', '2021-03-11 14:11:38'),
(4, 'Goolidmvskdm', 'fsdlkfndlkfdsl', 'dsfklfnlkfsdklmsfklsd', '2021-03-27 11:10:39', NULL);

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
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2021_02_15_214710_create_sessions_table', 1),
(13, '2021_02_17_162645_create_categories_table', 2),
(14, '2021_02_23_151645_create_brands_table', 3),
(15, '2021_02_28_152939_create_multipics_table', 4),
(16, '2021_03_07_181055_create_sliders_table', 5),
(17, '2021_03_11_141002_create_home_abouts_table', 6),
(18, '2021_03_11_204732_create_contacts_table', 7),
(19, '2021_03_11_223032_create_contact_forms_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `multipics`
--

CREATE TABLE `multipics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multipics`
--

INSERT INTO `multipics` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'image/multi/1692957306304719.jpg', '2021-02-28 13:01:41', NULL),
(2, 'image/multi/1692957306552145.jpg', '2021-02-28 13:01:42', NULL),
(3, 'image/multi/1692957306642962.jpg', '2021-02-28 13:01:42', NULL),
(4, 'image/multi/1692957386049742.jpg', '2021-02-28 13:02:58', NULL),
(5, 'image/multi/1692957386267501.jpg', '2021-02-28 13:02:58', NULL),
(6, 'image/multi/1692957386469203.jpg', '2021-02-28 13:02:58', NULL),
(7, 'image/multi/1692958245683949.jpg', '2021-02-28 13:16:37', NULL),
(8, 'image/multi/1692958245769348.jpg', '2021-02-28 13:16:37', NULL),
(9, 'image/multi/1692958245860406.jpg', '2021-02-28 13:16:37', NULL);

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('gh6cEFGeuO3ZRwIecyLSuDAQmRweM3898kZl3a2i', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:87.0) Gecko/20100101 Firefox/87.0', 'YTo2OntzOjM6InVybCI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiJDaHpiaWhPYTFxalZBOU1lN0ljMlRNTzFVZGczN2lVdHEydTh0NjlXIjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJFQyaXdSL3hvVTFwVmNwTmEyc1hKdi5hWENrcGRaQnFLZHYwaTZoa1BEZ0xUT3RrV1VYU09PIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRUMml3Ui94b1UxcFZjcE5hMnNYSnYuYVhDa3BkWkJxS2R2MGk2aGtQRGdMVE90a1dVWFNPTyI7fQ==', 1616860650),
('L1Daa8uOEDcGsmxXAaB0IPLbUgNl5tD1qERDoWyC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:87.0) Gecko/20100101 Firefox/87.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicVZGQ3hDM292Zlh0NHRMUnFLZXJPa1VoNWM0RHAwdzdKcWxDdDF0cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1616854256),
('S6TyZLbuzDl1Ul9hRZUWfFNV4AGpLJR1Z9Tz5Ha4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:87.0) Gecko/20100101 Firefox/87.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWGJnU1JqazBZNzV2MFpuRmVnZ0I4UWhVcUdIMGFSOHBmS2xBVjdlRCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL211bHRpL2ltYWdlIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9tdWx0aS9pbWFnZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1616855191),
('vfKbE5EBcvQAL68x1JGXJICAjZJlpwNzi9cl7Flf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:87.0) Gecko/20100101 Firefox/87.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1FhRFhzWmVGRlAycFpuUzFnTWVSWm1reGFZTEVIQmhoaWpnY0d1WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1616855192);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(4, 'uyiuiyiu', 'uyiyuiyuiyu', 'image/slider/1693606103548974.png', '2021-03-07 16:54:03', NULL),
(5, 'dfsdfsdfsdfsdfsdfsdf', 'pel[pelwelp[plewplr[lwplr[lwpel[plre[', 'image/slider/1693609848708800.png', '2021-03-07 17:53:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'mamad', 'mamad@gmail.com', NULL, '$2y$10$T2iwR/xoU1pVcpNa2sXJv.aXCkpdZBqKdv0i6hkPDgLTOtkWUXSOO', 'eyJpdiI6InhScHhUbXN5dFQ5QjVINkUvSmtoWkE9PSIsInZhbHVlIjoicWNLbjB1SnJnSTAvOUMyZUd1enZGVy9tK2J2STlTWVJZVVQyQzZnaWdVOD0iLCJtYWMiOiJjMjdkZjZkYjkxOGY5ZWNiZTYwZjlhMDliOGRkMzgxNmI3NTRjZmRmNGQxMzAxY2IzZjQ1YjQ5NzUzNDQwNjlmIn0=', 'eyJpdiI6InZIZTlWOUM0NnpFNnVPY3NYK0R1OWc9PSIsInZhbHVlIjoiVGdXOTNMbjcraVl2WGxWMmJIZHVVUWxZSDZJekw2YytsdzhmM0pvUXRNSW8zc1NQOVhJMXU5eEdDcEZzRlVrSVQ3bis3MTVCR2Q1a3dUNVY4bzUydFhGUmJ6M1ZmejJIYjB1MFV2d3UwSjE1dGwvSDg4Vnlwc09jL09vbFRsRm5GQ2xSTVozVWRGL3lGTmJGT3RpRzJHeGEyREJaNm91aXp4VHFBaUZPalVhaytTamh6aFFjdmxLMDNQUElpSE1lSkw2ZjVqTURkbXd1WFhNOExuenI0d05ja1AwR3dhcW5sc3hhalpzemFaWnhwQUNlWEZLeU9STmRDU1kwVzhSMlpoRWNkclp2bFhRc1ZZcEJKUnA2R1E9PSIsIm1hYyI6IjNjZGIxOWEyZGJlMzY5ODg5MzNiMDc5ZjQxNzY2MTQxMTQ0M2YwZGYzZTY0OWFjNjE0ZjVkZWVmMmMxZjVmZWUifQ==', NULL, NULL, 'profile-photos/N9YYTmBJjq0mhdvNbbNr6BWIGpuzYMVKnyauu4KI.jpg', '2021-02-15 18:57:38', '2021-03-17 13:02:35'),
(2, 'amjad', 'amjad@gmail.com', NULL, '$2y$10$M4FDg/68At7ZaubunPK.5eonSSIa2gLtHmIeh2Q2HIOeOPmRbfj2e', NULL, NULL, NULL, NULL, NULL, '2021-02-15 18:58:01', '2021-02-15 18:58:01'),
(3, 'go', 'go@gmail.com', NULL, '$2y$10$//w4o82UehzaCHmVfb6sjuniOP6B6jQ5i1CKnw6x/37Iejg6NSWxi', NULL, NULL, NULL, NULL, NULL, '2021-02-15 19:41:08', '2021-02-15 19:41:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_forms`
--
ALTER TABLE `contact_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_abouts`
--
ALTER TABLE `home_abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multipics`
--
ALTER TABLE `multipics`
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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_forms`
--
ALTER TABLE `contact_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_abouts`
--
ALTER TABLE `home_abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `multipics`
--
ALTER TABLE `multipics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
