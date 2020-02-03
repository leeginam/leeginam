-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: userinfo
-- ------------------------------------------------------
-- Server version	5.7.26-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `store` (
  `productname` varchar(45) NOT NULL,
  `contents` varchar(45) NOT NULL,
  `afterprice` int(11) NOT NULL,
  `beforeprice` int(11) NOT NULL,
  `number` int(11) NOT NULL AUTO_INCREMENT,
  `madein` varchar(45) NOT NULL,
  `pack` varchar(45) NOT NULL,
  `Expiration` varchar(45) NOT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES ('a콤보','나눠먹을수 없는 패키지',13000,15000,1,'원산지:미국산','영화관람권2장,팝콘2개,콜라2잔','구매일로부터 24개월이내'),('b콤보','혼자 몰래먹는 패키지',23000,25000,2,'원산지:영국산','영화관람권5장,팝콘5개,콜라5잔','구매일로부터 12개월이내'),('getflex패키지','사랑하는 연인과 함께하는 getflex패키지',25000,28000,3,'원산지:말레이시아산','영화관람권10장,팝콘10개,콜라10잔','구매일로부터 6개월이내'),('생일축하패키지','데이트 고민은 그만!!',23000,24000,4,'원산지:미얀마산','영화관람권15장,팝콘15개,콜15잔','구매일로부터 3개월이내'),('혼밥','메가박스로 가세요',45000,50000,5,'원산지:파푸아뉴기니산','영화관람권20장,팝콘20개,콜라20잔','구매일로부터 2개월이내'),('혼영','롯데시네마가 더좋아요',30000,34000,6,'원산지:대모산','영화관람권25장,팝콘25개,콜라25잔','구매일로부터 1개월이내');
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-23 17:50:12
