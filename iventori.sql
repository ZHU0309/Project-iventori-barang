-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Mar 2021 pada 18.04
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
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2021_03_17_045222_create_students_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nrp` char(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `nama`, `nrp`, `email`, `jurusan`, `created_at`, `updated_at`) VALUES
(1, 'eko budianto', '12345', 'zhuechoe1@gmail.com', 'teknik imformatka', '2021-03-17 04:58:56', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbbagian`
--

CREATE TABLE `tbbagian` (
  `KDBAGIAN` char(3) NOT NULL,
  `NMBAGIAN` char(35) NOT NULL,
  `NMKABAG` char(35) NOT NULL,
  `EXTENTION` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbbagian`
--

INSERT INTO `tbbagian` (`KDBAGIAN`, `NMBAGIAN`, `NMKABAG`, `EXTENTION`) VALUES
('ADM', 'ADMINISTRASI', 'MYASAROH', '134'),
('CTI', 'COMPUTER DAN TEKHNOLOGI', 'EKO', '256');

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbdterma`
--

CREATE TABLE `tbdterma` (
  `NOBM` varchar(15) NOT NULL,
  `KDBRG` varchar(7) NOT NULL,
  `JMLTERMA` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='untuk menampung data barang dan jumlah terima';

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbdtkeluar`
--

CREATE TABLE `tbdtkeluar` (
  `NOBK` char(15) NOT NULL,
  `KDBRG` char(7) NOT NULL,
  `JMLKELUAR` int(4) NOT NULL,
  `KET` char(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='untuk menampung data barang dan jumlah  yang dilkeluarkan';

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbkeluar`
--

CREATE TABLE `tbkeluar` (
  `NOBK` char(15) NOT NULL,
  `TGLBK` date NOT NULL,
  `KDBAGIAN` char(3) NOT NULL,
  `NOMEMOREFF` char(8) NOT NULL,
  `TGLMEMOREFF` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbsupplier`
--

CREATE TABLE `tbsupplier` (
  `KDSUPPLIER` char(6) NOT NULL,
  `NMSUPLIER` char(35) NOT NULL,
  `ALAMAT` char(50) NOT NULL,
  `KOTA` char(15) NOT NULL,
  `KODEPOS` char(5) NOT NULL,
  `NOTELP` char(12) NOT NULL,
  `NOHP` char(15) NOT NULL,
  `NMKONTAK` char(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='untuk merekam semua data supplier';

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbterima`
--

CREATE TABLE `tbterima` (
  `NOBM` char(15) NOT NULL,
  `TGLBM` date NOT NULL,
  `KDSUPPLIER` char(6) NOT NULL,
  `NOPOREFF` char(10) NOT NULL,
  `THLPOREFF` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='untuk menampung data-data pemerimaan barang';

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_nrp_unique` (`nrp`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

--
-- Indeks untuk tabel `tbbagian`
--
ALTER TABLE `tbbagian`
  ADD PRIMARY KEY (`KDBAGIAN`);

--
-- Indeks untuk tabel `tbbarang`
--
ALTER TABLE `tbbarang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `KDBRG` (`KDBRG`) USING BTREE;

--
-- Indeks untuk tabel `tbdterma`
--
ALTER TABLE `tbdterma`
  ADD KEY `FK_NOBM` (`NOBM`),
  ADD KEY `FK_KDBRG` (`KDBRG`);

--
-- Indeks untuk tabel `tbdtkeluar`
--
ALTER TABLE `tbdtkeluar`
  ADD UNIQUE KEY `NOBK_FK` (`NOBK`),
  ADD KEY `KDBRG` (`KDBRG`);

--
-- Indeks untuk tabel `tbkeluar`
--
ALTER TABLE `tbkeluar`
  ADD PRIMARY KEY (`NOBK`),
  ADD KEY `FOREIGN KEY` (`KDBAGIAN`) USING BTREE;

--
-- Indeks untuk tabel `tbsupplier`
--
ALTER TABLE `tbsupplier`
  ADD PRIMARY KEY (`KDSUPPLIER`);

--
-- Indeks untuk tabel `tbterima`
--
ALTER TABLE `tbterima`
  ADD PRIMARY KEY (`NOBM`),
  ADD KEY `FOREIGN KEY` (`KDSUPPLIER`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbbarang`
--
ALTER TABLE `tbbarang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbdterma`
--
ALTER TABLE `tbdterma`
  ADD CONSTRAINT `FK_KDBRG` FOREIGN KEY (`KDBRG`) REFERENCES `tbterima` (`KDSUPPLIER`),
  ADD CONSTRAINT `FK_NOBM` FOREIGN KEY (`NOBM`) REFERENCES `tbterima` (`NOBM`);

--
-- Ketidakleluasaan untuk tabel `tbdtkeluar`
--
ALTER TABLE `tbdtkeluar`
  ADD CONSTRAINT `tbdtkeluar_ibfk_1` FOREIGN KEY (`KDBRG`) REFERENCES `tbkeluar` (`KDBAGIAN`);

--
-- Ketidakleluasaan untuk tabel `tbkeluar`
--
ALTER TABLE `tbkeluar`
  ADD CONSTRAINT `tbkeluar_ibfk_1` FOREIGN KEY (`NOBK`) REFERENCES `tbdtkeluar` (`NOBK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
