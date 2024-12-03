-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: hpms_db
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
-- Table structure for table `acquistion`
--

DROP TABLE IF EXISTS `acquistion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acquistion` (
  `Acquistion_ID` int NOT NULL,
  `Number_recruting` varchar(4) DEFAULT NULL,
  `Number_supply` varchar(4) DEFAULT NULL,
  `Number_need` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`Acquistion_ID`),
  UNIQUE KEY `XPK확보관리` (`Acquistion_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acquistion`
--

LOCK TABLES `acquistion` WRITE;
/*!40000 ALTER TABLE `acquistion` DISABLE KEYS */;
INSERT INTO `acquistion` VALUES (1127,'30','28','32'),(1183,'12','10','15'),(1535,'22','20','24'),(1539,'26','25','28'),(1652,'5','4','6'),(1720,'11','10','13'),(1850,'15','12','14'),(1854,'15','12','16'),(1899,'13','11','14'),(2044,'14','13','16'),(2759,'20','18','25'),(2820,'9','8','11'),(2982,'30','28','35'),(3146,'31','28','33'),(3750,'10','8','12'),(3989,'8','7','9'),(3999,'27','24','29'),(4068,'12','10','14'),(4172,'8','7','9'),(4173,'31','28','33'),(4289,'19','17','20'),(5199,'18','16','19'),(5637,'9','8','10'),(6104,'11','10','13'),(6125,'20','18','22'),(6596,'18','16','19'),(6778,'9','8','10'),(6853,'22','20','24'),(6860,'25','23','27'),(6997,'13','11','15'),(7132,'6','5','7'),(7332,'21','19','23'),(7425,'12','11','14'),(7733,'23','20','25'),(8238,'27','24','29'),(8239,'18','16','21'),(8480,'7','6','8'),(8580,'17','15','20'),(8839,'14','12','15'),(9087,'25','23','28'),(9137,'17','16','19'),(9232,'10','9','13'),(9292,'20','18','22'),(9318,'6','5','7'),(9609,'12','11','14'),(9635,'5','4','6'),(9707,'6','5','8'),(9736,'21','20','24'),(9740,'15','13','17'),(9831,'16','14','18');
/*!40000 ALTER TABLE `acquistion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-03 14:01:44
