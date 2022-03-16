-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2022 at 08:41 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `Chat_id` int(255) NOT NULL,
  `user_1` int(255) NOT NULL,
  `user_2` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`Chat_id`, `user_1`, `user_2`) VALUES
(1, 102, 103),
(2, 2, 3);

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
-- Table structure for table `liked_posts`
--

CREATE TABLE `liked_posts` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `liked_posts`
--

INSERT INTO `liked_posts` (`post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(88, 1, NULL, NULL),
(101, 1, NULL, NULL),
(102, 1, NULL, NULL),
(103, 1, NULL, NULL),
(104, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(255) NOT NULL,
  `Chat_id` int(255) NOT NULL,
  `Sender_id` int(255) NOT NULL,
  `Message` varchar(255) NOT NULL,
  `File` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `Chat_id`, `Sender_id`, `Message`, `File`) VALUES
(1, 1, 2, 'Hasan', NULL),
(2, 2, 3, 'dgjhgsjh', '1'),
(3, 1, 2, 'sdhgjhgdsjgd', '216893014_3025272637794460_6169806983455062025_n.jpg');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_12_30_043601_create_sessions_table', 1),
(7, '2021_01_04_090605_create_relationships_table', 1),
(8, '2021_01_04_104622_create_posts_table', 1),
(9, '2021_01_04_123600_create_post_comments_table', 1),
(10, '2021_01_04_131535_create_post_images_table', 1),
(11, '2021_01_06_112321_create_liked_posts_table', 1),
(12, '2021_01_06_122225_create_saved_posts_table', 1),
(13, '2021_01_18_183422_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('91633843-9553-42df-9260-ea6ac4575927', 'App\\Notifications\\RequestSentNotification', 'App\\Models\\User', 1, '{\"user\":{\"id\":101,\"name\":\"syed maisam\",\"last_name\":null,\"username\":\"syedmaisam\",\"description\":null,\"privacy\":0,\"email\":\"maisam@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-01-25T11:46:22.000000Z\",\"updated_at\":\"2022-01-25T11:46:22.000000Z\",\"actionRelationship\":1,\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=syed+maisam&color=7F9CF5&background=EBF4FF\"}}', '2022-01-25 07:14:39', '2022-01-25 07:11:03', '2022-01-25 07:14:39'),
('bb9f5ed9-54fc-4ed3-98d4-43e2e94fd7d1', 'App\\Notifications\\RequestSentNotification', 'App\\Models\\User', 20, '{\"user\":{\"id\":1,\"name\":\"Rod Torp\",\"last_name\":\"D\'angelo Balistreri\",\"username\":\"facilis\",\"description\":\"velit eos consequatur distinctio nostrum illo repellendus aut quo ut aliquam facere qui\",\"privacy\":0,\"email\":\"goodwin.maybelle@example.net\",\"email_verified_at\":\"2022-01-25T11:41:36.000000Z\",\"current_team_id\":null,\"profile_photo_path\":\"images\\/users\\/1723010088945655.jpeg\",\"created_at\":\"2022-01-25T11:41:36.000000Z\",\"updated_at\":\"2022-01-26T09:47:54.000000Z\",\"actionRelationship\":0,\"profile_photo_url\":\"http:\\/\\/localhost\\/storage\\/images\\/users\\/1723010088945655.jpeg\"}}', NULL, '2022-01-26 08:31:39', '2022-01-26 08:31:39'),
('e228fcce-1678-4829-b573-cd4c0b61fa0d', 'App\\Notifications\\RequestSentNotification', 'App\\Models\\User', 29, '{\"user\":{\"id\":101,\"name\":\"syed maisam\",\"last_name\":null,\"username\":\"syedmaisam\",\"description\":null,\"privacy\":0,\"email\":\"maisam@gmail.com\",\"email_verified_at\":null,\"current_team_id\":null,\"profile_photo_path\":null,\"created_at\":\"2022-01-25T11:46:22.000000Z\",\"updated_at\":\"2022-01-25T11:46:22.000000Z\",\"actionRelationship\":0,\"profile_photo_url\":\"https:\\/\\/ui-avatars.com\\/api\\/?name=syed+maisam&color=7F9CF5&background=EBF4FF\"}}', NULL, '2022-01-25 06:48:43', '2022-01-25 06:48:43');

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `likes` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comments` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `content`, `status`, `published_at`, `created_at`, `updated_at`, `likes`, `comments`, `deleted_at`) VALUES
(1, 20, 'dolores', 0, NULL, '2022-01-25 06:41:44', '2022-01-25 06:41:44', 0, 0, NULL),
(2, 95, 'ex', 0, NULL, '2022-01-25 06:41:44', '2022-01-25 06:41:44', 0, 0, NULL),
(3, 17, 'explicabo', 0, NULL, '2022-01-25 06:41:44', '2022-01-25 06:41:44', 0, 0, NULL),
(4, 87, 'inventore', 0, NULL, '2022-01-25 06:41:45', '2022-01-25 06:41:45', 0, 0, NULL),
(5, 27, 'facilis', 0, NULL, '2022-01-25 06:41:45', '2022-01-25 06:41:45', 0, 0, NULL),
(6, 92, 'odio', 0, NULL, '2022-01-25 06:41:45', '2022-01-25 06:41:45', 0, 0, NULL),
(7, 18, 'necessitatibus', 0, NULL, '2022-01-25 06:41:45', '2022-01-25 06:41:45', 0, 0, NULL),
(8, 86, 'voluptate', 0, NULL, '2022-01-25 06:41:45', '2022-01-25 06:41:45', 0, 0, NULL),
(9, 32, 'placeat', 0, NULL, '2022-01-25 06:41:45', '2022-01-25 06:41:45', 0, 0, NULL),
(10, 8, 'quia', 0, NULL, '2022-01-25 06:41:45', '2022-01-25 06:41:45', 0, 0, NULL),
(11, 45, 'enim', 0, NULL, '2022-01-25 06:41:45', '2022-01-25 06:41:45', 0, 0, NULL),
(12, 65, 'distinctio', 0, NULL, '2022-01-25 06:41:45', '2022-01-25 06:41:45', 0, 0, NULL),
(13, 60, 'ut', 0, NULL, '2022-01-25 06:41:45', '2022-01-25 06:41:45', 0, 0, NULL),
(14, 21, 'eius', 0, NULL, '2022-01-25 06:41:45', '2022-01-25 06:41:45', 0, 0, NULL),
(15, 28, 'exercitationem', 0, NULL, '2022-01-25 06:41:45', '2022-01-25 06:41:45', 0, 0, NULL),
(16, 99, 'perspiciatis', 0, NULL, '2022-01-25 06:41:46', '2022-01-25 06:41:46', 0, 0, NULL),
(17, 3, 'quisquam', 0, NULL, '2022-01-25 06:41:46', '2022-01-25 06:41:46', 0, 0, NULL),
(18, 44, 'voluptatem', 0, NULL, '2022-01-25 06:41:46', '2022-01-25 06:41:46', 0, 0, NULL),
(19, 57, 'iusto', 0, NULL, '2022-01-25 06:41:46', '2022-01-25 06:41:46', 0, 0, NULL),
(20, 13, 'officiis', 0, NULL, '2022-01-25 06:41:46', '2022-01-25 06:41:46', 0, 0, NULL),
(21, 77, 'eligendi', 0, NULL, '2022-01-25 06:41:46', '2022-01-25 06:41:46', 0, 0, NULL),
(22, 91, 'quia', 0, NULL, '2022-01-25 06:41:46', '2022-01-25 06:41:46', 0, 0, NULL),
(23, 51, 'et', 0, NULL, '2022-01-25 06:41:46', '2022-01-25 06:41:46', 0, 0, NULL),
(24, 58, 'sint', 0, NULL, '2022-01-25 06:41:46', '2022-01-25 06:41:46', 0, 0, NULL),
(25, 93, 'dicta', 0, NULL, '2022-01-25 06:41:46', '2022-01-25 06:41:46', 0, 0, NULL),
(26, 59, 'aut', 0, NULL, '2022-01-25 06:41:46', '2022-01-25 06:41:46', 0, 0, NULL),
(27, 72, 'modi', 0, NULL, '2022-01-25 06:41:46', '2022-01-25 06:41:46', 0, 0, NULL),
(28, 71, 'et', 0, NULL, '2022-01-25 06:41:46', '2022-01-25 06:41:46', 0, 0, NULL),
(29, 13, 'porro', 0, NULL, '2022-01-25 06:41:46', '2022-01-25 06:41:46', 0, 0, NULL),
(30, 22, 'vitae', 0, NULL, '2022-01-25 06:41:46', '2022-01-25 06:41:46', 0, 0, NULL),
(31, 80, 'occaecati', 0, NULL, '2022-01-25 06:41:46', '2022-01-25 06:41:46', 0, 0, NULL),
(32, 29, 'reprehenderit', 0, NULL, '2022-01-25 06:41:47', '2022-01-25 06:41:47', 0, 0, NULL),
(33, 48, 'doloribus', 0, NULL, '2022-01-25 06:41:47', '2022-01-25 06:41:47', 0, 0, NULL),
(34, 84, 'aut', 0, NULL, '2022-01-25 06:41:47', '2022-01-25 06:41:47', 0, 0, NULL),
(35, 2, 'adipisci', 0, NULL, '2022-01-25 06:41:47', '2022-01-25 06:41:47', 0, 0, NULL),
(36, 49, 'suscipit', 0, NULL, '2022-01-25 06:41:47', '2022-01-25 06:41:47', 0, 0, NULL),
(37, 85, 'facilis', 0, NULL, '2022-01-25 06:41:47', '2022-01-25 06:41:47', 0, 0, NULL),
(38, 52, 'omnis', 0, NULL, '2022-01-25 06:41:47', '2022-01-25 06:41:47', 0, 0, NULL),
(39, 31, 'aut', 0, NULL, '2022-01-25 06:41:47', '2022-01-25 06:41:47', 0, 0, NULL),
(40, 85, 'velit', 0, NULL, '2022-01-25 06:41:47', '2022-01-25 06:41:47', 0, 0, NULL),
(41, 76, 'rerum', 0, NULL, '2022-01-25 06:41:47', '2022-01-25 06:41:47', 0, 0, NULL),
(42, 47, 'ea', 0, NULL, '2022-01-25 06:41:47', '2022-01-25 06:41:47', 0, 0, NULL),
(43, 75, 'possimus', 0, NULL, '2022-01-25 06:41:47', '2022-01-25 06:41:47', 0, 0, NULL),
(44, 61, 'repellat', 0, NULL, '2022-01-25 06:41:47', '2022-01-25 06:41:47', 0, 0, NULL),
(45, 13, 'non', 0, NULL, '2022-01-25 06:41:48', '2022-01-25 06:41:48', 0, 0, NULL),
(46, 7, 'non', 0, NULL, '2022-01-25 06:41:48', '2022-01-25 06:41:48', 0, 0, NULL),
(47, 51, 'cum', 0, NULL, '2022-01-25 06:41:48', '2022-01-25 06:41:48', 0, 0, NULL),
(48, 60, 'quibusdam', 0, NULL, '2022-01-25 06:41:48', '2022-01-25 06:41:48', 0, 0, NULL),
(49, 82, 'amet', 0, NULL, '2022-01-25 06:41:48', '2022-01-25 06:41:48', 0, 0, NULL),
(50, 2, 'nobis', 0, NULL, '2022-01-25 06:41:48', '2022-01-25 06:41:48', 0, 0, NULL),
(51, 86, 'tempore', 0, NULL, '2022-01-25 06:41:48', '2022-01-25 06:41:48', 0, 0, NULL),
(52, 8, 'quisquam', 0, NULL, '2022-01-25 06:41:48', '2022-01-25 06:41:48', 0, 0, NULL),
(53, 84, 'commodi', 0, NULL, '2022-01-25 06:41:48', '2022-01-25 06:41:48', 0, 0, NULL),
(54, 56, 'culpa', 0, NULL, '2022-01-25 06:41:48', '2022-01-25 06:41:48', 0, 0, NULL),
(55, 98, 'quo', 0, NULL, '2022-01-25 06:41:48', '2022-01-25 06:41:48', 0, 0, NULL),
(56, 83, 'eligendi', 0, NULL, '2022-01-25 06:41:48', '2022-01-25 06:41:48', 0, 0, NULL),
(57, 63, 'unde', 0, NULL, '2022-01-25 06:41:49', '2022-01-25 06:41:49', 0, 0, NULL),
(58, 37, 'qui', 0, NULL, '2022-01-25 06:41:49', '2022-01-25 06:41:49', 0, 0, NULL),
(59, 33, 'delectus', 0, NULL, '2022-01-25 06:41:49', '2022-01-25 06:41:49', 0, 0, NULL),
(60, 70, 'perspiciatis', 0, NULL, '2022-01-25 06:41:49', '2022-01-25 06:41:49', 0, 0, NULL),
(61, 95, 'perspiciatis', 0, NULL, '2022-01-25 06:41:49', '2022-01-25 06:41:49', 0, 0, NULL),
(62, 4, 'non', 0, NULL, '2022-01-25 06:41:49', '2022-01-25 06:41:49', 0, 0, NULL),
(63, 100, 'repudiandae', 0, NULL, '2022-01-25 06:41:49', '2022-01-25 06:41:49', 0, 0, NULL),
(64, 38, 'quos', 0, NULL, '2022-01-25 06:41:49', '2022-01-25 06:41:49', 0, 0, NULL),
(65, 69, 'similique', 0, NULL, '2022-01-25 06:41:49', '2022-01-25 06:41:49', 0, 0, NULL),
(66, 57, 'debitis', 0, NULL, '2022-01-25 06:41:49', '2022-01-25 06:41:49', 0, 0, NULL),
(67, 47, 'omnis', 0, NULL, '2022-01-25 06:41:49', '2022-01-25 06:41:49', 0, 0, NULL),
(68, 26, 'quod', 0, NULL, '2022-01-25 06:41:49', '2022-01-25 06:41:49', 0, 0, NULL),
(69, 8, 'alias', 0, NULL, '2022-01-25 06:41:49', '2022-01-25 06:41:49', 0, 0, NULL),
(70, 45, 'ab', 0, NULL, '2022-01-25 06:41:50', '2022-01-25 06:41:50', 0, 0, NULL),
(71, 90, 'vel', 0, NULL, '2022-01-25 06:41:50', '2022-01-25 06:41:50', 0, 0, NULL),
(72, 43, 'aut', 0, NULL, '2022-01-25 06:41:50', '2022-01-25 06:41:50', 0, 0, NULL),
(73, 21, 'quas', 0, NULL, '2022-01-25 06:41:50', '2022-01-25 06:41:50', 0, 0, NULL),
(74, 16, 'qui', 0, NULL, '2022-01-25 06:41:50', '2022-01-25 06:41:50', 0, 0, NULL),
(75, 25, 'aliquid', 0, NULL, '2022-01-25 06:41:50', '2022-01-25 06:41:50', 0, 0, NULL),
(76, 61, 'sit', 0, NULL, '2022-01-25 06:41:50', '2022-01-25 06:41:50', 0, 0, NULL),
(77, 66, 'dolor', 0, NULL, '2022-01-25 06:41:50', '2022-01-25 06:41:50', 0, 0, NULL),
(78, 66, 'est', 0, NULL, '2022-01-25 06:41:50', '2022-01-25 06:41:50', 0, 0, NULL),
(79, 41, 'ipsa', 0, NULL, '2022-01-25 06:41:50', '2022-01-25 06:41:50', 0, 0, NULL),
(80, 55, 'in', 0, NULL, '2022-01-25 06:41:50', '2022-01-25 06:41:50', 0, 0, NULL),
(81, 80, 'tempora', 0, NULL, '2022-01-25 06:41:50', '2022-01-25 06:41:50', 0, 0, NULL),
(82, 53, 'aliquid', 0, NULL, '2022-01-25 06:41:51', '2022-01-25 06:41:51', 0, 0, NULL),
(83, 2, 'placeat', 0, NULL, '2022-01-25 06:41:51', '2022-01-25 06:41:51', 0, 0, NULL),
(84, 40, 'consequatur', 0, NULL, '2022-01-25 06:41:51', '2022-01-25 06:41:51', 0, 0, NULL),
(85, 5, 'voluptas', 0, NULL, '2022-01-25 06:41:51', '2022-01-25 06:41:51', 0, 0, NULL),
(86, 7, 'a', 0, NULL, '2022-01-25 06:41:51', '2022-01-25 06:41:51', 0, 0, NULL),
(87, 92, 'a', 0, NULL, '2022-01-25 06:41:51', '2022-01-25 06:41:51', 0, 0, NULL),
(88, 70, 'nemo', 0, NULL, '2022-01-25 06:41:51', '2022-01-25 06:41:51', 1, 1, NULL),
(89, 69, 'ut', 0, NULL, '2022-01-25 06:41:51', '2022-01-25 06:41:51', 0, 0, NULL),
(90, 76, 'dolor', 0, NULL, '2022-01-25 06:41:51', '2022-01-25 06:41:51', 0, 0, NULL),
(91, 5, 'consequatur', 0, NULL, '2022-01-25 06:41:51', '2022-01-25 06:41:51', 0, 0, NULL),
(92, 79, 'ut', 0, NULL, '2022-01-25 06:41:52', '2022-01-25 06:41:52', 0, 0, NULL),
(93, 48, 'nobis', 0, NULL, '2022-01-25 06:41:52', '2022-01-25 06:41:52', 0, 0, NULL),
(94, 94, 'provident', 0, NULL, '2022-01-25 06:41:52', '2022-01-25 06:41:52', 0, 0, NULL),
(95, 12, 'illo', 0, NULL, '2022-01-25 06:41:52', '2022-01-25 06:41:52', 0, 0, NULL),
(96, 76, 'ducimus', 0, NULL, '2022-01-25 06:41:52', '2022-01-25 06:41:52', 0, 0, NULL),
(97, 89, 'possimus', 0, NULL, '2022-01-25 06:41:52', '2022-01-25 06:41:52', 0, 0, NULL),
(98, 33, 'aut', 0, NULL, '2022-01-25 06:41:52', '2022-01-25 06:41:52', 0, 0, NULL),
(99, 94, 'eaque', 0, NULL, '2022-01-25 06:41:52', '2022-01-25 06:41:52', 0, 0, NULL),
(100, 91, 'est', 0, NULL, '2022-01-25 06:41:52', '2022-01-25 06:41:52', 0, 0, NULL),
(101, 101, 'something to write', 0, '2022-01-25 12:11:40', '2022-01-25 07:11:40', NULL, 1, 2, NULL),
(102, 1, 'A new Post', 0, '2022-01-26 09:48:46', '2022-01-26 04:48:46', NULL, 1, 0, NULL),
(103, 1, 'something to #tag', 0, '2022-01-26 11:21:59', '2022-01-26 06:21:59', NULL, 1, 0, NULL),
(104, 1, 'adsadasdad', 0, '2022-01-26 13:30:56', '2022-01-26 08:30:56', NULL, 1, 1, NULL),
(105, 1, 'goodwin.maybelle@example.net', 0, '2022-01-31 21:22:06', '2022-01-31 16:22:06', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `post_id`, `user_id`, `comment`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 88, 1, 'test comment', '2022-01-25 12:14:56', '2022-01-25 07:14:56', NULL),
(2, 101, 1, 'i can like or can do comments here', '2022-01-26 09:47:19', '2022-01-26 04:47:19', NULL),
(3, 104, 1, 'sddasd', '2022-01-26 13:31:05', '2022-01-26 08:31:05', NULL),
(4, 101, 1, 'have a look', '2022-01-31 21:20:17', '2022-01-31 16:20:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_images`
--

CREATE TABLE `post_images` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_images`
--

INSERT INTO `post_images` (`post_id`, `image`, `position`, `created_at`, `updated_at`) VALUES
(39, 'images/posts/64519cf78876cbcf1589e3211a3f036b.png', 1, '2022-01-25 06:42:56', '2022-01-25 06:42:56'),
(7, 'images/posts/65b920dedc30e8f7f66e130302c0fdd6.png', 1, '2022-01-25 06:42:56', '2022-01-25 06:42:56'),
(100, 'images/posts/5a7c0325957b507e124950f62945ab4a.png', 1, '2022-01-25 06:42:56', '2022-01-25 06:42:56'),
(78, 'images/posts/eac1b3613b9b8b8de20eda713128b023.png', 1, '2022-01-25 06:42:56', '2022-01-25 06:42:56'),
(53, 'images/posts/0625ec713f3f8285cdf851077048b82e.png', 1, '2022-01-25 06:42:56', '2022-01-25 06:42:56'),
(47, 'images/posts/3080ae0ba5ec5f5957e8e0b76defd4a5.png', 1, '2022-01-25 06:42:57', '2022-01-25 06:42:57'),
(69, 'images/posts/bc81f06a14c99edd2dedcb8a403530b9.png', 1, '2022-01-25 06:42:57', '2022-01-25 06:42:57'),
(61, 'images/posts/5176cb923089f54f4a23fba57980066e.png', 1, '2022-01-25 06:42:57', '2022-01-25 06:42:57'),
(23, 'images/posts/6b490c84e4abd0147d0d976d4e322298.png', 1, '2022-01-25 06:42:57', '2022-01-25 06:42:57'),
(64, 'images/posts/998661f8847ff140f7069e08bde836e8.png', 1, '2022-01-25 06:42:57', '2022-01-25 06:42:57'),
(9, 'images/posts/2618ac9903001820fdacd06e593bf21b.png', 1, '2022-01-25 06:42:57', '2022-01-25 06:42:57'),
(90, 'images/posts/bcac4f1b5cce9618a05901165a3da36d.png', 1, '2022-01-25 06:42:57', '2022-01-25 06:42:57'),
(58, 'images/posts/db4e55cf855d7547f4ce74ae31d027f0.png', 1, '2022-01-25 06:42:57', '2022-01-25 06:42:57'),
(93, 'images/posts/8a8e274b84506c6754cd254ffec9e8eb.png', 1, '2022-01-25 06:42:57', '2022-01-25 06:42:57'),
(51, 'images/posts/16b9d6bc762594691f82150b275b99a7.png', 1, '2022-01-25 06:42:57', '2022-01-25 06:42:57'),
(89, 'images/posts/130ded906bfd8967b74692b39dd93467.png', 1, '2022-01-25 06:42:57', '2022-01-25 06:42:57'),
(2, 'images/posts/be94760ce95901ed99f1eca9f5a2fbfe.png', 1, '2022-01-25 06:42:57', '2022-01-25 06:42:57'),
(40, 'images/posts/6cf7c4b66bccd5a49e8cfafa503f6428.png', 1, '2022-01-25 06:42:57', '2022-01-25 06:42:57'),
(15, 'images/posts/48f9c0cbc05670ba06071b088cf4f900.png', 1, '2022-01-25 06:42:57', '2022-01-25 06:42:57'),
(57, 'images/posts/2d254336d76995a859408a6f71e2f25e.png', 1, '2022-01-25 06:42:57', '2022-01-25 06:42:57'),
(76, 'images/posts/c08d69831ac1a7378c365a06f4a3b707.png', 1, '2022-01-25 06:42:58', '2022-01-25 06:42:58'),
(10, 'images/posts/240137ec965ea8edc1fe47ca29ce113a.png', 1, '2022-01-25 06:42:58', '2022-01-25 06:42:58'),
(43, 'images/posts/fb36fe27f1e111878b8e89eda812a1ba.png', 1, '2022-01-25 06:42:58', '2022-01-25 06:42:58'),
(82, 'images/posts/b8f6dcff8cba6d25ab6575e87271b6b7.png', 1, '2022-01-25 06:42:58', '2022-01-25 06:42:58'),
(17, 'images/posts/61ba9f76818661ada3bdb35e03ffe1e4.png', 1, '2022-01-25 06:42:58', '2022-01-25 06:42:58'),
(16, 'images/posts/cf72c914b27642f1812e9339bc6a7d5c.png', 1, '2022-01-25 06:42:58', '2022-01-25 06:42:58'),
(18, 'images/posts/6e00eb867efd8cdf6aeaae8224c2c1a9.png', 1, '2022-01-25 06:42:58', '2022-01-25 06:42:58'),
(56, 'images/posts/249ea30b8b9b1a2d1b7c96b0cf4476b8.png', 1, '2022-01-25 06:42:58', '2022-01-25 06:42:58'),
(96, 'images/posts/b96b90f1b0d4cb534aa3778c54f38de3.png', 1, '2022-01-25 06:42:58', '2022-01-25 06:42:58'),
(65, 'images/posts/bfcb3d71ed793ae8d76d5ba60e46aba6.png', 1, '2022-01-25 06:42:58', '2022-01-25 06:42:58'),
(20, 'images/posts/e14ab47a13df40de159a811ae5852f0e.png', 1, '2022-01-25 06:42:58', '2022-01-25 06:42:58'),
(74, 'images/posts/a7c9f7741e41c6ead56ed4280c69c52a.png', 1, '2022-01-25 06:42:58', '2022-01-25 06:42:58'),
(62, 'images/posts/dfaad85f754b6c67e28f24108fcc655a.png', 1, '2022-01-25 06:42:58', '2022-01-25 06:42:58'),
(55, 'images/posts/4e34b54cb3d08925246c36c40bcf0b96.png', 1, '2022-01-25 06:42:58', '2022-01-25 06:42:58'),
(66, 'images/posts/d0570214677901acc055cd9d2e2ee517.png', 1, '2022-01-25 06:42:59', '2022-01-25 06:42:59'),
(32, 'images/posts/8c4cf7a86aead1bef1f77f20a1fc0f3c.png', 1, '2022-01-25 06:42:59', '2022-01-25 06:42:59'),
(31, 'images/posts/92ae7bac6fc28dfc87fe32e9fa81e33e.png', 1, '2022-01-25 06:42:59', '2022-01-25 06:42:59'),
(3, 'images/posts/8452c1328bd91f3123ed93e3e02c545d.png', 1, '2022-01-25 06:42:59', '2022-01-25 06:42:59'),
(67, 'images/posts/e7322ce4862c43f440d454645db6d807.png', 1, '2022-01-25 06:42:59', '2022-01-25 06:42:59'),
(71, 'images/posts/245ca86516bd388fc1c1e52fd07e69f7.png', 1, '2022-01-25 06:42:59', '2022-01-25 06:42:59'),
(27, 'images/posts/0e0cbf3d1f4be6b28f55cef8b2051534.png', 1, '2022-01-25 06:42:59', '2022-01-25 06:42:59'),
(8, 'images/posts/a852595d24860207ac808e8098f99ded.png', 1, '2022-01-25 06:42:59', '2022-01-25 06:42:59'),
(83, 'images/posts/d55671c9d4afb8e940e11287a1917f14.png', 1, '2022-01-25 06:42:59', '2022-01-25 06:42:59'),
(72, 'images/posts/dc9bdbe79f30755cb98f663a437d0d14.png', 1, '2022-01-25 06:42:59', '2022-01-25 06:42:59'),
(92, 'images/posts/2f11574702026deb6592d5b75a40bd7a.png', 1, '2022-01-25 06:42:59', '2022-01-25 06:42:59'),
(36, 'images/posts/724b1cbc400cef2c5b2da4764b29aab3.png', 1, '2022-01-25 06:42:59', '2022-01-25 06:42:59'),
(5, 'images/posts/4a7d7e0cc3263dd8222180f530131aa8.png', 1, '2022-01-25 06:43:00', '2022-01-25 06:43:00'),
(98, 'images/posts/80c502ebc95e0efd14caa43ea769b144.png', 1, '2022-01-25 06:43:00', '2022-01-25 06:43:00'),
(1, 'images/posts/9cd484c2f474f1fb5e170cf179ce54ea.png', 1, '2022-01-25 06:43:00', '2022-01-25 06:43:00'),
(48, 'images/posts/6eb752fa2d393e99fac8302aead501c8.png', 1, '2022-01-25 06:43:00', '2022-01-25 06:43:00'),
(44, 'images/posts/e2e9857fffa14abb9fe52c96963beafa.png', 1, '2022-01-25 06:43:00', '2022-01-25 06:43:00'),
(30, 'images/posts/5f6b37d57cc4666f7f5833b7f6e121e7.png', 1, '2022-01-25 06:43:00', '2022-01-25 06:43:00'),
(52, 'images/posts/df61b98007438b761f4fb35a466050e8.png', 1, '2022-01-25 06:43:00', '2022-01-25 06:43:00'),
(12, 'images/posts/ae554499ffe4dcb69cc4fbbd21ad6495.png', 1, '2022-01-25 06:43:00', '2022-01-25 06:43:00'),
(73, 'images/posts/b7fee8a9a0a7c30e065e0e11f79556b3.png', 1, '2022-01-25 06:43:00', '2022-01-25 06:43:00'),
(29, 'images/posts/7062088345d44df94ebfecfe52094569.png', 1, '2022-01-25 06:43:00', '2022-01-25 06:43:00'),
(84, 'images/posts/c10a8c6ec4b5487856a1973c7423665a.png', 1, '2022-01-25 06:43:00', '2022-01-25 06:43:00'),
(22, 'images/posts/b3d80b3e79c59f74fb22cda6457be358.png', 1, '2022-01-25 06:43:00', '2022-01-25 06:43:00'),
(34, 'images/posts/c9f5917851161a7478f7c7907dca6d13.png', 1, '2022-01-25 06:43:00', '2022-01-25 06:43:00'),
(33, 'images/posts/1706bba6363f1da430b24c0647211038.png', 1, '2022-01-25 06:43:01', '2022-01-25 06:43:01'),
(49, 'images/posts/41f4c299b018957c81116c696408b420.png', 1, '2022-01-25 06:43:01', '2022-01-25 06:43:01'),
(4, 'images/posts/b76f543af1878ff8d1ecdd18cdada216.png', 1, '2022-01-25 06:43:01', '2022-01-25 06:43:01'),
(88, 'images/posts/90ce6d361d578b4f540bb520c160dabb.png', 1, '2022-01-25 06:43:01', '2022-01-25 06:43:01'),
(95, 'images/posts/28024d7551cac1ca0d3104df1dc5514b.png', 1, '2022-01-25 06:43:01', '2022-01-25 06:43:01'),
(77, 'images/posts/342742b7385aef020e24a3faa7383a25.png', 1, '2022-01-25 06:43:01', '2022-01-25 06:43:01'),
(68, 'images/posts/6309207251f93027d3613ae1fc05e981.png', 1, '2022-01-25 06:43:01', '2022-01-25 06:43:01'),
(38, 'images/posts/bcbd525b584fc766e379e7ca8ca3d5f4.png', 1, '2022-01-25 06:43:01', '2022-01-25 06:43:01'),
(21, 'images/posts/870c7d501a4ebfca9d5d99ac3b9c14d2.png', 1, '2022-01-25 06:43:01', '2022-01-25 06:43:01'),
(75, 'images/posts/7792f1c57ac438f4a8a4a8e83e482a95.png', 1, '2022-01-25 06:43:01', '2022-01-25 06:43:01'),
(99, 'images/posts/e5168c2552454ad5d991e3c3e9850a76.png', 1, '2022-01-25 06:43:01', '2022-01-25 06:43:01'),
(80, 'images/posts/3a3ff52aed810d5739b1898874a5729c.png', 1, '2022-01-25 06:43:01', '2022-01-25 06:43:01'),
(28, 'images/posts/405e4962ca958fa9209377a9c55c2c55.png', 1, '2022-01-25 06:43:01', '2022-01-25 06:43:01'),
(79, 'images/posts/33f1b593f93d58d49686887f376ff969.png', 1, '2022-01-25 06:43:01', '2022-01-25 06:43:01'),
(41, 'images/posts/d274acfc2c99e9eec18f7f13292c77f0.png', 1, '2022-01-25 06:43:02', '2022-01-25 06:43:02'),
(81, 'images/posts/4e579a4a3fff037c703b4ab09fce9d44.png', 1, '2022-01-25 06:43:02', '2022-01-25 06:43:02'),
(86, 'images/posts/dfbd9267a126ad99f4c3a34c5d526972.png', 1, '2022-01-25 06:43:02', '2022-01-25 06:43:02'),
(94, 'images/posts/551704bb378d972671b6f343088fc411.png', 1, '2022-01-25 06:43:02', '2022-01-25 06:43:02'),
(35, 'images/posts/bce22d842c051a8abc5824061816b878.png', 1, '2022-01-25 06:43:02', '2022-01-25 06:43:02'),
(59, 'images/posts/4555a9c2d7700f0d4807174e29c05ac3.png', 1, '2022-01-25 06:43:02', '2022-01-25 06:43:02'),
(85, 'images/posts/e5a0791655ec00d7967da8b9269b2bb6.png', 1, '2022-01-25 06:43:02', '2022-01-25 06:43:02'),
(101, 'images/posts/1722928543368568.jpg', 1, '2022-01-25 07:11:40', NULL),
(101, 'images/posts/1722928543457654.jpg', 2, '2022-01-25 07:11:40', NULL),
(102, 'images/posts/1723010149877795.jpg', 1, '2022-01-26 04:48:46', NULL),
(102, 'images/posts/1723010149989600.jpeg', 2, '2022-01-26 04:48:47', NULL),
(103, 'images/posts/1723016014101540.jpg', 1, '2022-01-26 06:21:59', NULL),
(104, 'images/posts/1723024126723209.png', 1, '2022-01-26 08:30:56', NULL),
(105, 'images/posts/1723506754723555.jpg', 1, '2022-01-31 16:22:06', NULL),
(105, 'images/posts/1723506755157776.png', 2, '2022-01-31 16:22:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--

CREATE TABLE `relationships` (
  `user_one_id` bigint(20) UNSIGNED NOT NULL,
  `user_two_id` bigint(20) UNSIGNED NOT NULL,
  `status` smallint(6) NOT NULL,
  `action_user_id` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `relationships`
--

INSERT INTO `relationships` (`user_one_id`, `user_two_id`, `status`, `action_user_id`, `created_at`, `updated_at`) VALUES
(1, 17, 2, 1, '2022-01-25 06:43:08', '2022-01-25 06:43:08'),
(1, 20, 0, 1, NULL, NULL),
(1, 47, 2, 1, '2022-01-25 06:43:03', '2022-01-25 06:43:03'),
(1, 101, 1, 101, NULL, '2022-01-25 07:11:03'),
(3, 13, 1, 3, '2022-01-25 06:43:07', '2022-01-25 06:43:07'),
(3, 71, 2, 3, '2022-01-25 06:43:03', '2022-01-25 06:43:03'),
(6, 9, 1, 9, '2022-01-25 06:43:04', '2022-01-25 06:43:04'),
(8, 67, 0, 67, '2022-01-25 06:43:08', '2022-01-25 06:43:08'),
(11, 64, 0, 11, '2022-01-25 06:43:04', '2022-01-25 06:43:04'),
(13, 3, 3, 13, '2022-01-25 06:43:06', '2022-01-25 06:43:06'),
(13, 9, 2, 13, '2022-01-25 06:43:04', '2022-01-25 06:43:04'),
(15, 34, 2, 34, '2022-01-25 06:43:04', '2022-01-25 06:43:04'),
(17, 55, 2, 55, '2022-01-25 06:43:08', '2022-01-25 06:43:08'),
(18, 13, 3, 13, '2022-01-25 06:43:08', '2022-01-25 06:43:08'),
(19, 34, 2, 19, '2022-01-25 06:43:03', '2022-01-25 06:43:03'),
(20, 39, 3, 20, '2022-01-25 06:43:07', '2022-01-25 06:43:07'),
(21, 76, 0, 21, '2022-01-25 06:43:06', '2022-01-25 06:43:06'),
(22, 38, 1, 38, '2022-01-25 06:43:09', '2022-01-25 06:43:09'),
(22, 64, 1, 64, '2022-01-25 06:43:08', '2022-01-25 06:43:08'),
(23, 22, 2, 23, '2022-01-25 06:43:08', '2022-01-25 06:43:08'),
(23, 30, 1, 23, '2022-01-25 06:43:06', '2022-01-25 06:43:06'),
(24, 37, 1, 24, '2022-01-25 06:43:06', '2022-01-25 06:43:06'),
(24, 72, 1, 72, '2022-01-25 06:43:07', '2022-01-25 06:43:07'),
(25, 30, 2, 25, '2022-01-25 06:43:06', '2022-01-25 06:43:06'),
(25, 74, 1, 74, '2022-01-25 06:43:08', '2022-01-25 06:43:08'),
(25, 84, 1, 84, '2022-01-25 06:43:05', '2022-01-25 06:43:05'),
(26, 88, 1, 88, '2022-01-25 06:43:07', '2022-01-25 06:43:07'),
(27, 33, 2, 27, '2022-01-25 06:43:09', '2022-01-25 06:43:09'),
(29, 68, 2, 29, '2022-01-25 06:43:07', '2022-01-25 06:43:07'),
(30, 82, 3, 82, '2022-01-25 06:43:03', '2022-01-25 06:43:03'),
(31, 6, 2, 31, '2022-01-25 06:43:05', '2022-01-25 06:43:05'),
(33, 82, 3, 82, '2022-01-25 06:43:06', '2022-01-25 06:43:06'),
(34, 25, 2, 34, '2022-01-25 06:43:03', '2022-01-25 06:43:03'),
(34, 61, 2, 61, '2022-01-25 06:43:05', '2022-01-25 06:43:05'),
(34, 83, 1, 34, '2022-01-25 06:43:09', '2022-01-25 06:43:09'),
(40, 88, 2, 88, '2022-01-25 06:43:08', '2022-01-25 06:43:08'),
(41, 29, 2, 29, '2022-01-25 06:43:03', '2022-01-25 06:43:03'),
(42, 25, 1, 25, '2022-01-25 06:43:05', '2022-01-25 06:43:05'),
(42, 58, 3, 58, '2022-01-25 06:43:05', '2022-01-25 06:43:05'),
(43, 48, 3, 48, '2022-01-25 06:43:09', '2022-01-25 06:43:09'),
(43, 67, 0, 67, '2022-01-25 06:43:05', '2022-01-25 06:43:05'),
(43, 77, 0, 77, '2022-01-25 06:43:03', '2022-01-25 06:43:03'),
(43, 81, 2, 81, '2022-01-25 06:43:09', '2022-01-25 06:43:09'),
(43, 90, 0, 43, '2022-01-25 06:43:03', '2022-01-25 06:43:03'),
(44, 96, 1, 44, '2022-01-25 06:43:10', '2022-01-25 06:43:10'),
(45, 12, 3, 12, '2022-01-25 06:43:09', '2022-01-25 06:43:09'),
(45, 49, 1, 45, '2022-01-25 06:43:06', '2022-01-25 06:43:06'),
(46, 7, 1, 46, '2022-01-25 06:43:08', '2022-01-25 06:43:08'),
(46, 9, 2, 9, '2022-01-25 06:43:07', '2022-01-25 06:43:07'),
(46, 57, 3, 57, '2022-01-25 06:43:03', '2022-01-25 06:43:03'),
(48, 27, 0, 27, '2022-01-25 06:43:03', '2022-01-25 06:43:03'),
(48, 64, 3, 48, '2022-01-25 06:43:09', '2022-01-25 06:43:09'),
(49, 1, 2, 49, '2022-01-25 06:43:09', '2022-01-25 06:43:09'),
(49, 60, 0, 49, '2022-01-25 06:43:07', '2022-01-25 06:43:07'),
(50, 91, 1, 91, '2022-01-25 06:43:03', '2022-01-25 06:43:03'),
(51, 70, 2, 70, '2022-01-25 06:43:06', '2022-01-25 06:43:06'),
(52, 17, 1, 17, '2022-01-25 06:43:07', '2022-01-25 06:43:07'),
(52, 89, 1, 89, '2022-01-25 06:43:07', '2022-01-25 06:43:07'),
(55, 12, 0, 12, '2022-01-25 06:43:07', '2022-01-25 06:43:07'),
(55, 26, 0, 55, '2022-01-25 06:43:08', '2022-01-25 06:43:08'),
(56, 43, 0, 43, '2022-01-25 06:43:08', '2022-01-25 06:43:08'),
(56, 45, 2, 45, '2022-01-25 06:43:10', '2022-01-25 06:43:10'),
(57, 70, 2, 70, '2022-01-25 06:43:05', '2022-01-25 06:43:05'),
(58, 83, 3, 58, '2022-01-25 06:43:09', '2022-01-25 06:43:09'),
(58, 87, 3, 58, '2022-01-25 06:43:07', '2022-01-25 06:43:07'),
(63, 59, 1, 59, '2022-01-25 06:43:03', '2022-01-25 06:43:03'),
(64, 5, 1, 5, '2022-01-25 06:43:03', '2022-01-25 06:43:03'),
(64, 60, 1, 60, '2022-01-25 06:43:03', '2022-01-25 06:43:03'),
(66, 11, 1, 66, '2022-01-25 06:43:08', '2022-01-25 06:43:08'),
(67, 41, 0, 41, '2022-01-25 06:43:04', '2022-01-25 06:43:04'),
(67, 52, 1, 67, '2022-01-25 06:43:05', '2022-01-25 06:43:05'),
(67, 99, 1, 99, '2022-01-25 06:43:06', '2022-01-25 06:43:06'),
(68, 77, 3, 68, '2022-01-25 06:43:04', '2022-01-25 06:43:04'),
(69, 50, 3, 50, '2022-01-25 06:43:05', '2022-01-25 06:43:05'),
(70, 1, 1, 1, '2022-01-25 06:43:07', '2022-01-25 06:43:07'),
(70, 50, 1, 50, '2022-01-25 06:43:04', '2022-01-25 06:43:04'),
(72, 95, 0, 95, '2022-01-25 06:43:06', '2022-01-25 06:43:06'),
(73, 84, 2, 73, '2022-01-25 06:43:04', '2022-01-25 06:43:04'),
(76, 1, 2, 76, '2022-01-25 06:43:06', '2022-01-25 06:43:06'),
(76, 35, 1, 76, '2022-01-25 06:43:10', '2022-01-25 06:43:10'),
(76, 64, 2, 76, '2022-01-25 06:43:04', '2022-01-25 06:43:04'),
(77, 19, 3, 77, '2022-01-25 06:43:05', '2022-01-25 06:43:05'),
(78, 88, 3, 88, '2022-01-25 06:43:05', '2022-01-25 06:43:05'),
(78, 98, 3, 98, '2022-01-25 06:43:09', '2022-01-25 06:43:09'),
(80, 17, 1, 17, '2022-01-25 06:43:09', '2022-01-25 06:43:09'),
(80, 96, 3, 96, '2022-01-25 06:43:07', '2022-01-25 06:43:07'),
(81, 91, 1, 91, '2022-01-25 06:43:05', '2022-01-25 06:43:05'),
(82, 41, 0, 41, '2022-01-25 06:43:09', '2022-01-25 06:43:09'),
(82, 95, 0, 82, '2022-01-25 06:43:04', '2022-01-25 06:43:04'),
(83, 15, 0, 15, '2022-01-25 06:43:09', '2022-01-25 06:43:09'),
(86, 7, 1, 7, '2022-01-25 06:43:06', '2022-01-25 06:43:06'),
(86, 16, 3, 86, '2022-01-25 06:43:04', '2022-01-25 06:43:04'),
(88, 12, 3, 12, '2022-01-25 06:43:08', '2022-01-25 06:43:08'),
(88, 30, 3, 30, '2022-01-25 06:43:07', '2022-01-25 06:43:07'),
(88, 53, 0, 88, '2022-01-25 06:43:05', '2022-01-25 06:43:05'),
(95, 11, 2, 11, '2022-01-25 06:43:06', '2022-01-25 06:43:06'),
(95, 51, 3, 95, '2022-01-25 06:43:06', '2022-01-25 06:43:06'),
(96, 20, 3, 20, '2022-01-25 06:43:05', '2022-01-25 06:43:05'),
(98, 13, 1, 98, '2022-01-25 06:43:08', '2022-01-25 06:43:08'),
(99, 34, 1, 34, '2022-01-25 06:43:05', '2022-01-25 06:43:05'),
(100, 15, 2, 100, '2022-01-25 06:43:07', '2022-01-25 06:43:07'),
(100, 78, 1, 100, '2022-01-25 06:43:07', '2022-01-25 06:43:07'),
(101, 29, 0, 101, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `saved_posts`
--

CREATE TABLE `saved_posts` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `saved_posts`
--

INSERT INTO `saved_posts` (`post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(101, 1, NULL, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy` smallint(6) NOT NULL DEFAULT 0,
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

INSERT INTO `users` (`id`, `name`, `last_name`, `username`, `description`, `privacy`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Rod Torp', 'D\'angelo Balistreri', 'facilis', 'velit eos consequatur distinctio nostrum illo repellendus aut quo ut aliquam facere qui', 0, 'goodwin.maybelle@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'O6khH0O6vurCL0cR5caXjMEx9dUXD9Gs0SWrBJmm3npAiCt2tNCM299L7Dr2', NULL, 'images/users/1723010088945655.jpeg', '2022-01-25 06:41:36', '2022-01-26 04:47:54'),
(2, 'Mrs. Ella Swift', 'Trudie Mante', 'vel', 'exercitationem vitae beatae quae qui porro', 0, 'rowena.towne@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'bj2GJmqCrc', NULL, NULL, '2022-01-25 06:41:36', '2022-01-25 06:41:36'),
(3, 'Ova Franecki', 'Mrs. Maida Rau III', 'magnam', 'rem doloribus cumque ipsam eum tempora eos', 0, 'haleigh.renner@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'hKBg5k1GwA', NULL, NULL, '2022-01-25 06:41:36', '2022-01-25 06:41:36'),
(4, 'Prof. Pamela Ritchie V', 'Nella Lakin', 'dignissimos', 'aut illum repudiandae magni est laudantium impedit sit laboriosam facere sed itaque dolores autem quisquam explicabo harum et nesciunt', 0, 'oblanda@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, '5pWbrH5BZG', NULL, NULL, '2022-01-25 06:41:37', '2022-01-25 06:41:37'),
(5, 'Shawn Rodriguez', 'Mrs. Destinee Kertzmann PhD', 'itaque', 'consectetur sapiente quas vitae est assumenda adipisci quos ut voluptatibus maiores possimus tenetur recusandae voluptatem sit velit ut sequi delectus aut cumque rerum sequi', 0, 'ohessel@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, '07763yhdrx', NULL, NULL, '2022-01-25 06:41:37', '2022-01-25 06:41:37'),
(6, 'Leopold Lind', 'Ms. Juana Mertz', 'est', 'beatae quo voluptates quasi atque dicta dolorem iure consequatur et sint numquam culpa doloremque architecto aut odit eos eius consequatur id suscipit et et occaecati laboriosam voluptate in ea est', 0, 'lbogan@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'b3FaWncOQQ', NULL, NULL, '2022-01-25 06:41:37', '2022-01-25 06:41:37'),
(7, 'Hattie Torp', 'Prof. Milo Mann', 'autem', 'dolores illo repellat veritatis error soluta molestiae ab minus magni sunt impedit impedit', 0, 'clemmie.schinner@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'TMLDyflM7n', NULL, NULL, '2022-01-25 06:41:37', '2022-01-25 06:41:37'),
(8, 'Mrs. Stacey Zulauf IV', 'Tito Hayes', 'nesciunt', 'qui voluptas enim et aut non atque non magnam rerum voluptatum consequuntur omnis harum quo deserunt non sit qui', 0, 'janick41@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'YX6nTjHeFV', NULL, NULL, '2022-01-25 06:41:37', '2022-01-25 06:41:37'),
(9, 'Ms. Ciara Huel V', 'Nona Kris', 'cum', 'ea et repellat quasi perspiciatis est illo eum in sequi aut corrupti eveniet id nostrum ad fugit molestiae enim', 0, 'rogahn.amya@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'z5s9AYDHGX', NULL, NULL, '2022-01-25 06:41:37', '2022-01-25 06:41:37'),
(10, 'Chance Hodkiewicz Sr.', 'Mr. Otis Roberts Sr.', 'et', 'unde quod aspernatur earum aut error eveniet necessitatibus vitae rerum qui aliquid facere iste libero itaque', 0, 'treva09@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'zIzWsb4TQV', NULL, NULL, '2022-01-25 06:41:37', '2022-01-25 06:41:37'),
(11, 'Darren Upton', 'Gia Upton', 'aut', 'tempore beatae placeat id sequi vel beatae perspiciatis provident maiores dolores aut voluptate in aliquid delectus et voluptas odit aspernatur', 0, 'estanton@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'Raraf2HrMd', NULL, NULL, '2022-01-25 06:41:37', '2022-01-25 06:41:37'),
(12, 'Ryley Kshlerin', 'Mr. Pedro Powlowski I', 'unde', 'recusandae aut deserunt asperiores cum qui ut error', 0, 'mccullough.jessika@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'O2VrBaymbf', NULL, NULL, '2022-01-25 06:41:37', '2022-01-25 06:41:37'),
(13, 'Darrel O\'Keefe', 'Saige Heller I', 'quia', 'libero mollitia mollitia maiores ut quo eos culpa eum recusandae qui nisi temporibus optio est eos aut est autem quo quidem blanditiis', 0, 'dubuque.allan@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'ff0GSNwVwO', NULL, NULL, '2022-01-25 06:41:37', '2022-01-25 06:41:37'),
(14, 'Jazlyn Morissette I', 'Jody Willms', 'quo', 'facilis id id rerum nihil natus occaecati qui eum ducimus quos laborum laborum possimus perspiciatis aliquid', 0, 'dkilback@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'D6WNYHWwoP', NULL, NULL, '2022-01-25 06:41:37', '2022-01-25 06:41:37'),
(15, 'Jaquelin Padberg DVM', 'Monica Morissette', 'dolor', 'est ut et ea a', 0, 'bernhard.bill@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'RfdxAQFtDg', NULL, NULL, '2022-01-25 06:41:37', '2022-01-25 06:41:37'),
(16, 'Prof. Erling Daugherty Sr.', 'Vena Mraz', 'suscipit', 'officia necessitatibus et voluptatem consequatur nihil voluptas qui illo perferendis quaerat similique sed in rerum sed fugiat earum dolores ex unde ipsum est sint', 0, 'christine.nikolaus@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, '85yS9goQJQ', NULL, NULL, '2022-01-25 06:41:37', '2022-01-25 06:41:37'),
(17, 'Rollin Yost', 'Ms. Providenci Larson', 'possimus', 'iure alias vero doloribus commodi ea quas sit accusantium eligendi vero sit iste velit corporis porro molestiae qui neque et tempore veniam', 0, 'qdibbert@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'OIzOailmaW', NULL, NULL, '2022-01-25 06:41:37', '2022-01-25 06:41:37'),
(18, 'Mr. Jamil Keebler', 'Jose Douglas Sr.', 'rerum', 'beatae libero et consequatur omnis temporibus aperiam est voluptates sed et ea enim autem qui unde rerum velit corporis similique ducimus voluptas illo sed velit', 0, 'layla45@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'Ju4bYx6kyI', NULL, NULL, '2022-01-25 06:41:37', '2022-01-25 06:41:37'),
(19, 'Xavier Klocko I', 'Dr. Billie Crooks DDS', 'eius', 'sunt corporis officiis commodi non consequatur molestiae totam adipisci quos et fugiat ratione rerum nam quas excepturi ratione et commodi veniam eum ut repellat', 0, 'theron14@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'Zjlw8SCles', NULL, NULL, '2022-01-25 06:41:37', '2022-01-25 06:41:37'),
(20, 'Candelario Yost MD', 'Clementina Grant', 'qui', 'voluptatibus non eaque dicta totam nihil nobis et debitis et odio deleniti sunt aut vero', 0, 'krajcik.alison@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'gtJXuE9oDo', NULL, NULL, '2022-01-25 06:41:37', '2022-01-25 06:41:37'),
(21, 'Emelie Monahan Sr.', 'Ms. Delilah Cormier', 'recusandae', 'illum et doloremque dolorum et reiciendis autem tempore et architecto consequatur quo omnis quibusdam magnam magnam odit doloribus qui hic culpa perferendis minus dolore aut', 0, 'brad.ortiz@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'QYywy8jTpE', NULL, NULL, '2022-01-25 06:41:38', '2022-01-25 06:41:38'),
(22, 'Cristopher Prosacco', 'Hassie Ankunding', 'non', 'at dolorum nemo autem qui exercitationem ut id quasi quisquam quia qui autem dolorum nihil sit', 0, 'alessandra.gibson@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'TzEXi49Tl4', NULL, NULL, '2022-01-25 06:41:38', '2022-01-25 06:41:38'),
(23, 'Prof. Monte Jast MD', 'Bernard Lakin III', 'id', 'quibusdam omnis neque sunt ipsa velit et pariatur veritatis aperiam nobis quibusdam eaque non aut et dicta officiis aut nesciunt nesciunt quam ex sed cupiditate aut saepe aut minima quibusdam', 0, 'uborer@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'IEoLdM3OBE', NULL, NULL, '2022-01-25 06:41:38', '2022-01-25 06:41:38'),
(24, 'Samara Blick', 'Remington Cormier', 'perferendis', 'odit architecto qui doloribus porro aut odio rerum illo rem sed nesciunt quisquam sit inventore eos recusandae voluptas id eum quam sed', 0, 'dkonopelski@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'amHl2YUKKx', NULL, NULL, '2022-01-25 06:41:38', '2022-01-25 06:41:38'),
(25, 'Zetta Kuvalis', 'Juliana Weimann', 'libero', 'fuga iure eum aperiam numquam mollitia doloribus perspiciatis ipsa quas molestiae culpa in eos qui in quae ipsam ipsum occaecati aperiam velit magni totam eveniet odit aut', 0, 'shields.meaghan@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'LcGxjNpEsN', NULL, NULL, '2022-01-25 06:41:38', '2022-01-25 06:41:38'),
(26, 'Hilbert Robel', 'Billie Mertz', 'facere', 'facere occaecati soluta optio labore exercitationem veniam aut officia rerum et qui a et nobis hic voluptatum excepturi molestiae sit et atque sint ut', 0, 'ooberbrunner@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'RIoPJ155Hc', NULL, NULL, '2022-01-25 06:41:38', '2022-01-25 06:41:38'),
(27, 'Mr. Rudy Hauck III', 'Adrain Dare', 'labore', 'quis rerum voluptate tempore enim rerum rerum sapiente consequuntur id autem sit accusamus aut et nisi quis unde enim et rem aut et neque est iure', 0, 'eleonore.roberts@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, '0jiMcg4uxi', NULL, NULL, '2022-01-25 06:41:38', '2022-01-25 06:41:38'),
(28, 'Peter Brakus Jr.', 'Burdette Cole', 'voluptatum', 'autem animi aliquid temporibus blanditiis dolores commodi illo enim nesciunt assumenda consectetur molestias in beatae tempora at illum soluta voluptatem non ipsa dicta quis eveniet et', 0, 'kyra74@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, '5abIQHUkzh', NULL, NULL, '2022-01-25 06:41:38', '2022-01-25 06:41:38'),
(29, 'Elvera Sanford', 'Hortense Mann', 'commodi', 'soluta voluptatibus accusantium magnam voluptates qui illo aut nihil sint harum porro atque dolore velit mollitia culpa doloremque velit', 0, 'mary.green@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'B4UWHZHhL8', NULL, NULL, '2022-01-25 06:41:38', '2022-01-25 06:41:38'),
(30, 'Albert Bailey Sr.', 'Sherwood Littel Sr.', 'quod', 'et a explicabo distinctio recusandae consequatur consectetur esse amet ut quis aliquid deserunt omnis vero ea voluptatem voluptates beatae facilis at id laboriosam qui', 0, 'quitzon.estrella@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'H0R7h7xu0p', NULL, NULL, '2022-01-25 06:41:38', '2022-01-25 06:41:38'),
(31, 'Dr. Maria Strosin', 'Michaela Schneider', 'consequatur', 'et sit ad suscipit voluptas hic vero non praesentium aut', 0, 'luettgen.clifton@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'bIrzFaDWPu', NULL, NULL, '2022-01-25 06:41:38', '2022-01-25 06:41:38'),
(32, 'Ramiro Veum', 'Lennie Price Jr.', 'porro', 'quia doloremque voluptate nihil aut nulla ipsum fugiat sapiente explicabo voluptas eligendi praesentium officia aut rerum officia aut voluptas molestiae eos voluptates dolor nesciunt incidunt aut', 0, 'amos.okeefe@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'bEuEch8sd5', NULL, NULL, '2022-01-25 06:41:38', '2022-01-25 06:41:38'),
(33, 'Joyce Bauch', 'Dr. Melisa Padberg IV', 'reiciendis', 'est eum ea corporis totam nulla dolorem et praesentium asperiores enim explicabo laborum in tenetur sit error vel ratione', 0, 'imogene.carter@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'y1tEhDWB6X', NULL, NULL, '2022-01-25 06:41:38', '2022-01-25 06:41:38'),
(34, 'Bette Grimes', 'Reagan Price', 'eveniet', 'quia dolor fuga quas qui dolore nihil quia ratione cupiditate', 0, 'ardith04@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, '6VoEb1APsH', NULL, NULL, '2022-01-25 06:41:39', '2022-01-25 06:41:39'),
(35, 'Dr. Isac Kautzer DVM', 'Talia Reynolds Jr.', 'enim', 'nihil sapiente qui molestias voluptatem dolor', 0, 'corwin.lucy@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'Kv7Mhsp1HH', NULL, NULL, '2022-01-25 06:41:39', '2022-01-25 06:41:39'),
(36, 'Bartholome Koelpin', 'Whitney Hauck', 'voluptas', 'officiis consequatur ullam dolor est sit et qui provident sit qui vero enim qui placeat dolorum dolorem quia quia impedit', 0, 'jonatan.bogan@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'iwCRoKAh9Z', NULL, NULL, '2022-01-25 06:41:39', '2022-01-25 06:41:39'),
(37, 'Elsie Wehner', 'Miss Christa Lehner', 'earum', 'fugit dignissimos in et et dignissimos expedita sint harum illo earum et recusandae itaque aut alias fugit dolor error tempore facilis deleniti alias consequatur facere sunt consectetur necessitatibus', 0, 'gulgowski.callie@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'bshuqgr06L', NULL, NULL, '2022-01-25 06:41:39', '2022-01-25 06:41:39'),
(38, 'Miss Willie Bradtke PhD', 'Antwan Metz DDS', 'ea', 'et quidem et quia alias nobis quod quam quisquam occaecati aut et a et quos fugit ea corporis et quia occaecati repellendus repellat et', 0, 'sydney.lindgren@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'R9nfcKarac', NULL, NULL, '2022-01-25 06:41:39', '2022-01-25 06:41:39'),
(39, 'Prof. Mae Luettgen', 'Carley Nikolaus', 'ex', 'iure sed et eos mollitia provident quibusdam consequatur', 0, 'bradford.connelly@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, '6Npv3vkV1s', NULL, NULL, '2022-01-25 06:41:39', '2022-01-25 06:41:39'),
(40, 'Charlotte Nitzsche', 'Prof. Tod Schulist', 'eaque', 'asperiores at minus voluptatum distinctio aut suscipit saepe', 0, 'adell.leuschke@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'jMfy0n3BX9', NULL, NULL, '2022-01-25 06:41:39', '2022-01-25 06:41:39'),
(41, 'Miss Leola Abshire IV', 'Sven McCullough', 'atque', 'perferendis eius voluptatem qui consequatur magnam totam recusandae itaque qui', 0, 'ebednar@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'M5foWLUOZK', NULL, NULL, '2022-01-25 06:41:39', '2022-01-25 06:41:39'),
(42, 'Mr. Will Kuhlman DDS', 'Dr. Jacklyn Kohler MD', 'reprehenderit', 'sit possimus ut commodi perferendis natus provident rem et ut aliquid rerum ut ut in fugiat maiores', 0, 'janessa.conroy@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'hhlyeL1MQT', NULL, NULL, '2022-01-25 06:41:39', '2022-01-25 06:41:39'),
(43, 'Austyn Crona', 'Dr. Charity Rohan', 'iusto', 'facilis omnis quisquam ut numquam vitae maiores iusto voluptate ea qui sint placeat tenetur', 0, 'ugrady@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, '2h8VJpRYUU', NULL, NULL, '2022-01-25 06:41:39', '2022-01-25 06:41:39'),
(44, 'Mrs. Jennie Littel IV', 'Prof. William Quigley DVM', 'sunt', 'autem ut doloribus molestiae excepturi voluptatem laudantium porro expedita et aut explicabo distinctio expedita et ut in incidunt nihil non modi amet optio ex quia', 0, 'ykertzmann@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'b9CrFj7tEZ', NULL, NULL, '2022-01-25 06:41:39', '2022-01-25 06:41:39'),
(45, 'Myrna McGlynn', 'Santina Runte', 'quae', 'facilis similique qui ut facere provident veniam neque rerum nihil rerum harum expedita similique voluptates', 0, 'lincoln78@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'hs7lyWaeyq', NULL, NULL, '2022-01-25 06:41:39', '2022-01-25 06:41:39'),
(46, 'Charlie Bayer', 'Prof. Cassandre Gislason', 'ut', 'iste quis et voluptatem deserunt ut qui cupiditate neque omnis pariatur qui voluptatum hic omnis nam deserunt vel aut vitae tempore laudantium fuga illum non eius ut nemo', 0, 'gladyce.bechtelar@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'maGUnEVTvg', NULL, NULL, '2022-01-25 06:41:40', '2022-01-25 06:41:40'),
(47, 'Mrs. Cali Runte MD', 'Frieda Christiansen', 'veniam', 'aliquam maiores occaecati rem maxime eos labore vitae qui dicta molestias et ut quae facere ipsa et molestias et magni quia maiores dolorem cumque nihil modi numquam laborum modi consectetur', 0, 'terence17@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, '8DTQ6UKjma', NULL, NULL, '2022-01-25 06:41:40', '2022-01-25 06:41:40'),
(48, 'Jordy Heller', 'Ms. Alvena White', 'illo', 'ut et quibusdam ut ullam molestiae voluptatem aut quidem autem soluta perferendis temporibus voluptas quia expedita velit', 0, 'olen.kozey@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'lDMefmAnVc', NULL, NULL, '2022-01-25 06:41:40', '2022-01-25 06:41:40'),
(49, 'Dock Williamson II', 'Toney Okuneva', 'eos', 'dolorem sit ducimus aut neque neque commodi ratione eligendi quis enim omnis pariatur corporis tenetur quo', 0, 'allene02@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'OXEZlkIggT', NULL, NULL, '2022-01-25 06:41:40', '2022-01-25 06:41:40'),
(50, 'Ruth Satterfield IV', 'Vergie Russel', 'nam', 'unde modi nesciunt omnis quidem provident mollitia qui voluptatem consequatur sit esse quam error nemo impedit consequatur id odit repellat dolores tempore quis fugit velit eius nulla doloribus error', 0, 'unique.kirlin@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'sjeqtLBQJn', NULL, NULL, '2022-01-25 06:41:40', '2022-01-25 06:41:40'),
(51, 'Clifford Legros', 'Beaulah Jacobson', 'iste', 'ut cupiditate amet possimus quia autem dolore voluptas sint et quod', 0, 'halvorson.georgianna@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'rqcnNRa27s', NULL, NULL, '2022-01-25 06:41:40', '2022-01-25 06:41:40'),
(52, 'Chanelle Murphy', 'Thora Mohr', 'voluptatem', 'dicta dignissimos neque illo illo eveniet nam laborum non rerum accusantium maxime voluptatibus velit quo natus aut nobis doloremque aut voluptates maxime aut tempora omnis voluptas repellat autem itaque', 0, 'greenholt.esther@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'osU6HqrgM7', NULL, NULL, '2022-01-25 06:41:40', '2022-01-25 06:41:40'),
(53, 'Emely Medhurst PhD', 'Alison Aufderhar', 'minima', 'ut quae ratione delectus est vel fugit impedit aperiam voluptatum', 0, 'gzulauf@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'WPm0rvHKPp', NULL, NULL, '2022-01-25 06:41:40', '2022-01-25 06:41:40'),
(54, 'Missouri Daniel', 'Sabina Kozey', 'dolores', 'dolores ad qui cum architecto et aut sunt dolore perspiciatis', 0, 'tkassulke@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'fkFUdAARDR', NULL, NULL, '2022-01-25 06:41:40', '2022-01-25 06:41:40'),
(55, 'Miss Eloisa Schoen I', 'Alysson Frami Jr.', 'repellendus', 'placeat quas atque et soluta eum ipsum dignissimos et', 0, 'lauren75@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'ee4MoQYX4K', NULL, NULL, '2022-01-25 06:41:40', '2022-01-25 06:41:40'),
(56, 'Abbigail Schinner', 'Ms. Michele Mraz III', 'quaerat', 'consequatur et ut nobis illum', 0, 'dorthy.konopelski@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'EiTGA3AssV', NULL, NULL, '2022-01-25 06:41:40', '2022-01-25 06:41:40'),
(57, 'Citlalli Fay', 'Mr. Lonzo Rosenbaum', 'omnis', 'quia numquam dolorem quae ut quia repudiandae laboriosam consequatur inventore veritatis mollitia fugit soluta ullam qui', 0, 'ayana.conn@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'XaOsEONAUD', NULL, NULL, '2022-01-25 06:41:40', '2022-01-25 06:41:40'),
(58, 'Dr. Gay Halvorson DVM', 'Mr. Darrel Block', 'molestiae', 'autem deleniti odit et soluta deleniti reprehenderit eaque et accusamus ullam', 0, 'felton02@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'fNk4L04AD2', NULL, NULL, '2022-01-25 06:41:40', '2022-01-25 06:41:40'),
(59, 'Mr. Jillian Schroeder', 'Camila Collier', 'delectus', 'molestiae sed ex alias optio quisquam sequi ipsam', 0, 'conroy.augusta@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'MGG5pEh4AQ', NULL, NULL, '2022-01-25 06:41:41', '2022-01-25 06:41:41'),
(60, 'Merritt Hoppe', 'Turner Volkman IV', 'maxime', 'delectus aliquam delectus similique beatae sed temporibus pariatur earum incidunt tenetur deserunt ad nulla quis', 0, 'hmckenzie@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'TqUc8faHP4', NULL, NULL, '2022-01-25 06:41:41', '2022-01-25 06:41:41'),
(61, 'Corrine Gorczany', 'Dr. Lucienne Bradtke IV', 'cupiditate', 'quos dolorem neque sed culpa mollitia et officiis suscipit amet ab', 0, 'welch.santina@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'WP0CW3FGXY', NULL, NULL, '2022-01-25 06:41:41', '2022-01-25 06:41:41'),
(62, 'Miss Yoshiko Stamm I', 'Jalyn Huels', 'velit', 'dolor et ab placeat asperiores unde nisi sequi', 0, 'valentin.bauch@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'VOWJ4BY89V', NULL, NULL, '2022-01-25 06:41:41', '2022-01-25 06:41:41'),
(63, 'Julianne Borer I', 'Hayley Legros DDS', 'a', 'ab minus odit quia reprehenderit et dolorem non quo rerum tenetur nostrum praesentium reiciendis enim delectus corrupti harum iusto natus modi blanditiis voluptate provident ipsam magni', 0, 'casandra.kemmer@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, '8aZ6ns8zpu', NULL, NULL, '2022-01-25 06:41:41', '2022-01-25 06:41:41'),
(64, 'Linda Nader', 'Francesca Erdman', 'harum', 'iusto in distinctio vero asperiores minima laborum minima eius error non voluptatem dolor non dolor eius aut facere qui incidunt adipisci corporis quas enim nihil quia ratione reprehenderit', 0, 'maxie01@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'YkqqUtLpIN', NULL, NULL, '2022-01-25 06:41:41', '2022-01-25 06:41:41'),
(65, 'Anabelle Schmitt', 'Linnie Langworth', 'veritatis', 'quia facilis accusantium ullam vel aliquam molestiae cupiditate nihil rerum mollitia aperiam sequi est', 0, 'pagac.jayden@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, '5yuOn94NEt', NULL, NULL, '2022-01-25 06:41:41', '2022-01-25 06:41:41'),
(66, 'Marlee Feest', 'Beryl Rice', 'tenetur', 'fugit fugit laboriosam ducimus consequuntur magni exercitationem non odio animi voluptatem ducimus alias sit earum vel temporibus fuga molestias eum sequi voluptatem reprehenderit provident sunt sunt molestiae similique rerum', 0, 'colt.koss@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, '4xlwI17U75', NULL, NULL, '2022-01-25 06:41:41', '2022-01-25 06:41:41'),
(67, 'Orie Macejkovic', 'Drake Hill', 'odio', 'in quia et rerum tempore aspernatur sapiente quo qui enim quas autem', 0, 'awiegand@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'gjM35VfBvO', NULL, NULL, '2022-01-25 06:41:41', '2022-01-25 06:41:41'),
(68, 'Mrs. Lulu Medhurst', 'Narciso McKenzie IV', 'accusantium', 'vero adipisci dicta magnam quibusdam et et perspiciatis enim aut aut quod aperiam eveniet at magni optio et a omnis omnis eum in iure ex tempore nemo aut', 0, 'dbeatty@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'npIeCXWrAv', NULL, NULL, '2022-01-25 06:41:41', '2022-01-25 06:41:41'),
(69, 'Mr. Rory Herzog', 'Mr. Brian Davis DDS', 'necessitatibus', 'est veritatis dolores distinctio quia error et autem et', 0, 'florian.feil@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'JFm3SfuSzy', NULL, NULL, '2022-01-25 06:41:41', '2022-01-25 06:41:41'),
(70, 'Prof. Jerrell Huel MD', 'Rickie Schmeler', 'hic', 'facere id distinctio omnis itaque repudiandae et animi assumenda in odio eius sit at magnam nihil', 0, 'hilpert.raheem@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'n28yVAOuDy', NULL, NULL, '2022-01-25 06:41:41', '2022-01-25 06:41:41'),
(71, 'Ethel Kuhic', 'Mr. Elliot Upton MD', 'in', 'numquam dolore quas voluptate harum perspiciatis laborum est distinctio vel eaque autem veniam porro reiciendis in odit', 0, 'jonathon32@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'XkmpCXuQgl', NULL, NULL, '2022-01-25 06:41:42', '2022-01-25 06:41:42'),
(72, 'Ward Ferry', 'Sandy Gottlieb', 'iure', 'qui quis sint eligendi perspiciatis et', 0, 'fpaucek@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'sSGcfIPhsE', NULL, NULL, '2022-01-25 06:41:42', '2022-01-25 06:41:42'),
(73, 'Dr. Abigale Schultz DDS', 'Lillian Toy', 'esse', 'ut cum impedit amet iure a', 0, 'holden.bogisich@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'IfeCLsuWvO', NULL, NULL, '2022-01-25 06:41:42', '2022-01-25 06:41:42'),
(74, 'Wellington Kerluke', 'Shanna Bailey', 'minus', 'porro et tenetur perspiciatis asperiores quos ipsam non sit dolorem et', 0, 'pattie50@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, '3UBG3yqdJu', NULL, NULL, '2022-01-25 06:41:42', '2022-01-25 06:41:42'),
(75, 'Mr. Major Hauck', 'Opal Luettgen', 'aliquam', 'odio nulla illo explicabo voluptas est ipsa voluptates inventore aut laborum laborum aspernatur natus quo dolor et soluta voluptatum vero quae at', 0, 'marquardt.alejandra@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'iHCk50xDh5', NULL, NULL, '2022-01-25 06:41:42', '2022-01-25 06:41:42'),
(76, 'Ibrahim Legros', 'Prof. Raymundo Schuppe II', 'neque', 'eveniet numquam ut placeat ipsa maiores explicabo vel laborum consequatur repellat qui', 0, 'helene98@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'X1zAk8DCDJ', NULL, NULL, '2022-01-25 06:41:42', '2022-01-25 06:41:42'),
(77, 'Dr. Junius Cassin II', 'Dr. Kristopher Corwin', 'modi', 'asperiores provident eaque repellendus in similique ratione sit eum blanditiis omnis impedit totam et sapiente molestiae vel sed suscipit similique', 0, 'berniece18@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'fnvUHgrnuW', NULL, NULL, '2022-01-25 06:41:42', '2022-01-25 06:41:42'),
(78, 'Sigrid Veum', 'Tomas Parker', 'sint', 'esse maxime facilis sapiente tempore error deserunt modi ipsum quis maiores eveniet voluptatem', 0, 'dweissnat@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'wD40pY0x0C', NULL, NULL, '2022-01-25 06:41:42', '2022-01-25 06:41:42'),
(79, 'Prof. Araceli Russel MD', 'Isabella Grady', 'dolore', 'est doloremque repellendus eveniet dolor voluptatem et facilis enim unde dolore maiores nemo eum et itaque earum nesciunt commodi similique enim atque', 0, 'vmonahan@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'VpCQmLu9I9', NULL, NULL, '2022-01-25 06:41:42', '2022-01-25 06:41:42'),
(80, 'Jayson Gottlieb', 'Khalil Fahey', 'soluta', 'molestiae aut ea autem deleniti eaque consequatur veritatis', 0, 'rod21@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'xLeedv3xLz', NULL, NULL, '2022-01-25 06:41:42', '2022-01-25 06:41:42'),
(81, 'Dr. Rene Boyer Jr.', 'Lexi Kozey', 'cumque', 'et at deleniti repellendus eum eaque consequatur id odit hic totam voluptatem qui molestiae sed eligendi quis fuga', 0, 'irowe@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, '08S8gvtfp6', NULL, NULL, '2022-01-25 06:41:42', '2022-01-25 06:41:42'),
(82, 'Donnie Nolan', 'Oleta Emard', 'placeat', 'quis debitis tempora itaque totam ipsum repudiandae autem laborum vel', 0, 'jaden.fay@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 's7dgmmd7g3', NULL, NULL, '2022-01-25 06:41:42', '2022-01-25 06:41:42'),
(83, 'Ms. Ottilie Renner MD', 'Aileen Morar', 'asperiores', 'nemo dolor consequatur molestiae ducimus sit voluptatem et nesciunt sed et possimus dolore optio', 0, 'wbins@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'l73owHu5hM', NULL, NULL, '2022-01-25 06:41:42', '2022-01-25 06:41:42'),
(84, 'Magnolia Moore', 'Ms. Emilia Boyer V', 'vero', 'soluta at fugiat et voluptas', 0, 'mnader@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'Ns2Iu3HSJS', NULL, NULL, '2022-01-25 06:41:43', '2022-01-25 06:41:43'),
(85, 'Gardner Schoen', 'Brent Krajcik', 'ad', 'aliquam et et et in reprehenderit eaque iusto repellat minus quia velit quidem corporis libero est atque laborum', 0, 'serenity.botsford@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, '8VKY2DsRm5', NULL, NULL, '2022-01-25 06:41:43', '2022-01-25 06:41:43'),
(86, 'Jordy Adams Sr.', 'Prof. Eriberto Shields', 'nisi', 'laborum et quam et aliquid nostrum dolorem repellat', 0, 'mitchel32@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'TvIB0BHLSy', NULL, NULL, '2022-01-25 06:41:43', '2022-01-25 06:41:43'),
(87, 'Miss Josianne Stanton', 'Ms. Skyla Kuphal', 'eum', 'atque deserunt adipisci ducimus eaque consequatur in occaecati rerum iure error praesentium enim ipsam deleniti voluptas', 0, 'xtremblay@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'IGiVKOR96v', NULL, NULL, '2022-01-25 06:41:43', '2022-01-25 06:41:43'),
(88, 'Dr. Dillon Bergstrom', 'June Lynch', 'aspernatur', 'voluptas natus totam placeat atque quasi molestiae dolorem excepturi ut rerum ut non aut debitis non corrupti nam aperiam dicta ratione voluptas', 0, 'kub.zola@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'KB3CzK55ep', NULL, NULL, '2022-01-25 06:41:43', '2022-01-25 06:41:43'),
(89, 'Elisabeth Hermann', 'Kacie Emard', 'beatae', 'id est rerum dolores sint sint quaerat consequatur dolorem vel modi consequatur in numquam repellendus est reiciendis minima omnis et delectus in itaque reiciendis', 0, 'tdamore@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, '6M9RKpqSsr', NULL, NULL, '2022-01-25 06:41:43', '2022-01-25 06:41:43'),
(90, 'Dr. Shemar Gleichner', 'Mr. Ned Grant', 'eligendi', 'maxime libero beatae qui autem voluptas ducimus impedit aut sint', 0, 'miles.beier@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'JfoiIiuPLZ', NULL, NULL, '2022-01-25 06:41:43', '2022-01-25 06:41:43'),
(91, 'Dr. Columbus Weber V', 'Shanny Goodwin', 'ratione', 'a omnis doloremque hic nulla dolore numquam sunt repellat voluptatem nobis inventore non velit beatae iste ut qui itaque dignissimos assumenda eveniet eaque incidunt', 0, 'jerad.schimmel@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, '0Nl16fuYEh', NULL, NULL, '2022-01-25 06:41:43', '2022-01-25 06:41:43'),
(92, 'Destini Heller Jr.', 'Erik Reinger', 'vitae', 'non qui accusamus magnam quo dolor error', 0, 'sierra15@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'towXTSRLAJ', NULL, NULL, '2022-01-25 06:41:43', '2022-01-25 06:41:43'),
(93, 'Elfrieda Funk', 'Emily Reilly', 'optio', 'dolores at tempora non tempore velit veritatis magnam eos et laudantium', 0, 'nyah.hermiston@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'z0Q8rbsueN', NULL, NULL, '2022-01-25 06:41:43', '2022-01-25 06:41:43'),
(94, 'Loren Russel', 'Miss Karolann Ullrich', 'consectetur', 'quis et eaque assumenda eum vel tempore nisi', 0, 'frami.joseph@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'taLnHFip6R', NULL, NULL, '2022-01-25 06:41:44', '2022-01-25 06:41:44'),
(95, 'Jesse Effertz', 'Tevin Spencer IV', 'mollitia', 'a deleniti dolores error natus quia soluta dolore cumque sunt magni ut qui ullam', 0, 'ricky.mcdermott@example.com', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'lUchoxuVJI', NULL, NULL, '2022-01-25 06:41:44', '2022-01-25 06:41:44'),
(96, 'Claude Block', 'Nico Morissette', 'incidunt', 'nisi pariatur iusto nobis et aliquid', 0, 'jacobson.dock@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'wXt0oDssnm', NULL, NULL, '2022-01-25 06:41:44', '2022-01-25 06:41:44'),
(97, 'Amara Williamson', 'Vladimir Hoppe', 'quis', 'est voluptatem iure aliquid dolorum sit fugit quae rerum eveniet tempore debitis earum', 0, 'lina.wehner@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'mIASWqPyZD', NULL, NULL, '2022-01-25 06:41:44', '2022-01-25 06:41:44'),
(98, 'Summer Huel', 'Elmer Feest', 'laboriosam', 'et magni sint officiis facilis quia sint possimus alias laboriosam reiciendis distinctio molestias ut eos qui perferendis est', 0, 'shawna73@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'MBawQVXRcm', NULL, NULL, '2022-01-25 06:41:44', '2022-01-25 06:41:44'),
(99, 'Darien Kohler', 'Hayley Dach', 'sed', 'nesciunt aut ea nobis ut maxime ut et illo et voluptatem ad vel vero nulla accusantium quos dolore omnis labore ut quaerat qui dolor non', 0, 'faye71@example.net', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'dClTkvBMng', NULL, NULL, '2022-01-25 06:41:44', '2022-01-25 06:41:44'),
(100, 'Gennaro Abbott Jr.', 'Cindy Buckridge DDS', 'deleniti', 'sunt esse velit similique et consequatur eum aspernatur fugiat qui omnis doloremque sequi fugit', 0, 'citlalli.predovic@example.org', '2022-01-25 06:41:36', '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, 'FdlMGxpWVW', NULL, NULL, '2022-01-25 06:41:44', '2022-01-25 06:41:44'),
(101, 'syed maisam', NULL, 'syedmaisam', NULL, 0, 'maisam@gmail.com', NULL, '$2y$10$bZwEgg8HlEbdKRoGn9vFD.XTH7lNWMPMB5i2l93/ADzQz0jPmNm/.', NULL, NULL, NULL, NULL, 'images/users/1722928620835517.png', '2022-01-25 06:46:22', '2022-01-25 07:12:54'),
(102, 'admin', NULL, 'admin', NULL, 0, 'admin@admin.com', NULL, '$2y$10$83jrg7DxrVfy.C9EuG.9qO/gRSsFvxyhsA/RBzCqqHvNJC091cgXS', NULL, NULL, NULL, NULL, NULL, '2022-02-18 18:47:13', '2022-02-18 18:47:13'),
(103, 'emad', NULL, 'Emmad', 'my bio data', 0, 'emad@gmail.com', '2022-02-01 10:01:25', '$2y$10$PRvaJAnXyvzJTHdCvcdK8.fUlQZgZRDffuhI450VU4ExPCyTECbbi', NULL, NULL, NULL, NULL, 'images/users/1725638491787565.jpg', '2022-02-24 16:39:05', '2022-02-27 19:26:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`Chat_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `liked_posts`
--
ALTER TABLE `liked_posts`
  ADD UNIQUE KEY `liked_posts_user_id_post_id_unique` (`user_id`,`post_id`),
  ADD KEY `liked_posts_post_id_foreign` (`post_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Chat_id` (`Chat_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_post_id_foreign` (`post_id`),
  ADD KEY `post_comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_images`
--
ALTER TABLE `post_images`
  ADD KEY `post_images_post_id_foreign` (`post_id`);

--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
  ADD UNIQUE KEY `relationships_user_one_id_user_two_id_unique` (`user_one_id`,`user_two_id`),
  ADD KEY `relationships_user_two_id_foreign` (`user_two_id`);

--
-- Indexes for table `saved_posts`
--
ALTER TABLE `saved_posts`
  ADD UNIQUE KEY `saved_posts_user_id_post_id_unique` (`user_id`,`post_id`),
  ADD KEY `saved_posts_post_id_foreign` (`post_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `Chat_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `liked_posts`
--
ALTER TABLE `liked_posts`
  ADD CONSTRAINT `liked_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `liked_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_images`
--
ALTER TABLE `post_images`
  ADD CONSTRAINT `post_images_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `relationships`
--
ALTER TABLE `relationships`
  ADD CONSTRAINT `relationships_user_one_id_foreign` FOREIGN KEY (`user_one_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `relationships_user_two_id_foreign` FOREIGN KEY (`user_two_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `saved_posts`
--
ALTER TABLE `saved_posts`
  ADD CONSTRAINT `saved_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saved_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
