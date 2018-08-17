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
-- Cơ sở dữ liệu: `ffse1702a`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tu_danh_gia`
--

CREATE TABLE `tu_danh_gia` (
  `id` int(11) NOT NULL,
  `ma_nhan_vien` int(11) DEFAULT NULL,
  `ma_phong_ban` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ky_danh_gia` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dg_ky_luat` int(11) NOT NULL,
  `mt_ky_luat` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dg_tinh_than` int(11) NOT NULL,
  `mt_tinh_than` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dg_kl_cong_viec` int(11) NOT NULL,
  `mt_kl_cong_viec` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dg_ket_qua` int(11) NOT NULL,
  `mt_ket_qua` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dg_ky_nang` int(11) NOT NULL,
  `mt_ky_nang` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dinh_huong` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tong_the` int(5) NOT NULL,
  `trang_thai` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tu_danh_gia`
--

INSERT INTO `tu_danh_gia` (`id`, `ma_nhan_vien`, `ma_phong_ban`, `ky_danh_gia`, `dg_ky_luat`, `mt_ky_luat`, `dg_tinh_than`, `mt_tinh_than`, `dg_kl_cong_viec`, `mt_kl_cong_viec`, `dg_ket_qua`, `mt_ket_qua`, `dg_ky_nang`, `mt_ky_nang`, `dinh_huong`, `tong_the`, `trang_thai`) VALUES
(1, 12211, 'FFSE', '8/2018', 5, 'Đi làm đúng giờ, không ngủ trong giờ.', 5, 'Sẵn sàng nhận thêm nhiệm vụ, OT.', 5, 'Làm nhiều hơn so với bình thường', 5, 'hoàn thành tốt các công việc được giao.', 1, 'Vì cắm đầu làm việc nên không học được thêm kỹ năng gì.', 'Trở thành Tổng Giám đốc.', 5, 'nháp'),
(2, NULL, NULL, NULL, 5, '123', 3, '123', 4, '123', 4, '123', 3, '123123', '123', 3, NULL),
(3, NULL, NULL, NULL, 4, 'a', 4, 'a', 2, 'a', 4, 'a', 4, 'aa', 'a', 3, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tu_danh_gia`
--
ALTER TABLE `tu_danh_gia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tu_danh_gia`
--
ALTER TABLE `tu_danh_gia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
