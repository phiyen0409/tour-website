-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 07, 2019 lúc 12:48 PM
-- Phiên bản máy phục vụ: 10.3.15-MariaDB
-- Phiên bản PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tour_web`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anhtour`
--

CREATE TABLE `anhtour` (
  `maanh` int(11) NOT NULL,
  `matour` int(11) NOT NULL,
  `tenanh` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `mabinhluan` int(11) NOT NULL,
  `nguoibinhluan` varchar(200) NOT NULL,
  `email` varchar(320) NOT NULL,
  `matour` int(11) NOT NULL,
  `thoigian` datetime NOT NULL,
  `noidung` text NOT NULL,
  `sosao` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiettour`
--

CREATE TABLE `chitiettour` (
  `machitiettour` int(11) NOT NULL,
  `tieude` varchar(200) NOT NULL,
  `matour` int(11) NOT NULL,
  `ngay` int(11) NOT NULL,
  `noidung` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diadiem`
--

CREATE TABLE `diadiem` (
  `madiadiem` int(11) NOT NULL,
  `tendiadiem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vungmien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `makh` int(11) NOT NULL,
  `tenkh` varchar(50) NOT NULL,
  `gioitinh` tinyint(4) NOT NULL,
  `ngaysinh` date NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `email` varchar(320) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichtrinh`
--

CREATE TABLE `lichtrinh` (
  `malichtrinh` int(11) NOT NULL,
  `ngaydi` date NOT NULL,
  `ngayve` date NOT NULL,
  `gioxuatphat` time NOT NULL,
  `songuoi` int(11) NOT NULL,
  `chiphi` double DEFAULT NULL,
  `huongdanvien` int(11) NOT NULL,
  `matour` int(11) NOT NULL,
  `tinhtrang` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manv` int(11) NOT NULL,
  `tennv` varchar(50) NOT NULL,
  `gioitinh` tinyint(4) NOT NULL,
  `ngaysinh` date NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `email` varchar(320) NOT NULL,
  `tinhtrang` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `matintuc` int(11) NOT NULL,
  `tentintuc` varchar(200) NOT NULL,
  `motatintuc` varchar(255) NOT NULL,
  `anhtintuc` varchar(255) NOT NULL,
  `noidungtintuc` longtext NOT NULL,
  `ngaydang` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tour`
--

CREATE TABLE `tour` (
  `matour` int(11) NOT NULL,
  `tentour` varchar(200) NOT NULL,
  `madiadiem` int(11) NOT NULL,
  `songay` int(11) NOT NULL,
  `sodem` int(11) NOT NULL,
  `gioithieu` text NOT NULL,
  `giave` double NOT NULL,
  `socho` int(11) NOT NULL,
  `anhbia` varchar(255) NOT NULL,
  `tinhtrang` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phanquyen` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'user',
  `manv` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `phanquyen`, `manv`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@me.com', '$2y$10$nZ6FUlEomxg0k7w6XPPGvebn4M6S0YvEfBVEcivsEg4qxK87GsT8u', 'user', NULL, NULL, '2019-07-07 01:26:35', '2019-07-07 01:26:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vedattour`
--

CREATE TABLE `vedattour` (
  `mave` int(11) NOT NULL,
  `ngaydat` datetime NOT NULL,
  `makh` int(11) NOT NULL,
  `malichtrinh` int(11) NOT NULL,
  `ngaykhoihanh` datetime NOT NULL,
  `songuoilon` int(11) NOT NULL,
  `sotreem` int(11) NOT NULL,
  `tonggiave` double NOT NULL,
  `tinhtrang` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anhtour`
--
ALTER TABLE `anhtour`
  ADD PRIMARY KEY (`maanh`),
  ADD KEY `fk_tour_anh` (`matour`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`mabinhluan`),
  ADD KEY `fk_tour_binhluan` (`matour`);

--
-- Chỉ mục cho bảng `chitiettour`
--
ALTER TABLE `chitiettour`
  ADD PRIMARY KEY (`machitiettour`),
  ADD KEY `fk_tour_chitiet` (`matour`);

--
-- Chỉ mục cho bảng `diadiem`
--
ALTER TABLE `diadiem`
  ADD PRIMARY KEY (`madiadiem`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makh`);

--
-- Chỉ mục cho bảng `lichtrinh`
--
ALTER TABLE `lichtrinh`
  ADD PRIMARY KEY (`malichtrinh`),
  ADD KEY `fk_tour_lichtrinh` (`matour`),
  ADD KEY `fk_nhanvien_lichtrinh` (`huongdanvien`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manv`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`matintuc`);

--
-- Chỉ mục cho bảng `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`matour`),
  ADD KEY `madiadiem` (`madiadiem`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_nhanvien_user` (`manv`);

--
-- Chỉ mục cho bảng `vedattour`
--
ALTER TABLE `vedattour`
  ADD PRIMARY KEY (`mave`),
  ADD KEY `fk_kh_dattour` (`makh`),
  ADD KEY `fk_lichtrinh_dattour` (`malichtrinh`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anhtour`
--
ALTER TABLE `anhtour`
  MODIFY `maanh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `mabinhluan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitiettour`
--
ALTER TABLE `chitiettour`
  MODIFY `machitiettour` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `diadiem`
--
ALTER TABLE `diadiem`
  MODIFY `madiadiem` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `lichtrinh`
--
ALTER TABLE `lichtrinh`
  MODIFY `malichtrinh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `manv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `matintuc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tour`
--
ALTER TABLE `tour`
  MODIFY `matour` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `vedattour`
--
ALTER TABLE `vedattour`
  MODIFY `mave` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `anhtour`
--
ALTER TABLE `anhtour`
  ADD CONSTRAINT `fk_tour_anhtour` FOREIGN KEY (`matour`) REFERENCES `tour` (`matour`);

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `fk_tour_binhluan` FOREIGN KEY (`matour`) REFERENCES `tour` (`matour`);

--
-- Các ràng buộc cho bảng `chitiettour`
--
ALTER TABLE `chitiettour`
  ADD CONSTRAINT `fk_tour_chitiet` FOREIGN KEY (`matour`) REFERENCES `tour` (`matour`);

--
-- Các ràng buộc cho bảng `lichtrinh`
--
ALTER TABLE `lichtrinh`
  ADD CONSTRAINT `fk_nhanvien_lichtrinh` FOREIGN KEY (`huongdanvien`) REFERENCES `nhanvien` (`manv`),
  ADD CONSTRAINT `fk_tour_lichtrinh` FOREIGN KEY (`matour`) REFERENCES `tour` (`matour`);

--
-- Các ràng buộc cho bảng `tour`
--
ALTER TABLE `tour`
  ADD CONSTRAINT `tour_ibfk_1` FOREIGN KEY (`madiadiem`) REFERENCES `diadiem` (`madiadiem`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_nhanvien_user` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`);

--
-- Các ràng buộc cho bảng `vedattour`
--
ALTER TABLE `vedattour`
  ADD CONSTRAINT `fk_kh_dattour` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`),
  ADD CONSTRAINT `fk_tour_dattour` FOREIGN KEY (`malichtrinh`) REFERENCES `lichtrinh` (`malichtrinh`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
