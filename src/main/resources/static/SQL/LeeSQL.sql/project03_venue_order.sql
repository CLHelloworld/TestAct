-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: project03
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `venue_order`
--

DROP TABLE IF EXISTS `venue_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venue_order` (
  `ven_order_id` int NOT NULL AUTO_INCREMENT,
  `ven_id` int NOT NULL,
  `mem_id` int NOT NULL,
  `emp_id` int DEFAULT NULL,
  `order_date` date NOT NULL,
  `mem_phone` char(10) NOT NULL,
  `act_descr` varchar(2000) NOT NULL,
  `user_count` int NOT NULL,
  `mem_taxid` char(8) DEFAULT NULL,
  `order_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_pay_type` tinyint NOT NULL,
  `mem_transfer_num` varchar(16) DEFAULT NULL,
  `mem_credit_num` char(16) DEFAULT NULL,
  `order_status` tinyint NOT NULL DEFAULT '2',
  `ven_rent_status` tinyint NOT NULL DEFAULT '1',
  `ven_rating` double DEFAULT NULL,
  `ven_com` varchar(2000) DEFAULT NULL,
  `ven_com_status` tinyint DEFAULT '1',
  `ven_com_time` datetime DEFAULT NULL,
  `ven_res_fee` decimal(19,2) NOT NULL,
  PRIMARY KEY (`ven_order_id`),
  KEY `FK_VENUE_ORDER_VENUE` (`ven_id`),
  KEY `FK_VENUE_ORDER_MEMBERSHIP` (`mem_id`),
  KEY `FK_VENUE_ORDER_EMPLOYEE` (`emp_id`),
  CONSTRAINT `FK_VENUE_ORDER_EMPLOYEE` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `FK_VENUE_ORDER_MEMBERSHIP` FOREIGN KEY (`mem_id`) REFERENCES `membership` (`mem_id`),
  CONSTRAINT `FK_VENUE_ORDER_VENUE` FOREIGN KEY (`ven_id`) REFERENCES `venue` (`ven_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue_order`
--

LOCK TABLES `venue_order` WRITE;
/*!40000 ALTER TABLE `venue_order` DISABLE KEYS */;
INSERT INTO `venue_order` VALUES (1,1,1,1,'2023-12-20','0912345678','團隊建設活動',20,'12345678','2024-01-04 17:16:41',1,NULL,NULL,2,1,4.5,'很棒的體驗！',1,'2024-01-04 17:16:41',100.00),(2,2,2,2,'2023-12-25','0923456789','聖誕派對',30,NULL,'2024-01-04 17:16:41',2,NULL,NULL,2,1,4.2,'派對的好場所',1,'2024-01-04 17:16:41',200.00),(3,3,3,3,'2024-01-02','0934567890','新年慶祝活動',25,'87654321','2024-01-04 17:16:41',1,NULL,NULL,3,1,4.8,'活動的完美場所',1,'2024-01-04 17:16:41',300.00),(4,4,4,4,'2024-02-14','0945678901','情人節晚餐',15,NULL,'2024-01-04 17:16:41',2,NULL,NULL,2,1,3.5,'浪漫的氛圍',1,'2024-01-04 17:16:41',400.00),(5,5,5,5,'2024-03-08','0956789012','國際婦女節活動',40,'23456789','2024-01-04 17:16:41',1,NULL,NULL,2,1,4,'賦權的活動！',1,'2024-01-04 17:16:41',500.00),(6,6,6,6,'2024-04-01','0967890123','愚人節派對',18,NULL,'2024-01-04 17:16:41',2,NULL,NULL,1,1,4.7,'充滿樂趣的夜晚',1,'2024-01-04 17:16:41',600.00),(7,7,7,7,'2024-05-20','0978901234','校園招生博覽會',50,'34567890','2024-01-04 17:16:41',1,NULL,NULL,2,1,4.6,'成功的博覽會',1,'2024-01-04 17:16:41',700.00),(8,8,8,8,'2024-06-18','0989012345','父親節慶祝活動',22,NULL,'2024-01-04 17:16:41',2,NULL,NULL,3,1,4.3,'在場地的特別日子',1,'2024-01-04 17:16:41',800.00),(9,9,9,9,'2024-07-04','0990123456','獨立日派對',35,'45678901','2024-01-04 17:16:41',1,NULL,NULL,2,1,4.9,'慶祝活動！',1,'2024-01-04 17:16:41',900.00),(10,10,10,10,'2024-08-15','0911234567','中元普渡祭典',60,'56789012','2024-01-04 17:16:41',2,NULL,NULL,2,1,4.4,'祭典的好場所',1,'2024-01-04 17:16:41',1000.00);
/*!40000 ALTER TABLE `venue_order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-09 14:31:51
