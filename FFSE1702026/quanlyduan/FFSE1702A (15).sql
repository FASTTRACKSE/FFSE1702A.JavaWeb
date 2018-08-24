-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 24, 2018 at 07:52 AM
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
('DB01', 'Ordacle', 0),
('DB02', 'Mongo DB', 0),
('DB03', 'Mysql', 0),
('DB04', 'Sql', 0),
('DB05', 'IBM', 1),
('DB06', 'MSFT', 0),
('DB07', 'Couch DB', 0),
('DB08', 'HBase', 0),
('DB09', 'Riak', 0),
('DB10', 'Neo 4j', 0);

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
('DB02', 4),
('DB02', 5),
('DB01', 6),
('DB04', 7),
('DB03', 8),
('DB03', 9),
('DB01', 10),
('DB02', 11),
('DB02', 12),
('DB04', 13),
('DB03', 14),
('DB01', 15),
('DB02', 16),
('DB02', 17),
('DB02', 18),
('DB03', 19),
('DB02', 20),
('DB03', 21),
('DB03', 22),
('DB02', 23),
('DB02', 24),
('DB01', 25),
('DB03', 26),
('DB03', 27),
('DB03', 28),
('DB03', 29),
('DB01', 30),
('DB03', 31),
('DB02', 32),
('DB02', 33),
('DB03', 34),
('DB03', 35),
('DB04', 36),
('DB01', 37);

-- --------------------------------------------------------

--
-- Table structure for table `doi_tac`
--

CREATE TABLE IF NOT EXISTS `doi_tac` (
  `ma_doi_tac` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ten_doi_tac` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doi_tac`
--

INSERT INTO `doi_tac` (`ma_doi_tac`, `ten_doi_tac`, `dia_chi`, `phone_number`, `email`, `is_delete`) VALUES
('DT001', 'Doanh nghiệp tư nhân FT', '59 - Tôn Đức Thắng - Đà Nẵng', 906977612, 'doanhnghieptunhanft@gmail.com', 0),
('DT002', 'Công ty IT Văn Lang', '367 - Ôn Hiền - Đà Nẵng', 906977611, 'congtyitvanlang@gmail.com', 0),
('DT003', 'Doanh nghiệp tư nhân Phương Trang', '59 - A Phủ - Đà Nẵng', 906977610, 'doanhnghieptunhanphuongtrang@gmail.com', 0),
('DT004', 'Tập đoàn IT Văn Đạt', '74 - Ôn Hiền - Đà Nẵng', 906977609, 'tapđoanitvanđat@gmail.com', 0),
('DT005', 'Tập đoàn IT Văn Vũ', '76 - Đặng Dung - Đà Nẵng', 906977608, 'tapđoanitvanvu@gmail.com', 0),
('DT006', 'Công ty cổ phần ABC', '43 - Nam Kì Khởi Nghĩa - Đà Nẵng', 906977607, 'congtycophanabc@gmail.com', 0),
('DT007', 'Tập đoàn IT Minh Hoàng', '59 - Nam Kì Khởi Nghĩa - Đà Nẵng', 906977606, 'tapđoanitminhhoang@gmail.com', 0),
('DT008', 'Công ty IT Minh Hoàng', '43 - Nam Kì Khởi Nghĩa - Đà Nẵng', 906977605, 'congtyitminhhoang@gmail.com', 0),
('DT009', 'Doanh nghiệp tư nhân Văn Vũ', '184 - A Phủ - Đà Nẵng', 906977604, 'doanhnghieptunhanvanvu@gmail.com', 0),
('DT010', 'Công ty IT Viết Hiệp', '43 - Tôn Đức Thắng - Đà Nẵng', 906977603, 'congtyitviethiep@gmail.com', 0),
('DT011', 'Doanh nghiệp tư nhân Viết Hiệp', '55 - Lạc Long Quân - Đà Nẵng', 906977602, 'doanhnghieptunhanviethiep@gmail.com', 0),
('DT012', 'Công ty IT Phương Trang', '34 - Ôn Hiền - Đà Nẵng', 906977601, 'congtyitphuongtrang@gmail.com', 0),
('DT013', 'Tập đoàn IT DMC', '59 - A Phủ - Đà Nẵng', 906977600, 'tapđoanitdmc@gmail.com', 0),
('DT014', 'Công ty cổ phần Văn Đạt', '367 - A Phủ - Đà Nẵng', 906977599, 'congtycophanvandat@gmail.com', 0),
('DT015', 'Công ty cổ phần Mạnh Dũng', '98 - Đặng Dung - Đà Nẵng', 906977598, 'congtycophanmanhdung@gmail.com', 0);

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
(1, 'DT01'),
(2, 'DT01'),
(3, 'DT01'),
(4, 'DT002'),
(5, 'DT003'),
(6, 'DT001'),
(7, 'DT004'),
(8, 'DT001'),
(9, 'DT002'),
(10, 'DT003'),
(11, 'DT003'),
(12, 'DT004'),
(13, 'DT002'),
(14, 'DT004'),
(15, 'DT003'),
(16, 'DT002'),
(17, 'DT003'),
(18, 'DT003'),
(19, 'DT002'),
(20, 'DT002'),
(21, 'DT002'),
(22, 'DT002'),
(23, 'DT003'),
(24, 'DT001'),
(25, 'DT004'),
(26, 'DT003'),
(27, 'DT002'),
(28, 'DT003'),
(29, 'DT001'),
(30, 'DT001'),
(31, 'DT002'),
(32, 'DT003'),
(33, 'DT003'),
(34, 'DT003'),
(35, 'DT004'),
(36, 'DT003'),
(37, 'DT003');

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
  `is_delete` tinyint(1) NOT NULL,
  `update_link` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `du_an`
--

INSERT INTO `du_an` (`ma_du_an`, `ten_du_an`, `ma_khach_hang`, `mo_ta_du_an`, `ma_tinh_trang`, `ma_nghiep_vu`, `start_date`, `end_date`, `is_delete`, `update_link`) VALUES
(1, 'website bán hàng', 'KH001', 'web site ban hang', 'TT01', 'NV01', '2018-08-17', '2018-08-18', 0, 0),
(2, 'website doanh nghiệp', 'KH001', 'website doanh nghiệp work-follow', 'TT02', 'NV01', '2018-08-17', '2018-08-17', 0, 0),
(3, 'website bán người', 'KH001', 'Bán người online', 'TT01', 'NV01', '2018-08-19', '2018-08-19', 0, 0),
(4, 'website thú cưng', 'KH003', 'trang web dành cho thú cưng', 'TT03', 'NV05', '2018-08-23', '2018-08-25', 0, 0),
(5, 'website giải trí', 'KH011', 'dành cho trẻ em', 'TT04', 'NV05', '2018-08-23', '2018-12-26', 0, 0),
(6, 'website bán hàng oline', 'KH016', 'dành cho cái anh chi em bán hàng xuyên đêm', 'TT04', 'NV01', '2018-08-24', '2018-08-30', 0, 0),
(7, 'website Quảng Cáo dầu gội đầu Romano', 'KH016', 'dầu gội dành cho nam giới', 'TT05', 'NV08', '2018-08-24', '2018-08-31', 0, 0),
(8, 'website buôn vũ khí', 'KH009', 'cung cấp vũ khí cho tội phạm xuyên quốc gia', 'TT04', 'NV01', '2018-08-24', '2018-08-29', 0, 0),
(9, 'website Bán Gà Đồi', 'KH019', 'gà được chăn nuôi bằng thức ăn thiên nhiên', 'TT03', 'NV08', '2018-08-25', '2018-08-28', 0, 0),
(10, 'website Bán Bikini', 'KH008', 'bán quần áo dành cho phái nữ', 'TT05', 'NV01', '2018-08-29', '2018-09-04', 0, 0),
(11, 'website Game', 'KH014', 'chuyên về cái loại game', 'TT05', 'NV05', '2018-08-23', '2018-08-30', 0, 0),
(12, 'website Tư vấn sức khỏe cộng đồng', 'KH017', 'từ vấn về sứ khỏe cho cộng đồng', 'TT05', 'NV04', '2018-08-24', '2018-08-30', 0, 0),
(13, 'website bảo hiểm nhân sự', 'KH011', 'chuyên cung cấp các loại bảo hiểm', 'TT03', 'NV10', '2018-08-30', '2018-09-06', 0, 0),
(14, 'website Trường Học', 'KH002', 'danh sách cái trường trên toàn quốc', 'TT02', 'NV03', '2018-08-23', '2018-08-31', 0, 0),
(15, 'website Thị trường chứng khoán', 'KH017', 'cung cấp thông tin về chứng khoán trong và ngoài nước', 'TT05', 'NV09', '2018-08-23', '2018-08-31', 0, 0),
(16, 'website Tuyển nhân viên', 'KH001', 'cung thông tin việc làm', 'TT05', 'NV06', '2018-09-13', '2018-09-20', 0, 0),
(17, 'website Bán quần áo', 'KH014', 'cung cấp quần áo cái loại', 'TT02', 'NV01', '2018-08-23', '2018-08-25', 0, 0),
(18, 'website Bán hoa anh túc', 'KH012', 'cung cấp cho bệnh viện', 'TT02', 'NV01', '2018-08-20', '2018-08-25', 0, 0),
(19, 'website Chăn nuôi heo rừng', 'KH015', 'bán thị heo rừng', 'TT04', 'NV01', '2018-08-19', '2018-08-22', 0, 0),
(20, 'website Bán Mỹ Phẫm', 'KH018', 'bán cái loại mỹ phẩm', 'TT04', 'NV02', '2018-08-01', '2018-08-10', 0, 0),
(21, 'website Truyện ma', 'KH015', 'các loại truyên ma hay nhất', 'TT02', 'NV05', '2018-08-10', '2018-08-24', 0, 0),
(22, 'website Buôn đất', 'KH006', 'bán đất trên các mặc đường', 'TT05', 'NV02', '2018-08-24', '2018-08-30', 0, 0),
(23, 'website Trà Thiên Nhiên', 'KH007', 'Cung cấp các loại trà trên toàn thế giới', 'TT05', 'NV02', '2018-04-25', '2018-09-07', 0, 0),
(24, 'website Chim Cảnh', 'KH017', 'bán cái loại chim cảnh', 'TT02', 'NV05', '2018-08-23', '2018-08-31', 0, 0),
(25, 'website Bán Cơm', 'KH015', 'ai mua  cơm liên hệ  01294067734', 'TT02', 'NV01', '2018-08-19', '2018-08-24', 0, 0),
(26, 'website Bán dụng cụ học tập', 'KH010', 'chuyên cung câp cái dụng cu học tập', 'TT02', 'NV03', '2018-08-23', '2018-09-06', 0, 0),
(27, 'website Cá cảnh', 'KH013', 'chuyên cung cáp cái loại cá cảnh', 'TT02', 'NV01', '2018-08-20', '2018-08-25', 0, 0),
(28, 'website Nón Sơn', 'KH017', 'chuyên cung cấp sĩ lẻ các loại nón sơn', 'TT05', 'NV02', '2018-08-29', '2018-09-11', 0, 0),
(29, 'website Bán nước ép', 'KH006', 'bán cái loại nước ép theo mùa', 'TT04', 'NV02', '2018-08-01', '2018-08-22', 0, 0),
(30, 'website Gà tre đèo le', 'KH006', 'gà nuôi thả vườn( thịt dai và ngọt)', 'TT05', 'NV02', '2018-08-24', '2018-08-31', 0, 0),
(31, 'website Bán trái cây', 'KH018', 'cung cấp cái loại trái cấy các vùng miền', 'TT02', 'NV02', '2018-08-20', '2018-08-29', 0, 0),
(32, 'website Chó cảnh', 'KH013', 'bán cái loại chó lai', 'TT02', 'NV02', '2018-08-21', '2018-08-24', 0, 0),
(33, 'website Truyên Anime', 'KH008', 'các loại truyên anime', 'TT05', 'NV05', '2018-08-25', '2018-08-31', 0, 0),
(34, 'website Túi Sách', 'KH004', 'túi sách da thú cá loại', 'TT04', 'NV02', '2018-08-14', '2018-08-17', 0, 0),
(35, 'website  FastFood', 'KH003', 'Chuyên cung cấp các đồ ăn nhanh ( liên hệ; 01294067734)', 'TT02', 'NV01', '2018-08-23', '2018-08-31', 0, 0),
(36, 'website Du Lịch', 'KH012', 'cung cấp thông tin về các địa điểm du lịch trên toàn quốc', 'TT02', 'NV02', '2018-08-23', '2018-08-31', 0, 0),
(37, 'website Bán đồ điện tử', 'KH020', 'chuyên cung cấp các phụ kiện điện tử', 'TT02', 'NV02', '2018-08-23', '2018-08-31', 0, 0),
(38, '', 'KH001', '', 'TT01', 'NV01', NULL, NULL, 0, 0),
(39, 'website bán hàng online', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0);

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
('FR01', 'Spring', 0),
('FR02', 'Code Igniter', 0),
('FR03', 'JSF', 0),
('FR04', 'ASP.net', 0),
('FR05', 'Express', 0),
('FR06', 'Vaddin', 0),
('FR07', 'Zend', 0),
('FR08', 'Laravel', 0),
('FR09', 'Reactjs', 0),
('FR10', 'Metter', 0),
('FR11', 'Spine', 0),
('FR12', 'Ember', 0);

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
('FR01', 1),
('FR02', 2),
('FR02', 3),
('FR02', 4),
('FR02', 5),
('FR03', 5),
('FR01', 6),
('FR03', 6),
('FR01', 7),
('FR02', 7),
('FR01', 8),
('FR03', 8),
('FR02', 9),
('FR04', 9),
('FR01', 10),
('FR02', 10),
('FR03', 11),
('FR04', 11),
('FR01', 12),
('FR03', 12),
('FR01', 13),
('FR03', 13),
('FR02', 14),
('FR03', 14),
('FR01', 15),
('FR02', 15),
('FR01', 16),
('FR02', 16),
('FR01', 17),
('FR02', 17),
('FR01', 18),
('FR02', 18),
('FR01', 19),
('FR03', 19),
('FR02', 20),
('FR03', 20),
('FR01', 21),
('FR02', 21),
('FR01', 22),
('FR03', 22),
('FR01', 23),
('FR03', 23),
('FR02', 24),
('FR03', 24),
('FR04', 24),
('FR01', 25),
('FR03', 25),
('FR01', 26),
('FR03', 26),
('FR01', 27),
('FR03', 27),
('FR02', 28),
('FR03', 28),
('FR01', 29),
('FR03', 29),
('FR03', 30),
('FR04', 30),
('FR01', 31),
('FR02', 31),
('FR02', 32),
('FR03', 32),
('FR02', 33),
('FR03', 33),
('FR01', 34),
('FR02', 34),
('FR01', 35),
('FR02', 35),
('FR01', 36),
('FR02', 36),
('FR03', 36),
('FR01', 37),
('FR02', 37),
('FR03', 37);

-- --------------------------------------------------------

--
-- Table structure for table `ho_so_nhan_vien`
--

CREATE TABLE IF NOT EXISTS `ho_so_nhan_vien` (
  `ma_nhan_vien` int(5) unsigned zerofill NOT NULL,
  `ma_phong_ban` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ma_chuc_danh` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ho_dem` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `anh_dai_dien` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nam_sinh` date NOT NULL,
  `gioi_tinh` int(1) NOT NULL,
  `ma_tinh_trang_hon_nhan` int(11) NOT NULL,
  `que_quan` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `dan_toc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ma_quoc_tich` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `noi_tam_tru` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `so_dien_thoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `so_cmnd` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `noi_cap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_cap` date NOT NULL,
  `trang_thai` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ho_so_nhan_vien`
--

INSERT INTO `ho_so_nhan_vien` (`ma_nhan_vien`, `ma_phong_ban`, `ma_chuc_danh`, `ho_dem`, `ten`, `anh_dai_dien`, `nam_sinh`, `gioi_tinh`, `ma_tinh_trang_hon_nhan`, `que_quan`, `dan_toc`, `ma_quoc_tich`, `noi_tam_tru`, `so_dien_thoai`, `email`, `so_cmnd`, `noi_cap`, `ngay_cap`, `trang_thai`) VALUES
(00001, 'PGD', 'GD', 'Đặng Văn', 'Nam', '1533865835713.jpeg', '1998-07-20', 1, 1, '121 Hoàng Diệu, Hải Châu, Đà Nẵng', 'Kinh', 'VN', '121 Hoàng Diệu, Hải Châu, Đà Nẵng', '01266676809', 'dangvannam98@gmail.com', '201756910', 'Đà Nẵng', '2013-01-12', 1),
(00002, 'PGD', 'GD', 'Thái Nguyễn Thục', 'Nhi', '1219820798017.png', '1998-01-12', 2, 1, '128 Trần Văn Hai, Phường Hoà Hải, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', '128 Trần Văn Hai, Phường Hoà Hải, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '01694158988', 'doanphiphuc4081@gmail.com', '201127804', 'Đà Nẵng', '2014-10-21', 1),
(00003, 'PGD', 'NV', 'Trương Thành', 'Ngân', '1219820798019.png', '1985-09-25', 1, 2, '693A/42 Trần Cao Vân, Phường Thanh Khê Đông, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '693A/42 Trần Cao Vân, Phường Thanh Khê Đông, Quận Thanh Khê, Thành phố Đà Nẵng', '01679921408', 'truongthanhngan9451@gmail.com', '201453041', 'Nam Định', '2011-01-19', 2),
(00004, 'PGD', 'NV', 'Hoàng Phi', 'Bách', '1219820798011.png', '1926-01-02', 2, 1, '06 Nguyễn Lý, Phường Hoà Xuân, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', '06 Nguyễn Lý, Phường Hoà Xuân, Quận Cẩm Lệ, Thành phố Đà Nẵng', '0947030127', 'hoangphibach6891@gmail.com', '201397509', 'Phú Yên', '2011-02-13', 1),
(00005, 'PNS', 'NV', 'Trương Hữu', 'Quang', '1219820798016.png', '1995-09-06', 1, 3, '56 Lê Hồng Phong, Phường Phước Ninh, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', '56 Lê Hồng Phong, Phường Phước Ninh, Quận Hải Châu, Thành phố Đà Nẵng', '01233215139', 'truonghuuquang7531@gmail.com', '201185456', 'Cà Mau', '2008-10-18', 2),
(00006, 'PDA', 'NV', 'Đoàn Thị', 'Phước', '1219820798003.png', '1960-12-15', 2, 3, 'K36/H8/31 Nguyễn Huy Tưởng, Phường Hoà Minh, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K36/H8/31 Nguyễn Huy Tưởng, Phường Hoà Minh, Quận Liên Chiểu, Thành phố Đà Nẵng', '0934657298', 'doanthiphuoc6031@gmail.com', '201850154', 'Đà Nẵng', '2008-11-21', 2),
(00007, 'PDA', 'TP', 'Đăng Hạ', 'Chí', '1219820798013.png', '1956-06-07', 1, 3, '97/33 Cách Mạng Tháng Tám, Phường Khuê Trung, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', '97/33 Cách Mạng Tháng Tám, Phường Khuê Trung, Quận Cẩm Lệ, Thành phố Đà Nẵng', '0995373667', 'danghachi8421@gmail.com', '201984014', 'Hậu Giang', '2012-06-14', 1),
(00008, 'PDA', 'NV', 'Vương Văn', 'Tài', '1219820798003.png', '1981-06-25', 1, 4, 'K72/32 Ngọc Hân, Phường An Hải Tây, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K72/32 Ngọc Hân, Phường An Hải Tây, Quận Sơn Trà, Thành phố Đà Nẵng', '0978177177', 'vuongvantai161@gmail.com', '201431316', 'Đà Nẵng', '2010-11-16', 2),
(00009, 'PDT', 'NV', 'Đồng Phi', 'Tiến', '1219820798015.png', '1977-05-04', 1, 2, '21/3 Yên Bái, Phường Hải Châu I, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', '21/3 Yên Bái, Phường Hải Châu I, Quận Hải Châu, Thành phố Đà Nẵng', '0965388198', 'dongphitien3291@gmail.com', '201526208', 'Đà Nẵng', '2011-12-03', 1),
(00010, 'PDA', 'NV', 'Hoàng Thành', 'Tuệ', '1219820798006.png', '1995-06-03', 2, 3, 'K122/22 Trưng Nữ Vương, Phường Bình Hiên, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K122/22 Trưng Nữ Vương, Phường Bình Hiên, Quận Hải Châu, Thành phố Đà Nẵng', '0912302727', 'hoangthanhtue4171@gmail.com', '201999080', 'Đà Nẵng', '2011-07-28', 2),
(00011, 'PDT', 'NV', 'Tôn Bình', 'Quang', '1219820798016.png', '1970-01-24', 2, 2, 'Lô A2.10 đường 30/4, Phường Hoà Cường Bắc, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô A2.10 đường 30/4, Phường Hoà Cường Bắc, Quận Hải Châu, Thành phố Đà Nẵng', '01246865888', 'doanphiphuc181@gmail.com', '201400026', 'Đà Nẵng', '2012-10-19', 2),
(00012, 'PGD', 'NV', 'Tôn Tuấn', 'Phương', '1219820798015.png', '1954-04-09', 2, 2, '278-280 Xô Viết Nghệ Tĩnh, Phường Khuê Trung, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', '278-280 Xô Viết Nghệ Tĩnh, Phường Khuê Trung, Quận Cẩm Lệ, Thành phố Đà Nẵng', '0933906886', 'truongthanhngan7551@gmail.com', '201197272', 'Đà Nẵng', '2012-11-12', 2),
(00013, 'PNS', 'NV', 'Đào Văn', 'Thanh', '1219820798003.png', '1996-05-15', 2, 4, '11 Phạm Kiệt, Phường Khuê Mỹ, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', '11 Phạm Kiệt, Phường Khuê Mỹ, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '0907661973', 'hoangphibach2171@gmail.com', '201560149', 'Đà Nẵng', '2008-04-26', 2),
(00014, 'PIT', 'NV', 'Lê Phi', 'Tiền', '1219820798017.png', '1977-10-03', 2, 1, '356/19 Ngũ Hành Sơn, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', '356/19 Ngũ Hành Sơn, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '0984352870', 'truonghuuquang3951@gmail.com', '200898894', 'Đà Nẵng', '2008-05-03', 2),
(00015, 'PNS', 'NV', 'Lý Thành', 'Chí', '1219820798015.png', '1951-03-03', 2, 4, '500 Trần Cao Vân, Phường Xuân Hà, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '500 Trần Cao Vân, Phường Xuân Hà, Quận Thanh Khê, Thành phố Đà Nẵng', '01688970755', 'doanthiphuoc4391@gmail.com', '200895335', 'Đà Nẵng', '2011-08-15', 1),
(00016, 'PIT', 'TP', 'Tiến', 'Bùi Tuấn', '1219820798014.png', '1970-04-28', 2, 3, '115 Trần Văn Ơn, Phường Hoà An, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', '115 Trần Văn Ơn, Phường Hoà An, Quận Cẩm Lệ, Thành phố Đà Nẵng', '01233033698', 'danghachi8721@gmail.com', '201851326', 'Đồng Tháp', '2012-05-24', 1),
(00017, 'PGD', 'NV', 'Phùng Hạ', 'Châu', '1219820798002.png', '1957-06-04', 1, 2, '74/7/24 Ngô Thị Nhậm, Phường Hoà Minh, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Kinh', 'VN', '74/7/24 Ngô Thị Nhậm, Phường Hoà Minh, Quận Liên Chiểu, Thành phố Đà Nẵng', '01679834761', 'vuongvantai3381@gmail.com', '201418951', 'Sơn La', '2008-09-08', 1),
(00018, 'PIT', 'NV', 'Lai Bình', 'Tài', '1219820798003.png', '1972-04-02', 2, 3, '33 Ngô Quyền, Phường Thọ Quang, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', '33 Ngô Quyền, Phường Thọ Quang, Quận Sơn Trà, Thành phố Đà Nẵng', '0964697567', 'dongphitien1141@gmail.com', '201096002', 'Đà Nẵng', '2010-01-04', 2),
(00019, 'PIT', 'NV', 'Bùi Văn', 'Tiến', '1219820798019.png', '1986-07-13', 2, 1, 'Lô 50-B1.108 Khu Đô Thị Sinh Thái Ven Sông Hòa Xuân, Phường Hoà Xuân, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô 50-B1.108 Khu Đô Thị Sinh Thái Ven Sông Hòa Xuân, Phường Hoà Xuân, Quận Cẩm Lệ, Thành phố Đà Nẵng', '01699784960', 'hoangthanhtue6991@gmail.com', '200802324', 'Khánh Hòa', '2012-02-25', 2),
(00020, 'PGD', 'NV', 'Võ Hưng', 'Tài', '1219820798017.png', '1973-12-29', 2, 2, 'K80/47 Lê Hữu Trác, Phường An Hải Đông, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K80/47 Lê Hữu Trác, Phường An Hải Đông, Quận Sơn Trà, Thành phố Đà Nẵng', '01283813511', 'tonbinhquang3261@gmail.com', '201837301', 'Đà Nẵng', '2010-07-27', 1),
(00021, 'PKT', 'NV', 'Đinh Vô', 'Tiền', '1219820798016.png', '1947-05-18', 1, 2, '755 Ngô Quyền, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', '755 Ngô Quyền, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', '01626365970', 'tontuanphuong2851@gmail.com', '201117928', 'Đà Nẵng', '2009-11-26', 2),
(00022, 'PKT', 'NV', 'Phan Hạ', 'Lâm', '1219820798010.png', '1967-07-17', 2, 3, '693A/42 Trần Cao Vân, Phường Thanh Khê Đông, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '693A/42 Trần Cao Vân, Phường Thanh Khê Đông, Quận Thanh Khê, Thành phố Đà Nẵng', '01246929299', 'daovanthanh9661@gmail.com', '201790798', 'Đà Nẵng', '2008-03-22', 2),
(00023, 'PDA', 'NV', 'Đăng Phi', 'Long', '1219820798017.png', '1968-02-26', 1, 2, '03 Trần Thanh Mại, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', '03 Trần Thanh Mại, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', '01627908688', 'lephitien3051@gmail.com', '201820582', 'Vĩnh Long', '2012-02-25', 2),
(00024, 'PGD', 'NV', 'Dương Phương', 'Quá', '1219820798015.png', '1953-04-02', 1, 1, 'K5/500 Tôn Đản, Phường Hoà Phát, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K5/500 Tôn Đản, Phường Hoà Phát, Quận Cẩm Lệ, Thành phố Đà Nẵng', '0915251298', 'lythanhchi6121@gmail.com', '201812686', 'Phú Yên', '2012-04-25', 2),
(00025, 'PDT', 'NV', 'Tôn Văn', 'Lâm', '1219820798012.png', '1970-02-28', 2, 1, 'Số 10 An Thượng 36, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Số 10 An Thượng 36, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '0945659199', 'buituantien8641@gmail.com', '201261522', 'Đà Nẵng', '2009-11-17', 2),
(00026, 'PNS', 'NV', 'Dương Thị', 'Trí', '1219820798022.png', '1988-01-22', 2, 4, '74 Nguyễn Quyền, Phường Hoà An, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', '74 Nguyễn Quyền, Phường Hoà An, Quận Cẩm Lệ, Thành phố Đà Nẵng', '01634469344', 'phunghachau8321@gmail.com', '201933917', 'Đà Nẵng', '2008-08-16', 2),
(00027, 'PGD', 'NV', 'Hoàng Hạ', 'Nga', '1219820798006.png', '1941-06-20', 1, 1, '255 Hà Huy Tập, Phường Hoà Khê, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '255 Hà Huy Tập, Phường Hoà Khê, Quận Thanh Khê, Thành phố Đà Nẵng', '0965430098', 'laibinhtai4641@gmail.com', '201147892', 'Đà Nẵng', '2012-10-28', 1),
(00028, 'PIT', 'PP', 'Thanh', 'Mai Phương', '1219820798015.png', '1960-02-22', 1, 4, 'Lô 50-B1.108 Khu Đô Thị Sinh Thái Ven Sông Hòa Xuân, Phường Hoà Xuân, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô 50-B1.108 Khu Đô Thị Sinh Thái Ven Sông Hòa Xuân, Phường Hoà Xuân, Quận Cẩm Lệ, Thành phố Đà Nẵng', '01212988998', 'buivantien7241@gmail.com', '201450666', 'Đà Nẵng', '2012-06-24', 1),
(00029, 'PIT', 'NV', 'Lâm Mỹ', 'Tiền', '1219820798007.png', '1958-04-23', 1, 2, '454/4 Nguyễn Tri Phương, Phường Hoà Thuận Tây, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', '454/4 Nguyễn Tri Phương, Phường Hoà Thuận Tây, Quận Hải Châu, Thành phố Đà Nẵng', '0979261480', 'vohungtai5481@gmail.com', '201013234', 'Đà Nẵng', '2008-05-18', 2),
(00030, 'PKT', 'NV', 'Dương Phi', 'Tuệ', '1219820798011.png', '1946-06-10', 2, 3, '395 Võ An Ninh, Phường Hoà Xuân, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', '395 Võ An Ninh, Phường Hoà Xuân, Quận Cẩm Lệ, Thành phố Đà Nẵng', '0974551998', 'dinhvotien7611@gmail.com', '201539317', 'Đà Nẵng', '2011-10-17', 2),
(00031, 'PKT', 'NV', 'Phan Hữu', 'Tài', '1219820798007.png', '1999-02-23', 1, 1, 'K434/23 Núi Thành, Phường Hoà Cường Nam, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K434/23 Núi Thành, Phường Hoà Cường Nam, Quận Hải Châu, Thành phố Đà Nẵng', '0947639057', 'phanhalam911@gmail.com', '201243329', 'Hoà Bình', '2012-07-28', 2),
(00032, 'PIT', 'NV', 'Trương Hưng', 'Trí', '1219820798019.png', '1996-06-13', 2, 3, '109 Mẹ Thứ, Phường Hoà Xuân, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', '109 Mẹ Thứ, Phường Hoà Xuân, Quận Cẩm Lệ, Thành phố Đà Nẵng', '01687860751', 'dangphilong3471@gmail.com', '201568082', 'Đà Nẵng', '2012-09-08', 1),
(00033, 'PIT', 'NV', 'Trương Hữu', 'Nga', '1219820798011.png', '1953-02-10', 1, 4, '13 An Thượng 31, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', '13 An Thượng 31, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '0912668622', 'duongphuongqua4401@gmail.com', '201869858', 'Đà Nẵng', '2008-11-04', 2),
(00034, 'PGD', 'PGD', 'Phạm Mỹ', 'Sơn', '1219820798019.png', '1996-11-04', 1, 2, '97/33 Cách Mạng Tháng Tám, Phường Khuê Trung, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', '97/33 Cách Mạng Tháng Tám, Phường Khuê Trung, Quận Cẩm Lệ, Thành phố Đà Nẵng', '0912237798', 'tonvanlam5991@gmail.com', '200946021', 'Đà Nẵng', '2012-04-23', 2),
(00035, 'PDT', 'PP', 'Châu', 'Triệu Hưng', '1219820798006.png', '1955-06-07', 1, 2, '1254 Xô Viết Nghệ Tĩnh, Phường Hoà Cường Nam, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', '1254 Xô Viết Nghệ Tĩnh, Phường Hoà Cường Nam, Quận Hải Châu, Thành phố Đà Nẵng', '01662141998', 'duongthitri2951@gmail.com', '200941269', 'Đà Nẵng', '2010-05-02', 1),
(00036, 'PGD', 'NV', 'Lê Bình', 'Chí', '1219820798007.png', '1964-11-22', 2, 2, 'Số 10 An Thượng 36, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Số 10 An Thượng 36, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '0904853941', 'hoanghanga7281@gmail.com', '201392565', 'Đà Nẵng', '2008-08-06', 2),
(00037, 'PGD', 'GD', 'Triệu Văn', 'Tiến', '1219820798005.png', '1977-05-02', 2, 1, 'K81/4 Trần Ngọc Sương, Phường Hoà Thọ Đông, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K81/4 Trần Ngọc Sương, Phường Hoà Thọ Đông, Quận Cẩm Lệ, Thành phố Đà Nẵng', '0983681215', 'maiphuongthanh1811@gmail.com', '201130415', 'Long An', '2008-03-19', 2),
(00038, 'PGD', 'NV', 'Trương Phi', 'Phước', '1219820798011.png', '1993-10-29', 1, 1, '76 Nguyễn Sơn, Phường Hoà Cường Nam, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', '76 Nguyễn Sơn, Phường Hoà Cường Nam, Quận Hải Châu, Thành phố Đà Nẵng', '0945014122', 'lammytien8661@gmail.com', '201826564', 'Đà Nẵng', '2010-03-01', 2),
(00039, 'PIT', 'NV', 'Bùi Phi', 'Tiền', '1219820798009.png', '1996-10-01', 1, 2, '09 Ngô Văn Sở, Phường Hoà Khánh Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Kinh', 'VN', '09 Ngô Văn Sở, Phường Hoà Khánh Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', '01698550584', 'duongphitue6881@gmail.com', '201448393', 'Yên Bái', '2008-09-05', 1),
(00040, 'PNS', 'NV', 'Vương Thành', 'Sơn', '1219820798009.png', '1979-07-12', 2, 3, 'Lô 50- B2.1 Cụm dân cư phía Bắc Tu Viện Phao Lô, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô 50- B2.1 Cụm dân cư phía Bắc Tu Viện Phao Lô, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '0975223285', 'phanhuutai8601@gmail.com', '200838748', 'Đà Nẵng', '2012-12-07', 2),
(00041, 'PKT', 'NV', 'Đinh Tuấn', 'Tiền', '1219820798001.png', '1946-01-06', 1, 4, '31 Hà Bổng, Phường Phước Mỹ, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', '31 Hà Bổng, Phường Phước Mỹ, Quận Sơn Trà, Thành phố Đà Nẵng', '0942429773', 'truonghungtri1651@gmail.com', '201991378', 'Tỉnh Lai Châu', '2010-02-04', 2),
(00042, 'PNS', 'TP', 'Lâm Tuấn', 'Trân', '1219820798010.png', '1928-12-17', 1, 4, 'Lô số 03-A3.5 Khu công viên Bắc Tượng Đài, Phường Hoà Cường Bắc, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô số 03-A3.5 Khu công viên Bắc Tượng Đài, Phường Hoà Cường Bắc, Quận Hải Châu, Thành phố Đà Nẵng', '0971413114', 'truonghuunga8531@gmail.com', '201474985', 'Đà Nẵng', '2011-11-12', 1),
(00043, 'PKT', 'NV', 'Lai Tuấn', 'Nga', '1219820798018.png', '1971-12-28', 2, 1, '73-75 Dương Đình Nghệ, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', '73-75 Dương Đình Nghệ, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', '0989710068', 'phammyson1851@gmail.com', '201745755', 'Đà Nẵng', '2010-03-09', 1),
(00044, 'PIT', 'NV', 'Phùng Tuấn', 'Thảo', '1219820798022.png', '1959-04-04', 1, 1, '183 Hoàng Đức Lương, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', '183 Hoàng Đức Lương, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', '0936127618', 'trieuhungchau3471@gmail.com', '201231558', 'Thừa Thiên Huế', '2008-10-15', 1),
(00045, 'PKT', 'NV', 'Đỗ Phi', 'Tuyền', '1219820798012.png', '1961-11-20', 2, 2, '288 Bế Văn Đàn, Phường Hoà Khê, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '288 Bế Văn Đàn, Phường Hoà Khê, Quận Thanh Khê, Thành phố Đà Nẵng', '0965938770', 'lebinhchi4011@gmail.com', '201392608', 'Đà Nẵng', '2009-01-01', 2),
(00046, 'PIT', 'NV', 'Trương Văn', 'Quá', '1219820798009.png', '1978-04-05', 1, 2, '216 Khúc Hạo, Phường Nại Hiên Đông, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', '216 Khúc Hạo, Phường Nại Hiên Đông, Quận Sơn Trà, Thành phố Đà Nẵng', '01234053369', 'trieuvantien551@gmail.com', '201529531', 'Đà Nẵng', '2009-03-25', 2),
(00047, 'PIT', 'NV', 'Triệu Thị', 'Nga', '1219820798014.png', '1936-03-03', 1, 1, 'K634/73/32 Trưng Nữ Vương, Phường Hoà Thuận Tây, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K634/73/32 Trưng Nữ Vương, Phường Hoà Thuận Tây, Quận Hải Châu, Thành phố Đà Nẵng', '0917911310', 'truongphiphuoc2441@gmail.com', '200887650', 'Hà Giang', '2008-07-17', 1),
(00048, 'PKT', 'NV', 'Đỗ Văn', 'Chí', '1219820798004.png', '1944-09-16', 2, 3, '472 Ngô Quyền, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', '472 Ngô Quyền, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', '0902140298', 'buiphitien4031@gmail.com', '201205466', 'Đà Nẵng', '2010-09-26', 1),
(00049, 'PGD', 'NV', 'Bùi Thành', 'Lâm', '1219820798004.png', '1950-04-17', 1, 3, '1999 Nguyễn Tất Thành, Phường Thanh Khê Tây, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '1999 Nguyễn Tất Thành, Phường Thanh Khê Tây, Quận Thanh Khê, Thành phố Đà Nẵng', '0922063883', 'vuongthanhson8921@gmail.com', '201860426', 'Quảng Ngãi', '2010-01-19', 2),
(00050, 'PIT', 'NV', 'Dương Hữu', 'Nguyệt', '1219820798012.png', '1942-10-25', 1, 4, 'Nhà số A2.7, Khu biệt thự Đảo Xanh, Phường Hoà Cường Bắc, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Nhà số A2.7, Khu biệt thự Đảo Xanh, Phường Hoà Cường Bắc, Quận Hải Châu, Thành phố Đà Nẵng', '0915109597', 'dinhtuantien6881@gmail.com', '201987229', 'Đà Nẵng', '2010-05-23', 1),
(00051, 'PDA', 'NV', 'Đoàn Thị', 'Đạt', '1219820798003.png', '1948-09-13', 1, 4, '43 Trần Quý Cáp, Phường Thạch Thang, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', '43 Trần Quý Cáp, Phường Thạch Thang, Quận Hải Châu, Thành phố Đà Nẵng', '0968882266', 'lamtuantran3441@gmail.com', '200880132', 'Vĩnh Long', '2010-10-10', 2),
(00052, 'PDA', 'NV', 'Lê Phương', 'Trí', '1219820798001.png', '1961-08-04', 2, 2, 'K233/27 Trưng Nữ Vương, Phường Hoà Thuận Đông, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K233/27 Trưng Nữ Vương, Phường Hoà Thuận Đông, Quận Hải Châu, Thành phố Đà Nẵng', '0904770000', 'laituannga2941@gmail.com', '201134414', 'Đà Nẵng', '2009-09-15', 2),
(00053, 'PNS', 'NV', 'Trần Thành', 'Linh', '1219820798019.png', '1926-08-21', 1, 4, '112 Hải Hồ, Phường Thanh Bình, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', '112 Hải Hồ, Phường Thanh Bình, Quận Hải Châu, Thành phố Đà Nẵng', '0986451062', 'phungtuanthao7001@gmail.com', '200928000', 'Tỉnh Phú Thọ', '2010-05-07', 1),
(00054, 'PGD', 'PGD', 'Hoàng Phục', 'Nguyệt', '1219820798012.png', '1994-01-24', 2, 2, '190 Phạm Cự Lượng, Phường An Hải Đông, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', '190 Phạm Cự Lượng, Phường An Hải Đông, Quận Sơn Trà, Thành phố Đà Nẵng', '01676013809', 'dophituyen3011@gmail.com', '201413502', 'Lạng Sơn', '2008-12-09', 2),
(00055, 'PDT', 'NV', 'Đinh Phi', 'Quang', '1219820798001.png', '1957-05-07', 2, 1, '21/3 Yên Bái, Phường Hải Châu I, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', '21/3 Yên Bái, Phường Hải Châu I, Quận Hải Châu, Thành phố Đà Nẵng', '01668603473', 'truongvanqua2081@gmail.com', '201900150', 'Quảng Bình', '2010-08-25', 2),
(00056, 'PDT', 'TP', 'Thành', 'Đăng Bình', '1219820798010.png', '1974-09-29', 2, 2, '21 Phan Tốn, Phường Hoà Quý, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', '21 Phan Tốn, Phường Hoà Quý, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '0977039598', 'trieuthinga8971@gmail.com', '200990430', 'Bắc Ninh', '2010-08-03', 1),
(00057, 'PKT', 'TP', 'Quá', 'Triệu Thành', '1219820798002.png', '1951-05-03', 2, 1, 'Lô 12 Phước Trường 16, Phường Phước Mỹ, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô 12 Phước Trường 16, Phường Phước Mỹ, Quận Sơn Trà, Thành phố Đà Nẵng', '01685388927', 'dovanchi4531@gmail.com', '201183364', 'Đà Nẵng', '2011-05-01', 1),
(00058, 'PIT', 'NV', 'Đoàn Thị', 'Long', '1219820798006.png', '1959-05-21', 2, 1, 'K408/17/21 Tôn Đản, Phường Hoà An, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K408/17/21 Tôn Đản, Phường Hoà An, Quận Cẩm Lệ, Thành phố Đà Nẵng', '0989633435', 'buithanhlam6911@gmail.com', '200839404', 'Hà Nam', '2010-10-12', 1),
(00059, 'PKT', 'NV', 'Phạm Thành', 'Bách', '1219820798003.png', '1995-07-02', 2, 2, '36 Sơn Thủy 3, Phường Hoà Hải, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', '36 Sơn Thủy 3, Phường Hoà Hải, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '01242598906', 'duonghuunguyet6031@gmail.com', '201626856', 'Tỉnh Lai Châu', '2011-06-08', 1),
(00060, 'PGD', 'PGD', 'Trần Vô', 'Phúc', '1219820798014.png', '1956-06-28', 1, 1, '472 Ngô Quyền, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', '472 Ngô Quyền, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', '01632689968', 'doanthidat1431@gmail.com', '201072027', 'Đà Nẵng', '2009-09-21', 1),
(00061, 'PIT', 'NV', 'Trần Tuấn', 'Chí', '1219820798005.png', '1983-12-14', 2, 2, '109 Mẹ Thứ, Phường Hoà Xuân, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', '109 Mẹ Thứ, Phường Hoà Xuân, Quận Cẩm Lệ, Thành phố Đà Nẵng', '01278971998', 'lephuongtri171@gmail.com', '201728701', 'Đà Nẵng', '2010-03-06', 1),
(00062, 'PIT', 'NV', 'Triệu Hạ', 'Trân', '1219820798005.png', '1982-03-12', 2, 2, '375/31 Nguyễn Phước Nguyên, Phường An Khê, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '375/31 Nguyễn Phước Nguyên, Phường An Khê, Quận Thanh Khê, Thành phố Đà Nẵng', '0906200838', 'tranthanhlinh6911@gmail.com', '201905722', 'Đà Nẵng', '2010-06-02', 1),
(00063, 'PNS', 'NV', 'Lý Hạ', 'Long', '1219820798012.png', '1962-08-08', 2, 3, 'Kiệt A379/6 Tôn Đản, Phường Hoà An, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Kiệt A379/6 Tôn Đản, Phường Hoà An, Quận Cẩm Lệ, Thành phố Đà Nẵng', '0915165989', 'hoangphucnguyet7731@gmail.com', '201338393', 'Đà Nẵng', '2008-02-15', 2),
(00064, 'PIT', 'NV', 'Trương Vô', 'Nguyệt', '1219820798008.png', '1938-03-02', 2, 2, '23 Trịnh Lỗi, Phường Khuê Mỹ, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', '23 Trịnh Lỗi, Phường Khuê Mỹ, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '0982343267', 'dinhphiquang5661@gmail.com', '201398932', 'Đà Nẵng', '2012-03-02', 1),
(00065, 'PIT', 'NV', 'Đỗ Hưng', 'Lâm', '1219820798022.png', '1959-02-04', 2, 3, '37 Hà Huy Tập, Phường Xuân Hà, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '37 Hà Huy Tập, Phường Xuân Hà, Quận Thanh Khê, Thành phố Đà Nẵng', '01669954165', 'dangbinhthanh2551@gmail.com', '201057001', 'Tỉnh Bắc Kạn', '2008-02-16', 1),
(00066, 'PDA', 'NV', 'Trần Phục', 'Phục', '1219820798008.png', '1966-10-18', 1, 4, '111 Thế Lữ, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', '111 Thế Lữ, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', '0966593219', 'trieuthanhqua4311@gmail.com', '201932448', 'Đà Nẵng', '2008-10-20', 1),
(00067, 'PNS', 'NV', 'Dương Mỹ', 'Quân', '1219820798010.png', '1960-05-18', 2, 4, '375/31 Nguyễn Phước Nguyên, Phường An Khê, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '375/31 Nguyễn Phước Nguyên, Phường An Khê, Quận Thanh Khê, Thành phố Đà Nẵng', '0904188855', 'doanthilong5361@gmail.com', '201869729', 'Bình Dương', '2011-10-25', 2),
(00068, 'PDA', 'NV', 'Trương Phi', 'Chí', '1219820798015.png', '1930-08-09', 1, 3, 'Lô A11-1, đường số 4, Khu công nghệ cao Đà Nẵng, Xã Hoà Liên, Huyện Hoà Vang, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô A11-1, đường số 4, Khu công nghệ cao Đà Nẵng, Xã Hoà Liên, Huyện Hoà Vang, Thành phố Đà Nẵng', '0948700098', 'phamthanhbach671@gmail.com', '201254054', 'Tỉnh Bắc Kạn', '2012-12-15', 1),
(00069, 'PDT', 'NV', 'Đăng Mỹ', 'Phúc', '1219820798015.png', '1951-06-21', 2, 4, '34 Lỗ Giáng 16, Phường Hoà Xuân, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', '34 Lỗ Giáng 16, Phường Hoà Xuân, Quận Cẩm Lệ, Thành phố Đà Nẵng', '0911400831', 'tranvophuc6021@gmail.com', '201526246', 'Đà Nẵng', '2010-09-18', 1),
(00070, 'PDA', 'NV', 'Lai Vô', 'Trân', '1219820798015.png', '1992-08-10', 1, 3, 'K03/09 Dũng Sĩ Thanh Khê, Phường Thanh Khê Tây, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K03/09 Dũng Sĩ Thanh Khê, Phường Thanh Khê Tây, Quận Thanh Khê, Thành phố Đà Nẵng', '01643014832', 'trantuanchi6491@gmail.com', '201008530', 'Đà Nẵng', '2010-12-14', 1),
(00071, 'PKT', 'NV', 'Đăng Phương', 'Đạt', '1219820798011.png', '1925-01-29', 1, 4, 'Lô 39 Đường Sơn Thủy 12, Phường Hoà Hải, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô 39 Đường Sơn Thủy 12, Phường Hoà Hải, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '01674876709', 'trieuhatran5111@gmail.com', '201610794', 'Tỉnh Phú Thọ', '2011-09-12', 2),
(00072, 'PIT', 'NV', 'Phan Vô', 'Phúc', '1219820798004.png', '1978-07-22', 1, 1, '09 Ngô Văn Sở, Phường Hoà Khánh Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Kinh', 'VN', '09 Ngô Văn Sở, Phường Hoà Khánh Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', '01249919515', 'lyhalong6511@gmail.com', '201119410', 'Bắc Giang', '2012-12-19', 1),
(00073, 'PDT', 'NV', 'Phùng Thành', 'Nga', '1219820798016.png', '1929-12-05', 2, 4, '89 Hà Mục, Tổ 55, Phường Hoà Thọ Đông, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', '89 Hà Mục, Tổ 55, Phường Hoà Thọ Đông, Quận Cẩm Lệ, Thành phố Đà Nẵng', '0912933156', 'truongvonguyet9761@gmail.com', '201953901', 'Đà Nẵng', '2008-07-21', 2),
(00074, 'PKT', 'NV', 'Phan Hữu', 'Đạt', '1219820798016.png', '1959-06-16', 1, 3, '1999 Nguyễn Tất Thành, Phường Thanh Khê Tây, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '1999 Nguyễn Tất Thành, Phường Thanh Khê Tây, Quận Thanh Khê, Thành phố Đà Nẵng', '0946859486', 'dohunglam7281@gmail.com', '201514365', 'Đà Nẵng', '2008-03-03', 1),
(00075, 'PNS', 'NV', 'Lê Tuấn', 'Thanh', '1219820798007.png', '1938-03-08', 2, 2, '152/6 Lý Tự Trọng, Phường Thuận Phước, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', '152/6 Lý Tự Trọng, Phường Thuận Phước, Quận Hải Châu, Thành phố Đà Nẵng', '0969352395', 'tranphucphuc8091@gmail.com', '200824865', 'Lạng Sơn', '2012-01-29', 2),
(00076, 'PDA', 'NV', 'Bùi Phương', 'Thành', '1219820798002.png', '1986-12-22', 2, 1, '108 Trần Huy Liệu, Phường Khuê Trung, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', '108 Trần Huy Liệu, Phường Khuê Trung, Quận Cẩm Lệ, Thành phố Đà Nẵng', '01278913923', 'duongmyquan9621@gmail.com', '201061140', 'Kon Tum', '2010-05-01', 2),
(00077, 'PIT', 'NV', 'Phan Thành', 'Tiền', '1219820798009.png', '1958-02-18', 2, 3, '12 Nam Thọ 2, Phường Thọ Quang, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', '12 Nam Thọ 2, Phường Thọ Quang, Quận Sơn Trà, Thành phố Đà Nẵng', '0941076889', 'truongphichi3051@gmail.com', '201660295', 'Đà Nẵng', '2011-08-23', 1),
(00078, 'PNS', 'NV', 'Lâm Hạ', 'Sơn', '1219820798001.png', '1950-01-06', 1, 4, '31 Trần Phú, Phường Hải Châu I, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', '31 Trần Phú, Phường Hải Châu I, Quận Hải Châu, Thành phố Đà Nẵng', '01234641998', 'dangmyphuc8341@gmail.com', '201968726', 'Đà Nẵng', '2010-10-21', 1),
(00079, 'PDA', 'NV', 'Võ Văn', 'Linh', '1219820798010.png', '1958-04-04', 2, 3, 'K340/9 Nguyễn Tri Phương, Phường Hoà Thuận Tây, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K340/9 Nguyễn Tri Phương, Phường Hoà Thuận Tây, Quận Hải Châu, Thành phố Đà Nẵng', '0946204772', 'laivotran2961@gmail.com', '201867586', 'Cao Bằng', '2009-03-22', 2),
(00080, 'PNS', 'NV', 'Võ Thị', 'Ngân', '1219820798019.png', '1927-06-14', 2, 4, 'Số 35 Thái Phiên, Phường Phước Ninh, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Số 35 Thái Phiên, Phường Phước Ninh, Quận Hải Châu, Thành phố Đà Nẵng', '01234952498', 'dangphuongdat6431@gmail.com', '201263979', 'Sơn La', '2010-09-21', 2),
(00081, 'PDT', 'NV', 'Phan Phi', 'Quá', '1219820798012.png', '1997-12-16', 1, 2, '40A Nguyễn Thiện Kế, Phường An Hải Đông, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', '40A Nguyễn Thiện Kế, Phường An Hải Đông, Quận Sơn Trà, Thành phố Đà Nẵng', '01213057124', 'phanvophuc81@gmail.com', '201679205', 'Quảng Nam', '2012-10-20', 1),
(00082, 'PDA', 'NV', 'Lê Bình', 'Sơn', '1219820798009.png', '1961-10-09', 1, 2, '91 Ngô Nhân Tịnh, Phường Hoà An, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', '91 Ngô Nhân Tịnh, Phường Hoà An, Quận Cẩm Lệ, Thành phố Đà Nẵng', '0995476010', 'phungthanhnga2211@gmail.com', '201880516', 'Đồng Tháp', '2010-09-09', 2),
(00083, 'PIT', 'NV', 'Lý Văn', 'Linh', '1219820798003.png', '1942-01-13', 1, 3, 'K434/23 Núi Thành, Phường Hoà Cường Nam, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K434/23 Núi Thành, Phường Hoà Cường Nam, Quận Hải Châu, Thành phố Đà Nẵng', '0985426898', 'phanhuudat5211@gmail.com', '201746656', 'Ninh Thuận', '2011-06-08', 1),
(00084, 'PNS', 'NV', 'Trần Phi', 'Phục', '1219820798007.png', '1956-06-23', 1, 4, 'Lô D8-108 Khu dân cư đô thị mới nam cầu Cẩm Lệ, Xã Hoà Phước, Huyện Hoà Vang, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô D8-108 Khu dân cư đô thị mới nam cầu Cẩm Lệ, Xã Hoà Phước, Huyện Hoà Vang, Thành phố Đà Nẵng', '01239173861', 'letuanthanh1941@gmail.com', '201977463', 'Đà Nẵng', '2012-10-18', 2),
(00085, 'PDA', 'NV', 'Đào Thành', 'Tăng', '1219820798009.png', '1954-10-21', 1, 1, '152/40B Phan Thanh, Phường Thạc Gián, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '152/40B Phan Thanh, Phường Thạc Gián, Quận Thanh Khê, Thành phố Đà Nẵng', '01682567595', 'buiphuongthanh6451@gmail.com', '201585397', 'Đà Nẵng', '2012-03-20', 2),
(00086, 'PKT', 'PP', 'Tài', 'Lâm Thị', '1219820798005.png', '1945-04-07', 1, 1, '281 Đoàn Khuê, Phường Khuê Mỹ, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', '281 Đoàn Khuê, Phường Khuê Mỹ, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '0982214775', 'phanthanhtien851@gmail.com', '201121396', 'Đà Nẵng', '2012-05-08', 1),
(00087, 'PDT', 'NV', 'Dương Phục', 'Bách', '1219820798003.png', '1933-12-13', 1, 4, 'K634/73/32 Trưng Nữ Vương, Phường Hoà Thuận Tây, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K634/73/32 Trưng Nữ Vương, Phường Hoà Thuận Tây, Quận Hải Châu, Thành phố Đà Nẵng', '0942705296', 'lamhason391@gmail.com', '201742447', 'Thừa Thiên Huế', '2010-09-23', 1),
(00088, 'PDT', 'NV', 'Trương Bình', 'Mạnh', '1219820798011.png', '1968-04-16', 1, 3, '93 Phạm Nhữ Tăng, Phường Hoà Khê, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '93 Phạm Nhữ Tăng, Phường Hoà Khê, Quận Thanh Khê, Thành phố Đà Nẵng', '0962880082', 'vovanlinh5851@gmail.com', '201511143', 'Bà Rịa - Vũng Tàu', '2009-08-18', 2),
(00089, 'PIT', 'NV', 'Lê Hưng', 'Trân', '1219820798021.png', '1955-11-27', 2, 2, 'Số 54 Nguyễn Thiếp, Phường An Hải Tây, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Số 54 Nguyễn Thiếp, Phường An Hải Tây, Quận Sơn Trà, Thành phố Đà Nẵng', '0976698784', 'vothingan5501@gmail.com', '201646309', 'Trà Vinh', '2012-08-07', 2),
(00090, 'PDA', 'NV', 'Lâm Vô', 'Thảo', '1219820798003.png', '1960-08-17', 2, 2, 'Lô B2-13-30 Khu đô thị Phước Lý, Phường Hoà Minh, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô B2-13-30 Khu đô thị Phước Lý, Phường Hoà Minh, Quận Liên Chiểu, Thành phố Đà Nẵng', '0975981998', 'phanphiqua5511@gmail.com', '201180378', 'Long An', '2012-10-13', 1),
(00091, 'PNS', 'NV', 'Phùng Phục', 'Tuyền', '1219820798005.png', '1985-12-12', 2, 2, '27 Nguyễn Minh Không, Phường Hoà Minh, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Kinh', 'VN', '27 Nguyễn Minh Không, Phường Hoà Minh, Quận Liên Chiểu, Thành phố Đà Nẵng', '0964663020', 'lebinhson7181@gmail.com', '200893675', 'Cần Thơ', '2008-01-01', 1),
(00092, 'PKT', 'NV', 'Nguyễn Văn', 'Tăng', '1219820798008.png', '1934-10-29', 2, 4, '375/31 Nguyễn Phước Nguyên, Phường An Khê, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '375/31 Nguyễn Phước Nguyên, Phường An Khê, Quận Thanh Khê, Thành phố Đà Nẵng', '01665595959', 'lyvanlinh1381@gmail.com', '201183153', 'Thanh Hóa', '2010-05-29', 1),
(00093, 'PDT', 'NV', 'Đào Thị', 'Thanh', '1219820798005.png', '1945-01-18', 2, 3, 'K72/32 Ngọc Hân, Phường An Hải Tây, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K72/32 Ngọc Hân, Phường An Hải Tây, Quận Sơn Trà, Thành phố Đà Nẵng', '0978822321', 'tranphiphuc9311@gmail.com', '200891995', 'Đà Nẵng', '2008-05-11', 1),
(00094, 'PNS', 'NV', 'Tôn Mỹ', 'Phương', '1219820798004.png', '1980-12-02', 2, 2, '115 Trần Văn Ơn, Phường Hoà An, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', '115 Trần Văn Ơn, Phường Hoà An, Quận Cẩm Lệ, Thành phố Đà Nẵng', '0982113700', 'daothanhtang5731@gmail.com', '201386670', 'Đà Nẵng', '2012-10-27', 1),
(00095, 'PNS', 'NV', 'Dương Thị', 'Thảo', '1219820798004.png', '1931-07-24', 1, 3, '18 Điện Biên Phủ, Phường Chính Gián, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '18 Điện Biên Phủ, Phường Chính Gián, Quận Thanh Khê, Thành phố Đà Nẵng', '0983379481', 'lamthitai1391@gmail.com', '201999940', 'Nghệ An', '2011-07-17', 1),
(00096, 'PKT', 'NV', 'Phan Thành', 'Thanh', '1219820798001.png', '1939-10-18', 1, 4, '372/51 Phan Châu Trinh, Phường Bình Thuận, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', '372/51 Phan Châu Trinh, Phường Bình Thuận, Quận Hải Châu, Thành phố Đà Nẵng', '0983341998', 'duongphucbach1871@gmail.com', '201439684', 'Nam Định', '2009-06-27', 2),
(00097, 'PNS', 'NV', 'Vương Thành', 'Thành', '1219820798009.png', '1995-03-10', 2, 4, '64 Lê Văn Hưu, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', '64 Lê Văn Hưu, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '0936014607', 'truongbinhmanh7761@gmail.com', '201434101', 'Đà Nẵng', '2009-08-08', 1),
(00098, 'PDT', 'NV', 'Đỗ Phi', 'Châu', '1219820798019.png', '1941-11-26', 2, 3, 'Lô số 03-A3.5 Khu công viên Bắc Tượng Đài, Phường Hoà Cường Bắc, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô số 03-A3.5 Khu công viên Bắc Tượng Đài, Phường Hoà Cường Bắc, Quận Hải Châu, Thành phố Đà Nẵng', '0962508119', 'lehungtran9091@gmail.com', '201209723', 'Đà Nẵng', '2011-06-20', 1),
(00099, 'PNS', 'NV', 'Võ Phi', 'Tuệ', '1219820798011.png', '1964-08-04', 2, 3, 'Lô A-110 KDC dọc tuyến đường Trường Sa, Phường Hoà Cường Bắc, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô A-110 KDC dọc tuyến đường Trường Sa, Phường Hoà Cường Bắc, Quận Hải Châu, Thành phố Đà Nẵng', '01648346758', 'lamvothao9011@gmail.com', '201609313', 'Đà Nẵng', '2011-04-16', 2),
(00100, 'PNS', 'NV', 'Đoàn Văn', 'Đạt', '1219820798010.png', '1970-09-20', 1, 2, 'K166/17 Nguyễn Lương Bằng, Phường Hoà Khánh Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K166/17 Nguyễn Lương Bằng, Phường Hoà Khánh Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', '01635468595', 'phungphuctuyen1241@gmail.com', '200927611', 'Đà Nẵng', '2011-05-16', 1),
(00101, 'PDA', 'PP', 'Thanh', 'Phan Văn', '1219820798017.png', '1966-05-12', 2, 3, '247 Nguyễn Sắc Kim, Phường Hoà Xuân, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', '247 Nguyễn Sắc Kim, Phường Hoà Xuân, Quận Cẩm Lệ, Thành phố Đà Nẵng', '01652574253', 'nguyenvantang7191@gmail.com', '200919737', 'Đà Nẵng', '2012-09-03', 1),
(00102, 'PNS', 'NV', 'Phan Thành', 'Linh', '1219820798015.png', '1972-02-09', 1, 1, '240 Phan Đăng Lưu, Phường Hoà Cường Bắc, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', '240 Phan Đăng Lưu, Phường Hoà Cường Bắc, Quận Hải Châu, Thành phố Đà Nẵng', '0985572067', 'daothithanh841@gmail.com', '201503257', 'Đà Nẵng', '2011-02-23', 2),
(00103, 'PDT', 'NV', 'Vương Văn', 'Thanh', '1219820798019.png', '1957-02-18', 2, 2, 'K149/69 Lê Đình Lý, Phường Hoà Thuận Đông, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K149/69 Lê Đình Lý, Phường Hoà Thuận Đông, Quận Hải Châu, Thành phố Đà Nẵng', '0949953592', 'tonmyphuong8901@gmail.com', '201240487', 'Nghệ An', '2011-04-23', 1),
(00104, 'PDT', 'NV', 'Lê Vô', 'Trân', '1219820798007.png', '1940-02-22', 2, 1, 'K394/7 Nguyễn Phước Nguyên, Phường An Khê, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K394/7 Nguyễn Phước Nguyên, Phường An Khê, Quận Thanh Khê, Thành phố Đà Nẵng', '0946528666', 'duongthithao2051@gmail.com', '201409646', 'Đà Nẵng', '2012-10-03', 1),
(00105, 'PNS', 'NV', 'Hoàng Vô', 'Chí', '1219820798015.png', '1996-10-12', 1, 4, 'Lô 11 khu phức hợp dịch vụ thương mại, chung cư và đất ở, Phường Hoà Khánh Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô 11 khu phức hợp dịch vụ thương mại, chung cư và đất ở, Phường Hoà Khánh Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', '0962925258', 'phanthanhthanh2951@gmail.com', '201386740', 'Hà Giang', '2009-07-04', 1),
(00106, 'PDA', 'NV', 'Đỗ Hạ', 'Trí', '1219820798003.png', '1971-06-16', 1, 4, '37 Cẩm Bắc 4, Phường Hoà Thọ Đông, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', '37 Cẩm Bắc 4, Phường Hoà Thọ Đông, Quận Cẩm Lệ, Thành phố Đà Nẵng', '01658006028', 'vuongthanhthanh2751@gmail.com', '200866912', 'Tiền Giang', '2009-05-28', 1),
(00107, 'PNS', 'NV', 'Phan Thành', 'Phúc', '1219820798001.png', '1949-09-15', 2, 4, 'Lô 6 Khu B2-2 KDC phía nam sông quá giáng, Xã Hoà Phước, Huyện Hoà Vang, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô 6 Khu B2-2 KDC phía nam sông quá giáng, Xã Hoà Phước, Huyện Hoà Vang, Thành phố Đà Nẵng', '01266062579', 'dophichau7471@gmail.com', '201088957', 'Quảng Ninh', '2010-07-09', 1),
(00108, 'PDA', 'NV', 'Triệu Thành', 'Trân', '1219820798002.png', '1993-07-19', 2, 2, '20 Nguyễn Tạo, Phường Hoà Hải, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', '20 Nguyễn Tạo, Phường Hoà Hải, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '0944170598', 'vophitue5531@gmail.com', '201826529', 'Đà Nẵng', '2009-06-27', 2),
(00109, 'PDA', 'NV', 'Nguyễn Thành', 'Thanh', '1219820798017.png', '1982-01-11', 2, 1, 'K3/20 Hà Văn Trí, Phường Khuê Trung, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K3/20 Hà Văn Trí, Phường Khuê Trung, Quận Cẩm Lệ, Thành phố Đà Nẵng', '01236861827', 'doanvandat1361@gmail.com', '201805121', 'Đà Nẵng', '2008-12-01', 2),
(00110, 'PIT', 'NV', 'Hoàng Phục', 'Châu', '1219820798022.png', '1944-11-15', 1, 3, '79 Hồ Tùng Mậu, Phường Hoà Minh, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Kinh', 'VN', '79 Hồ Tùng Mậu, Phường Hoà Minh, Quận Liên Chiểu, Thành phố Đà Nẵng', '01266129070', 'phanvanthanh8951@gmail.com', '201250295', 'Quảng Bình', '2011-11-26', 1),
(00111, 'PDT', 'NV', 'Đỗ Phương', 'Thanh', '1219820798008.png', '1928-10-22', 2, 4, 'Lô 61-62 B2.15 An Thượng 26, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô 61-62 B2.15 An Thượng 26, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '0902226268', 'phanthanhlinh951@gmail.com', '201080046', 'Bến Tre', '2008-05-28', 1),
(00112, 'PKT', 'NV', 'Phùng Phục', 'Trí', '1219820798022.png', '1995-06-04', 2, 2, '23 Nại Nghĩa 3, Phường Nại Hiên Đông, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', '23 Nại Nghĩa 3, Phường Nại Hiên Đông, Quận Sơn Trà, Thành phố Đà Nẵng', '0982570551', 'vuongvanthanh9171@gmail.com', '201653877', 'Đà Nẵng', '2011-03-05', 1),
(00113, 'PDT', 'NV', 'Đồng Hạ', 'Tiền', '1219820798012.png', '1925-06-11', 2, 4, '689 Nguyễn Tất Thành, Phường Xuân Hà, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '689 Nguyễn Tất Thành, Phường Xuân Hà, Quận Thanh Khê, Thành phố Đà Nẵng', '0986305162', 'levotran9161@gmail.com', '201045432', 'Sóc Trăng', '2009-04-10', 2),
(00114, 'PKT', 'NV', 'Đăng Hưng', 'Ngân', '1219820798014.png', '1996-08-27', 1, 2, 'Lô 11 khu phức hợp dịch vụ thương mại, chung cư và đất ở, Phường Hoà Khánh Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô 11 khu phức hợp dịch vụ thương mại, chung cư và đất ở, Phường Hoà Khánh Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', '01213150798', 'hoangvochi1351@gmail.com', '201073591', 'Cà Mau', '2009-02-06', 1),
(00115, 'PDA', 'NV', 'Trương Thị', 'Tài', '1219820798015.png', '1982-11-10', 2, 4, 'Số 1, đường An Cư 1, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Số 1, đường An Cư 1, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', '0965028269', 'dohatri2181@gmail.com', '200919892', 'Tỉnh Bắc Kạn', '2009-03-27', 2),
(00116, 'PDA', 'NV', 'Đoàn Thị', 'Đạt', '1219820798015.png', '1968-04-19', 1, 2, 'K3/20 Hà Văn Trí, Phường Khuê Trung, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K3/20 Hà Văn Trí, Phường Khuê Trung, Quận Cẩm Lệ, Thành phố Đà Nẵng', '01222285400', 'phanthanhphuc9691@gmail.com', '201633157', 'Đà Nẵng', '2008-07-21', 2),
(00117, 'PNS', 'NV', 'Đồng Văn', 'Tiền', '1219820798001.png', '1968-06-01', 2, 4, '597 Trường Chinh, Phường Hoà Phát, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', '597 Trường Chinh, Phường Hoà Phát, Quận Cẩm Lệ, Thành phố Đà Nẵng', '01677756081', 'trieuthanhtran3391@gmail.com', '201705630', 'Đà Nẵng', '2009-11-21', 2),
(00118, 'PNS', 'NV', 'Hoàng Phục', 'Ngân', '1219820798006.png', '1984-08-24', 2, 4, '99A Hà Huy Tập, Phường Chính Gián, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '99A Hà Huy Tập, Phường Chính Gián, Quận Thanh Khê, Thành phố Đà Nẵng', '01223386688', 'nguyenthanhthanh451@gmail.com', '201248273', 'Thừa Thiên Huế', '2012-02-28', 2),
(00119, 'PGD', 'PGD', 'Hoàng Hữu', 'Phước', '1219820798014.png', '1986-11-26', 2, 3, '13 An Thượng 31, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', '13 An Thượng 31, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '01662710266', 'hoangphucchau1301@gmail.com', '200939511', 'Thừa Thiên Huế', '2009-12-02', 1),
(00120, 'PDT', 'NV', 'Lý Thị', 'Long', '1219820798006.png', '1955-02-01', 1, 2, '30A đường Nguyễn Tri Phương, Phường Chính Gián, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '30A đường Nguyễn Tri Phương, Phường Chính Gián, Quận Thanh Khê, Thành phố Đà Nẵng', '0914948269', 'dophuongthanh5361@gmail.com', '201416589', 'Đà Nẵng', '2012-02-28', 2),
(00121, 'PIT', 'NV', 'Lý Phi', 'Phục', '1219820798021.png', '1969-07-13', 2, 3, '108 Trần Huy Liệu, Phường Khuê Trung, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', '108 Trần Huy Liệu, Phường Khuê Trung, Quận Cẩm Lệ, Thành phố Đà Nẵng', '0973150498', 'phungphuctri2901@gmail.com', '201034528', 'Đà Nẵng', '2011-06-27', 2),
(00122, 'PIT', 'NV', 'Nguyễn Phương', 'Thành', '1219820798014.png', '1971-01-25', 2, 1, 'Lô A68, Đường 30 Tháng 4, Phường Hoà Cường Bắc, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô A68, Đường 30 Tháng 4, Phường Hoà Cường Bắc, Quận Hải Châu, Thành phố Đà Nẵng', '01638300419', 'donghatien6421@gmail.com', '201903161', 'Bình Dương', '2010-07-16', 1),
(00123, 'PDT', 'NV', 'Võ Phục', 'Mạnh', '1219820798002.png', '1982-12-16', 1, 2, '09 Ngô Văn Sở, Phường Hoà Khánh Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Kinh', 'VN', '09 Ngô Văn Sở, Phường Hoà Khánh Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', '0942251998', 'danghungngan4361@gmail.com', '200881147', 'Đà Nẵng', '2011-11-27', 1),
(00124, 'PNS', 'PP', 'Long', 'Lý Bình', '1219820798021.png', '1935-05-01', 2, 4, '65 Ngô Thị Liễu, Phường Hoà Cường Bắc, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', '65 Ngô Thị Liễu, Phường Hoà Cường Bắc, Quận Hải Châu, Thành phố Đà Nẵng', '0904893181', 'truongthitai7821@gmail.com', '201681129', 'Đà Nẵng', '2010-04-04', 1),
(00125, 'PKT', 'NV', 'Trương Thành', 'Mạnh', '1219820798008.png', '1962-12-19', 1, 1, 'K424/H19/08 Ông Ích Khiêm, Phường Vĩnh Trung, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K424/H19/08 Ông Ích Khiêm, Phường Vĩnh Trung, Quận Thanh Khê, Thành phố Đà Nẵng', '01234555424', 'doanthidat8531@gmail.com', '201476209', 'Đà Nẵng', '2008-09-28', 1),
(00126, 'PNS', 'NV', 'Đồng Phi', 'Tuệ', '1219820798007.png', '1983-08-03', 2, 1, '388 Trần Hưng Đạo, Phường An Hải Tây, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', '388 Trần Hưng Đạo, Phường An Hải Tây, Quận Sơn Trà, Thành phố Đà Nẵng', '0902319019', 'dongvantien1321@gmail.com', '200850659', 'Đà Nẵng', '2011-01-14', 2),
(00127, 'PKT', 'NV', 'Tôn Phương', 'Thanh', '1219820798012.png', '1966-02-20', 2, 3, 'K5/500 Tôn Đản, Phường Hoà Phát, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K5/500 Tôn Đản, Phường Hoà Phát, Quận Cẩm Lệ, Thành phố Đà Nẵng', '0916183036', 'hoangphucngan4741@gmail.com', '201145118', 'Kon Tum', '2012-04-05', 2),
(00128, 'PIT', 'NV', 'Hoàng Thị', 'Phước', '1219820798009.png', '1944-04-27', 2, 2, '260 Lê Văn Hiến, Phường Khuê Mỹ, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', '260 Lê Văn Hiến, Phường Khuê Mỹ, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '0982171823', 'hoanghuuphuoc7361@gmail.com', '201694279', 'Bắc Giang', '2012-08-19', 1),
(00129, 'PKT', 'NV', 'Võ Văn', 'Trân', '1219820798018.png', '1942-04-12', 2, 1, '57/K1/4 Đường Hòa An 19, Phường Hoà An, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', '57/K1/4 Đường Hòa An 19, Phường Hoà An, Quận Cẩm Lệ, Thành phố Đà Nẵng', '0913347176', 'lythilong2911@gmail.com', '201548990', 'Đà Nẵng', '2009-08-18', 1),
(00130, 'PIT', 'NV', 'Lý Hữu', 'Trí', '1219820798005.png', '1988-09-18', 2, 3, '103 Vũ Quỳnh, Phường Thanh Khê Tây, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '103 Vũ Quỳnh, Phường Thanh Khê Tây, Quận Thanh Khê, Thành phố Đà Nẵng', '0995919963', 'lyphiphuc2331@gmail.com', '201225972', 'Đà Nẵng', '2009-09-22', 1),
(00131, 'PIT', 'NV', 'Phan Hưng', 'Nghĩa', '1219820798002.png', '1959-08-23', 1, 3, '35 Trần Thủ Độ , Phường Khuê Trung, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', '35 Trần Thủ Độ , Phường Khuê Trung, Quận Cẩm Lệ, Thành phố Đà Nẵng', '01273008666', 'nguyenphuongthanh9611@gmail.com', '201195693', 'Hồ Chí Minh', '2012-02-19', 2),
(00132, 'PIT', 'NV', 'Trần Văn', 'Lâm', '1219820798006.png', '1943-06-24', 1, 4, '43 Trần Quý Cáp, Phường Thạch Thang, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', '43 Trần Quý Cáp, Phường Thạch Thang, Quận Hải Châu, Thành phố Đà Nẵng', '0932319898', 'vophucmanh3581@gmail.com', '201001812', 'Phú Yên', '2010-11-18', 1),
(00133, 'PDA', 'NV', 'Phùng Hữu', 'Quang', '1219820798009.png', '1974-08-28', 2, 1, '15 An Thượng 27, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', '15 An Thượng 27, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '0912184410', 'lybinhlong2441@gmail.com', '201815584', 'Đà Nẵng', '2011-11-11', 1),
(00134, 'PIT', 'NV', 'Đinh Vô', 'Châu', '1219820798015.png', '1978-06-13', 2, 4, '240 Phan Đăng Lưu, Phường Hoà Cường Bắc, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', '240 Phan Đăng Lưu, Phường Hoà Cường Bắc, Quận Hải Châu, Thành phố Đà Nẵng', '0913316667', 'truongthanhmanh7201@gmail.com', '201313002', 'Đà Nẵng', '2011-08-13', 1),
(00135, 'PDA', 'NV', 'Đào Tuấn', 'Tuyền', '1219820798009.png', '1968-01-29', 2, 2, '572/92 Ông Ích Khiêm, Phường Hải Châu II, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', '572/92 Ông Ích Khiêm, Phường Hải Châu II, Quận Hải Châu, Thành phố Đà Nẵng', '0983554498', 'dongphitue1541@gmail.com', '201714038', 'Kiên Giang', '2010-04-02', 2),
(00136, 'PDA', 'NV', 'Lâm Thị', 'Châu', '1219820798006.png', '1925-03-27', 1, 3, '215/52 Hà Huy Tập, Phường Hoà Khê, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '215/52 Hà Huy Tập, Phường Hoà Khê, Quận Thanh Khê, Thành phố Đà Nẵng', '01669445319', 'tonphuongthanh6161@gmail.com', '201638561', 'Bà Rịa - Vũng Tàu', '2008-04-19', 2),
(00137, 'PNS', 'NV', 'Lý Thành', 'Linh', '1219820798001.png', '1940-10-04', 2, 1, '103 Vũ Quỳnh, Phường Thanh Khê Tây, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '103 Vũ Quỳnh, Phường Thanh Khê Tây, Quận Thanh Khê, Thành phố Đà Nẵng', '01693039959', 'hoangthiphuoc3111@gmail.com', '200821530', 'Sóc Trăng', '2012-11-02', 2),
(00138, 'PDA', 'NV', 'Tôn Hưng', 'Phúc', '1219820798020.png', '1926-06-03', 2, 3, '76 Nguyễn Sơn, Phường Hoà Cường Nam, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', '76 Nguyễn Sơn, Phường Hoà Cường Nam, Quận Hải Châu, Thành phố Đà Nẵng', '01234005598', 'vovantran8741@gmail.com', '201849815', 'Vĩnh Long', '2008-01-01', 1),
(00139, 'PDT', 'NV', 'Lai Thị', 'Chí', '1219820798007.png', '1978-09-16', 1, 2, '317/60 Nguyễn Phước Nguyên, Phường An Khê, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '317/60 Nguyễn Phước Nguyên, Phường An Khê, Quận Thanh Khê, Thành phố Đà Nẵng', '01214121722', 'lyhuutri3441@gmail.com', '200991234', 'Nam Định', '2009-12-14', 1),
(00140, 'PDT', 'NV', 'Tôn Hưng', 'Phương', '1219820798015.png', '1940-10-25', 2, 4, '85 Khương Hữu Dụng, Phường Hoà Xuân, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', '85 Khương Hữu Dụng, Phường Hoà Xuân, Quận Cẩm Lệ, Thành phố Đà Nẵng', '0979771674', 'phanhungnghia5231@gmail.com', '201020121', 'Quảng Ninh', '2008-10-19', 1),
(00141, 'PKT', 'NV', 'Vương Phương', 'Quang', '1219820798006.png', '1974-04-03', 2, 4, 'Lô 6 Khu B2-2 KDC phía nam sông quá giáng, Xã Hoà Phước, Huyện Hoà Vang, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô 6 Khu B2-2 KDC phía nam sông quá giáng, Xã Hoà Phước, Huyện Hoà Vang, Thành phố Đà Nẵng', '0904520909', 'tranvanlam9161@gmail.com', '201221364', 'Ninh Bình', '2009-07-10', 2),
(00142, 'PIT', 'NV', 'Hoàng Văn', 'Tuệ', '1219820798021.png', '1938-10-04', 2, 3, 'K408/17/21 Tôn Đản, Phường Hoà An, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K408/17/21 Tôn Đản, Phường Hoà An, Quận Cẩm Lệ, Thành phố Đà Nẵng', '0977231998', 'phunghuuquang9221@gmail.com', '201981648', 'Long An', '2011-01-27', 1),
(00143, 'PKT', 'NV', 'Phạm Phi', 'Linh', '1219820798003.png', '1934-12-19', 2, 1, 'K36/H8/31 Nguyễn Huy Tưởng, Phường Hoà Minh, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K36/H8/31 Nguyễn Huy Tưởng, Phường Hoà Minh, Quận Liên Chiểu, Thành phố Đà Nẵng', '0979931405', 'dinhvochau4591@gmail.com', '201356701', 'Kiên Giang', '2008-06-15', 1),
(00144, 'PDT', 'NV', 'Lý Thành', 'Phục', '1219820798011.png', '1953-09-25', 2, 4, '260 Lê Văn Hiến, Phường Khuê Mỹ, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', '260 Lê Văn Hiến, Phường Khuê Mỹ, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '01263100594', 'daotuantuyen8221@gmail.com', '201158119', 'Đà Nẵng', '2008-04-23', 1),
(00145, 'PIT', 'NV', 'Lê Phương', 'Phúc', '1219820798008.png', '1932-07-20', 1, 3, 'K36/H8/31 Nguyễn Huy Tưởng, Phường Hoà Minh, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K36/H8/31 Nguyễn Huy Tưởng, Phường Hoà Minh, Quận Liên Chiểu, Thành phố Đà Nẵng', '01636290441', 'lamthichau2971@gmail.com', '200968178', 'Kon Tum', '2008-11-16', 2),
(00146, 'PIT', 'NV', 'Lý Vô', 'Đạt', '1219820798005.png', '1950-09-10', 2, 3, '244 Nguyễn Duy Trinh, Phường Hoà Hải, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', '244 Nguyễn Duy Trinh, Phường Hoà Hải, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '0947305361', 'lythanhlinh6811@gmail.com', '201026844', 'Đà Nẵng', '2009-05-20', 2),
(00147, 'PNS', 'NV', 'Đăng Vô', 'Nghĩa', '1219820798015.png', '1947-01-28', 1, 4, '130/19 Điện Biên Phủ, Phường Chính Gián, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '130/19 Điện Biên Phủ, Phường Chính Gián, Quận Thanh Khê, Thành phố Đà Nẵng', '0942645560', 'tonhungphuc1741@gmail.com', '201189554', 'Đà Nẵng', '2012-05-12', 1),
(00148, 'PIT', 'NV', 'Đinh Thị', 'Tuyền', '1219820798017.png', '1944-03-23', 1, 1, 'Lô 165 Khu TĐC phía nam Hoàng Văn Thái, Phường Hoà Hiệp Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô 165 Khu TĐC phía nam Hoàng Văn Thái, Phường Hoà Hiệp Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', '01662685066', 'laithichi9541@gmail.com', '201583325', 'Vĩnh Phúc', '2012-05-18', 2);
INSERT INTO `ho_so_nhan_vien` (`ma_nhan_vien`, `ma_phong_ban`, `ma_chuc_danh`, `ho_dem`, `ten`, `anh_dai_dien`, `nam_sinh`, `gioi_tinh`, `ma_tinh_trang_hon_nhan`, `que_quan`, `dan_toc`, `ma_quoc_tich`, `noi_tam_tru`, `so_dien_thoai`, `email`, `so_cmnd`, `noi_cap`, `ngay_cap`, `trang_thai`) VALUES
(00149, 'PIT', 'NV', 'Lai Thành', 'Tài', '1219820798007.png', '1990-08-29', 1, 2, 'Số 54 Nguyễn Thiếp, Phường An Hải Tây, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Số 54 Nguyễn Thiếp, Phường An Hải Tây, Quận Sơn Trà, Thành phố Đà Nẵng', '0982236673', 'tonhungphuong7591@gmail.com', '201443743', 'Nam Định', '2009-10-25', 2),
(00150, 'PIT', 'NV', 'Hoàng Thị', 'Sơn', '1219820798021.png', '1973-01-29', 1, 3, 'K31/12 Mẹ Nhu, Phường Thanh Khê Tây, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K31/12 Mẹ Nhu, Phường Thanh Khê Tây, Quận Thanh Khê, Thành phố Đà Nẵng', '0903294798', 'vuongphuongquang6411@gmail.com', '201819512', 'Đà Nẵng', '2011-12-03', 1),
(00151, 'PNS', 'NV', 'Nguyễn Thành', 'Bách', '1219820798002.png', '1939-12-05', 1, 1, '15 An Thượng 27, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', '15 An Thượng 27, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '01687197564', 'hoangvantue7711@gmail.com', '201469809', 'Khánh Hòa', '2009-10-07', 2),
(00152, 'PDA', 'NV', 'Bùi Phục', 'Phúc', '1219820798017.png', '1929-12-17', 2, 4, '23 Nại Nghĩa 3, Phường Nại Hiên Đông, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', '23 Nại Nghĩa 3, Phường Nại Hiên Đông, Quận Sơn Trà, Thành phố Đà Nẵng', '01655399169', 'phamphilinh8651@gmail.com', '201484685', 'Đà Nẵng', '2011-08-19', 2),
(00153, 'PKT', 'NV', 'Tôn Phương', 'Nguyệt', '1219820798002.png', '1944-05-05', 1, 4, 'Lô số 03-A3.5 Khu công viên Bắc Tượng Đài, Phường Hoà Cường Bắc, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô số 03-A3.5 Khu công viên Bắc Tượng Đài, Phường Hoà Cường Bắc, Quận Hải Châu, Thành phố Đà Nẵng', '01645857067', 'lythanhphuc5221@gmail.com', '201588038', 'Đà Nẵng', '2009-07-04', 1),
(00154, 'PNS', 'NV', 'Đinh Phương', 'Tiền', '1219820798007.png', '1962-11-19', 2, 3, 'Lô 03 B2- 62, Khu đô thị Nam Hòa Xuân, Phường Hoà Quý, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô 03 B2- 62, Khu đô thị Nam Hòa Xuân, Phường Hoà Quý, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '01685628826', 'lephuongphuc9041@gmail.com', '201688464', 'Đà Nẵng', '2011-11-17', 1),
(00155, 'PKT', 'NV', 'Mai Văn', 'Tài', '1219820798017.png', '1993-02-12', 1, 2, 'K233/27 Trưng Nữ Vương, Phường Hoà Thuận Đông, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K233/27 Trưng Nữ Vương, Phường Hoà Thuận Đông, Quận Hải Châu, Thành phố Đà Nẵng', '01649713688', 'lyvodat9271@gmail.com', '201936273', 'Đà Nẵng', '2008-12-28', 2),
(00156, 'PIT', 'NV', 'Lý Hưng', 'Long', '1219820798007.png', '1956-06-14', 2, 3, '76 Nguyễn Sơn, Phường Hoà Cường Nam, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', '76 Nguyễn Sơn, Phường Hoà Cường Nam, Quận Hải Châu, Thành phố Đà Nẵng', '0977824888', 'dangvonghia5211@gmail.com', '201644735', 'Đà Nẵng', '2012-03-02', 1),
(00157, 'PDT', 'NV', 'Lâm Hưng', 'Quân', '1219820798006.png', '1960-12-05', 2, 4, '33 Ngô Quyền, Phường Thọ Quang, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', '33 Ngô Quyền, Phường Thọ Quang, Quận Sơn Trà, Thành phố Đà Nẵng', '0909529939', 'dinhthituyen1321@gmail.com', '200843853', 'Đà Nẵng', '2008-03-16', 2),
(00158, 'PKT', 'NV', 'Đỗ Hạ', 'Tuyền', '1219820798020.png', '1936-04-04', 1, 1, 'Lô B2-13-30 Khu đô thị Phước Lý, Phường Hoà Minh, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô B2-13-30 Khu đô thị Phước Lý, Phường Hoà Minh, Quận Liên Chiểu, Thành phố Đà Nẵng', '01225241973', 'laithanhtai5891@gmail.com', '200875888', 'Đà Nẵng', '2009-01-25', 1),
(00159, 'PNS', 'NV', 'Lai Mỹ', 'Châu', '1219820798013.png', '1961-03-10', 2, 2, '281 Đoàn Khuê, Phường Khuê Mỹ, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', '281 Đoàn Khuê, Phường Khuê Mỹ, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '0902134602', 'hoangthison831@gmail.com', '201018594', 'Quảng Trị', '2009-03-25', 1),
(00160, 'PDA', 'NV', 'Trương Hạ', 'Thanh', '1219820798010.png', '1966-03-17', 1, 3, 'K19/8 Hoàng Hoa Thám, Phường Tân Chính, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K19/8 Hoàng Hoa Thám, Phường Tân Chính, Quận Thanh Khê, Thành phố Đà Nẵng', '0914751741', 'nguyenthanhbach441@gmail.com', '201124743', 'Hà Nội', '2011-01-22', 2),
(00161, 'PIT', 'NV', 'Tôn Tuấn', 'Lâm', '1219820798016.png', '1980-08-27', 1, 2, 'K424/H19/08 Ông Ích Khiêm, Phường Vĩnh Trung, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K424/H19/08 Ông Ích Khiêm, Phường Vĩnh Trung, Quận Thanh Khê, Thành phố Đà Nẵng', '0934366138', 'buiphucphuc9961@gmail.com', '201416171', 'Đà Nẵng', '2009-10-22', 1),
(00162, 'PNS', 'NV', 'Đỗ Phục', 'Tiền', '1219820798021.png', '1927-03-02', 2, 2, '288 Bế Văn Đàn, Phường Hoà Khê, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '288 Bế Văn Đàn, Phường Hoà Khê, Quận Thanh Khê, Thành phố Đà Nẵng', '01654780392', 'tonphuongnguyet4571@gmail.com', '201833156', 'Đà Nẵng', '2009-01-10', 2),
(00163, 'PDA', 'NV', 'Hoàng Hạ', 'Tuyền', '1219820798005.png', '1960-09-09', 2, 1, '35 Cao Thắng, Phường Thanh Bình, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', '35 Cao Thắng, Phường Thanh Bình, Quận Hải Châu, Thành phố Đà Nẵng', '01699098584', 'dinhphuongtien2691@gmail.com', '201209250', 'Quảng Ngãi', '2012-12-20', 1),
(00164, 'PNS', 'NV', 'Nguyễn Vô', 'Nga', '1219820798013.png', '1928-09-16', 2, 1, '472 Ngô Quyền, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', '472 Ngô Quyền, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', '01639248369', 'maivantai2371@gmail.com', '201729068', 'Bạc Liêu', '2008-07-19', 2),
(00165, 'PDT', 'NV', 'Phạm Bình', 'Thái', '1219820798014.png', '1941-03-15', 2, 3, '86/39 Phạm Nhữ Tăng, Phường Hoà Khê, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '86/39 Phạm Nhữ Tăng, Phường Hoà Khê, Quận Thanh Khê, Thành phố Đà Nẵng', '01626966001', 'lyhunglong6421@gmail.com', '201356401', 'Thừa Thiên Huế', '2011-06-05', 1),
(00166, 'PDA', 'NV', 'Triệu Hưng', 'Tiền', '1219820798002.png', '1945-04-04', 2, 2, '62 Nguyễn Phước Nguyên, Phường An Khê, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '62 Nguyễn Phước Nguyên, Phường An Khê, Quận Thanh Khê, Thành phố Đà Nẵng', '0989931173', 'lamhungquan9571@gmail.com', '200955069', 'Đà Nẵng', '2008-12-17', 2),
(00167, 'PKT', 'NV', 'Lý Bình', 'Mạnh', '1219820798021.png', '1930-05-23', 1, 4, '47 Hồ Nghinh, Phường Phước Mỹ, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', '47 Hồ Nghinh, Phường Phước Mỹ, Quận Sơn Trà, Thành phố Đà Nẵng', '01694683046', 'dohatuyen4861@gmail.com', '201550162', 'Lạng Sơn', '2010-04-25', 1),
(00168, 'PNS', 'NV', 'Triệu Phi', 'Nga', '1219820798004.png', '1977-06-13', 2, 2, 'K523/45 Cách Mạng Tháng Tám, Phường Hoà Thọ Đông, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K523/45 Cách Mạng Tháng Tám, Phường Hoà Thọ Đông, Quận Cẩm Lệ, Thành phố Đà Nẵng', '0983050498', 'laimychau221@gmail.com', '201772112', 'Bà Rịa - Vũng Tàu', '2012-10-17', 1),
(00169, 'PDA', 'NV', 'Lê Mỹ', 'Tăng', '1219820798009.png', '1988-03-11', 2, 4, '06 Vũ Ngọc Phan, Phường Hoà Khánh Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Kinh', 'VN', '06 Vũ Ngọc Phan, Phường Hoà Khánh Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', '01658341354', 'truonghathanh6221@gmail.com', '201776676', 'Đà Nẵng', '2010-01-07', 2),
(00170, 'PKT', 'NV', 'Trần Hưng', 'Mạnh', '1219820798002.png', '1925-04-25', 2, 2, '91 Đinh Châu, Phường Hoà Thọ Đông, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', '91 Đinh Châu, Phường Hoà Thọ Đông, Quận Cẩm Lệ, Thành phố Đà Nẵng', '0915070429', 'tontuanlam6071@gmail.com', '200935756', 'Đà Nẵng', '2012-04-24', 1),
(00171, 'PDA', 'NV', 'Lâm Tuấn', 'Tiền', '1219820798022.png', '1952-08-20', 1, 1, '243/12 Ngõ B Tôn Đức Thắng, Phường Hoà Minh, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Kinh', 'VN', '243/12 Ngõ B Tôn Đức Thắng, Phường Hoà Minh, Quận Liên Chiểu, Thành phố Đà Nẵng', '01642471298', 'dophuctien9741@gmail.com', '201038745', 'Hà Nội', '2011-02-12', 1),
(00172, 'PDT', 'NV', 'Triệu Phương', 'Tài', '1219820798018.png', '1936-04-04', 2, 2, 'Số 54 Nguyễn Thiếp, Phường An Hải Tây, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Số 54 Nguyễn Thiếp, Phường An Hải Tây, Quận Sơn Trà, Thành phố Đà Nẵng', '0918296498', 'hoanghatuyen7511@gmail.com', '201306740', 'Đà Nẵng', '2009-08-10', 2),
(00173, 'PIT', 'NV', 'Bùi Hưng', 'Trân', '1219820798017.png', '1933-11-17', 1, 1, '144 Bùi Vịnh, Phường Hoà Thọ Đông, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', '144 Bùi Vịnh, Phường Hoà Thọ Đông, Quận Cẩm Lệ, Thành phố Đà Nẵng', '0936811100', 'nguyenvonga6921@gmail.com', '201248747', 'Hải Dương', '2008-10-14', 2),
(00174, 'PDA', 'NV', 'Đinh Thành', 'Châu', '1219820798012.png', '1939-06-18', 2, 4, 'Lô 18, Khu C1, Khu nhà ở Quân đội K38, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô 18, Khu C1, Khu nhà ở Quân đội K38, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '0962720529', 'phambinhthai461@gmail.com', '200935877', 'Cà Mau', '2012-01-12', 2),
(00175, 'PNS', 'NV', 'Trần Hạ', 'Nguyệt', '1219820798002.png', '1937-04-16', 1, 4, 'Số 25 Thế Lữ, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Số 25 Thế Lữ, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', '0988391086', 'trieuhungtien5151@gmail.com', '201255655', 'Đà Nẵng', '2011-02-19', 1),
(00176, 'PNS', 'NV', 'Triệu Vô', 'Lâm', '1219820798020.png', '1934-10-11', 2, 2, '115 Nguyễn Văn Linh, Phường Nam Dương, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', '115 Nguyễn Văn Linh, Phường Nam Dương, Quận Hải Châu, Thành phố Đà Nẵng', '01646533210', 'lybinhmanh2551@gmail.com', '201387311', 'Đà Nẵng', '2009-05-17', 1),
(00177, 'PDT', 'NV', 'Bùi Hữu', 'Tuyền', '1219820798022.png', '1995-11-17', 1, 3, '01 Võ Như Hưng, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', '01 Võ Như Hưng, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '0988971151', 'trieuphinga3391@gmail.com', '201786204', 'Điện Biên', '2012-02-18', 1),
(00178, 'PNS', 'NV', 'Lê Bình', 'Linh', '1219820798008.png', '1983-09-06', 1, 3, '23 Trịnh Lỗi, Phường Khuê Mỹ, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', '23 Trịnh Lỗi, Phường Khuê Mỹ, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '0949537187', 'lemytang3431@gmail.com', '201174985', 'Hậu Giang', '2009-03-02', 1),
(00179, 'PNS', 'NV', 'Đồng Thành', 'Thảo', '1219820798002.png', '1926-12-09', 1, 4, '138/74/04/14/61 Hoàng Văn Thái, Phường Hoà Khánh Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Kinh', 'VN', '138/74/04/14/61 Hoàng Văn Thái, Phường Hoà Khánh Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', '01235627798', 'tranhungmanh5511@gmail.com', '201866197', 'Bình Định', '2012-08-01', 1),
(00180, 'PKT', 'NV', 'Dương Hưng', 'Quân', '1219820798021.png', '1990-06-28', 1, 4, '56 Phan Văn Đạt, Phường Hoà Khánh Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Kinh', 'VN', '56 Phan Văn Đạt, Phường Hoà Khánh Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', '0913314267', 'lamtuantien4881@gmail.com', '201689627', 'Đắk Lắk', '2012-05-16', 1),
(00181, 'PDA', 'NV', 'Lai Hữu', 'Nga', '1219820798013.png', '1987-08-26', 2, 3, 'Lô 03 B2- 62, Khu đô thị Nam Hòa Xuân, Phường Hoà Quý, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô 03 B2- 62, Khu đô thị Nam Hòa Xuân, Phường Hoà Quý, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '01632767469', 'trieuphuongtai5491@gmail.com', '201133299', 'Bắc Giang', '2009-07-10', 1),
(00182, 'PDT', 'NV', 'Nguyễn Hữu', 'Thảo', '1219820798012.png', '1974-08-11', 1, 4, 'Lô 249, Đường Hoàng Minh Thảo, Phường Hoà Khánh Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô 249, Đường Hoàng Minh Thảo, Phường Hoà Khánh Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', '01666614597', 'buihungtran6321@gmail.com', '201786724', 'Thừa Thiên Huế', '2011-11-17', 2),
(00183, 'PNS', 'NV', 'Hoàng Phi', 'Chí', '1219820798003.png', '1998-05-14', 2, 2, 'K411/25/5 Nguyễn Phước Nguyên, Phường An Khê, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K411/25/5 Nguyễn Phước Nguyên, Phường An Khê, Quận Thanh Khê, Thành phố Đà Nẵng', '0946733629', 'dinhthanhchau281@gmail.com', '200805379', 'Bình Dương', '2009-10-08', 2),
(00184, 'PDT', 'NV', 'Võ Thành', 'Nga', '1219820798018.png', '1977-10-11', 2, 1, '30A đường Nguyễn Tri Phương, Phường Chính Gián, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '30A đường Nguyễn Tri Phương, Phường Chính Gián, Quận Thanh Khê, Thành phố Đà Nẵng', '01205670657', 'tranhanguyet6911@gmail.com', '200973634', 'Đà Nẵng', '2009-08-11', 1),
(00185, 'PDA', 'NV', 'Đào Hưng', 'Thảo', '1219820798006.png', '1958-02-06', 1, 1, '689 Nguyễn Tất Thành, Phường Xuân Hà, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '689 Nguyễn Tất Thành, Phường Xuân Hà, Quận Thanh Khê, Thành phố Đà Nẵng', '01663418967', 'trieuvolam3811@gmail.com', '201162360', 'Đà Nẵng', '2011-06-18', 1),
(00186, 'PNS', 'NV', 'Tôn Mỹ', 'Thành', '1219820798012.png', '1967-02-08', 2, 2, '185 Trần Xuân Lê, Phường Hoà Khê, Quận Thanh Khê, Thành phố Đà Nẵng', 'Kinh', 'VN', '185 Trần Xuân Lê, Phường Hoà Khê, Quận Thanh Khê, Thành phố Đà Nẵng', '0987482498', 'buihuutuyen3281@gmail.com', '201461944', 'Đà Nẵng', '2008-05-23', 2),
(00187, 'PDT', 'NV', 'Đỗ Thành', 'Linh', '1219820798005.png', '1944-10-10', 2, 2, '39 Xuân Tâm, Phường Thuận Phước, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', '39 Xuân Tâm, Phường Thuận Phước, Quận Hải Châu, Thành phố Đà Nẵng', '0979097898', 'lebinhlinh7091@gmail.com', '201672629', 'Lào Cai', '2011-10-02', 1),
(00188, 'PDT', 'NV', 'Trương Thị', 'Đạt', '1219820798016.png', '1952-12-20', 2, 4, '149 Hoàng Văn Thái, Phường Hoà Khánh Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Kinh', 'VN', '149 Hoàng Văn Thái, Phường Hoà Khánh Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', '01649826729', 'dongthanhthao791@gmail.com', '201000101', 'Tiền Giang', '2008-10-13', 1),
(00189, 'PNS', 'NV', 'Lai Văn', 'Châu', '1219820798020.png', '1934-04-17', 2, 2, '03 Trần Thanh Mại, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', '03 Trần Thanh Mại, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', '0964690169', 'duonghungquan4971@gmail.com', '201542234', 'Kiên Giang', '2009-10-09', 2),
(00190, 'PDA', 'NV', 'Phùng Phục', 'Nga', '1219820798011.png', '1989-09-17', 2, 2, 'Lô 526 Đô Đốc Lân, Phường Hoà Xuân, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', 'Lô 526 Đô Đốc Lân, Phường Hoà Xuân, Quận Cẩm Lệ, Thành phố Đà Nẵng', '0977565788', 'laihuunga7511@gmail.com', '201646355', 'Lạng Sơn', '2009-07-08', 1),
(00191, 'PNS', 'NV', 'Đào Vô', 'Trân', '1219820798021.png', '1930-06-14', 2, 3, '46 Nguyễn Đình Trọng, Phường Hoà Khánh Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Kinh', 'VN', '46 Nguyễn Đình Trọng, Phường Hoà Khánh Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', '01699904035', 'nguyenhuuthao9241@gmail.com', '201735247', 'Đà Nẵng', '2011-09-27', 2),
(00192, 'PDA', 'NV', 'Đỗ Vô', 'Bách', '1219820798008.png', '1937-07-21', 1, 2, 'K166/17 Nguyễn Lương Bằng, Phường Hoà Khánh Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K166/17 Nguyễn Lương Bằng, Phường Hoà Khánh Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', '0974693703', 'hoangphichi6021@gmail.com', '201038102', 'Ninh Bình', '2009-11-09', 1),
(00193, 'PDA', 'NV', 'Trương Thị', 'Tiền', '1219820798018.png', '1969-06-16', 2, 1, '21/3 Yên Bái, Phường Hải Châu I, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', '21/3 Yên Bái, Phường Hải Châu I, Quận Hải Châu, Thành phố Đà Nẵng', '0964118879', 'vothanhnga3721@gmail.com', '201877426', 'Bình Định', '2009-07-09', 1),
(00194, 'PIT', 'NV', 'Trương Phi', 'Mạnh', '1219820798016.png', '1984-02-18', 2, 2, '152/6 Lý Tự Trọng, Phường Thuận Phước, Quận Hải Châu, Thành phố Đà Nẵng', 'Kinh', 'VN', '152/6 Lý Tự Trọng, Phường Thuận Phước, Quận Hải Châu, Thành phố Đà Nẵng', '0979697846', 'daohungthao9641@gmail.com', '200844276', 'Điện Biên', '2012-01-19', 2),
(00195, 'PDT', 'NV', 'Bùi Văn', 'Nga', '1219820798007.png', '1974-11-01', 2, 2, '85 Khương Hữu Dụng, Phường Hoà Xuân, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', '85 Khương Hữu Dụng, Phường Hoà Xuân, Quận Cẩm Lệ, Thành phố Đà Nẵng', '01643148498', 'tonmythanh7041@gmail.com', '201067460', 'Đà Nẵng', '2011-02-26', 2),
(00196, 'PDT', 'NV', 'Hoàng Bình', 'Tăng', '1219820798002.png', '1993-01-20', 1, 1, '303 Khúc Hạo, Phường Nại Hiên Đông, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', '303 Khúc Hạo, Phường Nại Hiên Đông, Quận Sơn Trà, Thành phố Đà Nẵng', '0948123062', 'dothanhlinh7161@gmail.com', '201601257', 'Đà Nẵng', '2008-09-18', 1),
(00197, 'PDT', 'NV', 'Dương Thành', 'Mạnh', '1219820798014.png', '1953-04-08', 1, 2, '281 Đoàn Khuê, Phường Khuê Mỹ, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', '281 Đoàn Khuê, Phường Khuê Mỹ, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '0902271303', 'truongthidat5611@gmail.com', '201803181', 'Khánh Hòa', '2010-08-27', 2),
(00198, 'PKT', 'NV', 'Đăng Thị', 'Châu', '1219820798011.png', '1980-04-06', 2, 4, '01 Võ Như Hưng, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 'Kinh', 'VN', '01 Võ Như Hưng, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '01626590658', 'laivanchau4271@gmail.com', '201690828', 'Bà Rịa - Vũng Tàu', '2008-08-01', 2),
(00199, 'PDA', 'NV', 'Đỗ Bình', 'Linh', '1219820798003.png', '1998-03-22', 1, 4, 'K854/07 Ngô Quyền, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K854/07 Ngô Quyền, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', '01273311545', 'phungphucnga31@gmail.com', '201512701', 'Đà Nẵng', '2011-08-06', 2),
(00200, 'PDA', 'NV', 'Vương Mỹ', 'Phúc', '1219820798020.png', '1960-05-23', 2, 2, 'K523/45 Cách Mạng Tháng Tám, Phường Hoà Thọ Đông, Quận Cẩm Lệ, Thành phố Đà Nẵng', 'Kinh', 'VN', 'K523/45 Cách Mạng Tháng Tám, Phường Hoà Thọ Đông, Quận Cẩm Lệ, Thành phố Đà Nẵng', '01628151156', 'daovotran6941@gmail.com', '200916550', 'Yên Bái', '2010-09-26', 2),
(00201, 'PNS', 'NV', 'Dương Hưng', 'Chí', '1219820798017.png', '1939-01-05', 2, 1, '303 Khúc Hạo, Phường Nại Hiên Đông, Quận Sơn Trà, Thành phố Đà Nẵng', 'Kinh', 'VN', '303 Khúc Hạo, Phường Nại Hiên Đông, Quận Sơn Trà, Thành phố Đà Nẵng', '0982735661', 'dovobach9031@gmail.com', '201476741', 'Quảng Nam', '2008-07-24', 1);

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
('KH001', 'Công ty CP Việt Hằng', '15 - Phạm Như Xương - Đà Nẵng', 'Tư nhân', 905977677, 'CongtyCPVietHang@gmail.com', 0),
('KH002', 'Công ty CP An Nhơn', '34 - Phạm Như Xương - Đà Nẵng', 'Tư nhân', 905977676, 'CongtyCPAnNhon@gmail.com', 0),
('KH003', 'Nhà Hàng Phi Long', '14 - Ngô Văn Sở - Đà Nẵng', 'Tư nhân', 905977675, 'NhaHangPhiLong@gmail.com', 0),
('KH004', 'Công ty TNHH Anphabe', '184 - Phạm Ngọc Thạch - Đà Nẵng', 'Tư nhân', 905977674, 'CongtyTNHHAnphabe@gmail.com', 0),
('KH005', 'Công ty TNHH An Nhơn', '12 - Nam Cao - Đà Nẵng', 'Tư nhân', 905977673, 'CongtyTNHHAnNhon@gmail.com', 0),
('KH006', 'Nhà Hàng du lịch Khánh Hòa', '184 - Nam Cao - Đà Nẵng', 'Tư nhân', 905977672, 'NhaHangdulichKhanhHoa@gmail.com', 0),
('KH007', 'Doanh nghiệp tư nhân Phi Long', '367 - Phạm Như Xương - Đà Nẵng', 'Tư nhân', 905977671, 'DoanhnghieptunhanPhiLong@gmail.com', 0),
('KH008', 'Khách Sạn Anphabe', '74 - Ngô Văn Sở - Đà Nẵng', 'Tư nhân', 905977670, 'KhachSanAnphabe@gmail.com', 0),
('KH009', 'Công ty TNHH Phi Long', '74 - Nam Cao - Đà Nẵng', 'Tư nhân', 905977669, 'CongtyTNHHPhiLong@gmail.com', 0),
('KH010', 'Công ty CP An Nhơn', '43 - Phạm Ngọc Thạch - Đà Nẵng', 'Tư nhân', 905977668, 'CongtyCPAnNhon@gmail.com', 0),
('KH011', 'Công ty CP Lạc Việt', '14 - Phạm Như Xương - Đà Nẵng', 'Tư nhân', 905977667, 'CTlacviet@gmail.com', 0),
('KH012', 'Doanh nghiệp tư nhân Công Quang', '15 - Phạm Như Xương - Đà Nẵng', 'Tư nhân', 905977666, 'DoanhnghieptunhanCongQuang@gmail.com', 0),
('KH013', 'Khách Sạn Quy Nhơn', '74 - Phạm Ngọc Thạch - Đà Nẵng', 'Tư nhân', 905977665, 'KhachSanQuyNhon@gmail.com', 0),
('KH014', 'Nhà Hàng An Nhơn', '59 - Phạm Như Xương - Đà Nẵng', 'Tư nhân', 905977664, 'NhaHangAnNhon@gmail.com', 0),
('KH015', 'Khách Sạn Anphabe', '12 - Trần Trung - Đà Nẵng', 'Tư nhân', 905977663, 'KhachSanAnphabe@gmail.com', 0),
('KH016', 'Công ty TNHH du lịch Khánh Hòa', '98 - Phạm Như Xương - Đà Nẵng', 'Tư nhân', 905977662, 'CongtyTNHHdulichKhanhHoa@gmail.com', 0),
('KH017', 'Doanh nghiệp tư nhân du lịch Khánh Hòa', '34 - Nam Cao - Đà Nẵng', 'Tư nhân', 905977661, 'DoanhnghieptunhandulichKhanhHoa@gmail.com', 0),
('KH018', 'Công ty CP du lịch Khánh Hòa', '59 - Ngô Thì Nhậm - Đà Nẵng', 'Tư nhân', 905977660, 'CongtyCPdulichKhanhHoa@gmail.com', 0),
('KH019', 'Nhà Hàng Công Quang', '55 - Ngô Văn Sở - Đà Nẵng', 'Tư nhân', 905977659, 'NhaHangCongQuang@gmail.com', 0),
('KH020', 'Doanh nghiệp tư nhân Việt Hằng', '74 - Trần Quốc Tuấn - Đà Nẵng', 'Tư nhân', 905977658, 'DoanhnghieptunhanVietHang@gmail.com', 0);

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
('NV01', 'Kinh Doanh', 0),
('NV02', 'Doanh nghiệp', 0),
('NV03', 'Giáo dục', 0),
('NV04', 'Y tế', 0),
('NV05', 'Giải trí', 0),
('NV06', 'Truyền Thông', 0),
('NV07', 'Gaming', 0),
('NV08', 'Quảng Cáo', 0),
('NV09', 'Chứng Khoán', 0),
('NV10', 'Bảo Hiểm', 0);

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
('PL04', 'AngularJS', 0),
('PL05', 'Ruby', 0),
('PL06', 'C', 0),
('PL07', 'C++', 0),
('PL08', 'PHP', 0),
('PL09', 'Ruby', 0),
('PL10', 'PyThon', 0);

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
('PL01', 1),
('PL01', 2),
('PL01', 3),
('PL04', 4),
('PL01', 5),
('PL01', 6),
('PL03', 7),
('PL03', 8),
('PL02', 9),
('PL03', 10),
('PL04', 11),
('PL02', 12),
('PL01', 13),
('PL02', 14),
('PL03', 15),
('PL02', 16),
('PL02', 17),
('PL03', 18),
('PL03', 19),
('PL03', 20),
('PL03', 21),
('PL04', 22),
('PL04', 23),
('PL04', 24),
('PL01', 25),
('PL01', 26),
('PL01', 27),
('PL02', 28),
('PL04', 29),
('PL03', 30),
('PL02', 31),
('PL03', 32),
('PL04', 33),
('PL02', 34),
('PL01', 35),
('PL01', 36),
('PL01', 37);

-- --------------------------------------------------------

--
-- Table structure for table `nhiem_vu`
--

CREATE TABLE IF NOT EXISTS `nhiem_vu` (
  `ma_vai_tro` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ma_nhan_vien` int(5) unsigned zerofill NOT NULL DEFAULT '00000',
  `ma_du_an` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhiem_vu`
--

INSERT INTO `nhiem_vu` (`ma_vai_tro`, `ma_nhan_vien`, `ma_du_an`) VALUES
('VT01', 00001, 1),
('VT02', 00001, 1),
('VT02', 00001, 2),
('VT02', 00002, 1),
('VT02', 00004, 3),
('VT01', 00006, 13),
('VT01', 00006, 31),
('VT01', 00006, 32),
('VT01', 00006, 33),
('VT01', 00006, 35),
('VT01', 00006, 36),
('VT01', 00006, 37),
('VT02', 00006, 30),
('VT03', 00006, 29),
('VT04', 00006, 27),
('VT05', 00006, 8),
('VT05', 00006, 27),
('VT05', 00006, 28),
('VT02', 00008, 4),
('VT02', 00008, 33),
('VT02', 00008, 36),
('VT02', 00008, 37),
('VT04', 00008, 16),
('VT01', 00010, 4),
('VT01', 00010, 16),
('VT01', 00010, 17),
('VT01', 00010, 29),
('VT03', 00010, 30),
('VT04', 00010, 15),
('VT01', 00023, 3),
('VT01', 00023, 15),
('VT01', 00023, 18),
('VT01', 00023, 30),
('VT02', 00023, 16),
('VT02', 00023, 18),
('VT03', 00023, 19),
('VT03', 00023, 31),
('VT03', 00023, 33),
('VT04', 00023, 17),
('VT04', 00023, 34),
('VT05', 00023, 14),
('VT01', 00051, 19),
('VT01', 00051, 20),
('VT01', 00051, 26),
('VT02', 00051, 24),
('VT02', 00051, 28),
('VT05', 00051, 9),
('VT05', 00051, 33),
('VT01', 00052, 22),
('VT01', 00052, 23),
('VT02', 00052, 34),
('VT04', 00052, 33),
('VT05', 00052, 18),
('VT01', 00066, 21),
('VT02', 00066, 17),
('VT02', 00066, 22),
('VT03', 00066, 16),
('VT03', 00066, 37),
('VT04', 00066, 5),
('VT01', 00068, 7),
('VT01', 00068, 10),
('VT02', 00068, 27),
('VT02', 00068, 32),
('VT03', 00068, 4),
('VT01', 00070, 11),
('VT01', 00070, 12),
('VT01', 00070, 14),
('VT03', 00070, 18),
('VT03', 00070, 24),
('VT04', 00070, 23),
('VT04', 00070, 27),
('VT04', 00070, 29),
('VT05', 00070, 5),
('VT01', 00076, 24),
('VT01', 00076, 34),
('VT02', 00076, 31),
('VT03', 00076, 8),
('VT03', 00076, 17),
('VT03', 00076, 22),
('VT03', 00076, 34),
('VT04', 00076, 36),
('VT04', 00076, 37),
('VT05', 00076, 15),
('VT05', 00076, 35),
('VT02', 00079, 9),
('VT02', 00079, 35),
('VT03', 00079, 32),
('VT04', 00079, 14),
('VT04', 00079, 18),
('VT01', 00082, 6),
('VT01', 00082, 9),
('VT02', 00082, 19),
('VT02', 00082, 29),
('VT03', 00082, 21),
('VT05', 00082, 4),
('VT05', 00082, 16),
('VT05', 00082, 30),
('VT05', 00082, 31),
('VT02', 00085, 25),
('VT03', 00085, 28),
('VT04', 00085, 32),
('VT04', 00085, 37),
('VT05', 00085, 24),
('VT05', 00085, 37),
('VT02', 00090, 7),
('VT02', 00090, 14),
('VT02', 00090, 20),
('VT02', 00090, 21),
('VT03', 00090, 14),
('VT04', 00090, 35),
('VT05', 00090, 32),
('VT01', 00106, 8),
('VT01', 00106, 28),
('VT02', 00106, 15),
('VT03', 00106, 9),
('VT03', 00106, 12),
('VT04', 00106, 4),
('VT04', 00106, 8),
('VT04', 00106, 22),
('VT04', 00106, 24),
('VT05', 00106, 29),
('VT02', 00108, 23),
('VT03', 00108, 7),
('VT03', 00108, 20),
('VT03', 00108, 35),
('VT04', 00108, 21),
('VT04', 00108, 28),
('VT05', 00108, 22),
('VT05', 00108, 23),
('VT05', 00108, 34),
('VT01', 00109, 27),
('VT02', 00109, 5),
('VT04', 00109, 9),
('VT04', 00109, 12),
('VT04', 00109, 20),
('VT02', 00115, 12),
('VT03', 00115, 13),
('VT03', 00115, 15),
('VT03', 00115, 23),
('VT04', 00115, 30),
('VT04', 00115, 31),
('VT05', 00116, 6),
('VT04', 00135, 6),
('VT01', 00160, 5),
('VT03', 00163, 6),
('VT03', 00169, 36),
('VT05', 00171, 11),
('VT05', 00171, 17),
('VT02', 00174, 11),
('VT05', 00174, 25),
('VT02', 00181, 6),
('VT02', 00181, 10),
('VT02', 00185, 13),
('VT03', 00185, 10),
('VT03', 00185, 25),
('VT04', 00185, 26),
('VT01', 00190, 25),
('VT02', 00192, 8),
('VT02', 00192, 26),
('VT04', 00192, 13),
('VT04', 00192, 25),
('VT05', 00192, 12),
('VT05', 00192, 20),
('VT05', 00192, 36),
('VT04', 00193, 7),
('VT04', 00193, 10),
('VT04', 00193, 19),
('VT05', 00193, 10),
('VT05', 00193, 13),
('VT03', 00199, 5),
('VT03', 00199, 11),
('VT03', 00199, 26),
('VT05', 00199, 19),
('VT05', 00199, 21),
('VT04', 00200, 11),
('VT05', 00200, 7),
('VT05', 00200, 26);

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
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `ma_role` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`ma_role`, `name`) VALUES
(1, 'ROLE_PM'),
(2, 'ROLE_NV'),
(3, 'ROLE_TPP');

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
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `ma_tai_khoan` int(11) NOT NULL,
  `username` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_nhan_vien` int(5) unsigned zerofill NOT NULL,
  `enabled` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ma_tai_khoan`, `username`, `password`, `ma_nhan_vien`, `enabled`) VALUES
(1, 'thiphuoc', '$2a$04$GYGsaJj9l6kH2GikK6QVzO0v3sOCxt3vdkiA2/tcoSw8erI85ZYDG', 00006, 1),
(2, 'thitai', '$2a$04$GYGsaJj9l6kH2GikK6QVzO0v3sOCxt3vdkiA2/tcoSw8erI85ZYDG', 00115, 1),
(3, 'sangnguyen', '$2a$04$GYGsaJj9l6kH2GikK6QVzO0v3sOCxt3vdkiA2/tcoSw8erI85ZYDG', 00005, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE IF NOT EXISTS `users_roles` (
  `ma_tai_khoan` int(11) NOT NULL DEFAULT '0',
  `ma_role` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`ma_tai_khoan`, `ma_role`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3);

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
  ADD PRIMARY KEY (`ma_database`,`ma_du_an`),
  ADD KEY `ma_du_an` (`ma_du_an`);

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
  ADD KEY `ma_tinh_trang` (`ma_tinh_trang`),
  ADD KEY `ma_nghiep_vu` (`ma_nghiep_vu`),
  ADD KEY `ma_khach_hang` (`ma_khach_hang`);

--
-- Indexes for table `framework`
--
ALTER TABLE `framework`
  ADD PRIMARY KEY (`ma_framework`);

--
-- Indexes for table `framework_du_an`
--
ALTER TABLE `framework_du_an`
  ADD PRIMARY KEY (`ma_framework`,`ma_du_an`),
  ADD KEY `ma_du_an` (`ma_du_an`);

--
-- Indexes for table `ho_so_nhan_vien`
--
ALTER TABLE `ho_so_nhan_vien`
  ADD PRIMARY KEY (`ma_nhan_vien`),
  ADD KEY `ma_phong_ban` (`ma_phong_ban`),
  ADD KEY `ma_chuc_danh` (`ma_chuc_danh`),
  ADD KEY `ma_quoc_tich` (`ma_quoc_tich`),
  ADD KEY `ma_tinh_trang_hon_nhan` (`ma_tinh_trang_hon_nhan`);

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
  ADD PRIMARY KEY (`ma_vai_tro`,`ma_nhan_vien`,`ma_du_an`),
  ADD KEY `ma_nhan_vien` (`ma_nhan_vien`),
  ADD KEY `ma_du_an` (`ma_du_an`);

--
-- Indexes for table `phong_ban`
--
ALTER TABLE `phong_ban`
  ADD PRIMARY KEY (`ma_phong_ban`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`ma_role`);

--
-- Indexes for table `tinh_trang`
--
ALTER TABLE `tinh_trang`
  ADD PRIMARY KEY (`ma_tinh_trang`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ma_tai_khoan`),
  ADD UNIQUE KEY `ma_nhan_vien` (`ma_nhan_vien`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`ma_tai_khoan`,`ma_role`),
  ADD KEY `_idx` (`ma_tai_khoan`),
  ADD KEY `dfdf_idx` (`ma_role`);

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
  MODIFY `ma_du_an` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `ho_so_nhan_vien`
--
ALTER TABLE `ho_so_nhan_vien`
  MODIFY `ma_nhan_vien` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=202;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `ma_role` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ma_tai_khoan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `database_du_an`
--
ALTER TABLE `database_du_an`
  ADD CONSTRAINT `database_du_an_ibfk_1` FOREIGN KEY (`ma_database`) REFERENCES `co_so_du_lieu` (`ma_database`),
  ADD CONSTRAINT `database_du_an_ibfk_2` FOREIGN KEY (`ma_du_an`) REFERENCES `du_an` (`ma_du_an`);

--
-- Constraints for table `du_an`
--
ALTER TABLE `du_an`
  ADD CONSTRAINT `du_an_ibfk_1` FOREIGN KEY (`ma_tinh_trang`) REFERENCES `tinh_trang` (`ma_tinh_trang`),
  ADD CONSTRAINT `du_an_ibfk_2` FOREIGN KEY (`ma_nghiep_vu`) REFERENCES `nghiep_vu` (`ma_nghiep_vu`),
  ADD CONSTRAINT `du_an_ibfk_3` FOREIGN KEY (`ma_khach_hang`) REFERENCES `khach_hang` (`ma_khach_hang`);

--
-- Constraints for table `framework_du_an`
--
ALTER TABLE `framework_du_an`
  ADD CONSTRAINT `framework_du_an_ibfk_1` FOREIGN KEY (`ma_du_an`) REFERENCES `du_an` (`ma_du_an`),
  ADD CONSTRAINT `framework_du_an_ibfk_2` FOREIGN KEY (`ma_framework`) REFERENCES `framework` (`ma_framework`);

--
-- Constraints for table `ngon_ngu_du_an`
--
ALTER TABLE `ngon_ngu_du_an`
  ADD CONSTRAINT `ngon_ngu_du_an_ibfk_2` FOREIGN KEY (`ma_ngon_ngu`) REFERENCES `ngon_ngu` (`ma_ngon_ngu`),
  ADD CONSTRAINT `ngon_ngu_du_an_ibfk_3` FOREIGN KEY (`ma_du_an`) REFERENCES `du_an` (`ma_du_an`);

--
-- Constraints for table `nhiem_vu`
--
ALTER TABLE `nhiem_vu`
  ADD CONSTRAINT `nhiem_vu_ibfk_1` FOREIGN KEY (`ma_vai_tro`) REFERENCES `vai_tro_thanh_vien` (`ma_vai_tro`),
  ADD CONSTRAINT `nhiem_vu_ibfk_2` FOREIGN KEY (`ma_nhan_vien`) REFERENCES `ho_so_nhan_vien` (`ma_nhan_vien`),
  ADD CONSTRAINT `nhiem_vu_ibfk_3` FOREIGN KEY (`ma_du_an`) REFERENCES `du_an` (`ma_du_an`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`ma_nhan_vien`) REFERENCES `ho_so_nhan_vien` (`ma_nhan_vien`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
