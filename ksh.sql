-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 10, 2020 lúc 09:50 AM
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
(1, 'Khuyến nghị', 0, '2020-09-03 01:10:23', '2020-09-03 01:10:23'),
(2, 'Về sản phẩm', 0, '2020-09-03 02:29:39', '2020-09-03 02:29:39'),
(3, 'Giải thưởng', 0, '2020-09-09 08:12:12', '2020-09-09 08:12:12');

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
(17, 'Mục con', 16, '2020-09-10 00:45:51', '2020-09-10 00:45:51', 'muc-con', 1);

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
(57, '159972185371244923_p0.jpg', 'uploads/products/159972185371244923_p0.jpg', 15, '2020-09-10 00:10:53', '2020-09-10 00:10:53');

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
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id_news`, `title_news`, `content_news`, `thumbnail_blog`, `cate_parent`, `view_blog`, `created_at`, `updated_at`, `slug`) VALUES
(11, 'Xuân Hòa bàn giao nội thất cho Ký túc xá Đại học FPT Cần Thơ', '<p>C&aacute;c h&igrave;nh ảnh =)))</p>\r\n\r\n<p>&lt;a href=&quot;https://ibb.co/yBn1xSv&quot;&gt;&lt;img src=&quot;https://i.ibb.co/yBn1xSv/73718366-p0-master1200.jpg&quot; alt=&quot;73718366-p0-master1200&quot; border=&quot;0&quot;&gt;&lt;/a&gt; &lt;a href=&quot;https://ibb.co/YQHgdtY&quot;&gt;&lt;img src=&quot;https://i.ibb.co/YQHgdtY/73770473-p0.png&quot; alt=&quot;73770473-p0&quot; border=&quot;0&quot;&gt;&lt;/a&gt; &lt;a href=&quot;https://ibb.co/R07nJhy&quot;&gt;&lt;img src=&quot;https://i.ibb.co/R07nJhy/74731371-p0.jpg&quot; alt=&quot;74731371-p0&quot; border=&quot;0&quot;&gt;&lt;/a&gt; &lt;a href=&quot;https://ibb.co/1fq8M7B&quot;&gt;&lt;img src=&quot;https://i.ibb.co/1fq8M7B/74870513-p0-master1200.jpg&quot; alt=&quot;74870513-p0-master1200&quot; border=&quot;0&quot;&gt;&lt;/a&gt;</p>', '/images/879701599556072.jpg', 1, 0, '2020-09-08 02:07:52', '2020-09-08 02:07:52', 'xuan-hoa-ban-giao-noi-that-cho-ky-tuc-xa-dai-hoc-fpt-can-tho'),
(12, 'Giới thiệu mô hình mới cho KSH và đầu tư', '<p>Ảnh full</p>\r\n\r\n<p>&lt;a href=&quot;https://ibb.co/yBn1xSv&quot;&gt;&lt;img src=&quot;https://i.ibb.co/QjFRxdS/73718366-p0-master1200.jpg&quot; alt=&quot;73718366-p0-master1200&quot; border=&quot;0&quot;&gt;&lt;/a&gt;<br />\r\n&lt;a href=&quot;https://ibb.co/YQHgdtY&quot;&gt;&lt;img src=&quot;https://i.ibb.co/2hGJMjm/73770473-p0.png&quot; alt=&quot;73770473-p0&quot; border=&quot;0&quot;&gt;&lt;/a&gt;<br />\r\n&lt;a href=&quot;https://ibb.co/R07nJhy&quot;&gt;&lt;img src=&quot;https://i.ibb.co/hWC5TXf/74731371-p0.jpg&quot; alt=&quot;74731371-p0&quot; border=&quot;0&quot;&gt;&lt;/a&gt;<br />\r\n&lt;a href=&quot;https://ibb.co/1fq8M7B&quot;&gt;&lt;img src=&quot;https://i.ibb.co/qMskC7h/74870513-p0-master1200.jpg&quot; alt=&quot;74870513-p0-master1200&quot; border=&quot;0&quot;&gt;&lt;/a&gt;</p>', '/images/851741599556163.png', 1, 0, '2020-09-08 02:09:23', '2020-09-08 02:09:23', 'gioi-thieu-mo-hinh-moi-cho-ksh-va-dau-tu'),
(14, 'Xuân Hòa bàn giao nội thất cho Ký túc xá Đại học FPT Cần Thơ', '<p><strong>C&ocirc;ng ty TNHH KSH với...</strong></p>\r\n\r\n<p><strong>v&agrave; đ&acirc;y l&agrave; c&aacute;c ảnh của</strong></p>\r\n\r\n<p><strong>&lt;a href=&quot;https://imgbb.com/&quot;&gt;&lt;img src=&quot;https://i.ibb.co/HFRJndV/pic1.png&quot; alt=&quot;pic1&quot; border=&quot;0&quot;&gt;&lt;/a&gt;\\</strong></p>\r\n\r\n<ul>\r\n	<li><strong>đẹp</strong></li>\r\n	<li><strong>chất lượng</strong></li>\r\n</ul>\r\n\r\n<p>ảnh 2</p>', '/images/428811599664491.jpg', 3, 0, '2020-09-09 08:14:51', '2020-09-09 08:14:51', 'xuan-hoa-ban-giao-noi-that-cho-ky-tuc-xa-dai-hoc-fpt-can-tho');

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
(13, 'My Waifu của tôi <3 và chị Thi, không thể bán được', 'Nhiều bạn tham gia group này, có quan tâm đến vật lý chắc đều đã nghe qua khái niệm rối lượng tử trên báo đài (cứ 10 bài báo liên quan tới vật lý thì hết 11 bài nhắc đến rối lượng tử).', '<p>Nhiều bạn tham gia group n&agrave;y, c&oacute; quan t&acirc;m đến vật l&yacute; chắc đều đ&atilde; nghe qua kh&aacute;i niệm rối lượng tử tr&ecirc;n b&aacute;o đ&agrave;i (cứ 10 b&agrave;i b&aacute;o li&ecirc;n quan tới vật l&yacute; th&igrave; hết 11 b&agrave;i nhắc đến rối lượng tử). Tuy nhi&ecirc;n, c&oacute; thể những người viết b&aacute;o kh&ocirc;ng c&oacute; kiến thức vật l&yacute;, n&ecirc;n c&aacute;ch giải th&iacute;ch đ&ocirc;i khi g&acirc;y hiểu nhầm cho người đọc v&agrave; khiến cho độc giả cảm thấy rối lượng tử l&agrave; một c&aacute;i g&igrave; đ&oacute; b&iacute; ẩn. Trong post n&agrave;y, m&igrave;nh sẽ cố đưa ra c&aacute;ch giải th&iacute;ch ch&iacute;nh x&aacute;c hơn về rối lượng tử v&agrave; vấn đề m&agrave; n&oacute; đặt ra cho vật l&yacute; hiện đại.</p>', 3, '2020-09-09 06:03:01', '2020-09-09 06:03:01', 'ok', 'wibu', 'wibu', 'wibu', 'my-waifu-cua-toi-3-va-chi-thi-khong-the-ban-duoc'),
(14, 'TỦ SẮT CA-3A-L', 'Tủ văn phòng rất đẹp,  Tủ văn phòng rất đẹp,  Tủ văn phòng rất đẹp, Tủ văn phòng rất đẹp,', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p><strong><a href=\"https://www.xuanhoa.vn/sp/tu-sat-ca-3a-l/\">- Tủ sắt CA-3A-L</a></strong>&nbsp;được l&agrave;m từ th&eacute;p ti&ecirc;u chuẩn Nhật Bản.</p>\r\n\r\n<p>- Lớp sơn tĩnh điện gi&uacute;p tủ bền m&agrave;u, s&aacute;ng đẹp v&agrave; kh&ocirc;ng bị han gỉ trong suốt qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p>- Tủ gồm 2 khoang, 4 ngăn đều. Mỗi ngăn c&oacute; kh&oacute;a ri&ecirc;ng.</p>\r\n\r\n<p>K&Iacute;CH THƯỚC:&nbsp;1000x450x1830</p>\r\n\r\n<p>CHẤT LIỆU:&nbsp;Th&eacute;p sơn tĩnh điện</p>\r\n\r\n<p>M&Agrave;U SẮC:&nbsp;</p>', 4, '2020-09-09 08:08:58', '2020-09-09 08:08:58', 'ok', 'ok', 'ok', 'ok', 'tu-sat-ca-3a-l'),
(15, 'Ok nhé', 'ok', '<p>ok</p>', 15, '2020-09-10 00:10:39', '2020-09-10 00:10:39', 'ok', 'ok', 'ok', 'ok', 'ok-nhe');

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
  MODIFY `id_cate` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `cate_product`
--
ALTER TABLE `cate_product`
  MODIFY `id_cate` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `imageproduct`
--
ALTER TABLE `imageproduct`
  MODIFY `id_img` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id_pro` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
