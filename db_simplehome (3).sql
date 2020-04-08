-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 08, 2020 lúc 06:46 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_simplehome`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietnganhhang`
--

CREATE TABLE `chitietnganhhang` (
  `MaCT` int(10) UNSIGNED NOT NULL,
  `MaNH` int(10) UNSIGNED NOT NULL,
  `TenCT` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietnganhhang`
--

INSERT INTO `chitietnganhhang` (`MaCT`, `MaNH`, `TenCT`) VALUES
(1, 1, 'Lò Vi Sóng'),
(2, 1, 'Bếp Điện Từ/Hồng Ngoại'),
(3, 1, 'Vĩ Nướng Điện'),
(4, 2, 'Sofa Phòng Khách'),
(5, 2, 'Ghế Bàn Thư Giản'),
(6, 3, 'Đồ Gia Dụng'),
(7, 4, 'Hàng Trang Trí');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nganhhang`
--

CREATE TABLE `nganhhang` (
  `MaNH` int(10) NOT NULL,
  `TenNH` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nganhhang`
--

INSERT INTO `nganhhang` (`MaNH`, `TenNH`) VALUES
(1, 'Điện Gia Dụng'),
(2, 'Nội Thẩt'),
(3, 'Gia Dụng'),
(4, 'Hàng Trang Trí');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(10) UNSIGNED NOT NULL,
  `MaCT` int(10) UNSIGNED DEFAULT NULL,
  `TenSP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Loai` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiaTT` float DEFAULT NULL,
  `GiaBan` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaCT`, `TenSP`, `Loai`, `GiaTT`, `GiaBan`) VALUES
(1, 1, 'Lò Vi Sóng KITCHENLUX 20MG65-L/800W', 'A', 2190000, 1590000),
(2, 2, 'Ghế Sofa Phòng Khách 123', 'B', 1230000, 1190000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuoctinhsanpham`
--

CREATE TABLE `thuoctinhsanpham` (
  `MaSP` int(10) NOT NULL,
  `LoaiSP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DungTich` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thuoctinhsanpham`
--

INSERT INTO `thuoctinhsanpham` (`MaSP`, `LoaiSP`, `Model`, `DungTich`) VALUES
(1, 'Lò Vi Sóng - Kết Hợp Nướng', '20MG65-L\r\n', '20 Lít');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(20) NOT NULL,
  `datebirth` int(2) NOT NULL,
  `monthbirth` int(2) NOT NULL,
  `yearbirth` int(4) NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietnganhhang`
--
ALTER TABLE `chitietnganhhang`
  ADD PRIMARY KEY (`MaCT`),
  ADD KEY `id_nganh` (`MaNH`);

--
-- Chỉ mục cho bảng `nganhhang`
--
ALTER TABLE `nganhhang`
  ADD PRIMARY KEY (`MaNH`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `id_type` (`MaCT`);

--
-- Chỉ mục cho bảng `thuoctinhsanpham`
--
ALTER TABLE `thuoctinhsanpham`
  ADD PRIMARY KEY (`MaSP`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietnganhhang`
--
ALTER TABLE `chitietnganhhang`
  MODIFY `MaCT` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `nganhhang`
--
ALTER TABLE `nganhhang`
  MODIFY `MaNH` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `thuoctinhsanpham`
--
ALTER TABLE `thuoctinhsanpham`
  MODIFY `MaSP` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
