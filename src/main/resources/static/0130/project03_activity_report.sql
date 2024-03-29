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
-- Table structure for table `activity_report`
--

DROP TABLE IF EXISTS `activity_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_report` (
  `rep_id` int NOT NULL AUTO_INCREMENT,
  `act_id` int NOT NULL,
  `mem_id` int NOT NULL,
  `emp_id` int DEFAULT NULL,
  `rep_title` varchar(50) NOT NULL,
  `rep_content` varchar(2000) NOT NULL,
  `rep_pic` longblob,
  `rep_status` tinyint NOT NULL DEFAULT '1',
  `rep_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rep_id`),
  KEY `FK_ACTIVITY_REPORT_ACTIVITY` (`act_id`),
  KEY `FK_ACTIVITY_REPORT_MEMBERSHIP` (`mem_id`),
  KEY `FK_ACTIVITY_REPORT_EMPLOYEE` (`emp_id`),
  CONSTRAINT `FK_ACTIVITY_REPORT_ACTIVITY` FOREIGN KEY (`act_id`) REFERENCES `activity` (`act_id`),
  CONSTRAINT `FK_ACTIVITY_REPORT_EMPLOYEE` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `FK_ACTIVITY_REPORT_MEMBERSHIP` FOREIGN KEY (`mem_id`) REFERENCES `membership` (`mem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_report`
--

LOCK TABLES `activity_report` WRITE;
/*!40000 ALTER TABLE `activity_report` DISABLE KEYS */;
INSERT INTO `activity_report` VALUES (1,1,1,1,'不適當內容','內容涉及不適當言論',NULL,1,'2023-12-13 10:00:00'),(2,1,2,2,'冒犯性內容','內容冒犯性言論',NULL,1,'2023-12-13 10:15:00'),(3,2,3,3,'不實訊息','內容涉及不實訊息',NULL,1,'2023-12-13 10:30:00'),(4,2,4,4,'侮辱性言論','內容涉及侮辱性言論',NULL,1,'2023-12-13 10:45:00'),(5,3,5,5,'違規連結','內容包含違規連結',NULL,1,'2023-12-13 11:00:00'),(6,3,6,6,'色情內容','內容包含色情內容',NULL,1,'2023-12-13 11:15:00'),(7,4,7,7,'仇恨言論','內容包含仇恨言論',NULL,1,'2023-12-13 11:30:00'),(8,4,8,8,'政治敏感','內容涉及政治敏感',NULL,1,'2023-12-13 11:45:00'),(9,5,9,9,'冒名詐騙','內容涉及冒名詐騙',NULL,1,'2023-12-13 12:00:00'),(10,5,10,10,'侵權行為','內容涉及侵權行為',NULL,1,'2023-12-13 12:15:00');
/*!40000 ALTER TABLE `activity_report` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-30  3:53:32
