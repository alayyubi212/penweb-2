-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jul 2023 pada 20.36
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko_dilla`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id_cart` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `banyak` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `carts`
--

INSERT INTO `carts` (`id_cart`, `user_id`, `product_id`, `banyak`, `total`) VALUES
(153, 25, 8, 1, 159900);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `slug`) VALUES
(5, 'Us Shortplate', 'us-shortplate'),
(6, 'Saikoro', 'saikoro'),
(7, 'Steak Tenderloin', 'steak-tenderloin'),
(9, 'Steak Sirloin', 'steak-sirloin'),
(10, 'Steak Ribeye', 'steak-ribeye'),
(11, 'Meltique Yakiniku', 'meltique-yakiniku'),
(12, 'Salmon Fillet Frozen', 'salmon-fillet-frozen'),
(13, 'Dori', 'dori'),
(14, 'French Fries', 'french-fries'),
(15, 'Potato Wedges', 'potato-wedges');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `unit` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `descriptions` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `stock` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id_product`, `product_name`, `unit`, `price`, `descriptions`, `category_id`, `stock`) VALUES
(5, 'Us Shortplate', 1000, '139800', '<p>Rasanya beef banget, empuk dan gurih</p>\r\n', 5, '43000'),
(8, 'Saikoro', 1000, '159900', '<p>Daging ini empuk banget bahkan cocok banget untuk segala usia pasti suka, potongan ini juicy dan gampang masaknya</p>\r\n', 6, '6000'),
(10, 'Steak Tenderloin', 1000, '250000', '<p>Tenderloin Meltique Steak</p>\r\n', 7, '11000'),
(13, 'Steak Sirloin', 1000, '275000', '<p>Premium Sirloin Meltique Steak</p>\r\n', 9, '11000'),
(14, 'Steak Ribeye', 1000, '250000', '<p>Ribeye Meltique Steak</p>\r\n', 10, '10000'),
(15, 'Meltique Yakiniku', 1000, '220000', '<p>Meltique Yakiniku</p>\r\n', 11, '10000'),
(16, 'Salmon Fillet Frozen', 1000, '275000', '<p>Salmon Fillet Frozen non sashimi grade atau tidak bisa dimakan langsung</p>\r\n', 12, '6000'),
(17, 'Dori', 1000, '48500', '<p>Ikan dori enak dan sehat untuk makanan sehari-hari, bisa untuk tumis, goreng tepung atau di tim sehat juga</p>\r\n', 13, '8000'),
(18, 'French Fries', 1000, '38000', '<p>Shoestring French Fries tinggal goreng hingga golden brown, sudah siap di santappp</p>\r\n', 14, '5000'),
(19, 'Potato Wedges', 1000, '49900', '<p>Frozen Potato Wedges</p>\r\n', 15, '5000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products_galleries`
--

CREATE TABLE `products_galleries` (
  `id_gallery` int(11) NOT NULL,
  `photos` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products_galleries`
--

INSERT INTO `products_galleries` (`id_gallery`, `photos`, `product_id`) VALUES
(1, 'images (9).jpg', 5),
(2, 'images (10).jpg', 14),
(3, 'images (11).jpg', 10),
(4, 'images (12).jpg', 13),
(12, '63e5adb8c61e5.jpg', 8),
(21, 'images (14).jpg', 15),
(33, '63e5b798a0b63.jpg', 16),
(34, '63e5b97c6fe90.jpg', 17),
(35, '63e5b9b191102.jpg', 18),
(36, '63e5ba0e442fe.jpg', 19);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekening_numbers`
--

CREATE TABLE `rekening_numbers` (
  `id_rekening` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `rekening_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rekening_numbers`
--

INSERT INTO `rekening_numbers` (`id_rekening`, `bank_name`, `number`, `rekening_name`) VALUES
(1, 'MANDIRI', '09898788', 'Yurica Sachi'),
(5, 'BCA', '60827683', 'Samuel Jusuf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id_transaction` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `rekening_id` int(11) NOT NULL,
  `transaction_status` varchar(255) NOT NULL,
  `weight_total` int(11) NOT NULL,
  `delivered` int(11) NOT NULL,
  `photo_transaction` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `time_arrived` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id_transaction`, `user_id`, `total_price`, `city`, `rekening_id`, `transaction_status`, `weight_total`, `delivered`, `photo_transaction`, `code`, `receiver`, `time_arrived`, `created_at`) VALUES
(24, 19, 279600, 'JAKARTA', 5, 'DITERIMA', 2000, 0, '64800a945b8dc.jpg', 'EZM-72803', 'array', '2023-06-07 04:43:24', '2023-06-07 04:39:04'),
(25, 19, 599400, 'JAKARTA', 1, 'TERKONFIRMASI', 4000, 0, '64800fd66d20b.png', 'EZM-31454', '', NULL, '2023-06-07 05:03:45'),
(26, 25, 159900, 'JAKARTA', 1, 'DITERIMA', 1000, 0, '6480bcc3d3f51.jpeg', 'EZM-79841', 'ridwan', '2023-06-07 17:25:47', '2023-06-07 17:20:46'),
(27, 25, 419400, 'JAKARTA', 1, 'BELUM KONFIRMASI', 3000, 0, '', 'EZM-10512', '', NULL, '2023-06-10 13:18:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions_details`
--

CREATE TABLE `transactions_details` (
  `id_transaction_detail` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `banyak` int(11) NOT NULL,
  `code_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transactions_details`
--

INSERT INTO `transactions_details` (`id_transaction_detail`, `transaction_id`, `product_id`, `price`, `banyak`, `code_product`) VALUES
(1, 1, 1, 50000, 2, 'PRD-12943'),
(2, 1, 2, 80000, 2, 'PRD-12943'),
(3, 2, 1, 50000, 2, 'PRD-13113'),
(4, 2, 1, 50000, 2, 'PRD-13113'),
(5, 3, 2, 80000, 2, 'PRD-40981'),
(6, 3, 6, 400000, 1, 'PRD-40981'),
(7, 4, 3, 100000, 1, 'PRD-60879'),
(8, 5, 5, 20000, 2, 'PRD-71011'),
(9, 5, 10, 75000, 2, 'PRD-71011'),
(10, 5, 12, 14000, 2, 'PRD-71011'),
(11, 6, 4, 36000, 5, 'PRD-94186'),
(12, 6, 1, 30000, 1, 'PRD-94186'),
(13, 6, 2, 40000, 4, 'PRD-94186'),
(14, 7, 5, 139800, 1, 'PRD-41960'),
(15, 8, 10, 250000, 1, 'PRD-86393'),
(16, 9, 13, 275000, 2, 'PRD-96193'),
(17, 10, 8, 159900, 1, 'PRD-78218'),
(18, 11, 5, 139800, 1, 'PRD-40807'),
(19, 12, 5, 139800, 2, 'PRD-21881'),
(20, 12, 13, 275000, 2, 'PRD-21881'),
(21, 13, 5, 139800, 2, 'PRD-29584'),
(22, 13, 5, 139800, 3, 'PRD-29584'),
(23, 13, 15, 220000, 5, 'PRD-29584'),
(24, 14, 8, 159900, 2, 'PRD-32394'),
(25, 15, 5, 139800, 2, 'PRD-49248'),
(26, 16, 10, 250000, 4, 'PRD-21757'),
(27, 17, 8, 159900, 2, 'PRD-60889'),
(28, 17, 5, 139800, 4, 'PRD-60889'),
(29, 18, 5, 139800, 2, 'PRD-69350'),
(30, 19, 13, 275000, 1, 'PRD-25756'),
(31, 20, 13, 275000, 1, 'PRD-98920'),
(32, 21, 14, 250000, 1, 'PRD-70789'),
(33, 22, 8, 159900, 1, 'PRD-76972'),
(34, 23, 14, 250000, 1, 'PRD-3718'),
(35, 24, 5, 139800, 2, 'PRD-12194'),
(36, 25, 5, 139800, 2, 'PRD-68802'),
(37, 25, 8, 159900, 2, 'PRD-68802'),
(38, 26, 8, 159900, 1, 'PRD-78496'),
(39, 27, 5, 139800, 3, 'PRD-91464');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `postal_code` varchar(191) NOT NULL,
  `roles` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `name`, `email`, `password`, `address`, `phone_number`, `postal_code`, `roles`) VALUES
(15, 'via', 'viasihabul@gmail.com', '$2y$10$1iY0f6jiza4szRCiiYWtMucTFsLCiYdYdXD53TUYrv72zMynG/hfi', '<p>Jl. Jatiuwung Tangerang</p>\r\n', '081265478654', '15810', 'ADMIN'),
(16, 'yurica', 'yuricasachi@gmail.com', '$2y$10$gMs2.V0IsI3ahwcJozC01Oc9HnBgrKsRtxk4WAdaqW/aWGhQIOke.', '<p>Jl. Serpong Tangerang</p>\r\n', '085867456372', '15810', 'OWNER'),
(19, 'array', 'array05@gmail.com', '$2y$10$9ZFwUpJlL5Yodf/lVUEvN.SRjvvG8wMb/Wo8rbB8W.k7ZCDlTYc5q', '<p>Jl. Gatot Subroto</p>\r\n', '0876432235789', '15810', 'USER'),
(25, 'ridwan', 'ridwan@gmail.com', '$2y$10$Boz4G4COAUPnv5XcMHYkuOiQn2lZ2DZJsgxR.WHr9CelsooGdz6EC', '<p>test</p>\r\n', '0812345678900', '12345', 'USER');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`);

--
-- Indeks untuk tabel `products_galleries`
--
ALTER TABLE `products_galleries`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indeks untuk tabel `rekening_numbers`
--
ALTER TABLE `rekening_numbers`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id_transaction`);

--
-- Indeks untuk tabel `transactions_details`
--
ALTER TABLE `transactions_details`
  ADD PRIMARY KEY (`id_transaction_detail`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `products_galleries`
--
ALTER TABLE `products_galleries`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `rekening_numbers`
--
ALTER TABLE `rekening_numbers`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id_transaction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `transactions_details`
--
ALTER TABLE `transactions_details`
  MODIFY `id_transaction_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
