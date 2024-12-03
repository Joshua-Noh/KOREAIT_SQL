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
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `Job_ID` int NOT NULL,
  `Job_JobName` varchar(20) DEFAULT NULL,
  `Job_Department` varchar(20) DEFAULT NULL,
  `Job_Requirement` blob,
  `Job_Description` blob,
  PRIMARY KEY (`Job_ID`),
  UNIQUE KEY `XPK직무` (`Job_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (1,'소프트웨어 엔지니어','IT팀',_binary 'Java, Python 경험 필수',_binary '웹 및 모바일 애플리케이션 개발'),(2,'데이터 분석가','데이터팀',_binary 'SQL, Excel 능숙자',_binary '데이터 분석 및 리포트 작성'),(3,'프로젝트 매니저','PMO팀',_binary '프로젝트 관리 경험 3년 이상',_binary '프로젝트 일정 및 자원 관리'),(4,'마케팅 전문가','마케팅팀',_binary '디지털 마케팅 경험',_binary '온라인 광고 캠페인 관리'),(5,'회계 담당자','재무팀',_binary '회계 자격증 보유자 우대',_binary '회계 장부 작성 및 검토'),(6,'HR 매니저','인사팀',_binary '인사관리 경험 5년 이상',_binary '채용 및 조직 문화 개선'),(7,'그래픽 디자이너','디자인팀',_binary 'Adobe Photoshop 능숙자',_binary '웹 및 앱 디자인 제작'),(8,'기술 지원 엔지니어','기술지원팀',_binary '고객 지원 경험 3년 이상',_binary '제품 기술 문제 해결 및 고객 응대'),(9,'법무 담당자','법무팀',_binary '법률 자격증 소지자',_binary '계약서 검토 및 법적 분쟁 대응'),(10,'품질 관리 전문가','품질관리팀',_binary '품질 관리 시스템 경험',_binary '제품 품질 검사 및 인증'),(11,'UI/UX 디자이너','디자인팀',_binary 'Figma, Sketch 사용 가능',_binary '사용자 인터페이스 및 경험 디자인'),(12,'백엔드 개발자','IT팀',_binary 'Java, Spring Boot 경험',_binary '서버 및 데이터베이스 개발'),(13,'프론트엔드 개발자','IT팀',_binary 'React, Vue.js 경험',_binary '웹 프론트엔드 인터페이스 개발'),(14,'보안 전문가','보안팀',_binary '정보 보안 자격증 보유',_binary '기업 네트워크 및 데이터 보안 관리'),(15,'AI 엔지니어','AI팀',_binary '머신러닝 알고리즘 개발 경험',_binary 'AI 모델 개발 및 데이터 처리'),(16,'물류 관리자','물류팀',_binary '물류 관리 경험 3년 이상',_binary '재고 관리 및 배송 최적화'),(17,'제품 기획자','기획팀',_binary '제품 기획 경험 우대',_binary '신제품 기획 및 시장 조사'),(18,'영상 편집자','미디어팀',_binary 'Adobe Premiere Pro 능숙자',_binary '홍보 영상 제작 및 편집'),(19,'세일즈 매니저','영업팀',_binary '영업 경력 5년 이상',_binary '고객 관계 관리 및 매출 목표 달성'),(20,'기계 엔지니어','생산팀',_binary '기계 설계 및 유지보수 경험',_binary '생산 설비 설계 및 유지 관리'),(21,'생산 관리자','생산팀',_binary '생산 관리 경력 3년 이상',_binary '생산 일정 관리 및 생산 효율성 개선'),(22,'콘텐츠 기획자','콘텐츠팀',_binary '콘텐츠 제작 경험 우대',_binary '온라인 콘텐츠 기획 및 제작'),(23,'고객 상담원','고객지원팀',_binary 'CS 경력 우대',_binary '고객 불만 처리 및 문제 해결'),(24,'모바일 앱 개발자','IT팀',_binary 'iOS, Android 앱 개발 경험',_binary '모바일 애플리케이션 개발'),(25,'네트워크 엔지니어','IT팀',_binary 'Cisco 장비 경험 필수',_binary '기업 네트워크 설치 및 유지보수'),(26,'제품 디자이너','디자인팀',_binary '산업 디자인 경험 우대',_binary '제품 외형 디자인 및 모델링'),(27,'재무 분석가','재무팀',_binary '재무 분석 및 리포트 작성 경험',_binary '재무 데이터 분석 및 예산 계획'),(28,'PR 전문가','홍보팀',_binary 'PR 캠페인 경험 우대',_binary '브랜드 이미지 관리 및 홍보 전략 수립'),(29,'학습 콘텐츠 개발자','교육팀',_binary '온라인 교육 콘텐츠 제작 경험',_binary 'e러닝 콘텐츠 기획 및 제작'),(30,'현장 감독관','현장팀',_binary '현장 관리 경험 5년 이상',_binary '프로젝트 현장 관리 및 안전 점검'),(31,'데브옵스 엔지니어','IT팀',_binary 'CI/CD 파이프라인 경험',_binary '서버 및 배포 자동화 관리'),(32,'기술 영업','영업팀',_binary '기술 제품 영업 경험',_binary '기술 제품 제안 및 고객 설득'),(33,'HRD 전문가','인사팀',_binary '사내 교육 기획 및 운영 경험',_binary '직원 교육 프로그램 기획 및 실행'),(34,'공정 엔지니어','생산팀',_binary '공정 최적화 경험',_binary '생산 공정 개선 및 효율성 관리'),(35,'마케팅 분석가','마케팅팀',_binary '마케팅 데이터 분석 경험',_binary '마케팅 성과 분석 및 개선 전략 수립'),(36,'해외 영업','영업팀',_binary '영어 능통자 우대',_binary '해외 고객 발굴 및 관계 관리'),(37,'R&D 엔지니어','연구개발팀',_binary '신기술 개발 경험',_binary '신기술 및 신제품 연구개발'),(38,'게임 개발자','게임팀',_binary 'Unity, Unreal Engine 경험',_binary '게임 시스템 및 기능 개발'),(39,'영상 제작자','미디어팀',_binary '영상 제작 및 편집 경험',_binary '홍보 및 교육용 영상 제작'),(40,'ERP 컨설턴트','IT팀',_binary 'SAP ERP 경험',_binary '기업 ERP 시스템 컨설팅 및 관리'),(41,'환경 엔지니어','환경팀',_binary '환경 분석 경험 우대',_binary '환경 데이터 분석 및 개선 방안 제안'),(42,'SEO 전문가','마케팅팀',_binary 'SEO 최적화 경험',_binary '검색 엔진 최적화 및 키워드 전략 수립'),(43,'건축 설계자','건축팀',_binary '건축 설계 경력',_binary '건축 프로젝트 설계 및 도면 작성'),(44,'도서 관리 담당자','도서팀',_binary '도서 관리 경험 우대',_binary '도서 대출 및 보관 관리'),(45,'헬스 트레이너','헬스팀',_binary '트레이닝 자격증 필수',_binary '고객 맞춤형 운동 프로그램 제공'),(46,'보건 관리자','안전팀',_binary '보건 자격증 소지자',_binary '사내 보건 및 안전 관리'),(47,'IT 지원 담당자','IT팀',_binary '하드웨어 및 소프트웨어 지원 경험',_binary '직원 IT 문제 해결 및 시스템 유지보수'),(48,'공장 설비 관리자','생산팀',_binary '공장 설비 관리 경험 우대',_binary '공장 설비 유지보수 및 효율 관리'),(49,'물리치료사','의료팀',_binary '물리치료 자격증 필수',_binary '환자 맞춤형 물리치료 제공'),(50,'식품 개발자','연구개발팀',_binary '식품 연구개발 경험',_binary '신제품 식품 개발 및 품질 관리');
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
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
