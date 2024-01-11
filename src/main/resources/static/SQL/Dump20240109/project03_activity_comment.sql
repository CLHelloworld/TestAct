CREATE DATABASE  IF NOT EXISTS `project03` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `project03`;
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
-- Table structure for table `activity_comment`
--

DROP TABLE IF EXISTS `activity_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_comment` (
  `com_id` int NOT NULL AUTO_INCREMENT,
  `act_id` int NOT NULL,
  `mem_id` int NOT NULL,
  `com_reply_id` int DEFAULT NULL,
  `com_content` varchar(2000) NOT NULL,
  `com_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `com_status` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`com_id`),
  KEY `FK_ACTIVITY_COMMENT_ACTIVITY` (`act_id`),
  KEY `FK_ACTIVITY_COMMENT_MEMBERSHIP` (`mem_id`),
  KEY `FK_ACTIVITY_COMMENT_ACTIVITY_COMMENT` (`com_reply_id`),
  CONSTRAINT `FK_ACTIVITY_COMMENT_ACTIVITY` FOREIGN KEY (`act_id`) REFERENCES `activity` (`act_id`),
  CONSTRAINT `FK_ACTIVITY_COMMENT_ACTIVITY_COMMENT` FOREIGN KEY (`com_reply_id`) REFERENCES `activity_comment` (`com_id`),
  CONSTRAINT `FK_ACTIVITY_COMMENT_MEMBERSHIP` FOREIGN KEY (`mem_id`) REFERENCES `membership` (`mem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_comment`
--

LOCK TABLES `activity_comment` WRITE;
/*!40000 ALTER TABLE `activity_comment` DISABLE KEYS */;
INSERT INTO `activity_comment` VALUES (1,1,1,NULL,'太棒了！這個活動好有趣！','2023-12-13 10:30:00',1),(2,1,2,1,'期待已久的活動終於開始了！','2023-12-13 10:35:00',1),(3,1,3,2,'這次的主題好有創意，喜歡！','2023-12-13 10:40:00',1),(4,2,4,3,'活動現場的氛圍真的很棒！','2023-12-13 10:45:00',1),(5,2,5,4,'感謝主辦方，讓我們度過美好的時光！','2023-12-13 10:50:00',1),(6,3,1,5,'有參加的朋友們都好nice！','2023-12-13 11:00:00',1),(7,3,2,6,'下次還要再來參加！','2023-12-13 11:10:00',1),(8,4,3,7,'好喜歡這個活動的主題曲！','2023-12-13 11:20:00',1),(9,4,4,8,'期待下一次的活動！','2023-12-13 11:30:00',1),(10,5,5,9,'真的是個難得的好天氣！','2023-12-13 11:40:00',1);
/*!40000 ALTER TABLE `activity_comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-11 17:29:53
