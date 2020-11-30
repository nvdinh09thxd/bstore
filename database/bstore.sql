-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 30, 2020 lúc 09:31 AM
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
  `id_member` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `id_pro`, `counter`, `id_member`, `date`) VALUES
(1, 1, 3, 2, '2020-11-30 03:27:05'),
(2, 2, 3, 2, '2020-11-29 12:05:26'),
(3, 4, 3, 2, '2020-11-30 06:46:25'),
(4, 1, 2, 1, '2020-11-30 07:37:07'),
(5, 2, 3, 1, '2020-11-30 08:27:05');

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
(1, 0, 'Mới'),
(2, 0, 'Sale'),
(3, 1, 'Túi xách mới'),
(4, 1, 'Áo mới'),
(5, 1, 'Giày mới'),
(6, 1, 'Đồng hồ mới'),
(7, 2, 'Túi xách'),
(8, 2, 'Áo'),
(9, 2, 'Giày'),
(10, 2, 'Đồng hồ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `members`
--

INSERT INTO `members` (`id`, `firstname`, `lastname`, `gender`, `address`, `email`, `password`) VALUES
(1, 'Nguyễn', 'Định', 1, '154 Phạm Như Xương, Hoà Khánh Nam, Liên Chiểu, Đà Nẵng', 'nvdinh0766777123@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'Lê', 'Hoa', 0, 'Kiệt 119 Phạm Như Xương, Phường Hòa Khánh Nam, Quận Liên Chiểu, Đà Nẵng.', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70'),
(3, 'Tố', 'Quyên', 0, 'Huyện Thăng Bình, Quảng Nam', 'toquyen123@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `total` float NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `id_user`, `total`, `note`, `date`, `status`) VALUES
(1, 1, 450000, '', '2020-11-30 08:27:13', 1),
(2, 2, 810000, 'hoa đặt', '2020-11-30 03:54:06', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `old_price` float NOT NULL DEFAULT '0',
  `price` float NOT NULL,
  `preview` int(11) NOT NULL DEFAULT '0',
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `picture`, `rating`, `old_price`, `price`, `preview`, `cat_id`) VALUES
(1, 'Giầy nam mới', '(1,2,3,4)', 0, 100000, 90000, 0, 5),
(2, 'Giầy nữ mới', '(5,6,7,8)', 0, 100000, 90000, 0, 5),
(3, 'Giầy nam', '(9,10,11)', 0, 100000, 90000, 0, 9),
(4, 'Giầy nữ', '(12)', 0, 100000, 90000, 0, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_detail`
--

CREATE TABLE `product_detail` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_detail`
--

INSERT INTO `product_detail` (`id`, `name`) VALUES
(1, 'giay-nam-moi1.jpg'),
(2, 'giay-nam-moi2.jpg'),
(3, 'giay-nam-moi3.jpg'),
(4, 'giay-nam-moi4.jpg'),
(5, 'giay-nu-moi1.jpg'),
(6, 'giay-nu-moi2.jpg'),
(7, 'giay-nu-moi3.jpg'),
(8, 'giay-nu-moi4.jpg'),
(9, 'giay-nam1.jpg'),
(10, 'giay-nam2.jpg'),
(11, 'giay-nam3.jpg'),
(12, 'giay-nu.jpg');

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
  ADD UNIQUE KEY `id_pro` (`id_pro`,`id_member`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `members`
--
ALTER TABLE `members`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
