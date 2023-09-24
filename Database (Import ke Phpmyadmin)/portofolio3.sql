-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Sep 2023 pada 06.42
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portofolio3`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2023_09_10_052402_create_sections_table', 1),
(13, '2023_09_10_070736_create_projects_table', 1),
(14, '2023_09_10_074706_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `link` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `projects`
--

INSERT INTO `projects` (`id`, `title`, `thumbnail`, `content`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Adobe Ps #1', 'KgH1kjuB8zK4c7eRiMBisHWuKTl94N-metaV2hhdHNBcHAgSW1hZ2UgMjAyMy0wOS0yMyBhdCAxOC41OS4yNyAoMSkuanBlZw==-.jpg', '<p>Perfectly</p>', '---', '2023-09-19 00:39:05', '2023-09-23 05:06:58'),
(2, 'Adobe Ps #2', 'XiEt2OwqSBRSfcgUiQLd6zBN0yLVNe-metaV2hhdHNBcHAgSW1hZ2UgMjAyMy0wOS0yMyBhdCAxOC41OS4yNy5qcGVn-.jpg', '<p>I was always right&nbsp;</p>', '---', '2023-09-19 00:42:48', '2023-09-23 05:06:34'),
(3, 'Figma #1', 'TVvdKLX6gWC5lwmLT8KTntTH4xLgYp-metaV2hhdHNBcHAgSW1hZ2UgMjAyMy0wOS0yMyBhdCAxOC41OS4yOCAoMSkuanBlZw==-.jpg', '<p>Goxy</p>', '---', '2023-09-19 01:13:09', '2023-09-23 05:20:59'),
(4, 'Figma #2', 'G0o0M8iv5c2nj0LprJ9uH9yTxpLP9j-metaV2hhdHNBcHAgSW1hZ2UgMjAyMy0wOS0yMyBhdCAxOC41OS4yOC5qcGVn-.jpg', '<p>Caffeine</p>', '---', '2023-09-19 12:31:39', '2023-09-23 05:22:01'),
(5, 'Adobe Xd #1', 'sKOmmNhQpmiLfI9a7P2YZtqfn2X82j-metaV2hhdHNBcHAgSW1hZ2UgMjAyMy0wOS0yMyBhdCAxOC41OS4yOSAoMSkuanBlZw==-.jpg', '<p>Discover App</p>', '---', '2023-09-19 12:35:03', '2023-09-23 05:23:25'),
(6, 'Adobe Xd #2', 'FVy87UotYo5pnuAN3dK8piEkH0FpfY-metaV2hhdHNBcHAgSW1hZ2UgMjAyMy0wOS0yMyBhdCAxOC41OS4yOS5qcGVn-.jpg', '<p>Task Manager</p>', '---', '2023-09-23 01:51:18', '2023-09-23 05:24:44'),
(7, 'Adobe Ai #1', 'eIcRzbpt6ZUK7J5TJFQx5GAJD6YDwd-metaV2hhdHNBcHAgSW1hZ2UgMjAyMy0wOS0yMyBhdCAxOS4wMS4wMiAoMSkuanBlZw==-.jpg', '<p>Buggy Horse</p>', '---', '2023-09-23 05:26:48', '2023-09-23 05:26:48'),
(8, 'Adobe Ai #2', 'toghrXcLZPhK43cQEvXJJG2hMfMeiB-metaV2hhdHNBcHAgSW1hZ2UgMjAyMy0wOS0yMyBhdCAxOS4wMS4wMi5qcGVn-.jpg', '<p>Buggy Birds</p>', '---', '2023-09-23 05:28:11', '2023-09-23 05:28:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `post_as` enum('JUMBOTRON','ABOUT','SUBJUMBO') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sections`
--

INSERT INTO `sections` (`id`, `title`, `thumbnail`, `content`, `post_as`, `created_at`, `updated_at`) VALUES
(1, 'Surya Hadi Saputra', 'rPTzfhmhH9pA0ZQUN7eVRBW90zrSuw-metaZ2FsbGVyeS0zLmpwZw==-.jpg', '<p>&nbsp;a Intermediated UI/UX Designer from Bekasi Regency</p>', 'JUMBOTRON', '2023-09-19 00:06:32', '2023-09-19 00:06:32'),
(2, 'About Me!', 'X8jrQQYFz9xKkBlMHE3N4wB9kjhLv8-metaMTJXaGF0c0FwcCBJbWFnZSAyMDIzLTA5LTIyIGF0IDA5LjU5LjI2MjIuanBlZw==-.jpg', '<p>Halo!, Saya Surya Hadi Saputra, seorang Pelajar di SMK Negeri 2 Kota Bekasi yang memiliki hobi desain. Saya memiliki cita cita sebagai UI/UX Designer. Sejak dulu, saya telah memiliki minat yang besar dalam desain grafis dan desain User Interface/User Xperience. Passion ini juga yang memotivasi saya untuk mengambil langkah pertama dalam dunia pekerjaan. Saya sangat bersemangat untuk terus mengembangkan keterampilan dan pengetahuan saya di bidang UI/UX Design, dan berharap dapat memberikan kontribusi yang berarti untuk bidang ini di masa mendatang. Terima kasih!</p>', 'ABOUT', '2023-09-19 00:11:40', '2023-09-21 20:02:07'),
(3, 'Subjudul', 'giDX93wKtUsXCc40EFWdfbBrbLxIrQ-metaZ2FsbGVyeS03LmpwZw==-.jpg', '<p>Blanditiis praesentium aliquam illum tempore incidunt debitis dolorem magni est deserunt sed qui libero. Qui voluptas amet.</p>', 'SUBJUMBO', '2023-09-19 00:19:10', '2023-09-19 00:19:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `label`, `value`, `type`, `created_at`, `updated_at`) VALUES
(1, '_site_name', 'judul situs', 'PORTFOLIO', 'text', '2023-09-19 00:00:16', '2023-09-19 00:25:08'),
(2, '_location', 'Alamat', 'Setu, Kabupaten bekasi, Indonesia', 'text', '2023-09-19 00:00:16', '2023-09-19 00:00:16'),
(3, '_youtube', 'Youtube', 'https://www.youtube.com/channel/UCqdDoWm6lGUtZZ4FGbpfY3A', 'text', '2023-09-19 00:00:16', '2023-09-19 00:00:16'),
(4, '_instagram', 'Instagram', 'https://www.instagram.com/ohmyshadi1/', 'text', '2023-09-19 00:00:16', '2023-09-19 00:00:16'),
(5, '_twitter', 'Twitter', 'https://twitter.com/SuryaAd05101795', 'text', '2023-09-19 00:00:16', '2023-09-19 00:00:16'),
(6, '_facebook', 'Facebook', 'https://www.facebook.com/shadi1', 'text', '2023-09-19 00:00:16', '2023-09-19 00:00:16'),
(7, '_site_description', 'Site Description', 'Website sederhana, dengan admin filament dan framework laravel', 'text', '2023-09-19 00:00:16', '2023-09-19 00:00:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Surya', 'admin@gmail.com', NULL, '$2y$10$VAMZuvuM0yfWMBq6qLbGA.H7ASYM6nHTqKBiLrgVTl0MVuK6sz.EG', NULL, '2023-09-19 00:03:31', '2023-09-19 00:03:31');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
