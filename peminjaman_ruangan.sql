-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 02, 2025 at 07:15 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peminjaman_ruangan`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gedungs`
--

CREATE TABLE `gedungs` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_gedung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gedungs`
--

INSERT INTO `gedungs` (`id`, `nama_gedung`, `lokasi`, `created_at`, `updated_at`) VALUES
(1, 'Gedung B', '408 Elbert Road\nLockmanshire, SC 99404-5652', '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(2, 'Gedung B', '7002 Senger Mews\nMoenhaven, RI 61974-5972', '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(3, 'Gedung C', '4495 Nicolas Creek\nLake Rusty, VT 73404-9983', '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(4, 'gedung A', '355 Harvey Island Suite 592\nSouth Parker, NM 37894', '2025-04-29 14:27:35', '2025-04-29 14:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_ruangans`
--

CREATE TABLE `kategori_ruangans` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_ruangans`
--

INSERT INTO `kategori_ruangans` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Ruang Meeting', '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(2, 'Ruang Meeting', '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(3, 'Auditorium', '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(4, 'Laboratorium', '2025-04-29 14:27:35', '2025-04-29 14:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_04_29_134646_create_personal_access_tokens_table', 1),
(5, '2025_04_29_135029_create_gedungs_table', 1),
(6, '2025_04_29_135236_create_kategori_ruangans_table', 1),
(7, '2025_04_29_135245_create_ruangans_table', 1),
(8, '2025_04_29_135251_create_peminjamans_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peminjamans`
--

CREATE TABLE `peminjamans` (
  `id` bigint UNSIGNED NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `status` enum('Diajukan','Diterima','Ditolak','Selesai') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Diajukan',
  `penanggung_jawab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruangan_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peminjamans`
--

INSERT INTO `peminjamans` (`id`, `deskripsi`, `tanggal_pinjam`, `jam_mulai`, `jam_selesai`, `status`, `penanggung_jawab`, `ruangan_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Labore aut beatae aut deserunt dignissimos est. Reprehenderit quis consequatur sint nihil quo. Repellendus quis perferendis voluptatum numquam voluptas nemo corporis. Laboriosam dolore vitae id veritatis odio omnis et.', '2007-03-11', '03:11:47', '03:21:44', 'Ditolak', 'Therese Herzog', 8, 1, '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(2, 'Aut doloremque quas repudiandae voluptatem et voluptas omnis fuga. Tenetur blanditiis dolore labore dignissimos dolor voluptates. Non placeat temporibus labore blanditiis consequuntur adipisci. Beatae id ab quod corrupti.', '2005-10-30', '07:33:58', '11:19:26', 'Ditolak', 'Virginie Botsford Sr.', 2, 4, '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(3, 'Hic temporibus iste qui enim at quae minima. Reiciendis tenetur quaerat expedita autem distinctio. Et inventore fugiat corporis sunt. Exercitationem magnam sit iste atque voluptatem doloremque.', '2006-01-13', '09:01:59', '03:04:59', 'Ditolak', 'Mr. Otho Haley', 6, 4, '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(4, 'Reiciendis est ipsam vel. Aut eius illo aut architecto natus facilis sit. In deserunt dolor quia ab qui sint eos. Quae praesentium dolor velit sunt dolores modi.', '2004-11-18', '16:45:26', '09:54:23', 'Diajukan', 'Jermaine Koss', 10, 2, '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(5, 'Aut nobis enim ut dolore ad autem perferendis cupiditate. Odio voluptatum rem officia sit quod inventore laborum. Est voluptate dicta voluptas iste qui consequatur voluptatem omnis.', '1970-03-29', '04:55:46', '04:12:51', 'Diajukan', 'Melany Jast', 7, 1, '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(6, 'Harum natus in illum vitae illum. Aut corrupti deserunt at ad blanditiis. Similique vel harum et totam voluptatem. Asperiores dignissimos nulla tenetur dolore.', '2020-04-02', '10:31:08', '19:23:58', 'Diajukan', 'Mason Veum', 8, 1, '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(7, 'Maxime dignissimos magni modi voluptatem omnis veniam. Et consequatur vitae aut ut ipsa vel. Autem sunt commodi neque et accusantium.', '1987-07-08', '18:43:15', '05:48:13', 'Ditolak', 'Prof. Chaz Skiles III', 4, 2, '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(8, 'Animi quia et dicta et consequatur et sequi et. Debitis consequuntur laudantium nesciunt saepe odio ad tempora. Soluta consequatur ea dicta et rerum pariatur illum ut. Omnis nisi velit culpa voluptatem accusamus sed doloremque aut.', '1972-01-01', '12:10:28', '07:31:02', 'Diterima', 'Carlo Schaden', 10, 4, '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(9, 'Saepe sed facilis nostrum iure fugiat omnis. Aperiam doloremque natus aspernatur delectus. Voluptas nesciunt aspernatur ullam dolores. Perspiciatis est rerum et quis.', '1972-07-25', '07:38:39', '08:22:41', 'Ditolak', 'Mohammed Jerde', 2, 4, '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(10, 'Magni velit ut soluta ipsam ut quisquam quia quaerat. Quos rerum assumenda vel ullam reiciendis et. Est deserunt earum et.', '1984-06-15', '01:57:49', '01:33:49', 'Ditolak', 'Hoyt Senger', 1, 5, '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(11, 'Voluptatem veritatis totam magnam debitis. Tempora voluptates ex qui magni totam dignissimos molestiae reiciendis. Aut est nobis illo commodi impedit quod repellendus ut.', '2020-10-09', '13:50:03', '23:57:28', 'Ditolak', 'Alessia Kiehn I', 2, 1, '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(14, 'buat acara organisasi', '2007-03-15', '05:22:00', '07:22:00', 'Diajukan', 'ajam', 3, 1, '2025-04-29 14:37:06', '2025-04-29 14:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ruangans`
--

CREATE TABLE `ruangans` (
  `id` bigint UNSIGNED NOT NULL,
  `kode_ruangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kapasitas` int NOT NULL,
  `lantai` int NOT NULL,
  `gedung_id` bigint UNSIGNED NOT NULL,
  `kategori_ruangan_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ruangans`
--

INSERT INTO `ruangans` (`id`, `kode_ruangan`, `kapasitas`, `lantai`, `gedung_id`, `kategori_ruangan_id`, `created_at`, `updated_at`) VALUES
(1, 'ut', 2109, 477, 3, 1, '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(2, 'laborum', 78, 328971198, 3, 2, '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(3, 'placeat', 44605184, 91, 1, 2, '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(4, 'voluptate', 1265648, 0, 2, 1, '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(6, 'tempora', 29916034, 2177, 4, 4, '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(7, 'sint', 218597551, 7986, 1, 4, '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(8, 'neque', 4724199, 5099, 2, 2, '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(10, 'asperiores', 4657973, 278, 2, 3, '2025-04-29 14:27:35', '2025-04-29 14:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(1, 'Ms. Theresa Leffler', 'zflatley@example.org', '2025-04-29 14:27:35', '$2y$12$g8BYr0AJPDQjgm46PkIcXev/2NVkMo245qASs5ny3gj4E7.6Ha7yS', 'ZaYaYwGSv0', '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(2, 'Alvah Pacocha', 'betsy.wyman@example.net', '2025-04-29 14:27:35', '$2y$12$g8BYr0AJPDQjgm46PkIcXev/2NVkMo245qASs5ny3gj4E7.6Ha7yS', 'eAL2fYALeL', '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(3, 'Calista Beier', 'coby57@example.org', '2025-04-29 14:27:35', '$2y$12$g8BYr0AJPDQjgm46PkIcXev/2NVkMo245qASs5ny3gj4E7.6Ha7yS', 'dowfvV4dhm', '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(4, 'Summer Satterfield', 'nestor.legros@example.net', '2025-04-29 14:27:35', '$2y$12$g8BYr0AJPDQjgm46PkIcXev/2NVkMo245qASs5ny3gj4E7.6Ha7yS', 'vUmRvye1wx', '2025-04-29 14:27:35', '2025-04-29 14:27:35'),
(5, 'Brennon Gleichner', 'breitenberg.dudley@example.com', '2025-04-29 14:27:35', '$2y$12$g8BYr0AJPDQjgm46PkIcXev/2NVkMo245qASs5ny3gj4E7.6Ha7yS', 'vZAu3b0sxa', '2025-04-29 14:27:35', '2025-04-29 14:27:35');

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gedungs`
--
ALTER TABLE `gedungs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `kategori_ruangans`
--
ALTER TABLE `kategori_ruangans`
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
-- Indexes for table `peminjamans`
--
ALTER TABLE `peminjamans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peminjamans_ruangan_id_foreign` (`ruangan_id`),
  ADD KEY `peminjamans_user_id_foreign` (`user_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `ruangans`
--
ALTER TABLE `ruangans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ruangans_kode_ruangan_unique` (`kode_ruangan`),
  ADD KEY `ruangans_gedung_id_foreign` (`gedung_id`),
  ADD KEY `ruangans_kategori_ruangan_id_foreign` (`kategori_ruangan_id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gedungs`
--
ALTER TABLE `gedungs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_ruangans`
--
ALTER TABLE `kategori_ruangans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `peminjamans`
--
ALTER TABLE `peminjamans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ruangans`
--
ALTER TABLE `ruangans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peminjamans`
--
ALTER TABLE `peminjamans`
  ADD CONSTRAINT `peminjamans_ruangan_id_foreign` FOREIGN KEY (`ruangan_id`) REFERENCES `ruangans` (`id`),
  ADD CONSTRAINT `peminjamans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ruangans`
--
ALTER TABLE `ruangans`
  ADD CONSTRAINT `ruangans_gedung_id_foreign` FOREIGN KEY (`gedung_id`) REFERENCES `gedungs` (`id`),
  ADD CONSTRAINT `ruangans_kategori_ruangan_id_foreign` FOREIGN KEY (`kategori_ruangan_id`) REFERENCES `kategori_ruangans` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
