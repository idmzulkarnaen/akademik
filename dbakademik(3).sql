-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2018 at 06:39 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbakademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda_akademik`
--

CREATE TABLE `agenda_akademik` (
  `idagenda_akademik` bigint(20) NOT NULL,
  `ta_aktif` int(11) DEFAULT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `tahun_ajaran` varchar(9) DEFAULT NULL,
  `semester` smallint(6) DEFAULT NULL,
  `tanggal_mulai` datetime DEFAULT NULL,
  `tanggal_selesai` datetime DEFAULT NULL,
  `bagian` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agenda_akademik`
--

INSERT INTO `agenda_akademik` (`idagenda_akademik`, `ta_aktif`, `tgl_mulai`, `tgl_selesai`, `keterangan`, `tahun_ajaran`, `semester`, `tanggal_mulai`, `tanggal_selesai`, `bagian`) VALUES
(80, NULL, NULL, NULL, 'Pengajuan Cuti Akademik', '2015/2016', 1, '2015-11-10 17:00:00', '2015-11-11 18:17:00', 'BAAK'),
(139, NULL, NULL, NULL, 'Batas Akhir Pendaftaran Seminar Kerja Praktek', '2015/2016', 1, '2016-02-17 08:20:00', '2016-02-18 09:20:00', 'BAAK');

-- --------------------------------------------------------

--
-- Table structure for table `akses`
--

CREATE TABLE `akses` (
  `NPM` char(15) NOT NULL,
  `PWD` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akses`
--

INSERT INTO `akses` (`NPM`, `PWD`) VALUES
('14.11.0001', '5'),
('14.11.0344', '5'),
('14.11.0345', '5'),
('14.12.0001', '5'),
('14.12.0344', '5'),
('14.12.0345', '5'),
('15.11.0001', '5'),
('15.12.0001', '5'),
('16.11.0001', '5'),
('16.11.0002', '5'),
('16.12.0001', '5'),
('16.12.0002', '5'),
('17.11.0001', '5'),
('17.12.0001', '5');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) DEFAULT NULL,
  `isi_berita` text NOT NULL,
  `hari` varchar(20) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` time(6) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `dibaca` int(11) DEFAULT NULL,
  `tag` varchar(100) DEFAULT NULL,
  `judul_en` varchar(500) DEFAULT NULL,
  `isi_en` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `judul_seo`, `isi_berita`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `judul_en`, `isi_en`) VALUES
(292, NULL, '2010.09.1.011', 'BUKA BERSAMA KELUARGA BESAR AMIKOM PURWOKERTO\r\n', NULL, '<p>Di bulan yang penuh berkah, Ramadhan 1438 H (17/6), Amikom Purwokerto menyelenggarakan kegiatan buka puasa bersama karyawan dan keluarga. Buka puasa bersama ini diikuti tidak kurang dari 200 orang karyawan dan keluarga besar amikom purwokerto. Kegiatan dilaksanakan bertempat di aula kampus ungu.&nbsp; Acara dimulai dengan pembacaan Al Quran surat Al &lsquo;alaq oleh ananda <strong>Aisyah Mulia Permata Akhir (Putri dari Dr. Berlilana, M.Si)</strong></p>  <p>Dalam sambutannya ketua STMIK AMIKOM Purwokerto<strong>, Dr. Berlilana, M.Si</strong> menyampaikan bahwa kegiatan Buka Puasa ini rutin dilakukan setiap bulan Ramadhan sebagai bentuk rasa syukur sekaligus untuk meningkatkan tali silaturahmi antar sesama keluarga besar STMIK AMIKOM Purwokerto. Beliau juga menyampaikan terima kasih yang sebesar-besarnya kepada keluarga karyawan yang senantiasa mendukung perkembangan STMIK AMIKOM Purwokerto.&rsquo;tuturnya&rdquo;</p>  <p>Dalam buka puasa bersama ini juga dilakukan pemberian penghargaan kepada karyawan teladan tahun 2017. Adapun karyawan tersebut antara lain, Kukuh Pambudi (staff humas), Teguh Waluyo (staff Laboran), Sugeng Triyanto (kerumahtanggaan) , Zulia Karini (dosen), dan Yuni Tri Lestari (staff Keuangan).</p> \r\n', NULL, '2017-06-17', '07:15:00.000000', '201706171915.JPG', 0, NULL, NULL, NULL),
(293, NULL, '2010.09.1.011', 'MAHASISWA AMIKOM RAIH 2 EMAS DAN 1 PERAK\r\n', NULL, '<p>Yanwar dwi ramadhan adalah mahasiswa angkatan 2015 program Studi Teknik Informatika. Atlet Pomsae (Jurus) Taekwondo ini kembali mengikuti kejuaraan Nasional Yogyakarta Master Taekwondo Poomsae Championship 2017 di Gor Pangukan Sleman pada Minggu 09 Juli 2017. Pada event ini yanwar berhasil meraih 2 &nbsp;medali Emas di kelas Poomsae Perorangan dan Poomsae Berpasangan serta mendapat 1 medali perak di kelas Poomsae Beregu. Dengan prestasinya sekarang mahasiswa dengan tinggi badan 172 cm ini sanggup meraih prestasi&nbsp; yang membanggakan, setelahnya sebelumnya meraih prestasi di PON XIX 2016 di Jawa Barat dengan 1 medali perak di Poomsae Beregu dan 1 medali Perunggu di Poomsae Perorangan.</p>  <p>Ketua STMIK AMIKOM Purwokerto berharap setiap mahasiswa dapat membawa nama AMIKOM Purwokerto di kancah Nasional maupun Internasional, baik dibidang akademik maupun non akademik.&nbsp; Dengan begitu nama baik AMIKOM Purwokerto akan semakin dikenal luas di masyarakat.</p> \r\n', NULL, '2017-07-10', '04:49:00.000000', '201707101649.jpg', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `IDDOSEN` int(11) NOT NULL,
  `NIK` varchar(20) NOT NULL,
  `NAMA` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`IDDOSEN`, `NIK`, `NAMA`) VALUES
(1, '61005851', 'ABDUL AZIS'),
(2, '61005852', 'ABDUL JAHIR'),
(3, '61005853', 'ABEDNEGO DWI SEPTIADI'),
(4, '61005854', 'ADAM PRAYOGO KUNCORO'),
(5, '61005855', 'ADE NUR HOPIPAH'),
(6, '61005856', 'AGUNG PRASETYO'),
(7, '61005857', 'AGUS PRAMONO'),
(8, '61005858', 'AKTO HARIAWAN'),
(9, '61005859', 'ANDI DWI RIYANTO'),
(10, '61005860', 'ANDIK WIJANARKO'),
(11, '61005861', 'ANUGERAH BAGUS WIJAYA'),
(12, '61005862', 'ARGIYAN DWI PRITAMA'),
(13, '61005863', 'ARIEF ADHY KURNIAWAN'),
(14, '61005864', 'ASEP SURYANTO'),
(15, '61005865', 'AULIA HAMDI'),
(16, '61005866', 'AZHARI SHOUNI BARKAH'),
(17, '61005867', 'BAGUS ADHI KUSUMA'),
(18, '61005868', 'BANU DWI PUTRANTO'),
(19, '61005869', 'BARID HARDIYANTO'),
(20, '61005870', 'BERLILANA'),
(21, '61005871', 'BETI KURNIASIH'),
(22, '61005872', 'CHENDRI IRAWAN SATRIO NUGROHO'),
(23, '61005873', 'CHYNTIA RARAS AJENG WIDIAWATI'),
(24, '61005874', 'DAMRIN ADE'),
(25, '61005875', 'DEBBY UMMUL HIDAYAH'),
(26, '61005876', 'DESTY RAKHMAWATI'),
(27, '61005877', 'DHANAR INTAN SURYA S'),
(28, '61005878', 'DIAS AYU BUDI UTAMI'),
(29, '61005879', 'DIDIT SUHARTONO'),
(30, '61005880', 'DWI KRISBIANTORO'),
(31, '61005881', 'EKA TRIPUSTIKASARI'),
(32, '61005882', 'ELDAS PUSPITARINI'),
(33, '61005883', 'ELY PURNAWATI'),
(34, '61005884', 'FANDY SETYO UTOMO'),
(35, '61005885', 'FIBY NUR AFIANA'),
(36, '61005886', 'FOEL RANDHI YOELIONO'),
(37, '61005887', 'FOEL RANDHI YOELIONO MK'),
(38, '61005888', 'GALUH KUSUMASTUTI'),
(39, '61005889', 'GIAT KARYONO'),
(40, '61005890', 'HELLIK HERMAWAN'),
(41, '61005891', 'HENDRA MARCOS'),
(42, '61005892', 'IKA ROMADONI YUNITA'),
(43, '61005893', 'ILHAM ALBANA'),
(44, '61005894', 'IMAM TAHYUDIN'),
(45, '61005895', 'IRFAN SANTIKO'),
(46, '61005896', 'ITO SETIAWAN'),
(47, '61005897', 'JEFFRI PRAYITNO BANGKIT'),
(48, '61005898', 'KUAT INDARTONO'),
(49, '61005899', 'LINDA PERDANAWANTI'),
(50, '61005900', 'LUZI DWI OKTAVIANA'),
(51, '61005901', 'MASKUR'),
(52, '61005902', 'MELIA DIANINGRUM'),
(53, '61005903', 'MOHAMMAD ARWAN AZIZ'),
(54, '61005904', 'MOHAMMAD IMRON'),
(55, '61005905', 'MUHAMAD AWIET WIEDANTO PRASETYO'),
(56, '61005906', 'MULIASARI PINILIH'),
(57, '61005907', 'NANANG PRADITA'),
(58, '61005908', 'NANDANG HERMANTO'),
(59, '61005909', 'NURFAIZAH'),
(60, '61005910', 'NURUL MEGA SARASWATI'),
(61, '61005911', 'PRAYOGA PRIBADI'),
(62, '61005912', 'PRIMANDANI ARSI'),
(63, '61005913', 'PUJI SARWONO'),
(64, '61005914', 'PURWADI'),
(65, '61005915', 'RAHMAN ROSYIDI'),
(66, '61005916', 'RANGGI PRAHARANINGTYAS AJI'),
(67, '61005917', 'RETNO WALUYO'),
(68, '61005918', 'RIYANTO'),
(69, '61005919', 'RIZAL KRISDIYANTO'),
(70, '61005920', 'RIZKA YUNIARSIH'),
(71, '61005921', 'RIZKI WAHYUDI'),
(72, '61005922', 'RUJIANTO EKO SAPUTRO'),
(73, '61005923', 'SARMINI'),
(74, '61005924', 'SEPTI FAJARWATI'),
(75, '61005925', 'SETO NUGROHO PUTRO'),
(76, '61005926', 'SHODIQ KHALIDY'),
(77, '61005927', 'SITARESMI WAHYU HANDANI'),
(78, '61005928', 'SLAMET NURDIN'),
(79, '61005929', 'SRIYANTO'),
(80, '61005930', 'SULISWANINGSIH'),
(81, '61005931', 'TAQWA HARIGUNA'),
(82, '61005932', 'TARWOTO'),
(83, '61005933', 'TONI ANWAR'),
(84, '61005934', 'TRI ASTUTI'),
(85, '61005935', 'TRIAS BRATAKUSUMA'),
(86, '61005936', 'TYAS PRATAMA PUJA KUSUMA'),
(87, '61005937', 'UMTI MARDIYATI'),
(88, '61005938', 'USWATUN HASANAH'),
(89, '61005939', 'WALUYO'),
(90, '61005940', 'WIDHAYANA WARDHANY'),
(91, '61005941', 'WIGA MAULANA BAIHAQI'),
(92, '61005942', 'YANWI MUDRIKAH'),
(93, '61005943', 'YULI PURWATI'),
(94, '61005944', 'YUSMEDI NURFAIZAL'),
(95, '61005945', 'YUSYIDA MUNSAIDAH'),
(96, '61005946', 'ZANUAR RIFAI'),
(97, '61005947', 'ZULIA KARINI');

-- --------------------------------------------------------

--
-- Table structure for table `jadwalperkuliahan`
--

CREATE TABLE `jadwalperkuliahan` (
  `IDJADWAL` int(11) NOT NULL,
  `IDKULIAH` bigint(20) NOT NULL,
  `HARI` varchar(50) DEFAULT NULL,
  `JAM` smallint(6) DEFAULT NULL,
  `RUANG` varchar(10) DEFAULT NULL,
  `KETERANGAN` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwalperkuliahan`
--

INSERT INTO `jadwalperkuliahan` (`IDJADWAL`, `IDKULIAH`, `HARI`, `JAM`, `RUANG`, `KETERANGAN`) VALUES
(1, 8150, 'Senin', 3, '2.2', NULL),
(2, 8150, 'Senin', 4, 'LAB 1', NULL),
(3, 8151, 'Selasa', 5, '3.2', NULL),
(4, 8151, 'Selasa', 6, 'LAB 3', NULL),
(5, 8153, 'Senin', 2, NULL, NULL),
(6, 8153, 'Senin', NULL, NULL, NULL),
(7, 8154, 'Senin', NULL, NULL, NULL),
(8, 8154, 'Senin', NULL, NULL, NULL),
(9, 8155, 'Selasa', 2, NULL, NULL),
(10, 8156, 'Selasa', 3, NULL, NULL),
(11, 8157, 'Selasa', 1, '2.1', NULL),
(12, 8158, 'Selasa', 1, '2.7', NULL),
(13, 8159, 'Selasa', 1, '2.1', NULL),
(14, 8160, 'Selasa', 1, '2.7', NULL),
(15, 8161, 'Selasa', 1, '2.1', NULL),
(16, 8162, 'Selasa', 1, '2.7', NULL),
(17, 8163, 'Kamis', 6, '2.5', NULL),
(18, 8164, 'Jumat', 7, 'LAB 5', NULL),
(19, 8165, 'Kamis', 6, '2.5', NULL),
(20, 8166, 'Jumat', 7, 'LAB 5', NULL),
(21, 8167, 'Kamis', 6, '2.5', NULL),
(22, 8168, 'Jumat', 7, 'LAB 5', NULL),
(23, 8169, 'Kamis', 6, '2.5', NULL),
(24, 8170, 'Jumat', 7, 'LAB 5', NULL),
(25, 8171, 'Kamis', 6, '2.5', NULL),
(26, 8172, 'Jumat', 7, 'LAB 5', NULL),
(27, 8173, 'Kamis', 6, '2.5', NULL),
(28, 8174, 'Jumat', 7, 'LAB 5', NULL),
(29, 8175, 'Kamis', 6, '2.5', NULL),
(30, 8176, 'Jumat', 7, 'LAB 5', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_ujian`
--

CREATE TABLE `jadwal_ujian` (
  `no_id` int(11) NOT NULL,
  `npm` varchar(15) DEFAULT NULL,
  `kode_mk` char(10) DEFAULT NULL,
  `semester` smallint(6) DEFAULT NULL,
  `thn_ajaran` char(9) DEFAULT NULL,
  `jenis_ujian` char(3) DEFAULT NULL,
  `tgl_ujian` date DEFAULT NULL,
  `ruang` varchar(10) DEFAULT NULL,
  `no_urut_kursi` smallint(6) DEFAULT NULL,
  `no_identifi` int(11) DEFAULT NULL,
  `jam_ujian` varchar(5) DEFAULT NULL,
  `kelas` int(11) DEFAULT NULL,
  `presensi` char(1) DEFAULT NULL,
  `id_master` bigint(20) DEFAULT NULL,
  `pelanggaran` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal_ujian`
--

INSERT INTO `jadwal_ujian` (`no_id`, `npm`, `kode_mk`, `semester`, `thn_ajaran`, `jenis_ujian`, `tgl_ujian`, `ruang`, `no_urut_kursi`, `no_identifi`, `jam_ujian`, `kelas`, `presensi`, `id_master`, `pelanggaran`) VALUES
(180517, '14.11.0344', NULL, NULL, NULL, NULL, NULL, NULL, 7, 7812, NULL, NULL, NULL, 1446, NULL),
(180518, '14.11.0344', NULL, NULL, NULL, NULL, NULL, NULL, 9, 7812, NULL, NULL, NULL, 1447, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_ujian_master`
--

CREATE TABLE `jadwal_ujian_master` (
  `id_trans` bigint(20) NOT NULL,
  `tahun_aktif` smallint(6) DEFAULT NULL,
  `jenis_ujian` char(3) DEFAULT NULL,
  `tgl_ujian` date DEFAULT NULL,
  `id_kelas` bigint(20) DEFAULT NULL,
  `ruang` varchar(10) DEFAULT NULL,
  `token` varchar(20) DEFAULT NULL,
  `pengawas` varchar(20) DEFAULT NULL,
  `jam_ujian` smallint(6) DEFAULT NULL,
  `tamp_npm` varchar(2000) DEFAULT NULL,
  `tamp_kursi` varchar(2000) DEFAULT NULL,
  `aktivasi_pengawas` bit(1) DEFAULT NULL,
  `no_referensi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal_ujian_master`
--

INSERT INTO `jadwal_ujian_master` (`id_trans`, `tahun_aktif`, `jenis_ujian`, `tgl_ujian`, `id_kelas`, `ruang`, `token`, `pengawas`, `jam_ujian`, `tamp_npm`, `tamp_kursi`, `aktivasi_pengawas`, `no_referensi`) VALUES
(4434, 47, 'uts', '2017-05-20', 5146, 'R.2.2', '51461', NULL, 7, '16.11.0047, 13.11.0178, 13.11.0239, 14.11.0056, 13.11.0197, 13.11.0256, 13.11.0063, 13.11.0238, 13.11.0360, 16.11.0336, 15.11.0066, 15.11.0002, 14.11.0031, 16.11.0034, 16.11.0113, 16.11.0354, 16.11.0018, \r\n', '1117100714011302030916081204050615\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jam`
--

CREATE TABLE `jam` (
  `idJam` smallint(6) NOT NULL,
  `jam1` char(5) DEFAULT NULL,
  `jam2` char(5) DEFAULT NULL,
  `DIPAKAI_PDDR` bit(1) DEFAULT NULL,
  `ISTIRAHAT` bit(1) DEFAULT NULL,
  `jam` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jam`
--

INSERT INTO `jam` (`idJam`, `jam1`, `jam2`, `DIPAKAI_PDDR`, `ISTIRAHAT`, `jam`) VALUES
(1, '07.00', '08.40', b'1111111111111111111111111111111', b'1111111111111111111111111111111', '07.00'),
(2, '08.50', '10.30', b'1111111111111111111111111111111', b'1111111111111111111111111111111', '08.50'),
(3, '10.40', '12.20', b'1111111111111111111111111111111', b'1111111111111111111111111111111', '10.40'),
(4, '12.30', '14.10', b'1111111111111111111111111111111', b'1111111111111111111111111111111', '12.30'),
(5, '14.20', '16.00', b'1111111111111111111111111111111', b'1111111111111111111111111111111', '14.20'),
(6, '16.10', '17.50', b'1111111111111111111111111111111', b'1111111111111111111111111111111', '16.10'),
(7, '18.00', '19.40', b'1111111111111111111111111111111', b'1111111111111111111111111111111', '18.00'),
(8, '19.50', '21.30', b'1111111111111111111111111111111', b'1111111111111111111111111111111', '19.50');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `KD_JUR` char(10) NOT NULL,
  `JURUSAN` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`KD_JUR`, `JURUSAN`) VALUES
('55201', 'Teknik Informatika'),
('57201', 'Sistem Informasi');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `IDKELAS` int(11) NOT NULL,
  `KELAS` varchar(12) NOT NULL,
  `NAMAKELAS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`IDKELAS`, `KELAS`, `NAMAKELAS`) VALUES
(1, '5684', 'TI14A'),
(2, '5685', 'TI14B'),
(3, '5686', 'TI14C'),
(4, '5687', 'TI14D'),
(5, '5688', 'TI14E'),
(6, '5689', 'TI14F'),
(7, '5690', 'TI14S');

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `ID_KRS` bigint(20) NOT NULL,
  `NPM` char(10) NOT NULL,
  `KODE` char(10) NOT NULL,
  `SEMESTER` smallint(6) NOT NULL,
  `THN_AJARAN` char(9) NOT NULL,
  `NILAI` char(1) DEFAULT NULL,
  `KELAS` varchar(50) DEFAULT NULL,
  `AMBILKE` smallint(6) DEFAULT NULL,
  `TGL_ISINILAI` datetime DEFAULT NULL,
  `KELAS_T` varchar(50) DEFAULT NULL,
  `KELAS_P` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`ID_KRS`, `NPM`, `KODE`, `SEMESTER`, `THN_AJARAN`, `NILAI`, `KELAS`, `AMBILKE`, `TGL_ISINILAI`, `KELAS_T`, `KELAS_P`) VALUES
(487246, '14.11.0344', 'IF102', 1, '2016/2017', 'A', '5684', 1, NULL, '8150', NULL),
(487247, '14.11.0344', 'IF103', 1, '2016/2017', 'B', '5685', 1, NULL, '8138', NULL),
(487248, '14.11.0345', 'IF102', 1, '2016/2017', 'A', '5684', 1, NULL, '8150', NULL),
(487249, '14.11.0345', 'IF103', 1, '2016/2017', 'B', '5685', 1, NULL, '8138', NULL),
(487250, '14.11.0344', 'TI042', 1, '2017/2018', 'B', '8150', 2, '2017-11-14 00:00:00', '8150', NULL),
(487251, '14.11.0344', 'TI038', 2, '2015/2016', 'A', '5685', 1, '2017-11-14 00:00:00', '8138', NULL),
(487252, '14.11.0344', 'TI043', 1, '2017/2018', 'A', '8151', 1, '2017-11-14 00:00:00', '8150', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `krs_sementara`
--

CREATE TABLE `krs_sementara` (
  `ID_KRS` int(11) NOT NULL,
  `NPM` char(15) NOT NULL,
  `KODE` char(10) NOT NULL,
  `SEMESTER` smallint(6) NOT NULL,
  `THN_AJARAN` char(9) NOT NULL,
  `NILAI` char(1) DEFAULT NULL,
  `KELAS` varchar(10) DEFAULT NULL,
  `AMBILKE` smallint(6) DEFAULT NULL,
  `RUJIAN` varchar(10) DEFAULT NULL,
  `STATUS_KIRIMSMS` char(1) DEFAULT NULL,
  `NILAIMID` char(1) DEFAULT NULL,
  `KETERANGAN` varchar(500) DEFAULT NULL,
  `BOLEH` tinyint(1) DEFAULT NULL,
  `DIAMBIL` tinyint(1) DEFAULT NULL,
  `AKTIVASI` tinyint(1) DEFAULT NULL,
  `ISI_KRS` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `krs_sementara`
--

INSERT INTO `krs_sementara` (`ID_KRS`, `NPM`, `KODE`, `SEMESTER`, `THN_AJARAN`, `NILAI`, `KELAS`, `AMBILKE`, `RUJIAN`, `STATUS_KIRIMSMS`, `NILAIMID`, `KETERANGAN`, `BOLEH`, `DIAMBIL`, `AKTIVASI`, `ISI_KRS`) VALUES
(10, '14.11.0344', 'AP101', 6, '2017/2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0),
(16, '14.11.0344', 'IF131', 6, '2017/2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(17, '14.11.0344', 'IF132', 6, '2017/2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(18, '14.11.0344', 'IF133', 6, '2017/2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(19, '14.11.0344', 'IF145', 6, '2017/2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(20, '14.11.0344', 'IF146', 6, '2017/2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kuliah`
--

CREATE TABLE `kuliah` (
  `KODE` char(10) NOT NULL,
  `MKL` varchar(30) NOT NULL,
  `SKS` smallint(6) NOT NULL,
  `SEM1` smallint(6) NOT NULL,
  `SEM2` smallint(6) NOT NULL,
  `JUR` varchar(20) NOT NULL,
  `MULAI` int(11) NOT NULL,
  `SAMPAI` int(11) NOT NULL,
  `Ujian` varchar(20) NOT NULL,
  `Jenis` char(1) NOT NULL,
  `Title` varchar(30) NOT NULL,
  `KESETARAAN` varchar(20) NOT NULL,
  `SKSP` smallint(6) NOT NULL,
  `SIFAT_MK` char(1) NOT NULL,
  `SINGKATAN` varchar(20) NOT NULL,
  `SILABUS` varchar(20) NOT NULL,
  `TUJUAN` varchar(20) NOT NULL,
  `TGL_CREATE` datetime NOT NULL,
  `NAMA_USER` varchar(20) NOT NULL,
  `TANPA_KELAS` smallint(6) NOT NULL,
  `KD_JUR` char(10) NOT NULL,
  `aktif` char(1) NOT NULL,
  `id_mkl` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kuliah`
--

INSERT INTO `kuliah` (`KODE`, `MKL`, `SKS`, `SEM1`, `SEM2`, `JUR`, `MULAI`, `SAMPAI`, `Ujian`, `Jenis`, `Title`, `KESETARAAN`, `SKSP`, `SIFAT_MK`, `SINGKATAN`, `SILABUS`, `TUJUAN`, `TGL_CREATE`, `NAMA_USER`, `TANPA_KELAS`, `KD_JUR`, `aktif`, `id_mkl`) VALUES
('AP101', 'Sikap Mental Amikom ', 2, 1, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Sikap Mental Amikom ', '', 0, 'A', 'AP101 ', 'NULL', 'NULL', '2017-12-21 13:04:28', 'prodi', 0, '55201', '1', '8'),
('AP102', 'Pendidikan Agama ', 3, 1, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Pendidikan Agama ', '', 0, 'A', 'AP102 ', 'NULL', 'NULL', '2017-12-21 13:04:28', 'prodi', 0, '55201', '1', '7'),
('AP201', 'Bahasa Indonesia ', 3, 7, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Bahasa Indonesia ', '', 0, 'A', 'AP201 ', 'NULL', 'NULL', '2017-12-21 13:04:31', 'prodi', 0, '55201', '1', '57'),
('AP202', 'Pendidikan Pancasila dan Kewar', 3, 1, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Pendidikan Pancasila dan Kewar', '', 0, 'A', 'AP202 ', 'NULL', 'NULL', '2017-12-21 13:04:28', 'prodi', 0, '55201', '1', '6'),
('IF101', 'Bahasa Inggris I ', 2, 3, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Bahasa Inggris I ', '', 0, 'A', 'IF101 ', 'NULL', 'NULL', '2017-12-21 13:04:29', 'prodi', 0, '55201', '1', '28'),
('IF102', 'Bahasa Inggris II ', 2, 4, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Bahasa Inggris II ', '', 0, 'A', 'IF102 ', 'NULL', 'NULL', '2017-12-21 13:04:30', 'prodi', 0, '55201', '1', '33'),
('IF103', 'Kalkulus 1 ', 3, 1, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Kalkulus 1 ', '', 0, 'A', 'IF103 ', 'NULL', 'NULL', '2017-12-21 13:04:28', 'prodi', 0, '55201', '1', '9'),
('IF104', 'Kalkulus 2 ', 3, 2, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Kalkulus 2 ', '', 0, 'A', 'IF104 ', 'NULL', 'NULL', '2017-12-21 13:04:29', 'prodi', 0, '55201', '1', '19'),
('IF105', 'Pemrograman Web ', 3, 1, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Pemrograman Web ', '', 0, 'A', 'IF105 ', 'NULL', 'NULL', '2017-12-21 13:04:28', 'prodi', 0, '55201', '1', '10'),
('IF106', 'Algoritma dan Struktur Data  ', 3, 1, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Algoritma dan Struktur Data  ', '', 0, 'A', 'IF106 ', 'NULL', 'NULL', '2017-12-21 13:04:28', 'prodi', 0, '55201', '1', '11'),
('IF107', 'Arsitektur dan Organisasi Komp', 3, 1, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Arsitektur dan Organisasi Komp', '', 0, 'A', 'IF107 ', 'NULL', 'NULL', '2017-12-21 13:04:28', 'prodi', 0, '55201', '1', '12'),
('IF108', 'Sistem Basis Data ', 4, 1, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Sistem Basis Data ', '', 0, 'A', 'IF108 ', 'NULL', 'NULL', '2017-12-21 13:04:28', 'prodi', 0, '55201', '1', '13'),
('IF109', 'Pemrograman Berorientasi Objek', 4, 2, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Pemrograman Berorientasi Objek', '', 0, 'A', 'IF109 ', 'NULL', 'NULL', '2017-12-21 13:04:28', 'prodi', 0, '55201', '1', '14'),
('IF110', 'Statistik Probabilitas ', 3, 2, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Statistik Probabilitas ', '', 0, 'A', 'IF110 ', 'NULL', 'NULL', '2017-12-21 13:04:29', 'prodi', 0, '55201', '1', '15'),
('IF111', 'Representasi dan Penalaran ', 3, 2, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Representasi dan Penalaran ', '', 0, 'A', 'IF111 ', 'NULL', 'NULL', '2017-12-21 13:04:29', 'prodi', 0, '55201', '1', '16'),
('IF112', 'Logika Digital dan Sistem Digi', 3, 2, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Logika Digital dan Sistem Digi', '', 0, 'A', 'IF112 ', 'NULL', 'NULL', '2017-12-21 13:04:29', 'prodi', 0, '55201', '1', '17'),
('IF113', 'Aljabar Linier ', 3, 2, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Aljabar Linier ', '', 0, 'A', 'IF113 ', 'NULL', 'NULL', '2017-12-21 13:04:29', 'prodi', 0, '55201', '1', '18'),
('IF114', 'Matematika Diskret ', 4, 2, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Matematika Diskret ', '', 0, 'A', 'IF114 ', 'NULL', 'NULL', '2017-12-21 13:04:29', 'prodi', 0, '55201', '1', '20'),
('IF115', 'Pembelajaran Mesin ', 4, 3, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Pembelajaran Mesin ', '', 0, 'A', 'IF115 ', 'NULL', 'NULL', '2017-12-21 13:04:29', 'prodi', 0, '55201', '1', '21'),
('IF116', 'Grafika Komputer ', 3, 3, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Grafika Komputer ', '', 0, 'A', 'IF116 ', 'NULL', 'NULL', '2017-12-21 13:04:29', 'prodi', 0, '55201', '1', '22'),
('IF117', 'Sistem Operasi ', 3, 3, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Sistem Operasi ', '', 0, 'A', 'IF117 ', 'NULL', 'NULL', '2017-12-21 13:04:29', 'prodi', 0, '55201', '1', '23'),
('IF118', 'Pemrograman .Net ', 3, 3, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Pemrograman .Net ', '', 0, 'A', 'IF118 ', 'NULL', 'NULL', '2017-12-21 13:04:29', 'prodi', 0, '55201', '1', '24'),
('IF119', 'Mikroprosessor ', 3, 3, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Mikroprosessor ', '', 0, 'A', 'IF119 ', 'NULL', 'NULL', '2017-12-21 13:04:29', 'prodi', 0, '55201', '1', '25'),
('IF120', 'Jaringan Komputer ', 3, 3, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Jaringan Komputer ', '', 0, 'A', 'IF120 ', 'NULL', 'NULL', '2017-12-21 13:04:29', 'prodi', 0, '55201', '1', '26'),
('IF121', 'Pendidikan Anti Korupsi ', 2, 3, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Pendidikan Anti Korupsi ', '', 0, 'A', 'IF121 ', 'NULL', 'NULL', '2017-12-21 13:04:29', 'prodi', 0, '55201', '1', '27'),
('IF122', 'Bahasa Assembly ', 3, 4, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Bahasa Assembly ', '', 0, 'A', 'IF122 ', 'NULL', 'NULL', '2017-12-21 13:04:29', 'prodi', 0, '55201', '1', '29'),
('IF123', 'Kriptografi ', 2, 4, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Kriptografi ', '', 0, 'A', 'IF123 ', 'NULL', 'NULL', '2017-12-21 13:04:29', 'prodi', 0, '55201', '1', '30'),
('IF124', 'Sistem Terdistribusi ', 3, 4, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Sistem Terdistribusi ', '', 0, 'A', 'IF124 ', 'NULL', 'NULL', '2017-12-21 13:04:29', 'prodi', 0, '55201', '1', '31'),
('IF125', 'Rekayasa Perangkat Lunak ', 2, 4, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Rekayasa Perangkat Lunak ', '', 0, 'A', 'IF125 ', 'NULL', 'NULL', '2017-12-21 13:04:29', 'prodi', 0, '55201', '1', '32'),
('IF126', 'Pemrograman logik dan semantik', 3, 4, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Pemrograman logik dan semantik', '', 0, 'A', 'IF126 ', 'NULL', 'NULL', '2017-12-21 13:04:30', 'prodi', 0, '55201', '1', '34'),
('IF127', 'Multimedia ', 3, 4, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Multimedia ', '', 0, 'A', 'IF127 ', 'NULL', 'NULL', '2017-12-21 13:04:30', 'prodi', 0, '55201', '1', '35'),
('IF128', 'Interaksi Manusia dan Komputer', 2, 5, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Interaksi Manusia dan Komputer', '', 0, 'A', 'IF128 ', 'NULL', 'NULL', '2017-12-21 13:04:30', 'prodi', 0, '55201', '1', '39'),
('IF129', 'Pengolahan Citra Digital ', 3, 5, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Pengolahan Citra Digital ', '', 0, 'A', 'IF129 ', 'NULL', 'NULL', '2017-12-21 13:04:30', 'prodi', 0, '55201', '1', '40'),
('IF130', 'Metode Pengembangan Perangkat ', 3, 5, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Metode Pengembangan Perangkat ', '', 0, 'A', 'IF130 ', 'NULL', 'NULL', '2017-12-21 13:04:30', 'prodi', 0, '55201', '1', '41'),
('IF131', 'Cloud Computing ', 2, 5, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Cloud Computing ', '', 0, 'A', 'IF131 ', 'NULL', 'NULL', '2017-12-21 13:04:30', 'prodi', 0, '55201', '1', '42'),
('IF132', 'Teori Graf ', 3, 5, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Teori Graf ', '', 0, 'A', 'IF132 ', 'NULL', 'NULL', '2017-12-21 13:04:30', 'prodi', 0, '55201', '1', '43'),
('IF133', 'Keamanan Informasi dan Jaringa', 3, 5, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Keamanan Informasi dan Jaringa', '', 0, 'A', 'IF133 ', 'NULL', 'NULL', '2017-12-21 13:04:30', 'prodi', 0, '55201', '1', '44'),
('IF134', 'Teori Otomata ', 3, 6, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Teori Otomata ', '', 0, 'A', 'IF134 ', 'NULL', 'NULL', '2017-12-21 13:04:30', 'prodi', 0, '55201', '1', '48'),
('IF135', 'Metodologi Penelitian ', 3, 6, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Metodologi Penelitian ', '', 0, 'A', 'IF135 ', 'NULL', 'NULL', '2017-12-21 13:04:30', 'prodi', 0, '55201', '1', '49'),
('IF136', 'Temu Balik Informasi ', 3, 6, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Temu Balik Informasi ', '', 0, 'A', 'IF136 ', 'NULL', 'NULL', '2017-12-21 13:04:30', 'prodi', 0, '55201', '1', '50'),
('IF137', 'Kerja Praktek ', 3, 6, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Kerja Praktek ', '', 0, 'A', 'IF137 ', 'NULL', 'NULL', '2017-12-21 13:04:30', 'prodi', 0, '55201', '1', '51'),
('IF138', 'Pengenalan Sistem Informasi  ', 2, 6, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Pengenalan Sistem Informasi  ', '', 0, 'A', 'IF138 ', 'NULL', 'NULL', '2017-12-21 13:04:31', 'prodi', 0, '55201', '1', '53'),
('IF139', 'Isu Sosial dan Etika Profesi ', 2, 6, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Isu Sosial dan Etika Profesi ', '', 0, 'A', 'IF139 ', 'NULL', 'NULL', '2017-12-21 13:04:31', 'prodi', 0, '55201', '1', '52'),
('IF140', 'Technopreneur ', 2, 7, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Technopreneur ', '', 0, 'A', 'IF140 ', 'NULL', 'NULL', '2017-12-21 13:04:31', 'prodi', 0, '55201', '1', '58'),
('IF141', 'Digital Forensic ', 3, 7, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Digital Forensic ', '', 0, 'A', 'IF141 ', 'NULL', 'NULL', '2017-12-21 13:04:31', 'prodi', 0, '55201', '1', '59'),
('IF142', 'Pemrograman Mobile 1   ', 4, 4, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Pemrograman Mobile 1   ', '', 0, 'A', 'IF142 ', 'NULL', 'NULL', '2017-12-21 13:04:30', 'prodi', 0, '55201', '1', '36'),
('IF143', 'Pemrosesan Bahasa Alami ', 4, 4, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Pemrosesan Bahasa Alami ', '', 0, 'A', 'IF143 ', 'NULL', 'NULL', '2017-12-21 13:04:30', 'prodi', 0, '55201', '1', '37'),
('IF144', 'Visualisasi 2D ', 4, 4, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Visualisasi 2D ', '', 0, 'A', 'IF144 ', 'NULL', 'NULL', '2017-12-21 13:04:30', 'prodi', 0, '55201', '1', '38'),
('IF145', 'Pemrograman Mobile 2 ', 4, 5, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Pemrograman Mobile 2 ', '', 0, 'A', 'IF145 ', 'NULL', 'NULL', '2017-12-21 13:04:30', 'prodi', 0, '55201', '1', '45'),
('IF146', 'Agent ', 4, 5, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Agent ', '', 0, 'A', 'IF146 ', 'NULL', 'NULL', '2017-12-21 13:04:30', 'prodi', 0, '55201', '1', '46'),
('IF147', 'Visualisasi 3D ', 4, 5, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Visualisasi 3D ', '', 0, 'A', 'IF147 ', 'NULL', 'NULL', '2017-12-21 13:04:30', 'prodi', 0, '55201', '1', '47'),
('IF148', 'Pemrograman Game Mobile', 4, 6, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Pemrograman Game Mobile', '', 0, 'A', 'IF148 ', 'NULL', 'NULL', '2017-12-21 13:04:31', 'prodi', 0, '55201', '1', '54'),
('IF149', 'Visi Komputer', 4, 6, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Visi Komputer', '', 0, 'A', 'IF149 ', 'NULL', 'NULL', '2017-12-21 13:04:31', 'prodi', 0, '55201', '1', '55'),
('IF150', 'Animasi Komputer', 4, 6, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Animasi Komputer', '', 0, 'A', 'IF150 ', 'NULL', 'NULL', '2017-12-21 13:04:31', 'prodi', 0, '55201', '1', '56'),
('IF151', 'Skripsi ', 6, 7, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Skripsi ', '', 0, 'A', 'IF151 ', 'NULL', 'NULL', '2017-12-21 13:04:31', 'prodi', 0, '55201', '1', '60'),
('SI 201', 'Algoritma dan Pemrograman ', 4, 1, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Algoritma dan Pemrograman ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 201 ', 'NULL', 'NULL', '2017-12-27 00:49:45', 'prodi', 0, '57201', '1', '61'),
('SI 202', 'Sistem Manajemen Basis Data ', 4, 1, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Sistem Manajemen Basis Data ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 202 ', 'NULL', 'NULL', '2017-12-27 00:49:45', 'prodi', 0, '57201', '1', '62'),
('SI 203', 'Teori Sistem Informasi ', 3, 1, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Teori Sistem Informasi ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 203 ', 'NULL', 'NULL', '2017-12-27 00:49:45', 'prodi', 0, '57201', '1', '64'),
('SI 204', 'Manajemen Bisnis ', 2, 1, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Manajemen Bisnis ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 204 ', 'NULL', 'NULL', '2017-12-27 00:49:45', 'prodi', 0, '57201', '1', '65'),
('SI 205', 'Matematika Diskrit ', 3, 1, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Matematika Diskrit ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 205 ', 'NULL', 'NULL', '2017-12-27 00:49:45', 'prodi', 0, '57201', '1', '66'),
('SI 206', 'Pengantar Teknologi Informasi ', 3, 1, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Pengantar Teknologi Informasi ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 206 ', 'NULL', 'NULL', '2017-12-27 00:49:46', 'prodi', 0, '57201', '1', '67'),
('SI 207', 'Aplikasi Komputer  ', 3, 1, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Aplikasi Komputer  ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 207 ', 'NULL', 'NULL', '2017-12-27 00:49:46', 'prodi', 0, '57201', '1', '68'),
('SI 208', 'Analisis dan Desain Sistem Inf', 4, 2, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Analisis dan Desain Sistem Inf', '6c3e226b4d4795d518ab', 0, 'A', 'SI 208 ', 'NULL', 'NULL', '2017-12-27 00:49:46', 'prodi', 0, '57201', '1', '69'),
('SI 209', 'Pemrograman Basis Data ', 4, 2, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Pemrograman Basis Data ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 209 ', 'NULL', 'NULL', '2017-12-27 00:49:46', 'prodi', 0, '57201', '1', '70'),
('SI 210', 'Sistem Operasi ', 3, 2, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Sistem Operasi ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 210 ', 'NULL', 'NULL', '2017-12-27 00:49:46', 'prodi', 0, '57201', '1', '71'),
('SI 211', 'Aljabar Linear dan Matriks ', 2, 2, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Aljabar Linear dan Matriks ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 211 ', 'NULL', 'NULL', '2017-12-27 00:49:46', 'prodi', 0, '57201', '1', '72'),
('SI 212', 'Desain dan Manajemen Bisnis ', 3, 2, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Desain dan Manajemen Bisnis ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 212 ', 'NULL', 'NULL', '2017-12-27 00:49:47', 'prodi', 0, '57201', '1', '73'),
('SI 213', 'Infrastruktur Teknologi Inform', 3, 2, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Infrastruktur Teknologi Inform', '6c3e226b4d4795d518ab', 0, 'A', 'SI 213 ', 'NULL', 'NULL', '2017-12-27 00:49:47', 'prodi', 0, '57201', '1', '75'),
('SI 214', 'Pemrograman Berorientasi Objek', 3, 3, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Pemrograman Berorientasi Objek', '6c3e226b4d4795d518ab', 0, 'A', 'SI 214 ', 'NULL', 'NULL', '2017-12-27 00:49:47', 'prodi', 0, '57201', '1', '76'),
('SI 215', 'Jaringan Komputer ', 3, 3, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Jaringan Komputer ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 215 ', 'NULL', 'NULL', '2017-12-27 00:49:47', 'prodi', 0, '57201', '1', '77'),
('SI 216', 'Pemrograman Web ', 4, 3, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Pemrograman Web ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 216 ', 'NULL', 'NULL', '2017-12-27 00:49:47', 'prodi', 0, '57201', '1', '78'),
('SI 217', 'Dasar-dasar Pengembangan Peran', 3, 3, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Dasar-dasar Pengembangan Peran', '6c3e226b4d4795d518ab', 0, 'A', 'SI 217 ', 'NULL', 'NULL', '2017-12-27 00:49:47', 'prodi', 0, '57201', '1', '80'),
('SI 218', 'Enterprise Resource Management', 4, 3, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Enterprise Resource Management', '6c3e226b4d4795d518ab', 0, 'A', 'SI 218 ', 'NULL', 'NULL', '2017-12-27 00:49:48', 'prodi', 0, '57201', '1', '81'),
('SI 219', 'Bahasa Inggris 1 ', 2, 3, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Bahasa Inggris 1 ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 219 ', 'NULL', 'NULL', '2017-12-27 00:49:48', 'prodi', 0, '57201', '1', '82'),
('SI 220', 'Pemrograman Mobile ', 4, 4, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Pemrograman Mobile ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 220 ', 'NULL', 'NULL', '2017-12-27 00:49:48', 'prodi', 0, '57201', '1', '83'),
('SI 221', 'Information Technology ethic, ', 3, 4, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Information Technology ethic, ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 221 ', 'NULL', 'NULL', '2017-12-27 00:49:48', 'prodi', 0, '57201', '1', '84'),
('SI 222', 'Interaksi Manusia dan Komputer', 3, 4, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Interaksi Manusia dan Komputer', '6c3e226b4d4795d518ab', 0, 'A', 'SI 222 ', 'NULL', 'NULL', '2017-12-27 00:49:48', 'prodi', 0, '57201', '1', '85'),
('SI 223', 'Data Mining and Data Warehouse', 3, 4, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Data Mining and Data Warehouse', '6c3e226b4d4795d518ab', 0, 'A', 'SI 223 ', 'NULL', 'NULL', '2017-12-27 00:49:48', 'prodi', 0, '57201', '1', '86'),
('SI 224', 'Bahasa Inggris 2 ', 2, 4, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Bahasa Inggris 2 ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 224 ', 'NULL', 'NULL', '2017-12-27 00:49:48', 'prodi', 0, '57201', '1', '88'),
('SI 225', 'Pemrograman Visual ', 4, 4, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Pemrograman Visual ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 225 ', 'NULL', 'NULL', '2017-12-27 00:49:48', 'prodi', 0, '57201', '1', '89'),
('SI 226', 'Keamanan Sistem Informasi ', 3, 5, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Keamanan Sistem Informasi ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 226 ', 'NULL', 'NULL', '2017-12-27 00:49:48', 'prodi', 0, '57201', '1', '90'),
('SI 227', 'Statistik ', 3, 5, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Statistik ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 227 ', 'NULL', 'NULL', '2017-12-27 00:49:49', 'prodi', 0, '57201', '1', '91'),
('SI 228', 'Kecerdasan Bisnis ', 3, 5, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Kecerdasan Bisnis ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 228 ', 'NULL', 'NULL', '2017-12-27 00:49:49', 'prodi', 0, '57201', '1', '92'),
('SI 229', 'Etika Profesi SI ', 2, 5, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Etika Profesi SI ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 229 ', 'NULL', 'NULL', '2017-12-27 00:49:49', 'prodi', 0, '57201', '1', '93'),
('SI 230', 'Metodologi Penelitian ', 3, 5, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Metodologi Penelitian ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 230 ', 'NULL', 'NULL', '2017-12-27 00:49:49', 'prodi', 0, '57201', '1', '94'),
('SI 231', 'Arsitektur Enterprise ', 3, 6, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Arsitektur Enterprise ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 231 ', 'NULL', 'NULL', '2017-12-27 00:49:49', 'prodi', 0, '57201', '1', '99'),
('SI 232', 'Manajemen Proyek Teknologi Inf', 3, 6, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Manajemen Proyek Teknologi Inf', '6c3e226b4d4795d518ab', 0, 'A', 'SI 232 ', 'NULL', 'NULL', '2017-12-27 00:49:49', 'prodi', 0, '57201', '1', '100'),
('SI 233', 'Tugas Praktek ', 3, 6, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Tugas Praktek ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 233 ', 'NULL', 'NULL', '2017-12-27 00:49:49', 'prodi', 0, '57201', '1', '101'),
('SI 234', 'Technopreneur ', 2, 6, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Technopreneur ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 234 ', 'NULL', 'NULL', '2017-12-27 00:49:50', 'prodi', 0, '57201', '1', '102'),
('SI 235', 'Implementasi dan Pengujian Per', 3, 6, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Implementasi dan Pengujian Per', '6c3e226b4d4795d518ab', 0, 'A', 'SI 235 ', 'NULL', 'NULL', '2017-12-27 00:49:50', 'prodi', 0, '57201', '1', '103'),
('SI 236', 'Grid and Cloud Computing ', 3, 7, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Grid and Cloud Computing ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 236 ', 'NULL', 'NULL', '2017-12-27 00:49:50', 'prodi', 0, '57201', '1', '108'),
('SI 237', 'Pendidikan Anti Korupsi ', 2, 7, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Pendidikan Anti Korupsi ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 237 ', 'NULL', 'NULL', '2017-12-27 00:49:50', 'prodi', 0, '57201', '1', '109'),
('SI 238', 'Knowledge Management ', 3, 7, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Knowledge Management ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 238 ', 'NULL', 'NULL', '2017-12-27 00:49:50', 'prodi', 0, '57201', '1', '110'),
('SI 239', 'Skripsi ', 6, 7, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Skripsi ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 239 ', 'NULL', 'NULL', '2017-12-27 00:49:50', 'prodi', 0, '57201', '1', '112'),
('SI 240', 'Audit Sistem Informasi ', 3, 5, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Audit Sistem Informasi ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 240 ', 'NULL', 'NULL', '2017-12-27 00:49:49', 'prodi', 0, '57201', '1', '95'),
('SI 241', 'IS Strategy, Management and Aq', 3, 5, 0, 'NULL', 2017, 0, 'NULL', 'A', 'IS Strategy, Management and Aq', '6c3e226b4d4795d518ab', 0, 'A', 'SI 241 ', 'NULL', 'NULL', '2017-12-27 00:49:49', 'prodi', 0, '57201', '1', '96'),
('SI 242', 'E-Business Concept and Desaign', 3, 5, 0, 'NULL', 2017, 0, 'NULL', 'A', 'E-Business Concept and Desaign', '6c3e226b4d4795d518ab', 0, 'A', 'SI 242 ', 'NULL', 'NULL', '2017-12-27 00:49:49', 'prodi', 0, '57201', '1', '97'),
('SI 243', 'E-Business Technology ', 3, 5, 0, 'NULL', 2017, 0, 'NULL', 'A', 'E-Business Technology ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 243 ', 'NULL', 'NULL', '2017-12-27 00:49:49', 'prodi', 0, '57201', '1', '98'),
('SI 244', 'Tata Kelola Teknologi Informas', 3, 6, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Tata Kelola Teknologi Informas', '6c3e226b4d4795d518ab', 0, 'A', 'SI 244 ', 'NULL', 'NULL', '2017-12-27 00:49:50', 'prodi', 0, '57201', '1', '104'),
('SI 245', 'IT Privacy, Security and Risk ', 3, 6, 0, 'NULL', 2017, 0, 'NULL', 'A', 'IT Privacy, Security and Risk ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 245 ', 'NULL', 'NULL', '2017-12-27 00:49:50', 'prodi', 0, '57201', '1', '105'),
('SI 246', 'Digital Marketing ', 3, 6, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Digital Marketing ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 246 ', 'NULL', 'NULL', '2017-12-27 00:49:50', 'prodi', 0, '57201', '1', '106'),
('SI 247', 'E-Business Application Develop', 3, 6, 0, 'NULL', 2017, 0, 'NULL', 'A', 'E-Business Application Develop', '6c3e226b4d4795d518ab', 0, 'A', 'SI 247 ', 'NULL', 'NULL', '2017-12-27 00:49:50', 'prodi', 0, '57201', '1', '107'),
('SI 248', 'Sistem Penunjang Keputusan ', 3, 7, 0, 'NULL', 2017, 0, 'NULL', 'A', 'Sistem Penunjang Keputusan ', '6c3e226b4d4795d518ab', 0, 'A', 'SI 248 ', 'NULL', 'NULL', '2017-12-27 00:49:50', 'prodi', 0, '57201', '1', '111'),
('TI038', 'Metodologi Penelitian', 3, 6, 0, '0', 2017, 0, '', 'A', 'Metodologi Penelitian', '', 0, 'A', 'METOPEL', '', '', '2017-11-14 01:00:00', 'prodi', 0, '55201', '1', '9'),
('TI042', 'Sistem Informasi Manajemen', 2, 6, 0, '0', 2017, 0, '', 'A', 'Informmation Management System', '', 0, 'A', 'SIM', '', '', '2017-11-01 06:18:15', 'prodi', 0, '55201', '1', '8'),
('TI043', 'Isu Sosial dan Etika Profesi', 4, 6, 0, '0', 2017, 0, '', 'A', 'Isu Sosial dan Etika Profesi', '', 0, '', 'ISEP', '', '', '2017-11-14 00:00:00', 'prodi', 0, '55201', '1', '10');

-- --------------------------------------------------------

--
-- Table structure for table `kuliahtp`
--

CREATE TABLE `kuliahtp` (
  `IDKULIAH` bigint(20) NOT NULL,
  `TAHUN_AKTIF` int(11) DEFAULT NULL,
  `KODE` char(10) DEFAULT NULL,
  `KELAS` varchar(12) DEFAULT NULL,
  `NIK` varchar(20) DEFAULT NULL,
  `TERJADWAL` int(11) DEFAULT NULL,
  `SKS_WAJIB` smallint(6) DEFAULT NULL,
  `SKS_TWAJIB` smallint(6) DEFAULT NULL,
  `BERSEDIA` bit(1) DEFAULT NULL,
  `DIBENTROKKAN` bit(1) DEFAULT NULL,
  `JML_TERISI` smallint(6) DEFAULT NULL,
  `JENISKULIAH` char(1) DEFAULT NULL,
  `DATA_DIPAKAI` bit(1) DEFAULT NULL,
  `TGL_ENTRI` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kuliahtp`
--

INSERT INTO `kuliahtp` (`IDKULIAH`, `TAHUN_AKTIF`, `KODE`, `KELAS`, `NIK`, `TERJADWAL`, `SKS_WAJIB`, `SKS_TWAJIB`, `BERSEDIA`, `DIBENTROKKAN`, `JML_TERISI`, `JENISKULIAH`, `DATA_DIPAKAI`, `TGL_ENTRI`) VALUES
(8150, 49, 'TI042', '5684', '61005850', 1, NULL, NULL, NULL, NULL, NULL, 'T', NULL, NULL),
(8151, 49, 'TI043', '5687', '61005851', 1, NULL, NULL, NULL, NULL, NULL, 'T', NULL, NULL),
(8152, 49, 'IF146', '5684', '61005850', 1, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(8153, 49, 'IF118', '5684', '61005854', 1, NULL, NULL, NULL, NULL, NULL, 'T', NULL, NULL),
(8154, 49, 'IF118', '5684', '61005854', 1, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL),
(8155, 49, 'AP101', '5684', '61005850', 1, NULL, NULL, NULL, NULL, NULL, 'T', NULL, NULL),
(8156, 49, 'AP101', '5684', '61005850', 1, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL),
(8157, 49, 'IF146', '5689', '61005850', 1, NULL, NULL, NULL, NULL, NULL, 'T', NULL, NULL),
(8158, 49, 'IF146', '5689', '61005850', 1, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL),
(8159, 49, 'IF146', '5688', '61005850', 1, NULL, NULL, NULL, NULL, NULL, 'T', NULL, NULL),
(8160, 49, 'IF146', '5688', '61005850', 1, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL),
(8161, 49, 'IF146', '5687', '61005850', 1, NULL, NULL, NULL, NULL, NULL, 'T', NULL, NULL),
(8162, 49, 'IF146', '5687', '61005850', 1, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL),
(8163, 49, 'IF131', '5690', '61005853', 1, NULL, NULL, NULL, NULL, NULL, 'T', NULL, NULL),
(8164, 49, 'IF131', '5690', '61005853', 1, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL),
(8165, 49, 'IF131', '5689', '61005853', 1, NULL, NULL, NULL, NULL, NULL, 'T', NULL, NULL),
(8166, 49, 'IF131', '5689', '61005853', 1, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL),
(8167, 49, 'IF131', '5688', '61005853', 1, NULL, NULL, NULL, NULL, NULL, 'T', NULL, NULL),
(8168, 49, 'IF131', '5688', '61005853', 1, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL),
(8169, 49, 'IF131', '5687', '61005853', 1, NULL, NULL, NULL, NULL, NULL, 'T', NULL, NULL),
(8170, 49, 'IF131', '5687', '61005853', 1, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL),
(8171, 49, 'IF131', '5686', '61005853', 1, NULL, NULL, NULL, NULL, NULL, 'T', NULL, NULL),
(8172, 49, 'IF131', '5686', '61005853', 1, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL),
(8173, 49, 'IF131', '5685', '61005853', 1, NULL, NULL, NULL, NULL, NULL, 'T', NULL, NULL),
(8174, 49, 'IF131', '5685', '61005853', 1, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL),
(8175, 49, 'IF131', '5684', '61005853', 1, NULL, NULL, NULL, NULL, NULL, 'T', NULL, NULL),
(8176, 49, 'IF131', '5684', '61005853', 1, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_kelasaktif`
--

CREATE TABLE `master_kelasaktif` (
  `ID_KELAS` int(11) NOT NULL,
  `ID_TAHUN` smallint(6) DEFAULT NULL,
  `KELASGAB` varchar(50) DEFAULT NULL,
  `KD_JUR` char(10) DEFAULT NULL,
  `THA` smallint(6) DEFAULT NULL,
  `LINTAS_JURUSAN` bit(1) DEFAULT NULL,
  `MAX_PESERTABARU` int(11) DEFAULT NULL,
  `presensi` int(11) DEFAULT NULL,
  `tugas` int(11) DEFAULT NULL,
  `uas` int(11) DEFAULT NULL,
  `rapem` bigint(20) DEFAULT NULL,
  `rpks` bigint(20) DEFAULT NULL,
  `uts` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_kelasaktif`
--

INSERT INTO `master_kelasaktif` (`ID_KELAS`, `ID_TAHUN`, `KELASGAB`, `KD_JUR`, `THA`, `LINTAS_JURUSAN`, `MAX_PESERTABARU`, `presensi`, `tugas`, `uas`, `rapem`, `rpks`, `uts`) VALUES
(1, 49, 'TI14A DIGFOR', '55201', 2014, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(2, 49, 'TI14B DIGFOR', '55201', 2014, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(3, 49, 'TI14C DIGFOR', '55201', 2014, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(4, 49, 'TI14D DIGFOR', '55201', 2014, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(5, 49, 'TI14E DIGFOR', '55201', 2014, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(6, 49, 'TI14F DIGFOR', '55201', 2014, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(7, 49, 'TI14S DIGFOR', '55201', 2014, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(8, 49, 'SI14A SPK', '57201', 2014, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(9, 49, 'SI14B SPK', '57201', 2014, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(10, 49, 'SI14C SPK', '57201', 2014, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(11, 49, 'SI14D SPK', '57201', 2014, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(12, 49, 'SI14S SPK', '57201', 2014, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(13, 49, 'TI15A METOPEL', '55201', 2015, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(14, 49, 'TI15B METOPEL', '55201', 2015, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(15, 49, 'TI15C METOPEL', '55201', 2015, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(16, 49, 'TI15D METOPEL', '55201', 2015, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(17, 49, 'TI15E METOPEL', '55201', 2015, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(18, 49, 'TI15F METOPEL', '55201', 2015, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(19, 49, 'TI15S METOPEL', '55201', 2015, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(20, 49, 'SI15A MANPRO', '57201', 2015, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(21, 49, 'SI15B MANPRO', '57201', 2015, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(22, 49, 'SI15C MANPRO', '57201', 2015, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(23, 49, 'SI15D MANPRO', '57201', 2015, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(24, 49, 'SI15S MANPRO', '57201', 2015, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(25, 49, 'TI16A SISTER', '55201', 2016, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(26, 49, 'TI16B SISTER', '55201', 2016, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(27, 49, 'TI16C SISTER', '55201', 2016, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(28, 49, 'TI16D SISTER', '55201', 2016, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(29, 49, 'TI16E SISTER', '55201', 2016, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(30, 49, 'TI16F SISTER', '55201', 2016, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(31, 49, 'TI16S SISTER', '55201', 2016, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(32, 49, 'SI16A IMK', '57201', 2016, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(33, 49, 'SI16B IMK', '57201', 2016, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(34, 49, 'SI16C IMK', '57201', 2016, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(35, 49, 'SI16D IMK', '57201', 2016, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(36, 49, 'SI16S IMK', '57201', 2016, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(37, 49, 'TI17A PBO', '55201', 2017, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(38, 49, 'TI17B PBO', '55201', 2017, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(39, 49, 'TI17C PBO', '55201', 2017, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(40, 49, 'TI17D PBO', '55201', 2017, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(41, 49, 'TI17E PBO', '55201', 2017, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(42, 49, 'TI17F PBO', '55201', 2017, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(43, 49, 'TI17S PBO', '55201', 2017, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(44, 49, 'SI17A PBO', '57201', 2017, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(45, 49, 'SI17B PBO', '57201', 2017, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(46, 49, 'SI17C PBO', '57201', 2017, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(47, 49, 'SI17D PBO', '57201', 2017, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0),
(48, 49, 'SI17S PBO', '57201', 2017, b'1111111111111111111111111111111', 50, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhs`
--

CREATE TABLE `mhs` (
  `NAMA` varchar(50) NOT NULL,
  `NIKKTP` varchar(100) DEFAULT NULL,
  `TEMLAHIR` varchar(50) DEFAULT NULL,
  `TGLAHIR` datetime DEFAULT NULL,
  `JENIS` char(1) DEFAULT NULL,
  `SLTA` varchar(100) DEFAULT NULL,
  `KODA` char(2) DEFAULT NULL,
  `NOIJAZAH` char(36) DEFAULT NULL,
  `KOTAIJAZAH` char(19) DEFAULT NULL,
  `TGIJAZAH` char(10) DEFAULT NULL,
  `THA` char(4) NOT NULL,
  `NPM` varchar(15) NOT NULL,
  `NAMAORTU` char(60) DEFAULT NULL,
  `ALAMATORTU` varchar(200) DEFAULT NULL,
  `FOTO` blob,
  `tgllulus` datetime DEFAULT NULL,
  `judulTa` varchar(255) DEFAULT NULL,
  `tahunlulus` char(4) DEFAULT NULL,
  `bulanlulus` char(2) DEFAULT NULL,
  `Kabupaten` varchar(50) DEFAULT NULL,
  `KodePropasal` varchar(10) NOT NULL,
  `Agama` char(10) DEFAULT NULL,
  `TAEnglish` varchar(255) DEFAULT NULL,
  `KdKabAsal` varchar(10) NOT NULL,
  `AlamatMhs` varchar(255) DEFAULT NULL,
  `KodePosAlmt` varchar(10) NOT NULL,
  `telpmhs` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `NO_REK` varchar(20) DEFAULT NULL,
  `NO_HP` varchar(20) DEFAULT NULL,
  `KONSENTRASI` varchar(50) DEFAULT NULL,
  `NIRM2` char(5) DEFAULT NULL,
  `NIK_ORTU` varchar(30) DEFAULT NULL,
  `PANGKATORTU` varchar(20) DEFAULT NULL,
  `JABATANORTU` varchar(50) DEFAULT NULL,
  `INSTANSI` varchar(100) DEFAULT NULL,
  `ALAMATKANTOR` varchar(150) DEFAULT NULL,
  `KD_JUR` varchar(10) DEFAULT NULL,
  `ID_RELASI` int(11) DEFAULT NULL,
  `sem` smallint(6) DEFAULT NULL,
  `alamat_kantor` varchar(50) NOT NULL,
  `pekerjaan_ortu` varchar(20) NOT NULL,
  `pendidikan_ortu` varchar(20) NOT NULL,
  `nama_ortu` varchar(20) NOT NULL,
  `pa` varchar(20) DEFAULT NULL,
  `SD` varchar(100) DEFAULT NULL,
  `SMP` varchar(100) DEFAULT NULL,
  `SMA` varchar(100) DEFAULT NULL,
  `alamat_lengkap` text,
  `profesi_diinginkan` text,
  `keahlian` varchar(225) DEFAULT NULL,
  `pengalaman_kerja` varchar(225) DEFAULT NULL,
  `kab_lain` varchar(50) DEFAULT NULL,
  `prop_lain` varchar(50) DEFAULT NULL,
  `alamat_lengkap_ortu` text,
  `status` varchar(10) NOT NULL,
  `jumlah_anak` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mhs`
--

INSERT INTO `mhs` (`NAMA`, `NIKKTP`, `TEMLAHIR`, `TGLAHIR`, `JENIS`, `SLTA`, `KODA`, `NOIJAZAH`, `KOTAIJAZAH`, `TGIJAZAH`, `THA`, `NPM`, `NAMAORTU`, `ALAMATORTU`, `FOTO`, `tgllulus`, `judulTa`, `tahunlulus`, `bulanlulus`, `Kabupaten`, `KodePropasal`, `Agama`, `TAEnglish`, `KdKabAsal`, `AlamatMhs`, `KodePosAlmt`, `telpmhs`, `EMAIL`, `NO_REK`, `NO_HP`, `KONSENTRASI`, `NIRM2`, `NIK_ORTU`, `PANGKATORTU`, `JABATANORTU`, `INSTANSI`, `ALAMATKANTOR`, `KD_JUR`, `ID_RELASI`, `sem`, `alamat_kantor`, `pekerjaan_ortu`, `pendidikan_ortu`, `nama_ortu`, `pa`, `SD`, `SMP`, `SMA`, `alamat_lengkap`, `profesi_diinginkan`, `keahlian`, `pengalaman_kerja`, `kab_lain`, `prop_lain`, `alamat_lengkap_ortu`, `status`, `jumlah_anak`) VALUES
('Imanudin Sholeh', '1234567891011234', 'Banyumas', '1996-11-10 00:00:00', 'L', 'SMA NEGERI 1 PURWOKERTO', 'L', '-', 'NULL', '-', '2014', '14.11.0001', 'NULL', 'JL. KH.SYAHRONI, KEL. JATIBARANG RT 04 RW 01, KEC. JATIBARANG, BREBES', 0x4e554c4c, '2017-02-02 00:00:00', 'SISTEM INFORMASI SIMPAN PINJAM KELOMPOK PEREMPUAN (SPP) PADA UPK PNPM MANDIRI PERDESAAN KECAMATAN SONGGOM MENGGUNAKAN SMS GATEWAY', 'NULL', 'NU', '1329', '13', 'Islam', 'INFORMATION SYSTEM SIMPAN PINJAM KELOMPOK PEREMPUAN (SPP) AT UPK PNPM MANDIRI PERDESAAN DISTRICT SONGGOM  USING SMS GATEWAY', '1329', ' Brebes', '52261', '085600494130', 'ovinovita88@gmail.com', 'NULL', '085786304516', 'NULL', 'NULL', '196302182006041002', 'II C', ' staff', 'Inspektorat', 'NULL', '55201', 1, 7, 'Jl. MT Haryono No. 64 - Brebes', 'PNS', 'SMA/SMK/MA', 'Slamet', '0612078301', 'SD Negeri 01 Jatibarang/1329//2005', 'SMP Negeri 02 Jatibarang/1329//2008', 'Paket C Mugi Sae/1329//2011', 'Jl Kh. Syahroni desa manaran-jatibarang lor/4/1/Jatibarang/1329/', 'NULL', 'NULL', 'NULL', '', '', 'NULL', 'Belum Meni', 0),
('Melati', '0832398237823895', 'Banyumas', '1995-07-18 00:00:00', 'L', 'SMA KRISTEN 1 PURWOKERTO\r\n', 'L', NULL, NULL, NULL, '2013', '14.11.0344', 'Slamet', 'JL. KH.SYAHRONI, KEL. JATIBARANG RT 04 RW 01, KEC. JATIBARANG, BREBES\n', NULL, '2017-02-02 00:00:00', 'SISTEM INFORMASI SIMPAN PINJAM KELOMPOK PEREMPUAN (SPP) PADA UPK PNPM MANDIRI PERDESAAN KECAMATAN SONGGOM MENGGUNAKAN SMS GATEWAY\r\n', NULL, NULL, '1329', '', 'Islam', 'INFORMATION SYSTEM SIMPAN PINJAM KELOMPOK PEREMPUAN (SPP) AT UPK PNPM MANDIRI PERDESAAN DISTRICT SONGGOM  USING SMS GATEWAY\n', '', 'Brebes', '', '083734627723', 'korbanmicin@gmail.com', NULL, '085786304516', NULL, NULL, '196302182006041002', 'II C', 'Staf', 'Inspektorat', 'Jl. MT Haryono No. 64 - Brebes\r\n', '55201', 1, 5, '', '', '', '', '0612078301', 'SD Negeri 01 Jatibarang/1329/29/2005', 'SMP Negeri 02 Jatibarang/1329/29/2008\n', 'Paket C Mugi Sae/1329/29/2011\n', 'Lemberang/3/1/sokaraja/1329/banyumas/53181', 'Teknik Komputer/Trainer It/Projek Manager\r\n', 'Marketing IT/Komunikasi/Marketing IT', NULL, NULL, NULL, NULL, '', 0),
('Mawar', '2832397326', 'Banyumas', '1996-11-10 00:00:00', 'L', NULL, NULL, NULL, NULL, NULL, '2014', '14.11.0345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Islam', NULL, '', NULL, '', '083734627723', 'korbanmicin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '55201', NULL, 5, '', '', '', '', NULL, 'MI MAARIF NU 1 Lemberang/1308/29/2007', 'SMPN 3 Sokaraja/1308/29/2010', 'SMKN 1 Purbalingga/1308/29/2013', 'Lemberang/3/1/sokaraja/1329/banyumas/53181', NULL, NULL, NULL, NULL, NULL, NULL, '', 0),
('Idham Zulkarnaen', '1234567891011235', 'Majenang', '1995-07-17 00:00:00', 'L', 'SMA NEGERI 1 PURWOKERTO', 'A', '-', 'NULL', '-', '2014', '14.12.0001', 'NULL', 'JL. GUMBREG KEL. MERSI RT 05 RW 06 KEC. PURWOKERTO TIMUR', 0x4e554c4c, '2017-08-30 00:00:00', 'Visualisasi Pesawat Sederhana Menggunakan Animasi 3D Sebagai Media Pembelajaran (Studi Kasus : SD Negeri 1 Mersi)', 'NULL', 'NU', '1302', '13', 'Islam', 'Visualization Of Simple Aircraft Using 3D Animation As  A Learning Media (case Study: SD Negeri 1 Mersi)', '1302', 'JL. DR GUMBREG - MERSI', '53112', '081244134944', 'aldihatumena22@gmail.com', 'NULL', '081244134944', 'NULL', 'NULL', '196302182006041002', 'WIRASWASTA', ' Karyawan', 'sendiri', 'NULL', '57201', 1, 7, 'Jl. MT Haryono No. 64 - Brebes', 'Wiraswasta', 'SMA/SMK/MA', 'Ning Rahayu N', '0618057702', 'SDÂ NEGERIÂ 1Â SULI/2908/29/2007', 'SMPÂ NEGERIÂ 9Â AMBON/2908/29/2010', 'SMAÂ KRISTENÂ 1Â PURWOKERTO/1302/13/2013', 'JL.Â DRÂ GUMBREGÂ -Â MERSI/05/06/PURWOKERTO/1302/13', 'Teknik Komputer/Trainer It/Projek Manager', 'Marketing IT/Komunikasi/Marketing IT', '_', ' ', ' ', 'JL.Â DRÂ GUMBREGÂ -Â MERSI/05/06/PURWOKERTOÂ TIMUR/1302/13/53112', 'Belum Meni', 0),
('Kunti', '78123236932023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014', '14.12.0344', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '57201', NULL, 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0),
('Wiijaya kusuma', '12723923032', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014', '14.12.0345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '57201', NULL, 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0),
('Arnan Afada Rosyad', '1234567891011234', 'Majenang', '1996-11-10 00:00:00', 'L', 'SMA NEGERI 1 PURWOKERTO', 'A', '-', 'NULL', '', '2015', '15.11.0001', 'NULL', 'JL. GUMBREG KEL. MERSI RT 05 RW 06 KEC. PURWOKERTO TIMUR', 0x4e554c4c, '2017-08-30 00:00:00', 'Visualisasi Pesawat Sederhana Menggunakan Animasi 3D Sebagai Media Pembelajaran (Studi Kasus : SD Negeri 1 Mersi)', 'NULL', 'NU', '1302', '13', 'Islam', 'Visualization Of Simple Aircraft Using 3D Animation As  A Learning Media (case Study: SD Negeri 1 Mersi)', '1303', 'JL. DR GUMBREG - MERSI', '53113', '081244134944', 'aldihatumena22@gmail.com', 'NULL', '081244134944', 'NULL', 'NULL', '196302182006041002', 'WIRASWASTA', ' Karyawan', 'sendiri', 'NULL', '55201', 1, 5, 'Jl. MT Haryono No. 64 - Brebes', 'Wiraswasta', 'SMA/SMK/MA', 'Ning Rahayu N', '0618057703', 'SDÂ NEGERIÂ 1Â SULI/2908/29/2008', 'SMPÂ NEGERIÂ 9Â AMBON/2908/29/2011', 'SMAÂ KRISTENÂ 1Â PURWOKERTO/1302/13/2014', 'JL.Â DRÂ GUMBREGÂ -Â MERSI/05/06/PURWOKERTO/1302/14', 'Teknik Komputer/Trainer It/Projek Manager', 'Marketing IT/Komunikasi/Marketing IT', '_', ' ', ' ', 'JL.Â DRÂ GUMBREGÂ -Â MERSI/05/06/PURWOKERTOÂ TIMUR/1302/13/53113', 'Belum Meni', 0),
('Lutfi Sakti Maulana', '1234567891011235', 'Brebes', '1996-11-10 00:00:00', 'L', 'SMA NEGERI 1 PURWOKERTO', 'A', '-', 'NULL', '', '2015', '15.12.0001', 'NULL', 'JL. GUMBREG KEL. MERSI RT 05 RW 06 KEC. PURWOKERTO TIMUR', 0x4e554c4c, '2017-08-30 00:00:00', 'Visualisasi Pesawat Sederhana Menggunakan Animasi 3D Sebagai Media Pembelajaran (Studi Kasus : SD Negeri 1 Mersi)', 'NULL', 'NU', '1302', '13', 'Islam', 'Visualization Of Simple Aircraft Using 3D Animation As  A Learning Media (case Study: SD Negeri 1 Mersi)', '1304', 'JL. DR GUMBREG - MERSI', '53114', '081244134944', 'aldihatumena22@gmail.com', 'NULL', '081244134944', 'NULL', 'NULL', '196302182006041002', 'WIRASWASTA', ' Karyawan', 'sendiri', 'NULL', '57201', 1, 5, 'Jl. MT Haryono No. 64 - Brebes', 'Wiraswasta', 'SMA/SMK/MA', 'Ning Rahayu N', '0618057704', 'SDÂ NEGERIÂ 1Â SULI/2908/29/2009', 'SMPÂ NEGERIÂ 9Â AMBON/2908/29/2012', 'SMAÂ KRISTENÂ 1Â PURWOKERTO/1302/13/2015', 'JL.Â DRÂ GUMBREGÂ -Â MERSI/05/06/PURWOKERTO/1302/15', 'Teknik Komputer/Trainer It/Projek Manager', 'Marketing IT/Komunikasi/Marketing IT', '_', ' ', ' ', 'JL.Â DRÂ GUMBREGÂ -Â MERSI/05/06/PURWOKERTOÂ TIMUR/1302/13/53114', 'Belum Meni', 0),
('Arma Kuncara Edy', '1234567891011234', 'Cilacap', '1996-02-10 00:00:00', 'L', 'SMA NEGERI 1 PURWOKERTO', 'A', '-', 'NULL', '', '2016', '16.11.0001', 'NULL', 'JL. GUMBREG KEL. MERSI RT 05 RW 06 KEC. PURWOKERTO TIMUR', 0x4e554c4c, '2017-08-30 00:00:00', 'Visualisasi Pesawat Sederhana Menggunakan Animasi 3D Sebagai Media Pembelajaran (Studi Kasus : SD Negeri 1 Mersi)', 'NULL', 'NU', '1302', '13', 'Islam', 'Visualization Of Simple Aircraft Using 3D Animation As  A Learning Media (case Study: SD Negeri 1 Mersi)', '1305', 'JL. DR GUMBREG - MERSI', '53115', '081244134944', 'aldihatumena22@gmail.com', 'NULL', '081244134944', 'NULL', 'NULL', '196302182006041002', 'WIRASWASTA', ' Karyawan', 'sendiri', 'NULL', '55201', 1, 3, 'Jl. MT Haryono No. 64 - Brebes', 'Wiraswasta', 'SMA/SMK/MA', 'Ning Rahayu N', '0618057705', 'SDÂ NEGERIÂ 1Â SULI/2908/29/2010', 'SMPÂ NEGERIÂ 9Â AMBON/2908/29/2013', 'SMAÂ KRISTENÂ 1Â PURWOKERTO/1302/13/2016', 'JL.Â DRÂ GUMBREGÂ -Â MERSI/05/06/PURWOKERTO/1302/16', 'Teknik Komputer/Trainer It/Projek Manager', 'Marketing IT/Komunikasi/Marketing IT', '_', ' ', ' ', 'JL.Â DRÂ GUMBREGÂ -Â MERSI/05/06/PURWOKERTOÂ TIMUR/1302/13/53115', 'Belum Meni', 0),
('Reza Phalefi', '1234567891011234', 'Purwokerto', '1996-11-10 00:00:00', 'L', 'SMA NEGERI 1 PURWOKERTO', 'A', '-', 'NULL', '', '2016', '16.11.0002', 'NULL', 'JL. GUMBREG KEL. MERSI RT 05 RW 06 KEC. PURWOKERTO TIMUR', 0x4e554c4c, '2017-08-30 00:00:00', 'Visualisasi Pesawat Sederhana Menggunakan Animasi 3D Sebagai Media Pembelajaran (Studi Kasus : SD Negeri 1 Mersi)', 'NULL', 'NU', '1302', '13', 'Islam', 'Visualization Of Simple Aircraft Using 3D Animation As  A Learning Media (case Study: SD Negeri 1 Mersi)', '1309', 'JL. DR GUMBREG - MERSI', '53119', '081244134944', 'aldihatumena22@gmail.com', 'NULL', '081244134944', 'NULL', 'NULL', '196302182006041002', 'WIRASWASTA', ' Karyawan', 'sendiri', 'NULL', '55201', 1, 3, 'Jl. MT Haryono No. 64 - Brebes', 'Wiraswasta', 'SMA/SMK/MA', 'Ning Rahayu N', '0618057709', 'SDÂ NEGERIÂ 1Â SULI/2908/29/2014', 'SMPÂ NEGERIÂ 9Â AMBON/2908/29/2017', 'SMAÂ KRISTENÂ 1Â PURWOKERTO/1302/13/2020', 'JL.Â DRÂ GUMBREGÂ -Â MERSI/05/06/PURWOKERTO/1302/20', 'Teknik Komputer/Trainer It/Projek Manager', 'Marketing IT/Komunikasi/Marketing IT', '_', ' ', ' ', 'JL.Â DRÂ GUMBREGÂ -Â MERSI/05/06/PURWOKERTOÂ TIMUR/1302/13/53119', 'Belum Meni', 0),
('Septian Aditya Saputra', '1234567891011235', 'Purbalingga', '1996-11-10 00:00:00', 'L', 'SMA NEGERI 1 PURWOKERTO', 'A', '-', 'NULL', '', '2016', '16.12.0001', 'NULL', 'JL. GUMBREG KEL. MERSI RT 05 RW 06 KEC. PURWOKERTO TIMUR', 0x4e554c4c, '2017-08-30 00:00:00', 'Visualisasi Pesawat Sederhana Menggunakan Animasi 3D Sebagai Media Pembelajaran (Studi Kasus : SD Negeri 1 Mersi)', 'NULL', 'NU', '1302', '13', 'Islam', 'Visualization Of Simple Aircraft Using 3D Animation As  A Learning Media (case Study: SD Negeri 1 Mersi)', '1306', 'JL. DR GUMBREG - MERSI', '53116', '081244134944', 'aldihatumena22@gmail.com', 'NULL', '081244134944', 'NULL', 'NULL', '196302182006041002', 'WIRASWASTA', ' Karyawan', 'sendiri', 'NULL', '57201', 1, 3, 'Jl. MT Haryono No. 64 - Brebes', 'Wiraswasta', 'SMA/SMK/MA', 'Ning Rahayu N', '0618057706', 'SDÂ NEGERIÂ 1Â SULI/2908/29/2011', 'SMPÂ NEGERIÂ 9Â AMBON/2908/29/2014', 'SMAÂ KRISTENÂ 1Â PURWOKERTO/1302/13/2017', 'JL.Â DRÂ GUMBREGÂ -Â MERSI/05/06/PURWOKERTO/1302/17', 'Teknik Komputer/Trainer It/Projek Manager', 'Marketing IT/Komunikasi/Marketing IT', '_', ' ', ' ', 'JL.Â DRÂ GUMBREGÂ -Â MERSI/05/06/PURWOKERTOÂ TIMUR/1302/13/53116', 'Belum Meni', 0),
('Ilham Ardiansyah', '1234567891011235', 'Bumiayu', '1996-11-10 00:00:00', 'L', 'SMA NEGERI 1 PURWOKERTO', 'A', '-', 'NULL', '', '2016', '16.12.0002', 'NULL', 'JL. GUMBREG KEL. MERSI RT 05 RW 06 KEC. PURWOKERTO TIMUR', 0x4e554c4c, '2017-08-30 00:00:00', 'Visualisasi Pesawat Sederhana Menggunakan Animasi 3D Sebagai Media Pembelajaran (Studi Kasus : SD Negeri 1 Mersi)', 'NULL', 'NU', '1302', '13', 'Islam', 'Visualization Of Simple Aircraft Using 3D Animation As  A Learning Media (case Study: SD Negeri 1 Mersi)', '1310', 'JL. DR GUMBREG - MERSI', '53120', '081244134944', 'aldihatumena22@gmail.com', 'NULL', '081244134944', 'NULL', 'NULL', '196302182006041002', 'WIRASWASTA', ' Karyawan', 'sendiri', 'NULL', '57201', 1, 3, 'Jl. MT Haryono No. 64 - Brebes', 'Wiraswasta', 'SMA/SMK/MA', 'Ning Rahayu N', '0618057710', 'SDÂ NEGERIÂ 1Â SULI/2908/29/2015', 'SMPÂ NEGERIÂ 9Â AMBON/2908/29/2018', 'SMAÂ KRISTENÂ 1Â PURWOKERTO/1302/13/2021', 'JL.Â DRÂ GUMBREGÂ -Â MERSI/05/06/PURWOKERTO/1302/21', 'Teknik Komputer/Trainer It/Projek Manager', 'Marketing IT/Komunikasi/Marketing IT', '_', ' ', ' ', 'JL.Â DRÂ GUMBREGÂ -Â MERSI/05/06/PURWOKERTOÂ TIMUR/1302/13/53120', 'Belum Meni', 0),
('Billy Praktikto', '1234567891011234', 'Purwokerto', '1996-11-10 00:00:00', 'L', 'SMA NEGERI 1 PURWOKERTO', 'A', '-', 'NULL', '', '2017', '17.11.0001', 'NULL', 'JL. GUMBREG KEL. MERSI RT 05 RW 06 KEC. PURWOKERTO TIMUR', 0x4e554c4c, '2017-08-30 00:00:00', 'Visualisasi Pesawat Sederhana Menggunakan Animasi 3D Sebagai Media Pembelajaran (Studi Kasus : SD Negeri 1 Mersi)', 'NULL', 'NU', '1302', '13', 'Kristen', 'Visualization Of Simple Aircraft Using 3D Animation As  A Learning Media (case Study: SD Negeri 1 Mersi)', '1307', 'JL. DR GUMBREG - MERSI', '53117', '081244134944', 'aldihatumena22@gmail.com', 'NULL', '081244134944', 'NULL', 'NULL', '196302182006041002', 'WIRASWASTA', ' Karyawan', 'sendiri', 'NULL', '55201', 1, 1, 'Jl. MT Haryono No. 64 - Brebes', 'Wiraswasta', 'SMA/SMK/MA', 'Ning Rahayu N', '0618057707', 'SDÂ NEGERIÂ 1Â SULI/2908/29/2012', 'SMPÂ NEGERIÂ 9Â AMBON/2908/29/2015', 'SMAÂ KRISTENÂ 1Â PURWOKERTO/1302/13/2018', 'JL.Â DRÂ GUMBREGÂ -Â MERSI/05/06/PURWOKERTO/1302/18', 'Teknik Komputer/Trainer It/Projek Manager', 'Marketing IT/Komunikasi/Marketing IT', '_', ' ', ' ', 'JL.Â DRÂ GUMBREGÂ -Â MERSI/05/06/PURWOKERTOÂ TIMUR/1302/13/53117', 'Belum Meni', 0),
('Agung Prasetyo', '1234567891011235', 'Bumiayu', '1996-11-10 00:00:00', 'L', 'SMA NEGERI 1 PURWOKERTO', 'A', '-', 'NULL', '', '2017', '17.12.0001', 'NULL', 'JL. GUMBREG KEL. MERSI RT 05 RW 06 KEC. PURWOKERTO TIMUR', 0x4e554c4c, '2017-08-30 00:00:00', 'Visualisasi Pesawat Sederhana Menggunakan Animasi 3D Sebagai Media Pembelajaran (Studi Kasus : SD Negeri 1 Mersi)', 'NULL', 'NU', '1302', '13', 'Islam', 'Visualization Of Simple Aircraft Using 3D Animation As  A Learning Media (case Study: SD Negeri 1 Mersi)', '1308', 'JL. DR GUMBREG - MERSI', '53118', '081244134944', 'aldihatumena22@gmail.com', 'NULL', '081244134944', 'NULL', 'NULL', '196302182006041002', 'WIRASWASTA', ' Karyawan', 'sendiri', 'NULL', '57201', 1, 1, 'Jl. MT Haryono No. 64 - Brebes', 'Wiraswasta', 'SMA/SMK/MA', 'Ning Rahayu N', '0618057708', 'SDÂ NEGERIÂ 1Â SULI/2908/29/2013', 'SMPÂ NEGERIÂ 9Â AMBON/2908/29/2016', 'SMAÂ KRISTENÂ 1Â PURWOKERTO/1302/13/2019', 'JL.Â DRÂ GUMBREGÂ -Â MERSI/05/06/PURWOKERTO/1302/19', 'Teknik Komputer/Trainer It/Projek Manager', 'Marketing IT/Komunikasi/Marketing IT', '_', ' ', ' ', 'JL.Â DRÂ GUMBREGÂ -Â MERSI/05/06/PURWOKERTOÂ TIMUR/1302/13/53118', 'Belum Meni', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_mhs`
--

CREATE TABLE `nilai_mhs` (
  `NPM` varchar(15) NOT NULL,
  `KODE` char(10) NOT NULL,
  `NILAI` char(1) DEFAULT NULL,
  `TGL_ISINILAI` datetime DEFAULT NULL,
  `KODE_SEBELUM_KONVERSI` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_mhs`
--

INSERT INTO `nilai_mhs` (`NPM`, `KODE`, `NILAI`, `TGL_ISINILAI`, `KODE_SEBELUM_KONVERSI`) VALUES
('14.11.0344', 'IF102', 'A', '2017-11-05 00:00:00', NULL),
('14.11.0344', 'IF103', 'B', '2017-11-12 00:00:00', NULL),
('14.11.0345', 'IF102', 'B', '2017-11-04 00:00:00', NULL),
('14.11.0345', 'IF103', 'C', '2017-11-12 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan`
--

CREATE TABLE `pengajuan` (
  `npm` varchar(10) DEFAULT NULL,
  `jenis_pengajuan` varchar(30) DEFAULT NULL,
  `thn_ajaran` varchar(10) DEFAULT NULL,
  `semester` char(1) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `tgl_proses` date DEFAULT NULL,
  `no_referensi` varchar(50) DEFAULT NULL,
  `keterangan` varchar(30) DEFAULT NULL,
  `keperluan` varchar(100) DEFAULT NULL,
  `bagian` varchar(20) DEFAULT NULL,
  `id_pengajuan` bigint(20) NOT NULL,
  `tgl_lulus` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajuan`
--

INSERT INTO `pengajuan` (`npm`, `jenis_pengajuan`, `thn_ajaran`, `semester`, `tgl`, `status`, `tgl_proses`, `no_referensi`, `keterangan`, `keperluan`, `bagian`, `id_pengajuan`, `tgl_lulus`) VALUES
('14.11.0344', 'surketmaskul', '2014/2015', '2', '2015-02-04', 'Diambil', '2015-03-06', NULL, NULL, 'Percobaan\r\n', 'BAAK', 3, NULL),
('14.11.0344', 'cuti_akademik', '2014/2015', '2', '2015-02-05', 'Diambil', '2015-03-13', NULL, NULL, 'mengikuti pendidikan akademik di Semarang\r\n', 'BAAK', 4, NULL),
('14.11.0344', 'surketmaskul', '2017/2018', '1', '2017-11-04', 'Diajukan', NULL, NULL, NULL, 'wetenge lara', 'BAAK', 5, NULL),
('14.11.0344', 'cuti_akademik', '2017/2018', '1', '2017-11-04', 'Diajukan', NULL, NULL, NULL, 'wetenge la', 'BAAK', 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_info` int(11) NOT NULL,
  `judul_info` varchar(100) NOT NULL,
  `isi_info` text NOT NULL,
  `tanggal_info` date NOT NULL,
  `jam` time(6) NOT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `link` varchar(40) DEFAULT NULL,
  `dilihat` int(11) DEFAULT NULL,
  `judul_en` varchar(200) DEFAULT NULL,
  `isi_en` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id_info`, `judul_info`, `isi_info`, `tanggal_info`, `jam`, `gambar`, `username`, `link`, `dilihat`, `judul_en`, `isi_en`) VALUES
(1, 'Jadwal UTS Genap 2014\r\n', '<span data-ft=\"{&quot;tn&quot;:&quot;K&quot;}\" class=\"userContent\">Jadwal Ujian Tengah Semester Genap 2014/2015 Dapat Didownload Disini </span>\r\n', '2015-05-04', '00:00:12.590000', NULL, 'BAAK', '2015051259_Jadwal_UTS.xls', NULL, NULL, NULL),
(2, 'Info Kartu UTS Gasal 2014/2015\r\n', '<!--[if gte mso 9]><xml>  <o:OfficeDocumentSettings>   <o:AllowPNG/>  </o:OfficeDocumentSettings> </xml><![endif]-->  <p class=\"MsoNormal\" style=\"text-align:center\" align=\"center\"><span style=\"font-size:20.0pt;mso-bidi-font-size:11.0pt;line-height:115%;font-family: &quot;Impact&quot;,&quot;sans-serif&quot;\">INFO KARTU UTS GASAL 2014/2015</span></p>  <p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:14.2pt;mso-add-space: auto;text-align:justify;text-indent:-14.2pt;mso-list:l0 level1 lfo1\"><span style=\"font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:115%;mso-bidi-font-family: Calibri;mso-bidi-theme-font:minor-latin\"><span style=\"mso-list:Ignore\">1.<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp; </span></span></span><b style=\"mso-bidi-font-weight:normal\"><span style=\"font-size:14.0pt;mso-bidi-font-size: 11.0pt;line-height:115%\">UJIAN TENGAH SEMESTER GASAL 2014/2015</span></b><span style=\"font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:115%\"> AKAN DILAKSANAKAN MULAI <b style=\"mso-bidi-font-weight:normal\"><u>SELASA, 18 NOVEMBER 2014 â€“ SABTU, 29 NOVEMBER 2014</u></b>.</span></p>  <p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:14.2pt;mso-add-space: auto;text-align:justify;text-indent:-14.2pt;mso-list:l0 level1 lfo1\"><span style=\"font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:115%;mso-bidi-font-family: Calibri;mso-bidi-theme-font:minor-latin\"><span style=\"mso-list:Ignore\">2.<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp; </span></span></span><span style=\"font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:115%\">KHUSUS BAGI MAHASISWA <b style=\"mso-bidi-font-weight:normal\">ANGKATAN 2014,</b> KARTU UJIAN YANG BERLAKU ADALAH YANG <i style=\"mso-bidi-font-style:normal\">DICETAK OLEH BAAK</i> DAN DAPAT DIAMBIL DI LOKET BAAK/BAU MULAI TANGGAL <b style=\"mso-bidi-font-weight: normal\"><u>14 NOVEMBER-17 NOVEMBER 2014</u></b>. (MAS BANU/MAS HERU/MBA NUNU)</span></p>  <p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:14.2pt;mso-add-space: auto;text-align:justify;text-indent:-14.2pt;mso-list:l0 level1 lfo1\"><span style=\"font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:115%;mso-bidi-font-family: Calibri;mso-bidi-theme-font:minor-latin\"><span style=\"mso-list:Ignore\">3.<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp; </span></span></span><b style=\"mso-bidi-font-weight:normal\"><span style=\"font-size:14.0pt;mso-bidi-font-size: 11.0pt;line-height:115%\">KHUSUS ANGKATAN 2013 KE BAWAH YANG KTM NYA BELUM JADI ATAU HILANG,</span></b><span style=\"font-size:14.0pt;mso-bidi-font-size:11.0pt; line-height:115%\"> PERMOHONAN <b style=\"mso-bidi-font-weight:normal\">KTM SEMENTARA</b> DILAYANI TANGGAL<b> </b><span style=\"mso-spacerun:yes\"></span><b style=\"mso-bidi-font-weight: normal\">15 NOVEMBER-17 NOVEMBER 2014.</b></span></p>  <p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:14.2pt;mso-add-space: auto;text-align:justify;text-indent:-14.2pt;mso-list:l0 level1 lfo1\"><span style=\"font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:115%;mso-bidi-font-family: Calibri;mso-bidi-theme-font:minor-latin\"><span style=\"mso-list:Ignore\">4.<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp; </span></span></span><b style=\"mso-bidi-font-weight:normal\"><span style=\"font-size:14.0pt;mso-bidi-font-size: 11.0pt;line-height:115%\">KHUSUS ANGKATAN 2013 KE BAWAH<i style=\"mso-bidi-font-style: normal\">,</i></span></b><span style=\"font-size:14.0pt;mso-bidi-font-size:11.0pt; line-height:115%\"> KARTU UJIAN DAPAT DI DOWNLOAD DI WEB MULAI TANGGAL <b style=\"mso-bidi-font-weight:normal\">11 NOVEMBER â€“ 29 NOVEMBER 2014.</b></span></p>  <p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:14.2pt;mso-add-space:auto; text-align:justify;text-indent:-14.2pt;mso-list:l0 level1 lfo1\"><span style=\"font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:115%;mso-bidi-font-family: Calibri;mso-bidi-theme-font:minor-latin\"><span style=\"mso-list:Ignore\">5.<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp; </span></span></span><span style=\"font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:115%\">INFO LEBIH LANJUT HUBUNGI LOKET BAAK/BAU. TERIMA KASIH</span></p>  <p class=\"MsoNormal\" style=\"margin-left:280.4pt;text-align:justify;text-indent: -14.2pt;line-height:normal\"><span style=\"font-size:12.0pt;mso-bidi-font-size: 11.0pt\">PURWOKERTO, 11 NOVEMBER 2014</span></p>  <p class=\"MsoNormal\" style=\"margin-left:280.4pt;text-align:justify;text-indent: -14.2pt\"><span style=\"font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height: 115%\">BAAK</span></p>  <!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:TrackMoves/>   <w:TrackFormatting/>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:DoNotPromoteQF/>   <w:LidThemeOther>IN</w:LidThemeOther>   <w:LidThemeAsian>X-NONE</w:LidThemeAsian>   <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:SplitPgBreakAndParaMark/>    <w:EnableOpenTypeKerning/>    <w:DontFlipMirrorIndents/>    <w:OverrideTableStyleHps/>   </w:Compatibility>   <m:mathPr>    <m:mathFont m:val=\"Cambria Math\"/>    <m:brkBin m:val=\"before\"/>    <m:brkBinSub m:val=\"&#45;-\"/>    <m:smallFrac m:val=\"off\"/>    <m:dispDef/>    <m:lMargin m:val=\"0\"/>    <m:rMargin m:val=\"0\"/>    <m:defJc m:val=\"centerGroup\"/>    <m:wrapIndent m:val=\"1440\"/>    <m:intLim m:val=\"subSup\"/>    <m:naryLim m:val=\"undOvr\"/>   </m:mathPr></w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"true\"   DefSemiHidden=\"true\" DefQFormat=\"false\" DefPriority=\"99\"   LatentStyleCount=\"267\">   <w:LsdException Locked=\"false\" Priority=\"0\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Normal\"/>   <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"heading 1\"/>   <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 2\"/>   <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 3\"/>   <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 4\"/>   <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 5\"/>   <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 6\"/>   <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 7\"/>   <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 8\"/>   <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 9\"/>   <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 1\"/>   <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 2\"/>   <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 3\"/>   <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 4\"/>   <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 5\"/>   <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 6\"/>   <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 7\"/>   <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 8\"/>   <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 9\"/>   <w:LsdException Locked=\"false\" Priority=\"35\" QFormat=\"true\" Name=\"caption\"/>   <w:LsdException Locked=\"false\" Priority=\"10\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Title\"/>   <w:LsdException Locked=\"false\" Priority=\"1\" Name=\"Default Paragraph Font\"/>   <w:LsdException Locked=\"false\" Priority=\"11\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtitle\"/>   <w:LsdException Locked=\"false\" Priority=\"22\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Strong\"/>   <w:LsdException Locked=\"false\" Priority=\"20\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Emphasis\"/>   <w:LsdException Locked=\"false\" Priority=\"59\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Table Grid\"/>   <w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Placeholder Text\"/>   <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"No Spacing\"/>   <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading\"/>   <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List\"/>   <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid\"/>   <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1\"/>   <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2\"/>   <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1\"/>   <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2\"/>   <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1\"/>   <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2\"/>   <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3\"/>   <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List\"/>   <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading\"/>   <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List\"/>   <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid\"/>   <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 1\"/>   <w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Revision\"/>   <w:LsdException Locked=\"false\" Priority=\"34\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"List Paragraph\"/>   <w:LsdException Locked=\"false\" Priority=\"29\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Quote\"/>   <w:LsdException Locked=\"false\" Priority=\"30\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Quote\"/>   <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"19\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Emphasis\"/>   <w:LsdException Locked=\"false\" Priority=\"21\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Emphasis\"/>   <w:LsdException Locked=\"false\" Priority=\"31\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Reference\"/>   <w:LsdException Locked=\"false\" Priority=\"32\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Reference\"/>   <w:LsdException Locked=\"false\" Priority=\"33\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Book Title\"/>   <w:LsdException Locked=\"false\" Priority=\"37\" Name=\"Bibliography\"/>   <w:LsdException Locked=\"false\" Priority=\"39\" QFormat=\"true\" Name=\"TOC Heading\"/>  </w:LatentStyles> </xml><![endif]--><!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable  {mso-style-name:\"Table Normal\";  mso-tstyle-rowband-size:0;  mso-tstyle-colband-size:0;  mso-style-noshow:yes;  mso-style-priority:99;  mso-style-parent:\"\";  mso-padding-alt:0cm 5.4pt 0cm 5.4pt;  mso-para-margin-top:0cm;  mso-para-margin-right:0cm;  mso-para-margin-bottom:10.0pt;  mso-para-margin-left:0cm;  line-height:115%;  mso-pagination:widow-orphan;  font-size:11.0pt;  font-family:\"Calibri\",\"sans-serif\";  mso-ascii-font-family:Calibri;  mso-ascii-theme-font:minor-latin;  mso-hansi-font-family:Calibri;  mso-hansi-theme-font:minor-latin;  mso-bidi-font-family:\"Times New Roman\";  mso-bidi-theme-font:minor-bidi;  mso-fareast-language:EN-US;} </style> <![endif]-->\r\n', '2014-11-11', '00:00:08.450000', NULL, 'BAAK', NULL, NULL, NULL, NULL),
(3, 'Jadwal UTS Genap 2014\r\n', '<span data-ft=\"{&quot;tn&quot;:&quot;K&quot;}\" class=\"userContent\">Jadwal Ujian Tengah Semester Genap 2014/2015 Dapat Didownload Disini </span>\r\n', '2015-05-04', '12:59:00.000000', NULL, 'BAAK', '2015051259_Jadwal_UTS.xls', NULL, NULL, NULL),
(4, 'Info Kartu UTS Gasal 2014/2015\r\n', '<!--[if gte mso 9]><xml>  <o:OfficeDocumentSettings>   <o:AllowPNG/>  </o:OfficeDocumentSettings> </xml><![endif]-->  <p class=\"MsoNormal\" style=\"text-align:center\" align=\"center\"><span style=\"font-size:20.0pt;mso-bidi-font-size:11.0pt;line-height:115%;font-family: &quot;Impact&quot;,&quot;sans-serif&quot;\">INFO KARTU UTS GASAL 2014/2015</span></p>  <p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:14.2pt;mso-add-space: auto;text-align:justify;text-indent:-14.2pt;mso-list:l0 level1 lfo1\"><span style=\"font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:115%;mso-bidi-font-family: Calibri;mso-bidi-theme-font:minor-latin\"><span style=\"mso-list:Ignore\">1.<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp; </span></span></span><b style=\"mso-bidi-font-weight:normal\"><span style=\"font-size:14.0pt;mso-bidi-font-size: 11.0pt;line-height:115%\">UJIAN TENGAH SEMESTER GASAL 2014/2015</span></b><span style=\"font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:115%\"> AKAN DILAKSANAKAN MULAI <b style=\"mso-bidi-font-weight:normal\"><u>SELASA, 18 NOVEMBER 2014 â€“ SABTU, 29 NOVEMBER 2014</u></b>.</span></p>  <p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:14.2pt;mso-add-space: auto;text-align:justify;text-indent:-14.2pt;mso-list:l0 level1 lfo1\"><span style=\"font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:115%;mso-bidi-font-family: Calibri;mso-bidi-theme-font:minor-latin\"><span style=\"mso-list:Ignore\">2.<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp; </span></span></span><span style=\"font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:115%\">KHUSUS BAGI MAHASISWA <b style=\"mso-bidi-font-weight:normal\">ANGKATAN 2014,</b> KARTU UJIAN YANG BERLAKU ADALAH YANG <i style=\"mso-bidi-font-style:normal\">DICETAK OLEH BAAK</i> DAN DAPAT DIAMBIL DI LOKET BAAK/BAU MULAI TANGGAL <b style=\"mso-bidi-font-weight: normal\"><u>14 NOVEMBER-17 NOVEMBER 2014</u></b>. (MAS BANU/MAS HERU/MBA NUNU)</span></p>  <p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:14.2pt;mso-add-space: auto;text-align:justify;text-indent:-14.2pt;mso-list:l0 level1 lfo1\"><span style=\"font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:115%;mso-bidi-font-family: Calibri;mso-bidi-theme-font:minor-latin\"><span style=\"mso-list:Ignore\">3.<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp; </span></span></span><b style=\"mso-bidi-font-weight:normal\"><span style=\"font-size:14.0pt;mso-bidi-font-size: 11.0pt;line-height:115%\">KHUSUS ANGKATAN 2013 KE BAWAH YANG KTM NYA BELUM JADI ATAU HILANG,</span></b><span style=\"font-size:14.0pt;mso-bidi-font-size:11.0pt; line-height:115%\"> PERMOHONAN <b style=\"mso-bidi-font-weight:normal\">KTM SEMENTARA</b> DILAYANI TANGGAL<b> </b><span style=\"mso-spacerun:yes\"></span><b style=\"mso-bidi-font-weight: normal\">15 NOVEMBER-17 NOVEMBER 2014.</b></span></p>  <p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:14.2pt;mso-add-space: auto;text-align:justify;text-indent:-14.2pt;mso-list:l0 level1 lfo1\"><span style=\"font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:115%;mso-bidi-font-family: Calibri;mso-bidi-theme-font:minor-latin\"><span style=\"mso-list:Ignore\">4.<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp; </span></span></span><b style=\"mso-bidi-font-weight:normal\"><span style=\"font-size:14.0pt;mso-bidi-font-size: 11.0pt;line-height:115%\">KHUSUS ANGKATAN 2013 KE BAWAH<i style=\"mso-bidi-font-style: normal\">,</i></span></b><span style=\"font-size:14.0pt;mso-bidi-font-size:11.0pt; line-height:115%\"> KARTU UJIAN DAPAT DI DOWNLOAD DI WEB MULAI TANGGAL <b style=\"mso-bidi-font-weight:normal\">11 NOVEMBER â€“ 29 NOVEMBER 2014.</b></span></p>  <p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:14.2pt;mso-add-space:auto; text-align:justify;text-indent:-14.2pt;mso-list:l0 level1 lfo1\"><span style=\"font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:115%;mso-bidi-font-family: Calibri;mso-bidi-theme-font:minor-latin\"><span style=\"mso-list:Ignore\">5.<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp; </span></span></span><span style=\"font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:115%\">INFO LEBIH LANJUT HUBUNGI LOKET BAAK/BAU. TERIMA KASIH</span></p>  <p class=\"MsoNormal\" style=\"margin-left:280.4pt;text-align:justify;text-indent: -14.2pt;line-height:normal\"><span style=\"font-size:12.0pt;mso-bidi-font-size: 11.0pt\">PURWOKERTO, 11 NOVEMBER 2014</span></p>  <p class=\"MsoNormal\" style=\"margin-left:280.4pt;text-align:justify;text-indent: -14.2pt\"><span style=\"font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height: 115%\">BAAK</span></p>  <!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:TrackMoves/>   <w:TrackFormatting/>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:DoNotPromoteQF/>   <w:LidThemeOther>IN</w:LidThemeOther>   <w:LidThemeAsian>X-NONE</w:LidThemeAsian>   <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:SplitPgBreakAndParaMark/>    <w:EnableOpenTypeKerning/>    <w:DontFlipMirrorIndents/>    <w:OverrideTableStyleHps/>   </w:Compatibility>   <m:mathPr>    <m:mathFont m:val=\"Cambria Math\"/>    <m:brkBin m:val=\"before\"/>    <m:brkBinSub m:val=\"&#45;-\"/>    <m:smallFrac m:val=\"off\"/>    <m:dispDef/>    <m:lMargin m:val=\"0\"/>    <m:rMargin m:val=\"0\"/>    <m:defJc m:val=\"centerGroup\"/>    <m:wrapIndent m:val=\"1440\"/>    <m:intLim m:val=\"subSup\"/>    <m:naryLim m:val=\"undOvr\"/>   </m:mathPr></w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"true\"   DefSemiHidden=\"true\" DefQFormat=\"false\" DefPriority=\"99\"   LatentStyleCount=\"267\">   <w:LsdException Locked=\"false\" Priority=\"0\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Normal\"/>   <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"heading 1\"/>   <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 2\"/>   <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 3\"/>   <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 4\"/>   <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 5\"/>   <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 6\"/>   <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 7\"/>   <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 8\"/>   <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 9\"/>   <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 1\"/>   <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 2\"/>   <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 3\"/>   <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 4\"/>   <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 5\"/>   <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 6\"/>   <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 7\"/>   <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 8\"/>   <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 9\"/>   <w:LsdException Locked=\"false\" Priority=\"35\" QFormat=\"true\" Name=\"caption\"/>   <w:LsdException Locked=\"false\" Priority=\"10\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Title\"/>   <w:LsdException Locked=\"false\" Priority=\"1\" Name=\"Default Paragraph Font\"/>   <w:LsdException Locked=\"false\" Priority=\"11\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtitle\"/>   <w:LsdException Locked=\"false\" Priority=\"22\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Strong\"/>   <w:LsdException Locked=\"false\" Priority=\"20\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Emphasis\"/>   <w:LsdException Locked=\"false\" Priority=\"59\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Table Grid\"/>   <w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Placeholder Text\"/>   <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"No Spacing\"/>   <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading\"/>   <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List\"/>   <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid\"/>   <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1\"/>   <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2\"/>   <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1\"/>   <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2\"/>   <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1\"/>   <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2\"/>   <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3\"/>   <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List\"/>   <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading\"/>   <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List\"/>   <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid\"/>   <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 1\"/>   <w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Revision\"/>   <w:LsdException Locked=\"false\" Priority=\"34\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"List Paragraph\"/>   <w:LsdException Locked=\"false\" Priority=\"29\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Quote\"/>   <w:LsdException Locked=\"false\" Priority=\"30\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Quote\"/>   <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 1\"/>   <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 2\"/>   <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 3\"/>   <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 4\"/>   <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 5\"/>   <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 6\"/>   <w:LsdException Locked=\"false\" Priority=\"19\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Emphasis\"/>   <w:LsdException Locked=\"false\" Priority=\"21\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Emphasis\"/>   <w:LsdException Locked=\"false\" Priority=\"31\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Reference\"/>   <w:LsdException Locked=\"false\" Priority=\"32\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Reference\"/>   <w:LsdException Locked=\"false\" Priority=\"33\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Book Title\"/>   <w:LsdException Locked=\"false\" Priority=\"37\" Name=\"Bibliography\"/>   <w:LsdException Locked=\"false\" Priority=\"39\" QFormat=\"true\" Name=\"TOC Heading\"/>  </w:LatentStyles> </xml><![endif]--><!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable  {mso-style-name:\"Table Normal\";  mso-tstyle-rowband-size:0;  mso-tstyle-colband-size:0;  mso-style-noshow:yes;  mso-style-priority:99;  mso-style-parent:\"\";  mso-padding-alt:0cm 5.4pt 0cm 5.4pt;  mso-para-margin-top:0cm;  mso-para-margin-right:0cm;  mso-para-margin-bottom:10.0pt;  mso-para-margin-left:0cm;  line-height:115%;  mso-pagination:widow-orphan;  font-size:11.0pt;  font-family:\"Calibri\",\"sans-serif\";  mso-ascii-font-family:Calibri;  mso-ascii-theme-font:minor-latin;  mso-hansi-font-family:Calibri;  mso-hansi-theme-font:minor-latin;  mso-bidi-font-family:\"Times New Roman\";  mso-bidi-theme-font:minor-bidi;  mso-fareast-language:EN-US;} </style> <![endif]-->\r\n', '2014-11-11', '08:45:00.000000', NULL, 'BAAK', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `periode_krs`
--

CREATE TABLE `periode_krs` (
  `idtahun` int(11) NOT NULL,
  `THA` char(4) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_admin`, `username`, `password`) VALUES
(1, 'Dwi Krisbiantoro,M.Kom', 'amikom', 'e4da3b7fbbce2345d7772b0674a318d5');

-- --------------------------------------------------------

--
-- Table structure for table `tb_arsip`
--

CREATE TABLE `tb_arsip` (
  `id_perkara` int(11) NOT NULL,
  `no1` varchar(100) NOT NULL,
  `no2` varchar(100) NOT NULL,
  `no3` varchar(100) NOT NULL,
  `no4` varchar(100) NOT NULL,
  `no5` varchar(100) NOT NULL,
  `lp1` varchar(100) NOT NULL,
  `lp2` varchar(100) NOT NULL,
  `lp3` varchar(100) NOT NULL,
  `lp4` varchar(100) NOT NULL,
  `lp5` varchar(100) NOT NULL,
  `lp6` varchar(100) NOT NULL,
  `lp7` varchar(100) NOT NULL,
  `lp8` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `perkara` enum('Pencurian Dengan Pemberatan','Pencurian Kendaraan Bermotor','Pencurian Dengan Kekerasan','Pencurian Biasa','Penganiayaan Berat','Pemerasan','Penipuan','Penggelapan','Judi','Kebakaran','UU Darurat','Perlindungan Anak','Pembunuhan Bayi','Pencabulan','Percobaan Pembunuhan','Pengroyokan','Pengrusakan','Zina','Tadah','Pengancaman','Pembunuhan','Bawa Lari Anak','Kekerasan Dalam Rumah Tangga','Pemerkosaan','Korupsi','Fidusia','Uang Palsu','ITE','Pertambangan','UU Pangan','Traficking') NOT NULL,
  `pasal` varchar(100) NOT NULL,
  `tersangka` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `penyidik_pembantu` text NOT NULL,
  `file` varchar(150) NOT NULL,
  `status` enum('selesai','laporan','','') NOT NULL,
  `id_rak` int(11) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_arsip`
--

INSERT INTO `tb_arsip` (`id_perkara`, `no1`, `no2`, `no3`, `no4`, `no5`, `lp1`, `lp2`, `lp3`, `lp4`, `lp5`, `lp6`, `lp7`, `lp8`, `tanggal`, `perkara`, `pasal`, `tersangka`, `alamat`, `penyidik_pembantu`, `file`, `status`, `id_rak`, `ket`) VALUES
(5, 'BP', '06', 'V', '2016', 'RESKRIM', 'LP', 'B', '09', 'IV', '2016', 'Polda Jateng', 'Polres Banyumas', 'SEKTOR PURWOKERTO SELATAN', '2017-10-18', 'Pencurian Dengan Pemberatan', '56 JO 363 KUH PIDANA', 'NOFIANTO Als NOFI Bin SUTOMO', 'Jl. Marta', '- AKP UNGGUL DWI, SH\r\n- IPDA SUKADI, SH\r\n- AIPTU SUPARYANTO', 'kisi kisi ujian DOT.docx', 'selesai', 1, ''),
(6, 'BP', '06', 'V', '2017', 'RESKRIM', 'LP', 'B', '09', 'IV', '2016', 'Polda Jateng', 'Polres Banyumas', 'SEKTOR PURWOKERTO UTARA', '2017-10-09', 'Pencurian Kendaraan Bermotor', '56 JO 363 KUH PIDANA', 'NOFIAN Als NOFI Bin SUTAR', 'Jl. Marta', '- AKP UNGGUL DWI, SH\r\n- IPDA SUKADI, SH\r\n- AIPTU SUPARYANTO', 'kisi kisi ujian DOT.docx', 'laporan', 1, ''),
(7, 'BP', '07', 'V', '2017', 'RESKRIM', 'LP', 'B', '10', 'IV', '2016', 'Polda Jateng', 'Polres Banyumas', 'SEKTOR PURWOKERTO BARAT', '2017-12-03', 'Pencurian Dengan Kekerasan', '56 JO 363 KUH PIDANA', 'NONO Als NONO Bin SUTARYA', 'Jl. Marta', '- AKP UNGGUL DWI, SH\r\n- IPDA SUKADI, SH\r\n- AIPTU SUPARYANTO', 'kisi kisi ujian DOT.docx', 'selesai', 1, ''),
(8, 'BP', '08', 'V', '2017', 'RESKRIM', 'LP', 'B', '10', 'IV', '2016', 'Polda Jateng', 'Polres Banyumas', 'SEKTOR PURWOKERTO BARAT', '2016-12-03', 'Pencurian Biasa', '56 JO 363 KUH PIDANA', 'NONO Als NONO Bin SUTARYA', 'Jl. Marta', '- AKP UNGGUL DWI, SH\r\n- IPDA SUKADI, SH\r\n- AIPTU SUPARYANTO', 'kisi kisi ujian DOT.docx', 'laporan', 1, ''),
(9, 'BP', '06', 'V', '2016', 'RESKRIM', 'LP', 'B', '09', 'IV', '2016', 'Polda Jateng', 'Polres Banyumas', 'SEKTOR PURWOKERTO SELATAN', '2017-10-18', 'Penganiayaan Berat', '56 JO 363 KUH PIDANA', 'NOFIANTO Als NOFI Bin SUTOMO', 'Jl. Marta', '- AKP UNGGUL DWI, SH\r\n- IPDA SUKADI, SH\r\n- AIPTU SUPARYANTO', 'kisi kisi ujian DOT.docx', 'selesai', 1, ''),
(10, 'BP', '06', 'V', '2017', 'RESKRIM', 'LP', 'B', '09', 'IV', '2016', 'Polda Jateng', 'Polres Banyumas', 'SEKTOR PURWOKERTO UTARA', '2015-01-09', 'Pencurian Dengan Kekerasan', '56 JO 363 KUH PIDANA', 'NOFIAN Als NOFI Bin SUTAR', 'Jl. Marta', '- AKP UNGGUL DWI, SH\r\n- IPDA SUKADI, SH\r\n- AIPTU SUPARYANTO', 'kisi kisi ujian DOT.docx', 'laporan', 1, ''),
(11, 'BP', '08', 'V', '2017', 'RESKRIM', 'LP', 'B', '10', 'IV', '2016', 'Polda Jateng', 'Polres Banyumas', 'SEKTOR PURWOKERTO BARAT', '2016-01-03', 'Pencurian Kendaraan Bermotor', '56 JO 363 KUH PIDANA', 'NONO Als NONO Bin SUTARYA', 'Jl. Marta', '- AKP UNGGUL DWI, SH\r\n- IPDA SUKADI, SH\r\n- AIPTU SUPARYANTO', 'kisi kisi ujian DOT.docx', 'laporan', 1, ''),
(12, 'BP', '06', 'V', '2016', 'RESKRIM', 'LP', 'B', '09', 'IV', '2016', 'Polda Jateng', 'Polres Banyumas', 'SEKTOR PURWOKERTO SELATAN', '2017-01-18', 'Pencurian Dengan Pemberatan', '56 JO 363 KUH PIDANA', 'NOFIANTO Als NOFI Bin SUTOMO', 'Jl. Marta', '- AKP UNGGUL DWI, SH\r\n- IPDA SUKADI, SH\r\n- AIPTU SUPARYANTO', 'kisi kisi ujian DOT.docx', 'selesai', 1, ''),
(13, 'BP', '06', 'V', '2016', 'RESKRIM', 'LP', 'B', '09', 'IV', '2016', 'Polda Jateng', 'Polres Banyumas', 'SEKTOR PURWOKERTO SELATAN', '2017-01-18', 'Pencurian Dengan Pemberatan', '56 JO 363 KUH PIDANA', 'NOFIANTO Als NOFI Bin SUTOMO', 'Jl. Marta', '- AKP UNGGUL DWI, SH\r\n- IPDA SUKADI, SH\r\n- AIPTU SUPARYANTO', 'kisi kisi ujian DOT.docx', 'selesai', 1, ''),
(14, 'BP', '06', 'V', '2016', 'RESKRIM', 'LP', 'B', '09', 'IV', '2016', 'Polda Jateng', 'Polres Banyumas', 'SEKTOR PURWOKERTO SELATAN', '2017-01-18', 'Pencurian Dengan Pemberatan', '56 JO 363 KUH PIDANA', 'NOFIANTO Als NOFI Bin SUTOMO', 'Jl. Marta', '- AKP UNGGUL DWI, SH\r\n- IPDA SUKADI, SH\r\n- AIPTU SUPARYANTO', 'kisi kisi ujian DOT.docx', 'laporan', 1, ''),
(15, 'BP', '06', 'V', '2017', 'RESKRIM', 'LP', 'B', '09', 'IV', '2016', 'Polda Jateng', 'Polres Banyumas', 'SEKTOR PURWOKERTO UTARA', '2015-10-09', 'Pencurian Kendaraan Bermotor', '56 JO 363 KUH PIDANA', 'NOFIAN Als NOFI Bin SUTAR', 'Jl. Marta', '- AKP UNGGUL DWI, SH\r\n- IPDA SUKADI, SH\r\n- AIPTU SUPARYANTO', 'kisi kisi ujian DOT.docx', 'laporan', 1, ''),
(16, 'BP', '06', 'V', '2017', 'RESKRIM', 'LP', 'B', '09', 'IV', '2016', 'Polda Jateng', 'Polres Banyumas', 'SEKTOR PURWOKERTO UTARA', '2016-01-10', 'Pencurian Dengan Kekerasan', '56 JO 363 KUH PIDANA', 'NOFIAN Als NOFI Bin SUTAR', 'Jl. Marta', '- AKP UNGGUL DWI, SH\r\n- IPDA SUKADI, SH\r\n- AIPTU SUPARYANTO', 'kisi kisi ujian DOT.docx', 'selesai', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kabupaten`
--

CREATE TABLE `tb_kabupaten` (
  `id_kabupaten` int(11) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `nama_kabupaten` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kabupaten`
--

INSERT INTO `tb_kabupaten` (`id_kabupaten`, `id_provinsi`, `nama_kabupaten`) VALUES
(1101, 11, 'KAB. ACEH SELATAN'),
(1102, 11, 'KAB. ACEH TENGGARA'),
(1103, 11, 'KAB. ACEH TIMUR'),
(1104, 11, 'KAB. ACEH TENGAH'),
(1105, 11, 'KAB. ACEH BARAT'),
(1106, 11, 'KAB. ACEH BESAR'),
(1107, 11, 'KAB. PIDIE'),
(1108, 11, 'KAB. ACEH UTARA'),
(1109, 11, 'KAB. SIMEULUE'),
(1110, 11, 'KAB. ACEH SINGKIL'),
(1111, 11, 'KAB. BIREUEN'),
(1112, 11, 'KAB. ACEH BARAT DAYA'),
(1113, 11, 'KAB. GAYO LUES'),
(1114, 11, 'KAB. ACEH JAYA'),
(1115, 11, 'KAB. NAGAN RAYA'),
(1116, 11, 'KAB. ACEH TAMIANG'),
(1117, 11, 'KAB. BENER MERIAH'),
(1118, 11, 'KAB. PIDIE JAYA'),
(1171, 11, 'KOTA BANDA ACEH'),
(1172, 11, 'KOTA SABANG'),
(1173, 11, 'KOTA LHOKSEUMAWE'),
(1174, 11, 'KOTA LANGSA'),
(1175, 11, 'KOTA SUBULUSSALAM'),
(1201, 12, 'KAB. TAPANULI TENGAH'),
(1202, 12, 'KAB. TAPANULI UTARA'),
(1203, 12, 'KAB. TAPANULI SELATA'),
(1204, 12, 'KAB. NIAS'),
(1205, 12, 'KAB. LANGKAT'),
(1206, 12, 'KAB. KARO'),
(1207, 12, 'KAB. DELI SERDANG'),
(1208, 12, 'KAB. SIMALUNGUN'),
(1209, 12, 'KAB. ASAHAN'),
(1210, 12, 'KAB. LABUHANBATU'),
(1211, 12, 'KAB. DAIRI'),
(1212, 12, 'KAB. TOBA SAMOSIR'),
(1213, 12, 'KAB. MANDAILING NATA'),
(1214, 12, 'KAB. NIAS SELATAN'),
(1215, 12, 'KAB. PAKPAK BHARAT'),
(1216, 12, 'KAB. HUMBANG HASUNDU'),
(1217, 12, 'KAB. SAMOSIR'),
(1218, 12, 'KAB. SERDANG BEDAGAI'),
(1219, 12, 'KAB. BATU BARA'),
(1220, 12, 'KAB. PADANG LAWAS UT'),
(1221, 12, 'KAB. PADANG LAWAS'),
(1222, 12, 'KAB. LABUHANBATU SEL'),
(1223, 12, 'KAB. LABUHANBATU UTA'),
(1224, 12, 'KAB. NIAS UTARA'),
(1225, 12, 'KAB. NIAS BARAT'),
(1271, 12, 'KOTA MEDAN'),
(1272, 12, 'KOTA PEMATANG SIANTA'),
(1273, 12, 'KOTA SIBOLGA'),
(1274, 12, 'KOTA TANJUNG BALAI'),
(1275, 12, 'KOTA BINJAI'),
(1276, 12, 'KOTA TEBING TINGGI'),
(1277, 12, 'KOTA PADANGSIDIMPUAN'),
(1278, 12, 'KOTA GUNUNGSITOLI'),
(1301, 13, 'KAB. PESISIR SELATAN'),
(1302, 13, 'KAB. SOLOK'),
(1303, 13, 'KAB. SIJUNJUNG'),
(1304, 13, 'KAB. TANAH DATAR'),
(1305, 13, 'KAB. PADANG PARIAMAN'),
(1306, 13, 'KAB. AGAM'),
(1307, 13, 'KAB. LIMA PULUH KOTA'),
(1308, 13, 'KAB. PASAMAN'),
(1309, 13, 'KAB. KEPULAUAN MENTA'),
(1310, 13, 'KAB. DHARMASRAYA'),
(1311, 13, 'KAB. SOLOK SELATAN'),
(1312, 13, 'KAB. PASAMAN BARAT'),
(1371, 13, 'KOTA PADANG'),
(1372, 13, 'KOTA SOLOK'),
(1373, 13, 'KOTA SAWAHLUNTO'),
(1374, 13, 'KOTA PADANG PANJANG'),
(1375, 13, 'KOTA BUKITTINGGI'),
(1376, 13, 'KOTA PAYAKUMBUH'),
(1377, 13, 'KOTA PARIAMAN'),
(1401, 14, 'KAB. KAMPAR'),
(1402, 14, 'KAB. INDRAGIRI HULU'),
(1403, 14, 'KAB. BENGKALIS'),
(1404, 14, 'KAB. INDRAGIRI HILIR'),
(1405, 14, 'KAB. PELALAWAN'),
(1406, 14, 'KAB. ROKAN HULU'),
(1407, 14, 'KAB. ROKAN HILIR'),
(1408, 14, 'KAB. SIAK'),
(1409, 14, 'KAB. KUANTAN SINGING'),
(1410, 14, 'KAB. KEPULAUAN MERAN'),
(1471, 14, 'KOTA PEKANBARU'),
(1472, 14, 'KOTA DUMAI'),
(1501, 15, 'KAB. KERINCI'),
(1502, 15, 'KAB. MERANGIN'),
(1503, 15, 'KAB. SAROLANGUN'),
(1504, 15, 'KAB. BATANGHARI'),
(1505, 15, 'KAB. MUARO JAMBI'),
(1506, 15, 'KAB. TANJUNG JABUNG '),
(1507, 15, 'KAB. TANJUNG JABUNG '),
(1508, 15, 'KAB. BUNGO'),
(1509, 15, 'KAB. TEBO'),
(1571, 15, 'KOTA JAMBI'),
(1572, 15, 'KOTA SUNGAI PENUH'),
(1601, 16, 'KAB. OGAN KOMERING U'),
(1602, 16, 'KAB. OGAN KOMERING I'),
(1603, 16, 'KAB. MUARA ENIM'),
(1604, 16, 'KAB. LAHAT'),
(1605, 16, 'KAB. MUSI RAWAS'),
(1606, 16, 'KAB. MUSI BANYUASIN'),
(1607, 16, 'KAB. BANYUASIN'),
(1608, 16, 'KAB. OGAN KOMERING U'),
(1609, 16, 'KAB. OGAN KOMERING U'),
(1610, 16, 'KAB. OGAN ILIR'),
(1611, 16, 'KAB. EMPAT LAWANG'),
(1612, 16, 'KAB. PENUKAL ABAB LE'),
(1613, 16, 'KAB. MUSI RAWAS UTAR'),
(1671, 16, 'KOTA PALEMBANG'),
(1672, 16, 'KOTA PAGAR ALAM'),
(1673, 16, 'KOTA LUBUK LINGGAU'),
(1674, 16, 'KOTA PRABUMULIH'),
(1701, 17, 'KAB. BENGKULU SELATA'),
(1702, 17, 'KAB. REJANG LEBONG'),
(1703, 17, 'KAB. BENGKULU UTARA'),
(1704, 17, 'KAB. KAUR'),
(1705, 17, 'KAB. SELUMA'),
(1706, 17, 'KAB. MUKO MUKO'),
(1707, 17, 'KAB. LEBONG'),
(1708, 17, 'KAB. KEPAHIANG'),
(1709, 17, 'KAB. BENGKULU TENGAH'),
(1771, 17, 'KOTA BENGKULU'),
(1801, 18, 'KAB. LAMPUNG SELATAN'),
(1802, 18, 'KAB. LAMPUNG TENGAH'),
(1803, 18, 'KAB. LAMPUNG UTARA'),
(1804, 18, 'KAB. LAMPUNG BARAT'),
(1805, 18, 'KAB. TULANG BAWANG'),
(1806, 18, 'KAB. TANGGAMUS'),
(1807, 18, 'KAB. LAMPUNG TIMUR'),
(1808, 18, 'KAB. WAY KANAN'),
(1809, 18, 'KAB. PESAWARAN'),
(1810, 18, 'KAB. PRINGSEWU'),
(1811, 18, 'KAB. MESUJI'),
(1812, 18, 'KAB. TULANG BAWANG B'),
(1813, 18, 'KAB. PESISIR BARAT'),
(1871, 18, 'KOTA BANDAR LAMPUNG'),
(1872, 18, 'KOTA METRO'),
(1901, 19, 'KAB. BANGKA'),
(1902, 19, 'KAB. BELITUNG'),
(1903, 19, 'KAB. BANGKA SELATAN'),
(1904, 19, 'KAB. BANGKA TENGAH'),
(1905, 19, 'KAB. BANGKA BARAT'),
(1906, 19, 'KAB. BELITUNG TIMUR'),
(1971, 19, 'KOTA PANGKAL PINANG'),
(2101, 21, 'KAB. BINTAN'),
(2102, 21, 'KAB. KARIMUN'),
(2103, 21, 'KAB. NATUNA'),
(2104, 21, 'KAB. LINGGA'),
(2105, 21, 'KAB. KEPULAUAN ANAMB'),
(2171, 21, 'KOTA BATAM'),
(2172, 21, 'KOTA TANJUNG PINANG'),
(3101, 31, 'KAB. ADM. KEP. SERIB'),
(3171, 31, 'KOTA ADM. JAKARTA PU'),
(3172, 31, 'KOTA ADM. JAKARTA UT'),
(3173, 31, 'KOTA ADM. JAKARTA BA'),
(3174, 31, 'KOTA ADM. JAKARTA SE'),
(3175, 31, 'KOTA ADM. JAKARTA TI'),
(3201, 32, 'KAB. BOGOR'),
(3202, 32, 'KAB. SUKABUMI'),
(3203, 32, 'KAB. CIANJUR'),
(3204, 32, 'KAB. BANDUNG'),
(3205, 32, 'KAB. GARUT'),
(3206, 32, 'KAB. TASIKMALAYA'),
(3207, 32, 'KAB. CIAMIS'),
(3208, 32, 'KAB. KUNINGAN'),
(3209, 32, 'KAB. CIREBON'),
(3210, 32, 'KAB. MAJALENGKA'),
(3211, 32, 'KAB. SUMEDANG'),
(3212, 32, 'KAB. INDRAMAYU'),
(3213, 32, 'KAB. SUBANG'),
(3214, 32, 'KAB. PURWAKARTA'),
(3215, 32, 'KAB. KARAWANG'),
(3216, 32, 'KAB. BEKASI'),
(3217, 32, 'KAB. BANDUNG BARAT'),
(3218, 32, 'KAB. PANGANDARAN'),
(3271, 32, 'KOTA BOGOR'),
(3272, 32, 'KOTA SUKABUMI'),
(3273, 32, 'KOTA BANDUNG'),
(3274, 32, 'KOTA CIREBON'),
(3275, 32, 'KOTA BEKASI'),
(3276, 32, 'KOTA DEPOK'),
(3277, 32, 'KOTA CIMAHI'),
(3278, 32, 'KOTA TASIKMALAYA'),
(3279, 32, 'KOTA BANJAR'),
(3301, 33, 'KAB. CILACAP'),
(3302, 33, 'KAB. BANYUMAS'),
(3303, 33, 'KAB. PURBALINGGA'),
(3304, 33, 'KAB. BANJARNEGARA'),
(3305, 33, 'KAB. KEBUMEN'),
(3306, 33, 'KAB. PURWOREJO'),
(3307, 33, 'KAB. WONOSOBO'),
(3308, 33, 'KAB. MAGELANG'),
(3309, 33, 'KAB. BOYOLALI'),
(3310, 33, 'KAB. KLATEN'),
(3311, 33, 'KAB. SUKOHARJO'),
(3312, 33, 'KAB. WONOGIRI'),
(3313, 33, 'KAB. KARANGANYAR'),
(3314, 33, 'KAB. SRAGEN'),
(3315, 33, 'KAB. GROBOGAN'),
(3316, 33, 'KAB. BLORA'),
(3317, 33, 'KAB. REMBANG'),
(3318, 33, 'KAB. PATI'),
(3319, 33, 'KAB. KUDUS'),
(3320, 33, 'KAB. JEPARA'),
(3321, 33, 'KAB. DEMAK'),
(3322, 33, 'KAB. SEMARANG'),
(3323, 33, 'KAB. TEMANGGUNG'),
(3324, 33, 'KAB. KENDAL'),
(3325, 33, 'KAB. BATANG'),
(3326, 33, 'KAB. PEKALONGAN'),
(3327, 33, 'KAB. PEMALANG'),
(3328, 33, 'KAB. TEGAL'),
(3329, 33, 'KAB. BREBES'),
(3371, 33, 'KOTA MAGELANG'),
(3372, 33, 'KOTA SURAKARTA'),
(3373, 33, 'KOTA SALATIGA'),
(3374, 33, 'KOTA SEMARANG'),
(3375, 33, 'KOTA PEKALONGAN'),
(3376, 33, 'KOTA TEGAL'),
(3401, 34, 'KAB. KULON PROGO'),
(3402, 34, 'KAB. BANTUL'),
(3403, 34, 'KAB. GUNUNG KIDUL'),
(3404, 34, 'KAB. SLEMAN'),
(3471, 34, 'KOTA YOGYAKARTA'),
(3501, 35, 'KAB. PACITAN'),
(3502, 35, 'KAB. PONOROGO'),
(3503, 35, 'KAB. TRENGGALEK'),
(3504, 35, 'KAB. TULUNGAGUNG'),
(3505, 35, 'KAB. BLITAR'),
(3506, 35, 'KAB. KEDIRI'),
(3507, 35, 'KAB. MALANG'),
(3508, 35, 'KAB. LUMAJANG'),
(3509, 35, 'KAB. JEMBER'),
(3510, 35, 'KAB. BANYUWANGI'),
(3511, 35, 'KAB. BONDOWOSO'),
(3512, 35, 'KAB. SITUBONDO'),
(3513, 35, 'KAB. PROBOLINGGO'),
(3514, 35, 'KAB. PASURUAN'),
(3515, 35, 'KAB. SIDOARJO'),
(3516, 35, 'KAB. MOJOKERTO'),
(3517, 35, 'KAB. JOMBANG'),
(3518, 35, 'KAB. NGANJUK'),
(3519, 35, 'KAB. MADIUN'),
(3520, 35, 'KAB. MAGETAN'),
(3521, 35, 'KAB. NGAWI'),
(3522, 35, 'KAB. BOJONEGORO'),
(3523, 35, 'KAB. TUBAN'),
(3524, 35, 'KAB. LAMONGAN'),
(3525, 35, 'KAB. GRESIK'),
(3526, 35, 'KAB. BANGKALAN'),
(3527, 35, 'KAB. SAMPANG'),
(3528, 35, 'KAB. PAMEKASAN'),
(3529, 35, 'KAB. SUMENEP'),
(3571, 35, 'KOTA KEDIRI'),
(3572, 35, 'KOTA BLITAR'),
(3573, 35, 'KOTA MALANG'),
(3574, 35, 'KOTA PROBOLINGGO'),
(3575, 35, 'KOTA PASURUAN'),
(3576, 35, 'KOTA MOJOKERTO'),
(3577, 35, 'KOTA MADIUN'),
(3578, 35, 'KOTA SURABAYA'),
(3579, 35, 'KOTA BATU'),
(3601, 36, 'KAB. PANDEGLANG'),
(3602, 36, 'KAB. LEBAK'),
(3603, 36, 'KAB. TANGERANG'),
(3604, 36, 'KAB. SERANG'),
(3671, 36, 'KOTA TANGERANG'),
(3672, 36, 'KOTA CILEGON'),
(3673, 36, 'KOTA SERANG'),
(3674, 36, 'KOTA TANGERANG SELAT'),
(5101, 51, 'KAB. JEMBRANA'),
(5102, 51, 'KAB. TABANAN'),
(5103, 51, 'KAB. BADUNG'),
(5104, 51, 'KAB. GIANYAR'),
(5105, 51, 'KAB. KLUNGKUNG'),
(5106, 51, 'KAB. BANGLI'),
(5107, 51, 'KAB. KARANGASEM'),
(5108, 51, 'KAB. BULELENG'),
(5171, 51, 'KOTA DENPASAR'),
(5201, 52, 'KAB. LOMBOK BARAT'),
(5202, 52, 'KAB. LOMBOK TENGAH'),
(5203, 52, 'KAB. LOMBOK TIMUR'),
(5204, 52, 'KAB. SUMBAWA'),
(5205, 52, 'KAB. DOMPU'),
(5206, 52, 'KAB. BIMA'),
(5207, 52, 'KAB. SUMBAWA BARAT'),
(5208, 52, 'KAB. LOMBOK UTARA'),
(5271, 52, 'KOTA MATARAM'),
(5272, 52, 'KOTA BIMA'),
(5301, 53, 'KAB. KUPANG'),
(5302, 53, 'KAB TIMOR TENGAH SEL'),
(5303, 53, 'KAB. TIMOR TENGAH UT'),
(5304, 53, 'KAB. BELU'),
(5305, 53, 'KAB. ALOR'),
(5306, 53, 'KAB. FLORES TIMUR'),
(5307, 53, 'KAB. SIKKA'),
(5308, 53, 'KAB. ENDE'),
(5309, 53, 'KAB. NGADA'),
(5310, 53, 'KAB. MANGGARAI'),
(5311, 53, 'KAB. SUMBA TIMUR'),
(5312, 53, 'KAB. SUMBA BARAT'),
(5313, 53, 'KAB. LEMBATA'),
(5314, 53, 'KAB. ROTE NDAO'),
(5315, 53, 'KAB. MANGGARAI BARAT'),
(5316, 53, 'KAB. NAGEKEO'),
(5317, 53, 'KAB. SUMBA TENGAH'),
(5318, 53, 'KAB. SUMBA BARAT DAY'),
(5319, 53, 'KAB. MANGGARAI TIMUR'),
(5320, 53, 'KAB. SABU RAIJUA'),
(5321, 53, 'KAB. MALAKA'),
(5371, 53, 'KOTA KUPANG'),
(6101, 61, 'KAB. SAMBAS'),
(6102, 61, 'KAB. MEMPAWAH'),
(6103, 61, 'KAB. SANGGAU'),
(6104, 61, 'KAB. KETAPANG'),
(6105, 61, 'KAB. SINTANG'),
(6106, 61, 'KAB. KAPUAS HULU'),
(6107, 61, 'KAB. BENGKAYANG'),
(6108, 61, 'KAB. LANDAK'),
(6109, 61, 'KAB. SEKADAU'),
(6110, 61, 'KAB. MELAWI'),
(6111, 61, 'KAB. KAYONG UTARA'),
(6112, 61, 'KAB. KUBU RAYA'),
(6171, 61, 'KOTA PONTIANAK'),
(6172, 61, 'KOTA SINGKAWANG'),
(6201, 62, 'KAB. KOTAWARINGIN BA'),
(6202, 62, 'KAB. KOTAWARINGIN TI'),
(6203, 62, 'KAB. KAPUAS'),
(6204, 62, 'KAB. BARITO SELATAN'),
(6205, 62, 'KAB. BARITO UTARA'),
(6206, 62, 'KAB. KATINGAN'),
(6207, 62, 'KAB. SERUYAN'),
(6208, 62, 'KAB. SUKAMARA'),
(6209, 62, 'KAB. LAMANDAU'),
(6210, 62, 'KAB. GUNUNG MAS'),
(6211, 62, 'KAB. PULANG PISAU'),
(6212, 62, 'KAB. MURUNG RAYA'),
(6213, 62, 'KAB. BARITO TIMUR'),
(6271, 62, 'KOTA PALANGKARAYA'),
(6301, 63, 'KAB. TANAH LAUT'),
(6302, 63, 'KAB. KOTABARU'),
(6303, 63, 'KAB. BANJAR'),
(6304, 63, 'KAB. BARITO KUALA'),
(6305, 63, 'KAB. TAPIN'),
(6306, 63, 'KAB. HULU SUNGAI SEL'),
(6307, 63, 'KAB. HULU SUNGAI TEN'),
(6308, 63, 'KAB. HULU SUNGAI UTA'),
(6309, 63, 'KAB. TABALONG'),
(6310, 63, 'KAB. TANAH BUMBU'),
(6311, 63, 'KAB. BALANGAN'),
(6371, 63, 'KOTA BANJARMASIN'),
(6372, 63, 'KOTA BANJARBARU'),
(6401, 64, 'KAB. PASER'),
(6402, 64, 'KAB. KUTAI KARTANEGA'),
(6403, 64, 'KAB. BERAU'),
(6407, 64, 'KAB. KUTAI BARAT'),
(6408, 64, 'KAB. KUTAI TIMUR'),
(6409, 64, 'KAB. PENAJAM PASER U'),
(6411, 64, 'KAB. MAHAKAM ULU'),
(6471, 64, 'KOTA BALIKPAPAN'),
(6472, 64, 'KOTA SAMARINDA'),
(6474, 64, 'KOTA BONTANG'),
(6501, 65, 'KAB. BULUNGAN'),
(6502, 65, 'KAB. MALINAU'),
(6503, 65, 'KAB. NUNUKAN'),
(6504, 65, 'KAB. TANA TIDUNG'),
(6571, 65, 'KOTA TARAKAN'),
(7101, 71, 'KAB. BOLAANG MONGOND'),
(7102, 71, 'KAB. MINAHASA'),
(7103, 71, 'KAB. KEPULAUAN SANGI'),
(7104, 71, 'KAB. KEPULAUAN TALAU'),
(7105, 71, 'KAB. MINAHASA SELATA'),
(7106, 71, 'KAB. MINAHASA UTARA'),
(7107, 71, 'KAB. MINAHASA TENGGA'),
(7108, 71, 'KAB. BOLAANG MONGOND'),
(7109, 71, 'KAB. KEP. SIAU TAGUL'),
(7110, 71, 'KAB. BOLAANG MONGOND'),
(7111, 71, 'KAB. BOLAANG MONGOND'),
(7171, 71, 'KOTA MANADO'),
(7172, 71, 'KOTA BITUNG'),
(7173, 71, 'KOTA TOMOHON'),
(7174, 71, 'KOTA KOTAMOBAGU'),
(7201, 72, 'KAB. BANGGAI'),
(7202, 72, 'KAB. POSO'),
(7203, 72, 'KAB. DONGGALA'),
(7204, 72, 'KAB. TOLI TOLI'),
(7205, 72, 'KAB. BUOL'),
(7206, 72, 'KAB. MOROWALI'),
(7207, 72, 'KAB. BANGGAI KEPULAU'),
(7208, 72, 'KAB. PARIGI MOUTONG'),
(7209, 72, 'KAB. TOJO UNA UNA'),
(7210, 72, 'KAB. SIGI'),
(7211, 72, 'KAB. BANGGAI LAUT'),
(7212, 72, 'KAB. MOROWALI UTARA'),
(7271, 72, 'KOTA PALU'),
(7301, 73, 'KAB. KEPULAUAN SELAY'),
(7302, 73, 'KAB. BULUKUMBA'),
(7303, 73, 'KAB. BANTAENG'),
(7304, 73, 'KAB. JENEPONTO'),
(7305, 73, 'KAB. TAKALAR'),
(7306, 73, 'KAB. GOWA'),
(7307, 73, 'KAB. SINJAI'),
(7308, 73, 'KAB. BONE'),
(7309, 73, 'KAB. MAROS'),
(7310, 73, 'KAB. PANGKAJENE KEPU'),
(7311, 73, 'KAB. BARRU'),
(7312, 73, 'KAB. SOPPENG'),
(7313, 73, 'KAB. WAJO'),
(7314, 73, 'KAB. SIDENRENG RAPPA'),
(7315, 73, 'KAB. PINRANG'),
(7316, 73, 'KAB. ENREKANG'),
(7317, 73, 'KAB. LUWU'),
(7318, 73, 'KAB. TANA TORAJA'),
(7322, 73, 'KAB. LUWU UTARA'),
(7324, 73, 'KAB. LUWU TIMUR'),
(7326, 73, 'KAB. TORAJA UTARA'),
(7371, 73, 'KOTA MAKASSAR'),
(7372, 73, 'KOTA PARE PARE'),
(7373, 73, 'KOTA PALOPO'),
(7401, 74, 'KAB. KOLAKA'),
(7402, 74, 'KAB. KONAWE'),
(7403, 74, 'KAB. MUNA'),
(7404, 74, 'KAB. BUTON'),
(7405, 74, 'KAB. KONAWE SELATAN'),
(7406, 74, 'KAB. BOMBANA'),
(7407, 74, 'KAB. WAKATOBI'),
(7408, 74, 'KAB. KOLAKA UTARA'),
(7409, 74, 'KAB. KONAWE UTARA'),
(7410, 74, 'KAB. BUTON UTARA'),
(7411, 74, 'KAB. KOLAKA TIMUR'),
(7412, 74, 'KAB. KONAWE KEPULAUA'),
(7413, 74, 'KAB. MUNA BARAT'),
(7414, 74, 'KAB. BUTON TENGAH'),
(7415, 74, 'KAB. BUTON SELATAN'),
(7471, 74, 'KOTA KENDARI'),
(7472, 74, 'KOTA BAU BAU'),
(7501, 75, 'KAB. GORONTALO'),
(7502, 75, 'KAB. BOALEMO'),
(7503, 75, 'KAB. BONE BOLANGO'),
(7504, 75, 'KAB. PAHUWATO'),
(7505, 75, 'KAB. GORONTALO UTARA'),
(7571, 75, 'KOTA GORONTALO'),
(7601, 76, 'KAB. MAMUJU UTARA'),
(7602, 76, 'KAB. MAMUJU'),
(7603, 76, 'KAB. MAMASA'),
(7604, 76, 'KAB. POLEWALI MANDAR'),
(7605, 76, 'KAB. MAJENE'),
(7606, 76, 'KAB. MAMUJU TENGAH'),
(8101, 81, 'KAB. MALUKU TENGAH'),
(8102, 81, 'KAB. MALUKU TENGGARA'),
(8103, 81, 'KAB MALUKU TENGGARA '),
(8104, 81, 'KAB. BURU'),
(8105, 81, 'KAB. SERAM BAGIAN TI'),
(8106, 81, 'KAB. SERAM BAGIAN BA'),
(8107, 81, 'KAB. KEPULAUAN ARU'),
(8108, 81, 'KAB. MALUKU BARAT DA'),
(8109, 81, 'KAB. BURU SELATAN'),
(8171, 81, 'KOTA AMBON'),
(8172, 81, 'KOTA TUAL'),
(8201, 82, 'KAB. HALMAHERA BARAT'),
(8202, 82, 'KAB. HALMAHERA TENGA'),
(8203, 82, 'KAB. HALMAHERA UTARA'),
(8204, 82, 'KAB. HALMAHERA SELAT'),
(8205, 82, 'KAB. KEPULAUAN SULA'),
(8206, 82, 'KAB. HALMAHERA TIMUR'),
(8207, 82, 'KAB. PULAU MOROTAI'),
(8208, 82, 'KAB. PULAU TALIABU'),
(8271, 82, 'KOTA TERNATE'),
(8272, 82, 'KOTA TIDORE KEPULAUA'),
(9101, 91, 'KAB. MERAUKE'),
(9102, 91, 'KAB. JAYAWIJAYA'),
(9103, 91, 'KAB. JAYAPURA'),
(9104, 91, 'KAB. NABIRE'),
(9105, 91, 'KAB. KEPULAUAN YAPEN'),
(9106, 91, 'KAB. BIAK NUMFOR'),
(9107, 91, 'KAB. PUNCAK JAYA'),
(9108, 91, 'KAB. PANIAI'),
(9109, 91, 'KAB. MIMIKA'),
(9110, 91, 'KAB. SARMI'),
(9111, 91, 'KAB. KEEROM'),
(9112, 91, 'KAB PEGUNUNGAN BINTA'),
(9113, 91, 'KAB. YAHUKIMO'),
(9114, 91, 'KAB. TOLIKARA'),
(9115, 91, 'KAB. WAROPEN'),
(9116, 91, 'KAB. BOVEN DIGOEL'),
(9117, 91, 'KAB. MAPPI'),
(9118, 91, 'KAB. ASMAT'),
(9119, 91, 'KAB. SUPIORI'),
(9120, 91, 'KAB. MAMBERAMO RAYA'),
(9121, 91, 'KAB. MAMBERAMO TENGA'),
(9122, 91, 'KAB. YALIMO'),
(9123, 91, 'KAB. LANNY JAYA'),
(9124, 91, 'KAB. NDUGA'),
(9125, 91, 'KAB. PUNCAK'),
(9126, 91, 'KAB. DOGIYAI'),
(9127, 91, 'KAB. INTAN JAYA'),
(9128, 91, 'KAB. DEIYAI'),
(9171, 91, 'KOTA JAYAPURA'),
(9201, 92, 'KAB. SORONG'),
(9202, 92, 'KAB. MANOKWARI'),
(9203, 92, 'KAB. FAK FAK'),
(9204, 92, 'KAB. SORONG SELATAN'),
(9205, 92, 'KAB. RAJA AMPAT'),
(9206, 92, 'KAB. TELUK BINTUNI'),
(9207, 92, 'KAB. TELUK WONDAMA'),
(9208, 92, 'KAB. KAIMANA'),
(9209, 92, 'KAB. TAMBRAUW'),
(9210, 92, 'KAB. MAYBRAT'),
(9211, 92, 'KAB. MANOKWARI SELAT'),
(9212, 92, 'KAB. PEGUNUNGAN ARFA'),
(9271, 92, 'KOTA SORONG');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `gender` enum('Laki-laki','Perempuan') NOT NULL,
  `agama` enum('Islam','Kristen','Khatolik','Hindu','Budha','Lainnya') NOT NULL,
  `perkawinan` enum('Belum Menikah','Menikah','Janda','Duda') NOT NULL,
  `anak` int(2) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `rt` int(3) NOT NULL,
  `rw` int(3) NOT NULL,
  `kecamatan` varchar(20) NOT NULL,
  `kabupaten` int(2) NOT NULL,
  `kabupaten2` varchar(20) NOT NULL,
  `kode_pos` varchar(5) NOT NULL,
  `sd` varchar(100) NOT NULL,
  `smp` varchar(100) NOT NULL,
  `sma` varchar(100) NOT NULL,
  `kab_sd` int(2) NOT NULL,
  `kab_smp` int(11) NOT NULL,
  `kab_sma` int(2) NOT NULL,
  `lulus_sd` int(4) NOT NULL,
  `lulus_smp` int(4) NOT NULL,
  `lulus_sma` int(4) NOT NULL,
  `angkatan` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`id_mahasiswa`, `nim`, `nama`, `nik`, `tempat_lahir`, `tgl_lahir`, `gender`, `agama`, `perkawinan`, `anak`, `email`, `password`, `hp`, `alamat`, `rt`, `rw`, `kecamatan`, `kabupaten`, `kabupaten2`, `kode_pos`, `sd`, `smp`, `sma`, `kab_sd`, `kab_smp`, `kab_sma`, `lulus_sd`, `lulus_smp`, `lulus_sma`, `angkatan`) VALUES
(1, '14.11.0344', 'Imanudin Sholeh', '330121923', 'Banyumas', '1996-11-10', 'Laki-laki', 'Islam', 'Belum Menikah', 0, 'imanudinsholeh20@gmail.com', 'e4da3b7fbbce2345d7772b0674a318d5', '858796353', 'Lemberang sokaraja', 3, 1, 'Sokaraja', 3302, '', '53181', 'mi maarif lemberang', 'smp n 3 sokaraja', 'smkn 1 purbalingga', 3302, 3302, 3303, 2008, 2011, 2014, 2014),
(2, '14.11.0323', 'Reza Pahlevi', '2165592380200', 'Banyumas', '1996-10-11', 'Laki-laki', 'Islam', 'Belum Menikah', 0, 'kanyut@gmail.com', 'e4da3b7fbbce2345d7772b0674a318d5', '082362623', 'Purwokerto', 3, 1, 'Sokaraja', 3302, '', '53181', 'SD 1 aja cukup', 'SMP 1 aja cukup', 'SMA 1 aja cukup', 3302, 3302, 3302, 2008, 2011, 2014, 2014),
(3, '14.11.0358', 'Joko tri hartanto', '32732873298977600', 'Banyumas', '1996-10-12', 'Perempuan', 'Islam', 'Menikah', 1, 'joko@gmail.com', 'e4da3b7fbbce2345d7772b0674a318d5', '087647334', 'Purwokerto', 3, 1, '', 3304, '', '53181', 'SD 2 anak lebih baik', 'SMP 2 anak lebih baik', 'SMA 2 anak lebih baik', 3302, 3302, 3302, 2008, 2011, 2014, 2014);

-- --------------------------------------------------------

--
-- Table structure for table `tb_modul`
--

CREATE TABLE `tb_modul` (
  `id_modul` int(11) NOT NULL,
  `judul` varchar(20) NOT NULL,
  `isi` text NOT NULL,
  `tgl_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_modul`
--

INSERT INTO `tb_modul` (`id_modul`, `judul`, `isi`, `tgl_update`) VALUES
(1, 'layanan mobile', '1', '2017-10-19 06:20:37');

-- --------------------------------------------------------

--
-- Table structure for table `tb_orangtua`
--

CREATE TABLE `tb_orangtua` (
  `id_mahasiswa` int(11) NOT NULL,
  `id_orangtua` int(11) NOT NULL,
  `nama_orangtua` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `rt` int(3) NOT NULL,
  `rw` int(3) NOT NULL,
  `kecamatan` varchar(20) NOT NULL,
  `kabupaten` int(2) NOT NULL,
  `provinsi` int(2) NOT NULL,
  `kode_pos` varchar(5) NOT NULL,
  `pendidikan` enum('S3','S2','S1','Spesialias II','Spesialis I','DIII','DII','DI','SMA/SMK/MA','SMP/MTS','SD/MI','Tidak Sekolah') NOT NULL,
  `pekerjaan` enum('PNS','POLRI','TNI','BUMN','BUMD','Wiraswasta','Karyawan Swasta','Buruh','Petani') NOT NULL,
  `status` enum('Aktif','Pensiunan','Lainnya') NOT NULL,
  `hp` int(15) NOT NULL,
  `nip` int(20) NOT NULL,
  `pangkat` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `intansi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_orangtua`
--

INSERT INTO `tb_orangtua` (`id_mahasiswa`, `id_orangtua`, `nama_orangtua`, `alamat`, `rt`, `rw`, `kecamatan`, `kabupaten`, `provinsi`, `kode_pos`, `pendidikan`, `pekerjaan`, `status`, `hp`, `nip`, `pangkat`, `jabatan`, `intansi`) VALUES
(2, 1, '', '', 0, 0, '', 0, 0, '', 'S3', 'PNS', 'Aktif', 0, 0, '', '', ''),
(3, 2, '', '', 0, 0, '', 0, 0, '', 'S3', 'PNS', 'Aktif', 0, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengumuman`
--

CREATE TABLE `tb_pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `judul_pengumuman` varchar(255) NOT NULL,
  `tgl_pengumuman` datetime NOT NULL,
  `pengumuman` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengumuman`
--

INSERT INTO `tb_pengumuman` (`id_pengumuman`, `id_admin`, `judul_pengumuman`, `tgl_pengumuman`, `pengumuman`) VALUES
(1, 1, 'Uhhh', '2017-10-11 00:00:00', 'hahaha'),
(2, 1, 'warior', '2017-10-12 00:00:00', 'yuhuuuu'),
(3, 1, 'aaaaa', '2017-10-22 06:00:00', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa jaajjajja'),
(4, 1, 'bbaaa', '2017-10-22 06:00:00', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa jaajjajja'),
(5, 1, 'ccaaa', '2017-10-22 06:00:00', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa jaajjajja'),
(6, 1, '1bbaaa', '2017-10-22 06:00:00', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa jaajjajja'),
(7, 1, '2ccaaa', '2017-10-22 06:00:00', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa jaajjajja'),
(8, 1, '3bbaaa', '2017-10-22 06:00:00', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa jaajjajja'),
(9, 1, '4ccaaa', '2017-10-22 06:00:00', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa jaajjajja'),
(10, 1, '5bbaaa', '2017-10-22 06:00:00', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa jaajjajja'),
(11, 1, '6ccaaa', '2017-10-22 06:00:00', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa jaajjajja'),
(12, 1, '7bbaaa', '2017-10-22 06:00:00', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa jaajjajja'),
(13, 1, '8ccaaa', '2017-10-22 06:00:00', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa jaajjajja'),
(14, 1, '9bbaaa', '2017-10-22 06:00:00', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa jaajjajja'),
(15, 1, '10ccaaa', '2017-10-22 06:00:00', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa jaajjajja'),
(16, 1, '11bbaaa', '2017-10-22 06:00:00', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa jaajjajja'),
(17, 1, '12ccaaa', '2017-10-22 06:00:00', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa jaajjajja'),
(18, 1, '13bbaaa', '2017-10-22 06:00:00', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa jaajjajja'),
(19, 1, '14ccaaa', '2017-10-22 06:00:00', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa jaajjajja'),
(20, 1, '15bbaaa', '2017-10-22 06:00:00', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa jaajjajja'),
(21, 1, '16ccaaa', '2017-10-22 06:00:00', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa jaajjajja'),
(22, 1, 'Pengumuman beneran', '2017-10-22 06:48:51', '<p>Pengumuman daftar mahasiswa yng di drop out... :D</p>\r\n'),
(23, 1, 'Pengumuman beneran', '2017-10-22 06:50:46', '<p>Pengumuman daftar mahasiswa yng di drop out... :D</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengumuman_download`
--

CREATE TABLE `tb_pengumuman_download` (
  `id_pengumuman_download` int(11) NOT NULL,
  `id_pengumuman` int(11) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengumuman_download`
--

INSERT INTO `tb_pengumuman_download` (`id_pengumuman_download`, `id_pengumuman`, `file`) VALUES
(1, 23, 'data.xlsx'),
(2, 23, 'SURAT_UNDANGAN_SERTIFIKASI_CILACAP_-_Imanudinv2.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_provinsi`
--

CREATE TABLE `tb_provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `nama_provinsi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_provinsi`
--

INSERT INTO `tb_provinsi` (`id_provinsi`, `nama_provinsi`) VALUES
(11, 'Aceh'),
(12, 'Sumatera Utara'),
(13, 'Sumatera Barat'),
(14, 'Riau'),
(15, 'Jambi'),
(16, 'Sumatera Selatan'),
(17, 'Bengkulu'),
(18, 'Lampung'),
(19, 'Kepulauan Bangka Bel'),
(21, 'Kepulauan Riau'),
(31, 'DKI Jakarta'),
(32, 'Jawa Barat'),
(33, 'Jawa Tengah'),
(34, 'DI Yogyakarta'),
(35, 'Jawa Timur'),
(36, 'Banten'),
(51, 'Bali'),
(52, 'Nusa Tenggara Barat'),
(53, 'Nusa Tenggara Timur'),
(61, 'Kalimantan Barat'),
(62, 'Kalimantan Tengah'),
(63, 'Kalimantan Selatan'),
(64, 'Kalimantan Timur'),
(65, 'Kalimantan Utara'),
(71, 'Sulawesi Utara'),
(72, 'Sulawesi Tengah'),
(73, 'Sulawesi Selatan'),
(74, 'Sulawesi Tenggara'),
(75, 'Gorontalo'),
(76, 'Sulawesi Barat'),
(81, 'Maluku'),
(82, 'Maluku Utara'),
(91, 'Papua Barat'),
(92, 'Papua');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda_akademik`
--
ALTER TABLE `agenda_akademik`
  ADD PRIMARY KEY (`idagenda_akademik`);

--
-- Indexes for table `akses`
--
ALTER TABLE `akses`
  ADD PRIMARY KEY (`NPM`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`IDDOSEN`);

--
-- Indexes for table `jadwalperkuliahan`
--
ALTER TABLE `jadwalperkuliahan`
  ADD PRIMARY KEY (`IDJADWAL`);

--
-- Indexes for table `jadwal_ujian`
--
ALTER TABLE `jadwal_ujian`
  ADD PRIMARY KEY (`no_id`);

--
-- Indexes for table `jadwal_ujian_master`
--
ALTER TABLE `jadwal_ujian_master`
  ADD PRIMARY KEY (`id_trans`);

--
-- Indexes for table `jam`
--
ALTER TABLE `jam`
  ADD PRIMARY KEY (`idJam`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`KD_JUR`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`IDKELAS`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`ID_KRS`);

--
-- Indexes for table `krs_sementara`
--
ALTER TABLE `krs_sementara`
  ADD PRIMARY KEY (`ID_KRS`);

--
-- Indexes for table `kuliah`
--
ALTER TABLE `kuliah`
  ADD PRIMARY KEY (`KODE`);

--
-- Indexes for table `kuliahtp`
--
ALTER TABLE `kuliahtp`
  ADD PRIMARY KEY (`IDKULIAH`);

--
-- Indexes for table `master_kelasaktif`
--
ALTER TABLE `master_kelasaktif`
  ADD PRIMARY KEY (`ID_KELAS`);

--
-- Indexes for table `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`NPM`);

--
-- Indexes for table `nilai_mhs`
--
ALTER TABLE `nilai_mhs`
  ADD PRIMARY KEY (`NPM`,`KODE`);

--
-- Indexes for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id_pengajuan`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `periode_krs`
--
ALTER TABLE `periode_krs`
  ADD PRIMARY KEY (`idtahun`);

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_arsip`
--
ALTER TABLE `tb_arsip`
  ADD PRIMARY KEY (`id_perkara`);

--
-- Indexes for table `tb_kabupaten`
--
ALTER TABLE `tb_kabupaten`
  ADD PRIMARY KEY (`id_kabupaten`);

--
-- Indexes for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `tb_modul`
--
ALTER TABLE `tb_modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `tb_orangtua`
--
ALTER TABLE `tb_orangtua`
  ADD PRIMARY KEY (`id_orangtua`);

--
-- Indexes for table `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `tb_pengumuman_download`
--
ALTER TABLE `tb_pengumuman_download`
  ADD PRIMARY KEY (`id_pengumuman_download`);

--
-- Indexes for table `tb_provinsi`
--
ALTER TABLE `tb_provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda_akademik`
--
ALTER TABLE `agenda_akademik`
  MODIFY `idagenda_akademik` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;
--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `IDDOSEN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `jadwalperkuliahan`
--
ALTER TABLE `jadwalperkuliahan`
  MODIFY `IDJADWAL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `jadwal_ujian`
--
ALTER TABLE `jadwal_ujian`
  MODIFY `no_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180519;
--
-- AUTO_INCREMENT for table `jadwal_ujian_master`
--
ALTER TABLE `jadwal_ujian_master`
  MODIFY `id_trans` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4435;
--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `IDKELAS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `krs`
--
ALTER TABLE `krs`
  MODIFY `ID_KRS` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=487253;
--
-- AUTO_INCREMENT for table `krs_sementara`
--
ALTER TABLE `krs_sementara`
  MODIFY `ID_KRS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `kuliahtp`
--
ALTER TABLE `kuliahtp`
  MODIFY `IDKULIAH` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8177;
--
-- AUTO_INCREMENT for table `master_kelasaktif`
--
ALTER TABLE `master_kelasaktif`
  MODIFY `ID_KELAS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `id_pengajuan` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `periode_krs`
--
ALTER TABLE `periode_krs`
  MODIFY `idtahun` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_arsip`
--
ALTER TABLE `tb_arsip`
  MODIFY `id_perkara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tb_kabupaten`
--
ALTER TABLE `tb_kabupaten`
  MODIFY `id_kabupaten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9272;
--
-- AUTO_INCREMENT for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_modul`
--
ALTER TABLE `tb_modul`
  MODIFY `id_modul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_orangtua`
--
ALTER TABLE `tb_orangtua`
  MODIFY `id_orangtua` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tb_pengumuman_download`
--
ALTER TABLE `tb_pengumuman_download`
  MODIFY `id_pengumuman_download` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_provinsi`
--
ALTER TABLE `tb_provinsi`
  MODIFY `id_provinsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
