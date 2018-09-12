-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 08. September 2018 jam 14:33
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_dhezign_apotik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `no_urut` int(5) NOT NULL AUTO_INCREMENT,
  `kode_brg` varchar(100) NOT NULL,
  `kode_lokasi` varchar(100) NOT NULL,
  `nama_brg` varchar(200) NOT NULL,
  `hrg_beli` double NOT NULL,
  `hrg_jual` double NOT NULL,
  `qty` double NOT NULL,
  `jns_brg` varchar(50) NOT NULL,
  PRIMARY KEY (`no_urut`),
  KEY `no_urut` (`no_urut`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=603 ;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`no_urut`, `kode_brg`, `kode_lokasi`, `nama_brg`, `hrg_beli`, `hrg_jual`, `qty`, `jns_brg`) VALUES
(602, '101928374', '1-00-10001', 'paracetamol', 8000, 15000, 17, 'Obat generic');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_keluar`
--

CREATE TABLE IF NOT EXISTS `barang_keluar` (
  `kode_trans` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `kode_brg` varchar(100) NOT NULL,
  `nama_brg` varchar(100) NOT NULL,
  `jml` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_trans`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data untuk tabel `barang_keluar`
--

INSERT INTO `barang_keluar` (`kode_trans`, `tanggal`, `kode_brg`, `nama_brg`, `jml`) VALUES
(17, '2017-09-10', '602', '101928374', '13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE IF NOT EXISTS `pengguna` (
  `id` varchar(10) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `username`, `password`, `status`, `nama`, `level`) VALUES
('1', 'karyawan', 'karyawan', 'karyawan', 'louis', 1),
('2', 'admin', 'admin', 'admin', 'manalu', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
