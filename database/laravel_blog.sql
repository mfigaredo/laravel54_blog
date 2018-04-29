-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-04-2018 a las 17:43:20
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel_blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `body` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 3, 'test comment', 3, '2018-03-25 23:42:00', '2018-03-25 23:42:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2018_03_18_053542_create_tasks_table', 1),
(12, '2018_03_18_171144_create_posts_table', 1),
(13, '2018_03_25_022314_create_comments_table', 1),
(14, '2018_03_25_215141_create_tags_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'asdfasdf', 'adfasdfad', 3, '2017-03-25 13:41:06', '2017-03-25 13:41:06'),
(2, 'My real test', 'real test body', 3, '2018-03-25 13:58:06', '2018-03-25 13:58:06'),
(3, 'My Third Post', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quisquam sint dicta voluptatum aut possimus! Quidem aut quisquam similique earum distinctio esse dolor dolorem deleniti facilis, odit minima, ab mollitia illum quam quos beatae enim debitis maiores autem dolore, tempore architecto amet vero voluptate. Dolorum quibusdam, quae ratione autem ut minus?', 3, '2018-03-25 14:16:22', '2018-03-25 14:16:22'),
(4, 'First', 'first body', 1, '2018-01-03 06:00:00', '2018-01-03 06:00:00'),
(5, 'Second', 'second body', 1, '2018-02-05 06:00:00', '2018-02-05 06:00:00'),
(6, 'Soluta qui ut tempore est expedita vero.', 'Consectetur quis ab sed minima dolorem. Dolorem dignissimos ea qui tenetur nisi.', 1, '2018-03-25 23:58:58', '2018-03-25 23:58:58'),
(7, 'Odio tenetur dolore aut delectus sint qui consequatur.', 'Similique deleniti quo error ratione eligendi molestias provident. Ipsam beatae iure est quia.', 56, '2018-03-25 23:59:43', '2018-03-25 23:59:43'),
(8, 'Placeat sed fugiat sapiente rerum.', 'Quis nesciunt velit animi eligendi aliquam. Vel temporibus sint quaerat omnis quisquam omnis possimus. Id quod ullam perferendis omnis deleniti omnis nemo. Labore cumque sit impedit in sit qui qui fugiat.', 57, '2018-03-26 00:00:15', '2018-03-26 00:00:15'),
(9, 'My First post person5', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique officia itaque dignissimos cum, debitis provident laudantium omnis nisi accusantium ducimus. Repellendus, enim sapiente eligendi, consectetur quibusdam soluta alias deleniti ut doloribus ex accusantium, quidem rerum aperiam amet? Possimus atque incidunt molestiae nesciunt exercitationem nobis, non corporis, laudantium laboriosam itaque quam soluta deleniti beatae corrupti, ab fugit voluptates numquam culpa. Voluptatum assumenda, facilis dignissimos fugit nulla molestiae repellat, tempora velit saepe officiis sed nemo? Tempore hic laudantium iure cum, labore accusamus!', 67, '2018-03-26 03:30:16', '2018-03-26 03:30:16'),
(10, 'My second post person5', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique officia itaque dignissimos cum, debitis provident laudantium omnis nisi accusantium ducimus. Repellendus, enim sapiente eligendi, consectetur quibusdam soluta alias deleniti ut doloribus ex accusantium, quidem rerum aperiam amet? Possimus atque incidunt molestiae nesciunt exercitationem nobis, non corporis, laudantium laboriosam itaque quam soluta deleniti beatae corrupti, ab fugit voluptates numquam culpa. Voluptatum assumenda, facilis dignissimos fugit nulla molestiae repellat, tempora velit saepe officiis sed nemo? Tempore hic laudantium iure cum, labore accusamus!', 67, '2018-03-26 03:30:56', '2018-03-26 03:30:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `post_tag`
--

INSERT INTO `post_tag` (`post_id`, `tag_id`) VALUES
(1, 1),
(1, 2),
(2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'personal', '2018-03-24 06:00:00', '2018-03-24 06:00:00'),
(2, 'php', '2018-03-17 06:00:00', '2018-03-18 06:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John Doe2', 'john.doe@correo.net', '$2y$10$kaUiqf5WzvoWM/ijBKYxOeXQGnAjT1YVPOxmVbF2gWz7bAl4oSOlG', '6m0NZPdhBiBaZowGe1O4bKmNmv2WfxZTxg9obRWD6S0tLwjFKfhGlF3KDQW5', '2018-03-25 13:16:01', '2018-03-25 13:16:01'),
(2, 'asdf', 'asdf@djw.oe', '$2y$10$MRdhlcMVnSEPO79PaiaW5u2MOouqVEQXKM3rJHk6mgH6gdj7NroNK', NULL, '2018-03-25 13:24:07', '2018-03-25 13:24:07'),
(3, 'Miguel Figaredo', 'mfigaredo@gmail.com', '$2y$10$fV.uxi6eBUZpe1sIN6/6mObkq1wA6iSus/lKMunm8jHlpnl0nyGTO', 'w12tzgnmmraMSiSsXvRd9z0xj70Dx8PKAHdTIG4N5CxDxDBd4zO6kxf8EkUn', '2018-03-25 13:26:35', '2018-03-25 13:26:35'),
(4, 'Jeffrey Way', 'jeffway@hismail.com', '$2y$10$Kd99IeDUHH9MrX.iMWmAEe051i2vB7TUHEsmLmyfnzBq58ASNy6p.', NULL, '2018-03-25 14:24:35', '2018-03-25 14:24:35'),
(5, 'Keyshawn Pouros DVM', 'littel.tianna@example.org', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', '9Gh97qqDKP', '2018-03-25 23:53:48', '2018-03-25 23:53:48'),
(6, 'Prof. Janessa Morissette IV', 'dwiegand@example.com', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'B6pyfXvZuO', '2018-03-25 23:54:12', '2018-03-25 23:54:12'),
(7, 'Arnoldo Padberg', 'olittle@example.com', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'UrrjBmqaRK', '2018-03-25 23:54:12', '2018-03-25 23:54:12'),
(8, 'Cortney Marvin', 'gcollier@example.com', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'qyb9rqgsnq', '2018-03-25 23:54:12', '2018-03-25 23:54:12'),
(9, 'Aidan Nitzsche PhD', 'weber.jerod@example.org', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'I2xbkqjJF3', '2018-03-25 23:54:12', '2018-03-25 23:54:12'),
(10, 'Simone Goyette', 'edison.kreiger@example.org', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', '5s5WiG2m7R', '2018-03-25 23:54:12', '2018-03-25 23:54:12'),
(11, 'Dr. Rhoda Jenkins DVM', 'claudia.becker@example.org', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', '2eNeajQAfX', '2018-03-25 23:54:12', '2018-03-25 23:54:12'),
(12, 'Dock Lesch PhD', 'ewelch@example.org', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'ytmCW29cJs', '2018-03-25 23:54:12', '2018-03-25 23:54:12'),
(13, 'Elise Bode', 'vivianne53@example.org', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'Xl3VeiaTIO', '2018-03-25 23:54:12', '2018-03-25 23:54:12'),
(14, 'Mr. Lennie Breitenberg MD', 'ignatius61@example.net', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'F8iah450je', '2018-03-25 23:54:12', '2018-03-25 23:54:12'),
(15, 'Dr. Frank Shanahan I', 'rodrigo.considine@example.org', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'X3zEXYcelu', '2018-03-25 23:54:12', '2018-03-25 23:54:12'),
(16, 'Mr. Christophe Hermiston', 'tschumm@example.net', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'hjgihTmVgrTbRvTPlDI0aIZNj5pUlRHcFUcReLbkbPMJKRpsUv47JmtWVqlj', '2018-03-25 23:54:12', '2018-03-25 23:54:12'),
(17, 'Laury Ward Sr.', 'alisha.wiegand@example.org', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'eUu602119q', '2018-03-25 23:54:12', '2018-03-25 23:54:12'),
(18, 'Aracely Watsica PhD', 'smith.christelle@example.org', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'WQAtlYVHqa', '2018-03-25 23:54:12', '2018-03-25 23:54:12'),
(19, 'Dr. Owen Kilback', 'spinka.otilia@example.com', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'Mv9wMpzhrU', '2018-03-25 23:54:12', '2018-03-25 23:54:12'),
(20, 'Ms. Norene Conn III', 'murl89@example.net', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'iJKqT6g1KI', '2018-03-25 23:54:12', '2018-03-25 23:54:12'),
(21, 'Margret Krajcik', 'xgusikowski@example.org', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'BqFwsfC2Wc', '2018-03-25 23:54:12', '2018-03-25 23:54:12'),
(22, 'Dr. Xzavier Keeling I', 'harley22@example.net', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', '6zsjQGVM5p', '2018-03-25 23:54:12', '2018-03-25 23:54:12'),
(23, 'Roselyn Cummerata DVM', 'milford19@example.net', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'vOuzzOn8eM', '2018-03-25 23:54:12', '2018-03-25 23:54:12'),
(24, 'Mikayla O\'Connell', 'samson72@example.org', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'HBwMbG1Aum', '2018-03-25 23:54:12', '2018-03-25 23:54:12'),
(25, 'Wilfrid Donnelly', 'ilynch@example.org', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', '7uKRk06TcV', '2018-03-25 23:54:12', '2018-03-25 23:54:12'),
(26, 'Mr. Reginald Smitham', 'mavis.jacobi@example.com', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'Hr9z9LiGq1', '2018-03-25 23:54:12', '2018-03-25 23:54:12'),
(27, 'Harmony Veum', 'amiya.keebler@example.net', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'UFYV0VwGIM', '2018-03-25 23:54:12', '2018-03-25 23:54:12'),
(28, 'Edgardo Hane', 'okon.karine@example.com', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'gDLlrTwoRG', '2018-03-25 23:54:12', '2018-03-25 23:54:12'),
(29, 'Dr. Alvis Hoppe', 'trisha.maggio@example.org', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'jKLLCQOMQw', '2018-03-25 23:54:12', '2018-03-25 23:54:12'),
(30, 'Marguerite Veum', 'bcarter@example.com', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', '5IMxloV4XK', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(31, 'Aubree Rolfson Sr.', 'sydni97@example.net', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'Nf7X0QsNX0', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(32, 'Ms. Astrid Fay', 'wkoss@example.org', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', '83WdpuEvOm', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(33, 'Meredith Kessler PhD', 'sdenesik@example.org', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'fcgpWW0kDW', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(34, 'Willow Barton Jr.', 'wjohns@example.net', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'NyE6V9gkUe', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(35, 'Collin Quitzon Jr.', 'langosh.zella@example.org', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'k1Id3TCw7T', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(36, 'Albertha Goldner', 'devonte56@example.com', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'mjtZDQC4GV', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(37, 'Weldon Borer V', 'terrill59@example.com', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'Uaeh1efAsV', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(38, 'Elouise Jast', 'pat43@example.net', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'DgeaEfWA8O', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(39, 'Ms. Stacy O\'Connell', 'yazmin63@example.net', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'Ia1QguWZZq', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(40, 'Marcellus Boyer', 'mskiles@example.com', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'Q4ShlBYFWV', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(41, 'Lionel Stamm', 'lvonrueden@example.net', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'dBWMJLRV0r', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(42, 'Frankie Russel', 'ejerde@example.com', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'a7wxu78g1e', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(43, 'Ms. Linnea Bogan III', 'leffler.jonathan@example.com', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'T3gJz9TfHn', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(44, 'Jaylon Hamill', 'opal08@example.com', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', '6HO4bFOrrE', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(45, 'Felicita Ledner', 'ihermiston@example.com', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'TT8gsLyoFG', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(46, 'Finn Grimes', 'dora92@example.org', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'jzkcmcJ7Li', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(47, 'Mr. Louvenia Block', 'gabe.boyle@example.net', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'zKcqwBdB3r', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(48, 'Gage Dooley', 'bernhard.oscar@example.net', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'SqtlbYd7Aj', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(49, 'Dr. Rogers Cartwright Jr.', 'keeling.violette@example.net', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'CuRmljWAu0', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(50, 'Mr. Derek Torp', 'lowe.allen@example.org', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'DGcA12Ep1d', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(51, 'Domenica Larkin', 'koss.jordi@example.net', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'hDbOPWlQsA', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(52, 'Erwin Renner', 'vern74@example.org', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'T4wBfCBYkF', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(53, 'Prof. Cordell Barrows MD', 'alec.schmeler@example.net', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', '46zzDdasTo', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(54, 'Obie Reynolds Jr.', 'zboncak.noel@example.org', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', 'kN6dXTcyOr', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(55, 'Edmund King', 'hilll.zoie@example.net', '$2y$10$3JUWbocdN51vq5S7aCcxsO94Rk.HJYPF8z9blcq3/9hP0vwrB4pYu', '6OMKGnKdx5', '2018-03-25 23:54:13', '2018-03-25 23:54:13'),
(56, 'Madalyn D\'Amore V', 'zwill@example.com', '$2y$10$dFlPkc0Myf5ScjVo2mbmA.V5MVfJA8uLzX/PRs2jjfOePiDZSByB2', '0Oo0Km02QO', '2018-03-25 23:59:43', '2018-03-25 23:59:43'),
(57, 'Mr. Hunter Grimes V', 'connelly.irma@example.net', '$2y$10$dFlPkc0Myf5ScjVo2mbmA.V5MVfJA8uLzX/PRs2jjfOePiDZSByB2', 'SWJ68BDjgC', '2018-03-26 00:00:15', '2018-03-26 00:00:15'),
(58, 'Miguel Figaredo H', 'mfigaredo@yahoo.com', '$2y$10$b0OGDT2sY6SQGKJQ5nixtu0EfRHmKsBSnBqW07HNJPkSI9bkDKBt.', 'jBT28vV2C8pyzK7x6wRfBlTqgLDAjE4W0PsBlLI7t4d4OiG5hMd6gQSGS88z', '2018-03-26 01:26:59', '2018-03-26 01:26:59'),
(59, 'John Perez', 'jperez@someweirdmail.com', '$2y$10$Ma.tT/twPjlKxWPLVKVV1uRKlkhslFjEafXB0n.vODVu76MAHnzP6', 'ef2jJOMg1j6mUii8D5R9SQJuQamjWCmPBSdKWVUK4WHxxROVaRpzHE4HtBIh', '2018-03-26 01:52:33', '2018-03-26 01:52:33'),
(60, 'John Perez', 'jperez@anotherweirdmail.com', '$2y$10$yVANUVtzUA5zT6Q320yoYOQXA75.hVt69KrGXSrGL58tXmZk6B/kG', 'mHJTymY3kCRkzrqsGUJ9PBdwQNgcftvUwwKU8so8xn1WkRo0hvlFPMZyn2MB', '2018-03-26 01:56:52', '2018-03-26 01:56:52'),
(61, 'Person', 'person@somewhere.org', 'secret', '0pXkqGzWjBnCrrBwZSz7tW4oGezwkNEUP2FehH1e2lLXWVoXmMpmvsMibLpP', '2018-03-26 03:03:13', '2018-03-26 03:03:13'),
(62, 'Person2', 'person2@somewhere.org2', 'mf248519', 'lUh4iGtYUhlQORDG78rqCuWC4kcDCfJ4Q0nPkiusrrqQY04iBz6BGRR6mjQ5', '2018-03-26 03:04:48', '2018-03-26 03:04:48'),
(65, 'Person3', 'person3@somewhere.org2', 'secret', '4FPshWYdmfofiPxZj60BRAI6MQouym9DDNRJzXxqkISb2bvgvvmZOXOXFcO6', '2018-03-26 03:08:39', '2018-03-26 03:08:39'),
(66, 'Person4', 'person4@somewhere.org2', 'secret', 'oqVJwhuV715H40gRkrst2pRSGnNk0voOq4oT7AQEmCjNSYrtQHS9uZktpwJB', '2018-03-26 03:14:55', '2018-03-26 03:14:55'),
(67, 'Person5', 'person5@somewhere.org2', 'mf248519', NULL, '2018-03-26 03:21:16', '2018-03-26 03:21:16');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`post_id`,`tag_id`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

--
-- Indices de la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
