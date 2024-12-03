-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: statisticsdb
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
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `transaction_date` date DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `transaction_type` enum('Revenue','Expense') DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,'2024-01-05','영업','상품 A',200000.00,'Revenue'),(2,'2024-01-10','영업','상품 B',150000.00,'Revenue'),(3,'2024-01-20','마케팅','광고비',50000.00,'Expense'),(4,'2024-01-25','영업','상품 A',180000.00,'Revenue'),(5,'2024-02-01','IT','소프트웨어 구입',30000.00,'Expense'),(6,'2024-02-05','영업','상품 C',220000.00,'Revenue'),(7,'2024-02-10','재무','컨설팅 비용',80000.00,'Expense'),(8,'2024-02-15','영업','상품 B',190000.00,'Revenue'),(9,'2024-02-20','인사','채용 비용',120000.00,'Expense'),(10,'2024-02-25','영업','상품 D',210000.00,'Revenue'),(11,'2024-03-01','마케팅','프로모션',60000.00,'Expense'),(12,'2024-03-05','영업','상품 E',230000.00,'Revenue'),(13,'2024-03-10','IT','장비 구입',50000.00,'Expense'),(14,'2024-03-15','영업','상품 F',210000.00,'Revenue'),(15,'2024-03-20','마케팅','광고비',70000.00,'Expense'),(16,'2024-03-25','재무','회계 컨설팅',90000.00,'Expense'),(17,'2024-04-01','영업','상품 A',240000.00,'Revenue'),(18,'2024-04-05','인사','교육 비용',45000.00,'Expense'),(19,'2024-04-10','마케팅','브랜딩 비용',85000.00,'Expense'),(20,'2024-04-15','IT','네트워크 비용',60000.00,'Expense'),(21,'2024-04-20','영업','상품 G',250000.00,'Revenue'),(22,'2024-04-25','재무','보험료',100000.00,'Expense'),(23,'2024-05-01','인사','직원 복지',70000.00,'Expense'),(24,'2024-05-05','영업','상품 H',260000.00,'Revenue'),(25,'2024-05-10','마케팅','프로모션',75000.00,'Expense'),(26,'2024-05-15','IT','클라우드 비용',45000.00,'Expense'),(27,'2024-05-20','재무','재무 컨설팅',90000.00,'Expense'),(28,'2024-05-25','영업','상품 I',275000.00,'Revenue'),(29,'2024-06-01','마케팅','광고비',80000.00,'Expense'),(30,'2024-06-05','영업','상품 J',285000.00,'Revenue'),(31,'2024-06-10','IT','서버 비용',120000.00,'Expense'),(32,'2024-06-15','재무','법률 자문',110000.00,'Expense'),(33,'2024-06-20','인사','복지 혜택',65000.00,'Expense'),(34,'2024-06-25','영업','상품 K',290000.00,'Revenue'),(35,'2024-07-01','마케팅','마케팅 리서치',95000.00,'Expense'),(36,'2024-07-05','영업','상품 L',300000.00,'Revenue'),(37,'2024-07-10','IT','보안 솔루션',125000.00,'Expense'),(38,'2024-07-15','재무','자산 평가',115000.00,'Expense'),(39,'2024-07-20','영업','상품 M',310000.00,'Revenue'),(40,'2024-07-25','인사','직원 연수',75000.00,'Expense'),(41,'2024-08-01','마케팅','디지털 마케팅',105000.00,'Expense'),(42,'2024-08-05','영업','상품 N',320000.00,'Revenue'),(43,'2024-08-10','IT','데이터베이스 유지보수',95000.00,'Expense'),(44,'2024-08-15','재무','회계 비용',120000.00,'Expense'),(45,'2024-08-20','인사','사내 교육',80000.00,'Expense'),(46,'2024-08-25','영업','상품 O',330000.00,'Revenue'),(47,'2024-09-01','마케팅','컨텐츠 제작',115000.00,'Expense'),(48,'2024-09-05','영업','상품 P',340000.00,'Revenue'),(49,'2024-09-10','IT','IT 지원 서비스',100000.00,'Expense'),(50,'2024-09-15','재무','자문 비용',125000.00,'Expense'),(51,'2024-09-20','인사','직원 채용',130000.00,'Expense'),(52,'2024-09-25','영업','상품 Q',350000.00,'Revenue'),(53,'2024-10-01','마케팅','소셜 미디어 광고',110000.00,'Expense'),(54,'2024-10-05','영업','상품 R',360000.00,'Revenue'),(55,'2024-10-10','IT','보안 감사',135000.00,'Expense'),(56,'2024-10-15','재무','부채 관리',140000.00,'Expense'),(57,'2024-10-20','인사','사내 복지',90000.00,'Expense'),(58,'2024-10-25','영업','상품 S',370000.00,'Revenue'),(59,'2024-11-01','마케팅','이벤트 기획',130000.00,'Expense'),(60,'2024-11-05','영업','상품 T',380000.00,'Revenue'),(61,'2024-11-10','IT','백업 솔루션',105000.00,'Expense'),(62,'2024-11-15','재무','비용 분석',145000.00,'Expense'),(63,'2024-11-20','인사','채용 비용',95000.00,'Expense'),(64,'2024-11-25','영업','상품 U',390000.00,'Revenue'),(65,'2024-12-01','마케팅','프로모션 비용',125000.00,'Expense'),(66,'2024-12-05','영업','상품 V',400000.00,'Revenue'),(67,'2024-12-10','IT','네트워크 관리',115000.00,'Expense'),(68,'2024-12-15','재무','법률 자문',160000.00,'Expense'),(69,'2024-12-20','인사','직원 복지',110000.00,'Expense'),(70,'2024-12-25','영업','상품 W',410000.00,'Revenue');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-03 14:01:43
