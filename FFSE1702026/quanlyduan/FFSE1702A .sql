-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 17, 2018 at 03:43 AM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `FFSE1702A`
--

-- --------------------------------------------------------

--
-- Table structure for table `co_so_du_lieu`
--

CREATE TABLE IF NOT EXISTS `co_so_du_lieu` (
  `ma_database` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ten_database` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `co_so_du_lieu`
--

INSERT INTO `co_so_du_lieu` (`ma_database`, `ten_database`, `is_delete`) VALUES
('1', 'Ordacle', 0),
('2', 'Mongo DB', 0),
('3', 'Mysql', 0),
('4', 'Sql', 0),
('DB06', 'Ordacl', 1);

-- --------------------------------------------------------

--
-- Table structure for table `database_du_an`
--

CREATE TABLE IF NOT EXISTS `database_du_an` (
  `ma_database` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ma_du_an` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `database_du_an`
--

INSERT INTO `database_du_an` (`ma_database`, `ma_du_an`) VALUES
('2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doi_tac`
--

CREATE TABLE IF NOT EXISTS `doi_tac` (
  `ma_doi_tac` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ten_doi_tac` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` int(11) NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `is_delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doi_tac`
--

INSERT INTO `doi_tac` (`ma_doi_tac`, `ten_doi_tac`, `dia_chi`, `phone_number`, `email`, `is_delete`) VALUES
('DT01', 'LongLTP', 'Quang Nam', 56789, 'long020299@gmail.com', 0),
('DT03', 'Sang', '1234', 234511123, 'long0202@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `doi_tac_du_an`
--

CREATE TABLE IF NOT EXISTS `doi_tac_du_an` (
  `ma_du_an` int(11) NOT NULL,
  `ma_doi_tac` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doi_tac_du_an`
--

INSERT INTO `doi_tac_du_an` (`ma_du_an`, `ma_doi_tac`) VALUES
(1, 'DT01');

-- --------------------------------------------------------

--
-- Table structure for table `du_an`
--

CREATE TABLE IF NOT EXISTS `du_an` (
  `ma_du_an` int(11) NOT NULL,
  `ten_du_an` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_khach_hang` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mo_ta_du_an` text COLLATE utf8_unicode_ci,
  `ma_tinh_trang` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_nghiep_vu` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_delete` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `du_an`
--

INSERT INTO `du_an` (`ma_du_an`, `ten_du_an`, `ma_khach_hang`, `mo_ta_du_an`, `ma_tinh_trang`, `ma_nghiep_vu`, `start_date`, `end_date`, `is_delete`) VALUES
(1, 'website bán hàng', 'KH001', 'web site ban hang', 'TT01', '1', '2018-08-17', '2018-08-18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `framework`
--

CREATE TABLE IF NOT EXISTS `framework` (
  `ma_framework` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ten_framework` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `framework`
--

INSERT INTO `framework` (`ma_framework`, `ten_framework`, `is_delete`) VALUES
('6', 'a', 0),
('FR01', 'Spring', 0),
('FR02', 'Code Igniter', 0),
('FR03', 'JSF', 0),
('FR04', 'ASP.net', 0),
('FR05', 'Express', 0);

-- --------------------------------------------------------

--
-- Table structure for table `framework_du_an`
--

CREATE TABLE IF NOT EXISTS `framework_du_an` (
  `ma_framework` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ma_du_an` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `framework_du_an`
--

INSERT INTO `framework_du_an` (`ma_framework`, `ma_du_an`) VALUES
('FR01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ho_so_nhan_vien`
--

CREATE TABLE IF NOT EXISTS `ho_so_nhan_vien` (
  `ma_nhan_vien` int(11) NOT NULL,
  `ma_phong_ban` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_chuc_danh` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ho_dem` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `anh_the` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nam_sinh` date DEFAULT NULL,
  `gioi_tinh` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tinh_trang_hon_nhan` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `que_quan` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dan_toc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `quoc_tich` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `noi_tam_tru` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_dien_thoai` int(11) DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_cmnd` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `noi_cap` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay_cap` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ho_so_nhan_vien`
--

INSERT INTO `ho_so_nhan_vien` (`ma_nhan_vien`, `ma_phong_ban`, `ma_chuc_danh`, `ten`, `ho_dem`, `anh_the`, `nam_sinh`, `gioi_tinh`, `tinh_trang_hon_nhan`, `que_quan`, `dan_toc`, `quoc_tich`, `noi_tam_tru`, `so_dien_thoai`, `email`, `so_cmnd`, `noi_cap`, `ngay_cap`) VALUES
(1, 'PDA', 'NV', 'Tuấn', 'Nguyễn Văn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'PDA', 'NV', 'B', 'Nguyễn Văn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'PDA', 'NV', 'C', 'Nguyễn Văn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'PDA', 'NV', 'W', 'Nguyễn Văn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'PDA', 'TT', 'D', 'Nguyễn Văn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'PDA', 'NV', 'E', 'Nguyễn Văn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'PDA', 'NV', 'F', 'Nguyễn Văn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'PDA', 'NV', 'G', 'Nguyễn Văn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'PDA', 'PP', 'X', 'Nguyễn Văn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'PDA', 'NV', 'Y', 'Nguyễn Văn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE IF NOT EXISTS `khach_hang` (
  `ma_khach_hang` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ten_khach_hang` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dia_chi` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nghiep_vu` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` int(12) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khach_hang`
--

INSERT INTO `khach_hang` (`ma_khach_hang`, `ten_khach_hang`, `dia_chi`, `nghiep_vu`, `phone_number`, `email`, `is_delete`) VALUES
('KH001', 'Công ty thép Hòa An', '18 - Ngô Thì Nhậm - Đà Nẵng', 'Kinh doanh ', 511436634, 'hoaanct@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nghiep_vu`
--

CREATE TABLE IF NOT EXISTS `nghiep_vu` (
  `ma_nghiep_vu` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ten_nghiep_vu` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `is_delete` tinyint(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nghiep_vu`
--

INSERT INTO `nghiep_vu` (`ma_nghiep_vu`, `ten_nghiep_vu`, `is_delete`) VALUES
('1', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ngon_ngu`
--

CREATE TABLE IF NOT EXISTS `ngon_ngu` (
  `ma_ngon_ngu` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ten_ngon_ngu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ngon_ngu`
--

INSERT INTO `ngon_ngu` (`ma_ngon_ngu`, `ten_ngon_ngu`, `is_delete`) VALUES
('PL01', 'Java', 0),
('PL02', 'C#', 0),
('PL03', 'NodeJS', 0),
('PL04', 'AngularJS', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ngon_ngu_du_an`
--

CREATE TABLE IF NOT EXISTS `ngon_ngu_du_an` (
  `ma_ngon_ngu` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ma_du_an` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ngon_ngu_du_an`
--

INSERT INTO `ngon_ngu_du_an` (`ma_ngon_ngu`, `ma_du_an`) VALUES
('PL01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhiem_vu`
--

CREATE TABLE IF NOT EXISTS `nhiem_vu` (
  `ma_vai_tro` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ma_nhan_vien` int(11) NOT NULL DEFAULT '0',
  `ma_du_an` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phong_ban`
--

CREATE TABLE IF NOT EXISTS `phong_ban` (
  `ma_phong_ban` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ten_phong_ban` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phong_ban`
--

INSERT INTO `phong_ban` (`ma_phong_ban`, `ten_phong_ban`) VALUES
('PDA', 'Phòng Dự án'),
('PDT', 'Phòng Đào tạo'),
('PGD', 'Phòng Giám đốc'),
('PIT', 'Phòng IT'),
('PKT', 'Phòng Kế toán'),
('PNS', 'Phòng Nhân sự');

-- --------------------------------------------------------

--
-- Table structure for table `tinh_trang`
--

CREATE TABLE IF NOT EXISTS `tinh_trang` (
  `ma_tinh_trang` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ten_tinh_trang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tinh_trang`
--

INSERT INTO `tinh_trang` (`ma_tinh_trang`, `ten_tinh_trang`, `is_delete`) VALUES
('TT01', 'New', 0),
('TT02', 'In Progress', 0),
('TT03', 'On Hold', 0),
('TT04', 'Completed', 0),
('TT05', 'Archived', 0),
('TT06', 'Cancelled', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vai_tro_thanh_vien`
--

CREATE TABLE IF NOT EXISTS `vai_tro_thanh_vien` (
  `ma_vai_tro` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ten_vai_tro` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vai_tro_thanh_vien`
--

INSERT INTO `vai_tro_thanh_vien` (`ma_vai_tro`, `ten_vai_tro`, `is_delete`) VALUES
('VT01', 'PM', 0),
('VT02', 'Technical Lead', 0),
('VT03', 'Dev', 0),
('VT04', 'Tester', 0),
('VT05', 'Reviewer', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `co_so_du_lieu`
--
ALTER TABLE `co_so_du_lieu`
  ADD PRIMARY KEY (`ma_database`);

--
-- Indexes for table `database_du_an`
--
ALTER TABLE `database_du_an`
  ADD PRIMARY KEY (`ma_database`,`ma_du_an`);

--
-- Indexes for table `doi_tac`
--
ALTER TABLE `doi_tac`
  ADD PRIMARY KEY (`ma_doi_tac`);

--
-- Indexes for table `doi_tac_du_an`
--
ALTER TABLE `doi_tac_du_an`
  ADD PRIMARY KEY (`ma_du_an`,`ma_doi_tac`);

--
-- Indexes for table `du_an`
--
ALTER TABLE `du_an`
  ADD PRIMARY KEY (`ma_du_an`),
  ADD UNIQUE KEY `MaDuAn` (`ma_du_an`),
  ADD KEY `MaDuAn_2` (`ma_du_an`),
  ADD KEY `MaDuAn_3` (`ma_du_an`),
  ADD KEY `ma_tinh_trang` (`ma_tinh_trang`);

--
-- Indexes for table `framework`
--
ALTER TABLE `framework`
  ADD PRIMARY KEY (`ma_framework`);

--
-- Indexes for table `framework_du_an`
--
ALTER TABLE `framework_du_an`
  ADD PRIMARY KEY (`ma_framework`,`ma_du_an`);

--
-- Indexes for table `ho_so_nhan_vien`
--
ALTER TABLE `ho_so_nhan_vien`
  ADD PRIMARY KEY (`ma_nhan_vien`);

--
-- Indexes for table `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_khach_hang`);

--
-- Indexes for table `nghiep_vu`
--
ALTER TABLE `nghiep_vu`
  ADD PRIMARY KEY (`ma_nghiep_vu`);

--
-- Indexes for table `ngon_ngu`
--
ALTER TABLE `ngon_ngu`
  ADD PRIMARY KEY (`ma_ngon_ngu`);

--
-- Indexes for table `ngon_ngu_du_an`
--
ALTER TABLE `ngon_ngu_du_an`
  ADD PRIMARY KEY (`ma_ngon_ngu`,`ma_du_an`),
  ADD KEY `ma_du_an` (`ma_du_an`);

--
-- Indexes for table `nhiem_vu`
--
ALTER TABLE `nhiem_vu`
  ADD PRIMARY KEY (`ma_vai_tro`,`ma_nhan_vien`,`ma_du_an`);

--
-- Indexes for table `phong_ban`
--
ALTER TABLE `phong_ban`
  ADD PRIMARY KEY (`ma_phong_ban`);

--
-- Indexes for table `tinh_trang`
--
ALTER TABLE `tinh_trang`
  ADD PRIMARY KEY (`ma_tinh_trang`);

--
-- Indexes for table `vai_tro_thanh_vien`
--
ALTER TABLE `vai_tro_thanh_vien`
  ADD PRIMARY KEY (`ma_vai_tro`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `du_an`
--
ALTER TABLE `du_an`
  MODIFY `ma_du_an` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ho_so_nhan_vien`
--
ALTER TABLE `ho_so_nhan_vien`
  MODIFY `ma_nhan_vien` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `du_an`
--
ALTER TABLE `du_an`
  ADD CONSTRAINT `du_an_ibfk_1` FOREIGN KEY (`ma_tinh_trang`) REFERENCES `tinh_trang` (`ma_tinh_trang`);

--
-- Constraints for table `ngon_ngu_du_an`
--
ALTER TABLE `ngon_ngu_du_an`
  ADD CONSTRAINT `ngon_ngu_du_an_ibfk_2` FOREIGN KEY (`ma_ngon_ngu`) REFERENCES `ngon_ngu` (`ma_ngon_ngu`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
