-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: edu
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_attach`
--

DROP TABLE IF EXISTS `tbl_attach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_attach` (
  `file_name` varchar(255) NOT NULL COMMENT '첨부파일명',
  `bno` int(11) NOT NULL COMMENT '부모게시물의 일련번호',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시',
  PRIMARY KEY (`file_name`),
  KEY `fk_tbl_attach_tbl_board_idx` (`bno`),
  CONSTRAINT `fk_tbl_attach_tbl_board` FOREIGN KEY (`bno`) REFERENCES `tbl_board` (`bno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='게시물첨부파일';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_attach`
--

LOCK TABLES `tbl_attach` WRITE;
/*!40000 ALTER TABLE `tbl_attach` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_board`
--

DROP TABLE IF EXISTS `tbl_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_board` (
  `bno` int(11) NOT NULL AUTO_INCREMENT COMMENT '게시물일련번호, AI(Auto Increament)일련번호를 자동증가기능',
  `title` varchar(255) DEFAULT NULL COMMENT '게시물제목',
  `content` text DEFAULT NULL COMMENT '게시물내용',
  `writer` varchar(45) DEFAULT NULL COMMENT '작성자',
  `view_count` int(11) DEFAULT 0 COMMENT '게시글조회수',
  `reply_count` int(11) DEFAULT 0 COMMENT '댓글개수',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일시',
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COMMENT='게시물관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_board`
--

LOCK TABLES `tbl_board` WRITE;
/*!40000 ALTER TABLE `tbl_board` DISABLE KEYS */;
INSERT INTO `tbl_board` VALUES (1,'1번째 게시물입니다.','게시물내용입니다.','admin',0,0,'2020-12-23 03:36:47','2020-12-23 03:36:47'),(2,'2 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(3,'3 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(4,'4 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(5,'5 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(6,'6 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(7,'7 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(8,'8 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(9,'9 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(10,'10 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(11,'11 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(12,'12 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(13,'13 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(14,'14 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(15,'15 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(16,'16 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(17,'17 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(18,'18 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(19,'19 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(20,'20 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(21,'21 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(22,'22 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(23,'23 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(24,'24 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(25,'25 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(26,'26 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(27,'27 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(28,'28 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(29,'29 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(30,'30 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(31,'31 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(32,'32 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(33,'33 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(34,'34 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(35,'35 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(36,'36 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(37,'37 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(38,'38 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(39,'39 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(40,'40 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(41,'41 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(42,'42 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(43,'43 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(44,'44 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(45,'45 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(46,'46 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(47,'47 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(48,'48 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(49,'49 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(50,'50 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(51,'51 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(52,'52 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(53,'53 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(54,'54 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(55,'55 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(56,'56 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(57,'57 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(58,'58 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(59,'59 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(60,'60 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(61,'61 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(62,'62 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(63,'63 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(64,'64 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(65,'65 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(66,'66 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(67,'67 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(68,'68 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(69,'69 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(70,'70 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(71,'71 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(72,'72 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(73,'73 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(74,'74 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(75,'75 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(76,'76 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(77,'77 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(78,'78 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(79,'79 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(80,'80 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(81,'81 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(82,'82 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(83,'83 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(84,'84 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(85,'85 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(86,'86 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(87,'87 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(88,'88 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(89,'89 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(90,'90 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(91,'91 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(92,'92 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(93,'93 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(94,'94 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(95,'95 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(96,'96 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(97,'97 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(98,'98 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(99,'99 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(100,'100 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(101,'101 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(102,'102 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(103,'103 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(104,'104 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(105,'105 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(106,'106 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(107,'107 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(108,'108 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(109,'109 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19'),(110,'110 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:04:19','2020-12-23 05:04:19');
/*!40000 ALTER TABLE `tbl_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_member`
--

DROP TABLE IF EXISTS `tbl_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_member` (
  `user_id` varchar(45) NOT NULL COMMENT '회원아이디',
  `user_pw` varchar(255) DEFAULT NULL COMMENT '회원 로그인 암호',
  `user_name` varchar(255) DEFAULT NULL COMMENT '회원 이름',
  `email` varchar(255) DEFAULT NULL COMMENT '회원 이메일',
  `point` int(11) DEFAULT 0 COMMENT '회원 적립포인트',
  `enabled` int(1) DEFAULT 0 COMMENT '인증값(Authentication),활동 가능한 회원 여부, 0 로그인불가능, 1 로그인가능',
  `levels` varchar(45) DEFAULT 'ROLE_USER' COMMENT '권한값(Authority),2가지 레벨, ROLE_ADMIN(관리자), ROLE_USER(사용자)',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일자,1970부터 초단위로 현재까지 계산한 값',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일자',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='회원관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_member`
--

LOCK TABLES `tbl_member` WRITE;
/*!40000 ALTER TABLE `tbl_member` DISABLE KEYS */;
INSERT INTO `tbl_member` VALUES ('admin','1234','관리자','admin@abc.com',0,0,'ROLE_USER','2020-12-23 03:35:50','2020-12-23 03:35:50'),('dummy_10','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_100','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_101','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_102','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_103','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_104','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_105','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_106','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_107','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_108','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_109','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_11','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_110','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_12','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_13','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_14','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_15','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_16','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_17','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_18','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_19','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_2','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_20','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_21','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_22','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_23','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_24','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_25','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_26','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_27','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_28','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_29','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_3','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_30','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_31','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_32','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_33','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_34','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_35','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_36','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_37','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_38','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_39','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_4','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_40','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_41','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_42','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_43','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_44','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_45','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_46','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_47','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_48','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_49','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_5','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_50','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_51','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_52','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_53','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_54','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_55','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_56','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_57','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_58','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_59','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_6','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_60','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_61','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_62','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_63','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_64','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_65','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_66','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_67','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_68','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_69','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_7','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_70','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_71','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_72','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_73','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_74','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_75','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_76','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_77','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_78','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_79','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_8','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_80','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_81','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_82','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_83','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_84','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_85','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_86','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_87','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_88','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_89','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_9','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_90','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_91','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_92','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_93','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_94','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_95','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_96','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_97','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_98','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44'),('dummy_99','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:03:44','2020-12-23 05:03:44');
/*!40000 ALTER TABLE `tbl_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reply`
--

DROP TABLE IF EXISTS `tbl_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_reply` (
  `rno` int(11) NOT NULL AUTO_INCREMENT COMMENT '댓글의 일련번호',
  `bno` int(11) NOT NULL COMMENT '부모게시물의 일련번호',
  `reply_text` varchar(1000) DEFAULT NULL COMMENT '댓글내용',
  `replyer` varchar(45) DEFAULT NULL COMMENT '작성자',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일시',
  PRIMARY KEY (`rno`),
  KEY `fk_tbl_reply_tbl_board1_idx` (`bno`),
  CONSTRAINT `fk_tbl_reply_tbl_board1` FOREIGN KEY (`bno`) REFERENCES `tbl_board` (`bno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='댓글관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reply`
--

LOCK TABLES `tbl_reply` WRITE;
/*!40000 ALTER TABLE `tbl_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'edu'
--

--
-- Dumping routines for database 'edu'
--
/*!50003 DROP PROCEDURE IF EXISTS `dummyBoard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dummyBoard`(IN p_loop int)
BEGIN
		declare cnt int default 2;
		delete from tbl_board where bno > 1;
		while cnt <= p_loop do
		INSERT INTO tbl_board(bno,title,content,writer)
		VALUES
		(cnt, concat(cnt,' 번째 게시물 입니다.'), '게시물 내용 입니다.', 'admin');
		set cnt = cnt +1;
        end while;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dummyMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dummyMember`(IN p_loop int)
BEGIN
	declare cnt int default 1;#반복문 변수선언
    delete from tbl_member where user_id like 'dummy%';
    while cnt <= p_loop do
		INSERT INTO tbl_member(user_id,user_pw,user_name,email,point,enabled,levels) 
		VALUES 
		(concat('dummy_',cnt) , '1234', '관리자', 'admin@abc.com', '0', '1', 'ROLE_ADMIN');
        set cnt = cnt + 1;
    end while;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-23 14:52:36