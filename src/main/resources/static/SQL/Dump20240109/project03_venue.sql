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
-- Table structure for table `venue`
--

DROP TABLE IF EXISTS `venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venue` (
  `ven_id` int NOT NULL AUTO_INCREMENT,
  `ven_type_id` int NOT NULL,
  `ven_name` varchar(50) NOT NULL,
  `ven_descr` varchar(2000) NOT NULL,
  `ven_pic` longblob,
  `ven_loc` varchar(50) NOT NULL,
  `ven_price` decimal(19,2) NOT NULL,
  `ven_status` tinyint NOT NULL DEFAULT '1',
  `ven_uptime` datetime DEFAULT NULL,
  `ven_downtime` datetime DEFAULT NULL,
  `ven_mod_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ven_tot_rating` double NOT NULL DEFAULT '0',
  `ven_rate_count` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ven_id`),
  UNIQUE KEY `ven_name` (`ven_name`),
  KEY `FK_VENUE_VENUE_TYPE` (`ven_type_id`),
  CONSTRAINT `FK_VENUE_VENUE_TYPE` FOREIGN KEY (`ven_type_id`) REFERENCES `venue_type` (`ven_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue`
--

LOCK TABLES `venue` WRITE;
/*!40000 ALTER TABLE `venue` DISABLE KEYS */;
INSERT INTO `venue` VALUES (1,1,'Venue A','Description for Venue A',NULL,'Location A',100.00,2,NULL,NULL,'2024-01-04 17:16:41',4.5,10),(2,2,'Venue B','Description for Venue B',NULL,'Location B',150.00,2,NULL,NULL,'2024-01-04 17:16:41',4.2,8),(3,1,'Venue C','Description for Venue C',NULL,'Location C',120.00,2,NULL,NULL,'2024-01-04 17:16:41',4.8,12),(4,3,'Venue D','Description for Venue D',NULL,'Location D',200.00,1,NULL,NULL,'2024-01-04 17:16:41',3.5,5),(5,2,'Venue E','Description for Venue E',NULL,'Location E',180.00,2,NULL,NULL,'2024-01-04 17:16:41',4,9),(6,3,'Venue F','Description for Venue F',NULL,'Location F',220.00,2,NULL,NULL,'2024-01-04 17:16:41',4.7,11),(7,1,'Venue G','Description for Venue G',NULL,'Location G',130.00,2,NULL,NULL,'2024-01-04 17:16:41',4.6,14),(8,2,'Venue H','Description for Venue H',NULL,'Location H',160.00,2,NULL,NULL,'2024-01-04 17:16:41',4.3,7),(9,3,'Venue I','Description for Venue I',NULL,'Location I',190.00,2,NULL,NULL,'2024-01-04 17:16:41',4.9,15),(10,1,'Venue J','Description for Venue J',NULL,'Location J',110.00,2,NULL,NULL,'2024-01-04 17:16:41',4.4,13);
/*!40000 ALTER TABLE `venue` ENABLE KEYS */;
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
