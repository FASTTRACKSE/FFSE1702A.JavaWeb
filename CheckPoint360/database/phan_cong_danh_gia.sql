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
-- Cấu trúc bảng cho bảng `phan_cong_danh_gia`
--

CREATE TABLE `phan_cong_danh_gia` (
  `id` int(11) NOT NULL,
  `ma_nhan_vien_duoc_danh_gia` varchar(11) NOT NULL,
  `ma_nhan_vien_danh_gia_1` varchar(12) NOT NULL,
  `ma_nhan_vien_danh_gia_2` varchar(12) NOT NULL,
  `ma_nhan_vien_danh_gia_3` varchar(12) NOT NULL,
  `phong_ban` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `phan_cong_danh_gia`
--

INSERT INTO `phan_cong_danh_gia` (`id`, `ma_nhan_vien_duoc_danh_gia`, `ma_nhan_vien_danh_gia_1`, `ma_nhan_vien_danh_gia_2`, `ma_nhan_vien_danh_gia_3`, `phong_ban`) VALUES
(1, '1', '2', '3', '4', 'FFSE');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `phan_cong_danh_gia`
--
ALTER TABLE `phan_cong_danh_gia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `phan_cong_danh_gia`
--
ALTER TABLE `phan_cong_danh_gia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
