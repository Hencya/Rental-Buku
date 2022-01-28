-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 23 Jan 2022 pada 12.29
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_buku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id_buku` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `code` varchar(50) NOT NULL,
  `tahun_terbit` varchar(20) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `harga` int(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_buku`
--

INSERT INTO `tb_buku` (`id_buku`, `judul`, `pengarang`, `code`, `tahun_terbit`, `penerbit`, `harga`, `status`) VALUES
(19, 'Filosofi Teras', 'Henry Manampiring', 'FT2018KOMPAS', '2018', 'Kompas', 5000, 'Keluar'),
(29, 'Dont Make Me Think!', 'Steve Krug', 'DMMT200STEVE', '2000', 'Steve Krug', 7000, 'Tersedia'),
(21, 'Sejarah Terlangkap Peradaban Dunia', 'Rizem Aizit', 'STPD2018NOKTAH', '2018', 'Noktah', 4000, 'Tersedia'),
(17, 'Sejarah Dunia yang Disembunyikan', 'Jonathan Black', 'SDYD2007ALVABET', '2007', 'Alvabet', 4000, 'Tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_peminjam`
--

CREATE TABLE `tb_peminjam` (
  `id_peminjam` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nik` int(20) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_peminjam`
--

INSERT INTO `tb_peminjam` (`id_peminjam`, `nama`, `nik`, `alamat`, `telp`, `email`) VALUES
(14, 'Faiz', 1301190230, 'Palembang', '081269696969', 'Faiz@gmail.com'),
(13, 'Fikri', 1301190157, 'Blora', '081269696968', 'fikri@gmail.com'),
(10, 'Kevin', 1301196969, 'Jakarta', '081269696967', 'kevin@gmail.com'),
(29, 'fikri', 1301190157, 'Cepu', '0877111123', 'fikri@gmail.com'),
(30, 'fikri', 1301190157, 'Cepu', '0877111123', 'fikri@gmail.com'),
(31, 'fikri', 1301190157, 'Cepu', '0877111123', 'fikri@gmail.com'),
(32, 'kevin', 130119000, 'batam', '0877777771', 'kepin@gmail.com'),
(33, 'Faiz Rafana', 1301190147, 'Palembang', '0877777655', 'pais@gmail.com'),
(34, 'Faiz Rafana', 1301190147, 'Palembang', '0877777655', 'pais@gmail.com'),
(35, 'Fikri', 1301190157, 'Blora', '089977272', 'fikri@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `peminjam` varchar(255) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `harga` varchar(20) NOT NULL,
  `tgl_pinjaman` date DEFAULT NULL,
  `tgl_kembali` varchar(20) DEFAULT NULL,
  `lama` varchar(10) DEFAULT NULL,
  `total` varchar(20) DEFAULT NULL,
  `denda` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `peminjam`, `code`, `harga`, `tgl_pinjaman`, `tgl_kembali`, `lama`, `total`, `denda`) VALUES
(32, 'Faiz Rafana', 'FT2018KOMPAS', '5000', '2022-01-03', '2022-01-06', '3', '15000', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `type`) VALUES
(6, 'admin', 'admin', 'admin', 'Admin'),
(7, 'staff', 'staff', 'staff', 'Staff'),
(12, 'faiz', 'faiz1', 'admin', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `tb_peminjam`
--
ALTER TABLE `tb_peminjam`
  ADD PRIMARY KEY (`id_peminjam`);

--
-- Indeks untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `tb_peminjam`
--
ALTER TABLE `tb_peminjam`
  MODIFY `id_peminjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
