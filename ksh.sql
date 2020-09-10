-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 10, 2020 lúc 02:48 PM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ksh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cate_news`
--

CREATE TABLE `cate_news` (
  `id_cate` int(10) UNSIGNED NOT NULL,
  `name_cate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cate_news`
--

INSERT INTO `cate_news` (`id_cate`, `name_cate`, `parent_id`, `created_at`, `updated_at`) VALUES
(4, 'Thành tựu', 0, '2020-09-10 05:26:47', '2020-09-10 05:26:47'),
(5, 'Công trình', 0, '2020-09-10 05:26:55', '2020-09-10 05:26:55'),
(6, 'Sản phẩm mới', 0, '2020-09-10 05:34:25', '2020-09-10 05:34:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cate_product`
--

CREATE TABLE `cate_product` (
  `id_cate` int(10) UNSIGNED NOT NULL,
  `name_cate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug_cate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_cate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cate_product`
--

INSERT INTO `cate_product` (`id_cate`, `name_cate`, `parent_id`, `created_at`, `updated_at`, `slug_cate`, `type_cate`) VALUES
(2, 'Bàn ghế', 4, '2020-09-08 06:52:45', '2020-09-08 06:52:45', 'ban-ghe', 1),
(3, 'Nhà ở', 4, '2020-09-08 21:45:06', '2020-09-08 21:45:06', 'nha-o', 1),
(4, 'Nội thất văn phòng', 0, '2020-09-09 08:06:41', '2020-09-09 08:06:41', 'noi-that-van-phong', 0),
(11, 'Điện dân dụng', 0, '2020-09-09 23:51:01', '2020-09-09 23:51:01', 'dien-dan-dung', 0),
(16, 'Test mục cha', 0, '2020-09-10 00:45:32', '2020-09-10 00:45:32', 'test-muc-cha', 0),
(17, 'Mục con', 16, '2020-09-10 00:45:51', '2020-09-10 00:45:51', 'muc-con', 1),
(18, 'Anime đẹp', 16, '2020-09-10 03:10:05', '2020-09-10 03:10:05', 'anime-dep', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `imageproduct`
--

CREATE TABLE `imageproduct` (
  `id_img` int(10) UNSIGNED NOT NULL,
  `name_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pro` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `imageproduct`
--

INSERT INTO `imageproduct` (`id_img`, `name_img`, `url_img`, `id_pro`, `created_at`, `updated_at`) VALUES
(27, '1599574477intro-6.png', 'uploads/products/1599574477intro-6.png', 10, '2020-09-08 07:14:37', '2020-09-08 07:14:37'),
(28, '1599574477photo_2020-08-31_11-48-03.jpg', 'uploads/products/1599574477photo_2020-08-31_11-48-03.jpg', 10, '2020-09-08 07:14:38', '2020-09-08 07:14:38'),
(29, '1599574478pic1.png', 'uploads/products/1599574478pic1.png', 10, '2020-09-08 07:14:38', '2020-09-08 07:14:38'),
(30, '1599574478prize.jpg', 'uploads/products/1599574478prize.jpg', 10, '2020-09-08 07:14:38', '2020-09-08 07:14:38'),
(31, '1599577171873733.png', 'uploads/products/1599577171873733.png', 11, '2020-09-08 07:59:31', '2020-09-08 07:59:31'),
(32, '159957717161351818_p0.png', 'uploads/products/159957717161351818_p0.png', 11, '2020-09-08 07:59:31', '2020-09-08 07:59:31'),
(33, '159957717163373162_p0.png', 'uploads/products/159957717163373162_p0.png', 11, '2020-09-08 07:59:31', '2020-09-08 07:59:31'),
(34, '159957717164400540_p0.png', 'uploads/products/159957717164400540_p0.png', 11, '2020-09-08 07:59:31', '2020-09-08 07:59:31'),
(35, '159957717170479671_p0.jpg', 'uploads/products/159957717170479671_p0.jpg', 11, '2020-09-08 07:59:31', '2020-09-08 07:59:31'),
(36, '1599626791116610208_995055584274143_6731482619553198673_n.jpg', 'uploads/products/1599626791116610208_995055584274143_6731482619553198673_n.jpg', 12, '2020-09-08 21:46:31', '2020-09-08 21:46:31'),
(37, '1599626791107605367_689877658527394_1591386762386535690_n.jpg', 'uploads/products/1599626791107605367_689877658527394_1591386762386535690_n.jpg', 12, '2020-09-08 21:46:31', '2020-09-08 21:46:31'),
(38, '1599626791107668977_317544972621885_4131829623762157689_n.jpg', 'uploads/products/1599626791107668977_317544972621885_4131829623762157689_n.jpg', 12, '2020-09-08 21:46:31', '2020-09-08 21:46:31'),
(39, '1599626791107899606_200350784705485_634107179262967888_n.jpg', 'uploads/products/1599626791107899606_200350784705485_634107179262967888_n.jpg', 12, '2020-09-08 21:46:31', '2020-09-08 21:46:31'),
(40, '1599626791107995797_653505835238535_4898838146202082695_n.jpg', 'uploads/products/1599626791107995797_653505835238535_4898838146202082695_n.jpg', 12, '2020-09-08 21:46:31', '2020-09-08 21:46:31'),
(41, '159965659761351818_p0.png', 'uploads/products/159965659761351818_p0.png', 13, '2020-09-09 06:03:17', '2020-09-09 06:03:17'),
(42, '159965659763373162_p0.png', 'uploads/products/159965659763373162_p0.png', 13, '2020-09-09 06:03:17', '2020-09-09 06:03:17'),
(43, '159965659769859645_p0.png', 'uploads/products/159965659769859645_p0.png', 13, '2020-09-09 06:03:17', '2020-09-09 06:03:17'),
(44, '159965659769988643_p0_master1200.jpg', 'uploads/products/159965659769988643_p0_master1200.jpg', 13, '2020-09-09 06:03:17', '2020-09-09 06:03:17'),
(45, '159965659770838017_p0.jpg', 'uploads/products/159965659770838017_p0.jpg', 13, '2020-09-09 06:03:17', '2020-09-09 06:03:17'),
(46, '159965659771244923_p0.jpg', 'uploads/products/159965659771244923_p0.jpg', 13, '2020-09-09 06:03:17', '2020-09-09 06:03:17'),
(47, '1599664213ca-3a-l-555x555.jpg', 'uploads/products/1599664213ca-3a-l-555x555.jpg', 14, '2020-09-09 08:10:13', '2020-09-09 08:10:13'),
(48, '1599664213ca-3a-sg-270x380.jpg', 'uploads/products/1599664213ca-3a-sg-270x380.jpg', 14, '2020-09-09 08:10:13', '2020-09-09 08:10:13'),
(49, '1599664213ca-3b-l-270x380.jpg', 'uploads/products/1599664213ca-3b-l-270x380.jpg', 14, '2020-09-09 08:10:13', '2020-09-09 08:10:13'),
(50, '1599664213lk-4n-01-1-2.png', 'uploads/products/1599664213lk-4n-01-1-2.png', 14, '2020-09-09 08:10:13', '2020-09-09 08:10:13'),
(51, '1599664213lk-12n-03-270x380.jpg', 'uploads/products/1599664213lk-12n-03-270x380.jpg', 14, '2020-09-09 08:10:13', '2020-09-09 08:10:13'),
(52, '1599664228ca-3a-l-555x555.jpg', 'uploads/products/1599664228ca-3a-l-555x555.jpg', 14, '2020-09-09 08:10:28', '2020-09-09 08:10:28'),
(53, '159972185370479671_p0.jpg', 'uploads/products/159972185370479671_p0.jpg', 15, '2020-09-10 00:10:53', '2020-09-10 00:10:53'),
(54, '159972185370731935_p0.jpg', 'uploads/products/159972185370731935_p0.jpg', 15, '2020-09-10 00:10:53', '2020-09-10 00:10:53'),
(55, '159972185370838017_p0.jpg', 'uploads/products/159972185370838017_p0.jpg', 15, '2020-09-10 00:10:53', '2020-09-10 00:10:53'),
(56, '159972185370937229_p0.png', 'uploads/products/159972185370937229_p0.png', 15, '2020-09-10 00:10:53', '2020-09-10 00:10:53'),
(57, '159972185371244923_p0.jpg', 'uploads/products/159972185371244923_p0.jpg', 15, '2020-09-10 00:10:53', '2020-09-10 00:10:53'),
(58, '159973272176995599_p0_master1200.jpg', 'uploads/products/159973272176995599_p0_master1200.jpg', 16, '2020-09-10 03:12:01', '2020-09-10 03:12:01'),
(59, '159973272177702461_p0.jpg', 'uploads/products/159973272177702461_p0.jpg', 16, '2020-09-10 03:12:01', '2020-09-10 03:12:01'),
(60, '159973272175706518_p0.png', 'uploads/products/159973272175706518_p0.png', 16, '2020-09-10 03:12:01', '2020-09-10 03:12:01'),
(61, '159973272175941732_p0.png', 'uploads/products/159973272175941732_p0.png', 16, '2020-09-10 03:12:01', '2020-09-10 03:12:01'),
(62, '159973272175992830_p0_master1200.jpg', 'uploads/products/159973272175992830_p0_master1200.jpg', 16, '2020-09-10 03:12:01', '2020-09-10 03:12:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_09_02_153138_tbl_blog', 1),
(4, '2020_09_03_073451_tbl_cate_new', 2),
(5, '2020_09_08_042231_tbl_product', 3),
(6, '2020_09_08_044943_tbl_img_pro', 4),
(7, '2020_09_08_055257_tbl_cate_pro', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id_news` int(10) UNSIGNED NOT NULL,
  `title_news` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_news` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_blog` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_parent` int(11) NOT NULL,
  `view_blog` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_news` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id_news`, `title_news`, `content_news`, `thumbnail_blog`, `cate_parent`, `view_blog`, `created_at`, `updated_at`, `slug`, `desc_news`) VALUES
(17, 'XUÂN HÒA “BỘI THU” GIẢI THƯỞNG TỪ CÔNG ĐOÀN NGÀNH CÔNG THƯƠNG', '<p>Sau 13 ng&agrave;y kh&ocirc;ng ph&aacute;t hiện ca l&acirc;y nhiễm nCoV trong cộng đồng, Đ&agrave; Nẵng tiếp tục nới lỏng c&aacute;ch ly x&atilde; hội, cho người d&acirc;n tắm biển, mở cửa h&agrave;ng ăn uống.</p>\r\n\r\n<p>Chiều 10/9, Ph&oacute; chủ tịch UBND TP Đ&agrave; Nẵng L&ecirc; Trung Chinh cho biết, từ 0h ng&agrave;y 11/9, th&agrave;nh phố chuyển từ trạng th&aacute;i &quot;c&oacute; nguy cơ l&acirc;y nhiễm dịch bệnh&quot; sang &quot;c&oacute; nguy cơ l&acirc;y nhiễm dịch bệnh thấp&quot;. Người d&acirc;n vẫn được đề nghị hạn chế ra khỏi nh&agrave; nếu kh&ocirc;ng cần thiết; tiếp tục đi chợ theo tần suất ba ng&agrave;y một lần.</p>\r\n\r\n<p>Th&agrave;nh phố tiếp tục y&ecirc;u cầu người d&acirc;n đeo khẩu trang tại nơi c&ocirc;ng cộng, c&ocirc;ng sở, trường học, bệnh viện, cơ sở sản xuất, kinh doanh, tr&ecirc;n phương tiện c&ocirc;ng cộng; thường xuy&ecirc;n rửa tay bằng x&agrave; ph&ograve;ng hoặc dung dịch s&aacute;t khuẩn, giữ khoảng c&aacute;ch tối thiểu một m&eacute;t khi tiếp x&uacute;c.</p>\r\n\r\n<p><img alt=\"Người dân Đà Nẵng phát khẩu trang miễn phí trên vỉa hè để cộng đồng cùng nhau chống dịch Covid-19. Ảnh: Nguyễn Đông.\" src=\"https://i1-vnexpress.vnecdn.net/2020/09/10/10-92-7361-1599729856.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=K-hv8aHoaZaB7sjM7enQRQ\" /></p>\r\n\r\n<p>Người d&acirc;n Đ&agrave; Nẵng ph&aacute;t khẩu trang miễn ph&iacute; tr&ecirc;n vỉa h&egrave; để c&ugrave;ng nhau chống Covid-19. Ảnh:&nbsp;<em>Nguyễn Đ&ocirc;ng.</em></p>\r\n\r\n<p>Người d&acirc;n kh&ocirc;ng được tập trung qu&aacute; 30 người tại nơi c&ocirc;ng cộng, ngo&agrave;i phạm vi c&ocirc;ng sở, trường học, bệnh viện, c&aacute;c hoạt động lễ hội, nghi lễ t&ocirc;n gi&aacute;o, t&iacute;n ngưỡng, thờ tự, giải đấu thể thao, ăn uống tập thể tại đ&aacute;m hiếu, đ&aacute;m hỷ, tiệc li&ecirc;n hoan...</p>\r\n\r\n<p>Ch&iacute;nh quyền Đ&agrave; Nẵng cho ph&eacute;p c&aacute;c nh&agrave; h&agrave;ng, cửa h&agrave;ng, cơ sở kinh doanh dịch vụ, ăn uống được hoạt động trở lại nhưng phải c&oacute; cam kết v&agrave; thực hiện ph&ograve;ng, chống dịch theo quy định. Người chế biến đồ ăn, thức uống, phục vụ tại c&aacute;c cơ sở phải đeo khẩu trang, găng tay khi l&agrave;m việc, giữ khoảng c&aacute;ch với kh&aacute;ch.</p>\r\n\r\n<p>Ngo&agrave;i ra, c&aacute;c nh&agrave; h&agrave;ng, qu&aacute;n ăn phải sắp xếp chỗ ngồi cho kh&aacute;ch ăn, uống đảm bảo khoảng c&aacute;ch tối thiểu một m&eacute;t; bố tr&iacute; khu vực v&agrave; y&ecirc;u cầu kh&aacute;ch rửa tay với x&agrave; ph&ograve;ng v&agrave; nước sạch hoặc dung dịch s&aacute;t khuẩn trước, sau khi ăn, sau khi đi vệ sinh; khử khuẩn bề mặt b&agrave;n, ghế ngồi ngay sau khi mỗi lượt kh&aacute;ch rời đi.</p>\r\n\r\n<p>Th&agrave;nh phố kh&ocirc;ng cấm tắm biển như trong lần&nbsp;nới lỏng gi&atilde;n c&aacute;ch&nbsp;6 ng&agrave;y trước. Trong khi đ&oacute;, c&aacute;c hoạt động kinh doanh, dịch vụ kh&ocirc;ng thiết yếu tại c&aacute;c khu, điểm vui chơi, giải tr&iacute;, cơ sở l&agrave;m đẹp, karaoke, massage, qu&aacute;n bar, vũ trường, rạp phim, c&aacute;c điểm vui chơi, giải tr&iacute; c&oacute; thưởng, điểm cung cấp dịch vụ Internet c&ocirc;ng cộng; ph&ograve;ng tập gym, yoga, bida, bơi lội, v&otilde; thuật... tiếp tục dừng hoạt động.</p>\r\n\r\n<p><img alt=\"Học sinh ở Đà Nẵng phải học qua mạng sau ngày khai giảng hôm 5/9. Ảnh: Nguyễn Đông.\" src=\"https://i1-vnexpress.vnecdn.net/2020/09/10/10-93-5208-1599729856.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=sRycdmP5rgUH8UetwH2VoQ\" /></p>\r\n\r\n<p>Học sinh ở Đ&agrave; Nẵng phải học qua mạng sau ng&agrave;y khai giảng 5/9. Ảnh:&nbsp;<em>Nguyễn Đ&ocirc;ng.</em></p>\r\n\r\n<p>Đ&agrave; Nẵng dự kiến cho c&aacute;c trường THPT, THCS, trung t&acirc;m gi&aacute;o dục thường xuy&ecirc;n bắt đầu đi học lại từ ng&agrave;y 14/9. C&aacute;c nh&oacute;m trẻ, trường mầm non, trường tiểu học v&agrave; cơ sở đ&agrave;o tạo ngoại ngữ, tin học, năng khiếu, kỹ năng sống, cơ sở dạy th&ecirc;m, học th&ecirc;m... được đi học lại từ ng&agrave;y 21/9.</p>\r\n\r\n<p>Ri&ecirc;ng với c&aacute;c trường cao đẳng, đại học v&agrave; cơ sở gi&aacute;o dục nghề nghiệp, th&agrave;nh phố để l&atilde;nh đạo c&aacute;c trường quyết định ng&agrave;y đi học lại của sinh vi&ecirc;n, học vi&ecirc;n tr&ecirc;n cơ sở hướng dẫn của Bộ, ng&agrave;nh chủ quản, nhưng thời điểm học tập trung phải sau 14/9.</p>\r\n\r\n<p>Từ ng&agrave;y 24/7 đến nay, Đ&agrave; Nẵng ghi nhận 389 người mắc Covid-19. Trong đ&oacute;, 31 người tử vong tại Đ&agrave; Nẵng, hơn 30 người đang điều trị, số c&ograve;n lại đ&atilde; được xuất viện. Từ ng&agrave;y 3 đến 12h ng&agrave;y 8/9, th&agrave;nh phố lấy mẫu đại diện hộ gia đ&igrave;nh v&agrave; khu d&acirc;n cư, đến nay 71.242 mẫu c&oacute; kết quả x&eacute;t nghiệm &acirc;m t&iacute;nh.</p>\r\n\r\n<p>Th&agrave;nh phố đang ở ng&agrave;y thứ 13 kh&ocirc;ng ghi nhận ca l&acirc;y nhiễm trong cộng đồng. Hiện tại c&ograve;n hơn 300 người phải c&aacute;ch ly tại cơ sở y tế, c&aacute;ch ly tập trung v&agrave; tại nh&agrave;.</p>', '/images/339221599741018.jpg', 4, 1, '2020-09-10 05:30:18', '2020-09-10 05:46:12', 'xuan-hoa-boi-thu-giai-thuong-tu-cong-doan-nganh-cong-thuong', 'Sau 13 ngày không phát hiện ca lây nhiễm nCoV trong cộng đồng, Đà Nẵng tiếp tục nới lỏng cách ly xã hội, cho người dân tắm biển, mở cửa hàng ăn uống.'),
(18, 'Xuân Hòa bàn giao nội thất cho Ký túc xá Đại học FPT Cần Thơ', '<p>Ng&agrave;y 8/9, &ocirc;ng Huỳnh Văn Quang H&ugrave;ng, Chủ tịch UBND huyện Cần Đước (Long An) cho biết đ&atilde; chỉ đạo c&ocirc;ng an mời b&agrave; Nguyễn Thị Hoa tại x&atilde; Long H&ograve;a l&ecirc;n l&agrave;m r&otilde; việc h&agrave;nh hạ mẹ gi&agrave;.</p>\r\n\r\n<p>Trước đ&oacute;, video d&agrave;i gần 7 ph&uacute;t ghi lại cảnh b&agrave; Hoa li&ecirc;n tục chửi bới, xưng m&agrave;y tao, d&ugrave;ng chổi đ&aacute;nh v&agrave;o mặt, đầu b&agrave; cụ. B&agrave; ta sau đ&oacute; c&ograve;n x&uacute;c r&aacute;c đổ l&ecirc;n người v&agrave; x&eacute; &aacute;o cụ. Bị đ&aacute;nh, b&agrave; cụ chỉ ngồi co tr&ecirc;n giường, đưa tay đỡ.</p>\r\n\r\n<p><img alt=\"Hình ảnh cụ bà bị con gái đánh xuất hiện trên mạng xã hội sáng 7/9. Ảnh: Cắt từ video.\" src=\"https://i1-vnexpress.vnecdn.net/2020/09/08/con-gai-danh-me-1924-1599537484.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=t_dPPhFNglUsg8pgO0N-ng\" /></p>\r\n\r\n<p>H&igrave;nh ảnh cụ b&agrave; bị con g&aacute;i đ&aacute;nh xuất hiện tr&ecirc;n mạng x&atilde; hội s&aacute;ng 7/9. Ảnh: C<em>ắt từ video của Thanh Tuyền.</em></p>\r\n\r\n<p>X&aacute;c minh bước đầu của cơ quan chức năng, sự việc xảy ra hồi th&aacute;ng 11 năm ngo&aacute;i, hiện b&agrave; cụ đ&atilde; mất khoảng một tuần. Người quay video l&agrave; con g&aacute;i b&agrave; Hoa, 32 tuổi.</p>\r\n\r\n<p>&quot;Do xảy ra bất h&ograve;a với mẹ, n&ecirc;n thay v&igrave; can ngăn mẹ đ&aacute;nh b&agrave; ngoại, c&ocirc; g&aacute;i đ&atilde; quay lại sự việc v&agrave; ph&aacute;t t&aacute;n&quot;, nguồn tin từ c&ocirc;ng an huyện cho hay.</p>\r\n\r\n<p>Ng&agrave;y 2/9, cụ b&agrave; mất, anh họ b&agrave; Hoa đến dự tang lễ. &Ocirc;ng được con g&aacute;i b&agrave; Hoa kể lại việc b&agrave; ngoại bị mẹ đ&aacute;nh đập, chửi mắng. Hai h&ocirc;m trước &ocirc;ng n&agrave;y đ&atilde; chia sẻ video do c&ocirc; g&aacute;i gửi l&ecirc;n mạng x&atilde; hội.</p>\r\n\r\n<p>B&agrave; Nguyễn Thụy Thắm, Ph&oacute; chủ tịch thường trực Hội Li&ecirc;n hiệp Phụ nữ tỉnh Long An cho biết, gia đ&igrave;nh n&agrave;y gồm cụ b&agrave;, con g&aacute;i v&agrave; hai ch&aacute;u từ nơi kh&aacute;c dọn về đ&acirc;y ở 5-6 năm. B&agrave; Hoa l&agrave;m nghề nội trợ, t&iacute;nh kh&iacute; n&oacute;ng nảy, gia đ&igrave;nh thường xuy&ecirc;n c&atilde;i v&atilde; n&ecirc;n h&agrave;ng x&oacute;m &iacute;t qua lại.</p>\r\n\r\n<p>&quot;Trước đ&oacute;, hội phụ nữ ở địa phương đ&atilde; nhiều lần đến nh&agrave; n&oacute;i chuyện, vận động tham gia v&agrave;o c&ocirc;ng t&aacute;c hội nhưng đều thất bại&quot;, b&agrave; Thắm n&oacute;i.</p>\r\n\r\n<p>Qua l&agrave;m việc với ch&iacute;nh quyền địa phương, bước đầu b&agrave; Hoa thừa nhận, do bực tức việc mẹ kh&ocirc;ng để lại t&agrave;i sản, khi gi&agrave; lại chỉ c&oacute; m&igrave;nh b&agrave; nu&ocirc;i dưỡng n&ecirc;n &quot;mới c&oacute; h&agrave;nh động đ&aacute;nh, mắng chửi cụ&quot;.</p>', '/images/260011599741096.png', 5, 0, '2020-09-10 05:31:36', '2020-09-10 05:31:36', 'xuan-hoa-ban-giao-noi-that-cho-ky-tuc-xa-dai-hoc-fpt-can-tho', 'Người phụ nữ 56 tuổi khai vì bực tức mẹ già 79 tuổi không chia tài sản, lại bắt bà phải nuôi, nên đã đánh, chửi mắng.'),
(19, 'Bàn học sinh BHS-14-08: Bé chăm học, mẹ an lòng', '<p>Khi c&oacute; một g&oacute;c học tập, b&eacute; sẽ rất tự h&agrave;o v&igrave; được sở hữu một kh&ocirc;ng gian ri&ecirc;ng tư. Một chiếc b&agrave;n học tiện &iacute;ch, xinh xắn v&agrave; đẹp mắt sẽ khiến b&eacute; y&ecirc;u th&iacute;ch, h&agrave;o hứng, từ đ&oacute; gi&uacute;p b&eacute; chăm học v&agrave; gắn b&oacute; với g&oacute;c học tập hơn.</p>\r\n\r\n<p>Mẫu b&agrave;n học gia đ&igrave;nh&nbsp;<a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\">BHS-14-08</a>&nbsp;mới ra mắt của Xu&acirc;n H&ograve;a c&oacute; k&iacute;ch thước lớn, nhiều ưu điểm vượt trội, ph&ugrave; hợp với kh&ocirc;ng gian rộng, cho b&eacute; thỏa sức học tập v&agrave; s&aacute;ng tạo.</p>\r\n\r\n<p><img alt=\"Bàn học sinh BHS-14-08: Bé chăm học, mẹ an lòng 1\" src=\"https://www.xuanhoa.vn/wp-content/uploads/2020/07/bhs-14-08-3.jpg\" width=\"613\" /></p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>K&iacute;ch thước lớn với mặt b&agrave;n rộng</strong></a></p>\r\n\r\n<p>So với mẫu&nbsp;<a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-13-06/\">BHS-13-06</a>&nbsp;th&igrave; BHS-14-08 c&oacute; k&iacute;ch thước lớn hơn, mặt b&agrave;n rộng hơn. Cụ thể: B&agrave;n: 800x500x615-735mm, Ghế: 380x450x620-700mm.</p>\r\n\r\n<p>Bộ b&agrave;n n&agrave;y ph&ugrave; hợp với những kh&ocirc;ng gian rộng, diện t&iacute;ch sử dụng mặt b&agrave;n lớn, tạo cho b&eacute; cảm gi&aacute;c rộng r&atilde;i v&agrave; thoải m&aacute;i khi sử dụng.</p>\r\n\r\n<p>Ngăn b&agrave;n với diện t&iacute;ch lớn, c&oacute; thể đựng cặp, s&aacute;ch vở, đồ d&ugrave;ng học tập&hellip;</p>\r\n\r\n<p><img alt=\"Bàn học sinh BHS-14-08: Bé chăm học, mẹ an lòng 2\" src=\"https://www.xuanhoa.vn/wp-content/uploads/2020/07/bhs-14-08-hong.jpg\" width=\"426\" /></p>\r\n\r\n<p><em>Mẫu b&agrave;n BHS-14-08 m&agrave;u hồng</em></p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>Nguy&ecirc;n liệu cao cấp</strong></a></p>\r\n\r\n<p>Mặt b&agrave;n, mặt ghế được l&agrave;m từ gỗ MFC chống xước với 2 m&agrave;u xanh, hồng, c&oacute; in nh&acirc;n vật họat h&igrave;nh tăng sự thu h&uacute;t, hấp dẫn cho c&aacute;c b&eacute;.</p>\r\n\r\n<p>Khung b&agrave;n, khung ghế được l&agrave;m từ th&eacute;p ống ti&ecirc;u chuẩn Nhật Bản, sơn bột tĩnh điện m&agrave;u ghi tr&ecirc;n d&acirc;y chuyền nhập khẩu từ Singapore gi&uacute;p sản phẩm bền m&agrave;u trong suốt qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p>Đặc biệt, sản phẩm được sản xuất tr&ecirc;n d&acirc;y chuyền hiện đại h&agrave;ng đầu thế giới của h&agrave;ng SCM, Italy (phần mộc) v&agrave; Salvagnini Italy (phần th&eacute;p), đảm bảo độ ch&iacute;nh x&aacute;c v&agrave; t&iacute;nh thẩm mỹ cho sản phẩm.</p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>Điều chỉnh độ cao linh hoạt</strong></a></p>\r\n\r\n<p>Cả b&agrave;n v&agrave; ghế đều dễ d&agrave;ng điều chỉnh độ cao theo 3 cấp độ, tối đa 120mm với b&agrave;n, 80mm với ghế, nhờ đ&oacute; bộ b&agrave;n n&agrave;y ph&ugrave; hợp với v&oacute;c d&aacute;ng của từng b&eacute; ở từng độ tuổi kh&aacute;c nhau.</p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>Chất lượng đạt chuẩn</strong></a></p>\r\n\r\n<p>BHS-14-08 của Xu&acirc;n H&ograve;a được chứng nhận đạt ti&ecirc;u chuẩn chất lượng của Viện ti&ecirc;u chuẩn chất lượng Việt Nam cho sản phẩm b&agrave;n học sinh.</p>', '/images/145621599741302.png', 6, 0, '2020-09-10 05:35:02', '2020-09-10 05:35:02', 'ban-hoc-sinh-bhs-14-08-be-cham-hoc-me-an-long', 'Thêm một mẫu bàn học sinh gia đình được Công ty Cổ phần Xuân Hòa Việt Nam (Xuân Hòa) cho ra mắt thị trường trước thềm năm học mới 2020-2021.'),
(20, 'Bàn học sinh BHS-14-08: Bé học ngu, nghỉ học', '<p>Khi c&oacute; một g&oacute;c học tập, b&eacute; sẽ rất tự h&agrave;o v&igrave; được sở hữu một kh&ocirc;ng gian ri&ecirc;ng tư. Một chiếc b&agrave;n học tiện &iacute;ch, xinh xắn v&agrave; đẹp mắt sẽ khiến b&eacute; y&ecirc;u th&iacute;ch, h&agrave;o hứng, từ đ&oacute; gi&uacute;p b&eacute; chăm học v&agrave; gắn b&oacute; với g&oacute;c học tập hơn.</p>\r\n\r\n<p>Mẫu b&agrave;n học gia đ&igrave;nh&nbsp;<a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\">BHS-14-08</a>&nbsp;mới ra mắt của Xu&acirc;n H&ograve;a c&oacute; k&iacute;ch thước lớn, nhiều ưu điểm vượt trội, ph&ugrave; hợp với kh&ocirc;ng gian rộng, cho b&eacute; thỏa sức học tập v&agrave; s&aacute;ng tạo.</p>\r\n\r\n<p><img alt=\"Bàn học sinh BHS-14-08: Bé chăm học, mẹ an lòng 1\" src=\"https://www.xuanhoa.vn/wp-content/uploads/2020/07/bhs-14-08-3.jpg\" width=\"613\" /></p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>K&iacute;ch thước lớn với mặt b&agrave;n rộng</strong></a></p>\r\n\r\n<p>So với mẫu&nbsp;<a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-13-06/\">BHS-13-06</a>&nbsp;th&igrave; BHS-14-08 c&oacute; k&iacute;ch thước lớn hơn, mặt b&agrave;n rộng hơn. Cụ thể: B&agrave;n: 800x500x615-735mm, Ghế: 380x450x620-700mm.</p>\r\n\r\n<p>Bộ b&agrave;n n&agrave;y ph&ugrave; hợp với những kh&ocirc;ng gian rộng, diện t&iacute;ch sử dụng mặt b&agrave;n lớn, tạo cho b&eacute; cảm gi&aacute;c rộng r&atilde;i v&agrave; thoải m&aacute;i khi sử dụng.</p>\r\n\r\n<p>Ngăn b&agrave;n với diện t&iacute;ch lớn, c&oacute; thể đựng cặp, s&aacute;ch vở, đồ d&ugrave;ng học tập&hellip;</p>\r\n\r\n<p><img alt=\"Bàn học sinh BHS-14-08: Bé chăm học, mẹ an lòng 2\" src=\"https://www.xuanhoa.vn/wp-content/uploads/2020/07/bhs-14-08-hong.jpg\" width=\"426\" /></p>\r\n\r\n<p><em>Mẫu b&agrave;n BHS-14-08 m&agrave;u hồng</em></p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>Nguy&ecirc;n liệu cao cấp</strong></a></p>\r\n\r\n<p>Mặt b&agrave;n, mặt ghế được l&agrave;m từ gỗ MFC chống xước với 2 m&agrave;u xanh, hồng, c&oacute; in nh&acirc;n vật họat h&igrave;nh tăng sự thu h&uacute;t, hấp dẫn cho c&aacute;c b&eacute;.</p>\r\n\r\n<p>Khung b&agrave;n, khung ghế được l&agrave;m từ th&eacute;p ống ti&ecirc;u chuẩn Nhật Bản, sơn bột tĩnh điện m&agrave;u ghi tr&ecirc;n d&acirc;y chuyền nhập khẩu từ Singapore gi&uacute;p sản phẩm bền m&agrave;u trong suốt qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p>Đặc biệt, sản phẩm được sản xuất tr&ecirc;n d&acirc;y chuyền hiện đại h&agrave;ng đầu thế giới của h&agrave;ng SCM, Italy (phần mộc) v&agrave; Salvagnini Italy (phần th&eacute;p), đảm bảo độ ch&iacute;nh x&aacute;c v&agrave; t&iacute;nh thẩm mỹ cho sản phẩm.</p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>Điều chỉnh độ cao linh hoạt</strong></a></p>\r\n\r\n<p>Cả b&agrave;n v&agrave; ghế đều dễ d&agrave;ng điều chỉnh độ cao theo 3 cấp độ, tối đa 120mm với b&agrave;n, 80mm với ghế, nhờ đ&oacute; bộ b&agrave;n n&agrave;y ph&ugrave; hợp với v&oacute;c d&aacute;ng của từng b&eacute; ở từng độ tuổi kh&aacute;c nhau.</p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>Chất lượng đạt chuẩn</strong></a></p>\r\n\r\n<p>BHS-14-08 của Xu&acirc;n H&ograve;a được chứng nhận đạt ti&ecirc;u chuẩn chất lượng của Viện ti&ecirc;u chuẩn chất lượng Việt Nam cho sản phẩm b&agrave;n học sinh.</p>', '/images/547131599741345.jpg', 6, 0, '2020-09-10 05:35:45', '2020-09-10 05:35:45', 'ban-hoc-sinh-bhs-14-08-be-hoc-ngu-nghi-hoc', 'Thêm một mẫu bàn học sinh gia đình được Công ty Cổ phần Xuân Hòa Việt Nam (Xuân Hòa) vì ngồi mãi mà fix không xong'),
(21, 'Nội thất Xuân Hòa là Hàng Việt Nam chất lượng cao 2020', '<p>Khi c&oacute; một g&oacute;c học tập, b&eacute; sẽ rất tự h&agrave;o v&igrave; được sở hữu một kh&ocirc;ng gian ri&ecirc;ng tư. Một chiếc b&agrave;n học tiện &iacute;ch, xinh xắn v&agrave; đẹp mắt sẽ khiến b&eacute; y&ecirc;u th&iacute;ch, h&agrave;o hứng, từ đ&oacute; gi&uacute;p b&eacute; chăm học v&agrave; gắn b&oacute; với g&oacute;c học tập hơn.</p>\r\n\r\n<p>Mẫu b&agrave;n học gia đ&igrave;nh&nbsp;<a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\">BHS-14-08</a>&nbsp;mới ra mắt của Xu&acirc;n H&ograve;a c&oacute; k&iacute;ch thước lớn, nhiều ưu điểm vượt trội, ph&ugrave; hợp với kh&ocirc;ng gian rộng, cho b&eacute; thỏa sức học tập v&agrave; s&aacute;ng tạo.</p>\r\n\r\n<p><img alt=\"Bàn học sinh BHS-14-08: Bé chăm học, mẹ an lòng 1\" src=\"https://www.xuanhoa.vn/wp-content/uploads/2020/07/bhs-14-08-3.jpg\" width=\"613\" /></p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>K&iacute;ch thước lớn với mặt b&agrave;n rộng</strong></a></p>\r\n\r\n<p>So với mẫu&nbsp;<a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-13-06/\">BHS-13-06</a>&nbsp;th&igrave; BHS-14-08 c&oacute; k&iacute;ch thước lớn hơn, mặt b&agrave;n rộng hơn. Cụ thể: B&agrave;n: 800x500x615-735mm, Ghế: 380x450x620-700mm.</p>\r\n\r\n<p>Bộ b&agrave;n n&agrave;y ph&ugrave; hợp với những kh&ocirc;ng gian rộng, diện t&iacute;ch sử dụng mặt b&agrave;n lớn, tạo cho b&eacute; cảm gi&aacute;c rộng r&atilde;i v&agrave; thoải m&aacute;i khi sử dụng.</p>\r\n\r\n<p>Ngăn b&agrave;n với diện t&iacute;ch lớn, c&oacute; thể đựng cặp, s&aacute;ch vở, đồ d&ugrave;ng học tập&hellip;</p>\r\n\r\n<p><img alt=\"Bàn học sinh BHS-14-08: Bé chăm học, mẹ an lòng 2\" src=\"https://www.xuanhoa.vn/wp-content/uploads/2020/07/bhs-14-08-hong.jpg\" width=\"426\" /></p>\r\n\r\n<p><em>Mẫu b&agrave;n BHS-14-08 m&agrave;u hồng</em></p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>Nguy&ecirc;n liệu cao cấp</strong></a></p>\r\n\r\n<p>Mặt b&agrave;n, mặt ghế được l&agrave;m từ gỗ MFC chống xước với 2 m&agrave;u xanh, hồng, c&oacute; in nh&acirc;n vật họat h&igrave;nh tăng sự thu h&uacute;t, hấp dẫn cho c&aacute;c b&eacute;.</p>\r\n\r\n<p>Khung b&agrave;n, khung ghế được l&agrave;m từ th&eacute;p ống ti&ecirc;u chuẩn Nhật Bản, sơn bột tĩnh điện m&agrave;u ghi tr&ecirc;n d&acirc;y chuyền nhập khẩu từ Singapore gi&uacute;p sản phẩm bền m&agrave;u trong suốt qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p>Đặc biệt, sản phẩm được sản xuất tr&ecirc;n d&acirc;y chuyền hiện đại h&agrave;ng đầu thế giới của h&agrave;ng SCM, Italy (phần mộc) v&agrave; Salvagnini Italy (phần th&eacute;p), đảm bảo độ ch&iacute;nh x&aacute;c v&agrave; t&iacute;nh thẩm mỹ cho sản phẩm.</p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>Điều chỉnh độ cao linh hoạt</strong></a></p>\r\n\r\n<p>Cả b&agrave;n v&agrave; ghế đều dễ d&agrave;ng điều chỉnh độ cao theo 3 cấp độ, tối đa 120mm với b&agrave;n, 80mm với ghế, nhờ đ&oacute; bộ b&agrave;n n&agrave;y ph&ugrave; hợp với v&oacute;c d&aacute;ng của từng b&eacute; ở từng độ tuổi kh&aacute;c nhau.</p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>Chất lượng đạt chuẩn</strong></a></p>\r\n\r\n<p>BHS-14-08 của Xu&acirc;n H&ograve;a được chứng nhận đạt ti&ecirc;u chuẩn chất lượng của Viện ti&ecirc;u chuẩn chất lượng Việt Nam cho sản phẩm b&agrave;n học sinh.</p>', '/images/550861599741436.jpg', 4, 0, '2020-09-10 05:37:16', '2020-09-10 05:37:16', 'noi-that-xuan-hoa-la-hang-viet-nam-chat-luong-cao-2020', 'Ngày 9/6/2020, Công ty Cổ phần Xuân Hòa Việt Nam (Xuân Hòa) đã tham dự Hội thảo “Tái khởi động kinh doanh sau Covid 19” và đón nhận Chứng nhận Hàng Việt Nam chất lượng cao 2020 – 2021 do người tiêu dùng bình chọn.'),
(22, 'Đại hội Đảng bộ Công ty CP Xuân Hòa Việt Nam thành công rực rỡ', '<p>Khi c&oacute; một g&oacute;c học tập, b&eacute; sẽ rất tự h&agrave;o v&igrave; được sở hữu một kh&ocirc;ng gian ri&ecirc;ng tư. Một chiếc b&agrave;n học tiện &iacute;ch, xinh xắn v&agrave; đẹp mắt sẽ khiến b&eacute; y&ecirc;u th&iacute;ch, h&agrave;o hứng, từ đ&oacute; gi&uacute;p b&eacute; chăm học v&agrave; gắn b&oacute; với g&oacute;c học tập hơn.</p>\r\n\r\n<p>Mẫu b&agrave;n học gia đ&igrave;nh&nbsp;<a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\">BHS-14-08</a>&nbsp;mới ra mắt của Xu&acirc;n H&ograve;a c&oacute; k&iacute;ch thước lớn, nhiều ưu điểm vượt trội, ph&ugrave; hợp với kh&ocirc;ng gian rộng, cho b&eacute; thỏa sức học tập v&agrave; s&aacute;ng tạo.</p>\r\n\r\n<p><img alt=\"Bàn học sinh BHS-14-08: Bé chăm học, mẹ an lòng 1\" src=\"https://www.xuanhoa.vn/wp-content/uploads/2020/07/bhs-14-08-3.jpg\" width=\"613\" /></p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>K&iacute;ch thước lớn với mặt b&agrave;n rộng</strong></a></p>\r\n\r\n<p>So với mẫu&nbsp;<a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-13-06/\">BHS-13-06</a>&nbsp;th&igrave; BHS-14-08 c&oacute; k&iacute;ch thước lớn hơn, mặt b&agrave;n rộng hơn. Cụ thể: B&agrave;n: 800x500x615-735mm, Ghế: 380x450x620-700mm.</p>\r\n\r\n<p>Bộ b&agrave;n n&agrave;y ph&ugrave; hợp với những kh&ocirc;ng gian rộng, diện t&iacute;ch sử dụng mặt b&agrave;n lớn, tạo cho b&eacute; cảm gi&aacute;c rộng r&atilde;i v&agrave; thoải m&aacute;i khi sử dụng.</p>\r\n\r\n<p>Ngăn b&agrave;n với diện t&iacute;ch lớn, c&oacute; thể đựng cặp, s&aacute;ch vở, đồ d&ugrave;ng học tập&hellip;</p>\r\n\r\n<p><img alt=\"Bàn học sinh BHS-14-08: Bé chăm học, mẹ an lòng 2\" src=\"https://www.xuanhoa.vn/wp-content/uploads/2020/07/bhs-14-08-hong.jpg\" width=\"426\" /></p>\r\n\r\n<p><em>Mẫu b&agrave;n BHS-14-08 m&agrave;u hồng</em></p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>Nguy&ecirc;n liệu cao cấp</strong></a></p>\r\n\r\n<p>Mặt b&agrave;n, mặt ghế được l&agrave;m từ gỗ MFC chống xước với 2 m&agrave;u xanh, hồng, c&oacute; in nh&acirc;n vật họat h&igrave;nh tăng sự thu h&uacute;t, hấp dẫn cho c&aacute;c b&eacute;.</p>\r\n\r\n<p>Khung b&agrave;n, khung ghế được l&agrave;m từ th&eacute;p ống ti&ecirc;u chuẩn Nhật Bản, sơn bột tĩnh điện m&agrave;u ghi tr&ecirc;n d&acirc;y chuyền nhập khẩu từ Singapore gi&uacute;p sản phẩm bền m&agrave;u trong suốt qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p>Đặc biệt, sản phẩm được sản xuất tr&ecirc;n d&acirc;y chuyền hiện đại h&agrave;ng đầu thế giới của h&agrave;ng SCM, Italy (phần mộc) v&agrave; Salvagnini Italy (phần th&eacute;p), đảm bảo độ ch&iacute;nh x&aacute;c v&agrave; t&iacute;nh thẩm mỹ cho sản phẩm.</p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>Điều chỉnh độ cao linh hoạt</strong></a></p>\r\n\r\n<p>Cả b&agrave;n v&agrave; ghế đều dễ d&agrave;ng điều chỉnh độ cao theo 3 cấp độ, tối đa 120mm với b&agrave;n, 80mm với ghế, nhờ đ&oacute; bộ b&agrave;n n&agrave;y ph&ugrave; hợp với v&oacute;c d&aacute;ng của từng b&eacute; ở từng độ tuổi kh&aacute;c nhau.</p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>Chất lượng đạt chuẩn</strong></a></p>\r\n\r\n<p>BHS-14-08 của Xu&acirc;n H&ograve;a được chứng nhận đạt ti&ecirc;u chuẩn chất lượng của Viện ti&ecirc;u chuẩn chất lượng Việt Nam cho sản phẩm b&agrave;n học sinh.</p>', '/images/321511599741469.jpg', 4, 0, '2020-09-10 05:37:49', '2020-09-10 05:37:49', 'dai-hoi-dang-bo-cong-ty-cp-xuan-hoa-viet-nam-thanh-cong-ruc-ro', 'Chiều ngày 06/06/2020, Đại hội Đảng bộ Công ty CP Xuân Hòa Việt Nam lần thứ XV, nhiệm kỳ 2020 – 2025 đã được tổ chức thành công với sự có mặt của 96 đại biểu là đảng viên sinh hoạt tại 10 chi bộ trực thuộc Đảng bộ Công ty.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id_pro` int(10) UNSIGNED NOT NULL,
  `name_pro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_pro` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_pro` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_parent` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `img_product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug_pro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id_pro`, `name_pro`, `desc_pro`, `detail_pro`, `cate_parent`, `created_at`, `updated_at`, `img_product`, `seo_title`, `seo_keyword`, `seo_desc`, `slug_pro`) VALUES
(10, 'Bàn cổ điển', 'The query builder also provides a variety of aggregate methods such as count, max, min, avg, and sum. You may call any of these methods after constructing your query:', '<p>The query builder also provides a variety of aggregate methods such as&nbsp;<code>count</code>,&nbsp;<code>max</code>,&nbsp;<code>min</code>,&nbsp;<code>avg</code>, and&nbsp;<code>sum</code>. You may call any of these methods after constructing your query:</p>', 2, '2020-09-08 07:14:29', '2020-09-08 07:14:29', 'ok', 'q', 'q', 'q', 'nguyen-ngoc-nhan'),
(11, 'Ghế nhựa Xuân Hòa Đà Nẵng Chất Lượng Cao', 'Công ty Cổ phần Xuân Hòa Việt Nam (Xuân Hòa) – do Cộng Hòa Pháp tài trợ (qua thương hiệu của hãng xe Peugeot), là một trong những doanh nghiệp hàng đầu Việt Nam về tư vấn, thiết kế và sản xuất trang thiết bị nội thất …', '<p><strong>Th&ocirc;ng tin về sản phẩm</strong>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>C&ocirc;ng ty đẹp</li>\r\n	<li>Chất lượng</li>\r\n	<li>Uy t&iacute;n</li>\r\n	<li>Đừng ma, chắc vậy</li>\r\n</ul>', 2, '2020-09-08 07:59:04', '2020-09-08 07:59:04', 'ok', 'ban ghe', 'ban ghe', 'ghe', 'ghe-nhua-xuan-hoa-da-nang-chat-luong-cao'),
(12, 'Nhà cấp 4 đẹp và sang trọng', 'Nhà cấp 4 đẹp mê mẩn được các gia chủ yêu chuộng nhất hiện nay. 800+ Mẫu thiết kế nhà cấp 4 đẹp. Thiết kế Vạn An Group – Cơ ngơi như ý.', '<p>L&agrave; thương hiệu gắn liền với những l&acirc;u đ&agrave;i, biệt thự t&ecirc;n tuổi, hiện tại Thiết kế Vạn An&nbsp;c&oacute; trụ sở ch&iacute;nh<em>&nbsp;tại H&agrave; Nội</em>&nbsp;v&agrave; 05 chi nh&aacute;nh<em>&nbsp;tại&nbsp;</em>c&aacute;c tỉnh th&agrave;nh:&nbsp;<em>Tp. Hồ Ch&iacute; Minh, Bắc Ninh, Quảng Ninh, Ninh B&igrave;nh v&agrave; Thanh H&oacute;a.</em></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Kế hoạch sắp tới, Ch&uacute;ng t&ocirc;i sẽ mở c&aacute;c chi nh&aacute;nh tại B&igrave;nh Định, Đ&agrave; Nẵng v&agrave; Vũng T&agrave;u. Với mong muốn phục vụ Qu&yacute; kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n quốc được thuận tiện nhất.</p>', 3, '2020-09-08 21:46:01', '2020-09-08 21:46:01', 'ok', 'nha o', 'nha o', 'nha o', 'nha-cap-4-dep-va-sang-trong'),
(13, 'Fix quá mệt và khoong muốn nghĩ từ gì thêm', 'Nhiều bạn tham gia group này, có quan tâm đến vật lý chắc đều đã nghe qua khái niệm rối lượng tử trên báo đài (cứ 10 bài báo liên quan tới vật lý thì hết 11 bài nhắc đến rối lượng tử).', '<p>Nhiều bạn tham gia group n&agrave;y, c&oacute; quan t&acirc;m đến vật l&yacute; chắc đều đ&atilde; nghe qua kh&aacute;i niệm rối lượng tử tr&ecirc;n b&aacute;o đ&agrave;i (cứ 10 b&agrave;i b&aacute;o li&ecirc;n quan tới vật l&yacute; th&igrave; hết 11 b&agrave;i nhắc đến rối lượng tử). Tuy nhi&ecirc;n, c&oacute; thể những người viết b&aacute;o kh&ocirc;ng c&oacute; kiến thức vật l&yacute;, n&ecirc;n c&aacute;ch giải th&iacute;ch đ&ocirc;i khi g&acirc;y hiểu nhầm cho người đọc v&agrave; khiến cho độc giả cảm thấy rối lượng tử l&agrave; một c&aacute;i g&igrave; đ&oacute; b&iacute; ẩn. Trong post n&agrave;y, m&igrave;nh sẽ cố đưa ra c&aacute;ch giải th&iacute;ch ch&iacute;nh x&aacute;c hơn về rối lượng tử v&agrave; vấn đề m&agrave; n&oacute; đặt ra cho vật l&yacute; hiện đại.</p>', 3, '2020-09-09 06:03:01', '2020-09-09 06:03:01', 'ok', 'wibu', 'wibu', 'wibu', 'my-waifu-cua-toi-3-va-chi-thi-khong-the-ban-duoc'),
(14, 'TỦ SẮT CA-3A-L', 'Tủ văn phòng rất đẹp,  Tủ văn phòng rất đẹp,  Tủ văn phòng rất đẹp, Tủ văn phòng rất đẹp,', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p><strong><a href=\"https://www.xuanhoa.vn/sp/tu-sat-ca-3a-l/\">- Tủ sắt CA-3A-L</a></strong>&nbsp;được l&agrave;m từ th&eacute;p ti&ecirc;u chuẩn Nhật Bản.</p>\r\n\r\n<p>- Lớp sơn tĩnh điện gi&uacute;p tủ bền m&agrave;u, s&aacute;ng đẹp v&agrave; kh&ocirc;ng bị han gỉ trong suốt qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p>- Tủ gồm 2 khoang, 4 ngăn đều. Mỗi ngăn c&oacute; kh&oacute;a ri&ecirc;ng.</p>\r\n\r\n<p>K&Iacute;CH THƯỚC:&nbsp;1000x450x1830</p>\r\n\r\n<p>CHẤT LIỆU:&nbsp;Th&eacute;p sơn tĩnh điện</p>\r\n\r\n<p>M&Agrave;U SẮC:&nbsp;</p>', 4, '2020-09-09 08:08:58', '2020-09-09 08:08:58', 'ok', 'ok', 'ok', 'ok', 'tu-sat-ca-3a-l'),
(15, 'Ok nhé', 'ok', '<p>ok</p>', 15, '2020-09-10 00:10:39', '2020-09-10 00:10:39', 'ok', 'ok', 'ok', 'ok', 'ok-nhe'),
(16, 'Bộ nào đo được tôi copy trên anime47', 'Đao Kiếm Thần Vực (Phần 3) vietsub | Sword Art Online: Alicization vietsub: chuyển thể light novel Sword Art Online của tác giả Reki Kawahara. Phần 3 sẽ sẽ xoay quanh toàn bộ arc Alicization của light novel, đây là arc kéo dài từ vol 9 đến vol 18. Kirito bỗng nhiên tỉnh lại trong', '<p>Đao Kiếm Thần Vực (Phần 3) vietsub | Sword Art Online: Alicization vietsub: chuyển thể light novel Sword Art Online của t&aacute;c giả Reki Kawahara. Phần 3 sẽ sẽ xoay quanh to&agrave;n bộ arc Alicization của light novel, đ&acirc;y l&agrave; arc k&eacute;o d&agrave;i từ vol 9 đến vol 18. Kirito bỗng nhi&ecirc;n tỉnh lại trong&nbsp;Đao Kiếm Thần Vực (Phần 3) vietsub | Sword Art Online: Alicization vietsub: chuyển thể light novel Sword Art Online của t&aacute;c giả Reki Kawahara. Phần 3 sẽ sẽ xoay quanh to&agrave;n bộ arc Alicization của light novel, đ&acirc;y l&agrave; arc k&eacute;o d&agrave;i từ vol 9 đến vol 18. Kirito bỗng nhi&ecirc;n tỉnh lại trong</p>', 18, '2020-09-10 03:11:33', '2020-09-10 03:11:33', 'ok', 'ok', 'ok', 'ok', 'all-my-faifu-cua-toi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `privacy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `privacy`) VALUES
(1, 'ksh.dn', 'ksh.dn', '2020-09-12 17:00:00', '386702ec3ff6e914f35fdd55582e5dd0', 'YHgGRkNc7yoOaPCVN9c1tDfkUk9oJ71prOZxhIrT2RtC0sSPACaGIADjpzCk', '2020-09-22 17:00:00', '2020-09-15 17:00:00', 0),
(2, 'nhan', 'nhan.vn', '2020-09-23 17:00:00', '0cc175b9c0f1b6a831c399e269772661', 'no', '2020-09-23 17:00:00', '2020-09-25 17:00:00', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cate_news`
--
ALTER TABLE `cate_news`
  ADD PRIMARY KEY (`id_cate`);

--
-- Chỉ mục cho bảng `cate_product`
--
ALTER TABLE `cate_product`
  ADD PRIMARY KEY (`id_cate`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `imageproduct`
--
ALTER TABLE `imageproduct`
  ADD PRIMARY KEY (`id_img`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_pro`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cate_news`
--
ALTER TABLE `cate_news`
  MODIFY `id_cate` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `cate_product`
--
ALTER TABLE `cate_product`
  MODIFY `id_cate` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `imageproduct`
--
ALTER TABLE `imageproduct`
  MODIFY `id_img` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id_pro` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
