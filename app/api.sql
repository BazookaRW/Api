-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 01 Nis 2024, 16:47:34
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `api`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `applications`
--

CREATE TABLE `applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_name` varchar(255) NOT NULL,
  `end_point` varchar(255) NOT NULL,
  `platform` enum('iOS','Android') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `applications`
--

INSERT INTO `applications` (`id`, `app_name`, `end_point`, `platform`, `created_at`, `updated_at`) VALUES
(1, 'Muller, Dicki and Green', 'http://www.reichel.biz/laboriosam-necessitatibus-maiores-odio-nemo-est', 'Android', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(2, 'Nader and Sons', 'https://www.gorczany.info/at-doloremque-beatae-incidunt-est-in-non-omnis', 'Android', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(3, 'Huel, Wisozk and Fay', 'http://www.runolfsdottir.com/omnis-amet-vel-voluptas-explicabo-nihil', 'Android', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(4, 'Harvey, Bednar and Maggio', 'http://dooley.com/aliquam-temporibus-laboriosam-voluptatem-tenetur-vitae-eveniet-ut', 'Android', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(5, 'Goodwin-O\'Kon', 'http://www.barton.org/atque-in-nisi-deleniti-dolore', 'iOS', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(6, 'DuBuque LLC', 'http://rau.com/odit-qui-dolorum-repellat-quisquam-praesentium-qui', 'Android', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(7, 'Baumbach, Littel and Adams', 'http://douglas.com/', 'iOS', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(8, 'Johnson and Sons', 'http://lueilwitz.biz/voluptas-asperiores-commodi-cum-nisi-provident', 'iOS', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(9, 'Kreiger, Romaguera and Stamm', 'https://www.johns.com/vero-at-rerum-et-culpa-repudiandae-architecto', 'iOS', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(10, 'Reynolds, Macejkovic and Kessler', 'http://hayes.com/', 'iOS', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(11, 'Beier and Sons', 'http://kunze.biz/minima-nisi-nemo-quia', 'Android', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(12, 'Jenkins LLC', 'http://www.hill.com/doloremque-aut-et-odit-eum', 'Android', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(13, 'Mayert Ltd', 'https://www.pagac.com/perspiciatis-eos-inventore-quia-harum-qui', 'Android', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(14, 'Yundt, Hermiston and Welch', 'http://gerlach.org/', 'iOS', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(15, 'Bartoletti, Effertz and Terry', 'https://www.wiza.com/possimus-autem-est-commodi-quis-vitae-voluptatibus', 'iOS', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(16, 'Powlowski LLC', 'http://www.jones.biz/quae-suscipit-eligendi-sed-impedit-id-quia-sed', 'Android', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(17, 'Corwin PLC', 'http://www.kub.net/voluptatem-qui-totam-earum-rerum-dolorem-blanditiis-aut.html', 'iOS', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(18, 'Schoen, Witting and Schoen', 'http://okeefe.com/', 'Android', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(19, 'Hayes-Kertzmann', 'http://www.ferry.com/et-est-nobis-et-dolorem-excepturi-consequuntur', 'Android', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(20, 'Nienow Inc', 'https://abbott.com/debitis-necessitatibus-voluptatem-rerum-nisi-culpa-laboriosam-in-quia.html', 'iOS', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(21, 'Wolf Group', 'http://www.hartmann.biz/nihil-enim-sit-perferendis-nihil.html', 'Android', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(22, 'Rice-Berge', 'http://powlowski.com/dicta-fugiat-numquam-officiis-sapiente-veritatis-qui', 'iOS', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(23, 'Streich, Mitchell and Douglas', 'https://wilderman.com/magnam-tempora-et-ducimus-suscipit.html', 'iOS', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(24, 'Mills-Dooley', 'http://www.murazik.com/ipsam-debitis-quidem-occaecati-necessitatibus', 'iOS', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(25, 'Tillman-Marquardt', 'http://corkery.info/facilis-expedita-corporis-unde-magnam.html', 'iOS', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(26, 'Lemke, Oberbrunner and Bashirian', 'http://www.nolan.net/', 'iOS', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(27, 'Ruecker, Jenkins and Johns', 'https://kirlin.com/sit-quis-molestiae-alias-sapiente.html', 'iOS', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(28, 'Kilback, Terry and Schuster', 'http://www.pollich.com/', 'iOS', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(29, 'Ernser, Fahey and Toy', 'http://beatty.com/totam-odio-voluptatem-quia-corrupti-cum.html', 'iOS', '2024-04-01 02:57:04', '2024-04-01 02:57:04'),
(30, 'Hahn, McKenzie and Schiller', 'http://www.murray.com/omnis-omnis-deleniti-odio-aliquid-voluptatibus-omnis-porro.html', 'iOS', '2024-04-01 02:57:04', '2024-04-01 02:57:04');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `devices`
--

CREATE TABLE `devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(255) NOT NULL,
  `client_token` varchar(255) NOT NULL,
  `appId` varchar(255) NOT NULL,
  `lang` varchar(255) NOT NULL,
  `os` enum('iOS','Android') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `devices`
--

INSERT INTO `devices` (`id`, `uid`, `client_token`, `appId`, `lang`, `os`, `created_at`, `updated_at`) VALUES
(1, 'cfbd5f6f-3f7c-4a8e-bb15-2be307e92f984', '52a18d6c926d60bd59bd7f14694af42b', '2', 'TR', 'Android', '2024-04-01 11:12:55', '2024-04-01 11:13:40');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
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
-- Tablo için tablo yapısı `jobs`
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
-- Tablo için tablo yapısı `job_batches`
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
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_03_30_084154_create_personal_access_tokens_table', 2),
(5, '2024_03_30_100126_create_purchases', 8),
(6, '2024_03_30_114523_create_subscriptions', 11),
(7, '2024_03_30_085024_create_devices', 12),
(8, '2024_03_30_142401_create_applications', 13);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
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

--
-- Tablo döküm verisi `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Devices', 1, 'Android', '147bb788896b81df8984717a07f69c472f1d3f998f02cee2a1145f22ac9bbe94', '[\"*\"]', '2024-04-01 11:18:01', '2024-04-08 11:12:55', '2024-04-01 11:12:55', '2024-04-01 11:18:01');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `device_id` varchar(255) NOT NULL,
  `app_id` int(11) NOT NULL,
  `verification_status` tinyint(4) NOT NULL,
  `receipt` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `purchases`
--

INSERT INTO `purchases` (`id`, `device_id`, `app_id`, `verification_status`, `receipt`, `created_at`, `updated_at`) VALUES
(1, 'cfbd5f6f-3f7c-4a8e-bb15-2be307e92f984', 2, 0, 'a9dfc79b8', '2024-04-01 11:15:20', '2024-04-01 11:15:20'),
(2, 'cfbd5f6f-3f7c-4a8e-bb15-2be307e92f984', 2, 1, 'a9dfc79b1', '2024-04-01 11:15:44', '2024-04-01 11:15:44');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sessions`
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
-- Tablo döküm verisi `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('A4na2lViE6pPbYD3JdEdF2Du6UWv4hoXstpfp3Qn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS1RIbWhSMU1QM2ZpTU8wQ3ZwaTVqQllHRjF3OWVlSG9OMGJzamRKcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1711954697),
('JoxKxEL2Mo0R99XjwXPCMYS4kmJ7kL143VrUkOg2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDRsYWt2OUxoUWdqNGdhcXJhaFlFY25WZ3E4blpQUDFVb3NjbndpZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1711819587),
('VjWZNtUzhEveZOHWw7cxUbCjaUcao2FI3q1ZGYO1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVh5eTk3T3UwUVNCdWhVQ3RHRUNidTVmWnY3MGVqTFlQM3RzWGIyQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1711891154),
('xWaZskodmNKBoJCW2nhUTZl6zrSKdHWD2653HczU', NULL, '127.0.0.1', 'PostmanRuntime/7.37.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRUpPQmZ3OGEyTUxCdmF1M1d0V1lZNnVvbzNDN01OM2xUY1RHSnBZOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1711789195),
('z8l9xxSop0aQQbVq9KREHq5VLXADKyGqR26WjRYK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicVNTV21GM29XRzZVTHJjNEF5VFV0ZTc3RUluSm41VGFpemV4YkFPNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1711788536),
('ziAVfe7LY9hpchloZNM4OmQocXE0A3GL7yfgWt2r', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNDR4QWFpb1JLWkpza3dlajFQaE1hVkhrVUVBQmZudHBmY2tlRmJmOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1711869688);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `device_id` varchar(255) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `expire_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `device_id`, `purchase_id`, `app_id`, `status`, `expire_date`, `created_at`, `updated_at`) VALUES
(1, 'cfbd5f6f-3f7c-4a8e-bb15-2be307e92f984', 2, 2, 'started', '2024-05-01 14:15:44', '2024-04-01 11:15:44', '2024-04-01 11:15:44');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
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
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applications_id_index` (`id`),
  ADD KEY `applications_platform_index` (`platform`);

--
-- Tablo için indeksler `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Tablo için indeksler `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Tablo için indeksler `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Tablo için indeksler `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Tablo için indeksler `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `applications`
--
ALTER TABLE `applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `devices`
--
ALTER TABLE `devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
