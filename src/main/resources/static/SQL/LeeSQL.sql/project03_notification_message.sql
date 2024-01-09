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
-- Table structure for table `notification_message`
--

DROP TABLE IF EXISTS `notification_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_message` (
  `notify_id` int NOT NULL AUTO_INCREMENT,
  `mem_id` int NOT NULL,
  `notify_title` varchar(50) NOT NULL,
  `notify_content` varchar(2000) NOT NULL,
  `notify_status` tinyint NOT NULL DEFAULT '1',
  `notify_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`notify_id`),
  KEY `FK_NOTIFICATION_MESSAGE_MEMBERSHIP` (`mem_id`),
  CONSTRAINT `FK_NOTIFICATION_MESSAGE_MEMBERSHIP` FOREIGN KEY (`mem_id`) REFERENCES `membership` (`mem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_message`
--

LOCK TABLES `notification_message` WRITE;
/*!40000 ALTER TABLE `notification_message` DISABLE KEYS */;
INSERT INTO `notification_message` VALUES (1,1,'活動通知','提醒你,2天後有做伙活動要開始囉',1,'2023-04-04 12:00:00'),(2,2,'場地通知','提醒你,2天後有租借教室型的場地',2,'2023-05-04 12:00:00'),(3,3,'關注通知','江秋已關注你',1,'2023-06-04 12:00:00'),(4,4,'系統通知','祝各位銀色情人節快樂',2,'2023-07-14 12:00:00'),(5,5,'系統通知','祝各位綠色情人節快樂',1,'2023-08-14 12:00:00'),(6,6,'系統通知','祝各位相片情人節快樂',2,'2023-09-14 12:00:00'),(7,7,'系統通知','祝各位相片情人節快樂',1,'2023-09-14 12:00:00');
/*!40000 ALTER TABLE `notification_message` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-09 14:31:52
