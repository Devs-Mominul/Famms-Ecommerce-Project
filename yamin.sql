-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2023 at 06:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yamin`
--

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `name`, `email`, `phone`, `address`, `product_title`, `price`, `quantity`, `image`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Wade Gillespie', 'cygedy@mailinator.com', '+1 (161) 189-1791', 'Laboris dignissimos', 'Shirt', '85', '1', '1699810369.jpg', '1', '1', '2023-11-13 01:38:38', '2023-11-13 01:38:38'),
(2, 'Wade Gillespie', 'cygedy@mailinator.com', '+1 (161) 189-1791', 'Laboris dignissimos', 'Toys', '250', '1', '1699810677.jpg', '6', '1', '2023-11-13 01:38:45', '2023-11-13 01:38:45'),
(3, 'Wade Gillespie', 'cygedy@mailinator.com', '+1 (161) 189-1791', 'Laboris dignissimos', 'Necklase', '250', '1', '1699810490.jpg', '3', '1', '2023-11-13 01:39:00', '2023-11-13 01:39:00'),
(4, 'Wade Gillespie', 'cygedy@mailinator.com', '+1 (161) 189-1791', 'Laboris dignissimos', 'Lahenga', '150', '1', '1699810419.webp', '2', '1', '2023-11-13 01:39:04', '2023-11-13 01:39:04'),
(5, 'Quon Garrison', 'ralifete@mailinator.com', '+1 (298) 571-3327', 'Illo ea sunt volupt', 'Lahenga', '150', '1', '1699810419.webp', '2', '2', '2023-11-13 05:09:41', '2023-11-13 05:09:41');

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `catagory_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catagories`
--

INSERT INTO `catagories` (`id`, `catagory_name`, `created_at`, `updated_at`) VALUES
(1, 'Shirt', NULL, NULL),
(2, 'Lahenga', NULL, NULL),
(3, 'Necklase', NULL, NULL),
(4, 'laptop', NULL, NULL),
(5, 'Mobile', NULL, NULL),
(6, 'Toys', NULL, NULL);

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
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_31_032757_create_uploads_table', 1),
(6, '2023_10_31_034201_create_media_table', 1),
(7, '2023_11_02_012623_create_catagories_table', 1),
(8, '2023_11_07_155239_create_products_table', 1),
(9, '2023_11_10_025501_create_subcribes_table', 1),
(10, '2023_11_10_031558_create_news_letters_table', 1),
(11, '2023_11_11_050041_create_cards_table', 1),
(12, '2023_11_12_050606_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_letters`
--

CREATE TABLE `news_letters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `newsletter` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `user_id`, `product_title`, `quantity`, `price`, `image`, `product_id`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(1, 'Brenden Shelton', 'biqusi@mailinator.com', '+1 (251) 479-8275', 'Delectus nisi aut m', '3', 'Lahenga', '1', '560', '1699841901.webp', '7', 'cash on delivery', 'delivered', '2023-11-13 11:53:11', '2023-11-14 01:10:23'),
(2, 'Brenden Shelton', 'biqusi@mailinator.com', '+1 (251) 479-8275', 'Delectus nisi aut m', '3', 'Necklase', '1', '250', '1699810490.jpg', '3', 'cash on delivery', 'processing', '2023-11-13 11:53:11', '2023-11-13 11:53:11'),
(3, 'Brenden Shelton', 'biqusi@mailinator.com', '+1 (251) 479-8275', 'Delectus nisi aut m', '3', 'Toys', '1', '250', '1699810677.jpg', '6', 'cash on delivery', 'processing', '2023-11-13 11:53:11', '2023-11-13 11:53:11'),
(4, 'Brenden Shelton', 'biqusi@mailinator.com', '+1 (251) 479-8275', 'Delectus nisi aut m', '3', 'Toys', '1', '250', '1699810677.jpg', '6', 'Paid', 'processing', '2023-11-13 11:54:43', '2023-11-13 11:54:43'),
(5, 'Brenden Shelton', 'biqusi@mailinator.com', '+1 (251) 479-8275', 'Delectus nisi aut m', '3', 'Laptop', '1', '4000', '1699810586.jpg', '4', 'Paid', 'delivered', '2023-11-13 11:54:43', '2023-11-14 01:08:56'),
(6, 'Brenden Shelton', 'biqusi@mailinator.com', '+1 (251) 479-8275', 'Delectus nisi aut m', '3', 'Mobile', '1', '350', '1699810639.jpg', '5', 'cash on delivery', 'processing', '2023-11-13 11:56:05', '2023-11-13 11:56:05'),
(7, 'Brenden Shelton', 'biqusi@mailinator.com', '+1 (251) 479-8275', 'Delectus nisi aut m', '3', 'Toys', '1', '250', '1699810677.jpg', '6', 'Paid', 'delivered', '2023-11-13 12:06:07', '2023-11-14 01:01:28'),
(8, 'Brendan Harmon', 'sagu@mailinator.com', '+1 (815) 934-5262', 'Voluptatum qui quibu', '6', 'Lahenga', '1', '150', '1699810419.webp', '2', 'Paid', 'processing', '2023-11-14 12:43:25', '2023-11-14 12:43:25');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `catagory` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `discount_price` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `catagory`, `quantity`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(1, 'Shirt', '<p>good shirt</p>', '1699810369.jpg', 'Shirt', '100', '85', '10', '2023-11-13 01:32:49', '2023-11-13 01:32:49'),
(2, 'Lahenga', '<p>good Lahenga</p>', '1699810419.webp', 'Lahenga', '100', '150', '10', '2023-11-13 01:33:39', '2023-11-13 01:33:39'),
(3, 'Necklase', '<p>best necklase</p>', '1699810490.jpg', 'Necklase', '100', '250', '24', '2023-11-13 01:34:50', '2023-11-13 01:34:50'),
(4, 'Laptop', '<p>good laptop</p>', '1699810586.jpg', 'laptop', '100', '4000', '10', '2023-11-13 01:36:26', '2023-11-13 01:36:26'),
(5, 'Mobile', '<p>good mobile</p>', '1699810639.jpg', 'Mobile', '100', '350', '10', '2023-11-13 01:37:20', '2023-11-13 01:37:20'),
(6, 'Toys', '<p>good toys</p>', '1699810677.jpg', 'Toys', '100', '250', '10', '2023-11-13 01:37:57', '2023-11-13 01:37:57'),
(7, 'Lahenga', '<p>good lahenga</p>', '1699841901.webp', 'Lahenga', '100', '560', '10', '2023-11-13 10:18:21', '2023-11-13 10:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `subcribes`
--

CREATE TABLE `subcribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscribe` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `folder` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Wade Gillespie', 'cygedy@mailinator.com', '13', '+1 (161) 189-1791', 'Laboris dignissimos', NULL, '$2y$10$YaSqMm2biZ3/aoiyUiqdyOm03owypuRZOmPFqHkn/5Lxd5EsGpbtC', NULL, '2023-11-13 01:24:25', '2023-11-13 01:24:25'),
(2, 'Quon Garrison', 'ralifete@mailinator.com', '27', '+1 (298) 571-3327', 'Illo ea sunt volupt', NULL, '$2y$10$Qf9ljRcA2GNnZ3fC1eqyk.ISEcOuMX35Kg/RcyW8KEdhDo2YW6BHO', NULL, '2023-11-13 05:09:07', '2023-11-13 05:09:07'),
(3, 'Brenden Shelton', 'biqusi@mailinator.com', '70', '+1 (251) 479-8275', 'Delectus nisi aut m', NULL, '$2y$10$2i.7H2IOC6pKjYz3d6.zs.nqMl2G0YF1xSF2OvHfpLuottfeO85Qy', NULL, '2023-11-13 10:17:38', '2023-11-13 10:17:38'),
(4, 'Kim Gross', 'ryzekyq@mailinator.com', '53', '+1 (657) 683-7214', 'Ut quisquam debitis', NULL, '$2y$10$cD4MqKfN7eQnRQie.LEcQeLD83L4mO3Nt2lnz7sLCASVxiZCn6Qwq', NULL, '2023-11-14 00:14:50', '2023-11-14 00:14:50'),
(5, 'Sierra Macdonald', 'fydisone@mailinator.com', '92', '+1 (878) 109-1191', 'Rerum voluptate volu', NULL, '$2y$10$6V1387ZeERR2l0qDqq/tK.spi9AM0A2wjZqVftUpBnW6.nEp0KPR6', NULL, '2023-11-14 04:17:01', '2023-11-14 04:17:01'),
(6, 'Brendan Harmon', 'sagu@mailinator.com', '34', '+1 (815) 934-5262', 'Voluptatum qui quibu', NULL, '$2y$10$0jrANwx351iOFcaZQNaLEO8BeiA5nbDOxEOe6z19pi.XL/x74/55q', NULL, '2023-11-14 12:39:56', '2023-11-14 12:39:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagories`
--
ALTER TABLE `catagories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_letters`
--
ALTER TABLE `news_letters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_letters_newsletter_unique` (`newsletter`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcribes`
--
ALTER TABLE `subcribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
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
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `news_letters`
--
ALTER TABLE `news_letters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subcribes`
--
ALTER TABLE `subcribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
