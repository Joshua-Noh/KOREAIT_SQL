-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: gametournamentdb
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
-- Table structure for table `matches`
--

DROP TABLE IF EXISTS `matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matches` (
  `match_id` int NOT NULL AUTO_INCREMENT,
  `league_id` int DEFAULT NULL,
  `team_a` int DEFAULT NULL,
  `team_b` int DEFAULT NULL,
  `season` varchar(10) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL,
  `score` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`match_id`),
  KEY `league_id` (`league_id`),
  KEY `team_a` (`team_a`),
  KEY `team_b` (`team_b`),
  CONSTRAINT `matches_ibfk_1` FOREIGN KEY (`league_id`) REFERENCES `leagues` (`league_id`),
  CONSTRAINT `matches_ibfk_2` FOREIGN KEY (`team_a`) REFERENCES `teams` (`team_id`),
  CONSTRAINT `matches_ibfk_3` FOREIGN KEY (`team_b`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matches`
--

LOCK TABLES `matches` WRITE;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
INSERT INTO `matches` VALUES (1,1,1,2,'2024','2024-03-22','2024-03-22','Win','2-1'),(2,1,2,3,'2024','2024-03-23','2024-03-23','Lose','1-3'),(3,1,3,4,'2024','2024-03-24','2024-03-24','Win','2-0'),(4,1,4,5,'2024','2024-03-25','2024-03-25','Lose','0-1'),(5,1,1,3,'2024','2024-03-26','2024-03-26','Win','3-2'),(6,1,2,5,'2024','2024-03-27','2024-03-27','Win','1-0'),(7,1,4,1,'2024','2024-03-28','2024-03-28','Lose','1-2'),(8,1,5,3,'2024','2024-03-29','2024-03-29','Win','2-1'),(9,1,1,4,'2024','2024-03-30','2024-03-30','Win','3-1'),(10,1,2,1,'2024','2024-03-31','2024-03-31','Lose','0-2'),(11,2,3,5,'2024','2024-08-29','2024-08-29','Win','1-0'),(12,2,4,2,'2024','2024-08-30','2024-08-30','Win','2-0'),(13,2,5,1,'2024','2024-08-31','2024-08-31','Lose','1-3'),(14,2,1,2,'2024','2024-09-01','2024-09-01','Win','2-1'),(15,2,3,4,'2024','2024-09-02','2024-09-02','Lose','1-2'),(16,2,5,2,'2024','2024-09-03','2024-09-03','Win','3-1'),(17,2,1,4,'2024','2024-09-04','2024-09-04','Lose','0-1'),(18,2,3,1,'2024','2024-09-05','2024-09-05','Win','2-1'),(19,2,4,5,'2024','2024-09-06','2024-09-06','Lose','1-2'),(20,2,2,3,'2024','2024-09-07','2024-09-07','Win','2-1'),(21,1,1,5,'2024','2024-04-01','2024-04-01','Win','4-2'),(22,1,2,4,'2024','2024-04-02','2024-04-02','Lose','1-3'),(23,1,3,1,'2024','2024-04-03','2024-04-03','Win','2-0'),(24,1,4,2,'2024','2024-04-04','2024-04-04','Lose','0-1'),(25,1,5,3,'2024','2024-04-05','2024-04-05','Win','3-1'),(26,2,1,5,'2024','2024-09-08','2024-09-08','Lose','1-2'),(27,2,2,4,'2024','2024-09-09','2024-09-09','Win','3-2'),(28,2,3,2,'2024','2024-09-10','2024-09-10','Lose','0-1'),(29,2,4,3,'2024','2024-09-11','2024-09-11','Win','2-0'),(30,2,5,1,'2024','2024-09-12','2024-09-12','Lose','0-3'),(31,1,1,2,'2023','2023-03-22','2023-03-22','Win','2-1'),(32,1,3,4,'2023','2023-05-01','2023-05-01','Lose','0-3'),(33,2,2,5,'2023','2023-05-12','2023-05-12','Win','1-0'),(34,2,1,3,'2023','2023-06-17','2023-06-17','Win','3-2'),(35,1,4,2,'2023','2023-07-31','2023-07-31','Draw','1-1'),(36,2,5,1,'2023','2023-08-15','2023-08-15','Lose','1-3'),(37,1,3,5,'2023','2023-10-16','2023-10-16','Win','2-0'),(38,2,4,1,'2023','2023-10-27','2023-10-27','Win','4-1'),(39,1,2,3,'2023','2023-11-26','2023-11-26','Lose','1-2'),(40,2,5,3,'2023','2023-12-07','2023-12-07','Draw','2-2'),(41,1,2,4,'2022','2022-04-02','2022-04-02','Win','3-2'),(42,1,5,3,'2022','2022-05-06','2022-05-06','Lose','1-4'),(43,2,3,1,'2022','2022-05-17','2022-05-17','Win','2-1'),(44,2,2,5,'2022','2022-06-27','2022-06-27','Win','3-0'),(45,1,4,1,'2022','2022-08-08','2022-08-08','Draw','2-2'),(46,2,5,2,'2022','2022-08-22','2022-08-22','Lose','0-1'),(47,1,3,4,'2022','2022-09-26','2022-09-26','Win','2-1'),(48,2,1,5,'2022','2022-10-09','2022-10-09','Win','4-3'),(49,1,2,3,'2022','2022-12-13','2022-12-13','Draw','0-0'),(50,2,4,3,'2022','2022-12-15','2022-12-15','Lose','1-3'),(51,1,3,1,'2021','2021-03-22','2021-03-22','Win','1-0'),(52,1,5,2,'2021','2021-04-23','2021-04-23','Lose','0-2'),(53,2,4,5,'2021','2021-05-12','2021-05-12','Win','3-1'),(54,2,1,3,'2021','2021-06-17','2021-06-17','Win','4-2'),(55,1,2,4,'2021','2021-07-26','2021-07-26','Draw','1-1'),(56,2,3,2,'2021','2021-08-07','2021-08-07','Win','2-0'),(57,1,5,1,'2021','2021-10-21','2021-10-21','Lose','0-1'),(58,2,4,3,'2021','2021-10-15','2021-10-15','Draw','1-1'),(59,1,2,5,'2021','2021-12-16','2021-12-16','Win','3-0'),(60,2,1,4,'2021','2021-12-02','2021-12-02','Lose','1-2'),(61,1,2,4,'2024','2024-11-27','2024-11-27','LOSE','2-4'),(62,1,2,4,'2024','2024-11-27','2024-11-27','LOSE','2-4');
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-03 14:01:38
