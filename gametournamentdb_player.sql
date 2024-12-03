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
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `player_id` int NOT NULL AUTO_INCREMENT,
  `player_name` varchar(50) NOT NULL,
  `team_id` int DEFAULT NULL,
  `position_id` int DEFAULT NULL,
  PRIMARY KEY (`player_id`),
  KEY `team_id` (`team_id`),
  KEY `position_id` (`position_id`),
  CONSTRAINT `player_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`),
  CONSTRAINT `player_ibfk_2` FOREIGN KEY (`position_id`) REFERENCES `playerpositions` (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,'Cristiano Ronaldo',1,1),(2,'Manuel Neuer',1,1),(3,'Sergio Ramos',1,2),(4,'Gerard Pique',1,3),(5,'Karim Benzema',1,4),(6,'Virgil van Dijk',1,2),(7,'Luka Modric',1,3),(8,'Neymar Jr',1,4),(9,'Raphael Varane',1,2),(10,'Toni Kroos',1,3),(11,'Lionel Messi',1,4),(12,'Thibaut Courtois',1,5),(13,'Paul Pogba',1,5),(14,'Trent Alexander-Arnold',1,2),(15,'Kevin De Bruyne',1,3),(16,'Robert Lewandowski',1,4),(17,'David Alaba',1,5),(18,'Aymeric Laporte',1,2),(19,'Kylian Mbappe',1,3),(20,'Eden Hazard',1,5),(21,'Alisson Becker',2,1),(22,'Gianluigi Donnarumma',2,1),(23,'Leonardo Bonucci',2,2),(24,'Jordi Alba',2,3),(25,'Erling Haaland',2,4),(26,'Harry Maguire',2,2),(27,'Marco Verratti',2,3),(28,'Jadon Sancho',2,4),(29,'Mats Hummels',2,2),(30,'Joshua Kimmich',2,3),(31,'Romelu Lukaku',2,4),(32,'Jan Oblak',2,5),(33,'N Golo Kante',2,5),(34,'Andy Robertson',2,2),(35,'Thomas Muller',2,3),(36,'Sadio Mane',2,4),(37,'Thiago Silva',2,5),(38,'Achraf Hakimi',2,2),(39,'Antoine Griezmann',2,3),(40,'Phil Foden',2,5),(41,'Son Heung-Min',3,1),(42,'Kim Seung-Gyu',3,1),(43,'Kim Min-Jae',3,2),(44,'Hong Chul',3,3),(45,'Lee Kang-In',3,4),(46,'Kwon Kyung-Won',3,2),(47,'Jung Woo-Young',3,3),(48,'Hwang Hee-Chan',3,4),(49,'Kim Young-Gwon',3,2),(50,'Lee Jae-Sung',3,3),(51,'Cho Gue-Sung',3,4),(52,'Jo Hyeon-Woo',3,5),(53,'Kim Tae-Hwan',3,5),(54,'Park Ji-Sung',3,2),(55,'Hwang In-Beom',3,3),(56,'Jeong Woo-Yeong',3,4),(57,'Yoon Bit-Garam',3,5),(58,'Lee Dong-Jun',3,2),(59,'Nam Tae-Hee',3,3),(60,'Lee Chung-Yong',3,5),(61,'Ederson Moraes',4,1),(62,'Marc-Andre ter Stegen',4,1),(63,'Kalidou Koulibaly',4,2),(64,'Dani Carvajal',4,3),(65,'Pierre-Emerick Aubameyang',4,4),(66,'Gerard Pique',4,2),(67,'Ilkay Gundogan',4,3),(68,'Riyad Mahrez',4,4),(69,'John Stones',4,2),(70,'Rodri',4,3),(71,'Raheem Sterling',4,4),(72,'Lucas Hernandez',4,5),(73,'Benjamin Pavard',4,5),(74,'Cesar Azpilicueta',4,2),(75,'Houssem Aouar',4,3),(76,'Joao Felix',4,4),(77,'Timo Werner',4,5),(78,'Angel Di Maria',4,2),(79,'Lautaro Martinez',4,3),(80,'Sergio Aguero',4,5),(81,'Kim Jin-Hyeon',5,1),(82,'Lee Bum-Soo',5,1),(83,'Jang Hyun-Soo',5,2),(84,'Lee Yong',5,3),(85,'Ji Dong-Won',5,4),(86,'Yun Young-Sun',5,2),(87,'Lee Keun-Ho',5,3),(88,'Kim Shin-Wook',5,4),(89,'Hong Jeong-Ho',5,2),(90,'Koo Ja-Cheol',5,3),(91,'Cho Young-Wook',5,4),(92,'Song Bum-Keun',5,5),(93,'Oh Ban-Suk',5,5),(94,'Kang Soo-Il',5,2),(95,'Na Sang-Ho',5,3),(96,'Cho Jae-Wan',5,4),(97,'Park Chu-Young',5,5),(98,'Yun Suk-Young',5,2),(99,'Kim Bo-Kyung',5,3),(100,'Lee Dong-Gook',5,5);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
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
