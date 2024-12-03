-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: traveldb
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
-- Table structure for table `trips`
--

DROP TABLE IF EXISTS `trips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trips` (
  `trip_id` int NOT NULL AUTO_INCREMENT,
  `traveler_id` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  `accommodation_id` int DEFAULT NULL,
  `trip_date` date DEFAULT NULL,
  PRIMARY KEY (`trip_id`),
  KEY `traveler_id` (`traveler_id`),
  KEY `location_id` (`location_id`),
  KEY `accommodation_id` (`accommodation_id`),
  CONSTRAINT `trips_ibfk_1` FOREIGN KEY (`traveler_id`) REFERENCES `travelers` (`traveler_id`),
  CONSTRAINT `trips_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`),
  CONSTRAINT `trips_ibfk_3` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodations` (`accommodation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trips`
--

LOCK TABLES `trips` WRITE;
/*!40000 ALTER TABLE `trips` DISABLE KEYS */;
INSERT INTO `trips` VALUES (1,1,1,1,'2023-01-15'),(2,2,2,2,'2023-02-20'),(3,3,3,3,'2023-03-12'),(4,4,4,4,'2023-04-10'),(5,5,5,5,'2023-05-25'),(6,1,6,6,'2023-06-18'),(7,2,7,2,'2023-07-05'),(8,3,8,3,'2023-08-14'),(9,4,9,4,'2023-09-10'),(10,5,10,5,'2023-10-11'),(11,1,1,3,'2024-01-10'),(12,1,2,4,'2024-02-15'),(13,1,3,5,'2024-03-20'),(14,2,3,1,'2024-01-12'),(15,2,5,2,'2024-03-18'),(16,2,4,5,'2024-04-25'),(17,3,6,7,'2024-02-05'),(18,3,7,8,'2024-03-10'),(19,3,8,10,'2024-05-22');
/*!40000 ALTER TABLE `trips` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-03 14:01:39
