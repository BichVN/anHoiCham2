-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 26, 2016 at 02:17 PM
-- Server version: 5.7.10
-- PHP Version: 5.6.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anHoiCham2`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `user_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 'Món ăn ngon quá!', 2, 4, '2016-05-25 08:32:47', '2016-05-25 08:32:47'),
(2, 'Món ăn ngon quá 2', 2, 4, '2016-05-25 08:32:56', '2016-05-25 08:32:56'),
(3, 'Món ăn ngon quá 3', 2, 1, '2016-05-25 08:33:04', '2016-05-25 08:33:04'),
(4, 'Món ăn ngon quá 4', 2, 2, '2016-05-25 08:33:18', '2016-05-25 08:33:18'),
(5, 'ngon', 1, 6, '2016-05-25 13:03:31', '2016-05-25 13:03:31'),
(6, 'dsadsad', 1, 4, '2016-05-26 13:43:54', '2016-05-26 13:43:54'),
(7, 'bnbnbnm', 1, 1, '2016-05-26 14:06:22', '2016-05-26 14:06:22');

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_recipe` text COLLATE utf8_unicode_ci,
  `menu_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `name`, `post_recipe`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 'SƯỜN NƯỚNG MUỐI ỚT', 'Sườn rửa sạch, để ráo, ướp cùng ít muối và ít bột ngọt, ớt luộc đã bỏ hạt giã nhuyễn. Để 30 phút cho ngấm. Sau đó, đem đi nướng vàng. Ăn kèm với rau củ muối xỏi (gồm cá rốt dưa leo, cà chua hòa cùng nước cốt chanh, đường, ít hạt nêm).', 1, '2016-05-25 08:17:50', '2016-05-25 08:17:50'),
(2, 'ĐẬU BẮP LUỘC', 'Bắc nước sôi, cho ít muối vào, sau đó cho đậu bắp vào luộc trên lửa lớn. Khi đậu vừa chín tới, tắt bếp. Sau đó xả lại bằng nước sôi để nguội cho đậu vẫn có màu xanh đẹp mắt.', 1, '2016-05-25 08:17:50', '2016-05-25 08:17:50'),
(3, 'SƯỜN NƯỚNG MUỐI ỚT', 'Sườn rửa sạch, để ráo, ướp cùng ít muối và ít bột ngọt, ớt luộc đã bỏ hạt giã nhuyễn. Để 30 phút cho ngấm. Sau đó, đem đi nướng vàng. Ăn kèm với rau củ muối xỏi (gồm cá rốt dưa leo, cà chua hòa cùng nước cốt chanh, đường, ít hạt nêm).', 2, '2016-05-25 08:20:12', '2016-05-25 08:20:12'),
(4, 'ĐẬU BẮP LUỘC', 'Bắc nước sôi, cho ít muối vào, sau đó cho đậu bắp vào luộc trên lửa lớn. Khi đậu vừa chín tới, tắt bếp. Sau đó xả lại bằng nước sôi để nguội cho đậu vẫn có màu xanh đẹp mắt.', 2, '2016-05-25 08:20:12', '2016-05-25 08:20:12'),
(5, 'CẢI BÓ XÔI XÀO TỎI', 'Cải rửa sạch cắt khúc để ráo nước. Bắc nồi nước lên bếp, đun thật sôi. Nêm chút muối, cho cải vào trụng sơ rồi vớt ra để ráo, dùng nước luộc rau nêm nếm cho vừa ăn để làm canh.\r\n\r\nPhi tỏi cùng dầu ăn cho thơm rồi cho cải vào xào trên lửa lớn và nhanh, nêm chút hạt nêm. Tắt bếp cho ra đĩa. Thế là bạn đã có món rau ngon.', 2, '2016-05-25 08:20:12', '2016-05-25 08:20:12'),
(6, 'CANH CUA MÙNG TƠI', 'Chuẩn bị:\r\n\r\n- 200g cua đồng\r\n\r\n- Một mớ mồng tơi\r\n\r\n- Gia vị: bột canh, bột ngọt, dầu ăn.\r\n\r\nĐể biết thêm chi tiết, xem tại cách nấu canh cua mùng tơi.', 3, '2016-05-25 08:26:47', '2016-05-25 08:26:47'),
(7, 'NEM RÁN', 'Tuy trời nắng nóng nhưng nem rán vẫn là món ăn ngon, bất chấp thời tiết.\r\n\r\nNguyên liệu:\r\n\r\n- Thịt nạc vai: 300g.\r\n\r\n- 30g miến dong, 2 cái mọc nhĩ, 2 quả trứng vịt.\r\n\r\n- 1 củ cà rốt nhỏ, 1 củ hành tây, 100g giá đỗ, hành lá.\r\n\r\n- 1 thếp bánh đa nem.\r\n\r\n- Gia vị, tiêu, tỏi, chanh, ớt, giấm, đường, nước mắm.\r\n\r\nĐể biết thêm chi tiết, xem tại cách làm nem rán giòn ngon.', 3, '2016-05-25 08:26:47', '2016-05-25 08:26:47'),
(8, 'BÍ NGÒI NHỒI THỊT HẤP', 'Bí ngòi ngâm nước muối loãng, rửa sạch, cắt khúc dài khoảng 5 cm. Dùng thìa khoét bớt ruột bí nhưng nhớ đừng làm thủng đế nhé. Thịt chọn phần nạc vai băm nhỏ, trộn với bột canh, hạt tiêu, hành khô băm nhỏ.\r\n\r\nNhồi thịt vào lòng miếng bí, xếp vào đĩa rồi hấp cách thuỷ khoảng 15 phút. Bí chín gắp ra bày vào đĩa sâu lòng. Lấy phần nước đọng lại trong đĩa khi hấp bí hoà với 2 thìa canh xì dầu, 1 thìa canh dầu hào, 1/2 thìa canh đường, chút bột năng rồi khuấy đều, đun sôi sốt. Rưới nước sốt lên những khoanh bí nhồi rồi thưởng thức nhé.', 4, '2016-05-25 08:32:27', '2016-05-25 08:32:27'),
(9, 'TÔM CHIÊN MUỐI CAY', 'Tôm cắt đầu, đuôi, ướp tôm với chút muối ớt, hạt tiêu và chút đường khoảng 15 phút cho ngấm. Đun nóng chút dầu ăn rồi cho tôm vào chiên đến khi thấy tôm chín và hơi xem xém là được.', 4, '2016-05-25 08:32:27', '2016-05-25 08:32:27'),
(10, 'CANH RAU MÙNG TƠI NẤU TÔM', 'Rau mùng tơi rửa sạch, để ráo. Đầu tôm giã nhuyễn, lọc lấy nước. Đun sôi nước canh, nêm gia vị cho vừa rồi cho rau mùng tơi vào đun sôi bùng một lát là được.', 5, '2016-05-25 08:35:37', '2016-05-25 08:35:37'),
(11, 'BÍ NGÒI NHỒI THỊT HẤP', 'Bí ngòi ngâm nước muối loãng, rửa sạch, cắt khúc dài khoảng 5 cm. Dùng thìa khoét bớt ruột bí nhưng nhớ đừng làm thủng đế nhé. Thịt chọn phần nạc vai băm nhỏ, trộn với bột canh, hạt tiêu, hành khô băm nhỏ.\r\n\r\nNhồi thịt vào lòng miếng bí, xếp vào đĩa rồi hấp cách thuỷ khoảng 15 phút. Bí chín gắp ra bày vào đĩa sâu lòng. Lấy phần nước đọng lại trong đĩa khi hấp bí hoà với 2 thìa canh xì dầu, 1 thìa canh dầu hào, 1/2 thìa canh đường, chút bột năng rồi khuấy đều, đun sôi sốt. Rưới nước sốt lên những khoanh bí nhồi rồi thưởng thức nhé.', 5, '2016-05-25 08:35:37', '2016-05-25 08:35:37'),
(12, 'Thịt ba chỉ cháy cạnh xào chua ngọt', 'Chuẩn bị:\r\n\r\n- 300gr thịt nạc vai\r\n\r\n- 1 mớ hành, 5 thìa nhỏ nước mắm, 3 thìa nhỏ đường, 5 thìa nhỏ giấm, 1 thìa nhỏ mì chính nếu thích\r\n\r\nĐể biết thêm chi tiết, xem tại cách làm thịt ba chỉ cháy cạnh xào chua ngọt.', 6, '2016-05-25 08:38:03', '2016-05-25 08:38:03'),
(13, 'Canh mướp nấu hến', 'Nguyên liệu:\r\n\r\n- Mướp non: 1 quả to\r\n\r\n- Hến tươi: 1 kg\r\n\r\n- Hành khô: 1-2 củ\r\n\r\n- Hành lá\r\n\r\n- Gia vị: dầu ăn, hạt nêm, bột canh, mì chính.\r\n\r\nĐể biết thêm chi tiết, xem tại cách làm canh mướp nấu hến.', 6, '2016-05-25 08:38:03', '2016-05-25 08:38:03');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `menuName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `ask_user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `imgs` varchar(255) COLLATE utf8_unicode_ci DEFAULT '--- []\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menuName`, `content`, `user_id`, `tag_id`, `status`, `ask_user_id`, `created_at`, `updated_at`, `imgs`) VALUES
(1, 'Thực đơn cơm chiều đơn giản mà ngon', 'Bữa cơm chiều nay nhà mình sẽ có các món:\r\n\r\n- Đậu bắp luộc\r\n\r\n- Sườn nướng muối ớt\r\n\r\n- Cá kèo kho rau răm\r\n\r\n- Cải bó xôi xào tỏi', 1, NULL, 0, 1, '2016-05-25 08:17:50', '2016-05-26 13:30:56', '["1.jpg"]'),
(2, 'Thực đơn cơm chiều đơn giản mà ngon', 'Bữa cơm chiều nay nhà mình sẽ có các món:\r\n\r\n- Đậu bắp luộc\r\n\r\n- Sườn nướng muối ớt\r\n\r\n- Cá kèo kho rau răm\r\n\r\n- Cải bó xôi xào tỏi', 9, NULL, 0, 1, '2016-05-25 08:20:12', '2016-05-26 13:28:58', '["3.jpeg"]'),
(3, 'Bữa cơm chiều ngon miệng cho gia đình', '4 món thịt ba chỉ ngon cho cả nhà\r\nCá ngần rim chua ngọt ngon cơm\r\nBữa ăn chiều nay nhà mình sẽ có các món:\r\nNem rán\r\n\r\n- Canh riêu cua mùng tơi\r\n\r\n- Nộm\r\n\r\n- Cà muối', 10, NULL, 0, 1, '2016-05-25 08:26:47', '2016-05-26 13:23:16', '["1.jpeg"]'),
(4, 'Bữa ăn chiều đơn giản mà ngon', 'Bữa cơm chiều nay nhà mình sẽ có các món:\r\n\r\n- Bí ngòi nhồi thịt hấp\r\n\r\n- Tôm chiên muối cay\r\n\r\n- Đậu Nhật luộc\r\n\r\n- Canh mùng tơi nấu tôm', 5, NULL, 1, 1, '2016-05-25 08:32:27', '2016-05-26 13:39:31', '["cakho.jpeg"]'),
(5, 'Bữa ăn chiều', 'Bữa cơm chiều nay nhà mình sẽ có các món:\r\n\r\n- Bí ngòi nhồi thịt hấp\r\n\r\n- Tôm chiên muối cay\r\n\r\n- Đậu Nhật luộc\r\n\r\n- Canh mùng tơi nấu tôm', 3, NULL, 0, 1, '2016-05-25 08:35:37', '2016-05-26 13:21:38', '["comrang.jpeg", "nemran.jpeg"]'),
(6, 'Bữa cơm ngon miệng cho ngày nắng', 'Bữa cơm chiều nay nhà mình sẽ có các món:\r\n\r\n- Thịt ba chỉ cháy cạnh xào chua ngọt\r\n\r\n- Canh mướp nấu hến\r\n\r\n- Nộm chân gà rút xương\r\n\r\n- Đậu phụ chần', 4, NULL, 1, 1, '2016-05-25 08:38:03', '2016-05-26 14:16:03', '["canh.jpg", "bachirang.jpg"]');

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--

CREATE TABLE `relationships` (
  `id` int(11) NOT NULL,
  `follower_id` int(11) DEFAULT NULL,
  `followed_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `relationships`
--

INSERT INTO `relationships` (`id`, `follower_id`, `followed_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2016-05-25 08:16:52', '2016-05-25 08:16:52'),
(2, 1, 4, '2016-05-25 08:16:52', '2016-05-25 08:16:52'),
(3, 1, 5, '2016-05-25 08:16:52', '2016-05-25 08:16:52'),
(4, 1, 6, '2016-05-25 08:16:52', '2016-05-25 08:16:52'),
(5, 4, 1, '2016-05-25 08:16:52', '2016-05-25 08:16:52'),
(6, 5, 1, '2016-05-25 08:16:52', '2016-05-25 08:16:52'),
(7, 6, 1, '2016-05-25 08:16:52', '2016-05-25 08:16:52'),
(8, 7, 1, '2016-05-25 08:16:52', '2016-05-25 08:16:52'),
(9, 8, 1, '2016-05-25 08:16:52', '2016-05-25 08:16:52'),
(10, 9, 1, '2016-05-25 08:16:52', '2016-05-25 08:16:52'),
(11, 10, 1, '2016-05-25 08:16:52', '2016-05-25 08:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20160303024100'),
('20160303025100'),
('20160303142153'),
('20160304020326'),
('20160314130416'),
('20160317074230'),
('20160515024503'),
('20160515075822'),
('20160517031444');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `name`, `avatar`) VALUES
(1, 'example@mail.com', '$2a$10$FYaIp6jkK4ncvgr8CnWIteo6RAHq0dUrOk2rGv29SAmqLvw1rWXlO', NULL, NULL, NULL, 3, '2016-05-26 12:30:57', '2016-05-25 13:03:23', '::1', '::1', '2016-05-25 08:16:50', '2016-05-26 12:30:57', 'Example User', NULL),
(2, 'example-1@mail.com', '$2a$10$BcImQcZMArMFLENpOGY/FOFXZy/Rgxh/ellOJGRfW/CV7I8p27uQu', NULL, NULL, NULL, 1, '2016-05-25 08:29:49', '2016-05-25 08:29:49', '::1', '::1', '2016-05-25 08:16:51', '2016-05-25 08:29:49', 'Justen Monahan DDS', NULL),
(3, 'example-2@mail.com', '$2a$10$0qepVRYJ4MNyFYZFJdw/zebQVuoQAQm8QhoxBgHp4oqgNa/FE0B3O', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2016-05-25 08:16:51', '2016-05-25 08:16:51', 'Ayla Bailey Sr.', NULL),
(4, 'example-3@mail.com', '$2a$10$Vfpb1ZfbF0eYvEE9A8mGeekJC5hw2XE3pLDZP0MMeHiT1TVf.QKiS', NULL, NULL, NULL, 1, '2016-05-25 08:34:18', '2016-05-25 08:34:18', '::1', '::1', '2016-05-25 08:16:51', '2016-05-25 08:34:18', 'Ronny Rippin', NULL),
(5, 'example-4@mail.com', '$2a$10$83NjUe.E2rBIBBRbnQrU1uSXDg935a5LnucAs9/VlIwHZet2/tRl.', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2016-05-25 08:16:51', '2016-05-25 08:16:51', 'Elenora Quitzon V', NULL),
(6, 'example-5@mail.com', '$2a$10$rKwbmvIxM/PjXlMRCIJSMeVFzfmfmAqGSkhoedinSvoTb4EN.nyeu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2016-05-25 08:16:51', '2016-05-25 08:16:51', 'Quinton Anderson', NULL),
(7, 'example-6@mail.com', '$2a$10$0xAuQDGSW5iU4RFRXtNLdOJMbL/QAvzdjjvgM6ID1MrDcEEoE6l96', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2016-05-25 08:16:51', '2016-05-25 08:16:51', 'Zena Howe', NULL),
(8, 'example-7@mail.com', '$2a$10$MvHwUmcPICjRMXWy1JcSz.PMefcx6l5bMxWkvWkA/myWWAXSTjzjG', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2016-05-25 08:16:51', '2016-05-25 08:16:51', 'Rickey Prosacco', NULL),
(9, 'example-8@mail.com', '$2a$10$Ibi.lLlc49J7G7h/nU4GPurtToEa/6p/hZEj8Y9dvt5OtjxP2vNgy', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2016-05-25 08:16:51', '2016-05-25 08:16:51', 'Mr. Ally Luettgen', NULL),
(10, 'example-9@mail.com', '$2a$10$VS3U1ll/1a9Xi1HSN/vfnus2qGa8JGthfKM5alaOiwuxbtNF3LQRu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2016-05-25 08:16:51', '2016-05-25 08:16:51', 'Annette Shields Jr.', NULL),
(11, 'example-10@mail.com', '$2a$10$9mvKXZtYbHrL4P3B2cueL.B4PiBzp.edn8U7Ds3Z.Ry17NF2fd4cO', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2016-05-25 08:16:52', '2016-05-25 08:16:52', 'Mrs. Jaylon Mayer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `votable_id` int(11) DEFAULT NULL,
  `votable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `voter_id` int(11) DEFAULT NULL,
  `voter_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vote_flag` tinyint(1) DEFAULT NULL,
  `vote_scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vote_weight` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `votable_id`, `votable_type`, `voter_id`, `voter_type`, `vote_flag`, `vote_scope`, `vote_weight`, `created_at`, `updated_at`) VALUES
(1, 4, 'Menu', 2, 'User', 1, NULL, 1, '2016-05-25 08:32:31', '2016-05-25 08:32:31'),
(2, 6, 'Menu', 1, 'User', 1, NULL, 1, '2016-05-26 12:55:18', '2016-05-26 12:55:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_comments_on_user_id` (`user_id`),
  ADD KEY `index_comments_on_menu_id` (`menu_id`),
  ADD KEY `index_comments_on_user_id_and_created_at` (`user_id`,`created_at`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foods_on_menu_id` (`menu_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_menus_on_user_id` (`user_id`),
  ADD KEY `index_menus_on_tag_id` (`tag_id`),
  ADD KEY `index_menus_on_user_id_and_created_at` (`user_id`,`created_at`);

--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_relationships_on_follower_id_and_followed_id` (`follower_id`,`followed_id`),
  ADD KEY `index_relationships_on_follower_id` (`follower_id`),
  ADD KEY `index_relationships_on_followed_id` (`followed_id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD UNIQUE KEY `unique_schema_migrations` (`version`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_tags_on_user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_users_on_email` (`email`),
  ADD UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_votes_on_voter_id_and_voter_type_and_vote_scope` (`voter_id`,`voter_type`,`vote_scope`),
  ADD KEY `index_votes_on_votable_id_and_votable_type_and_vote_scope` (`votable_id`,`votable_type`,`vote_scope`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `relationships`
--
ALTER TABLE `relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_rails_03de2dc08c` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_rails_a01717fde6` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`);

--
-- Constraints for table `foods`
--
ALTER TABLE `foods`
  ADD CONSTRAINT `fk_rails_eedbb56593` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`);

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `fk_rails_c38eb0f938` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_rails_c68dbf661c` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `fk_rails_e689f6d0cc` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
