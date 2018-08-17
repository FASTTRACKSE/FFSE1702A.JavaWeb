-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 17, 2018 at 02:42 AM
-- Server version: 5.6.37
-- PHP Version: 7.1.8

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
-- Table structure for table `chuc_danh`
--

CREATE TABLE IF NOT EXISTS `chuc_danh` (
  `ma_chuc_danh` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ten_chuc_danh` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chuc_danh`
--

INSERT INTO `chuc_danh` (`ma_chuc_danh`, `ten_chuc_danh`) VALUES
('GD', 'Giám đốc'),
('NV', 'Nhân viên'),
('PGD', 'Phó Giám đốc'),
('PP', 'Phó phòng'),
('TP', 'Trưởng phòng');

-- --------------------------------------------------------

--
-- Table structure for table `co_so_du_lieu`
--

CREATE TABLE IF NOT EXISTS `co_so_du_lieu` (
  `ma_database` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ten_database` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `co_so_du_lieu`
--

INSERT INTO `co_so_du_lieu` (`ma_database`, `ten_database`) VALUES
('DB01', 'Ordacle'),
('DB02', 'Mongo DB'),
('DB03', 'Mysql'),
('DB04', 'Sql');

-- --------------------------------------------------------

--
-- Table structure for table `database_du_an`
--

CREATE TABLE IF NOT EXISTS `database_du_an` (
  `ma_database` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ma_du_an` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `database_du_an`
--

INSERT INTO `database_du_an` (`ma_database`, `ma_du_an`) VALUES
('DB01', 'DA01'),
('DB01', 'DA06'),
('DB01', 'DA08'),
('DB02', 'DA01'),
('DB02', 'DA02'),
('DB03', 'DA02'),
('DB03', 'DA05'),
('DB04', 'DA02');

-- --------------------------------------------------------

--
-- Table structure for table `du_an`
--

CREATE TABLE IF NOT EXISTS `du_an` (
  `ma_du_an` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ten_du_an` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nghiep_vu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_khach_hang` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mo_ta_du_an` text COLLATE utf8_unicode_ci,
  `ma_tinh_trang` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `du_an`
--

INSERT INTO `du_an` (`ma_du_an`, `ten_du_an`, `nghiep_vu`, `ma_khach_hang`, `mo_ta_du_an`, `ma_tinh_trang`) VALUES
('', 'website doanh nghiệp', 'Doanh nghiệp', 'KH001', 'quản lý doanh nghiệp theo chức danh và quy trình làm việc', 'TT01'),
('DA01', 'website bán hàng', 'Kinh doanh ', 'KH001', 'website bán hàng online \r\nthanh toán trực tuyến', 'TT01'),
('DA02', 'website doanh nghiệp', 'Doanh nghiệp', 'KH001', 'quản lý doanh nghiệp theo chức danh và quy trình làm việc', 'TT03'),
('DA05', 'website bán hàng', 'Kinh doanh ', 'KH001', 'web bán hàng', 'TT01'),
('DA06', 'website bán hàng', 'Kinh doanh ', 'KH001', 'bán hàng', 'TT01'),
('DA08', 'website bán hàng', 'Kinh doanh ', 'KH001', 'bán hàng', 'TT01'),
('DA09', 'website doanh nghiệp', 'Doanh nghiệp', 'KH001', 'quản lý doanh nghiệp theo chức danh và quy trình làm việc', 'TT01');

-- --------------------------------------------------------

--
-- Table structure for table `framework`
--

CREATE TABLE IF NOT EXISTS `framework` (
  `ma_framework` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ten_framework` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `framework`
--

INSERT INTO `framework` (`ma_framework`, `ten_framework`) VALUES
('FR01', 'Spring'),
('FR02', 'Code Igniter'),
('FR03', 'JSF'),
('FR04', 'ASP.net'),
('FR05', 'Express');

-- --------------------------------------------------------

--
-- Table structure for table `framework_du_an`
--

CREATE TABLE IF NOT EXISTS `framework_du_an` (
  `ma_framework` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ma_du_an` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `framework_du_an`
--

INSERT INTO `framework_du_an` (`ma_framework`, `ma_du_an`) VALUES
('FR01', 'DA01'),
('FR02', ''),
('FR02', 'DA05'),
('FR02', 'DA06'),
('FR02', 'DA08'),
('FR03', 'DA02'),
('FR04', 'DA01'),
('FR04', 'DA02');

-- --------------------------------------------------------

--
-- Table structure for table `hop_dong`
--

CREATE TABLE IF NOT EXISTS `hop_dong` (
  `ma_hop_dong` int(5) unsigned zerofill NOT NULL,
  `ma_nhan_vien` int(5) unsigned zerofill NOT NULL,
  `ma_loai_hop_dong` int(5) NOT NULL,
  `luong_thang_13` int(1) NOT NULL,
  `so_ngay_phep` int(2) NOT NULL,
  `ngay_ky_ket` date NOT NULL,
  `ngay_ket_thuc` date NOT NULL,
  `trang_thai` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ho_so_nhan_vien`
--

CREATE TABLE IF NOT EXISTS `ho_so_nhan_vien` (
  `ma_nhan_vien` int(5) unsigned zerofill NOT NULL,
  `ma_phong_ban` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ma_chuc_danh` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ho_dem` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ho_so_nhan_vien`
--

INSERT INTO `ho_so_nhan_vien` (`ma_nhan_vien`, `ma_phong_ban`, `ma_chuc_danh`, `ten`, `ho_dem`, `anh_dai_dien`, `nam_sinh`, `gioi_tinh`, `ma_tinh_trang_hon_nhan`, `que_quan`, `dan_toc`, `ma_quoc_tich`, `noi_tam_tru`, `so_dien_thoai`, `email`, `so_cmnd`, `noi_cap`, `ngay_cap`, `trang_thai`) VALUES
(00001, 'PKT', 'GD', 'Nam', 'Đặng Văn', '1533865835713.jpeg', '1998-07-20', 1, 1, '121 Hoàng Diệu, Hải Châu, Đà Nẵng', 'Kinh', 'VN', '121 Hoàng Diệu, Hải Châu, Đà Nẵng', '01266676809', 'dangvannam98@gmail.com', '201756910', 'Đà Nẵng', '2013-09-23', 2),
(00002, 'PIT', 'TP', 'Nam', 'Đặng Văn', 'junbjn98.png', '1998-07-20', 2, 1, '121 Hoàng Diệu, Hải Châu, Đà Nẵng', 'Kinh', 'VN', '121 Hoàng Diệu, Hải Châu, Đà Nẵng', '01266676809', 'dangvannam98@gmail.com', '201756910', 'Đà Nẵng', '2013-09-23', 2),
(00003, 'PDT', 'GD', 'Nam', 'Đặng Văn', 'junbjn98.png', '1998-07-20', 1, 1, '121 Hoàng Diệu, Hải Châu, Đà Nẵng', 'Kinh', 'VN', '121 Hoàng Diệu, Hải Châu, Đà Nẵng', '01266676809', 'dangvannam98@gmail.com', '201756910', 'Đà Nẵng', '2013-09-23', 1),
(00004, 'PIT', 'NV', 'Nam', 'Đặng Văn', 'junbjn98.png', '1998-07-20', 1, 1, '121 Hoàng Diệu, Hải Châu, Đà Nẵng', 'Kinh', 'VN', '121 Hoàng Diệu, Hải Châu, Đà Nẵng', '01266676809', 'dangvannam98@gmail.com', '201756910', 'Đà Nẵng', '2013-09-23', 2),
(00005, 'PIT', 'GD', 'Nam', 'Đặng Văn', 'junbjn98.png', '1998-07-20', 2, 1, '121 Hoàng Diệu, Hải Châu, Đà Nẵng', 'Kinh', 'VN', '121 Hoàng Diệu, Hải Châu, Đà Nẵng', '01266676809', 'dangvannam98@gmail.com', '201756910', 'Đà Nẵng', '2013-09-23', 2),
(00006, 'PGD', 'PGD', 'Nam', 'Đặng Văn', 'junbjn98.png', '1998-07-20', 1, 1, '121 Hoàng Diệu, Hải Châu, Đà Nẵng', 'Kinh', 'VN', '121 Hoàng Diệu, Hải Châu, Đà Nẵng', '01266676809', 'dangvannam98@gmail.com', '201756910', 'Đà Nẵng', '2013-09-23', 1),
(00007, 'PIT', 'TP', 'Nam', 'Đặng Văn', 'junbjn98.png', '1998-07-20', 1, 1, '121 Hoàng Diệu, Hải Châu, Đà Nẵng', 'Kinh', 'VN', '121 Hoàng Diệu, Hải Châu, Đà Nẵng', '01266676809', 'dangvannam98@gmail.com', '201756910', 'Đà Nẵng', '2013-09-23', 1),
(00008, 'PIT', 'PP', 'Nam', 'Đặng Văn', 'junbjn98.png', '1998-07-20', 2, 1, '121 Hoàng Diệu, Hải Châu, Đà Nẵng', 'Kinh', 'VN', '121 Hoàng Diệu, Hải Châu, Đà Nẵng', '01266676809', 'dangvannam98@gmail.com', '201756910', 'Đà Nẵng', '2013-09-23', 2),
(00009, 'PIT', 'GD', 'Nam', 'Đặng Văn', 'junbjn98.png', '1998-07-20', 1, 1, '121 Hoàng Diệu, Hải Châu, Đà Nẵng', 'Kinh', 'VN', '121 Hoàng Diệu, Hải Châu, Đà Nẵng', '01266676809', 'dangvannam98@gmail.com', '201756910', 'Đà Nẵng', '2013-09-23', 2),
(00010, 'PKT', 'GD', 'Nam 10', 'Đặng Văn', '1533907366549.jpeg', '1998-07-20', 2, 1, '121 Hoàng Diệu, Hải Châu, Đà Nẵng', 'Kinh', 'VN', '121 Hoàng Diệu, Hải Châu, Đà Nẵng', '01266676809', 'dangvannam98@gmail.com', '201756910', 'Đà Nẵng', '2013-09-23', 1),
(00011, 'PDT', 'GD', 'Nam', 'Đặng Văn', 'junbjn98.png', '1998-07-20', 1, 1, '121 Hoàng Diệu, Hải Châu, Đà Nẵng', 'Kinh', 'VN', '121 Hoàng Diệu, Hải Châu, Đà Nẵng', '01266676809', 'dangvannam98@gmail.com', '201756910', 'Đà Nẵng', '2013-09-23', 1),
(00012, 'PDT', 'PP', 'test 12', 'test 12', '1533888194486.jpeg', '2018-08-09', 2, 2, 'test', 'test', 'AW', 'test', '01266676809', 'test@test22', '201759243', 'test', '2018-08-09', 1);

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
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khach_hang`
--

INSERT INTO `khach_hang` (`ma_khach_hang`, `ten_khach_hang`, `dia_chi`, `nghiep_vu`, `phone_number`, `email`) VALUES
('KH001', 'Công ty thép Hòa An', '18 - Ngô Thì Nhậm - Đà Nẵng', 'Kinh doanh ', 511436634, 'hoaanct@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `kinh_nghiem_du_an`
--

CREATE TABLE IF NOT EXISTS `kinh_nghiem_du_an` (
  `ma_nhan_vien` int(5) unsigned zerofill NOT NULL,
  `ma_du_an` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kinh_nghiem_du_an`
--

INSERT INTO `kinh_nghiem_du_an` (`ma_nhan_vien`, `ma_du_an`) VALUES
(00001, 'DA01'),
(00002, 'DA02');

-- --------------------------------------------------------

--
-- Table structure for table `loai_hop_dong`
--

CREATE TABLE IF NOT EXISTS `loai_hop_dong` (
  `ma_loai_hop_dong` int(5) NOT NULL,
  `ten_hop_dong` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loai_hop_dong`
--

INSERT INTO `loai_hop_dong` (`ma_loai_hop_dong`, `ten_hop_dong`) VALUES
(1, 'Hợp đồng thử việc'),
(2, 'Hợp đồng làm việc');

-- --------------------------------------------------------

--
-- Table structure for table `ngon_ngu`
--

CREATE TABLE IF NOT EXISTS `ngon_ngu` (
  `ma_ngon_ngu` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ten_ngon_ngu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ngon_ngu`
--

INSERT INTO `ngon_ngu` (`ma_ngon_ngu`, `ten_ngon_ngu`) VALUES
('PL01', 'Java'),
('PL02', 'C#'),
('PL03', 'NodeJS'),
('PL04', 'AngularJS');

-- --------------------------------------------------------

--
-- Table structure for table `ngon_ngu_du_an`
--

CREATE TABLE IF NOT EXISTS `ngon_ngu_du_an` (
  `ma_ngon_ngu` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ma_du_an` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ngon_ngu_du_an`
--

INSERT INTO `ngon_ngu_du_an` (`ma_ngon_ngu`, `ma_du_an`) VALUES
('PL03', ''),
('PL01', 'DA01'),
('PL02', 'DA01'),
('PL03', 'DA02'),
('PL04', 'DA02'),
('PL02', 'DA05'),
('PL01', 'DA06'),
('PL01', 'DA08');

-- --------------------------------------------------------

--
-- Table structure for table `nhiem_vu`
--

CREATE TABLE IF NOT EXISTS `nhiem_vu` (
  `ma_vai_tro` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ma_nhan_vien` int(11) NOT NULL DEFAULT '0',
  `ma_du_an` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhiem_vu`
--

INSERT INTO `nhiem_vu` (`ma_vai_tro`, `ma_nhan_vien`, `ma_du_an`) VALUES
('VT01', 1, 'DA02'),
('VT02', 2, 'DA02'),
('VT02', 2, 'DA03');

-- --------------------------------------------------------

--
-- Table structure for table `phong_ban`
--

CREATE TABLE IF NOT EXISTS `phong_ban` (
  `ma_phong_ban` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ten_phong_ban` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phong_ban`
--

INSERT INTO `phong_ban` (`ma_phong_ban`, `ten_phong_ban`) VALUES
('111', '222'),
('123', '33333'),
('ma phong ', 'ten phong'),
('PDA', 'Phòng Dự án'),
('PDT', 'Phòng Đào tạo'),
('PGD', 'Phòng Giám đốc'),
('PIT', 'Phòng IT'),
('PKT', 'Phòng Kế toán'),
('PNS', 'Phòng Nhân sự');

-- --------------------------------------------------------

--
-- Table structure for table `quoc_tich`
--

CREATE TABLE IF NOT EXISTS `quoc_tich` (
  `ma_quoc_tich` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten_quoc_tich` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quoc_tich`
--

INSERT INTO `quoc_tich` (`ma_quoc_tich`, `ten_quoc_tich`) VALUES
('AD', 'Andorra'),
('AE', 'United Arab Emirates'),
('AF', 'Afghanistan'),
('AG', 'Antigua And Barbuda'),
('AI', 'Anguilla'),
('AL', 'Albania'),
('AM', 'Armenia'),
('AN', 'Netherlands Antilles'),
('AO', 'Angola'),
('AQ', 'Antarctica'),
('AR', 'Argentina'),
('AS', 'American Samoa'),
('AT', 'Austria'),
('AU', 'Australia'),
('AW', 'Aruba'),
('AX', 'Åland Islands'),
('AZ', 'Azerbaijan'),
('BA', 'Bosnia And Herzegovina'),
('BB', 'Barbados'),
('BD', 'Bangladesh'),
('BE', 'Belgium'),
('BF', 'Burkina Faso'),
('BG', 'Bulgaria'),
('BH', 'Bahrain'),
('BI', 'Burundi'),
('BJ', 'Benin'),
('BM', 'Bermuda'),
('BN', 'Brunei Darussalam'),
('BO', 'Bolivia'),
('BR', 'Brazil'),
('BS', 'Bahamas'),
('BT', 'Bhutan'),
('BV', 'Bouvet Island'),
('BW', 'Botswana'),
('BY', 'Belarus'),
('BZ', 'Belize'),
('CA', 'Canada'),
('CC', 'Cocos (Keeling) Islands'),
('CD', 'Congo, The Democratic Republic Of The'),
('CF', 'Central African Republic'),
('CG', 'Congo'),
('CH', 'Switzerland'),
('CI', 'Côte D''Ivoire'),
('CK', 'Cook Islands'),
('CL', 'Chile'),
('CM', 'Cameroon'),
('CN', 'China'),
('CO', 'Colombia'),
('CR', 'Costa Rica'),
('CS', 'Serbia And Montenegro'),
('CU', 'Cuba'),
('CV', 'Cape Verde'),
('CX', 'Christmas Island'),
('CY', 'Cyprus'),
('CZ', 'Czech Republic'),
('DE', 'Germany'),
('DJ', 'Djibouti'),
('DK', 'Denmark'),
('DM', 'Dominica'),
('DO', 'Dominican Republic'),
('DZ', 'Algeria'),
('EC', 'Ecuador'),
('EE', 'Estonia'),
('EG', 'Egypt'),
('EH', 'Western Sahara'),
('ER', 'Eritrea'),
('ES', 'Spain'),
('ET', 'Ethiopia'),
('FI', 'Finland'),
('FJ', 'Fiji'),
('FK', 'Falkland Islands (Malvinas)'),
('FM', 'Micronesia, Federated States Of'),
('FO', 'Faroe Islands'),
('FR', 'France'),
('GA', 'Gabon'),
('GB', 'United Kingdom'),
('GD', 'Grenada'),
('GE', 'Georgia'),
('GF', 'French Guiana'),
('GH', 'Ghana'),
('GI', 'Gibraltar'),
('GL', 'Greenland'),
('GM', 'Gambia'),
('GN', 'Guinea'),
('GP', 'Guadeloupe'),
('GQ', 'Equatorial Guinea'),
('GR', 'Greece'),
('GS', 'South Georgia And The South Sandwich Islands'),
('GT', 'Guatemala'),
('GU', 'Guam'),
('GW', 'Guinea-Bissau'),
('GY', 'Guyana'),
('HK', 'Hong Kong'),
('HM', 'Heard Island And Mcdonald Islands'),
('HN', 'Honduras'),
('HR', 'Croatia'),
('HT', 'Haiti'),
('HU', 'Hungary'),
('ID', 'Indonesia'),
('IE', 'Ireland'),
('IL', 'Israel'),
('IN', 'India'),
('IO', 'British Indian Ocean Territory'),
('IQ', 'Iraq'),
('IR', 'Iran, Islamic Republic Of'),
('IS', 'Iceland'),
('IT', 'Italy'),
('JM', 'Jamaica'),
('JO', 'Jordan'),
('JP', 'Japan'),
('KE', 'Kenya'),
('KG', 'Kyrgyzstan'),
('KH', 'Cambodia'),
('KI', 'Kiribati'),
('KM', 'Comoros'),
('KN', 'Saint Kitts And Nevis'),
('KP', 'Korea, Democratic People''S Republic Of'),
('KR', 'Korea, Republic Of'),
('KW', 'Kuwait'),
('KY', 'Cayman Islands'),
('KZ', 'Kazakhstan'),
('LA', 'Lao People''S Democratic Republic'),
('LB', 'Lebanon'),
('LC', 'Saint Lucia'),
('LI', 'Liechtenstein'),
('LK', 'Sri Lanka'),
('LR', 'Liberia'),
('LS', 'Lesotho'),
('LT', 'Lithuania'),
('LU', 'Luxembourg'),
('LV', 'Latvia'),
('LY', 'Libyan Arab Jamahiriya'),
('MA', 'Morocco'),
('MC', 'Monaco'),
('MD', 'Moldova, Republic Of'),
('MG', 'Madagascar'),
('MH', 'Marshall Islands'),
('MK', 'Macedonia, The Former Yugoslav Republic Of'),
('ML', 'Mali'),
('MM', 'Myanmar'),
('MN', 'Mongolia'),
('MO', 'Macao'),
('MP', 'Northern Mariana Islands'),
('MQ', 'Martinique'),
('MR', 'Mauritania'),
('MS', 'Montserrat'),
('MT', 'Malta'),
('MU', 'Mauritius'),
('MV', 'Maldives'),
('MW', 'Malawi'),
('MX', 'Mexico'),
('MY', 'Malaysia'),
('MZ', 'Mozambique'),
('NA', 'Namibia'),
('NC', 'New Caledonia'),
('NE', 'Niger'),
('NF', 'Norfolk Island'),
('NG', 'Nigeria'),
('NI', 'Nicaragua'),
('NL', 'Netherlands'),
('NO', 'Norway'),
('NP', 'Nepal'),
('NR', 'Nauru'),
('NU', 'Niue'),
('NZ', 'New Zealand'),
('OM', 'Oman'),
('PA', 'Panama'),
('PE', 'Peru'),
('PF', 'French Polynesia'),
('PG', 'Papua New Guinea'),
('PH', 'Philippines'),
('PK', 'Pakistan'),
('PL', 'Poland'),
('PM', 'Saint Pierre And Miquelon'),
('PN', 'Pitcairn'),
('PR', 'Puerto Rico'),
('PS', 'Palestinian Territory, Occupied'),
('PT', 'Portugal'),
('PW', 'Palau'),
('PY', 'Paraguay'),
('QA', 'Qatar'),
('RE', 'Réunion'),
('RO', 'Romania'),
('RU', 'Russian Federation'),
('RW', 'Rwanda'),
('SA', 'Saudi Arabia'),
('SB', 'Solomon Islands'),
('SC', 'Seychelles'),
('SD', 'Sudan'),
('SE', 'Sweden'),
('SG', 'Singapore'),
('SH', 'Saint Helena'),
('SI', 'Slovenia'),
('SJ', 'Svalbard And Jan Mayen'),
('SK', 'Slovakia'),
('SL', 'Sierra Leone'),
('SM', 'San Marino'),
('SN', 'Senegal'),
('SO', 'Somalia'),
('SR', 'Suriname'),
('ST', 'Sao Tome And Principe'),
('SV', 'El Salvador'),
('SY', 'Syrian Arab Republic'),
('SZ', 'Swaziland'),
('TC', 'Turks And Caicos Islands'),
('TD', 'Chad'),
('TF', 'French Southern Territories'),
('TG', 'Togo'),
('TH', 'Thailand'),
('TJ', 'Tajikistan'),
('TK', 'Tokelau'),
('TL', 'Timor-Leste'),
('TM', 'Turkmenistan'),
('TN', 'Tunisia'),
('TO', 'Tonga'),
('TR', 'Turkey'),
('TT', 'Trinidad And Tobago'),
('TV', 'Tuvalu'),
('TW', 'Taiwan, Province Of China'),
('TZ', 'Tanzania, United Republic Of'),
('UA', 'Ukraine'),
('UG', 'Uganda'),
('UM', 'United States Minor Outlying Islands'),
('US', 'United States'),
('UY', 'Uruguay'),
('UZ', 'Uzbekistan'),
('VA', 'Holy See (Vatican City State)'),
('VC', 'Saint Vincent And The Grenadines'),
('VE', 'Venezuela'),
('VG', 'Virgin Islands, British'),
('VI', 'Virgin Islands, U.S.'),
('VN', 'Viet Nam'),
('VU', 'Vanuatu'),
('WF', 'Wallis And Futuna'),
('WS', 'Samoa'),
('YE', 'Yemen'),
('YT', 'Mayotte'),
('ZA', 'South Africa'),
('ZM', 'Zambia'),
('ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `thong_tin_bang_cap`
--

CREATE TABLE IF NOT EXISTS `thong_tin_bang_cap` (
  `id` int(11) NOT NULL,
  `ma_nhan_vien` int(5) unsigned zerofill NOT NULL,
  `ten_bang_cap` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `loai_bang_cap` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `don_vi_cap` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_cap` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thong_tin_gia_dinh`
--

CREATE TABLE IF NOT EXISTS `thong_tin_gia_dinh` (
  `id` int(11) NOT NULL,
  `ma_nhan_vien` int(5) unsigned zerofill NOT NULL,
  `ten` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ho_dem` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `que_quan` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `nam_sinh` date NOT NULL,
  `gioi_tinh` int(1) NOT NULL,
  `so_dien_thoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `quan_he` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thong_tin_gia_dinh`
--

INSERT INTO `thong_tin_gia_dinh` (`id`, `ma_nhan_vien`, `ten`, `ho_dem`, `que_quan`, `nam_sinh`, `gioi_tinh`, `so_dien_thoai`, `quan_he`) VALUES
(1, 00012, 'Nam (anh)', 'Đặng Văn', 'Đà Nẵng', '2018-08-08', 1, '01266676809', 'Anh'),
(2, 00012, 'Nam (em)', 'Đặng Văn', 'Đà Nẵng', '2018-08-08', 1, '01266676809', 'Em'),
(4, 00012, '222', '222', '222', '2018-08-17', 1, '2222222222', '222'),
(5, 00011, 'Trang', 'Trong Trẻo', 'Đà Nẵng', '1994-03-29', 2, '0123456799', 'Chị');

-- --------------------------------------------------------

--
-- Table structure for table `tinh_trang`
--

CREATE TABLE IF NOT EXISTS `tinh_trang` (
  `ma_tinh_trang` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ten_tinh_trang` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tinh_trang`
--

INSERT INTO `tinh_trang` (`ma_tinh_trang`, `ten_tinh_trang`) VALUES
('TT01', 'New'),
('TT02', 'In Progress'),
('TT03', 'On Hold'),
('TT04', 'Completed'),
('TT05', 'Archived'),
('TT06', 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `tinh_trang_hon_nhan`
--

CREATE TABLE IF NOT EXISTS `tinh_trang_hon_nhan` (
  `ma_tinh_trang_hon_nhan` int(11) NOT NULL,
  `tinh_trang_hon_nhan` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tinh_trang_hon_nhan`
--

INSERT INTO `tinh_trang_hon_nhan` (`ma_tinh_trang_hon_nhan`, `tinh_trang_hon_nhan`) VALUES
(1, 'Độc thân'),
(2, 'Đã đính hôn'),
(3, 'Đã kết hôn'),
(4, 'Đã ly hôn');

-- --------------------------------------------------------

--
-- Table structure for table `vai_tro_thanh_vien`
--

CREATE TABLE IF NOT EXISTS `vai_tro_thanh_vien` (
  `ma_vai_tro` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ten_vai_tro` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vai_tro_thanh_vien`
--

INSERT INTO `vai_tro_thanh_vien` (`ma_vai_tro`, `ten_vai_tro`) VALUES
('VT01', 'PM'),
('VT02', 'Technical Lead'),
('VT03', 'Dev'),
('VT04', 'Tester'),
('VT05', 'Reviewer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chuc_danh`
--
ALTER TABLE `chuc_danh`
  ADD PRIMARY KEY (`ma_chuc_danh`);

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
-- Indexes for table `hop_dong`
--
ALTER TABLE `hop_dong`
  ADD PRIMARY KEY (`ma_hop_dong`),
  ADD KEY `hop_dong_ibfk_1` (`ma_nhan_vien`),
  ADD KEY `hop_dong_ibfk_2` (`ma_loai_hop_dong`);

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
-- Indexes for table `kinh_nghiem_du_an`
--
ALTER TABLE `kinh_nghiem_du_an`
  ADD PRIMARY KEY (`ma_nhan_vien`,`ma_du_an`),
  ADD KEY `ma_du_an` (`ma_du_an`);

--
-- Indexes for table `loai_hop_dong`
--
ALTER TABLE `loai_hop_dong`
  ADD PRIMARY KEY (`ma_loai_hop_dong`);

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
-- Indexes for table `quoc_tich`
--
ALTER TABLE `quoc_tich`
  ADD PRIMARY KEY (`ma_quoc_tich`);

--
-- Indexes for table `thong_tin_bang_cap`
--
ALTER TABLE `thong_tin_bang_cap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thong_tin_bang_cap_ibfk_1` (`ma_nhan_vien`);

--
-- Indexes for table `thong_tin_gia_dinh`
--
ALTER TABLE `thong_tin_gia_dinh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thong_tin_gia_dinh_ibfk_1` (`ma_nhan_vien`);

--
-- Indexes for table `tinh_trang`
--
ALTER TABLE `tinh_trang`
  ADD PRIMARY KEY (`ma_tinh_trang`);

--
-- Indexes for table `tinh_trang_hon_nhan`
--
ALTER TABLE `tinh_trang_hon_nhan`
  ADD PRIMARY KEY (`ma_tinh_trang_hon_nhan`);

--
-- Indexes for table `vai_tro_thanh_vien`
--
ALTER TABLE `vai_tro_thanh_vien`
  ADD PRIMARY KEY (`ma_vai_tro`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hop_dong`
--
ALTER TABLE `hop_dong`
  MODIFY `ma_hop_dong` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ho_so_nhan_vien`
--
ALTER TABLE `ho_so_nhan_vien`
  MODIFY `ma_nhan_vien` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `loai_hop_dong`
--
ALTER TABLE `loai_hop_dong`
  MODIFY `ma_loai_hop_dong` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `thong_tin_bang_cap`
--
ALTER TABLE `thong_tin_bang_cap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thong_tin_gia_dinh`
--
ALTER TABLE `thong_tin_gia_dinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tinh_trang_hon_nhan`
--
ALTER TABLE `tinh_trang_hon_nhan`
  MODIFY `ma_tinh_trang_hon_nhan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `du_an`
--
ALTER TABLE `du_an`
  ADD CONSTRAINT `du_an_ibfk_1` FOREIGN KEY (`ma_tinh_trang`) REFERENCES `tinh_trang` (`ma_tinh_trang`);

--
-- Constraints for table `hop_dong`
--
ALTER TABLE `hop_dong`
  ADD CONSTRAINT `hop_dong_ibfk_1` FOREIGN KEY (`ma_nhan_vien`) REFERENCES `ho_so_nhan_vien` (`ma_nhan_vien`),
  ADD CONSTRAINT `hop_dong_ibfk_2` FOREIGN KEY (`ma_loai_hop_dong`) REFERENCES `loai_hop_dong` (`ma_loai_hop_dong`);

--
-- Constraints for table `ho_so_nhan_vien`
--
ALTER TABLE `ho_so_nhan_vien`
  ADD CONSTRAINT `ho_so_nhan_vien_ibfk_1` FOREIGN KEY (`ma_phong_ban`) REFERENCES `phong_ban` (`ma_phong_ban`),
  ADD CONSTRAINT `ho_so_nhan_vien_ibfk_2` FOREIGN KEY (`ma_chuc_danh`) REFERENCES `chuc_danh` (`ma_chuc_danh`),
  ADD CONSTRAINT `ho_so_nhan_vien_ibfk_3` FOREIGN KEY (`ma_quoc_tich`) REFERENCES `quoc_tich` (`ma_quoc_tich`),
  ADD CONSTRAINT `ho_so_nhan_vien_ibfk_4` FOREIGN KEY (`ma_tinh_trang_hon_nhan`) REFERENCES `tinh_trang_hon_nhan` (`ma_tinh_trang_hon_nhan`);

--
-- Constraints for table `kinh_nghiem_du_an`
--
ALTER TABLE `kinh_nghiem_du_an`
  ADD CONSTRAINT `kinh_nghiem_du_an_ibfk_2` FOREIGN KEY (`ma_nhan_vien`) REFERENCES `ho_so_nhan_vien` (`ma_nhan_vien`),
  ADD CONSTRAINT `kinh_nghiem_du_an_ibfk_3` FOREIGN KEY (`ma_du_an`) REFERENCES `du_an` (`ma_du_an`);

--
-- Constraints for table `ngon_ngu_du_an`
--
ALTER TABLE `ngon_ngu_du_an`
  ADD CONSTRAINT `ngon_ngu_du_an_ibfk_1` FOREIGN KEY (`ma_du_an`) REFERENCES `du_an` (`ma_du_an`),
  ADD CONSTRAINT `ngon_ngu_du_an_ibfk_2` FOREIGN KEY (`ma_ngon_ngu`) REFERENCES `ngon_ngu` (`ma_ngon_ngu`);

--
-- Constraints for table `thong_tin_bang_cap`
--
ALTER TABLE `thong_tin_bang_cap`
  ADD CONSTRAINT `thong_tin_bang_cap_ibfk_1` FOREIGN KEY (`ma_nhan_vien`) REFERENCES `ho_so_nhan_vien` (`ma_nhan_vien`);

--
-- Constraints for table `thong_tin_gia_dinh`
--
ALTER TABLE `thong_tin_gia_dinh`
  ADD CONSTRAINT `thong_tin_gia_dinh_ibfk_1` FOREIGN KEY (`ma_nhan_vien`) REFERENCES `ho_so_nhan_vien` (`ma_nhan_vien`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
