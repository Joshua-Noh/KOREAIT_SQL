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
-- Table structure for table `player_info`
--

DROP TABLE IF EXISTS `player_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_info` (
  `player_id` int NOT NULL AUTO_INCREMENT,
  `team_id` int DEFAULT NULL,
  `player_name` varchar(100) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `weight` int DEFAULT NULL,
  `speed_100m` decimal(5,2) DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `experience_years` int DEFAULT NULL,
  `goals` int DEFAULT NULL,
  `assists` int DEFAULT NULL,
  `defense_ability` enum('High','Medium','Low') DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`player_id`),
  KEY `team_id` (`team_id`),
  CONSTRAINT `player_info_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_info`
--

LOCK TABLES `player_info` WRITE;
/*!40000 ALTER TABLE `player_info` DISABLE KEYS */;
INSERT INTO `player_info` VALUES (1,1,'Cristiano Ronaldo',23,186,62,11.38,552,24,16,32,'High',NULL),(2,1,'Manuel Neuer',27,184,79,10.44,648,24,1,2,'Low',NULL),(3,1,'Sergio Ramos',21,182,72,10.97,504,24,14,28,'Medium',NULL),(4,1,'Gerard Pique',22,184,65,14.51,528,24,8,16,'Medium',NULL),(5,1,'Karim Benzema',28,190,70,11.99,672,24,15,30,'Medium',NULL),(6,1,'Virgil van Dijk',32,172,60,12.17,768,24,20,40,'High',NULL),(7,1,'Luka Modric',29,189,65,13.39,696,24,8,16,'Medium',NULL),(8,1,'Neymar Jr',34,171,73,14.83,816,24,13,26,'Medium',NULL),(9,1,'Raphael Varane',30,183,70,11.30,720,24,8,16,'Medium',NULL),(10,1,'Toni Kroos',29,184,71,11.28,696,24,1,2,'Low',NULL),(11,1,'Lionel Messi',23,178,66,12.52,552,24,7,14,'Medium',NULL),(12,1,'Thibaut Courtois',28,171,75,11.35,672,24,5,10,'Low',NULL),(13,1,'Paul Pogba',24,181,80,12.91,576,24,1,2,'Low',NULL),(14,1,'Trent Alexander-Arnold',29,178,63,13.22,696,24,20,40,'High',NULL),(15,1,'Kevin De Bruyne',32,178,68,14.92,768,24,20,40,'High',NULL),(16,1,'Robert Lewandowski',20,182,76,14.44,480,24,11,22,'Medium',NULL),(17,1,'David Alaba',24,186,79,10.11,576,24,10,20,'Medium',NULL),(18,1,'Aymeric Laporte',33,182,62,12.07,792,24,12,24,'Medium',NULL),(19,1,'Kylian Mbappe',32,188,78,13.34,768,24,12,24,'Medium',NULL),(20,1,'Eden Hazard',29,176,61,14.88,696,24,1,2,'Low',NULL),(21,2,'Alisson Becker',34,182,67,12.60,816,24,7,14,'Medium',NULL),(22,2,'Gianluigi Donnarumma',35,180,74,10.57,840,24,11,22,'Medium',NULL),(23,2,'Leonardo Bonucci',24,185,79,12.43,576,24,15,30,'Medium',NULL),(24,2,'Jordi Alba',30,185,76,10.96,720,24,16,32,'High',NULL),(25,2,'Erling Haaland',28,189,73,11.48,672,24,3,6,'Low',NULL),(26,2,'Harry Maguire',34,184,76,14.47,816,24,20,40,'High',NULL),(27,2,'Marco Verratti',32,174,65,11.53,768,24,11,22,'Medium',NULL),(28,2,'Jadon Sancho',20,190,72,13.91,480,24,6,12,'Medium',NULL),(29,2,'Mats Hummels',21,179,61,10.47,504,24,12,24,'Medium',NULL),(30,2,'Joshua Kimmich',21,171,65,13.72,504,24,19,38,'High',NULL),(31,2,'Romelu Lukaku',30,182,74,11.50,720,24,16,32,'High',NULL),(32,2,'Jan Oblak',35,174,62,10.10,840,24,15,30,'Medium',NULL),(33,2,'N Golo Kante',25,179,67,13.29,600,24,1,2,'Low',NULL),(34,2,'Andy Robertson',35,184,68,11.60,840,24,8,16,'Medium',NULL),(35,2,'Thomas Muller',25,185,75,10.90,600,24,12,24,'Medium',NULL),(36,2,'Sadio Mane',20,184,69,12.62,480,24,16,32,'High',NULL),(37,2,'Thiago Silva',29,190,74,11.70,696,24,7,14,'Medium',NULL),(38,2,'Achraf Hakimi',20,188,70,13.66,480,24,12,24,'Medium',NULL),(39,2,'Antoine Griezmann',31,180,69,14.30,744,24,9,18,'Medium',NULL),(40,2,'Phil Foden',27,173,76,13.79,648,24,8,16,'Medium',NULL),(41,3,'Son Heung-Min',32,170,71,13.29,832,26,2,4,'Low',NULL),(42,3,'Kim Seung-Gyu',23,174,76,13.38,598,26,20,40,'High',NULL),(43,3,'Kim Min-Jae',31,186,64,14.54,806,26,12,24,'Medium',NULL),(44,3,'Hong Chul',32,190,75,10.93,832,26,3,6,'Low',NULL),(45,3,'Lee Kang-In',25,182,72,11.71,650,26,3,6,'Low',NULL),(46,3,'Kwon Kyung-Won',32,188,65,14.10,832,26,12,24,'Medium',NULL),(47,3,'Jung Woo-Young',33,170,76,12.62,858,26,17,34,'High',NULL),(48,3,'Hwang Hee-Chan',23,170,69,12.81,598,26,6,12,'Medium',NULL),(49,3,'Kim Young-Gwon',22,186,66,14.76,572,26,16,32,'High',NULL),(50,3,'Lee Jae-Sung',27,189,60,10.10,702,26,16,32,'High',NULL),(51,3,'Cho Gue-Sung',22,175,76,14.05,572,26,15,30,'Medium',NULL),(52,3,'Jo Hyeon-Woo',31,181,65,11.04,806,26,17,34,'High',NULL),(53,3,'Kim Tae-Hwan',34,184,68,13.28,884,26,15,30,'Medium',NULL),(54,3,'Park Ji-Sung',31,177,79,13.04,806,26,18,36,'High',NULL),(55,3,'Hwang In-Beom',35,187,78,13.15,910,26,10,20,'Medium',NULL),(56,3,'Jeong Woo-Yeong',25,171,70,12.55,650,26,2,4,'Low',NULL),(57,3,'Yoon Bit-Garam',33,171,68,10.09,858,26,15,30,'Medium',NULL),(58,3,'Lee Dong-Jun',24,172,79,13.76,624,26,9,18,'Medium',NULL),(59,3,'Nam Tae-Hee',32,185,76,10.60,832,26,3,6,'Low',NULL),(60,3,'Lee Chung-Yong',27,183,74,12.49,702,26,20,40,'High',NULL),(61,4,'Ederson Moraes',24,179,74,12.02,552,23,1,2,'Low',NULL),(62,4,'Marc-Andre ter Stegen',20,172,78,10.97,460,23,15,30,'Medium',NULL),(63,4,'Kalidou Koulibaly',26,178,79,10.31,598,23,2,4,'Low',NULL),(64,4,'Dani Carvajal',22,177,69,12.17,506,23,16,32,'High',NULL),(65,4,'Pierre-Emerick Aubameyang',26,182,69,13.34,598,23,20,40,'High',NULL),(66,4,'Gerard Pique',30,186,72,13.93,690,23,1,2,'Low',NULL),(67,4,'Ilkay Gundogan',25,178,62,14.62,575,23,9,18,'Medium',NULL),(68,4,'Riyad Mahrez',24,179,62,12.44,552,23,1,2,'Low',NULL),(69,4,'John Stones',24,171,70,14.86,552,23,12,24,'Medium',NULL),(70,4,'Rodri',24,170,65,10.26,552,23,10,20,'Medium',NULL),(71,4,'Raheem Sterling',30,180,72,11.26,690,23,17,34,'High',NULL),(72,4,'Lucas Hernandez',31,178,80,11.60,713,23,3,6,'Low',NULL),(73,4,'Benjamin Pavard',33,185,68,14.08,759,23,12,24,'Medium',NULL),(74,4,'Cesar Azpilicueta',28,170,70,13.06,644,23,4,8,'Low',NULL),(75,4,'Houssem Aouar',20,171,78,11.40,460,23,15,30,'Medium',NULL),(76,4,'Joao Felix',33,185,68,14.16,759,23,20,40,'High',NULL),(77,4,'Timo Werner',28,172,80,11.41,644,23,11,22,'Medium',NULL),(78,4,'Angel Di Maria',26,183,74,14.28,598,23,13,26,'Medium',NULL),(79,4,'Lautaro Martinez',25,172,67,13.75,575,23,15,30,'Medium',NULL),(80,4,'Sergio Aguero',25,184,70,12.76,575,23,9,18,'Medium',NULL),(81,5,'Kim Jin-Hyeon',23,174,80,13.62,529,23,3,6,'Low',NULL),(82,5,'Lee Bum-Soo',22,176,77,13.89,506,23,6,12,'Medium',NULL),(83,5,'Jang Hyun-Soo',31,177,67,11.32,713,23,7,14,'Medium',NULL),(84,5,'Lee Yong',26,179,63,10.08,598,23,20,40,'High',NULL),(85,5,'Ji Dong-Won',33,179,60,14.66,759,23,14,28,'Medium',NULL),(86,5,'Yun Young-Sun',27,172,63,12.90,621,23,18,36,'High',NULL),(87,5,'Lee Keun-Ho',20,186,69,13.09,460,23,9,18,'Medium',NULL),(88,5,'Kim Shin-Wook',33,187,61,12.55,759,23,2,4,'Low',NULL),(89,5,'Hong Jeong-Ho',29,171,75,10.74,667,23,6,12,'Medium',NULL),(90,5,'Koo Ja-Cheol',22,183,68,11.09,506,23,2,4,'Low',NULL),(91,5,'Cho Young-Wook',29,179,76,14.12,667,23,17,34,'High',NULL),(92,5,'Song Bum-Keun',28,182,65,13.44,644,23,19,38,'High',NULL),(93,5,'Oh Ban-Suk',34,188,74,13.26,782,23,9,18,'Medium',NULL),(94,5,'Kang Soo-Il',25,178,66,10.96,575,23,14,28,'Medium',NULL),(95,5,'Na Sang-Ho',25,187,63,13.90,575,23,18,36,'High',NULL),(96,5,'Cho Jae-Wan',20,171,69,10.46,460,23,16,32,'High',NULL),(97,5,'Park Chu-Young',20,189,67,13.66,460,23,5,10,'Low',NULL),(98,5,'Yun Suk-Young',22,173,75,10.37,506,23,12,24,'Medium',NULL),(99,5,'Kim Bo-Kyung',26,181,64,14.18,598,23,7,14,'Medium',NULL),(100,5,'Lee Dong-Gook',23,181,67,11.11,529,23,1,2,'Low',NULL);
/*!40000 ALTER TABLE `player_info` ENABLE KEYS */;
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
