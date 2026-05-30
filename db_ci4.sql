-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2026 at 02:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2026-05-14-090653', 'App\\Database\\Migrations\\User', 'default', 'App', 1778749731, 1),
(2, '2026-05-14-090704', 'App\\Database\\Migrations\\Product', 'default', 'App', 1778749731, 1),
(3, '2026-05-14-090711', 'App\\Database\\Migrations\\Transaction', 'default', 'App', 1778749731, 1),
(4, '2026-05-14-090718', 'App\\Database\\Migrations\\TransactionDetail', 'default', 'App', 1778749731, 1),
(5, '2026-05-20-020038', 'App\\Database\\Migrations\\AddDeletedAtToTables', 'default', 'App', 1779242504, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `jumlah` int(5) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `nama`, `harga`, `jumlah`, `foto`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ASUS TUF A15 FA506NF', 10899000, 50, 'asus_tuf_a15.jpg', '2026-05-14 09:11:42', '2026-05-30 12:36:56', NULL),
(2, 'Asus Vivobook 14 A1404ZA', 6899000, 7, 'asus_vivobook_14.jpg', '2026-05-14 09:11:42', '2026-05-30 12:36:51', NULL),
(3, 'Lenovo IdeaPad Slim 3-14IAU7', 6299000, 5, 'lenovo_idepad_slim_3.jpg', '2026-05-14 09:11:42', NULL, NULL),
(9, 'Lenovo Ideapad D330', 3500000, 12, '1780140549_4188828ad422a1aaaeed.jpeg', '2026-05-30 11:29:09', '2026-05-30 12:44:03', '2026-05-30 12:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `total_harga` double NOT NULL,
  `alamat` text NOT NULL,
  `ongkir` double DEFAULT NULL,
  `status` int(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `transaction_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `jumlah` int(5) NOT NULL,
  `diskon` double DEFAULT NULL,
  `subtotal_harga` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'karen13', 'cengkir.prastuti@ramadan.tv', '$2y$10$CR29OIoEXGWP0F..160sBuIdOttzyJ5FDw9GPDLY.ibV35plPkHvC', 'admin', '2026-05-14 09:12:32', NULL, NULL),
(2, 'hastuti.prakosa', 'padmi75@mansur.web.id', '$2y$10$Nt6bWQNprTz2SzlS0w42Tu8LZTJf.tgFpVZ1fWYTyNUeK3BKZ1Qhq', 'guest', '2026-05-14 09:12:33', NULL, NULL),
(3, 'oskar.santoso', 'kurnia.mandala@gmail.co.id', '$2y$10$OXXF2I4k.a/3yYMPgpwbkezN6ykf6BtjJrIHY4phAcgbKtc/GYK.G', 'guest', '2026-05-14 09:12:33', NULL, NULL),
(4, 'aryani', 'aryani.farhunnisa@wijaya.com', '$2y$10$HAPNcldZK09r9rpaHC6ApuAYtRkLe.Sz4ezcjr70TqIviCU4WtpuW', 'admin', '2026-05-14 09:12:33', NULL, NULL),
(5, 'zamira40', 'zfarida@waluyo.ac.id', '$2y$10$O3uJomhPzY.NQdcAH/yJfuhNIy4tgDLGHdnvQ1izfo9cKROH6b2dS', 'guest', '2026-05-14 09:12:33', NULL, NULL),
(6, 'xsaefullah', 'siregar.pranawa@simanjuntak.co', '$2y$10$gN/y1IF7D.yEtoNytrIT4uRzdmUyMY8t/0kcxOYMB2PrjLqMUdFX.', 'guest', '2026-05-14 09:12:33', NULL, NULL),
(7, 'icha40', 'palastri.ayu@yahoo.co.id', '$2y$10$KZ.qyN1NlX7c6ItRdpVND.oi1zMeIYxAPr9CcOp1wh0b.Fs8f5XmC', 'admin', '2026-05-14 09:12:33', NULL, NULL),
(8, 'ifarida', 'zelda95@permadi.in', '$2y$10$NVYF67pzTHkN90m0ISxXzOL/inYP1pfEMH/LP6gMfXNelAF7W0MX6', 'admin', '2026-05-14 09:12:33', NULL, NULL),
(9, 'karya.sihombing', 'teddy79@gmail.co.id', '$2y$10$f7f8wFZHq0/5kzwg.upr1.C24StE.qyGz0XECES8OshVsr4Dr02NW', 'guest', '2026-05-14 09:12:33', NULL, NULL),
(10, 'hyolanda', 'candriani@gmail.com', '$2y$10$AxmrGbU2myJhmevZYw/4x.2xwAhUcMcW9RoPkj8S2NRjYSmL/.j0O', 'guest', '2026-05-14 09:12:33', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
