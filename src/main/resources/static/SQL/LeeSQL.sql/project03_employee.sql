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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `emp_acc` varchar(50) NOT NULL,
  `emp_email` varchar(255) NOT NULL,
  `emp_pwd` varchar(255) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `emp_phone` char(10) DEFAULT NULL,
  `emp_birthdate` date NOT NULL,
  `emp_gender` tinyint NOT NULL,
  `emp_status` tinyint NOT NULL DEFAULT '1',
  `emp_cr_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `emp_login_time` datetime DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  UNIQUE KEY `emp_acc` (`emp_acc`),
  UNIQUE KEY `emp_email` (`emp_email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'alice_smith','alice.smith@email.com','pass789','Alice Smith','5556667777','1992-08-10',1,1,'2024-01-04 17:16:41','2024-01-04 17:16:41'),(2,'bob_jones','bob.jones@email.com','secret123','Bob Jones','9998887777','1988-04-05',2,1,'2024-01-04 17:16:41','2024-01-04 17:16:41'),(3,'emily_wang','emily.wang@email.com','pwd456','Emily Wang','1231231234','1995-11-30',1,1,'2024-01-04 17:16:41','2024-01-04 17:16:41'),(4,'michael_chen','michael.chen@email.com','pass456','Michael Chen','9876543210','1987-12-18',2,1,'2024-01-04 17:16:41','2024-01-04 17:16:41'),(5,'sophia_davis','sophia.davis@email.com','pwd789','Sophia Davis','4567890123','1993-06-25',1,1,'2024-01-04 17:16:41','2024-01-04 17:16:41'),(6,'william_kim','william.kim@email.com','secret789','William Kim','7890123456','1990-02-20',2,1,'2024-01-04 17:16:41','2024-01-04 17:16:41'),(7,'olivia_brown','olivia.brown@email.com','password456','Olivia Brown','1112223333','1998-09-15',1,1,'2024-01-04 17:16:41','2024-01-04 17:16:41'),(8,'daniel_lee','daniel.lee@email.com','pass123','Daniel Lee','2223334444','1984-07-08',2,1,'2024-01-04 17:16:41','2024-01-04 17:16:41'),(9,'grace_nguyen','grace.nguyen@email.com','pwd123','Grace Nguyen','3334445555','1996-03-03',1,1,'2024-01-04 17:16:41','2024-01-04 17:16:41'),(10,'ryan_miller','ryan.miller@email.com','password789','Ryan Miller','4445556666','1986-10-28',2,1,'2024-01-04 17:16:41','2024-01-04 17:16:41');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
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
