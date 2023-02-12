-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2023 at 06:34 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `topics`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(190) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'sport'),
(2, 'music'),
(3, 'culture'),
(4, 'Nature'),
(5, 'Body building');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `body` longtext NOT NULL,
  `userId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `createdAt` varchar(190) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `body`, `userId`, `parentId`, `category_id`, `createdAt`) VALUES
(236, 'comment1', 92, NULL, 1, '2022-01-26T12:04:15.659Z'),
(237, 'comment from user_7777  updated', 93, NULL, 1, '2022-01-26T12:04:31.514Z'),
(238, 'reply ....', 92, 237, 1, '2022-01-26T12:05:41.413Z'),
(239, 'aaaaaa', 94, NULL, 1, '2022-07-26T07:05:40.486Z'),
(240, 'mmmmmmm', 94, 239, 1, '2022-07-26T07:05:45.438Z'),
(241, 'mmmmmm', 94, 239, 1, '2022-07-26T07:05:49.523Z'),
(242, 'aaaaa', 94, 239, 1, '2022-07-26T07:09:58.030Z'),
(243, 'aaaaaa', 94, 239, 1, '2022-07-26T07:10:18.389Z'),
(244, 'Comment222', 96, NULL, 1, '2023-01-31T09:16:23.714Z'),
(245, 'top1', 96, NULL, 2, '2023-01-31T09:18:34.183Z'),
(246, 'reply', 95, NULL, 2, '2023-01-31T09:18:48.255Z'),
(247, 'aaaaaaaa', 95, 236, 1, '2023-01-31T11:29:03.782Z'),
(248, 'aaaaaa', 95, 236, 1, '2023-01-31T11:29:15.914Z'),
(249, 'reply', 95, 237, 1, '2023-01-31T11:32:52.371Z'),
(250, 'new reply', 95, 237, 1, '2023-01-31T11:33:46.066Z'),
(251, 'post1', 95, NULL, 1, '2023-01-31T11:34:48.301Z'),
(252, 'post2', 95, NULL, 1, '2023-01-31T11:34:51.216Z'),
(253, 'post3', 95, NULL, 1, '2023-01-31T11:34:54.105Z'),
(254, 'reply1', 95, 253, 1, '2023-01-31T11:35:14.247Z'),
(255, 'reply', 96, 246, 2, '2023-01-31T11:35:34.367Z'),
(256, 'rely from sheme1', 96, 246, 2, '2023-01-31T11:36:19.009Z'),
(257, 'aaaaaaaaaaaaaaaa', 95, 246, 2, '2023-01-31T11:37:08.631Z');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(123, 'App\\Models\\User', 79, 'user55_Token', 'a8990843a9860c8b84a7d0f26faf208f1c211677c97b784c747ad07ea2d0a26b', '[\"*\"]', NULL, '2022-01-20 16:49:47', '2022-01-20 16:49:47'),
(124, 'App\\Models\\User', 80, 'user44_Token', '6a922679d7faf2c904a1ee413625d3989a090e4cb5c6f037e5de6985cf6a0869', '[\"*\"]', NULL, '2022-01-24 11:18:43', '2022-01-24 11:18:43'),
(125, 'App\\Models\\User', 81, 'user0_Token', '9cc7c71026f83da1f05ebf79e80af210f288ffc70f085e263a2bf145151184fc', '[\"*\"]', '2022-01-24 16:38:58', '2022-01-24 16:37:10', '2022-01-24 16:38:58'),
(126, 'App\\Models\\User', 82, 'user1_Token', 'e88f4e36119aa46a755ba8be69a72259a7f37c801c2b4145ba6c5e65f5d9af01', '[\"*\"]', '2022-01-24 18:02:38', '2022-01-24 16:37:56', '2022-01-24 18:02:38'),
(127, 'App\\Models\\User', 83, 'user55_Token', '3ada8e2d03c74b68a6040583c0682bb0f9af9715774719e328487e79562d8c11', '[\"*\"]', '2022-01-24 18:02:48', '2022-01-24 18:01:50', '2022-01-24 18:02:48'),
(128, 'App\\Models\\User', 81, 'user0_Token', '8629c2cd3ec0dcc95ae56aa14b0712bc739926da5c3a04203cc52533d326d312', '[\"*\"]', NULL, '2022-01-25 09:28:10', '2022-01-25 09:28:10'),
(129, 'App\\Models\\User', 84, 'user66_Token', 'c30c326f4fab1b175b1b5a90e5ef2dddd5e074ea777010725231a7d2a71409a0', '[\"*\"]', '2022-01-25 12:50:07', '2022-01-25 12:49:58', '2022-01-25 12:50:07'),
(130, 'App\\Models\\User', 85, 'user19_Token', '5bb04aa3969c52f12484f889a645edc68153611485b6134c1854b2e45cdecb4a', '[\"*\"]', '2022-01-25 16:46:29', '2022-01-25 16:44:42', '2022-01-25 16:46:29'),
(131, 'App\\Models\\User', 86, 'user20_Token', '852bf6966fe45f70c29015df6eacc8f5e77de31095601275d0cac1d795deacff', '[\"*\"]', '2022-01-25 16:47:00', '2022-01-25 16:45:51', '2022-01-25 16:47:00'),
(132, 'App\\Models\\User', 87, 'usertest1_Token', 'baeb766ee34d7543699fd1b781eefbfb6339524a9feed3a7a78e9d5e1a1dfe3c', '[\"*\"]', '2022-01-26 07:32:04', '2022-01-26 07:30:39', '2022-01-26 07:32:04'),
(133, 'App\\Models\\User', 88, 'user_33333_Token', '814c1a2f5b3ef85aae61ad8f12e8df369bf89c4b09de3c2e1e19345c8d70594f', '[\"*\"]', '2022-01-26 07:31:42', '2022-01-26 07:31:20', '2022-01-26 07:31:42'),
(134, 'App\\Models\\User', 89, 'user_66_Token', '6a37df84fa454dfa2b514b28565a55795c676d3b2d1b2c62c2639b1aa5fff73f', '[\"*\"]', NULL, '2022-01-26 08:43:45', '2022-01-26 08:43:45'),
(135, 'App\\Models\\User', 90, 'user_2222_Token', 'c2fb56eefd0da8c92f200f22011d4039a4f0b31b4ae7cb4d2b45d554efc519e6', '[\"*\"]', NULL, '2022-01-26 08:44:12', '2022-01-26 08:44:12'),
(136, 'App\\Models\\User', 91, 'user_55_Token', 'f9c70433679b5ba4dd14da28622b43d5ef7c1990c493b5d8d8673b0089bfae29', '[\"*\"]', '2022-01-26 09:05:09', '2022-01-26 09:05:02', '2022-01-26 09:05:09'),
(137, 'App\\Models\\User', 91, 'user_55_Token', '78b81d817cc93412d95a04635757ab5d40febd0f06124af69d3a267459e6c026', '[\"*\"]', '2022-01-26 09:05:55', '2022-01-26 09:05:46', '2022-01-26 09:05:55'),
(138, 'App\\Models\\User', 92, 'user_3333_Token', '9f9e12ee066e6b56b8c0f38cd11360c598567127f1f4f2f4d8af2aab8e1d5cf5', '[\"*\"]', '2022-01-26 10:05:41', '2022-01-26 10:03:04', '2022-01-26 10:05:41'),
(139, 'App\\Models\\User', 93, 'user_7777_Token', '199c22741d1302c6d4c513576bf2f1c3a40d2542b67d490628a3cb4f373c9947', '[\"*\"]', '2022-01-26 10:05:07', '2022-01-26 10:03:47', '2022-01-26 10:05:07'),
(140, 'App\\Models\\User', 94, 'user11_Token', 'bec9c4a4b66f40e365cec1261f969946b5d6ae189933bef8bd8a80af3e484b12', '[\"*\"]', '2022-07-26 04:10:18', '2022-07-26 04:05:25', '2022-07-26 04:10:18'),
(141, 'App\\Models\\User', 95, 'Sheme_Token', '7ce92918be0c3902dd446c8891704e3b6ab8d6b874e9c6725fa86c73c3821b9e', '[\"*\"]', '2023-01-31 09:37:08', '2023-01-31 07:15:05', '2023-01-31 09:37:08'),
(142, 'App\\Models\\User', 96, 'Sheme2_Token', '0d09ebf350b40a7b034d778bbab2a52cf1123f85e56172bb89ce6a8163ba3359', '[\"*\"]', '2023-01-31 09:36:19', '2023-01-31 07:15:45', '2023-01-31 09:36:19'),
(143, 'App\\Models\\User', 97, 'test1_Token', '0eb52f94e7d09db0a029f762bc0e28b0711574c658dc097595073cd5ec773224', '[\"*\"]', NULL, '2023-02-12 15:21:11', '2023-02-12 15:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userName_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `userName`, `userName_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(92, NULL, 'user_3333', NULL, '$2y$10$ld24eYxXg6hl6M7UAEreduhDot15I3CK4eygRJdyRZOH1Ru1BoADy', NULL, '2022-01-26 10:03:04', '2022-01-26 10:03:04'),
(93, NULL, 'user_7777', NULL, '$2y$10$xRsd.Ujgxw9SE7B.dNimBuUF0tl/J/EQjz1IHsWS2hUU.3/EU7qCG', NULL, '2022-01-26 10:03:47', '2022-01-26 10:03:47'),
(94, NULL, 'user11', NULL, '$2y$10$rGlueU.RNHTfZjuDzX2vUORuWCFuK55P7aZPyELDJpdsDKevN7Ovu', NULL, '2022-07-26 04:05:24', '2022-07-26 04:05:24'),
(95, NULL, 'Sheme', NULL, '$2y$10$42y29vVCB1Fs1GRFywqGreZcLzRRYb/Ei6IAI85NyEDtfJy56uZj6', NULL, '2023-01-31 07:15:05', '2023-01-31 07:15:05'),
(96, NULL, 'Sheme2', NULL, '$2y$10$fKf9Iu18vWRy6GEWO99xieHzYsl8sfuCb5j6FIYizXZNgf9S8izpy', NULL, '2023-01-31 07:15:45', '2023-01-31 07:15:45'),
(97, NULL, 'test1', NULL, '$2y$10$KYacLwUNv0WtR/ccnZgX/unyaXzHL4T8Kg4eiYrxQiRn9NgiEgUZC', NULL, '2023-02-12 15:21:11', '2023-02-12 15:21:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`userName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
