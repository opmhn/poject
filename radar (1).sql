-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2022 at 05:30 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `radar`
--

-- --------------------------------------------------------

--
-- Table structure for table `absenmasuk`
--

CREATE TABLE `absenmasuk` (
  `id` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `masuk` datetime NOT NULL,
  `keterangan` enum('hadir','izin','sakit','tanpa keterangan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `absenmasuk`
--

INSERT INTO `absenmasuk` (`id`, `id_karyawan`, `masuk`, `keterangan`) VALUES
(1, 10, '2022-08-04 09:33:50', 'tanpa keterangan'),
(2, 10, '2022-08-02 09:35:08', 'hadir'),
(3, 10, '2022-08-01 09:36:03', 'izin'),
(5, 11, '2022-08-08 10:19:24', 'hadir');

-- --------------------------------------------------------

--
-- Table structure for table `absenpulang`
--

CREATE TABLE `absenpulang` (
  `id` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `pulang` datetime NOT NULL,
  `keterangan` enum('hadir','izin','sakit','tanpa keterangan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `absenpulang`
--

INSERT INTO `absenpulang` (`id`, `id_karyawan`, `pulang`, `keterangan`) VALUES
(1, 10, '2022-08-04 09:33:50', 'tanpa keterangan'),
(2, 10, '2022-08-02 09:35:08', 'hadir'),
(3, 10, '2022-08-01 09:36:03', 'izin'),
(5, 11, '2022-08-08 10:19:27', 'hadir');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL,
  `foto_pribadi` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `jk` enum('l','p') NOT NULL,
  `alamat` text NOT NULL,
  `level` enum('admin','user') NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `foto_ktp` varchar(100) NOT NULL,
  `foto_kk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `foto_pribadi`, `nama`, `email`, `password`, `jk`, `alamat`, `level`, `no_hp`, `foto_ktp`, `foto_kk`) VALUES
(1, '1564294063.png', 'Raihan', 'rmaulana10@gmail.com', '1234', 'l', ' Kp. Legok, Des. Nanggerang, Kec. Cigalontang, Kab. Tasikmalya', 'admin', '0895361531711', '', ''),
(11, '1564293194.png', 'Sahla', 's@gmail.com', '1234', 'p', 'Sindangsono, Ds, Sukamanah, KEc. Cigalontang', 'user', '085311773124', '1659406075.jpg', '1659408133.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absenmasuk`
--
ALTER TABLE `absenmasuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `absenpulang`
--
ALTER TABLE `absenpulang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absenmasuk`
--
ALTER TABLE `absenmasuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `absenpulang`
--
ALTER TABLE `absenpulang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
