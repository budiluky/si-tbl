-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2024 at 08:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `si-tbl`
--

CREATE DATABASE IF NOT EXISTS `si-tbl` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `si-tbl`;

-- --------------------------------------------------------

--
-- Table structure for table `permintaan`
--

CREATE TABLE `permintaan` (
  `id_permintaanpembelian` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `kode_permintaan` varchar(15) NOT NULL,
  `tgl_permintaan` date NOT NULL,
  `id_video` varchar(50) NOT NULL,
  `status_permintaan` enum('Meminta','Ditolak','Setuju') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permintaan`
--

INSERT INTO `permintaan` (`id_permintaanpembelian`, `id_user`, `kode_permintaan`, `tgl_permintaan`, `id_video`, `status_permintaan`) VALUES
(1, 2, 'PP20240725001', '2024-07-25', 'VD20240713001', 'Meminta');

-- --------------------------------------------------------

--
-- Table structure for table `user_petugas`
--

CREATE TABLE `user_petugas` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto_user` varchar(100) NOT NULL,
  `level` enum('admin','customer') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_petugas`
--

INSERT INTO `user_petugas` (`id_user`, `nama`, `jabatan`, `phone`, `email`, `password`, `foto_user`, `level`) VALUES
(1, 'Luki Admin', 'Manager', '087311707377', 'admin@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'image.png', 'admin'),
(2, 'Luki Customer', 'Customer', '087516757777', 'customer@gmail.com', 'b39f008e318efd2bb988d724a161b61c6909677f', 'image.png', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_barang` int(11) NOT NULL,
  `id_user` int(11) NOT NULL DEFAULT 0,
  `kode_barang` varchar(15) NOT NULL,
  `video` varchar(50) NOT NULL,
  `file` varchar(200) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_barang`, `id_user`, `kode_barang`, `video`, `file`, `tanggal`) VALUES
(1, 1, 'VD20240713001', 'Video Pertama', 'Video1.mp4', '2024-07-13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `permintaan`
--
ALTER TABLE `permintaan`
  ADD PRIMARY KEY (`id_permintaanpembelian`);

--
-- Indexes for table `user_petugas`
--
ALTER TABLE `user_petugas`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_barang`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `permintaan`
--
ALTER TABLE `permintaan`
  MODIFY `id_permintaanpembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_petugas`
--
ALTER TABLE `user_petugas`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
