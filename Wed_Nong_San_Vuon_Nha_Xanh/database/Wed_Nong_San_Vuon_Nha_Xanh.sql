-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 17, 2024 lúc 04:19 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `wed_nong_san_vuon_nha_xanh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `account_id` int(11) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_password` varchar(100) NOT NULL,
  `account_email` varchar(255) NOT NULL,
  `account_phone` varchar(20) NOT NULL,
  `account_type` int(11) NOT NULL,
  `account_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`account_id`, `account_name`, `account_password`, `account_email`, `account_phone`, `account_type`, `account_status`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@gmail.com', '0987654322', 2, 0),
(26, 'La Ngọc Nay', 'e10adc3949ba59abbe56e057f20f883e', 'ngocnay2001@gmail.com', '', 0, 0),
(27, 'Lê Tài', 'e10adc3949ba59abbe56e057f20f883e', 'letai@gmail.com', '', 0, 0),
(28, 'Trọng Hiển', 'e10adc3949ba59abbe56e057f20f883e', 'tronghien@gmail.com', '0398419004', 1, 0),
(29, 'Lê Tâm', 'e10adc3949ba59abbe56e057f20f883e', 'letam@gmail.com', '', 0, 0),
(30, 'La Ngọc Nay', 'e10adc3949ba59abbe56e057f20f883e', 'test@gmail.com', '', 0, 0),
(31, 'hien', '20011206', 'tronghiengato1@gmail.com', '', 1, 0),
(32, 'La Ngọc Nay', 'e10adc3949ba59abbe56e057f20f883e', 'test2@gmail.com', '', 0, 0),
(33, 'hiển', 'e4e13856fd194979194ec16670ed709f', 'tronghienga@gmail.com', '', 0, 0),
(34, 'hiển', '508b74251bd83b8aea47f24d9198832f', 'tronghiengato2@gmail.com', '', 0, 0),
(35, 'hiển', '508b74251bd83b8aea47f24d9198832f', 'tronghiengato3@gmail.com', '', 0, 0),
(36, 'hiển', 'e4e13856fd194979194ec16670ed709f', 'tronghiengato@gmail.com', '', 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `article`
--

CREATE TABLE `article` (
  `article_id` int(11) NOT NULL,
  `article_author` varchar(100) NOT NULL,
  `article_title` varchar(255) NOT NULL,
  `article_summary` text NOT NULL,
  `article_content` text NOT NULL,
  `article_image` varchar(100) NOT NULL,
  `article_date` date NOT NULL,
  `article_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`) VALUES
(1, 'Trong Nước'),
(2, 'Nhập khẩu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `capacity`
--

CREATE TABLE `capacity` (
  `capacity_id` int(11) NOT NULL,
  `capacity_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `capacity`
--

INSERT INTO `capacity` (`capacity_id`, `capacity_name`) VALUES
(3, 'KG'),
(4, 'Bịch'),
(5, '100 Gam'),
(6, 'Hộp - chai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_description` text NOT NULL,
  `category_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_description`, `category_image`) VALUES
(1, 'Thịt - trứng', 'Tất cả các sản phẩm ', 'pexels-mali-65175.jpg'),
(2, 'Rau - củ  sạch', 'rau ', '1_4.jpg'),
(3, 'Trái cây sạch', 'Hoa quả sạch', 'images.jpg'),
(22, 'Gia vị - Thực phẩm khô', 'Gia vị - Thực phẩm khô', '1731826318_'),
(23, 'Thực phẩm hộp', '', '1731826851_');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `collection`
--

CREATE TABLE `collection` (
  `collection_id` int(11) NOT NULL,
  `collection_name` varchar(100) NOT NULL,
  `collection_keyword` varchar(100) NOT NULL,
  `collection_image` varchar(100) NOT NULL,
  `collection_description` varchar(255) NOT NULL,
  `collection_order` int(11) NOT NULL,
  `collection_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `collection`
--

INSERT INTO `collection` (`collection_id`, `collection_name`, `collection_keyword`, `collection_image`, `collection_description`, `collection_order`, `collection_type`) VALUES
(1, 'Chanel', 'chanel', '1684376498_nuoc-hoa-chanel-nam-11.jpg', 'Nước hoa chanel', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `comment_name` varchar(50) NOT NULL,
  `comment_email` varchar(50) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_date` date NOT NULL,
  `comment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_gender` int(11) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_phone` varchar(50) NOT NULL,
  `customer_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_id`, `account_id`, `customer_name`, `customer_gender`, `customer_email`, `customer_phone`, `customer_address`) VALUES
(19, 22, 'admin', 0, 'admin@gmail.com', '0987654322', 'Phú Quốc'),
(23, 26, 'La Ngọc Nay', 1, 'ngocnay2001@gmail.com', '0387581175', 'Cần Thơ'),
(24, 27, 'Lê Tài', 1, 'letai@gmail.com', '0387581171', 'Cần Thơ'),
(25, 28, 'Trọng Hiển', 1, 'tronghien@gmail.com', '0398419004', 'Cần Thơ'),
(26, 29, 'Lê Tâm', 2, 'letam@gmail.com', '0387581173', 'Cần Thơ'),
(27, 30, 'La Ngọc Nay', 1, 'test@gmail.com', '0387581170', 'Cần Thơ'),
(28, 0, 'La Ngọc Nay', 0, 'ngocnay2001@gmail.com', '0387581175', 'Cần Thơ'),
(29, 31, 'hien', 1, 'tronghiengato@gmail.com', '0398419004', 'hậu giang'),
(30, 32, 'La Ngọc Nay', 1, 'test2@gmail.com', '0387581176', 'Cần Thơ'),
(31, 33, 'hiển', 1, 'tronghienga@gmail.com', '0398419004', 'hậu giang'),
(32, 34, 'hiển', 1, 'tronghiengato2@gmail.com', '0398419004', 'hậu giang'),
(33, 35, 'hiển', 1, 'tronghiengato3@gmail.com', '0398419004', 'hậu giang'),
(34, 36, 'hiển', 1, 'tronghiengato@gmail.com', '0398419004', 'hậu giang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `delivery`
--

CREATE TABLE `delivery` (
  `delivery_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `delivery_name` varchar(100) NOT NULL,
  `delivery_phone` varchar(20) NOT NULL,
  `delivery_address` varchar(100) NOT NULL,
  `delivery_note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `delivery`
--

INSERT INTO `delivery` (`delivery_id`, `account_id`, `delivery_name`, `delivery_phone`, `delivery_address`, `delivery_note`) VALUES
(146, 29, 'Lê Tâm', '0387581173', 'Cần Thơ', ''),
(192, 30, 'La Ngọc Nay', '0387581170', 'Cần Thơ', ''),
(341, 28, 'Trọng Hiển', '0387581172', 'Cần Thơ', ''),
(1073, 36, 'hiển', '0398419004', 'hậu giang', ''),
(1819, 35, 'hiển', '0398419004', 'hậu giang', ''),
(1872, 30, 'La Ngọc Nay', '0387581170', 'Cần Thơ', ''),
(1891, 36, 'hiển', '0398419004', 'hậu giang', ''),
(1948, 28, 'Trọng Hiển', '0387581172', 'Cần Thơ', ''),
(2148, 31, 'hien', '0398419004', 'hậu giang', ''),
(2635, 36, 'hiển', '0398419004', 'hậu giang', ''),
(2685, 1, 'Lê Thắng', '0123123123131', 'Cần Thơ', 'Đơn hàng mua trực tiếp'),
(2737, 33, 'hiển', '0398419004', 'hậu giang', ''),
(2777, 28, 'Trọng Hiển', '0387581172', 'Cần Thơ', ''),
(2905, 28, 'das', '123', '123', 'Đơn hàng mua trực tiếp'),
(3039, 35, 'hiển', '0398419004', 'hậu giang', ''),
(3838, 30, 'La Ngọc Nay', '0387581170', 'Cần Thơ', ''),
(4141, 1, 'La Ngọc Nay', '0123123123123', 'Cần Thơ', 'Đơn hàng mua trực tiếp'),
(4428, 29, 'Lê Tâm', '0387581173', 'Cần Thơ', ''),
(4752, 30, 'La Ngọc Nay', '0387581170', 'Cần Thơ', ''),
(6335, 28, 'das', '21312', 'sad', 'Đơn hàng mua trực tiếp'),
(6633, 35, 'hiển', '0398419004', 'hậu giang', ''),
(7742, 27, 'Lê Tài', '0387581171', 'Cần Thơ', ''),
(7847, 27, 'Lê Tài', '0387581171', 'Cần Thơ', ''),
(7999, 26, 'La Ngọc Nay', '0387581175', 'Cần Thơ', ''),
(8002, 33, 'hiển', '0398419004', 'hậu giang', ''),
(8403, 30, 'La Ngọc Nay', '0387581170', 'Cần Thơ', ''),
(8484, 30, 'La Ngọc Nay', '0387581170', 'Cần Thơ', ''),
(8924, 1, 'La Ngọc Nay', '0123123123123', 'Cần Thơ', 'Đơn hàng mua trực tiếp'),
(9319, 1, 'Lê Thắng', '0123123123131', 'Cần Thơ', 'Đơn hàng mua trực tiếp'),
(9541, 29, 'Lê Tâm', '0387581173', 'Cần Thơ', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `evaluate`
--

CREATE TABLE `evaluate` (
  `evaluate_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `evaluate_rate` int(11) NOT NULL,
  `evaluate_content` text NOT NULL,
  `evaluate_date` varchar(50) NOT NULL,
  `evaluate_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `evaluate`
--

INSERT INTO `evaluate` (`evaluate_id`, `account_id`, `product_id`, `account_name`, `evaluate_rate`, `evaluate_content`, `evaluate_date`, `evaluate_status`) VALUES
(26, 26, 153, 'La Ngọc Nay', 5, 'Thơm', '2023-10-28 14:19:22', 1),
(27, 27, 152, 'Lê Tài', 3, 'Xịn', '2023-10-28 14:33:05', 1),
(28, 29, 154, 'Lê Tâm', 5, 'ádsad', '2023-10-28 17:48:46', 1),
(29, 29, 154, 'Lê Tâm', 1, '213123', '2023-10-28 17:49:01', 1),
(30, 30, 154, 'La Ngọc Nay', 5, 'aaa', '2023-10-31 22:14:38', 1),
(31, 30, 158, 'La Ngọc Nay', 3, '1245', '2023-11-04 15:51:13', 1),
(32, 27, 157, 'Lê Tài', 5, 'h', '2023-11-05 07:38:21', 1),
(33, 27, 158, 'Lê Tài', 5, 'ii', '2023-11-05 07:50:49', 1),
(34, 27, 158, 'Lê Tài', 5, 'iioo', '2023-11-05 07:51:00', 1),
(35, 27, 155, 'Lê Tài', 5, 'ádasdsa', '2023-11-05 08:25:55', 1),
(36, 27, 157, 'Lê Tài', 5, 'ádasd', '2023-11-05 08:28:29', 1),
(37, 30, 10, 'La Ngọc Nay', 5, 'Thơm', '2023-11-24 17:13:42', 1),
(38, 35, 161, 'hiển', 5, 'tốt', '2024-11-14 14:17:00', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `staf_name` varchar(50) NOT NULL,
  `supplier_name` varchar(50) NOT NULL,
  `supplier_phone` varchar(20) NOT NULL,
  `inventory_note` varchar(100) NOT NULL,
  `inventory_code` varchar(50) NOT NULL,
  `inventory_date` date NOT NULL,
  `total_amount` float NOT NULL,
  `inventory_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `account_id`, `staf_name`, `supplier_name`, `supplier_phone`, `inventory_note`, `inventory_code`, `inventory_date`, `total_amount`, `inventory_status`) VALUES
(23, 0, 'hiển', 'vnpt', '1234567890', 'hết hàng', '7019', '2024-11-14', 5900000, 0),
(24, 35, 'hiển', 'vnpt', '1234567890', 'hang moi', '4738', '2024-11-14', 294000000, 0),
(25, 35, 'hien', 'vnpt', '1234567890', 'hang', '9135', '2024-11-14', 252000000, 0),
(26, 35, 'hiển', 'vnpt', '1234567890', 'hết hàng', '9328', '2024-11-14', 70000000, 0),
(27, 35, 'hiển', 'vnpt', '1234567890', 'hang moi', '9622', '2024-11-14', 14705800000, 0),
(28, 0, 'hiển', 'vnpt', '1234567890', 'hết hàng', '7973', '2024-11-17', 17000000, 0),
(29, 0, 'hiển', 'bách hóa xanh', '0398419004', 'hang moi', '7155', '2024-11-17', 120940000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inventory_detail`
--

CREATE TABLE `inventory_detail` (
  `inventory_detail_id` int(11) NOT NULL,
  `inventory_code` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price_import` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `inventory_detail`
--

INSERT INTO `inventory_detail` (`inventory_detail_id`, `inventory_code`, `product_id`, `product_quantity`, `product_price_import`) VALUES
(1, '9124', 21, 3, 2500000),
(20, '2811', 152, 15, 1500000),
(21, '9623', 154, 120, 1500000),
(22, '1281', 155, 10, 1500000),
(23, '5734', 157, 10, 50),
(24, '8875', 157, 5, 500000000),
(25, '9239', 158, 5, 5000),
(26, '7019', 162, 21, 200000),
(27, '7019', 161, 17, 100000),
(28, '4738', 164, 42, 7000000),
(29, '9135', 166, 36, 7000000),
(30, '9328', 167, 10, 7000000),
(31, '9622', 180, 60, 200000),
(32, '9622', 179, 43, 1000000),
(33, '9622', 178, 73, 9000000),
(34, '9622', 177, 43, 7000000),
(35, '9622', 176, 41, 1000000),
(36, '9622', 175, 80, 100000),
(37, '9622', 174, 100, 1000000),
(38, '9622', 173, 100, 9000000),
(39, '9622', 172, 1000, 9000000),
(40, '9622', 169, 10004, 200000),
(41, '9622', 168, 200, 7000000),
(42, '9622', 167, 27, 9000000),
(43, '7973', 192, 1000, 2000),
(44, '7973', 190, 50, 300000),
(45, '7155', 209, 100, 7000),
(46, '7155', 208, 100, 1000000),
(47, '7155', 207, 100, 7000),
(48, '7155', 206, 100, 20000),
(49, '7155', 205, 100, 20000),
(50, '7155', 203, 200, 20000),
(51, '7155', 204, 100, 20000),
(52, '7155', 202, 20, 20000),
(53, '7155', 201, 200, 20000),
(54, '7155', 192, 200, 100),
(55, '7155', 200, 100, 100),
(56, '7155', 199, 100, 100),
(57, '7155', 198, 100, 100),
(58, '7155', 197, 100, 100),
(59, '7155', 196, 100, 100),
(60, '7155', 195, 100, 10000),
(61, '7155', 194, 100, 10000),
(62, '7155', 193, 100, 10000),
(63, '7155', 191, 100, 10000),
(64, '7155', 190, 100, 10000),
(65, '7155', 187, 200, 100),
(66, '7155', 186, 100, 100),
(67, '7155', 185, 100, 100),
(68, '7155', 184, 100, 100),
(69, '7155', 183, 100, 100),
(70, '7155', 181, 100, 100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `metrics`
--

CREATE TABLE `metrics` (
  `metric_id` int(11) NOT NULL,
  `metric_date` date NOT NULL,
  `metric_order` int(11) NOT NULL,
  `metric_sales` varchar(100) NOT NULL,
  `metric_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `metrics`
--

INSERT INTO `metrics` (`metric_id`, `metric_date`, `metric_order`, `metric_sales`, `metric_quantity`) VALUES
(1, '2023-10-28', 26, '93382.16', 48),
(37, '2023-10-27', 4521, '124000', 12),
(38, '2023-10-25', 4521, '12300', 12),
(39, '2023-10-27', 4521, '0', 0),
(40, '2023-10-24', 4521, '123000', 3),
(41, '2023-10-31', 1, '11150400', 7),
(42, '2023-11-03', 5, '307476500', 20),
(43, '2023-11-04', 2, '10830', 2),
(44, '2023-11-09', 3, '295982000', 4),
(45, '2023-11-15', 1, '1960000', 1),
(46, '2023-11-16', 1, '4950', 1),
(47, '2023-11-27', 1, '285000000', 1),
(48, '2024-11-11', 3, '3143900', 7),
(49, '2024-11-14', 2, '600000', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `momo`
--

CREATE TABLE `momo` (
  `momo_id` int(11) NOT NULL,
  `partner_code` varchar(50) NOT NULL,
  `order_code` int(11) NOT NULL,
  `momo_amount` varchar(50) NOT NULL,
  `order_info` varchar(100) NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `pay_type` varchar(50) NOT NULL,
  `payment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_code` int(11) NOT NULL,
  `order_date` varchar(50) NOT NULL,
  `account_id` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `order_type` int(11) NOT NULL,
  `order_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `order_code`, `order_date`, `account_id`, `delivery_id`, `total_amount`, `order_type`, `order_status`) VALUES
(178, 7174, '2023-10-28 13:25:35', 26, 7999, 110582, 1, 3),
(179, 5127, '2023-10-29 14:36:44', 27, 7847, 26950000, 1, 3),
(180, 7155, '2023-10-30 14:38:06', 1, 4141, 17150000, 5, 3),
(181, 687, '2023-10-31 14:39:09', 27, 7742, 855000000, 1, 3),
(182, 5401, '2023-11-01 14:44:54', 28, 2777, 552000, 1, 3),
(183, 9437, '2023-11-02 14:44:54', 29, 9541, 270000, 1, 3),
(184, 4521, '2023-10-25 17:25:41', 1, 2685, 14250000, 5, 3),
(185, 6780, '2023-10-26 17:45:20', 29, 4428, 17640000, 1, 3),
(186, 8819, '2023-10-24 17:46:58', 29, 146, 180000, 1, 3),
(187, 2384, '2023-10-31 22:15:43', 30, 192, 11150400, 1, 3),
(188, 3473, '2023-11-03 16:36:01', 30, 8403, 364500, 1, 3),
(189, 1087, '2023-11-03 16:40:31', 30, 1872, 3920000, 1, 3),
(190, 8719, '2023-11-03 16:45:21', 30, 8484, 285000000, 1, 3),
(191, 7168, '2023-11-04 04:35:13', 1, 9319, 4950, 5, 3),
(192, 6353, '2023-11-04 15:49:54', 30, 4752, 5880, 1, 3),
(193, 793, '2023-11-09 17:14:12', 28, 341, 9200000, 1, 3),
(194, 5641, '2023-11-09 17:15:15', 28, 1948, 285000000, 1, 3),
(195, 9588, '2023-11-09 19:08:37', 31, 2148, 1782000, 1, 3),
(196, 4445, '2023-11-15 15:35:25', 28, 6335, 1960000, 5, 3),
(197, 334, '2023-11-16 01:06:16', 28, 2905, 4950, 5, 3),
(198, 844, '2023-11-24 17:24:31', 30, 3838, 891000, 1, 3),
(199, 6446, '2023-11-27 23:37:59', 1, 8924, 285000000, 5, 3),
(200, 1706, '2024-11-11 16:22:39', 33, 8002, 200900, 1, 3),
(201, 1222, '2024-11-11 16:38:19', 33, 2737, 2052000, 1, 3),
(202, 5744, '2024-11-14 04:48:47', 35, 6633, 300000, 1, 5),
(203, 6543, '2024-11-14 14:15:45', 35, 1819, 300000, 1, 2),
(204, 5056, '2024-11-14 14:47:37', 35, 3039, 7500000, 1, 0),
(205, 4840, '2024-11-16 15:13:20', 36, 2635, 8500000, 1, 0),
(206, 261, '2024-11-17 16:20:21', 36, 1073, 7500000, 1, 0),
(207, 6383, '2024-11-17 20:46:02', 36, 1891, 14000, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_code` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_sale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`order_detail_id`, `order_code`, `product_id`, `product_quantity`, `product_price`, `product_sale`) VALUES
(55, 3188, 20, 2, 4000000, 8),
(186, 7174, 10, 2, 99, 8),
(187, 7174, 18, 1, 120000, 8),
(188, 5127, 20, 1, 10000000, 2),
(189, 5127, 152, 1, 17500000, 2),
(190, 7155, 152, 1, 17500000, 2),
(191, 687, 22, 3, 300000000, 5),
(192, 5401, 16, 5, 120000, 8),
(193, 9437, 15, 2, 150000, 10),
(194, 4521, 19, 1, 15000000, 5),
(195, 6780, 154, 9, 2000000, 2),
(196, 8819, 13, 2, 100000, 10),
(197, 2384, 154, 6, 2000000, 8),
(198, 2384, 18, 1, 120000, 8),
(199, 3473, 17, 3, 135000, 10),
(200, 1087, 154, 2, 2000000, 2),
(201, 8719, 22, 1, 300000000, 5),
(202, 7168, 157, 1, 5000, 1),
(203, 6353, 158, 1, 6000, 2),
(204, 793, 20, 1, 10000000, 8),
(205, 5641, 22, 1, 300000000, 5),
(206, 9588, 10, 2, 990000, 10),
(207, 4445, 154, 1, 2000000, 2),
(208, 334, 157, 1, 5000, 1),
(209, 844, 10, 1, 990000, 10),
(210, 6446, 22, 1, 300000000, 5),
(211, 1706, 11, 1, 199000, 2),
(212, 1706, 158, 1, 6000, 2),
(213, 1222, 10, 2, 990000, 10),
(214, 1222, 15, 2, 150000, 10),
(215, 5744, 161, 1, 300000, 0),
(216, 6543, 161, 1, 300000, 0),
(217, 5056, 166, 1, 7500000, 0),
(218, 4840, 167, 1, 8500000, 0),
(219, 261, 192, 1, 7500000, 0),
(220, 6383, 181, 1, 14000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_brand` int(11) NOT NULL,
  `capacity_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `quantity_sales` int(11) NOT NULL,
  `product_price_import` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_sale` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` text NOT NULL,
  `product_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_category`, `product_brand`, `capacity_id`, `product_quantity`, `quantity_sales`, `product_price_import`, `product_price`, `product_sale`, `product_description`, `product_image`, `product_status`) VALUES
(181, 'Cá nục xốt cà Thai Ship 155g', 23, 2, 6, 99, 1, 100, 14000, 0, '<h2>Th&ocirc;ng tin sản phẩm</h2>\r\n\r\n<p>C&aacute; nục xốt c&agrave; chua Thai Ship l&agrave; thương hiệu c&aacute; hộp được nhiều người lựa chọn sử dụng.&nbsp;C&aacute; nục xốt c&agrave; Thai Ship 155g được l&agrave;m từ c&aacute; nục tươi tạo n&ecirc;n m&oacute;n ăn tiện lợi chuẩn vị cho bữa cơm th&ecirc;m tr&ograve;n vị v&agrave; hấp dẫn. Sản phẩm được l&agrave;m từ những nguy&ecirc;n liệu an to&agrave;n cho người sử dụng.&nbsp;</p>\r\n', '1731831607_thiet-ke-chua-co-ten-81_202411151513150190-removebg-preview.png', 1),
(182, 'Thịt viên xốt cà chua Cây Thị 120g', 23, 1, 4, 0, 0, 100000, 200000, 0, '<h2>Th&ocirc;ng tin sản phẩm</h2>\r\n\r\n<p><a href=\"https://www.bachhoaxanh.com/thit-heo-hop-cay-thi\">Thịt C&acirc;y Thị</a>&nbsp;l&agrave; sản phẩm chất lượng được nhiều người y&ecirc;u th&iacute;ch lựa chọn sử dụng.&nbsp;<a href=\"https://www.bachhoaxanh.com/thit-heo-hop/thit-vien-xot-ca-chua-cay-thi-120g\">Thịt vi&ecirc;n xốt c&agrave; chua C&acirc;y Thị 120g</a>&nbsp;mang hương vị thơm ngon cho m&oacute;n ăn của bạn th&ecirc;m đậm đ&agrave; v&agrave; hấp dẫn.&nbsp;<a href=\"https://www.bachhoaxanh.com/thit-heo-hop\">Thịt</a>&nbsp;được l&agrave;m từ những th&agrave;nh phần an to&agrave;n cho người sử dụng.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Thương hiệu</td>\r\n			<td>\r\n			<p>C&acirc;y Thị (Việt Nam)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>C&aacute;ch d&ugrave;ng</td>\r\n			<td>\r\n			<p>L&ograve; vi s&oacute;ng - Cắt bỏ bao b&igrave;, cho v&agrave;o l&ograve; vi s&oacute;ng trong khoảng 1 ph&uacute;t ở mức 1000W, 1 ph&uacute;t 30 gi&acirc;y ở 850W. Hấp ở nhiệt độ 85 - 100 độ C trong khoảng 3 ph&uacute;t. Chi&ecirc;n khoảng 3 ph&uacute;t.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo quản</td>\r\n			<td>\r\n			<p>Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, nhiệt độ thường.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1731831829_image-removebg-preview (2).png', 1),
(183, 'Pate gan heo WYN 150g', 23, 2, 6, 100, 0, 100, 7500000, 0, '<h2>Th&ocirc;ng tin sản phẩm</h2>\r\n\r\n<p>Pate gan Wyn l&agrave; loại pate chất lượng được nhiều người lựa chọn sử dụng trong bữa ăn gia đ&igrave;nh.&nbsp;Pate gan heo WYN 150g thơm ngon gi&uacute;p cho c&aacute;c m&oacute;n ăn th&ecirc;m tr&ograve;n vị v&agrave; đậm đ&agrave;. Pate được l&agrave;m từ những th&agrave;nh phần an to&agrave;n v&agrave; được kiểm nghiệm nghi&ecirc;m ngặt khi đến tay người d&ugrave;ng.&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Thương hiệu</td>\r\n			<td>\r\n			<p>WYN (Việt Nam)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>C&aacute;ch d&ugrave;ng</td>\r\n			<td>\r\n			<p>L&ograve; vi s&oacute;ng - Cắt bỏ bao b&igrave;, cho v&agrave;o l&ograve; vi s&oacute;ng trong khoảng 1 ph&uacute;t ở mức 1000W, 1 ph&uacute;t 30 gi&acirc;y ở 850W. Hấp ở nhiệt độ 85 - 100 độ C trong khoảng 3 ph&uacute;t. Chi&ecirc;n khoảng 3 ph&uacute;t.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo quản</td>\r\n			<td>\r\n			<p>Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, nhiệt độ thường.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1731832476_Pate gan heo WYN 150g.jpg', 1),
(184, 'Thịt heo viên 3 phút Heo Cao Bồi Masan 200g', 23, 1, 4, 100, 0, 100, 200000, 0, '<h2>h&ocirc;ng tin sản phẩm</h2>\r\n\r\n<p>Tiện lợi, thơm ngon v&agrave; dinh dưỡng.&nbsp;Thịt heo vi&ecirc;n 3 ph&uacute;t Heo Cao Bồi Masan hộp 200g chất lượng, k&iacute;ch th&iacute;ch vị gi&aacute;c, ăn nhiều m&agrave; kh&ocirc;ng bị ng&aacute;n. Sản phẩm ph&ugrave; hợp cho người bận rộn nhưng vẫn cung cấp đầy đủ chất dinh dưỡng cho gia đ&igrave;nh.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Thương hiệu</td>\r\n			<td>\r\n			<p>Masan (Việt Nam)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nơi sản xuất</td>\r\n			<td>\r\n			<p>Việt Nam</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khối lượng tịnh</td>\r\n			<td>\r\n			<p>200g</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khối lượng thịt</td>\r\n			<td>\r\n			<p>100g</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>C&aacute;ch d&ugrave;ng</td>\r\n			<td>\r\n			<p>Ăn trực tiếp hoặc ăn k&egrave;m cơm, b&aacute;nh m&igrave;, trộn salad</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khuy&ecirc;n d&ugrave;ng</td>\r\n			<td>\r\n			<p>Ngon hơn khi h&acirc;m n&oacute;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Th&agrave;nh phần</td>\r\n			<td>\r\n			<p>Thịt, nước, dầu thực vật, gia vị, nấm hương,...</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo quản</td>\r\n			<td>\r\n			<p>Nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp. Bảo quản lạnh sau khi mở nắp, n&ecirc;n d&ugrave;ng hết trong ng&agrave;y</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>B&agrave;i viết sản phẩm</p>\r\n\r\n<p><a href=\"https://www.bachhoaxanh.com/thit-heo-hop/heo-cao-boi-thit-vien-3-phut\" target=\"_blank\">Thịt heo vi&ecirc;n 3 ph&uacute;t Heo Cao Bồi hộp 200g</a>&nbsp;l&agrave; sản phẩm nổi tiếng v&agrave; b&aacute;n chạy của&nbsp;<a href=\"https://www.bachhoaxanh.com/thit-heo-hop-masan\" target=\"_blank\">thịt heo hộp&nbsp;Masan</a>. Với những nguy&ecirc;n liệu tươi ngon,&nbsp;<a href=\"https://www.bachhoaxanh.com/thit-heo-hop-heo-hop\">thịt heo hộp</a>&nbsp;sẽ cho bạn một m&oacute;n ăn vừa thơm ngon lại an to&agrave;n cho sức khỏe.<br />\r\n+ Thịt đ&atilde; nấu ch&iacute;n<br />\r\n+ &Aacute;p dụng c&ocirc;ng nghệ &quot;t&uacute;i hầm chịu nhiệt&quot;<br />\r\n+ Kh&ocirc;ng chất bảo quản</p>\r\n\r\n<p><img src=\"https://lh3.googleusercontent.com/m1DER7NijldbxjgI_3utCw0KHAjNWT3nqfUcsG7s18ACkGr4FllTrFRCM2Ig0W1-jzx1qM1SFPIwEf0NyLlt1q88S-XXKAksfP3HhOGLP_tqnZEPWLh6LqcW0YhD0W0szxsNNmtf\" /></p>\r\n\r\n<h2><strong>Thịt heo tự nhi&ecirc;n thơm ngon</strong></h2>\r\n\r\n<p>Sản phẩm sử dụng c&aacute;c th&agrave;nh phần tươi ngon gồm c&aacute;c loại thịt tươi như g&agrave; v&agrave; heo kết hợp với nước sốt rau củ tự nhi&ecirc;n vừa ngon lại đảm bảo an to&agrave;n sức khỏe cho cả gia đ&igrave;nh bạn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://lh5.googleusercontent.com/VHwcRmWQzQU8H0p5LLBofg_otlL5kSTrZb3lk7CMQCkgju4wgIdzyieJq7zw3ZuQI6rkB7KUkDF9v4oQPRXVe2NHTwhnZEpGfOQzrFHFS5e7H6hVpiRajs-J37p2od0mmiXtSevc\" /></p>\r\n\r\n<h2><strong>Độ tiện lợi từ g&oacute;i thịt vi&ecirc;n</strong></h2>\r\n\r\n<p>Kh&aacute;c với những loại&nbsp;<a href=\"https://www.bachhoaxanh.com/thit-heo-hop\" target=\"_blank\">thịt heo đ&oacute;ng hộp</a>&nbsp;kh&aacute;c, sự tiện lợi của sản phẩm đến từ g&oacute;i đựng thịt l&agrave; t&uacute;i chịu nhiệt độc đ&aacute;o c&oacute; thể chịu được nhiệt độ cao m&agrave; kh&ocirc;ng g&acirc;y ảnh hưởng đến sức khỏe của người ti&ecirc;u d&ugrave;ng.</p>\r\n\r\n<p>Bạn chỉ cần bỏ sản phẩm n&agrave;y v&agrave;o l&ograve; vi s&oacute;ng hoặc chần trong nước s&ocirc;i trong khoảng 3 ph&uacute;t l&agrave; c&oacute; thể lấy ra v&agrave; thưởng thức ngay rồi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://lh6.googleusercontent.com/B79-bVxLca5pt8cP1wucPJWspR9SPog_l-_XlYcNeRiiyIuiZE75HXVLw4UWMrhnSQz4qtyOAiblxJiLDjmgdZLrDfcp1MY9PdDvPTLsXTbuENVixe4r2hM-UdeCWMfckJQyg51Q\" /></p>\r\n\r\n<p>Sản phẩm&nbsp;ph&ugrave; hợp để kết hợp với c&aacute;c loại thực phẩm kh&aacute;c như b&aacute;nh m&igrave;, cơm, sandwich&hellip; với hương vị mặn từ thịt v&agrave; nước sốt đậm đ&agrave;, đ&acirc;y l&agrave; một m&oacute;n ăn kh&ocirc;ng thể thiếu của mọi gia đ&igrave;nh.</p>\r\n\r\n<p>Vậy nếu bạn c&ograve;n đang thắc mắc liệu&nbsp;<a href=\"https://www.bachhoaxanh.com/kinh-nghiem-hay/thit-vien-heo-cao-boi-co-ngon-khong-1310001\" target=\"_blank\">thịt vi&ecirc;n heo cao bồi c&oacute; ngon kh&ocirc;ng</a>, h&atilde;y tự trải nghiệm v&agrave; đưa ra c&acirc;u trả lời nh&eacute;.</p>\r\n', '1731832627_thit-heo-vien-3-phut-heo-cao-boi-masan-hop-200g-202203221211320211.png', 1),
(185, 'Chao đậu ăn liền Mikiri chai 120g', 23, 2, 6, 100, 0, 100, 20000, 0, '<h2>Th&ocirc;ng tin sản phẩm</h2>\r\n\r\n<p><a href=\"https://www.bachhoaxanh.com/tuong-chao-mikiri\">Chao Miriki</a>&nbsp;l&agrave; loại&nbsp;<a href=\"https://www.bachhoaxanh.com/tuong-chao\">chao</a>&nbsp;chất lượng được nhiều người lựa chọn sử dụng.&nbsp;<a href=\"https://www.bachhoaxanh.com/tuong-chao/chao-dau-an-lien-mikiri-chai-120g\">Chao đậu ăn liền Mikiri chai 120g</a>&nbsp;mang hương vị thơm ngon cho m&oacute;n ăn của bạn th&ecirc;m tr&ograve;n vị v&agrave; đậm đ&agrave;. Chao được l&agrave;m từ những th&agrave;nh phần an to&agrave;n cho người sử dụng.&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Loại</td>\r\n			<td>\r\n			<p>Chao đậu ăn liền</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khối lượng</td>\r\n			<td>\r\n			<p>120g</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Th&agrave;nh phần</td>\r\n			<td>\r\n			<p>Đậu n&agrave;nh (80%), ớt tươi, muối i ốt, rượu, chất điều vị, chất bảo quản,..</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1731832847_Chao đậu ăn liền Mikiri chai 120g.jpg', 1),
(186, 'Chao Bông Mai hũ 170g', 23, 2, 6, 100, 0, 100, 20000, 0, '<h2>Th&ocirc;ng tin sản phẩm</h2>\r\n\r\n<p>Sản phẩm c&oacute; hương vị b&eacute;o thơm đậm đ&agrave; từ những miếng đậu hũ l&ecirc;n men v&agrave; cay nồng hấp dẫn từ ớt tươi xay nhuyễn c&ugrave;ng rượu hảo hạng, cho c&aacute;c m&oacute;n luộc, nướng hay nấu trở l&ecirc;n hấp dẫn hơn bao giờ hết, k&iacute;ch th&iacute;ch khứu gi&aacute;c v&agrave; vị gi&aacute;c.&nbsp;D&ugrave;ng để chấm với c&aacute;c m&oacute;n rau luộc, thịt nướng,...</p>\r\n', '1731832917_chao-bong-mai-hu-170g-avatar-1.jpg', 1),
(187, 'Gia vị nêm sẵn nấu phở bò Aji-Quick gói 57g', 22, 2, 4, 200, 0, 100, 20000, 0, '<h2>Th&ocirc;ng tin sản phẩm</h2>\r\n\r\n<p>L&agrave; loại&nbsp;<a href=\"https://www.bachhoaxanh.com/gia-vi-nem-san-nau-pho-bun-hu-tieu\" target=\"_blank\">gia vị n&ecirc;m sẵn nấu phở</a>&nbsp;đến từ thương hiệu&nbsp;<a href=\"https://www.bachhoaxanh.com/gia-vi-nem-san-aji-quick\" target=\"_blank\">gia vị n&ecirc;m sẵn Aji-Quick</a>.&nbsp;<a href=\"https://www.bachhoaxanh.com/gia-vi-nem-san/gia-vi-pho-bo-aji-quick-goi-57g\" target=\"_blank\">Gia vị n&ecirc;m sẵn nấu phở b&ograve; Aji-Quick g&oacute;i 57g</a>&nbsp;với&nbsp;chiết xuất thịt b&ograve; c&ugrave;ng c&aacute;c loại gia vị quen thuộc, gi&uacute;p c&aacute;c b&agrave; nội trợ c&oacute; thể chế biến m&oacute;n phở b&ograve; cho cả gia đ&igrave;nh một c&aacute;ch nhanh ch&oacute;ng với hương vị đậm đ&agrave;.</p>\r\n', '1731833085_Gia vị nêm sẵn nấu phở bò Aji-Quick gói 57g.jpg', 1),
(188, 'Gia vị nêm sẵn lẩu Thái Fadely 50g', 22, 2, 4, 0, 0, 2000, 50000, 0, '<h2>h&ocirc;ng tin sản phẩm</h2>\r\n\r\n<p><a href=\"https://www.bachhoaxanh.com/gia-vi-nem-san-fadely\">Gia vị n&ecirc;m sẵn Fadely</a>&nbsp;l&agrave; thương hiệu&nbsp;<a href=\"https://www.bachhoaxanh.com/gia-vi-nem-san\">gia vị n&ecirc;m sẵn</a>&nbsp;mang đến sự tiện lợi trong việc nấu nướng c&aacute;c m&oacute;n ăn hằng ng&agrave;y.&nbsp;<a href=\"https://www.bachhoaxanh.com/gia-vi-nem-san/gia-vi-nem-san-lau-thai-fadely-50g\">Gia vị n&ecirc;m sẵn lẩu Th&aacute;i Fadely 50g</a>&nbsp;với đầy đủ hương vị chua chua, cay cay đặc trưng lẩu Th&aacute;i, kết hợp với c&aacute;c loại rau, thịt v&agrave; hải sản ăn k&egrave;m để m&oacute;n lẩu th&ecirc;m tr&ograve;n vị.</p>\r\n', '1731833147_Gia vị nêm sẵn lẩu Thái Fadely 50g.jpg', 1),
(189, 'Xốt nấu lẩu Thái Thuận Phát chai 250g', 22, 1, 6, 0, 0, 200000, 300000, 0, '<h2>Th&ocirc;ng tin sản phẩm</h2>\r\n\r\n<p>Được chế biến từ nguy&ecirc;n liệu đ&atilde; qua chọn lọc kĩ lưỡng c&ugrave;ng c&ocirc;ng thức đặc biệt, mang tới hương vị lẩu Th&aacute;i truyền thống chua cay k&iacute;ch th&iacute;ch vị gi&aacute;c cũng như đảm bảo an to&agrave;n cho sức khỏe,&nbsp;gi&uacute;p người nội trợ tiết kiệm được thời gian cũng như chi ph&iacute; d&agrave;nh cho việc nấu nướng.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Loại sản phẩm</td>\r\n			<td>\r\n			<p>Xốt lẩu Th&aacute;i</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khối lượng</td>\r\n			<td>\r\n			<p>250g</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Th&agrave;nh phần</td>\r\n			<td>\r\n			<p>Nước đường (9,3%), ớt (6,2%), tỏi (4,7%), me (4,7%), sả (3,3%), muối i-ốt, dầu m&egrave;, hạt m&egrave;, l&aacute; chanh, chất điều vị (621, 631, 627, 640, 950), chất điều chỉnh độ acid (260), chất bảo quản (202, 211), chất ổn định (415, 466, 1422)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Lượng d&ugrave;ng</td>\r\n			<td>\r\n			<p>1 chai 250g nấu với 1,3 l&iacute;t nước</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>C&aacute;ch d&ugrave;ng</td>\r\n			<td>\r\n			<p>Cho 250g sốt v&agrave;o 1,3 l&iacute;t nước đang s&ocirc;i, khuấy đều. Th&ecirc;m thịt, c&aacute;, t&ocirc;m, mực, rau...tuỳ th&iacute;ch</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo quản</td>\r\n			<td>\r\n			<p>Để nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t. D&ugrave;ng hết trong v&ograve;ng 7 ng&agrave;y sau khi mở nắp</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thương hiệu</td>\r\n			<td>\r\n			<p>Thuận Ph&aacute;t (Việt Nam)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nơi sản xuất</td>\r\n			<td>\r\n			<p>Việt Nam</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1731833217_Xốt nấu lẩu Thái Thuận Phát chai 250g.png', 1),
(190, 'Hạt nêm cao cấp Maggi gói 400g', 22, 1, 4, 150, 0, 10000, 300000, 0, '<h2>Th&ocirc;ng tin sản phẩm</h2>\r\n\r\n<p><a href=\"https://www.bachhoaxanh.com/hat-nem-hat-nem-xuong-thit\" target=\"_blank\">Hạt n&ecirc;m</a>&nbsp;của thương hiệu&nbsp;<a href=\"https://www.bachhoaxanh.com/hat-nem-maggi-hat-nem-xuong-thit\" target=\"_blank\">hạt n&ecirc;m Maggi</a>&nbsp;c&oacute;&nbsp;th&agrave;nh phần được&nbsp;chọn lọc kỹ c&agrave;ng. Sản phẩm&nbsp;<a href=\"https://www.bachhoaxanh.com/hat-nem/hat-nem-cao-cap-maggi-goi-400g\" target=\"_blank\">hạt n&ecirc;m cao cấp Maggi g&oacute;i 400g</a>&nbsp;với gia vị tự nhi&ecirc;n, gấp đ&ocirc;i thịt xương tủy, cho vị ngọt đậm đ&agrave; đ&uacute;ng chuẩn nước d&ugrave;ng được hầm trong nhiều giờ.</p>\r\n', '1731833311_hat-nem-cao-cap-maggi-goi-400g-202209081724078340.jpg', 1),
(191, 'Nước mắm Barona Đại Nhất 12 độ đạm chai 750ml', 22, 2, 0, 100, 0, 10000, 200000, 0, '<h1>Nước mắm Barona Đại Nhất 12 độ đạm chai 750ml</h1>\r\n', '1731833375_Nước mắm Barona Đại Nhất 12 độ đạm chai 750ml.png', 1),
(192, 'Dưa lưới tròn ruột cam trái từ 1 - 2kg', 3, 2, 3, 1199, 1, 100, 7500000, 0, '<h1>Dưa lưới tr&ograve;n ruột cam tr&aacute;i từ 1 - 2kg</h1>\r\n', '1731833531_Dưa lưới tròn ruột cam trái từ 1 - 2kg.jpg', 1),
(193, 'Cam sành trái từ 130g trở lên', 3, 0, 3, 100, 0, 10000, 30000, 0, '', '1731846818_Cam sành trái từ 130g trở lên.jpg', 1),
(194, 'Cam vàng nhập khẩu Úc', 0, 2, 3, 100, 0, 10000, 300000, 10, '<h1>Cam v&agrave;ng nhập khẩu &Uacute;c</h1>\r\n', '1731846895_cam-vang-valencia-nhap-khau-uc-202312081340557167.jpg', 1),
(195, 'Bưởi da xanh trái từ 1kg trở lên', 3, 1, 3, 100, 0, 10000, 500000, 5, '', '1731846968_Bưởi da xanh trái từ 1kg trở lên.jpg', 1),
(196, 'Chuối già giống Nam Mỹ trái từ 120 - 220g', 3, 2, 3, 100, 0, 100, 92000, 5, '', '1731847046_Chuối già giống Nam Mỹ trái từ 120 - 220g.jpg', 1),
(197, 'Cải bẹ dún', 2, 1, 5, 100, 0, 100, 10000, 3, '', '1731847171_Cải bẹ dún.jpg', 1),
(198, 'Hành lá khoảng 100g', 0, 1, 5, 100, 0, 100, 6000, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Loại sản phẩm</td>\r\n			<td>\r\n			<p>H&agrave;nh l&aacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nơi sản xuất</td>\r\n			<td>\r\n			<p>Việt Nam</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khối lượng</td>\r\n			<td>\r\n			<p>Khoảng 100g. Sản phẩm c&oacute; hao hụt tự nhi&ecirc;n, ch&ecirc;nh lệch khối lượng +/- 10%</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hướng dẫn sử dụng</td>\r\n			<td>\r\n			<p>Rửa sạch, để r&aacute;o nước trước khi ăn hoặc chế biến</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo quản</td>\r\n			<td>\r\n			<p>Nhiệt độ tho&aacute;ng m&aacute;t, tốt nhất l&agrave; ở nhiệt độ từ 4 - 10 độ C</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1731847435_hanh-la-100g-202401101351257640.jpg', 1),
(199, 'Rau ngót khoảng 250g', 2, 1, 5, 100, 0, 100, 8000, 0, '', '1731847301_rau-ngot-250gr-202401101419097447.jpg', 1),
(200, 'Bắp cải trắng bắp từ 700g trở lên', 0, 1, 5, 100, 0, 100, 8000, 0, '', '1731847425_Bắp cải trắng bắp từ 700g trở lên.png', 1),
(201, 'Cà rốt trái từ 150g trở lên', 2, 1, 5, 200, 0, 20000, 8000, 0, '', '1731847402_Cà rốt trái từ 150g trở lên.jpg', 1),
(202, 'Sườn non heo nhập khẩu Đức 1kg', 1, 0, 0, 20, 0, 20000, 10000, 2, '', '1731847507_Sườn non heo nhập khẩu Đức 1kg.jpg', 1),
(203, 'Sườn non heo C.P 500g (4-6 miếng)', 1, 2, 5, 200, 0, 20000, 30000, 5, '', '1731847581_Sườn non heo C.P 500g (4-6 miếng).jpg', 1),
(204, 'Bắp bò', 1, 1, 5, 100, 0, 20000, 60000, 0, '', '1731847664_Bắp bò.jpg', 1),
(205, 'Thịt vụn bò', 1, 2, 5, 100, 0, 20000, 50000, 0, '', '1731847716_Thịt vụn bò.jpg', 1),
(206, 'Cá lóc làm sạch 500g', 1, 1, 5, 100, 0, 20000, 8000, 0, '', '1731847799_Cá lóc làm sạch 500g.jpg', 1),
(207, 'Cá basa cắt lát', 1, 1, 0, 100, 0, 7000, 30000, 0, '', '1731847848_Cá basa cắt lát.jpg', 1),
(208, 'Trứng gà hộp 10 quả (giao ngẫu nhiên thương hiệu)', 1, 2, 0, 100, 0, 1000000, 10000, 10, '', '1731847926_Trứng gà hộp 10 quả (giao ngẫu nhiên thương hiệu).jpg', 1),
(209, 'Trứng gà ta hộp 6 quả (giao ngẫu nhiên thương hiệu)', 1, 0, 4, 100, 0, 7000, 8000, 10, '', '1731847971_Trứng gà ta hộp 6 quả (giao ngẫu nhiên thương hiệu).jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vnpay`
--

CREATE TABLE `vnpay` (
  `vnp_id` int(11) NOT NULL,
  `vnp_amount` varchar(50) NOT NULL,
  `vnp_bankcode` varchar(50) NOT NULL,
  `vnp_banktranno` varchar(50) NOT NULL,
  `vnp_cardtype` varchar(50) NOT NULL,
  `vnp_orderinfo` varchar(100) NOT NULL,
  `vnp_paydate` varchar(50) NOT NULL,
  `vnp_tmncode` varchar(50) NOT NULL,
  `vnp_transactionno` varchar(50) NOT NULL,
  `order_code` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`) USING BTREE;

--
-- Chỉ mục cho bảng `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`) USING BTREE;

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`) USING BTREE;

--
-- Chỉ mục cho bảng `capacity`
--
ALTER TABLE `capacity`
  ADD PRIMARY KEY (`capacity_id`) USING BTREE;

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`) USING BTREE;

--
-- Chỉ mục cho bảng `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`collection_id`) USING BTREE;

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`) USING BTREE;

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`) USING BTREE;

--
-- Chỉ mục cho bảng `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`delivery_id`) USING BTREE;

--
-- Chỉ mục cho bảng `evaluate`
--
ALTER TABLE `evaluate`
  ADD PRIMARY KEY (`evaluate_id`) USING BTREE;

--
-- Chỉ mục cho bảng `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`) USING BTREE;

--
-- Chỉ mục cho bảng `inventory_detail`
--
ALTER TABLE `inventory_detail`
  ADD PRIMARY KEY (`inventory_detail_id`) USING BTREE;

--
-- Chỉ mục cho bảng `metrics`
--
ALTER TABLE `metrics`
  ADD PRIMARY KEY (`metric_id`) USING BTREE;

--
-- Chỉ mục cho bảng `momo`
--
ALTER TABLE `momo`
  ADD PRIMARY KEY (`momo_id`) USING BTREE;

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`) USING BTREE,
  ADD KEY `lkkn` (`account_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`) USING BTREE;

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`) USING BTREE;

--
-- Chỉ mục cho bảng `vnpay`
--
ALTER TABLE `vnpay`
  ADD PRIMARY KEY (`vnp_id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `capacity`
--
ALTER TABLE `capacity`
  MODIFY `capacity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `collection`
--
ALTER TABLE `collection`
  MODIFY `collection_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `evaluate`
--
ALTER TABLE `evaluate`
  MODIFY `evaluate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `inventory_detail`
--
ALTER TABLE `inventory_detail`
  MODIFY `inventory_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `metrics`
--
ALTER TABLE `metrics`
  MODIFY `metric_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `momo`
--
ALTER TABLE `momo`
  MODIFY `momo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT cho bảng `vnpay`
--
ALTER TABLE `vnpay`
  MODIFY `vnp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `lkkn` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
