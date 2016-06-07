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

INSERT INTO `foods` (`id`, `name`, `post_recipe`, `menu_id`, `status`, `ask_user_id`, `created_at`, `updated_at`) VALUES
(1, 'SƯỜN NƯỚNG MUỐI ỚT', 'Sườn rửa sạch, để ráo, ướp cùng ít muối và ít bột ngọt, ớt luộc đã bỏ hạt giã nhuyễn. Để 30 phút cho ngấm. Sau đó, đem đi nướng vàng. Ăn kèm với rau củ muối xỏi (gồm cá rốt dưa leo, cà chua hòa cùng nước cốt chanh, đường, ít hạt nêm).', 1, 0, 1, '2016-05-25 08:17:50', '2016-06-05 05:07:12'),
(2, 'ĐẬU BẮP LUỘC', 'Bắc nước sôi, cho ít muối vào, sau đó cho đậu bắp vào luộc trên lửa lớn. Khi đậu vừa chín tới, tắt bếp. Sau đó xả lại bằng nước sôi để nguội cho đậu vẫn có màu xanh đẹp mắt.', 1, 0, 1, '2016-05-25 08:17:50', '2016-06-05 05:04:57'),
(3, 'SƯỜN NƯỚNG MUỐI ỚT', 'Sườn rửa sạch, để ráo, ướp cùng ít muối và ít bột ngọt, ớt luộc đã bỏ hạt giã nhuyễn. Để 30 phút cho ngấm. Sau đó, đem đi nướng vàng. Ăn kèm với rau củ muối xỏi (gồm cá rốt dưa leo, cà chua hòa cùng nước cốt chanh, đường, ít hạt nêm).', 2, 0, 1, '2016-05-25 08:20:12', '2016-06-05 05:08:23'),
(4, 'ĐẬU BẮP LUỘC', 'Bắc nước sôi, cho ít muối vào, sau đó cho đậu bắp vào luộc trên lửa lớn. Khi đậu vừa chín tới, tắt bếp. Sau đó xả lại bằng nước sôi để nguội cho đậu vẫn có màu xanh đẹp mắt.', 2, 0, 1, '2016-05-25 08:20:12', '2016-06-05 05:09:02'),
(5, 'CẢI BÓ XÔI XÀO TỎI', 'Cải rửa sạch cắt khúc để ráo nước. Bắc nồi nước lên bếp, đun thật sôi. Nêm chút muối, cho cải vào trụng sơ rồi vớt ra để ráo, dùng nước luộc rau nêm nếm cho vừa ăn để làm canh.\r\n\r\nPhi tỏi cùng dầu ăn cho thơm rồi cho cải vào xào trên lửa lớn và nhanh, nêm chút hạt nêm. Tắt bếp cho ra đĩa. Thế là bạn đã có món rau ngon.', 2, 0, 1, '2016-05-25 08:20:12', '2016-06-05 03:15:58'),
(6, 'CANH CUA MÙNG TƠI', 'Chuẩn bị:\r\n\r\n- 200g cua đồng\r\n\r\n- Một mớ mồng tơi\r\n\r\n- Gia vị: bột canh, bột ngọt, dầu ăn.\r\n\r\nĐể biết thêm chi tiết, xem tại cách nấu canh cua mùng tơi.', 3, 0, 1, '2016-05-25 08:26:47', '2016-06-05 05:02:43'),
(7, 'NEM RÁN', 'Tuy trời nắng nóng nhưng nem rán vẫn là món ăn ngon, bất chấp thời tiết.\r\n\r\nNguyên liệu:\r\n\r\n- Thịt nạc vai: 300g.\r\n\r\n- 30g miến dong, 2 cái mọc nhĩ, 2 quả trứng vịt.\r\n\r\n- 1 củ cà rốt nhỏ, 1 củ hành tây, 100g giá đỗ, hành lá.\r\n\r\n- 1 thếp bánh đa nem.\r\n\r\n- Gia vị, tiêu, tỏi, chanh, ớt, giấm, đường, nước mắm.\r\n\r\nĐể biết thêm chi tiết, xem tại cách làm nem rán giòn ngon.', 3, 0, 1, '2016-05-25 08:26:47', '2016-06-05 05:02:55'),
(8, 'BÍ NGÒI NHỒI THỊT HẤP', 'Bí ngòi ngâm nước muối loãng, rửa sạch, cắt khúc dài khoảng 5 cm. Dùng thìa khoét bớt ruột bí nhưng nhớ đừng làm thủng đế nhé. Thịt chọn phần nạc vai băm nhỏ, trộn với bột canh, hạt tiêu, hành khô băm nhỏ.\r\n\r\nNhồi thịt vào lòng miếng bí, xếp vào đĩa rồi hấp cách thuỷ khoảng 15 phút. Bí chín gắp ra bày vào đĩa sâu lòng. Lấy phần nước đọng lại trong đĩa khi hấp bí hoà với 2 thìa canh xì dầu, 1 thìa canh dầu hào, 1/2 thìa canh đường, chút bột năng rồi khuấy đều, đun sôi sốt. Rưới nước sốt lên những khoanh bí nhồi rồi thưởng thức nhé.', 4, 0, 1, '2016-05-25 08:32:27', '2016-06-05 04:58:11'),
(9, 'TÔM CHIÊN MUỐI CAY', 'Tôm cắt đầu, đuôi, ướp tôm với chút muối ớt, hạt tiêu và chút đường khoảng 15 phút cho ngấm. Đun nóng chút dầu ăn rồi cho tôm vào chiên đến khi thấy tôm chín và hơi xem xém là được.', 4, 0, 1, '2016-05-25 08:32:27', '2016-06-05 04:55:57'),
(10, 'CANH RAU MÙNG TƠI NẤU TÔM', 'Rau mùng tơi rửa sạch, để ráo. Đầu tôm giã nhuyễn, lọc lấy nước. Đun sôi nước canh, nêm gia vị cho vừa rồi cho rau mùng tơi vào đun sôi bùng một lát là được.', 5, 0, 1, '2016-05-25 08:35:37', '2016-06-05 05:00:20'),
(11, 'BÍ NGÒI NHỒI THỊT HẤP', 'Bí ngòi ngâm nước muối loãng, rửa sạch, cắt khúc dài khoảng 5 cm. Dùng thìa khoét bớt ruột bí nhưng nhớ đừng làm thủng đế nhé. Thịt chọn phần nạc vai băm nhỏ, trộn với bột canh, hạt tiêu, hành khô băm nhỏ.\r\n\r\nNhồi thịt vào lòng miếng bí, xếp vào đĩa rồi hấp cách thuỷ khoảng 15 phút. Bí chín gắp ra bày vào đĩa sâu lòng. Lấy phần nước đọng lại trong đĩa khi hấp bí hoà với 2 thìa canh xì dầu, 1 thìa canh dầu hào, 1/2 thìa canh đường, chút bột năng rồi khuấy đều, đun sôi sốt. Rưới nước sốt lên những khoanh bí nhồi rồi thưởng thức nhé.', 5, 0, 1, '2016-05-25 08:35:37', '2016-06-05 05:02:06'),
(12, 'Thịt ba chỉ cháy cạnh xào chua ngọt', 'Chuẩn bị:\r\n\r\n- 300gr thịt nạc vai\r\n\r\n- 1 mớ hành, 5 thìa nhỏ nước mắm, 3 thìa nhỏ đường, 5 thìa nhỏ giấm, 1 thìa nhỏ mì chính nếu thích\r\n\r\nĐể biết thêm chi tiết, xem tại cách làm thịt ba chỉ cháy cạnh xào chua ngọt.', 6, 1, 1, '2016-05-25 08:38:03', '2016-06-05 10:36:40'),
(13, 'Canh mướp nấu hến', 'Nguyên liệu:\r\n\r\n- Mướp non: 1 quả to\r\n\r\n- Hến tươi: 1 kg\r\n\r\n- Hành khô: 1-2 củ\r\n\r\n- Hành lá\r\n\r\n- Gia vị: dầu ăn, hạt nêm, bột canh, mì chính.\r\n\r\nĐể biết thêm chi tiết, xem tại cách làm canh mướp nấu hến.', 6, 1, 1, '2016-05-25 08:38:03', '2016-06-05 12:11:12');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
