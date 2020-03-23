-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Mar 2020 pada 09.56
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien_sembuh`
--

CREATE TABLE `pasien_sembuh` (
  `id_pasien` int(100) NOT NULL,
  `nama_pasien` varchar(255) NOT NULL,
  `asal_pasien` varchar(255) NOT NULL,
  `umur_pasien` varchar(255) NOT NULL,
  `tgl_sembuh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pasien_sembuh`
--

INSERT INTO `pasien_sembuh` (`id_pasien`, `nama_pasien`, `asal_pasien`, `umur_pasien`, `tgl_sembuh`) VALUES
(1, 'ABCD', 'Jakarta', '58', '20 Maret 2020');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pasien_sembuh`
--
ALTER TABLE `pasien_sembuh`
  ADD PRIMARY KEY (`id_pasien`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pasien_sembuh`
--
ALTER TABLE `pasien_sembuh`
  MODIFY `id_pasien` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
