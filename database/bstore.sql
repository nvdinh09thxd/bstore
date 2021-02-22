-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 22, 2021 lúc 10:17 AM
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
  `number` int(11) NOT NULL,
  `id_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(3, 'Tố', 'Quyên', 1, 'Huyện Thăng Bình, Quảng Nam', 'nvdinh09thxd@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `total` float NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `number` int(11) NOT NULL DEFAULT '0',
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `picture`, `rating`, `old_price`, `price`, `number`, `cat_id`) VALUES
(1, 'Giầy nam mới', '(1,2,3,4)', 0, 100000, 90000, 20, 5),
(2, 'Giầy nữ mới', '(5,6,7,8)', 0, 100000, 90000, 10, 5),
(3, 'Giầy nam', '(9,10,11)', 0, 100000, 90000, 0, 9),
(4, 'Giầy nữ', '(12)', 0, 100000, 90000, 5, 9),
(5, 'Túi xách đi chợ mới', '(13)', 0, 100000, 90000, 0, 3),
(6, 'Túi xách đi chơi mới', '(14)', 0, 100000, 90000, 10, 3),
(7, 'Túi xách đi làm mới', '(15)', 0, 100000, 90000, 10, 3),
(8, 'Áo nam mới', '(16)', 0, 150000, 120000, 25, 4),
(9, 'Áo nữ mới', '(17)', 0, 150000, 120000, 10, 4),
(10, 'Đồng hồ nam mới', '(18)', 0, 2000000, 1800000, 30, 6),
(11, 'Đồng hồ nữ mới', '(19)', 0, 2000000, 1800000, 0, 6),
(12, 'Đồng hồ nam', '(20)', 0, 2000000, 1810000, 10, 10),
(13, 'Đồng hồ nữ', '(21)', 0, 2000000, 1810000, 10, 10),
(14, 'Túi xách đi chợ', '(22)', 0, 100000, 91000, 20, 7),
(15, 'Túi xách đi chơi', '(23)', 0, 100000, 91000, 10, 7),
(16, 'Túi xách đi làm', '(24)', 0, 100000, 91000, 15, 7),
(17, 'Áo nam', '(25)', 0, 150000, 121000, 10, 8),
(18, 'Áo nữ', '(26)', 0, 150000, 121000, 10, 8);

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
(12, 'giay-nu.jpg'),
(13, 'tui-xach-di-cho-moi.jpg'),
(14, 'tui-xach-di-choi-moi.jpg'),
(15, 'tui-xach-di-lam-moi.jpg'),
(16, 'ao-nam-moi.jpg'),
(17, 'ao-nu-moi.jpg'),
(18, 'dong-ho-nam-moi.jpg'),
(19, 'dong-ho-nu-moi.jpg'),
(20, 'dong-ho-nam.jpg'),
(21, 'dong-ho-nu.jpg'),
(22, 'tui-xach-di-cho.jpg'),
(23, 'tui-xach-di-choi.jpg'),
(24, 'tui-xach-di-lam.jpg'),
(25, 'ao-nam.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `revenue`
--

CREATE TABLE `revenue` (
  `id` int(11) NOT NULL,
  `total` float NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Chỉ mục cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `revenue`
--
ALTER TABLE `revenue`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `revenue`
--
ALTER TABLE `revenue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
