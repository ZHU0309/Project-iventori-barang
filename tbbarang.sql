-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Mar 2021 pada 18.00
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iventori`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbbarang`
--

CREATE TABLE `tbbarang` (
  `id` int(10) UNSIGNED NOT NULL,
  `KDBRG` char(7) NOT NULL,
  `NMBRG` char(35) NOT NULL,
  `SATUAN` char(10) NOT NULL,
  `JNSBRG` char(255) NOT NULL,
  `STOK` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='untuk menampung seluruh isi data barang';

--
-- Dumping data untuk tabel `tbbarang`
--

INSERT INTO `tbbarang` (`id`, `KDBRG`, `NMBRG`, `SATUAN`, `JNSBRG`, `STOK`, `created_at`, `updated_at`) VALUES
(13, 'CDRABQ1', 'rokok', 'kardus', 'rokok batangan', 12, '2021-03-24 08:27:47', '2021-03-24 08:27:47'),
(14, 'KBKMPS4', 'ajinomoto', 'pcs', 'mecin', 12, '2021-03-24 09:56:13', '2021-03-24 09:56:13');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbbarang`
--
ALTER TABLE `tbbarang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `KDBRG` (`KDBRG`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbbarang`
--
ALTER TABLE `tbbarang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
