-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 17, 2018 lúc 05:50 AM
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
-- Cấu trúc bảng cho bảng `truong_phong`
--

CREATE TABLE `truong_phong` (
  `id` int(11) NOT NULL,
  `ky_luat` int(11) NOT NULL,
  `tinh_than` int(2) NOT NULL,
  `kl_cong_viec` int(2) NOT NULL,
  `kq_cong_viec` int(2) NOT NULL,
  `ky_nang` int(2) NOT NULL,
  `tong_the` int(2) NOT NULL,
  `nhan_xet_chung` varchar(625) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `truong_phong`
--

INSERT INTO `truong_phong` (`id`, `ky_luat`, `tinh_than`, `kl_cong_viec`, `kq_cong_viec`, `ky_nang`, `tong_the`, `nhan_xet_chung`) VALUES
(1, 1, 0, 0, 0, 0, 0, ''),
(13, 3, 4, 0, 0, 0, 0, ''),
(14, 4, 4, 0, 0, 0, 0, ''),
(15, 2, 4, 4, 4, 4, 5, ''),
(16, 5, 5, 5, 5, 5, 5, ''),
(17, 5, 3, 3, 4, 4, 3, ''),
(18, 4, 4, 4, 4, 4, 4, ''),
(19, 1, 1, 1, 1, 1, 1, ''),
(20, 3, 3, 1, 4, 5, 3, ''),
(21, 5, 2, 3, 4, 4, 3, 'xxxx'),
(22, 5, 5, 5, 5, 5, 5, '2'),
(23, 2, 2, 2, 2, 2, 2, '1'),
(24, 3, 3, 2, 3, 3, 3, 'x'),
(25, 3, 3, 2, 3, 3, 3, 'xxxxxxxxx'),
(26, 3, 3, 3, 3, 3, 3, '12312312312313');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `truong_phong`
--
ALTER TABLE `truong_phong`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `truong_phong`
--
ALTER TABLE `truong_phong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
