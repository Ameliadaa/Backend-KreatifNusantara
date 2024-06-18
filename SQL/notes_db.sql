-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jun 2024 pada 11.52
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
-- Database: `notes_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) NOT NULL,
  `title` text NOT NULL,
  `datetime` datetime NOT NULL,
  `note` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `notes`
--

INSERT INTO `notes` (`id`, `title`, `datetime`, `note`) VALUES
(1, 'Catatan Amelia', '2024-06-18 05:00:00', 'Amelia Dia sebagai hustler bertanggung jawab manajemen tim dan juga proyek. terlibat dalam research, desain ui/ux, prototyping, testing, brandguideline dan juga terlibat dalam development website serta membuat dan menghasilkan video showcase '),
(2, 'Catatan Daviq', '2024-06-18 12:10:00', 'Daviq Rizqi, sebagai hipster dia sering izin ,jadi  jarang terlibat dalam diskusi project dan ketika diberikan tugas sering kelewat dari deadline yang ditentukan. kontribusi dalam pengerjaan desain sedikit'),
(4, 'Catatan Fred', '2024-06-18 12:15:00', 'Fred Areal sebagai hipster dan bukan dari background IT, dia punya kemauan yang tinggi untuk belajar dan selalu ikut dalam diskusi. selalu konfirmasi jika ada sesuatu. sehingga yang lain bisa membantu'),
(5, 'Catatan Reza Fahmi', '2024-06-18 12:20:00', 'Reza Fahmi sebagai hacker, dia selalu ikut dalam diskusi dan juga kontribusi dalam pengerjaan mulai dari research, desain ui/ux, prototyping, brandguideline dan juga development website calmy heal'),
(6, 'Catatan Paul Nara', '2024-06-18 12:25:00', 'Paul Nara sebagai hacker, dia selalu ikut dalam diskusi dan juga kontribusi dalam pengerjaan mulai dari research, desain ui/ux, prototyping, testing dan juga brandguideline serta  development website calmy heal'),
(7, 'Catatan Khairul Yamlean', '2024-06-18 12:30:00', 'Khairul sebagai hacker, dia seringkali izin ketika diskusi karena mata kuliah yang tidak bisa dikonversi. Untuk pengerjaan jobdesk dia juga sering terlambat dari deadline yang sudah diberikan. Dan khairul juga berganti tugas menjadi desain karena kurang mampu pada saat development');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
