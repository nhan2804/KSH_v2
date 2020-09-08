-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 08, 2020 lúc 08:21 AM
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
(2, 'Về sản phẩm', 0, '2020-09-03 02:29:39', '2020-09-03 02:29:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cate_product`
--

CREATE TABLE `cate_product` (
  `id_cate` int(10) UNSIGNED NOT NULL,
  `name_cate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cate_product`
--

INSERT INTO `cate_product` (`id_cate`, `name_cate`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Bàn ghế', 0, '2020-09-07 23:08:31', '2020-09-07 23:08:31');

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
(1, '1599543721logo.png', 'uploads/products1599543721logo.png', 2, '2020-09-07 22:42:01', '2020-09-07 22:42:01'),
(2, '1599544235contact.png', 'uploads/products1599544235contact.png', 3, '2020-09-07 22:50:35', '2020-09-07 22:50:35'),
(3, '1599544235intro-1.jpg', 'uploads/products1599544235intro-1.jpg', 3, '2020-09-07 22:50:35', '2020-09-07 22:50:35'),
(4, '1599544235intro-2.jpg', 'uploads/products1599544235intro-2.jpg', 3, '2020-09-07 22:50:35', '2020-09-07 22:50:35'),
(5, '1599544235intro03.jpg', 'uploads/products1599544235intro03.jpg', 3, '2020-09-07 22:50:35', '2020-09-07 22:50:35'),
(6, '1599544235intro-4.jpg', 'uploads/products1599544235intro-4.jpg', 3, '2020-09-07 22:50:35', '2020-09-07 22:50:35'),
(7, '1599544236intro-5.png', 'uploads/products1599544236intro-5.png', 3, '2020-09-07 22:50:36', '2020-09-07 22:50:36'),
(8, '1599544236intro-6.png', 'uploads/products1599544236intro-6.png', 3, '2020-09-07 22:50:36', '2020-09-07 22:50:36'),
(9, '1599544236logo.png', 'uploads/products1599544236logo.png', 3, '2020-09-07 22:50:36', '2020-09-07 22:50:36'),
(10, '1599544236photo_2020-08-31_11-48-03.jpg', 'uploads/products1599544236photo_2020-08-31_11-48-03.jpg', 3, '2020-09-07 22:50:36', '2020-09-07 22:50:36'),
(11, '1599544236pic1.png', 'uploads/products1599544236pic1.png', 3, '2020-09-07 22:50:36', '2020-09-07 22:50:36');

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
(4, 'Xuân hòa bội thu từ giải thưởng free fire lửa chùa', '<p>Xuân Hòa là đối tác cung cấp toàn bộ nội thất cho các Chi nhánh của Ngân hàng Thương mại Cổ phần Phương Đông trên cả nước trong suốt thời gian vừa qua. Với tông màu xanh lá và trắng của màu nhận diện thương hiệu OCB, các món đồ nội thất được kết hợp hài hòa, tạo nên tổng thể đẹp mắt, ấn tượng với khách hàng đến giao dịch và làm việc.&nbsp;</p>', '/images/439021599137398.jpg', 1, 0, '2020-09-03 05:49:58', '2020-09-03 05:49:58', 'xuan-hoa-boi-thu-tu-giai-thuong-free-fire-lua-chua'),
(5, 'XUÂN HÒA “BỘI THU” GIẢI THƯỞNG TỪ CÔNG ĐOÀN NGÀNH CÔNG THƯƠNG', '<p>Sometimes you will need to capture segments of the URI within your route. For example, you may need to capture a user&#39;s ID from the URL. You may do so by defining route parameters:</p>', '/images/950531599137941.png', 1, 0, '2020-09-03 05:59:01', '2020-09-03 05:59:01', 'xuan-hoa-boi-thu-giai-thuong-tu-cong-doan-nganh-cong-thuong'),
(6, 'Test for upload file', '<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/dca58760-ebe0-47fb-972f-1251dfab620f\" width=\"691\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>ok vậy th&ocirc;i</p>', '/images/843191599482852.jpg', 2, 0, '2020-09-07 05:47:32', '2020-09-07 05:47:32', 'test-for-upload-file');

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
  `seo_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id_pro`, `name_pro`, `desc_pro`, `detail_pro`, `cate_parent`, `created_at`, `updated_at`, `img_product`, `seo_title`, `seo_keyword`, `seo_desc`) VALUES
(1, 'Ngọc Nhẫn', 'q', 'k', 1, '2020-09-07 22:36:11', '2020-09-07 22:36:11', 'ok', 'k', 'k', 'k'),
(2, 'q', 'q', 'ư', 1, '2020-09-07 22:39:52', '2020-09-07 22:39:52', 'ok', 'e', 'ư', 'ư'),
(3, 'Bàn cổ điển', '<p>B&agrave;n cổ điển</p>', 'Bàn cổ điển', 1, '2020-09-07 22:50:17', '2020-09-07 22:50:17', 'ok', 'Bàn cổ điển', 'Bàn cổ điển', 'Bàn cổ điển');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  MODIFY `id_cate` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cate_product`
--
ALTER TABLE `cate_product`
  MODIFY `id_cate` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `imageproduct`
--
ALTER TABLE `imageproduct`
  MODIFY `id_img` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id_pro` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
