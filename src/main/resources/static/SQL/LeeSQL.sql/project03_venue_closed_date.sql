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
-- Table structure for table `venue_closed_date`
--

DROP TABLE IF EXISTS `venue_closed_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venue_closed_date` (
  `closed_date_id` int NOT NULL AUTO_INCREMENT,
  `ven_id` int NOT NULL,
  `closed_date` date NOT NULL,
  `closed_reason` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`closed_date_id`),
  KEY `FK_VENUE_CLOSED_DATE_VENUE` (`ven_id`),
  CONSTRAINT `FK_VENUE_CLOSED_DATE_VENUE` FOREIGN KEY (`ven_id`) REFERENCES `venue` (`ven_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue_closed_date`
--

LOCK TABLES `venue_closed_date` WRITE;
/*!40000 ALTER TABLE `venue_closed_date` DISABLE KEYS */;
INSERT INTO `venue_closed_date` VALUES (1,1,'2023-12-20','公共假日'),(2,2,'2023-12-25','場地維護'),(3,3,'2024-01-02','私人活動'),(4,4,'2024-02-14','情人節特別活動'),(5,5,'2024-03-08','國際婦女節'),(6,6,'2024-04-01','愚人節慶祝'),(7,7,'2024-05-20','校園招生活動'),(8,8,'2024-06-18','父親節慶祝'),(9,9,'2024-07-04','美國獨立紀念日'),(10,10,'2024-08-15','中華民國國慶日');
/*!40000 ALTER TABLE `venue_closed_date` ENABLE KEYS */;
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
