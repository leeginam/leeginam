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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `board` (
  `writename` varchar(20) NOT NULL,
  `moviename` varchar(45) NOT NULL,
  `title` varchar(45) NOT NULL,
  `contents` varchar(300) NOT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `day` date NOT NULL,
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES ('123','254512','251','512512','5211','2011-11-11',1,NULL),('13213','54254','452542542542','254425425452','425','2020-11-11',2,NULL),('123123','해리포터','해리포터','2ㄷㅇㅂ2ㅈㅁㄷ2ㅁ','','2020-01-10',3,NULL),('123123','미드웨이','12312312','331','','2020-01-14',7,NULL),('123123','슈렉','슈우렉','짱꾸>','','2020-01-14',8,NULL),('123123','짱구는못말려','짱구','짱구짱구','','2020-01-14',9,NULL),('123123','해리포터','미드웨이후기다','후기\r\nsadas\r\ndsa\r\nasf\r\nqw\r\nfdq\r\nfwq\r\nf\r\nqf\r\nq\r\nfwq','','2020-01-15',12,NULL),('123123','해리포터','해리포터','해리포터\r\n띄어쓰기\r\n\r\n','','2020-01-14',13,NULL),('123123','1917','1917후기2','221312312\r\n1ff12f12f\r\n31ff3113','','2020-01-14',14,NULL),('123123','해리포터','해리포터','123123','','2020-01-15',15,NULL),('123123','해리포터','해리포터','123123','','2020-01-15',16,NULL),('123123','짱구는못말려','해리포터','222','','2020-01-15',17,NULL),('123123','1917','1917후기','22','','2020-01-15',19,'a.JPG'),('123123','슈렉','슈렉3','214','','2020-01-15',20,'1.JPG'),('123123','1917','해리포터','21312','','2020-01-15',21,'a1.JPG'),('lgn1992','해리포터','다다다','ㄴㅁㅇㅁㄴㅇ','','2020-01-21',22,'con2.jpg');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
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
