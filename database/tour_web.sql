-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2019 at 09:52 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tour_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `anh`
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
-- Table structure for table `binhluan`
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
-- Table structure for table `chitietdattour`
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

-- --------------------------------------------------------

--
-- Table structure for table `chitiettour`
--

CREATE TABLE `chitiettour` (
  `machitiettour` int(11) NOT NULL,
  `tieude` varchar(200) NOT NULL,
  `matour` int(11) NOT NULL,
  `ngay` int NOT NULL,
  `noidung` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
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
-- Table structure for table `lichtrinh`
--

CREATE TABLE `lichtrinh` (
  `malichtrinh` int(11) NOT NULL,
  `ngaydi` date NOT NULL,
  `ngayve` date NOT NULL,
  `gioxuatphat` time NOT NULL,
  `songuoi` int(11) NOT NULL,
  `chiphi` double,
  `huongdanvien` int(11) NOT NULL,
  `matour` int(11) NOT NULL,
  `tinhtrang` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
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
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phanquyen`
--

CREATE TABLE `phanquyen` (
  `maphanquyen` int(11) NOT NULL,
  `tenphanquyen` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `matintuc` int(11) NOT NULL,
  `tentintuc` varchar(200) NOT NULL,
  `noidungtintuc` text NOT NULL,
  `ngaydang` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tour`
--

CREATE TABLE `tour` (
  `matour` int(11) NOT NULL,
  `tentour` varchar(200) NOT NULL,
  `songay` int(11) NOT NULL,
  `sodem` int(11) NOT NULL,
  `diadiem` varchar(200) NOT NULL,
  `gioithieu` text NOT NULL,
  `giave` double NOT NULL,
  `mavung` int(11) NOT NULL,
  `socho` int(11) NOT NULL,
  `tinhtrang` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `maphanquyen` int(11) NOT NULL,
  `manv` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vungmien`
--

CREATE TABLE `vungmien` (
  `mavung` int(11) NOT NULL,
  `tenvung` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anh`
--
ALTER TABLE `anhtour`
  ADD PRIMARY KEY (`maanh`),
  ADD KEY `fk_tour_anh` (`matour`);

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`mabinhluan`),
  ADD KEY `fk_tour_binhluan` (`matour`);

--
-- Indexes for table `chitietdattour`
--
ALTER TABLE `vedattour`
  ADD PRIMARY KEY (`mave`),
  ADD KEY `fk_kh_dattour` (`makh`),
  ADD KEY `fk_lichtrinh_dattour` (`malichtrinh`);

--
-- Indexes for table `chitiettour`
--
ALTER TABLE `chitiettour`
  ADD PRIMARY KEY (`machitiettour`),
  ADD KEY `fk_tour_chitiet` (`matour`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makh`);

--
-- Indexes for table `lichtrinh`
--
ALTER TABLE `lichtrinh`
  ADD PRIMARY KEY (`malichtrinh`),
  ADD KEY `fk_tour_lichtrinh` (`matour`),
  ADD KEY `fk_nhanvien_lichtrinh` (`huongdanvien`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manv`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`maphanquyen`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`matintuc`);

--
-- Indexes for table `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`matour`),
  ADD KEY `fk_vung_tour` (`mavung`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `fk_phanquyen_user` (`maphanquyen`),
  ADD KEY `fk_nhanvien_user` (`manv`);

--
-- Indexes for table `vungmien`
--
ALTER TABLE `vungmien`
  ADD PRIMARY KEY (`mavung`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anh`
--
ALTER TABLE `anhtour`
  MODIFY `maanh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `mabinhluan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chitietdattour`
--
ALTER TABLE `vedattour`
  MODIFY `mave` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chitiettour`
--
ALTER TABLE `chitiettour`
  MODIFY `machitiettour` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lichtrinh`
--
ALTER TABLE `lichtrinh`
  MODIFY `malichtrinh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `manv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `maphanquyen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `matintuc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tour`
--
ALTER TABLE `tour`
  MODIFY `matour` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vungmien`
--
ALTER TABLE `vungmien`
  MODIFY `mavung` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anh`
--
ALTER TABLE `anhtour`
  ADD CONSTRAINT `fk_tour_anhtour` FOREIGN KEY (`matour`) REFERENCES `tour` (`matour`);

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `fk_tour_binhluan` FOREIGN KEY (`matour`) REFERENCES `tour` (`matour`);

--
-- Constraints for table `chitietdattour`
--
ALTER TABLE `vedattour`
  ADD CONSTRAINT `fk_kh_dattour` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `fk_tour_dattour` FOREIGN KEY (`malichtrinh`) REFERENCES `lichtrinh` (`malichtrinh`);

--
-- Constraints for table `chitiettour`
--
ALTER TABLE `chitiettour`
  ADD CONSTRAINT `fk_tour_chitiet` FOREIGN KEY (`matour`) REFERENCES `tour` (`matour`);

--
-- Constraints for table `lichtrinh`
--
ALTER TABLE `lichtrinh`
  ADD CONSTRAINT `fk_nhanvien_lichtrinh` FOREIGN KEY (`huongdanvien`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `fk_tour_lichtrinh` FOREIGN KEY (`matour`) REFERENCES `tour` (`matour`);

--
-- Constraints for table `tour`
--
ALTER TABLE `tour`
  ADD CONSTRAINT `fk_vung_tour` FOREIGN KEY (`mavung`) REFERENCES `vungmien` (`MaVung`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_nhanvien_user` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `fk_phanquyen_user` FOREIGN KEY (`maphanquyen`) REFERENCES `phanquyen` (`MaPhanQuyen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
