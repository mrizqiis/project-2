-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2025 at 07:11 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_mobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `nama_rental` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `alamat` varchar(120) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `no_ktp` varchar(50) NOT NULL,
  `password` varchar(120) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama`, `nama_rental`, `username`, `alamat`, `gender`, `no_telp`, `no_ktp`, `password`, `role_id`) VALUES
(6, 'Admin', '', 'admin', 'admin', 'Laki-laki', '000', '000', '21232f297a57a5a743894a0e4a801fc3', 1),
(7, 'Telaga Trevel', 'Telaga Travel', 'telaga', 'Jl. Konoha 1 Wakanda', 'Laki-laki', '081212121212', '1403301109948876', '202cb962ac59075b964b07152d234b70', 3),
(8, 'PERMATA RENTAL', 'Permata Rental', 'permata', 'Jl. Soekarno-Hatta', 'Laki-laki', '080983248432', '14020309098324324', '202cb962ac59075b964b07152d234b70', 3),
(10, 'SJT', 'Sejahtera Travel', 'sjt', 'Jl Borobudur 12 Tangerang', 'Laki-laki', '081156532421', '143232748432708', '202cb962ac59075b964b07152d234b70', 3),
(15, 'Family Rentcar', 'Family Rentcar', 'family', 'Jl. Arifin Achmad, Pekanbaru', 'Laki-laki', '082344557665', '14020212088213123', '202cb962ac59075b964b07152d234b70', 3),
(19, 'customer01', 'Rental Customer Jaya', 'customer01', 'jl customer01', 'Laki-laki', '0888', '834734', '41d280f49cef01c5ae33eb28b4c3d699', 3),
(22, 'rizqi', '.', 'rizqi', 'kutabumi', 'Laki-laki', '089512123113', '1212121221', '202cb962ac59075b964b07152d234b70', 2),
(23, 'jak mania', '', 'rafael', 'kotabumi', 'Laki-laki', '0000011111', '1212121221', '202cb962ac59075b964b07152d234b70', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `nama_rental` varchar(120) NOT NULL,
  `kode_type` varchar(120) NOT NULL,
  `merk` varchar(120) NOT NULL,
  `no_plat` varchar(20) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `status` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `denda` int(11) NOT NULL,
  `ac` int(11) NOT NULL,
  `supir` int(11) NOT NULL,
  `mp3_player` int(11) NOT NULL,
  `central_lock` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `nama_rental`, `kode_type`, `merk`, `no_plat`, `warna`, `tahun`, `status`, `harga`, `denda`, `ac`, `supir`, `mp3_player`, `central_lock`, `gambar`) VALUES
(9, 'Telaga Travel', 'SDN', 'Nissan GTR R35', 'B 507 JKT', 'Putih', '2024', '1', 30000000, 6500000, 1, 1, 1, 1, 'download.jpg'),
(10, 'Telaga Travel', 'MPV', 'Daihatsu Xenia', 'BM 7655 HG', 'Biru', '2019', '1', 250000, 30000, 1, 1, 1, 1, 'mpv-daihatsu-xenia-biru.jpg'),
(11, 'Telaga Travel', 'MPV', 'Toyota Avanza', 'BM 3222 YH', 'Champagne Metallic', '2011', '1', 250000, 30000, 1, 1, 1, 1, 'mpv-toyota-avanza.png'),
(12, 'Telaga Travel', 'MPV', 'Daihatsu Xenia', 'BM 3455 GF', 'Merah', '2005', '1', 250000, 30000, 1, 1, 1, 1, 'MPV_Daihatsu_Xenia_2015_-_Red.png'),
(13, 'Permata Rental', 'MPV', 'Toyota Avanza', 'BM 2896 TG', 'Putih', '2004', '1', 250000, 30000, 1, 1, 1, 1, 'MPV_Toyota_Avanza_2014_-_White.png'),
(14, 'Permata Rental', 'SUV', 'Daihatsu Terios', 'BM 5637 PL', 'Putih', '2007', '1', 350000, 50000, 1, 1, 1, 1, 'SUV_Daihatsu_Terios_2007_-_Black.jpg'),
(15, 'Permata Rental', 'SUV', 'Toyota Rush', 'BM 3424 UH', 'Hitam', '2012', '1', 500000, 80000, 1, 1, 1, 1, 'SUV_Toyota_Rush_2012_-_Black.jpg'),
(16, 'Sejahtera Travel', 'MPV', 'Toyota Avanza', 'BM 8655 DF', 'Putih', '2014', '1', 300000, 45000, 1, 1, 1, 1, 'MPV_Toyota_Avanza_2014_-_White1.png'),
(17, 'Sejahtera Travel', 'PUD', 'Mitsubishi Strada', 'BM 7655 HI', 'Hitam', '2006', '1', 800000, 100000, 1, 1, 1, 1, 'PUD_Mitsubishi_Strada_2015_-_Black.jpg'),
(18, 'Sejahtera Travel', 'PUD', 'Mitsubishi Strada', 'BM 6755 MK', 'Putih', '2011', '1', 900000, 110000, 1, 1, 1, 1, 'PUD_Mitsubishi_Strada_2017_-_White.png'),
(19, 'Sejahtera Travel', 'MPV', 'Daihatsu Xenia', 'BM 4366 PL', 'Putih', '2003', '1', 300000, 40000, 1, 1, 1, 1, 'MPV_Daihatsu_Xenia_2015_-_White.png'),
(20, 'Family Rentcar', 'SDN', 'Mercedes Benz AMG', 'B 2121 TNG', 'SILVER', '2024', '1', 2500000, 1000000, 1, 1, 1, 1, 'm.jpg'),
(21, 'Family Rentcar', 'PUS', 'Daihatsu Grand MaX', 'A 3251 VAA', 'SILVER', '2023', '1', 650000, 350000, 1, 1, 1, 1, 'GM.jpg'),
(22, 'Family Rentcar', 'SDN', 'Toyota Supra ', 'B 1305 BKL', 'BIRU', '2024', '1', 3500000, 1250000, 1, 1, 1, 1, '1.jpg'),
(23, 'Family Rentcar', 'SDN', 'Lamborghini Aventador', 'R 1 ZQI', 'Cream Mett', '2023', '1', 25000000, 10000000, 1, 1, 1, 1, 'LM1.jpg'),
(24, 'Family Rentcar', 'MNBS', 'Mercedes Benz 2682 ', 'A 1213 TGR', 'SILVER', '2023', '1', 5500000, 1500000, 1, 1, 1, 1, 'BS.jpg'),
(25, 'Family Rentcar', 'MNBS', 'ISUZU ELF 15 Seat', 'A 1953 GHR', 'Putih', '2023', '1', 2500000, 1000000, 1, 1, 1, 1, 'EL.jpg'),
(26, 'Rental Customer Jaya', 'TRUK', 'Mitsubishi Canter', 'B 3523 RJD', 'KUNING', '2023', '1', 700000, 150000, 1, 1, 1, 1, 'FE.jpg'),
(27, 'Family Rentcar', 'HB', 'MAZDA HATCHBACK', 'A 2124 TNG', 'Merah', '2023', '1', 550000, 150000, 1, 1, 1, 1, 'MD.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id_payment` int(11) NOT NULL,
  `nama_payment` varchar(120) NOT NULL,
  `key_payment` varchar(120) NOT NULL,
  `atas_nama` varchar(120) DEFAULT NULL,
  `nama_rental` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id_payment`, `nama_payment`, `key_payment`, `atas_nama`, `nama_rental`) VALUES
(2, 'Bank BRI', '42367482374', 'Mang Group', 'Jaya Rental'),
(3, 'Bank Kai', '123', NULL, 'Murah Rental'),
(6, 'nro', 'ljk', NULL, 'Murah Rental'),
(7, 'jkjk', '899', 'fdsfs', 'Murah Rental'),
(8, 'Paypal', 'mang@mangkok.com', 'Mang Group', 'Jaya Rental'),
(9, 'BANK BRI', '478657865432656', 'Sejahtera Travel', 'Sejahtera Travel'),
(10, 'DANA', '08115656777', 'Sejahtera Travel', 'Sejahtera Travel'),
(11, 'OVO', '08115656777', 'Sejahtera Travel', 'Sejahtera Travel'),
(12, 'BANK BNI', '2367489773', 'Sejahtera Travel', 'Sejahtera Travel'),
(13, 'BANK MANDIRI', '3493439897432', 'Sejahtera Travel', 'Sejahtera Travel'),
(14, 'BANK BRI', '3243498976813123', 'Permata Rental', 'Permata Rental'),
(15, 'BANK BNI', '2487539893', 'Permata Rental', 'Permata Rental'),
(16, 'BANK BRI', '47254587854765', 'Putra Riau Travel', 'Putra Riau Travel'),
(17, 'BANK BNI', '5247698584', 'Putra Riau Travel', 'Putra Riau Travel'),
(18, 'BANK MANDIRI', '4373487899322', 'Putra Riau Travel', 'Putra Riau Travel'),
(19, 'BCA', '123123131127', 'TELAGA TRAVEL', 'Telaga Travel'),
(20, 'BRI', '14887921874', 'TELAGA TRAVEL', 'Telaga Travel'),
(21, 'MANDIRI', '112233445512345', 'TELAGA TRAVEL', 'Telaga Travel'),
(22, 'BCA', '123123138576', 'FAMILY RENTCAR', 'Family Rentcar'),
(23, 'BRI', '11223344666666', 'FAMILY RENTCAR', 'Family Rentcar');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_rental` int(11) NOT NULL,
  `id_pengembalian` int(11) NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `tanggal_sekarang` date NOT NULL,
  `denda` decimal(10,2) DEFAULT '0.00',
  `total_bayar` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rental`
--

CREATE TABLE `rental` (
  `id_rental` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `tanggal_rental` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `status_rental` varchar(50) NOT NULL,
  `status_pengembalian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_rental` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `nama_rental` varchar(120) NOT NULL,
  `tanggal_rental` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `harga` int(11) NOT NULL,
  `denda` int(11) NOT NULL,
  `total_denda` varchar(120) NOT NULL DEFAULT '0',
  `tanggal_pengembalian` date NOT NULL,
  `status_pengembalian` varchar(50) NOT NULL,
  `status_rental` varchar(50) NOT NULL,
  `bukti_pembayaran` varchar(130) NOT NULL,
  `status_pembayaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_rental`, `id_customer`, `id_mobil`, `nama_rental`, `tanggal_rental`, `tanggal_kembali`, `harga`, `denda`, `total_denda`, `tanggal_pengembalian`, `status_pengembalian`, `status_rental`, `bukti_pembayaran`, `status_pembayaran`) VALUES
(10, 9, 17, 'Sejahtera Travel', '2020-06-08', '2020-06-12', 800000, 100000, '58604166.666667', '2022-01-19', 'Kembali', 'Selesai', '009.PNG', 1),
(15, 20, 9, 'Putra Riau Travel', '2022-01-09', '2022-01-12', 300000, 45000, '90000', '2022-01-14', 'Kembali', 'Selesai', 'Bukti_Pembayaran_Contoh.jpg', 1),
(16, 22, 12, 'Telaga Travel', '2025-05-27', '2025-05-30', 250000, 30000, '30000', '2025-05-31', 'Kembali', 'Selesai', '17.pdf', 1),
(17, 23, 9, 'Telaga Travel', '2025-05-27', '2025-05-30', 300000, 45000, '135000', '2025-06-02', 'Kembali', 'Selesai', '18.pdf', 1),
(18, 23, 10, 'Telaga Travel', '2025-05-27', '2025-05-31', 250000, 30000, '210000', '2025-06-07', 'Kembali', 'Selesai', 'zee.jpg', 1),
(19, 23, 12, 'Telaga Travel', '2025-05-27', '2025-05-31', 250000, 30000, '210000', '2025-06-07', 'Kembali', 'Selesai', 'BASIS DATA KELOMPOK 4.docx', 1),
(20, 23, 12, 'Telaga Travel', '2025-05-27', '2025-05-31', 250000, 30000, '840000', '2025-06-28', 'Belum Kembali', 'Selesai', '', 0),
(23, 23, 10, 'Telaga Travel', '2025-06-04', '2025-06-05', 250000, 30000, '210000', '2025-06-12', 'Kembali', 'Selesai', '', 0),
(24, 23, 10, 'Telaga Travel', '2025-06-04', '2025-06-06', 250000, 30000, '60000', '2025-06-08', 'Kembali', 'Selesai', 'absen global.jfif', 1),
(25, 22, 10, 'Telaga Travel', '2025-06-04', '2025-06-14', 250000, 30000, '300000', '2025-06-24', 'Kembali', 'Selesai', 'Project-1.pdf', 1),
(28, 22, 12, 'Telaga Travel', '2025-06-08', '2025-06-11', 250000, 30000, '90000', '2025-06-14', 'Kembali', 'Selesai', 'absen global.jfif', 1),
(29, 22, 12, 'Telaga Travel', '2025-06-08', '2025-06-10', 250000, 30000, '120000', '2025-06-14', 'Kembali', 'Selesai', 'absen global.jfif', 1),
(30, 22, 23, 'Family Rentcar', '2025-06-09', '2025-06-14', 25000000, 10000000, '10000000', '2025-06-15', 'Kembali', 'Selesai', 'FE1.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id_type` int(11) NOT NULL,
  `kode_type` varchar(10) NOT NULL,
  `nama_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id_type`, `kode_type`, `nama_type`) VALUES
(1, 'SDN', 'Sedan'),
(2, 'HB', 'Hatchback'),
(3, 'MPV', 'Multi Purpose Vehicle'),
(4, 'SUV', 'Sport Utility Vehicle'),
(5, 'PUS', 'Pick-Up Single Cabin'),
(6, 'PUD', 'Pick-Up Double Cabin'),
(7, 'MNBS', 'BUS'),
(8, 'TRUK', 'TRUK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id_payment`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_rental`);

--
-- Indexes for table `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`id_rental`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_rental`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id_payment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `rental`
--
ALTER TABLE `rental`
  MODIFY `id_rental` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_rental` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
