-- MySQL dump 10.13  Distrib 5.6.25, for osx10.10 (x86_64)
--
-- Host: localhost    Database: anHoiCham2
-- ------------------------------------------------------
-- Server version	5.6.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_user_id` (`user_id`),
  KEY `index_comments_on_menu_id` (`menu_id`),
  KEY `index_comments_on_user_id_and_created_at` (`user_id`,`created_at`),
  CONSTRAINT `fk_rails_03de2dc08c` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_a01717fde6` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'Món ăn ngon quá!',2,4,'2016-05-25 08:32:47','2016-05-25 08:32:47'),(2,'Món ăn ngon quá 2',2,4,'2016-05-25 08:32:56','2016-05-25 08:32:56'),(3,'Món ăn ngon quá 3',2,1,'2016-05-25 08:33:04','2016-05-25 08:33:04'),(4,'Món ăn ngon quá 4',2,2,'2016-05-25 08:33:18','2016-05-25 08:33:18');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foods`
--

DROP TABLE IF EXISTS `foods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_recipe` text COLLATE utf8_unicode_ci,
  `menu_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_foods_on_menu_id` (`menu_id`),
  CONSTRAINT `fk_rails_eedbb56593` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foods`
--

LOCK TABLES `foods` WRITE;
/*!40000 ALTER TABLE `foods` DISABLE KEYS */;
INSERT INTO `foods` VALUES (1,'SƯỜN NƯỚNG MUỐI ỚT','Sườn rửa sạch, để ráo, ướp cùng ít muối và ít bột ngọt, ớt luộc đã bỏ hạt giã nhuyễn. Để 30 phút cho ngấm. Sau đó, đem đi nướng vàng. Ăn kèm với rau củ muối xỏi (gồm cá rốt dưa leo, cà chua hòa cùng nước cốt chanh, đường, ít hạt nêm).',1,'2016-05-25 08:17:50','2016-05-25 08:17:50'),(2,'ĐẬU BẮP LUỘC','Bắc nước sôi, cho ít muối vào, sau đó cho đậu bắp vào luộc trên lửa lớn. Khi đậu vừa chín tới, tắt bếp. Sau đó xả lại bằng nước sôi để nguội cho đậu vẫn có màu xanh đẹp mắt.',1,'2016-05-25 08:17:50','2016-05-25 08:17:50'),(3,'SƯỜN NƯỚNG MUỐI ỚT','Sườn rửa sạch, để ráo, ướp cùng ít muối và ít bột ngọt, ớt luộc đã bỏ hạt giã nhuyễn. Để 30 phút cho ngấm. Sau đó, đem đi nướng vàng. Ăn kèm với rau củ muối xỏi (gồm cá rốt dưa leo, cà chua hòa cùng nước cốt chanh, đường, ít hạt nêm).',2,'2016-05-25 08:20:12','2016-05-25 08:20:12'),(4,'ĐẬU BẮP LUỘC','Bắc nước sôi, cho ít muối vào, sau đó cho đậu bắp vào luộc trên lửa lớn. Khi đậu vừa chín tới, tắt bếp. Sau đó xả lại bằng nước sôi để nguội cho đậu vẫn có màu xanh đẹp mắt.',2,'2016-05-25 08:20:12','2016-05-25 08:20:12'),(5,'CẢI BÓ XÔI XÀO TỎI','Cải rửa sạch cắt khúc để ráo nước. Bắc nồi nước lên bếp, đun thật sôi. Nêm chút muối, cho cải vào trụng sơ rồi vớt ra để ráo, dùng nước luộc rau nêm nếm cho vừa ăn để làm canh.\r\n\r\nPhi tỏi cùng dầu ăn cho thơm rồi cho cải vào xào trên lửa lớn và nhanh, nêm chút hạt nêm. Tắt bếp cho ra đĩa. Thế là bạn đã có món rau ngon.',2,'2016-05-25 08:20:12','2016-05-25 08:20:12'),(6,'CANH CUA MÙNG TƠI','Chuẩn bị:\r\n\r\n- 200g cua đồng\r\n\r\n- Một mớ mồng tơi\r\n\r\n- Gia vị: bột canh, bột ngọt, dầu ăn.\r\n\r\nĐể biết thêm chi tiết, xem tại cách nấu canh cua mùng tơi.',3,'2016-05-25 08:26:47','2016-05-25 08:26:47'),(7,'NEM RÁN','Tuy trời nắng nóng nhưng nem rán vẫn là món ăn ngon, bất chấp thời tiết.\r\n\r\nNguyên liệu:\r\n\r\n- Thịt nạc vai: 300g.\r\n\r\n- 30g miến dong, 2 cái mọc nhĩ, 2 quả trứng vịt.\r\n\r\n- 1 củ cà rốt nhỏ, 1 củ hành tây, 100g giá đỗ, hành lá.\r\n\r\n- 1 thếp bánh đa nem.\r\n\r\n- Gia vị, tiêu, tỏi, chanh, ớt, giấm, đường, nước mắm.\r\n\r\nĐể biết thêm chi tiết, xem tại cách làm nem rán giòn ngon.',3,'2016-05-25 08:26:47','2016-05-25 08:26:47'),(8,'BÍ NGÒI NHỒI THỊT HẤP','Bí ngòi ngâm nước muối loãng, rửa sạch, cắt khúc dài khoảng 5 cm. Dùng thìa khoét bớt ruột bí nhưng nhớ đừng làm thủng đế nhé. Thịt chọn phần nạc vai băm nhỏ, trộn với bột canh, hạt tiêu, hành khô băm nhỏ.\r\n\r\nNhồi thịt vào lòng miếng bí, xếp vào đĩa rồi hấp cách thuỷ khoảng 15 phút. Bí chín gắp ra bày vào đĩa sâu lòng. Lấy phần nước đọng lại trong đĩa khi hấp bí hoà với 2 thìa canh xì dầu, 1 thìa canh dầu hào, 1/2 thìa canh đường, chút bột năng rồi khuấy đều, đun sôi sốt. Rưới nước sốt lên những khoanh bí nhồi rồi thưởng thức nhé.',4,'2016-05-25 08:32:27','2016-05-25 08:32:27'),(9,'TÔM CHIÊN MUỐI CAY','Tôm cắt đầu, đuôi, ướp tôm với chút muối ớt, hạt tiêu và chút đường khoảng 15 phút cho ngấm. Đun nóng chút dầu ăn rồi cho tôm vào chiên đến khi thấy tôm chín và hơi xem xém là được.',4,'2016-05-25 08:32:27','2016-05-25 08:32:27'),(10,'CANH RAU MÙNG TƠI NẤU TÔM','Rau mùng tơi rửa sạch, để ráo. Đầu tôm giã nhuyễn, lọc lấy nước. Đun sôi nước canh, nêm gia vị cho vừa rồi cho rau mùng tơi vào đun sôi bùng một lát là được.',5,'2016-05-25 08:35:37','2016-05-25 08:35:37'),(11,'BÍ NGÒI NHỒI THỊT HẤP','Bí ngòi ngâm nước muối loãng, rửa sạch, cắt khúc dài khoảng 5 cm. Dùng thìa khoét bớt ruột bí nhưng nhớ đừng làm thủng đế nhé. Thịt chọn phần nạc vai băm nhỏ, trộn với bột canh, hạt tiêu, hành khô băm nhỏ.\r\n\r\nNhồi thịt vào lòng miếng bí, xếp vào đĩa rồi hấp cách thuỷ khoảng 15 phút. Bí chín gắp ra bày vào đĩa sâu lòng. Lấy phần nước đọng lại trong đĩa khi hấp bí hoà với 2 thìa canh xì dầu, 1 thìa canh dầu hào, 1/2 thìa canh đường, chút bột năng rồi khuấy đều, đun sôi sốt. Rưới nước sốt lên những khoanh bí nhồi rồi thưởng thức nhé.',5,'2016-05-25 08:35:37','2016-05-25 08:35:37'),(12,'Thịt ba chỉ cháy cạnh xào chua ngọt','Chuẩn bị:\r\n\r\n- 300gr thịt nạc vai\r\n\r\n- 1 mớ hành, 5 thìa nhỏ nước mắm, 3 thìa nhỏ đường, 5 thìa nhỏ giấm, 1 thìa nhỏ mì chính nếu thích\r\n\r\nĐể biết thêm chi tiết, xem tại cách làm thịt ba chỉ cháy cạnh xào chua ngọt.',6,'2016-05-25 08:38:03','2016-05-25 08:38:03'),(13,'Canh mướp nấu hến','Nguyên liệu:\r\n\r\n- Mướp non: 1 quả to\r\n\r\n- Hến tươi: 1 kg\r\n\r\n- Hành khô: 1-2 củ\r\n\r\n- Hành lá\r\n\r\n- Gia vị: dầu ăn, hạt nêm, bột canh, mì chính.\r\n\r\nĐể biết thêm chi tiết, xem tại cách làm canh mướp nấu hến.',6,'2016-05-25 08:38:03','2016-05-25 08:38:03');
/*!40000 ALTER TABLE `foods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `imgs` varchar(255) COLLATE utf8_unicode_ci DEFAULT '--- []\n',
  PRIMARY KEY (`id`),
  KEY `index_menus_on_user_id` (`user_id`),
  KEY `index_menus_on_tag_id` (`tag_id`),
  KEY `index_menus_on_user_id_and_created_at` (`user_id`,`created_at`),
  CONSTRAINT `fk_rails_c38eb0f938` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_c68dbf661c` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Thực đơn cơm chiều đơn giản mà ngon','Bữa cơm chiều nay nhà mình sẽ có các món:\r\n\r\n- Đậu bắp luộc\r\n\r\n- Sườn nướng muối ớt\r\n\r\n- Cá kèo kho rau răm\r\n\r\n- Cải bó xôi xào tỏi',1,NULL,'2016-05-25 08:17:50','2016-05-25 08:17:50','[\"1.jpg\"]'),(2,'Thực đơn cơm chiều đơn giản mà ngon','Bữa cơm chiều nay nhà mình sẽ có các món:\r\n\r\n- Đậu bắp luộc\r\n\r\n- Sườn nướng muối ớt\r\n\r\n- Cá kèo kho rau răm\r\n\r\n- Cải bó xôi xào tỏi',1,NULL,'2016-05-25 08:20:12','2016-05-25 08:20:12','[\"3.jpeg\"]'),(3,'Bữa cơm chiều ngon miệng cho gia đình','4 món thịt ba chỉ ngon cho cả nhà\r\nCá ngần rim chua ngọt ngon cơm\r\nBữa ăn chiều nay nhà mình sẽ có các món:\r\nNem rán\r\n\r\n- Canh riêu cua mùng tơi\r\n\r\n- Nộm\r\n\r\n- Cà muối',1,NULL,'2016-05-25 08:26:47','2016-05-25 08:26:47','[\"1.jpeg\"]'),(4,'Bữa ăn chiều đơn giản mà ngon','Bữa cơm chiều nay nhà mình sẽ có các món:\r\n\r\n- Bí ngòi nhồi thịt hấp\r\n\r\n- Tôm chiên muối cay\r\n\r\n- Đậu Nhật luộc\r\n\r\n- Canh mùng tơi nấu tôm',2,NULL,'2016-05-25 08:32:27','2016-05-25 08:32:27','[\"cakho.jpeg\"]'),(5,'Bữa ăn chiều','Bữa cơm chiều nay nhà mình sẽ có các món:\r\n\r\n- Bí ngòi nhồi thịt hấp\r\n\r\n- Tôm chiên muối cay\r\n\r\n- Đậu Nhật luộc\r\n\r\n- Canh mùng tơi nấu tôm',4,NULL,'2016-05-25 08:35:37','2016-05-25 08:35:37','[\"comrang.jpeg\", \"nemran.jpeg\"]'),(6,'Bữa cơm ngon miệng cho ngày nắng','Bữa cơm chiều nay nhà mình sẽ có các món:\r\n\r\n- Thịt ba chỉ cháy cạnh xào chua ngọt\r\n\r\n- Canh mướp nấu hến\r\n\r\n- Nộm chân gà rút xương\r\n\r\n- Đậu phụ chần',4,NULL,'2016-05-25 08:38:03','2016-05-25 08:38:03','[\"canh.jpg\", \"bachirang.jpg\"]');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `follower_id` int(11) DEFAULT NULL,
  `followed_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_relationships_on_follower_id_and_followed_id` (`follower_id`,`followed_id`),
  KEY `index_relationships_on_follower_id` (`follower_id`),
  KEY `index_relationships_on_followed_id` (`followed_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationships`
--

LOCK TABLES `relationships` WRITE;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
INSERT INTO `relationships` VALUES (1,1,3,'2016-05-25 08:16:52','2016-05-25 08:16:52'),(2,1,4,'2016-05-25 08:16:52','2016-05-25 08:16:52'),(3,1,5,'2016-05-25 08:16:52','2016-05-25 08:16:52'),(4,1,6,'2016-05-25 08:16:52','2016-05-25 08:16:52'),(5,4,1,'2016-05-25 08:16:52','2016-05-25 08:16:52'),(6,5,1,'2016-05-25 08:16:52','2016-05-25 08:16:52'),(7,6,1,'2016-05-25 08:16:52','2016-05-25 08:16:52'),(8,7,1,'2016-05-25 08:16:52','2016-05-25 08:16:52'),(9,8,1,'2016-05-25 08:16:52','2016-05-25 08:16:52'),(10,9,1,'2016-05-25 08:16:52','2016-05-25 08:16:52'),(11,10,1,'2016-05-25 08:16:52','2016-05-25 08:16:52');
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20160303024100'),('20160303025100'),('20160303142153'),('20160304020326'),('20160314130416'),('20160317074230'),('20160515024503'),('20160515075822'),('20160517031444');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tags_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_e689f6d0cc` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'example@mail.com','$2a$10$FYaIp6jkK4ncvgr8CnWIteo6RAHq0dUrOk2rGv29SAmqLvw1rWXlO',NULL,NULL,NULL,1,'2016-05-25 08:16:52','2016-05-25 08:16:52','::1','::1','2016-05-25 08:16:50','2016-05-25 08:16:52','Example User',NULL),(2,'example-1@mail.com','$2a$10$BcImQcZMArMFLENpOGY/FOFXZy/Rgxh/ellOJGRfW/CV7I8p27uQu',NULL,NULL,NULL,1,'2016-05-25 08:29:49','2016-05-25 08:29:49','::1','::1','2016-05-25 08:16:51','2016-05-25 08:29:49','Justen Monahan DDS',NULL),(3,'example-2@mail.com','$2a$10$0qepVRYJ4MNyFYZFJdw/zebQVuoQAQm8QhoxBgHp4oqgNa/FE0B3O',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2016-05-25 08:16:51','2016-05-25 08:16:51','Ayla Bailey Sr.',NULL),(4,'example-3@mail.com','$2a$10$Vfpb1ZfbF0eYvEE9A8mGeekJC5hw2XE3pLDZP0MMeHiT1TVf.QKiS',NULL,NULL,NULL,1,'2016-05-25 08:34:18','2016-05-25 08:34:18','::1','::1','2016-05-25 08:16:51','2016-05-25 08:34:18','Ronny Rippin',NULL),(5,'example-4@mail.com','$2a$10$83NjUe.E2rBIBBRbnQrU1uSXDg935a5LnucAs9/VlIwHZet2/tRl.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2016-05-25 08:16:51','2016-05-25 08:16:51','Elenora Quitzon V',NULL),(6,'example-5@mail.com','$2a$10$rKwbmvIxM/PjXlMRCIJSMeVFzfmfmAqGSkhoedinSvoTb4EN.nyeu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2016-05-25 08:16:51','2016-05-25 08:16:51','Quinton Anderson',NULL),(7,'example-6@mail.com','$2a$10$0xAuQDGSW5iU4RFRXtNLdOJMbL/QAvzdjjvgM6ID1MrDcEEoE6l96',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2016-05-25 08:16:51','2016-05-25 08:16:51','Zena Howe',NULL),(8,'example-7@mail.com','$2a$10$MvHwUmcPICjRMXWy1JcSz.PMefcx6l5bMxWkvWkA/myWWAXSTjzjG',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2016-05-25 08:16:51','2016-05-25 08:16:51','Rickey Prosacco',NULL),(9,'example-8@mail.com','$2a$10$Ibi.lLlc49J7G7h/nU4GPurtToEa/6p/hZEj8Y9dvt5OtjxP2vNgy',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2016-05-25 08:16:51','2016-05-25 08:16:51','Mr. Ally Luettgen',NULL),(10,'example-9@mail.com','$2a$10$VS3U1ll/1a9Xi1HSN/vfnus2qGa8JGthfKM5alaOiwuxbtNF3LQRu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2016-05-25 08:16:51','2016-05-25 08:16:51','Annette Shields Jr.',NULL),(11,'example-10@mail.com','$2a$10$9mvKXZtYbHrL4P3B2cueL.B4PiBzp.edn8U7Ds3Z.Ry17NF2fd4cO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2016-05-25 08:16:52','2016-05-25 08:16:52','Mrs. Jaylon Mayer',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `votable_id` int(11) DEFAULT NULL,
  `votable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `voter_id` int(11) DEFAULT NULL,
  `voter_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vote_flag` tinyint(1) DEFAULT NULL,
  `vote_scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vote_weight` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_votes_on_voter_id_and_voter_type_and_vote_scope` (`voter_id`,`voter_type`,`vote_scope`),
  KEY `index_votes_on_votable_id_and_votable_type_and_vote_scope` (`votable_id`,`votable_type`,`vote_scope`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votes`
--

LOCK TABLES `votes` WRITE;
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
INSERT INTO `votes` VALUES (1,4,'Menu',2,'User',1,NULL,1,'2016-05-25 08:32:31','2016-05-25 08:32:31');
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-25 15:41:51
