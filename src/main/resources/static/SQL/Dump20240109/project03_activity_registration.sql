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
-- Table structure for table `activity_registration`
--

DROP TABLE IF EXISTS `activity_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_registration` (
  `act_reg_id` int NOT NULL AUTO_INCREMENT,
  `mem_id` int NOT NULL,
  `act_id` int NOT NULL,
  `reg_total` int NOT NULL,
  `reg_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reg_status` tinyint NOT NULL DEFAULT '2',
  `is_act_part` tinyint NOT NULL DEFAULT '2',
  `act_rating` double DEFAULT NULL,
  PRIMARY KEY (`act_reg_id`),
  KEY `FK_ACTIVITY_REGISTRATION_MEMBERSHIP` (`mem_id`),
  KEY `FK_ACTIVITY_REGISTRATION_ACTIVITY` (`act_id`),
  CONSTRAINT `FK_ACTIVITY_REGISTRATION_ACTIVITY` FOREIGN KEY (`act_id`) REFERENCES `activity` (`act_id`),
  CONSTRAINT `FK_ACTIVITY_REGISTRATION_MEMBERSHIP` FOREIGN KEY (`mem_id`) REFERENCES `membership` (`mem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_registration`
--

LOCK TABLES `activity_registration` WRITE;
/*!40000 ALTER TABLE `activity_registration` DISABLE KEYS */;
INSERT INTO `activity_registration` VALUES (1,1,1,1,'2023-12-13 12:00:00',3,2,4.5),(2,2,2,2,'2023-12-13 12:10:00',2,2,4),(3,3,3,1,'2023-12-13 12:20:00',3,2,4.8),(4,4,4,3,'2023-12-13 12:30:00',3,2,3.7),(5,5,5,2,'2023-12-13 12:40:00',2,2,4.2),(6,1,6,1,'2023-12-13 12:50:00',1,2,4.9),(7,2,7,2,'2023-12-13 13:00:00',2,2,3.5),(8,3,8,1,'2023-12-13 13:10:00',3,2,4.6),(9,4,9,3,'2023-12-13 13:20:00',3,2,3.9),(10,5,10,2,'2023-12-13 13:30:00',2,2,4.3);
/*!40000 ALTER TABLE `activity_registration` ENABLE KEYS */;
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
