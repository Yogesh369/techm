-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 14, 2020 at 04:28 PM
-- Server version: 5.7.32-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techm`
--

-- --------------------------------------------------------

--
-- Table structure for table `canvas_posts`
--

CREATE TABLE `canvas_posts` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `published_at` datetime DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image_caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `canvas_posts_tags`
--

CREATE TABLE `canvas_posts_tags` (
  `post_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `canvas_posts_topics`
--

CREATE TABLE `canvas_posts_topics` (
  `post_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `canvas_tags`
--

CREATE TABLE `canvas_tags` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `canvas_topics`
--

CREATE TABLE `canvas_topics` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `canvas_user_meta`
--

CREATE TABLE `canvas_user_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dark_mode` tinyint(4) DEFAULT '0',
  `digest` tinyint(4) DEFAULT '0',
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `canvas_views`
--

CREATE TABLE `canvas_views` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` text COLLATE utf8mb4_unicode_ci,
  `referer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `canvas_visits`
--

CREATE TABLE `canvas_visits` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` text COLLATE utf8mb4_unicode_ci,
  `referer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(9, '2018_10_12_000000_create_canvas_tables', 2),
(10, '2019_02_16_000000_create_canvas_topics_tables', 2),
(11, '2019_03_05_000000_add_indexes_to_canvas_views', 2),
(12, '2019_07_26_000000_alter_canvas_posts_published_at_default_value', 2),
(13, '2019_12_08_000000_alter_canvas_tags_add_user_id', 2),
(14, '2019_12_08_000000_alter_canvas_topics_add_user_id', 2),
(15, '2019_12_09_000000_alter_canvas_posts_add_compound_index', 2),
(16, '2019_12_09_000000_alter_canvas_posts_user_id_default_value', 2),
(17, '2019_12_09_000000_alter_canvas_views_rename_indexes', 2),
(18, '2019_12_10_000000_create_canvas_user_meta_table', 2),
(19, '2020_02_03_000000_create_canvas_visits_table', 2),
(20, '2020_03_29_000000_alter_canvas_user_meta_add_locale', 2),
(21, '2020_04_10_000000_alter_canvas_tables_user_id_column_type', 2),
(22, '2020_09_06_000000_alter_canvas_views_agent_column_type', 2),
(23, '2020_09_06_000000_alter_canvas_visits_agent_column_type', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0358d4a54ea98082c2ee92fea10e83e28da519df50d2e93f8c53020dece97ae6cd4ea122a9c2da7f', 2, 1, 'authToken', '[]', 0, '2020-11-14 04:39:22', '2020-11-14 04:39:22', '2021-11-14 10:09:22'),
('05d42eee414cbba11ded16cab1d9900ed2b3711a3becd1064f93fc64b19d88b1af8ad12ee02e62d1', 8, 1, 'authToken', '[]', 0, '2020-11-14 05:02:48', '2020-11-14 05:02:48', '2021-11-14 10:32:48'),
('0b0f15037c6ccd92a06c82f511f346a89f55396b9d38db0f2b6d1fd639bf5af406ca46bf58beacee', 4, 1, 'authToken', '[]', 0, '2020-11-14 04:41:06', '2020-11-14 04:41:06', '2021-11-14 10:11:06'),
('13a5f45294549bd2f92300f208b4c4397922d2204235bd0d181bd1e64369268cc0300119c0e69711', 6, 1, 'authToken', '[]', 0, '2020-11-14 04:43:46', '2020-11-14 04:43:46', '2021-11-14 10:13:46'),
('74cb182dbdea9bd06d28b8d0265d9c59885c9fe7ba30fa47223866d70998b607cbed4f66b17746f3', 7, 1, 'authToken', '[]', 0, '2020-11-14 04:58:37', '2020-11-14 04:58:37', '2021-11-14 10:28:37'),
('c099725270dad8260ac5a8a680accb37713925380dcc252d7f59d9a16041e747202627dd18cb7095', 8, 1, 'authToken', '[]', 0, '2020-11-14 05:03:33', '2020-11-14 05:03:33', '2021-11-14 10:33:33');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'kBttHXElJ4MN9jbXGJTyYSMbFZDEqaJxrtLUExRT', NULL, 'http://localhost', 1, 0, 0, '2020-11-14 03:44:34', '2020-11-14 03:44:34'),
(2, NULL, 'Laravel Password Grant Client', 'ormn17CwlH7SZWozRAuE5Zl7GVHDwc9DgAbQug5B', 'users', 'http://localhost', 0, 1, 0, '2020-11-14 03:44:34', '2020-11-14 03:44:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-11-14 03:44:34', '2020-11-14 03:44:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `routers`
--

CREATE TABLE `routers` (
  `id` int(11) NOT NULL,
  `SapId` varchar(18) NOT NULL,
  `HostName` varchar(14) NOT NULL,
  `loopback` varchar(50) NOT NULL,
  `macaddress` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routers`
--

INSERT INTO `routers` (`id`, `SapId`, `HostName`, `loopback`, `macaddress`, `created_at`, `updated_at`) VALUES
(1, 'dsf', 'sdf', 'sdf', 'sd', '2020-11-13 10:19:50', '2020-11-13 10:19:50'),
(2, 'ewrwe', 'sdfwer', 'dsfwer', 'sdfwer', '2020-11-13 10:20:05', '2020-11-13 10:20:05'),
(3, 'sdfewr', 'dsfewr', 'sdfewr', 'dsfewr', '2020-11-13 10:20:14', '2020-11-13 10:20:14'),
(4, 'sdf', 'sdf', 'dsf', 'sdf', '2020-11-13 06:39:38', '2020-11-13 06:39:38'),
(5, 'sdf', 'sdf', 'dsf', 'sdf', '2020-11-13 06:40:02', '2020-11-13 06:40:02');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Yogesh Pandit Pawar', 'yogesh369@gmail.com', NULL, '$2y$10$NH85y0Xt07Xk/cu.KchmC.flY0hcnzihpiBdw4m.NjEqPX2vUNgjW', NULL, '2020-11-13 04:09:13', '2020-11-13 04:09:13'),
(7, 'test', 'test@gmail.com', NULL, '$2y$10$PbiWLcgpltVWIeRzQHZqSufKzUiA44XYqLEEdyjzZDrfNrkPlFk1S', NULL, '2020-11-14 04:58:37', '2020-11-14 04:58:37'),
(8, 'test', '4test@gmail.com', NULL, '$2y$10$ks8J04CSDCUzqy3M/ASXdeqy6Gmj6bGa1cuCHR6hPooijEWDxOZ.u', NULL, '2020-11-14 05:02:48', '2020-11-14 05:02:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `canvas_posts`
--
ALTER TABLE `canvas_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `canvas_posts_slug_user_id_unique` (`slug`,`user_id`),
  ADD KEY `canvas_posts_user_id_index` (`user_id`);

--
-- Indexes for table `canvas_posts_tags`
--
ALTER TABLE `canvas_posts_tags`
  ADD UNIQUE KEY `canvas_posts_tags_post_id_tag_id_unique` (`post_id`,`tag_id`);

--
-- Indexes for table `canvas_posts_topics`
--
ALTER TABLE `canvas_posts_topics`
  ADD UNIQUE KEY `canvas_posts_topics_post_id_topic_id_unique` (`post_id`,`topic_id`);

--
-- Indexes for table `canvas_tags`
--
ALTER TABLE `canvas_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `canvas_tags_slug_user_id_unique` (`slug`,`user_id`),
  ADD KEY `canvas_tags_created_at_index` (`created_at`),
  ADD KEY `canvas_tags_user_id_index` (`user_id`);

--
-- Indexes for table `canvas_topics`
--
ALTER TABLE `canvas_topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `canvas_topics_slug_user_id_unique` (`slug`,`user_id`),
  ADD KEY `canvas_topics_created_at_index` (`created_at`),
  ADD KEY `canvas_topics_user_id_index` (`user_id`);

--
-- Indexes for table `canvas_user_meta`
--
ALTER TABLE `canvas_user_meta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `canvas_user_meta_user_id_unique` (`user_id`),
  ADD UNIQUE KEY `canvas_user_meta_username_unique` (`username`);

--
-- Indexes for table `canvas_views`
--
ALTER TABLE `canvas_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `canvas_views_post_id_index` (`post_id`),
  ADD KEY `canvas_views_created_at_index` (`created_at`);

--
-- Indexes for table `canvas_visits`
--
ALTER TABLE `canvas_visits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `routers`
--
ALTER TABLE `routers`
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
-- AUTO_INCREMENT for table `canvas_user_meta`
--
ALTER TABLE `canvas_user_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `canvas_views`
--
ALTER TABLE `canvas_views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `canvas_visits`
--
ALTER TABLE `canvas_visits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `routers`
--
ALTER TABLE `routers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;