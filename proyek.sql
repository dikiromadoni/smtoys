-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2022 at 02:05 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `akses`
--

CREATE TABLE `akses` (
  `id_akses` int(11) NOT NULL,
  `nama_akses` varchar(25) NOT NULL,
  `deskripsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akses`
--

INSERT INTO `akses` (`id_akses`, `nama_akses`, `deskripsi`) VALUES
(1, 'administrator', 'sebagai  pengelola kendali penuh pada sistem aplikasi'),
(2, 'Asisten admin', 'sebagai pengelola sistem stok barang, penjualan dan laporan');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `nama_bank` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id`, `nama_bank`) VALUES
(1, 'MANDIRI'),
(2, 'BNI'),
(3, 'BCA'),
(4, 'BRI'),
(5, 'CIMB Niaga');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `ukuran` varchar(5) NOT NULL,
  `harga` int(20) NOT NULL,
  `foto` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `id_kategori`, `ukuran`, `harga`, `foto`) VALUES
(80, 'boneka barbie', 27, '12', 50000, '80dd357bf285645ca276da9d33e65476.jpg'),
(81, 'Boneka Ken', 27, '10', 45000, 'fa634b6c1b9b526a07369c1b3caeb4c3.jpg'),
(82, 'teddy bear', 27, '15', 25000, 'd9283deda6b6165ce7fe314e1c50e849.jpg'),
(83, 'boneka susan', 27, '15', 30000, '3e8214a0ea114c8dea6a221b0dc523bb.jpg'),
(84, 'pistol air', 28, '10', 15000, '890cfd691345788ca881ec0817780e48.jpg'),
(85, 'pop gun', 28, '15', 10000, 'fa35ad0428e6d5f366a6489c6e67ad19.jpg'),
(86, 'bola basket', 30, '15', 25000, '29e79242bd77ea1fe54118f770cea35f.jpg'),
(88, 'mobil aki', 49, '10', 250000, 'a7e3a7990ffe6ae9af797c40f59b3a8a.jpg'),
(89, 'Mobil Remot', 49, '50', 50000, '701c979a225f189544d2aae1305dd34e.jpg'),
(90, 'bola plastik', 30, '60', 10000, 'd85d3c3e61e22d88f5f85f0ed97ee62b.jpg'),
(91, 'mandi bola', 30, '50', 15000, 'a4e70beac6692cdd9431605762b20b02.jpg'),
(92, 'sepeda plastik', 32, '15', 50000, 'a060e2afc39ed15200643ccdd5e81ff3.jpg'),
(93, 'robot baterai', 29, '50', 20000, '4d07357f99544e8ba9c86aa68cc32286.jpg'),
(94, 'meja makan', 53, '25', 15000, '5edb2591db76d6fd637fc5a61b579db4.jpg'),
(95, 'meja rias', 53, '30', 25000, 'd9b248319a64dc29397ff29b74b9fe54.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id` int(11) NOT NULL,
  `no_trf` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(35) NOT NULL,
  `totalpure` bigint(20) NOT NULL,
  `grand_total` bigint(20) NOT NULL,
  `diskon` int(3) NOT NULL,
  `bayar` bigint(20) NOT NULL,
  `kembalian` bigint(20) NOT NULL,
  `catatan` varchar(50) NOT NULL,
  `tgl_trf` date NOT NULL,
  `jam_trf` time NOT NULL,
  `id_pembayaran` int(2) NOT NULL,
  `no_rek` int(18) DEFAULT NULL,
  `atas_nama` varchar(35) NOT NULL,
  `id_bank` int(2) DEFAULT NULL,
  `operator` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id`, `no_trf`, `nama_pelanggan`, `totalpure`, `grand_total`, `diskon`, `bayar`, `kembalian`, `catatan`, `tgl_trf`, `jam_trf`, `id_pembayaran`, `no_rek`, `atas_nama`, `id_bank`, `operator`) VALUES
(13, 'C20220214012', 'haya', 130000, 130000, 0, 150000, 0, 'okee', '2022-02-14', '03:33:09', 1, 0, '', NULL, 'admin'),
(15, 'C20220307014', 'edison', 50000, 50000, 0, 100000, 0, '', '2022-03-07', '04:03:41', 1, 0, '', NULL, 'Saeful'),
(16, 'C20220307015', 'cici', 70000, 70000, 0, 100000, 0, '', '2022-03-07', '05:00:43', 1, 0, '', NULL, 'Saeful'),
(17, 'C20220308016', 'hanabi', 145000, 145000, 0, 150000, 0, '', '2022-03-08', '23:41:36', 1, 0, '', NULL, 'Saeful'),
(18, 'C20220308017', 'Agus', 250000, 250000, 0, 300000, 0, '', '2022-03-08', '23:44:17', 1, 0, '', NULL, 'Saeful');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(27, 'Boneka'),
(28, 'Pistol'),
(29, 'Robot'),
(30, 'Bola'),
(32, 'Sepeda'),
(49, 'Mobil'),
(53, 'Rumah Tangga');

-- --------------------------------------------------------

--
-- Table structure for table `operator`
--

CREATE TABLE `operator` (
  `id_operator` int(11) NOT NULL,
  `nama_operator` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `id_akses` int(3) NOT NULL,
  `last_login` date NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operator`
--

INSERT INTO `operator` (`id_operator`, `nama_operator`, `username`, `password`, `id_akses`, `last_login`, `foto`) VALUES
(13, 'Saeful', 'admin1', '827ccb0eea8a706c4c34a16891f84e7b', 1, '2022-03-15', '041ec907bc5aed7418668f8afdde6f12.jpg'),
(14, 'Ali', 'admin2', '827ccb0eea8a706c4c34a16891f84e7b', 2, '2022-02-19', '5fe0f169d18a2c94a9728b719c0936b4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_byr` int(2) NOT NULL,
  `metode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_byr`, `metode`) VALUES
(1, 'Cash'),
(2, 'Transfer');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_transaksi` int(11) NOT NULL,
  `id_dtlpen` int(5) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah_stok` int(11) NOT NULL,
  `harga_barang` bigint(20) NOT NULL,
  `sub_total` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_transaksi`, `id_dtlpen`, `id_barang`, `jumlah_stok`, `harga_barang`, `sub_total`) VALUES
(49, 13, 60, 1, 130000, 130000),
(51, 15, 78, 1, 50000, 50000),
(52, 16, 79, 1, 20000, 20000),
(53, 16, 78, 1, 50000, 50000),
(54, 17, 81, 1, 45000, 45000),
(55, 17, 80, 1, 50000, 50000),
(56, 17, 91, 1, 15000, 15000),
(57, 17, 93, 1, 20000, 20000),
(58, 17, 94, 1, 15000, 15000),
(59, 18, 88, 1, 250000, 250000);

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE `stok` (
  `id_stok` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `stok_barang` int(11) NOT NULL,
  `tanggal_stok` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stok`
--

INSERT INTO `stok` (`id_stok`, `id_barang`, `stok_barang`, `tanggal_stok`) VALUES
(60, 80, 49, '2022-03-08'),
(61, 90, 25, '2022-03-08'),
(62, 88, 9, '2022-03-08'),
(63, 89, 70, '2022-03-08'),
(64, 81, 54, '2022-03-08'),
(65, 94, 86, '2022-03-08'),
(66, 91, 44, '2022-03-08'),
(67, 93, 43, '2022-03-08'),
(68, 83, 46, '2022-03-08'),
(69, 92, 78, '2022-03-08'),
(70, 82, 88, '2022-03-08'),
(71, 85, 93, '2022-03-08');

-- --------------------------------------------------------

--
-- Table structure for table `ukuran`
--

CREATE TABLE `ukuran` (
  `id_ukuran` int(11) NOT NULL,
  `nama_ukuran` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ukuran`
--

INSERT INTO `ukuran` (`id_ukuran`, `nama_ukuran`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, '8'),
(9, '9'),
(10, '10'),
(11, '11'),
(12, '12'),
(13, '13'),
(14, '14'),
(15, '15'),
(16, '16'),
(25, '25'),
(30, '30'),
(50, '50'),
(60, '60');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akses`
--
ALTER TABLE `akses`
  ADD PRIMARY KEY (`id_akses`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`id_operator`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_byr`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id_stok`);

--
-- Indexes for table `ukuran`
--
ALTER TABLE `ukuran`
  ADD PRIMARY KEY (`id_ukuran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akses`
--
ALTER TABLE `akses`
  MODIFY `id_akses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `operator`
--
ALTER TABLE `operator`
  MODIFY `id_operator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_byr` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `stok`
--
ALTER TABLE `stok`
  MODIFY `id_stok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `ukuran`
--
ALTER TABLE `ukuran`
  MODIFY `id_ukuran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
