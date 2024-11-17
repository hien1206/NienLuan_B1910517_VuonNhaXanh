-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 17, 2024 lúc 04:48 PM
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

--
-- Đang đổ dữ liệu cho bảng `article`
--

INSERT INTO `article` (`article_id`, `article_author`, `article_title`, `article_summary`, `article_content`, `article_image`, `article_date`, `article_status`) VALUES
(91, 'huỳnh trọng hiển', 'Yuzu Cheesecake – bánh kem phô mai vị chanh yuzu', '<p>H&ocirc;m nay m&igrave;nh muốn chia sẻ chiếc b&aacute;nh yuzu cheesecake m&igrave;nh mới l&agrave;m tuần trước, khoe ảnh l&ecirc;n fb c&aacute; nh&acirc;n th&igrave; c&oacute; bạn muốn m&igrave;nh đăng c&ocirc;ng thức l&ecirc;n blog, vậy n&ecirc;n m&igrave;nh quyết định vượt lười để viết 😀 B&aacute;nh c&oacute; vị chua ngọt thanh m&aacute;t rất vừa miệng, ngo&agrave;i ra do c&oacute; vị yuzu n&ecirc;n b&aacute;nh c&oacute; vị thơm đặc biệt, hi vọng l&agrave; c&aacute;c bạn t&igrave;m mua được hũ mứt yuzu hoặc chanh tươi để thử một lần cho biết. Cảm gi&aacute;c n&oacute; sảng kho&aacute;i lắm 🙂</p>\r\n', '<h1>Yuzu Cheesecake &ndash; b&aacute;nh kem ph&ocirc; mai vị chanh yuzu</h1>\r\n\r\n<p>By<a href=\"https://mykitchies.com/author/steinerfoxx/\">Thủy Phạm</a>April 26, 2023</p>\r\n\r\n<p>Ch&agrave;o cả nh&agrave;, đ&atilde; một thời gian kh&aacute; d&agrave;i m&igrave;nh kh&ocirc;ng viết blog nữa. Sau khi chuyển sang London sống, b&ecirc;n cạnh c&ocirc;ng việc ch&iacute;nh l&agrave; văn ph&ograve;ng 9-5, m&igrave;nh bắt đầu tập t&agrave;nh l&agrave;m b&aacute;nh v&agrave; kinh doanh b&aacute;nh sinh nhật b&aacute;n thời gian . Ngo&agrave;i việc cuộc sống bận rộn th&ecirc;m th&igrave; ở đ&acirc;y m&igrave;nh thấy gia vị ch&acirc;u &Aacute; hơi kh&oacute; t&igrave;m v&agrave; &iacute;t phong ph&uacute; hơn ở Đức, đặc biệt l&agrave; đồ Th&aacute;i, di chuyển t&igrave;m kiếm giữa th&agrave;nh phố rộng lớn n&agrave;y cũng khiến m&igrave;nh hơi lười. Do đ&oacute; m&igrave;nh đ&atilde; ngừng viết v&igrave; đang kh&ocirc;ng c&oacute; &yacute; tưởng l&agrave;m m&oacute;n g&igrave;. M&igrave;nh hi vọng ng&agrave;y n&agrave;o đ&oacute; m&igrave;nh lại lấy lại được cảm hứng v&agrave;o bếp v&agrave; lại được chia sẻ c&ugrave;ng c&aacute;c bạn đọc những m&oacute;n ăn hay ho. Hiện tại th&igrave; m&igrave;nh vẫn duy tr&igrave; blog đều đặn chứ sẽ kh&ocirc;ng đ&oacute;ng, l&acirc;u l&acirc;u c&oacute; m&oacute;n g&igrave; hay ho nhất định m&igrave;nh sẽ chia sẻ c&ugrave;ng c&aacute;c bạn.</p>\r\n\r\n<p>H&ocirc;m nay m&igrave;nh muốn chia sẻ chiếc b&aacute;nh yuzu cheesecake m&igrave;nh mới l&agrave;m tuần trước, khoe ảnh l&ecirc;n fb c&aacute; nh&acirc;n th&igrave; c&oacute; bạn muốn m&igrave;nh đăng c&ocirc;ng thức l&ecirc;n blog, vậy n&ecirc;n m&igrave;nh quyết định vượt lười để viết 😀 B&aacute;nh c&oacute; vị chua ngọt thanh m&aacute;t rất vừa miệng, ngo&agrave;i ra do c&oacute; vị yuzu n&ecirc;n b&aacute;nh c&oacute; vị thơm đặc biệt, hi vọng l&agrave; c&aacute;c bạn t&igrave;m mua được hũ mứt yuzu hoặc chanh tươi để thử một lần cho biết. Cảm gi&aacute;c n&oacute; sảng kho&aacute;i lắm 🙂</p>\r\n\r\n<p>Yuzu l&agrave; d&ograve;ng chanh xuất xứ xa xưa từ Trung Quốc, nhưng n&oacute; lại rất phổ biến v&agrave; l&agrave; gia vị y&ecirc;u th&iacute;ch của Nhật Bản. Chanh yuzu c&oacute; thể được sử dụng l&uacute;c c&ograve;n xanh hoặc đ&atilde; ch&iacute;n v&agrave;ng, quả c&oacute; vỏ hơi sần s&ugrave;i, nhỏ hơn quả bi-da một ch&uacute;t. Chanh yuzu c&oacute; vị chua, nhưng kh&ocirc;ng qu&aacute; gắt, c&oacute; hậu vị hơi thơm giống họ qu&yacute;t v&agrave; bưởi, tinh dầu trong quả yuzu tạo ra m&ugrave;i hương đặc biệt, thường được d&ugrave;ng trong ẩm thực v&iacute; dụ như l&agrave;m sốt, đồ uống, b&aacute;nh tr&aacute;i, tr&agrave; v&agrave; sản xuất nước hoa&hellip;</p>\r\n\r\n<p>Yuzu tr&ecirc;n thị trường kh&aacute; đắt v&agrave; hơi hiếm, do nhu cầu sử dụng cao nhưng nguồn cung lại chưa đủ. C&acirc;y yuzu thường được trồng ở Đ&ocirc;ng &Aacute; v&agrave; kh&oacute; canh t&aacute;c ở những v&ugrave;ng đất kh&aacute;c, cần kh&aacute; nhiều năm để c&acirc;y ra quả. Hơn nữa nước trong yuzu kh&aacute; &iacute;t, để kh&ocirc;ng l&agrave;m hư hại tr&aacute;i yuzu người ta phải thu hoạch quả bằng tay m&agrave; gi&aacute; nh&acirc;n c&ocirc;ng kh&ocirc;ng hề rẻ, do đ&oacute; gi&aacute; th&agrave;nh yuzu bị đội l&ecirc;n rất nhiều. C&aacute;ch dễ t&igrave;m hơn l&agrave; bạn c&oacute; thể t&igrave;m mua nước cốt yuzu đ&oacute;ng chai, v&agrave; nếu pha tr&agrave; l&agrave;m b&aacute;nh th&igrave; mua hũ mứt yuzu (yuzu honey) (chắc ở ch&acirc;u &Acirc;u đ&acirc;y l&agrave; c&aacute;ch duy nhất), d&ugrave; n&oacute; vẫn đắt so với c&aacute;c hũ mứt quả kh&aacute;c.</p>\r\n\r\n<p>V&igrave; đ&acirc;y l&agrave; c&ocirc;ng thức ph&aacute;t sinh n&ecirc;n m&igrave;nh kh&ocirc;ng c&oacute; ảnh hướng dẫn c&aacute;ch l&agrave;m cho c&aacute;c bạn, mong c&aacute;c bạn th&ocirc;ng cảm. C&aacute;ch l&agrave;m cũng sẽ tương tự như cheesecake xo&agrave;i hay chanh leo th&ocirc;i nh&eacute; 😀</p>\r\n\r\n<p><img alt=\"\" src=\"https://mykitchies.files.wordpress.com/2023/04/fresh-japanese-yuzu-1-1.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://mykitchies.files.wordpress.com/2023/04/japanese-citrus-yuzu-4-1-1.jpg\" /></p>\r\n\r\n<p>Source ảnh: White on rice couple</p>\r\n\r\n<p><strong>C&Ocirc;NG THỨC:</strong></p>\r\n\r\n<p>&ndash; B&aacute;nh sẽ gồm c&oacute; 4 lớp: lớp b&aacute;nh quy l&agrave;m đế, lớp kem cheese, lớp thạch yuzu nh&acirc;n giữa v&agrave; lớp thạch chanh tr&ecirc;n c&ugrave;ng.</p>\r\n\r\n<p>C&ocirc;ng thức n&agrave;y &aacute;p dụng cho khu&ocirc;n ring 15cm, c&ograve;n lớp thạch nh&acirc;n giữa l&agrave; 12cm nh&eacute;.</p>\r\n\r\n<p><strong>A.</strong>Lớp b&aacute;nh quy l&agrave;m đế:</p>\r\n\r\n<ul>\r\n	<li>80gr b&aacute;nh quy bơ sữa cơ bản (digestive biscuit), ở Vn c&oacute; thể d&ugrave;ng b&aacute;nh quy sữa Cosy Marie</li>\r\n	<li>40gr bơ đun chảy</li>\r\n</ul>\r\n\r\n<p><strong>B</strong>.Lớp thạch yuzu nh&acirc;n giữa:</p>\r\n\r\n<ul>\r\n	<li>khu&ocirc;n ring 12cm</li>\r\n	<li>100gr mứt yuzu (yuzu honey)</li>\r\n	<li>120gr nước n&oacute;ng</li>\r\n	<li>5-10gr nước cốt chanh (ai th&iacute;ch chua th&igrave; cho nhiều)</li>\r\n	<li>8gr bột gelatin (hoặc l&aacute;)</li>\r\n</ul>\r\n\r\n<p><strong>C</strong>.Lớp kem cheese:</p>\r\n\r\n<ul>\r\n	<li>khu&ocirc;n ring 15cm</li>\r\n	<li>200gr creamcheese (ở UK m&igrave;nh thấy n&oacute; ghi l&agrave; soft cheese)</li>\r\n	<li>40gr đường</li>\r\n	<li>15gr mứt yuzu</li>\r\n	<li>40gr sữa chua kh&ocirc;ng đường (plain yogurt, kh&ocirc;ng phải sữa chua Hy Lạp nha)</li>\r\n	<li>5gr gelatin bột</li>\r\n	<li>120gr whipped cream (kem tươi &ndash; đ&aacute;nh b&ocirc;ng khoảng 50%)</li>\r\n	<li>&iacute;t vỏ chanh v&agrave;ng b&agrave;o (t&ugrave;y chọn, gi&uacute;p cho b&aacute;nh thơm hơn)</li>\r\n</ul>\r\n\r\n<p><strong>D</strong>.Lớp thạch chanh tr&ecirc;n c&ugrave;ng: (t&ugrave;y chọn, kh&ocirc;ng bắt buộc, c&oacute; th&igrave; đẹp mắt v&agrave; ngon hơn v&igrave; n&oacute; chua)</p>\r\n\r\n<ul>\r\n	<li>100gr chanh tươi, b&oacute;c m&uacute;i chỉ lấy t&eacute;p, nếu kh&ocirc;ng c&oacute; yuzu th&igrave; d&ugrave;ng chanh xanh (lime) cho thơm nh&eacute;</li>\r\n	<li>40gr đường</li>\r\n	<li>50gr nước</li>\r\n	<li>5gr gelatin (bột hoặc l&aacute;)</li>\r\n	<li>10gr mứt yuzu (t&ugrave;y chọn, hoặc thay bằng 10gr đường)</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://mykitchies.files.wordpress.com/2023/04/img_4407.jpg?w=768\" /></p>\r\n\r\n<p>Yuzu Honey, tr&aacute;nh mua nhầm mứt chanh th&ocirc;ng thường nh&eacute; (phải c&oacute; chữ Yuzu)</p>\r\n\r\n<p><strong>LƯU &Yacute;:</strong></p>\r\n\r\n<ul>\r\n	<li>C&aacute;c bạn c&oacute; thể d&ugrave;ng cốt b&ocirc;ng lan l&agrave;m đế thay cho b&aacute;nh quy nếu th&iacute;ch, nhưng m&igrave;nh thẩy đế b&aacute;nh quy ngon hơn v&igrave; tổng quan b&aacute;nh mềm c&oacute; ch&uacute;t vụn b&aacute;nh quy gi&ograve;n thơm m&ugrave;i bơ sữa ở cuối ăn kh&aacute; hợp.</li>\r\n	<li>Nếu kh&ocirc;ng c&oacute; gelatin, m&igrave;nh nghĩ bột thạch dẻo l&agrave; sự thay thế hợp l&yacute;, agar cũng c&oacute; t&aacute;c dụng l&agrave;m đ&ocirc;ng nhưng thạch ăn sẽ gi&ograve;n chứ kh&ocirc;ng dẻo như d&ugrave;ng gelatin, n&ecirc;n sẽ kh&ocirc;ng hợp bằng.</li>\r\n	<li>Với b&aacute;nh cheesecake chanh yuzu, nếu kh&ocirc;ng c&oacute; mứt yuzu c&aacute;c bạn c&oacute; thể d&ugrave;ng chanh v&agrave;ng chanh xanh thay thế, d&ugrave; b&aacute;nh sẽ kh&ocirc;ng c&oacute; vị thơm đặc trưng của yuzu nhưng kh&ocirc;ng c&oacute; nghĩa l&agrave; kh&ocirc;ng ngon nh&eacute;, vị chua của lớp thạch tr&ecirc;n c&ugrave;ng c&ugrave;ng với vị ngọt của kem cheese ở giữa sẽ gi&uacute;p b&aacute;nh cheesecake tuy ngậy nhưng kh&ocirc;ng hề ngấy v&agrave; đơn điệu.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>C&Aacute;CH L&Agrave;M:</strong></p>\r\n\r\n<ol>\r\n	<li>Creamcheese c&aacute;c bạn đem ra để nhiệt độ ph&ograve;ng cho mềm</li>\r\n	<li>L&agrave;m thạch yuzu nh&acirc;n giữa: D&ugrave;ng m&agrave;ng bọc thực phẩm bọc đ&aacute;y khu&ocirc;n ring 12cm, sau đ&oacute; d&ugrave;ng giấy bạc bọc ngo&agrave;i lần nữa để khi đổ nước v&agrave;o sẽ kh&ocirc;ng bị tr&agrave;n. Sau đ&oacute; cho khu&ocirc;n ring l&ecirc;n đĩa/khay phẳng.<br />\r\n	&ndash; Cho 120gr nước n&oacute;ng v&agrave;o 8gr bột gelatin (hoặc l&aacute; đ&atilde; ng&acirc;m nở rồi vớt ra), quẩy cho bột tan, sau đ&oacute; cho mứt yuzu v&agrave;o quấy đều, n&ecirc;m nếm rồi cho nước cốt chanh theo khẩu vị. (Do m&igrave;nh c&oacute; lớp thạch tr&ecirc;n c&ugrave;ng chua rồi n&ecirc;n phần mứt n&agrave;y chủ yếu l&agrave; sẽ thơm v&agrave; ngọt, &iacute;t chua hơn)<br />\r\n	&ndash; Sau khi quấy đều, đổ hỗn hợp v&agrave;o khu&ocirc;n ring, bọc m&agrave;ng thực phẩm lại v&agrave; cho v&agrave;o tủ m&aacute;t tới khi thạch đ&ocirc;ng (khoảng 1-2 tiếng)</li>\r\n	<li>L&agrave;m lớp đế b&aacute;nh quy: B&aacute;nh quy cho v&agrave;o t&uacute;i ziplock rồi d&ugrave;ng ch&agrave;y đập vụn, hoặc xay m&aacute;y l&agrave; nhanh v&agrave; đều nhất. Cho bơ đun chảy v&agrave;o trộn đều. Đặt khu&ocirc;n ring 15cm l&ecirc;n đĩa tr&ograve;n, nếu đặt l&ecirc;n khay th&igrave; n&ecirc;n bọc đ&aacute;y bằng m&agrave;ng bọc thực phẩm để c&oacute; thể tiện cho ra đĩa tr&igrave;nh b&agrave;y l&uacute;c sau, nếu bạn d&ugrave;ng khu&ocirc;n b&aacute;nh đ&atilde; c&oacute; đế rời sẵn th&igrave; kh&ocirc;ng cần nh&eacute;. Sau đ&oacute; cho b&aacute;nh quy v&agrave;o khu&ocirc;n ring v&agrave; d&agrave;n đều, &eacute;m thật chặt v&agrave; phẳng.</li>\r\n	<li>L&agrave;m hỗn hợp kem cheese: D&ugrave;ng phới lồng quấy cho creamcheese lo&atilde;ng ra, sau đ&oacute; cho đường v&agrave; mứt yuzu v&agrave;o quấy cho đường tan. Tiếp đ&oacute; cho sữa chua v&agrave;o quấy. Rồi cho gelatin v&agrave;o (gelatin bột cho ch&uacute;t nước v&agrave;o ng&acirc;m nở rồi quay l&ograve; vi s&oacute;ng cho chảy). Cuối c&ugrave;ng cho kem tươi (whip cream) đ&atilde; đ&aacute;nh b&ocirc;ng nhẹ (s&ugrave;i b&ocirc;ng l&ecirc;n rất nhẹ nhưng c&ograve;n rất lỏng như s&uacute;p) v&agrave; &iacute;t vỏ chanh b&agrave;o nếu c&oacute;. D&ugrave;ng phới lồng quấy đều ta được hỗn hợp lỏng v&agrave; hơi s&aacute;nh.</li>\r\n	<li>Đổ một nửa số kem cheese v&agrave;o khu&ocirc;n ring, cấp đ&ocirc;ng khoảng 20 ph&uacute;t. Số kem cheese c&ograve;n lại ta để nhiệt độ ph&ograve;ng.</li>\r\n	<li>Sau khi kem đ&ocirc;ng nhẹ, lấy ra v&agrave; cho thạch yuzu ở bước 2 v&agrave;o. Đổ nốt số kem cheese c&ograve;n lại, bọc k&iacute;n để tủ m&aacute;t tầm 2 tiếng.</li>\r\n	<li>L&agrave;m lớp thạch chanh tr&ecirc;n c&ugrave;ng:<br />\r\n	&ndash; Chanh gọt vỏ, t&aacute;ch lấy t&eacute;p. Sau đ&oacute; cho 40gr đường v&agrave; mứt yuzu v&agrave;o rim ở lửa vừa cho đường tan, đảo nhẹ kh&ocirc;ng dằm n&aacute;t m&uacute;i chanh nh&eacute;. Đun cho tới khi s&ocirc;i, sau đ&oacute; cho 50gr nước v&agrave;o, giảm ở mức lửa nhỏ nhất v&agrave; cho gelatin l&aacute; đ&atilde; ng&acirc;m nở v&agrave;o (hoặc bột đ&atilde; đun chảy), quậy khoảng 5-10s cho gelatin tan. Tắt bếp v&agrave; đợi hỗn hợp nguội, hơi ấm nhẹ th&igrave; đổ v&agrave;o khu&ocirc;n ring.</li>\r\n	<li>Cắt v&agrave;i l&aacute;t chanh mỏng xếp l&ecirc;n trang tr&iacute; nếu th&iacute;ch. Bọc khu&ocirc;n k&iacute;n v&agrave; để tủ m&aacute;t qua đ&ecirc;m.</li>\r\n	<li>Lấy b&aacute;nh: d&ugrave;ng m&aacute;y sấy t&oacute;c hoặc kh&ograve; l&agrave;m n&oacute;ng quanh khu&ocirc;n rồi r&uacute;t nhẹ ra, hoặc hơ n&oacute;ng dao rồi d&ugrave;ng dao l&oacute;c b&aacute;nh ra. Sau đ&oacute; l&agrave; thưởng thức c&ugrave;ng t&aacute;ch tr&agrave;, ta n&oacute;i n&oacute; ph&ecirc; g&igrave; đ&acirc;u 😀</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Vậy l&agrave; chiếc b&aacute;nh cheesecake yuzu đ&atilde; ho&agrave;n th&agrave;nh, ch&uacute;c c&aacute;c bạn l&agrave;m th&agrave;nh c&ocirc;ng v&agrave; c&oacute; m&oacute;n b&aacute;nh ngon đ&atilde;i bạn b&egrave; nh&eacute;!</p>\r\n', '1731857932_img_4308-1152x1536.png', '2024-11-17', 1),
(92, 'huỳnh trọng hiển', 'Gà tần thuốc bắc đơn giản thơm ngon', '<p>Vậy l&agrave; chuyến đi về Việt Nam 1 th&aacute;ng thăm gia đ&igrave;nh đ&atilde; kết th&uacute;c, m&igrave;nh lại quay trở lại với m&aacute;ng lợn. Kh&ocirc;ng b&uacute;n phở kh&ocirc;ng ch&ocirc;m ch&ocirc;m vải m&iacute;t hay nước dừa tươi T.T Nhưng b&ugrave; lại m&igrave;nh đ&atilde; x&aacute;ch được kha kh&aacute; chiến lợi phẩm l&ugrave;ng được từ shopee, chủ yếu l&agrave; ấm ch&eacute;n b&igrave;nh hoa gốm sứ, phụ kiện chụp ảnh, khay gỗ gi&aacute; gỗ v&acirc;n v&acirc;n v&agrave; m&acirc;y m&acirc;y c&aacute;i g&igrave; cũng c&oacute; vừa đẹp vừa rẻ&hellip; Phải c&ocirc;ng nhận Việt Nam đ&uacute;ng l&agrave; thi&ecirc;n đường, tự h&agrave;o l&agrave; người Việt Nam qu&aacute; điiiii.</p>\r\n', '<p>Vậy l&agrave; chuyến đi về Việt Nam 1 th&aacute;ng thăm gia đ&igrave;nh đ&atilde; kết th&uacute;c, m&igrave;nh lại quay trở lại với m&aacute;ng lợn. Kh&ocirc;ng b&uacute;n phở kh&ocirc;ng ch&ocirc;m ch&ocirc;m vải m&iacute;t hay nước dừa tươi T.T Nhưng b&ugrave; lại m&igrave;nh đ&atilde; x&aacute;ch được kha kh&aacute; chiến lợi phẩm l&ugrave;ng được từ shopee, chủ yếu l&agrave; ấm ch&eacute;n b&igrave;nh hoa gốm sứ, phụ kiện chụp ảnh, khay gỗ gi&aacute; gỗ v&acirc;n v&acirc;n v&agrave; m&acirc;y m&acirc;y c&aacute;i g&igrave; cũng c&oacute; vừa đẹp vừa rẻ&hellip; Phải c&ocirc;ng nhận Việt Nam đ&uacute;ng l&agrave; thi&ecirc;n đường, tự h&agrave;o l&agrave; người Việt Nam qu&aacute; điiiii.</p>\r\n\r\n<p>M&oacute;n đầu ti&ecirc;n sau khi quay trở lại xứ sở sương m&ugrave; l&agrave; g&agrave; tần thuốc bắc. &Ocirc;ng chồng ốm n&ecirc;n th&ocirc;i th&igrave; m&igrave;nh l&agrave;m. Nguy&ecirc;n liệu c&oacute; thể mua g&oacute;i sẵn hoặc tự bi&ecirc;n tự diễn. Nếu mua g&oacute;i sẵn hoặc ra quầy thuốc bắc th&igrave; c&aacute;c bạn c&oacute; thể t&igrave;m được đủ loại, c&ograve;n nếu ở nh&agrave; tự nấu th&igrave; m&igrave;nh thấy chỉ cần c&oacute; sương sương như t&aacute;o đỏ, kỷ tử, hạt sen, bo bo (&yacute; dĩ) l&agrave; c&oacute; thể nấu được rồi.</p>\r\n\r\n<p>Một số nguy&ecirc;n liệu m&agrave; ch&uacute;ng ta c&oacute; thể nấu chung với g&agrave; hầm th&agrave;nh m&oacute;n s&uacute;p bổ dưỡng: Hạt sen, t&aacute;o đỏ (red dates), bo bo, kỷ tử (Goji berries &ndash; gou qi), nh&atilde;n nhục (nh&atilde;n sấy kh&ocirc; bỏ hạt), t&aacute;o đỏ, ho&agrave;i sơn (Huai Shan), củ sen, đương quy (angelica root &ndash; dang qui), đẳng s&acirc;m (dang shen), ho&agrave;ng kỳ (Huang Qi &ndash; Astragalus Root)), s&acirc;m Mỹ (American gingsen), Ngọc Tr&uacute;c (Yu Zhu). G&agrave; thường l&agrave; g&agrave; &aacute;c (hay c&ograve;n gọi l&agrave; g&agrave; đen) v&igrave; ch&uacute;ng c&oacute; nhiều dinh dưỡng hơn g&agrave; th&ocirc;ng thường, tuy nhi&ecirc;n trong b&agrave;i th&igrave; m&igrave;nh d&ugrave;ng g&agrave; gi&agrave; chuy&ecirc;n nấu s&uacute;p ở b&ecirc;n n&agrave;y do kh&ocirc;ng c&oacute; g&agrave; đen. (g&agrave; gi&agrave; l&agrave; g&agrave; đ&atilde; đẻ trứng nhiều lần v&agrave; hết &ldquo;đ&aacute;t&rdquo;, si&ecirc;u thị hay b&aacute;n rẻ v&agrave; g&agrave; n&agrave;y si&ecirc;u dai ăn gần giống g&agrave; Vn nhất).</p>\r\n\r\n<p>G&agrave; tần c&oacute; t&aacute;c dụng bồi bổ sức khỏe, tăng sức đề kh&aacute;ng v&agrave; miễn dịch, c&oacute; lợi cho kh&iacute; huyết v&agrave; một số bệnh kh&aacute;c. G&agrave; tần thuốc bắc th&iacute;ch hợp cho hầu hết mọi lứa tuổi, đặc biệt cho những người cơ thể suy nhược, ốm yếu do bệnh, người mới khỏi ốm v&agrave; phụ nữ mang thai.</p>\r\n\r\n<p><strong>NGUY&Ecirc;N LIỆU:</strong></p>\r\n\r\n<p>Như đ&atilde; n&oacute;i ở tr&ecirc;n th&igrave; thường c&oacute; g&igrave; nấu nấy, dưới đ&acirc;y l&agrave; một số nguy&ecirc;n liệu m&igrave;nh d&ugrave;ng:</p>\r\n\r\n<ul>\r\n	<li>500gr thịt g&agrave; (g&agrave; &aacute;c, g&agrave; đ&ugrave;i c&ocirc;ng nghiệp, g&agrave; ta&hellip;)</li>\r\n	<li>hạt sen</li>\r\n	<li>5-6 nh&atilde;n nhục (m&igrave;nh thấy kh&ocirc;ng n&ecirc;n cho qu&aacute; nhiều v&igrave; sẽ bị ngọt)</li>\r\n	<li>t&aacute;o đỏ v&agrave;i quả</li>\r\n	<li>1 th&igrave;a ăn (tbsp) kỷ tử</li>\r\n	<li>v&agrave;i l&aacute;t đương quy</li>\r\n	<li>muối n&ecirc;m nếm hoặc hạt n&ecirc;m</li>\r\n</ul>\r\n\r\n<p><strong>C&Aacute;CH L&Agrave;M:</strong></p>\r\n\r\n<ol>\r\n	<li>Rửa sạch g&agrave; v&agrave; nguy&ecirc;n liệu. Luộc g&agrave; sơ qua rồi đổ nước đầu đi v&agrave; rửa sạch g&agrave; để nước s&uacute;p trở n&ecirc;n trong hơn, &iacute;t vẩn đục.</li>\r\n	<li>Cho g&agrave; v&agrave;o nồi chưng (hoặc nồi thường c&oacute; đế d&agrave;y ch&uacute;t, hoặc cho v&agrave;o cặp lồng đem chưng c&aacute;ch thủy trong nồi lớn), đổ nước đủ ngập g&agrave;, đun s&ocirc;i rồi hớt bọt sau đ&oacute; cho c&aacute;c nguy&ecirc;n liệu thuốc bắc v&agrave;o v&agrave; h&atilde;m lửa nhỏ vừa. N&ecirc;m nếm sơ qua v&agrave; đun khoảng 2 tiếng.</li>\r\n	<li>Khi g&agrave; mềm, cho ch&uacute;t muối theo khẩu vị. Cho ra b&aacute;t v&agrave; thưởng thức khi c&ograve;n n&oacute;ng. G&agrave; si&ecirc;u mềm v&agrave; thơm, nước d&ugrave;ng v&agrave;ng &oacute;ng v&agrave; trong.</li>\r\n</ol>\r\n\r\n<p>Ch&uacute;c c&aacute;c bạn c&oacute; m&oacute;n g&agrave; tần thơm ngon cho người m&igrave;nh y&ecirc;u thương nh&eacute;!</p>\r\n', '1731857992_1-768x1152.jpg', '2024-11-17', 1),
(93, 'huỳnh trọng hiển', 'Tản mạn về vịt quay Bắc Kinh – Độc đáo ẩm thực Trung Hoa', '', '<p>Vịt quay Bắc Kinh l&agrave; m&oacute;n nổi tiếng thế giới c&oacute; lịch sử l&acirc;u đời khoảng 600 năm v&agrave; được c&ocirc;ng nhận l&agrave; di sản ẩm thực. M&oacute;n vịt quay c&oacute; nguồn gốc xuất xừ từ thời Nam &ndash; Bắc Triều của Trung Quốc (420-589), đến khoảng cuối đời nh&agrave; Minh th&igrave; Vịt quay Bắc Kinh ra đời, tuy đặt theo t&ecirc;n Bắc Kinh nhưng thực chất lại đến từ Nam Kinh. Khoảng giữa đến cuối thời nh&agrave; Thanh th&igrave; vịt được nướng trong một c&aacute;i l&ograve; đ&oacute;ng k&iacute;n, lấy nhiệt từ th&agrave;nh của l&ograve; tỏa ra, bằng c&aacute;ch n&agrave;y th&igrave; người ta c&oacute; thể cho vịt v&agrave;o v&agrave; lấy vịt ra khỏi l&ograve; một c&aacute;ch dễ d&agrave;ng. Phương ph&aacute;p n&agrave;y đầu ti&ecirc;n được sử dụng trong bếp của cung điện vua ch&uacute;a v&agrave; m&oacute;n vịt quay Bắc Kinh trở th&agrave;nh một trong những m&oacute;n ăn ch&iacute;nh kh&ocirc;ng thể thiếu tr&ecirc;n b&agrave;n ăn của nh&agrave; vua. Về sau phương ph&aacute;p được cải tiến th&agrave;nh l&ograve; mở, treo vịt l&ecirc;n tr&ecirc;n v&agrave; gỗ đốt l&agrave; gỗ từ c&acirc;y ăn quả ko tạo ra kh&oacute;i v&agrave; tăng th&ecirc;m hương thơm m&ugrave;i gỗ hấp dẫn. M&oacute;n vịt quay Bắc Kinh d&agrave;n trở th&agrave;nh biểu tượng của Trung Quốc v&agrave; được đ&ocirc;ng đảo du kh&aacute;ch trong v&agrave; ngo&agrave;i nước y&ecirc;u th&iacute;ch.</p>\r\n\r\n<p>Để l&agrave;m được một con vịt quay đ&uacute;ng b&agrave;i bản cần trải qua 3 bước ch&iacute;nh: Đầu ti&ecirc;n phải chọn nguy&ecirc;n liệu l&yacute; tưởng, thường l&agrave; vịt nạc v&agrave; c&oacute; ch&uacute;t mỡ, v&agrave; đ&uacute;ng bản l&agrave; vịt từ Bắc Kinh, b&eacute;o v&agrave; c&oacute; m&agrave;u trắng, v&ograve;ng đời tầm 40-45 ng&agrave;y tuổi g&igrave; đ&oacute;, tầm 10-15 ng&agrave;y cuối trước khi l&ecirc;n thớt l&agrave; bị nhồi cho ăn một đống. Vịt phải nặng khoảng 3kg trước khi giết v&agrave; &iacute;t nhất 2kg sau khi l&agrave;m l&ocirc;ng. Hồi xưa nh&agrave; h&agrave;ng d&ugrave;ng vịt thật b&eacute;o để quay nhưng v&igrave; n&oacute; nhiều mỡ g&acirc;y ngấy n&ecirc;n họ chuyển sang d&ugrave;ng vịt với tỉ lệ nạc mỡ ti&ecirc;u chuẩn. Vịt nạc qu&aacute; cũng kh&ocirc;ng được v&igrave; kh&oacute; tạo ra lớp da gi&ograve;n. Tiếp theo l&agrave; bơm kh&iacute; v&agrave;o dưới da cho da t&aacute;ch khỏi lớp mỡ rồi nh&uacute;ng vịt v&agrave;o nước s&ocirc;i v&agrave; dội l&ecirc;n hỗn hợp gồm nước n&oacute;ng, mạch nha, giấm (trắng hoặc đỏ). Sau đ&oacute; phơi vịt nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t (thường l&agrave; tầm 3-4 tiếng v&agrave;o m&ugrave;a h&egrave; v&agrave; dưới quạt, m&ugrave;a đ&ocirc;ng phơi khoảng 1 ng&agrave;y) . Cuối c&ugrave;ng l&agrave; sử dụng l&ograve; mở để quay vịt, đốt bằng gỗ c&acirc;y hoa quả để tạo ra hương thơm đặc trưng cho vịt. Gỗ thường l&agrave; gỗ từ c&acirc;y t&aacute;o t&agrave;u đỏ, l&ecirc; hoặc đ&agrave;o, vừa thơm vừa kh&ocirc;ng c&oacute; kh&oacute;i. Khi nướng phải trở li&ecirc;n tục để vịt c&oacute; m&agrave;u đều v&agrave; đẹp mắt. Phần xương vịt sau khi lọc thịt c&ugrave;ng đầu, cổ, c&aacute;nh v&agrave; nội tạng sẽ được ninh với nước chắt từ vịt ra để l&agrave;m s&uacute;p, hoặc chỉ ninh với nội tạng, c&ograve;n c&aacute;c bộ phận kh&aacute;c sẽ được chi&ecirc;n x&agrave;o l&ecirc;n. Ri&ecirc;ng 1 con vịt c&oacute; thể được xắt th&agrave;nh 120 l&aacute;t thịt mỏng, mỗi miếng bao gồm cả thịt lẫn da. Một số nh&agrave; h&agrave;ng sẽ t&aacute;ch phần da ra để ăn ri&ecirc;ng với đường v&agrave; phần thịt ri&ecirc;ng. Th&agrave;nh phẩm y&ecirc;u cầu da gi&ograve;n, mỏng, m&agrave;u đỏ c&aacute;nh gi&aacute;n đẹp mắt, b&ecirc;n trong thịt mềm v&agrave; ngọt, ăn c&oacute; cảm gi&aacute;c vị b&eacute;o ngậy nhưng kh&ocirc;ng ngấy.</p>\r\n\r\n<p><img alt=\"5b21dbc11dd18Hhdu.png_e680\" src=\"https://mykitchies.files.wordpress.com/2020/06/5b21dbc11dd18hhdu.png_e680.png\" style=\"height:615px; width:680px\" /></p>\r\n\r\n<h3>Thưởng thức vịt quay Bắc Kinh đ&uacute;ng điệu:</h3>\r\n\r\n<p>C&oacute; 3 c&aacute;ch thưởng thức m&oacute;n vịt quay Bắc Kinh m&agrave; c&aacute;c bạn n&ecirc;n biết (m&igrave;nh cũng vậy, t&igrave;m hiểu xong được khai s&aacute;ng ra đủ thứ):</p>\r\n\r\n<ul>\r\n	<li>C&aacute;ch thứ nhất: c&aacute;ch n&agrave;y được cho l&agrave; c&oacute; nguồn gốc như mấy c&ocirc; tiểu thư nh&agrave; gi&agrave;u thời vua quan, do mấy chế kh&ocirc;ng th&iacute;ch ăn h&agrave;nh tỏi m&agrave; chỉ chấm da vịt với đường n&ecirc;n sau khi thấy mấy chế ăn chảnh như vậy, nh&agrave; h&agrave;ng Quanjude phải cho th&ecirc;m một đĩa nhỏ đường để phục vụ mấy chế ấy. Vậy l&agrave; c&aacute;ch ăn n&agrave;y ra đời.</li>\r\n	<li>C&aacute;ch thứ hai (kh&aacute; phổ biến): sử dụng sốt tương ngọt (<em><strong>甜面酱 ti&aacute;nmi&agrave;nji&agrave;ng</strong></em><em>)&nbsp;</em>được l&agrave;m từ bột m&igrave; v&agrave; đậu n&agrave;nh l&ecirc;n men, ăn c&ugrave;ng h&agrave;nh l&aacute; xắt sợi mỏng, dưa chuột v&agrave; c&agrave; rốt xắt th&agrave;nh cọng nhỏ (đ&ocirc;i khi c&oacute; cả củ cải ruột đỏ). Đầu ti&ecirc;n trải miếng b&aacute;nh tr&aacute;ng ra, b&aacute;nh tr&aacute;ng ở đ&acirc;y l&agrave; pancake&nbsp;<em><strong>春饼 (chunbing)</strong></em>&nbsp;mỏng v&agrave; trắng tr&ocirc;ng như b&ograve; b&iacute;a, cho &iacute;t l&aacute;t thịt l&ecirc;n, cho c&agrave; rốt, dưa chuột v&agrave; &iacute;t cọng h&agrave;nh l&ecirc;n, d&ugrave;ng đũa hoặc th&igrave;a phết ch&uacute;t sốt l&ecirc;n v&agrave; nhẹ nh&agrave;ng cuốn hai b&ecirc;n m&eacute;p lại.</li>\r\n	<li>C&aacute;ch thứ ba: gần giống c&aacute;ch thứ hai nhưng c&oacute; th&ecirc;m tỏi xay nhuyễn tăng vị thơm v&agrave; hơi cay cho m&oacute;n ăn.</li>\r\n</ul>\r\n\r\n<p>Ngo&agrave;i sốt tương ngọt th&igrave; mỗi nh&agrave; h&agrave;ng đều c&oacute; th&ecirc;m c&aacute;c loại sốt kh&aacute;c tự l&agrave;m v&agrave; m&oacute;n ăn phụ đi k&egrave;m, v&iacute; dụ như sốt mận, tỏi đập dập, b&aacute;nh vừng, rồi b&aacute;nh bao kiểu Đ&agrave;i Loan (Guabao) để kẹp thịt ăn c&ugrave;ng. V&agrave; sốt hoisin (tương đen ăn phở) c&oacute; thể được d&ugrave;ng thay thế cho sốt tương ngọt. Để tr&aacute;nh h&ocirc;i miệng sau khi ăn th&igrave; h&agrave;nh tỏi c&oacute; thể được thay thế bằng rau x&agrave; l&aacute;ch, bạc h&agrave;, hoặc cải mầm t&ugrave;y lựa chọn của kh&aacute;ch h&agrave;ng. Thường th&igrave; kh&aacute;ch kh&ocirc;ng ai đến nh&agrave; h&agrave;ng m&agrave; chỉ ăn mỗi m&oacute;n vịt quay, m&agrave; họ sẽ gọi 3 m&oacute;n cơ bản gồm c&oacute;: s&uacute;p được l&agrave;m từ xương vịt, vịt quay v&agrave; m&oacute;n chi&ecirc;n x&agrave;o được l&agrave;m từ những bộ phận kh&aacute;c của vịt (cổ c&aacute;nh ch&acirc;n &hellip;). Ri&ecirc;ng bộ phận c&ograve;n thừa của vịt c&oacute; thể được chế biến th&agrave;nh 80 m&oacute;n kh&aacute;c nhau (kinh nhờ).</p>\r\n\r\n<p>Ở Trung Quốc c&oacute; rất nhiều nơi tổ chức kh&oacute;a học đ&agrave;o tạo c&aacute;ch chế biến v&agrave; cắt thịt quay b&agrave;i bản. Một người cần v&agrave;i năm để luyện tay nghề mới c&oacute; thể cắt th&agrave;nh thạo được những l&aacute;t vịt mỏng v&agrave; đều trong tầm 2-4 ph&uacute;t.</p>\r\n\r\n<h3>Phương ph&aacute;p quay l&ograve;:</h3>\r\n\r\n<p>Về phương ph&aacute;p quay l&ograve; th&igrave; như m&igrave;nh đề cập qua ở tr&ecirc;n l&agrave; c&oacute; 2 loại l&ograve; quay vịt, l&ograve; đ&oacute;ng k&iacute;n ra đời đầu ti&ecirc;n v&agrave; l&ograve; hở ra đời sau đ&oacute;. Hiện nay th&igrave; cả hai dạng l&ograve; vẫn được sử dụng để quay vịt</p>\r\n\r\n<ul>\r\n	<li>Về l&ograve; k&iacute;n: đại kh&aacute;i l&agrave; c&aacute;i th&ugrave;ng to to như trong ảnh, cho vịt v&agrave;o v&agrave; đ&oacute;ng k&iacute;n cửa rồi đốt n&oacute;ng. Thịt vịt sẽ ch&iacute;n nhờ sức n&oacute;ng k&iacute;n tỏa ra từ th&agrave;nh l&ograve;. Trong qu&aacute; tr&igrave;nh quay th&igrave; kh&ocirc;ng được mở l&ograve; ra v&agrave; vịt kh&ocirc;ng được/kh&ocirc;ng cần phải trở mặt hay g&igrave;. L&ograve; được l&agrave;m n&oacute;ng trước v&agrave; quay vịt ở nhiệt độ 250-300 độ C trong khoảng 30 ph&uacute;t. Phương ph&aacute;p n&agrave;y được sử dụng rộng r&atilde;i ở Đ&agrave;i Loan để l&agrave;m vịt quay Quảng Đ&ocirc;ng, ưu điểm l&agrave; tiết kiệm nhi&ecirc;n liệu đốt, giữ được độ ẩm cao n&ecirc;n b&ecirc;n ngo&agrave;i da gi&ograve;n m&agrave; b&ecirc;n trong thịt vẫn mềm ướt. Vịt quay được quay từ l&ograve; k&iacute;n c&oacute; t&ecirc;n l&agrave;&nbsp;<strong><em>Men Lu Kaoya 焖炉烤鸭.</em></strong></li>\r\n	<li>Về l&ograve; mở: như c&aacute;i l&ograve; pizza vậy đ&oacute;, l&ograve; được l&agrave;m bằng gạch, vịt sẽ được treo ph&iacute;a tr&ecirc;n, ph&iacute;a dưới đốt bằng gỗ từ c&acirc;y t&aacute;o t&agrave;u đỏ (Jujube), l&ecirc; hoặc đ&agrave;o, bắt lửa tốt, cho hương thơm gỗ c&acirc;y quả v&agrave; kh&ocirc;ng tạo ra khỏi. Cứ tầm v&agrave;i ph&uacute;t l&agrave; phải trở mặt vịt li&ecirc;n tục cho vịt ch&iacute;n đều v&agrave; da đều m&agrave;u. Trong khi quay, vịt phải được xịt hoặc phết dầu mỡ l&ecirc;n da để gi&uacute;p cho da c&oacute; độ b&oacute;ng v&agrave; kh&ocirc;ng bị ch&aacute;y. Vịt quay từ l&ograve; hở gọi l&agrave;&nbsp;<strong><em>Gua Lu Kaoya 挂炉烤鸭</em></strong>. Phương ph&aacute;p n&agrave;y ch&uacute; &yacute; đến phần da tr&ecirc;n từng miếng thịt, c&ograve;n phương ph&aacute;p l&ograve; k&iacute;n th&igrave; da t&aacute;ch rời khỏi thịt. Ngo&agrave;i ra phương ph&aacute;p l&ograve; mở kh&aacute; tốn k&eacute;m v&igrave; cần diện t&iacute;ch rộng hơn l&ograve; k&iacute;n, năng lượng đốt nhiều hơn v&igrave; tho&aacute;t nhiệt v&agrave; phải trở thịt vịt li&ecirc;n tục, v&agrave; chi ph&iacute; x&acirc;y ống kh&oacute;i.</li>\r\n</ul>\r\n\r\n<p><a href=\"https://mykitchies.com/image/\"><img alt=\"\" src=\"https://mykitchies.com/wp-content/uploads/2020/06/image-150x150.jpg\" style=\"height:150px; width:150px\" /></a></p>\r\n\r\n<p>L&ograve; quay hiện đại k&egrave;m đo nhiệt. Nguồn: internet</p>\r\n\r\n<p><a href=\"https://mykitchies.com/a2szgw145331430183/\"><img alt=\"\" src=\"https://mykitchies.com/wp-content/uploads/2020/06/a2szgw145331430183-150x150.png\" style=\"height:150px; width:150px\" /></a></p>\r\n\r\n<p>L&ograve; quay truyền thống</p>\r\n\r\n<p><img alt=\"unnamed\" src=\"https://mykitchies.files.wordpress.com/2020/06/unnamed.jpg\" style=\"height:384px; width:512px\" /></p>\r\n\r\n<p>L&ograve; mở. Nguồn: internet</p>\r\n\r\n<p>Hai trong những nh&agrave; h&agrave;ng nổi tiếng v&agrave; l&acirc;u đời b&aacute;n vịt quay ngon nhất ở Bắc Kinh l&agrave;&nbsp;<em><strong>Quanjude Beijing Duck Restaurant</strong></em>&nbsp;v&agrave;&nbsp;<em><strong>Bianyifang 便宜坊</strong></em>. Quanjude được mở lần đầu ti&ecirc;n v&agrave;o năm 1864 v&agrave; ph&aacute;t minh ra phương ph&aacute;p quay vịt ở l&ograve; mở được x&acirc;y từ gạch c&ograve;n Bianyifang ra đ&ograve;i sớm hơn v&agrave; c&oacute; tuổi đời cỡ 600 năm. Ở đ&acirc;y họ c&oacute; cho th&ecirc;m hạt sen, tr&agrave; đặc biệt c&ugrave;ng t&aacute;o đỏ v&agrave;o bụng con vịt tăng th&ecirc;m hương vị cho m&oacute;n ăn, ngo&agrave;i ra c&ograve;n c&oacute; vịt quay nhồi nước ninh rau củ theo b&iacute; quyết ri&ecirc;ng nữa. Do chưa được thử vịt quay chuẩn h&agrave;ng ở những nơi n&agrave;y n&ecirc;n m&igrave;nh sẽ kh&ocirc;ng đưa ra bất cứ b&igrave;nh luận l&agrave; b&ecirc;n n&agrave;o ngon hơn b&ecirc;n n&agrave;o, thậm ch&iacute; đ&aacute;nh gi&aacute; tr&ecirc;n mạng từ kh&aacute;ch h&agrave;ng cũng g&acirc;y tranh c&atilde;i v&igrave; mỗi người một khẩu vị ri&ecirc;ng. Tuy nhi&ecirc;n m&igrave;nh đ&atilde; lưu lại t&ecirc;n 2 qu&aacute;n n&agrave;y để sau c&oacute; dịp sang bển phải tiết kiệm tiền ăn một bữa cho biết 😀</p>\r\n\r\n<p><img alt=\"20171215112549118\" src=\"https://mykitchies.files.wordpress.com/2020/06/20171215112549118.jpg\" style=\"height:354px; width:640px\" /></p>\r\n\r\n<p>Cửa l&ograve;. Nguồn: internet</p>\r\n\r\n<h3>Sự kh&aacute;c nhau giữa vịt quay Bắc Kinh v&agrave; vịt quay Quảng Đ&ocirc;ng:</h3>\r\n\r\n<p>Điểm kh&aacute;c nhau lớn ch&iacute;nh l&agrave; c&aacute;ch chế biến vịt. Đầu ti&ecirc;n l&agrave; phần rạch tr&ecirc;n th&acirc;n con vịt: vịt Bắc Kinh th&igrave; được rạch 1 lỗ ngay dưới c&aacute;nh, th&ocirc;ng qua đ&oacute; người ta c&oacute; thể moi hết nội tạng b&ecirc;n trong ra, sau đ&oacute; nh&eacute;t một thanh gỗ nhỏ v&agrave;o b&ecirc;n trong chắn ngang để bảo đảm khi quay th&igrave; phần ức n&oacute; kh&ocirc;ng bị &bdquo;sụp&ldquo; v&agrave; con n&agrave;o con nấy m&igrave;nh căng mẩy như kiểu bị trướng vậy đ&oacute;. C&ograve;n vịt quay Quảng Đ&ocirc;ng sẽ được rạch bụng như g&agrave; vịt mua sẵn hoặc kiểu mổ phanh như d&acirc;n m&igrave;nh hay l&agrave;m, sau đ&oacute; được kh&acirc;u lại bằng thanh sắt nhỏ sau khi moi hết nội tạng ra.</p>\r\n\r\n<p>Sự kh&aacute;c nhau thứ hai nằm ở c&aacute;ch nhồi gia vị, vịt Bắc Kinh kh&ocirc;ng được nhồi gia vị g&igrave; qu&aacute; nồng trong bụng với mục đ&iacute;ch giữ phần nước thịt v&agrave; hương vị thịt tự nhi&ecirc;n sau khi quay. Do đ&oacute; sau khi moi hết nội tạng vịt th&igrave; người ta d&ugrave;ng một thanh kh&aacute;c được l&agrave;m từ th&acirc;n c&acirc;y họ bobo (hay hạt k&ecirc; g&igrave; đấy) đ&atilde; được phơi kh&ocirc; (tr&ocirc;ng như c&aacute;i th&acirc;n c&acirc;y ng&ocirc;), n&uacute;t c&aacute;i lỗ đ&iacute;t con vịt lại (khổ th&acirc;n con vịt gh&ecirc;) để khi đổ nước v&agrave;o bụng vịt th&ocirc;ng qua c&aacute;i lỗ th&igrave; nước kh&ocirc;ng bị chảy ra ngo&agrave;i. Phần nước đ&oacute; sau đ&oacute; được đem đi nấu s&uacute;p 😀 (ngon gh&ecirc; ha). Để kiểm tra vịt ch&iacute;n hay chưa th&igrave; nh&igrave;n v&agrave;o nước thịt: nước thịt hồng th&igrave; b&ecirc;n trong chưa ch&iacute;n hẳn, nếu c&oacute; m&agrave;u trắng sữa l&agrave; đ&atilde; ch&iacute;n v&agrave; chuẩn bị đem ra xực. Ri&ecirc;ng vịt quay Quảng Đ&ocirc;ng th&igrave; bụng được tẩm ướp với hỗn hợp hoa hồi, gừng, tỏi, h&agrave;nh,&hellip;v&agrave; cả t&aacute; gia vị kh&aacute;c sau đ&oacute; kh&acirc;u lại để hương vị ngấm v&agrave;o xương thịt của con vịt. V&agrave; cuối c&ugrave;ng l&agrave; sau khi vịt quay xong, người ra c&ograve;n rưới dầu n&oacute;ng l&ecirc;n để l&agrave;m se kh&iacute;t v&agrave; gi&ograve;n da, tăng th&ecirc;m hương vị thơm ngon cho con vịt.</p>\r\n\r\n<p>Ngo&agrave;i ra c&ograve;n một số điểm kh&aacute;c nhau nữa gồm giống vịt (vị quay Bắc Kinh phải l&agrave; vịt Bắc Kinh), c&aacute;ch ăn (vịt Quảng Đ&ocirc;ng thường được chặt ra th&agrave;nh từng miếng v&agrave; d&ugrave;ng sốt mận). Độ kh&oacute; của vịt quay Bắc Kinh cao hơn v&agrave; tập trung phần da hơn l&agrave; vịt xứ Quảng.</p>\r\n\r\n<p>Hiện nay th&igrave; nhiều cơ sở b&aacute;n vịt quay Bắc Kinh c&oacute; treo vịt ngay trước qu&aacute;n chủ yếu kết hợp phương thức quay vịt kiểu b&ecirc;n ngo&agrave;i Bắc Kinh b&ecirc;n trong Quảng Đ&ocirc;ng. Tức l&agrave; tẩm ướp như vịt Quảng Đ&ocirc;ng v&agrave; c&aacute;ch chế biến ngo&agrave;i da giống vịt Bắc Kinh. (Đ&acirc;y l&agrave; c&aacute;ch m&agrave; nhiều người chọn l&agrave;m tại nh&agrave;).</p>\r\n\r\n<p>Về c&aacute;ch l&agrave;m vịt quay tại nh&agrave;, m&igrave;nh sẽ hướng dẫn cho mọi người trong b&agrave;i viết tiếp theo một c&aacute;ch b&agrave;i bản về c&aacute;ch chế biến, pha sốt, v&agrave; chuẩn bị b&aacute;nh tr&aacute;ng ăn k&egrave;m. V&igrave; l&agrave; vịt quay trong l&ograve; nướng n&ecirc;n th&agrave;nh phẩm sẽ kh&ocirc;ng giống như vịt quay l&ograve; ngo&agrave;i h&agrave;ng, nhưng hương vị th&igrave; đảm bảo thơm ngon v&agrave; bạn sẽ được thưởng thức vịt quay Bắc Kinh theo c&aacute;ch truyền thống tại nh&agrave;.</p>\r\n\r\n<h3>C&aacute;ch l&agrave;m n&oacute;ng vịt quay mua từ ngo&agrave;i qu&aacute;n mang về:</h3>\r\n\r\n<p>D&ugrave;ng l&ograve; nướng quay thịt ở nhiệt độ 150 độ C trong 20 ph&uacute;t, tiếp đ&oacute; tăng l&ecirc;n 160 độ trong 10 ph&uacute;t. Hoặc cắt mỏng vịt quay, đặt v&agrave;o c&aacute;i rổ hoặc mu&ocirc;i lưới cỡ lớn, nh&uacute;ng v&agrave;o chảo dầu n&oacute;ng nhiều lần tới khi da gi&ograve;n.</p>\r\n\r\n<p>Mọi kiến thức được tổng hợp từ rất nhiều trang. Nếu c&oacute; g&igrave; sai s&oacute;t, mong c&aacute;c bạn g&oacute;p &yacute; v&agrave; bổ sung để m&igrave;nh ho&agrave;n thiện b&agrave;i 🙂</p>\r\n', '1731858089_2a0212000000t8gl36e43_720_480_s.jpg', '2024-11-17', 1),
(94, 'huỳnh trọng hiển', 'Cá sốt tàu xì -braised fish with fermented black beans', '', '<p>C&aacute; sốt t&agrave;u x&igrave;- một m&oacute;n ăn kh&aacute; đơn giản v&agrave; kh&ocirc;ng tốn c&ocirc;ng l&acirc;u, nhưng hương vị th&igrave; kh&aacute; đậm đ&agrave; thơm ngon m&ugrave;i t&agrave;u x&igrave; 😁</p>\r\n\r\n<p>T&agrave;u x&igrave; (Douchi) l&agrave; đậu n&agrave;nh đen l&ecirc;n men đ&atilde; qua ướp muối, c&oacute; vị mặn v&agrave; khi nấu l&ecirc;n m&igrave;nh thấy thơm m&ugrave;i men gần giống tương Nghệ An nhưng kh&ocirc;ng c&oacute; m&ugrave;i chua.( Chậc lại th&egrave;m m&oacute;n c&aacute; đồng kho khế, nghệ với tương Nghệ An, th&ecirc;m t&iacute; l&aacute; nghệ th&aacute;i sợi cho v&agrave;o, om nồi đất rục xương nữa, đặc sản qu&ecirc; ngoại của m&igrave;nh đấy c&aacute;c bạn ơi. Lần n&agrave;o về ngoại m&igrave;nh cũng ra đồng bắt c&aacute; về cho m&aacute; m&igrave; nấu, nhưng &ocirc;ng nội m&igrave;nh kho m&oacute;n n&agrave;y ngon nhất nh&agrave; lu&ocirc;n) ❤. T&agrave;u x&igrave; l&agrave; gia vị quen thuộc trong ẩm thực Trung Hoa, c&aacute;c bạn chắc hẳn đ&atilde; nghe qua nhiều m&oacute;n c&oacute; sử dụng t&agrave;u x&igrave; rồi nhỉ, đ&oacute; l&agrave; c&aacute; hấp t&agrave;u x&igrave;, sườn hấp t&agrave;u x&igrave;, đậu hũ Mapo, lẩu Tứ Xuy&ecirc;n hay c&aacute;c loại rau x&agrave;o&hellip;</p>\r\n\r\n<p><a href=\"https://mykitchies.com/20190720_1150581301648938-scaled/\"><img alt=\"\" src=\"https://mykitchies.com/wp-content/uploads/2019/08/20190720_1150581301648938-150x150.jpg\" style=\"height:150px; width:150px\" /></a></p>\r\n\r\n<p>T&agrave;u x&igrave;</p>\r\n\r\n<p><a href=\"https://mykitchies.com/20190720_1154142069428484-scaled/\"><img alt=\"\" src=\"https://mykitchies.com/wp-content/uploads/2019/08/20190720_1154142069428484-150x150.jpg\" style=\"height:150px; width:150px\" /></a></p>\r\n\r\n<p>T&agrave;u x&igrave;</p>\r\n\r\n<p>M&oacute;n lần n&agrave;y l&agrave; c&aacute; sốt, c&aacute;c bạn c&oacute; thể chọn c&aacute; n&agrave;o bất kỳ th&iacute;ch hợp cho việc sốt (v&iacute; dụ như c&aacute; để sốt c&agrave; chua th&igrave; sốt t&agrave;u x&igrave; sẽ hợp). Ở Đức c&aacute;c bạn c&oacute; thể mua c&aacute; Regenbogenforelle, Wolfsbarsch, Dorade, Tilapia hoặc c&aacute; Lachs (nếu kh&ocirc;ng th&iacute;ch c&aacute; nhiều xương).</p>\r\n\r\n<p><img alt=\"20190720_113534571730706.jpg\" src=\"https://mykitchies.files.wordpress.com/2019/08/20190720_113534571730706.jpg\" style=\"height:2160px; width:2880px\" /></p>\r\n\r\n<p><img src=\"https://mykitchies.files.wordpress.com/2019/08/2_201908030108518811868721839.jpg\" style=\"height:1600px; width:2400px\" /></p>\r\n\r\n<p><strong>NGUY&Ecirc;N LIỆU:</strong></p>\r\n\r\n<p><strong>Tbsp= th&igrave;a ăn; tsp= th&igrave;a cafe</strong></p>\r\n\r\n<ul>\r\n	<li>Khoảng 1 con c&aacute; to (500gr) hoặc 2 con nhỏ</li>\r\n	<li>5 -6 l&aacute;t gừng</li>\r\n	<li>2-4 quả ớt cay tươi (t&ugrave;y chọn), th&aacute;i nhỏ</li>\r\n	<li>2-3 th&acirc;n h&agrave;nh trắng</li>\r\n	<li>2 tbsp t&agrave;u x&igrave;</li>\r\n	<li>300ml nước</li>\r\n	<li>1 tbsp x&igrave; dầu (m&igrave;nh d&ugrave;ng hiệu Lee Kum Kee)</li>\r\n	<li>1 tbsp dầu h&agrave;o</li>\r\n	<li>0.5 tsp muối</li>\r\n	<li>0.5 tsp đường</li>\r\n	<li>0,5 tbsp tinh bột ng&ocirc; (hoặc bột năng, bột sắn d&acirc;y) + 2tbsp nước</li>\r\n</ul>\r\n\r\n<p><strong>C&Aacute;CH L&Agrave;M:</strong></p>\r\n\r\n<ol>\r\n	<li>C&aacute; d&ugrave;ng muối x&aacute;t hoặc dao cạo rồi rửa sạch chất nhầy v&agrave; để r&aacute;o nước. Sau đ&oacute; d&ugrave;ng dao kh&iacute;a mỗi mặt của c&aacute; v&agrave;i đường. Rồi ướp c&aacute; với dầu ăn (c&aacute;ch n&agrave;y gi&uacute;p cho khi r&aacute;n c&aacute; kh&ocirc;ng bị d&iacute;nh chảo).</li>\r\n	<li>Cho dầu v&agrave;o chảo, dầu n&oacute;ng ta r&aacute;n c&aacute; đến khi mặt c&aacute; trở v&agrave;ng. Kh&ocirc;ng n&ecirc;n r&aacute;n c&aacute; qu&aacute; l&acirc;u khiến c&aacute; bị kh&ocirc;. Vớt c&aacute; ra v&agrave; đổ bớt dầu, chừa lại 1 &iacute;t trong chảo<img alt=\"20190720_1151531875244839.jpg\" src=\"https://mykitchies.files.wordpress.com/2019/08/20190720_1151531875244839.jpg\" style=\"height:2880px; width:2160px\" /></li>\r\n	<li>Cho gừng, ớt cay, th&acirc;n h&agrave;nh trắng phi thơm khoảng 30 gi&acirc;y, tiếp đến cho t&agrave;u x&igrave; v&agrave;o phi khoảng 30 gi&acirc;y. Sau đ&oacute; cho nước c&ugrave;ng muối, đường, dầu h&agrave;o, x&igrave; dầu v&agrave;o v&agrave; đun s&ocirc;i. Tiếp đến thả c&aacute; v&agrave;o, d&ugrave;ng mu&ocirc;i m&uacute;c nước sốt rưới l&ecirc;n mặt c&aacute; li&ecirc;n tục. Sau đ&oacute; th&igrave; đậy vung v&agrave; đun ở lửa nhỏ khoảng 20-30 ph&uacute;t, l&acirc;u l&acirc;u lật c&aacute;.\r\n	<p><a href=\"https://mykitchies.com/20190720_1156571265508856-scaled/\"><img alt=\"\" src=\"https://mykitchies.com/wp-content/uploads/2019/08/20190720_1156571265508856-150x150.jpg\" style=\"height:150px; width:150px\" /></a></p>\r\n\r\n	<p><a href=\"https://mykitchies.com/2019-08-03-00-57-561844397630-scaled/\"><img alt=\"\" src=\"https://mykitchies.com/wp-content/uploads/2019/08/2019-08-03-00-57-561844397630-150x150.jpg\" style=\"height:150px; width:150px\" /></a></p>\r\n	</li>\r\n	<li>N&ecirc;m nếm lại cho vừa miệng. H&ograve;a tinh bột ng&ocirc; với ch&uacute;t nước, quấy đều cho tan rồi đổ từ từ v&agrave;o c&aacute;. Đảo nhẹ nh&agrave;ng. Tầm 3 ph&uacute;t th&igrave; tắt bếp, cho ra đĩa, rắc h&agrave;nh l&aacute; l&ecirc;n v&agrave; ăn k&egrave;m.</li>\r\n</ol>\r\n\r\n<p><img src=\"https://mykitchies.files.wordpress.com/2019/08/3_201908030109229541136964801.jpg\" style=\"height:2477px; width:1650px\" /></p>\r\n', '1731858144_1_201908030108091021505955828-1023x1536.jpg', '2024-11-17', 1),
(95, 'huỳnh trọng hiển', 'Củ sen rim xì dầu kiểu Hàn', '', '<p>Từ khi đặt ch&acirc;n sang Đức m&igrave;nh mới biết củ sen h&igrave;nh d&aacute;ng như n&agrave;o v&agrave; ăn ra sao sau khi chăm chỉ đi ăn lẩu Tứ Xuy&ecirc;n. V&agrave; kể từ l&uacute;c đ&oacute; m&igrave;nh bồ kết lu&ocirc;n củ sen, n&agrave;o nấu canh, s&acirc;m bổ lượng, ch&egrave; sen nh&atilde;n nhục, x&agrave;o nấu đều mua th&ecirc;m củ sen về cho v&agrave;o. Củ sen l&agrave; phần th&acirc;n rễ ph&igrave;nh to của c&acirc;y sen, nằm s&acirc;u dưới b&ugrave;n, c&oacute; vị b&ugrave;i b&ugrave;i như khoai, ăn gi&ograve;n v&agrave; hơi dẻo, dễ kết hợp trong rất nhiều m&oacute;n. Củ sen c&oacute; t&aacute;c dụng lưu th&ocirc;ng m&aacute;u, điều h&ograve;a huyết &aacute;p, bổ sung vitamin C, tăng cường hệ miễn dịch&hellip;</p>\r\n\r\n<p>Củ sen ở b&ecirc;n n&agrave;y c&aacute;c bạn c&oacute; thể t&igrave;m mua ở c&aacute;c si&ecirc;u thị ch&acirc;u &Aacute; n&oacute;i chung, c&oacute; củ tươi ở quầy m&aacute;t, loại đ&atilde; th&aacute;i l&aacute;t sẵn ng&acirc;m trong t&uacute;i nước, hoặc l&agrave; th&aacute;i l&aacute;t sẵn để tủ đ&ocirc;ng. Với củ tươi c&aacute;c bạn cần phải chế biến sơ qua, c&ograve;n 2 loại kia mua về d&ugrave;ng lu&ocirc;n, m&igrave;nh thấy loại đ&ocirc;ng đ&aacute; hơi kh&ocirc; n&ecirc;n chọn mua loại ng&acirc;m nước trong t&uacute;i. Với loại củ sen tươi cần chọn củ c&oacute; đốt to mập, khoảng c&aacute;ch giữa c&aacute;c đốt d&agrave;i th&igrave; củ sen c&agrave;ng ch&iacute;n v&agrave; nhiều thịt , m&agrave;u v&agrave;ng đều mịn m&agrave;ng, kh&ocirc;ng c&oacute; m&ugrave;i lạ , &iacute;t đốm đen nhất c&oacute; thể. C&oacute; 2 loại củ sen đ&oacute; l&agrave; loại 7 lỗ v&agrave; 9 lỗ, trong đ&oacute; loại 9 lỗ ngon hơn, gi&ograve;n hơn n&ecirc;n th&iacute;ch hợp l&agrave;m salad hoặc x&agrave;o. Ri&ecirc;ng loại 7 lỗ th&iacute;ch hợp cho việc hầm hoặc nấu canh v&igrave; độ gi&ograve;n k&eacute;m hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://mykitchies.files.wordpress.com/2022/01/mua-cu-sen-nen-chon-loai-7-hay-9-lo-moi-dai-bo-hinh-6.jpg?w=600\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<p>Ảnh mạng: củ sen 7 lỗ (tr&aacute;i) v&agrave; 9 lỗ (phải)</p>\r\n\r\n<p>M&oacute;n h&ocirc;m nay m&igrave;nh muốn giới thiệu với c&aacute;c bạn đ&oacute; l&agrave; m&oacute;n củ sen rim x&igrave; dầu kiểu H&agrave;n Yeon-geun-jorim 연근조림. M&oacute;n n&agrave;y v&ocirc; c&ugrave;ng dễ nấu, dễ ăn v&agrave; nhanh gọn, th&iacute;ch hợp cả với những người ăn chay. Người H&agrave;n thường nấu m&oacute;n củ sen rim rồi cho v&agrave;o cơm hộp mang đi, hoặc c&oacute; thể được ăn giống như những m&oacute;n ăn Banchan kh&aacute;c trong bữa cơm của người H&agrave;n.</p>\r\n\r\n<p>N<strong>GUY&Ecirc;N LIỆU:</strong></p>\r\n\r\n<ul>\r\n	<li>500gr củ sen đ&atilde; l&agrave;m sạch (c&aacute;ch l&agrave;m sạch xem ở phần c&aacute;ch l&agrave;m)</li>\r\n	<li>1,5 th&igrave;a ăn dầu ăn</li>\r\n	<li>60 ml x&igrave; dầu (d&ugrave;ng&nbsp;<a href=\"https://mykitchies.com/2020/04/25/tu-bep-nha-minh-co-gi-cam-nang-gia-vi-p1/#xidau\" target=\"_blank\">h&atilde;ng Sempio hoặc Kikkoman</a>&nbsp;cho thơm b&ugrave;i, nếu d&ugrave;ng Lee Kum Kee th&igrave; bớt lại đề ph&ograve;ng bị mặn) &ndash; khoảng 4 th&igrave;a ăn</li>\r\n	<li>170ml sirup ng&ocirc; oligodang (올리고당) hoặc<a href=\"https://mykitchies.com/2020/05/17/tu-bep-minh-co-gi-cam-nang-gia-vi-p2/#sirogao\" target=\"_blank\">&nbsp;sirup gạo (jocheong, 조청)&nbsp;</a>(khoảng 12 th&igrave;a ăn)</li>\r\n	<li>1/2 th&igrave;a ăn tỏi băm nhuyễn (khoảng 2 t&eacute;p tỏi) (t&ugrave;y chọn)</li>\r\n	<li>2 th&igrave;a cafe dầu m&egrave; (sesam oil)</li>\r\n	<li>1/2 &ndash; 1 th&igrave;a cafe m&egrave; rang</li>\r\n	<li>250ml nước</li>\r\n</ul>\r\n\r\n<p>Lưu &yacute;: th&agrave;nh phẩm của m&igrave;nh c&oacute; vị ngọt nhưng kh&ocirc;ng gắt v&igrave; m&igrave;nh d&ugrave;ng sirup gạo của H&agrave;n, nếu c&aacute;c bạn kh&ocirc;ng c&oacute; th&igrave; d&ugrave;ng khoảng 8 th&igrave;a ăn đường n&acirc;u, hoặc giảm lượng đường xuống c&ograve;n 1 nửa nếu kh&ocirc;ng muốn ăn ngọt. Để m&oacute;n ăn chuẩn hơn ch&uacute;t th&igrave; m&igrave;nh khuy&ecirc;n n&ecirc;n mua sirup gạo v&agrave; x&igrave; dầu của H&agrave;n để c&oacute; thể dậy đ&uacute;ng m&ugrave;i thơm của c&aacute;c loại gia vị.</p>\r\n\r\n<p><img alt=\"\" src=\"https://mykitchies.files.wordpress.com/2022/01/wp-1641732308366.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://mykitchies.files.wordpress.com/2022/01/wp-1641732308268.jpg\" /></p>\r\n\r\n<p><strong>C&Aacute;CH L&Agrave;M:</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://mykitchies.files.wordpress.com/2022/01/wp-1641732308314.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://mykitchies.files.wordpress.com/2022/01/wp-1641732308215.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://mykitchies.files.wordpress.com/2022/01/wp-1641732308148.jpg\" /></p>\r\n\r\n<ol>\r\n	<li>Nếu d&ugrave;ng củ sen tươi, c&aacute;c bạn cắt bỏ 2 đầu rồi d&ugrave;ng c&aacute;i b&agrave;o vỏ c&agrave; rốt b&agrave;o vỏ củ sen, sau đ&oacute; cắt th&agrave;nh từng l&aacute;t khoảng 6-7mm. Tiếp đ&oacute; ng&acirc;m củ sen v&agrave;o nước lạnh khoảng 30 ph&uacute;t rồi đem đi luộc c&ugrave;ng 1 th&igrave;a ăn giấm trong 5 ph&uacute;t, kh&ocirc;ng đậy vung nh&eacute;. Luộc xong đem đi rửa lại với nước.</li>\r\n	<li>D&ugrave;ng một c&aacute;i chảo rồi đun n&oacute;ng dầu, cho củ sen v&agrave;o x&agrave;o sơ khoảng 3-5 ph&uacute;t. Cho 250ml nước c&ugrave;ng x&igrave; dầu, tỏi băm v&agrave;o, đun s&ocirc;i rồi hạ lửa nhỏ vừa, đậy vung v&agrave; rim trong khoảng 35-40 ph&uacute;t, l&acirc;u l&acirc;u đảo qua cho đều. Nếu nhanh cạn nước th&igrave; c&aacute;c bạn hạ lửa nhỏ hơn v&agrave; ch&acirc;m x&iacute;u nước v&agrave;o nếu cần.</li>\r\n	<li>Sau đ&oacute; cho sirup gạo, đảo đều rồi đậy vung rim tiếp tầm 15-20 ph&uacute;t. Sau đ&oacute; mở vung v&agrave; để lửa to vừa, nhớ đảo đều cho tới khi củ sen b&aacute;m sốt v&agrave; tr&ocirc;ng b&oacute;ng hơn, sốt cũng cạn. L&uacute;c đ&oacute; th&igrave; tắt bếp, cho dầu m&egrave; v&agrave; m&egrave; rang v&agrave;o.</li>\r\n	<li>Th&agrave;nh phẩm ăn c&ugrave;ng cơm, c&oacute; thể bảo quản trong ngăn m&aacute;t tủ lạnh khoảng 10-12 ng&agrave;y trong hộp k&iacute;n.</li>\r\n</ol>\r\n\r\n<p><img alt=\"\" src=\"https://mykitchies.files.wordpress.com/2022/01/3.jpg?w=768\" style=\"height:1080px; width:810px\" /></p>\r\n', '1731858192_2-768x1152.jpg', '2024-11-17', 1);

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
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

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
