-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 17, 2018 lúc 05:48 AM
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
-- Cấu trúc bảng cho bảng `danh_gia_ngang_hang`
--

CREATE TABLE `danh_gia_ngang_hang` (
  `id` int(11) NOT NULL,
  `phong_ban` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nguoi_danh_gia` int(11) NOT NULL,
  `nguoi_duoc_danh_gia` int(11) NOT NULL,
  `ky_danh_gia` int(30) NOT NULL,
  `ky_luat` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tinh_than` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kl_cong_viec` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kq_cong_viec` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ky_nang` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dinh_huong` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `danh_gia_ngang_hang`
--

INSERT INTO `danh_gia_ngang_hang` (`id`, `phong_ban`, `nguoi_danh_gia`, `nguoi_duoc_danh_gia`, `ky_danh_gia`, `ky_luat`, `tinh_than`, `kl_cong_viec`, `kq_cong_viec`, `ky_nang`, `dinh_huong`) VALUES
(1, 'FFSE', 12222, 12211, 8, 'tốt', 'tốt', 'làm hết phần người khác', 'làm việc vất vả, kết quả như..', 'làm theo cảm tính, thói quen, không tích lũy thêm', 'không rõ ràng'),
(2, '11', 1, 1, 1, '1', '1', '1', '1', '1', '1'),
(4, '2', 2, 2, 2, '22', '2', '2', '2', '2', '2'),
(5, '1', 1, 1, 1, 'z', 'z', 'z', 'z', 'z', 'z'),
(6, '1', 1, 1, 1, '1', '11', '1', '1', '1', '1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danh_gia_ngang_hang`
--
ALTER TABLE `danh_gia_ngang_hang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danh_gia_ngang_hang`
--
ALTER TABLE `danh_gia_ngang_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
