-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 08 Okt 2015 pada 07.52
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
  `bahaya_proses` int(99) NOT NULL,
  `p` int(1) NOT NULL,
  `s` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=300005 ;

--
-- Dumping data untuk tabel `tkapal_bahaya`
--

INSERT INTO `tkapal_bahaya` (`bahaya_id`, `bahaya_jenisbahaya`, `bahaya_proses`, `p`, `s`) VALUES
(300001, 'kebakaran', 200001, 2, 1),
(300002, 'keenakan', 200002, 0, 0),
(300003, 'kebasahan', 200003, 0, 0),
(300004, 'keujanan', 200001, 1, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tkapal_kapal`
--

CREATE TABLE IF NOT EXISTS `tkapal_kapal` (
`kapal_id` int(10) NOT NULL,
  `kapal_jenis` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100005 ;

--
-- Dumping data untuk tabel `tkapal_kapal`
--

INSERT INTO `tkapal_kapal` (`kapal_id`, `kapal_jenis`) VALUES
(100001, 'kayu'),
(100002, 'baja'),
(100004, 'fiber');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tkapal_proses`
--

CREATE TABLE IF NOT EXISTS `tkapal_proses` (
`proses_id` int(11) NOT NULL,
  `proses_jenis` varchar(50) NOT NULL,
  `proses_proses` varchar(500) NOT NULL,
  `proses_ket` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=200004 ;

--
-- Dumping data untuk tabel `tkapal_proses`
--

INSERT INTO `tkapal_proses` (`proses_id`, `proses_jenis`, `proses_proses`, `proses_ket`) VALUES
(200001, '100001', 'proses 1', 'akl;fjdl;aksjdf'),
(200002, '100001', 'proses 2', 'k;lsdkjfgl;skdfg'),
(200003, '100002', 'proses 1', 'vmzxn,mcnv,zxmc');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tkapal_r`
--

CREATE TABLE IF NOT EXISTS `tkapal_r` (
`r_id` int(11) NOT NULL,
  `r_p` int(1) NOT NULL,
  `r_s` int(1) NOT NULL,
  `r_r` char(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data untuk tabel `tkapal_r`
--

INSERT INTO `tkapal_r` (`r_id`, `r_p`, `r_s`, `r_r`) VALUES
(1, 1, 1, 'N'),
(2, 2, 1, 'L'),
(3, 3, 1, 'L'),
(4, 4, 1, 'M'),
(5, 5, 1, 'H'),
(6, 1, 2, 'L'),
(7, 2, 2, 'L'),
(8, 3, 2, 'M'),
(9, 4, 2, 'H'),
(10, 5, 2, 'H'),
(11, 1, 3, 'M'),
(12, 2, 3, 'M'),
(13, 3, 3, 'H'),
(14, 4, 3, 'H'),
(15, 5, 3, 'E'),
(16, 1, 4, 'H'),
(17, 2, 4, 'H'),
(18, 3, 4, 'E'),
(19, 4, 4, 'E'),
(20, 5, 4, 'E'),
(21, 1, 5, 'H'),
(22, 2, 5, 'E'),
(23, 3, 5, 'E'),
(24, 4, 5, 'E'),
(25, 5, 5, 'E');

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
-- Indexes for table `tkapal_r`
--
ALTER TABLE `tkapal_r`
 ADD PRIMARY KEY (`r_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tkapal_bahaya`
--
ALTER TABLE `tkapal_bahaya`
MODIFY `bahaya_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=300005;
--
-- AUTO_INCREMENT for table `tkapal_kapal`
--
ALTER TABLE `tkapal_kapal`
MODIFY `kapal_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100005;
--
-- AUTO_INCREMENT for table `tkapal_proses`
--
ALTER TABLE `tkapal_proses`
MODIFY `proses_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=200004;
--
-- AUTO_INCREMENT for table `tkapal_r`
--
ALTER TABLE `tkapal_r`
MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
