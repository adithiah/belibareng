-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jul 2020 pada 11.17
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `training`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `index_dosen` int(2) NOT NULL,
  `id_dosen` varchar(5) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_login` int(4) NOT NULL,
  `id_group` int(5) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_login`, `id_group`, `user_name`, `password`, `created`, `modified`) VALUES
(22, 10001, 'penghapuspulpen@gmail.com', '12345', '2019-12-03 10:11:22', '2020-07-13 08:47:49'),
(23, 10005, 'penghapus@gmail.com', '12345', '2019-12-03 10:12:44', '2020-07-13 08:44:25'),
(24, 10005, 'tipex@gmail.com', '12345', '2019-12-03 10:14:17', '2020-07-13 08:44:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `time_table`
--

CREATE TABLE `time_table` (
  `id_time_table` int(4) NOT NULL,
  `id_group` int(5) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `notes_one` varchar(255) NOT NULL,
  `notes_two` text NOT NULL,
  `notes_three` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `time_table`
--

INSERT INTO `time_table` (`id_time_table`, `id_group`, `user_name`, `notes_one`, `notes_two`, `notes_three`, `created`, `modified`) VALUES
(17, 10010, 'penghapuspulpen@gmail.com', 'User Task', 'User User task', 'user nih change to green', '2019-12-03 10:16:05', '2020-07-13 08:56:54'),
(18, 10005, 'penghapus@gmail.com', 'Manager Login', 'Mana', 'Manager to green', '2019-12-03 10:16:53', '2020-07-13 08:56:58'),
(19, 10001, 'penghapuspulpen@gmail.com', 'Admn coba', 'Admin', 'Admin Change to green', '2019-12-03 10:17:17', '2020-07-13 08:57:07'),
(20, 10001, 'penghapus@gmail.com', 'Please', 'Wed', 'Why Not CHnage! Please', '2019-12-04 03:10:48', '2020-07-13 08:57:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_full_name` varchar(50) NOT NULL,
  `user_address` varchar(150) NOT NULL,
  `user_phone_number` varchar(20) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `user_name`, `user_full_name`, `user_address`, `user_phone_number`, `created`, `modified`) VALUES
(22, 'penghapuspulpen@gmail.com', 'Adithia', 'Jl Curug Mekar RT 001/03 No 20', '82216219883', '2019-12-03 10:11:22', '2020-07-13 08:52:14'),
(23, 'penghapus@gmail.com', 'Adithia', 'Jl Curug Mekar ', '62123', '2019-12-03 10:12:44', '2020-07-13 08:51:54'),
(24, 'tipex@gmail.com', 'Adithia', 'jl Curug Mekar', '6208117011090', '2019-12-03 10:14:17', '2020-07-13 08:51:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_group`
--

CREATE TABLE `user_group` (
  `id_group` int(5) NOT NULL,
  `group_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_group`
--

INSERT INTO `user_group` (`id_group`, `group_name`) VALUES
(10001, 'admin'),
(10005, 'manager'),
(10010, 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_preference`
--

CREATE TABLE `user_preference` (
  `id_preference` int(5) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `working_hour_per_day` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_preference`
--

INSERT INTO `user_preference` (`id_preference`, `user_name`, `working_hour_per_day`) VALUES
(5, 'penghapuspulpen@gmail.com', 8),
(6, 'penghapus@gmail.com', 8),
(7, 'tipex@gmail.com', 8);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`index_dosen`),
  ADD UNIQUE KEY `id_dosen` (`id_dosen`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`),
  ADD KEY `user_name` (`user_name`);

--
-- Indeks untuk tabel `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`id_time_table`),
  ADD KEY `user_name` (`user_name`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `user_name` (`user_name`);

--
-- Indeks untuk tabel `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id_group`);

--
-- Indeks untuk tabel `user_preference`
--
ALTER TABLE `user_preference`
  ADD PRIMARY KEY (`id_preference`),
  ADD KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dosen`
--
ALTER TABLE `dosen`
  MODIFY `index_dosen` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `time_table`
--
ALTER TABLE `time_table`
  MODIFY `id_time_table` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `user_preference`
--
ALTER TABLE `user_preference`
  MODIFY `id_preference` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
