-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 16, 2024 lúc 07:41 PM
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
-- Cơ sở dữ liệu: `Wed_Nong_San_Vuon_Nha_Xanh`
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
(85, 'huỳnh trọng hiển', 'Hướng dẫn lựa chọn vòng đeo cân bằng lực cho Meta Quest 3', '<p>Như đ&atilde; ph&acirc;n t&iacute;ch trong b&agrave;i viết &quot;<a href=\"https://vrtech.vn/tin-tuc/nhung-phu-kien-nguoi-dung-meta-quest-3-nen-mua-them-new65637.html\">Những phụ kiện người d&ugrave;ng Meta Quest 3 n&ecirc;n mua th&ecirc;m</a>&quot;, c&aacute;c bạn đ&atilde; biết V&ograve;ng đeo trợ lực (strap) ch&iacute;nh l&agrave; phụ kiện quan trọng nhất của&nbsp;<a href=\"https://vrtech.vn/san-pham/kinh-vr-doc-lap-meta-quest-3-128gb-512gb-sp837585.html\" target=\"_blank\">Quest 3</a>. Tuy nhi&ecirc;n, &quot;giữa mu&ocirc;n tr&ugrave;ng v&acirc;y&quot; những Strap d&agrave;nh cho Quest 3 đang b&aacute;n tr&ecirc;n thị trường, đắt c&oacute;, rẻ c&oacute;, to c&oacute;, nhỏ c&oacute; - lựa chọn được sản phẩm n&agrave;o ph&ugrave; hợp, tối ưu với chi ph&iacute; bỏ ra th&igrave; kh&ocirc;ng phải bạn n&agrave;o cũng biết. B&agrave;i viết n&agrave;y, Vrtech sẽ đưa ra một số th&ocirc;ng tin kh&aacute;ch quan để c&aacute;c bạn c&oacute; thể lựa chọn được một chiếc Strap Meta Quest 3 ph&ugrave; hợp nhất.</p>\r\n', '<h2><strong>C&ocirc;ng dụng của Strap Meta Quest 3</strong></h2>\r\n\r\n<p>Đầu ti&ecirc;n, để c&oacute; thể lựa chọn được Strap Meta Quest 3 ph&ugrave; hợp, ch&uacute;ng ta cần phải biết c&ocirc;ng dụng của n&oacute; d&ugrave;ng để l&agrave;m g&igrave;. C&ocirc;ng dụng của Strap Quest 3 c&oacute; thể kể đến như sau:<br />\r\n✅&nbsp;C&acirc;n bằng lực trước sau, giảm t&igrave; lực của k&iacute;nh Quest 3 v&agrave;o v&ugrave;ng m&aacute; v&agrave; mắt g&acirc;y đau;<br />\r\n✅&nbsp;Mang tới cảm gi&aacute;c đeo &ocirc;m đầu hơn, chắc chắn hơn khi sử dụng;<br />\r\n✅&nbsp;T&ugrave;y chỉnh k&iacute;ch thước theo chu vi v&ograve;ng đầu đơn giản, dễ d&agrave;ng hơn d&acirc;y đeo gốc;<br />\r\n✅&nbsp;Cảm gi&aacute;c đeo &ecirc;m &aacute;i, thoải m&aacute;i hơn do c&oacute; c&aacute;c tấm đệm ph&iacute;a sau g&aacute;y.<br />\r\n<br />\r\nNhư vậy, hiệu quả lớn nhất m&agrave; mục ti&ecirc;u thiết kế strap cần phải đạt được đ&oacute; ch&iacute;nh l&agrave; mang tới một cảm gi&aacute;c thoải m&aacute;i nhất khi sử dụng cho người d&ugrave;ng. Mọi thiết kế Strap hướng tới mục ti&ecirc;u kh&aacute;c nhưng l&agrave;m suy giảm trải nghiệm thoải m&aacute;i đều l&agrave; thừa th&atilde;i, kh&ocirc;ng cần thiết.<br />\r\n&nbsp;</p>\r\n\r\n<h2><strong>C&aacute;c loại thiết kế v&ograve;ng đeo Quest 3</strong></h2>\r\n\r\n<p>Hiện nay, tr&ecirc;n thế giới c&oacute; 2 kiểu thiết kế Strap Quest 3 phổ biến đ&oacute; l&agrave; Halo Strap v&agrave; Elite Strap.</p>\r\n\r\n<p><br />\r\n<img src=\"https://i.imgur.com/6M2qAhy.png\" /><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>⓵</strong>&nbsp;Như h&igrave;nh ảnh so s&aacute;nh ph&iacute;a tr&ecirc;n c&aacute;c bạn c&oacute; thể thấy, Halo strap l&agrave; thiết c&oacute; v&ograve;ng đeo lớn ở ph&iacute;a tr&ecirc;n tr&aacute;n, c&oacute; khớp vươn gắn v&agrave;o trục 2 b&ecirc;n k&iacute;nh. Thiết kế n&agrave;y hướng tới việc chuyển điểm t&igrave; lực của k&iacute;nh Quest 3 từ mắt &amp; 2 m&aacute; l&ecirc;n ph&iacute;a tr&ecirc;n tr&aacute;n. Kết hợp với v&ograve;ng ph&iacute;a sau g&aacute;y v&agrave; v&ograve;ng ph&iacute;a tr&ecirc;n tr&aacute;n tạo th&agrave;nh khung giằng để c&acirc;n bằng lực trước sau. C&aacute;c v&ograve;ng trước v&agrave; sau đều c&oacute; thiết kế tấm đệm để cảm gi&aacute;c đeo sẽ &ecirc;m &aacute;i, thoải m&aacute;i hơn. Khởi nguồn của ng&ocirc;n ngữ thiết kế Halo đến từ c&aacute;c ph&aacute;p sư Trung Hoa từ năm 2020, sau đ&oacute; lan rộng ra khắp thế giới cho tới giờ.<br />\r\n<br />\r\n<strong>⓶</strong>&nbsp;C&ograve;n Elite Strap l&agrave; ng&ocirc;n ngữ thiết kế gốc tới từ ch&iacute;nh h&atilde;ng Meta, c&oacute; k&iacute;ch thước nhỏ gọn hơn Halo Strap. Thiết kế dạng Elite Strap kh&ocirc;ng c&oacute; khung v&ograve;ng ph&iacute;a trước như Halo m&agrave; sử dụng bộ khung v&ograve;ng sau g&aacute;y gắn thẳng v&agrave;o trục 2 b&ecirc;n k&iacute;nh Quest 3. Kết hợp với phần d&acirc;y chằng đỉnh đầu - kết nối giữa k&iacute;nh Quest 3 v&agrave; khung v&ograve;ng sau g&aacute;y, c&aacute;c điểm t&igrave; lực tr&ecirc;n mắt v&agrave; 2 m&aacute; sẽ chuyển dịch về sau g&aacute;y v&agrave; ph&acirc;n bố dọc theo đỉnh đầu, mang tới khả năng c&acirc;n bằng v&agrave; ph&acirc;n t&aacute;n lực tr&ecirc;n to&agrave;n bộ v&ograve;ng đầu rất tốt. Phần v&ograve;ng ph&iacute;a sau được thiết kế c&oacute; tấm đệm để tăng cảm gi&aacute;c thoải m&aacute;i khi sử dụng. Thiết kế dạng Elite strap hiện đ&atilde; được c&aacute;c ph&aacute;p sư Trung Hoa học tập v&agrave; nghi&ecirc;n cứu, đưa ra c&aacute;c biến thể v&ograve;ng g&aacute;y kh&aacute;c nhau t&ugrave;y theo từng nhu cầu sử dụng. Một số biến thể của Elite Strap với k&iacute;ch thước v&ograve;ng g&aacute;y lớn hơn, &ocirc;m trọn phần sau g&aacute;y c&ograve;n gọi l&agrave; Head Strap.<br />\r\n<br />\r\nNh&igrave;n chung, theo Vrtech, Halo Strap v&agrave; Elite Strap về trải nghiệm thoải m&aacute;i khi đeo l&agrave; như nhau do c&ugrave;ng triệt ti&ecirc;u được điểm t&igrave; lực ở mắt v&agrave; 2 m&aacute;. Việc lựa chọn Halo strap hay Elite strap chỉ nằm ở sở th&iacute;ch c&aacute; nh&acirc;n. Với c&aacute;c bạn th&iacute;ch sự hiện đại, &ldquo;to&rdquo; v&agrave; &ldquo;khỏe&rdquo; th&igrave; chọn Halo strap. C&ograve;n bạn n&agrave;o th&iacute;ch sự nhẹ nh&agrave;ng, nhỏ gọn, kh&ocirc;ng chiếm qu&aacute; nhiều diện t&iacute;ch h&agrave;nh l&yacute; khi cần mang đi du lịch th&igrave; chọn Elite Strap.</p>\r\n\r\n<blockquote>\r\n<p><a href=\"https://vrtech.vn/vong-deo-can-bang-luc-cho-meta-quest-3-dm170292.html\" target=\"_blank\">Link một số loại v&ograve;ng đeo c&oacute; thiết kế dạng Halo &amp; Elite Strap đang c&oacute; tại Vrtech</a></p>\r\n</blockquote>\r\n\r\n<h2><strong>V&ograve;ng đeo k&egrave;m Pin sạc cho Quest 3 liệu c&oacute; cần thiết ?</strong></h2>\r\n\r\n<p><img src=\"https://i.imgur.com/O7DKq1v.jpg\" /></p>\r\n\r\n<p><br />\r\nHiện nay tr&ecirc;n thị trường đang c&oacute; nhiều loại v&ograve;ng đeo k&egrave;m pin sạc cho Meta Quest 3 với mức gi&aacute; th&agrave;nh cao hơn so với Strap c&acirc;n bằng lực th&ocirc;ng thường. Nhiều bạn sẽ thắc mắc n&oacute; c&oacute; ph&ugrave; hợp với m&igrave;nh kh&ocirc;ng ? C&oacute; cần thiết với nhu cầu sử dụng kh&ocirc;ng ? Để trả lời những c&acirc;u hỏi n&agrave;y, ch&uacute;ng ta cần hiểu c&oacute;&nbsp;<strong>th&ecirc;m cục pin để l&agrave;m g&igrave;</strong>&nbsp;v&agrave;&nbsp;<strong>thời gian sử dụng tr&ecirc;n pin gốc của k&iacute;nh Quest 3 hiện tại l&agrave; bao l&acirc;u</strong>.<br />\r\n<br />\r\nNhư trong b&agrave;i viết &ldquo;<a href=\"https://vrtech.vn/tin-tuc/danh-gia-chi-tiet-chat-luong-meta-quest-3-sau-khi-trai-nghiem-thuc-te-new65592.html\" target=\"_blank\">Đ&aacute;nh gi&aacute; chi tiết Meta Quest 3 sau khi sử dụng</a>&rdquo;, m&igrave;nh đ&atilde; test thử thời lượng pin của Quest 3 mỗi lần sử dụng sẽ khoảng 02 giờ. Với người d&ugrave;ng cơ bản, thời lượng pin n&agrave;y l&agrave; thoải m&aacute;i chỗ mỗi lần trải nghiệm. Nếu bạn xem phim, thời gian của một bộ phim trung b&igrave;nh chỉ khoảng 1 giờ 30 ph&uacute;t. Nếu bạn trải nghiệm c&aacute;c Game VR, thường chỉ sau khoảng 1 tiếng chơi li&ecirc;n tục mắt bạn sẽ mỏi, cần được nghỉ ngơi thư gi&atilde;n. Nhiệt lượng của k&iacute;nh tăng l&ecirc;n một ch&uacute;t, cộng với việc cơ thể di chuyển nhiều sẽ sinh ra mồ h&ocirc;i ph&iacute;a trước mặt, cảm gi&aacute;c khi chơi li&ecirc;n tục sau 1 tiếng sẽ kh&ocirc;ng c&ograve;n thoải m&aacute;i, l&uacute;c đ&oacute; bạn sẽ cảm thấy cần nghỉ ngơi khoảng 30 ph&uacute;t trước khi chơi tăng 2. Khoảng thời gian n&agrave;y ho&agrave;n to&agrave;n đủ để bạn sạc được một lượng pin nhất định để tiếp tục trải nghiệm.<br />\r\n<br />\r\nB&ecirc;n cạnh đ&oacute;, việc vừa chơi vừa sạc Pin tuy được Meta cho ph&eacute;p nhưng x&eacute;t về kỹ thuật, pin vừa sạc vừa xả thường nhanh chai nhanh hơn l&agrave; sạc đầy xong rồi xả kiệt. K&iacute;nh Quest vừa chơi vừa sạc cũng sẽ l&agrave;m nhiệt lượng của k&iacute;nh tăng cao hơn, g&acirc;y n&oacute;ng v&agrave; chảy mồ h&ocirc;i cho người d&ugrave;ng. Nh&igrave;n chung, nếu c&oacute; điều kiện, người d&ugrave;ng n&ecirc;n sạc đầy, chơi c&ograve;n ~15% th&igrave; sạc đầy l&ecirc;n d&ugrave;ng d&ugrave;ng tiếp, l&agrave;m như vậy độ bền Pin Meta Quest sẽ cao hơn.<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Theo một khảo s&aacute;t tr&ecirc;n diễn đ&agrave;n REDDIT, đa số người d&ugrave;ng cho rằng thời gian sử dụng li&ecirc;n tục Meta Quest chỉ n&ecirc;n từ 60 &ndash; 90 ph&uacute;t. D&ugrave;ng l&acirc;u hơn thời gian n&agrave;y c&oacute; khả năng g&acirc;y ra t&igrave;nh trạng kh&ocirc; mắt, mỏi mắt hoặc ch&oacute;ng mặt.</strong></p>\r\n\r\n<h2><br />\r\n<strong>Vậy c&aacute;c nh&agrave; sản xuất linh kiện họ sản xuất ra Strap k&egrave;m Pin để l&agrave;m g&igrave; ?</strong></h2>\r\n\r\n<p>Tất nhi&ecirc;n l&agrave; đều c&oacute; l&yacute; do của n&oacute; cả, cụ thể:</p>\r\n\r\n<p><br />\r\n<img src=\"https://i.imgur.com/Ut1nuw3.jpg\" /></p>\r\n\r\n<p><br />\r\n<strong>Thứ nhất</strong>, Strap k&egrave;m Pin rất cần cho người d&ugrave;ng sử dụng Meta Quest để l&agrave;m c&aacute;c&nbsp;<a href=\"https://vrtech.vn/cho-thue-to-chuc-su-kien-dm116808.html\" target=\"_blank\">sự kiện thực tế ảo</a>. Th&ocirc;ng thường c&aacute;c sự kiện sẽ diễn ra &iacute;t nhất l&agrave; trong 1 buổi (4 tiếng) hoặc cả ng&agrave;y (8 tiếng). Trong khi diễn ra sự kiện, k&iacute;nh Meta Quest sẽ được sử dụng li&ecirc;n tục qua tay nhiều người chơi v&agrave; sẽ kh&ocirc;ng c&oacute; thời gian trống để sạc. Việc triển khai ổ sạc v&agrave; d&acirc;y điện tại c&aacute;c sự kiện cũng kh&oacute; khăn hơn do kh&ocirc;ng đảm bảo t&iacute;nh ngăn nắp, thẩm mỹ kh&ocirc;ng gian tổ chức. V&igrave; vậy, c&aacute;c đơn vị tổ chức sự kiện thường chọn c&aacute;c loại Strap c&oacute; Pin sạc rời, như vậy họ sẽ dễ d&agrave;ng thay thế khi hết pin. C&aacute;c pin rời đ&oacute; cũng nhỏ gọn, nh&acirc;n vi&ecirc;n c&oacute; thể mang v&agrave;o b&ecirc;n trong sạc đ&acirc;y để quay v&ograve;ng thay thế cho c&aacute;c Pin đang sử dụng.</p>\r\n\r\n<p><br />\r\n<img src=\"https://i.imgur.com/3gZryV2.jpg\" /></p>\r\n\r\n<p><br />\r\n<strong>Thứ hai</strong>, với người d&ugrave;ng sử dụng Meta Quest 3 để đi giới thiệu sản phẩm (du lịch, bất động sản, nội thất, ứng dụng, tr&ograve; chơi &hellip;), thường một buổi tiếp x&uacute;c kh&aacute;ch h&agrave;ng sẽ phải đảm bảo thiết bị lu&ocirc;n trong t&igrave;nh trạng hoạt động tốt, c&oacute; thể đ&aacute;p ứng được c&aacute;c t&igrave;nh huống bất ngờ. Thử nghĩ xem, khi bạn giới thiệu một dự &aacute;n bất động sản bằng c&ocirc;ng nghệ vr tới một gi&aacute;m đốc điều h&agrave;nh, gần cuối buổi l&agrave;m việc, Pin đ&atilde; kiệt, bất chợi ng&agrave;i Chủ tịch c&ugrave;ng hội đồng quản trị bước v&agrave;o v&agrave; muốn trải nghiệm sản phẩm của bạn, bạn sẽ l&agrave;m g&igrave;. C&oacute; 02 t&igrave;nh huống xảy ra như sau:</p>\r\n\r\n<blockquote>\r\n<p>☹&nbsp;Bạn n&oacute;i rằng &ldquo;Ng&agrave;i vui l&ograve;ng chờ thiết bị được sạc đầy Pin&rdquo;. M&igrave;nh cam đoan rằng bạn sẽ mất điểm, ảnh hưởng đến khả năng hợp đồng được k&yacute; kết;<br />\r\n<br />\r\n㋡&nbsp;Bạn lấy ra 1 cục Pin v&agrave; thay thế cho cục Pin đ&atilde; hết tr&ecirc;n Strap. Với thao t&aacute;c nhanh thoăn thoắt, chỉ trong chưa đầy 5 gi&acirc;y bạn đ&atilde; xử l&yacute; xong. Cực kỳ cool ngầu phải kh&ocirc;ng. M&igrave;nh đảm bảo bạn sẽ g&acirc;y ấn tượng mạnh về t&iacute;nh chuy&ecirc;n nghiệp của m&igrave;nh.</p>\r\n</blockquote>\r\n\r\n<p><br />\r\n<img src=\"https://i.imgur.com/2lMtF7B.jpg\" /></p>\r\n\r\n<p><br />\r\n<strong>Thứ ba</strong>, d&agrave;nh cho &ldquo;Đại gia&rdquo;. Nh&igrave;n chung m&igrave;nh biết c&oacute; những kh&aacute;ch h&agrave;ng c&oacute; rất nhiều tiền, khi mua gần như kh&ocirc;ng cần suy nghĩ, cứ c&aacute;i g&igrave; đắt nhất, xịn nhất th&igrave; mua, thậm ch&iacute; mua về cũng chẳng hề sử dụng hết c&aacute;c t&iacute;nh năng. T&oacute;m lại, bạn l&agrave; &ldquo;Đại gia&rdquo; th&igrave; cứ c&aacute;i g&igrave; tốt nhất, đắt nhất m&agrave; quất, suy nghĩ nhiều l&agrave;m g&igrave; tốn thời gian, hao chất x&aacute;m, cứ mua thừa c&ograve;n hơn mua thiếu.</p>\r\n\r\n<blockquote>\r\n<p><a href=\"https://vrtech.vn/san-pham/bobovr-m3-pro-strap-can-bang-luc-kem-pin-sac-cho-meta-quest-3-sp842642.html\" target=\"_blank\">Tham khảo Strap BoboVR M3 Pro c&oacute; k&egrave;m Pin cho Meta Quest 3</a></p>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Kết luận</strong></h2>\r\n\r\n<p>❶&nbsp;Nếu bạn l&agrave; người d&ugrave;ng c&aacute; nh&acirc;n, nhu cầu sử dụng cơ bản để xem phim hoặc chơi c&aacute;c Game VR th&ocirc;ng thường, Strap th&ocirc;ng thường l&agrave; sự lựa chọn vừa đủ cho một trải nghiệm thoải m&aacute;i.<br />\r\n<br />\r\n❷&nbsp;Nếu bạn l&agrave; người sử dụng Meta Quest cho c&aacute;c mục ti&ecirc;u kinh doanh, tổ chức sự kiện hoặc c&aacute;c mục đ&iacute;ch kh&aacute;c c&oacute; thời gian sử dụng li&ecirc;n tục tr&ecirc;n 2 tiếng th&igrave; n&ecirc;n trang bị k&egrave;m theo Strap k&egrave;m Pin sạc.<br />\r\n<br />\r\n❸&nbsp;Cuối c&ugrave;ng, nếu bạn l&agrave; &ldquo;Đại gia&rdquo;, bạn đ&atilde; tốn thời gian v&ocirc; &iacute;ch để đọc b&agrave;i viết n&agrave;y rồi. Bạn kh&ocirc;ng cần nghĩ nhiều đ&acirc;u, cứ quất đại Elite Strap k&egrave;m pin ch&iacute;nh h&atilde;ng Meta đi bạn.</p>\r\n', '1731575870_Hướng dẫn lựa chọn vòng đeo cân bằng lực cho Meta Quest 3.jpg', '2024-11-14', 1),
(86, 'huỳnh trọng hiển', 'Lộ hình ảnh Meta Quest 3S - Phiên bản cắt giảm của Quest 3 dự kiến thay thế Quest 2', '<p>&nbsp;</p>\r\n\r\n<p>Theo th&ocirc;ng tin từ một số diễn đ&agrave;n uy t&iacute;n về c&ocirc;ng nghệ thực tế ảo, h&igrave;nh ảnh k&iacute;nh thực tế ảo&nbsp;<strong>Meta Quest 3S</strong>&nbsp;đ&atilde; được tiết lộ trong một buổi họp trực tuyến của Meta.</p>\r\n', '<p>Tham khảo một số nguồn tin chưa ch&iacute;nh thức,&nbsp;<strong>Meta Quest 3S</strong>&nbsp;sẽ sử dụng Chip của Quest 3, m&agrave;n h&igrave;nh độ ph&acirc;n giải của Quest 2, loại bỏ Camera chiều s&acirc;u v&agrave; passthrough trắng đen. Gi&aacute; b&aacute;n dự kiến xấp xỉ với Quest 2 hiện tại.</p>\r\n\r\n<p><br />\r\n<img alt=\"Meta Quest 3S\" src=\"https://i.imgur.com/LlFqts6.jpeg\" style=\"height:500px; width:800px\" /><br />\r\n&nbsp;</p>\r\n\r\n<p>Nếu&nbsp;<strong>Meta Quest 3S</strong>&nbsp;được ra mắt ch&iacute;nh thức, dự kiến gi&aacute; Quest 2 (mới hoặc đ&atilde; qua sử dụng) sẽ giảm hơn, người d&ugrave;ng b&igrave;nh d&acirc;n sẽ c&oacute; th&ecirc;m nhiều lựa chọn về mức gi&aacute; dễ tiếp cận hơn. Tuy nhi&ecirc;n, tất cả c&ograve;n ở th&igrave; tương lai, năm trước rộ th&ocirc;ng tin Quest 3 Lite ra mắt nhưng giờ l&agrave; th&aacute;ng 03/2024 rồi vẫn chưa thấy g&igrave;. Rất c&oacute; thể Quest 3S ch&iacute;nh l&agrave; Quest 3 Lite. Vrtech sẽ theo d&otilde;i v&agrave; tiếp tục cập nhật th&ocirc;ng tin tới c&aacute;c bạn.</p>\r\n\r\n<p><br />\r\n<img alt=\"Meta Quest 3S\" src=\"https://i.imgur.com/8SMAGz0.jpeg\" style=\"height:500px; width:800px\" /></p>\r\n', '1731576006_Lộ hình ảnh Meta Quest 3S - Phiên bản cắt giảm của Quest 3 dự kiến thay thế Quest 2.jpeg', '2024-11-14', 1),
(87, 'huỳnh trọng hiển', '', '', '<p>Theo th&ocirc;ng tin đồn thổi, Pico 5 khi ra mắt sẽ c&oacute; 03 phi&ecirc;n bản:<br />\r\n1. Pico 5<br />\r\n2. Pico 5 Pro<br />\r\n3. Pico 5 Pro Max<br />\r\nTrong đ&oacute;, Pico 5 Pro Max sẽ c&oacute; độ ph&acirc;n giải &quot;si&ecirc;u to khổng lồ&quot; 4K cho mỗi b&ecirc;n mắt k&egrave;m theo eye &amp; face tracking.<br />\r\nSo s&aacute;nh Pico 5 thường c&oacute; độ ph&acirc;n giải 2.5K mỗi b&ecirc;n mắt vẫn cao hơn&nbsp;<a href=\"https://vrtech.vn/san-pham/meta-quest-3-sp837585.html\">Meta Quest 3</a>&nbsp;c&oacute; độ ph&acirc;n giải 2K.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"pico 5\" src=\"https://i.imgur.com/C8MFDME.jpg\" /><img alt=\"pico 5\" src=\"https://i.imgur.com/RdadPGk.jpg\" /></p>\r\n', '1731576171_Lộ thông tin Pico 5 ra mắt sẽ có 3 phiên bản.jpg', '2024-11-14', 1),
(88, 'huỳnh trọng hiển', 'Đánh giá chi tiết chất lượng Meta Quest 3 sau khi trải nghiệm thực tế', '', '<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.facebook.com/sharer.php?u=https://vrtech.vn/tin-tuc/content-new65592.html\" target=\"_blank\"><img src=\"https://i-cdn.embed.ly/1/display?key=fd92ebbc52fc43fb98f69e50e7893c13&amp;url=i.imgur.com/zB6oaFT.png\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://i.imgur.com/VeoWdRY.jpg\" /></p>\r\n\r\n<h2><strong>Đ&Aacute;NH GI&Aacute; CHI TIẾT META QUEST 3 SAU 02 NG&Agrave;Y TRẢI NGHIỆM</strong></h2>\r\n\r\n<p>Ng&agrave;y 13/10/2023, 09:00 am, chiếc&nbsp;<a href=\"https://vrtech.vn/san-pham/kinh-vr-doc-lap-meta-quest-3-128gb-512gb-sp837585.html\" target=\"_blank\">Meta Quest 3</a>&nbsp;đầu ti&ecirc;n ch&iacute;nh thức cập bến Vrtech. Sau 02 ng&agrave;y sử dụng, m&igrave;nh khẳng định lu&ocirc;n, Meta Quest 3 ch&iacute;nh l&agrave; k&iacute;nh thực tế ảo độc lập, hướng tới người d&ugrave;ng c&aacute; nh&acirc;n tốt nhất thời điểm hiện tại. Với thiết kế mỏng hơn, m&agrave;n h&igrave;nh sắc n&eacute;t hơn, bộ xử l&yacute; mạnh mẽ hơn, khả năng truyền tải đầy đủ m&agrave;u sắc để chơi game thực tế hỗn hợp v&agrave; bộ điều khiển tốt hơn, Quest 3 r&otilde; r&agrave;ng l&agrave; một chiếc k&iacute;nh vr vượt trội khi so s&aacute;nh với &ldquo;bố của n&oacute;&rdquo;, Meta Quest 2 ra mắt năm 2020.<br />\r\n<br />\r\nTuy nhi&ecirc;n, c&aacute;i g&igrave; cũng c&oacute; c&aacute;i gi&aacute; của n&oacute;.&nbsp;Quest 3 c&oacute; gi&aacute; 499 USD cho model 128GB v&agrave; 649 USD cho model 512GB.&nbsp;Trong khi đ&oacute;,&nbsp;Quest 2&nbsp;c&oacute; gi&aacute; khởi điểm chỉ $299 cho mẫu 128GB, v&agrave; đối với những bạn mới sử dụng VR, những bạn chưa muốn &ldquo;chơi kh&ocirc; m&aacute;u&rdquo;, đ&acirc;y vẫn l&agrave; một lựa chọn tuyệt vời.&nbsp;C&ograve;n với những bạn kh&ocirc;ng qu&aacute; c&acirc;n đong đo đếm về t&agrave;i ch&iacute;nh, Quest 3 đ&uacute;ng l&agrave; &ldquo;đắt xắt ra miếng&rdquo;.<br />\r\n&nbsp;</p>\r\n\r\n<h3><strong>Meta Quest 3 &ndash; H&igrave;nh ảnh thực tế</strong></h3>\r\n\r\n<p><img src=\"https://i.imgur.com/LmV1VSV.jpg\" /></p>\r\n\r\n<h3><br />\r\n<strong>Meta Quest 3 &ndash; Thiết kế v&agrave; t&iacute;nh năng</strong></h3>\r\n\r\n<p><br />\r\nCảm nhận đầu ti&ecirc;n của m&igrave;nh khi cầm chiếc hộp Meta Quest 3 tr&ecirc;n tay l&agrave; tr&ocirc;ng n&oacute; kh&aacute; nhỏ v&agrave; đơn giản.&nbsp;Tuy nhi&ecirc;n, m&igrave;nh cũng chẳng bận t&acirc;m lắm, chẳng việc g&igrave; phải tốn th&ecirc;m tiền cho một thứ chỉ để bỏ x&oacute;.&nbsp;B&ecirc;n trong hộp, c&aacute;c ngăn chứa được ph&acirc;n định r&otilde; r&agrave;ng, bạn sẽ c&oacute; một chiếc k&iacute;nh Meta Quest 3; 02 Remote Controllers với d&acirc;y đeo cổ tay v&agrave; pin AA được c&agrave;i đặt sẵn; củ nguồn 18W v&agrave; c&aacute;p sạc USB Type-C.<br />\r\n<br />\r\nMeta tuy&ecirc;n bố rằng Quest 3 mỏng hơn Quest 2 tới 40%, nhưng quan s&aacute;t kỹ th&igrave; m&igrave;nh thấy rằng sự so s&aacute;nh n&agrave;y h&igrave;nh như đ&atilde; loại trừ phần khung tiếp gi&aacute;p khu&ocirc;n mặt Quest 3 d&agrave;y hơn. So s&aacute;nh trọng lượng của Quest 3 so với Quest 2,&nbsp;m&igrave;nh đ&atilde; c&acirc;n thử v&agrave; Quest 3 (kh&ocirc;ng c&oacute; d&acirc;y đeo) nặng khoảng 459 gram, nặng hơn 3 gram so với Quest 2 (kh&ocirc;ng c&oacute; d&acirc;y đeo).<br />\r\n<br />\r\nVề mặt thiết kế, Quest 3 c&oacute; thiết kế c&ocirc;ng th&aacute;i học hơn Quest 2.&nbsp;Khi m&igrave;nh chơi game vr thời gian d&agrave;i với Quest 2, m&igrave;nh thường cảm thấy kh&ocirc;ng thoải m&aacute;i v&igrave; điểm t&igrave; lực của Quest 2 &eacute;p v&agrave;o th&aacute;i dương v&agrave; m&aacute;.&nbsp;C&ograve;n với Quest 3, m&igrave;nh c&oacute; cảm gi&aacute;c nhẹ hơn về ph&iacute;a trước.&nbsp;D&acirc;y đeo c&oacute; vẻ đ&atilde; được thiết kế lại để dễ điều chỉnh hơn v&agrave; giữ tai nghe ở đ&uacute;ng vị tr&iacute; m&agrave; kh&ocirc;ng tạo qu&aacute; nhiều &aacute;p lực l&ecirc;n khu&ocirc;n mặt.&nbsp;Tuy nhi&ecirc;n, nếu bạn chơi những game vr cần vận động mạnh v&agrave; nhanh, m&igrave;nh nghĩ trang bị th&ecirc;m một chiếc&nbsp;<a href=\"https://vrtech.vn/san-pham/strap-meta-quest-3-chinh-hang-devaso-sp842559.html\" target=\"_blank\">Strap</a>&nbsp;lu&ocirc;n l&agrave; sự lựa chọn cần thiết.</p>\r\n\r\n<p><br />\r\n<img src=\"https://i.imgur.com/CBzuS4G.png\" /></p>\r\n\r\n<p><br />\r\nKiểm tra về t&iacute;nh năng chỉnh khoản c&aacute;ch 2 mắt (IPD), m&igrave;nh thấy Quest 3 ngon hơn Quest 2 do bộ phận n&agrave;y đ&atilde; được thiết kế lại ho&agrave;n to&agrave;n. Tr&ecirc;n Quest 2, bạn d&ugrave;ng tay k&eacute;o thấu k&iacute;nh sang 2 b&ecirc;n hoặc v&agrave;o giữa, mỗi lần k&eacute;o c&aacute;c khớp n&oacute; k&ecirc;u &ldquo;&hellip;ặc, &hellip;ặc, &hellip;ặc&rdquo;, &acirc;m thanh rất chi l&agrave; nhạy cảm. B&ecirc;n cạnh đ&oacute; IPD tr&ecirc;n Quest 2 cũng chỉ c&oacute; chỉnh được chết theo 03 nấc (58mm, 63mm v&agrave; 68mm), một số bạn sẽ cảm thấy chỉnh ra th&igrave; thừa, chỉnh v&agrave;o th&igrave; thiếu, nh&igrave;n h&igrave;nh ảnh l&eacute; xẹ thật l&agrave; kh&oacute; chịu.&nbsp;Tuy nhi&ecirc;n n&uacute;t chỉnh IPD tr&ecirc;n Quest 3 c&oacute; khả năng điều chỉnh IPD li&ecirc;n tục, trong phạm vi từ 58mm đến 70mm, m&igrave;nh c&oacute; thể dễ d&agrave;ng thao t&aacute;c bằng c&aacute;ch xoay n&uacute;t nhỏ ở ph&iacute;a dưới b&ecirc;n tr&aacute;i k&iacute;nh vr.<br />\r\n&nbsp;</p>\r\n\r\n<p><img src=\"https://i.imgur.com/uKktF0H.jpg\" /></p>\r\n\r\n<p><br />\r\nĐiểm mới về thiết kế Quest 3 m&igrave;nh thấy rất hay, đ&oacute; l&agrave; điều chỉnh được khoảng c&aacute;ch giữa khu&ocirc;n mặt v&agrave; thấu k&iacute;nh.&nbsp;B&ecirc;n trong khoang k&iacute;nh, m&igrave;nh thấy c&oacute; 2 n&uacute;t 2 b&ecirc;n, m&igrave;nh ấn v&agrave; đ&oacute; v&agrave; c&oacute; thể k&eacute;o phần khung tiếp gi&aacute;p khu&ocirc;n mặt ra xa hoặc gần lại với thấu k&iacute;nh. Việc điều chỉnh n&agrave;y m&igrave;nh thấy c&oacute; 2 t&aacute;c dụng rất lớn, thứ nhất l&agrave; m&igrave;nh c&oacute; thể chỉnh được g&oacute;c nh&igrave;n h&igrave;nh ảnh hẹp hoặc rộng, thứ hai l&agrave; tăng kh&ocirc;ng gian trong khoang k&iacute;nh để m&igrave;nh c&oacute; thể đeo k&egrave;m k&iacute;nh cận một c&aacute;ch dễ d&agrave;ng m&agrave; kh&ocirc;ng sợ tr&ograve;ng k&iacute;nh ma s&aacute;t v&agrave;o thấu k&iacute;nh g&acirc;y trầy xước. Tuy nhi&ecirc;n theo m&igrave;nh,&nbsp;<a href=\"https://vrtech.vn/san-pham/gong-can-meta-quest-3-sp842641.html\" target=\"_blank\">gọng lắp tr&ograve;ng cận cho Meta Quest 3</a>&nbsp;l&agrave; sự lựa chọn ho&agrave;n hảo để mang tới những trải nghiệm thoải m&aacute;i nhất cho những ai bị cận.<br />\r\n<br />\r\nPhần khung tiếp gi&aacute;p với khu&ocirc;n mặt m&igrave;nh thấy c&oacute; vẻ như Quest 3 l&agrave;m cong hơn v&agrave; &ocirc;m hơn. Tuy nhi&ecirc;n, với mấy đứa mũi tẹt như m&igrave;nh, c&oacute; hiện tượng &aacute;nh s&aacute;ng tr&agrave;n v&agrave;o từ sống mũi g&acirc;y mất tập trung khi sử dụng, đặc biệt kh&oacute; chịu khi chơi c&aacute;c nội dung cần phải tập trung để tận hưởng hết c&aacute;i cảm gi&aacute;c &ldquo;kimochi&rdquo;.&nbsp;C&oacute; lẽ m&igrave;nh sẽ phải sử dụng phụ kiện chắn s&aacute;ng để khắc phụ triệt để vấn đề n&agrave;y, tuy nhi&ecirc;n che k&iacute;n qu&aacute; th&igrave; b&iacute; v&agrave; bị đọng sương tr&ecirc;n thấu k&iacute;nh, miếng chắn s&aacute;ng sống mũi kết hợp với quạt th&ocirc;ng gi&oacute; l&agrave; combo tối ưu cho trường hợp n&agrave;y.<br />\r\n&nbsp;</p>\r\n\r\n<p><img src=\"https://i.imgur.com/Sn0rUi2.jpg\" /></p>\r\n\r\n<p><br />\r\nPhần đệm tiếp x&uacute;c khu&ocirc;n mặt tr&ecirc;n Quest 3 được l&oacute;t bằng một lớp đệm xốp bọc vải lưới b&ecirc;n ngo&agrave;i. Mặc d&ugrave; m&igrave;nh thấy rất &ecirc;m &aacute;i, thoải m&aacute;i v&agrave; thấm h&uacute;t mồ h&ocirc;i tốt nhưng về l&acirc;u về d&agrave;i sẽ kh&aacute; h&ocirc;i v&agrave; mất vệ sinh.&nbsp;Đ&oacute; l&agrave; v&igrave; phần đệm của Quest 3 kh&ocirc;ng thể th&aacute;o rời v&agrave; đem đi giặt như Quest 2 được, theo m&igrave;nh về l&acirc;u d&agrave;i th&igrave; n&ecirc;n mua lớp bọc silicon để bọc lại phần đệm n&agrave;y.<br />\r\n<br />\r\nTheo Meta, Quest 3 c&oacute; m&agrave;n h&igrave;nh LCD k&eacute;p 2064x2208, mật độ điểm ảnh cao hơn 30% so với&nbsp;<a href=\"https://vrtech.vn/san-pham/oculus-quest-2-128gb-256gb-sp783756.html\" target=\"_blank\">Quest 2</a>. Thực tế m&igrave;nh thấy, Quest 3 n&oacute; r&otilde; n&eacute;t v&atilde;i hết cả ra c&aacute;c bạn ạ.&nbsp;Khi quan s&aacute;t c&aacute;c k&yacute; tự văn bản như bảng điều khiển, menu v&agrave; tr&igrave;nh duyệt ảo trong tr&ograve; chơi cũng như với c&aacute;c tr&ograve; chơi đ&ograve;i hỏi độ chi tiết h&igrave;nh ảnh cao như Microsoft Flight Simulator (khi chơi với PC) m&igrave;nh cảm thấy rất chi l&agrave; ổn &aacute;p.&nbsp;Nh&igrave;n chung, mấy thể loại Quest 2 Pico 4 kh&ocirc;ng c&oacute; cửa, kể cả Quest Pro cũng ch&agrave;o thua lu&ocirc;n. Với m&igrave;nh, Quest 3 hiện l&agrave; k&iacute;nh vr độc lập r&otilde; n&eacute;t nhất rồi.<br />\r\n&nbsp;<br />\r\nMột điểm mới v&agrave; rất đang tiền tr&ecirc;n Quest 3 l&agrave; thấu k&iacute;nh Pancake. Thấu k&iacute;nh n&agrave;y khắc phục ho&agrave;n to&agrave;n nhược điểm của thấu k&iacute;nh Fresnel tr&ecirc;n Quest 2. Với Quest 2, phần trung t&acirc;m của khung h&igrave;nh thường r&otilde; v&agrave; sắc n&eacute;t hơn c&aacute;c cạnh, cần căn chỉnh thật kỹ khi đeo để lấy n&eacute;t.&nbsp;Nhưng may v&atilde;i linh hồn ra c&aacute;c bạn ạ, Quest 3 lại sử dụng c&aacute;c thấu k&iacute;nh Pancake tương tự Quest Pro.&nbsp;Thấu k&iacute;nh Pancake mỏng hơn, nguy&ecirc;n l&yacute; quang học cho độ r&otilde; n&eacute;t đồng đều tr&ecirc;n từng cạnh v&agrave; &iacute;t ch&oacute;i hơn.&nbsp;Kết hợp với những cải tiến kh&aacute;c như g&oacute;c nh&igrave;n (FOV) 110 độ, rộng hơn so với 90 độ của Quest 2, v&agrave; hỗ trợ tần số qu&eacute;t l&ecirc;n tới 120Hz ngay khi ra mắt.&nbsp;Khi m&igrave;nh chơi c&aacute;c tr&ograve; chơi chuyển động nhanh như Beat Saber, Pistol Whip &hellip; khả năng chơi ở tốc độ khung h&igrave;nh cao hơn, độ sắc n&eacute;t tốt hơn thực sự mang lại những trải nghiệm ch&acirc;n thực, v&ocirc; c&ugrave;ng sống động.<br />\r\n&nbsp;</p>\r\n\r\n<p><img src=\"https://i.imgur.com/xM6XUNG.jpg\" /></p>\r\n\r\n<p><br />\r\nLoa tr&ecirc;n Quest 3 theo m&igrave;nh thấy n&oacute; cũng tương tự như Quest 2, nghĩa l&agrave; chất lượng đạt tới tầm &ldquo;chống điếc&rdquo; v&agrave; vị tr&iacute; loa nằm c&aacute;ch xa tai bạn, nếu để &yacute; người ngo&agrave;i vẫn c&oacute; thể nghe thấy, cảm nhận được những nội dung m&agrave; bạn đang chơi.&nbsp;V&igrave; vậy, khi bạn trải nghiệm c&aacute;c nội dung &ldquo;kimochi&rdquo; tại nơi đ&ocirc;ng người (bạn &ldquo;bệnh&rdquo; lắm rồi đấy), bạn n&ecirc;n ch&uacute; &yacute; tắt tiếng nếu kh&ocirc;ng muốn trở th&agrave;nh người nổi tiếng. Th&ocirc;ng thường khi d&ugrave;ng k&egrave;m Quest 2, m&igrave;nh sẽ sử dụng k&egrave;m&nbsp;<a href=\"https://vrtech.vn/san-pham/tai-nghe-mini-cho-oculus-quest-1-2-jack-3-5mm-sp801958.html\" target=\"_blank\">tai nghe mini Jack 3.5mm</a>&nbsp;để c&oacute; chất lượng &acirc;m thanh tốt hơn v&agrave; k&iacute;n đ&aacute;o hơn.<br />\r\n<br />\r\n<em>&ldquo;Meta Quest 3 xả &amp; sạc đầy pin mất khoảng 2 giờ&rdquo;</em><br />\r\n<br />\r\nTrong 02 ng&agrave;y thử nghiệm, m&igrave;nh đ&atilde; xả hết v&agrave; sạc pin Meta Quest 3 nhiều lần v&agrave; thấy thời gian sạc đầy từ khoảng 1 giờ 58 ph&uacute;t cho tới 2 giờ 12 ph&uacute;t, như vậy trung b&igrave;nh l&agrave; khoảng 2 giờ cho mỗi lần sử dụng v&agrave; sạc đầy.&nbsp;Đ&oacute; kh&ocirc;ng phải l&agrave; một khoảng thời gian qu&aacute; ngắn nhưng cũng kh&ocirc;ng qu&aacute; d&agrave;i, nếu sử dụng Meta Quest 3 để chạy sự kiện, m&igrave;nh nghĩ n&ecirc;n trang bị th&ecirc;m bộ Strap k&egrave;m pin như&nbsp;<a href=\"https://vrtech.vn/san-pham/bobovr-m3-pro-strap-can-bang-luc-kem-pin-sac-cho-meta-quest-3-sp842642.html\" target=\"_blank\">Bobo VR M3 Pro</a>&nbsp;hoặc của c&aacute;c thương hiệu kh&aacute;c để tăng thời gian sử dụng mỗi lần.<br />\r\n&nbsp;</p>\r\n\r\n<h3><strong>Meta Quest 3 &ndash; C&agrave;i đặt ban đầu</strong></h3>\r\n\r\n<p><br />\r\nC&agrave;i đặt ban đầu cho Quest 3 rất dễ d&agrave;ng v&agrave; đơn giản.&nbsp;M&igrave;nh kh&ocirc;ng cần phải d&ugrave;ng t&agrave;i khoản Facebook m&agrave; d&ugrave;ng t&agrave;i khoản Meta, c&aacute;ch thức đăng k&yacute; th&igrave; cũng tương tự nhưng n&oacute; l&agrave; t&agrave;i khoản d&ugrave;ng ri&ecirc;ng cho Quest 3, kh&ocirc;ng li&ecirc;n kết với t&agrave;i khoản FB, kh&ocirc;ng lo bị c&ocirc;ng khai c&aacute;c th&ocirc;ng tin FB tr&ecirc;n cộng đồng VR.&nbsp;C&aacute;c bước c&agrave;i đặt ban đầu Quest 3 cũng tương tự như tr&ecirc;n Quest 2, m&igrave;nh đ&atilde; c&oacute; b&agrave;i viết hướng dẫn chi tiết c&aacute;c bạn c&oacute; thể tham khảo tại link Hướng dẫn c&agrave;i đặt Meta Quest 3.<br />\r\n&nbsp;</p>\r\n\r\n<p><img src=\"https://i.imgur.com/6hYH4C4.jpg\" /></p>\r\n\r\n<p><br />\r\nTrước chi chơi c&aacute;c nội dung thực tế ảo, thiết lập kh&ocirc;ng gian an to&agrave;n l&agrave; v&ocirc; c&ugrave;ng cần thiết. Nếu kh&ocirc;ng thiết lập,&nbsp;bạn sẽ bị va v&agrave;o đồ khi di chuyển, hoặc cũng c&oacute; thể thử độ bền thiết bị bằng c&aacute;ch ch&eacute;m thẳng Remote Controllers v&agrave;o tường, m&igrave;nh đ&atilde; từng phải trả gi&aacute; bằng tiền mặt cho những h&agrave;nh động &ldquo;Never Give Up&rdquo; đ&oacute;. Quest 3 c&oacute; 2 c&aacute;ch thiết lập v&ugrave;ng an to&agrave;n, c&aacute;ch 1 l&agrave; lựa chọn ranh giới cố định, c&aacute;ch 2 l&agrave; thiết lập theo quy m&ocirc; ph&ograve;ng.&nbsp;C&aacute;ch 2 l&agrave; phương ph&aacute;p mới, Quest 3 đ&atilde; tự động nhận diện căn ph&ograve;ng khi m&igrave;nh đi lại xung quanh.&nbsp;Th&ocirc;ng qua hệ thống c&aacute;c Camera xung quanh, m&igrave;nh c&oacute; thể xem được những khung h&igrave;nh học nhận diện quy m&ocirc; s&agrave;n, tường, trần v&agrave; đồ nội thất.&nbsp;Phương ph&aacute;p n&agrave;y rất hay, m&igrave;nh c&oacute; thể biết ch&iacute;nh x&aacute;c phần n&agrave;o trong ph&ograve;ng của m&igrave;nh chưa được lập bản đồ một c&aacute;ch trực quan;&nbsp;c&oacute; một số ng&oacute;c ng&aacute;ch trong kh&ocirc;ng gian của m&igrave;nh cần phải đi qua đi lại một v&agrave;i lần để Quest 3 nhận diện lại.&nbsp;Một điểm khiến m&igrave;nh kh&aacute; ngạc nhi&ecirc;n, Quest 3 c&oacute; thể xử l&yacute; c&aacute;c bề mặt phản chiếu &aacute;nh s&aacute;ng v&agrave; trong suốt như cửa sổ c&oacute; &aacute;nh nắng, mặt b&agrave;n bằng k&iacute;nh v&agrave; thậm ch&iacute; cả bể c&aacute;.<br />\r\n&nbsp;</p>\r\n\r\n<h3><strong>Meta Quest 3 &ndash; Chơi game v&agrave; Hiệu suất</strong></h3>\r\n\r\n<p><br />\r\nMeta Quest 3 l&agrave; một chiếc k&iacute;nh vr vừa c&oacute; thể chạy độc lập vừa c&oacute; thể sử dụng kết hợp chơi game vr tr&ecirc;n PC.&nbsp;M&igrave;nh đ&atilde; thử nghiệm với c&aacute;c game của m&igrave;nh như Beat Saber, Pistol Whip, Creed hay nặng hơn l&agrave; Medal Of Hornor.&nbsp;Tất cả đều ho&agrave;n hảo, h&igrave;nh ảnh r&otilde; n&eacute;t, kh&ocirc;ng bị giảm tốc độ khung h&igrave;nh g&acirc;y giật lag.<br />\r\n&nbsp;</p>\r\n\r\n<p><img src=\"https://i.imgur.com/EGDwgHG.jpg\" /></p>\r\n\r\n<p><br />\r\nQuest 3 được trang bị chip Snapdragon XR2 Gen 2 mạnh hơn tới 50% so với chip Quest 2, nhưng c&aacute;c tr&ograve; chơi đ&atilde; ph&aacute;t h&agrave;nh cho Quest 1 &amp; 2 sẽ chưa thể tăng chất lượng h&igrave;nh ảnh ngay m&agrave; c&ograve;n t&ugrave;y thuộc nh&agrave; ph&aacute;t h&agrave;nh c&oacute; thực hiện c&aacute;c bản cập nhật để tối ưu chất lượng h&igrave;nh ảnh cho Quest 3 hay kh&ocirc;ng.&nbsp;M&igrave;nh đ&atilde; chơi thử Red Matter 2 (đ&atilde; ph&aacute;t h&agrave;nh bản n&acirc;ng cấp cho Quest 3) tr&ecirc;n cả Quest 3 &amp; 2 v&agrave; thấy sự kh&aacute;c biệt rất r&otilde; r&agrave;ng.&nbsp;Quest 3 mang tới cho Red Matter 2 một vẻ b&oacute;ng bẩy hơn bao giờ hết.&nbsp;C&aacute;c đối tượng trong game, từ trạm vũ trụ đến tất cả c&aacute;c thiết bị, tr&ocirc;ng sắc n&eacute;t v&agrave; chi tiết hơn nhiều. Khi m&igrave;nh bước tới gần ch&uacute;ng, c&aacute;c hiệu ứng đổ b&oacute;ng động đ&atilde; l&agrave;m tăng th&ecirc;m mức độ ch&acirc;n thực.&nbsp;Trải nghiệm Red Matter 2 l&agrave; minh chứng cho sức mạnh tới từ con chip Snapdragon XR2 Gen 2 của Quest 3, hy vong c&aacute;c nh&agrave; ph&aacute;t triển sẽ sớm cập nhật c&aacute;c phi&ecirc;n bản game mới khai th&aacute;c được hết sức mạnh của con chip n&agrave;y.<br />\r\n<br />\r\nQuest 3 tương th&iacute;ch với hơn&nbsp;<a href=\"https://vrtech.vn/cai-games-oculus-quest-dm149184.html\" target=\"_blank\">500 tr&ograve; chơi đ&atilde; c&oacute; sẵn cho Quest 2 &amp; 1</a>, tất cả c&aacute;c game m&igrave;nh đ&atilde; mua tr&ecirc;n t&agrave;i khoản đều cho thể c&agrave;i đặt v&agrave; chơi dễ d&agrave;ng, nh&igrave;n chung kh&ocirc;ng phải mua lại bất cứ game n&agrave;o đ&atilde; từng mua.&nbsp;Nh&igrave;n sang c&aacute;i thằng &ldquo;bẹn th&acirc;m&rdquo; của m&igrave;nh n&oacute; chơi&nbsp;<a href=\"https://vrtech.vn/san-pham/kinh-thuc-te-ao-sony-playstation-vr-2-sony-psvr-2-sp833159.html\" target=\"_blank\">PS VR2</a>&nbsp;phải khổ sở về vấn đề tương th&iacute;ch ngược giữa c&aacute;c phi&ecirc;n bản th&igrave; mới thấy hệ sinh th&aacute;i&nbsp;<a href=\"https://vrtech.vn/oculus-meta-dm140080.html\" target=\"_blank\">Meta Quest</a>&nbsp;l&agrave; một sự lựa chọn tuyệt vời.<br />\r\n<br />\r\nTuy nhi&ecirc;n, theo m&igrave;nh Meta vẫn n&ecirc;n đầu tư v&agrave;o việc ph&aacute;t triển một số Game VR chuy&ecirc;n biệt khai th&aacute;c hết c&aacute;c điểm mạnh tr&ecirc;n Quest 3. Dẫu biết khả năng tương th&iacute;ch ngược điểm mạnh, nhưng d&ugrave; sao khi m&igrave;nh d&ugrave;ng bỏ ra hơn 500$ để &ldquo;x&uacute;c&rdquo; em n&oacute; về, m&igrave;nh vẫn muốn c&oacute; được những thứ rất g&igrave; v&agrave; n&agrave;y nọ so với &ldquo;bố của n&oacute;&rdquo;, Meta Quest 2.&nbsp;Để &yacute; kỹ tr&ecirc;n kho ứng dụng của Meta Quest, sẽ c&oacute; một danh mục tr&ograve; chơi được chứng nhận l&agrave; &ldquo;better on Quest 3&rdquo; (tốt hơn trong Quest 3), tức l&agrave; c&aacute;c Game VR đ&atilde; được cập nhật tối ưu cho phần cứng của Quest 3, th&ocirc;i cũng tạm tạm, l&agrave;m người kh&ocirc;ng n&ecirc;n qu&aacute; tham lam.<br />\r\n<br />\r\n<em>Ảnh chụp m&agrave;n h&igrave;nh Assassin&#39;s Creed Nexus VR</em><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://i.imgur.com/ojPJBZY.jpg\" /></p>\r\n\r\n<p><br />\r\nTheo m&igrave;nh biết, c&oacute; một số tr&ograve; chơi nổi bật cho Quest 3 sẽ ra mắt v&agrave;o cuối năm nay: Assassin&#39;s Creed Nexus VR sẽ ra mắt v&agrave;o ng&agrave;y 16 th&aacute;ng 11 v&agrave; Asgard&#39;s Wrath 2 sẽ được ph&aacute;t h&agrave;nh v&agrave;o ng&agrave;y 15 th&aacute;ng 12. Anh em c&ugrave;ng h&oacute;ng nh&eacute;.<br />\r\n<br />\r\nQuest 3 th&igrave; cũng như Quest 2, kết nối với PC để chơi Game VR tr&ecirc;n PC th&ocirc;ng qua c&aacute;p&nbsp;<a href=\"https://vrtech.vn/san-pham/cap-oculus-link-usb-type-c-chuan-usb-3-2-gen-1-china-sp796092.html\" target=\"_blank\">Oculus Link</a>&nbsp;hoặc kh&ocirc;ng d&acirc;y th&ocirc;ng qua AirLink (sử dụng bộ ph&aacute;t Wi-fi chuẩn 6 để đạt được trải nghiệm tốt nhất).&nbsp;Game VR tr&ecirc;n PC lu&ocirc;n thuộc đẳng cấp ho&agrave;n to&agrave;n kh&aacute;c so với c&aacute;c game chỉ chơi độc lập, th&ocirc;ng thường h&igrave;nh ảnh sẽ chau chuốt hơn, chi tiết hơn v&agrave; nội dung sẽ s&acirc;u hơn. Một số tựa game vr tr&ecirc;n PC bạn n&ecirc;n chơi như: Half-Life: Alyx v&agrave; Microsoft Flight Simulator.<br />\r\n<br />\r\n<img src=\"https://i.imgur.com/FExr3jB.jpg\" /><br />\r\n<br />\r\nQuan s&aacute;t mặt trước, m&igrave;nh thấy điểm mới của Quest 3 l&agrave; hai camera 4MP RGB v&agrave; cảm biến độ s&acirc;u được t&iacute;ch hợp theo cụm Camera cho ph&eacute;p thực hiện t&iacute;nh năng Passthrough đầy đủ m&agrave;u sắc, đ&acirc;y l&agrave; điểm mới cực hữu dụng tr&ecirc;n Quest 3 để sử dụng cho c&aacute;c ứng dụng hoặc tr&ograve; chơi hỗn hợp thực tế ảo v&agrave; thực tế tăng cường.&nbsp;So với Camera &ldquo;chống m&ugrave;&rdquo; của Quest 2 th&igrave; Quest 3 ở một đẳng cấp ho&agrave;n to&agrave;n &ldquo;kh&aacute;c bọt&rdquo;.&nbsp;M&igrave;nh đ&atilde; sử dụng thử trong điều kiện &aacute;nh s&aacute;ng tốt, h&igrave;nh ảnh s&aacute;ng v&agrave; r&otilde; n&eacute;t, m&agrave;u sắc ch&iacute;nh x&aacute;c, ch&acirc;n thực.&nbsp;Thử đọc văn bản, đọc tin nhắn, nhắn tin, lướt web tr&ecirc;n m&aacute;y t&iacute;nh th&ocirc;ng qua chế độ Passthrough, m&igrave;nh thấy về cơ bản l&agrave; l&agrave;m được mặc d&ugrave; độ ph&acirc;n giải ở chế độ n&agrave;y vẫn chưa được như ở chế độ VR nhưng như thế l&agrave; qu&aacute; ổn &aacute;p rồi.<br />\r\n&nbsp;</p>\r\n\r\n<p><img src=\"https://i.imgur.com/2zhi38y.jpg\" /></p>\r\n\r\n<p><br />\r\nTuy nhi&ecirc;n, hiện tại m&igrave;nh chưa thấy c&oacute; nhiều tr&ograve; chơi sử dụng t&iacute;nh năng kết hợp giữa thực tế ảo v&agrave; thực tế tăng cường tr&ecirc;n kho của Meta Quest.&nbsp;Khi chơi thử First Encounters, m&igrave;nh đ&atilde; c&oacute; trải nghiệm bất ngờ v&agrave; v&ocirc; c&ugrave;ng th&uacute; vị.&nbsp;Những sinh vật giống như những con bọ đầy m&agrave;u sắc lao ra khỏi tường v&agrave; trần nh&agrave; của m&igrave;nh v&agrave; nhiệm vụ của m&igrave;nh l&agrave; phải bắt tất cả ch&uacute;ng.&nbsp;Đ&acirc;y thực chất giống một bản demo c&ocirc;ng nghệ hơn l&agrave; một tr&ograve; chơi thực tế, nhưng qu&aacute; đ&oacute; m&igrave;nh c&oacute; thể nhận thấy tiềm năng ph&aacute;t triển mạnh mẽ c&aacute;c nội dung dạng n&agrave;y.&nbsp;Meta Quest 3 đ&atilde; nhận diện rất xuất sắc đồ đạc trong căn ph&ograve;ng m&agrave; m&igrave;nh đang chơi, cho ph&eacute;p những con bọ nhảy từa tung tr&ecirc;n đồ đạc của m&igrave;nh, c&aacute;c vết nứt tr&ecirc;n tường th&igrave; tr&ocirc;ng giống như những c&aacute;nh cổng dẫn v&agrave;o một kh&ocirc;ng gian kh&aacute;c v&agrave; con t&agrave;u t&ecirc;n lửa tr&ocirc;ng như thật với những vết ch&aacute;y s&eacute;m tr&ecirc;n bề mặt m&agrave; n&oacute; đ&aacute;p xuống. Trước đ&acirc;y m&igrave;nh kh&ocirc;ng th&iacute;ch những tr&ograve; chơi AR, bởi v&igrave; chưa c&oacute; thiết bị n&agrave;o kết hợp giữa AR v&agrave; VR một c&aacute;ch mượt m&agrave; kh&ocirc;ng giật lag, tuy nhi&ecirc;n với Quest 3 th&igrave; kh&aacute;c, m&igrave;nh kho&aacute;i rồi đấy. C&ograve;n g&igrave; tuyệt vời hơn khi bạn đang ở trong căn ph&ograve;ng của bạn, nằm tr&ecirc;n chiếc giường của bạn v&agrave; ba chấm.<br />\r\n<br />\r\nMột điểm đ&aacute;ng tiền nữa tr&ecirc;n Quest 3, đ&oacute; l&agrave; bộ điều khiển Touch Plus mới.&nbsp;Remote Controllers của Quest 3 đ&atilde; loại bỏ c&aacute;c v&ograve;ng cảm biến cồng kềnh thường thấy tr&ecirc;n c&aacute;c phi&ecirc;n bản trước. V&ograve;ng cảm biến l&agrave; bộ phận mỏng manh, rất dễ hỏng khi bị rơi hoặc va đập, việc loại bỏ m&igrave;nh thấy l&agrave; lựa chọn ch&iacute;nh x&aacute;c đến từ Meta.&nbsp;Mất đi c&aacute;i v&ograve;ng, Controller Quest 3 chỉ nặng c&oacute; 104 gram mỗi chiếc (kh&ocirc;ng pin), nhẹ hơn hầu hết c&aacute;c loại Remote Controllers của c&aacute;c k&iacute;nh vr kh&aacute;c như Controller Quest 2 nặng 128 gram, Controller PSVR 2 nặng 168 gam, Controller Valve Index nặng 196 gam v&agrave; Controller HTC Vive nặng hơn 200 gam.<br />\r\n&nbsp;</p>\r\n\r\n<p><img src=\"https://i.imgur.com/5L1Y7eG.jpg\" /></p>\r\n\r\n<p><br />\r\nC&oacute; thể một số bạn sẽ thắc mắc khi bỏ v&ograve;ng cảm biến như vậy th&igrave; tracking tr&ecirc;n Quest 3 c&oacute; c&ugrave;i hơn tr&ecirc;n Quest 2 kh&ocirc;ng ? C&acirc;u trả lời l&agrave; kh&ocirc;ng. M&igrave;nh đ&atilde; thử nghiệm với Beat Saber, một tr&ograve; chơi rất cần tới độ nhạy của Controllers, kết quả cho thấy Touch Plus mang lại trải nghiệm thậm ch&iacute; c&ograve;n tốt hơn so với &ldquo;bố của n&oacute;&rdquo;.&nbsp;Với Quest 2, khi bạn cao hứng đưa tay l&ecirc;n qu&aacute; cao hoặc ra đằng sau, k&iacute;nh vr sẽ kh&ocirc;ng thể tracking được Controllers, c&ograve;n với Quest 3 th&igrave; bạn cho tay v&agrave;o trong quần k&iacute;nh vr cũng sẽ biết bạn đang l&agrave;m c&aacute;i g&igrave;.<br />\r\n<br />\r\n<img src=\"https://i.imgur.com/wGGwrlS.jpg\" /><br />\r\n<br />\r\nGiống bộ Controllers của Quest 2, Controllers của Quest 3 vẫn trang bị k&egrave;m pin AA khi trong bộ sản phẩm. Để thay pin, tr&ecirc;n Controller Quest 3 c&oacute; n&uacute;t nhấn, nhấn một ph&aacute;t l&agrave; phọt nắp pin ra, v&ocirc; c&ugrave;ng tiện lợi chứ kh&ocirc;ng cần phải tr&agrave; tr&agrave;, miết miết như Quest 2 c&ugrave;i bắp. Pin AA rời theo m&igrave;nh l&agrave; một điểm rất hay của Meta, hết pin th&igrave; bạn thay, rất đơn giản. Nhiều bạn cứ thắc mắc l&agrave; sao ko trang bị pin sạc, pin sạc m&agrave; n&oacute; chai pin th&igrave; thay thế kh&ocirc;ng hề đơn giản ch&uacute;t n&agrave;o.<br />\r\n&nbsp;</p>\r\n\r\n<h3><strong>Meta Quest 3 &ndash; So s&aacute;nh với c&aacute;c sản phẩm kh&aacute;c</strong></h3>\r\n\r\n<p><br />\r\nTrừ Quest 3 ra, tr&ecirc;n thị trường hiện tại chỉ c&oacute; th&ecirc;m 02 loại kh&aacute;c cung cấp t&iacute;nh năng thực tế hỗn hợp AR-VR.&nbsp;<a href=\"https://vrtech.vn/san-pham/kinh-thuc-te-ao-meta-quest-pro-sp828550.html\" target=\"_blank\">Meta Quest Pro</a>&nbsp;được b&aacute;n lẻ với gi&aacute; 1.500 USD v&agrave; HTC VIVE XR Elite được b&aacute;n lẻ với gi&aacute; 1.100 USD. Quest 3 c&oacute; gi&aacute; 500 USD, c&ograve;n chưa bằng 1/3 Quest Pro trong khi đ&oacute; độ ph&acirc;n giải của n&oacute; c&ograve;n cao hơn cả 2 c&aacute;i &ocirc;ng kẹ kia. Với m&igrave;nh, Meta Quest 3 quả thực l&agrave; một m&oacute;n hời.<br />\r\n&nbsp;</p>\r\n\r\n<p><img src=\"https://i.imgur.com/oa6w0CW.jpg\" /></p>\r\n\r\n<p><br />\r\nTheo m&igrave;nh đối thủ lớn nhất của Quest 3 kh&ocirc;ng đ&acirc;u xa, ch&iacute;nh l&agrave; &ldquo;bố của n&oacute;&rdquo;,&nbsp;<a href=\"https://vrtech.vn/san-pham/oculus-quest-2-128gb-256gb-sp783756.html\" target=\"_blank\">Meta Quest 2</a>.&nbsp;Meta đ&atilde; n&oacute;i rất to v&agrave; r&otilde; rằng l&agrave; vẫn tiếp tục hỗ trợ Meta Quest 2 trong tương lai gần, v&igrave; vậy Meta Quest 2 vẫn l&agrave; một sự lựa chọn đầy th&ocirc;ng th&aacute;i cho c&aacute;c bạn mới tiếp x&uacute;c với c&ocirc;ng nghệ thực tế ảo với một mức gi&aacute; cực kỳ tốt.&nbsp;Nh&igrave;n chung, khẳng định lu&ocirc;n, ngon bổ rẻ giờ chẳng c&oacute; thằng n&agrave;o qua được Meta Quest 2 đ&acirc;u.<br />\r\n<br />\r\nVề gi&aacute;, Quest 3 c&oacute; gi&aacute; gần bằng một số k&iacute;nh VR kh&aacute;c tr&ecirc;n thị trường, đ&aacute;ng ch&uacute; &yacute; nhất l&agrave; PSVR2 v&agrave; HP Reverb G2.&nbsp;Với&nbsp;PS VR2, bạn phải c&oacute; Play Station 5 Digital Edition trị gi&aacute; 400 USD để chơi, thư viện tr&ograve; chơi th&igrave; rất chi l&agrave; hạn chế, mỗi game mua c&ugrave;ng từ 50 &ndash; 70 USD.&nbsp;C&ograve;n với HP Reverb G2 y&ecirc;u cầu một PC cấu h&igrave;nh chơi game khủng, chi ph&iacute; chi ra từ 1.000 USD trở l&ecirc;n, chất lượng h&igrave;nh ảnh k&eacute;m v&agrave; bộ điều khiển c&ugrave;i bắp mặc d&ugrave; n&oacute; c&oacute; gi&aacute; cao hơn Quest 3. Ngo&agrave;i ra c&ograve;n c&oacute; một số mẫu kh&aacute;c, như&nbsp;<a href=\"https://vrtech.vn/san-pham/kinh-thuc-te-ao-valve-index-full-kit-sp757948.html\" target=\"_blank\">Valve Index</a>&nbsp;v&agrave; c&aacute;c d&ograve;ng&nbsp;<a href=\"https://vrtech.vn/htc-vive-dm140079.html\" target=\"_blank\">HTC Vive</a>, nhưng phần cứng của rất c&ugrave;i bắp v&agrave; lạc hậu so với Meta Quest 3.<br />\r\n<br />\r\n<strong>Kết luận</strong><br />\r\n<br />\r\nTại thời điểm th&aacute;ng 10 năm 2023, Meta Quest 3 l&agrave; sự lựa chọn tốt nhất, kh&ocirc;ng c&oacute; bất cứ một loại k&iacute;nh vr n&agrave;o c&oacute; thể ngồi chung m&acirc;m với n&oacute;. Nếu bạn lựa chọn mua Meta Quest 3 tại thời điểm hiện tại,&nbsp;m&igrave;nh c&oacute; thể khẳng định lu&ocirc;n l&agrave; bạn đang sở hữu một chiếc k&iacute;nh thực tế ảo c&oacute; cấu h&igrave;nh tốt nhất với mức gi&aacute; cực kỳ hợp l&yacute;, tối ưu nhất.<br />\r\n<br />\r\nHiện tại VRTECH.VN đang ph&acirc;n phối cả 02 phi&ecirc;n bản Meta Quest 3 128GB &amp; 512GB với mức gi&aacute; cực kỳ cạnh tranh, chế độ bảo h&agrave;nh d&agrave;i hạn, hậu m&atilde;i tr&aacute;ch nhiệm. B&ecirc;n cạnh đ&oacute;, VRTECH.VN c&ugrave;ng đang c&oacute; rất nhiều sản phẩm phụ kiện Meta Quest 3 ch&iacute;nh h&atilde;ng, mang lại những trải nghiệm &ecirc;m &aacute;i, thoải m&aacute;i, tuyệt vời hơn cho c&aacute;c bạn.<br />\r\n&nbsp;</p>\r\n\r\n<p><a href=\"https://vrtech.vn/san-pham/kinh-vr-doc-lap-meta-quest-3-128gb-512gb-sp837585.html\" target=\"_blank\"><img src=\"https://i.imgur.com/gnv3GYZ.png\" style=\"height:150px; width:300px\" /></a></p>\r\n', '1731576243_Đánh giá chi tiết chất lượng Meta Quest 3 sau khi trải nghiệm thực tế.jpg', '2024-11-14', 1);
INSERT INTO `article` (`article_id`, `article_author`, `article_title`, `article_summary`, `article_content`, `article_image`, `article_date`, `article_status`) VALUES
(89, 'huỳnh trọng hiển', 'Những phụ kiện người dùng Meta Quest 3 nên mua thêm', '', '<h2><strong>V&ograve;ng đeo c&acirc;n bằng lực Meta Quest 3</strong></h2>\r\n\r\n<p>Mặc d&ugrave;&nbsp;<a href=\"https://vrtech.vn/san-pham/kinh-thuc-te-ao-pico-4-128gb-256gb-sp829351.html\" target=\"_blank\">Pico 4</a>&nbsp;đ&atilde; ra mắt v&agrave; nhận được rất nhiều đ&aacute;nh gi&aacute; t&iacute;ch cực từ người d&ugrave;ng về thiết kế c&ocirc;ng th&aacute;i học tuy nhi&ecirc;n Meta vẫn rất ki&ecirc;n tr&igrave; với thiết kế d&acirc;y đeo &quot;<strong>N</strong>ever&nbsp;<strong>G</strong>ive&nbsp;<strong>U</strong>p&quot; của m&igrave;nh cho em Quest 3. Nếu bạn n&agrave;o đ&atilde; từng d&ugrave;ng Quest 2 th&igrave; c&oacute; thể thấy cảm gi&aacute;c khi đeo thật l&agrave; kh&oacute; chịu, d&acirc;y đeo c&acirc;n bằng lực kh&ocirc;ng tốt, lực bị &eacute;p v&agrave;o th&aacute;i dương v&agrave; m&aacute; rất đau, chơi tầm 20-30 ph&uacute;t l&agrave; muốn th&aacute;o ra rồi. C&aacute;i cảm gi&aacute;c tồi tệ đ&oacute; giờ lại hiện hữu tr&ecirc;n Quest 3, một em h&agrave;ng hot nhất năm 2023.<br />\r\n<br />\r\nTheo m&igrave;nh th&igrave; kh&ocirc;ng phải Meta họ kh&ocirc;ng r&otilde;, m&agrave; họ cố t&igrave;nh l&agrave;m như vậy để b&aacute;n th&ecirc;m Elite Strap k&egrave;m Pin với gi&aacute; tr&ecirc;n trời. Như vậy, d&acirc;y đeo tr&ecirc;n Quest 3 kh&ocirc;ng phải lỗi thiết kế m&agrave; l&agrave; thiết kế c&oacute; chủ đ&iacute;ch để b&aacute;n phụ kiện. Suy ra, c&aacute;c loại v&ograve;ng đeo c&acirc;n bằng lực ch&iacute;nh l&agrave; phụ kiện quan trọng nhất d&agrave;nh cho&nbsp;<a href=\"https://vrtech.vn/san-pham/kinh-vr-doc-lap-meta-quest-3-128gb-512gb-sp837585.html\" target=\"_blank\">Meta Quest 3</a>.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"strap devaso meta quest 3\" src=\"https://i.imgur.com/4v3ArmU.png\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lợi &iacute;ch mang lại từ việc lắp th&ecirc;m v&ograve;ng đeo c&acirc;n bằng lực cho Meta Quest 3 gồm:<br />\r\n✅&nbsp;C&acirc;n bằng lực trước &amp; sau, điểm t&igrave; lực kh&ocirc;ng c&ograve;n &eacute;p v&agrave;o th&aacute;i dương v&agrave; m&aacute; l&agrave;m bạn đau khi sử dụng. Như m&igrave;nh, khi lắp th&ecirc;m Strap, thời gian m&igrave;nh.<br />\r\n✅&nbsp;chơi li&ecirc;n tục c&oacute; thể l&ecirc;n tới 1.5 giờ m&agrave; vẫn cảm thấy thoải m&aacute;i.<br />\r\n✅&nbsp;Cảm gi&aacute;c đeo sẽ &ocirc;m đầu hơn, chắc chắn hơn.<br />\r\n✅&nbsp;V&ograve;ng đeo c&oacute; lớp đệm g&aacute;y, phần tiếp gi&aacute;p sau g&aacute;y cảm thấy thoải m&aacute;i hơn.<br />\r\n&nbsp;</p>\r\n\r\n<blockquote>\r\n<p><strong>Link sản phẩm tham khảo</strong>:&nbsp;<a href=\"https://vrtech.vn/vong-deo-can-bang-luc-cho-meta-quest-3-dm170292.html\" target=\"_blank\">C&aacute;c loại V&ograve;ng c&acirc;n bằng lực Meta Quest 3</a></p>\r\n</blockquote>\r\n\r\n<h2><br />\r\n<strong>Bọc Silicone tay cầm điểu khiển Meta Quest 3</strong></h2>\r\n\r\n<p>Phụ kiện quan trọng đứng thứ 2 d&agrave;nh cho Quest 3 theo m&igrave;nh l&agrave;&nbsp;bọc Silicone tay cầm điểu khiển. Thường khi c&aacute;c bạn chơi một l&uacute;c, mồ h&ocirc;i tay sẽ ra, l&uacute;c đ&oacute; cảm gi&aacute;c cầm nắm sẽ trơn, kh&ocirc;ng chắc chắn. B&ecirc;n cạnh đ&oacute;, mồ h&ocirc;i từ tay l&acirc;u ng&agrave;y đọng v&agrave;o c&aacute;c khe cạnh của Remote sẽ rất mất vệ sinh. Mồ h&ocirc;i cũng c&oacute; muối, hơi muối kết tinh v&agrave;o c&aacute;c vi mạch b&ecirc;n trong cũng l&agrave;m cho tay cầm điều khiển Quest 3 giảm độ nhạy, nặng hơn l&agrave; hỏng h&oacute;c. Sử dụng&nbsp;bọc Silicone sẽ gi&uacute;p giữ g&igrave;n tay cầm điểu khiển Meta Quest 3 của bạn bền hơn, sạch hơn v&agrave; cảm gi&aacute;c cầm nắm chắc chắn hơn.</p>\r\n\r\n<blockquote>\r\n<p><strong>Link sản phẩm tham khảo</strong>:&nbsp;<a href=\"https://vrtech.vn/san-pham/boc-silicone-cho-tay-cam-dieu-khien-meta-quest-3-sp843065.html\" target=\"_blank\">Bọc Silicone Cho Tay Cầm Điều Khiển Meta Quest 3</a></p>\r\n</blockquote>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p><img alt=\"Bọc Silicone Cho Tay Cầm Điều Khiển Meta Quest 3\" src=\"https://i.imgur.com/uIbit03h.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2><br />\r\n<strong>Bọc Silicone lớp đệm khu&ocirc;n mặt Meta Quest 3</strong></h2>\r\n\r\n<p>Phần đệm tiếp x&uacute;c khu&ocirc;n mặt tr&ecirc;n Quest 3 được l&oacute;t bằng một lớp đệm xốp bọc vải lưới b&ecirc;n ngo&agrave;i. Mặc d&ugrave; m&igrave;nh thấy rất &ecirc;m &aacute;i, thoải m&aacute;i v&agrave; thấm h&uacute;t mồ h&ocirc;i tốt nhưng về l&acirc;u về d&agrave;i sẽ kh&aacute; h&ocirc;i v&agrave; mất vệ sinh.&nbsp;Đ&oacute; l&agrave; v&igrave; phần đệm của Quest 3 kh&ocirc;ng thể th&aacute;o rời v&agrave; đem đi giặt như Quest 2 được. B&ecirc;n cạnh đ&oacute;, lớp đệm gốc sẽ kh&ocirc;ng c&oacute; tấm cản tia s&aacute;ng sống mũi, hiện tượng lọt s&aacute;ng từ sống mũi sẽ l&agrave;m bạn cảm thấy kh&aacute; kh&oacute; chịu, giảm cảm nhận ch&acirc;n thực khi chơi. Theo m&igrave;nh, c&aacute;c bạn n&ecirc;n mua th&ecirc;m một tấm bọc silicone để bọc lớp đệm gốc n&agrave;y lại. Lưu &yacute;, c&aacute;c bạn n&ecirc;n mua bọc silicone c&oacute; tấm cản s&aacute;ng sống mũi để giảm t&igrave;nh trạng lọt s&aacute;ng, tăng t&iacute;nh ch&acirc;n thực khi trải nghiệm c&aacute;c nội dung thực tế ảo.<br />\r\n&nbsp;</p>\r\n\r\n<blockquote>\r\n<p><strong>Link sản phẩm tham khảo</strong>:&nbsp;<a href=\"https://vrtech.vn/san-pham/boc-silicone-khuon-mat-chong-tham-mo-hoi-can-sang-meta-quest-3-sp843068.html\" target=\"_blank\">Bọc Silicone Khu&ocirc;n Mặt Chống Thấm Mồ H&ocirc;i Cản S&aacute;ng Meta Quest 3</a></p>\r\n</blockquote>\r\n\r\n<p><img alt=\"Bọc Silicone Khuôn Mặt Chống Thấm Mồ Hôi Cản Sáng Meta Quest 3\" src=\"https://i.imgur.com/kHwRJDW.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>Ngo&agrave;i ra, nếu muốn bảo vệ to&agrave;n diện cho k&iacute;nh Meta Quest 3, c&aacute;c bạn cũng c&oacute; thể tham khảo th&ecirc;m&nbsp;<a href=\"https://vrtech.vn/san-pham/bo-07-phu-kien-bao-ve-toan-dien-meta-quest-3-sp843778.html\" target=\"_blank\">Bộ phụ kiện 7 m&oacute;n bảo vệ to&agrave;n diện cho Meta Quest 3</a>.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Bộ 07 Phụ Kiện Bảo Vệ Toàn Diện Meta Quest 3\" src=\"https://i.imgur.com/nYVSOcK.png\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<h2><strong>Gọng k&iacute;nh cận Meta Quest 3</strong></h2>\r\n\r\n<p>Mặc d&ugrave; k&iacute;ch thước Quest 3 cho ph&eacute;p người d&ugrave;ng đeo k&egrave;m k&iacute;nh cận tuy nhi&ecirc;n cảm gi&aacute;c sẽ kh&ocirc;ng thoải m&aacute;i do vướng v&iacute;u. B&ecirc;n cạnh đ&oacute; đeo k&egrave;m k&iacute;nh cận cũng&nbsp;dễ l&agrave;m trầy thấu k&iacute;nh Quest 3 do k&iacute;nh cận cấn v&agrave;o thấu k&iacute;nh khi căn chỉnh. Để c&oacute; trải nghiệm thoải m&aacute;i v&agrave; kh&ocirc;ng l&agrave;m trầy thấu k&iacute;nh, c&aacute;c bạn n&ecirc;n sử dụng Gọng gắn tr&ograve;ng cận. Sản phẩm cho ph&eacute;p c&aacute;c bạn ốp thẳng tr&ograve;ng cận v&agrave;o thấu k&iacute;nh Quest 3, trải nghiệm sẽ v&ocirc; cũng dễ chịu, y hệt như c&aacute;c bạn kh&ocirc;ng bị cận vậy.</p>\r\n\r\n<blockquote>\r\n<p><strong>Link sản phẩm tham khảo</strong>:&nbsp;<a href=\"https://vrtech.vn/gong-kinh-can-meta-quest-3-dm170360.html\" target=\"_blank\">C&aacute;c loại Gọng cận Quest 3</a></p>\r\n</blockquote>\r\n\r\n<p><br />\r\n<img alt=\"Gọng Kính Cận Meta Quest 3 - Phiên bản 2.1 - Nam Châm Từ Tính\" src=\"https://i.imgur.com/ViIHoKF.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p><br />\r\n<br />\r\nNgo&agrave;i 04 loại phụ kiện n&ecirc;u tr&ecirc;n, c&ograve;n rất nhiều phụ kiện d&agrave;nh cho Quest 3 kh&aacute;c m&agrave; t&ugrave;y theo nhu cầu sử dụng c&aacute;c bạn c&oacute; thể lựa chọn mua th&ecirc;m. C&aacute;c bạn c&oacute; thể tham khảo th&ecirc;m tại&nbsp;<a href=\"https://vrtech.vn/phu-kien-meta-quest-3-dm170197.html\" target=\"_blank\">Danh mục c&aacute;c phụ kiện d&agrave;nh cho k&iacute;nh thực tế ảo Meta Quest 3</a>.</p>\r\n', '1731576377_Những phụ kiện người dùng Meta Quest 3 nên mua thêm.png', '2024-11-14', 1),
(90, 'huỳnh trọng hiển', 'Vườn Nhà Xanh là gì?', '', '<p>Ng&agrave;y 13 th&aacute;ng 10 năm 2023,&nbsp;<a href=\"https://vrtech.vn/san-pham/kinh-vr-doc-lap-meta-quest-3-128gb-512gb-sp837585.html\">Meta Quest 3</a>&nbsp;đ&atilde; ch&iacute;nh thức được Vrtech ph&acirc;n phối tại Việt Nam. Dưới đ&acirc;y l&agrave; một số h&igrave;nh ảnh thật của sản phẩm Meta Quest 3:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\n<strong><img src=\"https://i.imgur.com/UNPyUV5.jpg\" /><br />\r\n<br />\r\n<img src=\"https://i.imgur.com/n0cnd3c.jpg\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://i.imgur.com/Xtmf8Tc.jpg\" /><br />\r\n<br />\r\n<img src=\"https://i.imgur.com/dH7icaa.jpg\" /><br />\r\n<br />\r\n<img src=\"https://i.imgur.com/k3RemkZ.jpg\" /></p>\r\n', '1731742970_Vườn Nhà Xanh 1.png', '2024-11-16', 1);

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
(1, 'Mỹ'),
(2, 'Anh'),
(3, 'Đức'),
(4, 'Trung quốc'),
(9, 'Nhật bản');

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
(3, 'màu đen'),
(4, 'màu trắng'),
(5, 'màu xám'),
(6, 'màu bạc'),
(7, 'màu xanh dương'),
(8, 'màu lục'),
(9, 'màu đỏ'),
(10, 'màu vàng'),
(11, 'màu hồng'),
(13, 'màu tím');

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
(1, 'Máy chơi game cầm tay', 'Tất cả các sản phẩm ', 'pcchoigame.jpg'),
(2, 'Kính thực tế ảo cho máy tính', 'Kính thực tế ảo cho máy tính', '1_4.jpg'),
(3, 'Kính thực tế ảo độc lập', 'Kính thực tế ảo độc lập', 'images.jpg'),
(19, 'Phụ kiện thực tế ảo', 'tất cả phụ kiện cho thực tế ảo điện thoại và máy tính', '1731528060_'),
(20, 'Thiết bị thực tế ảo tăng cường', 'cài đặt game thực tế ảo', '1731528481_'),
(21, 'Phụ kiện chơi game', 'các loại phụ kiện chơi game cho game thủ', '1731528649_');

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
(1819, 35, 'hiển', '0398419004', 'hậu giang', ''),
(1872, 30, 'La Ngọc Nay', '0387581170', 'Cần Thơ', ''),
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
(27, 35, 'hiển', 'vnpt', '1234567890', 'hang moi', '9622', '2024-11-14', 14705800000, 0);

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
(42, '9622', 167, 27, 9000000);

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
(205, 4840, '2024-11-16 15:13:20', 36, 2635, 8500000, 1, 0);

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
(218, 4840, 167, 1, 8500000, 0);

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
(161, 'Bọc Silicone JYS FULLBODY Cho Máy Chơi Game Asus ROG Ally', 21, 3, 4, 15, 2, 100000, 300000, 0, '<p>CHI TIẾT SẢN PHẨM</p>\r\n\r\n<p><strong>Bọc Silicone JYS FULLBODY Cho M&aacute;y Chơi Game Asus ROG Ally</strong><strong>&nbsp;</strong>l&agrave; phụ kiện rất cần thiết. C&ocirc;ng dụng sản phẩm gi&uacute;p chống trầy xước, v&agrave;o nước, b&aacute;m bẩm v&agrave; hạn chế lực va đập nếu chẳng may bạn đ&aacute;nh rơi em&nbsp;ROG Ally&nbsp;y&ecirc;u thương của m&igrave;nh. Chất liệu sản phẩm được l&agrave;m từ Silicone cao cấp sử dụng trong thực phẩm n&ecirc;n tuyệt đối an to&agrave;n cho da, kh&ocirc;ng g&acirc;y k&iacute;ch ứng da. Mặt sau bọc c&oacute; thiết kế gai sần để tăng độ ma s&aacute;t, cảm gi&aacute;c cầm nắm sẽ chắc chắn hơn. C&aacute;c khe n&uacute;t tr&ecirc;n bọc silicone được thiết kế đầy đủ v&agrave; chuẩn cho&nbsp;ROG Ally, bạn sẽ kh&ocirc;ng lo bị che đi n&uacute;t &acirc;m lượng hay khe kết nối sạc khi sử dụng sản phẩm.</p>\r\n\r\n<p><br />\r\n<img alt=\"Bọc Silicone JYS FULLBODY Cho Máy Chơi Game Asus ROG Ally \" src=\"https://i.imgur.com/HGN7JG9.jpg\" /><br />\r\n<br />\r\n<img alt=\"Bọc Silicone JYS FULLBODY Cho Máy Chơi Game Asus ROG Ally \" src=\"https://i.imgur.com/Bc3fmGz.jpg\" /><br />\r\n<br />\r\n<img alt=\"Bọc Silicone JYS FULLBODY Cho Máy Chơi Game Asus ROG Ally \" src=\"https://i.imgur.com/DGEqFhT.png\" /><br />\r\n<br />\r\n<img alt=\"Bọc Silicone JYS FULLBODY Cho Máy Chơi Game Asus ROG Ally \" src=\"https://i.imgur.com/IVca9dy.png\" /><br />\r\n<br />\r\n<img alt=\"Bọc Silicone JYS FULLBODY Cho Máy Chơi Game Asus ROG Ally \" src=\"https://i.imgur.com/qmYYaYC.png\" /><br />\r\n<br />\r\n<img alt=\"Bọc Silicone JYS FULLBODY Cho Máy Chơi Game Asus ROG Ally \" src=\"https://i.imgur.com/MDz875n.jpg\" /><br />\r\n<br />\r\n<img alt=\"Bọc Silicone JYS FULLBODY Cho Máy Chơi Game Asus ROG Ally \" src=\"https://i.imgur.com/Nc9d7E8.jpg\" /><br />\r\n<br />\r\n<img alt=\"Bọc Silicone JYS FULLBODY Cho Máy Chơi Game Asus ROG Ally \" src=\"https://i.imgur.com/L9mrs6j.jpg\" /><br />\r\n<br />\r\n<img alt=\"Bọc Silicone JYS FULLBODY Cho Máy Chơi Game Asus ROG Ally \" src=\"https://i.imgur.com/MQ9ieTp.jpg\" /><br />\r\n<br />\r\n<img alt=\"Bọc Silicone JYS FULLBODY Cho Máy Chơi Game Asus ROG Ally \" src=\"https://i.imgur.com/rFXangS.jpg\" /></p>\r\n', '1731531527_Bọc Silicone JYS FULLBODY Cho Máy Chơi Game Asus ROG Ally.jpg', 1),
(162, 'Bọc Silicone Tay Cầm Sony PS Portal - Chính Hãng Dobe', 21, 4, 4, 21, 0, 200000, 200000, 0, '<p>CHI TIẾT SẢN PHẨM</p>\r\n\r\n<p>Bọc Silicone Tay Cầm Sony PS Portal - Ch&iacute;nh H&atilde;ng Dobe l&agrave; phụ kiện cơ bản nhất d&agrave;nh cho Sony Playstation Portal. Sản phẩm được l&agrave;m từ vật liệu Silicone c&oacute; t&iacute;nh mềm dẻo, đ&agrave;n hồi cao v&agrave; cũng kh&ocirc;ng k&egrave;m phần chắc chắn. Bọc Silicone Tay Cầm Sony PS Portal mang lại những c&ocirc;ng dụng như sau:<br />\r\n✅ Chống trầy xước<br />\r\n✅ Chống mồ h&ocirc;i tay<br />\r\n✅ Chống b&aacute;m bẩn<br />\r\n✅ Hạn chế lực khi va đập</p>\r\n\r\n<p><img alt=\"Bọc Silicone Tay Cầm Sony PS Portal - Chính Hãng Dobe\" src=\"https://i.imgur.com/B9A8Trm.png\" style=\"height:600px; width:600px\" /><br />\r\n&nbsp;</p>\r\n\r\n<p>Bọc Silicone Tay Cầm Sony PS Portal được thiết kế v&agrave; sản xuất bởi Dobe, c&ocirc;ng ty chuy&ecirc;n về phụ kiện game h&agrave;ng đầu Trung Quốc. Sản phẩm c&oacute; 02 loại m&agrave;u, xanh đỏ v&agrave; trắng.</p>\r\n\r\n<p><img alt=\"Bọc Silicone Tay Cầm Sony PS Portal - Chính Hãng Dobe\" src=\"https://i.imgur.com/ngVxn0v.png\" style=\"height:600px; width:600px\" /><br />\r\n<img alt=\"Bọc Silicone Tay Cầm Sony PS Portal - Chính Hãng Dobe\" src=\"https://i.imgur.com/9XU0uE5.png\" style=\"height:600px; width:600px\" /><br />\r\n<br />\r\n<strong>H&Igrave;NH ẢNH THẬT SẢN PHẨM</strong><br />\r\n<br />\r\n<img alt=\"Bọc Silicone Tay Cầm Sony PS Portal - Chính Hãng Dobe\" src=\"https://i.imgur.com/OteyVJi.jpg\" style=\"height:600px; width:600px\" /><br />\r\n<img alt=\"Bọc Silicone Tay Cầm Sony PS Portal - Chính Hãng Dobe\" src=\"https://i.imgur.com/r3JnyHw.jpg\" style=\"height:600px; width:600px\" /><br />\r\n<img alt=\"Bọc Silicone Tay Cầm Sony PS Portal - Chính Hãng Dobe\" src=\"https://i.imgur.com/YiYy2CT.jpg\" style=\"height:600px; width:600px\" /><br />\r\n<img alt=\"Bọc Silicone Tay Cầm Sony PS Portal - Chính Hãng Dobe\" src=\"https://i.imgur.com/UPVY3QQ.jpg\" style=\"height:600px; width:600px\" /></p>\r\n', '1731532389_Bọc Silicone Tay Cầm Sony PS Portal - Chính Hãng Dobe.jpg', 1),
(163, 'Bọc Silicone JYS FULLBODY Cho Máy Chơi Game Asus ROG Ally', 21, 4, 7, 0, 0, 200000, 300000, 0, '<p>CHI TIẾT SẢN PHẨM</p>\r\n\r\n<p>Bọc Silicone Tay Cầm Sony PS Portal - Ch&iacute;nh H&atilde;ng Dobe l&agrave; phụ kiện cơ bản nhất d&agrave;nh cho Sony Playstation Portal. Sản phẩm được l&agrave;m từ vật liệu Silicone c&oacute; t&iacute;nh mềm dẻo, đ&agrave;n hồi cao v&agrave; cũng kh&ocirc;ng k&egrave;m phần chắc chắn. Bọc Silicone Tay Cầm Sony PS Portal mang lại những c&ocirc;ng dụng như sau:<br />\r\n✅ Chống trầy xước<br />\r\n✅ Chống mồ h&ocirc;i tay<br />\r\n✅ Chống b&aacute;m bẩn<br />\r\n✅ Hạn chế lực khi va đập</p>\r\n\r\n<p><img alt=\"Bọc Silicone Tay Cầm Sony PS Portal - Chính Hãng Dobe\" src=\"https://i.imgur.com/B9A8Trm.png\" style=\"height:600px; width:600px\" /><br />\r\n&nbsp;</p>\r\n\r\n<p>Bọc Silicone Tay Cầm Sony PS Portal được thiết kế v&agrave; sản xuất bởi Dobe, c&ocirc;ng ty chuy&ecirc;n về phụ kiện game h&agrave;ng đầu Trung Quốc. Sản phẩm c&oacute; 02 loại m&agrave;u, xanh đỏ v&agrave; trắng.</p>\r\n\r\n<p><img alt=\"Bọc Silicone Tay Cầm Sony PS Portal - Chính Hãng Dobe\" src=\"https://i.imgur.com/ngVxn0v.png\" style=\"height:600px; width:600px\" /><br />\r\n<img alt=\"Bọc Silicone Tay Cầm Sony PS Portal - Chính Hãng Dobe\" src=\"https://i.imgur.com/9XU0uE5.png\" style=\"height:600px; width:600px\" /><br />\r\n<br />\r\n<strong>H&Igrave;NH ẢNH THẬT SẢN PHẨM</strong><br />\r\n<br />\r\n<img alt=\"Bọc Silicone Tay Cầm Sony PS Portal - Chính Hãng Dobe\" src=\"https://i.imgur.com/OteyVJi.jpg\" style=\"height:600px; width:600px\" /><br />\r\n<img alt=\"Bọc Silicone Tay Cầm Sony PS Portal - Chính Hãng Dobe\" src=\"https://i.imgur.com/r3JnyHw.jpg\" style=\"height:600px; width:600px\" /><br />\r\n<img alt=\"Bọc Silicone Tay Cầm Sony PS Portal - Chính Hãng Dobe\" src=\"https://i.imgur.com/YiYy2CT.jpg\" style=\"height:600px; width:600px\" /><br />\r\n<img alt=\"Bọc Silicone Tay Cầm Sony PS Portal - Chính Hãng Dobe\" src=\"https://i.imgur.com/UPVY3QQ.jpg\" style=\"height:600px; width:600px\" /></p>\r\n', '1731532717_Bọc Silicone Tay Cầm Sony PS Portal - Chính Hãng Dobe.jpg', 1),
(166, 'Kính thực tế ảo HTC Vive Focus Plus', 0, 3, 3, 35, 1, 7000000, 8500000, 0, '<h2><strong>M&ocirc; tả sản phẩm</strong></h2>\r\n\r\n<h2>Đ&aacute;nh gi&aacute; chi tiết về K&iacute;nh thực tế ảo HTC Vive Focus Plus - Mang lại cho người d&ugrave;ng c&aacute;c giải ph&aacute;p VR chuy&ecirc;n nghiệp.</h2>\r\n\r\n<p>K&iacute;nh thực tế ảo HTC Vive Focus Plus&nbsp;được hợp t&aacute;c thiết kế v&agrave; sản xuất bởi h&atilde;ng&nbsp;HTC&nbsp;-&nbsp;HTC, l&agrave; một c&ocirc;ng ty chuy&ecirc;n sản xuất thiết bị điện tử ti&ecirc;u d&ugrave;ng như laptop, smartphone của Đ&agrave;i Loan, được th&agrave;nh lập v&agrave;o năm 1997.</p>\r\n\r\n<p><img alt=\"htc vive focus plus\" src=\"https://i.imgur.com/jU6YKZT.jpg\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<p>K&iacute;nh thực tế ảo HTC Vive Focus Plus&nbsp;L&agrave; thiết bị Thực tế ảo chuy&ecirc;n nghiệp, kh&ocirc;ng d&acirc;y, linh động cho c&aacute;c ứng dụng của doanh nghiệp, VIVE Focus Plus được thiết kế để dễ d&agrave;ng triển khai v&agrave; quản l&yacute;. Được trang bị bộ điều khiển 6 mức độ tự do (6DoF), đồ họa n&acirc;ng cao v&agrave; thiết kế c&ocirc;ng th&aacute;i học mang đến sự tiện nghi tuyệt vời. Thiết bị Thực tế ảo tất cả-trong-một (all-in-one) n&agrave;y l&agrave; sản phẩm l&yacute; tưởng cho c&aacute;c ph&ograve;ng trưng b&agrave;y, m&ocirc; phỏng c&aacute;c kh&oacute;a đ&agrave;o tạo, hội nghị trong kh&ocirc;ng gian ảo v&agrave; hơn thế nữa.</p>\r\n\r\n<p><img alt=\"htc vive focus plus\" src=\"https://i.imgur.com/lWZo7Bo.jpg\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<p>K&iacute;nh thực tế ảo HTC Vive Focus Plus&nbsp;được thiết kế với m&agrave;n h&igrave;nh k&eacute;p Dual AMOLED c&oacute; k&iacute;ch thước 3,5&quot; c&oacute; độ ph&acirc;n giải cao 3K 2880p x 1600p, phạm vi quan s&aacute;t l&ecirc;n đến 110&deg; mang đến cho người d&ugrave;ng đồ hoạ, k&yacute; tự v&agrave; bề mặt ảnh r&otilde; r&agrave;ng, mịn m&agrave;ng ho&agrave;n hảo, v&igrave; thế người d&ugrave;ng sẽ thấy được h&igrave;nh ảnh với độ trung thực cao ngay cả khi sử dụng trong những trường hợp v&agrave; điều kiện khắt khe nhất.</p>\r\n\r\n<p><img alt=\"htc vive focus plus\" src=\"https://i.imgur.com/TW0fHhE.jpg\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<p>K&iacute;nh thực tế ảo HTC Vive Focus Plus&nbsp;được trang bị với hệ thống &acirc;m thanh t&iacute;ch hợp được thiết kế tỉ mỉ, đảm bảo cho ra &acirc;m thanh ch&acirc;n thực, sống động, r&otilde; r&agrave;ng gi&uacute;p cho người d&ugrave;ng c&oacute; thể đắm ch&igrave;m v&agrave;o trong chiều kh&ocirc;ng gian ảo. Hơn nữa, tai nghe c&ograve;n được trang bị với microphone t&iacute;ch hợp c&oacute; t&iacute;nh năng giảm tiếng ồn gi&uacute;p cho người d&ugrave;ng c&oacute; thể dễ d&agrave;ng giao tiếp với c&aacute;c người d&ugrave;ng kh&aacute;c với chất lượng &acirc;m thanh r&otilde; r&agrave;ng, chuẩn x&aacute;c. Ngo&agrave;i ra, K&iacute;nh c&ograve;n được thiết kế với cổng jack 3,5mm tiện lợi gi&uacute;p cho người d&ugrave;ng c&oacute; thể sử d&ugrave;ng k&iacute;nh với c&aacute;c thiết bị &acirc;m thanh kh&aacute;c tuỳ theo &yacute; muốn, gi&uacute;p cho trải nghiệm VR trở n&ecirc;n phong ph&uacute; hơn.</p>\r\n\r\n<p><img alt=\"htc vive focus plus\" src=\"https://i.imgur.com/95JjrOK.jpg\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<p>K&iacute;nh thực tế ảo HTC Vive Focus Plus&nbsp;đi k&egrave;m với hệ thống theo d&otilde;i tương t&aacute;c 6DoF sẵn c&oacute; trong bộ điều khiển ho&agrave;n to&agrave;n mới, việc điều hướng v&agrave; chuyển động của tay sẽ trực quan v&agrave; tự nhi&ecirc;n hơn. Bộ k&iacute;ch hoạt &aacute;p lực si&ecirc;u nhạy cung cấp th&ecirc;m khả năng tương t&aacute;c v&agrave; thao t&aacute;c của c&aacute;c vật thể trong m&ocirc;i trường ảo.&nbsp;Kết hợp với k&iacute;nh hỗ trợ c&ocirc;ng nghệ 6DoF, người d&ugrave;ng c&oacute; thể tương t&aacute;c liền mạch với m&ocirc;i trường ảo v&agrave; cảm nhận r&otilde; m&ocirc;i trường thực tế ảo thật sự tự do v&agrave; kh&ocirc;ng r&agrave;ng buộc.</p>\r\n\r\n<p><img alt=\"htc vive focus plus\" src=\"https://i.imgur.com/UdTvXSw.jpg\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<p>K&iacute;nh thực tế ảo HTC Vive Focus Plus&nbsp;c&ograve;n được trang bị với 2 bộ điều khiển sử dụng Chirp SonicTrack&trade; 6DoF ultrasonic + IMU fusion tracking, bao gồm đầy đủ c&aacute;c n&uacute;t chức năng gi&uacute;p cho người d&ugrave;ng c&oacute; thể c&agrave;i đặt, tuỳ chỉnh cũng như tương t&aacute;c với c&aacute;c đối tượng trong thực tế ảo một c&aacute;ch dễ d&agrave;ng hơn. Ngo&agrave;i ra, thiết bị c&ograve;n được thiết kế với cổng kết nối USB type C th&ocirc;ng dụng dễ d&agrave;ng kết nối. C&ugrave;ng với n&oacute;, Tay cầm sử dụng pin AAA gi&uacute;p cho thiết bị c&oacute; khả năng hoạt động l&ecirc;n đến 4 tiếng</p>\r\n\r\n<p><img alt=\"htc vive focus plus\" src=\"https://i.imgur.com/gFIZ70I.jpg\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<p>Th&ocirc;ng số kỹ thuật của&nbsp;K&iacute;nh thực tế ảo HTC Vive Focus Plus:</p>\r\n\r\n<p>- Bộ vi xử l&yacute;: Qualcomm&reg; Snapdragon&trade; 835.<br />\r\n- Bộ nhớ Ram/Rom:&nbsp;4GB/32GB<br />\r\n- Khe thẻ nhớ:&nbsp;MicroSD c&oacute; hỗ trợ l&ecirc;n tới 2TB<br />\r\n- Cổng kết nối USB: USB Type C<br />\r\n- Nguồn sạc v&agrave; dung lượng Pin:&nbsp;Pin sạc lắp b&ecirc;n trong (l&ecirc;n đến 3 giờ* sử dụng li&ecirc;n tục), hỗ trợ sạc nhanh Quick charge 3.0</p>\r\n', '1731570120_Kính thực tế ảo HTC Vive Focus Plus.jpg', 1),
(167, 'Kính Oculus DK2', 0, 2, 3, 36, 1, 9000000, 8500000, 0, '<p>CHI TIẾT SẢN PHẨM</p>\r\n\r\n<p>D&ugrave;ng lập tr&igrave;nh hoặc bộ 6 ghế, 9 ghế, quả trứng. Giải ph&aacute;p gi&aacute; rẻ để kinh doanh chợ đ&ecirc;m hay trải nghiệm VR t&agrave;u lượn, nh&agrave; ma</p>\r\n\r\n<p>Tặng k&egrave;m 200 Game VR cho DK2 d&ugrave;ng sdk 0.6&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://i.imgur.com/78AxV6j.jpg\" /><img src=\"https://i.imgur.com/poVXABV.jpg\" /><img src=\"https://i.imgur.com/n3yuy8X.jpg\" /></p>\r\n', '1731570748_Kính Oculus DK2.jpg', 1),
(168, 'Súng thực tế ảo ARG-09', 20, 2, 7, 200, 0, 7000000, 200000, 0, '<h1>S&uacute;ng thực tế ảo ARG-09</h1>\r\n\r\n<p>- Miễn ph&iacute; kho 26 games<br />\r\n- Hỗ trợ: Android, iOS<br />\r\n- Giao h&agrave;ng si&ecirc;u tốc 60 ph&uacute;t (HCM)<br />\r\n- Bảo h&agrave;nh 06 th&aacute;ng 1 đổi 1</p>\r\n\r\n<p>CHI TIẾT SẢN PHẨM</p>\r\n\r\n<p><br />\r\n<img alt=\"súng thực tế tăng cường arg-09\" src=\"https://i.imgur.com/OnMqswn.jpg\" style=\"height:400px; width:600px\" /><br />\r\n<img alt=\"súng thực tế tăng cường arg-09\" src=\"https://i.imgur.com/WYSaVEe.jpg\" style=\"height:400px; width:600px\" /><br />\r\n<img alt=\"súng thực tế tăng cường arg-09\" src=\"https://i.imgur.com/NdfiSlT.jpg\" style=\"height:400px; width:600px\" /><br />\r\n<img alt=\"súng thực tế tăng cường arg-09\" src=\"https://i.imgur.com/t0IT6Da.jpg\" style=\"height:1067px; width:600px\" /><br />\r\n<img alt=\"súng thực tế tăng cường arg-09\" src=\"https://i.imgur.com/QWa8yYq.jpg\" style=\"height:1067px; width:600px\" /><br />\r\n<img alt=\"súng thực tế tăng cường arg-09\" src=\"https://i.imgur.com/a8H4ef4.jpg\" style=\"height:1067px; width:600px\" /><br />\r\n<img alt=\"súng thực tế tăng cường arg-09\" src=\"https://i.imgur.com/7G8Vk4z.jpg\" style=\"height:1067px; width:600px\" /><br />\r\n<img alt=\"súng thực tế tăng cường arg-09\" src=\"https://i.imgur.com/kIumuTI.png\" style=\"height:796px; width:600px\" /><br />\r\n<img alt=\"súng thực tế tăng cường arg-09\" src=\"https://i.imgur.com/zsZfkaz.png\" style=\"height:424px; width:600px\" /><br />\r\n<img alt=\"súng thực tế tăng cường arg-09\" src=\"https://i.imgur.com/lwKQlFR.png\" style=\"height:424px; width:600px\" /></p>\r\n', '1731572547_Súng thực tế ảo ARG-09.jpg', 1),
(169, 'Súng thực tế ảo tăng cường AR VR Park', 20, 4, 4, 10004, 0, 200000, 380000, 0, '', '1731572663_Súng thực tế ảo tăng cường AR VR Park.jpg', 1),
(170, 'Kính thực tế tăng cường AR HR-Box1', 0, 2, 4, 0, 0, 700000, 850000085, 5, '<h1>K&iacute;nh thực tế tăng cường AR HR-Box1</h1>\r\n\r\n<p>- D&ugrave;ng cho thực tế tăng cường<br />\r\n- Bảo h&agrave;nh 12 th&aacute;ng 1 đổi 1<br />\r\n- Giao h&agrave;ng COD to&agrave;n quốc<br />\r\n- C&ograve;n h&agrave;ng</p>\r\n', '1731572811_Kính thực tế tăng cường AR HR-Box1.jpg', 1),
(171, 'Súng thực tế ảo AR GUN - G2', 20, 1, 3, 0, 0, 700000, 7500000, 12, '<p>&nbsp;</p>\r\n\r\n<p>CHI TIẾT SẢN PHẨM</p>\r\n\r\n<p>- Kết nối Bluetooth 4.0<br />\r\n- Bảo h&agrave;nh 12 th&aacute;ng 1 đổi 1<br />\r\n- Giao h&agrave;ng COD to&agrave;n quốc<br />\r\n- GIao h&agrave;ng HCM trong 3 tiếng<br />\r\n- Miễn ph&iacute; vận chuyển</p>\r\n\r\n<p><img alt=\"G2详情页-中文--790_01\" src=\"https://cbu01.alicdn.com/img/ibank/2017/296/324/4337423692_1562228162.jpg\" /><br />\r\n<img alt=\"G2详情页-中文--790_02\" src=\"https://cbu01.alicdn.com/img/ibank/2017/275/030/4339030572_1562228162.jpg\" /><br />\r\n<img alt=\"G2详情页-中文--790_03\" src=\"https://cbu01.alicdn.com/img/ibank/2017/692/624/4337426296_1562228162.jpg\" /><br />\r\n<img alt=\"G2详情页-中文--790_04\" src=\"https://cbu01.alicdn.com/img/ibank/2017/840/234/4337432048_1562228162.jpg\" /><br />\r\n<img alt=\"G2详情页-中文--790_05\" src=\"https://cbu01.alicdn.com/img/ibank/2017/832/924/4337429238_1562228162.jpg\" /><br />\r\n<img alt=\"G2详情页-中文--790_06\" src=\"https://cbu01.alicdn.com/img/ibank/2017/661/930/4339039166_1562228162.jpg\" /><br />\r\n<img alt=\"G2详情页-中文--790_07\" src=\"https://cbu01.alicdn.com/img/ibank/2017/908/024/4337420809_1562228162.jpg\" /><br />\r\n<img alt=\"G2详情页-中文--790_08\" src=\"https://cbu01.alicdn.com/img/ibank/2017/248/720/4339027842_1562228162.jpg\" /><br />\r\n<img alt=\"G2详情页-中文--790_09\" src=\"https://cbu01.alicdn.com/img/ibank/2017/915/503/4342305519_1562228162.jpg\" /><br />\r\n<img alt=\"G2详情页-中文--790_11\" src=\"https://cbu01.alicdn.com/img/ibank/2017/822/630/4339036228_1562228162.jpg\" /><br />\r\n<img alt=\"G2详情页-中文--790_12\" src=\"https://cbu01.alicdn.com/img/ibank/2017/505/330/4339033505_1562228162.jpg\" /><br />\r\n<img alt=\"G2详情页-中文--790_13\" src=\"https://cbu01.alicdn.com/img/ibank/2017/487/324/4337423784_1562228162.jpg\" /></p>\r\n', '1731572897_Súng thực tế ảo AR GUN - G2.jpg', 1),
(172, 'Súng thực tế ảo AR GUN AR-X1 - Blue & White', 0, 2, 4, 1000, 0, 9000000, 3000000, 0, '<p>&nbsp;</p>\r\n\r\n<p>CHI TIẾT SẢN PHẨM</p>\r\n\r\n<p>- Kết nối Bluetooth 4.0<br />\r\n- Bảo h&agrave;nh 12 th&aacute;ng 1 đổi 1<br />\r\n- Giao h&agrave;ng COD to&agrave;n quốc<br />\r\n- GIao h&agrave;ng HCM trong 3 tiếng<br />\r\n- Miễn ph&iacute; vận chuyển</p>\r\n\r\n<p>TRĂM NGHE KH&Ocirc;NG BẰNG MỘT THẤY<br />\r\nMỜI C&Aacute;C BẠN XEM VIDEOS<br />\r\nMỞ HỘP, Đ&Aacute;NH GI&Aacute; V&Agrave; TRẢI NGHIỆM THỰC TẾ S&Uacute;NG THỰC TẾ ẢO<br />\r\n<br />\r\n---------------------------------------------</p>\r\n\r\n<p><img src=\"http://i.imgur.com/6O2J8Ov.png\" /><img src=\"http://i.imgur.com/N6wEFvf.png\" /><img src=\"http://i.imgur.com/Oth3F1T.png\" /></p>\r\n', '1731573013_Súng thực tế ảo AR GUN AR-X1 - Blue & White.jpg', 1),
(173, 'BOBOVR S3 Pro - Vòng Đeo Kèm Pin B100 10.000 mAh Tích Hợp Quạt Tản Nhiệt Cho Meta Quest 3/3S', 19, 2, 4, 100, 0, 9000000, 9500000, 0, '<p>CHI TIẾT SẢN PHẨM</p>\r\n\r\n<p>✅ V&ograve;ng chất lượng tốt nhất cho Quest 3/3S<br />\r\n✅ T&iacute;ch hợp Pin B100 10.000 mAH<br />\r\n✅ Pin c&oacute; nguồn 20W sạc nhanh hơn<br />\r\n✅ Kết nối Pin nam ch&acirc;m thuận tiện<br />\r\n✅ Quạt tản nhiệt chống n&oacute;ng &amp; hơi nước<br />\r\n✅ Chỉnh được 100 cấp độ gi&oacute; quạt<br />\r\n✅ Quạt c&oacute; c&ocirc;ng nghệ hạn chế tiếng ồn<br />\r\n✅ H&agrave;ng c&oacute; sẵn - Giao ngay</p>\r\n\r\n<p><strong>SẢN PHẨM TƯƠNG TH&Iacute;CH META QUEST 3/3S</strong></p>\r\n\r\n<p><br />\r\n<strong>BOBOVR S3 Pro&nbsp;</strong>l&agrave; phi&ecirc;n bản n&acirc;ng cấp đ&aacute;ng tiền của&nbsp;<a href=\"https://vrtech.vn/san-pham/bobovr-m3-pro-strap-can-bang-luc-kem-pin-sac-cho-meta-quest-3-sp842642.html\" target=\"_blank\">BOBOVR M3 Pro</a>&nbsp;với những ưu điểm vượt trội. Thời điểm hiện tại, c&oacute; thể n&oacute;i&nbsp;BOBOVR S3 Pro Super Strap l&agrave; chiếc&nbsp;<a href=\"https://vrtech.vn/vong-deo-can-bang-luc-cho-meta-quest-3-dm170292.html\" target=\"_blank\">v&ograve;ng đeo c&acirc;n bằng lực</a>&nbsp;cho&nbsp;<a href=\"https://vrtech.vn/san-pham/kinh-vr-doc-lap-meta-quest-3-128gb-512gb-sp837585.html\" target=\"_blank\">Meta Quest 3</a>&nbsp;/&nbsp;<a href=\"https://vrtech.vn/san-pham/kinh-thuc-te-ao-meta-quest-3s-128gb-chinh-hang-sp862381.html\">3S</a>chứa đựng mọi t&iacute;nh năng cần phải c&oacute;.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\n<img alt=\"BOBOVR S3 Pro Super Strap\" src=\"https://i.imgur.com/vNXdGZ5.png\" /><br />\r\n&nbsp;Thoạt nh&igrave;n, c&oacute; thể thấy BOBOVR S3&nbsp;Pro vẫn giữ nguy&ecirc;n thiết kế như&nbsp;BOBOVR M3 Pro, phần pin được kết nối nam ch&acirc;m với v&ograve;ng sau g&aacute;y. Tuy nhi&ecirc;n, theo th&ocirc;ng tin từ h&agrave;ng, tr&ecirc;n vi&ecirc;n pin mới B100, c&aacute;c m&ocirc; đun xả của Pin đ&atilde; được thiết kế lại ho&agrave;n to&agrave;n, gi&uacute;p cho nhiệt độ của pin khi sử dụng giảm đ&aacute;ng kể, đồng thời tăng hiệu suất sạc th&ecirc;m 6% so với&nbsp;<a href=\"https://vrtech.vn/san-pham/pin-bobovr-b2-5200-mah-cho-strap-bobovr-m2-m3-pro-sp844595.html\" target=\"_blank\">pin B2 cũ</a>. Đồng thời, h&atilde;ng cũng t&iacute;ch hợp th&ecirc;m c&aacute;c t&iacute;nh năng tự động b&aacute;o khi pin sắp hết v&agrave; hiển thị ch&iacute;nh x&aacute;c dung lượng pin c&ograve;n lại.</p>\r\n\r\n<p><br />\r\n<img alt=\"BOBOVR S3 Pro Super Strap\" src=\"https://i.imgur.com/EpLF86O.png\" /><br />\r\n&nbsp;</p>\r\n\r\n<p>Tr&ecirc;n bản cũ BOBOVR M3 Pro sử dụng&nbsp;<a href=\"https://vrtech.vn/san-pham/pin-bobovr-b2-5200-mah-cho-strap-bobovr-m2-m3-pro-sp844595.html\" target=\"_blank\">pin B2</a>&nbsp;c&ograve;n tr&ecirc;n bản n&acirc;ng cấp&nbsp;<strong>BOBOVR S3 Pro&nbsp;</strong>sử dụng pin&nbsp;<strong>B100</strong>. So với pin B2, pin B100 thực sự mang lại những hiệu quả vượt trội. Dung lượng pin B100 l&agrave; 10.000 mAh, gần gấp 2 lần so với 5.200 mAh tr&ecirc;n B2. Điểm đ&aacute;ng tiền nhất tr&ecirc;n B100 ch&iacute;nh l&agrave; nguồn sạc 20W, đủ nguồn sạc nhanh cho Quest 3, bạn kh&ocirc;ng lo lượng pin chơi tụt nhanh hơn lượng pin sạc v&agrave;o nữa, pin cũ B2 kh&ocirc;ng l&agrave;m được điều n&agrave;y tr&ecirc;n Quest 3. Với những n&acirc;ng cấp quan trọng, trọng lượng Pin B100 năng hơn Pin B2 khoảng 28%. So s&aacute;nh về trọng lượng chỉ mang t&iacute;nh l&yacute; thuyết, v&igrave; thực tế trọng lượng lớn hơn n&agrave;y l&agrave; qu&aacute; nhỏ để l&agrave;m ảnh hưởng tới trải nghiệm người d&ugrave;ng. Nh&igrave;n chung pin B100 sử dụng c&ocirc;ng nghệ mới, ho&agrave;n to&agrave;n kh&aacute;c biệt so với pin B2, v&igrave; vậy bạn kh&ocirc;ng thể sử dụng 2 loại pin n&agrave;y để thay thế cho nhau được.</p>\r\n\r\n<p><br />\r\n<img alt=\"BOBOVR S3 Pro Super Strap\" src=\"https://i.imgur.com/yKBuLTN.png\" /><br />\r\n<br />\r\n<img alt=\"BOBOVR S3 Pro Super Strap\" src=\"https://i.imgur.com/GbXtDfD.png\" /><br />\r\n&nbsp;</p>\r\n\r\n<p>N&oacute;ng, mồ h&ocirc;i đọng tr&ecirc;n thấu k&iacute;nh khi sử dụng kh&ocirc;ng phải l&agrave; điều qu&aacute; xa lạ với người d&ugrave;ng Quest 3. FIITVR sớm nhận ra hạn chế n&agrave;y v&agrave; đ&atilde; cho ra mắt quạt&nbsp;<a href=\"https://vrtech.vn/san-pham/fiitvr-x3-bo-quat-tan-nhiet-hut-thoi-2-chieu-kem-khung-can-lot-sang-cho-meta-quest-3-sp846204.html\" target=\"_blank\">FIITVR X3</a>&nbsp;để sử dụng k&egrave;m theo c&aacute;c loại v&ograve;ng của họ nh&agrave; FIITVR như&nbsp;<a href=\"https://vrtech.vn/san-pham/fiitvr-t300-halo-strap-cho-meta-quest-3-sp843177.html\" target=\"_blank\">FIITVR T300</a>,&nbsp;<a href=\"https://vrtech.vn/san-pham/fiitvr-t300-mini-elite-strap-cho-meta-quest-3-sp843176.html\" target=\"_blank\">T300 Mini</a>,&nbsp;<a href=\"https://vrtech.vn/san-pham/fiitvr-t300-power-strap-kem-pin-5200mah-cho-meta-quest-3-sp844008.html\" target=\"_blank\">T300 Power</a>. Giờ đ&acirc;y tới lượt BOBOVR mang quạt tản nhiệt t&iacute;ch hợp lu&ocirc;n l&ecirc;n&nbsp;BOBOVR S3 Pro. Quạt tản nhiệt tr&ecirc;n&nbsp;BOBOVR S3 Pro sử dụng turbine v&agrave; thiết kế c&aacute;nh quạt tương tự c&aacute;c quạt tản nhiệt chip CPU, từ đ&oacute; lượng kh&ocirc;ng kh&iacute; lưu th&ocirc;ng qua được tối ưu, gi&uacute;p nhanh l&agrave;m m&aacute;t v&agrave; bay hơi mồ h&ocirc;i để kh&ocirc;ng đọng tr&ecirc;n thấu k&iacute;nh. Quạt c&oacute; thể t&ugrave;y chỉnh được 100 cấp độ ở n&uacute;t xoay b&ecirc;n cạnh, gi&uacute;p c&aacute;c bạn điều chỉnh lượng gi&oacute; v&agrave; độ ồn ph&ugrave; hợp với từng nhu cầu trải nghiệm.</p>\r\n\r\n<p><br />\r\n<img alt=\"BOBOVR S3 Pro Super Strap\" src=\"https://i.imgur.com/SfWJRtU.png\" /><br />\r\n<br />\r\n<img alt=\"BOBOVR S3 Pro Super Strap\" src=\"https://i.imgur.com/ViBdc9q.jpg\" /></p>\r\n\r\n<p><br />\r\nMột thay đổi nhỏ nữa tr&ecirc;n&nbsp;BOBOVR S3 Pro Super Strap l&agrave; phần n&uacute;m xoay chỉnh k&iacute;ch thước v&ograve;ng đầu ph&iacute;a sau đ&atilde; được điều chỉnh thiết kế kh&ocirc;ng bị nh&ocirc; ra g&acirc;y ảnh hưởng tới sự tho&aacute;i m&aacute;i khi bạn muốn trải nghiệm trong tư thế nằm.</p>\r\n\r\n<p><br />\r\n<img alt=\"BOBOVR S3 Pro Super Strap\" src=\"https://i.imgur.com/DSoFDoW.png\" /><br />\r\n<br />\r\n<img alt=\"BOBOVR S3 Pro Super Strap\" src=\"https://i.imgur.com/zCIGzVs.png\" /><br />\r\n<strong>H&Igrave;NH ẢNH THẬT SẢN PHẨM BOBOVR S3 PRO</strong><br />\r\n<br />\r\n<img alt=\"BOBOVR S3 PRO\" src=\"https://i.imgur.com/6fKIA5L.jpg\" style=\"height:450px; width:800px\" /><br />\r\n<br />\r\n<img alt=\"BOBOVR S3 PRO\" src=\"https://i.imgur.com/6j94iFk.jpg\" style=\"height:450px; width:800px\" /><br />\r\n<br />\r\n<img alt=\"BOBOVR S3 PRO\" src=\"https://i.imgur.com/GM1Eq0I.jpg\" style=\"height:450px; width:800px\" /><br />\r\n<br />\r\n<img alt=\"BOBOVR S3 PRO\" src=\"https://i.imgur.com/jhjBUC9.jpg\" style=\"height:450px; width:800px\" /></p>\r\n', '1731573162_BOBOVR S3 Pro.jpg', 1),
(174, 'Gọng Kính Cận Meta Quest 3 - Phiên bản 2.1 - Nam Châm Từ Tính', 19, 0, 3, 100, 0, 1000000, 200000, 0, '<p>CHI TIẾT SẢN PHẨM</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>☑ Phi&ecirc;n bản n&acirc;ng cấp 2.0 - Nam ch&acirc;m<br />\r\n☑ Gọng cận thiết kế tương th&iacute;ch 100% Quest 3<br />\r\n☑ C&oacute; tr&ograve;ng mẫu thuận tiện khi cắt<br />\r\n☑ Ph&ugrave; hợp cho thường xuy&ecirc;n thay đổi tr&ograve;ng<br />\r\n☑ D&ugrave;ng cho lắp mắt k&iacute;nh cận/viễn<br />\r\n☑ Người d&ugrave;ng kh&ocirc;ng cần đeo k&egrave;m k&iacute;nh cận<br />\r\n☑ Tạo sự thoải m&aacute;i khi sử dụng<br />\r\n☑ 1 Bộ gồm 2 gọng (Tr&aacute;i - Phải)<br />\r\n☑ Mỗi gọng gồm khung đế &amp; khung lắp tr&ograve;ng<br />\r\n☑ Nam ch&acirc;m kết nối giữa c&aacute;c khung<br />\r\n☑ H&agrave;ng c&oacute; sẵn - Giao ngay</p>\r\n\r\n<p>Gọng K&iacute;nh Cận Meta Quest 3 - Phi&ecirc;n bản 2.1 - Nam Ch&acirc;m Từ T&iacute;nh l&agrave; phi&ecirc;n bản thiết kế hướng tới người d&ugrave;ng Meta Quest 3 c&oacute; nhu cầu thường xuy&ecirc;n thay đổi tr&ograve;ng cận. V&iacute; dụ chạy sự kiện phải thay đổi tr&ograve;ng cận t&ugrave;y theo độ cận của kh&aacute;c; hay như sử dụng ở nh&agrave; chung với gia đ&igrave;nh, mỗi người mỗi độ cận kh&aacute;c nhau.<br />\r\n<br />\r\n<strong>Gọng k&iacute;nh c&oacute; sẵn tr&ograve;ng mẫu (Loại 490k), cực kỳ thuận tiện khi cắt, kh&ocirc;ng lo h&agrave;ng k&iacute;nh từ chối cắt.&nbsp;</strong>Hoặc c&aacute;c bạn cũng c&oacute; thể chọn loại gọng kh&ocirc;ng k&egrave;m tr&ograve;ng mẫu (Loại 350k) để tiết kiệm chi ph&iacute; tuy nhi&ecirc;n 1 số h&agrave;ng cắt k&iacute;nh cận đ&atilde; quen với sử dụng m&aacute;y Copy, tay nghề kỹ thuật k&eacute;m c&oacute; thể từ chối cắt. Với c&aacute;c đơn vị l&agrave;m sự kiện, lựa chọn tối ưu chi ph&iacute; nhất l&agrave; mua 1 gọng c&oacute; tr&ograve;ng demo, c&aacute;c gọng c&ograve;n lại kh&ocirc;ng cần tr&ograve;ng demo.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Gọng Kính Cận Meta Quest 3 - Phiên bản 2.1 - Nam Châm Từ Tính\" src=\"https://i.imgur.com/TATvXS7.jpg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<p><br />\r\nGọng K&iacute;nh Cận Meta Quest 3 - Phi&ecirc;n bản 2.1 - Nam Ch&acirc;m Từ T&iacute;nh&nbsp;được thiết kế v&agrave; sản xuất theo d&acirc;y chuyền c&ocirc;ng nghiệp, độ ho&agrave;n thiện rất cao, &quot;lắp ph&aacute;t khớp lu&ocirc;n&quot;. Hiện nay tr&ecirc;n một số s&agrave;n thương mại điện tử c&oacute; b&aacute;n c&aacute;c loại Gọng cận Meta Quest 3 được in 3D thủ c&ocirc;ng, ho&agrave;n thiện k&eacute;m, lắp phải cắt gọt nhiều, kh&ocirc;ng thuận tiện, dễ g&acirc;y trầy xước v&agrave; cấn vỡ thấu k&iacute;nh khi lắp.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Gọng Kính Cận Meta Quest 3 - Phiên bản 2.1 - Nam Châm Từ Tính\" src=\"https://i.imgur.com/CBq13K7.jpg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<p><br />\r\nThời điểm hiện tại,&nbsp;Gọng K&iacute;nh Cận Meta Quest 3 - Phi&ecirc;n bản 2.1 - Nam Ch&acirc;m Từ T&iacute;nh&nbsp;l&agrave; phi&ecirc;n bản nam ch&acirc;m ho&agrave;n chỉnh nhất, hướng tới người d&ugrave;ng cần khả năng cơ động, dể thay đổi tr&ograve;ng cận. Với kh&aacute;ch h&agrave;ng l&agrave; c&aacute; nh&acirc;n, F.A, chỉ sử dụng Quest 3 cho ri&ecirc;ng m&igrave;nh th&igrave; c&oacute; thể tham khảo sản phẩm&nbsp;<a href=\"https://vrtech.vn/san-pham/gong-kinh-can-meta-quest-3-phien-ban-2-0-op-thau-kinh-sp843655.html\" target=\"_blank\">Gọng K&iacute;nh Cận Meta Quest 3 - Phi&ecirc;n bản 2.0</a>.</p>\r\n\r\n<h2><br />\r\n<strong>So s&aacute;nh với c&aacute;c loại Gọng tự in 3D gi&aacute; rẻ</strong></h2>\r\n\r\n<p>Hiện nay xuất hiện một số c&aacute; nh&acirc;n tự in 3D gọng cận Quest 3 b&aacute;n tr&ecirc;n c&aacute;c s&agrave;ng TMĐT. Tuy gi&aacute; th&agrave;nh c&aacute;c loại gọng tự in 3D c&oacute; thể rẻ hơn nhưng tồn tại rất nhiều nhược điểm, cụ thể:<br />\r\n❌&nbsp;K&iacute;ch thước gọng lớn, che khuất g&oacute;c nh&igrave;n thấu k&iacute;nh<br />\r\n❌ Độ ho&agrave;n thiện kh&ocirc;ng cao, khi lắp cần cắt gọt<br />\r\n❌ C&aacute;c chi tiết thừa do in 3D khi lắp kh&ocirc;ng cẩn thận sẽ g&acirc;y cấn vỡ, trầy xước thấu k&iacute;nh<br />\r\n<br />\r\nGọng K&iacute;nh Cận Meta Quest 3 - Phi&ecirc;n bản 2.1 - Nam Ch&acirc;m Từ T&iacute;nh được thiết kế v&agrave; sản xuất c&ocirc;ng nghiệp c&oacute; độ ho&agrave;n thiện cao hơn nhiều so với c&aacute;c loại gọng tự in 3d gi&aacute; rẻ đang b&aacute;n tr&ecirc;n c&aacute;c sản TMĐT. Cụ thể:<br />\r\n✅&nbsp;Gọng k&iacute;ch thước mỏng, kh&ocirc;ng hạn chế g&oacute;c nh&igrave;n<br />\r\n✅ Độ ho&agrave;n thiện cao, kh&ocirc;ng c&oacute; chi tiết thừa<br />\r\n✅ C&aacute;c khớp kết nối tinh xảo,kh&ocirc;ng cấn thấu k&iacute;nh<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Gọng Kính Cận Meta Quest 3 - Phiên bản 2.1 - Nam Châm Từ Tính\" src=\"https://i.imgur.com/ViIHoKF.jpg\" style=\"height:800px; width:800px\" /><br />\r\nGọng K&iacute;nh Cận Meta Quest 3 - Phi&ecirc;n bản 2.1 - Nam Ch&acirc;m Từ T&iacute;nh thiết kế &amp; sản xuất c&ocirc;ng nghiệp độ ho&agrave;n thiện ca</p>\r\n', '1731573254_Gọng Kính Cận Meta Quest 3 - Phiên bản 2.1 - Nam Châm Từ Tính.jpg', 1),
(175, 'Bộ 07 Phụ Kiện Bảo Vệ Toàn Diện Meta Quest 3', 19, 4, 3, 80, 0, 100000, 7500000, 0, '<p>CHI TIẾT SẢN PHẨM</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>➊ Ốp nhựa dẻo bảo vệ Camera &amp; mặt trước<br />\r\n➋ Bọc Silicone Remote phải<br />\r\n➌ Bọc Silicone Remote tr&aacute;i<br />\r\n➍ Bọc Silicone đệm cản s&aacute;ng, chống thấm<br />\r\n➎ Đệm bảo vệ trồng trầy thấu k&iacute;nh<br />\r\n➏ Khăn Microfiber chuy&ecirc;n dụng vệ sinh thấu k&iacute;nh<br />\r\n➐ Tui Backpack đựng trọn bộ Quest 3 &amp; phụ kiện</p>\r\n\r\n<p><strong>Bộ 07 Phụ Kiện Bảo Vệ To&agrave;n Diện Meta Quest 3</strong>&nbsp;l&agrave; bộ phụ kiện gồm 07 m&oacute;n, rất quan trọng để bảo vể to&agrave;n diện cho em Meta Quest 3 của bạn. Bộ phụ kiện được thiết kế &amp; sản xuất bởi JYS, nh&agrave; sản xuất phụ kiện bảo vệ cho c&aacute;c m&aacute;y chơi Game h&agrave;ng đầu tại Trung Quốc. Trọn bộ phụ kiện gồm:</p>\r\n\r\n<p><br />\r\n<img alt=\"Bộ 07 Phụ Kiện Bảo Vệ Toàn Diện Meta Quest 3\" src=\"https://i.imgur.com/nYVSOcK.png\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<h2>⓵&nbsp;Ốp nhựa dẻo bảo vệ Camera &amp; mặt trước Quest 3</h2>\r\n\r\n<p>Ốp được l&agrave;m từ nhựa dẻo, trong, đ&agrave;n hồi tốt, dễ lắp đặt, kh&ocirc;ng g&acirc;y cấn xước th&acirc;n k&iacute;nh. C&aacute;c khe tản nhiệt được thiết kế xung quanh ốp theo đ&uacute;ng thiết kế tản nhiệt của Quest 3, đảm bảo tản nhiệt tốt, kh&ocirc;ng l&agrave;m tăng nhiệt độ của k&iacute;nh. Phần mặt trước ốp, c&oacute; thiết kế c&aacute;c nắp bảo vệ Camera c&oacute; thể đ&oacute;ng mở thuận tiện, đảm bảo bảo vệ to&agrave;n diện cụm 03 Camera ph&iacute;a trước Quest 3.</p>\r\n\r\n<p><br />\r\n<img alt=\"Ốp nhựa dẻo bảo vệ Camera &amp; mặt trước Quest 3\" src=\"https://i.imgur.com/5bZAm9T.png\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<h2>⓶&nbsp;⓷&nbsp;Bọc Silicone Remote phải &amp; tr&aacute;i Quest 3</h2>\r\n\r\n<p>Gi&uacute;p bảo vệ bộ 02 Remote Controllers của Quest 3 khỏi va đập, trầy xước, đọng mồ h&ocirc;i v&agrave;o c&aacute;c khe nhỏ. Bọc Silicone được thiết kế hợp l&yacute;, kh&ocirc;ng l&agrave;m ảnh hưởng tới khả năng tracking của tay cầm.</p>\r\n\r\n<p><br />\r\n<img alt=\"Bọc Silicone Remote phải &amp; trái Quest 3\" src=\"https://i.imgur.com/S2omFAa.jpg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<h2>⓸&nbsp;Bọc Silicone đệm cản s&aacute;ng, chống thấm đệm gốc Quest 3</h2>\r\n\r\n<p>Gi&uacute;p chống thấm mồ h&ocirc;i v&agrave;o lớp đệm mặt gốc g&acirc;y mất vệ sinh. Chất liệu Silicone dễ d&agrave;ng lau ch&ugrave;i, vệ sinh. C&oacute; thiết kế tấm cản s&aacute;ng sống mũi, giảm t&igrave;nh trạng lọt s&aacute;ng, tăng độ ch&acirc;n thực khi trải nghiệm c&aacute;c nội dung thực tế ảo.</p>\r\n\r\n<p><br />\r\n<img alt=\"Bọc Silicone đệm cản sáng, chống thấm đệm gốc Quest 3\" src=\"https://i.imgur.com/o2uJEfw.png\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<h2>⓹&nbsp;Đệm bảo vệ chống&nbsp;trầy thấu k&iacute;nh Quest 3</h2>\r\n\r\n<p>Đặt trước thấu k&iacute;nh Quest 3 khi kh&ocirc;ng sử dụng. Bảo vệ thấu k&iacute;nh Quest 3 khỏi c&aacute;c vật cứng chạm v&agrave;o g&acirc;y trầy xước, cấn vỡ.</p>\r\n\r\n<p><br />\r\n<img alt=\"Đệm bảo vệ trồng trầy thấu kính Quest 3\" src=\"https://i.imgur.com/jHdszh0.png\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<h2>⓺&nbsp;Khăn Microfiber chuy&ecirc;n dụng vệ sinh thấu k&iacute;nh Quest 3</h2>\r\n\r\n<p>Khăn lau thấu k&iacute;nh Quest 3 được l&agrave;m từ sợi&nbsp;Microfiber chuy&ecirc;n dụng cho mục đ&iacute;ch vệ sinh thấu k&iacute;nh. Chất liệu vải mềm, mượt hạn chế t&igrave;nh trạng xước dăm thấu k&iacute;nh so với c&aacute;c loại khăn, vải th&ocirc;ng thường.</p>\r\n\r\n<h2>⓻&nbsp;T&uacute;i Backpack đựng trọn bộ Quest 3 &amp; phụ kiện</h2>\r\n\r\n<p>T&uacute;i sử dụng để đựng bộ k&iacute;nh Quest 3 v&agrave; c&aacute;c phụ kiện k&egrave;m theo. C&oacute; thể đeo sau lưng, thuận tiện khi mang theo. Tuy nhi&ecirc;n, t&uacute;i kh&ocirc;ng c&oacute; khả năng chống shock n&ecirc;n chỉ ph&ugrave; hợp cho mục đ&iacute;ch di chuyển ngắn, &iacute;t rủi ro va chạm. C&ograve;n nếu sử dụng mang đi du lịch, để trong h&agrave;nh l&yacute; chịu đ&egrave; n&eacute;n th&igrave; n&ecirc;n tham khảo th&ecirc;m c&aacute;c loại&nbsp;<a href=\"https://vrtech.vn/hop-chong-shock-cho-meta-quest-3-dm170285.html\" target=\"_blank\">T&uacute;i chống Shock Meta Quest 3</a>&nbsp;kh&aacute;c VRTECH đang ph&acirc;n phối.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Tui Backpack đựng trọn bộ Quest 3 &amp; phụ kiện\" src=\"https://i.imgur.com/DrcNJIN.png\" style=\"height:800px; width:800px\" /><br />\r\n<br />\r\n<img alt=\"Bộ 07 Phụ Kiện Bảo Vệ Toàn Diện Meta Quest 3\" src=\"https://i.imgur.com/pebhTMJ.png\" style=\"height:800px; width:800px\" /><br />\r\n&nbsp;</p>\r\n\r\n<h2><strong>H&Igrave;NH ẢNH THẬT SẢN PHẨM</strong></h2>\r\n\r\n<p><br />\r\n<img alt=\"Bộ 07 Phụ Kiện Bảo Vệ Toàn Diện Meta Quest 3\" src=\"https://i.imgur.com/yuLniLF.jpg\" style=\"height:601px; width:800px\" /><br />\r\n<br />\r\n<img alt=\"Bộ 07 Phụ Kiện Bảo Vệ Toàn Diện Meta Quest 3\" src=\"https://i.imgur.com/sK6pHIB.jpg\" style=\"height:601px; width:800px\" /></p>\r\n', '1731573361_Bộ 07 Phụ Kiện Bảo Vệ Toàn Diện Meta Quest 3.jpg', 1);
INSERT INTO `product` (`product_id`, `product_name`, `product_category`, `product_brand`, `capacity_id`, `product_quantity`, `quantity_sales`, `product_price_import`, `product_price`, `product_sale`, `product_description`, `product_image`, `product_status`) VALUES
(176, 'Kính thực tế ảo Mojing S1 Jet Black 2019', 3, 4, 3, 41, 0, 1000000, 200000, 10, '<p>CHI TIẾT SẢN PHẨM</p>\r\n\r\n<p>☑ Phi&ecirc;n bản Jet Black ra mắt th&aacute;ng 10/2019<br />\r\n☑ Thấu k&iacute;nh Fresnel tương tự HTC Vive<br />\r\n☑ Cam kết ch&iacute;nh h&atilde;ng 100%<br />\r\n☑ Mới nguy&ecirc;n hộp, nguy&ecirc;n Seal, đủ phụ kiện<br />\r\n☑ Trọn bộ: Hộp; S&aacute;ch; K&iacute;nh VR; D&acirc;y đeo, Đệm<br />\r\n☑ H&igrave;nh ảnh &amp; Video sản phẩm thật<br />\r\n☑ Th&ocirc;ng số chi tiết c&aacute;c bạn xem ph&iacute;a dưới<br />\r\n☑ Bảo h&agrave;nh 12 th&aacute;ng 1 đổi 1<br />\r\n☑ Giao h&agrave;ng to&agrave;n quốc 2-3 ng&agrave;y<br />\r\n☑ Giao h&agrave;ng HCM 60-120 ph&uacute;t<br />\r\n☑ Thanh to&aacute;n khi nhận h&agrave;ng<br />\r\n☑ Ngưng sản xuất</p>\r\n\r\n<h3><strong>MỞ HỘP MOJING S1 JET BLACK 2019</strong></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>HƯỚNG DẪN SỬ DỤNG MOJING S1</strong></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>TH&Ocirc;NG SỐ KỸ THUẬT MOJING S1 JET BLACK&nbsp;2019</strong></h3>\r\n\r\n<p><img alt=\"thông số kỹ thuật mojing s1 jet black 2019\" src=\"https://i.imgur.com/H8KrOGE.png\" style=\"height:736px; width:600px\" /></p>\r\n\r\n<h3><strong>H&Igrave;NH ẢNH THẬT SẢN PHẨM</strong></h3>\r\n\r\n<p><img alt=\"mojing s1 jet black 2019\" src=\"https://i.imgur.com/aampLvE.jpg\" style=\"height:401px; width:600px\" /><br />\r\n<img alt=\"mojing s1 jet black 2019\" src=\"https://i.imgur.com/IfhIp6N.jpg\" style=\"height:401px; width:600px\" /><br />\r\n<img alt=\"mojing s1 jet black 2019\" src=\"https://i.imgur.com/C5Mv9IA.jpg\" style=\"height:401px; width:600px\" /><br />\r\n<img alt=\"mojing s1 jet black 2019\" src=\"https://i.imgur.com/1saYnKL.jpg\" style=\"height:401px; width:600px\" /><br />\r\n<img alt=\"mojing s1 jet black 2019\" src=\"https://i.imgur.com/0U3puXN.jpg\" style=\"height:401px; width:600px\" /><br />\r\n<img alt=\"mojing s1 jet black 2019\" src=\"https://i.imgur.com/cjwqcUw.jpg\" style=\"height:401px; width:600px\" /><br />\r\n<img alt=\"mojing s1 jet black 2019\" src=\"https://i.imgur.com/nWHksjv.jpg\" style=\"height:401px; width:600px\" /></p>\r\n\r\n<h3><strong>MOJING S1 JET BLACK 2019 SỞ HỮU MẪU M&Atilde; ĐẸP HƠN MOJING S1 LITE 2019</strong></h3>\r\n\r\n<p>❶&nbsp;M&agrave;u đen mang tới cảm gi&aacute;c sang trọng v&agrave; hạn chế b&aacute;m bẩn so với phi&ecirc;n bản cũ<br />\r\n❷&nbsp;Phần mặt khoang k&iacute;nh trước được l&agrave;m&nbsp;giả k&iacute;nh&nbsp;mang tới ngoại h&igrave;nh đẹp<br />\r\n❸&nbsp;Đệm m&uacute;t m&agrave;u đen kh&ocirc;ng để lại vết ố v&agrave;ng sau thời gian d&agrave;i sử dụng<br />\r\n❹&nbsp;Logo được in ch&igrave;m dưới mặt giả k&iacute;nh g&oacute;p phần đảm bảo sản phẩm kh&oacute; bị l&agrave;m giả<br />\r\n&nbsp;</p>\r\n\r\n<h3><strong>C&Aacute;CH KIỂM TRA H&Agrave;NG C&Ograve;N MỚI HAY Đ&Atilde; SỬ DỤNG</strong></h3>\r\n\r\n<p>K&iacute;nh thực tế ảo Mojing S1 Jet Black 2019 mới chưa bị b&oacute;c hộp sẽ c&oacute; 2 seal d&aacute;n 2 đầu để ni&ecirc;m phong v&agrave; 2 seal d&aacute;n ở 2 thấu k&iacute;nh. Seal bằng nhựa trong, c&oacute; in chữ trung quốc. Nếu seal n&agrave;y bị b&oacute;c hoặc bị rạch th&igrave; rất c&oacute; thể sản phẩm Mojing S1 của c&aacute;c bạn l&agrave; sản phẩm cũ đ&atilde; qua sử dụng hoặc h&agrave;ng lỗi trả bảo h&agrave;nh được sửa chữa lại. VRTECH Shop cam kết chỉ b&aacute;n h&agrave;ng mới 100%, nguy&ecirc;n seal hộp chưa unbox.</p>\r\n\r\n<p><img alt=\"phân biệt mojing s1 chính hãng\" src=\"https://i.imgur.com/zNCkQ09.jpg\" style=\"height:596px; width:800px\" /></p>\r\n\r\n<h3><strong>05 ĐẶC ĐIỂM NHẬN BIẾT H&Agrave;NG CH&Iacute;NH H&Atilde;NG</strong></h3>\r\n\r\n<p>Sản phẩm Mojing S1 Jet Black 2019 ch&iacute;nh h&atilde;ng sẽ c&oacute; đầu đủ c&aacute;c tem m&aacute;c tr&ecirc;n bao b&igrave; như sau:<br />\r\n❶&nbsp;2 Seal d&aacute;n ni&ecirc;m phong ngo&agrave;i hộp. Seal nhựa c&oacute; in 4 chữ tiếng Trung Quốc.<br />\r\n❷&nbsp;2 Seal d&aacute;n thấu k&iacute;nh c&oacute; in chữ Trung Quốc.<br />\r\n❸&nbsp;Th&ocirc;ng tin sản phẩm được in tr&ecirc;n bao b&igrave;<br />\r\n❹&nbsp;Tem th&ocirc;ng tin nguồn gốc h&agrave;ng h&oacute;a<br />\r\n❺&nbsp;Tem chưa code nội bộ của Baofeng Mojing</p>\r\n\r\n<p>✅<strong>VRTECH Shop cam kết chỉ b&aacute;n Mojing S1 lite 2019 ch&iacute;nh h&atilde;ng 100%</strong>✅</p>\r\n\r\n<p><img alt=\"phân biệt mojing s1 chính hãng\" src=\"https://i.imgur.com/zJtBGL6.jpg\" /></p>\r\n\r\n<h3><strong>ĐẶC ĐIỂM NHẬN DẠNG THẤU K&Iacute;NH FRESNEL CỦA MOJING S1 JET BLACK 2019</strong></h3>\r\n\r\n<p>☞&nbsp;Thấu k&iacute;nh của Mojing S1 Jet Black 2019 cấu tạo vật l&yacute; Fresnel. Đặc điểm của Fresnel l&agrave; c&aacute;c đường răng cưa v&igrave; vậy khi soi kỹ thấu k&iacute;nh ở g&oacute;c độ th&iacute;ch hợp c&aacute;c bạn sẽ quan s&aacute;t thấy c&aacute;c đường tr&ograve;n đồng trục.</p>\r\n\r\n<p><img alt=\"phân biệt mojing s1 chính hãng\" src=\"https://i.imgur.com/n0AUuJo.jpg\" /></p>\r\n\r\n<p>☞&nbsp;Cũng do cấu tạo bởi c&aacute;c đường răng cưa n&ecirc;n thấu k&iacute;nh Mojing S1 Jet Black 2019 rất kh&oacute; vệ sinh. Do đ&oacute; sẽ c&oacute; 1 lớp k&iacute;nh phẳng bảo vệ ph&iacute;a trước để ngăn ngừa bụi lọt v&agrave;o thấu k&iacute;nh ch&iacute;nh.</p>\r\n\r\n<p><img alt=\"phân biệt mojing s1 chính hãng\" src=\"https://i.imgur.com/fuB1NMu.jpg\" /><br />\r\n&nbsp;</p>\r\n\r\n<h3><strong>MỘT SỐ LƯU &Yacute; QUAN TRỌNG</strong></h3>\r\n\r\n<p>☢&nbsp;Do k&iacute;nh Mojing S1 JET BLACK 2019 c&oacute; thiết kế khoang k&iacute;nh nhỏ gọn n&ecirc;n 1 số điện thoại c&oacute; viền ngo&agrave;i d&agrave;y của h&atilde;ng Sony v&agrave;&nbsp;Asus&nbsp;sẽ kh&ocirc;ng lắp vừa, kh&aacute;ch h&agrave;ng sử dụng điện thoại của 2 h&atilde;ng n&agrave;y cần li&ecirc;n hệ với tư vấn vi&ecirc;n để kiểm tra ch&iacute;nh x&aacute;c xem điện thoại của m&igrave;nh c&oacute; sử dụng được với k&iacute;nh Mojing S1 LITE 2019 hay kh&ocirc;ng. Để li&ecirc;n hệ tư vấn kh&aacute;ch h&agrave;ng c&oacute; thể CHAT trực tuyến tr&ecirc;n website hoặc call/sms/zalo số điện thoại 0888.55.44.86.<br />\r\n☢&nbsp;Hiện nay một số gian thương mở ra c&aacute;c trang Landing page tự nhận l&agrave; Baofeng Mojing Việt Nam đ&aacute;nh v&agrave;o t&acirc;m l&yacute; ph&acirc;n phối ch&iacute;nh h&atilde;ng của c&aacute;c bạn, khiến c&aacute;c bạn phải bỏ ra một mức gi&aacute; cao hơn so với gi&aacute; trị thực. VRTECH xin khẳng định rằng Mojing S1 JET BLACK 2019 chỉ ph&acirc;n phối thị trường nội địa Trung Quốc v&agrave; kh&ocirc;ng c&oacute; trụ sở hay đại l&yacute; ch&iacute;nh thức ở bất cứ quốc gia n&agrave;o. Mojing chỉ c&oacute; 1 website duy nhất l&agrave;&nbsp;<a href=\"http://www.mojing.cn/\">http://www.mojing.cn/</a>, tất cả c&aacute;c website (*.com;*.vn) kh&aacute;c đều l&agrave; giả mạo.&nbsp;V&igrave; vậy, v&igrave; một thị trường minh bạch c&aacute;c bạn h&atilde;y tảy chay gian thương.</p>\r\n\r\n<h3><strong>VRTECH SHOP XIN CAM KẾT VỀ SẢN PHẨM MOJING S1 JET BLACK 2019 ĐANG PH&Acirc;N PHỐI</strong></h3>\r\n\r\n<p>✔&nbsp;Ch&iacute;nh h&atilde;ng 100%, ph&aacute;t hiện fake giả bồi ho&agrave;n x2 tiền cho c&aacute;c bạn<br />\r\n✔&nbsp;Mới 100%, tất cả c&aacute;c sản phẩm b&aacute;n ra l&agrave; h&agrave;ng mới chưa khui seal, chưa sử dụng<br />\r\n✔&nbsp;Minh bạch th&ocirc;ng tin, tất cả c&aacute;c h&igrave;nh ảnh v&agrave; videos đều chụp thật, quay thật sản phẩm<br />\r\n✔&nbsp;Bảo h&agrave;nh 12 th&aacute;ng 1 đổi 1, uy t&iacute;n, tr&aacute;ch nhiệm, kh&ocirc;ng t&igrave;m l&yacute; do tho&aacute;i th&aacute;c<br />\r\n✔&nbsp;Tư vấn chuẩn, th&ocirc;ng tin ch&iacute;nh x&aacute;c. Tuyệt đối kh&ocirc;ng tư vấn t&agrave;o lao kiểu &ldquo;điện thoại n&agrave;o cũng d&ugrave;ng được&rdquo; như một số shop l&agrave;m ăn chộp giật, chỉ nhằm mục đ&iacute;ch b&aacute;n h&agrave;ng, kh&aacute;ch mua về d&ugrave;ng được hay kh&ocirc;ng cũng kệ kh&aacute;ch.</p>\r\n\r\n<h3><br />\r\n<strong>GIỚI THIỆU VỀ MOJING S1 JET BLACK&nbsp;2019</strong></h3>\r\n\r\n<p>&ldquo;Simple is the Best&rdquo; &ndash; Đơn giản l&agrave; tốt nhất, nhỏ m&agrave; c&oacute; v&otilde; ... đ&oacute; l&agrave; những g&igrave; m&agrave; fan của thực tế ảo đ&aacute;nh gi&aacute; về Mojing S1. Quả thực, với thiết kế tới mức tối giản của m&igrave;nh, Mojing S1 đ&atilde; kh&ocirc;ng thể thu h&uacute;t được sự quan t&acirc;m ngay từ c&aacute;i nh&igrave;n đầu ti&ecirc;n. Thế nhưng, như &ldquo;Người ph&aacute;n xử&rdquo; đ&atilde; ch&eacute;m gi&oacute;, &ldquo;Với thực tế ảo, thấu k&iacute;nh l&agrave; thứ tồn tại duy nhất, những thứ kh&aacute;c c&oacute; hay kh&ocirc;ng kh&ocirc;ng quan trọng&rdquo; th&igrave; Baofeng Mojing đang l&agrave;m tốt c&ocirc;ng việc của m&igrave;nh với Mojing S1. Thấu k&iacute;nh của k&iacute;nh VR Mojing S1 được chế tạo từ vật liệu thủy tinh PMMA c&oacute; độ trong suốt rất cao k&egrave;m đ&oacute; l&agrave; cấu tạo vật l&yacute;&nbsp;Fresnel&nbsp;cho chất lượng h&igrave;nh ảnh sắc n&eacute;t; thiết kế tr&agrave;n khoang k&iacute;nh cho g&oacute;c nh&igrave;n rất rộng tăng độ sống động của kh&ocirc;ng gian ảo cảm nhận được. Nếu để &yacute;, c&aacute;c bạn sẽ thấy thấu k&iacute;nh của Mojing S1 c&oacute; chung thiết kế, cấu tạo vật liệu v&agrave; bản chất vật l&yacute; giống như thấu k&iacute;nh m&agrave; k&iacute;nh thực tế ảo HTC Vive đang sử dụng. V&igrave; vậy, c&oacute; thể n&oacute;i chất lượng thấu k&iacute;nh ch&iacute;nh l&agrave; điểm mạnh nhất, tạo sự kh&aacute;c biệt của Mojing S1 với tất cả c&aacute;c loại k&iacute;nh thực tế ảo kh&aacute;c.</p>\r\n\r\n<h3><strong>Đ&aacute;nh gi&aacute; chi tiết chất lượng k&iacute;nh thực tế ảo MOJING S1 JET BLACK&nbsp;2019</strong></h3>\r\n\r\n<p><strong>MOJING S1 JET BLACK&nbsp;2019</strong>&nbsp;l&agrave; sản phẩm k&iacute;nh thực tế ảo thuộc ph&acirc;n kh&uacute;c cao cấp, được ph&aacute;t triển bởi C&ocirc;ng ty đầu tư v&agrave; ph&aacute;t triển c&ocirc;ng nghệ thực tế ảo Baofeng Mojing. Đ&acirc;y l&agrave; c&ocirc;ng ty được th&agrave;nh lập từ năm 2012, khi thực tế ảo mới chỉ l&agrave; &yacute; tưởng mới được h&igrave;nh th&agrave;nh tr&ecirc;n thế giới. Trải qua nhiều năm ph&aacute;t triển, giờ đ&acirc;y Baofeng Mojing đ&atilde; trở th&agrave;nh c&ocirc;ng ty h&agrave;ng đầu Trung Quốc chuy&ecirc;n thực hiện ph&aacute;t triển c&aacute;c dự &aacute;n ứng dụng c&ocirc;ng nghệ thực tế ảo trong cuộc sống như tr&ograve; chơi thực tế ảo, gi&aacute;o dục thực tế ảo, du lịch thực tế ảo, giới thiệu bất động sản bằng thực tế ảo v&agrave; nhiều c&aacute;c lĩnh vực kh&aacute;c. V&igrave; vậy, kh&aacute;c với c&aacute;c c&ocirc;ng ty chỉ chuy&ecirc;n sản xuất, Baofeng Mojing c&oacute; sự hiểu biết s&acirc;u về c&ocirc;ng nghệ thực tế ảo, nắm trong tay cơ sở l&yacute; thuyết vững chắc về c&aacute;c th&ocirc;ng số vật l&yacute; của thấu k&iacute;nh v&agrave; c&aacute;ch tối ưu ch&uacute;ng với h&igrave;nh ảnh. Do đ&oacute;, c&aacute;c sản phẩm k&iacute;nh thực tế ảo do Baofeng Mojing ph&aacute;t triển lu&ocirc;n được đ&aacute;nh gi&aacute; rất cao v&agrave; Mojing S1 ch&iacute;nh l&agrave; sản phẩm tốt nhất của họ. Thực tế đ&atilde; chứng minh, Mojing S1 ra mắt từ đầu năm 2017 nhưng cho tới thời điểm hiện tại vẫn chỉ c&oacute; duy nhất k&iacute;nh thực tế ảo Bobo VR Z6 cạnh tranh được về chất lượng.</p>\r\n\r\n<p><img alt=\"kính thực tế ảo mojing s1\" src=\"https://i.imgur.com/vClzxoO.png\" style=\"height:338px; width:600px\" /></p>\r\n\r\n<h3><strong>Thấu k&iacute;nh của k&iacute;nh thực tế ảo MOJING S1 JET BLACK&nbsp;2019 c&oacute; tốt kh&ocirc;ng ?</strong></h3>\r\n\r\n<p>Điểm đ&aacute;ng gi&aacute; nhất của&nbsp;<strong>MOJING S1 JET BLACK&nbsp;2019</strong>&nbsp;đ&oacute; ch&iacute;nh l&agrave; việc n&oacute; sở hữu tr&ecirc;n m&igrave;nh hệ thống thấu k&iacute;nh Fresnel l&agrave;m từ thủy tinh hữu cơ PMMA với thiết kế tr&agrave;n khoang k&iacute;nh. Kh&aacute;c với c&aacute;c thấu k&iacute;nh phi cầu lồi thường được sử dụng tr&ecirc;n c&aacute;c d&ograve;ng k&iacute;nh thực tế ảo gi&aacute; rẻ v&agrave; tầm trung thường c&oacute; th&ocirc;ng số quang sai cao, Thấu k&iacute;nh Fresnel c&oacute; th&ocirc;ng số quang sai rất thấp sẽ cho chất lượng h&igrave;nh ảnh tốt hơn r&otilde; rệt. Với nguy&ecirc;n l&yacute; hội tụ &aacute;nh s&aacute;ng bởi c&aacute;c đường răng cưa, c&aacute;c tia s&aacute;ng khi đi qua thấu k&iacute;nh Fresnel sẽ hội tụ ch&iacute;nh x&aacute;c tại mặt phẳng hội tụ, c&ograve;n c&aacute;c thấu k&iacute;nh phi cầu lồi truyền thống sẽ gặp phải hiện tượng một số c&aacute;c tia s&aacute;ng kh&ocirc;ng hội tụ đ&uacute;ng tại vị tr&iacute; mặt phẳng hội tụ, điều n&agrave;y l&agrave; nguy&ecirc;n nh&acirc;n khiến cho h&igrave;nh ảnh bị mờ kh&ocirc;ng r&otilde; n&eacute;t.</p>\r\n\r\n<p><img alt=\"thấu kính fresnel kính thực tế ảo mojing s1\" src=\"https://i.imgur.com/XGaPQ0N.png\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<h3><strong>MOJING S1 JET BLACK&nbsp;2019 c&oacute; lớp chống l&oacute;a v&agrave; trang bị lớp k&iacute;nh chống trầy thấu k&iacute;nh</strong></h3>\r\n\r\n<p>Thấu k&iacute;nh&nbsp;<strong>MOJING S1 JET BLACK&nbsp;2019</strong>&nbsp;c&oacute; trang th&ecirc;m lớp chống l&oacute;a, giảm thiểu t&igrave;nh trạng mỏi mắt khi sử dụng thường xuy&ecirc;n gi&uacute;p cho người d&ugrave;ng c&oacute; thể k&eacute;o d&agrave;i th&ecirc;m thời gian sử dụng li&ecirc;n tục. Để dễ h&igrave;nh dung, c&aacute;c bạn c&oacute; thể so s&aacute;nh thấu k&iacute;nh chống l&oacute;a v&agrave; thấu k&iacute;nh thường như việc bạn mua một cặp k&iacute;nh cận thường chỉ c&oacute; gi&aacute; 150K nhưng một cặp k&iacute;nh cận chống l&oacute;a sẽ c&oacute; gi&aacute; 350K, th&ecirc;m chống trầy nữa th&igrave; gi&aacute; sẽ lại cao hơn. N&oacute;i về chống trầy, Mojing S1 c&oacute; trang bị th&ecirc;m 1 lớp k&iacute;nh bảo vệ chống xước ở b&ecirc;n trong khoang k&iacute;nh. Lớp k&iacute;nh n&agrave;y c&oacute; t&aacute;c dụng cản 100% bụi kh&ocirc;ng thể b&aacute;m l&ecirc;n bề mặt thấu k&iacute;nh ch&iacute;nh. Lớp k&iacute;nh chống bụi n&agrave;y c&oacute; khả năng chống trầy v&agrave; bề mặt phẳng n&ecirc;n sẽ dễ d&agrave;ng vệ sinh hơn v&agrave; hạn chế xước dăm so với c&aacute;c thấu k&iacute;nh lồi.</p>\r\n\r\n<h3><strong>MOJING S1 JET BLACK&nbsp;2019 thấu k&iacute;nh full khoang kh&ocirc;ng bị chồng lấn h&igrave;nh ảnh</strong></h3>\r\n\r\n<p>K&iacute;nh thực tế ảo Mojing S1 c&oacute; thiết kế thấu k&iacute;nh rất lớn, &ocirc;m gần trọn khoang k&iacute;nh v&agrave; thấu k&iacute;nh gia c&ocirc;ng v&aacute;t theo đường sống mũi. So với c&aacute;c k&iacute;nh thực tế ảo thuộc ph&acirc;n kh&uacute;c gi&aacute; rẻ hoặc tầm trung, thấu k&iacute;nh Mojing S1 c&oacute; k&iacute;ch thước lớn hơn rất nhiều bởi vậy khi sử dụng c&aacute;c bạn sẽ kh&ocirc;ng cần phải chỉnh khoảng c&aacute;ch 2 mắt, hạn chế được t&igrave;nh trạng chồng lấn giữa 2 h&igrave;nh ảnh mắt tr&aacute;i v&agrave; mắt phải. Nếu c&aacute;c bạn để &yacute; một ch&uacute;t, c&oacute; thể thấy k&iacute;nh thực tế ảo Mojing S1 đ&atilde; sao ch&eacute;p y nguy&ecirc;n cấu tạo vật l&yacute; v&agrave; thiết kế thấu k&iacute;nh của một sản phẩm k&iacute;nh thực tế ảo d&ugrave;ng cho PC cao cấp nhất tr&ecirc;n thế giới tại thời điểm hiện tại, đ&oacute; ch&iacute;nh l&agrave; HTC Vive.</p>\r\n\r\n<p><img alt=\"so sánh mojing s1 và htc vive\" src=\"https://i.imgur.com/fpqZndt.jpg\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<h3><strong>MOJING S1 JET BLACK&nbsp;2019 c&oacute; tạo ra sự thoải m&aacute;i khi sử dụng ?</strong></h3>\r\n\r\n<p>Vật liệu chế tạo khung k&iacute;nh của&nbsp;<strong>MOJING S1 JET BLACK&nbsp;2019</strong>&nbsp;l&agrave; nhựa cao cấp si&ecirc;u nhẹ. Cấu tạo vật l&yacute; Fresnel của thấu k&iacute;nh cũng khiến cho thấu k&iacute;nh của&nbsp;<strong>MOJING S1 JET BLACK&nbsp;2019</strong>&nbsp;mỏng v&agrave; nhẹ hơn rất nhiều so với c&aacute;c thấu k&iacute;nh phi cầu lồi truyền thống. Ng&ocirc;n ngữ thiết kế của&nbsp;<strong>MOJING S1 JET BLACK&nbsp;2019</strong>&nbsp;đơn giản, kh&ocirc;ng cầu kỳ, tập trung v&agrave;o đ&uacute;ng vấn đề cốt l&otilde;i khi trải nghiệm thực tế ảo đ&oacute; l&agrave; chất lượng h&igrave;nh ảnh v&agrave; cảm gi&aacute;c thoải m&aacute;i khi sử dụng. Kết hợp 3 yếu tố n&agrave;y đ&atilde; cho ch&uacute;ng ta một sản phẩm k&iacute;nh thực tế ảo&nbsp;<strong>MOJING S1 JET BLACK&nbsp;2019</strong>&nbsp;chỉ c&oacute; trọng lượng xấp xỉ 199 Gram, nhẹ nhất trong tất cả c&aacute;c loại k&iacute;nh thực tế ảo. Với trọng lượng n&agrave;y, c&aacute;c bạn c&oacute; thể thoải m&aacute;i khi trải nghiệm c&aacute;c nội dụng 360 độ cần sự dịch chuyển v&agrave; xoay li&ecirc;n tục m&agrave; kh&ocirc;ng cảm thấy mỏi cổ cũng như nặng trĩu tr&ecirc;n mặt.</p>\r\n\r\n<h3><strong>MOJING S1 JET BLACK&nbsp;2019 ph&ugrave; hợp với những ai ?</strong></h3>\r\n\r\n<p>✔&nbsp;Với thấu k&iacute;nh g&oacute;c rộng, quang sai thấp k&iacute;nh thực tế ảo&nbsp;<strong>MOJING S1 JET BLACK&nbsp;2019&nbsp;</strong>ph&ugrave; hợp cho cả mục đ&iacute;ch xem phim cũng như chơi game thực tế ảo.</p>\r\n\r\n<p>✔&nbsp;<strong>MOJING S1 JET BLACK&nbsp;2019&nbsp;</strong>c&oacute; bộ ph&acirc;n chỉnh ti&ecirc;u cự n&ecirc;n người d&ugrave;ng bị cận thị (dưới 6 diop) ho&agrave;n to&agrave;n c&oacute; thể sử dụng kh&ocirc;ng cần đeo k&egrave;m k&iacute;nh cận. Tuy nhi&ecirc;n với người d&ugrave;ng cận tr&ecirc;n 6 diop hoặc cận lệch giữa 2 mắt (lệch &gt;1 diop) sẽ phải sử dụng k&egrave;m k&iacute;nh cận khi trải nghiệm.</p>\r\n\r\n<h3><strong>So s&aacute;nh MOJING S1 JET BLACK&nbsp;2019 với c&aacute;c k&iacute;nh thực tế ảo gi&aacute; rẻ</strong></h3>\r\n\r\n<p>Trong ph&acirc;n kh&uacute;c k&iacute;nh thực tế ảo cao cấp d&ugrave;ng cho điện thoại ghi nhận cuộc đua song m&atilde; giữa Mojing S1 v&agrave; Bobo VR Z6, đ&oacute; l&agrave; cuộc đua giữa Fresnel Lens v&agrave; Hyperboloid Lens.</p>\r\n\r\n<h3>✔Thấu k&iacute;nh Fresnel quang sai thấp cho h&igrave;nh ảnh r&otilde; n&eacute;t hơn</h3>\r\n\r\n<p>Cấu tạo vật l&yacute; hội tụ s&aacute;ng của k&iacute;nh thực tế ảo Mojing S1 l&agrave; Fresnel c&ograve;n của c&aacute;c loại k&iacute;nh thực tế ảo c&ograve;n lại l&agrave; phi cầu lồi. Thấu k&iacute;nh Fresnel đảm bảo c&aacute;c tia s&aacute;ng hội tụ đ&uacute;ng chuẩn tr&ecirc;n 1 mặt phẳng hội tụ. C&ograve;n phi cầu lồi c&oacute; độ quang sai cao, một số tia s&aacute;ng hội kh&ocirc;ng đ&uacute;ng tr&ecirc;n mặt phẳng hội tụ v&igrave; vậy sẽ với thấu k&iacute;nh phi cầu lồi sẽ kh&ocirc;ng thể cho độ n&eacute;t tốt như tr&ecirc;n thấu k&iacute;nh Fresnel. Nếu c&aacute;c bạn t&igrave;m hiểu c&oacute; thể thấy c&aacute;c k&iacute;nh thực tế ảo cao cấp cho PC như HTC Vive v&agrave; Oculus Rift đều sử dụng nguy&ecirc;n l&yacute; hội tụ vật l&yacute; Fresnel tr&ecirc;n sản phẩm của m&igrave;nh.</p>\r\n\r\n<h3>✔Thấu k&iacute;nh tr&agrave;n khoang kh&ocirc;ng cần chỉnh khoảng c&aacute;ch 2 mắt</h3>\r\n\r\n<p>Thiết kế thấu k&iacute;nh của k&iacute;nh thực tế ảo Mojing S1 l&agrave; rất lớn, bao tr&ugrave;m gần như to&agrave;n bộ khoang k&iacute;nh v&agrave; b&aacute;m theo đường sống mũi. Với thiết kế như vậy, cộng th&ecirc;m nguy&ecirc;n l&yacute; hội tụ vật l&yacute; của thấu k&iacute;nh Fresnel Mojing S1 sẽ kh&ocirc;ng cần phải chỉnh khoảng c&aacute;ch 2 mắt như c&aacute;c k&iacute;nh th&ocirc;ng thường. Ưu điểm n&agrave;y cho bạn một trải nghiệm kh&ocirc;ng gian rộng hơn, hạn chế chồng lấn h&iacute;nh ảnh 2 mắt. Thiết kế thấu k&iacute;nh n&agrave;y Mojing S1 đ&atilde; sao ch&eacute;p y nguy&ecirc;n của HTC Vive v&agrave; cho ch&uacute;ng ta một sản phẩm k&iacute;nh thực tế ảo d&ograve;ng Mobile VR tốt nhất trong thời điểm hiện tại. C&ograve;n c&aacute;c loại k&iacute;nh thực tế ảo c&ograve;n lại th&igrave; sử dụng thấu k&iacute;nh tr&ograve;n, đường k&iacute;nh lớn nhất hiện tại cũng chỉ 42mm. K&iacute;ch thước thấu k&iacute;nh nhỏ nhỏ v&igrave; vậy c&aacute;c bạn sẽ phải chỉnh khoảng c&aacute;ch 2 mắt sao cho ph&ugrave; hợp để tr&aacute;nh việc bị chồng lấn h&igrave;nh ảnh. Thực tế trải nghiệm cho thấy với c&ugrave;ng 1 g&oacute;c nh&igrave;n c&ocirc;ng bố l&agrave; 120 độ th&igrave; Mojing S1 cho viền đen &iacute;t hơn rất nhiều so với k&iacute;nh th&ocirc;ng thường.</p>\r\n\r\n<p><img alt=\"so sánh mojing s1 và vr shinecon g07e\" src=\"https://i.imgur.com/d3dU20q.png\" style=\"height:399px; width:600px\" /></p>\r\n\r\n<h3><strong>Kết luận</strong></h3>\r\n\r\n<p>Một số ưu điểm của&nbsp;<strong>MOJING S1 JET BLACK&nbsp;2019</strong>&nbsp;c&oacute; thể kể đến:<br />\r\n✅&nbsp;Nguy&ecirc;n l&yacute; Fresnel quang sai thấp cho h&igrave;nh ảnh sắc n&eacute;t, giảm thiểu vỡ hạt h&igrave;nh ảnh<br />\r\n✅&nbsp;Thiết kế thấu k&iacute;nh tr&agrave;n khoang k&iacute;nh cho g&oacute;c nh&igrave;n rộng, hạn chế viền đen h&igrave;nh ảnh. B&ecirc;n cạnh đ&oacute; thiết kế n&agrave;y kh&ocirc;ng cần phải chỉnh khoảng c&aacute;ch 2 mắt n&ecirc;n sẽ kh&ocirc;ng gặp phải t&igrave;nh trạng chồng lấn h&igrave;nh ảnh như c&aacute;c k&iacute;nh c&oacute; thấu k&iacute;nh tr&ograve;n, nhỏ.<br />\r\n✅&nbsp;Trọng lượng nhẹ chỉ 199 Gram tạo sự nhẹ nh&agrave;ng, thoải m&aacute;i khi sử dụng<br />\r\n<br />\r\nVới những ưu điểm như vậy, Mojing S1 l&agrave; sản phẩm k&iacute;nh thực tế ảo tốt nhất d&agrave;nh cho điện thoại. Nếu bạn muốn một trải nghiệm chất lượng cao nhất c&oacute; thể v&agrave; c&oacute; điện thoại ph&ugrave; hợp th&igrave; n&ecirc;n lựa chọn sản phẩm n&agrave;y. Nếu bạn c&ograve;n ph&acirc;n v&acirc;n về tai nghe v&agrave; c&aacute;c n&uacute;t điều hướng hỗ trợ tr&ecirc;n k&iacute;nh th&igrave; bạn an t&acirc;m, tai nghe bạn c&oacute; thể sử dụng tai nghe của bạn kết nối với điện thoại qua 2 khe 2 b&ecirc;n khoang k&iacute;nh, tay game th&igrave; VRTECH c&oacute; tặng k&egrave;m tay game vrbox đủ t&iacute;nh năng dễ d&agrave;ng kết nối qua bluetooth với điện thoại.</p>\r\n\r\n<h3><strong>Hướng dẫn c&agrave;i app Mojing</strong></h3>\r\n\r\n<p>App được ph&aacute;t triển bởi Baofeng Mojing, c&aacute;c c&aacute;c phi&ecirc;n bản cho Android v&agrave; IOS.Lưu &yacute; app Mojing giao diện ho&agrave;n to&agrave;n bằng tiếng Trung Quốc n&ecirc;n c&aacute;c bạn cần biết tiếng Trung mới sử dụng được. Một số shop giả mạo l&agrave; đại l&yacute; b&aacute;n Mojing S1 tại Việt Nam sẽ tư vấn cho bạn l&agrave; c&oacute; thể d&ugrave;ng App mojing bằng tiếng anh nhưng đ&oacute; l&agrave; th&ocirc;ng tin sai sự thực để nhằm mục đ&iacute;ch lừa đảo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.wandoujia.com/apps/com.baofeng.mj\" target=\"_blank\"><img alt=\"ứng dụng mojing s1\" src=\"https://i.imgur.com/dMhr6mL.png\" style=\"height:65px; width:200px\" /></a><br />\r\n<br />\r\n<a href=\"https://itunes.apple.com/vn/app/%E6%9A%B4%E9%A3%8E%E9%AD%94%E9%95%9Cvr/id950137846?l=vi\" target=\"_blank\"><img alt=\"app mojing cho iphone\" src=\"https://i.imgur.com/iiS61Zs.png\" style=\"height:70px; width:200px\" /></a></p>\r\n\r\n<h3><strong>BỘ QU&Agrave; TẶNG D&Ugrave;NG ĐỂ L&Agrave;M G&Igrave; ?</strong></h3>\r\n\r\n<p>➊&nbsp;<strong>Remote VR Shinecon SC-B03</strong>: C&oacute; thể sử dụng được cả với Android &amp; iOS<br />\r\n☑&nbsp;<strong>Đối với điện thoại Android:&nbsp;</strong>&nbsp;Remote VR Shinecon SC-B03 l&agrave; tay game hỗ trợ thực tế ảo đầy đủ t&iacute;nh năng, kết nối với điện thoại qua bluetooth v&agrave; kh&ocirc;ng cần phải c&agrave;i đặt app cũng như root điện thoại. C&aacute;c t&iacute;nh năng hỗ trợ như tăng/giảm &acirc;m lượng; pause/next/back khi xem video youtube; t&iacute;nh năng chuột gi&uacute;p v&agrave;o tho&aacute;t ứng dụng v&agrave; cảm ứng v&agrave;o bất cứ điểm n&agrave;o của m&agrave;n h&igrave;nh điện thoại; chơi game thực tế ảo v&agrave; c&aacute;c game thường.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>☑&nbsp;<strong>Đối với điện thoại iPhone:&nbsp;</strong>Tr&ecirc;n iPhone,&nbsp;Remote VR Shinecon SC-B03 hỗ trợ &iacute;t t&iacute;nh năng hơn so với Android. C&aacute;c bạn c&oacute; thể next/back, pause/play&nbsp;hoặc +/- &acirc;m lượng m&agrave; kh&ocirc;ng cần th&aacute;o điện thoại rất hữu dụng khi xem phim. C&ograve;n với Game VR tr&ecirc;n iPhone đa phần sẽ thiết kế tương t&aacute;c theo cảm biến quy hồi v&agrave; điểm nh&igrave;n n&ecirc;n sẽ kh&ocirc;ng cần Remote.</p>\r\n', '1731573463_Kính thực tế ảo Mojing S1 Jet Black 2019.jpg', 1),
(177, 'Remote Controller Meta Quest 2 - Trái (L) - Phải (R)', 0, 2, 4, 43, 0, 7000000, 10500000, 4, '<p>HI TIẾT SẢN PHẨM</p>\r\n\r\n<p><img alt=\"remote controller meta quest 2\" src=\"https://i.imgur.com/itqFWKC.png\" style=\"height:281px; width:500px\" /></p>\r\n\r\n<p>Remote Controller cho (Oculus) Meta Quest 2<br />\r\n☑ Cam kết ch&iacute;nh h&atilde;ng<br />\r\n☑ H&agrave;ng b&oacute;c m&aacute;y Like New<br />\r\n☑ Sử dụng thay thế khi hỏng hoặc mất<br />\r\n☑ C&oacute; 2 loại Tr&aacute;i v&agrave; Phải<br />\r\n☑ Gi&aacute; ni&ecirc;m yết l&agrave; 01 Controller<br />\r\n☑ C&ograve;n h&agrave;ng</p>\r\n', '1731573575_Remote Controller Meta Quest 2 - Trái (L) - Phải (R).jpg', 1),
(178, 'Kính Thực Tế Ảo Pimax 5K Plus', 0, 1, 3, 73, 0, 9000000, 2000000, 0, '<p>CHI TIẾT SẢN PHẨM</p>\r\n\r\n<p>Đang cập nhật th&ocirc;ng tin ...</p>\r\n', '1731573909_Kính Thực Tế Ảo Pimax 5K Plus.jpg', 1),
(179, 'Sony Playstation Portal Remote Player Cho PS5 (PS Portal)', 1, 2, 3, 43, 0, 1000000, 1800000, 8, '<p>CHI TIẾT SẢN PHẨM</p>\r\n\r\n<p><strong>Sony Playstation Portal Remote Player Cho PS5 (PS Portal) kh&ocirc;ng phải m&aacute;y chơi game độc lập, m&agrave; l&agrave; phụ kiện chơi game d&agrave;nh cho PS5. Sản phẩm sử dụng cần phải c&oacute; m&aacute;y PS5.</strong></p>\r\n\r\n<p><strong><a href=\"https://vrtech.vn/phu-kien-playstation-portal-dm170331.html\" target=\"_blank\">Danh mục phụ kiện cho PlayStation Portal</a></strong></p>\r\n\r\n<p>PlayStation Portal&nbsp;l&agrave; thiết bị phụ kiện gaming d&agrave;nh cho&nbsp;Playstation 5, d&ugrave;ng để chơi game trực tiếp từ cỗ m&aacute;y&nbsp;PS5&nbsp;của bạn bằng c&aacute;ch stream tựa game đ&oacute; từ&nbsp;PS5&nbsp;sang&nbsp;Portal&nbsp;th&ocirc;ng qua mạng&nbsp;Wi-Fi.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nĐiểm đặc biệt của sản phẩm n&agrave;y l&agrave; kh&ocirc;ng giống như những thiết bị như&nbsp;Nintendo Switch, PS Vita, Steam Deck, ROG Ally&nbsp;hay bất cứ c&aacute;c thiết bị chơi game cầm tay n&agrave;o kh&aacute;c, c&oacute; thể tự bản th&acirc;n chạy game,&nbsp;Playstation Portal&nbsp;KH&Ocirc;NG PHẢI l&agrave; một cỗ m&aacute;y&nbsp;handheld Standalone&nbsp;hoạt động độc lập, m&agrave; n&oacute; phải cần c&oacute; m&aacute;y&nbsp;PS5&nbsp;v&agrave;&nbsp;CẦN PHẢI KẾT NỐI INTERNET&nbsp;mới c&oacute; thể sử dụng được. Thiết bị tương th&iacute;ch với nhiều tựa game PS4, PS5 hứa hẹn sẽ mang đến cho bạn những giờ ph&uacute;t &quot;c&agrave;y cuốc&quot; tuyệt vời nhờ v&agrave;o thư viện game khổng lồ.</p>\r\n\r\n<p><br />\r\n<img alt=\"Sony Playstation Portal Remote Player Cho PS5 (PS Portal)\" src=\"https://i.imgur.com/kyGmH50.png\" style=\"height:800px; width:800px\" /><br />\r\n<img alt=\"Sony Playstation Portal Remote Player Cho PS5 (PS Portal)\" src=\"https://i.imgur.com/H9kOiP4.png\" style=\"height:800px; width:800px\" /><br />\r\n&nbsp;</p>\r\n\r\n<p>So với dịch vụ&nbsp;Remote Play,&nbsp;PlayStation Portal&nbsp;vượt trội hơn nhờ thiết kế chuẩn gaming hơn với m&agrave;n h&igrave;nh&nbsp;LCD 8-inch&nbsp;ở giữa c&ugrave;ng tay cầm&nbsp;DualSense&nbsp;hai b&ecirc;n thay v&igrave; d&ugrave;ng&nbsp;Touch Pad&nbsp;khi sử dụng&nbsp;Remote Play&nbsp;tr&ecirc;n điện thoại hay m&aacute;y t&iacute;nh bảng.&nbsp;Playstation Portal&nbsp;mang đến đầy đủ t&iacute;nh năng của một chiếc&nbsp;DualSense&nbsp;th&ocirc;ng thường, như rung, haptic feedback v&agrave; adaptive triggers, độ rung cảm biến v&agrave; c&ograve; R2 v&agrave; L2 sẽ nặng nhẹ dựa tr&ecirc;n t&igrave;nh huống của tựa game m&agrave; bạn đang chơi, mang lại trải nghiệm &quot;chuẩn gaming&quot; hơn khi so với sử dụng dịch vụ&nbsp;Remote Play.</p>\r\n\r\n<p><img alt=\"Sony Playstation Portal Remote Player Cho PS5 (PS Portal)\" src=\"https://i.imgur.com/E5vEbXS.png\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<p>Với m&agrave;n h&igrave;nh&nbsp;LCD 8-inch&nbsp;sở hữu độ ph&acirc;n giải&nbsp;Full HD (1080p)&nbsp;cho ra chất lượng h&igrave;nh ảnh sắc n&eacute;t v&agrave; sống động. Ngo&agrave;i ra, trải nghiệm chơi game tr&ecirc;n m&agrave;n h&igrave;nh sẽ mượt m&agrave; hơn với tốc độ l&agrave;m tươi 60 khung h&igrave;nh/gi&acirc;y. Giờ đ&acirc;y bạn c&oacute; thể chiến tựa game y&ecirc;u th&iacute;ch của m&igrave;nh bất k&igrave; kh&ocirc;ng gian n&agrave;o cực k&igrave; tiện lợi: từ ph&ograve;ng kh&aacute;ch đến bếp ăn, linh hoạt mọi kh&ocirc;ng gian sống.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Sony Playstation Portal Remote Player Cho PS5 (PS Portal)\" src=\"https://i.imgur.com/fS5FEX4.png\" style=\"height:800px; width:800px\" /><br />\r\n<img alt=\"Sony Playstation Portal Remote Player Cho PS5 (PS Portal)\" src=\"https://i.imgur.com/Hyxxoke.png\" style=\"height:800px; width:800px\" /></p>\r\n', '1731574119_Sony Playstation Portal Remote Player Cho PS5 (PS Portal).jpg', 1),
(180, 'Máy Chơi Game Cầm Tay Valve Steam Deck', 1, 9, 3, 60, 0, 200000, 8500000, 15, '<p>CHI TIẾT SẢN PHẨM</p>\r\n\r\n<p>Steam Deck l&agrave; một thiết bị cao cấp do Valve v&agrave; AMD hợp t&aacute;c sản xuất đem tới khả năng sử dụng như PC gaming chạy hệ điều h&agrave;nh SteamOS. C&oacute; ba phi&ecirc;n bản l&agrave; 64GB chuẩn eMMC, 256GB NVME SSD v&agrave; 512GB NVME SSD.</p>\r\n\r\n<h2><strong>Cấu h&igrave;nh di động mạnh mẽ</strong></h2>\r\n\r\n<p>Valve hợp t&aacute;c chặt chẽ với AMD sử dụng kiến tr&uacute;c CPU Zen 2 với 4 nh&acirc;n 8 luồng xử l&yacute; v&agrave; kiến tr&uacute;c GPU RDNA 2 mạnh mẽ với sức mạnh 1.6 TFlops. C&oacute; khả năng &ldquo;ch&iacute;nh chiến&rdquo; tốt c&aacute;c tựa game AAA hiện nay (tựa game bom tấn khủng)<br />\r\n&nbsp;</p>\r\n\r\n<h2><strong>Sử dụng kho game Steam ở khắp mọi nơi</strong></h2>\r\n\r\n<p>Khi bạn đăng nhập v&agrave;o Steam Deck, To&agrave;n bộ thư viện (kho game) của bạn sẽ hiển thị giống như tr&ecirc;n PC.</p>\r\n\r\n<p>Dễ d&agrave;ng t&igrave;m kiếm tựa game đ&atilde; mua, đ&atilde; tải từ trước đ&oacute;.<br />\r\n&nbsp;</p>\r\n\r\n<h2><strong>Trải nghiệm thoải m&aacute;i v&agrave; kiểm so&aacute;t dễ d&agrave;ng</strong></h2>\r\n\r\n<p>Steam Deck được thiết kế cho c&aacute;c phi&ecirc;n chơi k&eacute;o d&agrave;i, Cho d&ugrave; bạn đang sử dụng ng&oacute;n c&aacute;i hay b&agrave;n di chuột (trackpads). C&aacute;c n&uacute;t bấm được bố tr&iacute; ho&agrave;n hảo lu&ocirc;n nằm trong tầm với của b&agrave;n tay.</p>\r\n\r\n<p>Mặt sau của m&aacute;y được chạm khắc để ph&ugrave; hợp thoải m&aacute;i với nhiều k&iacute;ch cỡ b&agrave;n tay.<br />\r\n&nbsp;</p>\r\n\r\n<h2><strong>Th&ocirc;ng số kỹ thuật</strong></h2>\r\n\r\n<h3>Cấu h&igrave;nh</h3>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>CPU:</td>\r\n			<td>AMD APU\r\n			<p>CPU: Zen 2 4c/8t, 2.4-3.5GHz (up to 448 GFlops FP32)</p>\r\n\r\n			<p>GPU: 8 RDNA 2 CUs, 1.0-1.6GHz (up to 1.6 TFlops FP32)</p>\r\n\r\n			<p>APU power: 4-15W</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>RAM:</td>\r\n			<td>16 GB LPDDR5 on-board RAM (5500 MT/s quad 32-bit channels)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong:</td>\r\n			<td>C&oacute; 3 phi&ecirc;n bản&nbsp;64 GB eMMC (PCIe Gen 2 x1)&nbsp;256 GB NVMe SSD (PCIe Gen 3 x4)&nbsp;512 GB high-speed NVMe SSD (PCIe Gen 3 x4)\r\n			<p>M&aacute;y c&oacute; khe cắm thẻ nhớ mở rộng MicroSD tốc độ cao</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3>Tay cầm v&agrave; ph&iacute;m bấm</h3>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Gamepad controls:</td>\r\n			<td>Ph&iacute;m bấm A B X Y\r\n			<p>D-pad</p>\r\n\r\n			<p>L &amp; R analog triggers</p>\r\n\r\n			<p>L &amp; R bumpers</p>\r\n\r\n			<p>View &amp; Menu buttons</p>\r\n\r\n			<p>4 x assignable grip buttons</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thumbsticks:</td>\r\n			<td>2 x full-size analog sticks c&oacute; cảm ứng điện dung</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Haptics:</td>\r\n			<td>HD haptics</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trackpads:</td>\r\n			<td>2 b&agrave;n trackpad vu&ocirc;ng 32.5mm c&oacute; phản hồi x&uacute;c gi&aacute;c\r\n			<p>55% better latency compared to Steam Controller</p>\r\n\r\n			<p>Pressure-sensitivity for configurable click strength</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến hồi chuyển:</td>\r\n			<td>6-Axis IMU</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3>M&agrave;n h&igrave;nh</h3>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải:</td>\r\n			<td>1280 x 800px (tỉ lệ 16:10)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n:</td>\r\n			<td>M&agrave;n h&igrave;nh LCD IPS li&ecirc;n kết quang học để n&acirc;ng cao khả năng đọc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh:</td>\r\n			<td>7 inch &nbsp;(đường ch&eacute;o)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ s&aacute;ng:</td>\r\n			<td>Tối đa 400 nits</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Refresh rate:</td>\r\n			<td>60Hz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Touch enabled:</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến:</td>\r\n			<td>Cảm biến m&agrave;n h&igrave;nh dựa v&agrave;o &aacute;nh s&aacute;ng xung quanh (Ambient light sensor)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3>Kết nối</h3>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Bluetooth:</td>\r\n			<td>Bluetooth 5.0 (d&ugrave;ng để kết nối controller, phụ kiện v&agrave; &acirc;m thanh )</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Wi-Fi:</td>\r\n			<td>Dual-band Wi-Fi radio, 2.4GHz and 5GHz, 2 x 2 MIMO, IEEE 802.11a/b/g/n/ac</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3>&Acirc;m thanh</h3>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Channels:</td>\r\n			<td>Stereo with embedded DSP for an immersive listening experience</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Microphones:</td>\r\n			<td>Dual microphone array</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Headphone / mic jack:</td>\r\n			<td>3.5mm stereo headphone / headset jack</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Digital:</td>\r\n			<td>Multichannel audio via DisplayPort over USB-C, standard USB-C, or Bluetooth 5.0</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3>Nguồn v&agrave; Pin</h3>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Nguồn:</td>\r\n			<td>Nguồn 45W USB Type-C PD 3.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin:</td>\r\n			<td>Dung lượng PIN40Whr. 2 &ndash; 8 tiếng chơi li&ecirc;n tục</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Trọn bộ sản phẩm Steam Deck bao gồm</h2>\r\n\r\n<p>M&aacute;y Steam Deck (Dung lượng t&ugrave;y chọn 64GB, 256GB, 512GB)&nbsp;Sạc c&aacute;p&nbsp;Nguồn&nbsp;S&aacute;ch hướng dẫn&nbsp;Phiểu bảo h&agrave;nh 3 th&aacute;ng</p>\r\n', '1731574282_Máy Chơi Game Cầm Tay Valve Steam Deck.jpg', 1);

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
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `inventory_detail`
--
ALTER TABLE `inventory_detail`
  MODIFY `inventory_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

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
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

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
