-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: studentmanagement
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `enrollments`
--

DROP TABLE IF EXISTS `enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollments` (
  `EnrollmentID` int NOT NULL AUTO_INCREMENT,
  `StudentID` int DEFAULT NULL,
  `CourseID` int DEFAULT NULL,
  `EnrollmentDate` date DEFAULT NULL,
  `Grade` char(1) DEFAULT NULL,
  PRIMARY KEY (`EnrollmentID`),
  KEY `StudentID` (`StudentID`),
  KEY `CourseID` (`CourseID`),
  CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollments`
--

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;
INSERT INTO `enrollments` VALUES (1,1,1,'2023-03-15','A'),(2,2,1,'2023-03-15','B'),(3,3,2,'2022-03-12','A'),(4,4,2,'2021-03-11','B'),(5,5,3,'2023-03-16','C'),(6,6,3,'2020-03-12','A'),(7,7,4,'2022-03-13','B'),(8,8,5,'2021-03-14','A'),(9,9,6,'2020-03-15','A'),(10,10,6,'2023-03-14','C'),(11,1,7,'2023-03-15','B'),(12,2,8,'2023-03-16','A'),(13,3,9,'2022-03-17','B'),(14,4,10,'2021-03-18','A'),(15,5,1,'2023-03-15','A'),(16,6,4,'2020-03-19','B'),(17,7,5,'2022-03-15','A'),(18,8,7,'2021-03-20','C'),(19,9,8,'2020-03-21','A'),(20,10,9,'2023-03-16','B'),(21,1,1,'2023-03-15','A'),(22,2,1,'2023-03-15','B'),(23,3,2,'2022-03-12','A'),(24,4,2,'2021-03-11','B'),(25,5,3,'2023-03-16','C'),(26,6,3,'2020-03-12','A'),(27,7,4,'2022-03-13','B'),(28,8,5,'2021-03-14','A'),(29,9,6,'2020-03-15','A'),(30,10,6,'2023-03-14','C'),(31,1,7,'2023-03-15','B'),(32,2,8,'2023-03-16','A'),(33,3,9,'2022-03-17','B'),(34,4,10,'2021-03-18','A'),(35,5,1,'2023-03-15','A'),(36,6,4,'2020-03-19','B'),(37,7,5,'2022-03-15','A'),(38,8,7,'2021-03-20','C'),(39,9,8,'2020-03-21','A'),(40,10,9,'2023-03-16','B');
/*!40000 ALTER TABLE `enrollments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-03 14:01:46
