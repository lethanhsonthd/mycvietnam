-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2018 at 08:35 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myc`
--

-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

CREATE TABLE `attribute` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_product`
--

CREATE TABLE `attribute_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `script_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(11) NOT NULL,
  `target_open` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '1',
  `description` text COLLATE utf8mb4_unicode_ci,
  `access` int(11) NOT NULL,
  `target_open` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_robot` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `parent_id`, `position`, `description`, `access`, `target_open`, `meta_robot`, `image`, `alt`, `status`, `slug`, `title_tag`, `meta_keywords_tag`, `meta_description_tag`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', 7, 1, '<p>Trang chu</p>', 0, '_self', 'noindex,follow', NULL, 'Trang chủ', 'on', 'trang-chu', 'Trang chủ', NULL, NULL, 1, '2018-04-19 04:16:56', '2018-04-20 13:36:22'),
(3, 'Thông tin về MYC', 1, 1, NULL, 0, '_self', 'noindex,follow', NULL, 'Thông tin về MYC', 'on', 'thong-tin-ve-myc', 'Thông tin về MYC', NULL, NULL, 1, '2018-04-19 08:15:19', '2018-04-20 13:38:59'),
(4, 'Giới thiệu chương trình', 8, 1, '<p>Chương trình học MYC -&gt; Giới thiệu chương trình</p>', 0, '_self', 'noindex,follow', NULL, 'Giới thiệu chương trình', 'on', 'gioi-thieu-chuong-trinh', 'Giới thiệu chương trình', NULL, NULL, 1, '2018-04-20 03:33:54', '2018-04-21 01:34:56'),
(6, 'Những lợi ích', 8, 2, NULL, 0, '_self', 'noindex,follow', NULL, 'Những lợi ích', 'on', 'nhung-loi-ich', 'Những lợi ích', NULL, NULL, 1, '2018-04-20 08:03:46', '2018-04-20 13:38:15'),
(7, 'Menu', 0, 1, NULL, 0, '_self', 'noindex,follow', NULL, 'Menu', 'on', 'menu', 'Menu', NULL, NULL, 1, '2018-04-20 13:36:08', '2018-04-20 13:36:08'),
(8, 'Chương trình học MYC', 7, 2, NULL, 0, '_self', 'noindex,follow', NULL, 'Chương trình học MYC', 'on', 'chuong-trinh-hoc-myc', 'Chương trình học MYC', NULL, NULL, 1, '2018-04-20 13:37:27', '2018-04-20 13:37:27'),
(9, 'Giới thiệu về MYC', 7, 3, NULL, 0, '_self', 'noindex,follow', NULL, 'Giới thiệu về MYC', 'on', 'gioi-thieu-ve-myc', 'Giới thiệu về MYC', NULL, NULL, 1, '2018-04-21 01:26:07', '2018-04-21 01:26:07'),
(10, 'Cơ hội để trở thành giáo viên MYC', 7, 4, NULL, 0, '_self', 'noindex,follow', NULL, 'Cơ hội để trở thành giáo viên MYC', 'on', 'co-hoi-de-tro-thanh-giao-vien-myc', 'Cơ hội để trở thành giáo viên MYC', NULL, NULL, 1, '2018-04-21 01:26:25', '2018-04-21 01:28:56'),
(11, 'Mẫu đăng kí học', 7, 5, NULL, 0, '_self', 'noindex,follow', NULL, 'Mẫu đăng kí học', 'on', 'mau-dang-ki-hoc', 'Mẫu đăng kí học', NULL, NULL, 1, '2018-04-21 01:26:40', '2018-04-21 01:31:21'),
(12, 'Liên kết', 7, 7, NULL, 0, '_self', 'noindex,follow', NULL, 'Liên kết', 'on', 'lien-ket', 'Liên kết', NULL, NULL, 1, '2018-04-21 01:26:53', '2018-04-21 01:31:40'),
(13, 'Liên hệ', 7, 6, NULL, 0, '_self', 'noindex,follow', NULL, 'Liên hệ', 'on', 'lien-he', 'Liên hệ', NULL, NULL, 1, '2018-04-21 01:27:03', '2018-04-21 01:31:34'),
(14, 'Lịch sử MYC', 9, 1, NULL, 0, '_self', 'noindex,follow', NULL, 'Lịch sử MYC', 'on', 'lich-su-myc', 'Lịch sử MYC', NULL, NULL, 1, '2018-04-21 01:27:51', '2018-04-21 01:27:51'),
(15, 'Tin tức & sự kiện', 9, 2, NULL, 0, '_self', 'noindex,follow', NULL, 'Tin tức & sự kiện', 'on', 'tin-tuc-su-kien', 'Tin tức & sự kiện', NULL, NULL, 1, '2018-04-21 01:28:12', '2018-04-21 01:28:12'),
(16, 'Khóa học Sunrise', 8, 3, NULL, 0, '_self', 'noindex,follow', NULL, 'Khóa học Sunrise', 'on', 'khoa-hoc-sunrise', 'Khóa học Sunrise', NULL, NULL, 1, '2018-04-21 01:47:05', '2018-04-21 01:47:05'),
(17, 'Khóa học Sunshine', 8, 4, NULL, 0, '_self', 'noindex,follow', NULL, 'Khóa học Sunshine', 'on', 'khoa-hoc-sunshine', 'Khóa học Sunshine', NULL, NULL, 1, '2018-04-21 01:47:39', '2018-04-21 01:47:39'),
(18, 'Khóa học Sunbeams', 8, 5, NULL, 0, '_self', 'noindex,follow', NULL, 'Khóa học Sunbeams', 'on', 'khoa-hoc-sunbeams', 'Khóa học Sunbeams', NULL, NULL, 1, '2018-04-21 01:47:59', '2018-04-21 01:47:59'),
(19, 'Khóa học Moonbeams', 8, 6, NULL, 0, '_self', 'noindex,follow', NULL, 'Khóa học Moonbeams', 'on', 'khoa-hoc-moonbeams', 'Khóa học Moonbeams', NULL, NULL, 1, '2018-04-21 01:48:17', '2018-04-21 01:48:17'),
(20, 'Khóa học NewChoice', 8, 7, NULL, 0, '_self', 'noindex,follow', NULL, 'Khóa học NewChoice', 'on', 'khoa-hoc-newchoice', 'Khóa học NewChoice', NULL, NULL, 1, '2018-04-21 01:48:39', '2018-04-21 01:48:39'),
(21, 'Khóa học Music Your Best Choice', 8, 8, NULL, 0, '_self', 'noindex,follow', NULL, 'Khóa học Music Your Best Choice', 'on', 'khoa-hoc-music-your-best-choice', 'Khóa học Music Your Best Choice', NULL, NULL, 1, '2018-04-21 01:49:04', '2018-04-21 01:49:04'),
(22, 'Tại sao nên trở thành giáo viên MYC?', 10, 1, NULL, 0, '_self', 'noindex,follow', NULL, 'Tại sao nên trở thành giáo viên MYC?', 'on', 'tai-sao-nen-tro-thanh-giao-vien-myc', 'Tại sao nên trở thành giáo viên MYC?', NULL, NULL, 1, '2018-04-21 02:36:20', '2018-04-21 02:36:20'),
(23, 'Yêu cầu để trở thành giáo viên MYC', 10, 2, NULL, 0, '_self', 'noindex,follow', NULL, 'Yêu cầu để trở thành giáo viên MYC', 'on', 'yeu-cau-de-tro-thanh-giao-vien-myc', 'Yêu cầu để trở thành giáo viên MYC', NULL, NULL, 1, '2018-04-21 02:37:03', '2018-04-21 02:37:03'),
(24, 'Mẫu đăng kí ứng tuyển giáo viên', 10, 3, NULL, 0, '_self', 'noindex,follow', 'http://localhost/myc-cms-vi/public/uploads/7d33bf4db7c9ac9fae6b8488a930179f/files/Untitled.png', 'Mẫu đăng kí ứng tuyển giáo viên', 'on', 'mau-dang-ki-ung-tuyen-giao-vien', 'Mẫu đăng kí ứng tuyển giáo viên', NULL, NULL, 1, '2018-04-21 03:33:03', '2018-04-21 03:33:03'),
(25, 'Chương trình học', 8, 9, NULL, 0, '_self', 'noindex,follow', NULL, 'Chương trình học', 'on', 'chuong-trinh-hoc', 'Chương trình học', NULL, NULL, 1, '2018-04-23 03:21:14', '2018-04-23 03:21:14');

-- --------------------------------------------------------

--
-- Table structure for table `category_news`
--

CREATE TABLE `category_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_news`
--

INSERT INTO `category_news` (`id`, `category_id`, `news_id`) VALUES
(18, 1, 2),
(21, 4, 5),
(22, 4, 6),
(23, 1, 1),
(24, 1, 3),
(26, 4, 4),
(27, 4, 8),
(29, 6, 9),
(30, 4, 10),
(32, 17, 12),
(33, 17, 13),
(34, 17, 14),
(35, 18, 15),
(36, 18, 16),
(37, 18, 17),
(38, 18, 18),
(39, 20, 19),
(40, 21, 20),
(41, 19, 21),
(42, 19, 22),
(43, 19, 23),
(44, 19, 24),
(46, 22, 26),
(47, 16, 11),
(48, 24, 27),
(49, 23, 25),
(50, 12, 28),
(51, 13, 29),
(52, 14, 30),
(53, 25, 31);

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `like` int(11) NOT NULL DEFAULT '0',
  `dislike` int(11) NOT NULL DEFAULT '0',
  `report` int(11) NOT NULL DEFAULT '0',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_site` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Vũ Quốc Tuấn',
  `dc_created` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dc_rights_copyright` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'QuocTuan.Info',
  `dc_creator_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Vũ Quốc Tuấn',
  `dc_creator_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'contact.quoctuan@gmail.com',
  `dc_identifier` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dc_language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'vi-VN',
  `robots` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'index,follow',
  `geo_placename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ho Chi Minh, Viet Nam',
  `geo_region` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `geo_position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icbm` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revisit_after` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'days',
  `host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `no_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_page_news` int(11) NOT NULL DEFAULT '10',
  `item_page_product` int(11) NOT NULL DEFAULT '10',
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `name_site`, `title`, `keywords`, `description`, `logo`, `copyright`, `author`, `dc_created`, `dc_rights_copyright`, `dc_creator_name`, `dc_creator_email`, `dc_identifier`, `dc_language`, `robots`, `geo_placename`, `geo_region`, `geo_position`, `icbm`, `revisit_after`, `host`, `email`, `pass`, `port`, `no_photo`, `item_page_news`, `item_page_product`, `contact_email`, `contact_phone`, `contact_address`, `facebook`, `youtube`, `twitter`, `linkedin`, `google_plus`, `created_at`, `updated_at`) VALUES
(1, 'QuocTuan.Info', 'Quốc Tuấn', 'lập trình php,lập trình web', 'Trung tâm đào tạo lập trình', 'public/backend/assets/images/logo.png', 'QuocTuan.Info', 'Vũ Quốc Tuấn', '2018-12-31', 'QuocTuan.Info', 'Vũ Quốc Tuấn', 'contact.quoctuan@gmail.com', 'http://quoctuan.info/', 'vi-VN', 'index,follow', 'Hồ Chí Minh,Việt Nam', 'VN-HCM', '10.823099;106.629664', '10.823099, 106.629664', 'days', 'smtp.gmail.com', 'abc@gmail.com', '12345', 465, NULL, 10, 10, 'contact.quoctuan@gmail.com', '0933649647', '123 Nguyễn Thông P9 Q3 TP.HCM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 'https://vn.linkedin.com/', 'https://plus.google.com/', '2018-04-18 08:43:19', '2018-04-18 08:43:19');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` text COLLATE utf8mb4_unicode_ci,
  `skype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timework` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dangki`
--

CREATE TABLE `dangki` (
  `id` int(10) UNSIGNED NOT NULL,
  `hoten` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sdt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diachi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thongtinkhac` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotenbe` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngaysinh` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chuongtrinhhoc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diadiemhoc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dangki`
--

INSERT INTO `dangki` (`id`, `hoten`, `sdt`, `email`, `diachi`, `thongtinkhac`, `hotenbe`, `ngaysinh`, `chuongtrinhhoc`, `diadiemhoc`, `created_at`, `updated_at`, `status`) VALUES
(5, 'Lê Thanh Sơn', '23123', 'gmail@gmail.com', 'HCM', '123123', 'Trần Văn A', 'Ngày 16Tháng 4Năm 2018', 'Dạy đàn Piano - Sunrise', '37 Trần Bình Trọng, Hoàn Kiếm, Hà Nội', '2018-04-23 04:30:16', '2018-04-23 04:30:16', ''),
(6, 'Lê Thanh Sơn', '23123', '123123@gmail', 'HCM', '123123', NULL, 'Ngày 16 Tháng 4 Năm 2018', 'Sunshine', '37 Trần Bình Trọng, Hoàn Kiếm, Hà Nội', '2018-04-23 04:31:12', '2018-04-23 04:31:12', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `dangkigiaovien`
--

CREATE TABLE `dangkigiaovien` (
  `id` int(10) UNSIGNED NOT NULL,
  `hoten` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namsinh` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sdt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diachi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diachidangkilamviec` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bangcap` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images_news`
--

CREATE TABLE `images_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `news_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images_product`
--

CREATE TABLE `images_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `title`, `action`, `controller`, `fullname`, `created_at`, `updated_at`) VALUES
(1, 'trang-chu (1)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-19 04:16:57', '2018-04-19 04:16:57'),
(2, 'Giới thiệu chương trình học của MYC (1)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-19 04:17:32', '2018-04-19 04:17:32'),
(3, 'co-hoi-de-tro-thanh-giao-vien-myc (1)', 'Edit', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-19 04:25:43', '2018-04-19 04:25:43'),
(4, 'cap-do-hoc-cua-tre (2)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-19 04:26:35', '2018-04-19 04:26:35'),
(5, 'Cơ hội để trở thành giáo viên MYC (1)', 'Edit', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-19 04:29:13', '2018-04-19 04:29:13'),
(6, 'Giới thiệu chương trình học của MYC (2)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-19 04:30:51', '2018-04-19 04:30:51'),
(7, 'test (1)', 'Edit', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-19 07:12:24', '2018-04-19 07:12:24'),
(8, 'Cơ hội (1)', 'Edit', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-19 07:22:06', '2018-04-19 07:22:06'),
(9, 'Giới thiệu chương trình học của MYC (2)', 'Edit', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-19 07:53:47', '2018-04-19 07:53:47'),
(10, 'Giới thiệu chương trình học của MYC (2)', 'Edit', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-19 07:54:24', '2018-04-19 07:54:24'),
(11, 'Cơ hội (1)', 'Edit', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-19 07:54:38', '2018-04-19 07:54:38'),
(12, 'Giới thiệu chương trình học của MYC (2)', 'Edit', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-19 07:55:46', '2018-04-19 07:55:46'),
(13, 'Cơ hội (1)', 'Edit', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-19 07:55:51', '2018-04-19 07:55:51'),
(14, 'Cap do hoc (1)', 'Edit', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-19 07:57:40', '2018-04-19 07:57:40'),
(15, 'Giới thiệu chương trình học của MYC (2)', 'Edit', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-19 08:03:27', '2018-04-19 08:03:27'),
(16, 'Co hoi (2)', 'Edit', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-19 08:03:54', '2018-04-19 08:03:54'),
(17, 'Co hoi (2)', 'Edit', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-19 08:09:04', '2018-04-19 08:09:04'),
(18, 'thong tin ve myc (3)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-19 08:15:20', '2018-04-19 08:15:20'),
(19, 'MYC luôn được khẳng định là một chương trình có chất lượng giáo dục âm nhạc từ sớm với chất lượng hàng đầu quốc tế (3)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-19 08:16:32', '2018-04-19 08:16:32'),
(20, 'Cấp độ học (2)', 'Edit', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-19 08:19:59', '2018-04-19 08:19:59'),
(21, 'Thông tin về MYC (3)', 'Edit', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-19 08:20:10', '2018-04-19 08:20:10'),
(22, 'Cơ hội để trở thành giáo viên MYC (1)', 'Edit', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-19 08:20:21', '2018-04-19 08:20:21'),
(23, 'Cơ hội để trở thành giáo viên MYC (2)', 'Edit', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-19 08:21:08', '2018-04-19 08:21:08'),
(24, 'Giới thiệu chương trình học của MYC (1)', 'Edit', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-19 08:22:01', '2018-04-19 08:22:01'),
(25, 'Bài đăng 1 (1)', 'Add', 'Post', 'Vũ Quốc Tuấn (1)', '2018-04-19 09:08:27', '2018-04-19 09:08:27'),
(26, 'Bài đăng 2 (2)', 'Add', 'Post', 'Vũ Quốc Tuấn (1)', '2018-04-19 09:08:41', '2018-04-19 09:08:41'),
(27, 'Bài đăng 3 (3)', 'Add', 'Post', 'Vũ Quốc Tuấn (1)', '2018-04-19 09:09:26', '2018-04-19 09:09:26'),
(28, 'Giới thiệu chương trình giảng dạy (4)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-20 03:33:55', '2018-04-20 03:33:55'),
(29, 'Hát (4)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-20 03:34:42', '2018-04-20 03:34:42'),
(30, 'Luyện nghe (5)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-20 03:35:26', '2018-04-20 03:35:26'),
(31, 'Luyện tập ở nhà (6)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-20 03:35:49', '2018-04-20 03:35:49'),
(32, 'Trang chủ (1)', 'Edit', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-20 04:38:49', '2018-04-20 04:38:49'),
(33, 'Giới thiệu chương trình học của MYC (1)', 'Edit', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-20 04:42:14', '2018-04-20 04:42:14'),
(34, 'MYC luôn được khẳng định là một chương trình có chất lượng giáo dục âm nhạc từ sớm với chất lượng hàng đầu quốc tế (3)', 'Edit', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-20 04:42:26', '2018-04-20 04:42:26'),
(35, 'Cấp độ học (2)', 'Delete', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-20 04:46:56', '2018-04-20 04:46:56'),
(36, 'TEST (5)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-20 04:59:48', '2018-04-20 04:59:48'),
(37, '123123 (7)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-20 05:00:11', '2018-04-20 05:00:11'),
(38, 'Giới thiệu chương trình giảng dạy MYC (4)', 'Edit', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-20 07:11:08', '2018-04-20 07:11:08'),
(39, 'TEST (8)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-20 07:41:05', '2018-04-20 07:41:05'),
(40, '123123 (7)', 'Delete', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-20 07:47:08', '2018-04-20 07:47:08'),
(41, 'Những lợi ích (6)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-20 08:03:46', '2018-04-20 08:03:46'),
(42, 'Những lợi ích của trẻ khi học nhạc (9)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-20 08:11:28', '2018-04-20 08:11:28'),
(43, 'Những lợi ích của trẻ khi học nhạc (9)', 'Edit', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-20 08:16:06', '2018-04-20 08:16:06'),
(44, 'test 2 (10)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-20 09:31:26', '2018-04-20 09:31:26'),
(45, 'Menu (7)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-20 13:36:08', '2018-04-20 13:36:08'),
(46, 'Trang chủ (1)', 'Edit', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-20 13:36:22', '2018-04-20 13:36:22'),
(47, 'TEST (5)', 'Delete', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-20 13:36:27', '2018-04-20 13:36:27'),
(48, 'Chương trình học MYC (8)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-20 13:37:27', '2018-04-20 13:37:27'),
(49, 'Giới thiệu chương trình giảng dạy (4)', 'Edit', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-20 13:37:43', '2018-04-20 13:37:43'),
(50, 'Những lợi ích (6)', 'Edit', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-20 13:38:15', '2018-04-20 13:38:15'),
(51, 'Thông tin về MYC (3)', 'Edit', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-20 13:38:59', '2018-04-20 13:38:59'),
(52, 'Giới thiệu về MYC (9)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:26:07', '2018-04-21 01:26:07'),
(53, 'Cơ hội để trở thành giáo viên MYC (10)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:26:25', '2018-04-21 01:26:25'),
(54, 'Mẫu đăng kí học (11)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:26:40', '2018-04-21 01:26:40'),
(55, 'Liên kết (12)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:26:53', '2018-04-21 01:26:53'),
(56, 'Liên hệ (13)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:27:03', '2018-04-21 01:27:03'),
(57, 'Lịch sử MYC (14)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:27:51', '2018-04-21 01:27:51'),
(58, 'Tin tức & sự kiện (15)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:28:12', '2018-04-21 01:28:12'),
(59, 'Cơ hội để trở thành giáo viên MYC (10)', 'Edit', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:28:56', '2018-04-21 01:28:56'),
(60, 'Mẫu đăng kí học (11)', 'Edit', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:31:21', '2018-04-21 01:31:21'),
(61, 'Liên hệ (13)', 'Edit', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:31:34', '2018-04-21 01:31:34'),
(62, 'Liên kết (12)', 'Edit', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:31:40', '2018-04-21 01:31:40'),
(63, 'Giới thiệu chương trình (4)', 'Edit', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:34:56', '2018-04-21 01:34:56'),
(64, 'Khóa học Sunrise (16)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:47:05', '2018-04-21 01:47:05'),
(65, 'Khóa học Sunshine (17)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:47:40', '2018-04-21 01:47:40'),
(66, 'Khóa học Sunbeams (18)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:47:59', '2018-04-21 01:47:59'),
(67, 'Khóa học Moonbeams (19)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:48:17', '2018-04-21 01:48:17'),
(68, 'Khóa học NewChoice (20)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:48:39', '2018-04-21 01:48:39'),
(69, 'Khóa học Music Your Best Choice (21)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:49:04', '2018-04-21 01:49:04'),
(70, 'Dạy đàn Piano - Sunrise (11)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:50:13', '2018-04-21 01:50:13'),
(71, 'Sunshine (12)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:50:49', '2018-04-21 01:50:49'),
(72, 'Sunshine 1 (13)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:51:32', '2018-04-21 01:51:32'),
(73, 'Sunshine 2 (14)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:52:06', '2018-04-21 01:52:06'),
(74, 'Sunbeams (15)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:52:38', '2018-04-21 01:52:38'),
(75, 'Sunbeams 1 (SB1) (16)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:53:18', '2018-04-21 01:53:18'),
(76, 'Sunbeams 2 (SB2) (17)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:53:49', '2018-04-21 01:53:49'),
(77, 'Sunbeams 3 (SB3) (18)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:54:13', '2018-04-21 01:54:13'),
(78, 'My Choice (19)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:54:45', '2018-04-21 01:54:45'),
(79, 'Music Your Best Choice (20)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-21 01:55:14', '2018-04-21 01:55:14'),
(80, 'Moonbeams (21)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-21 02:25:13', '2018-04-21 02:25:13'),
(81, 'Moonbeams 1 (MB1) (22)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-21 02:26:08', '2018-04-21 02:26:08'),
(82, 'Moonbeams 2 (MB2) (23)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-21 02:27:24', '2018-04-21 02:27:24'),
(83, 'Moonbeams 3 (MB3) (24)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-21 02:27:52', '2018-04-21 02:27:52'),
(84, 'Tại sao nên trở thành giáo viên MYC? (22)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-21 02:36:20', '2018-04-21 02:36:20'),
(85, 'Yêu cầu để trở thành giáo viên MYC (23)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-21 02:37:03', '2018-04-21 02:37:03'),
(86, 'Yêu cầu để trở thành giáo viên MYC (25)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-21 02:37:23', '2018-04-21 02:37:23'),
(87, 'Tại sao nên trở thành giáo viên MYC (26)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-21 02:37:49', '2018-04-21 02:37:49'),
(88, 'Dạy đàn Piano - Sunrise (11)', 'Edit', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-21 02:49:17', '2018-04-21 02:49:17'),
(89, 'Mẫu đăng kí ứng tuyển giáo viên (24)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-21 03:33:03', '2018-04-21 03:33:03'),
(90, 'Mẫu đăng kí ứng tuyển giáo viên (27)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-21 03:47:54', '2018-04-21 03:47:54'),
(91, 'Yêu cầu để trở thành giáo viên MYC (25)', 'Edit', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-21 04:11:11', '2018-04-21 04:11:11'),
(92, 'Liên kết website (28)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-21 04:24:23', '2018-04-21 04:24:23'),
(93, 'Liên hệ (29)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-21 04:25:10', '2018-04-21 04:25:10'),
(94, 'Lịch sử MYC (30)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-21 04:35:29', '2018-04-21 04:35:29'),
(95, 'ID : 7 - Position : 1', 'Update', 'Update Position Category', 'Vũ Quốc Tuấn (1)', '2018-04-23 01:36:39', '2018-04-23 01:36:39'),
(96, 'Chương trình học (25)', 'Add', 'Category', 'Vũ Quốc Tuấn (1)', '2018-04-23 03:21:14', '2018-04-23 03:21:14'),
(97, 'Chương trình học (31)', 'Add', 'News', 'Vũ Quốc Tuấn (1)', '2018-04-23 03:24:27', '2018-04-23 03:24:27'),
(98, 'Table : post - Column : status', 'Off', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 05:00:45', '2018-04-23 05:00:45'),
(99, 'Table : post - Column : status', 'On', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 05:00:45', '2018-04-23 05:00:45'),
(100, 'Table : post - Column : status', 'Off', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 05:00:46', '2018-04-23 05:00:46'),
(101, 'Table : post - Column : status', 'On', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 05:00:46', '2018-04-23 05:00:46'),
(102, 'Table : post - Column : status', 'Off', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 05:00:48', '2018-04-23 05:00:48'),
(103, 'Table : post - Column : status', 'On', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 05:00:48', '2018-04-23 05:00:48'),
(104, 'Table : post - Column : status', 'Off', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 05:00:49', '2018-04-23 05:00:49'),
(105, 'Table : post - Column : status', 'On', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 05:00:49', '2018-04-23 05:00:49'),
(106, 'Table : post - Column : status', 'Off', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 05:03:27', '2018-04-23 05:03:27'),
(107, 'Table : post - Column : status', 'On', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 05:03:27', '2018-04-23 05:03:27'),
(108, 'Table : post - Column : status', 'Off', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 05:03:27', '2018-04-23 05:03:27'),
(109, 'Table : post - Column : status', 'On', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 05:03:27', '2018-04-23 05:03:27'),
(110, 'Table : post - Column : status', 'Off', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 05:03:28', '2018-04-23 05:03:28'),
(111, 'Table : post - Column : status', 'On', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 05:03:28', '2018-04-23 05:03:28'),
(112, 'Table : post - Column : status', 'Off', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 05:03:30', '2018-04-23 05:03:30'),
(113, 'Table : post - Column : status', 'On', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 05:03:32', '2018-04-23 05:03:32'),
(114, 'Table : post - Column : status', 'Off', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 05:04:25', '2018-04-23 05:04:25'),
(115, 'Table : dangki - Column : status', 'On', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 08:23:09', '2018-04-23 08:23:09'),
(116, 'Table : dangki - Column : status', 'Off', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 08:35:30', '2018-04-23 08:35:30'),
(117, 'Table : dangki - Column : status', 'On', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 08:35:31', '2018-04-23 08:35:31'),
(118, 'Table : dangki - Column : status', 'Off', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 08:35:31', '2018-04-23 08:35:31'),
(119, 'Table : dangki - Column : status', 'On', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 08:35:32', '2018-04-23 08:35:32'),
(120, 'Table : dangki - Column : status', 'Off', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 08:35:32', '2018-04-23 08:35:32'),
(121, 'Table : dangki - Column : status', 'On', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 08:35:32', '2018-04-23 08:35:32'),
(122, 'Table : dangki - Column : status', 'Off', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 08:43:53', '2018-04-23 08:43:53'),
(123, 'Table : dangki - Column : status', 'On', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 08:43:54', '2018-04-23 08:43:54'),
(124, 'Table : dangki - Column : status', 'Off', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 08:43:54', '2018-04-23 08:43:54'),
(125, 'Table : dangki - Column : status', 'On', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 08:43:54', '2018-04-23 08:43:54'),
(126, 'Table : dangki - Column : status', 'Off', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 08:43:54', '2018-04-23 08:43:54'),
(127, 'Table : dangki - Column : status', 'On', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 08:43:55', '2018-04-23 08:43:55'),
(128, 'Table : dangki - Column : status', 'Off', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 08:43:55', '2018-04-23 08:43:55'),
(129, 'Table : dangki - Column : status', 'On', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 08:43:55', '2018-04-23 08:43:55'),
(130, 'Table : dangki - Column : status', 'Off', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 08:43:55', '2018-04-23 08:43:55'),
(131, 'Table : dangki - Column : status', 'On', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 08:43:56', '2018-04-23 08:43:56'),
(132, 'Table : dangki - Column : status', 'Off', 'Update Status - Feature', 'Vũ Quốc Tuấn (1)', '2018-04-23 08:43:56', '2018-04-23 08:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `log_login`
--

CREATE TABLE `log_login` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_login`
--

INSERT INTO `log_login` (`id`, `email`, `browser`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 'superadmin@quoctuan.info', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '::1', '2018-04-18 08:44:06', '2018-04-18 08:44:06'),
(2, 'superadmin@quoctuan.info', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '::1', '2018-04-23 01:22:27', '2018-04-23 01:22:27');

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `id` int(10) UNSIGNED NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`id`, `name`, `logo`, `website`, `address`, `email`, `phone`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Updating', NULL, NULL, NULL, NULL, NULL, 'Updating', '2018-04-18 08:43:19', '2018-04-18 08:43:19');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_06_16_131544_create_category_table', 1),
(4, '2017_06_16_131648_create_post_table', 1),
(5, '2017_06_16_131656_create_tags_table', 1),
(6, '2017_06_16_131704_create_news_table', 1),
(7, '2017_06_16_131717_create_category_news_table', 1),
(8, '2017_06_16_131727_create_manufacturer_table', 1),
(9, '2017_06_16_131956_create_attribute_table', 1),
(10, '2017_06_16_132005_create_product_table', 1),
(11, '2017_06_16_132022_create_images_product_table', 1),
(12, '2017_06_16_132031_create_attribute_product_table', 1),
(13, '2017_06_16_132040_create_category_product_table', 1),
(14, '2017_07_21_185638_create_position_table', 1),
(15, '2017_07_21_185751_create_banner_table', 1),
(16, '2017_07_24_154335_create_role_table', 1),
(17, '2017_08_01_001752_create_contact_table', 1),
(18, '2017_08_01_005218_create_config_table', 1),
(19, '2017_10_09_134933_create_mail_table', 1),
(20, '2017_10_15_010711_create_comment_table', 1),
(21, '2017_10_15_141059_create_log_table', 1),
(22, '2017_10_18_004803_create_log_login_table', 1),
(23, '2017_11_01_225632_create_social_login_table', 1),
(24, '2017_12_01_235022_create_images_news_table', 1),
(28, '2018_04_20_153616_create_dangki_table', 2),
(30, '2018_04_21_095256_create_dangkigiaovien_table', 3),
(31, '2018_04_23_143147_add_status_to_dangki', 4);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `foot` text COLLATE utf8mb4_unicode_ci,
  `access` int(11) NOT NULL,
  `target_open` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_robot` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewed` int(11) NOT NULL DEFAULT '100',
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `author`, `origin`, `intro`, `content`, `foot`, `access`, `target_open`, `meta_robot`, `viewed`, `youtube`, `image`, `alt`, `status`, `featured`, `slug`, `title_tag`, `meta_keywords_tag`, `meta_description_tag`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Giới thiệu chương trình học của MYC', 'Thanh Sơn', NULL, NULL, '<p><span style=\"font-size:18px;\">Chương trình giảng dạy của MYC được thiết kế với mục đích đưa đến cho các em một nền giáo dục toàn diện ngay từ những bước khởi đầu. Học sinh MYC không chỉ học chơi đàn piano mà còn được dạy các kỹ năng quan trọng khác giúp tạo nên một nhạc sĩ / nghệ sĩ tương lai có kiến thức vững chắc, được đào tạo bài bản và phát triển cân bằng.</span></p>', NULL, 0, '_self', 'noindex,follow', 100, NULL, NULL, 'Giới thiệu chương trình học của MYC', 'on', 'off', 'gioi-thieu-chuong-trinh-hoc-cua-myc', 'Giới thiệu chương trình học của MYC', NULL, NULL, 1, '2018-04-19 04:17:32', '2018-04-20 04:42:14'),
(2, 'Cơ hội để trở thành giáo viên MYC', 'Vũ Quốc Tuấn', NULL, NULL, '<p>Tại MYC chúng tôi hỗ trợ giáo viên thông qua các điều phối viên đến từ Canada, giúp các bạn chia sẻ ý tưởng, thông tin và kinh nghiệm với các giáo viên khác trên toàn bộ hệ thống MYC ở các nước</p>', NULL, 0, '_self', 'noindex,follow', 100, NULL, 'http://localhost/myc-cms-vi/public/uploads/7d33bf4db7c9ac9fae6b8488a930179f/files/Untitled.png', 'Cơ hội để trở thành giáo viên MYC', 'on', 'off', 'co-hoi-de-tro-thanh-giao-vien-myc', 'Cơ hội để trở thành giáo viên MYC', NULL, NULL, 1, '2018-04-19 04:30:51', '2018-04-19 08:21:08'),
(3, 'MYC luôn được khẳng định là một chương trình có chất lượng giáo dục âm nhạc từ sớm với chất lượng hàng đầu quốc tế', 'a', NULL, NULL, '<p>Chương trình MYC - Music for Young Children là chương trình giáo dục âm nhạc và dạy chơi đàn piano của Canada. MYC được thành lập từ năm 1980, là một chương trình học dành cho trẻ em từ độ tuổi 3 tuổi trở lên. Hiện nay MYC có cơ sở ở hơn 800 địa điểm trên khắp cả 3 châu lục.&nbsp;<br />\r\n<br />\r\nĐược thiết kế và được viết bởi một chuyên gia âm nhạc cho trẻ em, chương trình học MYC với các trình độ riêng biệt thiết kế chia theo từng lứa tuổi kết hợp giữa kĩ năng chơi đàn và phương pháp sư phạm nhằm khuyến khích các em trong học tập, tạo sự hào hứng vui thích khi đến lớp.</p>', NULL, 0, '_self', 'noindex,follow', 100, NULL, 'http://localhost/myc-cms-vi/public/uploads/7d33bf4db7c9ac9fae6b8488a930179f/files/Untitled.png', 'Hệ thống giảng dạy trên 3 châu lục', 'on', 'off', 'myc-luon-duoc-khang-dinh-la-mot-chuong-trinh-co-chat-luong-giao-duc-am-nhac-tu-som-voi-chat-luong-hang-dau-quoc-te', 'MYC luôn được khẳng định là một chương trình có chất lượng giáo dục âm nhạc từ sớm với chất lượng hàng đầu quốc tế', NULL, NULL, 1, '2018-04-19 08:16:31', '2018-04-20 04:42:26'),
(4, 'Giới thiệu chương trình giảng dạy MYC', 'Vũ Quốc Tuấn', NULL, NULL, '<p><span style=\"font-size:18px;\">Từ năm 1980, tổ chức MYC đã đưa học sinh của mình đến với thế giới âm nhạc thông qua phương pháp tiếp cận đa giác quan nhằm đáp ứng các nhu cầu học tập của trẻ. Đây là phương pháp lý tưởng cho trẻ em để học piano một cách hiệu quả, khích lệ và hứng thú. Trên cơ sở các bài học nhóm về đàn phím, chúng tôi lồng ghép với các hoạt động ca hát, sáng tác, vận động sáng tạo, nhạc lý, hòa tấu cùng nhiều hoạt động học tập khác. Giáo trình và tài liệu học tập được thiết kế chuyên biệt và được phân chia theo từng độ tuổi và sự phát triển của trẻ, phù hợp với mọi phong cách học tập của trẻ.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">Tại MYC, trẻ học theo các nhóm nhỏ chia theo độ tuổi, hàng tuần học 1 buổi 60 phút, người thân tham gia học cùng trẻ (phụ huynh, người giám hộ, người coi sóc). Chương trình học kéo dài từ 3-5 năm tùy độ tuổi, hàng năm trẻ được cấp giấy chứng nhận kết quả học tập.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">Học nhạc không chỉ đơn giản là sự lý thú. Học đàn nuôi dưỡng khả năng làm việc độc lập, hòa tấu nuôi dưỡng kỹ năng làm việc theo nhóm, trong khi vận động sáng tạo lại giúp trẻ phát triển khả năng diễn đạt cá nhân. Kỹ năng xướng âm và nhạc lý được tăng cường thông qua các hoạt động nhóm và tài liệu học tập thực tế nhiều màu sắc. Việc sáng tác tạo cho trẻ ý thức về sự tư duy và cảm xúc âm nhạc. Khơi dậy ở trẻ khả năng sáng tạo, sự tự tin một cách lý thú. Với MYC, hãy để âm nhạc là một phần cuộc sống của con bạn.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">Dù con bạn có tiếp tục học nhạc ở đâu sau khi đã học ở MYC thì chúng tôi luôn tự tin rằng phương pháp của chúng tôi sẽ mang tới các em kiến thức vững chắc. Được đào tạo bài bản và phát triển cân bằng giữa khả năng thưởng thức và trình diễn âm nhạc, qua đó các em sẽ mang tình yêu (và kiến thức) âm nhạc theo suốt cuộc đời của mình.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">MYC là phương pháp giảng dạy âm nhạc cho trẻ nhỏ duy nhất kết hợp và sử dụng các các bài nhạc của Nhạc viện Canada theo phương pháp riêng của chúng tôi nhằm hướng tới mỗi học sinh sau khi&nbsp; tốt nghiệp chương trình MYC sẽ hoàn thành được kỳ thi piano và lý thuyết âm nhạc đầu tiên của mình.</span></p>', NULL, 0, '_self', 'noindex,follow', 100, NULL, 'http://localhost/myc-cms-vi/public/uploads/7d33bf4db7c9ac9fae6b8488a930179f/files/Untitled.png', 'Giới thiệu chương trình giảng dạy MYC', 'on', 'off', 'gioi-thieu-chuong-trinh-giang-day-myc', 'Giới thiệu chương trình giảng dạy MYC', NULL, NULL, 1, '2018-04-20 03:34:42', '2018-04-20 07:11:08'),
(5, 'Luyện nghe', 'Vũ Quốc Tuấn', NULL, NULL, '<p><span style=\"font-size:18px;\">Trẻ em rất thích nghe nhạc dù chúng có thể hiện ra hay không. Trẻ em cần được dạy phương pháp nghe và cần nghe những gì tại các thời điểm khác nhau. Khả năng nghe chủ động và xác định các yếu tố khác nhau trong bài nhạc là vấn đề thiết yếu trong học nhạc. Các học sinh MYC học và tăng cường kỹ năng nghe thông qua:</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:18px;\">Viết các câu chuyện tiết tấu (với sự trợ giúp của các công cụ sáng tạo) qua việc ghi lại tiết tấu.</span></li>\r\n	<li><span style=\"font-size:18px;\">Chơi lại các giai điệu đơn giản trên đàn piano (sau khi nghe)</span></li>\r\n	<li><span style=\"font-size:18px;\">Phân tích thính giác tích cực – dạy học sinh khả năng xác định các yếu tố chính của bài nhạc dù đó là cao độ, tốc độ, xướng âm hay xác định hợp âm (âm trưởng hay âm thứ).</span></li>\r\n	<li><span style=\"font-size:18px;\">Nghe các tác phẩm của các nhà soạn nhạc nổi tiếng qua các thời kì âm nhạc khác nhau từ đó xác định được phong cách âm nhạc của từng thời kì.</span></li>\r\n</ul>', NULL, 0, '_self', 'noindex,follow', 100, NULL, NULL, 'Luyện nghe', 'on', 'off', 'luyen-nghe', 'Luyện nghe', NULL, NULL, 1, '2018-04-20 03:35:25', '2018-04-20 03:35:25'),
(6, 'Luyện tập ở nhà', 'Vũ Quốc Tuấn', NULL, NULL, '<p><span style=\"font-size:18px;\">Bạn có tin rằng học sinh MYC thực sự thích luyện tập tại nhà không? Tại sao? Bởi chương trình học của MYC được thiết kế để đảm bảo mỗi học sinh phát huy tối đa khả năng của bản thân cũng như tạo cho học sinh cơ hội tương tác với học cụ trong quá trình học tập. Luyện tập tại nhà có thể là từ việc dán, tô màu đối với các học sinh nhỏ tuổi nhất cho tới viết gam và các bài tập về từ vựng âm nhạc, nhạc lý, lý thuyết âm nạhc, hòa thanh...cho các học sinh ở cấp độ lớn hơn.</span></p>', NULL, 0, '_self', 'noindex,follow', 100, NULL, NULL, 'Luyện tập ở nhà', 'on', 'off', 'luyen-tap-o-nha', 'Luyện tập ở nhà', NULL, NULL, 1, '2018-04-20 03:35:49', '2018-04-20 03:35:49'),
(8, 'TEST', 'Vũ Quốc Tuấn', NULL, NULL, '<p>TEST</p>', NULL, 0, '_self', 'noindex,follow', 100, NULL, NULL, 'TEST', 'on', 'off', 'test', 'TEST', NULL, NULL, 1, '2018-04-20 07:41:05', '2018-04-20 07:41:05'),
(9, 'Những lợi ích của trẻ khi học nhạc', 'Vũ Quốc Tuấn', NULL, NULL, '<p><span style=\"font-size:18px;\"><strong>TẠI SAO NÊN KHỞI ĐẦU HỌC NHẠC THEO PHƯƠNG PHÁP CỦA MYC?</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><strong>Bởi vì sự thú vị!</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px;\">Phương pháp giảng dạy âm nhạc của MYC lấy trẻ làm trung tâm thông qua việc kết hợp khéo léo giữa việc học và chơi. Lớp học MYC xinh xắn, chương trình học phù hợp theo từng độ tuổi, khả năng sáng tạo và diễn đạt của trẻ được nuôi dưỡng qua từng phần học của chương trình.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><strong>MYC gây dựng gắn kết gia đình!</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px;\">Phụ huynh giữ vai trò quan trọng, tham gia và đồng hành cùng học sinh trong quá trình học tập. Phụ huynh và học sinh gắn kết như một nhóm trong quá trình học khi cùng tìm hiểu về các khái niệm âm nhạc. Mối gắn kết này tiếp tục được phát huy tại gia đình qua quá trình luyện tập hàng ngày cũng như các hoạt động gia đình khác.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><strong>MYC đào tạo cho chính đội ngũ giáo viên của mình!</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px;\">Đội ngũ giáo viên MYC luôn tâm huyết, nhiệt tình và đam mê đối với âm nhạc. Đội ngũ giáo viên MYC phải đáp ứng được các tiêu chuẩn đặc thù về nhạc lý và trình diễn piano, tham gia các chương trình đào tạo đặc biệt và được đánh giá chuyên môn để đảm bảo đáp ứng các tiêu chuẩn cao về giảng dạy âm nhạc.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">“MYC trang bị cho trẻ nền tảng cần thiết để học nhạc bên cạnh việc để trẻ tự phát huy khả năng tư duy. Trẻ được quyền xác định mục tiêu học tập của mình từ việc trải nghiệm một môi trường học tập tích cực, vừa học vừa chơi”.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><strong>TẠI SAO CON BẠN NÊN HỌC NHẠC</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><a id=\"OLE_LINK2\" name=\"OLE_LINK2\"></a>Hàng ngày, dường như ngày càng có nhiều các bài báo viết về các lợi ích của việc học nhạc, đặc biệt là đàn piano – điều này là đúng! Học nhạc giúp con bạn phát triển các kỹ năng nhận thức, xây dựng sự tập trung và độc lập trong tư duy logic. Qua việc cho trẻ em tham gia vào các lớp học nhạc, bạn đang xây dựng cho trẻ nền tảng kỹ năng quan trọng mà các em sẽ mang theo suốt cuộc đời sau này.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">Trẻ học theo nhóm thậm chí còn mang lại nhiều lợi ích hơn nữa. Những đứa trẻ này được học ngay từ đầu cách tương tác với mọi người và phát triển các kỹ năng xã hội trong một môi trường an toàn và được quan tâm. Các em học cách làm việc cùng nhau theo nhóm và đặt ra mục tiêu theo nhóm, đồng thời các em cũng có thể phát triển khả năng làm việc độc lập và xác định các mục tiêu các nhân.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">Do kỹ năng xướng âm và chơi nhạc được coi là một thứ ngôn ngữ nên khi một đứa trẻ học piano, bộ não chúng sẽ sử dụng tích cực không chỉ các khu vực sáng tạo mà còn cả các khu vực phát triển ngôn ngữ. Bằng việc sử dụng cùng lúc hai khu vực này, não bộ sẽ được phát triển ở mức cao hơn. Học piano có thể giúp các em giải quyết các vấn đề tính toán phức tạp sớm và nhanh hơn, học các ngôn ngữ khác tự tin và dễ dàng hơn; khả năng cân nhắc vấn đề, tình huống trong các hoàn cảnh khác nhau cũng tốt hơn. Các học sinh học piano cũng là những vận động viên mạnh mẽ hơn do khả năng phối hợp giữa mắt-tay, mắt-chân phát triển tốt hơn, các em có khả năng hình dung các bước di chuyển tiếp theo và xác định chiến lược cho mỗi cuộc chơi nhanh và tốt hơn.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><strong>Phối hợp não bộ trong việc sáng tác</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px;\">Thời điểm mà học sinh tại MYC nhận ra khả năng “ làm chủ” âm nhạc thông qua các sáng tác của mình, đó là lúc các em cảm thấy tự tin hơn. Sự tự tin ngày càng được củng cố và phát triển.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">Tại MYC, sáng tác giúp các em khám phá khả năng sáng tạo âm nhạc của mình, đồng thời xây dựng nền tảng kiến thức về các kỹ năng sáng tác từ đó phát triển và mở rộng khả năng sáng tạo.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">Đầu tiên, các học sinh sẽ học tất cả các kỹ năng và khái niệm sáng tác qua nghệ thuật, tư duy và hình ảnh, nhằm đảm bảo mỗi em có cơ hội hiểu thấu đáo và áp dụng các khái niệm trước khi “lo lắng” về việc sử dụng các khái niệm đó trong việc viết nhạc. Khi các học sinh MYC hiểu và có thể ứng dụng khái niệm đó bằng hình ảnh, bằng tư duy, các em sẽ chuyển dần từ kĩ thuật viết nhạc sang sáng tác thực thụ - thông qua cả các con thú MYC ngộ nghĩnh đối với trẻ nhỏ tuồi hay trên khuông nhạc đối với trẻ lớn hơn.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">Qua tất cả các hoạt động này, khả năng phối hợp não bộ của học sinh sẽ được củng cố và tăng cường đáng kể. Chỉ thông qua sáng tác, não bộ của học sinh sẽ được tham gia vào các kỹ năng nghe, phân tích, sáng tạo, nghe nhạc, lý luận diễn dịch, lòng tự trọng, tính tự tin cũng như củng cố khả năng vận dụng các khái niệm được học vào các hoàn cảnh và tình huống khác nhau.</span></p>', NULL, 0, '_self', 'noindex,follow', 100, NULL, NULL, 'Những lợi ích của trẻ khi học nhạc', 'on', 'off', 'nhung-loi-ich-cua-tre-khi-hoc-nhac', 'Những lợi ích của trẻ khi học nhạc', NULL, NULL, 1, '2018-04-20 08:11:28', '2018-04-20 08:16:06'),
(10, 'test 2', 'ádasd', NULL, NULL, '<p>test 2</p>', NULL, 0, '_self', 'noindex,follow', 100, NULL, NULL, 'test 2', 'on', 'off', 'test-2', 'test 2', NULL, NULL, 1, '2018-04-20 09:31:26', '2018-04-20 09:31:26'),
(11, 'Dạy đàn Piano - Sunrise', 'Vũ Quốc Tuấn', NULL, NULL, '<h2><span style=\"font-size:18px;\">Chương trình cảm thụ âm nhạc trước khi học đàn phím -piano- (dành cho trẻ lứa tuổi mầm non )</span></h2>\r\n\r\n<p><span style=\"font-size:18px;\">Sunrise là chương trình âm nhạc thú vị và sáng tạo dành cho trẻ mẫu giáo, giúp trẻ phát triển khả năng nghe nhạc, kỹ năng điều khiển bàn tay và ngón tay (kỹ năng vận động tinh tế), khả năng tập trung và kỹ năng xã hội. Các bạn rối Buzz, Buddy và Mellow sẽ đồng hành cùng các em trên hành trình âm nhạc của mình qua các bài hát và trò chơi, bao gồm việc học hát, tiết tấu và thẩm âm.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">Khả năng tự nhiên về âm nhạc của trẻ từ 3-4 tuổi là rất đáng ngạc nhiên. Các bé có thể hát ngêu ngao liên tục, di chuyển theo nhịp điệu hoặc tiết tấu và luôn sẵn sàng vận động!&nbsp;<strong>Sunrise</strong>&nbsp;là chương trình vận động và học nhạc trước khi học đàn phím đầy thú vị và sáng tạo với thiết kế linh hoạt phù hợp với sự phát triển của trẻ một cách hoàn hảo. Các bạn gấu Teddy sẽ dạy cho các em tiết tấu. Các bạn rối Buzz, Buddy và Mellow hướng dẫn các em trên hành trình âm nhạc của mình, dạy các em hát và thẩm âm. Chương trình giảng dạy lấy trẻ em làm trung tâm của MYC bao gồm các câu chuyện, bài hát và trò chơi để đảm bảo rằng tất cả các em có thể cảm nhận và đạt được thành công khi tham gia học nhạc</span></p>', NULL, 0, '_self', 'noindex,follow', 100, NULL, 'http://localhost/myc-cms-vi/public/uploads/7d33bf4db7c9ac9fae6b8488a930179f/files/Untitled.png', 'Dạy đàn Piano - Sunrise', 'on', 'off', 'day-dan-piano---sunrise', 'Dạy đàn Piano - Sunrise', NULL, NULL, 1, '2018-04-21 01:50:13', '2018-04-21 02:49:17'),
(12, 'Sunshine', 'Vũ Quốc Tuấn', NULL, NULL, '<p><span style=\"font-size:18px;\">Là chương trình học piano cơ bản nhất cho trẻ ở lứa tuổi bé. Trẻ được trải nghiệm vận động cơ thể qua nhịp phách và tiết tấu cũng như hoàn thiện kỹ năng điều khiển bàn tay và ngón tay qua việc diễn tấu nhạc cụ. Luyện tập kĩ thuật cơ bản để chơi trên đàn piano. Trẻ bắt đầu học vị trí phím đàn&nbsp; và được học nốt nhạc thông qua câu chuyện về các con thú ngộ nghĩnh của MYC để từ đó chuyển sang kĩ năng đọc nốt nhạc trên dòng kẻ nhạc (qua các câu chuyện kể về những con vật các em có thể liên hệ đến các nốt nhạc).</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">Cuối lớp SS1 (sau 36 tuần) các em có thể chơi gam đầu tiên (Đô trưởng) cùng với các bản nhạc cơ bản đơn giản, hát xướng âm theo hướng dẫn của giáo viên, biết tự sáng tác một nét nhạc. Có khả năng tư duy để xác định cũng như phân loại sự giống nhau/khác nhau giữa các kiểu mẫu nốt nhạc, biết xác định các đoạn nhạc đồng thời củng cố và gợi lại các khái niệm âm nhạc thông qua các hoạt động thú vị tại nhà như dán và tô màu.</span></p>', NULL, 0, '_self', 'noindex,follow', 100, NULL, 'http://localhost/myc-cms-vi/public/uploads/7d33bf4db7c9ac9fae6b8488a930179f/files/Untitled.png', 'Sunshine', 'on', 'off', 'sunshine', 'Sunshine', NULL, NULL, 1, '2018-04-21 01:50:48', '2018-04-21 01:50:48'),
(13, 'Sunshine 1', 'Vũ Quốc Tuấn', NULL, NULL, '<ul>\r\n	<li><span style=\"font-size:18px;\">Học 7 nốt nhạc và 4 tiết tấu cơ bản bao gồm nốt móc đơn, nốt đen, nốt trắng, nốt tròn thông qua các câu chuyện kể về những người bạn con vật thân thương của MYC.</span></li>\r\n	<li><span style=\"font-size:18px;\">Đọc nốt nhạc theo tư duy kiểu mẫu logic kết hợp với tiết tấu</span></li>\r\n	<li><span style=\"font-size:18px;\">Thực hành gõ nhịp</span></li>\r\n	<li><span style=\"font-size:18px;\">Đọc nốt trên khuông nhạc khóa Sol và khóa Fa</span></li>\r\n	<li><span style=\"font-size:18px;\">Luyện kĩ năng&nbsp; nghe ghi âm cao độ và phân biệt sắc thai to/nhỏ</span></li>\r\n	<li><span style=\"font-size:18px;\">Nghe một đoạn tiết tấu và viết lại bằng các công cụ ghi tiết tấu đặc biệt của MYC ( ghi âm tiết tấu )</span></li>\r\n	<li><span style=\"font-size:18px;\">Kĩ năng nhìn bản nhạc để chơi đàn và luyện ngón gam Đô trưởng</span></li>\r\n	<li><span style=\"font-size:18px;\">Bước đầu làm quen với kĩ năng sáng tác những nét giai điệu đơn giản</span></li>\r\n</ul>', NULL, 0, '_self', 'noindex,follow', 100, NULL, 'http://localhost/myc-cms-vi/public/uploads/7d33bf4db7c9ac9fae6b8488a930179f/files/Untitled.png', 'Sunshine 1', 'on', 'off', 'sunshine-1', 'Sunshine 1', NULL, NULL, 1, '2018-04-21 01:51:32', '2018-04-21 01:51:32'),
(14, 'Sunshine 2', 'Vũ Quốc Tuấn', NULL, NULL, '<ul>\r\n	<li><span style=\"font-size:18px;\">Rà soát, tiếp tục nâng cao khả năng xác địnhđúng vị trí các nốt trên phím đàn, tiết tấu, xác định cường độ sắc thái rõ ràng, nghe một đoạn nhạc và ghi lại đoạn nhạc đó.</span></li>\r\n	<li><span style=\"font-size:18px;\">Nâng cao khả năng đọc nốt nhạc trên khóa Sol và khóa Fa</span></li>\r\n	<li><span style=\"font-size:18px;\">Luyện tập phối hợp nhuần nhuyễn kĩ năng hai tay chơi đàn.</span></li>\r\n	<li><span style=\"font-size:18px;\">Chơi gam và hợp âm giọng Đô trưởng, La thứ, Sol trưởng</span></li>\r\n	<li><span style=\"font-size:18px;\">Tư duy logic về sự sắp xếp các nét giai điệu</span></li>\r\n	<li><span style=\"font-size:18px;\">Trau dồi kĩ năng sáng tác ở mức độ dần hoàn thiện hơn</span></li>\r\n	<li><span style=\"font-size:18px;\">Giới thiệu về cách chơi staccato (chơi ngắt âm) và legato (chơi liền tiếng)</span></li>\r\n	<li><span style=\"font-size:18px;\">Giới thiệu thông tin cơ bản về các nhạc sĩ nổi tiếng thông qua những câu chuyện kể gần gũi, kết hợp với việc nghe tác phẩm và gõ hòa tấu tiết tấu trên nền các bản nhạc</span></li>\r\n</ul>', NULL, 0, '_self', 'noindex,follow', 100, NULL, NULL, 'Sunshine 2', 'on', 'off', 'sunshine-2', 'Sunshine 2', NULL, NULL, 1, '2018-04-21 01:52:06', '2018-04-21 01:52:06'),
(15, 'Sunbeams', 'Vũ Quốc Tuấn', NULL, NULL, '<p><span style=\"font-size:18px;\">Sunbeam 1 (SB1) là cấp độ tiếp cận của phương pháp MYC cho trẻ từ 5-6 tuổi bắt đầu học đàn piano. Các em trước tiên được giới thiệu về vị trí phím đàn và tiết tấu qua các con thú MYC ngộ nghĩnh, từ đó giúp các em hình thành nền tảng về kiến thức âm nhạc phù hợp với các giai đoạn phát triển của trẻ. Với mục tiêu phát triển từ vựng âm nhạc cho trẻ em ở nhóm tuổi này, MYC đưa ra các thuật ngữ dành cho”trẻ em lớn” để giới thiệu về các khái niệm, số ngón tay và vị trí phím đàn.</span></p>', NULL, 0, '_self', 'noindex,follow', 100, NULL, NULL, 'Sunbeams', 'on', 'off', 'sunbeams', 'Sunbeams', NULL, NULL, 1, '2018-04-21 01:52:38', '2018-04-21 01:52:38'),
(16, 'Sunbeams 1 (SB1)', 'Vũ Quốc Tuấn', NULL, NULL, '<ul>\r\n	<li><span style=\"font-size:18px;\">Học 7 nốt nhạc và 4 tiết tấu cơ bản bao gồm nốt móc đơn, nốt đen, nốt trắng, nốt tròn thông qua các câu chuyện kể về những người bạn con vật thân thương của MYC</span></li>\r\n	<li><span style=\"font-size:18px;\">Đọc nốt nhạc theo tư duy kiểu mẫu logic kết hợp với tiết tấu</span></li>\r\n	<li><span style=\"font-size:18px;\">Thực hành gõ nhịp</span></li>\r\n	<li><span style=\"font-size:18px;\">Đọc nốt nhạc trên khuông nhạc ở khóa Sol và khóa Fa</span></li>\r\n	<li><span style=\"font-size:18px;\">Đọc kết hợp cùng lúc ở cả khóa Sol và khóa Fa ( khuông nhạc lớn )</span></li>\r\n	<li><span style=\"font-size:18px;\">Luyện kĩ năng&nbsp; nghe ghi âm cao độ và phân biệt sắc thai to/nhỏ</span></li>\r\n	<li><span style=\"font-size:18px;\">Nghe một đoạn tiết tấu và viết lại bằng các công cụ ghi tiết tấu đặc biệt của MYC ( ghi âm tiết tấu )&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li><span style=\"font-size:18px;\">Kĩ năng chơi đàn kết hợp cả hai tay phải và trái</span></li>\r\n	<li><span style=\"font-size:18px;\">Chơi gam và hợp âm quãng ở giọng Đô trưởng, La thứ, Sol trưởng</span></li>\r\n	<li><span style=\"font-size:18px;\">Kĩ năng sáng tác bản nhạc từ 4 đến 8 ô nhịp</span></li>\r\n</ul>', NULL, 0, '_self', 'noindex,follow', 100, NULL, NULL, 'Sunbeams 1 (SB1)', 'on', 'off', 'sunbeams-1-sb1', 'Sunbeams 1 (SB1)', NULL, NULL, 1, '2018-04-21 01:53:18', '2018-04-21 01:53:18'),
(17, 'Sunbeams 2 (SB2)', 'Vũ Quốc Tuấn', NULL, NULL, '<ul>\r\n	<li><span style=\"font-size:18px;\">Học bảy giọng và các dấu hóa</span></li>\r\n	<li><span style=\"font-size:18px;\">Hợp âm hai nốt đến hợp âm ba nốt</span></li>\r\n	<li><span style=\"font-size:18px;\">Phối hợp tay trái và tay phải để chơi hợp âm rời cùng giai điệu</span></li>\r\n	<li><span style=\"font-size:18px;\">Phối hợp chơi vắt tay</span></li>\r\n	<li><span style=\"font-size:18px;\">Đọc trên khuông nhạc lớn, mở rộng sang các nốt từ nốt Sol thấp ở khóa Fa sang vị trí nốt Sol trên cao ở khóa Sol</span></li>\r\n	<li><span style=\"font-size:18px;\">Khám phá cách chơi staccato (chơi ngắt âm) và legato (chơi liền tiếng)</span></li>\r\n	<li><span style=\"font-size:18px;\">Hòa âm (thêm hợp âm vào giai điệu) và&nbsp; dịch giọng là học phần quan trọng trong cấp học này.</span></li>\r\n	<li><span style=\"font-size:18px;\">Tiếp tục nghe để xác định và sử dụng cao độ (âm to hoặc âm nhỏ), đoạn tiết tấu, cách đệm đàn.</span></li>\r\n</ul>', NULL, 0, '_self', 'noindex,follow', 100, NULL, NULL, 'Sunbeams 2 (SB2)', 'on', 'off', 'sunbeams-2-sb2', 'Sunbeams 2 (SB2)', NULL, NULL, 1, '2018-04-21 01:53:49', '2018-04-21 01:53:49'),
(18, 'Sunbeams 3 (SB3)', 'Vũ Quốc Tuấn', NULL, NULL, '<ul>\r\n	<li>Học tối thiểu tám gam</li>\r\n	<li>Học tiếp các gam cùng các hợp âm cơ bản, luyện tập các đoạn đệm bao gồm các hợp âm rời và chơi các đoạn giai điệu</li>\r\n	<li>Học ba dạng gam thứ: tự nhiên, hòa âm, giai điệu</li>\r\n	<li>Học đảo hợp âm ba nốt</li>\r\n	<li>Học thêm về: tên các nốt nhạc bao gồm dòng kẻ phụ và phát âm với điểm nhấn</li>\r\n	<li>Được giới thiệu về phân tích nhạc đơn giản</li>\r\n	<li>Tiếp tục thực hành: hòa âm và hoán đổi vị trí, sáng tác và sắp xếp, nghe cao độ, nhịp, điểm nhấn, và các cách đệm đàn.</li>\r\n</ul>', NULL, 0, '_self', 'noindex,follow', 100, NULL, NULL, 'Sunbeams 3 (SB3)', 'on', 'off', 'sunbeams-3-sb3', 'Sunbeams 3 (SB3)', NULL, NULL, 1, '2018-04-21 01:54:13', '2018-04-21 01:54:13'),
(19, 'My Choice', 'Vũ Quốc Tuấn', NULL, NULL, '<p><span style=\"font-size:18px;\">Là khóa học dành cho lứa tuổi thanh thiếu niên tương đồng với giáo trình Moonbeams. Học sinh tại cấp độ này thường ở độ tuổi từ 13 tuổi trở lên. Sự khác biệt đáng kể của cấp độ này không phải ở giáo trình mà cấu trúc lớp học, theo đó phụ huynh không cần tham gia cùng học sinh tại các buổi học do các em ở độ tuổi này lớn hơn, nên có thể tự học với giáo viên tuy nhiên vẫn học theo mô hình nhóm.</span></p>', NULL, 0, '_self', 'noindex,follow', 100, NULL, NULL, 'My Choice', 'on', 'off', 'my-choice', 'My Choice', NULL, NULL, 1, '2018-04-21 01:54:45', '2018-04-21 01:54:45'),
(20, 'Music Your Best Choice', 'Vũ Quốc Tuấn', NULL, NULL, '<p><span style=\"font-size:18px;\">Music Your Best Choice là chương trình học cho người lớn, dành cho những ai đã từng học piano nhiều năm và muốn tiếp tục tham gia học và chơi piano cũng như cho những người mới học lần đầu. Người lớn có thể là thanh niên, sinh viên cao đẳng đại học, những người đi làm hoặc đã nghỉ hưu. Chương trình có thể học theo nhóm hoặc cá nhân.</span></p>', NULL, 0, '_self', 'noindex,follow', 100, NULL, NULL, 'Music Your Best Choice', 'on', 'off', 'music-your-best-choice', 'Music Your Best Choice', NULL, NULL, 1, '2018-04-21 01:55:14', '2018-04-21 01:55:14'),
(21, 'Moonbeams', 'Vũ Quốc Tuấn', NULL, NULL, '<p><span style=\"font-size:18px;\">Moonbeam 1 (MB1) là cấp độ tiếp cận của phương pháp MYC cho trẻ từ 7-10 tuổi. Chương trình học này dành cho trẻ lớn hơn được thiết kế đễ hỗ trợ tính tự lập đang lớn dần của các em. Giáo trình Moonbeams tập trung luyện kĩ năng chơi đàn piano, lý thuyết âm nhạc,&nbsp; kỹ năng xướng âm, hòa tấu, kỹ thuật và hòa âm.</span></p>', NULL, 0, '_self', 'noindex,follow', 100, NULL, 'http://localhost/myc-cms-vi/public/uploads/7d33bf4db7c9ac9fae6b8488a930179f/files/Untitled.png', 'Moonbeams', 'on', 'off', 'moonbeams', 'Moonbeams', NULL, NULL, 1, '2018-04-21 02:25:13', '2018-04-21 02:25:13'),
(22, 'Moonbeams 1 (MB1)', 'Vũ Quốc Tuấn', NULL, NULL, '<ul>\r\n	<li><span style=\"font-size:18px;\">Xướng âm đoạn nhạc</span></li>\r\n	<li><span style=\"font-size:18px;\">Luyện tập gam cùng hợp âm cơ bản bậc I, IV, V7&nbsp; ( 6 gam )</span></li>\r\n	<li><span style=\"font-size:18px;\">Diễn tấu các bản nhạc cơ bản và mở rộng</span></li>\r\n	<li><span style=\"font-size:18px;\">Trải nghiệm hòa tấu đàn phím và tiết tấu</span></li>\r\n	<li><span style=\"font-size:18px;\">Dịch giọng theo kiểu mẫu cơ bản</span></li>\r\n	<li><span style=\"font-size:18px;\">Hiểu và sử dụng cách chơi ngắt âm (nonlegato) và chơi liền tiếng (legato)</span></li>\r\n</ul>', NULL, 0, '_self', 'noindex,follow', 100, NULL, NULL, 'Moonbeams 1 (MB1)', 'on', 'off', 'moonbeams-1-mb1', 'Moonbeams 1 (MB1)', NULL, NULL, 1, '2018-04-21 02:26:08', '2018-04-21 02:26:08'),
(23, 'Moonbeams 2 (MB2)', 'Vũ Quốc Tuấn', NULL, NULL, '<ul>\r\n	<li><span style=\"font-size:18px;\">Học ít nhất tám giọng, tiếp tục học về gam hòa âm cùng các hợp âm cơ bản</span></li>\r\n	<li><span style=\"font-size:18px;\">Thực hành các đoạn đệm bao gồm các âm rời và chơi các đoạn giai điệu</span></li>\r\n	<li><span style=\"font-size:18px;\">Học ba dạng gam thứ: tự nhiên, hòa âm, giai điệu</span></li>\r\n	<li><span style=\"font-size:18px;\">Học đảo hợp âm ba nốt</span></li>\r\n	<li><span style=\"font-size:18px;\">Học về nhịp điệu</span></li>\r\n	<li><span style=\"font-size:18px;\">Học nhịp 6/8</span></li>\r\n	<li><span style=\"font-size:18px;\">Tiếp tục học tên các nốt trên dòng kẻ phụ và đọc có điểm nhấn.</span></li>\r\n	<li><span style=\"font-size:18px;\">Được giới thiệu và học phân tích âm nhạc cơ bản.</span></li>\r\n	<li><span style=\"font-size:18px;\">Tiếp tục thực hành hòa âm và chuyển giọng, sáng tác và sắp xếp công năng.</span></li>\r\n	<li><span style=\"font-size:18px;\">Tiếp tục nghe cao độ, nhịp, điểm nhấn, và các cách đệm đàn.</span></li>\r\n</ul>', NULL, 0, '_self', 'noindex,follow', 100, NULL, NULL, 'Moonbeams 2 (MB2)', 'on', 'off', 'moonbeams-2-mb2', 'Moonbeams 2 (MB2)', NULL, NULL, 1, '2018-04-21 02:27:24', '2018-04-21 02:27:24'),
(24, 'Moonbeams 3 (MB3)', 'Vũ Quốc Tuấn', NULL, NULL, '<p><span style=\"font-size:18px;\">Moonbeam 3 là cấp độ cuối cùng kết thúc khóa học piano cơ bản của chương trình MYC. Phương pháp MYC được biên soạn với mục đích tổng hợp và chuẩn bị cho học sinh tham gia kỳ thi piano &amp; lý thuyết đầu tiên vào cuối chương trình Moonbeam 3. Đây là năm học nhiều thú vị cho học sinh, phụ huynh cũng như giáo viên bởi các học sinh giờ đây đã học được khá nhiều kiến thức, hiểu và có nhận thức về âm nhạc trong việc chơi piano cũng như các em có thể vận dụng và tham gia toàn bộ kiến thức của mình qua các nội dung đã học : lý thuyết, sáng tác, hòa thanh, nhạc lý&nbsp; trong suốt chặng đường học nhạc tại MYC.</span></p>', NULL, 0, '_self', 'noindex,follow', 100, NULL, NULL, 'Moonbeams 3 (MB3)', 'on', 'off', 'moonbeams-3-mb3', 'Moonbeams 3 (MB3)', NULL, NULL, 1, '2018-04-21 02:27:52', '2018-04-21 02:27:52'),
(25, 'Yêu cầu để trở thành giáo viên MYC', 'Vũ Quốc Tuấn', NULL, NULL, '<h1 id=\"page-title\">Đẹp trai</h1>', NULL, 0, '_self', 'noindex,follow', 100, NULL, NULL, 'Yêu cầu để trở thành giáo viên MYC', 'on', 'off', 'yeu-cau-de-tro-thanh-giao-vien-myc', 'Yêu cầu để trở thành giáo viên MYC', NULL, NULL, 1, '2018-04-21 02:37:23', '2018-04-21 04:11:11'),
(26, 'Tại sao nên trở thành giáo viên MYC', 'Vũ Quốc Tuấn', NULL, NULL, '<p><span style=\"font-size:18px;\">Chương trình MYC - Music for Young Children được thiết kế phù hợp cho trẻ em đồng thời đáp ứng được mong muốn của các bậc phụ huynh, những người muốn cho con mình học piano một cách hiệu quả nhất. MYC cung cấp một chương trình âm nhạc toàn diện với sự&nbsp; kết hợp giữa việc chơi đàn, ca hát, luyện tai nghe, lý thuyết âm nahcj, nhiệp điệu tiết tấu, soạn nhạc.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">Trẻ em trong độ tuổi từ 3 đến 15 và các bậc phụ huynh sẽ được tiếp cận một nền giáo dục âm nhạc thực thụ trong môi trường học tập theo nhóm vui nhộn, giúp phát huy tối đa sự tham gia của trẻ cũng như phụ huynh các em vào chương trình học.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">&nbsp;Không giống như giáo viên dạy tại nhà hoặc các chương trình quốc tế, chương trình của MYC kết hợp các phương pháp giáo dục trẻ nhỏ đi đôi với lý thuyết âm nhạc trong cùng một chương trình giảng dạy nghiêm túc đã được công nhận bởi Giáo sư - Viện trưởng Học viện âm nhạc Hoàng Gia Canada .</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">&nbsp;Với hơn 36 năm kinh nghiệm trong lĩnh vực giáo dục và phát triển chương trình giảng dạy, với một đội ngũ giáo viên uy tín, các bậc phụ huynh có thể tin tưởng hoàn toàn vào danh tiếng, chất lượng đào tạo của chương trình này.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><span style=\"font-size:18px;\"><em><strong>Vì sao bạn nên trở thành giáo viên MYC?</strong></em></span></h3>\r\n\r\n<p><span style=\"font-size:18px;\">Là một giáo viên của MYC, bạn sẽ giúp các bậc phụ huynh hiểu được tầm quan trọng của việc giáo dục âm nhạc cho trẻ em . Bạn sẽ giúp chúng tôi thành lập các lớp học âm nhạc chất lượng cao để các bé có thể nhận được một nền giáo dục chất lượng ngay từ khi còn nhỏ.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">Các bài học âm nhạc, được dạy theo từng nhóm nhỏ, giúp tăng chỉ số IQ và đem đến những giờ học lí thú, tạo môi trường cho các bé tự học hỏi lẫn nhau. Tại MYC, chúng tôi hỗ trợ các giáo viên thông qua các điều phối viên đến từ Canada , giúp các bạn chia sẻ các ý tưởng, thông tin và kinh nghiệm với các giáo viên khác qua thư từ.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">Các điều phối viên Canada cũng sẽ dự giờ các lớp học ít nhất một lần một năm để kịp thời đóng góp ý kiến xây dựng và hỗ trợ cho các bạn.</span></p>', NULL, 0, '_self', 'noindex,follow', 100, NULL, NULL, 'Tại sao nên trở thành giáo viên MYC', 'on', 'off', 'tai-sao-nen-tro-thanh-giao-vien-myc', 'Tại sao nên trở thành giáo viên MYC', NULL, NULL, 1, '2018-04-21 02:37:49', '2018-04-21 02:37:49'),
(27, 'Mẫu đăng kí ứng tuyển giáo viên', 'Vũ Quốc Tuấn', NULL, NULL, NULL, NULL, 0, '_self', 'noindex,follow', 100, NULL, NULL, 'Mẫu đăng kí ứng tuyển giáo viên', 'on', 'off', 'mau-dang-ki-ung-tuyen-giao-vien', 'Mẫu đăng kí ứng tuyển giáo viên', NULL, NULL, 1, '2018-04-21 03:47:54', '2018-04-21 03:47:54'),
(28, 'Liên kết website', 'Vũ Quốc Tuấn', NULL, NULL, '<ul>\r\n	<li>\r\n	<p><span style=\"font-size:18px;\"><a href=\"http://myc.com/\" target=\"_blank\">MYC Canada</a></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:18px;\"><a href=\"http://www.myckorea.co.kr/\" target=\"_blank\">MYC Korea</a></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:18px;\"><a href=\"http://www.mycsingapore.com.sg/\" target=\"_blank\">MYC Singapore</a></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:18px;\"><a href=\"http://www.mycmalaysia.com.my/default.htm\" target=\"_blank\">MYC Malaysia</a></span></p>\r\n	</li>\r\n</ul>', NULL, 0, '_self', 'noindex,follow', 100, NULL, NULL, 'Liên kết website', 'on', 'off', 'lien-ket-website', 'Liên kết website', NULL, NULL, 1, '2018-04-21 04:24:23', '2018-04-21 04:24:23'),
(29, 'Liên hệ', 'Vũ Quốc Tuấn', NULL, NULL, '<h3><span style=\"font-size:18px;\">MYCVietnam</span></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px;\"><strong><u>Địa chỉ liên lạc đăng kí học :</u>&nbsp;</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><strong>* TẠI HÀ NỘI :<br />\r\n-&nbsp; Chi nhánh 1 : 671 Hoàng Hoa Thám, phường Vĩnh Phúc, quận Ba Đình, Hà Nội, Việt nam .<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Telephone:(84-24) 62975321</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><strong>&nbsp;- Chi nhánh 2 : 14 Trần Bình Trọng (trong khuôn viên khách sạn Công Đoàn), Hà nội, Việt Nam.</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Telephone:(84-24) 62975322</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px;\"><strong>- Chi nhánh 3 :&nbsp; 68 Nguyễn Chí Thanh, Hà Nội, Việt Nam<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Telephone :(84-24) 62975544</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px;\"><strong>* TẠI TP.HỒ CHÍ MINH :</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><strong>33CDE Bulding, 6th floor,&nbsp;Nguyễn Bỉnh Khiêm Bulding, Phường Đa Kao, Quận 1</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><strong>Telephone : (84-28)39100622 -&nbsp;0914386835</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><strong>Thời gian&nbsp;làm việc :</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><strong>&nbsp;Ngày trong tuần từ 14h30-19h30</strong><br />\r\n<strong>&nbsp;Thứ 7 &amp; Chủ nhật từ&nbsp;</strong><strong>8h30 - 11h30 , 14h30-19h</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><strong>- Hotline : 091 305 0981<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><strong><u>Email</u>&nbsp;:&nbsp;</strong><a href=\"mailto:myc@mycvietnam.com\" target=\"_blank\"><strong>myc@mycvietnam.com</strong></a></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><strong><u>Website</u>&nbsp;:&nbsp;</strong><a href=\"http://mycvietnam.com/\" target=\"_blank\"><strong>mycvietnam.com</strong></a></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><a href=\"http://mycvietnam.com/\" target=\"_blank\"><strong>Facebook : MYCVietnam-Dạy Piano theo phương pháp của MYC Canada</strong></a></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><span style=\"font-size:18px;\"><em>MYC Quốc tế</em></span></h2>\r\n\r\n<p><span style=\"font-size:18px;\">Address:&nbsp;39 Leacock Way, </span><span style=\"font-size:18px;\">Kanata ,</span><span style=\"font-size:18px;\"> ON&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; K2K 1T1, Canada Telephone:&nbsp;(613) 592-7565<br />\r\nFax:&nbsp;(613) 592-9353<br />\r\nToll free: 1-800-561-1692<br />\r\nE-Mail:&nbsp;&nbsp;<a href=\"mailto:myc@myc.com\" target=\"_blank\">myc@myc.com</a><br />\r\nHuman Resources:&nbsp;&nbsp;<a href=\"mailto:careers@myc.com\" target=\"_blank\">careers@myc.com</a></span></p>', NULL, 0, '_self', 'noindex,follow', 100, NULL, NULL, 'Liên hệ', 'on', 'off', 'lien-he', 'Liên hệ', NULL, NULL, 1, '2018-04-21 04:25:10', '2018-04-21 04:25:10'),
(30, 'Lịch sử MYC', 'Vũ Quốc Tuấn', NULL, NULL, '<p><span style=\"font-size:18px;\">Tháng 3 năm 1980, tại Dartmouth - Nova Scotia, bà Frances Balodis đã hình thành một mục tiêu rõ ràng rằng : Phải xây dựng được một chương trình âm nhạc đáp ứng được nhu cầu giảng dạy âm nhạc chất lượng dành cho trẻ nhỏ.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">Với 21 năm kinh nghiệm giảng dạy âm nhạc của mình, bà Frances cùng với chồng là Gunars bắt đầu biên soạn một chương trình giảng dạy âm nhạc toàn diện nhằm phát huy thế mạnh và khả năng âm nhạc của trẻ nhỏ.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">Hiện nay, hàng năm MYC có hơn 24.000 học sinh, 900 giáo viên tại ba châu lục. Hơn 400.000 học sinh đã tham gia các lớp học của MYC. Giáo trình giảng dạy của MYC đã được cải tiến và hoàn thiện qua các năm nhằm mục tiêu ngày càng nâng cao chất lượng trong giáo dục âm nhạc và giảng dạy đàn piano.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">Trải qua các chặng đường phát triển, MYC vẫn giữ nguyên&nbsp; các nguyên lý và giấc mơ âm nhạc của mình :</span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><em><strong>Âm nhạc là món quà dành cho cả cuộc đời, tất cả trẻ em đều xứng đáng được nhận một nền giáo dục âm nhạc thật sự có chất lượng.</strong></em></span></p>\r\n\r\n<hr />\r\n<h2><span style=\"font-size:18px;\">Các cột mốc phát triển của MYC</span></h2>', NULL, 0, '_self', 'noindex,follow', 100, NULL, NULL, 'Lịch sử MYC', 'on', 'off', 'lich-su-myc', 'Lịch sử MYC', NULL, NULL, 1, '2018-04-21 04:35:28', '2018-04-21 04:35:28'),
(31, 'Chương trình học', 'Vũ Quốc Tuấn', NULL, NULL, '<p><span style=\"font-size:18px;\">Hiểu biết về ngôn ngữ âm nhạc bao hàm nhiều hơn việc chỉ đơn giản biết chơi một loại nhạc cụ. MYC giúp những người tham gia (trẻ em và phụ huynh) hình thành hiểu biết cơ bản và vững chắc về âm nhạc. Phương pháp đa giác quan bao gồm đọc nốt nhạc, nhạc lý, kỹ thuật chơi đàn, lịch sử âm nhạc, thẩm âm, vận động, xướng âm, hòa âm, thị tấu, sáng tác và hòa tấu sẽ trang bị cho học sinh hệ thống kỹ năng đa dạng cần thiết cho việc học nhạc.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">Học sinh MYC có khả năng đạt được những thành công trong tương lai do các em được tiếp nhận nền giáo dục phát triển kỹ năng âm nhạc từ giai đoạn khởi đầu một cách toàn diện.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">Học sinh hoàn thành khóa học nâng cao tại MYC cũng là những em được chuẩn bị kỹ lưỡng cho việc học đàn piano ở trình độ tiền trung cấp hoặc theo học nhạc cụ khác.</span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><em>“Rất nhiều em trong số những học sinh mới hàng năm tham gia lớp học của tôi là những em đã tốt nghiệp tại MYC. Các em được trang bị xuất sắc về kiến thức âm nhạc và có động lực tích cực trên con đường học tập âm nhạc”.</em>&nbsp;<em>Marc Widner, Trưởng Giám thị danh dự, Nhạc viện Hoàng gia Canada.</em></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><em>Lựa chọn chương trình học và thông tin chi tiết của mỗi cấp học theo lứa tuổi ghi bên dưới.</em></span></p>', NULL, 0, '_self', 'noindex,follow', 100, NULL, NULL, 'Chương trình học', 'on', 'off', 'chuong-trinh-hoc', 'Chương trình học', NULL, NULL, 1, '2018-04-23 03:24:27', '2018-04-23 03:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `access` int(11) NOT NULL,
  `target_open` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_robot` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewed` int(11) NOT NULL DEFAULT '100',
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `access`, `target_open`, `meta_robot`, `viewed`, `youtube`, `image`, `alt`, `status`, `slug`, `title_tag`, `meta_keywords_tag`, `meta_description_tag`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Bài đăng 1', '<p>Bài đăng 1</p>', 0, '_self', 'noindex,follow', 100, NULL, 'http://localhost/myc-cms-vi/public/uploads/7d33bf4db7c9ac9fae6b8488a930179f/files/Untitled.png', 'Bài đăng 1', 'on', 'bai-dang-1', 'Bài đăng 1', NULL, NULL, 1, '2018-04-19 09:08:27', '2018-04-19 09:08:27'),
(2, 'Bài đăng 2', '<p>Bài đăng 2</p>', 0, '_self', 'noindex,follow', 100, NULL, 'http://localhost/myc-cms-vi/public/uploads/7d33bf4db7c9ac9fae6b8488a930179f/files/Untitled.png', 'Bài đăng 2', 'on', 'bai-dang-2', 'Bài đăng 2', NULL, NULL, 1, '2018-04-19 09:08:41', '2018-04-19 09:08:41'),
(3, 'Bài đăng 3', '<p>Bài đăng 3</p>', 0, '_self', 'noindex,follow', 100, NULL, 'http://localhost/myc-cms-vi/public/uploads/7d33bf4db7c9ac9fae6b8488a930179f/files/Untitled.png', 'Bài đăng 3', 'off', 'bai-dang-3', 'Bài đăng 3', NULL, NULL, 1, '2018-04-19 09:09:26', '2018-04-19 09:09:26');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `serial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `import_price` int(11) DEFAULT NULL,
  `sale_price` int(11) DEFAULT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `access` int(11) NOT NULL,
  `target_open` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_robot` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewed` int(11) NOT NULL DEFAULT '100',
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `manufacturer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `role` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `description`, `role`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Role Superadmin', 'This is Role for Superadmin', '[\"list_cate\",\"add_cate\",\"edit_cate\",\"delete_cate\",\"list_news\",\"add_news\",\"edit_news\",\"delete_news\",\"list_post\",\"add_post\",\"edit_post\",\"delete_post\",\"list_tag\",\"add_tag\",\"edit_tag\",\"delete_tag\",\"list_attribute\",\"add_attribute\",\"edit_attribute\",\"delete_attribute\",\"list_manufacturer\",\"add_manufacturer\",\"edit_manufacturer\",\"delete_manufacturer\",\"list_product\",\"add_product\",\"edit_product\",\"delete_product\",\"list_position\",\"add_position\",\"edit_position\",\"delete_position\",\"list_banner\",\"add_banner\",\"edit_banner\",\"delete_banner\",\"list_user\",\"add_user\",\"edit_user\",\"delete_user\",\"list_role\",\"add_role\",\"edit_role\",\"delete_role\",\"list_contact\",\"add_contact\",\"edit_contact\",\"delete_contact\",\"config\",\"mail\",\"sent_mail\",\"delete_mail\",\"comment\",\"reply_comment\",\"delete_comment\",\"list_action\",\"delete_one_action\",\"delete_all_action\",\"list_login\",\"delete_one_login\",\"delete_all_login\"]', 1, '2018-04-18 08:43:19', '2018-04-18 08:43:19');

-- --------------------------------------------------------

--
-- Table structure for table `social_login`
--

CREATE TABLE `social_login` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `role_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `level`, `status`, `avatar`, `firstname`, `lastname`, `phone`, `address`, `facebook`, `description`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'superadmin@quoctuan.info', '$2y$10$U.OAUnERoBoeHl3G7QnYFec33K7tDHthdpjEXPi2FSTAHxV2W8di.', 1, 'on', NULL, 'Vũ Quốc', 'Tuấn', NULL, NULL, NULL, NULL, 1, NULL, '2018-04-18 08:43:19', '2018-04-18 08:43:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_product`
--
ALTER TABLE `attribute_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_product_attribute_id_foreign` (`attribute_id`),
  ADD KEY `attribute_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banner_position_id_foreign` (`position_id`),
  ADD KEY `banner_user_id_foreign` (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_user_id_foreign` (`user_id`);

--
-- Indexes for table `category_news`
--
ALTER TABLE `category_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_news_category_id_foreign` (`category_id`),
  ADD KEY `category_news_news_id_foreign` (`news_id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_user_id_foreign` (`user_id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dangki`
--
ALTER TABLE `dangki`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dangkigiaovien`
--
ALTER TABLE `dangkigiaovien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images_news`
--
ALTER TABLE `images_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_news_news_id_foreign` (`news_id`);

--
-- Indexes for table `images_product`
--
ALTER TABLE `images_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_login`
--
ALTER TABLE `log_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mail_user_id_foreign` (`user_id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`),
  ADD KEY `position_user_id_foreign` (`user_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_user_id_foreign` (`user_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_user_id_foreign` (`user_id`),
  ADD KEY `product_manufacturer_id_foreign` (`manufacturer_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_id_foreign` (`user_id`);

--
-- Indexes for table `social_login`
--
ALTER TABLE `social_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `attribute`
--
ALTER TABLE `attribute`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_product`
--
ALTER TABLE `attribute_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `category_news`
--
ALTER TABLE `category_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dangki`
--
ALTER TABLE `dangki`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dangkigiaovien`
--
ALTER TABLE `dangkigiaovien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images_news`
--
ALTER TABLE `images_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images_product`
--
ALTER TABLE `images_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `log_login`
--
ALTER TABLE `log_login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_login`
--
ALTER TABLE `social_login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute_product`
--
ALTER TABLE `attribute_product`
  ADD CONSTRAINT `attribute_product_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attribute` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `banner`
--
ALTER TABLE `banner`
  ADD CONSTRAINT `banner_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`),
  ADD CONSTRAINT `banner_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `category_news`
--
ALTER TABLE `category_news`
  ADD CONSTRAINT `category_news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_news_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `images_news`
--
ALTER TABLE `images_news`
  ADD CONSTRAINT `images_news_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `images_product`
--
ALTER TABLE `images_product`
  ADD CONSTRAINT `images_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `mail`
--
ALTER TABLE `mail`
  ADD CONSTRAINT `mail_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `position`
--
ALTER TABLE `position`
  ADD CONSTRAINT `position_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_manufacturer_id_foreign` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`id`),
  ADD CONSTRAINT `product_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `role_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
