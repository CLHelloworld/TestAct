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
-- Table structure for table `membership`
--

DROP TABLE IF EXISTS `membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membership` (
  `mem_id` int NOT NULL AUTO_INCREMENT,
  `mem_acc` varchar(50) NOT NULL,
  `mem_email` varchar(255) NOT NULL,
  `mem_pwd` varchar(255) NOT NULL,
  `mem_name` varchar(50) NOT NULL,
  `mem_gender` tinyint NOT NULL,
  `mem_birthdate` date NOT NULL,
  `mem_username` varchar(50) NOT NULL,
  `mem_pic` longblob,
  `mem_intro` varchar(2000) DEFAULT NULL,
  `mem_phone` char(10) DEFAULT NULL,
  `block_start_time` datetime DEFAULT NULL,
  `block_end_time` datetime DEFAULT NULL,
  `is_acc_ena` tinyint NOT NULL DEFAULT '2',
  `is_part_ena` tinyint NOT NULL DEFAULT '2',
  `is_host_ena` tinyint NOT NULL DEFAULT '2',
  `is_rent_ena` tinyint NOT NULL DEFAULT '2',
  `is_msg_ena` tinyint NOT NULL DEFAULT '2',
  `mem_cr_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mem_login_time` datetime DEFAULT NULL,
  PRIMARY KEY (`mem_id`),
  UNIQUE KEY `mem_acc` (`mem_acc`),
  UNIQUE KEY `mem_email` (`mem_email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership`
--

LOCK TABLES `membership` WRITE;
/*!40000 ALTER TABLE `membership` DISABLE KEYS */;
INSERT INTO `membership` VALUES (1,'abc123','abc1@yahoo.com.tw','abcs','江大大',1,'1999-03-13','阿秋',NULL,NULL,NULL,NULL,NULL,2,2,2,2,2,'2021-02-04 12:22:00','2023-02-04 12:22:00'),(2,'abc321','abc3341@yahoo.com.tw','abcsEWQE','江小小',1,'1993-03-13','邱秋',NULL,NULL,NULL,NULL,NULL,2,2,2,2,2,'2022-02-04 12:22:00','2023-03-04 12:22:00'),(3,'aWEQF21','aFEFW41@yahoo.com.tw','abGFER2QE','吳大大',1,'1993-05-13','阿秋秋',NULL,NULL,NULL,NULL,NULL,2,2,2,2,2,'2021-02-02 12:22:00','2022-03-04 12:22:00'),(4,'ab1234','a456741@yahoo.com.tw','a35677QE','吳小小',2,'1991-03-13','老吳',NULL,NULL,NULL,NULL,NULL,2,2,2,2,2,'2022-04-04 12:22:00','2023-04-04 12:22:00'),(5,'aDFGH1','rtrhrw1@yahoo.com.tw','aegwtwE','林小萩',1,'1966-03-13','小秋',NULL,NULL,NULL,NULL,NULL,2,2,2,2,2,'2021-02-04 12:22:00','2023-03-04 12:22:00'),(6,'fjreffrf','abegwegg@yahoo.com.tw','abrtwE','林小小',2,'1973-03-13','阿秋',NULL,NULL,NULL,NULL,NULL,2,2,2,2,1,'2021-02-04 12:12:00','2023-03-15 12:22:00'),(7,'a8frfrg1','aregewg1@yahoo.com.tw','aegrewgEWQE','盧小小',1,'1993-03-20','盧小妹',NULL,NULL,NULL,NULL,NULL,2,2,2,2,2,'2020-02-04 12:11:00','2023-11-04 12:22:00'),(8,'hrhrdh1','abhdsh1@yahoo.com.tw','afrewQE','盧大大',2,'1963-03-13','大吳',NULL,NULL,NULL,NULL,NULL,2,2,2,2,2,'2022-08-04 12:22:00','2023-02-04 12:22:00'),(9,'aqazwsc1','edcrb41@yahoo.com.tw','yhnunQE','陳小',1,'1993-03-23','陳陳',NULL,NULL,NULL,NULL,NULL,2,2,2,2,2,'2022-02-04 12:10:00','2023-03-14 12:22:00'),(10,'tgbjkkk1','abkdqd1@yahoo.com.tw','afewfwggE','陳大',2,'1893-03-13','老陳',NULL,NULL,NULL,NULL,NULL,2,2,2,2,2,'2020-10-04 12:22:00','2022-03-04 12:22:00'),(11,'aikgfe1','aregrge1@yahoo.com.tw','artyui','尤小小',2,'1983-03-10','阿尤',NULL,NULL,NULL,NULL,NULL,2,2,2,2,2,'2021-01-04 12:22:00','2023-03-01 12:22:00'),(12,'aujmdewf1','aewfewf341@yahoo.com.tw','abfewE','許大',1,'1988-03-13','阿球',NULL,NULL,NULL,NULL,NULL,2,2,2,2,2,'2022-02-04 12:22:00','2023-03-04 12:22:00'),(13,'akpdeod1','er898ru@yahoo.com.tw','12345E','徐小',1,'1997-10-13','小徐',NULL,NULL,NULL,NULL,NULL,2,2,2,2,2,'2019-02-06 12:22:00','2023-03-14 12:20:00'),(14,'trjeegeg','awgreheh1@yahoo.com.tw','abrheQE','蔡大大',1,'1994-03-11','菜菜',NULL,NULL,NULL,NULL,NULL,2,2,2,2,2,'2022-12-04 12:00:00','2023-05-04 12:22:00'),(15,'sdfhjj1','abcjjjjj@yahoo.com.tw','abcjjjjE','周大大',1,'1992-03-13','周周',NULL,NULL,NULL,NULL,NULL,2,2,2,2,2,'2022-08-04 12:22:00','2023-08-04 12:22:00');
/*!40000 ALTER TABLE `membership` ENABLE KEYS */;
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
