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
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq` (
  `faq_id` int NOT NULL AUTO_INCREMENT,
  `emp_id` int NOT NULL,
  `faq_que` varchar(2000) NOT NULL,
  `faq_ans` varchar(2000) NOT NULL,
  PRIMARY KEY (`faq_id`),
  KEY `FK_FAQ_EMPLOYEE` (`emp_id`),
  CONSTRAINT `FK_FAQ_EMPLOYEE` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` VALUES (1,1,'如何申請年度假期？','請填寫年度假申請表格並提交給人事部門。'),(2,2,'怎麼更改直接存款資訊？','請填寫直接存款變更申請表格，經理審核後提交給財務部。'),(3,3,'如何申請加班報酬？','加班報酬申請需經直屬主管核准，填寫加班單交給人事部門處理。'),(4,4,'員工福利有哪些？','公司提供完善的員工福利，包括醫療保險、勞工保險、年終獎金等，詳情可查閱員工手冊。'),(5,5,'如何申請出差？','請提前填寫出差申請表格，經理審核後提交給行政部門。'),(6,6,'員工培訓計畫有哪些？','公司提供多樣化的員工培訓計畫，可在內部培訓平台查看相關課程。'),(7,7,'如何向上級主管提出建議？','請透過內部郵件或定期的部門會議提出建議，也可直接與主管預約面談。'),(8,8,'怎麼查詢加班時數？','員工可登入內部系統查詢個人加班時數，如有疑問可向人事部門查詢。'),(9,9,'新員工入職流程是什麼？','新員工需完成入職文件，接受新員工培訓，詳情可查閱入職手冊。'),(10,10,'公司提供的休假類型有哪些？','公司提供年假、事假、病假等不同種類的休假，具體標準請參照公司休假政策。');
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-09 16:50:11
