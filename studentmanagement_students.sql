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
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `StudentID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Gender` enum('남','여') DEFAULT NULL,
  `Major` varchar(50) DEFAULT NULL,
  `AdmissionDate` date DEFAULT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'김철수',20,'남','컴퓨터공학','2023-03-02'),(2,'박영희',21,'여','경영학','2023-03-02'),(3,'이민수',22,'남','전자공학','2022-03-02'),(4,'정수진',23,'여','컴퓨터공학','2021-03-02'),(5,'최준혁',20,'남','경영학','2023-03-02'),(6,'조현우',24,'남','전자공학','2020-03-02'),(7,'송지민',21,'여','경영학','2022-03-02'),(8,'장서연',22,'여','컴퓨터공학','2021-03-02'),(9,'한예지',23,'여','전자공학','2020-03-02'),(10,'남궁민',20,'남','경영학','2023-03-02'),(11,'김철수',20,'남','컴퓨터공학','2023-03-02'),(12,'박영희',21,'여','경영학','2023-03-02'),(13,'이민수',22,'남','전자공학','2022-03-02'),(14,'정수진',23,'여','컴퓨터공학','2021-03-02'),(15,'최준혁',20,'남','경영학','2023-03-02'),(16,'조현우',24,'남','전자공학','2020-03-02'),(17,'송지민',21,'여','경영학','2022-03-02'),(18,'장서연',22,'여','컴퓨터공학','2021-03-02'),(19,'한예지',23,'여','전자공학','2020-03-02'),(20,'남궁민',20,'남','경영학','2023-03-02');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
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
