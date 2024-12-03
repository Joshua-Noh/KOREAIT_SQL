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
-- Table structure for table `restaurantvisits`
--

DROP TABLE IF EXISTS `restaurantvisits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurantvisits` (
  `visit_id` int NOT NULL AUTO_INCREMENT,
  `traveler_id` int DEFAULT NULL,
  `restaurant_id` int DEFAULT NULL,
  `visit_date` date DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  PRIMARY KEY (`visit_id`),
  KEY `traveler_id` (`traveler_id`),
  KEY `restaurant_id` (`restaurant_id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `restaurantvisits_ibfk_1` FOREIGN KEY (`traveler_id`) REFERENCES `travelers` (`traveler_id`),
  CONSTRAINT `restaurantvisits_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`),
  CONSTRAINT `restaurantvisits_ibfk_3` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurantvisits`
--

LOCK TABLES `restaurantvisits` WRITE;
/*!40000 ALTER TABLE `restaurantvisits` DISABLE KEYS */;
INSERT INTO `restaurantvisits` VALUES (1,1,1,'2023-01-15',1),(2,2,2,'2023-02-20',2),(3,3,3,'2023-03-12',3),(4,4,4,'2023-04-10',4),(5,5,5,'2023-05-25',5),(6,1,6,'2023-06-18',1),(7,2,7,'2023-07-05',2),(8,3,8,'2023-08-14',3),(9,4,9,'2023-09-10',4),(10,5,10,'2023-10-11',5),(11,1,1,'2024-01-11',1),(12,1,2,'2024-02-16',2),(13,1,3,'2024-03-21',3),(14,2,3,'2024-01-13',3),(15,2,5,'2024-03-19',5),(16,2,4,'2024-04-26',4),(17,3,6,'2024-02-06',6),(18,3,7,'2024-03-11',7),(19,3,8,'2024-05-23',8),(20,4,9,'2024-02-21',9),(21,4,10,'2024-03-16',10),(22,4,1,'2024-04-06',1),(23,5,2,'2024-01-26',2),(24,5,5,'2024-03-03',5),(25,5,10,'2024-04-18',10);
/*!40000 ALTER TABLE `restaurantvisits` ENABLE KEYS */;
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
