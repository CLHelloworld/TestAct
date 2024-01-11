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
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcement` (
  `ann_id` int NOT NULL AUTO_INCREMENT,
  `emp_id` int NOT NULL,
  `ann_name` varchar(50) NOT NULL,
  `ann_descr` varchar(2000) NOT NULL,
  `ann_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ann_id`),
  KEY `FK_ANNOUNCEMENT_EMPLOYEE` (`emp_id`),
  CONSTRAINT `FK_ANNOUNCEMENT_EMPLOYEE` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement`
--

LOCK TABLES `announcement` WRITE;
/*!40000 ALTER TABLE `announcement` DISABLE KEYS */;
INSERT INTO `announcement` VALUES (1,1,'新制度上線通知','各位同仁，請注意新的公司制度已經上線，請務必遵守相關規定。','2023-12-13 09:00:00'),(2,2,'月度績效報告發布','本月績效報告已經發布，請各位員工查閱。','2023-12-10 15:30:00'),(3,3,'年度尾牙通知','本年度尾牙活動將於下月舉辦，敬請儘早報名參加。','2023-12-05 11:45:00'),(4,4,'公司網站更新公告','公司官方網站將進行系統更新，預計於明天完成，請留意。','2023-12-04 08:20:00'),(5,5,'新進員工歡迎','歡迎新加入的員工，希望大家一同努力，共同創造更好的未來。','2023-11-28 10:10:00'),(6,6,'休假通知','請各位員工留意下周公司將進行例行休假，請提前安排好工作。','2023-11-25 16:00:00'),(7,7,'產品發佈會公告','下月將舉辦新產品發佈會，歡迎有興趣的員工參加。','2023-11-20 14:30:00'),(8,8,'客戶感謝活動','感謝各位員工的辛勞，特舉辦客戶感謝活動，詳情請查閱內文。','2023-11-18 09:45:00'),(9,9,'部門會議通知','下週將舉行部門會議，請各位部門成員準時參加。','2023-11-15 13:20:00'),(10,10,'重要文件提醒','重要文件已上傳至公司雲端，請各位員工查閱並確保瞭解內容。','2023-11-12 10:55:00');
/*!40000 ALTER TABLE `announcement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-11 17:29:50
