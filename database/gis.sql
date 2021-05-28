-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 28, 2021 at 12:41 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gis`
--

-- --------------------------------------------------------

--
-- Table structure for table `datasemuabengkel`
--

CREATE TABLE `datasemuabengkel` (
  `id_bengkel` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `latitude` float(10,6) NOT NULL,
  `longitude` float(10,6) NOT NULL,
  `tipe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datasemuabengkel`
--

INSERT INTO `datasemuabengkel` (`id_bengkel`, `nama`, `alamat`, `telepon`, `website`, `latitude`, `longitude`, `tipe`) VALUES
(1, 'Bengkel Mobil', 'Jl. Pisang Kipas, Jatimulyo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65141', '0821-3289-5703', '', -7.943351, 112.617554, 'mobil'),
(2, 'Bengkel Borobudur', 'Jl. Sudimoro No.10a, Mojolangu, Kec. Lowokwaru, Kota Malang, Jawa Timur 65142', '0851-0646-8000', 'https://bengkel-borobudur.business.site/', -7.936144, 112.626984, 'mobil'),
(3, 'Bengkel mobil panggilan Malang', 'Jl. Ikan Tombro Tengah Sawah No.3b, Tunjungsekar, Kec. Lowokwaru, Kota Malang, Jawa Timur 65142', '0822-6463-2054', 'https://bengkel-mobil-panggilan-malang.business.site/?utm_source=gmb&utm_medium=referral', -7.925250, 112.635292, 'mobil'),
(4, 'Bengkel mobil panggilan 24jam malang raya \'family garage\'', 'Jl. Simp.Piranha Atas No.1, Tunjungsekar, Kec. Lowokwaru, Kota Malang, Jawa Timur 65142', '0857-3582-9306', '', -7.931966, 112.636238, 'mobil'),
(5, 'Service Mobil', 'Jl. Prof. Moch Yamin No.47, Sukoharjo, Kec. Klojen, Kota Malang, Jawa Timur 65118', '(0341) 7005554', '', -7.990187, 112.631805, 'mobil'),
(6, 'Auto Service Kalpataru Bengkel kalpataru By castrol', 'Jl. Kalpataru No.141, Jatimulyo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65141', '0852-3464-9758', '', -7.948308, 112.625832, 'mobil'),
(7, 'Bengkel Top Mobil', 'Jl. A. Yani No.92-94, Purwodadi, Kec. Blimbing, Kota Malang, Jawa Timur 65126', '(0341) 486799', '', -7.939417, 112.643555, 'mobil'),
(8, 'Bengkel Service mobil matic & injektion malang E.R', 'Jl. Mayjen Sungkono No.27, Buring, Kec. Kedungkandang, Kota Malang, Jawa Timur', '0822-5110-6554', 'http://bengkel-service-mobil-matic-er.simplesite.com/', -7.999161, 112.645668, 'mobil'),
(9, 'Bengkel Mobil Nusa', 'Jl. Soekarno Hatta No.83, Mojolangu, Kec. Lowokwaru, Kota Malang, Jawa Timur 65142', '0851-0079-7968', 'https://bengkel-mobil-nusa.business.site/', -7.937799, 112.627678, 'mobil'),
(10, 'Bengkel Mobil Kharisma Jaya', 'Jl. Laksda Adi Sucipto No.239, Blimbing, Kec. Blimbing, Kota Malang, Jawa Timur 65126', '(0341) 481540', '', -7.945517, 112.651932, 'mobil'),
(11, 'Bengkel Mobil', 'Jl. Tlogomas, Tlogomas, Kec. Lowokwaru, Kota Malang, Jawa Timur 65151', '(0341) 8680497', '', -7.921586, 112.595108, 'mobil'),
(12, 'Bengkel mobil Bima Motor', 'Jl. Batanghari No.9A, Rampal Celaket, Kec. Klojen, Kota Malang, Jawa Timur 65111', '0813-3051-5145', 'https://bima-motor-car-repair.business.site/', -7.962472, 112.636925, 'mobil'),
(13, 'Bengkel Mobil', 'Jl. Raya Ki Ageng Gribig No.49, Madyopuro, Kec. Kedungkandang, Kota Malang, Jawa Timur 65139', '', '', -7.980791, 112.663704, 'mobil'),
(14, 'Bengkel Mobil Tiga Sekawan', 'Jalan Kapisata Bali 16B-34, Sawojajar 2, Sekarpuro, Pakis, Sawojajar A, Sekarpuro, Kec. Pakis, Malang, Jawa Timur 65154', '0851-0236-9569', 'https://bengkel-mobil-tiga-sekawan.business.site/', -7.960998, 112.669060, 'mobil'),
(15, 'Bengkel Mobil Irwan Service', 'Jalan Kedawung, Gang. V No. 1, Lowokwaru, Kec. Lowokwaru, Kota Malang, Jawa Timur 65141', '0812-5214-899', '', -7.953045, 112.637283, 'mobil'),
(16, 'Bengkel Mobil', 'Jl. Raya Ngijo Karangploso, Karangploso Wetan, Kepuharjo, Kec. Karang Ploso, Malang, Jawa Timur 65152', '', '', -7.911011, 112.625984, 'mobil'),
(17, 'Bengkel Mobil Gasolinengine', 'Jl. Candi Panggung No.27, Mojolangu, Kec. Lowokwaru, Kota Malang, Jawa Timur 65142', '0857-4957-5790', '', -7.937878, 112.621056, 'mobil'),
(18, 'Bengkel Mobil Soleh', 'Jl. Mayjen Sungkono No.62, Buring, Kec. Kedungkandang, Kota Malang, Jawa Timur 65136', '0813-1230-8131', '', -7.997953, 112.645805, 'mobil'),
(19, 'Sumber Makmur Bengkel & Variasi Mobil', 'Jl. Sunandar Priyo Sudarmo No.5, Purwantoro, Kec. Blimbing, Kota Malang, Jawa Timur 65125', '0851-0275-7707', 'https://bengkelsumbermakmurmalang.online/', -7.950304, 112.646584, 'mobil'),
(20, 'Bengkel Mobil Aka', 'Jl. Meratus No.01, Karangbesuki, Kec. Sukun, Kota Malang, Jawa Timur 65149', '0815-5555-758', '', -7.965461, 112.611580, 'mobil'),
(21, 'Bengkel Mobil', 'Jl. Sebuku, Bunulrejo, Kec. Blimbing, Kota Malang, Jawa Timur 65123', '', '', -7.962285, 112.647697, 'mobil'),
(22, 'Sugeng Y ( Bengkel Mobil )', 'Jl. Ranugrati No.2 No.33, Sawojajar, Kec. Kedungkandang, Kota Malang, Jawa Timur 65139', '0852-3289-7667', '', -7.982489, 112.651558, 'mobil'),
(23, 'Bengkel Mobil Kharisma Jaya', 'Jl. Laksda Adi Sucipto No.239, Blimbing, Kec. Blimbing, Kota Malang, Jawa Timur 65126', '(0341) 481540', '', -7.945517, 112.651932, 'mobil'),
(24, 'Bengkel Mobil', 'Jl. Raya Ki Ageng Gribig No.49, Madyopuro, Kec. Kedungkandang, Kota Malang, Jawa Timur 65139', '', '', -7.980791, 112.663704, 'mobil'),
(25, 'Bengkel Mobil Brewok', 'Purwantoro, Kec. Blimbing, Kota Malang, Jawa Timur', '', '', -7.957174, 112.642052, 'mobil'),
(26, 'Bengkel Mobil Adi Jaya', 'Jl. Raya Sawojajar No.35, Sawojajar, Kec. Kedungkandang, Kota Malang, Jawa Timur 65139', '0812-3326-6612', 'https://adi-jaya-motor-auto-parts-store.business.site/', -7.970732, 112.656837, 'mobil'),
(27, 'Semeru Service Station & Repairing', 'Jl. Letjen Sutoyo No.15, Rampal Celaket, Kec. Klojen, Kota Malang, Jawa Timur 65141', '(0341) 475825', '', -7.963190, 112.635910, 'mobil'),
(28, 'Bengkel Mobil Soleh', 'Jl. Mayjen Sungkono No.87, Buring, Kec. Kedungkandang, Kota Malang, Jawa Timur 65136', '', '', -7.998514, 112.645699, 'mobil'),
(29, 'Arjosari Java Motor', 'Jl Tl Etna V No.86, Purwantoro, Kec. Blimbing, Kota Malang, Jawa Timur 65126', '(0341) 417184', '', -7.955537, 112.649658, 'mobil'),
(30, 'Bengkel Mobil Ratna', 'Jl. Karya Timur, Purwantoro, Kec. Blimbing, Kota Malang, Jawa Timur 65126', '', '', -7.953142, 112.640259, 'mobil'),
(31, 'Bengkel Mobil Sahabat Motor', 'Jl. Dewandaru No.16, Jatimulyo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65141', '0813-3491-7744', 'https://sahabat-motor-car-repair.business.site/', -7.948535, 112.623955, 'mobil'),
(32, 'Bengkel Mobil & Konstruksi Langgeng', 'Jl. Kolonel Sugiono, Mergosono, Kec. Kedungkandang, Kota Malang, Jawa Timur 65148', '0812-3278-7955', '', -8.003658, 112.630249, 'mobil'),
(33, 'Bengkel Mobil Tiga Sekawan', 'Jalan Kapisata Bali 16B-34, Sawojajar 2, Sekarpuro, Pakis, Sawojajar A, Sekarpuro, Kec. Pakis, Malang, Jawa Timur 65154', '0851-0236-9569', 'https://bengkel-mobil-tiga-sekawan.business.site/', -7.960998, 112.669060, 'mobil'),
(34, 'Bengkel Mobil Garasie19', 'Jl. Bunga Mondokaki No.19, Jatimulyo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65141', '0851-0065-9494', 'http://garasie19.blogspot.com/', -7.949348, 112.625092, 'mobil'),
(35, 'Bengkel Mobil \' Aji \'', 'Jl. Binor, Bunulrejo, Kec. Blimbing, Kota Malang, Jawa Timur 65123', '0858-1512-9218', '', -7.968682, 112.647446, 'mobil'),
(36, 'Sumber Makmur Bengkel & Variasi Mobil', 'Jl. Sunandar Priyo Sudarmo No.5, Purwantoro, Kec. Blimbing, Kota Malang, Jawa Timur 65125', '0851-0275-7707', 'https://bengkelsumbermakmurmalang.online/', -7.950304, 112.646584, 'mobil'),
(37, 'Bengkel Mobil Gasolinengine', 'Jl. Candi Panggung No.27, Mojolangu, Kec. Lowokwaru, Kota Malang, Jawa Timur 65142', '0857-4957-5790', '', -7.937878, 112.621056, 'mobil'),
(38, 'Bengkel Bunul', 'Jl. Warinoi III, Bunulrejo, Kec. Blimbing, Kota Malang, Jawa Timur 65126', '0851-0020-7777', 'https://www.facebook.com/profile.php?id=100017395353229', -7.969671, 112.648819, 'mobil'),
(39, 'Bengkel Mobil Ciliwung', 'Jl. Ciliwung No.5 F, Purwantoro, Kec. Blimbing, Kota Malang, Jawa Timur 65126', '', '', -7.952196, 112.640221, 'mobil'),
(40, 'B629 Bengkel Mobil', 'Jl. Bandulan IX No.629, Bandulan, Kec. Sukun, Kota Malang, Jawa Timur 65146', '0851-0249-0212', '', -7.984848, 112.606071, 'mobil'),
(41, 'Bengkel mobil', 'Jl. Kalimasada, Kesatrian, Kec. Blimbing, Kota Malang, Jawa Timur 65127', '0858-5613-3377', '', -7.982199, 112.646233, 'mobil'),
(42, 'BENGKEL MOBIL ZAENAL', 'Jalan Candi Badut No.2 Rt.02 Rw.02, Mojolangu, Kecamatan Lowokwaru, Mojolangu, Kec. Lowokwaru, Kota Malang, Jawa Timur 65142', '(0341) 472307', 'http://bengkel-mobil-zaenal.business.site/', -7.942577, 112.635391, 'mobil'),
(43, 'Bengkel Mobil Edy', 'Jalan Kapi Sraba No.12 G, Keduyo, Mangliawan, Kec. Pakis, Kota Malang, Jawa Timur 65154', '(0341) 710491', '', -7.961101, 112.663628, 'mobil'),
(44, 'Bengkel Mobil Pak Nanang', 'Sawojajar, Kec. Kedungkandang, Kota Malang, Jawa Timur 65139', '0812-3394-8483', '', -7.970493, 112.657898, 'mobil'),
(45, 'Bengkel mobil Dek Mat', 'Jl. Bauksit No.56, Purwantoro, Kec. Blimbing, Kota Malang, Jawa Timur 65126', '0812-3566-6095', '', -7.955825, 112.647301, 'mobil'),
(46, 'Bengkel Otomotif \' Mobil & Sepeda Motor \'', 'Jl. KH. Malik, Kedungkandang, Kec. Kedungkandang, Kota Malang, Jawa Timur 65136', '(0341) 716440', '', -7.995440, 112.650520, 'mobil'),
(47, 'Makmur Jaya Motor', 'Jl. Patimura No.12, Klojen, Kec. Klojen, Kota Malang, Jawa Timur 65111', '(0341) 326757', 'http://mjm-malang.business.site/', -7.972902, 112.633873, 'motor'),
(48, 'Bengkel Motor', 'Jl. Soekarno Hatta, Jatimulyo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65141', '0856-4988-4462', '', -7.947019, 112.617821, 'motor'),
(49, 'Bengkel Motor', 'Jl. Suropati No.40-30, Klojen, Kec. Klojen, Kota Malang, Jawa Timur 65111', '', '', -7.973934, 112.634422, 'motor'),
(50, 'Bengkel Sepeda Motor Honda', 'Jl. Pasar Besar, Sukoharjo, Kec. Klojen, Kota Malang, Jawa Timur 65118', '(0341) 324050', 'http://www.astramotor.co.id/', -7.985908, 112.632729, 'motor'),
(51, 'Kharisma Motor', 'Jl. Brigjend Slamet Riadi, Oro-oro Dowo, Kec. Klojen, Kota Malang, Jawa Timur 65119', '(0341) 324782', 'https://kharisma-motor-motorcycle-repair-shop.business.site/', -7.972893, 112.628525, 'motor'),
(52, 'Bengkel Motor Rois', 'Jl. Halmahera No.mor 8, Sukoharjo, Kec. Klojen, Kota Malang, Jawa Timur 65148', '0859-5442-3365', 'https://bengkel-motor-rois.business.site/', -7.988065, 112.629951, 'motor'),
(53, 'Bengkel Sodiq Motor', 'Jl. Raya Sawojajar No.101, Sawojajar, Kec. Kedungkandang, Kota Malang, Jawa Timur 65139', '0821-3258-8442', '', -7.976659, 112.654671, 'motor'),
(54, 'Surya Makmur Motor', 'Ruko Panglima Sudirman Kav. 28, Rampal, Klojen, Kec. Klojen, Kota Malang, Jawa Timur 65111', '0888-3355-799', 'https://surya-makmur-motor.business.site/', -7.972985, 112.638397, 'motor'),
(55, 'Aries Motor', 'Gg. 8, Kiduldalem, Kec. Klojen, Kota Malang, Jawa Timur 65119', '(0341) 350910', '', -7.981860, 112.635460, 'motor'),
(56, 'Sunar Motor', 'Jl. Patimura No.65, Klojen, Kec. Klojen, Kota Malang, Jawa Timur 65119', '(0341) 364625', '', -7.973353, 112.636581, 'motor'),
(57, 'Suropati Motor', 'Jl. Suropati No.28, RT.02/RW.01, Klojen, Kec. Klojen, Kota Malang, Jawa Timur 65111', '(0341) 364179', '', -7.973962, 112.634529, 'motor'),
(58, 'Bengkel Kerabat Motor', 'Jl. Bungur No.11A, Lowokwaru, Kec. Lowokwaru, Kota Malang, Jawa Timur 65141', '0812-5514-4001', 'https://bengkel-kerabat-motor.business.site/', -7.956097, 112.631432, 'motor'),
(59, 'Bengkel motor', 'Jl. Terusan Kesatrian, k166Kesatrian, Kec. Blimbing, Kota Malang, Jawa Timur 65121', '', '', -7.979908, 112.641563, 'motor'),
(60, 'Bengkel Asah Jaya Motor', 'Jalan Brigjen Slamet Riadi Nomor 154 A, Oro Oro Dowo, Klojen, Oro-oro Dowo, Kec. Klojen, Kota Malang, Jawa Timur 65112', '0856-4687-5808', '', -7.963124, 112.626854, 'motor'),
(61, 'Bengkel Yung2 Motor Malang', 'Jl. Selorejo No.30, Lowokwaru, Kec. Lowokwaru, Kota Malang, Jawa Timur 65141', '', '', -7.955589, 112.636421, 'motor'),
(62, 'Bengkel sepeda motor ( happy )', 'Jl. Mojopahit, Kiduldalem, Kec. Klojen, Kota Malang, Jawa Timur 65119', '0851-0602-0927', '', -7.979243, 112.631401, 'motor'),
(63, 'Dhovier Motor', 'Jl. Arif Margono, Kasin, Kec. Klojen, Kota Malang, Jawa Timur 65117', '', '', -7.986569, 112.623703, 'motor'),
(64, 'Bengkel Motor Mandiri', 'Jl. Karya Timur No.3, Purwantoro, Kec. Blimbing, Kota Malang, Jawa Timur 45122', '0813-5700-3358', 'https://bengkelmotormandiri.business.site/', -7.952978, 112.640541, 'motor'),
(65, 'BENGKEL AHASS TONGAN', 'Jl. Ade Irma Suryani No.46, Kauman, Kec. Klojen, Kota Malang, Jawa Timur 65117', '(0341) 325220', '', -7.984406, 112.627922, 'motor'),
(66, 'Bengkel Motor Cak Nan', 'Sukoharjo, Kec. Klojen, Kota Malang, Jawa Timur 65117', '', '', -7.991096, 112.628967, 'motor'),
(67, 'Kusuma Motor Malang', 'Jl. Laksda Adi Sucipto No.145, Blimbing, Kec. Blimbing, Kota Malang, Jawa Timur 65126', '(0341) 407166', 'https://kusuma-motor-malang.business.site/', -7.943440, 112.647858, 'motor'),
(68, 'Bengkel Arifin Motor', 'Jl. Arif Margono, Kasin, Kec. Klojen, Kota Malang, Jawa Timur 65117', '', '', -7.988398, 112.622192, 'motor'),
(69, 'Bengkel Motor', 'Jl. Muharto, Jodipan, Kec. Blimbing, Kota Malang, Jawa Timur 65136', '0878-5966-4254', '', -7.991488, 112.642204, 'motor'),
(70, 'Bengkel Motor Tulus', 'jl. joyosari, RW.6, Merjosari, Kec. Lowokwaru, Kota Malang, Jawa Timur 65112', '', '', -7.966620, 112.632629, 'motor'),
(71, 'Bengkel Suhat Motor', 'Jl. Soekarno Hatta No.11, Jatimulyo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65141', '0822-1343-8110', 'https://bengkel-suhat-motor.business.site/', -7.945424, 112.618401, 'motor'),
(72, 'BENGKEL MOTOR AKA BENGKEL', 'Jalan Raya Walet Sukun, Sukun, Kec. Sukun, Kota Malang, Jawa Timur 65147', '0856-4993-5936', '', -7.992325, 112.618759, 'motor'),
(73, 'UD. Morodadi Motor', 'Jl. Patimura No.18, Klojen, Kec. Klojen, Kota Malang, Jawa Timur 65111', '(0341) 358899', '', -7.973041, 112.634163, 'motor'),
(74, 'Bengkel \'Tiara Motor\'', 'Jl. Raden Panji Suroso No.9 B, Purwodadi, Kec. Blimbing, Kota Malang, Jawa Timur 65125', '0822-3278-9596', 'https://bengkel-tiara-motor.business.site/', -7.939884, 112.649757, 'motor'),
(75, 'Bengkel \'Tiara Motor\'', 'Jl. Raden Panji Suroso No.9 B, Purwodadi, Kec. Blimbing, Kota Malang, Jawa Timur 65125', '0822-3278-9596', 'https://bengkel-tiara-motor.business.site/', -7.944297, 112.619873, 'motor'),
(76, 'Dunia Motor', 'Jl. Mayjend Panjaitan No.91h, Penanggungan, Kec. Klojen, Kota Malang, Jawa Timur 65113', '0812-4251-5277', 'http://duniamotor-bengkel.business.site/', -7.956342, 112.621849, 'motor'),
(77, 'Unggul Makmur Motor', 'Jl. S. Supriadi No.63, Sukun, Kec. Sukun, Kota Malang, Jawa Timur 65147', '(0341) 365352', '', -7.992354, 112.621124, 'motor'),
(78, 'Sumber Jaya motor', 'Jl. Arif Margono, Kasin, Kec. Klojen, Kota Malang, Jawa Timur 65117', '(0341) 8672297', '', -7.986569, 112.623703, 'motor'),
(79, 'Bengkel Sepeda Motor', 'Jl. Klayatan Gg. 2, Bandungrejosari, Kec. Sukun, Kota Malang, Jawa Timur 65147', '0856-3539-275', '', -8.001803, 112.614426, 'motor'),
(80, 'Bengkel Tunggal Jaya Motor', 'Jl. Jupri, Pisang Candi, Kec. Sukun, Kota Malang, Jawa Timur 65146', '(0341) 578727', 'https://tunggal-jaya-motor-talang.business.site/', -7.983814, 112.612434, 'motor'),
(81, 'Service Sepeda Motor Muharto', 'Jl. Muharto No.28, Jodipan, Kec. Blimbing, Kota Malang, Jawa Timur 65136', '(0341) 344499', '', -7.991979, 112.643791, 'motor'),
(82, 'Bengkel Asri', 'Jl. R. Tumenggung Suryo No.129, Purwantoro, Kec. Blimbing, Kota Malang, Jawa Timur 65123', '(0341) 411633', '', -7.959104, 112.642868, 'motor'),
(83, 'Bengkel IMS', 'Jl. Bendungan Sutami No.556, Sumbersari, Kec. Lowokwaru, Kota Malang, Jawa Timur 65145', '(0341) 558126', '', -7.960557, 112.613678, 'motor'),
(84, 'bengkel motor SRT', 'Jl. Raya Ki Ageng Gribig No.12, Lesanpuro, Kec. Kedungkandang, Kota Malang, Jawa Timur 65138', '0838-4870-2881', 'https://bengkel-motor-srt.business.site/', -7.986193, 112.655212, 'motor'),
(85, 'Bengkel Anugrah Motor', 'Jl. Muharto No.2, Jodipan, Kec. Blimbing, Kota Malang, Jawa Timur 65136', '0856-5555-4121', '', -7.991002, 112.641159, 'motor'),
(86, 'Bengkel Sepeda Motor', 'Jl. Kolonel Sugiono, Mergosono, Kec. Kedungkandang, Kota Malang, Jawa Timur 65148', '', '', -8.001527, 112.631371, 'motor'),
(87, 'Kusuma Motor Malang', 'Jl. Laksda Adi Sucipto No.145, Blimbing, Kec. Blimbing, Kota Malang, Jawa Timur 65126', '(0341) 407166', 'https://kusuma-motor-malang.business.site/', -7.943440, 112.647858, 'motor'),
(88, 'Bengkel Arifin Motor', 'Jl. Arif Margono, Kasin, Kec. Klojen, Kota Malang, Jawa Timur 65117', '', '', -7.988398, 112.622192, 'motor'),
(89, 'Bengkel Motor', 'Jl. Muharto, Jodipan, Kec. Blimbing, Kota Malang, Jawa Timur 65136', '0878-5966-4254', '', -7.991488, 112.642204, 'motor'),
(90, 'Bengkel Motor Tulus', 'jl. joyosari, RW.6, Merjosari, Kec. Lowokwaru, Kota Malang, Jawa Timur 65112', '', '', -7.966620, 112.632629, 'motor'),
(91, 'Bengkel Suhat Motor', 'Jl. Soekarno Hatta No.11, Jatimulyo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65141', '0822-1343-8110', 'https://bengkel-suhat-motor.business.site/', -7.945424, 112.618401, 'motor'),
(92, 'BENGKEL MOTOR AKA BENGKEL', 'Jalan Raya Walet Sukun, Sukun, Kec. Sukun, Kota Malang, Jawa Timur 65147', '0856-4993-5936', '', -7.992325, 112.618759, 'motor'),
(93, 'UD. Morodadi Motor', 'Jl. Patimura No.18, Klojen, Kec. Klojen, Kota Malang, Jawa Timur 65111', '(0341) 358899', '', -7.973041, 112.634163, 'motor'),
(94, 'Bengkel \'Tiara Motor\'', 'Jl. Raden Panji Suroso No.9 B, Purwodadi, Kec. Blimbing, Kota Malang, Jawa Timur 65125', '0822-3278-9596', 'https://bengkel-tiara-motor.business.site/', -7.939884, 112.649757, 'motor'),
(95, 'Bengkel Motor Barokah Suhat', 'Jl. Soekarno Hatta No.B2, Jatimulyo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65141', '0838-3555-5099', 'http://bengkelmotorbarokahsuhat.business.site/', -7.944297, 112.619873, 'motor'),
(96, 'Dunia Motor', 'Jl. Mayjend Panjaitan No.91h, Penanggungan, Kec. Klojen, Kota Malang, Jawa Timur 65113', '0812-4251-5277', 'http://duniamotor-bengkel.business.site/', -7.956342, 112.621849, 'motor'),
(97, 'Unggul Makmur Motor', 'Jl. S. Supriadi No.63, Sukun, Kec. Sukun, Kota Malang, Jawa Timur 65147', '(0341) 365352', '', -7.992354, 112.621124, 'motor'),
(98, 'bengkel sepeda pancal', 'Jl. Jenderal Basuki Rahmat No.88, Klojen, Kec. Klojen, Kota Malang, Jawa Timur 65119', '', '', -7.974801, 112.629761, 'sepeda'),
(99, 'Bengkel Sepeda Pancal Pak Suluri (buka dari 1980an)', 'Jl. Mt. Haryono Gg. 8C No.992, Dinoyo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65144', '0896-5347-8801', '', -7.941638, 112.608055, 'sepeda'),
(100, 'REPARASI SEPEDA PANCAL\'ONOSENO\'', 'Jl. Raya Ki Ageng Gribig No.2, Madyopuro, Kec. Kedungkandang, Kota Malang, Jawa Timur 65139', '0851-0339-3275', 'https://reparasi-sepeda-pancal.business.site/', -7.980313, 112.668175, 'sepeda'),
(101, 'Bengkel sepeda \'HABIB MX\'', 'Jl. Muharto Tim., Kedungkandang, Kec. Kedungkandang, Kota Malang, Jawa Timur 65137', '0856-4990-6964', '', -7.993616, 112.646599, 'sepeda'),
(102, 'RF Service Sepeda', 'Jalan Akordion No.19 Lowokwaru Malang 65141, Lowokwaru, Tunggulwulung, Kec. Lowokwaru, Kota Malang, Jawa Timur 65152', '0812-3146-9655', 'https://rf-service-sepeda.business.site/', -7.930867, 112.613884, 'sepeda'),
(103, 'BENGKEL SEPEDA CAK WA', 'Jl. Jupri No.1502, Tanjungrejo, Kec. Sukun, Kota Malang, Jawa Timur 65147', '', 'https://bengkel-sepeda-cak-wa.business.site/', -7.983977, 112.612343, 'sepeda'),
(104, 'Sepeda Pancal Sukun', 'Jl. S. Supriadi No.74 B, Sukun, Kec. Sukun, Kota Malang, Jawa Timur 65147', '0856-4646-6485', '', -7.998299, 112.618629, 'sepeda'),
(105, 'Service Sepeda Boedi', 'Jl. Industri Tim. No.17, Purwantoro, Kec. Blimbing, Kota Malang, Jawa Timur 65126', '(0341) 477059', 'https://service-sepeda-boedi.business.site/', -7.956214, 112.639084, 'sepeda'),
(106, 'Wahyu Jaya Reparasi Sepeda', 'Jl. Laksda Adi Sucipto, Pandanwangi, Kec. Blimbing, Kota Malang, Jawa Timur 65126', '(0341) 9395080', '', -7.948102, 112.657372, 'sepeda'),
(107, 'Reparasi & Cat Sepeda Pancal', 'Sumbersari, Kec. Lowokwaru, Kota Malang, Jawa Timur 65145', '', '', -7.952926, 112.608910, 'sepeda'),
(108, 'Bengkel Sepeda DR.P \'Pengek\'', 'Kios velodrome, Jl. Danau Jonge No.70, Madyopuro, Kec. Kedungkandang, Kota Malang, Jawa Timur 65139', '0819-3300-1146', '', -7.972427, 112.670166, 'sepeda'),
(109, 'Reparasi Sepeda Onthel Bapak Soenari', 'Jl. Gajayana No.523, Dinoyo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65145', '0851-0500-1012', 'https://reparasi-sepeda-onthel-bapak-soenari.business.site/', -7.943812, 112.610168, 'sepeda'),
(110, 'Bengkel sepeda motor ( happy )', 'Jl. Mojopahit, Kiduldalem, Kec. Klojen, Kota Malang, Jawa Timur 65119', '0851-0602-0927', '', -7.979243, 112.631401, 'sepeda'),
(111, 'Bengkel Sepeda Cak Rii', 'Jl. Kyai Parseh Jaya No.13, Bumiayu, Kec. Kedungkandang, Kota Malang, Jawa Timur 65135', '0896-8803-6484', 'https://bengkel-sepeda-cak-rii.business.site/', -8.015915, 112.634781, 'sepeda'),
(112, 'Service Sepeda Sahabat', 'Jalan Raya Gadang Komplek Kios Nomor 34, Gadang, Sukun, Gadang, Kec. Sukun, Kota Malang, Jawa Timur 65149', '0851-0011-6447', 'https://service-sepeda-sahabat.business.site/', -8.011437, 112.629028, 'sepeda'),
(113, 'Tambal Ban Motor Dan Service Sepeda', 'Jl. Laksda Adi Sucipto No.293-309, Pandanwangi, Kec. Blimbing, Kota Malang, Jawa Timur 65126', '', '', -7.947037, 112.654556, 'sepeda'),
(114, 'ANTELOPE Bengkel Sepeda Pancal, Sepeda Angin, Sepeda Onthel Ontel', 'Jl. MT. Haryono No.145, Dinoyo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65144', '', '', -7.939853, 112.607964, 'sepeda'),
(115, 'Lancar Jaya Service Sepeda/Mtb Jual Onderdil Dll.', 'Jl. Raya Sawojajar, Sawojajar, Kec. Kedungkandang, Kota Malang, Jawa Timur 65139', '', '', -7.978139, 112.654381, 'sepeda'),
(116, 'Makmur Jaya Motor', 'Jl. Patimura No.12, Klojen, Kec. Klojen, Kota Malang, Jawa Timur 65111', '(0341) 326757', 'http://mjm-malang.business.site/', -7.972902, 112.633873, 'sepeda'),
(117, 'Sigit Bengkel bicycle', 'Jl. Merpati Utara No.25, Sukun, Kec. Sukun, Kota Malang, Jawa Timur 65147', '0858-9571-6425', '', -7.989710, 112.616997, 'sepeda'),
(118, 'Bengkel Sepeda Motor', 'Jl. Kolonel Sugiono, Mergosono, Kec. Kedungkandang, Kota Malang, Jawa Timur 65148', '', '', -8.001527, 112.631371, 'sepeda'),
(119, 'Bengkel HJM CIYCLE', 'Gg. 2, Lesanpuro, Kec. Kedungkandang, Kota Malang, Jawa Timur 65138', '0817-389-759', '', -7.987411, 112.656654, 'sepeda'),
(120, 'Bengkel LANCAR', 'Jl. Raya Wonorejo No.55, Arjowinangun, Kec. Kedungkandang, Kota Malang, Jawa Timur 65132', '', '', -8.034181, 112.632744, 'sepeda'),
(121, 'Sepeda lipat', 'Jl. Gatot Subroto No.27, Jodipan, Kec. Blimbing, Kota Malang, Jawa Timur 65118', '0878-0581-5453', 'https://ud-kota-sari.business.site/', -7.984924, 112.636581, 'sepeda'),
(122, 'Bengkel Sepeda Barokah', 'Jl. Raya Jetis No.82, Jetis, Mulyoagung, Kec. Dau, Malang, Jawa Timur 65151', '(0341) 8655391', '', -7.918586, 112.590782, 'sepeda'),
(123, 'Gajayana Jok', 'Jl. Gajayana No.7, Ketawanggede, Kec. Lowokwaru, Kota Malang, Jawa Timur 65145', '0812-5281-409', 'http://jokgajayana.business.site/', -7.946682, 112.609100, 'sepeda'),
(124, 'Bengkel Sepeda Motor', 'Jl. Puntodewo, Polehan, Kec. Blimbing, Kota Malang, Jawa Timur 65126', '', '', -7.984856, 112.646332, 'sepeda'),
(125, 'Bengkel Sepeda Pak Soekadmahdi', 'Jl. Kedung Kandang Gg. VII, Kedungkandang, Kec. Kedungkandang, Kota Malang, Jawa Timur 65137', '', '', -7.988902, 112.655151, 'sepeda'),
(126, 'Bengkel Sepeda Motor Honda', 'Jl. Pasar Besar, Sukoharjo, Kec. Klojen, Kota Malang, Jawa Timur 65118', '(0341) 324050', 'http://www.astramotor.co.id/', -7.985908, 112.632729, 'sepeda'),
(127, 'Bengkel Sepeda Motor Honda', 'Jl. Pasar Besar, Sukoharjo, Kec. Klojen, Kota Malang, Jawa Timur 65118', '(0341) 324050', 'http://www.astramotor.co.id/', -7.952520, 112.640259, 'sepeda'),
(128, '77 bike', 'Jl. Karya Bar. No.1, Purwantoro, Kec. Blimbing, Kota Malang, Jawa Timur 65126', '', '', -7.954833, 112.645317, 'sepeda'),
(129, '77 bike', 'Jl. Karya Bar. No.1, Purwantoro, Kec. Blimbing, Kota Malang, Jawa Timur 65126', '', '', -7.960333, 112.637238, 'sepeda'),
(131, 'Batu Bengkel Mobil', 'Alun-alun batu', '0812123123', 'www.bengkel-batu.com', -7.871153, 112.526924, 'mobil');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datasemuabengkel`
--
ALTER TABLE `datasemuabengkel`
  ADD PRIMARY KEY (`id_bengkel`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datasemuabengkel`
--
ALTER TABLE `datasemuabengkel`
  MODIFY `id_bengkel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
