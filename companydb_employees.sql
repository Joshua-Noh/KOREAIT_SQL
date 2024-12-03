-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: companydb
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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(50) NOT NULL,
  `dept_id` int DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (21,'Alice',1,5000.00,'2022-03-15'),(22,'Bob',2,4500.00,'2021-08-25'),(23,'Charlie',3,6000.00,'2020-07-11'),(24,'Diana',4,4800.00,'2019-12-05'),(25,'Edward',5,5500.00,'2022-01-18'),(26,'Fiona',1,5200.00,'2020-04-10'),(27,'George',2,4300.00,'2018-10-20'),(28,'Hannah',3,6100.00,'2021-06-23'),(29,'Ian',4,4900.00,'2020-09-13'),(30,'Jane',5,5700.00,'2019-11-03'),(31,'Kyle',1,5400.00,'2021-05-09'),(32,'Linda',2,4600.00,'2018-04-17'),(33,'Michael',3,6200.00,'2019-08-22'),(34,'Nina',4,5000.00,'2021-03-03'),(35,'Oscar',5,5800.00,'2020-06-19'),(36,'Paula',1,5300.00,'2018-07-15'),(37,'Quinn',2,4400.00,'2019-01-10'),(38,'Rita',3,6300.00,'2022-02-07'),(39,'Steve',4,5100.00,'2018-05-30'),(40,'Tina',5,5900.00,'2021-09-12'),(41,'Alice',1,5000.00,'2022-03-15'),(42,'Bob',2,4500.00,'2021-08-25'),(43,'Charlie',3,6000.00,'2020-07-11'),(44,'Diana',4,4800.00,'2019-12-05'),(45,'Edward',5,5500.00,'2022-01-18'),(46,'Fiona',1,5200.00,'2020-04-10'),(47,'George',2,4300.00,'2018-10-20'),(48,'Hannah',3,6100.00,'2021-06-23'),(49,'Ian',4,4900.00,'2020-09-13'),(50,'Jane',5,5700.00,'2019-11-03'),(51,'Kyle',1,5400.00,'2021-05-09'),(52,'Linda',2,4600.00,'2018-04-17'),(53,'Michael',3,6200.00,'2019-08-22'),(54,'Nina',4,5000.00,'2021-03-03'),(55,'Oscar',5,5800.00,'2020-06-19'),(56,'Paula',1,5300.00,'2018-07-15'),(57,'Quinn',2,4400.00,'2019-01-10'),(58,'Rita',3,6300.00,'2022-02-07'),(59,'Steve',4,5100.00,'2018-05-30'),(60,'Tina',5,5900.00,'2021-09-12');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-03 14:01:45
