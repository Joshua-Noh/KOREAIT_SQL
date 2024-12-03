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
-- Table structure for table `posting`
--

DROP TABLE IF EXISTS `posting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posting` (
  `Posting_ID` int NOT NULL,
  `start_date` char(18) DEFAULT NULL,
  `end_date` char(18) DEFAULT NULL,
  `Posting_detail` char(18) DEFAULT NULL,
  `Job_ID` int DEFAULT NULL,
  PRIMARY KEY (`Posting_ID`),
  UNIQUE KEY `XPK공고` (`Posting_ID`),
  KEY `R_73` (`Job_ID`),
  CONSTRAINT `R_73` FOREIGN KEY (`Job_ID`) REFERENCES `job` (`Job_ID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posting`
--

LOCK TABLES `posting` WRITE;
/*!40000 ALTER TABLE `posting` DISABLE KEYS */;
INSERT INTO `posting` VALUES (1,'2010-01-15','2010-06-20','식품 개발자 채용 공고',50),(2,'2010-02-10','2010-08-25','공정 엔지니어 모집 공고',34),(3,'2010-03-05','2010-09-15','제품 기획자 모집 공고',17),(4,'2010-04-18','2010-11-01','SEO 전문가 모집 공고',42),(5,'2010-05-22','2010-12-10','헬스 트레이너 채용 공고',45),(6,'2010-06-30','2011-01-25','재무 분석가 채용 공고',27),(7,'2010-07-15','2011-02-15','현장 감독관 모집 공고',30),(8,'2010-08-05','2011-03-10','마케팅 분석가 채용 공고',35),(9,'2010-09-12','2011-04-05','R&D 엔지니어 채용 공고',37),(10,'2010-10-20','2011-05-25','게임 개발자 모집 공고',38),(11,'2010-11-10','2011-06-15','UI/UX 디자이너 모집 공고',11),(12,'2010-12-01','2011-07-01','모바일 앱 개발자 모집 공고',24),(13,'2011-01-05','2011-08-10','보안 전문가 채용 공고',14),(14,'2011-02-15','2011-09-20','데브옵스 엔지니어 채용 공고',31),(15,'2011-03-18','2011-10-22','기술 영업 모집 공고',32),(16,'2011-04-25','2011-12-05','HRD 전문가 채용 공고',33),(17,'2011-05-30','2012-01-15','네트워크 엔지니어 채용 공고',25),(18,'2011-06-18','2012-02-25','콘텐츠 기획자 모집 공고',22),(19,'2011-07-10','2012-03-30','영상 편집자 채용 공고',18),(20,'2011-08-01','2012-04-20','공장 설비 관리자 모집 공고',48),(21,'2011-09-15','2012-05-25','고객 상담원 채용 공고',23),(22,'2011-10-20','2012-06-30','백엔드 개발자 채용 공고',12),(23,'2011-11-05','2012-07-10','제품 디자이너 모집 공고',26),(24,'2011-12-15','2012-08-25','회계 담당자 채용 공고',5),(25,'2012-01-22','2012-09-15','소프트웨어 엔지니어 채용 공고',1),(26,'2012-02-10','2012-10-20','데이터 분석가 모집 공고',2),(27,'2012-03-25','2012-11-30','현장 감독관 모집 공고',30),(28,'2012-04-18','2012-12-22','재무 분석가 채용 공고',27),(29,'2012-05-25','2013-01-05','PR 전문가 모집 공고',28),(30,'2012-06-10','2013-02-15','학습 콘텐츠 개발자 채용 공고',29),(31,'2012-07-20','2013-03-10','도서 관리 담당자 모집 공고',44),(32,'2012-08-15','2013-04-25','건축 설계자 채용 공고',43),(33,'2012-09-05','2013-05-30','환경 엔지니어 채용 공고',41),(34,'2012-10-15','2013-06-22','식품 개발자 채용 공고',50),(35,'2012-11-25','2013-07-10','헬스 트레이너 채용 공고',45),(36,'2012-12-20','2013-08-25','UI/UX 디자이너 모집 공고',11),(37,'2013-01-05','2013-09-15','프론트엔드 개발자 모집 공고',13),(38,'2013-02-15','2013-10-20','AI 엔지니어 모집 공고',15),(39,'2013-03-25','2013-11-10','마케팅 전문가 모집 공고',4),(40,'2013-04-10','2013-12-25','그래픽 디자이너 모집 공고',7),(41,'2013-05-20','2014-01-05','HR 매니저 채용 공고',6),(42,'2013-06-15','2014-02-15','공정 엔지니어 모집 공고',34),(43,'2013-07-25','2014-03-25','게임 개발자 모집 공고',38),(44,'2013-08-10','2014-04-20','영상 제작자 채용 공고',39),(45,'2013-09-05','2014-05-15','보건 관리자 채용 공고',46),(46,'2013-10-15','2014-06-25','기술 지원 엔지니어 채용 공고',8),(47,'2013-11-20','2014-07-30','마케팅 분석가 채용 공고',35),(48,'2013-12-30','2014-08-10','SEO 전문가 모집 공고',42),(49,'2014-01-15','2014-09-20','법무 담당자 채용 공고',9),(50,'2014-02-05','2014-10-15','기계 엔지니어 채용 공고',20);
/*!40000 ALTER TABLE `posting` ENABLE KEYS */;
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
