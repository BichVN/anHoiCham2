-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 07, 2016 at 08:27 AM
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

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menuName`, `content`, `user_id`, `tag_id`, `created_at`, `updated_at`, `imgs`) VALUES
(1, 'Thực đơn cơm chiều đơn giản mà ngon', 'Bữa cơm chiều nay nhà mình sẽ có các món:\r\n\r\n- Đậu bắp luộc\r\n\r\n- Sườn nướng muối ớt\r\n\r\n- Cá kèo kho rau răm\r\n\r\n- Cải bó xôi xào tỏi', 1, NULL, '2016-05-25 08:17:50', '2016-05-26 13:30:56', '["1.jpg"]'),
(2, 'Thực đơn cơm chiều đơn giản mà ngon', 'Bữa cơm chiều nay nhà mình sẽ có các món:\r\n\r\n- Đậu bắp luộc\r\n\r\n- Sườn nướng muối ớt\r\n\r\n- Cá kèo kho rau răm\r\n\r\n- Cải bó xôi xào tỏi', 9, NULL, '2016-05-25 08:20:12', '2016-05-26 13:28:58', '["3.jpeg"]'),
(3, 'Bữa cơm chiều ngon miệng cho gia đình', '4 món thịt ba chỉ ngon cho cả nhà\r\nCá ngần rim chua ngọt ngon cơm\r\nBữa ăn chiều nay nhà mình sẽ có các món:\r\nNem rán\r\n\r\n- Canh riêu cua mùng tơi\r\n\r\n- Nộm\r\n\r\n- Cà muối', 10, NULL, '2016-05-25 08:26:47', '2016-05-26 13:23:16', '["1.jpeg"]'),
(4, 'Bữa ăn chiều đơn giản mà ngon', 'Bữa cơm chiều nay nhà mình sẽ có các món:\r\n\r\n- Bí ngòi nhồi thịt hấp\r\n\r\n- Tôm chiên muối cay\r\n\r\n- Đậu Nhật luộc\r\n\r\n- Canh mùng tơi nấu tôm', 5, NULL, '2016-05-25 08:32:27', '2016-05-26 13:39:31', '["cakho.jpeg"]'),
(5, 'Bữa ăn chiều', 'Bữa cơm chiều nay nhà mình sẽ có các món:\r\n\r\n- Bí ngòi nhồi thịt hấp\r\n\r\n- Tôm chiên muối cay\r\n\r\n- Đậu Nhật luộc\r\n\r\n- Canh mùng tơi nấu tôm', 3, NULL, '2016-05-25 08:35:37', '2016-05-26 13:21:38', '["comrang.jpeg", "nemran.jpeg"]'),
(6, 'Bữa cơm ngon miệng cho ngày nắng', 'Bữa cơm chiều nay nhà mình sẽ có các món:\r\n\r\n- Thịt ba chỉ cháy cạnh xào chua ngọt\r\n\r\n- Canh mướp nấu hến\r\n\r\n- Nộm chân gà rút xương\r\n\r\n- Đậu phụ chần', 4, NULL, '2016-05-25 08:38:03', '2016-05-26 14:16:03', '["canh.jpg", "bachirang.jpg"]');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
