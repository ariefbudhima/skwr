-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2018 at 04:03 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larastarter`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `nip` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `namalengkap` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nomorhp` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `unitkerja` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`nip`, `password`, `namalengkap`, `email`, `nomorhp`, `alamat`, `jabatan`, `unitkerja`, `created_at`, `updated_at`) VALUES
(12, '$2y$10$P1ZRNxAloU3KLSxckII2e.MzwsFa0fL59LHkCaTFgz3gbLJm.cB3u', 'Arief Budhiman', 'ariefmail@mail.com', '', '', 'Manager Pemasaran', 'Wika Realty', '2018-07-16 05:07:25', '2018-07-16 05:07:25'),
(111, '$2y$10$atlHDUX4HNseR6/qY8tO5eTGR98b0CzcEkltGX8BmLhtrCOuYt0WG', 'Arief B', 'ariefb@mail.com', '', '', 'Karyawan', 'Wika Realty', '2018-07-20 01:38:47', '2018-07-20 01:38:47'),
(134, '$2y$10$ALfX9UNSRK4fGYXA8yngVuEzfWFtCVSgCXXGc5Viwzv65MoAWu/yG', '134', 'arief134@mail.com', '', '', 'Karyawan', 'Biro', '2018-07-23 04:45:23', '2018-07-23 04:45:23'),
(5678, '$2y$10$L8mpEnEjRXeBy2sj3bpMl.8ryBgtKv33dsqpUDQVUtVAfhzzpQK.a', 'Kevin', 'Kevin@gmail.com', '085233334444', 'Jalan D.I Pandjaitan kav 2. Cawang, Jakarta Timur', 'Staf sistem informasi', 'Biro Sistem Manajemen', '2018-07-24 16:35:50', '2018-07-24 16:35:50'),
(6666, '$2y$10$.ZgRwSbqe8SN73lY4KqANeewqjili8uFO/XtaAejay6F.nuNOY2y2', 'adiman', 'adian1234@gmail.com', '08520139999', 'alamat palsu', 'Gm', 'wika', '2018-07-30 09:42:42', '2018-07-30 09:42:42'),
(13011, '$2y$10$.NzdMsMlcV3kD8YZHHnH2.7zOcrgq1bx.3qO.bXZRsGo8875wu5Ra', 'ini nama', 'a@gm', '', '', 'gm', 'gm', '2018-07-17 03:28:15', '2018-07-17 03:28:15'),
(54363, '$2y$10$DPCq/VqHFBTVvGuK3m6DrOMjk0c2oJ8xylWO2ldWCqDIvoeeI6Bzq', 'adhim', 'aasd@gm', '', '', 'gm', 'gm', '2018-07-20 01:51:49', '2018-07-20 01:51:49'),
(180503, '$2y$10$Pwiv2hAMEhJK6/85uBzQNujkh37uKrcEueYt/uVUFgZrTYzVFg4ia', 'Fatrina', 'Fatrina@gmail.com', '085212344321', 'Jakarta', 'Staf sistem informasi', 'Biro Sistem Manajemen', '2018-07-25 02:39:47', '2018-07-25 02:39:47'),
(1301154363, '$2y$10$gxHlGqHxTcRJomrUPk/oi.y2mYi6t2tYBzXSkQ1tEPdOuYLJF.e66', 'Adiman Hanif Septiawan', 'adhim@gm.com', '', '', 'general Manager', 'Wika Realty', '2018-07-16 06:59:20', '2018-07-16 06:59:20');

-- --------------------------------------------------------

--
-- Table structure for table `fcomment`
--

CREATE TABLE `fcomment` (
  `id` int(11) NOT NULL,
  `isi` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_forum` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fcomment`
--

INSERT INTO `fcomment` (`id`, `isi`, `id_user`, `id_forum`, `created_at`, `updated_at`) VALUES
(9, 'no one can fix that, only mpgh can', 1, 4, '2018-07-13 06:55:13', '2018-07-13 06:55:13'),
(10, 'tidak, proyek langit tidak memberikan gaji', 1, 5, '2018-07-13 06:57:05', '2018-07-13 06:57:05'),
(11, 'tidak\r\n', 1, 1, '2018-07-20 04:23:45', '2018-07-20 04:23:45'),
(12, 'tidak tau', 1, 1, '2018-07-20 04:23:49', '2018-07-20 04:23:49'),
(13, 'coba lagi ah', 1, 1, '2018-07-20 04:24:00', '2018-07-20 04:24:00'),
(14, 'Mengganggu', 17, 2, '2018-07-24 16:59:43', '2018-07-24 16:59:43'),
(15, 'tidak suka', 1, 2, '2018-08-03 14:54:12', '2018-08-03 14:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_acc_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`id`, `judul`, `isi`, `id_kategori`, `created_at`, `user_acc_id`, `updated_at`) VALUES
(1, 'Apakah Proyek  Langit Memberi Gaji?', 'benarkah jika proyek langit memberi gaji kepada karyawan mereka?', 1, '2018-07-13 09:06:21', 1, '2018-07-13 09:06:21'),
(2, 'CSGO cheat Judul', 'bagaimana menurut kalian tentang adanya cheat CSGO ?', 3, '2018-07-24 16:59:21', 17, '2018-07-24 16:59:21');

-- --------------------------------------------------------

--
-- Table structure for table `forum_kategori`
--

CREATE TABLE `forum_kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum_kategori`
--

INSERT INTO `forum_kategori` (`id`, `kategori`, `created_at`, `updated_at`) VALUES
(1, 'Proyek Langit', '2018-07-13 08:57:33', '2018-07-13 08:57:33'),
(3, 'Forum ASK', '2018-07-31 09:04:14', '2018-07-31 09:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `order_no` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `parent`, `icon`, `is_active`, `order_no`, `created_at`, `updated_at`) VALUES
(1, 'Beranda', '/', NULL, 'fa fa-home', 1, 1, '2018-06-05 07:47:25', '2018-06-05 07:47:25'),
(2, 'Pengaturan', 'settings', NULL, 'fa fa-cog', 1, 10, '2018-06-05 07:47:25', '2018-06-05 07:47:25'),
(3, 'Menu', 'menus', 'settings', 'fa fa-list-alt', 1, 1, '2018-06-05 07:47:25', '2018-06-05 07:47:25'),
(4, 'Roles', 'roles', 'settings', 'fa fa-users', 1, 2, '2018-06-05 07:47:25', '2018-06-05 07:47:25'),
(5, 'Users', 'users', 'settings', 'fa fa-user', 1, 3, '2018-06-05 07:47:25', '2018-06-05 07:47:25'),
(14, 'Contact Us', 'contacs', NULL, 'fa fa-phone', 1, 9, '2018-06-06 02:06:34', '2018-06-07 02:38:18'),
(19, 'News', 'news_ctrl', NULL, 'fa fa-newspaper-o', 1, 2, '2018-06-06 06:51:51', '2018-07-17 03:33:41'),
(20, 'Forum', 'forum', NULL, 'fa fa-commenting', 1, 5, '2018-06-06 06:53:24', '2018-06-06 06:53:24'),
(21, 'Polling', 'polling', NULL, 'glyphicon glyphicon-stats', 1, 6, '2018-06-06 06:53:59', '2018-06-06 06:53:59'),
(22, 'Sharing', 'sharing', NULL, 'fa fa-share-alt-square', 1, 7, '2018-06-06 06:54:19', '2018-06-06 06:55:45'),
(23, 'Anggota', 'anggota', NULL, 'fa fa-group', 1, 8, '2018-06-06 06:54:57', '2018-06-06 06:54:57'),
(27, 'Pengurus', 'PengurusAll', NULL, 'fa fa-gears', 1, 3, '2018-06-07 02:16:10', '2018-07-25 07:51:58'),
(28, 'Approve', 'approve', NULL, 'glyphicon glyphicon-check', 1, 9, '2018-07-16 03:49:52', '2018-07-16 03:49:52'),
(29, 'News', 'news', 'news_ctrl', 'fa fa-newspaper-o', 1, 1, '2018-07-17 03:32:43', '2018-07-17 03:32:43'),
(30, 'View News', 'news/view', 'news_ctrl', 'fa fa-newspaper-o', 1, 2, '2018-07-17 03:36:04', '2018-07-18 01:43:38'),
(32, 'Manajemen', 'Pengurus', 'PengurusAll', 'fa fa-user', 1, 1, '2018-07-25 07:52:47', '2018-07-25 07:52:47'),
(33, 'Struktur Organisasi', 'strukturOrg', 'PengurusAll', 'fa fa-users', 1, 2, '2018-07-25 07:53:25', '2018-07-25 07:53:25'),
(34, 'History Kepengurusan', 'history', 'PengurusAll', 'fa fa-history', 1, 3, '2018-07-26 02:30:31', '2018-07-26 02:30:31'),
(35, 'Profil', 'profil', NULL, 'fa fa-user', 1, 9, '2018-07-30 06:10:19', '2018-07-30 06:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `menu_permission`
--

CREATE TABLE `menu_permission` (
  `menu_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_permission`
--

INSERT INTO `menu_permission` (`menu_id`, `permission_id`) VALUES
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10),
(5, 11),
(5, 12),
(14, 14),
(20, 23),
(20, 28),
(20, 29),
(20, 34),
(20, 35),
(20, 36),
(20, 37),
(21, 24),
(21, 45),
(21, 46),
(22, 25),
(22, 30),
(22, 31),
(22, 32),
(22, 33),
(23, 26),
(27, 51),
(28, 38),
(28, 39),
(28, 40),
(29, 41),
(30, 42),
(32, 47),
(32, 48),
(32, 49),
(33, 50),
(34, 52),
(35, 53);

-- --------------------------------------------------------

--
-- Table structure for table `menu_role`
--

CREATE TABLE `menu_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_role`
--

INSERT INTO `menu_role` (`role_id`, `menu_id`) VALUES
(1, 1),
(2, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 14),
(2, 14),
(1, 19),
(1, 20),
(2, 20),
(1, 21),
(2, 21),
(1, 22),
(2, 22),
(1, 23),
(2, 23),
(1, 27),
(2, 27),
(1, 28),
(1, 29),
(1, 30),
(2, 30),
(1, 32),
(2, 32),
(1, 33),
(2, 33),
(1, 34),
(2, 34),
(1, 35),
(2, 35);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_07_224428_entrust_setup_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `Id` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Author` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Isi` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`Id`, `Title`, `Author`, `Description`, `Isi`, `created_at`, `updated_at`, `Gambar`) VALUES
(11, 'titles', 'author', 'description', 'hahaha\r\nhhaa\r\n\r\nhaha\r\n\r\naku coba ya\r\n\r\nini coba lagi\r\n\r\nini coba ketiga', '2018-07-09 09:47:21', '2018-08-01 08:18:43', 'assets/image/news/5b616ce37feda_1533111523_20180801.jpg'),
(14, 'a', 'a', 'a', '0', '2018-07-09 04:31:08', '2018-07-09 04:31:08', 'assets/image/news/5b42e50c08f5c_1531110668_20180709.jpg'),
(16, 's', 's', 's', '0', '2018-07-09 08:14:26', '2018-07-09 08:14:26', 'assets/image/news/5b4319621948c_1531124066_20180709.PNG'),
(17, 'nope', 'nope', 'aku', '0', '2018-07-09 08:18:28', '2018-07-11 02:39:02', 'assets/image/news/5b456dc5d4b85_1531276741_20180711.PNG'),
(22, 'n', 'n', 'n', '0', '2018-07-18 10:01:26', '2018-07-18 10:01:26', 'assets/image/news/5b4f0ff5ed5f3_1531908085_20180718.jpg'),
(23, 'WIKA Realty Mendapatkan Property Indonesia Awards 2018', 'Admin', 'PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. ', '0', '2018-07-25 01:53:22', '2018-07-25 01:53:22', 'assets/image/news/5b57d811e6894_1532483601_20180725.jpg'),
(24, 'WIKA Realty Mendapatkan Property Indonesia Awards 2018', 'Admin', 'PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. ', 'PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia.\r\n\r\n WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. \r\n\r\nPT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer.\r\n\r\n PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. ', '2018-07-25 01:53:44', '2018-07-25 01:53:44', 'assets/image/news/5b57d8280226f_1532483624_20180725.jpg'),
(25, 'Groundbreaking Tamansari Emerald Surabaya', 'Admin', 'PT WIKA Realty Tbk dengan bangga mempersembahkan pelaksanaan acara peletakan batu pertama proyek terbaru kami, Tamansari Emerald di Surabaya pada tanggal 5 Mei 2018. Acara ini diadakan di lokasi Property, yaitu di Jalan Emerald Mansion Citraland, Kota Surabaya.', '0', '2018-07-25 01:58:48', '2018-07-25 01:58:48', 'assets/image/news/5b57d95858d6e_1532483928_20180725.jpg'),
(26, 'Judul', 'admin', 'Contoh deskripsi', '0', '2018-07-25 02:04:05', '2018-07-25 02:04:05', 'assets/image/news/5b57da9535f29_1532484245_20180725.jpg'),
(27, 'dasd', 'das', 'sad', '0', '2018-08-01 05:04:17', '2018-08-01 05:04:17', 'assets/image/news/5b613f5137a64_1533099857_20180801.PNG'),
(28, 'gasad', 'das', 'asd', '0', '2018-08-01 05:51:54', '2018-08-01 05:51:54', 'assets/image/news/5b614a7a4c2e2_1533102714_20180801.jpg'),
(29, 'titles', 'author', 'description', 'hahaha\r\nhhaa\r\n\r\nhaha\r\n\r\nhahahahadjlkd lqwHDSZ\r\n\'LF\' Fld l\r\nsfd f\r\nsd\'\r\ndfadf gafs\r\n af\r\nsdf\r\n\r\ndsf\r\ndsfadf', '2018-08-01 07:43:31', '2018-08-01 07:43:31', 'assets/image/news/5b6164a36e16e_1533109411_20180801.jpg'),
(30, 'WIKA Realty Mendapatkan Property Indonesia Awards 2018', 'Admin', 'PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. ', 'PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah \r\n\r\nProperty Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan \r\n\r\nProperty Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. ', '2018-08-01 07:43:54', '2018-08-01 07:43:54', 'assets/image/news/5b6164ba125bb_1533109434_20180801.jpg'),
(31, 'WIKA Realty Mendapatkan Property Indonesia Awards 2018', 'Admin', 'PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. ', 'PT WIKA Realty Tbk \r\n\r\ndengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. PT WIKA Realty Tbk dengan bangga mempersembahkan pencapaian terbaru atas penghargaan Property Indonesia Awards 2018. Acara penganugerahan ini diselenggarakan pada 3 Juli 2018 oleh Majalah Property Indonesia. WIKA Realty meraih penghargaan dalam kategori The Prospective State-Owned Enterprise Developer. ', '2018-08-01 07:44:28', '2018-08-01 07:44:28', 'assets/image/news/5b6164dc53f99_1533109468_20180801.jpg'),
(32, 'Korban Gempa Lombok Usul Jokowi Beri Bantuan Sesuai Kerusakan', 'Admin Ganteng', 'Jakarta, CNN Indonesia -- Korban gempa bumi di Kecamatan Sembalun, Kabupaten Lombok Timur, Nusa Tenggara Barat (NTB) menilai bantuan uang tunai Rp50 juta per rumah dari Presiden Joko Widodo (Jokowi) tidak cukup untuk merenovasi rumah warga yang rusak akibat gempa bumi.', 'Jakarta, CNN Indonesia -- Korban gempa bumi di Kecamatan Sembalun, Kabupaten Lombok Timur, Nusa Tenggara Barat (NTB) menilai bantuan uang tunai Rp50 juta per rumah dari Presiden Joko Widodo (Jokowi) tidak cukup untuk merenovasi rumah warga yang rusak akibat gempa bumi.\r\n\r\nIrwan Gusnadi, salah satu warga Sembalun dari Desa Sajang mengatakan uang sebesar itu mungkin hanya cukup membangun kerangka rumah. Namun, tak cukup bila membangun rumah secara utuh. \r\n\r\n\"Ya kalau segitu hanya bisa buat rumah dengan kerangka sederhana, tidak banyak sekatnya supaya tidak banyak yang dibeli,\" ujar Irwan kepada CNNIndonesia.com, Rabu (1/8). \r\nLihat juga: Pendaki Rinjani Korban Gempa Lombok Dimakamkan\r\nMenurut Irwan, Jokowi seharusnya memberikan bantuan uang tunai sesuai dengan tingkat kerusakan masing-masing rumah. Sehingga besarnya bantuan kepada setiap warga tidak sama antara yang mengalami rusak berat dan ringan. \r\n\r\n\r\n\"Apalagi di Desa Obal-obal, Kecamatan Sambelia yang paling parah terkena gempa. Semuanya rata dengan tanah, itu sebenarnya butuh bantuan yang lebih besar,\" katanya. \r\n\r\nMasitah Jamhuri (50), warga Desa Dayarulungbaret mengatakan bantuan senilai Rp50 juta per rumah rasanya cukup baginya. Maklum saja, rumahnya terbilang tak rusak berat, apalagi sampai runtuh. \r\n\r\n\"Rumah hanya retak-retak, tapi ada bagian yang rusak. Tapi yang terpenting, lebih baik diberi uang tunai saja,\" ucapnya. \r\nLihat juga: Trauma Warga yang Kerap Panik Hadapi Gempa Susulan di Lombok\r\nSementara Fatimah (53), warga Desa Dayangrulungbaret lainnya mengaku rencana bantuan dari Jokowi sudah lebih dari cukup. Sebab, dinding rumahnya hanya retak-retak. Bahkan, ia rela tak diberi bantuan karena sebenarnya kerusakan memang terjadi karena bencana yang tak bisa diduga kedatangannya. \r\n\r\n\"Kalau diberi bantuan sosial saja, saya sudah senang. Pak Jokowi yang penting bantu kami supaya tidak trauma lagi, bantu bahan makanan juga sudah cukup,\" pungkasnya. \r\n\r\nDi sisi lain, Irwan mengatakan ada hal lebih penting yang harus dilakukan Jokowi. Dia berharap Presiden Jokowi tidak sekedar memberikan bantuan, tetapi juga berkeliling menemui langsung para korban gempa. \r\n\r\n\"Kemarin itu hanya di posko yang korbannya tidak begitu parah. Seharusnya Pak Jokowi datang langsung hingga ke desa-desa yang lebih parah. Mereka butuh dukungan langsung dari Pak Jokowi,\" katanya. \r\nLihat juga: Anak-anak Pengungsi Korban Gempa NTB Kangen Sekolah\r\nBaginya, kehadiran Jokowi tak hanya bisa menguatkan para warga, tetapi juga membuat warga bisa mengenal langsung sosok Jokowi. Apalagi, pemberitaan mengenai gempa di Lombok kerap dikaitan dengan isu politik belakangan ini.\r\n\r\n\"Biar mereka bisa kenal Pak Jokowi juga,\" katanya. (ayp) ', '2018-08-01 07:49:11', '2018-08-01 07:49:11', 'assets/image/news/5b6165f770c38_1533109751_20180801.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pengurus`
--

CREATE TABLE `pengurus` (
  `id` int(11) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `profil` text NOT NULL,
  `tgldiangkat` date NOT NULL,
  `periode` varchar(9) DEFAULT NULL,
  `flag` tinyint(1) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengurus`
--

INSERT INTO `pengurus` (`id`, `jabatan`, `nama`, `profil`, `tgldiangkat`, `periode`, `flag`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Ketua', 'ketua', 'profil', '2018-08-05', '2016/2018', 0, 'assets/image/pengurus/5b613a1f21e09_1533098527_20180801.jpg', '2018-08-01 14:47:09', '2018-07-31 23:42:01'),
(2, 'Wakil Ketua', 'Nama Wakil Ketua', 'profil', '2018-07-29', '2016/2018', 1, 'assets/image/pengurus/5b613aa01cfaa_1533098656_20180801.jpg', '2018-07-31 23:22:54', '2018-07-31 21:44:16'),
(3, 'Bendahara', 'nama Bendahara', 'Profil Bendahara', '2018-08-05', '2012/2014', 1, 'assets/image/pengurus/5b613b7554350_1533098869_20180801.jpg', '2018-07-31 23:22:58', '2018-07-31 21:47:49'),
(4, 'sekretaris', 'nama Sekretaris', 'Profil Sekretaris', '2018-08-05', '2018/2020', 0, 'assets/image/pengurus/5b613ce34c47c_1533099235_20180801.jpg', '2018-08-01 14:25:19', '2018-08-01 14:25:19'),
(5, 'Bendahara II', 'Nama Bendahara II', 'Profil', '2018-08-05', '2014/2016', 0, 'assets/image/pengurus/5b613d50147d7_1533099344_20180801.jpg', '2018-07-31 21:55:44', '2018-07-31 21:55:44'),
(6, 'Sekretaris II', 'Nama Sekretaris II', 'Profil sekretaris II', '2018-08-05', '2014/2016', 0, 'assets/image/pengurus/5b613dc1f306e_1533099457_20180801.jpg', '2018-07-31 21:57:38', '2018-07-31 21:57:38'),
(8, 'Ketua', 'ketua baru', 'profil baru', '2018-08-05', '2018/2020', 1, 'assets/image/pengurus/5b6156393a8aa_1533105721_20180801.jpg', '2018-08-01 00:33:10', '2018-07-31 23:42:01'),
(9, 'bendahara 3', 'bendahara', 'nama', '2018-08-05', '2016/2018', 0, 'assets/image/pengurus/5b616d3c9f44b_1533111612_20180801.jpg', '2018-08-01 01:20:12', '2018-08-01 01:20:12'),
(10, 'Bendahara, Bukan ya', 'Gabriel Agar', 'Profil', '2018-08-14', '2018/2020', 0, 'assets/image/pengurus/5b61808ebe298_1533116558_20180801.jpg', '2018-08-01 09:42:39', '2018-08-01 09:42:39'),
(11, 'dasdas', 'asddas', 'dasda', '2018-08-22', '1990/1992', 0, 'assets/image/news/5b6185433c92c_1533117763_20180801.jpg', '2018-08-01 10:02:43', '2018-08-01 10:02:43'),
(12, 'Bendahara Bendahara', 'Gabriel Agar', 'haha', '2018-08-08', '1992/1994', 0, 'assets/image/news/5b6185657a8ac_1533117797_20180801.jpg', '2018-08-01 10:03:34', '2018-08-01 10:03:34'),
(13, 'Bendahara Bendahara', 'Gabriel Agar', 'haha', '2018-08-08', '1992/1994', 1, 'assets/image/news/5b618576df9c3_1533117814_20180801.jpg', '2018-08-01 10:03:34', '2018-08-01 10:03:34'),
(14, 'Coba Lagi', 'Arief Budhiman', 'haha', '2018-08-22', '2018/2020', 0, 'assets/image/news/5b61858deb804_1533117837_20180801.jpg', '2018-08-01 10:03:57', '2018-08-01 10:03:57'),
(15, 'Last', 'Gabriel Agar', 'dasdasd', '2018-08-15', '2018/2020', 0, 'assets/image/news/5b618605e0eec_1533117957_20180801.jpg', '2018-08-01 10:05:57', '2018-08-01 10:05:57'),
(16, 'Bendahara 4', 'Nama Bendahara 4', 'profil', '2018-08-05', '2018/2020', 0, 'assets/image/news/5b618709ecf57_1533118217_20180801.jpg', '2018-08-01 10:10:17', '2018-08-01 10:10:17'),
(17, 'Sekretaris', 'Arief Budhiman', 'profil', '2018-08-05', '2018/2020', 1, 'assets/image/news/5b61c2cfe6285_1533133519_20180801.jpg', '2018-08-01 14:25:19', '2018-08-01 14:25:19'),
(18, 'new', 'Arief Budhiman', '8/2/18 9.05', '2018-08-30', '2018/2020', 0, 'assets/image/news/5b6266f7cc6d3_1533175543_20180802.jpg', '2018-08-02 02:05:43', '2018-08-02 02:05:43'),
(19, 'Fag', 'Gabriel Agar', 'fag', '2018-08-22', '2018/2020', 0, 'assets/image/pengurus/5b6267977fd8f_1533175703_20180802.jpg', '2018-08-02 02:08:23', '2018-08-02 02:08:23');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'menu_index', 'Index Menu', '2018-06-05 07:47:25', '2018-06-05 07:47:25'),
(2, 'menu_create', 'Create Menu', '2018-06-05 07:47:25', '2018-06-05 07:47:25'),
(3, 'menu_update', 'Update Menu', '2018-06-05 07:47:25', '2018-06-05 07:47:25'),
(4, 'menu_delete', 'Delete Menu', '2018-06-05 07:47:25', '2018-06-05 07:47:25'),
(5, 'role_index', 'Index Role', '2018-06-05 07:47:25', '2018-06-05 07:47:25'),
(6, 'role_create', 'Create Role', '2018-06-05 07:47:25', '2018-06-05 07:47:25'),
(7, 'role_update', 'Update Role', '2018-06-05 07:47:25', '2018-06-05 07:47:25'),
(8, 'role_delete', 'Delete Role', '2018-06-05 07:47:25', '2018-06-05 07:47:25'),
(9, 'user_index', 'Index User', '2018-06-05 07:47:25', '2018-06-05 07:47:25'),
(10, 'user_create', 'Create User', '2018-06-05 07:47:25', '2018-06-05 07:47:25'),
(11, 'user_update', 'Update User', '2018-06-05 07:47:25', '2018-06-05 07:47:25'),
(12, 'user_delete', 'Delete User', '2018-06-05 07:47:25', '2018-06-05 07:47:25'),
(13, 'idk_save', 'Idk Save', '2018-06-06 01:26:20', '2018-06-06 01:26:20'),
(14, 'contacs_index', 'Contacs Index', '2018-06-06 04:29:05', '2018-06-06 04:29:05'),
(23, 'forum_index', 'Forum Index', '2018-06-07 01:09:55', '2018-06-07 01:09:55'),
(24, 'polling_index', 'Polling Index', '2018-06-07 01:16:50', '2018-06-07 01:16:50'),
(25, 'sharing_index', 'Sharing Index', '2018-06-07 01:38:37', '2018-06-07 01:38:37'),
(26, 'anggota_index', 'Anggota Index', '2018-06-07 01:45:32', '2018-06-07 01:45:32'),
(28, 'forum_create', 'Forum Create', '2018-06-07 07:04:37', '2018-06-07 07:04:37'),
(29, 'forum_update', 'Forum Update', '2018-06-07 07:04:37', '2018-06-07 07:04:37'),
(30, 'sharing_create', 'Sharing Create', '2018-07-05 09:22:48', '2018-07-05 09:22:48'),
(31, 'sharing_download', 'Sharing Download', '2018-07-05 09:22:48', '2018-07-05 09:22:48'),
(32, 'sharing_update', 'Sharing Update', '2018-07-05 09:22:48', '2018-07-05 09:22:48'),
(33, 'sharing_delete', 'Sharing Delete', '2018-07-05 09:24:08', '2018-07-05 09:24:08'),
(34, 'forum_delete', 'Forum Delete', '2018-07-13 08:17:20', '2018-07-13 08:17:20'),
(35, 'forumthread_update', 'Forumthread Update', '2018-07-13 09:10:13', '2018-07-13 09:10:13'),
(36, 'forumthread_delete', 'Forumthread Delete', '2018-07-13 09:10:13', '2018-07-13 09:10:13'),
(37, 'forumthread_create', 'Forumthread Create', '2018-07-13 09:10:13', '2018-07-13 09:10:13'),
(38, 'approve_index', 'Approve Index', '2018-07-16 03:49:52', '2018-07-16 03:49:52'),
(39, 'approve_delete', 'Approve Delete', '2018-07-16 03:49:52', '2018-07-16 03:49:52'),
(40, 'approved', 'Approved', '2018-07-16 03:49:52', '2018-07-16 03:49:52'),
(41, 'news_index', 'News Index', '2018-07-17 03:32:43', '2018-07-17 03:32:43'),
(42, 'viewnews_index', 'Viewnews Index', '2018-07-17 03:36:04', '2018-07-17 03:36:04'),
(45, 'polling_create', 'Polling Create', '2018-07-18 02:35:06', '2018-07-18 02:35:06'),
(46, 'polling_delete', 'Polling Delete', '2018-07-18 02:35:06', '2018-07-18 02:35:06'),
(47, 'pengurus_index', 'Pengurus Index', '2018-07-25 07:52:47', '2018-07-25 07:52:47'),
(48, 'pengurus_create', 'Pengurus Create', '2018-07-25 07:52:47', '2018-07-25 07:52:47'),
(49, 'pengurus_update', 'Pengurus Update', '2018-07-25 07:52:47', '2018-07-25 07:52:47'),
(50, 'struktur_index', 'Struktur Index', '2018-07-25 07:53:25', '2018-07-25 07:53:25'),
(51, 'pengurusAll_index', 'Pengurusall Index', '2018-07-25 07:54:39', '2018-07-25 07:54:39'),
(52, 'history_index', 'History Index', '2018-07-26 02:30:31', '2018-07-26 02:30:31'),
(53, 'profil_index', 'Profil Index', '2018-07-30 06:10:19', '2018-07-30 06:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(14, 1),
(14, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(28, 1),
(28, 2),
(29, 1),
(30, 1),
(31, 1),
(31, 2),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(37, 2),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(42, 2),
(45, 1),
(46, 1),
(47, 1),
(47, 2),
(48, 1),
(49, 1),
(50, 1),
(50, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2);

-- --------------------------------------------------------

--
-- Table structure for table `polling_ans`
--

CREATE TABLE `polling_ans` (
  `id` int(11) NOT NULL,
  `ans` varchar(100) NOT NULL,
  `idquestion` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `polling_ans`
--

INSERT INTO `polling_ans` (`id`, `ans`, `idquestion`, `created_at`, `updated_at`) VALUES
(1, 'a', 1, '2018-07-18 07:11:55', '2018-07-18 07:11:55'),
(2, 'b', 1, '2018-07-18 07:11:55', '2018-07-18 07:11:55'),
(3, 'a', 2, '2018-07-19 01:31:52', '2018-07-19 01:31:52'),
(4, 'b', 2, '2018-07-19 01:31:52', '2018-07-19 01:31:52'),
(5, 'das', 3, '2018-07-19 04:19:00', '2018-07-19 04:19:00'),
(6, 'ssa', 3, '2018-07-19 04:19:00', '2018-07-19 04:19:00'),
(7, 'dda', 3, '2018-07-19 04:19:00', '2018-07-19 04:19:00'),
(8, 'la', 4, '2018-07-19 04:38:10', '2018-07-19 04:38:10'),
(9, 'ka', 4, '2018-07-19 04:38:10', '2018-07-19 04:38:10'),
(10, 'Didik', 5, '2018-07-20 03:19:04', '2018-07-20 03:19:04'),
(11, 'Puji', 5, '2018-07-20 03:19:04', '2018-07-20 03:19:04'),
(12, 'Purnomo', 5, '2018-07-20 03:19:04', '2018-07-20 03:19:04'),
(13, 'Adiman', 5, '2018-07-20 03:19:04', '2018-07-20 03:19:04'),
(14, 'Naufal', 5, '2018-07-20 03:19:04', '2018-07-20 03:19:04'),
(19, 'Aqua', 7, '2018-07-20 06:11:52', '2018-07-20 06:11:52'),
(20, 'Le Minerale', 7, '2018-07-20 06:11:52', '2018-07-20 06:11:52'),
(21, 'Ades', 7, '2018-07-20 06:11:52', '2018-07-20 06:11:52'),
(22, 'Lainnya', 7, '2018-07-20 06:11:52', '2018-07-20 06:11:52'),
(23, '12', 8, '2018-07-23 04:51:40', '2018-07-23 04:51:40'),
(24, '332', 8, '2018-07-23 04:51:40', '2018-07-23 04:51:40'),
(25, '1', 9, '2018-07-23 04:52:49', '2018-07-23 04:52:49'),
(26, '2', 9, '2018-07-23 04:52:49', '2018-07-23 04:52:49'),
(27, 'w', 10, '2018-07-23 04:55:14', '2018-07-23 04:55:14'),
(28, 'w', 10, '2018-07-23 04:55:14', '2018-07-23 04:55:14'),
(29, 'Tidak Tahu', 11, '2018-07-24 07:55:58', '2018-07-24 07:55:58'),
(30, 'Gak Tahu', 11, '2018-07-24 07:55:58', '2018-07-24 07:55:58'),
(31, '', 11, '2018-07-24 07:55:58', '2018-07-24 07:55:58'),
(32, 'Didik', 12, '2018-07-25 03:02:59', '2018-07-25 03:02:59'),
(33, 'Fatrin', 12, '2018-07-25 03:02:59', '2018-07-25 03:02:59'),
(34, 'wasil', 12, '2018-07-25 03:02:59', '2018-07-25 03:02:59'),
(35, 'Galih', 12, '2018-07-25 03:02:59', '2018-07-25 03:02:59');

-- --------------------------------------------------------

--
-- Table structure for table `polling_question`
--

CREATE TABLE `polling_question` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `total_ans` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `done` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `polling_question`
--

INSERT INTO `polling_question` (`id`, `question`, `total_ans`, `active`, `done`, `created_at`, `updated_at`) VALUES
(1, 'apakah apakah?', 2, 0, 1, '2018-07-19 03:36:39', '2018-07-19 03:36:39'),
(2, 'apakah bukan apakah?', 2, 0, 1, '2018-07-19 04:18:14', '2018-07-19 04:18:14'),
(3, 'asdasd', 3, 0, 1, '2018-07-20 03:19:40', '2018-07-20 03:19:40'),
(4, 'coba', 2, 0, 1, '2018-07-20 02:17:53', '2018-07-20 02:17:53'),
(5, 'Kandidat pengurus berikutnya', 5, 0, 1, '2018-07-20 06:32:18', '2018-07-20 06:32:18'),
(7, 'Air mineral paling sering diminum', 4, 0, 1, '2018-07-23 04:51:58', '2018-07-23 04:51:58'),
(8, 'astaga', 2, 0, 1, '2018-07-23 04:52:54', '2018-07-23 04:52:54'),
(9, 'coba', 2, 0, 1, '2018-07-23 06:55:43', '2018-07-23 06:55:43'),
(10, 'qwe', 2, 0, 1, '2018-07-24 07:56:03', '2018-07-24 07:56:03'),
(11, 'Kenapa Email Gak Bisa', 3, 0, 1, '2018-07-31 09:03:12', '2018-07-31 09:03:12'),
(12, 'Guru favorit di SMP SMA ?', 4, 1, 0, '2018-07-31 09:03:12', '2018-07-31 09:03:12');

-- --------------------------------------------------------

--
-- Table structure for table `polling_saved`
--

CREATE TABLE `polling_saved` (
  `id` int(11) NOT NULL,
  `id_polling` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_ans` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `polling_saved`
--

INSERT INTO `polling_saved` (`id`, `id_polling`, `id_user`, `id_ans`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 9, '2018-07-20 01:42:16', '2018-07-19 06:04:30'),
(2, 4, 3, 8, '2018-07-19 06:44:40', '2018-07-19 06:44:40'),
(3, 4, 12, 9, '2018-07-20 01:42:26', '2018-07-20 01:42:26'),
(4, 4, 13, 8, '2018-07-20 01:53:51', '2018-07-20 01:53:51'),
(5, 3, 13, 5, '2018-07-20 02:18:00', '2018-07-20 02:18:00'),
(6, 5, 1, 10, '2018-07-20 03:20:38', '2018-07-20 03:20:38'),
(7, 5, 3, 13, '2018-07-20 03:21:36', '2018-07-20 03:21:36'),
(8, 7, 1, 19, '2018-07-20 06:12:03', '2018-07-20 06:12:03'),
(9, 7, 3, 20, '2018-07-20 06:12:28', '2018-07-20 06:12:28'),
(10, 11, 1, 29, '2018-07-24 08:51:25', '2018-07-24 08:51:25'),
(11, 12, 19, 32, '2018-07-31 08:10:12', '2018-07-31 08:10:12');

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `nip` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `namalengkap` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nomorhp` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `unitkerja` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registers`
--

INSERT INTO `registers` (`nip`, `password`, `namalengkap`, `email`, `nomorhp`, `alamat`, `jabatan`, `unitkerja`, `created_at`, `updated_at`) VALUES
('HH13011', '$2y$10$WqaiU4GXoPJcFmLXc43cCupMIJGoxzn9kli2PNJRXoxE1b8SnaNZi', 'Adiman Hanif Septiawan', 'xiaomi@gmail.com', '085212341235', 'Jakarta', 'Staf sistem informasi', 'Biro Sistem Manajemen', '2018-07-27 09:18:37', '2018-07-27 09:18:37');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'Role as Administrator', '2018-06-05 07:47:25', '2018-06-05 07:47:25'),
(2, 'User', 'Roles as user', '2018-06-28 08:36:10', '2018-06-28 08:36:10');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(3, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(11, 2),
(12, 2),
(13, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rpengurus`
--

CREATE TABLE `rpengurus` (
  `id` int(11) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `namabefore` varchar(255) NOT NULL,
  `namaafter` varchar(255) NOT NULL,
  `tglberhenti` date NOT NULL,
  `periode` varchar(9) DEFAULT NULL,
  `idpengurus` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpengurus`
--

INSERT INTO `rpengurus` (`id`, `jabatan`, `namabefore`, `namaafter`, `tglberhenti`, `periode`, `idpengurus`, `created_at`, `updated_at`) VALUES
(1, 'Direktur Utama', 'a', 'coba', '0000-00-00', '', 1, '2018-07-17 04:37:23', '2018-07-17 04:37:23'),
(2, 'Direktur Utama', 'coba', 'coba lagi', '0000-00-00', '', 1, '2018-07-17 04:48:03', '2018-07-17 04:48:03'),
(3, 'Direktur Teknik dan Pengembangan', 'b', 'ini coba', '0000-00-00', '', 2, '2018-07-17 04:48:26', '2018-07-17 04:48:26'),
(4, 'Direktur Pemasaran dan Komersial', 'c', 'lagii', '0000-00-00', '', 3, '2018-07-17 04:48:45', '2018-07-17 04:48:45'),
(5, 'Direktur Utama', 'coba lagi', 'coba 1', '0000-00-00', '', 1, '2018-07-17 07:12:02', '2018-07-17 07:12:02'),
(6, 'Direktur Utama', 'coba 1', 'Bryan', '0000-00-00', '', 1, '2018-07-24 15:54:28', '2018-07-24 15:54:28'),
(7, 'Direktur Utama', 'Bryan', 'Coba Bryan', '0000-00-00', '', 1, '2018-07-24 16:04:16', '2018-07-24 16:04:16'),
(8, 'Direktur Teknik dan Pengembangan', 'ini coba', 'Monica', '0000-00-00', '', 2, '2018-07-24 16:09:23', '2018-07-24 16:09:23'),
(9, 'Direktur Utama', 'Coba Bryan', 'Ronaldo', '0000-00-00', '', 1, '2018-07-24 16:10:26', '2018-07-24 16:10:26'),
(10, 'Direktur Teknik dan Pengembangan', 'Monica', 'Gerrard', '0000-00-00', '', 2, '2018-07-24 16:11:35', '2018-07-24 16:11:35');

-- --------------------------------------------------------

--
-- Table structure for table `sharing`
--

CREATE TABLE `sharing` (
  `id` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `file` varchar(200) NOT NULL,
  `id_upload` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sharing`
--

INSERT INTO `sharing` (`id`, `judul`, `deskripsi`, `file`, `id_upload`, `created_at`, `updated_at`) VALUES
(1, 'dd', '', 'assets/image/sharing/5b43054402947_1531118916_20180709.pdf', '1', '2018-07-09 06:48:36', '2018-07-09 06:48:36'),
(2, 'gambar', 'gambar', 'assets/image/sharing/5b56ede804bf3_1532423656_20180724.png', '1', '2018-07-24 09:14:16', '2018-07-24 09:14:16'),
(3, 'Logo Skwr', 'Logo Skwr', 'assets/image/sharing/5b57e5c0828d3_1532487104_20180725.png', '1', '2018-07-25 02:51:44', '2018-07-25 02:51:44'),
(4, 'foto', 'foto', 'assets/image/sharing/5b618732d34f1_1533118258_20180801.jpg', '1', '2018-08-01 10:10:59', '2018-08-01 10:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `tblmail`
--

CREATE TABLE `tblmail` (
  `id` int(11) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `isi` text NOT NULL,
  `flag` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmail`
--

INSERT INTO `tblmail` (`id`, `subject`, `email`, `isi`, `flag`, `created_at`, `updated_at`) VALUES
(52, 'Pemberitahuan Reset Password', 'ariefbudhiman199@gmail.com', 'arief, Password anda telah direset oleh Admin. Password default anda yaitu: userwika123', 0, '2018-08-01 14:44:18', '2018-08-01 14:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', 'admin@email.com', '$2y$10$05GcAhrRG884g9yj9j4dB.bBzxL.d26ERLXJk0umYw9Teci6Ni0Ga', 'llJP0fWW38taP4v2lzItX1IW3DsgxBgHJNvfEnkGBk5ApIAwV0stgcGJSTP9', '2018-06-05 07:47:25', '2018-08-04 05:48:51'),
(3, 'arief', 'arief', 'ariefbudhiman199@gmail.com', '$2y$10$/2ynd126QXWtrUx/VYSzUe/GBI4tWVe7R8cIRnam5aD1lf46ho8lO', 'HsBNdsPhOjE7PcdppkupIObP3CjLFNbDvLqvzOAyCmfwCU6Yu5aDcpOac1gU', '2018-06-26 04:14:23', '2018-08-01 14:48:44'),
(6, '112', 'Arief Budhiman', 'ariefbudhiman1997@gmail.com', '$2y$10$YbKuQ/uPll/VenpJ60Wmt.AwdO6swEwx329qpt5KOcYhGxC9iiz0a', 'vuS5eiK3yO2zXpodTFC0x18jfhsS6hxpOO0zvilgfbSHFNbTOrIOfmQGaq3C', '2018-07-16 04:16:37', '2018-07-16 04:29:30'),
(7, '1', 'arief', 'arief@mail.com', '$2y$10$qZNCOr9tCjG879rTABsWs.SkXGXtaQ6GHuCaQD5PMTCB0Vx148wu2', NULL, '2018-07-16 05:01:15', '2018-07-16 05:01:15'),
(8, '12', 'Arief Budhiman', 'ariefmail@mail.com', '$2y$10$P1ZRNxAloU3KLSxckII2e.MzwsFa0fL59LHkCaTFgz3gbLJm.cB3u', NULL, '2018-07-16 05:07:25', '2018-07-16 05:07:25'),
(9, '1301154363', 'Adiman Hanif Septiawan', 'adhim@gm.com', '$2y$10$gxHlGqHxTcRJomrUPk/oi.y2mYi6t2tYBzXSkQ1tEPdOuYLJF.e66', NULL, '2018-07-16 06:59:20', '2018-07-16 06:59:20'),
(11, '13011', 'ini nama', 'a@gm', '$2y$10$.NzdMsMlcV3kD8YZHHnH2.7zOcrgq1bx.3qO.bXZRsGo8875wu5Ra', 'bACV4znWwnyhXMOXhkQxwfcN7XtnWYm9cvZAh8QjsONr90kyIQV45wRYt6hv', '2018-07-17 03:28:15', '2018-07-17 03:31:04'),
(12, '111', 'Arief B', 'ariefb@mail.com', '$2y$10$atlHDUX4HNseR6/qY8tO5eTGR98b0CzcEkltGX8BmLhtrCOuYt0WG', '6WJB1ZTOrGFelZ2jRaKLmTXzZw7sgB8hXSrxdfSY1c9Px9wO8ybQzAaXUwew', '2018-07-20 01:38:47', '2018-07-20 01:50:11'),
(13, '54363', 'adhim', 'aasd@gm', '$2y$10$DPCq/VqHFBTVvGuK3m6DrOMjk0c2oJ8xylWO2ldWCqDIvoeeI6Bzq', 'SRvbmnQJ0T4aMXu1LBQbGUDDT8uKffjJeCjlFY4DrqdFXRvRDuQkN5RSd5Pe', '2018-07-20 01:51:49', '2018-07-20 03:17:02'),
(15, '134', '134', 'arief134@mail.com', '$2y$10$ALfX9UNSRK4fGYXA8yngVuEzfWFtCVSgCXXGc5Viwzv65MoAWu/yG', NULL, '2018-07-23 04:45:23', '2018-07-23 04:45:23'),
(16, '6666', 'adiman', 'adian1234@gmail.com', '$2y$10$.ZgRwSbqe8SN73lY4KqANeewqjili8uFO/XtaAejay6F.nuNOY2y2', 'CHLioD99oiu6mUAionuIzGSLmVsGB9d8U8ex91tjRuWqQm5fDfZt5mfy7bRv', '2018-07-24 08:20:07', '2018-07-30 09:42:42'),
(17, '5678', 'Kevin', 'Kevin@gmail.com', '$2y$10$L8mpEnEjRXeBy2sj3bpMl.8ryBgtKv33dsqpUDQVUtVAfhzzpQK.a', '0iJAv6Wep83kb33XmROTkkMBesASHJ5Zc60qWtDhXTiPzdND8UrPdeESbCMh', '2018-07-24 16:35:50', '2018-07-24 17:00:17'),
(18, '180503', 'Fatrina', 'Fatrina@gmail.com', '$2y$10$qVCEvTM2cFZnfntMXw2JMemV4Kcrzv6rTXz8T2LVGFVAM/9zUqUJG', 'iUCsd9wDFu55uTybcinyYZrxsuhfBDZVjVIrh1bqciDV2l2LyfrT3X2dpsh7', '2018-07-25 02:39:47', '2018-07-30 05:52:20'),
(19, 'aan', 'aan', 'aan@mail.com', '$2y$10$qcR7JroW7vMskg.FH6AyXO8OGLbFsSi9bJsAxOwpybBT/xmnyR2Qa', 'ojVxXsrfbWJXbYcC2W9agqNdma2TTIzNpnNydDhqGvmsTxfr7Zf8CKS6exM7', '2018-07-31 08:07:11', '2018-07-31 09:04:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `fcomment`
--
ALTER TABLE `fcomment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_acc_id` (`user_acc_id`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `forum_kategori`
--
ALTER TABLE `forum_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`),
  ADD KEY `menus_slug_parent_index` (`slug`,`parent`);

--
-- Indexes for table `menu_permission`
--
ALTER TABLE `menu_permission`
  ADD PRIMARY KEY (`menu_id`,`permission_id`),
  ADD KEY `menu_permission_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `menu_role`
--
ALTER TABLE `menu_role`
  ADD PRIMARY KEY (`menu_id`,`role_id`),
  ADD KEY `menu_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `pengurus`
--
ALTER TABLE `pengurus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `polling_ans`
--
ALTER TABLE `polling_ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `polling_question`
--
ALTER TABLE `polling_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `polling_saved`
--
ALTER TABLE `polling_saved`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `rpengurus`
--
ALTER TABLE `rpengurus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sharing`
--
ALTER TABLE `sharing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmail`
--
ALTER TABLE `tblmail`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `fcomment`
--
ALTER TABLE `fcomment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `forum_kategori`
--
ALTER TABLE `forum_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `pengurus`
--
ALTER TABLE `pengurus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `polling_ans`
--
ALTER TABLE `polling_ans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `polling_question`
--
ALTER TABLE `polling_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `polling_saved`
--
ALTER TABLE `polling_saved`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rpengurus`
--
ALTER TABLE `rpengurus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sharing`
--
ALTER TABLE `sharing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblmail`
--
ALTER TABLE `tblmail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `forums`
--
ALTER TABLE `forums`
  ADD CONSTRAINT `forums_ibfk_1` FOREIGN KEY (`user_acc_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `forums_ibfk_2` FOREIGN KEY (`id_kategori`) REFERENCES `forum_kategori` (`id`);

--
-- Constraints for table `menu_permission`
--
ALTER TABLE `menu_permission`
  ADD CONSTRAINT `menu_permission_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_permission_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_role`
--
ALTER TABLE `menu_role`
  ADD CONSTRAINT `menu_role_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
