-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 01 Okt 2015 pada 08.51
-- Versi Server: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_kapal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tkapal_bahaya`
--

CREATE TABLE IF NOT EXISTS `tkapal_bahaya` (
`bahaya_id` int(11) NOT NULL,
  `bahaya_jenisbahaya` varchar(100) NOT NULL,
  `bahaya_proses` int(99) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `tkapal_bahaya`
--

INSERT INTO `tkapal_bahaya` (`bahaya_id`, `bahaya_jenisbahaya`, `bahaya_proses`) VALUES
(1, 'kebakaran', 1),
(2, 'keenakan', 2),
(3, 'kebasahan', 3),
(4, 'keujanan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tkapal_kapal`
--

CREATE TABLE IF NOT EXISTS `tkapal_kapal` (
`kapal_id` int(10) NOT NULL,
  `kapal_jenis` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `tkapal_kapal`
--

INSERT INTO `tkapal_kapal` (`kapal_id`, `kapal_jenis`) VALUES
(1, 'kayu'),
(2, 'baja'),
(3, 'fiber');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tkapal_proses`
--

CREATE TABLE IF NOT EXISTS `tkapal_proses` (
`proses_id` int(11) NOT NULL,
  `proses_jenis` varchar(50) NOT NULL,
  `proses_proses` varchar(500) NOT NULL,
  `proses_ket` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `tkapal_proses`
--

INSERT INTO `tkapal_proses` (`proses_id`, `proses_jenis`, `proses_proses`, `proses_ket`) VALUES
(1, '1', 'proses 1', 'akl;fjdl;aksjdf'),
(2, '1', 'proses 2', 'k;lsdkjfgl;skdfg'),
(3, '2', 'proses 1', 'vmzxn,mcnv,zxmc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tkapal_bahaya`
--
ALTER TABLE `tkapal_bahaya`
 ADD PRIMARY KEY (`bahaya_id`);

--
-- Indexes for table `tkapal_kapal`
--
ALTER TABLE `tkapal_kapal`
 ADD PRIMARY KEY (`kapal_id`);

--
-- Indexes for table `tkapal_proses`
--
ALTER TABLE `tkapal_proses`
 ADD PRIMARY KEY (`proses_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tkapal_bahaya`
--
ALTER TABLE `tkapal_bahaya`
MODIFY `bahaya_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tkapal_kapal`
--
ALTER TABLE `tkapal_kapal`
MODIFY `kapal_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tkapal_proses`
--
ALTER TABLE `tkapal_proses`
MODIFY `proses_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
