-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 16, 2020 lúc 10:36 AM
-- Phiên bản máy phục vụ: 10.1.32-MariaDB
-- Phiên bản PHP: 7.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bstore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`) VALUES
(1, NULL, 'New'),
(2, NULL, 'Sale'),
(3, 2, 'Túi xách'),
(4, 2, 'Áo'),
(5, 2, 'Giày'),
(6, 2, 'Đồng hồ'),
(7, 1, 'Túi xách mới'),
(8, 1, 'Áo mới'),
(9, 1, 'Giày mới'),
(10, 1, 'Đồng hồ mới');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `old_price` float NOT NULL,
  `price` float NOT NULL,
  `preview` int(11) NOT NULL DEFAULT '0',
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `picture`, `rating`, `old_price`, `price`, `preview`, `cat_id`) VALUES
(1, 'Giầy nam', '', 0, 100000, 90000, 0, 3),
(2, 'Giầy nữ', '', 0, 150000, 120000, 0, 3),
(3, 'Đồng hồ nam', '', 0, 2000000, 1800000, 0, 4),
(4, 'Đồng hồ nữ', '', 0, 2000000, 1800000, 0, 4),
(5, 'Túi xách đi chợ', '', 0, 100000, 90000, 0, 5),
(6, 'Túi xách đi chơi', '', 0, 100000, 90000, 0, 5),
(7, 'Túi xách đi làm', '', 0, 100000, 90000, 0, 5),
(8, 'Áo nam', '', 0, 150000, 120000, 0, 6),
(9, 'Áo nữ', '', 0, 150000, 120000, 0, 6),
(10, 'Giầy nam', '', 0, 100000, 91000, 0, 7),
(11, 'Giầy nữ', '', 0, 150000, 121000, 0, 7),
(12, 'Đồng hồ nam', '', 0, 2000000, 1810000, 0, 8),
(13, 'Đồng hồ nữ', '', 0, 2000000, 1810000, 0, 8),
(14, 'Túi xách đi chợ', '', 0, 100000, 91000, 0, 9),
(15, 'Túi xách đi chơi', '', 0, 100000, 91000, 0, 9),
(16, 'Túi xách đi làm', '', 0, 100000, 91000, 0, 9),
(17, 'Áo nam', '', 0, 150000, 121000, 0, 10),
(18, 'Áo nữ', '', 0, 150000, 121000, 0, 10);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
