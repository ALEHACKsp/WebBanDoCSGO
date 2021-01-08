-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 07, 2021 lúc 07:53 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `csdl`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hdct`
--

CREATE TABLE `hdct` (
  `stt` int(11) NOT NULL,
  `idhd` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `sl` int(11) NOT NULL,
  `giaban` varchar(50) COLLATE utf8_unicode_nopad_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_nopad_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `idhd` int(11) NOT NULL,
  `idkh` int(11) NOT NULL,
  `ngaymua` date NOT NULL,
  `thanhtien` varchar(50) COLLATE utf8_unicode_nopad_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_nopad_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisp`
--

CREATE TABLE `loaisp` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `loai` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_520_nopad_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_nopad_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisp`
--

INSERT INTO `loaisp` (`id`, `loai`) VALUES
(0000000001, 'KNIVES'),
(0000000002, 'PISTOLS'),
(0000000003, 'SMGS'),
(0000000004, 'RIFLES'),
(0000000005, 'HEAVY');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `idsp` int(10) UNSIGNED ZEROFILL NOT NULL,
  `tensp` varchar(50) COLLATE utf8_unicode_nopad_ci NOT NULL,
  `giacu` varchar(50) COLLATE utf8_unicode_nopad_ci NOT NULL,
  `giamoi` varchar(50) COLLATE utf8_unicode_nopad_ci NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_nopad_ci NOT NULL,
  `loaisp` varchar(50) COLLATE utf8_unicode_nopad_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_nopad_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_nopad_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`idsp`, `tensp`, `giacu`, `giamoi`, `hinhanh`, `loaisp`, `mota`) VALUES
(0000000001, 'AK - Fire Serpent', '$1,750.1', '$334.69', 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/12a43122925791.5631a88c1239d.png', 'RIFLES', 'Súng sịn, giá thơm.'),
(0000000002, 'AWP - Asiimov', '$204.56', '$100.54', 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/74cfe322925791.5631a88c1949e.png', 'RIFLES', 'Súng sịn, giá thơm.'),
(0000000003, 'P250 - Cartel', '$56.3', '$8.91', 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/70e82c22925791.5631a88c221c4.png', 'PISTOLS', 'Súng sịn, giá thơm.'),
(0000000004, 'Galil - Cerberus', '$202.8', '$12.85', 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/939f7322925791.5631a88c2e114.png', 'RIFLES', 'Súng sịn, giá thơm.'),
(0000000005, 'M4A1-S - Cyrex', '$51.77', '$19.53', 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/cdf69022925791.5631a88c380b6.png', 'RIFLES', 'Súng sịn, giá thơm.'),
(0000000006, 'CZ75 - Victoria', '$116.85', '$17.89', 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/b0b01322925791.5631a88c42ac5.png', 'PISTOLS', 'Súng sịn, giá thơm.'),
(0000000007, 'M4A4 - Dragon King', '$65.38', '$20.42', 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/56a25622925791.5631a88c4f6ae.png', 'RIFLES', 'Súng sịn, giá thơm.'),
(0000000008, 'AWP - Dragon Lore', '$45,337.5', '$11,586.2', 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/fce1e022925791.5631a88c5c655.png', 'RIFLES', 'Súng sịn, giá thơm.'),
(0000000009, 'Glock - Water Elemental', '$38.27', '$9.81', 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/b6b8f922925791.5631a88c62e88.png', 'PISTOLS', 'Súng sịn, giá thơm.'),
(0000000010, 'M4A4 - Howl', '$11,992.5', '$4,202.5', 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/288b0a22925791.5631a88c86515.png', 'RIFLES', 'Súng sịn, giá thơm.'),
(0000000011, 'P2000 - Ivory', '$1.33', '$0.17', 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/3a792022925791.5631a88c8da73.png', 'PISTOLS', 'Súng sịn, giá thơm.'),
(0000000012, 'Sawed Off - Kraken', '$38.45', '$14.35', 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/10d9d622925791.5631a88c919d4.png', 'HEAVY', 'Súng sịn, giá thơm.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `user` varchar(10) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `tenkh` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `sdt` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `tenkh`, `diachi`, `sdt`, `email`) VALUES
(1, 'thuongle', 'admin', 'Lê Anh Thương', 'Tuy Hòa', '0337263408', 'thuongle325@outlook.com.vn');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `hdct`
--
ALTER TABLE `hdct`
  ADD PRIMARY KEY (`stt`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`idhd`);

--
-- Chỉ mục cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsp`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hdct`
--
ALTER TABLE `hdct`
  MODIFY `stt` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `idhd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idsp` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
