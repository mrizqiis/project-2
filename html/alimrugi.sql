-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table alimrugi.tb_admin
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE IF NOT EXISTS `tb_admin` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `roles` varchar(30) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table alimrugi.tb_admin: ~2 rows (approximately)
INSERT IGNORE INTO `tb_admin` (`id_user`, `username`, `password`, `roles`) VALUES
	(1, 'admin', 'admin', 'admin'),
	(2, 'yanyan', 'Yanyan123', 'user'),
	(3, 'ujang', '123', 'user'),
	(4, 'abdullah', 'abdullah123', 'user'),
	(5, 'naufal', 'naufal123', 'user'),
	(6, 'aam', '123', 'user');

-- Dumping structure for table alimrugi.tb_bio
DROP TABLE IF EXISTS `tb_bio`;
CREATE TABLE IF NOT EXISTS `tb_bio` (
  `id_user` varchar(30) NOT NULL,
  `nama_user` varchar(30) DEFAULT NULL,
  `jk_user` enum('L','P') DEFAULT NULL,
  `alamat_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table alimrugi.tb_bio: ~2 rows (approximately)
INSERT IGNORE INTO `tb_bio` (`id_user`, `nama_user`, `jk_user`, `alamat_email`) VALUES
	('1', 'NAUFAL', 'L', 'naufal@gmail.com'),
	('2', 'YANYAN', 'L', 'yanyanjulyandi123@gmail.com'),
	('3', 'ujang', 'L', 'ujang@gmail.com'),
	('5', 'naufal', 'L', 'abs'),
	('6', 'aam amin', 'L', 'singandaru');

-- Dumping structure for table alimrugi.tb_mobil
DROP TABLE IF EXISTS `tb_mobil`;
CREATE TABLE IF NOT EXISTS `tb_mobil` (
  `id_mobil` varchar(30) NOT NULL,
  `nm_mobil` varchar(30) NOT NULL,
  `spek_mobil` varchar(600) NOT NULL,
  `harga_mobil` int(30) NOT NULL,
  `gambar` varchar(60) DEFAULT NULL,
  `tanggal` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_mobil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table alimrugi.tb_mobil: ~6 rows (approximately)
INSERT IGNORE INTO `tb_mobil` (`id_mobil`, `nm_mobil`, `spek_mobil`, `harga_mobil`, `gambar`, `tanggal`) VALUES
	('MBL001', 'toyota avanza (2023)', ' Odometer 16,434 km\r\n- Bahan Bakar: Bensin\r\n- Plat B2912UIT\r\n- Pajak 30 Aug 2025\r\n- PERORANGAN tangan 1\r\n- STNK dan BPKB lengkap\r\n- Buku Manual, Buku Service, Kunci Serep LKP\r\n- Dokumen Aman dan Lengkap', 210000000, 'toyota avanza (2023).webp', '2024-06-03 02:18:46'),
	('MBL002', 'hyundai stargazer (2022)', ' Merk : Stargazer\r\nType : Prime\r\nTh : 2022\r\nTransmisi : Matic\r\nWarna : Hitam Metalik\r\nBahan bakar : Bensin', 200000000, 'hyundai stargazer (2022).webp', '2025-06-03 02:18:46'),
	('MBL003', 'datsun go panca (2017)', '- Warna Abu-Abu\r\n- STNK dan BPKB asli & sesuai\r\n- Pajak Agustus 2023\r\n- Plat Ganjil\r\n- Odometer 43725', 80000000, 'datsun go panca (2017).webp', '2025-06-02 02:18:46'),
	('MBL004', 'toyota yaris (2018)', ' - Warna Hitam\r\n- STNK dan BPKB asli & sesuai\r\n- Pajak Panjang September 2025\r\n- Plat Genap\r\n- Odometer 57287', 190000000, 'toyota yaris (2018).webp', '2025-06-01 02:18:46'),
	('MBL005', 'daihatsu ayla (2015)', ' Warna Merah\r\n- STNK dan BPKB asli & sesuai\r\n- Pajak Genap Februari 2024\r\n- Odometer 29847', 81000000, 'daihatsu ayla (2015).webp', '2025-06-02 02:18:46'),
	('MBL006', 'wuling confero s (2020)', '- Warna Putih\r\n- STNK dan BPKB asli & sesuai\r\n- Pajak Ganjil Oktober 2024\r\n- Odometer 45550', 123000000, 'wuling confero s (2020).webp', '2025-06-03 02:18:46');

-- Dumping structure for table alimrugi.tb_penawaran
DROP TABLE IF EXISTS `tb_penawaran`;
CREATE TABLE IF NOT EXISTS `tb_penawaran` (
  `id_penawaran` int(11) NOT NULL AUTO_INCREMENT,
  `nm_mobil` varchar(30) NOT NULL,
  `informasi` varchar(600) NOT NULL,
  `harga_mobil` int(30) NOT NULL,
  `gambar` varchar(60) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_penawaran`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table alimrugi.tb_penawaran: ~0 rows (approximately)
INSERT IGNORE INTO `tb_penawaran` (`id_penawaran`, `nm_mobil`, `informasi`, `harga_mobil`, `gambar`, `id_user`) VALUES
	(1, 'momobilan', ' nama yanyan\r\nno wa 091287284\r\nalamat pasar kemis\r\n ', 200000000, 'wuling confero s (2020).png', 2);

-- Dumping structure for table alimrugi.tb_pesanan
DROP TABLE IF EXISTS `tb_pesanan`;
CREATE TABLE IF NOT EXISTS `tb_pesanan` (
  `id_pesanan` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(50) NOT NULL,
  `id_mobil` varchar(50) NOT NULL,
  `nama_pemesan` varchar(100) NOT NULL,
  `alamat_pemesan` text NOT NULL,
  `no_wa` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `foto_ktp` varchar(255) NOT NULL,
  `tanggal_pesan` date DEFAULT NULL,
  `bukti_bayar` varchar(255) DEFAULT NULL,
  `status` enum('pending','booking','dp 30 persen','lunas') DEFAULT 'pending',
  `harga_total` int(50) DEFAULT NULL,
  `harga_sisa` int(50) DEFAULT NULL,
  PRIMARY KEY (`id_pesanan`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table alimrugi.tb_pesanan: ~4 rows (approximately)
INSERT IGNORE INTO `tb_pesanan` (`id_pesanan`, `id_user`, `id_mobil`, `nama_pemesan`, `alamat_pemesan`, `no_wa`, `email`, `foto_ktp`, `tanggal_pesan`, `bukti_bayar`, `status`, `harga_total`, `harga_sisa`) VALUES
	(41, '2', 'MBL002', 'yanyanj', 'abc', '085603959242', 'yanyan@gmail.com', 'ktp_6843152957eb42.43286237.png', '2025-06-06', 'bukti_68431531113ca0.50547590.png', 'lunas', 200500000, 0),
	(42, '5', 'MBL005', 'naufal', 'abs', '085603959242', 'naufal@gmail.com', 'ktp_684322a4d24cd9.99912942.png', '2025-06-07', 'bukti_6848083ace2560.90210247.png', 'booking', 500000, 81000000),
	(43, '3', 'MBL006', 'ujang', 'jl raya 123', '08977574564', 'ujang@gmail.com', 'ktp_684446cdb99aa8.97335339.png', '2025-06-07', NULL, 'pending', 0, 123500000),
	(44, '6', 'MBL002', 'aam amin', 'singandaru', '085603959242', 'aam@gmail.com', 'ktp_684807c52389c5.65582311.png', '2025-06-10', 'bukti_68480812de3980.99304787.png', 'dp 30 persen', 60500000, 140000000);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
