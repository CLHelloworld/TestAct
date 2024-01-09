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
-- Table structure for table `member_report`
--

DROP TABLE IF EXISTS `member_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_report` (
  `rep_id` int NOT NULL AUTO_INCREMENT,
  `reporter_id` int NOT NULL,
  `reportee_id` int NOT NULL,
  `emp_id` int DEFAULT NULL,
  `rep_title` varchar(50) NOT NULL,
  `rep_content` varchar(2000) NOT NULL,
  `rep_pic` longblob,
  `rep_status` tinyint NOT NULL DEFAULT '1',
  `rep_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rep_id`),
  KEY `FK_MEMBER_REPORT_MEMBERSHIP_A` (`reporter_id`),
  KEY `FK_MEMBER_REPORT_MEMBERSHIP_B` (`reportee_id`),
  KEY `FK_MEMBER_REPORT_EMPLOYEE` (`emp_id`),
  CONSTRAINT `FK_MEMBER_REPORT_EMPLOYEE` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `FK_MEMBER_REPORT_MEMBERSHIP_A` FOREIGN KEY (`reporter_id`) REFERENCES `membership` (`mem_id`),
  CONSTRAINT `FK_MEMBER_REPORT_MEMBERSHIP_B` FOREIGN KEY (`reportee_id`) REFERENCES `membership` (`mem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_report`
--

LOCK TABLES `member_report` WRITE;
/*!40000 ALTER TABLE `member_report` DISABLE KEYS */;
INSERT INTO `member_report` VALUES (1,1,2,2,'發言不當','在某篇文章裡有不當發言',NULL,2,'2023-01-09 12:00:00'),(2,3,4,2,'發言不當','在聊天室裡直接對我人身攻擊',NULL,2,'2023-01-19 10:00:00'),(3,11,12,2,'討厭這個人','單純看不爽他',NULL,3,'2023-11-23 12:00:00');
/*!40000 ALTER TABLE `member_report` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-09 16:50:14
