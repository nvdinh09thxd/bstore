-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 26, 2020 lúc 10:00 AM
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
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `counter` int(11) NOT NULL DEFAULT '1',
  `id_user` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `id_pro`, `counter`, `id_user`, `date`) VALUES
(19, 10, 1, 2, '2020-11-26 03:13:03'),
(20, 11, 2, 2, '2020-11-26 03:13:20'),
(21, 2, 3, 2, '2020-11-26 08:40:24'),
(22, 1, 4, 2, '2020-11-26 02:47:13'),
(23, 10, 10, 1, '2020-11-25 10:07:02'),
(24, 12, 11, 1, '2020-11-26 08:53:32'),
(26, 4, 3, 1, '2020-11-26 08:52:24'),
(27, 3, 2, 1, '2020-11-26 08:56:12'),
(30, 18, 1, 1, '2020-11-26 08:56:31');

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
(1, 0, 'New'),
(2, 0, 'Sale'),
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
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `total` float NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `id_user`, `total`, `address`, `date`, `status`) VALUES
(7, 2, 210000, '', '2020-11-26 02:25:20', 1);

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
(1, 'Giầy nam', 'giay-nam.jpg', 0, 100000, 90000, 0, 5),
(2, 'Giầy nữ', 'giay-nu.jpg', 0, 150000, 120000, 0, 5),
(3, 'Đồng hồ nam', 'dong-ho-nam.jpg', 0, 2000000, 1800000, 0, 6),
(4, 'Đồng hồ nữ', 'dong-ho-nu.jpg', 0, 2000000, 1800000, 0, 6),
(5, 'Túi xách đi chợ', 'tui-xach-cho.jpg', 0, 100000, 90000, 0, 3),
(6, 'Túi xách đi chơi', 'tui-xach-choi.jpg', 0, 100000, 90000, 0, 3),
(7, 'Túi xách đi làm', 'tui-xach-lam.jpg', 0, 100000, 90000, 0, 3),
(8, 'Áo nam', 'ao-nam.jpg', 0, 150000, 120000, 0, 4),
(9, 'Áo nữ', 'ao-nu.jpg', 0, 150000, 120000, 0, 4),
(10, 'Giầy nam', 'giay-nam.jpg', 0, 100000, 91000, 0, 9),
(11, 'Giầy nữ', 'giay-nu.jpg', 0, 150000, 121000, 0, 9),
(12, 'Đồng hồ nam', 'dong-ho-nam.jpg', 0, 2000000, 1810000, 0, 10),
(13, 'Đồng hồ nữ', 'dong-ho-nu.jpg', 0, 2000000, 1810000, 0, 10),
(14, 'Túi xách đi chợ', 'tui-xach-cho.jpg', 0, 100000, 91000, 0, 7),
(15, 'Túi xách đi chơi', 'tui-xach-choi.jpg', 0, 100000, 91000, 0, 7),
(16, 'Túi xách đi làm', 'tui-xach-lam.jpg', 0, 100000, 91000, 0, 7),
(17, 'Áo nam', 'ao-nam.jpg', 0, 150000, 121000, 0, 8),
(18, 'Áo nữ', 'ao-nu.jpg', 0, 150000, 121000, 0, 8),
(24, 'Em gái mưa', 'background-1739125651236800.jpg', 0, 0, 123.456, 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_detail`
--

CREATE TABLE `product_detail` (
  `id` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `more_info` text COLLATE utf8_unicode_ci,
  `review` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_detail`
--

INSERT INTO `product_detail` (`id`, `id_pro`, `more_info`, `review`) VALUES
(1, 11, NULL, '123'),
(4, 10, NULL, '111'),
(5, 10, NULL, '222'),
(6, 10, NULL, '333'),
(7, 11, NULL, '777'),
(8, 18, NULL, '111');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullname`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 'Administrator'),
(2, 'dinh', '202cb962ac59075b964b07152d234b70', 'Nguyễn Văn Định'),
(5, 'manhme', '202cb962ac59075b964b07152d234b70', 'Đinh Công Mạnh'),
(6, 'nvdinh185', '202cb962ac59075b964b07152d234b70', 'Nguyễn Văn Định'),
(7, 'toquyen', '202cb962ac59075b964b07152d234b70', 'Tố Quyên'),
(8, 'huonghoa', 'e10adc3949ba59abbe56e057f20f883e', 'huong'),
(9, 'user', '202cb962ac59075b964b07152d234b70', 'Người dùng bình thường');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_pro` (`id_pro`,`id_user`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
