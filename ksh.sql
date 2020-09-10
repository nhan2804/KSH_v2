-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2020 at 06:28 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ksh`
--

-- --------------------------------------------------------

--
-- Table structure for table `cate_news`
--

CREATE TABLE `cate_news` (
  `id_cate` int(10) UNSIGNED NOT NULL,
  `name_cate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cate_news`
--

INSERT INTO `cate_news` (`id_cate`, `name_cate`, `parent_id`, `created_at`, `updated_at`) VALUES
(4, 'Thành tựu', 0, '2020-09-10 05:26:47', '2020-09-10 05:26:47'),
(5, 'Công trình', 0, '2020-09-10 05:26:55', '2020-09-10 05:26:55'),
(6, 'Sản phẩm mới', 0, '2020-09-10 05:34:25', '2020-09-10 05:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `cate_product`
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
-- Dumping data for table `cate_product`
--

INSERT INTO `cate_product` (`id_cate`, `name_cate`, `parent_id`, `created_at`, `updated_at`, `slug_cate`, `type_cate`) VALUES
(2, 'Bàn ghế', 4, '2020-09-08 06:52:45', '2020-09-08 06:52:45', 'ban-ghe', 1),
(3, 'Nhà ở', 4, '2020-09-08 21:45:06', '2020-09-08 21:45:06', 'nha-o', 1),
(4, 'Nội thất văn phòng', 0, '2020-09-09 08:06:41', '2020-09-09 08:06:41', 'noi-that-van-phong', 0),
(11, 'Điện dân dụng', 0, '2020-09-09 23:51:01', '2020-09-09 23:51:01', 'dien-dan-dung', 0),
(16, 'Bất động sản', 0, '2020-09-10 00:45:32', '2020-09-10 00:45:32', 'test-muc-cha', 0),
(17, 'Đà Nẵng', 16, '2020-09-10 00:45:51', '2020-09-10 00:45:51', 'muc-con', 1),
(18, 'Quảng Nam', 16, '2020-09-10 03:10:05', '2020-09-10 03:10:05', 'anime-dep', 1),
(19, 'Thiết bị điện thông minh', 11, '2020-09-10 07:39:58', '2020-09-10 07:39:58', 'thiet-bi-dien-thong-minh', 1),
(20, 'Thiết bị điều khiển tự động', 11, '2020-09-10 07:42:03', '2020-09-10 07:42:03', 'thiet-bi-dieu-khien-tu-dong', 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `imageproduct`
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
-- Dumping data for table `imageproduct`
--

INSERT INTO `imageproduct` (`id_img`, `name_img`, `url_img`, `id_pro`, `created_at`, `updated_at`) VALUES
(27, 'ban-hoc-ngoai-ngu-1-270x380.jpg', 'uploads/products/ban-hoc-ngoai-ngu-1-270x380.jpg', 10, '2020-09-08 07:14:37', '2020-09-08 07:14:37'),
(31, 'fo1-bnv-00-2.jpg', 'uploads/products/fo1-bnv-00-2.jpg', 11, '2020-09-08 07:59:31', '2020-09-08 07:59:31'),
(36, 'bhp-01-00-pu-555x300.png', 'uploads/products/bhp-01-00-pu-555x300.png', 12, '2020-09-08 21:46:31', '2020-09-08 21:46:31'),
(41, 'fo1-bnv-00-2.jpg', 'uploads/products/fo1-bnv-00-2.jpg', 13, '2020-09-09 06:03:17', '2020-09-09 06:03:17'),
(47, 'bvp-5s-07-555x300.png', 'uploads/products/bvp-5s-07-555x300.png', 14, '2020-09-09 08:10:13', '2020-09-09 08:10:13'),
(58, 'gm-01-00-img_9996.png', 'uploads/products/gm-01-00-img_9996.png', 16, '2020-09-10 03:12:01', '2020-09-10 03:12:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
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
-- Table structure for table `news`
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
-- Dumping data for table `news`
--

INSERT INTO `news` (`id_news`, `title_news`, `content_news`, `thumbnail_blog`, `cate_parent`, `view_blog`, `created_at`, `updated_at`, `slug`, `desc_news`) VALUES
(17, 'XUÂN HÒA “BỘI THU” GIẢI THƯỞNG TỪ CÔNG ĐOÀN NGÀNH CÔNG THƯƠNG', '<p>Sau 13 ng&agrave;y kh&ocirc;ng ph&aacute;t hiện ca l&acirc;y nhiễm nCoV trong cộng đồng, Đ&agrave; Nẵng tiếp tục nới lỏng c&aacute;ch ly x&atilde; hội, cho người d&acirc;n tắm biển, mở cửa h&agrave;ng ăn uống.</p>\r\n\r\n<p>Chiều 10/9, Ph&oacute; chủ tịch UBND TP Đ&agrave; Nẵng L&ecirc; Trung Chinh cho biết, từ 0h ng&agrave;y 11/9, th&agrave;nh phố chuyển từ trạng th&aacute;i &quot;c&oacute; nguy cơ l&acirc;y nhiễm dịch bệnh&quot; sang &quot;c&oacute; nguy cơ l&acirc;y nhiễm dịch bệnh thấp&quot;. Người d&acirc;n vẫn được đề nghị hạn chế ra khỏi nh&agrave; nếu kh&ocirc;ng cần thiết; tiếp tục đi chợ theo tần suất ba ng&agrave;y một lần.</p>\r\n\r\n<p>Th&agrave;nh phố tiếp tục y&ecirc;u cầu người d&acirc;n đeo khẩu trang tại nơi c&ocirc;ng cộng, c&ocirc;ng sở, trường học, bệnh viện, cơ sở sản xuất, kinh doanh, tr&ecirc;n phương tiện c&ocirc;ng cộng; thường xuy&ecirc;n rửa tay bằng x&agrave; ph&ograve;ng hoặc dung dịch s&aacute;t khuẩn, giữ khoảng c&aacute;ch tối thiểu một m&eacute;t khi tiếp x&uacute;c.</p>\r\n\r\n<p><img alt=\"Người dân Đà Nẵng phát khẩu trang miễn phí trên vỉa hè để cộng đồng cùng nhau chống dịch Covid-19. Ảnh: Nguyễn Đông.\" src=\"https://i1-vnexpress.vnecdn.net/2020/09/10/10-92-7361-1599729856.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=K-hv8aHoaZaB7sjM7enQRQ\" /></p>\r\n\r\n<p>Người d&acirc;n Đ&agrave; Nẵng ph&aacute;t khẩu trang miễn ph&iacute; tr&ecirc;n vỉa h&egrave; để c&ugrave;ng nhau chống Covid-19. Ảnh:&nbsp;<em>Nguyễn Đ&ocirc;ng.</em></p>\r\n\r\n<p>Người d&acirc;n kh&ocirc;ng được tập trung qu&aacute; 30 người tại nơi c&ocirc;ng cộng, ngo&agrave;i phạm vi c&ocirc;ng sở, trường học, bệnh viện, c&aacute;c hoạt động lễ hội, nghi lễ t&ocirc;n gi&aacute;o, t&iacute;n ngưỡng, thờ tự, giải đấu thể thao, ăn uống tập thể tại đ&aacute;m hiếu, đ&aacute;m hỷ, tiệc li&ecirc;n hoan...</p>\r\n\r\n<p>Ch&iacute;nh quyền Đ&agrave; Nẵng cho ph&eacute;p c&aacute;c nh&agrave; h&agrave;ng, cửa h&agrave;ng, cơ sở kinh doanh dịch vụ, ăn uống được hoạt động trở lại nhưng phải c&oacute; cam kết v&agrave; thực hiện ph&ograve;ng, chống dịch theo quy định. Người chế biến đồ ăn, thức uống, phục vụ tại c&aacute;c cơ sở phải đeo khẩu trang, găng tay khi l&agrave;m việc, giữ khoảng c&aacute;ch với kh&aacute;ch.</p>\r\n\r\n<p>Ngo&agrave;i ra, c&aacute;c nh&agrave; h&agrave;ng, qu&aacute;n ăn phải sắp xếp chỗ ngồi cho kh&aacute;ch ăn, uống đảm bảo khoảng c&aacute;ch tối thiểu một m&eacute;t; bố tr&iacute; khu vực v&agrave; y&ecirc;u cầu kh&aacute;ch rửa tay với x&agrave; ph&ograve;ng v&agrave; nước sạch hoặc dung dịch s&aacute;t khuẩn trước, sau khi ăn, sau khi đi vệ sinh; khử khuẩn bề mặt b&agrave;n, ghế ngồi ngay sau khi mỗi lượt kh&aacute;ch rời đi.</p>\r\n\r\n<p>Th&agrave;nh phố kh&ocirc;ng cấm tắm biển như trong lần&nbsp;nới lỏng gi&atilde;n c&aacute;ch&nbsp;6 ng&agrave;y trước. Trong khi đ&oacute;, c&aacute;c hoạt động kinh doanh, dịch vụ kh&ocirc;ng thiết yếu tại c&aacute;c khu, điểm vui chơi, giải tr&iacute;, cơ sở l&agrave;m đẹp, karaoke, massage, qu&aacute;n bar, vũ trường, rạp phim, c&aacute;c điểm vui chơi, giải tr&iacute; c&oacute; thưởng, điểm cung cấp dịch vụ Internet c&ocirc;ng cộng; ph&ograve;ng tập gym, yoga, bida, bơi lội, v&otilde; thuật... tiếp tục dừng hoạt động.</p>\r\n\r\n<p><img alt=\"Học sinh ở Đà Nẵng phải học qua mạng sau ngày khai giảng hôm 5/9. Ảnh: Nguyễn Đông.\" src=\"https://i1-vnexpress.vnecdn.net/2020/09/10/10-93-5208-1599729856.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=sRycdmP5rgUH8UetwH2VoQ\" /></p>\r\n\r\n<p>Học sinh ở Đ&agrave; Nẵng phải học qua mạng sau ng&agrave;y khai giảng 5/9. Ảnh:&nbsp;<em>Nguyễn Đ&ocirc;ng.</em></p>\r\n\r\n<p>Đ&agrave; Nẵng dự kiến cho c&aacute;c trường THPT, THCS, trung t&acirc;m gi&aacute;o dục thường xuy&ecirc;n bắt đầu đi học lại từ ng&agrave;y 14/9. C&aacute;c nh&oacute;m trẻ, trường mầm non, trường tiểu học v&agrave; cơ sở đ&agrave;o tạo ngoại ngữ, tin học, năng khiếu, kỹ năng sống, cơ sở dạy th&ecirc;m, học th&ecirc;m... được đi học lại từ ng&agrave;y 21/9.</p>\r\n\r\n<p>Ri&ecirc;ng với c&aacute;c trường cao đẳng, đại học v&agrave; cơ sở gi&aacute;o dục nghề nghiệp, th&agrave;nh phố để l&atilde;nh đạo c&aacute;c trường quyết định ng&agrave;y đi học lại của sinh vi&ecirc;n, học vi&ecirc;n tr&ecirc;n cơ sở hướng dẫn của Bộ, ng&agrave;nh chủ quản, nhưng thời điểm học tập trung phải sau 14/9.</p>\r\n\r\n<p>Từ ng&agrave;y 24/7 đến nay, Đ&agrave; Nẵng ghi nhận 389 người mắc Covid-19. Trong đ&oacute;, 31 người tử vong tại Đ&agrave; Nẵng, hơn 30 người đang điều trị, số c&ograve;n lại đ&atilde; được xuất viện. Từ ng&agrave;y 3 đến 12h ng&agrave;y 8/9, th&agrave;nh phố lấy mẫu đại diện hộ gia đ&igrave;nh v&agrave; khu d&acirc;n cư, đến nay 71.242 mẫu c&oacute; kết quả x&eacute;t nghiệm &acirc;m t&iacute;nh.</p>\r\n\r\n<p>Th&agrave;nh phố đang ở ng&agrave;y thứ 13 kh&ocirc;ng ghi nhận ca l&acirc;y nhiễm trong cộng đồng. Hiện tại c&ograve;n hơn 300 người phải c&aacute;ch ly tại cơ sở y tế, c&aacute;ch ly tập trung v&agrave; tại nh&agrave;.</p>', '/images/339221599741018.jpg', 4, 2, '2020-09-10 05:30:18', '2020-09-10 08:35:18', 'xuan-hoa-boi-thu-giai-thuong-tu-cong-doan-nganh-cong-thuong', 'Sau 13 ngày không phát hiện ca lây nhiễm nCoV trong cộng đồng, Đà Nẵng tiếp tục nới lỏng cách ly xã hội, cho người dân tắm biển, mở cửa hàng ăn uống.'),
(18, 'Xuân Hòa bàn giao nội thất cho Ký túc xá Đại học FPT Cần Thơ', '<p>Ng&agrave;y 8/9, &ocirc;ng Huỳnh Văn Quang H&ugrave;ng, Chủ tịch UBND huyện Cần Đước (Long An) cho biết đ&atilde; chỉ đạo c&ocirc;ng an mời b&agrave; Nguyễn Thị Hoa tại x&atilde; Long H&ograve;a l&ecirc;n l&agrave;m r&otilde; việc h&agrave;nh hạ mẹ gi&agrave;.</p>\r\n\r\n<p>Trước đ&oacute;, video d&agrave;i gần 7 ph&uacute;t ghi lại cảnh b&agrave; Hoa li&ecirc;n tục chửi bới, xưng m&agrave;y tao, d&ugrave;ng chổi đ&aacute;nh v&agrave;o mặt, đầu b&agrave; cụ. B&agrave; ta sau đ&oacute; c&ograve;n x&uacute;c r&aacute;c đổ l&ecirc;n người v&agrave; x&eacute; &aacute;o cụ. Bị đ&aacute;nh, b&agrave; cụ chỉ ngồi co tr&ecirc;n giường, đưa tay đỡ.</p>\r\n\r\n<p><img alt=\"Hình ảnh cụ bà bị con gái đánh xuất hiện trên mạng xã hội sáng 7/9. Ảnh: Cắt từ video.\" src=\"https://i1-vnexpress.vnecdn.net/2020/09/08/con-gai-danh-me-1924-1599537484.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=t_dPPhFNglUsg8pgO0N-ng\" /></p>\r\n\r\n<p>H&igrave;nh ảnh cụ b&agrave; bị con g&aacute;i đ&aacute;nh xuất hiện tr&ecirc;n mạng x&atilde; hội s&aacute;ng 7/9. Ảnh: C<em>ắt từ video của Thanh Tuyền.</em></p>\r\n\r\n<p>X&aacute;c minh bước đầu của cơ quan chức năng, sự việc xảy ra hồi th&aacute;ng 11 năm ngo&aacute;i, hiện b&agrave; cụ đ&atilde; mất khoảng một tuần. Người quay video l&agrave; con g&aacute;i b&agrave; Hoa, 32 tuổi.</p>\r\n\r\n<p>&quot;Do xảy ra bất h&ograve;a với mẹ, n&ecirc;n thay v&igrave; can ngăn mẹ đ&aacute;nh b&agrave; ngoại, c&ocirc; g&aacute;i đ&atilde; quay lại sự việc v&agrave; ph&aacute;t t&aacute;n&quot;, nguồn tin từ c&ocirc;ng an huyện cho hay.</p>\r\n\r\n<p>Ng&agrave;y 2/9, cụ b&agrave; mất, anh họ b&agrave; Hoa đến dự tang lễ. &Ocirc;ng được con g&aacute;i b&agrave; Hoa kể lại việc b&agrave; ngoại bị mẹ đ&aacute;nh đập, chửi mắng. Hai h&ocirc;m trước &ocirc;ng n&agrave;y đ&atilde; chia sẻ video do c&ocirc; g&aacute;i gửi l&ecirc;n mạng x&atilde; hội.</p>\r\n\r\n<p>B&agrave; Nguyễn Thụy Thắm, Ph&oacute; chủ tịch thường trực Hội Li&ecirc;n hiệp Phụ nữ tỉnh Long An cho biết, gia đ&igrave;nh n&agrave;y gồm cụ b&agrave;, con g&aacute;i v&agrave; hai ch&aacute;u từ nơi kh&aacute;c dọn về đ&acirc;y ở 5-6 năm. B&agrave; Hoa l&agrave;m nghề nội trợ, t&iacute;nh kh&iacute; n&oacute;ng nảy, gia đ&igrave;nh thường xuy&ecirc;n c&atilde;i v&atilde; n&ecirc;n h&agrave;ng x&oacute;m &iacute;t qua lại.</p>\r\n\r\n<p>&quot;Trước đ&oacute;, hội phụ nữ ở địa phương đ&atilde; nhiều lần đến nh&agrave; n&oacute;i chuyện, vận động tham gia v&agrave;o c&ocirc;ng t&aacute;c hội nhưng đều thất bại&quot;, b&agrave; Thắm n&oacute;i.</p>\r\n\r\n<p>Qua l&agrave;m việc với ch&iacute;nh quyền địa phương, bước đầu b&agrave; Hoa thừa nhận, do bực tức việc mẹ kh&ocirc;ng để lại t&agrave;i sản, khi gi&agrave; lại chỉ c&oacute; m&igrave;nh b&agrave; nu&ocirc;i dưỡng n&ecirc;n &quot;mới c&oacute; h&agrave;nh động đ&aacute;nh, mắng chửi cụ&quot;.</p>', '/images/260011599741096.png', 5, 0, '2020-09-10 05:31:36', '2020-09-10 05:31:36', 'xuan-hoa-ban-giao-noi-that-cho-ky-tuc-xa-dai-hoc-fpt-can-tho', 'Người phụ nữ 56 tuổi khai vì bực tức mẹ già 79 tuổi không chia tài sản, lại bắt bà phải nuôi, nên đã đánh, chửi mắng.'),
(19, 'Bàn học sinh BHS-14-08: Bé chăm học, mẹ an lòng', '<p>Khi c&oacute; một g&oacute;c học tập, b&eacute; sẽ rất tự h&agrave;o v&igrave; được sở hữu một kh&ocirc;ng gian ri&ecirc;ng tư. Một chiếc b&agrave;n học tiện &iacute;ch, xinh xắn v&agrave; đẹp mắt sẽ khiến b&eacute; y&ecirc;u th&iacute;ch, h&agrave;o hứng, từ đ&oacute; gi&uacute;p b&eacute; chăm học v&agrave; gắn b&oacute; với g&oacute;c học tập hơn.</p>\r\n\r\n<p>Mẫu b&agrave;n học gia đ&igrave;nh&nbsp;<a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\">BHS-14-08</a>&nbsp;mới ra mắt của Xu&acirc;n H&ograve;a c&oacute; k&iacute;ch thước lớn, nhiều ưu điểm vượt trội, ph&ugrave; hợp với kh&ocirc;ng gian rộng, cho b&eacute; thỏa sức học tập v&agrave; s&aacute;ng tạo.</p>\r\n\r\n<p><img alt=\"Bàn học sinh BHS-14-08: Bé chăm học, mẹ an lòng 1\" src=\"https://www.xuanhoa.vn/wp-content/uploads/2020/07/bhs-14-08-3.jpg\" width=\"613\" /></p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>K&iacute;ch thước lớn với mặt b&agrave;n rộng</strong></a></p>\r\n\r\n<p>So với mẫu&nbsp;<a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-13-06/\">BHS-13-06</a>&nbsp;th&igrave; BHS-14-08 c&oacute; k&iacute;ch thước lớn hơn, mặt b&agrave;n rộng hơn. Cụ thể: B&agrave;n: 800x500x615-735mm, Ghế: 380x450x620-700mm.</p>\r\n\r\n<p>Bộ b&agrave;n n&agrave;y ph&ugrave; hợp với những kh&ocirc;ng gian rộng, diện t&iacute;ch sử dụng mặt b&agrave;n lớn, tạo cho b&eacute; cảm gi&aacute;c rộng r&atilde;i v&agrave; thoải m&aacute;i khi sử dụng.</p>\r\n\r\n<p>Ngăn b&agrave;n với diện t&iacute;ch lớn, c&oacute; thể đựng cặp, s&aacute;ch vở, đồ d&ugrave;ng học tập&hellip;</p>\r\n\r\n<p><img alt=\"Bàn học sinh BHS-14-08: Bé chăm học, mẹ an lòng 2\" src=\"https://www.xuanhoa.vn/wp-content/uploads/2020/07/bhs-14-08-hong.jpg\" width=\"426\" /></p>\r\n\r\n<p><em>Mẫu b&agrave;n BHS-14-08 m&agrave;u hồng</em></p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>Nguy&ecirc;n liệu cao cấp</strong></a></p>\r\n\r\n<p>Mặt b&agrave;n, mặt ghế được l&agrave;m từ gỗ MFC chống xước với 2 m&agrave;u xanh, hồng, c&oacute; in nh&acirc;n vật họat h&igrave;nh tăng sự thu h&uacute;t, hấp dẫn cho c&aacute;c b&eacute;.</p>\r\n\r\n<p>Khung b&agrave;n, khung ghế được l&agrave;m từ th&eacute;p ống ti&ecirc;u chuẩn Nhật Bản, sơn bột tĩnh điện m&agrave;u ghi tr&ecirc;n d&acirc;y chuyền nhập khẩu từ Singapore gi&uacute;p sản phẩm bền m&agrave;u trong suốt qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p>Đặc biệt, sản phẩm được sản xuất tr&ecirc;n d&acirc;y chuyền hiện đại h&agrave;ng đầu thế giới của h&agrave;ng SCM, Italy (phần mộc) v&agrave; Salvagnini Italy (phần th&eacute;p), đảm bảo độ ch&iacute;nh x&aacute;c v&agrave; t&iacute;nh thẩm mỹ cho sản phẩm.</p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>Điều chỉnh độ cao linh hoạt</strong></a></p>\r\n\r\n<p>Cả b&agrave;n v&agrave; ghế đều dễ d&agrave;ng điều chỉnh độ cao theo 3 cấp độ, tối đa 120mm với b&agrave;n, 80mm với ghế, nhờ đ&oacute; bộ b&agrave;n n&agrave;y ph&ugrave; hợp với v&oacute;c d&aacute;ng của từng b&eacute; ở từng độ tuổi kh&aacute;c nhau.</p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>Chất lượng đạt chuẩn</strong></a></p>\r\n\r\n<p>BHS-14-08 của Xu&acirc;n H&ograve;a được chứng nhận đạt ti&ecirc;u chuẩn chất lượng của Viện ti&ecirc;u chuẩn chất lượng Việt Nam cho sản phẩm b&agrave;n học sinh.</p>', '/images/145621599741302.png', 6, 0, '2020-09-10 05:35:02', '2020-09-10 05:35:02', 'ban-hoc-sinh-bhs-14-08-be-cham-hoc-me-an-long', 'Thêm một mẫu bàn học sinh gia đình được Công ty Cổ phần Xuân Hòa Việt Nam (Xuân Hòa) cho ra mắt thị trường trước thềm năm học mới 2020-2021.'),
(20, 'Bàn học sinh BHS-14-08: Bé học ngu, nghỉ học', '<p>Khi c&oacute; một g&oacute;c học tập, b&eacute; sẽ rất tự h&agrave;o v&igrave; được sở hữu một kh&ocirc;ng gian ri&ecirc;ng tư. Một chiếc b&agrave;n học tiện &iacute;ch, xinh xắn v&agrave; đẹp mắt sẽ khiến b&eacute; y&ecirc;u th&iacute;ch, h&agrave;o hứng, từ đ&oacute; gi&uacute;p b&eacute; chăm học v&agrave; gắn b&oacute; với g&oacute;c học tập hơn.</p>\r\n\r\n<p>Mẫu b&agrave;n học gia đ&igrave;nh&nbsp;<a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\">BHS-14-08</a>&nbsp;mới ra mắt của Xu&acirc;n H&ograve;a c&oacute; k&iacute;ch thước lớn, nhiều ưu điểm vượt trội, ph&ugrave; hợp với kh&ocirc;ng gian rộng, cho b&eacute; thỏa sức học tập v&agrave; s&aacute;ng tạo.</p>\r\n\r\n<p><img alt=\"Bàn học sinh BHS-14-08: Bé chăm học, mẹ an lòng 1\" src=\"https://www.xuanhoa.vn/wp-content/uploads/2020/07/bhs-14-08-3.jpg\" width=\"613\" /></p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>K&iacute;ch thước lớn với mặt b&agrave;n rộng</strong></a></p>\r\n\r\n<p>So với mẫu&nbsp;<a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-13-06/\">BHS-13-06</a>&nbsp;th&igrave; BHS-14-08 c&oacute; k&iacute;ch thước lớn hơn, mặt b&agrave;n rộng hơn. Cụ thể: B&agrave;n: 800x500x615-735mm, Ghế: 380x450x620-700mm.</p>\r\n\r\n<p>Bộ b&agrave;n n&agrave;y ph&ugrave; hợp với những kh&ocirc;ng gian rộng, diện t&iacute;ch sử dụng mặt b&agrave;n lớn, tạo cho b&eacute; cảm gi&aacute;c rộng r&atilde;i v&agrave; thoải m&aacute;i khi sử dụng.</p>\r\n\r\n<p>Ngăn b&agrave;n với diện t&iacute;ch lớn, c&oacute; thể đựng cặp, s&aacute;ch vở, đồ d&ugrave;ng học tập&hellip;</p>\r\n\r\n<p><img alt=\"Bàn học sinh BHS-14-08: Bé chăm học, mẹ an lòng 2\" src=\"https://www.xuanhoa.vn/wp-content/uploads/2020/07/bhs-14-08-hong.jpg\" width=\"426\" /></p>\r\n\r\n<p><em>Mẫu b&agrave;n BHS-14-08 m&agrave;u hồng</em></p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>Nguy&ecirc;n liệu cao cấp</strong></a></p>\r\n\r\n<p>Mặt b&agrave;n, mặt ghế được l&agrave;m từ gỗ MFC chống xước với 2 m&agrave;u xanh, hồng, c&oacute; in nh&acirc;n vật họat h&igrave;nh tăng sự thu h&uacute;t, hấp dẫn cho c&aacute;c b&eacute;.</p>\r\n\r\n<p>Khung b&agrave;n, khung ghế được l&agrave;m từ th&eacute;p ống ti&ecirc;u chuẩn Nhật Bản, sơn bột tĩnh điện m&agrave;u ghi tr&ecirc;n d&acirc;y chuyền nhập khẩu từ Singapore gi&uacute;p sản phẩm bền m&agrave;u trong suốt qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p>Đặc biệt, sản phẩm được sản xuất tr&ecirc;n d&acirc;y chuyền hiện đại h&agrave;ng đầu thế giới của h&agrave;ng SCM, Italy (phần mộc) v&agrave; Salvagnini Italy (phần th&eacute;p), đảm bảo độ ch&iacute;nh x&aacute;c v&agrave; t&iacute;nh thẩm mỹ cho sản phẩm.</p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>Điều chỉnh độ cao linh hoạt</strong></a></p>\r\n\r\n<p>Cả b&agrave;n v&agrave; ghế đều dễ d&agrave;ng điều chỉnh độ cao theo 3 cấp độ, tối đa 120mm với b&agrave;n, 80mm với ghế, nhờ đ&oacute; bộ b&agrave;n n&agrave;y ph&ugrave; hợp với v&oacute;c d&aacute;ng của từng b&eacute; ở từng độ tuổi kh&aacute;c nhau.</p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>Chất lượng đạt chuẩn</strong></a></p>\r\n\r\n<p>BHS-14-08 của Xu&acirc;n H&ograve;a được chứng nhận đạt ti&ecirc;u chuẩn chất lượng của Viện ti&ecirc;u chuẩn chất lượng Việt Nam cho sản phẩm b&agrave;n học sinh.</p>', '/images/547131599741345.jpg', 6, 1, '2020-09-10 05:35:45', '2020-09-10 08:24:20', 'ban-hoc-sinh-bhs-14-08-be-hoc-ngu-nghi-hoc', 'Thêm một mẫu bàn học sinh gia đình được Công ty Cổ phần Xuân Hòa Việt Nam (Xuân Hòa) vì ngồi mãi mà fix không xong'),
(21, 'Nội thất Xuân Hòa là Hàng Việt Nam chất lượng cao 2020', '<p>Khi c&oacute; một g&oacute;c học tập, b&eacute; sẽ rất tự h&agrave;o v&igrave; được sở hữu một kh&ocirc;ng gian ri&ecirc;ng tư. Một chiếc b&agrave;n học tiện &iacute;ch, xinh xắn v&agrave; đẹp mắt sẽ khiến b&eacute; y&ecirc;u th&iacute;ch, h&agrave;o hứng, từ đ&oacute; gi&uacute;p b&eacute; chăm học v&agrave; gắn b&oacute; với g&oacute;c học tập hơn.</p>\r\n\r\n<p>Mẫu b&agrave;n học gia đ&igrave;nh&nbsp;<a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\">BHS-14-08</a>&nbsp;mới ra mắt của Xu&acirc;n H&ograve;a c&oacute; k&iacute;ch thước lớn, nhiều ưu điểm vượt trội, ph&ugrave; hợp với kh&ocirc;ng gian rộng, cho b&eacute; thỏa sức học tập v&agrave; s&aacute;ng tạo.</p>\r\n\r\n<p><img alt=\"Bàn học sinh BHS-14-08: Bé chăm học, mẹ an lòng 1\" src=\"https://www.xuanhoa.vn/wp-content/uploads/2020/07/bhs-14-08-3.jpg\" width=\"613\" /></p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>K&iacute;ch thước lớn với mặt b&agrave;n rộng</strong></a></p>\r\n\r\n<p>So với mẫu&nbsp;<a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-13-06/\">BHS-13-06</a>&nbsp;th&igrave; BHS-14-08 c&oacute; k&iacute;ch thước lớn hơn, mặt b&agrave;n rộng hơn. Cụ thể: B&agrave;n: 800x500x615-735mm, Ghế: 380x450x620-700mm.</p>\r\n\r\n<p>Bộ b&agrave;n n&agrave;y ph&ugrave; hợp với những kh&ocirc;ng gian rộng, diện t&iacute;ch sử dụng mặt b&agrave;n lớn, tạo cho b&eacute; cảm gi&aacute;c rộng r&atilde;i v&agrave; thoải m&aacute;i khi sử dụng.</p>\r\n\r\n<p>Ngăn b&agrave;n với diện t&iacute;ch lớn, c&oacute; thể đựng cặp, s&aacute;ch vở, đồ d&ugrave;ng học tập&hellip;</p>\r\n\r\n<p><img alt=\"Bàn học sinh BHS-14-08: Bé chăm học, mẹ an lòng 2\" src=\"https://www.xuanhoa.vn/wp-content/uploads/2020/07/bhs-14-08-hong.jpg\" width=\"426\" /></p>\r\n\r\n<p><em>Mẫu b&agrave;n BHS-14-08 m&agrave;u hồng</em></p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>Nguy&ecirc;n liệu cao cấp</strong></a></p>\r\n\r\n<p>Mặt b&agrave;n, mặt ghế được l&agrave;m từ gỗ MFC chống xước với 2 m&agrave;u xanh, hồng, c&oacute; in nh&acirc;n vật họat h&igrave;nh tăng sự thu h&uacute;t, hấp dẫn cho c&aacute;c b&eacute;.</p>\r\n\r\n<p>Khung b&agrave;n, khung ghế được l&agrave;m từ th&eacute;p ống ti&ecirc;u chuẩn Nhật Bản, sơn bột tĩnh điện m&agrave;u ghi tr&ecirc;n d&acirc;y chuyền nhập khẩu từ Singapore gi&uacute;p sản phẩm bền m&agrave;u trong suốt qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p>Đặc biệt, sản phẩm được sản xuất tr&ecirc;n d&acirc;y chuyền hiện đại h&agrave;ng đầu thế giới của h&agrave;ng SCM, Italy (phần mộc) v&agrave; Salvagnini Italy (phần th&eacute;p), đảm bảo độ ch&iacute;nh x&aacute;c v&agrave; t&iacute;nh thẩm mỹ cho sản phẩm.</p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>Điều chỉnh độ cao linh hoạt</strong></a></p>\r\n\r\n<p>Cả b&agrave;n v&agrave; ghế đều dễ d&agrave;ng điều chỉnh độ cao theo 3 cấp độ, tối đa 120mm với b&agrave;n, 80mm với ghế, nhờ đ&oacute; bộ b&agrave;n n&agrave;y ph&ugrave; hợp với v&oacute;c d&aacute;ng của từng b&eacute; ở từng độ tuổi kh&aacute;c nhau.</p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>Chất lượng đạt chuẩn</strong></a></p>\r\n\r\n<p>BHS-14-08 của Xu&acirc;n H&ograve;a được chứng nhận đạt ti&ecirc;u chuẩn chất lượng của Viện ti&ecirc;u chuẩn chất lượng Việt Nam cho sản phẩm b&agrave;n học sinh.</p>', '/images/550861599741436.jpg', 4, 0, '2020-09-10 05:37:16', '2020-09-10 05:37:16', 'noi-that-xuan-hoa-la-hang-viet-nam-chat-luong-cao-2020', 'Ngày 9/6/2020, Công ty Cổ phần Xuân Hòa Việt Nam (Xuân Hòa) đã tham dự Hội thảo “Tái khởi động kinh doanh sau Covid 19” và đón nhận Chứng nhận Hàng Việt Nam chất lượng cao 2020 – 2021 do người tiêu dùng bình chọn.'),
(22, 'Đại hội Đảng bộ Công ty CP Xuân Hòa Việt Nam thành công rực rỡ', '<p>Khi c&oacute; một g&oacute;c học tập, b&eacute; sẽ rất tự h&agrave;o v&igrave; được sở hữu một kh&ocirc;ng gian ri&ecirc;ng tư. Một chiếc b&agrave;n học tiện &iacute;ch, xinh xắn v&agrave; đẹp mắt sẽ khiến b&eacute; y&ecirc;u th&iacute;ch, h&agrave;o hứng, từ đ&oacute; gi&uacute;p b&eacute; chăm học v&agrave; gắn b&oacute; với g&oacute;c học tập hơn.</p>\r\n\r\n<p>Mẫu b&agrave;n học gia đ&igrave;nh&nbsp;<a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\">BHS-14-08</a>&nbsp;mới ra mắt của Xu&acirc;n H&ograve;a c&oacute; k&iacute;ch thước lớn, nhiều ưu điểm vượt trội, ph&ugrave; hợp với kh&ocirc;ng gian rộng, cho b&eacute; thỏa sức học tập v&agrave; s&aacute;ng tạo.</p>\r\n\r\n<p><img alt=\"Bàn học sinh BHS-14-08: Bé chăm học, mẹ an lòng 1\" src=\"https://www.xuanhoa.vn/wp-content/uploads/2020/07/bhs-14-08-3.jpg\" width=\"613\" /></p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>K&iacute;ch thước lớn với mặt b&agrave;n rộng</strong></a></p>\r\n\r\n<p>So với mẫu&nbsp;<a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-13-06/\">BHS-13-06</a>&nbsp;th&igrave; BHS-14-08 c&oacute; k&iacute;ch thước lớn hơn, mặt b&agrave;n rộng hơn. Cụ thể: B&agrave;n: 800x500x615-735mm, Ghế: 380x450x620-700mm.</p>\r\n\r\n<p>Bộ b&agrave;n n&agrave;y ph&ugrave; hợp với những kh&ocirc;ng gian rộng, diện t&iacute;ch sử dụng mặt b&agrave;n lớn, tạo cho b&eacute; cảm gi&aacute;c rộng r&atilde;i v&agrave; thoải m&aacute;i khi sử dụng.</p>\r\n\r\n<p>Ngăn b&agrave;n với diện t&iacute;ch lớn, c&oacute; thể đựng cặp, s&aacute;ch vở, đồ d&ugrave;ng học tập&hellip;</p>\r\n\r\n<p><img alt=\"Bàn học sinh BHS-14-08: Bé chăm học, mẹ an lòng 2\" src=\"https://www.xuanhoa.vn/wp-content/uploads/2020/07/bhs-14-08-hong.jpg\" width=\"426\" /></p>\r\n\r\n<p><em>Mẫu b&agrave;n BHS-14-08 m&agrave;u hồng</em></p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>Nguy&ecirc;n liệu cao cấp</strong></a></p>\r\n\r\n<p>Mặt b&agrave;n, mặt ghế được l&agrave;m từ gỗ MFC chống xước với 2 m&agrave;u xanh, hồng, c&oacute; in nh&acirc;n vật họat h&igrave;nh tăng sự thu h&uacute;t, hấp dẫn cho c&aacute;c b&eacute;.</p>\r\n\r\n<p>Khung b&agrave;n, khung ghế được l&agrave;m từ th&eacute;p ống ti&ecirc;u chuẩn Nhật Bản, sơn bột tĩnh điện m&agrave;u ghi tr&ecirc;n d&acirc;y chuyền nhập khẩu từ Singapore gi&uacute;p sản phẩm bền m&agrave;u trong suốt qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p>Đặc biệt, sản phẩm được sản xuất tr&ecirc;n d&acirc;y chuyền hiện đại h&agrave;ng đầu thế giới của h&agrave;ng SCM, Italy (phần mộc) v&agrave; Salvagnini Italy (phần th&eacute;p), đảm bảo độ ch&iacute;nh x&aacute;c v&agrave; t&iacute;nh thẩm mỹ cho sản phẩm.</p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>Điều chỉnh độ cao linh hoạt</strong></a></p>\r\n\r\n<p>Cả b&agrave;n v&agrave; ghế đều dễ d&agrave;ng điều chỉnh độ cao theo 3 cấp độ, tối đa 120mm với b&agrave;n, 80mm với ghế, nhờ đ&oacute; bộ b&agrave;n n&agrave;y ph&ugrave; hợp với v&oacute;c d&aacute;ng của từng b&eacute; ở từng độ tuổi kh&aacute;c nhau.</p>\r\n\r\n<p><a href=\"https://www.xuanhoa.vn/sp/ban-hoc-sinh-bhs-14-08/\"><strong>Chất lượng đạt chuẩn</strong></a></p>\r\n\r\n<p>BHS-14-08 của Xu&acirc;n H&ograve;a được chứng nhận đạt ti&ecirc;u chuẩn chất lượng của Viện ti&ecirc;u chuẩn chất lượng Việt Nam cho sản phẩm b&agrave;n học sinh.</p>', '/images/321511599741469.jpg', 4, 0, '2020-09-10 05:37:49', '2020-09-10 05:37:49', 'dai-hoi-dang-bo-cong-ty-cp-xuan-hoa-viet-nam-thanh-cong-ruc-ro', 'Chiều ngày 06/06/2020, Đại hội Đảng bộ Công ty CP Xuân Hòa Việt Nam lần thứ XV, nhiệm kỳ 2020 – 2025 đã được tổ chức thành công với sự có mặt của 96 đại biểu là đảng viên sinh hoạt tại 10 chi bộ trực thuộc Đảng bộ Công ty.');

-- --------------------------------------------------------

--
-- Table structure for table `product`
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
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_pro`, `name_pro`, `desc_pro`, `detail_pro`, `cate_parent`, `created_at`, `updated_at`, `img_product`, `seo_title`, `seo_keyword`, `seo_desc`, `slug_pro`) VALUES
(10, 'BÀN HỌC NGOẠI NGỮ BNN-01-00\r\n', '-Bàn học ngoại ngữ được làm thừ thép sơn tĩnh điện và gỗ MFC.</br>\r\n\r\n- Khung thép hộp 20x40 sơn ghi sáng.</br>\r\n\r\n- Mặt gỗ MFC màu vân gỗ dày 18mm.\r\n</br>\r\n- Chắn làm bằng kính dày 5mm.', '-Bàn học ngoại ngữ được làm thừ thép sơn tĩnh điện và gỗ MFC.</br>\r\n\r\n- Khung thép hộp 20x40 sơn ghi sáng.</br>\r\n\r\n- Mặt gỗ MFC màu vân gỗ dày 18mm.\r\n</br>\r\n- Chắn làm bằng kính dày 5mm.', 2, '2020-09-08 07:14:29', '2020-09-08 07:14:29', 'ok', 'q', 'q', 'q', 'ban-hoc-ngoai-ngu-bnn-01-00'),
(11, 'BÀN GIÁM ĐỐC BGD-13-00 PU\r\n', '- Bàn giám đốc được làm từ gỗ MDF và sơn PU cao cấp.</br>\r\n\r\n- Mặt bàn lượn cong, trên mặt có tấm PVC đen chống trơn trượt.</br>\r\n\r\n-Chân bàn ốp nổi tấm gỗ màu đậm mặt trước và mặt bên.</br>', '- Bàn giám đốc được làm từ gỗ MDF và sơn PU cao cấp.</br>\r\n\r\n- Mặt bàn lượn cong, trên mặt có tấm PVC đen chống trơn trượt.</br>\r\n\r\n-Chân bàn ốp nổi tấm gỗ màu đậm mặt trước và mặt bên.</br>', 2, '2020-09-08 07:59:04', '2020-09-08 07:59:04', 'ok', 'ban ghe', 'ban ghe', 'ghe', 'ban-giam-doc-bgd-13-00-pu'),
(12, 'HỘC PHỤ BHP-01-00 PU\r\n', '- Hộc phụ BHP-01-00 PU là sản phẩm đi cùng với bàn lãnh đạo PU.</br>\r\n\r\n- Hộc được làm từ chất liệu gỗ MDF cao cấp và phủ sơn PU cao cấp.</br>\r\n\r\n- Hộc bao gồm: bàn phím bên trên, thích hợp khi dùng máy tính; Bên ngoài có 2 cánh mở, 1 bên để CPU.</br>\r\n\r\n- Hộc có bánh xe di chuyển.</br>', '- Hộc phụ BHP-01-00 PU là sản phẩm đi cùng với bàn lãnh đạo PU.</br>\r\n\r\n- Hộc được làm từ chất liệu gỗ MDF cao cấp và phủ sơn PU cao cấp.</br>\r\n\r\n- Hộc bao gồm: bàn phím bên trên, thích hợp khi dùng máy tính; Bên ngoài có 2 cánh mở, 1 bên để CPU.</br>\r\n\r\n- Hộc có bánh xe di chuyển.</br>', 3, '2020-09-08 21:46:01', '2020-09-08 21:46:01', 'ok', 'nha o', 'nha o', 'nha o', 'hoc-phu-bhp-01-00-pu'),
(13, 'BÀN NHÂN VIÊN FO1-BNV-00\r\n', 'Mặt bàn gỗ MFC phủ Melamine cao cấp, Khung chân thép hộp NK, sơn bột tĩnh điện màu trắng ngà, cơ cấu liên kết bằng nhôm đúc nguyên khối, sơn bột tĩnh điện màu đen, bàn có 01 hộc di động.\r\n', 'Mặt bàn gỗ MFC phủ Melamine cao cấp, Khung chân thép hộp NK, sơn bột tĩnh điện màu trắng ngà, cơ cấu liên kết bằng nhôm đúc nguyên khối, sơn bột tĩnh điện màu đen, bàn có 01 hộc di động.\r\n', 3, '2020-09-09 06:03:01', '2020-09-09 06:03:01', 'ok', 'wibu', 'wibu', 'wibu', 'ban-nhan-vien-fo1-bnv-00'),
(14, 'BÀN VĂN PHÒNG BVP-5S-09\r\n', '- Bàn văn phòng được làm từ gỗ MFC cao cấp.</br>\r\n- Khung chân bằng khung thép định hình, sơn tĩnh điện, giúp sản phẩm bền bỉ trong suốt quá trình sử dụng.\r\n(Bàn không bao gồm hộc)', '- Bàn văn phòng được làm từ gỗ MFC cao cấp.</br>\r\n- Khung chân bằng khung thép định hình, sơn tĩnh điện, giúp sản phẩm bền bỉ trong suốt quá trình sử dụng.\r\n(Bàn không bao gồm hộc)', 4, '2020-09-09 08:08:58', '2020-09-09 08:08:58', 'ok', 'ok', 'ok', 'ok', 'ban-van-phong-bvp-5s-09'),
(16, 'GHẾ PHÒNG ĂN GS/GM/GI-01-00\r\n', '- Ghế gấp được làm từ khung ống thép mạ Ø22.2\r\n- Sản phẩm có 3 loại khung:\r\n  + Khung thép sơn tĩnh điện GS-01-00, giúp sản phẩm bền màu và không bị han gỉ\r\n  + Khung mạ Ni-Cr GM-01-00 cho sản phẩm có bề mặt sáng bóng và tăng độ cứng vững\r\n  + Khung Inox GI-01-00 giúp sản phẩm luôn bền bỉ, sáng bóng và không bị han gỉ\r\n- Mặt ngồi, tựa đệm mút bọc giả da\r\nCơ cấu gấp mở tiện dụng, dễ dàng gấp gọn khi không sử dụng.', '- Ghế gấp được làm từ khung ống thép mạ Ø22.2\r\n- Sản phẩm có 3 loại khung:\r\n  + Khung thép sơn tĩnh điện GS-01-00, giúp sản phẩm bền màu và không bị han gỉ\r\n  + Khung mạ Ni-Cr GM-01-00 cho sản phẩm có bề mặt sáng bóng và tăng độ cứng vững\r\n  + Khung Inox GI-01-00 giúp sản phẩm luôn bền bỉ, sáng bóng và không bị han gỉ\r\n- Mặt ngồi, tựa đệm mút bọc giả da\r\nCơ cấu gấp mở tiện dụng, dễ dàng gấp gọn khi không sử dụng.', 18, '2020-09-10 03:11:33', '2020-09-10 03:11:33', 'ok', 'ok', 'ok', 'ok', 'ghe-phong-an-gs-gm-gi-01-00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `privacy`) VALUES
(1, 'ksh.dn', 'ksh.dn', '2020-09-12 17:00:00', '386702ec3ff6e914f35fdd55582e5dd0', 'l7QEGd2lwlOTeKldw3dI7kmFJ8uWpir1pBsltn0B2zZC73RZkmFnrF9Awx3m', '2020-09-22 17:00:00', '2020-09-15 17:00:00', 0),
(2, 'nhan', 'nhan.vn', '2020-09-23 17:00:00', '0cc175b9c0f1b6a831c399e269772661', 'no', '2020-09-23 17:00:00', '2020-09-25 17:00:00', 0),
(3, 'Phong', 'htphong01', NULL, '9bb7c5797da36f70e7f4e0b97c8282a5', 'no', NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cate_news`
--
ALTER TABLE `cate_news`
  ADD PRIMARY KEY (`id_cate`);

--
-- Indexes for table `cate_product`
--
ALTER TABLE `cate_product`
  ADD PRIMARY KEY (`id_cate`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imageproduct`
--
ALTER TABLE `imageproduct`
  ADD PRIMARY KEY (`id_img`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_pro`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cate_news`
--
ALTER TABLE `cate_news`
  MODIFY `id_cate` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cate_product`
--
ALTER TABLE `cate_product`
  MODIFY `id_cate` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imageproduct`
--
ALTER TABLE `imageproduct`
  MODIFY `id_img` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_pro` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
