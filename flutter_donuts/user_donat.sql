-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Okt 2020 pada 10.40
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `udacoding`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_donat`
--

CREATE TABLE `user_donat` (
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_donat`
--

INSERT INTO `user_donat` (`fname`, `lname`, `phone`, `password`) VALUES
('', '', '', '123'),
('z', 'z', '0000', '0000'),
('yy', 'kk', '087', '77'),
('zz', 'uuuuyy', '1111', '1111'),
('yy', 'yy', '1122', '1122'),
('kalwabed', 'rizqi', '333', '333'),
('fghh', 'uuuu', '34567', '1245'),
('rini', 'saja', '4444', '4444'),
('cc', 'cc', '88', '88'),
('yayak', '123', 'sfdsfsdf', 'dfdsfsdf'),
('yayak', '123', 'sfsd', 'dfsfdsf');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user_donat`
--
ALTER TABLE `user_donat`
  ADD PRIMARY KEY (`phone`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
