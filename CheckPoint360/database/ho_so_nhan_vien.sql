-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 17, 2018 lúc 05:49 AM
-- Phiên bản máy phục vụ: 10.1.28-MariaDB
-- Phiên bản PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mmm`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ho_so_nhan_vien`
--

CREATE TABLE `ho_so_nhan_vien` (
  `ma_nhan_vien` int(11) NOT NULL,
  `ho_dem` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ma_phong_ban` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ma_chuc_danh` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ho_so_nhan_vien`
--

INSERT INTO `ho_so_nhan_vien` (`ma_nhan_vien`, `ho_dem`, `ten`, `ma_phong_ban`, `ma_chuc_danh`) VALUES
(1, 'Trần Thanh', 'Tùng', 'FFSE', 'TP'),
(2, 'Nguyễn Anh', 'Vũ', 'FFSE', 'NV'),
(3, 'Nguyễn Công', 'Phượng', 'FFSE', 'NV'),
(4, 'Nguyễn Văn', 'Toàn', 'FFSE', 'NV'),
(5, 'Nguyễn Quang', 'Hải', 'FFSE', 'NV'),
(6, 'Nguyễn Văn', 'Quyết', 'FFSE', 'NV'),
(7, 'Vũ Văn', 'Thanh', 'FTSE', 'NV'),
(8, 'Vũ Đình', 'Tiến', 'FTSE', 'NV');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ho_so_nhan_vien`
--
ALTER TABLE `ho_so_nhan_vien`
  ADD PRIMARY KEY (`ma_nhan_vien`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `ho_so_nhan_vien`
--
ALTER TABLE `ho_so_nhan_vien`
  MODIFY `ma_nhan_vien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
