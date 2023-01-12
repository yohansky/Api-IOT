-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 10 Jan 2023 pada 09.30
-- Versi server: 5.7.24
-- Versi PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kartu_nama`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `QR` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `deskripsi`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `no_telp`, `email`, `password`, `QR`, `token`, `created_at`, `updated_at`) VALUES
(15, 'Muhammad Ilham Kusumawardhana', 'Halo, Salam Kenal', 'Bandung', 'Jul 9, 2000', 'Bumi anggrek', '087876897004', 'kawekaweha123@gmail.com', '$2y$08$l/zjwFFopG2EcV1KdVN/ROYZtEDFlpdo14Kx.yq.4RiuYVwIFJXfG', 'http://192.168.100.3:8000/storage/assets/QR/QR-5846.jpg', '$2y$08$OvCy1Pq4p2ZDPJfpHsokfO7Ml6hNd0P0fKtcQg5pE2psQLk.k.Kz.', '2021-05-07 07:17:14', '2021-05-07 07:17:14'),
(16, 'Ismail bin mail', 'Halo, Salam Kenal', 'malaysia', 'May 8, 2021', 'durian runtuh', '087876897001', 'mailbinmail@gmail.com', '$2y$08$8x2Y7Dcgrv5RE4T2MIJqUu2CBDkZ1aUK/dGMq4Hy1xMFDh0jSg.IC', 'http://192.168.100.3:8000/storage/assets/QR/QR-5034.jpg', '$2y$08$G5mRDojMrhxGTkYQQ3Sfc.aK2ZpQOgYRbEAMqkpv8WEtPfAupAI.q', '2021-05-07 16:29:03', '2021-05-07 16:29:03'),
(17, 'Muhammad Adityo kusumawardhana', 'Halo, Salam Kenal', 'Bekasi', 'Jul 4, 2003', 'Bumi anggrek', '087875486997', 'tyokusuma@gmail.com', '$2y$08$/gqsCqunOW.4yrhbfNB5FOYoLSFeqYdRCVpv1iobNdsMwcCpnT7N6', 'http://192.168.100.3:8000/storage/assets/QR/QR-4812.jpg', '$2y$08$HJvfcwk/K4lNpaNKA2UrQOK/5rGO5hvOXcRPEIW9.rAsYcNyuKup.', '2021-05-07 16:57:50', '2021-05-07 16:57:50'),
(19, 'Uzumaki Naruto', 'Halo, Salam Kenal', 'Konoha', 'May 29, 2021', 'Konoha', '087875464646', 'naruto123@gmail.com', '$2y$08$E6s53jrb8x5uk1mljFbXJuTD9ktpUCAfmIvnQV0kejZHeMQuedaLS', 'http://192.168.100.3:8000/storage/assets/QR/QR-1114.jpg', '$2y$08$GTx4XKt60jRXsQwfSeQgFOicGX/3GMhpWE0FOwlIGb5SrtgP2dgJS', '2021-05-28 20:40:03', '2021-05-28 20:40:03'),
(20, 'Sasuke uciha', 'Halo, Salam Kenal', 'Konoha', 'May 1, 2021', 'Konoha', '08757549', 'sasuke123@gmail.com', '$2y$08$98hX5zFQ99CPt7idxQ.BfeJeh19e7uaug312HEdgtb1oQggnLv0V6', 'http://192.168.100.3:8000/storage/assets/QR/QR-8543.jpg', '$2y$08$Aqk2diC/JQcacVVRmJ80i.73dX7dPLc6fQHMIesRZGRyH04jKp6Ka', '2021-05-28 20:42:15', '2021-05-28 20:42:15'),
(21, 'kawe', 'Halo, Salam Kenal', 'Bandung', 'Jun 10, 2021', 'bekasi', '087875454646', 'kawe123@gmail.com', '$2y$08$aQnjZhgESmabLkqTJ1UiX.FmaiCa0p74ghsniJaG9fzfmnCHrQqSi', 'http://192.168.100.3:8000/storage/assets/QR/QR-6663.jpg', '$2y$08$MWPGR1VOrHAF6faDU.Ikqev9pN3X9k4741vcX6R.0vQSYb5URXhBC', '2021-06-04 21:21:02', '2021-06-04 21:21:02');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
